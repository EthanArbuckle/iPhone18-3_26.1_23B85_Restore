@interface NSMapTable(HVHeadersMapTable)
+ (id)hv_headerKeyFunctions;
+ (id)hv_headerValueFunctions;
- (id)hv_firstHeaderForKey:()HVHeadersMapTable;
- (uint64_t)hv_addEntriesFromHeadersDictionary:()HVHeadersMapTable;
@end

@implementation NSMapTable(HVHeadersMapTable)

- (id)hv_firstHeaderForKey:()HVHeadersMapTable
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v1 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (uint64_t)hv_addEntriesFromHeadersDictionary:()HVHeadersMapTable
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__NSMapTable_HVHeadersMapTable__hv_addEntriesFromHeadersDictionary___block_invoke;
  v4[3] = &unk_278968DA8;
  v4[4] = self;
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

+ (id)hv_headerValueFunctions
{
  v0 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:0];

  return v0;
}

+ (id)hv_headerKeyFunctions
{
  v0 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:0x10000];
  [v0 setHashFunction:HVCaseInsensitiveStringHash];
  [v0 setIsEqualFunction:HVCaseInsensitiveEqual];

  return v0;
}

@end