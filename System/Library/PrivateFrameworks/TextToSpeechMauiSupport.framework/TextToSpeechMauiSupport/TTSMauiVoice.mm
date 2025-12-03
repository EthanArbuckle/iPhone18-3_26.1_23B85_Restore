@interface TTSMauiVoice
- (TTSMauiVoice)init;
- (TTSMauiVoice)initWithIdentifier:(id)identifier language:(id)language path:(id)path;
@end

@implementation TTSMauiVoice

- (TTSMauiVoice)initWithIdentifier:(id)identifier language:(id)language path:(id)path
{
  v6 = sub_26ECC5838();
  v8 = v7;
  v9 = sub_26ECC5838();
  v11 = v10;
  v12 = sub_26ECC5838();
  v13 = (self + OBJC_IVAR___TTSMauiVoice_identifier);
  *v13 = v6;
  v13[1] = v8;
  v14 = (self + OBJC_IVAR___TTSMauiVoice_language);
  *v14 = v9;
  v14[1] = v11;
  v15 = (self + OBJC_IVAR___TTSMauiVoice_path);
  *v15 = v12;
  v15[1] = v16;
  v18.receiver = self;
  v18.super_class = TTSMauiVoice;
  return [(TTSMauiVoice *)&v18 init];
}

- (TTSMauiVoice)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end