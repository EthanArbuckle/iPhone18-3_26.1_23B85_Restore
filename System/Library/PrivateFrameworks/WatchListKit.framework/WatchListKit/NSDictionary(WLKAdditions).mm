@interface NSDictionary(WLKAdditions)
- (WLKArtworkVariantListing)wlk_artworkVariantListingForKey:()WLKAdditions;
- (id)_lookupValueForKey:()WLKAdditions expectedClass:;
- (id)wlk_arrayForKey:()WLKAdditions;
- (id)wlk_caseInsensitiveValueForKey:()WLKAdditions;
- (id)wlk_dataForKey:()WLKAdditions;
- (id)wlk_dateForKey:()WLKAdditions;
- (id)wlk_dateFromMillisecondsSince1970ForKey:()WLKAdditions;
- (id)wlk_dictionaryDifference:()WLKAdditions;
- (id)wlk_dictionaryForKey:()WLKAdditions;
- (id)wlk_numberForKey:()WLKAdditions;
- (id)wlk_stringForKey:()WLKAdditions;
- (id)wlk_urlForKey:()WLKAdditions;
- (uint64_t)wlk_BOOLForKey:()WLKAdditions defaultValue:;
@end

@implementation NSDictionary(WLKAdditions)

- (WLKArtworkVariantListing)wlk_artworkVariantListingForKey:()WLKAdditions
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [[WLKArtworkVariantListing alloc] initWithArtworkDictionary:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)wlk_numberForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)wlk_stringForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (uint64_t)wlk_BOOLForKey:()WLKAdditions defaultValue:
{
  v5 = [a1 wlk_numberForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)wlk_dateForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)wlk_dateFromMillisecondsSince1970ForKey:()WLKAdditions
{
  v1 = [a1 objectForKey:?];
  v2 = [MEMORY[0x277CBEAA8] wlk_dateWithMillisecondsSince1970:v1];

  return v2;
}

- (id)wlk_dictionaryForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)wlk_arrayForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)wlk_dataForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)wlk_urlForKey:()WLKAdditions
{
  v4 = a3;
  v5 = [a1 _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)_lookupValueForKey:()WLKAdditions expectedClass:
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v1 = 0;
  }

  return v1;
}

- (id)wlk_caseInsensitiveValueForKey:()WLKAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__11;
  v15 = __Block_byref_object_dispose__11;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__NSDictionary_WLKAdditions__wlk_caseInsensitiveValueForKey___block_invoke;
  v8[3] = &unk_279E60C08;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)wlk_dictionaryDifference:()WLKAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__NSDictionary_WLKAdditions__wlk_dictionaryDifference___block_invoke;
  v17[3] = &unk_279E60B00;
  v6 = v4;
  v18 = v6;
  v7 = v5;
  v19 = v7;
  [a1 enumerateKeysAndObjectsUsingBlock:v17];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__NSDictionary_WLKAdditions__wlk_dictionaryDifference___block_invoke_2;
  v14 = &unk_279E60B00;
  v15 = a1;
  v8 = v7;
  v16 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];
  if ([v8 count])
  {
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end