@interface SiriTTSLanguages
+ (NSSet)availableLanguages;
+ (id)fallbackLanguageFor:(id)for;
@end

@implementation SiriTTSLanguages

+ (id)fallbackLanguageFor:(id)for
{
  sub_1B1C2CB58();
  swift_getObjCClassMetadata();
  static Languages.fallbackLanguage(for:)();

  v3 = sub_1B1C2CB28();

  return v3;
}

+ (NSSet)availableLanguages
{
  static Languages.availableLanguages.getter();
  v2 = sub_1B1C2CF48();

  return v2;
}

@end