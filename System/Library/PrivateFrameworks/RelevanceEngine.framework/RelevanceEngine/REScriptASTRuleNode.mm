@interface REScriptASTRuleNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTRuleNode)initWithType:(id)a3 options:(id)a4 name:(id)a5 expression:(id)a6;
@end

@implementation REScriptASTRuleNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 currentToken];
  v7 = [v6 type];

  if ((v7 - 13) < 3)
  {
    v8 = [v5 currentToken];
    [v5 push];
    [v5 next];
    v9 = REScriptParseOptionsValues(v5, a4);
    if (!v9 || !REExpectTokenTypeInBuffer(v5, 6uLL, a4))
    {
      [v5 pop];
      a4 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v10 = [v5 currentToken];
    [v5 next];
    if (!REExpectTokenTypeInBuffer(v5, 0x22uLL, a4))
    {
      [v5 pop];
      a4 = 0;
LABEL_15:

      goto LABEL_16;
    }

    [v5 next];
    v11 = [REScriptASTExpressionNode parseBuffer:v5 error:a4];
    if (v11)
    {
      if (REExpectTokenTypeInBuffer(v5, 0x23uLL, a4))
      {
        [v5 next];
        [v5 consume];
        v12 = [REScriptASTRuleNode alloc];
        v13 = [v9 copy];
        a4 = [(REScriptASTRuleNode *)v12 initWithType:v8 options:v13 name:v10 expression:v11];

LABEL_14:
        goto LABEL_15;
      }

      [v5 pop];
    }

    a4 = 0;
    goto LABEL_14;
  }

  if (a4)
  {
    v14 = [v5 currentToken];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v14 value];
    v17 = [v15 stringWithFormat:@"Unexpected token %@ found. Expecting rule type token.", v16];

    v21 = @"REErrorTokenKey";
    v22[0] = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *a4 = RECreateErrorWithCodeMessageAndUseInfo(204, v17, v18);

    a4 = 0;
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];

  return a4;
}

- (REScriptASTRuleNode)initWithType:(id)a3 options:(id)a4 name:(id)a5 expression:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = REScriptASTRuleNode;
  v15 = [(REScriptASTNode *)&v18 initWithToken:v11];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_type, a3);
    objc_storeStrong(&v16->_name, a5);
    objc_storeStrong(&v16->_options, a4);
    objc_storeStrong(&v16->_expression, a6);
  }

  return v16;
}

@end