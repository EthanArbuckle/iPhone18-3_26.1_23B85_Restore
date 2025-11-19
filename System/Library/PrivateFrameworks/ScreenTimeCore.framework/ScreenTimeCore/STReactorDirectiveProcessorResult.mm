@interface STReactorDirectiveProcessorResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToReactorDirectiveProcessorResult:(id)a3;
- (STReactorDirectiveProcessorResult)initWithOutput:(id)a3 processedDirective:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation STReactorDirectiveProcessorResult

- (STReactorDirectiveProcessorResult)initWithOutput:(id)a3 processedDirective:(id)a4
{
  v13.receiver = self;
  v13.super_class = STReactorDirectiveProcessorResult;
  v5 = a4;
  v6 = a3;
  v7 = [(STReactorDirectiveProcessorResult *)&v13 init];
  v8 = [v6 copy];

  output = v7->_output;
  v7->_output = v8;

  v10 = [v5 copy];
  processedDirective = v7->_processedDirective;
  v7->_processedDirective = v10;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(STReactorDirectiveProcessorResult *)self processedDirective];
  v6 = [v5 type] - 1;
  if (v6 > 0x10)
  {
    v7 = @"DoNothing";
  }

  else
  {
    v7 = *(&off_1001A5550 + v6);
  }

  v8 = [(STReactorDirectiveProcessorResult *)self output];
  v9 = [NSString stringWithFormat:@"<%p:%@ { Directive: %@, Output: %@ }>", self, v4, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  processedDirective = self->_processedDirective;
  output = self->_output;

  return [v4 initWithOutput:output processedDirective:processedDirective];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STReactorDirectiveProcessorResult *)self isEqualToReactorDirectiveProcessorResult:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToReactorDirectiveProcessorResult:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v8 = [(STReactorDirectiveProcessorResult *)self output];
  if (v8 || ([(STReactorDirectiveProcessorResult *)v7 output], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(STReactorDirectiveProcessorResult *)self output];
    v5 = [(STReactorDirectiveProcessorResult *)v7 output];
    if (![v4 isEqual:v5])
    {
      v10 = 0;
LABEL_10:

      goto LABEL_11;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v11 = [(STReactorDirectiveProcessorResult *)self processedDirective];
  v12 = [(STReactorDirectiveProcessorResult *)v7 processedDirective];
  v10 = [v11 isEqualToReactorDirective:v12];

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!v8)
  {
  }

LABEL_14:
  return v10;
}

- (unint64_t)hash
{
  v3 = [(STReactorDirectiveProcessorResult *)self output];
  v4 = [v3 hash];
  v5 = [(STReactorDirectiveProcessorResult *)self processedDirective];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end