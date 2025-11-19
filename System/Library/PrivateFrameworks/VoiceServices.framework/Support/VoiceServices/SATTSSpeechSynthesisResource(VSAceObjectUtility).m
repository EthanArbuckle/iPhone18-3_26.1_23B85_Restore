@interface SATTSSpeechSynthesisResource(VSAceObjectUtility)
- (id)vsDescription;
@end

@implementation SATTSSpeechSynthesisResource(VSAceObjectUtility)

- (id)vsDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 languageCode];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  v5 = [a1 resourceVersion];
  v6 = [v2 stringWithFormat:@"%@:%@", v4, v5];

  return v6;
}

@end