@interface SiriTTSPreferences
+ (SiriTTSPreferences)shared;
- (BOOL)uiFirstTimeAssistantLanguageWithLanguageCode:(id)a3;
@end

@implementation SiriTTSPreferences

+ (SiriTTSPreferences)shared
{
  v2 = static Preferences.shared.getter();

  return v2;
}

- (BOOL)uiFirstTimeAssistantLanguageWithLanguageCode:(id)a3
{
  v4 = sub_1B1C2CB58();
  v6 = v5;
  v7 = self;
  sub_1B1BD4994(v4, v6);
  LOBYTE(v4) = v8;

  return v4 & 1;
}

@end