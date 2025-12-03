@interface REScriptASTMemberExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTMemberExpressionNode)initWithMember:(id)member expression:(id)expression;
- (id)dependencies;
@end

@implementation REScriptASTMemberExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  type = [currentToken type];

  if (type == 26)
  {
    [bufferCopy push];
    [bufferCopy next];
    if (REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
    {
      currentToken2 = [bufferCopy currentToken];
      [bufferCopy next];
      [bufferCopy consume];
      v9 = [[REScriptASTMemberExpressionNode alloc] initWithMember:currentToken2 expression:0];

      goto LABEL_6;
    }

    [bufferCopy pop];
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (REScriptASTMemberExpressionNode)initWithMember:(id)member expression:(id)expression
{
  memberCopy = member;
  expressionCopy = expression;
  v12.receiver = self;
  v12.super_class = REScriptASTMemberExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:memberCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_member, member);
    objc_storeStrong(&v10->_expression, expression);
  }

  return v10;
}

- (id)dependencies
{
  dependencies = [(REScriptASTNode *)self->_expression dependencies];
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