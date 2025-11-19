@interface NSOrderedSet(SafariCoreExtras)
- (id)safari_subsetWithRange:()SafariCoreExtras;
@end

@implementation NSOrderedSet(SafariCoreExtras)

- (id)safari_subsetWithRange:()SafariCoreExtras
{
  if (a4)
  {
    if (a3 || a4 != [a1 count])
    {
      v8 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:a4];
      v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a3, a4}];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__NSOrderedSet_SafariCoreExtras__safari_subsetWithRange___block_invoke;
      v13[3] = &unk_1E7CF2A50;
      v14 = v8;
      v10 = v8;
      [a1 enumerateObjectsAtIndexes:v9 options:0 usingBlock:v13];

      v11 = [v10 copy];
      goto LABEL_8;
    }

    v7 = [a1 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB8] orderedSet];
  }

  v11 = v7;
LABEL_8:

  return v11;
}

@end