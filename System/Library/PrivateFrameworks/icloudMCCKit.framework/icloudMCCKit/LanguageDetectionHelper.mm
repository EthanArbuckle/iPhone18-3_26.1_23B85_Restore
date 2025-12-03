@interface LanguageDetectionHelper
+ (BOOL)isCategorizationSupportedFor:(id)for;
- (_TtC12icloudMCCKit23LanguageDetectionHelper)init;
@end

@implementation LanguageDetectionHelper

+ (BOOL)isCategorizationSupportedFor:(id)for
{
  v3 = sub_1D373777C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D373797C();
  sub_1D37376EC();
  v8 = sub_1D37051AC(v7);
  v9 = qword_1EDEF4C60;
  v10 = v8;
  v11 = v10;
  if (v9 != -1)
  {
    v10 = swift_once();
  }

  v16 = v11;
  MEMORY[0x1EEE9AC00](v10);
  *(&v15 - 2) = &v16;
  v13 = sub_1D3710C24(sub_1D3710CEC, (&v15 - 4), v12);
  (*(v4 + 8))(v7, v3);

  return v13 & 1;
}

- (_TtC12icloudMCCKit23LanguageDetectionHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LanguageDetectionHelper();
  return [(LanguageDetectionHelper *)&v3 init];
}

@end