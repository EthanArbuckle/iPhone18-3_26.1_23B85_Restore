@interface RootSideBarController.RootSideBarCollectionView
- (CGSize)contentSize;
- (_TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)setContentSize:(CGSize)size;
@end

@implementation RootSideBarController.RootSideBarCollectionView

- (CGSize)contentSize
{
  selfCopy = self;
  sub_1E3ACCD58();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_1E3ACCDF0(width, height);
}

- (_TtCC8VideosUI21RootSideBarController25RootSideBarCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_15();
  return sub_1E3ACCEE0(v6);
}

@end