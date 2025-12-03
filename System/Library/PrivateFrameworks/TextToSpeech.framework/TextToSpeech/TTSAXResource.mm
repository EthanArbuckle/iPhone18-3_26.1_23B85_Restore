@interface TTSAXResource
+ (id)localizedName:(id)name forLanguage:(id)language;
- (AVSpeechSynthesisProviderVoice)synthesisProviderVoice;
- (NSArray)languages;
- (NSString)contentPath;
- (NSString)name;
- (NSString)voiceId;
- (TTSAXResource)init;
- (id)copyWithZone:(void *)zone;
- (id)localizedNameForLanguage:(id)language;
- (id)nameAndFootprintForLanguage:(id)language;
- (id)primaryLanguage;
- (id)speechVoice;
- (int64_t)assetSize;
- (int64_t)footprint;
- (int64_t)gender;
@end

@implementation TTSAXResource

+ (id)localizedName:(id)name forLanguage:(id)language
{
  v5 = sub_1A957C0F8();
  v7 = v6;
  if (language)
  {
    v8 = v5;
    v9 = sub_1A957C0F8();
    v5 = v8;
    language = v10;
  }

  else
  {
    v9 = 0;
  }

  _sSo13TTSAXResourceC12TextToSpeechE13localizedName_11forLanguageS2S_SSSgtFZ_0(v5, v7, v9, language);

  v11 = sub_1A957C0C8();

  return v11;
}

- (int64_t)assetSize
{
  v2 = self + OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, v2, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else if (v2[192])
  {
    return 0;
  }

  else
  {
    return *(v2 + 47);
  }

  return result;
}

- (id)localizedNameForLanguage:(id)language
{
  v4 = sub_1A957C0F8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  TTSAXResource.localizedName(forLanguage:)(v8);

  v9 = sub_1A957C0C8();

  return v9;
}

- (id)nameAndFootprintForLanguage:(id)language
{
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v4, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v7, __dst, sizeof(v7));
    CoreSynthesizer.Voice.localizedNameWithFootprint.getter();
    v6 = sub_1A957C0C8();

    return v6;
  }

  return result;
}

- (id)speechVoice
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  memcpy(v12, self + v3, sizeof(v12));
  result = sub_1A932D058(v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A9387478(0, &qword_1EB385F28, off_1E787F2E0);
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    memcpy(v9, __dst, sizeof(v9));
    sub_1A937B3DC(v9, v10);
    v6 = [v5 init];
    v7 = OBJC_IVAR___TTSAXResource_voice;
    swift_beginAccess();
    memcpy(v10, &v6[v7], sizeof(v10));
    memcpy(&v6[v7], __dst, 0x118uLL);
    v8 = v6;
    sub_1A9384810(v10);

    return v8;
  }

  return result;
}

- (NSString)contentPath
{
  selfCopy = self;
  v3 = *sub_1A9431E94();
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, selfCopy + v4, sizeof(__dst));
  memcpy(__src, selfCopy + v4, sizeof(__src));
  result = sub_1A932D058(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v10, __src, sizeof(v10));
    v6 = *(*v3 + 96);

    sub_1A937822C(__dst, v11);
    v6(v10);
    v8 = v7;

    memcpy(v11, v10, sizeof(v11));
    sub_1A937B48C(v11);
    if (v8)
    {
      v9 = sub_1A957C0C8();
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  return result;
}

- (int64_t)footprint
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return sub_1A9502D6C();
  }

  __break(1u);
  return result;
}

- (int64_t)gender
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result != 1)
  {
    return qword_1A9587570[__dst[57]];
  }

  __break(1u);
  return result;
}

- (id)primaryLanguage
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v14, &self[v8], sizeof(v14));
  result = sub_1A932D058(v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v13, v14, sizeof(v13));
    selfCopy = self;
    CoreSynthesizer.Voice.primaryLocale.getter(v7);
    Locale.legacyIdentifier.getter();

    (*(v3 + 8))(v7, v2);
    v11 = sub_1A957C0C8();

    return v11;
  }

  return result;
}

- (NSArray)languages
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    selfCopy = self;
    CoreSynthesizer.Voice.primaryLocales.getter(v10);
    swift_endAccess();
    v6 = v11;
    v7 = v12;
    v8 = sub_1A93780F4(v10, v11);
    sub_1A9386128(sub_1A93860EC, 0, v6, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);

    sub_1A9378138(v10);
    v9 = sub_1A957C4B8();

    return v9;
  }

  return result;
}

- (NSString)name
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v5 = sub_1A957C0C8();

    return v5;
  }

  return result;
}

- (AVSpeechSynthesisProviderVoice)synthesisProviderVoice
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v6, __dst, sizeof(v6));
    v5 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();

    return v5;
  }

  return result;
}

- (NSString)voiceId
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v3, sizeof(__dst));
  result = sub_1A932D058(__dst);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v5 = sub_1A957C0C8();

    return v5;
  }

  return result;
}

- (id)copyWithZone:(void *)zone
{
  v4 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(__dst, self + v4, sizeof(__dst));
  memcpy(v13, self + v4, sizeof(v13));
  result = sub_1A932D058(v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = objc_allocWithZone(TTSAXResource);
    memcpy(v10, __dst, sizeof(v10));
    sub_1A937B3DC(v10, v11);
    v7 = [v6 init];
    v8 = OBJC_IVAR___TTSAXResource_voice;
    swift_beginAccess();
    memcpy(v11, &v7[v8], sizeof(v11));
    memcpy(&v7[v8], __dst, 0x118uLL);
    v9 = v7;
    sub_1A9384810(v11);

    return v9;
  }

  return result;
}

- (TTSAXResource)init
{
  v3 = OBJC_IVAR___TTSAXResource_voice;
  sub_1A93847E0(__src);
  memcpy(self + v3, __src, 0x118uLL);
  v5.receiver = self;
  v5.super_class = TTSAXResource;
  return [(TTSAXResource *)&v5 init];
}

@end