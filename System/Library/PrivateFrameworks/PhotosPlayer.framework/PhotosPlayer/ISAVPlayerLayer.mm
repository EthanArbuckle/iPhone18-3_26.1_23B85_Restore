@interface ISAVPlayerLayer
- (ISAVPlayerLayer)init;
- (void)dealloc;
- (void)deferredDealloc;
- (void)didChangeValueForKey:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setPlayer:(id)a3;
- (void)setWrappedPlayer:(id)a3;
@end

@implementation ISAVPlayerLayer

- (void)setPlayer:(id)a3
{
  v4 = a3;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__ISAVPlayerLayer_setPlayer___block_invoke;
  v7[3] = &unk_279A2A348;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, v7);
}

void __29__ISAVPlayerLayer_setPlayer___block_invoke(uint64_t a1)
{
  v12.receiver = *(a1 + 32);
  v12.super_class = ISAVPlayerLayer;
  v2 = objc_msgSendSuper2(&v12, sel_player);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__ISAVPlayerLayer_setPlayer___block_invoke_2;
    block[3] = &unk_279A2A180;
    block[4] = *(a1 + 32);
    dispatch_sync(v4, block);

    v5 = dispatch_semaphore_create(0);
    v6 = [v3 dispatchQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__ISAVPlayerLayer_setPlayer___block_invoke_3;
    v9[3] = &unk_279A2A180;
    v10 = v5;
    v7 = v5;
    dispatch_async(v6, v9);

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    [v8 attachToPlayerLayerIfNeeded:*(a1 + 32)];
  }
}

id __29__ISAVPlayerLayer_setPlayer___block_invoke_2(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ISAVPlayerLayer;
  return objc_msgSendSuper2(&v2, sel_setPlayer_, 0);
}

- (void)setWrappedPlayer:(id)a3
{
  v3.receiver = self;
  v3.super_class = ISAVPlayerLayer;
  [(ISAVPlayerLayer *)&v3 setPlayer:a3];
}

- (void)deferredDealloc
{
  v3 = +[ISDeferredDealloc sharedInstance];
  [v3 _performDeferredDealloc:self];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ISAVPlayerLayer *)self bounds];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  if (!CGRectEqualToRect(v13, v14))
  {
    v12.receiver = self;
    v12.super_class = ISAVPlayerLayer;
    [(ISAVPlayerLayer *)&v12 setBounds:x, y, width, height];
  }
}

- (void)dealloc
{
  v3 = [(ISAVPlayerLayer *)self player];
  v4 = +[ISDeferredDealloc sharedInstance];
  [v4 _performDeferredDealloc:v3];

  v5.receiver = self;
  v5.super_class = ISAVPlayerLayer;
  [(ISAVPlayerLayer *)&v5 dealloc];
}

- (void)didChangeValueForKey:(id)a3
{
  v8.receiver = self;
  v8.super_class = ISAVPlayerLayer;
  v4 = a3;
  [(ISAVPlayerLayer *)&v8 didChangeValueForKey:v4];
  v5 = [v4 isEqualToString:{@"readyForDisplay", v8.receiver, v8.super_class}];

  if (v5)
  {
    v6 = [(ISAVPlayerLayer *)self readyForDisplayChangeHandler];

    if (v6)
    {
      v7 = [(ISAVPlayerLayer *)self readyForDisplayChangeHandler];
      v7[2]();
    }
  }
}

- (ISAVPlayerLayer)init
{
  v6.receiver = self;
  v6.super_class = ISAVPlayerLayer;
  v2 = [(ISAVPlayerLayer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photosplayer.avplayerlayer.isolation", 0);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v3;
  }

  return v2;
}

@end