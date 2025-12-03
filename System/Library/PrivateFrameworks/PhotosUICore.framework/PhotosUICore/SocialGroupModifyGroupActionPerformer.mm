@interface SocialGroupModifyGroupActionPerformer
- (_TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
- (void)performBackgroundTask;
@end

@implementation SocialGroupModifyGroupActionPerformer

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A3D8CB68();
}

- (_TtC12PhotosUICore37SocialGroupModifyGroupActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  v6 = sub_1A524C674();
  v8 = v7;
  type metadata accessor for PXActionParameterKey();
  sub_1A3C38278(&unk_1EB1356B0);
  sub_1A524C3E4();
  return sub_1A3D8D040(v6, v8, reference);
}

@end