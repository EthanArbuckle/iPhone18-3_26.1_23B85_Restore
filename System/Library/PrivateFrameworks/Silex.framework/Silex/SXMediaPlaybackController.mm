@interface SXMediaPlaybackController
- (id)initWithViewport:(id *)viewport;
- (void)registerMediaPlayBack:(uint64_t)back;
- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state;
@end

@implementation SXMediaPlaybackController

- (void)viewport:(id)viewport appearStateChangedFromState:(unint64_t)state
{
  viewportCopy = viewport;
  if (state != 3)
  {
    v8 = viewportCopy;
    v7 = [viewportCopy appearState] == 3;
    viewportCopy = v8;
    if (v7)
    {
      [SXMediaPlaybackController viewport:? appearStateChangedFromState:?];
      viewportCopy = v8;
    }
  }
}

- (id)initWithViewport:(id *)viewport
{
  v4 = a2;
  if (viewport)
  {
    v7.receiver = viewport;
    v7.super_class = SXMediaPlaybackController;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    viewport = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      [v4 addViewportChangeListener:viewport forOptions:8];
    }
  }

  return viewport;
}

- (void)registerMediaPlayBack:(uint64_t)back
{
  v3 = a2;
  if (back)
  {
    obj = v3;
    WeakRetained = objc_loadWeakRetained((back + 8));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained((back + 8));

      if (v6 != obj)
      {
        v7 = objc_loadWeakRetained((back + 8));
        [v7 pauseMediaPlayback];
      }
    }

    objc_storeWeak((back + 8), obj);
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