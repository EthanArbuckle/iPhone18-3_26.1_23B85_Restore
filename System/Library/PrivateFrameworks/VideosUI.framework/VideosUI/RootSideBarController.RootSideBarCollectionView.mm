@interface RootSideBarController.RootSideBarCollectionView
- (CGSize)contentSize;
- (_TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)setContentSize:(CGSize)a3;
@end

@implementation RootSideBarController.RootSideBarCollectionView

- (CGSize)contentSize
{
  v2 = self;
  sub_1E3ACCD58();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1E3ACCDF0(width, height);
}

- (_TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_15();
  return sub_1E3ACCEE0(v6);
}

@end