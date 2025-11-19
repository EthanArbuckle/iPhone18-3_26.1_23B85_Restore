@interface REScriptASTExpressionNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTExpressionNode)initWithPrefixExpression:(id)a3 binaryExpression:(id)a4;
- (id)dependencies;
@end

@implementation REScriptASTExpressionNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [REScriptASTPrefixExpressionNode parseBuffer:v5 error:a4];
  if (v6)
  {
    v7 = [REScriptASTBinaryExpressionListNode parseBuffer:v5 error:a4];
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

- (REScriptASTExpressionNode)initWithPrefixExpression:(id)a3 binaryExpression:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 token];
  v12.receiver = self;
  v12.super_class = REScriptASTExpressionNode;
  v10 = [(REScriptASTNode *)&v12 initWithToken:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_prefixExpression, a3);
    objc_storeStrong(&v10->_binaryExpressions, a4);
  }

  return v10;
}

- (id)dependencies
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(REScriptASTNode *)self->_prefixExpression dependencies];
  [v3 unionSet:v4];

  v5 = [(REScriptASTNode *)self->_binaryExpressions dependencies];
  [v3 unionSet:v5];

  v6 = [v3 copy];

  return v6;
}

@end