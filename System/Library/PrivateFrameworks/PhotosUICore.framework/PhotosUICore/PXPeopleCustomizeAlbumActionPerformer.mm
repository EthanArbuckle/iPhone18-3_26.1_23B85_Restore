@interface PXPeopleCustomizeAlbumActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createActivityWithTitle:(id)title actionType:(id)type actionSystemImageName:(id)name;
+ (id)localizedTitleForPerson:(id)person;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)makeCustomMenuElementForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForPerson:(id)person;
- (PXPeopleCustomizeAlbumActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation PXPeopleCustomizeAlbumActionPerformer

+ (id)localizedTitleForPerson:(id)person
{
  sub_1A3C38BD4();
  v3 = sub_1A524C634();

  return v3;
}

+ (id)systemImageNameForPerson:(id)person
{
  v3 = sub_1A524C634();

  return v3;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  if (!inputs)
  {
    return 0;
  }

  if ([inputs respondsToSelector_])
  {
    people = [swift_unknownObjectRetain() people];
    if (people)
    {
      v5 = people;
      v6 = [people count];

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
  sub_1A4677A7C();
}

+ (id)createActivityWithTitle:(id)title actionType:(id)type actionSystemImageName:(id)name
{
  sub_1A524C674();
  sub_1A524C674();
  if (name)
  {
    sub_1A524C674();
    v6 = objc_allocWithZone(PXActivity);
    v7 = @"PXActivityTypeCustomizePeopleAlbum";
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

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4677490();
}

- (PXPeopleCustomizeAlbumActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PXActionParameterKey();
  sub_1A4678638(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  typeCopy = type;
  referenceCopy = reference;
  v11 = sub_1A524C3D4();

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(PXAssetCollectionActionPerformer *)&v14 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:v11];

  return v12;
}

@end