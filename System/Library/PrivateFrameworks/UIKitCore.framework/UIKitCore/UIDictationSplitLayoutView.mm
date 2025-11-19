@interface UIDictationSplitLayoutView
- (UIDictationSplitLayoutView)initWithFrame:(CGRect)a3;
@end

@implementation UIDictationSplitLayoutView

- (UIDictationSplitLayoutView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIDictationSplitLayoutView;
  v3 = [(UIDictationLayoutView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIDictationView *)v3 removeBackgroundView];
  }

  return v4;
}

@end