@interface _EditScriptRanged
+ (id)editScriptForSmallestSingleEditFromString:(id)a3 toString:(id)a4;
+ (id)editScriptFromString:(id)a3 toString:(id)a4 chunkSize:(int64_t)a5 orderAtomsAscending:(BOOL)a6 operationPrecedence:(int64_t)a7 options:(int64_t)a8;
- (_EditScriptRanged)initWithOperationPrecedence:(int64_t)a3 dataClass:(Class)a4 chunkSize:(int64_t)a5 stringA:(id)a6 stringB:(id)a7 orderAtomsAscending:(BOOL)a8 options:(int64_t)a9;
- (id)applyToString:(id)a3;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6;
- (void)computeSmallestSingleEdit;
- (void)finalizeCurrentScriptAtom;
- (void)initializeCurrentScriptAtom;
- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)a3 andReverseIndexOfLastDifference:(int64_t *)a4 shouldShortenFirstDifference:(BOOL)a5;
@end

@implementation _EditScriptRanged

- (_EditScriptRanged)initWithOperationPrecedence:(int64_t)a3 dataClass:(Class)a4 chunkSize:(int64_t)a5 stringA:(id)a6 stringB:(id)a7 orderAtomsAscending:(BOOL)a8 options:(int64_t)a9
{
  v9 = a8;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = _EditScriptRanged;
  v17 = [(_EditScript *)&v23 initWithOperationPrecedence:a3 orderAtomsAscending:v9];
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
  v15 = [[_EditScriptRanged alloc] initWithOperationPrecedence:a7 dataClass:objc_opt_class() chunkSize:a5 stringA:v13 stringB:v14 orderAtomsAscending:v10 options:a8];
  if (v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = &stru_1EFB14550;
  }

  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = &stru_1EFB14550;
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
    v19 = [(_EditScript *)v15 script];
    v20 = [_EditScriptRangedAtom atomWithEditRange:0 replacementText:[(__CFString *)v16 length], v17];
    [v19 addObject:v20];

    goto LABEL_13;
  }

  [(_EditScript *)v15 computeDistanceMatrix];
  [(_EditScript *)v15 computeEditsFromMatrix];
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
    v5 = &stru_1EFB14550;
  }

  v6 = [(__CFString *)v5 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [(_EditScript *)self script];
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

- (void)initializeCurrentScriptAtom
{
  currentScriptAtom = self->_currentScriptAtom;
  self->_currentScriptAtom = 0;
}

- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6
{
  v17 = a5;
  if (self->super._currentOperation != a3 || (self->_options & 1) == 0)
  {
    [(_EditScriptRanged *)self finalizeCurrentScriptAtom];
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
        v11 = [(_EditScriptRangedAtom *)self->_currentScriptAtom editRange];
        [(_EditScriptRangedAtom *)self->_currentScriptAtom editRange];
        [(_EditScriptRangedAtom *)self->_currentScriptAtom setEditRange:v11 - v10, v12 + v10];
        v13 = MEMORY[0x1E696AEC0];
        v14 = [(_EditScriptRangedAtom *)self->_currentScriptAtom replacementText];
        v15 = [v13 stringWithFormat:@"%@%@", v17, v14];
        [(_EditScriptRangedAtom *)self->_currentScriptAtom setReplacementText:v15];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(_EditScriptData *)self->super._itemAData lengthOfItem:a4 - 1];
      if (currentScriptAtom)
      {
        goto LABEL_7;
      }
    }

    v16 = [_EditScriptRangedAtom atomWithEditRange:[(_EditScriptData *)self->super._itemAData characterIndexForItem:a4]- v10 replacementText:v10, v17];
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
      v4 = [(_EditScriptRangedAtom *)currentScriptAtom replacementText];
      v5 = [v4 length];
      [(_EditScriptRangedAtom *)self->_currentScriptAtom editRange];
      v7 = v6;

      v8 = v5 - v7;
      if (v5 != v7)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [(_EditScript *)self script];
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

      v17 = [(_EditScript *)self script];
      [v17 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      v17 = [(_EditScript *)self script];
      [v17 addObject:self->_currentScriptAtom];
    }

    v18 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)a3 andReverseIndexOfLastDifference:(int64_t *)a4 shouldShortenFirstDifference:(BOOL)a5
{
  v5 = a5;
  v9 = [(_EditScriptData *)self->super._itemAData length];
  v10 = [(_EditScriptData *)self->super._itemBData length];
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
  v15 = [(_EditScriptData *)self->super._itemAData indexOfFirstDifferenceWithOtherData:self->super._itemBData shouldReverseIterate:0];
  if (v15 != -1)
  {
    v14 = [(_EditScriptData *)self->super._itemAData indexOfFirstDifferenceWithOtherData:self->super._itemBData shouldReverseIterate:1];
    [(_EditScriptRanged *)self removeAnyOverlapBetweenIndexOfFirstDifference:&v15 andReverseIndexOfLastDifference:&v14 shouldShortenFirstDifference:0];
    v3 = [(_EditScriptData *)self->super._itemAData length];
    v4 = v3 - v14;
    v5 = [(_EditScriptData *)self->super._itemBData length];
    v6 = v5 - v14;
    v7 = [(_EditScriptData *)self->super._itemAData characterIndexForItem:v15];
    v8 = [(_EditScriptData *)self->super._itemAData characterIndexForItem:v4];
    v9 = [(_EditScriptData *)self->super._itemBData characterIndexForItem:v6]- v7;
    v10 = [(_EditScriptData *)self->super._itemBData stringValue];
    v11 = [v10 substringWithRange:{v7, v9}];

    v12 = [_EditScriptRangedAtom atomWithEditRange:v7 replacementText:v8 - v7, v11];
    v13 = [(_EditScript *)self script];
    [v13 addObject:v12];
  }
}

+ (id)editScriptForSmallestSingleEditFromString:(id)a3 toString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_EditScriptRanged alloc] initWithOperationPrecedence:-1 dataClass:objc_opt_class() chunkSize:0 stringA:v6 stringB:v5 orderAtomsAscending:1 options:1];

  [(_EditScriptRanged *)v7 computeSmallestSingleEdit];

  return v7;
}

@end