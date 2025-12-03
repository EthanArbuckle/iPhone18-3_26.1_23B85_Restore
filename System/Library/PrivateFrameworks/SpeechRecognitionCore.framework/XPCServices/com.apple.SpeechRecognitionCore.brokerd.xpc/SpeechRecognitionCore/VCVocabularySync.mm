@interface VCVocabularySync
+ (uint64_t)getCloudDataSize;
+ (void)ubiquitousKeyValueStoreDidChange:(id)change;
- (_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync)init;
@end

@implementation VCVocabularySync

+ (void)ubiquitousKeyValueStoreDidChange:(id)change
{
  v3 = sub_1000127B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012794();
  sub_1000118F4();
  (*(v4 + 8))(v7, v3);
}

- (_TtC39com_apple_SpeechRecognitionCore_brokerd16VCVocabularySync)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VCVocabularySync();
  return [(VCVocabularySync *)&v3 init];
}

+ (uint64_t)getCloudDataSize
{
  defaultStore = [objc_opt_self() defaultStore];
  v1 = sub_1000128D4();
  v2 = [defaultStore dataForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1000127E4();
  v5 = v4;

  v6 = v5;
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_100012350(v3, v5);
      return BYTE6(v5);
    }

    goto LABEL_9;
  }

  if (v7 != 2)
  {
    sub_100012350(v3, v5);
    return 0;
  }

  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  sub_100012350(v3, v6);
  result = v9 - v10;
  if (!__OFSUB__(v9, v10))
  {
    return result;
  }

  __break(1u);
LABEL_9:
  result = sub_100012350(v3, v6);
  if (!__OFSUB__(HIDWORD(v3), v3))
  {
    return HIDWORD(v3) - v3;
  }

  __break(1u);
  return result;
}

@end