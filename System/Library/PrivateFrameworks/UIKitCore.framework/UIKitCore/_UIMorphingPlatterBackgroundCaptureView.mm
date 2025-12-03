@interface _UIMorphingPlatterBackgroundCaptureView
- (_UIMorphingPlatterBackgroundCaptureView)initWithFrame:(CGRect)frame;
@end

@implementation _UIMorphingPlatterBackgroundCaptureView

- (_UIMorphingPlatterBackgroundCaptureView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIMorphingPlatterBackgroundCaptureView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    layer = [(UIView *)v4 layer];
    [layer setGroupName:@"_UIMorphingPlatterView.backgroundCapture"];
  }

  return v4;
}

@end