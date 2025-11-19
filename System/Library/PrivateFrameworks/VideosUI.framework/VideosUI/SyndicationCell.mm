@interface SyndicationCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)vui_cellDidSelect;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation SyndicationCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3C5D3D8(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)vui_cellWillBeDisplayed
{
  v2 = self;
  sub_1E3C5E1E4(&selRef_vui_cellWillBeDisplayed, 1);
}

- (void)vui_cellDidSelect
{
  v2 = self;
  sub_1E3C5E1E4(&selRef_vui_cellDidSelect, 0);
}

- (void)vui_prepareForReuse
{
  v2 = self;
  sub_1E3C5E318();
}

@end