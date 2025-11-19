@interface _UIOverlayService
- (_UIOverlayService)init;
- (_UIOverlayServiceDelegate)delegate;
- (void)_asyncTargetWithHandler:(id)a3;
- (void)_makeConnectionIfNecessaryWithConnectionHandler:(id)a3;
- (void)dealloc;
- (void)performOverlayClientAction:(id)a3;
- (void)sendOverlayAction:(id)a3;
@end

@implementation _UIOverlayService

- (_UIOverlayService)init
{
  v6.receiver = self;
  v6.super_class = _UIOverlayService;
  v2 = [(_UIOverlayService *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.uikit.uioverlayservice.connectionQueue", v3);
    [(_UIOverlayService *)v2 setConnectionQueue:v4];
  }

  return v2;
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = _UIOverlayService;
  [(_UIOverlayService *)&v3 dealloc];
}

- (void)_makeConnectionIfNecessaryWithConnectionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(_UIOverlayService *)self connectionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke;
  v7[3] = &unk_1E71177E8;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_asyncTargetWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45___UIOverlayService__asyncTargetWithHandler___block_invoke;
  v6[3] = &unk_1E712B6D8;
  v7 = v4;
  v5 = v4;
  [(_UIOverlayService *)self _makeConnectionIfNecessaryWithConnectionHandler:v6];
}

- (void)sendOverlayAction:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39___UIOverlayService_sendOverlayAction___block_invoke;
  v6[3] = &unk_1E7118240;
  v7 = v4;
  v5 = v4;
  [(_UIOverlayService *)self _asyncTargetWithHandler:v6];
}

- (void)performOverlayClientAction:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___UIOverlayService_performOverlayClientAction___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (_UIOverlayServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end