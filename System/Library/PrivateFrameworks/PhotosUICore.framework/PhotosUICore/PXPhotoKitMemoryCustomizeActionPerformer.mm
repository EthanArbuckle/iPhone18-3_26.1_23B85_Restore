@interface PXPhotoKitMemoryCustomizeActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)makeCustomMenuElementForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (_TtC12PhotosUICore40PXPhotoKitMemoryCustomizeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMemoryCustomizeActionPerformer

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass() != 0;
  swift_unknownObjectRelease();
  return v5;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4610334();
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  v5 = sub_1A524C634();
  v6 = PXLocalizedString(v5);

  sub_1A524C674();
  v7 = sub_1A524C634();

  return v7;
}

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v4 = sub_1A524C634();

  return v4;
}

+ (id)makeCustomMenuElementForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInput:(id)input handler:(id)handler
{
  v7 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v7;
  referenceCopy = reference;
  swift_unknownObjectRetain();
  sub_1A4610F38();
}

- (_TtC12PhotosUICore40PXPhotoKitMemoryCustomizeActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  type metadata accessor for PXActionParameterKey();
  sub_1A4611304(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  typeCopy = type;
  referenceCopy = reference;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitMemoryCustomizeActionPerformer();
  v11 = [(PXAssetCollectionActionPerformer *)&v13 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:v10];

  return v11;
}

@end