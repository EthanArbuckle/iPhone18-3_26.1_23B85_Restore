@interface MTLValueTransformer
+ (id)reversibleTransformerWithBlock:(id)a3;
+ (id)reversibleTransformerWithForwardBlock:(id)a3 reverseBlock:(id)a4;
+ (id)transformerUsingForwardBlock:(id)a3;
+ (id)transformerUsingForwardBlock:(id)a3 reverseBlock:(id)a4;
+ (id)transformerWithBlock:(id)a3;
- (MTLValueTransformer)initWithForwardBlock:(id)a3 reverseBlock:(id)a4;
- (id)transformedValue:(id)a3;
- (id)transformedValue:(id)a3 success:(BOOL *)a4 error:(id *)a5;
@end

@implementation MTLValueTransformer

- (id)transformedValue:(id)a3 success:(BOOL *)a4 error:(id *)a5
{
  v15 = 1;
  v8 = a3;
  v9 = [(MTLValueTransformer *)self forwardBlock];
  v14 = 0;
  v10 = (v9)[2](v9, v8, &v15, &v14);

  v11 = v14;
  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    v12 = v11;
    *a5 = v11;
  }

  return v10;
}

- (id)transformedValue:(id)a3
{
  v9 = 1;
  v4 = a3;
  v5 = [(MTLValueTransformer *)self forwardBlock];
  v8 = 0;
  v6 = (v5)[2](v5, v4, &v9, &v8);

  return v6;
}

- (MTLValueTransformer)initWithForwardBlock:(id)a3 reverseBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MTLValueTransformer.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"forwardBlock != nil"}];
  }

  v17.receiver = self;
  v17.super_class = MTLValueTransformer;
  v9 = [(MTLValueTransformer *)&v17 init];
  if (v9)
  {
    v10 = [v7 copy];
    forwardBlock = v9->_forwardBlock;
    v9->_forwardBlock = v10;

    v12 = [v8 copy];
    reverseBlock = v9->_reverseBlock;
    v9->_reverseBlock = v12;

    v14 = v9;
  }

  return v9;
}

+ (id)transformerUsingForwardBlock:(id)a3 reverseBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MTLReversibleValueTransformer alloc] initWithForwardBlock:v6 reverseBlock:v5];

  return v7;
}

+ (id)transformerUsingForwardBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithForwardBlock:v4 reverseBlock:0];

  return v5;
}

+ (id)reversibleTransformerWithForwardBlock:(id)a3 reverseBlock:(id)a4
{
  v6 = a3;
  v12 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__MTLValueTransformer_Deprecated__reversibleTransformerWithForwardBlock_reverseBlock___block_invoke;
  v13[3] = &unk_1E83732B0;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__MTLValueTransformer_Deprecated__reversibleTransformerWithForwardBlock_reverseBlock___block_invoke_2;
  v11[3] = &unk_1E83732B0;
  v7 = v12;
  v8 = v6;
  v9 = [a1 transformerUsingForwardBlock:v13 reverseBlock:v11];

  return v9;
}

+ (id)reversibleTransformerWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MTLValueTransformer_Deprecated__reversibleTransformerWithBlock___block_invoke;
  v8[3] = &unk_1E83732B0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 transformerUsingReversibleBlock:v8];

  return v6;
}

+ (id)transformerWithBlock:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTLValueTransformer_Deprecated__transformerWithBlock___block_invoke;
  v8[3] = &unk_1E83732B0;
  v9 = v4;
  v5 = v4;
  v6 = [a1 transformerUsingForwardBlock:v8];

  return v6;
}

@end