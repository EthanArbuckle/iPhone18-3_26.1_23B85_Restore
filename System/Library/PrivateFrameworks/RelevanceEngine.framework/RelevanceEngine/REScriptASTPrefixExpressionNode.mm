@interface REScriptASTPrefixExpressionNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTPrefixExpressionNode)initWithPrefixOperatorToken:(id)a3 primaryExpression:(id)a4;
@end

@implementation REScriptASTPrefixExpressionNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 currentToken];
  v7 = [v6 type];

  if (v7 == 21)
  {
    [v5 push];
    v8 = [v5 currentToken];
    [v5 next];
    v9 = [REScriptASTPrimaryExpressionNode parseBuffer:v5 error:a4];
    if (v9)
    {
      v10 = [[REScriptASTPrefixExpressionNode alloc] initWithPrefixOperatorToken:v8 primaryExpression:v9];
      [v5 consume];
    }

    else
    {
      [v5 pop];
      v10 = 0;
    }
  }

  else
  {
    v10 = [REScriptASTPrimaryExpressionNode parseBuffer:v5 error:a4];
  }

  return v10;
}

- (REScriptASTPrefixExpressionNode)initWithPrefixOperatorToken:(id)a3 primaryExpression:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REScriptASTPrefixExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_prefixOperator, a3);
    objc_storeStrong(&v10->_node, a4);
  }

  return v10;
}

@end