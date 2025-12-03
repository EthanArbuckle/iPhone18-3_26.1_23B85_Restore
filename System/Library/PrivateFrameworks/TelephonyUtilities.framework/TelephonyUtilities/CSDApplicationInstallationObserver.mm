@interface CSDApplicationInstallationObserver
- (BOOL)isApplicationInstalledWithBundleID:(id)d;
- (id)applicationRecordWithBundleID:(id)d;
@end

@implementation CSDApplicationInstallationObserver

- (id)applicationRecordWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10037DD3C(v4, v6);

  return v8;
}

- (BOOL)isApplicationInstalledWithBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_10037E02C(v4, v6);

  return v4 & 1;
}

@end