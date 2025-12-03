@interface PXComposablePhotosAction
- (PXComposablePhotosAction)initWithPhotoLibrary:(id)library;
- (PXComposablePhotosAction)initWithSubActions:(id)actions;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXComposablePhotosAction

- (PXComposablePhotosAction)initWithSubActions:(id)actions
{
  sub_1A3C52C70(0, &qword_1EB13AC50);
  v3 = sub_1A524CA34();
  return sub_1A444A4E8(v3);
}

- (void)performAction:(id)action
{
  v4 = _Block_copy(action);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A444ADA0(sub_1A3FABAE4, v5, &unk_1F170E600, sub_1A444AAEC, &block_descriptor_189, &selRef_performAction_);
}

- (void)performUndo:(id)undo
{
  v4 = _Block_copy(undo);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1A444ADA0(sub_1A3D7A9AC, v5, &unk_1F170E650, sub_1A444AFB0, &block_descriptor_10_8, &selRef_performUndo_);
}

- (PXComposablePhotosAction)initWithPhotoLibrary:(id)library
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end