@interface _SUICEditScriptRanged
+ (id)editScriptForSmallestSingleEditFromString:(id)a3 toString:(id)a4 chunkSize:(int64_t)a5;
+ (id)editScriptFromString:(id)a3 toString:(id)a4 chunkSize:(int64_t)a5 orderAtomsAscending:(BOOL)a6 operationPrecedence:(int64_t)a7 options:(int64_t)a8;
- (_SUICEditScriptRanged)initWithOperationPrecedence:(int64_t)a3 dataClass:(Class)a4 chunkSize:(int64_t)a5 stringA:(id)a6 stringB:(id)a7 orderAtomsAscending:(BOOL)a8 options:(int64_t)a9;
- (id)applyToString:(id)a3;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6;
- (void)computeSmallestSingleEdit;
- (void)finalizeCurrentScriptAtom;
- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)a3 andReverseIndexOfLastDifference:(int64_t *)a4 shouldShortenFirstDifference:(BOOL)a5;
@end

@implementation _SUICEditScriptRanged

- (_SUICEditScriptRanged)initWithOperationPrecedence:(int64_t)a3 dataClass:(Class)a4 chunkSize:(int64_t)a5 stringA:(id)a6 stringB:(id)a7 orderAtomsAscending:(BOOL)a8 options:(int64_t)a9
{
  v9 = a8;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = _SUICEditScriptRanged;
  v17 = [(_SUICEditScript *)&v23 initWithOperationPrecedence:a3 orderAtomsAscending:v9];
  if (v17)
  {
    v18 = [(objc_class *)a4 EditScriptDataWithString:v15 chunkSize:a5];
    itemAData = v17->super._itemAData;
    v17->super._itemAData = v18;

    v20 = [(objc_class *)a4 EditScriptDataWithString:v16 chunkSize:a5];
    itemBData = v17->super._itemBData;
    v17->super._itemBData = v20;

    v17->_options = a9;
  }

  return v17;
}

+ (id)editScriptFromString:(id)a3 toString:(id)a4 chunkSize:(int64_t)a5 orderAtomsAscending:(BOOL)a6 operationPrecedence:(int64_t)a7 options:(int64_t)a8
{
  v10 = a6;
  v13 = a3;
  v14 = a4;
  v15 = [[_SUICEditScriptRanged alloc] initWithOperationPrecedence:a7 dataClass:objc_opt_class() chunkSize:a5 stringA:v13 stringB:v14 orderAtomsAscending:v10 options:a8];
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = &stru_1F43BC8C0;
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1F43BC8C0;
  }

  if ([(__CFString *)v16 length])
  {
    v18 = [(__CFString *)v17 length];
    if ((a8 & 1) != 0 && !v18)
    {
      goto LABEL_10;
    }
  }

  else if (a8)
  {
LABEL_10:
    v19 = [(_SUICEditScript *)v15 script];
    v20 = [_SUICAtomRanged atomWithEditRange:0 replacementText:[(__CFString *)v16 length], v17];
    [v19 addObject:v20];

    goto LABEL_13;
  }

  [(_SUICEditScript *)v15 computeDistanceMatrix];
  [(_SUICEditScript *)v15 computeEditsFromMatrix];
LABEL_13:

  return v15;
}

