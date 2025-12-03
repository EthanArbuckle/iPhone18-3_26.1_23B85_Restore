@interface LanguagesServiceBridge
+ (NSString)modelsKeyPath;
- (NSArray)models;
- (id)modelForLocale:(id)locale;
- (void)deleteLocale:(id)locale;
- (void)downloadLocales:(id)locales;
- (void)setModels:(id)models;
@end

@implementation LanguagesServiceBridge

- (NSArray)models
{
  v3 = OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_models;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);

  v5 = sub_26F49FAD8();

  return v5;
}

- (void)setModels:(id)models
{
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v4 = sub_26F49FAF8();
  v5 = OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_models;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

+ (NSString)modelsKeyPath
{
  v2 = sub_26F49F898();

  return v2;
}

- (id)modelForLocale:(id)locale
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26F49DA18();
  selfCopy = self;
  models = [(LanguagesServiceBridge *)selfCopy models];
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v11 = sub_26F49FAF8();

  v15 = v8;
  v12 = sub_26F4007E4(sub_26F40EB5C, v14, v11);

  (*(v5 + 8))(v8, v4);

  return v12;
}

- (void)downloadLocales:(id)locales
{
  sub_26F49DAB8();
  v4 = sub_26F49FAF8();
  selfCopy = self;
  LanguagesServiceBridge.download(locales:)(v4);
}

- (void)deleteLocale:(id)locale
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F49DA18();
  _s13TranslationUI22LanguagesServiceBridgeC6delete6localey10Foundation6LocaleV_tF_0(v7);
  (*(v4 + 8))(v7, v3);
}

@end