@interface CRObject
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (id)keyFromSelector:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (CRObject)init;
- (CRObject)initWithCRCoder:(id)a3;
- (CRObject)initWithIdentity:(id)a3 fields:(id)a4;
- (NSString)description;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)tombstone;
- (unint64_t)hash;
- (void)encodeWithCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithObject:(id)a3;
- (void)setDocument:(id)a3;
- (void)setFieldKey:(id)a3 value:(id)a4;
- (void)setupConstraintsFor:(id)a3 in:(id)a4;
- (void)walkGraph:(id)a3;
@end

@implementation CRObject

- (CRObject)init
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() CRProperties];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v2;
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
  v13 = [MEMORY[0x1E696AFB0] UUID];
  v14 = [(CRObject *)self initWithIdentity:v13 fields:v3];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (CRObject)initWithIdentity:(id)a3 fields:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRObject;
  v9 = [(CRObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, a3);
    objc_storeStrong(&v10->_fields, a4);
  }

  return v10;
}

- (CRObject)initWithCRCoder:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeUUIDForKey:@"identity"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [objc_opt_class() CRProperties];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v4 decodeObjectForKey:v12];
        [v6 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [(CRObject *)self setupConstraintsFor:v7 in:v6];
  v14 = [(CRObject *)self initWithIdentity:v5 fields:v6];
  if (v14)
  {
    v15 = [v4 document];
    v16 = [v15 objects];
    v17 = [(CRObject *)v14 identity];
    [v16 setObject:v14 forKeyedSubscript:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCRCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRObject *)self identity];
  [v4 encodeUUID:v5 forKey:@"identity"];

  v6 = [(CRObject *)self fields];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__CRObject_encodeWithCRCoder___block_invoke;
  v8[3] = &unk_1E7509E58;
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)setupConstraintsFor:(id)a3 in:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [v4 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v8)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectAtIndexedSubscript:0];
          [v10 isEqual:CRPropertyOneOfKey];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setFieldKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CRObject *)self fields];
  v9 = [v8 mutableCopy];

  [(NSDictionary *)v9 setObject:v6 forKeyedSubscript:v7];
  fields = self->_fields;
  self->_fields = v9;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Invalid CRObject merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(CRObject *)self mergeWithObject:v5];
  }
}

- (void)mergeWithObject:(id)a3
{
  v4 = [a3 fields];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__CRObject_mergeWithObject___block_invoke;
  v5[3] = &unk_1E7509E58;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
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

- (void)setDocument:(id)a3
{
  v4 = a3;
  v5 = [v4 objects];
  v6 = [(CRObject *)self identity];
  [v5 setObject:self forKeyedSubscript:v6];

  v7 = objc_alloc(MEMORY[0x1E695DF90]);
  v8 = [(CRObject *)self fields];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [(CRObject *)self fields];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __24__CRObject_setDocument___block_invoke;
  v15[3] = &unk_1E7509E80;
  v16 = v4;
  v11 = v9;
  v17 = v11;
  v12 = v4;
  [v10 enumerateKeysAndObjectsUsingBlock:v15];

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

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [(CRObject *)self fields];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __26__CRObject_deltaSince_in___block_invoke;
  v17[3] = &unk_1E7509EA8;
  v18 = v6;
  v19 = v7;
  v10 = v8;
  v20 = v10;
  v11 = v7;
  v12 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v17];

  if ([v10 count])
  {
    v13 = objc_alloc(objc_opt_class());
    v14 = [(CRObject *)self identity];
    v15 = [v13 initWithIdentity:v14 fields:v10];
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

- (void)walkGraph:(id)a3
{
  v4 = a3;
  v5 = [(CRObject *)self fields];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__CRObject_walkGraph___block_invoke;
  v7[3] = &unk_1E7509ED0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)tombstone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(CRObject *)self identity];
  v5 = [v3 initWithIdentity:v4 fields:MEMORY[0x1E695E0F8]];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(CRObject *)self identity];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CRObject *)self identity];
    v6 = [v4 identity];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [(CRObject *)self fields];
  v4 = [v3 count];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(CRObject *)self identity];
  v9 = [v8 CR_shortDescription];
  v10 = v9;
  if (v4)
  {
    v11 = [(CRObject *)self fields];
    v12 = [v5 stringWithFormat:@"<%@ %p %@ %@>", v7, self, v10, v11];
  }

  else
  {
    v12 = [v5 stringWithFormat:@"<%@ %p %@>", v7, self, v9];
  }

  return v12;
}

+ (id)keyFromSelector:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
  if ([v3 hasPrefix:@"set"])
  {
    v4 = [v3 substringWithRange:{3, objc_msgSend(v3, "length") - 4}];

    v5 = [v4 substringToIndex:1];
    v6 = [v5 lowercaseString];
    v7 = [v4 substringFromIndex:1];
    v3 = [v6 stringByAppendingString:v7];
  }

  return v3;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v5 = [CRObject keyFromSelector:?];
  if (v5 && ([a1 CRProperties], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = NSStringFromSelector(a3);
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

    class_addMethod(v10, a3, v12, v11);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end