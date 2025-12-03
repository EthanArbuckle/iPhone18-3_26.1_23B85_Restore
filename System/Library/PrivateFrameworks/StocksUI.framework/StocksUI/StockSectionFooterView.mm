@interface StockSectionFooterView
- (CGRect)accessibilityFrame;
@end

@implementation StockSectionFooterView

- (CGRect)accessibilityFrame
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_moreLabel);
  selfCopy = self;
  [v2 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_symbolLabel) accessibilityFrame];
  v37.origin.x = v12;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  v32.origin.x = v5;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  v33 = CGRectUnion(v32, v37);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [*(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8StocksUI22StockSectionFooterView_arrowShapeView) accessibilityFrame];
  v38.origin.x = v20;
  v38.origin.y = v21;
  v38.size.width = v22;
  v38.size.height = v23;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectUnion(v34, v38);
  v24 = v35.origin.x;
  v25 = v35.origin.y;
  v26 = v35.size.width;
  v27 = v35.size.height;

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

@end