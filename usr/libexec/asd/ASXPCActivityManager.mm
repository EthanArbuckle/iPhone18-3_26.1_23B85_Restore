@interface ASXPCActivityManager
+ (_TtC3asd20ASXPCActivityManager)shared;
- (void)registerWithActivity:(int64_t)activity;
@end

@implementation ASXPCActivityManager

+ (_TtC3asd20ASXPCActivityManager)shared
{
  v2 = static ASXPCActivityManager.shared.getter();

  return v2;
}

- (void)registerWithActivity:(int64_t)activity
{
  selfCopy = self;
  ASXPCActivityManager.register(activity:)(activity);
}

@end