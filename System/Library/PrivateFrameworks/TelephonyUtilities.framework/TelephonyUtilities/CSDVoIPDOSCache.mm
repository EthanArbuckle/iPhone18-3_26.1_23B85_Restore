@interface CSDVoIPDOSCache
- (BOOL)shouldAllowCallFor:(id)for;
@end

@implementation CSDVoIPDOSCache

- (BOOL)shouldAllowCallFor:(id)for
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_10046FDFC(v4, v6);

  return v4 & 1;
}

@end