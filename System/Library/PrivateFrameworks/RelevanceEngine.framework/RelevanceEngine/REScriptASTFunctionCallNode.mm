@interface REScriptASTFunctionCallNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
- (REScriptASTFunctionCallNode)initWithFunctionName:(id)name arguments:(id)arguments;
- (id)dependencies;
@end

@implementation REScriptASTFunctionCallNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  if (!REExpectTokenTypeInBuffer(bufferCopy, 6uLL, error))
  {
    v11 = 0;
    goto LABEL_19;
  }

  currentToken = [bufferCopy currentToken];
  [bufferCopy push];
  [bufferCopy next];
  if (REExpectTokenTypeInBuffer(bufferCopy, 0x20uLL, error))
  {
    [bufferCopy next];
    array = [MEMORY[0x277CBEB18] array];
    v8 = [REScriptASTExpressionNode parseBuffer:bufferCopy error:error];
    if (v8)
    {
      v9 = v8;
      [array addObject:v8];
      if (REExpectTokenTypeInBuffer(bufferCopy, 0x1BuLL, error))
      {
        while (1)
        {
          [bufferCopy next];
          v10 = [REScriptASTExpressionNode parseBuffer:bufferCopy error:error];

          if (!v10)
          {
            break;
          }

          [array addObject:v10];
          v9 = v10;
          if (!REExpectTokenTypeInBuffer(bufferCopy, 0x1BuLL, error))
          {
            goto LABEL_12;
          }
        }

        [bufferCopy pop];
        goto LABEL_16;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

LABEL_12:
    if (REExpectTokenTypeInBuffer(bufferCopy, 0x21uLL, error))
    {
      [bufferCopy next];
      [bufferCopy consume];
      v12 = [REScriptASTFunctionCallNode alloc];
      v13 = [array copy];
      v11 = [(REScriptASTFunctionCallNode *)v12 initWithFunctionName:currentToken arguments:v13];

LABEL_17:
      goto LABEL_18;
    }

    [bufferCopy pop];

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  [bufferCopy pop];
  v11 = 0;
LABEL_18:

LABEL_19:

  return v11;
}

- (REScriptASTFunctionCallNode)initWithFunctionName:(id)name arguments:(id)arguments
{
  nameCopy = name;
  argumentsCopy = arguments;
  v12.receiver = self;
  v12.super_class = REScriptASTFunctionCallNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:nameCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_functionIdentifier, name);
    objc_storeStrong(&v10->_arguments, arguments);
  }

  return v10;
}

- (id)dependencies
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_arguments;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dependencies = [*(*(&v13 + 1) + 8 * i) dependencies];
        [v3 unionSet:dependencies];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end