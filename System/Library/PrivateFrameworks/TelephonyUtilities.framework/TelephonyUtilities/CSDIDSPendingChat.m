@interface CSDIDSPendingChat
- (CSDIDSPendingChat)initWithUUID:(id)a3 isVideo:(BOOL)a4 handle:(id)a5;
- (TUHandle)handle;
@end

@implementation CSDIDSPendingChat

- (TUHandle)handle
{
  v2 = sub_1003D4F1C();

  return v2;
}

- (CSDIDSPendingChat)initWithUUID:(id)a3 isVideo:(BOOL)a4 handle:(id)a5
{
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1003D4F28(v11, a4, a5);
}

@end