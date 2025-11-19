@interface CRRegisterMultiValue
- (BOOL)isEqual:(id)a3;
- (CRRegisterMultiValue)initWithCRCoder:(id)a3;
- (CRRegisterMultiValue)initWithContents:(id)a3 document:(id)a4;
- (CRRegisterMultiValue)initWithValues:(id)a3;
- (id)allContents;
- (id)contents;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)description;
- (void)encodeWithCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithRegisterMultiValue:(id)a3;
- (void)setContents:(id)a3;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation CRRegisterMultiValue

- (CRRegisterMultiValue)initWithContents:(id)a3 document:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRRegisterMultiValue;
  v8 = [(CRRegisterMultiValue *)&v12 init];
  if (v8)
  {
    v9 = [[CRSet alloc] initWithDocument:v7];
    values = v8->_values;
    v8->_values = v9;

    if (v6)
    {
      [(CRRegisterMultiValue *)v8 setContents:v6];
    }
  }

  return v8;
}

- (CRRegisterMultiValue)initWithValues:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRRegisterMultiValue;
  v6 = [(CRRegisterMultiValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, a3);
  }

  return v7;
}

- (void)encodeWithCRCoder:(id)a3
{
  v5 = a3;
  v4 = [(CRRegisterMultiValue *)self values];
  [v5 encodeObject:v4 forKey:@"values"];
}

- (CRRegisterMultiValue)initWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 document];
  v6 = [(CRRegisterMultiValue *)self initWithContents:0 document:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectForKey:@"values"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v6->_values, v7);
    }
  }

  return v6;
}

- (id)allContents
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(CRRegisterMultiValue *)self cachedValues];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    v5 = [(CRRegisterMultiValue *)self values];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(CRRegisterMultiValue *)self values];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [v6 addObject:*(*(&v14 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(CRRegisterMultiValue *)self setCachedValues:v6];
  }

  v11 = [(CRRegisterMultiValue *)self cachedValues];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)contents
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(CRRegisterMultiValue *)self values];
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (!v3 || [*(*(&v11 + 1) + 8 * i) compare:v3] == 1)
        {
          v8 = v7;

          v3 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setContents:(id)a3
{
  v5 = a3;
  v4 = [(CRRegisterMultiValue *)self values];
  [v4 setObject:v5];

  [(CRRegisterMultiValue *)self setCachedValues:0];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRRegisterMultiValue *)self values];
    v6 = [v4 values];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(CRRegisterMultiValue *)self mergeWithRegisterMultiValue:v5];
  [(CRRegisterMultiValue *)self setCachedValues:0];
}

- (void)mergeWithRegisterMultiValue:(id)a3
{
  v6 = a3;
  v4 = [(CRRegisterMultiValue *)self values];
  v5 = [v6 values];
  [v4 mergeWith:v5];
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRRegisterMultiValue *)self values];
  v9 = [v8 deltaSince:v6 in:v7];

  if (v9)
  {
    v10 = [objc_alloc(objc_opt_class()) initWithValues:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)walkGraph:(id)a3
{
  v5 = a3;
  v4 = [(CRRegisterMultiValue *)self values];
  v5[2](v5, v4);
}

- (void)setDocument:(id)a3
{
  v5 = a3;
  v4 = [(CRRegisterMultiValue *)self values];
  [v4 setDocument:v5];
}

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p ("), v5, self;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(CRRegisterMultiValue *)self values];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v6 appendFormat:@"%@, ", *(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);
  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

@end