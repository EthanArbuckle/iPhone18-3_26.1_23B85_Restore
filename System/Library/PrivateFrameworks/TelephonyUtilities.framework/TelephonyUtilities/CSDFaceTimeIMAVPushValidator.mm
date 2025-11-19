@interface CSDFaceTimeIMAVPushValidator
- (BOOL)shouldAllowIDSPushMessageFor:(id)a3;
@end

@implementation CSDFaceTimeIMAVPushValidator

- (BOOL)shouldAllowIDSPushMessageFor:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_100286AFC(v4, v6);

  return v4 & 1;
}

@end