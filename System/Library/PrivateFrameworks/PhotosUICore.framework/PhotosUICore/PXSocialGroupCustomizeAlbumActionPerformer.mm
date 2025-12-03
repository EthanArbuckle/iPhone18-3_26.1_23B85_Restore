@interface PXSocialGroupCustomizeAlbumActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createActivityWithTitle:(id)title actionType:(id)type actionSystemImageName:(id)name;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)makeCustomMenuElementForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (PXSocialGroupCustomizeAlbumActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
@end

@implementation PXSocialGroupCustomizeAlbumActionPerformer

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  if (!inputs)
  {
    return 0;
  }

  if ([inputs respondsToSelector_])
  {
    socialGroups = [swift_unknownObjectRetain() socialGroups];
    if (socialGroups)
    {
      v5 = socialGroups;
      v6 = [socialGroups count];

      swift_unknownObjectRelease();
      return v6 == 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  sub_1A3C38BD4();
  v5 = sub_1A524C634();

  return v5;
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
  sub_1A3E78E48();
}

+ (id)createActivityWithTitle:(id)title actionType:(id)type actionSystemImageName:(id)name
{
  sub_1A524C674();
  sub_1A524C674();
  if (name)
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

- (PXSocialGroupCustomizeAlbumActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C382BC(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  return sub_1A3E78ABC(v6, v8, reference);
}

@end