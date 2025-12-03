@interface PXPhotoKitAssetCollectionChangePersonSortOrder
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (NSString)activityType;
- (PXPhotoKitAssetCollectionChangePersonSortOrder)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionChangePersonSortOrder

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
  referenceCopy = reference;
  v6 = swift_unknownObjectRetain();
  sub_1A40924C0(v6);
  v8 = v7;

  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = sub_1A524C634();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)activityType
{
  v2 = sub_1A524C634();

  return v2;
}

+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  referenceCopy = reference;
  v9 = swift_unknownObjectRetain();
  sub_1A40925A8(v9, sub_1A3E79128, v7);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4091E84();
}

- (PXPhotoKitAssetCollectionChangePersonSortOrder)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  typeCopy = type;
  referenceCopy = reference;
  v10 = sub_1A524C3D4();

  v13.receiver = self;
  v13.super_class = type metadata accessor for PhotoKitAssetCollectionChangePersonSortOrder();
  v11 = [(PXAssetCollectionActionPerformer *)&v13 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:v10];

  return v11;
}

@end