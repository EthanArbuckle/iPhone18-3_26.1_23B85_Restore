@interface SGError
- (_TtC11ShaderGraph7SGError)initWithCoder:(id)a3;
- (_TtC11ShaderGraph7SGError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)isa;
@end

@implementation SGError

- (_TtC11ShaderGraph7SGError)initWithDomain:(id)a3 code:(int64_t)a4 userInfo:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = a3;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11 = a3;
  }

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(SGError *)&v14 initWithDomain:a3 code:a4 userInfo:isa];

  return v12;
}

- (_TtC11ShaderGraph7SGError)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(SGError *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end