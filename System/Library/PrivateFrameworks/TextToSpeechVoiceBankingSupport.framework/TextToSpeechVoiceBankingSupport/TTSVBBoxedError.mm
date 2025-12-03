@interface TTSVBBoxedError
- (NSString)description;
- (_TtC31TextToSpeechVoiceBankingSupport15TTSVBBoxedError)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTSVBBoxedError

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_233127474(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
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