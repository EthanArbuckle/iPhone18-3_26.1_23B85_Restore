@interface _EditScriptRanged
+ (id)editScriptForSmallestSingleEditFromString:(id)string toString:(id)toString;
+ (id)editScriptFromString:(id)string toString:(id)toString chunkSize:(int64_t)size orderAtomsAscending:(BOOL)ascending operationPrecedence:(int64_t)precedence options:(int64_t)options;
- (_EditScriptRanged)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class chunkSize:(int64_t)size stringA:(id)a stringB:(id)b orderAtomsAscending:(BOOL)ascending options:(int64_t)options;
- (id)applyToString:(id)string;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b;
- (void)computeSmallestSingleEdit;
- (void)finalizeCurrentScriptAtom;
- (void)initializeCurrentScriptAtom;
- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)difference andReverseIndexOfLastDifference:(int64_t *)lastDifference shouldShortenFirstDifference:(BOOL)firstDifference;
@end

@implementation _EditScriptRanged

- (_EditScriptRanged)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class chunkSize:(int64_t)size stringA:(id)a stringB:(id)b orderAtomsAscending:(BOOL)ascending options:(int64_t)options
{
  ascendingCopy = ascending;
  aCopy = a;
  bCopy = b;
  v23.receiver = self;
  v23.super_class = _EditScriptRanged;
  v17 = [(_EditScript *)&v23 initWithOperationPrecedence:precedence orderAtomsAscending:ascendingCopy];
  if (v17)
  {
    v18 = [(objc_class *)class EditScriptDataWithString:aCopy chunkSize:size];
    itemAData = v17->super._itemAData;
    v17->super._itemAData = v18;

    v20 = [(objc_class *)class EditScriptDataWithString:bCopy chunkSize:size];
    itemBData = v17->super._itemBData;
    v17->super._itemBData = v20;

    v17->_options = options;
  }

  return v17;
}

+ (id)editScriptFromString:(id)string toString:(id)toString chunkSize:(int64_t)size orderAtomsAscending:(BOOL)ascending operationPrecedence:(int64_t)precedence options:(int64_t)options
{
  ascendingCopy = ascending;
  stringCopy = string;
  toStringCopy = toString;
  v15 = [[_EditScriptRanged alloc] initWithOperationPrecedence:precedence dataClass:objc_opt_class() chunkSize:size stringA:stringCopy stringB:toStringCopy orderAtomsAscending:ascendingCopy options:options];
  if (stringCopy)
  {
    v16 = stringCopy;
  }

  else
  {
    v16 = &stru_1EFB14550;
  }

  if (toStringCopy)
  {
    v17 = toStringCopy;
  }

  else
  {
    v17 = &stru_1EFB14550;
  }

  if ([(__CFString *)v16 length])
  {
    v18 = [(__CFString *)v17 length];
    if ((options & 1) != 0 && !v18)
    {
      goto LABEL_10;
    }
  }

  else if (options)
  {
LABEL_10:
    script = [(_EditScript *)v15 script];
    v20 = [_EditScriptRangedAtom atomWithEditRange:0 replacementText:[(__CFString *)v16 length], v17];
    [script addObject:v20];

    goto LABEL_13;
  }

  [(_EditScript *)v15 computeDistanceMatrix];
  [(_EditScript *)v15 computeEditsFromMatrix];
LABEL_13:

  return v15;
}

- (id)applyToString:(id)string
{
  v23 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    v5 = stringCopy;
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
  script = [(_EditScript *)self script];
  v8 = [script countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(script);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        editRange = [v12 editRange];
        v15 = v14;
        replacementText = [v12 replacementText];
        [v6 replaceCharactersInRange:editRange withString:{v15, replacementText}];
      }

      v9 = [script countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b
{
  textCopy = text;
  if (self->super._currentOperation != operation || (self->_options & 1) == 0)
  {
    [(_EditScriptRanged *)self finalizeCurrentScriptAtom];
    self->super._currentOperation = operation;
  }

  if (operation)
  {
    currentScriptAtom = self->_currentScriptAtom;
    if (operation == 2)
    {
      v10 = 0;
      if (currentScriptAtom)
      {
LABEL_7:
        editRange = [(_EditScriptRangedAtom *)self->_currentScriptAtom editRange];
        [(_EditScriptRangedAtom *)self->_currentScriptAtom editRange];
        [(_EditScriptRangedAtom *)self->_currentScriptAtom setEditRange:editRange - v10, v12 + v10];
        v13 = MEMORY[0x1E696AEC0];
        replacementText = [(_EditScriptRangedAtom *)self->_currentScriptAtom replacementText];
        v15 = [v13 stringWithFormat:@"%@%@", textCopy, replacementText];
        [(_EditScriptRangedAtom *)self->_currentScriptAtom setReplacementText:v15];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(_EditScriptData *)self->super._itemAData lengthOfItem:index - 1];
      if (currentScriptAtom)
      {
        goto LABEL_7;
      }
    }

    textCopy = [_EditScriptRangedAtom atomWithEditRange:[(_EditScriptData *)self->super._itemAData characterIndexForItem:index]- v10 replacementText:v10, textCopy];
    replacementText = self->_currentScriptAtom;
    self->_currentScriptAtom = textCopy;
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
      replacementText = [(_EditScriptRangedAtom *)currentScriptAtom replacementText];
      v5 = [replacementText length];
      [(_EditScriptRangedAtom *)self->_currentScriptAtom editRange];
      v7 = v6;

      v8 = v5 - v7;
      if (v5 != v7)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        script = [(_EditScript *)self script];
        v10 = [script countByEnumeratingWithState:&v19 objects:v23 count:16];
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
                objc_enumerationMutation(script);
              }

              v14 = *(*(&v19 + 1) + 8 * i);
              editRange = [v14 editRange];
              [v14 setEditRange:{v8 + editRange, v16}];
            }

            v11 = [script countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v11);
        }
      }

      script2 = [(_EditScript *)self script];
      [script2 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      script2 = [(_EditScript *)self script];
      [script2 addObject:self->_currentScriptAtom];
    }

    v18 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)difference andReverseIndexOfLastDifference:(int64_t *)lastDifference shouldShortenFirstDifference:(BOOL)firstDifference
{
  firstDifferenceCopy = firstDifference;
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

  v12 = *difference;
  v13 = *difference - v11 + *lastDifference;
  if (v13 >= 1)
  {
    if (firstDifferenceCopy)
    {
      lastDifferenceCopy = difference;
    }

    else
    {
      v12 = *lastDifference;
      lastDifferenceCopy = lastDifference;
    }

    *lastDifferenceCopy = (v12 - v13) & ~((v12 - v13) >> 63);
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
    stringValue = [(_EditScriptData *)self->super._itemBData stringValue];
    v11 = [stringValue substringWithRange:{v7, v9}];

    v12 = [_EditScriptRangedAtom atomWithEditRange:v7 replacementText:v8 - v7, v11];
    script = [(_EditScript *)self script];
    [script addObject:v12];
  }
}

+ (id)editScriptForSmallestSingleEditFromString:(id)string toString:(id)toString
{
  toStringCopy = toString;
  stringCopy = string;
  v7 = [[_EditScriptRanged alloc] initWithOperationPrecedence:-1 dataClass:objc_opt_class() chunkSize:0 stringA:stringCopy stringB:toStringCopy orderAtomsAscending:1 options:1];

  [(_EditScriptRanged *)v7 computeSmallestSingleEdit];

  return v7;
}

@end