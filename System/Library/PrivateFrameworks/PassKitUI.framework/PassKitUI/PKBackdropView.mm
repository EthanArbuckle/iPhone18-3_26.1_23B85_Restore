@interface PKBackdropView
- (PKBackdropView)initWithFrame:(CGRect)frame;
@end

@implementation PKBackdropView

- (PKBackdropView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKBackdropView;
  v3 = [(PKBackdropView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKBackdropView *)v3 setOpaque:0];
  }

  return v4;
}

@end