@interface AXKonaVoice
- (NSString)identifier;
@end

@implementation AXKonaVoice

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  languageCode = [(AXKonaVoice *)self languageCode];
  name = [(AXKonaVoice *)self name];
  v6 = [v3 stringWithFormat:@"%@%@.%@", @"com.apple.eloquence.", languageCode, name];

  return v6;
}

@end