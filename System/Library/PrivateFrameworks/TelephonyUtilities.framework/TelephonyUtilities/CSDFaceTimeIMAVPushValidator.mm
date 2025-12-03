@interface CSDFaceTimeIMAVPushValidator
- (BOOL)shouldAllowIDSPushMessageFor:(id)for;
@end

@implementation CSDFaceTimeIMAVPushValidator

- (BOOL)shouldAllowIDSPushMessageFor:(id)for
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_100286AFC(v4, v6);

  return v4 & 1;
}

@end