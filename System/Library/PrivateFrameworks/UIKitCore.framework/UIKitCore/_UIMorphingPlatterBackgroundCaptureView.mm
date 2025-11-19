@interface _UIMorphingPlatterBackgroundCaptureView
- (_UIMorphingPlatterBackgroundCaptureView)initWithFrame:(CGRect)a3;
@end

@implementation _UIMorphingPlatterBackgroundCaptureView

- (_UIMorphingPlatterBackgroundCaptureView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIMorphingPlatterBackgroundCaptureView;
  v3 = [(UIView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    v5 = [(UIView *)v4 layer];
    [v5 setGroupName:@"_UIMorphingPlatterView.backgroundCapture"];
  }

  return v4;
}

@end