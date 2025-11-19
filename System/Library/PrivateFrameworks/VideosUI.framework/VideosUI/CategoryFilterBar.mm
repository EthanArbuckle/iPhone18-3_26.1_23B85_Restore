@interface CategoryFilterBar
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)categoryButtonTapped:(id)a3;
- (void)layoutSubviews;
@end

@implementation CategoryFilterBar

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
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
  v2 = self;
  sub_1E3838974();
}

- (void)categoryButtonTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E38394BC(v4);
}

@end