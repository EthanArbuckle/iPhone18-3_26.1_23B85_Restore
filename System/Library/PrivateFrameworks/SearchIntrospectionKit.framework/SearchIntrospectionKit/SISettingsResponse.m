@interface SISettingsResponse
- (_TtC22SearchIntrospectionKit18SISettingsResponse)init;
- (_TtC22SearchIntrospectionKit18SISettingsResponse)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SISettingsResponse

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query);
  v7 = a3;
  v5 = self;
  v6 = sub_264E899B4();
  [v7 encodeObject:v4 forKey:v6];
}

- (_TtC22SearchIntrospectionKit18SISettingsResponse)initWithCoder:(id)a3
{
  type metadata accessor for SettingsQuery();
  v5 = a3;
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