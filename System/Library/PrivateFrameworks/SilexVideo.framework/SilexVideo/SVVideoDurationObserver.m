@interface SVVideoDurationObserver
- (SVVideoDurationObserver)initWithPlayerItemObserver:(id)a3;
- (void)setDuration:(double)a3;
- (void)updateDuration:(id *)a3;
@end

@implementation SVVideoDurationObserver

- (SVVideoDurationObserver)initWithPlayerItemObserver:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = SVVideoDurationObserver;
  v6 = [(SVVideoDurationObserver *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playerItemObserver, a3);
    objc_initWeak(&location, v7);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__SVVideoDurationObserver_initWithPlayerItemObserver___block_invoke;
    v15[3] = &unk_279BC5D88;
    objc_copyWeak(&v16, &location);
    v8 = MEMORY[0x2667795A0](v15);
    v9 = [(SVVideoDurationObserver *)v7 playerItemObserver];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__SVVideoDurationObserver_initWithPlayerItemObserver___block_invoke_3;
    v13[3] = &unk_279BC5DB0;
    v10 = v8;
    v14 = v10;
    [v9 onChange:v13];

    v11 = [v5 item];
    (*(v10 + 2))(v10, v11);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __54__SVVideoDurationObserver_initWithPlayerItemObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [v3 duration];
    [WeakRetained updateDuration:v10];

    v5 = [SVKeyValueObserver alloc];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SVVideoDurationObserver_initWithPlayerItemObserver___block_invoke_2;
    v8[3] = &unk_279BC5D60;
    objc_copyWeak(&v9, (a1 + 32));
    v6 = [(SVKeyValueObserver *)v5 initWithKeyPath:@"duration" ofObject:v3 withOptions:1 change:v8];
    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setPlayerItemDurationObserver:v6];
}

void __54__SVVideoDurationObserver_initWithPlayerItemObserver___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = 0uLL;
  v10 = 0;
  v4 = [a3 objectForKey:*MEMORY[0x277CCA2F0]];
  v5 = v4;
  if (v4)
  {
    [v4 CMTimeValue];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v9;
  v8 = v10;
  [WeakRetained updateDuration:&v7];
}

void __54__SVVideoDurationObserver_initWithPlayerItemObserver___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 item];
  (*(v2 + 16))(v2, v3);
}

- (void)updateDuration:(id *)a3
{
  if ((a3->var2 & 0x1D) == 1)
  {
    v6 = v3;
    v7 = v4;
    v5 = *a3;
    [(SVVideoDurationObserver *)self setDuration:fmax(CMTimeGetSeconds(&v5), 0.0)];
  }
}

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    v4 = [(SVVideoDurationObserver *)self changeBlock];

    if (v4)
    {
      v5 = [(SVVideoDurationObserver *)self changeBlock];
      v5[2](v5, self);
    }
  }
}

@end