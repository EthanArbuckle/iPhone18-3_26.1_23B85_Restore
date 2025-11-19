@interface PXSocialGroupRejectGroupAction
- (NSString)localizedActionName;
- (PXSocialGroupRejectGroupAction)initWithPhotoLibrary:(id)a3;
- (PXSocialGroupRejectGroupAction)initWithSocialGroups:(id)a3;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXSocialGroupRejectGroupAction

- (NSString)localizedActionName
{
  sub_1A3C38BD4();
  v2 = sub_1A524C634();

  return v2;
}

- (PXSocialGroupRejectGroupAction)initWithSocialGroups:(id)a3
{
  sub_1A3FABA8C();
  v3 = sub_1A524CA34();
  return sub_1A3FAB33C(v3);
}

- (void)performAction:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A3FAB598(sub_1A3FABAE4, v5, sub_1A3FAB4D4, &block_descriptor_62, &block_descriptor_3_1);
}

- (void)performUndo:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1A3FAB598(sub_1A3D7A9AC, v5, sub_1A3FAB6E0, &block_descriptor_7, &block_descriptor_10_1);
}

- (PXSocialGroupRejectGroupAction)initWithPhotoLibrary:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end