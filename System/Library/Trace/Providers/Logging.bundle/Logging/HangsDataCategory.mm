@interface HangsDataCategory
- (BOOL)isAvailable;
- (_TtC7Logging17HangsDataCategory)init;
- (id)dataCategoryName;
@end

@implementation HangsDataCategory

- (BOOL)isAvailable
{
  selfCopy = self;
  v3 = sub_91F0();

  return v3 & 1;
}

- (id)dataCategoryName
{
  v2 = sub_A028();

  return v2;
}

- (_TtC7Logging17HangsDataCategory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end