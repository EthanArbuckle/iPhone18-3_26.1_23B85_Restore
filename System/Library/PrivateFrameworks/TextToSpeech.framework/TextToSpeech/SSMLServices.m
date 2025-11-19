@interface SSMLServices
+ (_TtC12TextToSpeech12SSMLServices)shared;
+ (void)setShared:(id)a3;
- (_TtC12TextToSpeech12SSMLServices)init;
- (id)makeProsodySnippetWithString:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6;
- (id)parseSSMLToPlainText:(id)a3 error:(id *)a4;
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

+ (void)setShared:(id)a3
{
  v3 = qword_1EB391160;
  v4 = a3;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_1EB391168;
  qword_1EB391168 = v4;
}

- (id)parseSSMLToPlainText:(id)a3 error:(id *)a4
{
  sub_1A957C0F8();
  TTSMarkup.SpeechDocument.init(ssml:)(v6);
  TTSMarkupSpeech.asPlainText()();
  sub_1A9377B5C(v6);
  v4 = sub_1A957C0C8();

  return v4;
}

- (id)makeProsodySnippetWithString:(id)a3 rate:(id)a4 pitch:(id)a5 volume:(id)a6
{
  v10 = sub_1A957C0F8();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = self;
  sub_1A9377E18(v10, v12, a4, a5, a6);

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