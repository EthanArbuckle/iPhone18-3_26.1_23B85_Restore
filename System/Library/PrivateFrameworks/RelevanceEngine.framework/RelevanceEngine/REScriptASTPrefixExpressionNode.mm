@interface REScriptASTPrefixExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTPrefixExpressionNode)initWithPrefixOperatorToken:(id)token primaryExpression:(id)expression;
@end

@implementation REScriptASTPrefixExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  type = [currentToken type];

  if (type == 21)
  {
    [bufferCopy push];
    currentToken2 = [bufferCopy currentToken];
    [bufferCopy next];
    v9 = [REScriptASTPrimaryExpressionNode parseBuffer:bufferCopy error:error];
    if (v9)
    {
      v10 = [[REScriptASTPrefixExpressionNode alloc] initWithPrefixOperatorToken:currentToken2 primaryExpression:v9];
      [bufferCopy consume];
    }

    else
    {
      [bufferCopy pop];
      v10 = 0;
    }
  }

  else
  {
    v10 = [REScriptASTPrimaryExpressionNode parseBuffer:bufferCopy error:error];
  }

  return v10;
}

- (REScriptASTPrefixExpressionNode)initWithPrefixOperatorToken:(id)token primaryExpression:(id)expression
{
  tokenCopy = token;
  expressionCopy = expression;
  v12.receiver = self;
  v12.super_class = REScriptASTPrefixExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:tokenCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prefixOperator, token);
    objc_storeStrong(&v10->_node, expression);
  }

  return v10;
}

@end