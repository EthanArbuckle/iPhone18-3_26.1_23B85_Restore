@interface ValidateUnarchivedDictionary
@end

@implementation ValidateUnarchivedDictionary

void ___ValidateUnarchivedDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = MEMORY[0x277CCA2A8];
  if ((isKindOfClass & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"Dictionary validation failed: expected key class %@, found %@", *(a1 + 32), v8}];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:{@"Dictionary validation failed: expected value class %@, found %@", *(a1 + 40), v5}];
  }
}

@end