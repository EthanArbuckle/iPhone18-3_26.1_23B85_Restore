@interface AppLaunchDataCategory
- (BOOL)isAvailable;
- (_TtC7Logging21AppLaunchDataCategory)init;
- (id)dataCategoryName;
@end

@implementation AppLaunchDataCategory

- (BOOL)isAvailable
{
  selfCopy = self;
  v3 = sub_95B0();

  return v3 & 1;
}

- (id)dataCategoryName
{
  v2 = sub_A028();

  return v2;
}

- (_TtC7Logging21AppLaunchDataCategory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end