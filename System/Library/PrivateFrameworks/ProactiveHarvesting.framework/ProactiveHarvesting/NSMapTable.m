@interface NSMapTable
@end

@implementation NSMapTable

void __68__NSMapTable_HVHeadersMapTable__hv_addEntriesFromHeadersDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v11];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v6 addObject:v5];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 32);
    if (isKindOfClass)
    {
      v9 = [v5 mutableCopy];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
    }

    v10 = v9;
    [v8 setObject:v9 forKey:v11];
  }
}

@end