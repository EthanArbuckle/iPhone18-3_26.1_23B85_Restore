@interface REScriptASTDeclarationNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTDeclarationNode)initWithName:(id)name type:(id)type expression:(id)expression;
- (id)dependencies;
@end

@implementation REScriptASTDeclarationNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (!REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
  {
    v11 = 0;
    goto LABEL_17;
  }

  currentToken = [bufferCopy currentToken];
  [bufferCopy push];
  [bufferCopy next];
  if (REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
  {
    currentToken2 = [bufferCopy currentToken];
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
        goto LABEL_14;
      }
    }

    else
    {
      firstObject = v8;
      if (!firstObject)
      {
        goto LABEL_14;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      binaryOperator = [firstObject binaryOperator];
      if ([binaryOperator type] == 30)
      {
        binaryOperator2 = [firstObject binaryOperator];
        type = [binaryOperator2 type];

        if (type == 29)
        {
          [bufferCopy consume];
LABEL_15:
          v11 = [[REScriptASTDeclarationNode alloc] initWithName:currentToken2 type:currentToken expression:v8];

          goto LABEL_16;
        }
      }

      else
      {
      }
    }

LABEL_14:
    [bufferCopy pop];

    v8 = 0;
    goto LABEL_15;
  }

  [bufferCopy pop];
  v11 = 0;
LABEL_16:

LABEL_17:

  return v11;
}

- (REScriptASTDeclarationNode)initWithName:(id)name type:(id)type expression:(id)expression
{
  nameCopy = name;
  typeCopy = type;
  expressionCopy = expression;
  v15.receiver = self;
  v15.super_class = REScriptASTDeclarationNode;
  v12 = [(REScriptASTNode *)&v15 initWithToken:nameCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_type, type);
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