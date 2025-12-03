@interface CRRegisterMultiValue
- (BOOL)isEqual:(id)equal;
- (CRRegisterMultiValue)initWithCRCoder:(id)coder;
- (CRRegisterMultiValue)initWithContents:(id)contents document:(id)document;
- (CRRegisterMultiValue)initWithValues:(id)values;
- (id)allContents;
- (id)contents;
- (id)deltaSince:(id)since in:(id)in;
- (id)description;
- (void)encodeWithCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithRegisterMultiValue:(id)value;
- (void)setContents:(id)contents;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation CRRegisterMultiValue

- (CRRegisterMultiValue)initWithContents:(id)contents document:(id)document
{
  contentsCopy = contents;
  documentCopy = document;
  v12.receiver = self;
  v12.super_class = CRRegisterMultiValue;
  v8 = [(CRRegisterMultiValue *)&v12 init];
  if (v8)
  {
    v9 = [[CRSet alloc] initWithDocument:documentCopy];
    values = v8->_values;
    v8->_values = v9;

    if (contentsCopy)
    {
      [(CRRegisterMultiValue *)v8 setContents:contentsCopy];
    }
  }

  return v8;
}

- (CRRegisterMultiValue)initWithValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = CRRegisterMultiValue;
  v6 = [(CRRegisterMultiValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, values);
  }

  return v7;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  values = [(CRRegisterMultiValue *)self values];
  [coderCopy encodeObject:values forKey:@"values"];
}

- (CRRegisterMultiValue)initWithCRCoder:(id)coder
{
  coderCopy = coder;
  document = [coderCopy document];
  v6 = [(CRRegisterMultiValue *)self initWithContents:0 document:document];

  if (v6)
  {
    v7 = [coderCopy decodeObjectForKey:@"values"];
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
  cachedValues = [(CRRegisterMultiValue *)self cachedValues];

  if (!cachedValues)
  {
    v4 = objc_alloc(MEMORY[0x1E695DFA8]);
    values = [(CRRegisterMultiValue *)self values];
    v6 = [v4 initWithCapacity:{objc_msgSend(values, "count")}];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    values2 = [(CRRegisterMultiValue *)self values];
    v8 = [values2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(values2);
          }

          [v6 addObject:*(*(&v14 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [values2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [(CRRegisterMultiValue *)self setCachedValues:v6];
  }

  cachedValues2 = [(CRRegisterMultiValue *)self cachedValues];
  v12 = *MEMORY[0x1E69E9840];

  return cachedValues2;
}

- (id)contents
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  values = [(CRRegisterMultiValue *)self values];
  v3 = 0;
  v4 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(values);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (!v3 || [*(*(&v11 + 1) + 8 * i) compare:v3] == 1)
        {
          v8 = v7;

          v3 = v8;
        }
      }

      v4 = [values countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  values = [(CRRegisterMultiValue *)self values];
  [values setObject:contentsCopy];

  [(CRRegisterMultiValue *)self setCachedValues:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    values = [(CRRegisterMultiValue *)self values];
    values2 = [equalCopy values];
    v7 = [values isEqual:values2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(CRRegisterMultiValue *)self mergeWithRegisterMultiValue:withCopy];
  [(CRRegisterMultiValue *)self setCachedValues:0];
}

- (void)mergeWithRegisterMultiValue:(id)value
{
  valueCopy = value;
  values = [(CRRegisterMultiValue *)self values];
  values2 = [valueCopy values];
  [values mergeWith:values2];
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  values = [(CRRegisterMultiValue *)self values];
  v9 = [values deltaSince:sinceCopy in:inCopy];

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

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  values = [(CRRegisterMultiValue *)self values];
  graphCopy[2](graphCopy, values);
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  values = [(CRRegisterMultiValue *)self values];
  [values setDocument:documentCopy];
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
  values = [(CRRegisterMultiValue *)self values];
  v8 = [values countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(values);
        }

        [v6 appendFormat:@"%@, ", *(*(&v13 + 1) + 8 * i)];
      }

      v8 = [values countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);
  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

@end