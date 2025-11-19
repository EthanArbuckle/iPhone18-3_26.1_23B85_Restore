@interface SocialGroupCreateGroupActionPerformer
- (_TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
- (void)performBackgroundTask;
@end

@implementation SocialGroupCreateGroupActionPerformer

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A4843FE8();
}

- (_TtC12PhotosUICore37SocialGroupCreateGroupActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  return sub_1A48443F0(v6, v8, a4);
}

@end