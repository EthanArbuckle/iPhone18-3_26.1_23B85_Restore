@interface PTUIPaddedHeaderLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation PTUIPaddedHeaderLabel

- (void)drawTextInRect:(CGRect)rect
{
  v3.receiver = self;
  v3.super_class = PTUIPaddedHeaderLabel;
  [(PTUIPaddedHeaderLabel *)&v3 drawTextInRect:rect.origin.x + 20.0, rect.origin.y + 15.0, rect.size.width + -40.0, rect.size.height + -30.0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v7.receiver = self;
  v7.super_class = PTUIPaddedHeaderLabel;
  [(PTUIPaddedHeaderLabel *)&v7 sizeThatFits:fits.width, fits.height];
  v4 = v3 + 40.0;
  v6 = v5 + 30.0;
  result.height = v6;
  result.width = v4;
  return result;
}

@end