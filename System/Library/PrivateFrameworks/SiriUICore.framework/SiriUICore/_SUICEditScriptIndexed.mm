@interface _SUICEditScriptIndexed
+ (id)editScriptFromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending operationPrecedence:(int64_t)precedence;
- (_SUICEditScriptIndexed)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class fromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending;
- (id)applyToArray:(id)array;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b;
- (void)finalizeCurrentScriptAtom;
@end

@implementation _SUICEditScriptIndexed

- (_SUICEditScriptIndexed)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class fromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  arrayCopy = array;
  toArrayCopy = toArray;
  v20.receiver = self;
  v20.super_class = _SUICEditScriptIndexed;
  v14 = [(_SUICEditScript *)&v20 initWithOperationPrecedence:precedence orderAtomsAscending:ascendingCopy];
  if (v14)
  {
    v15 = [(objc_class *)class EditScriptDataWithArray:arrayCopy];
    itemAData = v14->super._itemAData;
    v14->super._itemAData = v15;

    v17 = [(objc_class *)class EditScriptDataWithArray:toArrayCopy];
    itemBData = v14->super._itemBData;
    v14->super._itemBData = v17;
  }

  return v14;
}

+ (id)editScriptFromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending operationPrecedence:(int64_t)precedence
{
  ascendingCopy = ascending;
  toArrayCopy = toArray;
  arrayCopy = array;
  v11 = [[_SUICEditScriptIndexed alloc] initWithOperationPrecedence:precedence dataClass:objc_opt_class() fromArray:arrayCopy toArray:toArrayCopy orderAtomsAscending:ascendingCopy];

  [(_SUICEditScript *)v11 computeDistanceMatrix];
  [(_SUICEditScript *)v11 computeEditsFromMatrix];

  return v11;
}

- (id)applyToArray:(id)array
{
  v21 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (arrayCopy)
  {
    v5 = arrayCopy;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [v5 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  script = [(_SUICEditScript *)self script];
  v8 = [script countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(script);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        editOperation = [v12 editOperation];
        if (editOperation == 1)
        {
          [v6 removeObjectAtIndex:{objc_msgSend(v12, "indexToEdit")}];
        }

        else
        {
          if (editOperation == 2)
          {
            replacementText = [v12 replacementText];
            [v6 insertObject:replacementText atIndex:{objc_msgSend(v12, "indexToEdit")}];
          }

          else
          {
            if (editOperation != 3)
            {
              continue;
            }

            replacementText = [v12 replacementText];
            [v6 setObject:replacementText atIndexedSubscript:{objc_msgSend(v12, "indexToEdit")}];
          }
        }
      }

      v9 = [script countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b
{
  textCopy = text;
  v11 = textCopy;
  if (operation)
  {
    if (operation == 2)
    {
      indexCopy = index;
    }

    else
    {
      indexCopy = index - 1;
    }

    v15 = textCopy;
    v13 = [_SUICAtomIndexed atomWithEditOperation:operation indexToEdit:indexCopy newText:textCopy indexInArrayB:b];
    currentScriptAtom = self->_currentScriptAtom;
    self->_currentScriptAtom = v13;

    textCopy = [(_SUICEditScriptIndexed *)self finalizeCurrentScriptAtom];
    v11 = v15;
  }

  MEMORY[0x1EEE66BB8](textCopy, v11);
}

- (void)finalizeCurrentScriptAtom
{
  v17 = *MEMORY[0x1E69E9840];
  currentScriptAtom = self->_currentScriptAtom;
  if (currentScriptAtom)
  {
    if (self->super._orderAtomsAscending)
    {
      if ([(_SUICAtomIndexed *)currentScriptAtom editOperation]== 2)
      {
        v4 = 1;
      }

      else if ([(_SUICAtomIndexed *)self->_currentScriptAtom editOperation]== 1)
      {
        v4 = -1;
      }

      else
      {
        v4 = 0;
      }

      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      script = [(_SUICEditScript *)self script];
      v7 = [script countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(script);
            }

            [*(*(&v12 + 1) + 8 * v10) setIndexToEdit:{objc_msgSend(*(*(&v12 + 1) + 8 * v10), "indexToEdit") + v4}];
            ++v10;
          }

          while (v8 != v10);
          v8 = [script countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      script2 = [(_SUICEditScript *)self script];
      [script2 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      script2 = [(_SUICEditScript *)self script];
      [script2 addObject:self->_currentScriptAtom];
    }

    v11 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

@end