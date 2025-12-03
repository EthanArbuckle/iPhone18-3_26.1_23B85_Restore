@interface PXPeoplePromoteAsMagicInternalActionPerformer
+ (BOOL)canPerformOn:(id)on;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForPerson:(id)person;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForPerson:(id)person;
- (PXPeoplePromoteAsMagicInternalActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation PXPeoplePromoteAsMagicInternalActionPerformer

+ (BOOL)canPerformOn:(id)on
{
  onCopy = on;
  v4 = sub_1A4209E04(onCopy);

  return v4 & 1;
}

+ (id)localizedTitleForPerson:(id)person
{
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
  referenceCopy = reference;
  v5 = swift_unknownObjectRetain();
  v6 = sub_1A4209EC0(v5);

  swift_unknownObjectRelease();
  return v6 & 1;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  v5 = sub_1A524C634();

  return v5;
}

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v4 = sub_1A524C634();

  return v4;
}

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A42096B8();
}

- (PXPeoplePromoteAsMagicInternalActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
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