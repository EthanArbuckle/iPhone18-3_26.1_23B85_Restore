@interface _SUICEditScriptIndexed
+ (id)editScriptFromArray:(id)a3 toArray:(id)a4 orderAtomsAscending:(BOOL)a5 operationPrecedence:(int64_t)a6;
- (_SUICEditScriptIndexed)initWithOperationPrecedence:(int64_t)a3 dataClass:(Class)a4 fromArray:(id)a5 toArray:(id)a6 orderAtomsAscending:(BOOL)a7;
- (id)applyToArray:(id)a3;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6;
- (void)finalizeCurrentScriptAtom;
@end

@implementation _SUICEditScriptIndexed

- (_SUICEditScriptIndexed)initWithOperationPrecedence:(int64_t)a3 dataClass:(Class)a4 fromArray:(id)a5 toArray:(id)a6 orderAtomsAscending:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = _SUICEditScriptIndexed;
  v14 = [(_SUICEditScript *)&v20 initWithOperationPrecedence:a3 orderAtomsAscending:v7];
  if (v14)
  {
    v15 = [(objc_class *)a4 EditScriptDataWithArray:v12];
    itemAData = v14->super._itemAData;
    v14->super._itemAData = v15;

    v17 = [(objc_class *)a4 EditScriptDataWithArray:v13];
    itemBData = v14->super._itemBData;
    v14->super._itemBData = v17;
  }

  return v14;
}

+ (id)editScriptFromArray:(id)a3 toArray:(id)a4 orderAtomsAscending:(BOOL)a5 operationPrecedence:(int64_t)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_SUICEditScriptIndexed alloc] initWithOperationPrecedence:a6 dataClass:objc_opt_class() fromArray:v10 toArray:v9 orderAtomsAscending:v7];

  [(_SUICEditScript *)v11 computeDistanceMatrix];
  [(_SUICEditScript *)v11 computeEditsFromMatrix];

  return v11;
}

- (id)applyToArray:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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
  v7 = [(_SUICEditScript *)self script];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 editOperation];
        if (v13 == 1)
        {
          [v6 removeObjectAtIndex:{objc_msgSend(v12, "indexToEdit")}];
        }

        else
        {
          if (v13 == 2)
          {
            v14 = [v12 replacementText];
            [v6 insertObject:v14 atIndex:{objc_msgSend(v12, "indexToEdit")}];
          }

          else
          {
            if (v13 != 3)
            {
              continue;
            }

            v14 = [v12 replacementText];
            [v6 setObject:v14 atIndexedSubscript:{objc_msgSend(v12, "indexToEdit")}];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6
{
  v10 = a5;
  v11 = v10;
  if (a3)
  {
    if (a3 == 2)
    {
      v12 = a4;
    }

    else
    {
      v12 = a4 - 1;
    }

    v15 = v10;
    v13 = [_SUICAtomIndexed atomWithEditOperation:a3 indexToEdit:v12 newText:v10 indexInArrayB:a6];
    currentScriptAtom = self->_currentScriptAtom;
    self->_currentScriptAtom = v13;

    v10 = [(_SUICEditScriptIndexed *)self finalizeCurrentScriptAtom];
    v11 = v15;
  }

  MEMORY[0x1EEE66BB8](v10, v11);
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
      v6 = [(_SUICEditScript *)self script];
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
              objc_enumerationMutation(v6);
            }

            [*(*(&v12 + 1) + 8 * v10) setIndexToEdit:{objc_msgSend(*(*(&v12 + 1) + 8 * v10), "indexToEdit") + v4}];
            ++v10;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      v5 = [(_SUICEditScript *)self script];
      [v5 insertObject:self->_currentScriptAtom atIndex:0];
    }

    else
    {
      v5 = [(_SUICEditScript *)self script];
      [v5 addObject:self->_currentScriptAtom];
    }

    v11 = self->_currentScriptAtom;
    self->_currentScriptAtom = 0;
  }
}

@end