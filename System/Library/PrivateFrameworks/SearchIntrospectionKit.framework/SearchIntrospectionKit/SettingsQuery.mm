@interface SettingsQuery
- (_TtC22SearchIntrospectionKit13SettingsQuery)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SettingsQuery

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString);
  v5 = *&self->queryString[OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryString];
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_264E899B4();
  v8 = sub_264E899B4();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC22SearchIntrospectionKit13SettingsQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end