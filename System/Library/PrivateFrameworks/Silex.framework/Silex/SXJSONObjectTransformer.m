@interface SXJSONObjectTransformer
+ (id)transformerWithKey:(id)a3 block:(id)a4;
- (id)transformKey:(id)a3;
- (id)transformObject:(id)a3 otherObject:(id)a4;
@end

@implementation SXJSONObjectTransformer

+ (id)transformerWithKey:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SXJSONObjectTransformer);
  v8 = [v6 copy];

  key = v7->_key;
  v7->_key = v8;

  v10 = [v5 copy];
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

- (id)transformObject:(id)a3 otherObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXJSONObjectTransformer *)self block];
  v9 = (v8)[2](v8, v7, v6);

  return v9;
}

- (id)transformKey:(id)a3
{
  v4 = a3;
  v5 = [(SXJSONObjectTransformer *)self key];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

@end