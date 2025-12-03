@interface SocialGroupReorderGroupActionPerformer
- (_TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation SocialGroupReorderGroupActionPerformer

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A45B368C();
}

- (_TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38304(&unk_1EB1356B0, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer_sourceGroup) = 0;
  v9 = self + OBJC_IVAR____TtC12PhotosUICore38SocialGroupReorderGroupActionPerformer_destinationIndex;
  *v9 = 0;
  v9[8] = 1;
  typeCopy = type;
  referenceCopy = reference;
  v12 = sub_1A524C3D4();

  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(PXAssetCollectionActionPerformer *)&v15 initWithActionType:typeCopy assetCollectionReference:referenceCopy parameters:v12];

  return v13;
}

@end