@interface TTMergeableStringUndoGroup
- (BOOL)addSeenRange:(TopoIDRange *)range;
- (BOOL)hasTopoIDsThatCanChange;
- (NSString)description;
- (TTMergeableStringUndoGroup)init;
- (void)addCommand:(id)command;
- (void)applyToString:(id)string;
- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d;
@end

@implementation TTMergeableStringUndoGroup

- (TTMergeableStringUndoGroup)init
{
  v8.receiver = self;
  v8.super_class = TTMergeableStringUndoGroup;
  v2 = [(TTMergeableStringUndoGroup *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    seen = v2->_seen;
    v2->_seen = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    commands = v2->_commands;
    v2->_commands = array;
  }

  return v2;
}

- (void)addCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy addToGroup:self])
  {
    commands = [(TTMergeableStringUndoGroup *)self commands];
    [commands addObject:commandCopy];
  }
}

- (BOOL)addSeenRange:(TopoIDRange *)range
{
  v5 = range->var0.var0;
  var1 = range->var0.var1;
  v7 = range->var1;
  seen = [(TTMergeableStringUndoGroup *)self seen];
  v9 = [seen objectForKeyedSubscript:v5];

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
    seen2 = [(TTMergeableStringUndoGroup *)self seen];
    [seen2 setObject:v11 forKeyedSubscript:v5];

    v10 = 1;
  }

  return v10;
}

- (void)updateTopoIDRange:(TopoIDRange *)range toNewRangeID:(TopoIDRange *)d
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  commands = [(TTMergeableStringUndoGroup *)self commands];
  v7 = [commands countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(commands);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v17 = range->var0.var0;
        var1 = range->var1;
        v18 = range->var0.var1;
        v19 = var1;
        v14 = d->var0.var0;
        v12 = d->var1;
        v15 = d->var0.var1;
        v16 = v12;
        if (v10)
        {
          [v10 updateTopoIDRange:&v17 toNewRangeID:&v14];
        }

        else
        {
        }
      }

      v7 = [commands countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  commands = [(TTMergeableStringUndoGroup *)self commands];
  v3 = [commands countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(commands);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasTopoIDsThatCanChange])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [commands countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)applyToString:(id)string
{
  v16 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  commands = [(TTMergeableStringUndoGroup *)self commands];
  reverseObjectEnumerator = [commands reverseObjectEnumerator];

  v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [*(*(&v11 + 1) + 8 * v9++) applyToString:stringCopy];
      }

      while (v7 != v9);
      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  commands = [(TTMergeableStringUndoGroup *)self commands];
  v5 = [v3 stringWithFormat:@"<TTMergeableStringUndoGroup %p %@>", self, commands];

  return v5;
}

@end