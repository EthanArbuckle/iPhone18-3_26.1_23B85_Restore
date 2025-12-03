@interface REScriptASTRuleNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTRuleNode)initWithType:(id)type options:(id)options name:(id)name expression:(id)expression;
@end

@implementation REScriptASTRuleNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  type = [currentToken type];

  if ((type - 13) < 3)
  {
    currentToken2 = [bufferCopy currentToken];
    [bufferCopy push];
    [bufferCopy next];
    v9 = REScriptParseOptionsValues(bufferCopy, error);
    if (!v9 || !REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
    {
      [bufferCopy pop];
      error = 0;
LABEL_16:

      goto LABEL_17;
    }

    currentToken3 = [bufferCopy currentToken];
    [bufferCopy next];
    if (!REExpectTokenTypeInBuffer(bufferCopy, 0x22uLL, error))
    {
      [bufferCopy pop];
      error = 0;
LABEL_15:

      goto LABEL_16;
    }

    [bufferCopy next];
    v11 = [REScriptASTExpressionNode parseBuffer:bufferCopy error:error];
    if (v11)
    {
      if (REExpectTokenTypeInBuffer(bufferCopy, 0x23uLL, error))
      {
        [bufferCopy next];
        [bufferCopy consume];
        v12 = [REScriptASTRuleNode alloc];
        v13 = [v9 copy];
        error = [(REScriptASTRuleNode *)v12 initWithType:currentToken2 options:v13 name:currentToken3 expression:v11];

LABEL_14:
        goto LABEL_15;
      }

      [bufferCopy pop];
    }

    error = 0;
    goto LABEL_14;
  }

  if (error)
  {
    currentToken4 = [bufferCopy currentToken];
    v15 = MEMORY[0x277CCACA8];
    value = [currentToken4 value];
    v17 = [v15 stringWithFormat:@"Unexpected token %@ found. Expecting rule type token.", value];

    v21 = @"REErrorTokenKey";
    v22[0] = currentToken4;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(204, v17, v18);

    error = 0;
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return error;
}

- (REScriptASTRuleNode)initWithType:(id)type options:(id)options name:(id)name expression:(id)expression
{
  typeCopy = type;
  optionsCopy = options;
  nameCopy = name;
  expressionCopy = expression;
  v18.receiver = self;
  v18.super_class = REScriptASTRuleNode;
  v15 = [(REScriptASTNode *)&v18 initWithToken:typeCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, type);
    objc_storeStrong(&v16->_name, name);
    objc_storeStrong(&v16->_options, options);
    objc_storeStrong(&v16->_expression, expression);
  }

  return v16;
}

@end