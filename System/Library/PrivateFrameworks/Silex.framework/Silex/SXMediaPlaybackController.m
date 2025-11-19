@interface SXMediaPlaybackController
- (id)initWithViewport:(id *)a1;
- (void)registerMediaPlayBack:(uint64_t)a1;
- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4;
@end

@implementation SXMediaPlaybackController

- (void)viewport:(id)a3 appearStateChangedFromState:(unint64_t)a4
{
  v6 = a3;
  if (a4 != 3)
  {
    v8 = v6;
    v7 = [v6 appearState] == 3;
    v6 = v8;
    if (v7)
    {
      [SXMediaPlaybackController viewport:? appearStateChangedFromState:?];
      v6 = v8;
    }
  }
}

- (id)initWithViewport:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SXMediaPlaybackController;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      [v4 addViewportChangeListener:a1 forOptions:8];
    }
  }

  return a1;
}

- (void)registerMediaPlayBack:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained((a1 + 8));

      if (v6 != obj)
      {
        v7 = objc_loadWeakRetained((a1 + 8));
        [v7 pauseMediaPlayback];
      }
    }

    objc_storeWeak((a1 + 8), obj);
    v3 = obj;
  }
}

- (void)viewport:(id *)WeakRetained appearStateChangedFromState:.cold.1(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
  }

  v1 = WeakRetained;
  [WeakRetained pauseMediaPlaybackForDisappearance];
}

@end