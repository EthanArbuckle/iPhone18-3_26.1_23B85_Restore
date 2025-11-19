@interface ActionCellHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)removeAction;
@end

@implementation ActionCellHeaderView

- (void)layoutSubviews
{
  v2 = self;
  sub_2744F6884();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_2744F7034(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)removeAction
{
  v2 = self;
  sub_2744F7868();
}

@end