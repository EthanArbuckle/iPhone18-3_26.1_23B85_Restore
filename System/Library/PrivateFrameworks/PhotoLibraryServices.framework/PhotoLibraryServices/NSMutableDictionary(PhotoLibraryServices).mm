@interface NSMutableDictionary(PhotoLibraryServices)
- (id)_pl_mutableDictionaryCreateAndInsertIfNeededForKey:()PhotoLibraryServices;
- (id)_pl_mutableSetCreateAndInsertIfNeededForKey:()PhotoLibraryServices;
- (void)_pl_safeAddObject:()PhotoLibraryServices toMutableArrayForKey:;
- (void)_pl_setNonNilObject:()PhotoLibraryServices forKey:;
@end

@implementation NSMutableDictionary(PhotoLibraryServices)

- (id)_pl_mutableSetCreateAndInsertIfNeededForKey:()PhotoLibraryServices
{
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [self setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)_pl_mutableDictionaryCreateAndInsertIfNeededForKey:()PhotoLibraryServices
{
  v4 = a3;
  v5 = [self objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [self setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_pl_safeAddObject:()PhotoLibraryServices toMutableArrayForKey:
{
  v8 = a3;
  v6 = a4;
  if (v8)
  {
    v7 = [self objectForKey:v6];
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [self setObject:v7 forKey:v6];
    }

    [v7 addObject:v8];
  }
}

- (void)_pl_setNonNilObject:()PhotoLibraryServices forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  return self;
}

@end