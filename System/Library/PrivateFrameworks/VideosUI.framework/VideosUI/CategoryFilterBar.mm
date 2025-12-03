@interface CategoryFilterBar
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)categoryButtonTapped:(id)tapped;
- (void)layoutSubviews;
@end

@implementation CategoryFilterBar

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_1E3838848();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1E3838974();
}

- (void)categoryButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_1E38394BC(tappedCopy);
}

@end