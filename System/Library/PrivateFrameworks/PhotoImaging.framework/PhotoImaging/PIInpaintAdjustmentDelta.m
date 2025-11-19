@interface PIInpaintAdjustmentDelta
- (PIInpaintAdjustmentDelta)initWithOperations:(id)a3 masks:(id)a4;
- (id)redactedCopy;
@end

@implementation PIInpaintAdjustmentDelta

- (id)redactedCopy
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = self;
  v4 = [(PIInpaintAdjustmentDelta *)self operations];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) mutableCopy];
        v10 = [v9 objectForKeyedSubscript:@"options"];
        v11 = [v10 unsignedIntegerValue];

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11 | 1];
        [v9 setObject:v12 forKeyedSubscript:@"options"];

        v13 = [v9 copy];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = [PIInpaintAdjustmentDelta alloc];
  v15 = [(PIInpaintAdjustmentDelta *)v18 masks];
  v16 = [(PIInpaintAdjustmentDelta *)v14 initWithOperations:v3 masks:v15];

  return v16;
}

- (PIInpaintAdjustmentDelta)initWithOperations:(id)a3 masks:(id)a4
{
  v13.receiver = self;
  v13.super_class = PIInpaintAdjustmentDelta;
  v5 = a4;
  v6 = a3;
  v7 = [(PIInpaintAdjustmentDelta *)&v13 init];
  v8 = [v6 copy];

  operations = v7->_operations;
  v7->_operations = v8;

  v10 = [v5 copy];
  masks = v7->_masks;
  v7->_masks = v10;

  return v7;
}

@end