@interface PXSocialGroupCustomizeAlbumActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)createActivityWithTitle:(id)a3 actionType:(id)a4 actionSystemImageName:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
+ (id)makeCustomMenuElementForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInput:(id)a5 handler:(id)a6;
+ (id)systemImageNameForAssetCollectionReference:(id)a3 withInputs:(id)a4;
- (PXSocialGroupCustomizeAlbumActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
@end

@implementation PXSocialGroupCustomizeAlbumActionPerformer

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  if ([a4 respondsToSelector_])
  {
    v4 = [swift_unknownObjectRetain() socialGroups];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 count];

      swift_unknownObjectRelease();
      return v6 == 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  sub_1A3C38BD4();
  v5 = sub_1A524C634();

  return v5;
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
  sub_1A3E78E48();
}

+ (id)createActivityWithTitle:(id)a3 actionType:(id)a4 actionSystemImageName:(id)a5
{
  sub_1A524C674();
  sub_1A524C674();
  if (a5)
  {
    sub_1A524C674();
    v6 = objc_allocWithZone(PXActivity);
    v7 = @"PXActivityTypeCustomizeSocialGroupAlbum";
    v8 = sub_1A524C634();
    v9 = sub_1A524C634();
    v10 = sub_1A524C634();
    v11 = [v6 initWithActionTitle:v8 actionType:v9 activityType:v7 systemImageName:v10];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (PXSocialGroupCustomizeAlbumActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C382BC(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  return sub_1A3E78ABC(v6, v8, a4);
}

@end