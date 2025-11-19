@interface _SVXSpeakableNamespaceDomainOccurrenceProvider
+ (id)providerForDomain:(id)a3;
- (id)stringForExpression:(id)a3;
@end

@implementation _SVXSpeakableNamespaceDomainOccurrenceProvider

- (id)stringForExpression:(id)a3
{
  v4 = a3;
  v5 = [(_SVXSpeakableNamespaceDomainOccurrenceProvider *)self deferredMessageKeys];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    ++self->_count;
  }

  v7 = [v4 copy];

  return v7;
}

+ (id)providerForDomain:(id)a3
{
  v3 = *MEMORY[0x277D489A8];
  if ([a3 isEqualToString:*MEMORY[0x277D489A8]])
  {
    v4 = objc_opt_new();
    [v4 setDomain:v3];
    v5 = *MEMORY[0x277D489C0];
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D489B8], *MEMORY[0x277D489C0], *MEMORY[0x277D489C8], *MEMORY[0x277D489D0], *MEMORY[0x277D489D8], *MEMORY[0x277D489E0], 0}];
    [v4 setDeferredMessageKeys:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end