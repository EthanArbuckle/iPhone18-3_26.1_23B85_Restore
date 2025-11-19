@interface TSULogCatThreadSafeMutableSet
- (BOOL)containsObject:(id)a3;
- (TSULogCatThreadSafeMutableSet)init;
- (TSULogCatThreadSafeMutableSet)initWithArray:(id)a3;
- (id)allObjects;
- (id)description;
- (id)immutableSet;
- (unint64_t)count;
- (void)addObject:(id)a3;
- (void)removeObject:(id)a3;
@end

@implementation TSULogCatThreadSafeMutableSet

- (TSULogCatThreadSafeMutableSet)initWithArray:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSULogCatThreadSafeMutableSet;
  v5 = [(TSULogCatThreadSafeMutableSet *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v4];
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
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [(TSULogCatThreadSafeMutableSet *)self initWithArray:v3];

  return v4;
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  logCatQueue = self->_logCatQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770C0BF8;
  block[3] = &unk_27A7019E0;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
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
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770C0CDC;
  v5[3] = &unk_27A702428;
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
  v9 = sub_2770C0E04;
  v10 = sub_2770C0E14;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770C0E1C;
  v5[3] = &unk_27A702428;
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
  v9 = sub_2770C0E04;
  v10 = sub_2770C0E14;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770C0F5C;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  logCatQueue = self->_logCatQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770C104C;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(logCatQueue, v7);
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  logCatQueue = self->_logCatQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770C10F0;
  v7[3] = &unk_27A702450;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(logCatQueue, v7);
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2770C0E04;
  v10 = sub_2770C0E14;
  v11 = 0;
  logCatQueue = self->_logCatQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770C11EC;
  v5[3] = &unk_27A702428;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(logCatQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end