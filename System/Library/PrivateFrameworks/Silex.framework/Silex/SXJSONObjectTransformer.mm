@interface SXJSONObjectTransformer
+ (id)transformerWithKey:(id)key block:(id)block;
- (id)transformKey:(id)key;
- (id)transformObject:(id)object otherObject:(id)otherObject;
@end

@implementation SXJSONObjectTransformer

+ (id)transformerWithKey:(id)key block:(id)block
{
  blockCopy = block;
  keyCopy = key;
  v7 = objc_alloc_init(SXJSONObjectTransformer);
  v8 = [keyCopy copy];

  key = v7->_key;
  v7->_key = v8;

  v10 = [blockCopy copy];
  block = v7->_block;
  v7->_block = v10;

  return v7;
}

id __59__SXJSONObjectTransformer_concatenatingTransformerWithKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 | v5)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v6 = v7;
    if (v5)
    {
      [v7 addObject:v5];
    }

    if (v4)
    {
      [v6 addObject:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __53__SXJSONObjectTransformer_mergingTransformerWithKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 | v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 addObjectsFromArray:v5];
    }

    else if (v5)
    {
      [v6 addObject:v5];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 addObjectsFromArray:v4];
    }

    else if (v4)
    {
      [v6 addObject:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transformObject:(id)object otherObject:(id)otherObject
{
  otherObjectCopy = otherObject;
  objectCopy = object;
  block = [(SXJSONObjectTransformer *)self block];
  v9 = (block)[2](block, objectCopy, otherObjectCopy);

  return v9;
}

- (id)transformKey:(id)key
{
  keyCopy = key;
  v5 = [(SXJSONObjectTransformer *)self key];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = keyCopy;
  }

  v8 = v7;

  return v7;
}

@end