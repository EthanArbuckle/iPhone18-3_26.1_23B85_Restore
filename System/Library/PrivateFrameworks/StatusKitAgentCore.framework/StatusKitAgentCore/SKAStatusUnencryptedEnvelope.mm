@interface SKAStatusUnencryptedEnvelope
- (SKAStatusUnencryptedEnvelope)initWithEnvelopeDictionary:(id)a3;
@end

@implementation SKAStatusUnencryptedEnvelope

- (SKAStatusUnencryptedEnvelope)initWithEnvelopeDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SKAStatusUnencryptedEnvelope;
  v6 = [(SKAStatusUnencryptedEnvelope *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_envelopeDictionary, a3);
  }

  return v7;
}

@end