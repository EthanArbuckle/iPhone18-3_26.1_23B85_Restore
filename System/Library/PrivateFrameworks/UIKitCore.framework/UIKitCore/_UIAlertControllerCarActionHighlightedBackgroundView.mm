@interface _UIAlertControllerCarActionHighlightedBackgroundView
- (void)setCornerRadius:(double)radius;
- (void)setRoundedCornerPosition:(unint64_t)position;
- (void)tintColorDidChange;
@end

@implementation _UIAlertControllerCarActionHighlightedBackgroundView

- (void)tintColorDidChange
{
  tintColor = [(UIView *)self tintColor];
  [(UIView *)self setBackgroundColor:tintColor];
}

- (void)setCornerRadius:(double)radius
{
  layer = [(UIView *)self layer];
  [layer setCornerRadius:radius];
}

- (void)setRoundedCornerPosition:(unint64_t)position
{
  layer = [(UIView *)self layer];
  [layer setMaskedCorners:position];
}

@end