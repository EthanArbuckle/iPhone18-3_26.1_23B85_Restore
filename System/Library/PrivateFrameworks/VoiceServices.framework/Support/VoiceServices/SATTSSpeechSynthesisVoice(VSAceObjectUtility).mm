@interface SATTSSpeechSynthesisVoice(VSAceObjectUtility)
- (id)vsDescription;
@end

@implementation SATTSSpeechSynthesisVoice(VSAceObjectUtility)

- (id)vsDescription
{
  v2 = MEMORY[0x277CCACA8];
  languageCode = [self languageCode];
  v3 = [languageCode stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  type = [self type];
  lowercaseString = [type lowercaseString];
  gender = [self gender];
  lowercaseString2 = [gender lowercaseString];
  name = [self name];
  quality = [self quality];
  lowercaseString3 = [quality lowercaseString];
  contentVersion = [self contentVersion];
  v12 = [v2 stringWithFormat:@"%@:%@:%@:%@:%@:%@", v3, lowercaseString, lowercaseString2, name, lowercaseString3, contentVersion];

  return v12;
}

@end