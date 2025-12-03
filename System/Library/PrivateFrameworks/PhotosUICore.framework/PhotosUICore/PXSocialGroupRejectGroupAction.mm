@interface PXSocialGroupRejectGroupAction
- (NSString)localizedActionName;
- (PXSocialGroupRejectGroupAction)initWithPhotoLibrary:(id)library;
- (PXSocialGroupRejectGroupAction)initWithSocialGroups:(id)groups;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXSocialGroupRejectGroupAction

- (NSString)localizedActionName
{
  sub_1A3C38BD4();
  v2 = sub_1A524C634();

  return v2;
}

- (PXSocialGroupRejectGroupAction)initWithSocialGroups:(id)groups
{
  sub_1A3FABA8C();
  v3 = sub_1A524CA34();
  return sub_1A3FAB33C(v3);
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A3FAB598(sub_1A3FABAE4, v5, sub_1A3FAB4D4, &block_descriptor_62, &block_descriptor_3_1);
}

- (void)performUndo:(id)undo
{
  v4 = _Block_copy(undo);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A3FAB598(sub_1A3D7A9AC, v5, sub_1A3FAB6E0, &block_descriptor_7, &block_descriptor_10_1);
}

- (PXSocialGroupRejectGroupAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end