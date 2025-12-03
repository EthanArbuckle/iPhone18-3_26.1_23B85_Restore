@interface REScriptASTExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTExpressionNode)initWithPrefixExpression:(id)expression binaryExpression:(id)binaryExpression;
- (id)dependencies;
@end

@implementation REScriptASTExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  v6 = [REScriptASTPrefixExpressionNode parseBuffer:bufferCopy error:error];
  if (v6)
  {
    v7 = [REScriptASTBinaryExpressionListNode parseBuffer:bufferCopy error:error];
    if (v7)
    {
      v8 = [[REScriptASTExpressionNode alloc] initWithPrefixExpression:v6 binaryExpression:v7];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (REScriptASTExpressionNode)initWithPrefixExpression:(id)expression binaryExpression:(id)binaryExpression
{
  expressionCopy = expression;
  binaryExpressionCopy = binaryExpression;
  token = [expressionCopy token];
  v12.receiver = self;
  v12.super_class = REScriptASTExpressionNode;
  v10 = [(REScriptASTNode *)&v12 initWithToken:token];

  if (v10)
  {
    objc_storeStrong(&v10->_prefixExpression, expression);
    objc_storeStrong(&v10->_binaryExpressions, binaryExpression);
  }

  return v10;
}

- (id)dependencies
{
  v3 = [MEMORY[0x277CBEB58] set];
  dependencies = [(REScriptASTNode *)self->_prefixExpression dependencies];
  [v3 unionSet:dependencies];

  dependencies2 = [(REScriptASTNode *)self->_binaryExpressions dependencies];
  [v3 unionSet:dependencies2];

  v6 = [v3 copy];

  return v6;
}

@end