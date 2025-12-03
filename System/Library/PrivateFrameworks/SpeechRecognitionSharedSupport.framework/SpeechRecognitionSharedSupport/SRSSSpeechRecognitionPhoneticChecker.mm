@interface SRSSSpeechRecognitionPhoneticChecker
- (_TtC30SpeechRecognitionSharedSupport36SRSSSpeechRecognitionPhoneticChecker)init;
- (id)guessesForString:(id)string maxResults:(int64_t)results;
- (id)guessesForString:(id)string maxResults:(int64_t)results phoneticWeight:(double)weight priorWeight:(double)priorWeight;
@end

@implementation SRSSSpeechRecognitionPhoneticChecker

- (id)guessesForString:(id)string maxResults:(int64_t)results
{
  v6 = sub_26B5B5AF8();
  v8 = v7;
  selfCopy = self;
  sub_26B5A1984(v6, v8, results);

  sub_26B5A29CC();
  v10 = sub_26B5B5BA8();

  return v10;
}

- (id)guessesForString:(id)string maxResults:(int64_t)results phoneticWeight:(double)weight priorWeight:(double)priorWeight
{
  v8 = sub_26B5B5AF8();
  v10 = v9;
  selfCopy = self;
  sub_26B5A1984(v8, v10, results);

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