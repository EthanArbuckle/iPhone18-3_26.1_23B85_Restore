@interface AnyHashable:
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

@end