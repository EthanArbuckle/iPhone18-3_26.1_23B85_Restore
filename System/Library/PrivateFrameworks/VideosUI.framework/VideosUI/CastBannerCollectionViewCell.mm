@interface CastBannerCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)prepareForReuse;
@end

@implementation CastBannerCollectionViewCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E41A1D40(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_1E41A27B8();
}

@end