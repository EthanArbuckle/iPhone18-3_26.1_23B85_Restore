@interface PASMutableDomainSelection
@end

@implementation PASMutableDomainSelection

void __64___PASMutableDomainSelection__decrementCountAndMaybePruneItems___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 count])
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    --*(*(a1 + 32) + 16);
  }
}

void __104___PASMutableDomainSelection__addDomainsFromOtherDictionary_toOwnDictionary_ownDictionaryIsPlaceholder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v13];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) _addDomainsFromOtherDictionary:v5 toOwnDictionary:v6 ownDictionaryIsPlaceholder:0];
    v9 = *(*(a1 + 48) + 8);
    if (v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(v9 + 24);
    }

    *(v9 + 24) = v10 & 1;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v7 = objc_opt_new();
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v13];
    v11 = [v5 count];
    v12 = *(a1 + 40);
    if (v11)
    {
      [v12 _addDomainsFromOtherDictionary:v5 toOwnDictionary:v7 ownDictionaryIsPlaceholder:1];
    }

    else
    {
      ++v12[2];
    }
  }
}

void __40___PASMutableDomainSelection_allDomains__block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v5 count];
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = a1[5];
    v10 = [v15 _pas_revivedString];
    v11 = [v8 initWithFormat:@"%@%@.", v9, v10];

    v12 = a1[6];
    [_PASTuple2 tupleWithFirst:v5 second:v11];
  }

  else
  {
    v12 = a1[4];
    v13 = a1[5];
    v11 = [v15 _pas_revivedString];
    [v13 stringByAppendingString:v11];
  }
  v14 = ;
  [v12 addObject:v14];

  objc_autoreleasePoolPop(v7);
}

@end