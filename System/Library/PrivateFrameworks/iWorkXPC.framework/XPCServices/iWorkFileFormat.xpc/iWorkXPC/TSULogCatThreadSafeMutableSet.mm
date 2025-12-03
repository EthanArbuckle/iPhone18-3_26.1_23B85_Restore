@interface TSULogCatThreadSafeMutableSet
- (BOOL)containsObject:(id)object;
- (TSULogCatThreadSafeMutableSet)init;
- (TSULogCatThreadSafeMutableSet)initWithArray:(id)array;
- (id)allObjects;
- (id)description;
- (id)immutableSet;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation TSULogCatThreadSafeMutableSet

- (TSULogCatThreadSafeMutableSet)initWithArray:(id)array
{
  arrayCopy = array;
  v12.receiver = self;
  v12.super_class = TSULogCatThreadSafeMutableSet;
  v5 = [(TSULogCatThreadSafeMutableSet *)&v12 init];
  if (v5)
  {
    v6 = [[NSMutableSet alloc] initWithArray:arrayCopy];
    objects = v5->_objects;
    v5->_objects = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TSULogCatQueue", v8);
    logCatQueue = v5->_logCatQueue;
    v5->_logCatQueue = v9;
  }

  return v5;
}

- (TSULogCatThreadSafeMutableSet)init
{
  v3 = +[NSArray array];
  v4 = [(TSULogCatThreadSafeMutableSet *)self initWithArray:v3];

  return v4;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  logCatQueue = self->_logCatQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008B278;
  block[3] = &unk_1001CD200;
  v9 = objectCopy;
  v10 = &v11;
  block[4] = self;
  v6 = objectCopy;
  dispatch_sync(logCatQueue, block);
  LOBYTE(logCatQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return logCatQueue;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B35C;
  v5[3] = &unk_1001C5A40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)allObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008B484;
  v10 = sub_10008B494;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B49C;
  v5[3] = &unk_1001C5A40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)immutableSet
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008B484;
  v10 = sub_10008B494;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B5DC;
  v5[3] = &unk_1001C5A40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  logCatQueue = self->_logCatQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B6CC;
  v7[3] = &unk_1001C9338;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(logCatQueue, v7);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  logCatQueue = self->_logCatQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008B770;
  v7[3] = &unk_1001C9338;
  v7[4] = self;
  v8 = objectCopy;
  v6 = objectCopy;
  dispatch_async(logCatQueue, v7);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008B484;
  v10 = sub_10008B494;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008B86C;
  v5[3] = &unk_1001C5A40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end