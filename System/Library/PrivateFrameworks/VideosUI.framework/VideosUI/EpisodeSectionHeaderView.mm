@interface EpisodeSectionHeaderView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)didSelectIndex:(int64_t)a3;
- (void)layoutSubviews;
@end

@implementation EpisodeSectionHeaderView

- (void)didSelectIndex:(int64_t)a3
{
  v4 = self;
  sub_1E3E02AA8(a3);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1E3E02CD0(width);
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
  sub_1E3E02EEC();
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  v7 = sub_1E3E02CD8(a4, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end