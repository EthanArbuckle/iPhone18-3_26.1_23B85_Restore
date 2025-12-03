@interface REScriptASTSubscriptExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTSubscriptExpressionNode)initWithExpression:(id)expression startIndex:(id)index endIndex:(id)endIndex;
- (id)dependencies;
@end

@implementation REScriptASTSubscriptExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  type = [currentToken type];

  if (type != 36)
  {
    v12 = 0;
    goto LABEL_14;
  }

  [bufferCopy push];
  [bufferCopy next];
  v8 = [REScriptASTExpressionNode parseBuffer:bufferCopy error:error];
  currentToken2 = [bufferCopy currentToken];
  type2 = [currentToken2 type];

  if (type2 == 38)
  {
    [bufferCopy next];
    v11 = [REScriptASTExpressionNode parseBuffer:bufferCopy error:error];
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
  if (!REExpectTokenTypeInBuffer(bufferCopy, 0x25uLL, error))
  {
LABEL_12:
    [bufferCopy pop];
    v12 = 0;
    goto LABEL_13;
  }

  [bufferCopy next];
  [bufferCopy consume];
  v12 = [[REScriptASTSubscriptExpressionNode alloc] initWithExpression:0 startIndex:v11 endIndex:v8];
LABEL_13:

LABEL_14:

  return v12;
}

- (REScriptASTSubscriptExpressionNode)initWithExpression:(id)expression startIndex:(id)index endIndex:(id)endIndex
{
  expressionCopy = expression;
  indexCopy = index;
  endIndexCopy = endIndex;
  v12 = endIndexCopy;
  if (indexCopy)
  {
    endIndexCopy = indexCopy;
  }

  token = [endIndexCopy token];
  v16.receiver = self;
  v16.super_class = REScriptASTSubscriptExpressionNode;
  v14 = [(REScriptASTNode *)&v16 initWithToken:token];

  if (v14)
  {
    objc_storeStrong(&v14->_expression, expression);
    objc_storeStrong(&v14->_startIndex, index);
    objc_storeStrong(&v14->_endIndex, endIndex);
  }

  return v14;
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