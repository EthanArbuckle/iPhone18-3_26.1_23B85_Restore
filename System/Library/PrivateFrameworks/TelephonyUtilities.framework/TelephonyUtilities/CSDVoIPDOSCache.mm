@interface CSDVoIPDOSCache
- (BOOL)shouldAllowCallFor:(id)a3;
@end

@implementation CSDVoIPDOSCache

- (BOOL)shouldAllowCallFor:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_10046FDFC(v4, v6);

  return v4 & 1;
}

@end