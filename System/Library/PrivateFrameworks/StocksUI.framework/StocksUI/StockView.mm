@interface StockView
- (NSString)accessibilityLabel;
- (NSString)tsaxAccessibilityLabelForReordering;
@end

@implementation StockView

- (NSString)accessibilityLabel
{
  selfCopy = self;
  sub_22078DE90();
  v4 = v3;

  if (v4)
  {
    v5 = sub_22089132C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)tsaxAccessibilityLabelForReordering
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8StocksUI9StockView_companyLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
    sub_22089136C();

    v6 = sub_22089132C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end