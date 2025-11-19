@interface StackCollectionView
- (_TtC8VideosUI19StackCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (void)vui_registerClass:(Class)a3 forCellWithReuseIdentifier:(id)a4;
@end

@implementation StackCollectionView

- (_TtC8VideosUI19StackCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_15();
  return sub_1E391FFB0(v6);
}

- (void)vui_registerClass:(Class)a3 forCellWithReuseIdentifier:(id)a4
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = self;
  sub_1E3920110(ObjCClassMetadata, v6, v8);
}

@end