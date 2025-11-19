@interface PGGraphLanguageNodeCollection
+ (id)nodesWithLocaleIdentifiers:(id)a3 inGraph:(id)a4;
- (NSSet)locales;
@end

@implementation PGGraphLanguageNodeCollection

+ (id)nodesWithLocaleIdentifiers:(id)a3 inGraph:(id)a4
{
  v6 = a4;
  v7 = [PGGraphLanguageNode filterWithLocaleIdentifiers:a3];
  v8 = [a1 nodesMatchingFilter:v7 inGraph:v6];

  return v8;
}

- (NSSet)locales
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__PGGraphLanguageNodeCollection_locales__block_invoke;
  v6[3] = &unk_278888290;
  v4 = v3;
  v7 = v4;
  [(MANodeCollection *)self enumerateNodesUsingBlock:v6];

  return v4;
}

void __40__PGGraphLanguageNodeCollection_locales__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAF8];
  v4 = [a2 localeIdentifier];
  v6 = [v3 localeWithLocaleIdentifier:v4];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
    v5 = v6;
  }
}

@end