@interface PostPlayDocumentViewController
- (BOOL)prefersHomeIndicatorAutoHidden;
- (BOOL)prefersStatusBarHidden;
- (double)playbackUpNextViewHeight;
- (void)setPlaybackUpNextContextData:(id)data;
- (void)startAutoPlayAnimation;
@end

@implementation PostPlayDocumentViewController

- (BOOL)prefersStatusBarHidden
{
  selfCopy = self;
  v3 = sub_1E41D9C7C(&selRef_prefersStatusBarHidden);

  return v3 & 1;
}

- (BOOL)prefersHomeIndicatorAutoHidden
{
  selfCopy = self;
  v3 = sub_1E41D9C7C(&selRef_prefersHomeIndicatorAutoHidden);

  return v3 & 1;
}

- (void)setPlaybackUpNextContextData:(id)data
{
  v4 = sub_1E4205C64();
  selfCopy = self;
  sub_1E41DA204(v4);
}

- (void)startAutoPlayAnimation
{
  selfCopy = self;
  sub_1E41DA3CC();
}

- (double)playbackUpNextViewHeight
{
  selfCopy = self;
  sub_1E41DA4E4();
  v4 = v3;

  return v4;
}

@end