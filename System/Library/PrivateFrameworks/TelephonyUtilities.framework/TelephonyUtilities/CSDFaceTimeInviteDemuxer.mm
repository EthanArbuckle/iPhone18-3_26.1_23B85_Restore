@interface CSDFaceTimeInviteDemuxer
- (BOOL)destinationIDsCanUseV2Blobs:(id)a3;
- (void)idsPeersForHandle:(id)a3 video:(BOOL)a4 fromID:(id)a5 completionHandler:(id)a6;
@end

@implementation CSDFaceTimeInviteDemuxer

- (void)idsPeersForHandle:(id)a3 video:(BOOL)a4 fromID:(id)a5 completionHandler:(id)a6
{
  v6 = a4;
  v9 = _Block_copy(a6);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a3;
  v14 = self;
  sub_1003F8494(v13, v6, v10, v12, v14, v9);
  _Block_release(v9);
}

- (BOOL)destinationIDsCanUseV2Blobs:(id)a3
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

@end