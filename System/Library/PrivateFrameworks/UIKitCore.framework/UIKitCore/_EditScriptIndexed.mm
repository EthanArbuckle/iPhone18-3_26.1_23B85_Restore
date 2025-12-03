@interface _EditScriptIndexed
+ (id)editScriptFromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending operationPrecedence:(int64_t)precedence;
- (_EditScriptIndexed)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class fromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending;
- (id)applyToArray:(id)array;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)operation editIndex:(unint64_t)index newText:(id)text indexInArrayB:(unint64_t)b;
- (void)finalizeCurrentScriptAtom;
- (void)initializeCurrentScriptAtom;
@end

@implementation _EditScriptIndexed

- (_EditScriptIndexed)initWithOperationPrecedence:(int64_t)precedence dataClass:(Class)class fromArray:(id)array toArray:(id)toArray orderAtomsAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  arrayCopy = array;
  toArrayCopy = toArray;
  v20.receiver = self;
  v20.super_class = _EditScriptIndexed;
  v14 = [(_EditScript *)&v20 initWithOperationPrecedence:precedence orderAtomsAscending:ascendingCopy];
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
  v11 = [[_EditScriptIndexed alloc] initWithOperationPrecedence:precedence dataClass:objc_opt_class() fromArray:arrayCopy toArray:toArrayCopy orderAtomsAscending:ascendingCopy];

  [(_EditScript *)v11 computeDistanceMatrix];
  [(_EditScript *)v11 computeEditsFromMatrix];

  return v11;
}

- (id)applyToArray:(id)array
{
  v23 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (!arrayCopy)
  {
    arrayCopy = MEMORY[0x1E695E0F0];
  }

  v17 = arrayCopy;
  v6 = [arrayCopy mutableCopy];
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
        editOperation = [v12 editOperation];
        switch(editOperation)
        {
          case 1:
            [v6 removeObjectAtIndex:{objc_msgSend(v12, "indexToEdit")}];
            break;
          case 2:
            replacementText = [v12 replacementText];
            [v6 insertObject:replacementText atIndex:{objc_msgSend(v12, "indexToEdit")}];
            goto LABEL_13;
          case 3:
            replacementText = [v12 replacementText];
            [v6 setObject:replacementText atIndexedSubscript:{objc_msgSend(v12, "indexToEdit")}];
LABEL_13:

            continue;
          default:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"_EditScriptIndexed.m" lineNumber:57 description:@"Invalid operation used in _EditScriptIndexed"];

            break;
        }
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
  v12 = textCopy;
  if (operation)
  {
    v16 = textCopy;
    if (operation != 2)
    {
      if (!index)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_EditScriptIndexed.m" lineNumber:78 description:@"Deletions and Substitutions should never start with an index of 0"];
      }

      --index;
    }

    v13 = [_EditScriptIndexedAtom atomWithEditOperation:operation indexToEdit:index newText:v16 indexInArrayB:b];
    currentScriptAtom = self->_currentScriptAtom;
    self->_currentScriptAtom = v13;

    [(_EditScriptIndexed *)self finalizeCurrentScriptAtom];
    v12 = v16;
  }
}

- (void)finalizeCurrentScriptAtom
{
  v17 = *MEMORY[0x1E69E9840];
  currentScriptAtom = self->_currentScriptAtom;
  if (currentScriptAtom)
  {
    if (self->super._orderAtomsAscending)
    {
      if ([(_EditScriptIndexedAtom *)currentScriptAtom editOperation]== 2)
      {
        v4 = 1;
      }

      else if ([(_EditScriptIndexedAtom *)self->_currentScriptAtom editOperation]== 1)
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
      script = [(_EditScript *)self script];
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

      script2 = [(_EditScript *)self script];
      [script2 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      script2 = [(_EditScript *)self script];
      [script2 addObject:self->_currentScriptAtom];
    }

    v11 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

@end