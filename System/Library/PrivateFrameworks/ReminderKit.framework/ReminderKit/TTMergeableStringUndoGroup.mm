@interface TTMergeableStringUndoGroup
- (BOOL)addSeenRange:(TopoIDRange *)a3;
- (BOOL)hasTopoIDsThatCanChange;
- (NSString)description;
- (TTMergeableStringUndoGroup)init;
- (void)addCommand:(id)a3;
- (void)applyToString:(id)a3;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation TTMergeableStringUndoGroup

- (TTMergeableStringUndoGroup)init
{
  v8.receiver = self;
  v8.super_class = TTMergeableStringUndoGroup;
  v2 = [(TTMergeableStringUndoGroup *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    seen = v2->_seen;
    v2->_seen = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    commands = v2->_commands;
    v2->_commands = v5;
  }

  return v2;
}

- (void)addCommand:(id)a3
{
  v5 = a3;
  if ([v5 addToGroup:self])
  {
    v4 = [(TTMergeableStringUndoGroup *)self commands];
    [v4 addObject:v5];
  }
}

- (BOOL)addSeenRange:(TopoIDRange *)a3
{
  v5 = a3->var0.var0;
  var1 = a3->var0.var1;
  v7 = a3->var1;
  v8 = [(TTMergeableStringUndoGroup *)self seen];
  v9 = [v8 objectForKeyedSubscript:v5];

  if (v9)
  {
    if ([v9 containsIndexesInRange:{var1, v7}])
    {
      v10 = 0;
    }

    else
    {
      [v9 addIndexesInRange:{var1, v7}];
      v10 = 1;
    }

    v11 = v9;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndexesInRange:{var1, v7}];
    v12 = [(TTMergeableStringUndoGroup *)self seen];
    [v12 setObject:v11 forKeyedSubscript:v5];

    v10 = 1;
  }

  return v10;
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(TTMergeableStringUndoGroup *)self commands];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v17 = a3->var0.var0;
        var1 = a3->var1;
        v18 = a3->var0.var1;
        v19 = var1;
        v14 = a4->var0.var0;
        v12 = a4->var1;
        v15 = a4->var0.var1;
        v16 = v12;
        if (v10)
        {
          [v10 updateTopoIDRange:&v17 toNewRangeID:&v14];
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasTopoIDsThatCanChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(TTMergeableStringUndoGroup *)self commands];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasTopoIDsThatCanChange])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)applyToString:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TTMergeableStringUndoGroup *)self commands];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v9++) applyToString:v4];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TTMergeableStringUndoGroup *)self commands];
  v5 = [v3 stringWithFormat:@"<TTMergeableStringUndoGroup %p %@>", self, v4];

  return v5;
}

@end