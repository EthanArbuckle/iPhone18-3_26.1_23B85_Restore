@interface SCMLLocale
+ (BOOL)isEnglishLocale:(id)locale;
+ (BOOL)isSupportedWithLocale:(id)locale;
- (_TtC26SensitiveContentAnalysisML10SCMLLocale)init;
@end

@implementation SCMLLocale

+ (BOOL)isSupportedWithLocale:(id)locale
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  if (locale)
  {
    sub_1B8AEFC58();
    v8 = sub_1B8AEFCC8();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B8AEFCC8();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = _s26SensitiveContentAnalysisML10SCMLLocaleC11isSupported6localeSb10Foundation6LocaleVSg_tFZ_0(v7);
  sub_1B8A897C4(v7, &qword_1EBA96528, &unk_1B8AF64B0);
  return v10 & 1;
}

+ (BOOL)isEnglishLocale:(id)locale
{
  v3 = sub_1B8AEFCC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AEFC58();
  v8 = _s26SensitiveContentAnalysisML10SCMLLocaleC15isEnglishLocaleySb10Foundation0H0VFZ_0();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

- (_TtC26SensitiveContentAnalysisML10SCMLLocale)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SCMLLocale();
  return [(SCMLLocale *)&v3 init];
}

@end