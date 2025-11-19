@interface CSDApplicationInstallationObserver
- (BOOL)isApplicationInstalledWithBundleID:(id)a3;
- (id)applicationRecordWithBundleID:(id)a3;
@end

@implementation CSDApplicationInstallationObserver

- (id)applicationRecordWithBundleID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8 = sub_10037DD3C(v4, v6);

  return v8;
}

- (BOOL)isApplicationInstalledWithBundleID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_10037E02C(v4, v6);

  return v4 & 1;
}

@end