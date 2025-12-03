@interface SocialGroupCopyInternalURLActionPerformer
- (_TtC12PhotosUICore41SocialGroupCopyInternalURLActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performUserInteractionTask;
@end

@implementation SocialGroupCopyInternalURLActionPerformer

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A42D91D0();
}

- (_TtC12PhotosUICore41SocialGroupCopyInternalURLActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
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