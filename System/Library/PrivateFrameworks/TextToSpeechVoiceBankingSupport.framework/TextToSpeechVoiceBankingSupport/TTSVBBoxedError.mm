@interface TTSVBBoxedError
- (NSString)description;
- (_TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TTSVBBoxedError

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_233127474(v4);
}

- (NSString)description
{
  v2 = self;
  TTSVBError.description.getter();

  v3 = sub_23328D95C();

  return v3;
}

- (_TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end