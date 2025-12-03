@interface NSMutableArray(PreferencesAdditions)
- (void)ps_addSpecifier:()PreferencesAdditions toGroup:;
- (void)ps_addSpecifiers:()PreferencesAdditions toGroup:;
- (void)ps_insertObject:()PreferencesAdditions afterObject:;
- (void)ps_insertObjectsFromArray:()PreferencesAdditions afterObject:;
@end

@implementation NSMutableArray(PreferencesAdditions)

- (void)ps_insertObject:()PreferencesAdditions afterObject:
{
  v7 = a3;
  v6 = [self indexOfObject:a4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self insertObject:v7 atIndex:v6 + 1];
  }
}

- (void)ps_insertObjectsFromArray:()PreferencesAdditions afterObject:
{
  v9 = a3;
  v6 = [self indexOfObject:a4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ([v9 count])
    {
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v7 + 1, objc_msgSend(v9, "count")}];
      [self insertObjects:v9 atIndexes:v8];
    }
  }
}

- (void)ps_addSpecifier:()PreferencesAdditions toGroup:
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v10 count:1];

  [self ps_addSpecifiers:v9 toGroup:{v7, v10, v11}];
}

- (void)ps_addSpecifiers:()PreferencesAdditions toGroup:
{
  v13 = a3;
  v6 = [self indexOfObject:a4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    if ([v13 count])
    {
      v8 = v7 + 1;
      do
      {
        v9 = v8;
        if (v8 >= [self count])
        {
          break;
        }

        v10 = [self objectAtIndexedSubscript:v9];
        cellType = [v10 cellType];

        v8 = v9 + 1;
      }

      while (cellType);
      v12 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v9, objc_msgSend(v13, "count")}];
      [self insertObjects:v13 atIndexes:v12];
    }
  }
}

@end