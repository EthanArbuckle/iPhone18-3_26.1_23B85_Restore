@interface SATTSSpeechSynthesisResource(VSAceObjectUtility)
- (id)vsDescription;
@end

@implementation SATTSSpeechSynthesisResource(VSAceObjectUtility)

- (id)vsDescription
{
  v2 = MEMORY[0x277CCACA8];
  languageCode = [self languageCode];
  v4 = [languageCode stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  resourceVersion = [self resourceVersion];
  v6 = [v2 stringWithFormat:@"%@:%@", v4, resourceVersion];

  return v6;
}

@end