@interface MTLReversibleValueTransformer
- (MTLReversibleValueTransformer)initWithForwardBlock:(id)block reverseBlock:(id)reverseBlock;
- (id)reverseTransformedValue:(id)value;
- (id)reverseTransformedValue:(id)value success:(BOOL *)success error:(id *)error;
@end

@implementation MTLReversibleValueTransformer

- (id)reverseTransformedValue:(id)value success:(BOOL *)success error:(id *)error
{
  v15 = 1;
  valueCopy = value;
  reverseBlock = [(MTLValueTransformer *)self reverseBlock];
  v14 = 0;
  v10 = (reverseBlock)[2](reverseBlock, valueCopy, &v15, &v14);

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

- (id)reverseTransformedValue:(id)value
{
  v9 = 1;
  valueCopy = value;
  reverseBlock = [(MTLValueTransformer *)self reverseBlock];
  v8 = 0;
  v6 = (reverseBlock)[2](reverseBlock, valueCopy, &v9, &v8);

  return v6;
}

- (MTLReversibleValueTransformer)initWithForwardBlock:(id)block reverseBlock:(id)reverseBlock
{
  blockCopy = block;
  reverseBlockCopy = reverseBlock;
  if (!reverseBlockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MTLValueTransformer.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"reverseBlock != nil"}];
  }

  v12.receiver = self;
  v12.super_class = MTLReversibleValueTransformer;
  v9 = [(MTLValueTransformer *)&v12 initWithForwardBlock:blockCopy reverseBlock:reverseBlockCopy];

  return v9;
}

@end