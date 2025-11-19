@interface ASXPCActivityManager
+ (_TtC3asd20ASXPCActivityManager)shared;
- (void)registerWithActivity:(int64_t)a3;
@end

@implementation ASXPCActivityManager

+ (_TtC3asd20ASXPCActivityManager)shared
{
  v2 = static ASXPCActivityManager.shared.getter();

  return v2;
}

- (void)registerWithActivity:(int64_t)a3
{
  v4 = self;
  ASXPCActivityManager.register(activity:)(a3);
}

@end