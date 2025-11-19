@interface SocialGroupModifyGroupActionPerformer
- (_TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
@end

@implementation SocialGroupModifyGroupActionPerformer

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A3D8CB68();
}

- (_TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  return sub_1A3D8D040(v6, v8, a4);
}

@end