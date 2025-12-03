@interface PXSocialGroupRejectGroupActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (PXSocialGroupRejectGroupActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXSocialGroupRejectGroupActionPerformer

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A3DE1874();
}

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A3DE1CC0();
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  v5 = swift_unknownObjectRetain();
  v6 = sub_1A3DE2278(v5);

  swift_unknownObjectRelease();
  return v6 & 1;
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

- (PXSocialGroupRejectGroupActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
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