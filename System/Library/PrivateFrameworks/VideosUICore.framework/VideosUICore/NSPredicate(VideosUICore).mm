@interface NSPredicate(VideosUICore)
+ (id)_vui_keyPathsInComparisonPredicate:()VideosUICore;
+ (id)_vui_keyPathsInCompoundPredicate:()VideosUICore;
+ (id)_vui_keyPathsInPredicate:()VideosUICore;
+ (id)vui_keyPathBitTestPredicateWithKeyPath:()VideosUICore value:;
+ (id)vui_predicateWithSubpredicates:()VideosUICore type:;
- (uint64_t)vui_keyPathsInPredicate;
@end

@implementation NSPredicate(VideosUICore)

+ (id)vui_keyPathBitTestPredicateWithKeyPath:()VideosUICore value:
{
  v0 = [MEMORY[0x277CCA9C0] vui_keyPathBitTestExpressionWithKeyPath:? value:?];
  v1 = [MEMORY[0x277CCA9C0] expressionForConstantValue:&unk_2880E0AF0];
  v2 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v0 rightExpression:v1 modifier:0 type:5 options:0];

  return v2;
}

+ (id)vui_predicateWithSubpredicates:()VideosUICore type:
{
  v5 = a3;
  if ((a4 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The compound predicate type must be NSAndPredicateType or NSOrPredicateType"];
  }

  if ([v5 count] == 1)
  {
    v6 = [v5 firstObject];
LABEL_7:
    v7 = v6;
    goto LABEL_9;
  }

  if ([v5 count] >= 2)
  {
    v6 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:a4 subpredicates:v5];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (uint64_t)vui_keyPathsInPredicate
{
  v2 = objc_opt_class();

  return [v2 _vui_keyPathsInPredicate:a1];
}

+ (id)_vui_keyPathsInPredicate:()VideosUICore
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 _vui_keyPathsInCompoundPredicate:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [a1 _vui_keyPathsInComparisonPredicate:v4];
      if (v6)
      {
        v5 = [MEMORY[0x277CBEB98] setWithObject:v6];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCAC30] predicateWithValue:1];
      v8 = [v4 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported predicate: %@", v4}];
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (id)_vui_keyPathsInCompoundPredicate:()VideosUICore
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 subpredicates];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _vui_keyPathsInPredicate:*(*(&v13 + 1) + 8 * i)];
        if (v11)
        {
          [v5 unionSet:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_vui_keyPathsInComparisonPredicate:()VideosUICore
{
  v3 = [a3 leftExpression];
  if ([v3 expressionType] == 3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 keyPath];

  return v5;
}

@end