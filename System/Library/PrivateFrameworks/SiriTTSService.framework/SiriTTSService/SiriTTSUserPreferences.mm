@interface SiriTTSUserPreferences
+ (NSString)spokenLanguageChangedNotification;
+ (id)getAvailableLanguageIdentifiers;
+ (void)setSpokenLanguageIdentifier:(id)identifier;
@end

@implementation SiriTTSUserPreferences

+ (NSString)spokenLanguageChangedNotification
{
  static UserPreferences.spokenLanguageChangedNotification.getter();
  v2 = sub_1B1C2CB28();

  return v2;
}

+ (void)setSpokenLanguageIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = sub_1B1C2CB58();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  swift_getObjCClassMetadata();
  static UserPreferences.setSpokenLanguageIdentifier(_:)(v3, v5);
}

+ (id)getAvailableLanguageIdentifiers
{
  static UserPreferences.getAvailableLanguageIdentifiers()();
  v2 = sub_1B1C2CF48();

  return v2;
}

@end