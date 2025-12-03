@interface OKDimmerView
- (OKDimmerView)initWithFrame:(CGRect)frame;
@end

@implementation OKDimmerView

- (OKDimmerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = OKDimmerView;
  v3 = [(OFViewProxy *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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