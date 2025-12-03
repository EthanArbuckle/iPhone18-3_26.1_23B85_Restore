@interface REScriptASTObjectBuilder
- (REScriptASTObjectBuilder)initWithTable:(id)table;
- (id)_errorForUnsupportedNode:(id)node;
- (id)buildObjectWithBinaryExpressionListNode:(id)node previousExpression:(id)expression error:(id *)error;
- (id)buildObjectWithExpressionNode:(id)node error:(id *)error;
- (id)buildObjectWithNode:(id)node error:(id *)error;
- (id)buildObjectWithTopLevelBinaryExpression:(id)expression error:(id *)error;
- (id)buildObjectWithTopLevelBinaryExpressionListNode:(id)node error:(id *)error;
@end

@implementation REScriptASTObjectBuilder

- (REScriptASTObjectBuilder)initWithTable:(id)table
{
  tableCopy = table;
  v9.receiver = self;
  v9.super_class = REScriptASTObjectBuilder;
  v6 = [(REScriptASTObjectBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_table, table);
  }

  return v7;
}

- (id)buildObjectWithNode:(id)node error:(id *)error
{
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    v7 = &v20;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithIdentifierNode:nodeCopy error:&v20];
LABEL_19:
    v9 = v8;
    v10 = *v7;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0;
    v7 = &v19;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithLiteralNode:nodeCopy error:&v19];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v7 = &v18;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithExpressionNode:nodeCopy error:&v18];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0;
    v7 = &v17;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithPrefixExpressionNode:nodeCopy error:&v17];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    v7 = &v16;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithFunctionNode:nodeCopy error:&v16];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0;
    v7 = &v15;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithMemberExpressionNode:nodeCopy error:&v15];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v7 = &v14;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithSubscriptExpressionNode:nodeCopy error:&v14];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v7 = &v13;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithTopLevelBinaryExpression:nodeCopy error:&v13];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v7 = &v12;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithTopLevelBinaryExpressionListNode:nodeCopy error:&v12];
    goto LABEL_19;
  }

  v10 = 0;
  v9 = 0;
LABEL_20:
  if (!(v9 | v10))
  {
    v10 = [(REScriptASTObjectBuilder *)self _errorForUnsupportedNode:nodeCopy];
  }

  if (error)
  {
    v10 = v10;
    *error = v10;
  }

  return v9;
}

- (id)buildObjectWithExpressionNode:(id)node error:(id *)error
{
  nodeCopy = node;
  prefixExpression = [nodeCopy prefixExpression];
  v8 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:prefixExpression error:error];

  binaryExpressions = [nodeCopy binaryExpressions];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionListNode:binaryExpressions previousExpression:v8 error:error];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionNode:binaryExpressions previousExpression:v8 error:error];
LABEL_5:
    v11 = v10;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (*error)
  {
    v11 = 0;
  }

  else
  {
    [(REScriptASTObjectBuilder *)self _errorForUnsupportedNode:binaryExpressions];
    *error = v11 = 0;
  }

LABEL_9:

  return v11;
}

- (id)buildObjectWithTopLevelBinaryExpression:(id)expression error:(id *)error
{
  expressionCopy = expression;
  binaryOperator = [expressionCopy binaryOperator];
  type = [binaryOperator type];

  if ((type - 29) > 1)
  {
    v10 = 0;
  }

  else
  {
    expression = [expressionCopy expression];
    v10 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:expression error:error];
  }

  return v10;
}

- (id)buildObjectWithTopLevelBinaryExpressionListNode:(id)node error:(id *)error
{
  nodeCopy = node;
  expressions = [nodeCopy expressions];
  firstObject = [expressions firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(REScriptASTObjectBuilder *)self buildObjectWithTopLevelBinaryExpression:firstObject error:error], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    expressions2 = [nodeCopy expressions];
    v12 = [expressions2 mutableCopy];

    [v12 removeObjectAtIndex:0];
    v13 = [[REScriptASTBinaryExpressionListNode alloc] initWithExpressions:v12];
    v14 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionListNode:v13 previousExpression:v10 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)buildObjectWithBinaryExpressionListNode:(id)node previousExpression:(id)expression error:(id *)error
{
  nodeCopy = node;
  expressionCopy = expression;
  expressions = [nodeCopy expressions];
  v11 = [expressions count];

  v12 = expressionCopy;
  if (v11)
  {
    v13 = 0;
    v14 = expressionCopy;
    while (1)
    {
      expressions2 = [nodeCopy expressions];
      v16 = [expressions2 objectAtIndexedSubscript:v13];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v17 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionNode:v16 previousExpression:v14 error:error];
      if (!v17)
      {
        break;
      }

      v12 = v17;

      ++v13;
      v14 = v12;
      if (v11 == v13)
      {
        goto LABEL_6;
      }
    }

    if (error && !*error)
    {
      *error = [(REScriptASTObjectBuilder *)self _errorForUnsupportedNode:v16];
    }

    v18 = 0;
  }

  else
  {
LABEL_6:
    v14 = v12;
    v18 = v14;
  }

  return v18;
}

- (id)_errorForUnsupportedNode:(id)node
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  nodeCopy = node;
  objectTypeErrorDescription = [(REScriptASTObjectBuilder *)self objectTypeErrorDescription];
  v7 = [v4 stringWithFormat:@"Unsupported expression found when creating %@", objectTypeErrorDescription];

  v13 = @"REErrorTokenKey";
  token = [nodeCopy token];

  v14[0] = token;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = RECreateErrorWithCodeMessageAndUseInfo(209, v7, v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end