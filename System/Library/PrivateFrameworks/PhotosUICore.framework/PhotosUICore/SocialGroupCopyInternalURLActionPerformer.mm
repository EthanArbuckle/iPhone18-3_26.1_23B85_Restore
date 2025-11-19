@interface SocialGroupCopyInternalURLActionPerformer
- (_TtC12PhotosUICore41SocialGroupCopyInternalURLActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation SocialGroupCopyInternalURLActionPerformer

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A42D91D0();
}

- (_TtC12PhotosUICore41SocialGroupCopyInternalURLActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  v9 = a3;
  v10 = a4;
  v11 = sub_1A524C3D4();

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(PXAssetCollectionActionPerformer *)&v14 initWithActionType:v9 assetCollectionReference:v10 parameters:v11];

  return v12;
}

@end