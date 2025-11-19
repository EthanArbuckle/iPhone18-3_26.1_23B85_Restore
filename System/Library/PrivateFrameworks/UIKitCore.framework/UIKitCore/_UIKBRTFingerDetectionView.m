@interface _UIKBRTFingerDetectionView
- (_UIKBRTFingerDetectionView)initWithFrame:(CGRect)a3;
@end

@implementation _UIKBRTFingerDetectionView

- (_UIKBRTFingerDetectionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIKBRTFingerDetectionView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    [(UIView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

@end