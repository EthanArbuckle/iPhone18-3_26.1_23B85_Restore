@interface NSArray(PreferencesAdditions)
- (id)specifierForID:()PreferencesAdditions;
- (uint64_t)indexOfNextGroupStartingAtIndex:()PreferencesAdditions;
- (uint64_t)indexOfSpecifierWithID:()PreferencesAdditions;
@end

@implementation NSArray(PreferencesAdditions)

- (id)specifierForID:()PreferencesAdditions
{
  v4 = a3;
  objectEnumerator = [self objectEnumerator];
  nextObject = 0;
  while (1)
  {
    v7 = nextObject;
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    identifier = [nextObject identifier];
    v9 = [identifier isEqualToString:v4];

    if (v9)
    {
      v10 = nextObject;
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (uint64_t)indexOfSpecifierWithID:()PreferencesAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSArray_PreferencesAdditions__indexOfSpecifierWithID___block_invoke;
  v8[3] = &unk_1E71DDE80;
  v9 = v4;
  v5 = v4;
  v6 = [self indexOfObjectPassingTest:v8];

  return v6;
}

- (uint64_t)indexOfNextGroupStartingAtIndex:()PreferencesAdditions
{
  if (a3)
  {
    v3 = a3;
    if ([self count] > a3)
    {
      while (++v3 < [self count])
      {
        v5 = [self objectAtIndexedSubscript:v3];
        cellType = [v5 cellType];

        if (!cellType)
        {
          return v3;
        }
      }
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

@end