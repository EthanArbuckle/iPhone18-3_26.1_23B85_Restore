@interface _EditScript
- (_EditScript)initWithOperationPrecedence:(int64_t)a3 orderAtomsAscending:(BOOL)a4;
- (id)description;
- (id)operationPrecedenceArrayFromOperationPrecedence:(int64_t)a3;
- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6;
- (void)computeDistanceMatrix;
- (void)computeEditsFromMatrix;
- (void)finalizeCurrentScriptAtom;
- (void)initializeCurrentScriptAtom;
@end

@implementation _EditScript

- (id)operationPrecedenceArrayFromOperationPrecedence:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return &unk_1EFE2CAA8;
  }

  else
  {
    return qword_1E7115A18[a3 - 1];
  }
}

- (_EditScript)initWithOperationPrecedence:(int64_t)a3 orderAtomsAscending:(BOOL)a4
{
  v13.receiver = self;
  v13.super_class = _EditScript;
  v6 = [(_EditScript *)&v13 init];
  v7 = v6;
  if (v6)
  {
    distanceMatrix = v6->_distanceMatrix;
    v6->_distanceMatrix = 0;

    v7->_orderAtomsAscending = a4;
    v9 = [(_EditScript *)v7 operationPrecedenceArrayFromOperationPrecedence:a3];
    operationPrecedenceArray = v7->_operationPrecedenceArray;
    v7->_operationPrecedenceArray = v9;

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(_EditScript *)v7 setScript:v11];
  }

  return v7;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  distanceMatrix = self->_distanceMatrix;
  if (distanceMatrix)
  {
    v5 = [(_IntArray2D *)distanceMatrix description];
    [v3 appendFormat:@"Distance Matrix:\n%@\n", v5];
  }

  operationPrecedenceArray = self->_operationPrecedenceArray;
  if (operationPrecedenceArray)
  {
    v7 = [(NSArray *)operationPrecedenceArray description];
    [v3 appendFormat:@"Order of Precedence:%@\n", v7];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_script;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * i) description];
        [v3 appendString:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v3;
}

- (void)computeDistanceMatrix
{
  v3 = [(_EditScriptData *)self->_itemAData length];
  v4 = [(_EditScriptData *)self->_itemBData length];
  v5 = [_IntArray2D arrayWithISize:v3 + 1 jSize:v4 + 1];
  [(_IntArray2D *)v5 setShouldBoundsCheck:1];
  if (v3)
  {
    for (i = 1; i <= v3; ++i)
    {
      [(_IntArray2D *)v5 newValue:i];
    }
  }

  if (v4)
  {
    for (j = 1; j <= v4; ++j)
    {
      [(_IntArray2D *)v5 newValue:0];
    }

    v8 = 1;
    v19 = v4;
    do
    {
      if (v3)
      {
        for (k = 1; k <= v3; ++k)
        {
          v10 = [(_EditScriptData *)self->_itemAData stringAtIndex:k - 1];
          v11 = [(_EditScriptData *)self->_itemBData stringAtIndex:v8 - 1];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            v13 = [(_IntArray2D *)v5 ];
          }

          else
          {
            v14 = [(_IntArray2D *)v5 ]+ 1;
            v15 = [(_IntArray2D *)v5 ];
            if (v14 >= v15 + 1)
            {
              v14 = v15 + 1;
            }

            v16 = [(_IntArray2D *)v5 ];
            if (v14 >= v16 + 1)
            {
              v13 = v16 + 1;
            }

            else
            {
              v13 = v14;
            }
          }

          [(_IntArray2D *)v5 newValue:k];
        }
      }
    }

    while (v8++ < v19);
  }

  distanceMatrix = self->_distanceMatrix;
  self->_distanceMatrix = v5;
}

