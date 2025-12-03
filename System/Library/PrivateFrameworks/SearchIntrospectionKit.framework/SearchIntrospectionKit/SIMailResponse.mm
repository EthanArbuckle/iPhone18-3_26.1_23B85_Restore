@interface SIMailResponse
- (_TtC22SearchIntrospectionKit14SIMailResponse)init;
- (_TtC22SearchIntrospectionKit14SIMailResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIMailResponse

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit14SIMailResponse_query);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_264E899B4();
  [coderCopy encodeObject:v4 forKey:v6];
}

- (_TtC22SearchIntrospectionKit14SIMailResponse)initWithCoder:(id)coder
{
  type metadata accessor for MailQuery();
  coderCopy = coder;
  v6 = sub_264E89C04();
  if (v6)
  {
    *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit14SIMailResponse_query) = v6;
    v9.receiver = self;
    v9.super_class = type metadata accessor for SIMailResponse();
    v7 = [(SIMailResponse *)&v9 init];
  }

  else
  {

    type metadata accessor for SIMailResponse();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

- (_TtC22SearchIntrospectionKit14SIMailResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end