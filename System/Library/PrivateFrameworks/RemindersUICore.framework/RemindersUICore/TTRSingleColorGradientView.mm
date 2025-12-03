@interface TTRSingleColorGradientView
- (void)drawRect:(CGRect)rect;
@end

@implementation TTRSingleColorGradientView

- (void)drawRect:(CGRect)rect
{
  selfCopy = self;
  v3 = UIGraphicsGetCurrentContext();
  if (v3)
  {
    v4 = v3;
    [(TTRSingleColorGradientView *)selfCopy bounds];
    sub_21D6400AC(v4);
  }
}

@end