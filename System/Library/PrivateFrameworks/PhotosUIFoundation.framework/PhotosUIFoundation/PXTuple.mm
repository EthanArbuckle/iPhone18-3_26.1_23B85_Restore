@interface PXTuple
- (BOOL)isEqual:(id)equal;
- (PXTuple)init;
- (PXTuple)initWithObjects:(id)objects;
- (id)description;
@end

@implementation PXTuple

- (id)description
{
  v8.receiver = self;
  v8.super_class = PXTuple;
  v3 = [(PXTuple *)&v8 description];
  objects = [(PXTuple *)self objects];
  v5 = [objects description];
  v6 = [v3 stringByAppendingFormat:@" %@", v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    objects = [(PXTuple *)self objects];
    objects2 = [v5 objects];

    v8 = [objects isEqual:objects2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXTuple)initWithObjects:(id)objects
{
  v24 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  if (![objectsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTuple.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"[objects count] > 0"}];
  }

  v22.receiver = self;
  v22.super_class = PXTuple;
  v6 = [(PXTuple *)&v22 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = objectsCopy;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v12 = 1;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v18 + 1) + 8 * i) copy];
          [(NSArray *)v7 addObject:v14];
          v12 = [v14 hash] - v12 + 32 * v12;
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 1;
    }

    objects = v6->_objects;
    v6->_hash = v12;
    v6->_objects = v7;
  }

  return v6;
}

- (PXTuple)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTuple.m" lineNumber:18 description:{@"%s is not available as initializer", "-[PXTuple init]"}];

  abort();
}

@end