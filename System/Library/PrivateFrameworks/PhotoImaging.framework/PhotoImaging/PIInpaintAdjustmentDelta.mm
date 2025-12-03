@interface PIInpaintAdjustmentDelta
- (PIInpaintAdjustmentDelta)initWithOperations:(id)operations masks:(id)masks;
- (id)redactedCopy;
@end

@implementation PIInpaintAdjustmentDelta

- (id)redactedCopy
{
  v24 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  operations = [(PIInpaintAdjustmentDelta *)self operations];
  v5 = [operations countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(operations);
        }

        v9 = [*(*(&v19 + 1) + 8 * i) mutableCopy];
        v10 = [v9 objectForKeyedSubscript:@"options"];
        unsignedIntegerValue = [v10 unsignedIntegerValue];

        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue | 1];
        [v9 setObject:v12 forKeyedSubscript:@"options"];

        v13 = [v9 copy];
        [array addObject:v13];
      }

      v6 = [operations countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v14 = [PIInpaintAdjustmentDelta alloc];
  masks = [(PIInpaintAdjustmentDelta *)selfCopy masks];
  v16 = [(PIInpaintAdjustmentDelta *)v14 initWithOperations:array masks:masks];

  return v16;
}

- (PIInpaintAdjustmentDelta)initWithOperations:(id)operations masks:(id)masks
{
  v13.receiver = self;
  v13.super_class = PIInpaintAdjustmentDelta;
  masksCopy = masks;
  operationsCopy = operations;
  v7 = [(PIInpaintAdjustmentDelta *)&v13 init];
  v8 = [operationsCopy copy];

  operations = v7->_operations;
  v7->_operations = v8;

  v10 = [masksCopy copy];
  masks = v7->_masks;
  v7->_masks = v10;

  return v7;
}

@end