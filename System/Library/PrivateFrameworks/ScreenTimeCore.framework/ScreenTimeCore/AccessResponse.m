@interface AccessResponse
- (_TtC14ScreenTimeCore14AccessResponse)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AccessResponse

- (void)encodeWithCoder:(id)a3
{
  v8 = *(&self->super.isa + OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType);
  v9 = self->answerType[OBJC_IVAR____TtC14ScreenTimeCore14AccessResponse_answerType];
  v4 = a3;
  v7 = self;
  AnswerType.rawValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA85050, &qword_1B83E9348);
  v5 = sub_1B83DDC6C();

  v6 = sub_1B83DDCBC();
  [v4 encodeObject:v5 forKey:v6];
}

- (_TtC14ScreenTimeCore14AccessResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end