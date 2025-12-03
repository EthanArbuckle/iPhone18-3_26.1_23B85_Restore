@interface _UIKBRTObject
- (id)nextEntry;
- (id)previousEntry;
- (void)setOwner:(id)owner;
@end

@implementation _UIKBRTObject

- (void)setOwner:(id)owner
{
  ownerCopy = owner;
  if (ownerCopy)
  {
    v6 = dispatch_queue_create("_UIKBRTObjectQueue", 0);
    syncQueue = self->_syncQueue;
    self->_syncQueue = v6;

    objc_storeStrong(&self->_owner, owner);
  }

  else if (self->_owner)
  {
    v8 = self->_syncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26___UIKBRTObject_setOwner___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    v9 = v8;
    dispatch_sync(v9, block);
  }
}

- (id)previousEntry
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__138;
  v11 = __Block_byref_object_dispose__138;
  v12 = 0;
  owner = self->_owner;
  if (owner)
  {
    syncQueue = self->_syncQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __30___UIKBRTObject_previousEntry__block_invoke;
    v6[3] = &unk_1E70FE3F8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(syncQueue, v6);
    owner = v8[5];
  }

  v4 = owner;
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)nextEntry
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__138;
  v11 = __Block_byref_object_dispose__138;
  v12 = 0;
  owner = self->_owner;
  if (owner)
  {
    syncQueue = self->_syncQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26___UIKBRTObject_nextEntry__block_invoke;
    v6[3] = &unk_1E70FE3F8;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(syncQueue, v6);
    owner = v8[5];
  }

  v4 = owner;
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end