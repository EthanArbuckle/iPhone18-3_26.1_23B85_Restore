@interface AnyHashable:
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v9 = *(self + 32);
  v8 = *(self + 40);
  if (a5)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = 0;
  }

  v11 = a2;
  v12 = a3;
  v9(a2, a3, a4, v10);
}

@end