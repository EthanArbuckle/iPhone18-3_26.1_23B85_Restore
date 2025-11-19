@interface SATTSSpeechSynthesisVoice(VSAceObjectUtility)
- (id)vsDescription;
@end

@implementation SATTSSpeechSynthesisVoice(VSAceObjectUtility)

- (id)vsDescription
{
  v2 = MEMORY[0x277CCACA8];
  v14 = [a1 languageCode];
  v3 = [v14 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v4 = [a1 type];
  v5 = [v4 lowercaseString];
  v6 = [a1 gender];
  v7 = [v6 lowercaseString];
  v8 = [a1 name];
  v9 = [a1 quality];
  v10 = [v9 lowercaseString];
  v11 = [a1 contentVersion];
  v12 = [v2 stringWithFormat:@"%@:%@:%@:%@:%@:%@", v3, v5, v7, v8, v10, v11];

  return v12;
}

@end