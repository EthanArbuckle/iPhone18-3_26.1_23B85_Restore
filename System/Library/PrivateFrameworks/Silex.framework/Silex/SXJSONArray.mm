@interface SXJSONArray
- (SXJSONArray)initWithValueClassBlock:(id)a3 objectValueClassBlock:(id)a4 purgeBlock:(id)a5 andJSONObject:(id)a6 andVersion:(id)a7;
- (id)NSArray;
- (id)description;
- (id)firstObject;
- (id)lastObject;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
@end

@implementation SXJSONArray

- (SXJSONArray)initWithValueClassBlock:(id)a3 objectValueClassBlock:(id)a4 purgeBlock:(id)a5 andJSONObject:(id)a6 andVersion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    v38.receiver = self;
    v38.super_class = SXJSONArray;
    v17 = [(SXJSONObject *)&v38 init];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->super._specificationVersion, a7);
      v19 = MEMORY[0x1E696AE18];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __97__SXJSONArray_initWithValueClassBlock_objectValueClassBlock_purgeBlock_andJSONObject_andVersion___block_invoke;
      v35[3] = &unk_1E8500860;
      v34 = v14;
      v37 = v14;
      v36 = v16;
      v20 = [v19 predicateWithBlock:v35];
      v21 = [(SXJSONArray *)v15 filteredArrayUsingPredicate:v20];
      json = v18->_json;
      v18->_json = v21;

      v23 = [v13 copy];
      objectValueClassBlock = v18->_objectValueClassBlock;
      v18->_objectValueClassBlock = v23;

      v25 = [v12 copy];
      valueClassBlock = v18->_valueClassBlock;
      v18->_valueClassBlock = v25;

      v18->_count = [(NSArray *)v18->_json count];
      v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v18->_count];
      objects = v18->_objects;
      v18->_objects = v27;

      if (v18->_count)
      {
        v29 = 0;
        do
        {
          v30 = v18->_objects;
          v31 = [MEMORY[0x1E695DFB0] null];
          [(NSMutableArray *)v30 addObject:v31];

          ++v29;
        }

        while (v29 < v18->_count);
      }

      self = v18;
      v14 = v34;
    }

    else
    {
      self = 0;
    }
  }

  else
  {
    v18 = v15;
  }

  v32 = v18;

  return v32;
}

BOOL __97__SXJSONArray_initWithValueClassBlock_objectValueClassBlock_purgeBlock_andJSONObject_andVersion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E695DFB0] null];

  v6 = v4 != v3 && ((v5 = *(a1 + 40)) == 0 || ((*(v5 + 16))(v5, v3, *(a1 + 32)) & 1) == 0) && v3 != 0;
  return v6;
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_count <= a3)
  {
    v5 = 0;
    goto LABEL_23;
  }

  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_objects objectAtIndex:a3];
  os_unfair_lock_unlock(&self->super._unfairLock);
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 != v6)
  {
    goto LABEL_23;
  }

  v7 = [(NSArray *)self->_json objectAtIndex:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectValueClassBlock = self->_objectValueClassBlock;
    if (objectValueClassBlock)
    {
      v9 = objectValueClassBlock[2](objectValueClassBlock, v7, 0, self->super._specificationVersion);
    }

    else
    {
      v11 = [v7 objectForKeyedSubscript:@"type"];
      v9 = (*(self->_valueClassBlock + 2))();
    }

    if ([(objc_class *)v9 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [[v9 alloc] initWithJSONObject:v7 andVersion:self->super._specificationVersion];
    }

    else if ([(objc_class *)v9 isSubclassOfClass:objc_opt_class()])
    {
      v21 = [objc_opt_class() objectValueClassBlockForPropertyWithName:0];
      v13 = [objc_opt_class() valueClassBlockForPropertyWithName:0];
      v14 = [objc_opt_class() purgeClassBlockForPropertyWithName:0];
      v12 = [[SXJSONDictionary alloc] initWithValueClassBlock:v13 objectValueClassBlock:v21 purgeBlock:v14 andJSONObject:v7 andVersion:self->super._specificationVersion];

      v5 = v21;
    }

    else
    {
      if (![(objc_class *)v9 isSubclassOfClass:objc_opt_class()])
      {
        goto LABEL_17;
      }

      v15 = [objc_opt_class() objectValueClassBlockForPropertyWithName:0];
      v16 = [objc_opt_class() valueClassBlockForPropertyWithName:0];
      v12 = [[SXJSONArray alloc] initWithValueClassBlock:v16 objectValueClassBlock:v15 purgeBlock:0 andJSONObject:v7 andVersion:self->super._specificationVersion];

      v5 = v15;
    }

    v5 = v12;
  }

  else if (v7)
  {
    v10 = v7;

    v5 = v10;
LABEL_18:
    os_unfair_lock_lock_with_options();
    v17 = [(NSMutableArray *)self->_objects objectAtIndex:a3];
    v18 = [MEMORY[0x1E695DFB0] null];

    if (v17 == v18)
    {
      [(NSMutableArray *)self->_objects replaceObjectAtIndex:a3 withObject:v5];
    }

    else
    {
      v19 = v17;

      v5 = v19;
    }

    os_unfair_lock_unlock(&self->super._unfairLock);

    goto LABEL_22;
  }

LABEL_17:
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_22:

LABEL_23:

  return v5;
}

- (id)firstObject
{
  v3 = [(SXJSONArray *)self count];
  if (v3)
  {
    v3 = [(SXJSONArray *)self objectAtIndex:0];
  }

  return v3;
}

- (id)lastObject
{
  count = self->_count;
  if (count)
  {
    v4 = [(SXJSONArray *)self objectAtIndex:count - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  var0 = a3->var0;
  if (self->_count - a3->var0 >= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = self->_count - a3->var0;
  }

  a3->var1 = a4;
  a3->var2 = a3->var3;
  if (v7)
  {
    v8 = a4;
    v10 = var0;
    v11 = v7;
    do
    {
      *v8++ = [(SXJSONArray *)self objectAtIndex:v10++];
      --v11;
    }

    while (v11);
  }

  a3->var0 = v7 + var0;
  return v7;
}

- (id)NSArray
{
  v3 = [MEMORY[0x1E695DF70] array];
  if (self->_count)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [(SXJSONArray *)self objectAtIndex:v4];
      [v3 addObject:v6];

      v4 = v5;
    }

    while (self->_count > v5++);
  }

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
  if (self->_count)
  {
    v4 = 0;
    do
    {
      v5 = [(SXJSONArray *)self objectAtIndex:v4];
      v6 = v5;
      if (v4 == self->_count - 1)
      {
        v7 = @"%@";
      }

      else
      {
        v7 = @"%@,\n";
      }

      [v3 appendFormat:v7, v5];

      ++v4;
    }

    while (v4 < self->_count);
  }

  [v3 appendString:@"}"];

  return v3;
}

@end