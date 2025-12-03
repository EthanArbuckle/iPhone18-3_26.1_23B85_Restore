@interface VSStorefrontFilter
+ (id)keyPathsForValuesAffectingFilteredStorefronts;
- (NSArray)filteredStorefronts;
- (VSStorefrontFilter)init;
- (void)setStorefronts:(id)storefronts;
@end

@implementation VSStorefrontFilter

- (VSStorefrontFilter)init
{
  v7.receiver = self;
  v7.super_class = VSStorefrontFilter;
  v2 = [(VSStorefrontFilter *)&v7 init];
  v3 = v2;
  if (v2)
  {
    storefronts = v2->_storefronts;
    v2->_storefronts = MEMORY[0x277CBEBF8];

    searchQuery = v3->_searchQuery;
    v3->_searchQuery = &stru_2880B8BB0;
  }

  return v3;
}

+ (id)keyPathsForValuesAffectingFilteredStorefronts
{
  if (keyPathsForValuesAffectingFilteredStorefronts___vs_lazy_init_predicate != -1)
  {
    +[VSStorefrontFilter keyPathsForValuesAffectingFilteredStorefronts];
  }

  v3 = keyPathsForValuesAffectingFilteredStorefronts___vs_lazy_init_variable;

  return v3;
}

uint64_t __67__VSStorefrontFilter_keyPathsForValuesAffectingFilteredStorefronts__block_invoke()
{
  keyPathsForValuesAffectingFilteredStorefronts___vs_lazy_init_variable = __67__VSStorefrontFilter_keyPathsForValuesAffectingFilteredStorefronts__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __67__VSStorefrontFilter_keyPathsForValuesAffectingFilteredStorefronts__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"searchQuery"];
  [v0 addObject:@"storefronts"];
  v1 = [v0 copy];

  return v1;
}

- (void)setStorefronts:(id)storefronts
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAC98];
  storefrontsCopy = storefronts;
  v6 = [v4 sortDescriptorWithKey:@"displayName" ascending:1];
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v8 = [storefrontsCopy sortedArrayUsingDescriptors:v7];

  v9 = [v8 mutableCopy];
  v10 = [v9 indexOfObjectPassingTest:&__block_literal_global_18];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    v12 = [v9 objectAtIndex:v10];
    [v9 removeObjectAtIndex:v11];
    [v9 addObject:v12];
  }

  v13 = [v9 copy];
  storefronts = self->_storefronts;
  self->_storefronts = v13;

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __37__VSStorefrontFilter_setStorefronts___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 identitifer];
  v6 = [v5 isEqualToString:@"__"];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (NSArray)filteredStorefronts
{
  storefronts = [(VSStorefrontFilter *)self storefronts];
  searchQuery = [(VSStorefrontFilter *)self searchQuery];
  if ([searchQuery length])
  {
    v5 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"displayName"];
    v6 = [MEMORY[0x277CCA9C0] expressionForConstantValue:searchQuery];
    v7 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:99 options:3];
    v8 = [storefronts filteredArrayUsingPredicate:v7];

    storefronts = v8;
  }

  return storefronts;
}

@end