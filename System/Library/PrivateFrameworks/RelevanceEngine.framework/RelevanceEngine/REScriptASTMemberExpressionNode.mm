@interface REScriptASTMemberExpressionNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTMemberExpressionNode)initWithMember:(id)a3 expression:(id)a4;
- (id)dependencies;
@end

@implementation REScriptASTMemberExpressionNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 currentToken];
  v7 = [v6 type];

  if (v7 == 26)
  {
    [v5 push];
    [v5 next];
    if (REExpectTokenTypeInBuffer(v5, 6uLL, a4))
    {
      v8 = [v5 currentToken];
      [v5 next];
      [v5 consume];
      v9 = [[REScriptASTMemberExpressionNode alloc] initWithMember:v8 expression:0];

      goto LABEL_6;
    }

    [v5 pop];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (REScriptASTMemberExpressionNode)initWithMember:(id)a3 expression:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REScriptASTMemberExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_member, a3);
    objc_storeStrong(&v10->_expression, a4);
  }

  return v10;
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