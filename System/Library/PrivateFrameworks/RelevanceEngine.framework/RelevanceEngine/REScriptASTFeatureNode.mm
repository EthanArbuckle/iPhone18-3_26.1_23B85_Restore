@interface REScriptASTFeatureNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTFeatureNode)initWithName:(id)name options:(id)options expression:(id)expression;
- (id)dependencies;
@end

@implementation REScriptASTFeatureNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if (!REExpectTokenTypeInBuffer(bufferCopy, 0xCuLL, error))
  {
    v11 = 0;
    goto LABEL_21;
  }

  [bufferCopy push];
  [bufferCopy next];
  v6 = REScriptParseOptionsValues(bufferCopy, error);
  if (v6 && REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
  {
    currentToken = [bufferCopy currentToken];
    [bufferCopy next];
    [bufferCopy consume];
    [bufferCopy push];
    v8 = [REScriptASTBinaryExpressionListNode parseBuffer:bufferCopy error:error];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      expressions = [v8 expressions];
      firstObject = [expressions firstObject];

      if (!firstObject)
      {
        goto LABEL_17;
      }
    }

    else
    {
      firstObject = v8;
      if (!firstObject)
      {
        goto LABEL_17;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      binaryOperator = [firstObject binaryOperator];
      type = [binaryOperator type];

      if (type == 30)
      {
        [bufferCopy consume];
LABEL_18:
        v11 = [[REScriptASTFeatureNode alloc] initWithName:currentToken options:v6 expression:v8];
LABEL_19:

        goto LABEL_20;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (error)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = REDescriptionForTokenType(0x1EuLL);
        binaryOperator2 = [firstObject binaryOperator];
        v17 = REDescriptionForTokenType([binaryOperator2 type]);
        v18 = [v14 stringWithFormat:@"Expecting '%@' token but found '%@'", v15, v17];

        v23 = @"REErrorTokenKey";
        binaryOperator3 = [firstObject binaryOperator];
        v24[0] = binaryOperator3;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        *error = RECreateErrorWithCodeMessageAndUseInfo(204, v18, v20);
      }

      [bufferCopy pop];

      v8 = 0;
      v11 = 0;
      goto LABEL_19;
    }

LABEL_17:
    [bufferCopy pop];

    v8 = 0;
    goto LABEL_18;
  }

  [bufferCopy pop];
  v11 = 0;
LABEL_20:

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (REScriptASTFeatureNode)initWithName:(id)name options:(id)options expression:(id)expression
{
  nameCopy = name;
  optionsCopy = options;
  expressionCopy = expression;
  v15.receiver = self;
  v15.super_class = REScriptASTFeatureNode;
  v12 = [(REScriptASTNode *)&v15 initWithToken:nameCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_options, options);
    objc_storeStrong(&v13->_value, expression);
  }

  return v13;
}

- (id)dependencies
{
  dependencies = [(REScriptASTNode *)self->_value dependencies];
  v3 = dependencies;
  if (dependencies)
  {
    v4 = dependencies;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

@end