@interface _UIActivityResourceLoader
- (_UIActivityResourceLoader)initWithQueue:(id)queue loadBlock:(id)block;
- (void)_loadResourceWithBlock:(id)block;
- (void)getResourceWithBlock:(id)block;
- (void)loadResourceIfNeeded;
@end

@implementation _UIActivityResourceLoader

- (_UIActivityResourceLoader)initWithQueue:(id)queue loadBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = _UIActivityResourceLoader;
  v9 = [(_UIActivityResourceLoader *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = MEMORY[0x18CFF58E0](blockCopy);
    loadBlock = v10->_loadBlock;
    v10->_loadBlock = v11;

    v13 = dispatch_group_create();
    group = v10->_group;
    v10->_group = v13;

    resource = v10->_resource;
    v10->_resource = 0;
  }

  return v10;
}

- (void)_loadResourceWithBlock:(id)block
{
  v4 = (*(block + 2))(block, a2);
  resource = self->_resource;
  self->_resource = v4;
}

- (void)loadResourceIfNeeded
{
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    v4 = MEMORY[0x18CFF58E0](loadBlock, a2);
    v5 = self->_loadBlock;
    self->_loadBlock = 0;

    objc_initWeak(&location, self);
    group = self->_group;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49___UIActivityResourceLoader_loadResourceIfNeeded__block_invoke;
    block[3] = &unk_1E71FA408;
    objc_copyWeak(&v11, &location);
    v10 = v4;
    v8 = v4;
    dispatch_group_async(group, queue, block);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)getResourceWithBlock:(id)block
{
  blockCopy = block;
  if (self->_loadBlock)
  {
    [(_UIActivityResourceLoader *)self loadResourceIfNeeded];
  }

  else if (!dispatch_group_wait(self->_group, 0))
  {
    blockCopy[2](blockCopy, self->_resource);
    goto LABEL_5;
  }

  objc_initWeak(&location, self);
  group = self->_group;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___UIActivityResourceLoader_getResourceWithBlock___block_invoke;
  block[3] = &unk_1E71FA408;
  objc_copyWeak(&v8, &location);
  v7 = blockCopy;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
LABEL_5:
}

@end