@interface PTUIPaddedHeaderLabel
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)drawTextInRect:(CGRect)a3;
@end

@implementation PTUIPaddedHeaderLabel

- (void)drawTextInRect:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = PTUIPaddedHeaderLabel;
  [(PTUIPaddedHeaderLabel *)&v3 drawTextInRect:a3.origin.x + 20.0, a3.origin.y + 15.0, a3.size.width + -40.0, a3.size.height + -30.0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v7.receiver = self;
  v7.super_class = PTUIPaddedHeaderLabel;
  [(PTUIPaddedHeaderLabel *)&v7 sizeThatFits:a3.width, a3.height];
  v4 = v3 + 40.0;
  v6 = v5 + 30.0;
  result.height = v6;
  result.width = v4;
  return result;
}

@end