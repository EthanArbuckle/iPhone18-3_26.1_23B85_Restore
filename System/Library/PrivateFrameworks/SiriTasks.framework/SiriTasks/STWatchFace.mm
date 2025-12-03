@interface STWatchFace
- (id)_aceContextObjectValue;
@end

@implementation STWatchFace

- (id)_aceContextObjectValue
{
  v3 = objc_alloc_init(MEMORY[0x277D47148]);
  identifier = [(STSiriModelObject *)self identifier];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v6 = [identifier stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];

  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"watch-face:%@", v6];
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v7];
  [v3 setIdentifier:v8];

  return v3;
}

@end