@interface SVXAFSpeakableUtteranceParserProvider
- (id)getWithLocale:(id)a3;
@end

@implementation SVXAFSpeakableUtteranceParserProvider

- (id)getWithLocale:(id)a3
{
  v3 = MEMORY[0x277CEF430];
  v4 = a3;
  v5 = [[v3 alloc] initWithLocale:v4];

  return v5;
}

@end