- (id)applyToString:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1F43BC8C0;
  }

  v6 = [(__CFString *)v5 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(_SUICEditScript *)self script];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 editRange];
        v15 = v14;
        v16 = [v12 replacementText];
        [v6 replaceCharactersInRange:v13 withString:{v15, v16}];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6
{
  v17 = a5;
  if (self->super._currentOperation != a3 || (self->_options & 1) == 0)
  {
    [(_SUICEditScriptRanged *)self finalizeCurrentScriptAtom];
    self->super._currentOperation = a3;
  }

  if (a3)
  {
    currentScriptAtom = self->_currentScriptAtom;
    if (a3 == 2)
    {
      v10 = 0;
      if (currentScriptAtom)
      {
LABEL_7:
        v11 = [(_SUICAtomRanged *)self->_currentScriptAtom editRange];
        [(_SUICAtomRanged *)self->_currentScriptAtom editRange];
        [(_SUICAtomRanged *)self->_currentScriptAtom setEditRange:v11 - v10, v12 + v10];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(_SUICAtomRanged *)self->_currentScriptAtom replacementText];
        v15 = [v13 stringWithFormat:@"%@%@", v17, v14];
        [(_SUICAtomRanged *)self->_currentScriptAtom setReplacementText:v15];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(_SUICEditScriptData *)self->super._itemAData lengthOfItem:a4 - 1];
      if (currentScriptAtom)
      {
        goto LABEL_7;
      }
    }

    v16 = [_SUICAtomRanged atomWithEditRange:[(_SUICEditScriptData *)self->super._itemAData characterIndexForItem:a4]- v10 replacementText:v10, v17];
    v14 = self->_currentScriptAtom;
    self->_currentScriptAtom = v16;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)finalizeCurrentScriptAtom
{
  v24 = *MEMORY[0x1E69E9840];
  currentScriptAtom = self->_currentScriptAtom;
  if (currentScriptAtom)
  {
    if (self->super._orderAtomsAscending)
    {
      v4 = [(_SUICAtomRanged *)currentScriptAtom replacementText];
      v5 = [v4 length];
      [(_SUICAtomRanged *)self->_currentScriptAtom editRange];
      v7 = v6;

      v8 = v5 - v7;
      if (v5 != v7)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [(_SUICEditScript *)self script];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * i);
              v15 = [v14 editRange];
              [v14 setEditRange:{v8 + v15, v16}];
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v11);
        }
      }

      v17 = [(_SUICEditScript *)self script];
      [v17 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      v17 = [(_SUICEditScript *)self script];
      [v17 addObject:self->_currentScriptAtom];
    }

    v18 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)a3 andReverseIndexOfLastDifference:(int64_t *)a4 shouldShortenFirstDifference:(BOOL)a5
{
  v5 = a5;
  v9 = [(_SUICEditScriptData *)self->super._itemAData length];
  v10 = [(_SUICEditScriptData *)self->super._itemBData length];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = *a3;
  v13 = *a3 - v11 + *a4;
  if (v13 >= 1)
  {
    if (v5)
    {
      v14 = a3;
    }

    else
    {
      v12 = *a4;
      v14 = a4;
    }

    *v14 = (v12 - v13) & ~((v12 - v13) >> 63);
  }
}

- (void)computeSmallestSingleEdit
{
  itemAData = self->super._itemAData;
  v17 = 0;
  v16 = [(_SUICEditScriptData *)itemAData indexOfFirstDifferenceWithOtherData:self->super._itemBData shouldReverseIterate:0 fallsOnWordBoundary:&v17];
  if (v16 != -1)
  {
    v15 = [(_SUICEditScriptData *)self->super._itemAData indexOfFirstDifferenceWithOtherData:self->super._itemBData shouldReverseIterate:1 fallsOnWordBoundary:0];
    [(_SUICEditScriptRanged *)self removeAnyOverlapBetweenIndexOfFirstDifference:&v16 andReverseIndexOfLastDifference:&v15 shouldShortenFirstDifference:v17 == 0];
    v4 = [(_SUICEditScriptData *)self->super._itemAData length];
    v5 = v4 - v15;
    v6 = [(_SUICEditScriptData *)self->super._itemBData length];
    v7 = v6 - v15;
    v8 = [(_SUICEditScriptData *)self->super._itemAData characterIndexForItem:v16];
    v9 = [(_SUICEditScriptData *)self->super._itemAData characterIndexForItem:v5];
    v10 = [(_SUICEditScriptData *)self->super._itemBData characterIndexForItem:v7]- v8;
    v11 = [(_SUICEditScriptData *)self->super._itemBData stringValue];
    v12 = [v11 substringWithRange:{v8, v10}];

    v13 = [_SUICAtomRanged atomWithEditRange:v8 replacementText:v9 - v8, v12];
    v14 = [(_SUICEditScript *)self script];
    [v14 addObject:v13];
  }
}

+ (id)editScriptForSmallestSingleEditFromString:(id)a3 toString:(id)a4 chunkSize:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[_SUICEditScriptRanged alloc] initWithOperationPrecedence:-1 dataClass:objc_opt_class() chunkSize:a5 stringA:v8 stringB:v7 orderAtomsAscending:1 options:1];

  [(_SUICEditScriptRanged *)v9 computeSmallestSingleEdit];

  return v9;
}

@end