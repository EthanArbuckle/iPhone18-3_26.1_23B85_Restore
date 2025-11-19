@interface SIResult
- (_TtC22SearchIntrospectionKit8SIResult)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIResult

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText);
  v5 = *&self->resultText[OBJC_IVAR____TtC22SearchIntrospectionKit8SIResult_resultText];
  v6 = a3;
  v9 = self;
  v7 = sub_264E899B4();
  v8 = sub_264E899B4();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC22SearchIntrospectionKit8SIResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end