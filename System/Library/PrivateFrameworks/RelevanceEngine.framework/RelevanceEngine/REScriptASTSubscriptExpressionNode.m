@interface REScriptASTSubscriptExpressionNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTSubscriptExpressionNode)initWithExpression:(id)a3 startIndex:(id)a4 endIndex:(id)a5;
- (id)dependencies;
@end

@implementation REScriptASTSubscriptExpressionNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 currentToken];
  v7 = [v6 type];

  if (v7 != 36)
  {
    v12 = 0;
    goto LABEL_14;
  }

  [v5 push];
  [v5 next];
  v8 = [REScriptASTExpressionNode parseBuffer:v5 error:a4];
  v9 = [v5 currentToken];
  v10 = [v9 type];

  if (v10 == 38)
  {
    [v5 next];
    v11 = [REScriptASTExpressionNode parseBuffer:v5 error:a4];
  }

  else
  {
    if (v8)
    {
      v11 = v8;
      goto LABEL_9;
    }

    v11 = 0;
  }

  if (!(v8 | v11))
  {
    v11 = 0;
    goto LABEL_12;
  }

LABEL_9:
  if (!REExpectTokenTypeInBuffer(v5, 0x25uLL, a4))
  {
LABEL_12:
    [v5 pop];
    v12 = 0;
    goto LABEL_13;
  }

  [v5 next];
  [v5 consume];
  v12 = [[REScriptASTSubscriptExpressionNode alloc] initWithExpression:0 startIndex:v11 endIndex:v8];
LABEL_13:

LABEL_14:

  return v12;
}

- (REScriptASTSubscriptExpressionNode)initWithExpression:(id)a3 startIndex:(id)a4 endIndex:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    v11 = v10;
  }

  v13 = [v11 token];
  v16.receiver = self;
  v16.super_class = REScriptASTSubscriptExpressionNode;
  v14 = [(REScriptASTNode *)&v16 initWithToken:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_expression, a3);
    objc_storeStrong(&v14->_startIndex, a4);
    objc_storeStrong(&v14->_endIndex, a5);
  }

  return v14;
}

- (id)dependencies
{
  v2 = [(REScriptASTNode *)self->_expression dependencies];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

@end