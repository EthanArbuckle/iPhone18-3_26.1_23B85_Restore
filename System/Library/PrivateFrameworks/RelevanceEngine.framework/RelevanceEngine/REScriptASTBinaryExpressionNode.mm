@interface REScriptASTBinaryExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTBinaryExpressionNode)initWithOperator:(id)operator expression:(id)expression;
@end

@implementation REScriptASTBinaryExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  currentToken2 = [bufferCopy currentToken];
  type = [currentToken2 type];

  if (type > 0x2D || ((1 << type) & 0x3F0070180000) == 0)
  {
    if (error)
    {
      v14 = MEMORY[0x277CCACA8];
      value = [currentToken value];
      v16 = [v14 stringWithFormat:@"Unexpected token %@ found. Expecting operator token.", value];

      v18 = @"REErrorTokenKey";
      v19[0] = currentToken;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = RECreateErrorWithCodeMessageAndUseInfo(204, v16, v17);
    }

    v11 = 0;
  }

  else
  {
    [bufferCopy push];
    [bufferCopy next];
    v10 = [REScriptASTPrefixExpressionNode parseBuffer:bufferCopy error:error];
    if (v10)
    {
      [bufferCopy consume];
      v11 = [[REScriptASTBinaryExpressionNode alloc] initWithOperator:currentToken expression:v10];
    }

    else
    {
      [bufferCopy pop];
      v11 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (REScriptASTBinaryExpressionNode)initWithOperator:(id)operator expression:(id)expression
{
  operatorCopy = operator;
  expressionCopy = expression;
  v12.receiver = self;
  v12.super_class = REScriptASTBinaryExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:operatorCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binaryOperator, operator);
    objc_storeStrong(&v10->_expression, expression);
  }

  return v10;
}

@end