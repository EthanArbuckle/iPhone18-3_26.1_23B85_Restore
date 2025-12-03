@interface SISettingsResponse
- (_TtC22SearchIntrospectionKit18SISettingsResponse)init;
- (_TtC22SearchIntrospectionKit18SISettingsResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SISettingsResponse

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_264E899B4();
  [coderCopy encodeObject:v4 forKey:v6];
}

- (_TtC22SearchIntrospectionKit18SISettingsResponse)initWithCoder:(id)coder
{
  type metadata accessor for SettingsQuery();
  coderCopy = coder;
  v6 = sub_264E89C04();
  if (v6)
  {
    *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query) = v6;
    v9.receiver = self;
    v9.super_class = type metadata accessor for SISettingsResponse();
    v7 = [(SISettingsResponse *)&v9 init];
  }

  else
  {

    type metadata accessor for SISettingsResponse();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

- (_TtC22SearchIntrospectionKit18SISettingsResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end