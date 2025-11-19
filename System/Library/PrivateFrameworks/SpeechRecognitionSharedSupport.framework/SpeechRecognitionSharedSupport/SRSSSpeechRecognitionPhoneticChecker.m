@interface SRSSSpeechRecognitionPhoneticChecker
- (_TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker)init;
- (id)guessesForString:(id)a3 maxResults:(int64_t)a4;
- (id)guessesForString:(id)a3 maxResults:(int64_t)a4 phoneticWeight:(double)a5 priorWeight:(double)a6;
@end

@implementation SRSSSpeechRecognitionPhoneticChecker

- (id)guessesForString:(id)a3 maxResults:(int64_t)a4
{
  v6 = sub_26B5B5AF8();
  v8 = v7;
  v9 = self;
  sub_26B5A1984(v6, v8, a4);

  sub_26B5A29CC();
  v10 = sub_26B5B5BA8();

  return v10;
}

- (id)guessesForString:(id)a3 maxResults:(int64_t)a4 phoneticWeight:(double)a5 priorWeight:(double)a6
{
  v8 = sub_26B5B5AF8();
  v10 = v9;
  v11 = self;
  sub_26B5A1984(v8, v10, a4);

  sub_26B5A29CC();
  v12 = sub_26B5B5BA8();

  return v12;
}

- (_TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end