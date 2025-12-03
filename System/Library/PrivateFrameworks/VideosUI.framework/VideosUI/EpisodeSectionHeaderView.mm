@interface EpisodeSectionHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (void)didSelectIndex:(int64_t)index;
- (void)layoutSubviews;
@end

@implementation EpisodeSectionHeaderView

- (void)didSelectIndex:(int64_t)index
{
  selfCopy = self;
  sub_1E3E02AA8(index);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_1E3E02EEC();
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  width = subviews.width;
  selfCopy = self;
  v7 = sub_1E3E02CD8(only, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end