@interface SVXAFSpeakableUtteranceParserProvider
- (id)getWithLocale:(id)locale;
@end

@implementation SVXAFSpeakableUtteranceParserProvider

- (id)getWithLocale:(id)locale
{
  v3 = MEMORY[0x277CEF430];
  localeCopy = locale;
  v5 = [[v3 alloc] initWithLocale:localeCopy];

  return v5;
}

@end