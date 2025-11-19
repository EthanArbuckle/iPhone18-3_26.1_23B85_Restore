@interface _UILoadingHandlerImageLoader
- (_UILoadingHandlerImageLoader)initWithLoadingQueue:(id)a3 handler:(id)a4;
- (void)_really_loadImage:(id)a3;
@end

@implementation _UILoadingHandlerImageLoader

- (_UILoadingHandlerImageLoader)initWithLoadingQueue:(id)a3 handler:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIImageLoader.m" lineNumber:233 description:{@"Invalid parameter not satisfying: %@", @"loadingHandler != nil"}];
  }

  v16.receiver = self;
  v16.super_class = _UILoadingHandlerImageLoader;
  v10 = [(_UIImageLoader *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_loadingQueue, a3);
    v12 = _Block_copy(v9);
    loadingHandler = v11->_loadingHandler;
    v11->_loadingHandler = v12;
  }

  return v11;
}

- (void)_really_loadImage:(id)a3
{
  v4 = a3;
  loadingQueue = self->_loadingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___UILoadingHandlerImageLoader__really_loadImage___block_invoke;
  v7[3] = &unk_1E70F37C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(loadingQueue, v7);
}

@end