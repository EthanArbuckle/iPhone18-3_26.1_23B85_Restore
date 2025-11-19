@interface PostPlayDocumentViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (double)playbackUpNextViewHeight;
- (void)setPlaybackUpNextContextData:(id)a3;
- (void)startAutoPlayAnimation;
@end

@implementation PostPlayDocumentViewController

- (BOOL)prefersStatusBarHidden
{
  v2 = self;
  v3 = sub_1E41D9C7C(&selRef_prefersStatusBarHidden);

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  v2 = self;
  v3 = sub_1E41D9C7C(&selRef_prefersHomeIndicatorAutoHidden);

  return v3 & 1;
}

- (void)setPlaybackUpNextContextData:(id)a3
{
  v4 = sub_1E4205C64();
  v5 = self;
  sub_1E41DA204(v4);
}

- (void)startAutoPlayAnimation
{
  v2 = self;
  sub_1E41DA3CC();
}

- (double)playbackUpNextViewHeight
{
  v2 = self;
  sub_1E41DA4E4();
  v4 = v3;

  return v4;
}

@end