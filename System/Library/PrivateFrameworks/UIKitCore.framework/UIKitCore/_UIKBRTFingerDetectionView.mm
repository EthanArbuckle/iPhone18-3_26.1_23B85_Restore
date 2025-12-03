@interface _UIKBRTFingerDetectionView
- (_UIKBRTFingerDetectionView)initWithFrame:(CGRect)frame;
@end

@implementation _UIKBRTFingerDetectionView

- (_UIKBRTFingerDetectionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIKBRTFingerDetectionView;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end