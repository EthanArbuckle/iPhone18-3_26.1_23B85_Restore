@interface NSArray(SBSystemApertureAdditions)
- (id)dictionaryDescription;
@end

@implementation NSArray(SBSystemApertureAdditions)

- (id)dictionaryDescription
{
  v2 = objc_alloc(MEMORY[0x277CF0C78]);
  v3 = [MEMORY[0x277CF0C98] sortByInsertionOrder];
  v4 = [v2 initWithKeyOrderingStrategy:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__NSArray_SBSystemApertureAdditions__dictionaryDescription__block_invoke;
  v7[3] = &unk_2783C0540;
  v5 = v4;
  v8 = v5;
  [a1 enumerateObjectsUsingBlock:v7];

  return v5;
}

@end