@interface PostAssetsToSharedCollectionAction
- (NSString)actionIdentifier;
- (NSString)actionNameLocalizationKey;
- (_TtC12PhotosUICore34PostAssetsToSharedCollectionAction)initWithAssets:(id)a3;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PostAssetsToSharedCollectionAction

- (NSString)actionIdentifier
{
  v2 = sub_1A524C634();

  return v2;
}

- (NSString)actionNameLocalizationKey
{
  v2 = sub_1A524C634();

  return v2;
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A465F068(sub_1A3D7A9AC, v5);
}

- (void)performUndo:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1A465F58C(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC12PhotosUICore34PostAssetsToSharedCollectionAction)initWithAssets:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end