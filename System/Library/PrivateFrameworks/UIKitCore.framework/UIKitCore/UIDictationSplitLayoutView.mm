@interface UIDictationSplitLayoutView
- (UIDictationSplitLayoutView)initWithFrame:(CGRect)frame;
@end

@implementation UIDictationSplitLayoutView

- (UIDictationSplitLayoutView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIDictationSplitLayoutView;
  v3 = [(UIDictationLayoutView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIDictationView *)v3 removeBackgroundView];
  }

  return v4;
}

@end