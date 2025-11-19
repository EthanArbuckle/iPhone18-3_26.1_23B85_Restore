@interface _SPBucketSet
- (_SPBucketSet)init;
- (int64_t)valueForKey:(id)a3;
- (void)addValue:(int64_t)a3 forKey:(id)a4;
- (void)dealloc;
- (void)decay:(int64_t)a3;
- (void)removeValueForKey:(id)a3;
@end

@implementation _SPBucketSet

- (_SPBucketSet)init
{
  v7.receiver = self;
  v7.super_class = _SPBucketSet;
  v2 = [(_SPBucketSet *)&v7 init];
  if (v2)
  {
    v2->_members = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.spotlight.index.buckets", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)dealloc
{
  members = self->_members;
  if (members)
  {
    CFRelease(members);
  }

  v4.receiver = self;
  v4.super_class = _SPBucketSet;
  [(_SPBucketSet *)&v4 dealloc];
}

- (int64_t)valueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28___SPBucketSet_valueForKey___block_invoke;
  block[3] = &unk_2789344B8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (void)removeValueForKey:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___SPBucketSet_removeValueForKey___block_invoke;
  v7[3] = &unk_2789342C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)addValue:(int64_t)a3 forKey:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32___SPBucketSet_addValue_forKey___block_invoke;
  block[3] = &unk_2789344E0;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(queue, block);
}

- (void)decay:(int64_t)a3
{
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __22___SPBucketSet_decay___block_invoke;
  v5[3] = &unk_2789343B0;
  v5[4] = self;
  v5[5] = a3;
  v4 = _setup_block(v5, 0, 946);
  dispatch_async(queue, v4);
}

@end