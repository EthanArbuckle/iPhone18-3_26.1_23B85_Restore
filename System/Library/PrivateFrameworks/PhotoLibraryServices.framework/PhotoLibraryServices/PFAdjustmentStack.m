@interface PFAdjustmentStack
+ (BOOL)isValidEnvelopeDictionary:(id)a3 errors:(id)a4;
- (PFAdjustmentStack)init;
- (PFAdjustmentStack)initWithAdjustments:(id)a3;
- (PFAdjustmentStack)initWithEnvelopeDictionary:(id)a3;
- (id)adjustmentsWithIdentifier:(id)a3;
- (id)envelopeDictionary;
- (id)firstAdjustmentWithIdentifier:(id)a3;
@end

@implementation PFAdjustmentStack

- (id)adjustmentsWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_adjustments;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 identifier];
          if ([v12 isEqual:v4])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithArray:{v5, v15}];

  return v13;
}

- (id)firstAdjustmentWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_adjustments;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          v10 = [v9 identifier];
          if ([v10 isEqual:v4])
          {
            v6 = v9;

            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PFAdjustmentStack)initWithAdjustments:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFAdjustmentStack *)self init];
  if (v5)
  {
    v6 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v4;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          [v6 addObject:v13];
          v14 = [v13 maskUUID];

          if (v14)
          {
            if (!v10)
            {
              v10 = [MEMORY[0x1E695DFA0] orderedSet];
            }

            v15 = [v13 maskUUID];
            [v10 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    v16 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];
    adjustments = v5->_adjustments;
    v5->_adjustments = v16;

    if (v10)
    {
      v18 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v10];
      maskUUIDs = v5->_maskUUIDs;
      v5->_maskUUIDs = v18;
    }

    v4 = v21;
  }

  return v5;
}

- (PFAdjustmentStack)init
{
  v6.receiver = self;
  v6.super_class = PFAdjustmentStack;
  v2 = [(PFAdjustmentStack *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    adjustments = v2->_adjustments;
    v2->_adjustments = v3;

    v2->_formatVersion = 1;
  }

  return v2;
}

- (id)envelopeDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_adjustments, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_adjustments;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) archiveDictionary];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x1E695DF90] dictionary];
  [v10 setObject:&unk_1F0FBEDA0 forKeyedSubscript:PFAdjustmentEnvelopeEnvelopeVersionKey];
  [v10 setObject:v3 forKeyedSubscript:PFAdjustmentEnvelopeAdjustmentsKey];

  return v10;
}

- (PFAdjustmentStack)initWithEnvelopeDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v28.receiver = self;
    v28.super_class = PFAdjustmentStack;
    v5 = [(PFAdjustmentStack *)&v28 init];
    if (v5)
    {
      v23 = v4;
      v6 = [v4 objectForKeyedSubscript:PFAdjustmentEnvelopeAdjustmentsKey];
      v7 = [MEMORY[0x1E695DF70] array];
      v8 = [MEMORY[0x1E695DFA0] orderedSet];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v6;
      v10 = [(NSOrderedSet *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [[PFAdjustment alloc] initWithArchiveDictionary:*(*(&v24 + 1) + 8 * i)];
            if (!v14)
            {

              v5 = 0;
              maskUUIDs = v9;
              goto LABEL_17;
            }

            v15 = v14;
            [v7 addObject:v14];
            v16 = [(PFAdjustment *)v15 maskUUID];
            if (v16)
            {
              [v8 addObject:v16];
            }
          }

          v11 = [(NSOrderedSet *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v7];
      adjustments = v5->_adjustments;
      v5->_adjustments = v17;

      if (v8)
      {
        v19 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:v8];
        maskUUIDs = v5->_maskUUIDs;
        v5->_maskUUIDs = v19;
LABEL_17:
        v4 = v23;
      }

      else
      {
        v4 = v23;
      }
    }

    self = v5;
    v21 = self;
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"envelope must not be nil"];
    v21 = 0;
  }

  return v21;
}

+ (BOOL)isValidEnvelopeDictionary:(id)a3 errors:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([PFAdjustmentSerialization validateArchive:v5 containsEntryWithKey:PFAdjustmentEnvelopeEnvelopeVersionKey ofType:objc_opt_class() errors:v6])
  {
    v7 = [v5 objectForKeyedSubscript:PFAdjustmentEnvelopeEnvelopeVersionKey];
    if ([v7 unsignedIntegerValue] != 1)
    {
      v15 = MEMORY[0x1E696ABC0];
      v23 = PFAdjustmentEnvelopeEnvelopeVersionKey;
      v24[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v15 errorWithDomain:@"PFAdjustmentErrorDomain" code:4 userInfo:v8];
      [v6 addObject:v16];

      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    if ([PFAdjustmentSerialization validateArchive:v5 containsEntryWithKey:PFAdjustmentEnvelopeAdjustmentsKey ofType:objc_opt_class() errors:v6])
    {
      [v5 objectForKeyedSubscript:PFAdjustmentEnvelopeAdjustmentsKey];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = v21 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            if (![PFAdjustmentSerialization validateValue:v13 isOfType:objc_opt_class() errors:v6, v18]|| ![PFAdjustment isValidArchiveDictionary:v13 errors:v6])
            {
              v14 = 0;
              goto LABEL_19;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          v14 = 1;
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 1;
      }

LABEL_19:
      v7 = v8;
      goto LABEL_20;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_21:

  return v14;
}

@end