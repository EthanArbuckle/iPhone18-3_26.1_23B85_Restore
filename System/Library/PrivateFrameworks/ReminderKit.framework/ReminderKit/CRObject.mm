@interface CRObject
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (id)keyFromSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (CRObject)init;
- (CRObject)initWithCRCoder:(id)coder;
- (CRObject)initWithIdentity:(id)identity fields:(id)fields;
- (NSString)description;
- (id)deltaSince:(id)since in:(id)in;
- (id)tombstone;
- (unint64_t)hash;
- (void)encodeWithCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithObject:(id)object;
- (void)setDocument:(id)document;
- (void)setFieldKey:(id)key value:(id)value;
- (void)setupConstraintsFor:(id)for in:(id)in;
- (void)walkGraph:(id)graph;
@end

@implementation CRObject

- (CRObject)init
{
  v23 = *MEMORY[0x1E69E9840];
  cRProperties = [objc_opt_class() CRProperties];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = cRProperties;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:v9];
        if ([v10 isEqual:CRPropertyRegisterLatest])
        {
          v11 = [CRRegister registerWithType:0 contents:0];
LABEL_10:
          v12 = v11;
          [v3 setObject:v11 forKeyedSubscript:v9];

          goto LABEL_12;
        }

        if ([v10 isEqual:CRPropertySet])
        {
          v11 = objc_alloc_init(CRSet);
          goto LABEL_10;
        }

        [v3 setObject:v10 forKeyedSubscript:v9];
LABEL_12:
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [(CRObject *)self setupConstraintsFor:v4 in:v3];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v14 = [(CRObject *)self initWithIdentity:uUID fields:v3];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CRObject)initWithIdentity:(id)identity fields:(id)fields
{
  identityCopy = identity;
  fieldsCopy = fields;
  v12.receiver = self;
  v12.super_class = CRObject;
  v9 = [(CRObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeStrong(&v10->_fields, fields);
  }

  return v10;
}

- (CRObject)initWithCRCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeUUIDForKey:@"identity"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  cRProperties = [objc_opt_class() CRProperties];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [cRProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(cRProperties);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [coderCopy decodeObjectForKey:v12];
        [v6 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [cRProperties countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(CRObject *)self setupConstraintsFor:cRProperties in:v6];
  v14 = [(CRObject *)self initWithIdentity:v5 fields:v6];
  if (v14)
  {
    document = [coderCopy document];
    objects = [document objects];
    identity = [(CRObject *)v14 identity];
    [objects setObject:v14 forKeyedSubscript:identity];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCRCoder:(id)coder
{
  coderCopy = coder;
  identity = [(CRObject *)self identity];
  [coderCopy encodeUUID:identity forKey:@"identity"];

  fields = [(CRObject *)self fields];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__CRObject_encodeWithCRCoder___block_invoke;
  v8[3] = &unk_1E7509E58;
  v9 = coderCopy;
  v7 = coderCopy;
  [fields enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)setupConstraintsFor:(id)for in:(id)in
{
  v17 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [forCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(forCopy);
        }

        v9 = [forCopy objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v8)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectAtIndexedSubscript:0];
          [v10 isEqual:CRPropertyOneOfKey];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [forCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setFieldKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  fields = [(CRObject *)self fields];
  v9 = [fields mutableCopy];

  [(NSDictionary *)v9 setObject:valueCopy forKeyedSubscript:keyCopy];
  fields = self->_fields;
  self->_fields = v9;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid CRObject merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(CRObject *)self mergeWithObject:withCopy];
  }
}

- (void)mergeWithObject:(id)object
{
  fields = [object fields];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CRObject_mergeWithObject___block_invoke;
  v5[3] = &unk_1E7509E58;
  v5[4] = self;
  [fields enumerateKeysAndObjectsUsingBlock:v5];
}

void __28__CRObject_mergeWithObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 fields];
  v7 = [v8 objectForKeyedSubscript:v6];

  [v7 mergeWith:v5];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  objects = [documentCopy objects];
  identity = [(CRObject *)self identity];
  [objects setObject:self forKeyedSubscript:identity];

  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  fields = [(CRObject *)self fields];
  v9 = [v7 initWithCapacity:{objc_msgSend(fields, "count")}];

  fields2 = [(CRObject *)self fields];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __24__CRObject_setDocument___block_invoke;
  v15[3] = &unk_1E7509E80;
  v16 = documentCopy;
  v11 = v9;
  v17 = v11;
  v12 = documentCopy;
  [fields2 enumerateKeysAndObjectsUsingBlock:v15];

  fields = self->_fields;
  self->_fields = v11;
  v14 = v11;
}

void __24__CRObject_setDocument___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 localObject:a3];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];

  [v7 setDocument:*(a1 + 32)];
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  fields = [(CRObject *)self fields];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __26__CRObject_deltaSince_in___block_invoke;
  v17[3] = &unk_1E7509EA8;
  v18 = sinceCopy;
  v19 = inCopy;
  v10 = v8;
  v20 = v10;
  v11 = inCopy;
  v12 = sinceCopy;
  [fields enumerateKeysAndObjectsUsingBlock:v17];

  if ([v10 count])
  {
    v13 = objc_alloc(objc_opt_class());
    identity = [(CRObject *)self identity];
    v15 = [v13 initWithIdentity:identity fields:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __26__CRObject_deltaSince_in___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 deltaSince:*(a1 + 32) in:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  fields = [(CRObject *)self fields];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__CRObject_walkGraph___block_invoke;
  v7[3] = &unk_1E7509ED0;
  v8 = graphCopy;
  v6 = graphCopy;
  [fields enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)tombstone
{
  v3 = objc_alloc(objc_opt_class());
  identity = [(CRObject *)self identity];
  v5 = [v3 initWithIdentity:identity fields:MEMORY[0x1E695E0F8]];

  return v5;
}

- (unint64_t)hash
{
  identity = [(CRObject *)self identity];
  v3 = [identity hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identity = [(CRObject *)self identity];
    identity2 = [equalCopy identity];
    v7 = [identity isEqual:identity2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  fields = [(CRObject *)self fields];
  v4 = [fields count];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  identity = [(CRObject *)self identity];
  cR_shortDescription = [identity CR_shortDescription];
  v10 = cR_shortDescription;
  if (v4)
  {
    fields2 = [(CRObject *)self fields];
    v12 = [v5 stringWithFormat:@"<%@ %p %@ %@>", v7, self, v10, fields2];
  }

  else
  {
    v12 = [v5 stringWithFormat:@"<%@ %p %@>", v7, self, cR_shortDescription];
  }

  return v12;
}

+ (id)keyFromSelector:(SEL)selector
{
  v3 = NSStringFromSelector(selector);
  if ([v3 hasPrefix:@"set"])
  {
    v4 = [v3 substringWithRange:{3, objc_msgSend(v3, "length") - 4}];

    v5 = [v4 substringToIndex:1];
    lowercaseString = [v5 lowercaseString];
    v7 = [v4 substringFromIndex:1];
    v3 = [lowercaseString stringByAppendingString:v7];
  }

  return v3;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = [CRObject keyFromSelector:?];
  if (v5 && ([self CRProperties], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = NSStringFromSelector(method);
    v9 = [v8 hasPrefix:@"set"];

    v10 = objc_opt_class();
    if (v9)
    {
      v11 = "v@:@";
      v12 = setPropertyIMP;
    }

    else
    {
      v11 = "@@:";
      v12 = propertyIMP;
    }

    class_addMethod(v10, method, v12, v11);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end