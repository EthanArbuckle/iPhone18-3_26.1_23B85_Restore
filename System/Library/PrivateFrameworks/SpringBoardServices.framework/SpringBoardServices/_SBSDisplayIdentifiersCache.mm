@interface _SBSDisplayIdentifiersCache
+ (id)sharedInstance;
- (_SBSDisplayIdentifiersCache)init;
- (id)displayIdentifiers;
- (void)_queue_noteChanged;
- (void)dealloc;
- (void)registerChangedBlock:(id)block;
@end

@implementation _SBSDisplayIdentifiersCache

- (void)_queue_noteChanged
{
  v3 = self->_displayIdentifiers;
  displayIdentifiers = self->_displayIdentifiers;
  self->_displayIdentifiers = 0;

  if (self->_changedBlock)
  {
    v5 = MEMORY[0x193AFFB30]();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49___SBSDisplayIdentifiersCache__queue_noteChanged__block_invoke;
    v7[3] = &unk_1E735F120;
    v9 = v5;
    v8 = v3;
    v6 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45___SBSDisplayIdentifiersCache_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

- (id)displayIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___SBSDisplayIdentifiersCache_displayIdentifiers__block_invoke;
  v5[3] = &unk_1E73616F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (_SBSDisplayIdentifiersCache)init
{
  v10.receiver = self;
  v10.super_class = _SBSDisplayIdentifiersCache;
  v2 = [(_SBSDisplayIdentifiersCache *)&v10 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    queue = v2->_queue;
    v2->_queue = Serial;

    objc_initWeak(&location, v2);
    v5 = v2->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35___SBSDisplayIdentifiersCache_init__block_invoke;
    v7[3] = &unk_1E7361980;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch("com.apple.springboard.display-identifiers.changed", &v2->_changedToken, v5, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_changedToken);
  v3.receiver = self;
  v3.super_class = _SBSDisplayIdentifiersCache;
  [(_SBSDisplayIdentifiersCache *)&v3 dealloc];
}

- (void)registerChangedBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52___SBSDisplayIdentifiersCache_registerChangedBlock___block_invoke;
  v7[3] = &unk_1E73619A8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

@end