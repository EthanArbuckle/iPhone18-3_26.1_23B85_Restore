@interface SGError
- (_TtC11ShaderGraph7SGError)initWithCoder:(id)coder;
- (_TtC11ShaderGraph7SGError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)isa;
@end

@implementation SGError

- (_TtC11ShaderGraph7SGError)initWithDomain:(id)domain code:(int64_t)code userInfo:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    domainCopy = domain;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    domainCopy2 = domain;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(SGError *)&v14 initWithDomain:domain code:code userInfo:isa];

  return v12;
}

- (_TtC11ShaderGraph7SGError)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(SGError *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end