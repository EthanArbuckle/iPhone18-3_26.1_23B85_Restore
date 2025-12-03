@interface NSArray(TextInputAdditions)
- (id)_readingStringWithin:()TextInputAdditions;
- (id)_surfaceStringWithin:()TextInputAdditions;
@end

@implementation NSArray(TextInputAdditions)

- (id)_readingStringWithin:()TextInputAdditions
{
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = [self subarrayWithRange:{a3, a4}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__NSArray_TextInputAdditions___readingStringWithin___block_invoke;
  v12[3] = &unk_278731140;
  v13 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v12];

  v10 = [v9 copy];

  return v10;
}

- (id)_surfaceStringWithin:()TextInputAdditions
{
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = [self subarrayWithRange:{a3, a4}];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__NSArray_TextInputAdditions___surfaceStringWithin___block_invoke;
  v12[3] = &unk_278731140;
  v13 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:v12];

  v10 = [v9 copy];

  return v10;
}

@end