@interface BurstTrieDictionary
- (id)objectForKeyedSubscript:(id)subscript;
- (unsigned)payloadForString:(id)string;
@end

@implementation BurstTrieDictionary

- (id)objectForKeyedSubscript:(id)subscript
{
  v6.receiver = self;
  v6.super_class = BurstTrieDictionary;
  v3 = [(_PASCFBurstTrie *)&v6 payloadForString:subscript];
  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3 - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)payloadForString:(id)string
{
  v4.receiver = self;
  v4.super_class = BurstTrieDictionary;
  return [(_PASCFBurstTrie *)&v4 payloadForString:string]- 1;
}

@end