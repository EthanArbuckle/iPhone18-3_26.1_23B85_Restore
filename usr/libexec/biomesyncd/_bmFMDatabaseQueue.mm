@interface _bmFMDatabaseQueue
+ (id)databaseQueueWithPath:(id)a3;
+ (id)databaseQueueWithURL:(id)a3;
- (BOOL)checkpoint:(int)a3 name:(id)a4 logFrameCount:(int *)a5 checkpointCount:(int *)a6 error:(id *)a7;
- (_bmFMDatabaseQueue)initWithURL:(id)a3;
- (id)database;
- (id)inSavePoint:(id)a3;
- (void)beginTransaction:(int64_t)a3 withBlock:(id)a4;
- (void)close;
- (void)dealloc;
- (void)inDatabase:(id)a3;
- (void)interrupt;
@end

@implementation _bmFMDatabaseQueue

+ (id)databaseQueueWithPath:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPath:v4];

  return v5;
}

+ (id)databaseQueueWithURL:(id)a3
{
  v4 = [a3 path];
  v5 = [a1 databaseQueueWithPath:v4];

  return v5;
}

- (_bmFMDatabaseQueue)initWithURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(_bmFMDatabaseQueue *)self initWithPath:v4];

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
  v2 = [(_bmFMDatabaseQueue *)self database];
  [v2 interrupt];
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

- (void)inDatabase:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v8 = v4;
  dispatch_sync(queue, v9);
}

- (void)beginTransaction:(int64_t)a3 withBlock:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100046DA8;
  block[3] = &unk_100079AC0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (id)inSavePoint:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)checkpoint:(int)a3 name:(id)a4 logFrameCount:(int *)a5 checkpointCount:(int *)a6 error:(id *)a7
{
  v12 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047268;
  block[3] = &unk_100079B10;
  v22 = a3;
  block[4] = self;
  v17 = v12;
  v18 = &v23;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v14 = v12;
  dispatch_sync(queue, block);
  LOBYTE(a6) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return a6;
}

@end