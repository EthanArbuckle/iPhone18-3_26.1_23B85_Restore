@interface _bmFMDatabaseQueue
+ (id)databaseQueueWithPath:(id)path;
+ (id)databaseQueueWithURL:(id)l;
- (BOOL)checkpoint:(int)checkpoint name:(id)name logFrameCount:(int *)count checkpointCount:(int *)checkpointCount error:(id *)error;
- (_bmFMDatabaseQueue)initWithURL:(id)l;
- (id)database;
- (id)inSavePoint:(id)point;
- (void)beginTransaction:(int64_t)transaction withBlock:(id)block;
- (void)close;
- (void)dealloc;
- (void)inDatabase:(id)database;
- (void)interrupt;
@end

@implementation _bmFMDatabaseQueue

+ (id)databaseQueueWithPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initWithPath:pathCopy];

  return v5;
}

+ (id)databaseQueueWithURL:(id)l
{
  path = [l path];
  v5 = [self databaseQueueWithPath:path];

  return v5;
}

- (_bmFMDatabaseQueue)initWithURL:(id)l
{
  path = [l path];
  v5 = [(_bmFMDatabaseQueue *)self initWithPath:path];

  return v5;
}

- (void)dealloc
{
  queue = self->_queue;
  if (queue)
  {
    self->_queue = 0;
  }

  v4.receiver = self;
  v4.super_class = _bmFMDatabaseQueue;
  [(_bmFMDatabaseQueue *)&v4 dealloc];
}

- (void)close
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046A84;
  block[3] = &unk_100078B70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)interrupt
{
  database = [(_bmFMDatabaseQueue *)self database];
  [database interrupt];
}

- (id)database
{
  if ([(_bmFMDatabase *)self->_db isOpen])
  {
    goto LABEL_5;
  }

  db = self->_db;
  if (!db)
  {
    v4 = [objc_msgSend(objc_opt_class() "databaseClass")];
    v5 = self->_db;
    self->_db = v4;

    db = self->_db;
  }

  if ([(_bmFMDatabase *)db openWithFlags:self->_openFlags vfs:self->_vfsName])
  {
LABEL_5:
    v6 = self->_db;
  }

  else
  {
    NSLog(@"_bmFMDatabaseQueue could not reopen database for path %@", self->_path);
    v7 = self->_db;
    self->_db = 0;

    v6 = 0;
  }

  return v6;
}

- (void)inDatabase:(id)database
{
  databaseCopy = database;
  v5 = dispatch_get_specific(&off_100079AB0);
  if (v5 == self)
  {
    sub_100047360();
  }

  v6 = v5;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100046C88;
  v9[3] = &unk_100078B98;
  v9[4] = self;
  v10 = databaseCopy;
  v8 = databaseCopy;
  dispatch_sync(queue, v9);
}

- (void)beginTransaction:(int64_t)transaction withBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046DA8;
  block[3] = &unk_100079AC0;
  v10 = blockCopy;
  transactionCopy = transaction;
  block[4] = self;
  v8 = blockCopy;
  dispatch_sync(queue, block);
}

- (id)inSavePoint:(id)point
{
  pointCopy = point;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100046FD4;
  v16 = sub_100046FE4;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046FEC;
  block[3] = &unk_100079AE8;
  v10 = pointCopy;
  v11 = &v12;
  block[4] = self;
  v6 = pointCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)checkpoint:(int)checkpoint name:(id)name logFrameCount:(int *)count checkpointCount:(int *)checkpointCount error:(id *)error
{
  nameCopy = name;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047268;
  block[3] = &unk_100079B10;
  checkpointCopy = checkpoint;
  block[4] = self;
  v17 = nameCopy;
  v18 = &v23;
  countCopy = count;
  checkpointCountCopy = checkpointCount;
  errorCopy = error;
  v14 = nameCopy;
  dispatch_sync(queue, block);
  LOBYTE(checkpointCount) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return checkpointCount;
}

@end