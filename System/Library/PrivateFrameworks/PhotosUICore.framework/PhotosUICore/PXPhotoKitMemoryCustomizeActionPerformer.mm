@interface PXPhotoKitMemoryCustomizeActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)makeCustomMenuElementForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInput:(id)a5 handler:(id)a6;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (_TtC12PhotosUICore40PXPhotoKitMemoryCustomizeActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMemoryCustomizeActionPerformer

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = [a3 assetCollection];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass() != 0;
  swift_unknownObjectRelease();
  return v5;
}

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A4610334();
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v5 = sub_1A524C634();
  v6 = PXLocalizedString(v5);

  sub_1A524C674();
  v7 = sub_1A524C634();

  return v7;
}

+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v4 = sub_1A524C634();

  return v4;
}

+ (id)makeCustomMenuElementForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInput:(id)a5 handler:(id)a6
{
  v7 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v7;
  v8 = a4;
  swift_unknownObjectRetain();
  sub_1A4610F38();
}

- (_TtC12PhotosUICore40PXPhotoKitMemoryCustomizeActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  type metadata accessor for PXActionParameterKey();
  sub_1A4611304(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  v8 = a3;
  v9 = a4;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PXPhotoKitMemoryCustomizeActionPerformer();
  v11 = [(PXAssetCollectionActionPerformer *)&v13 initWithActionType:v8 assetCollectionReference:v9 parameters:v10];

  return v11;
}

@end