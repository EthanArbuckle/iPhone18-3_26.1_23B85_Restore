@interface ActionCellHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)removeAction;
@end

@implementation ActionCellHeaderView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2744F6884();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_2744F7868();
}

@end