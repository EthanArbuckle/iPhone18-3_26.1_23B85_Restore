@interface MTLReversibleValueTransformer
- (MTLReversibleValueTransformer)initWithForwardBlock:(id)a3 reverseBlock:(id)a4;
- (id)reverseTransformedValue:(id)a3;
- (id)reverseTransformedValue:(id)a3 success:(BOOL *)a4 error:(id *)a5;
@end

@implementation MTLReversibleValueTransformer

- (id)reverseTransformedValue:(id)a3 success:(BOOL *)a4 error:(id *)a5
{
  v15 = 1;
  v8 = a3;
  v9 = [(MTLValueTransformer *)self reverseBlock];
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

- (id)reverseTransformedValue:(id)a3
{
  v9 = 1;
  v4 = a3;
  v5 = [(MTLValueTransformer *)self reverseBlock];
  v8 = 0;
  v6 = (v5)[2](v5, v4, &v9, &v8);

  return v6;
}

- (MTLReversibleValueTransformer)initWithForwardBlock:(id)a3 reverseBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MTLValueTransformer.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"reverseBlock != nil"}];
  }

  v12.receiver = self;
  v12.super_class = MTLReversibleValueTransformer;
  v9 = [(MTLValueTransformer *)&v12 initWithForwardBlock:v7 reverseBlock:v8];

  return v9;
}

@end