@interface SiriTTSPreferences
+ (SiriTTSPreferences)shared;
- (BOOL)uiFirstTimeAssistantLanguageWithLanguageCode:(id)code;
@end

@implementation SiriTTSPreferences

+ (SiriTTSPreferences)shared
{
  v2 = static Preferences.shared.getter();

  return v2;
}

- (BOOL)uiFirstTimeAssistantLanguageWithLanguageCode:(id)code
{
  v4 = sub_1B1C2CB58();
  v6 = v5;
  selfCopy = self;
  sub_1B1BD4994(v4, v6);
  LOBYTE(v4) = v8;

  return v4 & 1;
}

@end