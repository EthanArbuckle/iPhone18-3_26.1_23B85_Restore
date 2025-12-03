@interface MTLValueTransformer
+ (id)reversibleTransformerWithBlock:(id)block;
+ (id)reversibleTransformerWithForwardBlock:(id)block reverseBlock:(id)reverseBlock;
+ (id)transformerUsingForwardBlock:(id)block;
+ (id)transformerUsingForwardBlock:(id)block reverseBlock:(id)reverseBlock;
+ (id)transformerWithBlock:(id)block;
- (MTLValueTransformer)initWithForwardBlock:(id)block reverseBlock:(id)reverseBlock;
- (id)transformedValue:(id)value;
- (id)transformedValue:(id)value success:(BOOL *)success error:(id *)error;
@end

@implementation MTLValueTransformer

- (id)transformedValue:(id)value success:(BOOL *)success error:(id *)error
{
  v15 = 1;
  valueCopy = value;
  forwardBlock = [(MTLValueTransformer *)self forwardBlock];
  v14 = 0;
  v10 = (forwardBlock)[2](forwardBlock, valueCopy, &v15, &v14);

  v11 = v14;
  if (success)
  {
    *success = v15;
  }

  if (error)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

- (id)transformedValue:(id)value
{
  v9 = 1;
  valueCopy = value;
  forwardBlock = [(MTLValueTransformer *)self forwardBlock];
  v8 = 0;
  v6 = (forwardBlock)[2](forwardBlock, valueCopy, &v9, &v8);

  return v6;
}

- (MTLValueTransformer)initWithForwardBlock:(id)block reverseBlock:(id)reverseBlock
{
  blockCopy = block;
  reverseBlockCopy = reverseBlock;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLValueTransformer.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"forwardBlock != nil"}];
  }

  v17.receiver = self;
  v17.super_class = MTLValueTransformer;
  v9 = [(MTLValueTransformer *)&v17 init];
  if (v9)
  {
    v10 = [blockCopy copy];
    forwardBlock = v9->_forwardBlock;
    v9->_forwardBlock = v10;

    v12 = [reverseBlockCopy copy];
    reverseBlock = v9->_reverseBlock;
    v9->_reverseBlock = v12;

    v14 = v9;
  }

  return v9;
}

+ (id)transformerUsingForwardBlock:(id)block reverseBlock:(id)reverseBlock
{
  reverseBlockCopy = reverseBlock;
  blockCopy = block;
  v7 = [[MTLReversibleValueTransformer alloc] initWithForwardBlock:blockCopy reverseBlock:reverseBlockCopy];

  return v7;
}

+ (id)transformerUsingForwardBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithForwardBlock:blockCopy reverseBlock:0];

  return v5;
}

+ (id)reversibleTransformerWithForwardBlock:(id)block reverseBlock:(id)reverseBlock
{
  blockCopy = block;
  reverseBlockCopy = reverseBlock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__MTLValueTransformer_Deprecated__reversibleTransformerWithForwardBlock_reverseBlock___block_invoke;
  v13[3] = &unk_1E83732B0;
  v14 = blockCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__MTLValueTransformer_Deprecated__reversibleTransformerWithForwardBlock_reverseBlock___block_invoke_2;
  v11[3] = &unk_1E83732B0;
  v7 = reverseBlockCopy;
  v8 = blockCopy;
  v9 = [self transformerUsingForwardBlock:v13 reverseBlock:v11];

  return v9;
}

+ (id)reversibleTransformerWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MTLValueTransformer_Deprecated__reversibleTransformerWithBlock___block_invoke;
  v8[3] = &unk_1E83732B0;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [self transformerUsingReversibleBlock:v8];

  return v6;
}

+ (id)transformerWithBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MTLValueTransformer_Deprecated__transformerWithBlock___block_invoke;
  v8[3] = &unk_1E83732B0;
  v9 = blockCopy;
  v5 = blockCopy;
  v6 = [self transformerUsingForwardBlock:v8];

  return v6;
}

@end