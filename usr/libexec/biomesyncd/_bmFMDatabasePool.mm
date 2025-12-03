@interface _bmFMDatabasePool
+ (id)databasePoolWithPath:(id)path;
+ (id)databasePoolWithURL:(id)l;
- (_bmFMDatabasePool)initWithPath:(id)path flags:(int)flags vfs:(id)vfs;
- (_bmFMDatabasePool)initWithURL:(id)l;
- (id)db;
- (id)inSavePoint:(id)point;
- (unint64_t)countOfCheckedInDatabases;
- (unint64_t)countOfCheckedOutDatabases;
- (unint64_t)countOfOpenDatabases;
- (void)beginTransaction:(int64_t)transaction withBlock:(id)block;
- (void)dealloc;
- (void)inDatabase:(id)database;
- (void)pushDatabaseBackInPool:(id)pool;
- (void)releaseAllDatabases;
@end

@implementation _bmFMDatabasePool

+ (id)databasePoolWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithPath:pathCopy];

  return v5;
}

+ (id)databasePoolWithURL:(id)l
{
  lCopy = l;
  v5 = [self alloc];
  path = [lCopy path];

  v7 = [v5 initWithPath:path];

  return v7;
}

- (_bmFMDatabasePool)initWithPath:(id)path flags:(int)flags vfs:(id)vfs
{
  pathCopy = path;
  vfsCopy = vfs;
  v23.receiver = self;
  v23.super_class = _bmFMDatabasePool;
  v10 = [(_bmFMDatabasePool *)&v23 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    path = v10->_path;
    v10->_path = v11;

    v13 = [[NSString alloc] initWithFormat:@"fmdb.%@", v10];
    v14 = dispatch_queue_create([v13 UTF8String], 0);
    lockQueue = v10->_lockQueue;
    v10->_lockQueue = v14;

    v16 = +[NSMutableArray array];
    databaseInPool = v10->_databaseInPool;
    v10->_databaseInPool = v16;

    v18 = +[NSMutableArray array];
    databaseOutPool = v10->_databaseOutPool;
    v10->_databaseOutPool = v18;

    v10->_openFlags = flags;
    v20 = [vfsCopy copy];
    vfsName = v10->_vfsName;
    v10->_vfsName = v20;
  }

  return v10;
}

- (_bmFMDatabasePool)initWithURL:(id)l
{
  path = [l path];
  v5 = [(_bmFMDatabasePool *)self initWithPath:path];

  return v5;
}

- (void)dealloc
{
  self->_delegate = 0;
  lockQueue = self->_lockQueue;
  if (lockQueue)
  {
    self->_lockQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = _bmFMDatabasePool;
  [(_bmFMDatabasePool *)&v4 dealloc];
}

- (void)pushDatabaseBackInPool:(id)pool
{
  poolCopy = pool;
  v5 = poolCopy;
  if (poolCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100045AD8;
    v6[3] = &unk_100078E68;
    v6[4] = self;
    v7 = poolCopy;
    [(_bmFMDatabasePool *)self executeLocked:v6];
  }
}

- (id)db
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100045C5C;
  v9 = sub_100045C6C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100045C74;
  v4[3] = &unk_100079740;
  v4[4] = self;
  v4[5] = &v5;
  [(_bmFMDatabasePool *)self executeLocked:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (unint64_t)countOfCheckedInDatabases
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100045F44;
  v4[3] = &unk_100079740;
  v4[4] = self;
  v4[5] = &v5;
  [(_bmFMDatabasePool *)self executeLocked:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)countOfCheckedOutDatabases
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100046038;
  v4[3] = &unk_100079740;
  v4[4] = self;
  v4[5] = &v5;
  [(_bmFMDatabasePool *)self executeLocked:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (unint64_t)countOfOpenDatabases
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004612C;
  v4[3] = &unk_100079740;
  v4[4] = self;
  v4[5] = &v5;
  [(_bmFMDatabasePool *)self executeLocked:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)releaseAllDatabases
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000461E4;
  v2[3] = &unk_100078B70;
  v2[4] = self;
  [(_bmFMDatabasePool *)self executeLocked:v2];
}

- (void)inDatabase:(id)database
{
  databaseCopy = database;
  v5 = [(_bmFMDatabasePool *)self db];
  databaseCopy[2](databaseCopy, v5);

  [(_bmFMDatabasePool *)self pushDatabaseBackInPool:v5];
}

- (void)beginTransaction:(int64_t)transaction withBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  v7 = [(_bmFMDatabasePool *)self db];
  v8 = v7;
  switch(transaction)
  {
    case 2:
      [v7 beginImmediateTransaction];
      break;
    case 1:
      [v7 beginDeferredTransaction];
      break;
    case 0:
      [v7 beginTransaction];
      break;
  }

  blockCopy[2](blockCopy, v8, &v9);
  if (v9 == 1)
  {
    [v8 rollback];
  }

  else
  {
    [v8 commit];
  }

  [(_bmFMDatabasePool *)self pushDatabaseBackInPool:v8];
}

- (id)inSavePoint:(id)point
{
  pointCopy = point;
  v5 = [NSString alloc];
  v6 = qword_10008BDA8++;
  v7 = [v5 initWithFormat:@"savePoint%ld", v6];
  v18 = 0;
  v8 = [(_bmFMDatabasePool *)self db];
  v17 = 0;
  v9 = [v8 startSavePointWithName:v7 error:&v17];
  v10 = v17;
  if (v9)
  {
    pointCopy[2](pointCopy, v8, &v18);
    if (v18 == 1)
    {
      v16 = v10;
      [v8 rollbackToSavePointWithName:v7 error:&v16];
      v11 = v16;

      v10 = v11;
    }

    v15 = v10;
    [v8 releaseSavePointWithName:v7 error:&v15];
    v12 = v15;

    v10 = v12;
  }

  [(_bmFMDatabasePool *)self pushDatabaseBackInPool:v8];
  v13 = v10;

  return v13;
}

@end