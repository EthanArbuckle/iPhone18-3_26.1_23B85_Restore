@interface OKDimmerView
- (OKDimmerView)initWithFrame:(CGRect)a3;
@end

@implementation OKDimmerView

- (OKDimmerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = OKDimmerView;
  v3 = [(OFViewProxy *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(OKDimmerView *)v3 setUserInteractionEnabled:1];
    -[OKDimmerView setBackgroundColor:](v4, "setBackgroundColor:", [MEMORY[0x277D75348] blackColor]);
    [(OKDimmerView *)v4 setAutoresizingMask:18];
  }

  return v4;
}

@end