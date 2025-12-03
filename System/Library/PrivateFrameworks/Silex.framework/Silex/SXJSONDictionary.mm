@interface SXJSONDictionary
- (SXJSONDictionary)initWithValueClassBlock:(id)block objectValueClassBlock:(id)classBlock purgeBlock:(id)purgeBlock andJSONObject:(id)object andVersion:(id)version;
- (id)NSDictionary;
- (id)allObjects;
- (id)description;
- (id)keyAtIndex:(unint64_t)index;
- (id)objectForKey:(id)key;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation SXJSONDictionary

- (SXJSONDictionary)initWithValueClassBlock:(id)block objectValueClassBlock:(id)classBlock purgeBlock:(id)purgeBlock andJSONObject:(id)object andVersion:(id)version
{
  blockCopy = block;
  classBlockCopy = classBlock;
  purgeBlockCopy = purgeBlock;
  objectCopy = object;
  versionCopy = version;
  if (blockCopy)
  {
    v37.receiver = self;
    v37.super_class = SXJSONDictionary;
    v17 = [(SXJSONObject *)&v37 init];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->super._specificationVersion, version);
      v19 = [(SXJSONDictionary *)objectCopy mutableCopy];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __102__SXJSONDictionary_initWithValueClassBlock_objectValueClassBlock_purgeBlock_andJSONObject_andVersion___block_invoke;
      v33[3] = &unk_1E8500100;
      v34 = v19;
      v36 = purgeBlockCopy;
      v35 = versionCopy;
      v20 = v19;
      [(SXJSONDictionary *)objectCopy enumerateKeysAndObjectsUsingBlock:v33];
      v21 = [classBlockCopy copy];
      objectValueClassBlock = v18->_objectValueClassBlock;
      v18->_objectValueClassBlock = v21;

      v23 = [blockCopy copy];
      valueClassBlock = v18->_valueClassBlock;
      v18->_valueClassBlock = v23;

      v25 = [v20 copy];
      json = v18->_json;
      v18->_json = v25;

      v18->_count = [(NSDictionary *)v18->_json count];
      v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
      objects = v18->_objects;
      v18->_objects = v27;

      allKeys = [(NSDictionary *)v18->_json allKeys];
      keys = v18->_keys;
      v18->_keys = allKeys;
    }

    self = v18;
  }

  else
  {
    v18 = objectCopy;
  }

  v31 = v18;

  return v31;
}

void __102__SXJSONDictionary_initWithValueClassBlock_objectValueClassBlock_purgeBlock_andJSONObject_andVersion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v5 || (v7 = *(a1 + 48)) != 0 && (*(v7 + 16))(v7, v5, *(a1 + 40)))
  {
    [*(a1 + 32) removeObjectForKey:v8];
  }
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v5 = 0;
    goto LABEL_23;
  }

  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_objects objectForKey:keyCopy];
  os_unfair_lock_unlock(&self->super._unfairLock);
  if (v5)
  {
    goto LABEL_23;
  }

  v6 = [(NSDictionary *)self->_json objectForKey:keyCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v6)
    {
      v5 = v6;
LABEL_20:
      os_unfair_lock_lock_with_options();
      [(NSMutableDictionary *)self->_objects setObject:v5 forKey:keyCopy];
      os_unfair_lock_unlock(&self->super._unfairLock);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  objectValueClassBlock = self->_objectValueClassBlock;
  if (objectValueClassBlock)
  {
    v8 = objectValueClassBlock[2](objectValueClassBlock, v6, 0, self->super._specificationVersion);
  }

  else if (self->_valueClassBlock)
  {
    v9 = [v6 objectForKeyedSubscript:@"type"];
    v8 = (*(self->_valueClassBlock + 2))();
  }

  else
  {
    v8 = 0;
  }

  if ([(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
  {
    v5 = [[v8 alloc] initWithJSONObject:v6 andVersion:self->super._specificationVersion];
    goto LABEL_19;
  }

  if (![(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
  {
    if ([(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
    {
      v10 = [objc_opt_class() objectValueClassBlockForPropertyWithName:keyCopy];
      v11 = [objc_opt_class() valueClassBlockForPropertyWithName:keyCopy];
      v12 = [objc_opt_class() purgeClassBlockForPropertyWithName:keyCopy];
      v13 = SXJSONArray;
      goto LABEL_18;
    }

LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  v10 = [objc_opt_class() objectValueClassBlockForPropertyWithName:keyCopy];
  v11 = [objc_opt_class() valueClassBlockForPropertyWithName:keyCopy];
  v12 = [objc_opt_class() purgeClassBlockForPropertyWithName:keyCopy];
  v13 = SXJSONDictionary;
LABEL_18:
  v5 = [[v13 alloc] initWithValueClassBlock:v11 objectValueClassBlock:v10 purgeBlock:v12 andJSONObject:v6 andVersion:self->super._specificationVersion];

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_22:

LABEL_23:

  return v5;
}

- (id)keyAtIndex:(unint64_t)index
{
  if (self->_count <= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_keys objectAtIndex:v3];
  }

  return v5;
}

- (id)allObjects
{
  if (self->_count)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_count];
    if (self->_count)
    {
      v4 = 0;
      do
      {
        v5 = [(NSArray *)self->_keys objectAtIndex:v4];
        v6 = [(SXJSONDictionary *)self objectForKey:v5];
        [v3 addObject:v6];

        ++v4;
      }

      while (v4 < self->_count);
    }

    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)NSDictionary
{
  v17 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_keys;
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

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(SXJSONDictionary *)self objectForKey:v9, v12];
        [dictionary setObject:v10 forKey:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  if (self->_count - state->var0 >= count)
  {
    countCopy = count;
  }

  else
  {
    countCopy = self->_count - state->var0;
  }

  state->var1 = objects;
  state->var2 = state->var3;
  if (countCopy)
  {
    objectsCopy = objects;
    v10 = var0;
    v11 = countCopy;
    do
    {
      *objectsCopy++ = [(SXJSONDictionary *)self keyAtIndex:v10++];
      --v11;
    }

    while (v11);
  }

  state->var0 = countCopy + var0;
  return countCopy;
}

- (id)description
{
  allKeys = [(SXJSONDictionary *)self allKeys];
  allObjects = [(SXJSONDictionary *)self allObjects];
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
  if ([allKeys count])
  {
    v6 = 0;
    do
    {
      v7 = [allKeys objectAtIndex:v6];
      v8 = [allObjects objectAtIndex:v6];
      if (v6 != [allKeys count] - 1)
      {
        [v5 appendFormat:@"%@ => %@, \n", v7, v8];
      }

      ++v6;
    }

    while (v6 < [allKeys count]);
  }

  [v5 appendString:@"}"];

  return v5;
}

@end