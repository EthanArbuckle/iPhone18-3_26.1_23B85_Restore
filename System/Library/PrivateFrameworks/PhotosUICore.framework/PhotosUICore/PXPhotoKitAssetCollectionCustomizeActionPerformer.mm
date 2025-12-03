@interface PXPhotoKitAssetCollectionCustomizeActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)makeCustomMenuElementForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (_TtC12PhotosUICore49PXPhotoKitAssetCollectionCustomizeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionCustomizeActionPerformer

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  swift_unknownObjectRetain();
  v5 = sub_1A48F7ADC(referenceCopy);

  swift_unknownObjectRelease();
  return v5 & 1;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A48F6EE0();
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  swift_unknownObjectRetain();
  sub_1A48F7E24(referenceCopy);
  v7 = v6;

  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  [objc_msgSend(referenceCopy assetCollection)];
  swift_unknownObjectRelease();

  v5 = sub_1A524C634();

  return v5;
}

+ (id)makeCustomMenuElementForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInput:(id)input handler:(id)handler
{
  v7 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v7;
  referenceCopy = reference;
  swift_unknownObjectRetain();
  sub_1A48F7EE4();
}

- (_TtC12PhotosUICore49PXPhotoKitAssetCollectionCustomizeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  type metadata accessor for PXActionParameterKey();
  sub_1A48F7C80(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  typeCopy = type;
  referenceCopy = reference;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitAssetCollectionCustomizeActionPerformer();
  v11 = [(PXAssetCollectionActionPerformer *)&v13 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:v10];

  return v11;
}

@end