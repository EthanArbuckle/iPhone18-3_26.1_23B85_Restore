@interface StackCollectionView
- (_TtC8VideosUI19StackCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (void)vui_registerClass:(Class)class forCellWithReuseIdentifier:(id)identifier;
@end

@implementation StackCollectionView

- (_TtC8VideosUI19StackCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  OUTLINED_FUNCTION_0_8();
  v5 = v4;
  OUTLINED_FUNCTION_2_15();
  return sub_1E391FFB0(v6);
}

- (void)vui_registerClass:(Class)class forCellWithReuseIdentifier:(id)identifier
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = sub_1E4205F14();
  v8 = v7;
  selfCopy = self;
  sub_1E3920110(ObjCClassMetadata, v6, v8);
}

@end