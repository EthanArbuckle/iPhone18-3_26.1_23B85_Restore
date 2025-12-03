@interface CSDFaceTimeInviteDemuxer
- (BOOL)destinationIDsCanUseV2Blobs:(id)blobs;
- (void)idsPeersForHandle:(id)handle video:(BOOL)video fromID:(id)d completionHandler:(id)handler;
@end

@implementation CSDFaceTimeInviteDemuxer

- (void)idsPeersForHandle:(id)handle video:(BOOL)video fromID:(id)d completionHandler:(id)handler
{
  videoCopy = video;
  v9 = _Block_copy(handler);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  handleCopy = handle;
  selfCopy = self;
  sub_1003F8494(handleCopy, videoCopy, v10, v12, selfCopy, v9);
  _Block_release(v9);
}

- (BOOL)destinationIDsCanUseV2Blobs:(id)blobs
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return 0;
}

@end