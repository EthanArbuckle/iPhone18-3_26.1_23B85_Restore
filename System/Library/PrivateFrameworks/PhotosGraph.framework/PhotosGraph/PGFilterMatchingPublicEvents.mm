@interface PGFilterMatchingPublicEvents
@end

@implementation PGFilterMatchingPublicEvents

uint64_t ___PGFilterMatchingPublicEvents_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "muid")}];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "muid")}];
  v12 = [v10 objectForKeyedSubscript:v11];

  if ([v9 compare:v12])
  {
    v13 = [v9 compare:v12];
  }

  else
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "muid")}];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "muid")}];
    v13 = [v14 compare:v15];
  }

  return v13;
}

@end