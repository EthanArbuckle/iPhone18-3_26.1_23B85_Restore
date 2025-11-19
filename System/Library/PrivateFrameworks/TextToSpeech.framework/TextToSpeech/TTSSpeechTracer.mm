@interface TTSSpeechTracer
+ (_TtC12TextToSpeech15TTSSpeechTracer)shared;
- (id)makeSpeechJobIdentifier;
- (void)emitWithEvent:(id)a3 forIdentifier:(id)a4;
@end

@implementation TTSSpeechTracer

+ (_TtC12TextToSpeech15TTSSpeechTracer)shared
{
  if (qword_1EB39A4C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB39A4C8;

  return v3;
}

- (id)makeSpeechJobIdentifier
{
  sub_1A9469CB0(5);
  v2 = sub_1A957C0C8();

  return v2;
}

- (void)emitWithEvent:(id)a3 forIdentifier:(id)a4
{
  v6 = sub_1A957C0F8();
  v8 = v7;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x58);
  v11 = a3;
  v12 = self;
  v10(v13);
  (*((*v9 & v12->super.isa) + 0x128))(v13, v6, v8);

  v15[2] = v13[2];
  v15[3] = v13[3];
  v16 = v14;
  v15[0] = v13[0];
  v15[1] = v13[1];
  sub_1A946C4C0(v15);
}

@end