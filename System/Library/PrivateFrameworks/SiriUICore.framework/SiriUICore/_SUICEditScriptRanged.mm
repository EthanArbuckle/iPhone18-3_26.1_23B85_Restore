@interface _SUICEditScriptRanged
+ (id)editScriptForSmallestSingleEditFromString:(id)string toString:(id)toString chunkSize:(int64_t)size;
+ (id)editScriptFromString:(id)string toString:(id)toString chunkSize:(int64_t)size orderAtomsAscending:(BOOL)ascending operationPrecedence:(int64_t)precedence options:(int64_t)options;
- (_SUICEditScriptRanged)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class chunkSize:(int64_t)size stringA:(id)a stringB:(id)b orderAtomsAscending:(BOOL)ascending options:(int64_t)options;
- (id)applyToString:(id)string;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b;
- (void)computeSmallestSingleEdit;
- (void)finalizeCurrentScriptAtom;
- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)difference andReverseIndexOfLastDifference:(int64_t *)lastDifference shouldShortenFirstDifference:(BOOL)firstDifference;
@end

@implementation _SUICEditScriptRanged

- (_SUICEditScriptRanged)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class chunkSize:(int64_t)size stringA:(id)a stringB:(id)b orderAtomsAscending:(BOOL)ascending options:(int64_t)options
{
  ascendingCopy = ascending;
  aCopy = a;
  bCopy = b;
  v23.receiver = self;
  v23.super_class = _SUICEditScriptRanged;
  v17 = [(_SUICEditScript *)&v23 initWithOperationPrecedence:precedence orderAtomsAscending:ascendingCopy];
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
  v15 = [[_SUICEditScriptRanged alloc] initWithOperationPrecedence:precedence dataClass:objc_opt_class() chunkSize:size stringA:stringCopy stringB:toStringCopy orderAtomsAscending:ascendingCopy options:options];
  if (stringCopy)
  {
    v16 = stringCopy;
  }

  else
  {
    v16 = &stru_1F43BC8C0;
  }

  if (toStringCopy)
  {
    v17 = toStringCopy;
  }

  else
  {
    v17 = &stru_1F43BC8C0;
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
    script = [(_SUICEditScript *)v15 script];
    v20 = [_SUICAtomRanged atomWithEditRange:0 replacementText:[(__CFString *)v16 length], v17];
    [script addObject:v20];

    goto LABEL_13;
  }

  [(_SUICEditScript *)v15 computeDistanceMatrix];
  [(_SUICEditScript *)v15 computeEditsFromMatrix];
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
    v5 = &stru_1F43BC8C0;
  }

  v6 = [(__CFString *)v5 mutableCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  script = [(_SUICEditScript *)self script];
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

- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b
{
  textCopy = text;
  if (self->super._currentOperation != operation || (self->_options & 1) == 0)
  {
    [(_SUICEditScriptRanged *)self finalizeCurrentScriptAtom];
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
        editRange = [(_SUICAtomRanged *)self->_currentScriptAtom editRange];
        [(_SUICAtomRanged *)self->_currentScriptAtom editRange];
        [(_SUICAtomRanged *)self->_currentScriptAtom setEditRange:editRange - v10, v12 + v10];
        v13 = MEMORY[0x1E696AEC0];
        replacementText = [(_SUICAtomRanged *)self->_currentScriptAtom replacementText];
        v15 = [v13 stringWithFormat:@"%@%@", textCopy, replacementText];
        [(_SUICAtomRanged *)self->_currentScriptAtom setReplacementText:v15];

LABEL_10:
        goto LABEL_11;
      }
    }

    else
    {
      v10 = [(_SUICEditScriptData *)self->super._itemAData lengthOfItem:index - 1];
      if (currentScriptAtom)
      {
        goto LABEL_7;
      }
    }

    textCopy = [_SUICAtomRanged atomWithEditRange:[(_SUICEditScriptData *)self->super._itemAData characterIndexForItem:index]- v10 replacementText:v10, textCopy];
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
      replacementText = [(_SUICAtomRanged *)currentScriptAtom replacementText];
      v5 = [replacementText length];
      [(_SUICAtomRanged *)self->_currentScriptAtom editRange];
      v7 = v6;

      v8 = v5 - v7;
      if (v5 != v7)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        script = [(_SUICEditScript *)self script];
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

      script2 = [(_SUICEditScript *)self script];
      [script2 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      script2 = [(_SUICEditScript *)self script];
      [script2 addObject:self->_currentScriptAtom];
    }

    v18 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

- (void)removeAnyOverlapBetweenIndexOfFirstDifference:(int64_t *)difference andReverseIndexOfLastDifference:(int64_t *)lastDifference shouldShortenFirstDifference:(BOOL)firstDifference
{
  firstDifferenceCopy = firstDifference;
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
    stringValue = [(_SUICEditScriptData *)self->super._itemBData stringValue];
    v12 = [stringValue substringWithRange:{v8, v10}];

    v13 = [_SUICAtomRanged atomWithEditRange:v8 replacementText:v9 - v8, v12];
    script = [(_SUICEditScript *)self script];
    [script addObject:v13];
  }
}

+ (id)editScriptForSmallestSingleEditFromString:(id)string toString:(id)toString chunkSize:(int64_t)size
{
  toStringCopy = toString;
  stringCopy = string;
  v9 = [[_SUICEditScriptRanged alloc] initWithOperationPrecedence:-1 dataClass:objc_opt_class() chunkSize:size stringA:stringCopy stringB:toStringCopy orderAtomsAscending:1 options:1];

  [(_SUICEditScriptRanged *)v9 computeSmallestSingleEdit];

  return v9;
}

@end