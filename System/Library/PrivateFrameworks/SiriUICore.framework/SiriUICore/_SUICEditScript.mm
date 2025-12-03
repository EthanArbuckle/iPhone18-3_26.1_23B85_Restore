@interface _SUICEditScript
- (_SUICEditScript)initWithOperationPrecedence:(int64_t)precedence orderAtomsAscending:(BOOL)ascending;
- (id)description;
- (id)operationPrecedenceArrayFromOperationPrecedence:(int64_t)precedence;
- (void)computeDistanceMatrix;
- (void)computeEditsFromMatrix;
@end

@implementation _SUICEditScript

- (id)operationPrecedenceArrayFromOperationPrecedence:(int64_t)precedence
{
  if ((precedence - 1) > 4)
  {
    return &unk_1F43C7458;
  }

  else
  {
    return qword_1E81E7B30[precedence - 1];
  }
}

- (_SUICEditScript)initWithOperationPrecedence:(int64_t)precedence orderAtomsAscending:(BOOL)ascending
{
  v13.receiver = self;
  v13.super_class = _SUICEditScript;
  v6 = [(_SUICEditScript *)&v13 init];
  v7 = v6;
  if (v6)
  {
    distanceMatrix = v6->_distanceMatrix;
    v6->_distanceMatrix = 0;

    v7->_orderAtomsAscending = ascending;
    v9 = [(_SUICEditScript *)v7 operationPrecedenceArrayFromOperationPrecedence:precedence];
    operationPrecedenceArray = v7->_operationPrecedenceArray;
    v7->_operationPrecedenceArray = v9;

    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    [(_SUICEditScript *)v7 setScript:v11];
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
    v5 = [(_SUICIntArray2D *)distanceMatrix description];
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
  v3 = [(_SUICEditScriptData *)self->_itemAData length];
  v4 = [(_SUICEditScriptData *)self->_itemBData length];
  v5 = [_SUICIntArray2D arrayWithISize:v3 + 1 jSize:v4 + 1];
  [(_SUICIntArray2D *)v5 setShouldBoundsCheck:1];
  if (v3)
  {
    for (i = 1; i <= v3; ++i)
    {
      [(_SUICIntArray2D *)v5 newValue:i];
    }
  }

  if (v4)
  {
    for (j = 1; j <= v4; ++j)
    {
      [(_SUICIntArray2D *)v5 newValue:0];
    }

    v8 = 1;
    v18 = v4;
    do
    {
      if (v3)
      {
        for (k = 1; k <= v3; ++k)
        {
          v10 = [(_SUICEditScriptData *)self->_itemAData stringAtIndex:k - 1];
          v11 = [(_SUICEditScriptData *)self->_itemBData stringAtIndex:v8 - 1];
          v12 = [v10 isEqualToString:v11];

          if (v12)
          {
            v13 = [(_SUICIntArray2D *)v5 ];
          }

          else
          {
            v14 = [(_SUICIntArray2D *)v5 ]+ 1;
            v15 = [(_SUICIntArray2D *)v5 ];
            if (v14 >= v15 + 1)
            {
              v14 = v15 + 1;
            }

            v16 = [(_SUICIntArray2D *)v5 ];
            if (v14 >= v16 + 1)
            {
              v13 = v16 + 1;
            }

            else
            {
              v13 = v14;
            }
          }

          [(_SUICIntArray2D *)v5 newValue:k];
        }
      }

      ++v8;
    }

    while (v8 <= v18);
  }

  distanceMatrix = self->_distanceMatrix;
  self->_distanceMatrix = v5;
}

- (void)computeEditsFromMatrix
{
  [(_SUICEditScript *)self initializeCurrentScriptAtom];
  self->_currentOperation = 0;
  v29 = self->_distanceMatrix;
  v3 = [(_SUICIntArray2D *)v29 iSize]- 1;
  v4 = [(_SUICIntArray2D *)v29 jSize]- 1;
  if (v3 <= 0 && v4 < 1)
  {
    goto LABEL_57;
  }

  v6 = 0;
  do
  {
    v27 = v6;
    v7 = v3--;
    v8 = [(_SUICIntArray2D *)v29 outOfBoundsReturnValue:v3];
    v28 = v4;
    v9 = v4 - 1;
    v10 = [(_SUICIntArray2D *)v29 outOfBoundsReturnValue:v7];
    v11 = [(_SUICIntArray2D *)v29 outOfBoundsReturnValue:v3];
    v12 = [(NSArray *)self->_operationPrecedenceArray count];
    v13 = v12 - 1;
    if (v12 < 1)
    {
LABEL_37:
      v3 = v7;
      v6 = v27;
      if (v27 == 1)
      {
LABEL_38:
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        v6 = 1;
        v24 = &stru_1F43BC8C0;
        v4 = v28;
      }

      else
      {
        v3 = v7;
        v24 = &stru_1F43BC8C0;
        v4 = v28;
        v9 = v28;
      }

      goto LABEL_55;
    }

    v15 = v11 < v8 && v11 < v10;
    v17 = v10 < v8 && v10 < v11;
    v19 = v8 < v10 && v8 < v11;
    while (1)
    {
      v20 = [(NSArray *)self->_operationPrecedenceArray objectAtIndex:v13];
      integerValue = [v20 integerValue];

      if (integerValue == 3)
      {
        break;
      }

      if (integerValue == 2)
      {
        if (((v13 != 0) & ~v17) == 0)
        {
          if (v28 < 1)
          {
            v24 = 0;
          }

          else
          {
            v24 = [(_SUICEditScriptData *)self->_itemBData stringAtIndex:v9];
          }

          v6 = 2;
          v3 = v7;
          goto LABEL_54;
        }
      }

      else if (integerValue == 1 && (!v13 || v19))
      {
        goto LABEL_38;
      }

LABEL_36:
      v23 = v13-- + 1;
      if (v23 <= 1)
      {
        goto LABEL_37;
      }
    }

    if (((v13 != 0) & ~v15) != 0)
    {
      goto LABEL_36;
    }

    if (v7 < 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = [(_SUICEditScriptData *)self->_itemAData stringAtIndex:v3];
    }

    if (v28 < 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = [(_SUICEditScriptData *)self->_itemBData stringAtIndex:v9];
    }

    if ([v25 isEqualToString:v26])
    {
      v6 = 0;
      v24 = &stru_1F43BC8C0;
    }

    else
    {
      v24 = v26;
      v6 = 3;
    }

LABEL_54:
    v4 = v9;
LABEL_55:
    [(_SUICEditScript *)self addToCurrentScriptAtomEditOperation:v6 editIndex:v7 newText:v24 indexInArrayB:v9];
  }

  while (v3 > 0 || v4 > 0);
LABEL_57:
  [(_SUICEditScript *)self finalizeCurrentScriptAtom];
}

@end