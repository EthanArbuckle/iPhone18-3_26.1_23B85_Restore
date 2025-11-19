@interface TTRSingleColorGradientView
- (void)drawRect:(CGRect)a3;
@end

@implementation TTRSingleColorGradientView

- (void)drawRect:(CGRect)a3
{
  v5 = self;
  v3 = UIGraphicsGetCurrentContext();
  if (v3)
  {
    v4 = v3;
    [(TTRSingleColorGradientView *)v5 bounds];
    sub_21D6400AC(v4);
  }
}

@end