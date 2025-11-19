@interface WBSCharacterSetReplacementsContainer
- (BOOL)isEqual:(id)a3;
- (WBSCharacterSetReplacementsContainer)initWithReplacementStringsToCharacterSets:(id)a3;
- (void)enumerateCharacterSetReplacementStringPairsUsingBlock:(id)a3;
@end

@implementation WBSCharacterSetReplacementsContainer

- (WBSCharacterSetReplacementsContainer)initWithReplacementStringsToCharacterSets:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WBSCharacterSetReplacementsContainer;
  v5 = [(WBSCharacterSetReplacementsContainer *)&v17 init];
  if (v5)
  {
    v6 = [v4 copy];
    replacementStringsToCharacterSets = v5->_replacementStringsToCharacterSets;
    v5->_replacementStringsToCharacterSets = v6;

    v8 = objc_alloc_init(MEMORY[0x1E696AD48]);
    v9 = v5->_replacementStringsToCharacterSets;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__WBSCharacterSetReplacementsContainer_initWithReplacementStringsToCharacterSets___block_invoke;
    v15[3] = &unk_1E7CF3BE0;
    v16 = v8;
    v10 = v8;
    [(NSDictionary *)v9 enumerateKeysAndObjectsUsingBlock:v15];
    v11 = [v10 copy];
    allCharacters = v5->_allCharacters;
    v5->_allCharacters = v11;

    v13 = v5;
  }

  return v5;
}

void __82__WBSCharacterSetReplacementsContainer_initWithReplacementStringsToCharacterSets___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 mutableCopy];
  [v4 formUnionWithCharacterSet:*(a1 + 32)];
  [*(a1 + 32) formUnionWithCharacterSet:v4];
}

- (void)enumerateCharacterSetReplacementStringPairsUsingBlock:(id)a3
{
  v4 = a3;
  replacementStringsToCharacterSets = self->_replacementStringsToCharacterSets;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__WBSCharacterSetReplacementsContainer_enumerateCharacterSetReplacementStringPairsUsingBlock___block_invoke;
  v7[3] = &unk_1E7CF3C08;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)replacementStringsToCharacterSets enumerateKeysAndObjectsUsingBlock:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSDictionary *)self->_replacementStringsToCharacterSets isEqual:v4->_replacementStringsToCharacterSets];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end