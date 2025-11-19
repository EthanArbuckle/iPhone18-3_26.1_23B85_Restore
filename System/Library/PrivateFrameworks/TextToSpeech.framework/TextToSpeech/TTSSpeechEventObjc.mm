@interface TTSSpeechEventObjc
+ (id)makeWithOtherRewrite:(id)a3 from:(id)a4 to:(id)a5;
+ (id)makeWithStart:(id)a3;
- (_TtC12TextToSpeech18TTSSpeechEventObjc)init;
@end

@implementation TTSSpeechEventObjc

+ (id)makeWithOtherRewrite:(id)a3 from:(id)a4 to:(id)a5
{
  v5 = sub_1A957C0F8();
  v7 = v6;
  v8 = sub_1A957C0F8();
  v10 = v9;
  v11 = sub_1A957C0F8();
  v13 = v12;
  v14 = type metadata accessor for TTSSpeechEventObjc();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  *v16 = v5;
  *(v16 + 1) = v7;
  *(v16 + 2) = v8;
  *(v16 + 3) = v10;
  *(v16 + 4) = v11;
  *(v16 + 5) = v13;
  v16[64] = 3;
  v19.receiver = v15;
  v19.super_class = v14;
  v17 = objc_msgSendSuper2(&v19, sel_init);

  return v17;
}

+ (id)makeWithStart:(id)a3
{
  v3 = sub_1A957C0F8();
  v5 = v4;
  v6 = type metadata accessor for TTSSpeechEventObjc();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC12TextToSpeech18TTSSpeechEventObjc_wrappedEvent];
  *v8 = v3;
  *(v8 + 1) = v5;
  v8[64] = 4;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (_TtC12TextToSpeech18TTSSpeechEventObjc)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end