@interface PKBackdropView
- (PKBackdropView)initWithFrame:(CGRect)a3;
@end

@implementation PKBackdropView

- (PKBackdropView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKBackdropView;
  v3 = [(PKBackdropView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKBackdropView *)v3 setOpaque:0];
  }

  return v4;
}

@end