- (void)computeEditsFromMatrix
{
  [(_EditScript *)self initializeCurrentScriptAtom];
  self->_currentOperation = 0;
  v31 = self->_distanceMatrix;
  v3 = [(_IntArray2D *)v31 iSize]- 1;
  v4 = [(_IntArray2D *)v31 jSize]- 1;
  if (v3 <= 0 && v4 < 1)
  {
    goto LABEL_59;
  }

  v6 = 0;
  do
  {
    v7 = v3--;
    v8 = [(_IntArray2D *)v31 outOfBoundsReturnValue:v3];
    v29 = v4;
    v9 = v4 - 1;
    v10 = [(_IntArray2D *)v31 outOfBoundsReturnValue:v7];
    v11 = [(_IntArray2D *)v31 outOfBoundsReturnValue:v3];
    v12 = [(NSArray *)self->_operationPrecedenceArray count];
    v13 = v12 - 1;
    if (v12 < 1)
    {
LABEL_39:
      v3 = v7;
      v6 = v28;
      if (v28 == 1)
      {
LABEL_40:
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        v6 = 1;
        v25 = &stru_1EFB14550;
        v4 = v29;
      }

      else
      {
        v3 = v7;
        v25 = &stru_1EFB14550;
        v4 = v29;
        v9 = v29;
      }

      goto LABEL_57;
    }

    v15 = v11 < v8 && v11 < v10;
    v17 = v10 < v8 && v10 < v11;
    v19 = v8 < v10 && v8 < v11;
    while (1)
    {
      v20 = [(NSArray *)self->_operationPrecedenceArray objectAtIndex:v13];
      v21 = [v20 integerValue];

      if (v21 == 3)
      {
        break;
      }

      if (v21 == 2)
      {
        if (((v13 != 0) & ~v17) == 0)
        {
          if (v29 < 1)
          {
            v25 = 0;
          }

          else
          {
            v25 = [(_EditScriptData *)self->_itemBData stringAtIndex:v9];
          }

          v6 = 2;
          v3 = v7;
          goto LABEL_56;
        }
      }

      else if (v21 == 1)
      {
        if (v13)
        {
          v22 = v19;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"_EditScript.m" lineNumber:184 description:{@"The operation precedence array MUST NOT contain values other than eOperationSubstitute, eOperationInsert, and eOperationDelete, and MUST contain all 3."}];
      }

LABEL_38:
      v24 = v13-- + 1;
      if (v24 <= 1)
      {
        goto LABEL_39;
      }
    }

    if (((v13 != 0) & ~v15) != 0)
    {
      goto LABEL_38;
    }

    if (v7 < 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = [(_EditScriptData *)self->_itemAData stringAtIndex:v3];
    }

    if (v29 < 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = [(_EditScriptData *)self->_itemBData stringAtIndex:v9];
    }

    if ([v26 isEqualToString:v27])
    {
      v6 = 0;
      v25 = &stru_1EFB14550;
    }

    else
    {
      v25 = v27;
      v6 = 3;
    }

LABEL_56:
    v4 = v9;
LABEL_57:
    [(_EditScript *)self addToCurrentScriptAtomEditOperation:v6 editIndex:v7 newText:v25 indexInArrayB:v9];
  }

  while (v3 > 0 || v4 > 0);
LABEL_59:
  [(_EditScript *)self finalizeCurrentScriptAtom];
}

- (void)initializeCurrentScriptAtom
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_EditScript.m" lineNumber:204 description:@"Subclasses of _EditScript need to implement initailizeCurrentScriptAtom"];
}

- (void)addToCurrentScriptAtomEditOperation:(int64_t)a3 editIndex:(unint64_t)a4 newText:(id)a5 indexInArrayB:(unint64_t)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"_EditScript.m" lineNumber:210 description:@"Subclasses of _EditScript need to implement appendToScriptAtomIndex:string:operation:"];
}

- (void)finalizeCurrentScriptAtom
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_EditScript.m" lineNumber:216 description:@"Subclasses of _EditScript need to implement finalizeCurrentScriptAtom"];
}

@end