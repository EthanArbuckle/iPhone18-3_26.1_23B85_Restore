@interface SocialGroupAddPeopleActionPerformer
- (_TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation SocialGroupAddPeopleActionPerformer

- (void)performUserInteractionTask
{
  v2 = self;
  sub_1A426E760();
}

- (_TtC12PhotosUICore35SocialGroupAddPeopleActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A426FD20(&unk_1EB1356B0, 255, type metadata accessor for PXActionParameterKey);
  sub_1A524C3E4();
  return sub_1A426F308(v6, v8, a4);
}

@end