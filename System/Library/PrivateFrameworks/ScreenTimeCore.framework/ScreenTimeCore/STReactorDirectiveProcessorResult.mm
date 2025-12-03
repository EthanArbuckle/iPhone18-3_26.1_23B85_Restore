@interface STReactorDirectiveProcessorResult
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToReactorDirectiveProcessorResult:(id)result;
- (STReactorDirectiveProcessorResult)initWithOutput:(id)output processedDirective:(id)directive;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation STReactorDirectiveProcessorResult

- (STReactorDirectiveProcessorResult)initWithOutput:(id)output processedDirective:(id)directive
{
  v13.receiver = self;
  v13.super_class = STReactorDirectiveProcessorResult;
  directiveCopy = directive;
  outputCopy = output;
  v7 = [(STReactorDirectiveProcessorResult *)&v13 init];
  v8 = [outputCopy copy];

  output = v7->_output;
  v7->_output = v8;

  v10 = [directiveCopy copy];
  processedDirective = v7->_processedDirective;
  v7->_processedDirective = v10;

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  processedDirective = [(STReactorDirectiveProcessorResult *)self processedDirective];
  v6 = [processedDirective type] - 1;
  if (v6 > 0x10)
  {
    v7 = @"DoNothing";
  }

  else
  {
    v7 = *(&off_1001A5550 + v6);
  }

  output = [(STReactorDirectiveProcessorResult *)self output];
  v9 = [NSString stringWithFormat:@"<%p:%@ { Directive: %@, Output: %@ }>", self, v4, v7, output];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  processedDirective = self->_processedDirective;
  output = self->_output;

  return [v4 initWithOutput:output processedDirective:processedDirective];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STReactorDirectiveProcessorResult *)self isEqualToReactorDirectiveProcessorResult:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToReactorDirectiveProcessorResult:(id)result
{
  resultCopy = result;
  if (self == resultCopy)
  {
    v10 = 1;
    goto LABEL_14;
  }

  output = [(STReactorDirectiveProcessorResult *)self output];
  if (output || ([(STReactorDirectiveProcessorResult *)resultCopy output], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    output2 = [(STReactorDirectiveProcessorResult *)self output];
    output3 = [(STReactorDirectiveProcessorResult *)resultCopy output];
    if (![output2 isEqual:output3])
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

  processedDirective = [(STReactorDirectiveProcessorResult *)self processedDirective];
  processedDirective2 = [(STReactorDirectiveProcessorResult *)resultCopy processedDirective];
  v10 = [processedDirective isEqualToReactorDirective:processedDirective2];

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (!output)
  {
  }

LABEL_14:
  return v10;
}

- (unint64_t)hash
{
  output = [(STReactorDirectiveProcessorResult *)self output];
  v4 = [output hash];
  processedDirective = [(STReactorDirectiveProcessorResult *)self processedDirective];
  v6 = [processedDirective hash];

  return v6 ^ v4;
}

@end