@interface SSMLServices
+ (_TtC12TextToSpeech12SSMLServices)shared;
+ (void)setShared:(id)shared;
- (_TtC12TextToSpeech12SSMLServices)init;
- (id)makeProsodySnippetWithString:(id)string rate:(id)rate pitch:(id)pitch volume:(id)volume;
- (id)parseSSMLToPlainText:(id)text error:(id *)error;
@end

@implementation SSMLServices

+ (_TtC12TextToSpeech12SSMLServices)shared
{
  if (qword_1EB391160 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EB391168;
}

+ (void)setShared:(id)shared
{
  v3 = qword_1EB391160;
  sharedCopy = shared;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EB391168;
  qword_1EB391168 = sharedCopy;
}

- (id)parseSSMLToPlainText:(id)text error:(id *)error
{
  sub_1A957C0F8();
  TTSMarkup.SpeechDocument.init(ssml:)(v6);
  TTSMarkupSpeech.asPlainText()();
  sub_1A9377B5C(v6);
  v4 = sub_1A957C0C8();

  return v4;
}

- (id)makeProsodySnippetWithString:(id)string rate:(id)rate pitch:(id)pitch volume:(id)volume
{
  v10 = sub_1A957C0F8();
  v12 = v11;
  rateCopy = rate;
  pitchCopy = pitch;
  volumeCopy = volume;
  selfCopy = self;
  sub_1A9377E18(v10, v12, rate, pitch, volume);

  v17 = sub_1A957C0C8();

  return v17;
}

- (_TtC12TextToSpeech12SSMLServices)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SSMLServices();
  return [(SSMLServices *)&v3 init];
}

@end