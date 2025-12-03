@interface SKAStatusUnencryptedEnvelope
- (SKAStatusUnencryptedEnvelope)initWithEnvelopeDictionary:(id)dictionary;
@end

@implementation SKAStatusUnencryptedEnvelope

- (SKAStatusUnencryptedEnvelope)initWithEnvelopeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SKAStatusUnencryptedEnvelope;
  v6 = [(SKAStatusUnencryptedEnvelope *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_envelopeDictionary, dictionary);
  }

  return v7;
}

@end