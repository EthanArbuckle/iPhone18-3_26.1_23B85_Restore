@interface _UILoadingHandlerImageLoader
- (_UILoadingHandlerImageLoader)initWithLoadingQueue:(id)queue handler:(id)handler;
- (void)_really_loadImage:(id)image;
@end

@implementation _UILoadingHandlerImageLoader

- (_UILoadingHandlerImageLoader)initWithLoadingQueue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIImageLoader.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"loadingHandler != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _UILoadingHandlerImageLoader;
  v10 = [(_UIImageLoader *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_loadingQueue, queue);
    v12 = _Block_copy(handlerCopy);
    loadingHandler = v11->_loadingHandler;
    v11->_loadingHandler = v12;
  }

  return v11;
}

- (void)_really_loadImage:(id)image
{
  imageCopy = image;
  loadingQueue = self->_loadingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___UILoadingHandlerImageLoader__really_loadImage___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = imageCopy;
  v6 = imageCopy;
  dispatch_async(loadingQueue, v7);
}

@end