@interface REScriptASTObjectBuilder
- (REScriptASTObjectBuilder)initWithTable:(id)a3;
- (id)_errorForUnsupportedNode:(id)a3;
- (id)buildObjectWithBinaryExpressionListNode:(id)a3 previousExpression:(id)a4 error:(id *)a5;
- (id)buildObjectWithExpressionNode:(id)a3 error:(id *)a4;
- (id)buildObjectWithNode:(id)a3 error:(id *)a4;
- (id)buildObjectWithTopLevelBinaryExpression:(id)a3 error:(id *)a4;
- (id)buildObjectWithTopLevelBinaryExpressionListNode:(id)a3 error:(id *)a4;
@end

@implementation REScriptASTObjectBuilder

- (REScriptASTObjectBuilder)initWithTable:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REScriptASTObjectBuilder;
  v6 = [(REScriptASTObjectBuilder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_table, a3);
  }

  return v7;
}

- (id)buildObjectWithNode:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0;
    v7 = &v20;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithIdentifierNode:v6 error:&v20];
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
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithLiteralNode:v6 error:&v19];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v7 = &v18;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithExpressionNode:v6 error:&v18];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0;
    v7 = &v17;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithPrefixExpressionNode:v6 error:&v17];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = 0;
    v7 = &v16;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithFunctionNode:v6 error:&v16];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0;
    v7 = &v15;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithMemberExpressionNode:v6 error:&v15];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v7 = &v14;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithSubscriptExpressionNode:v6 error:&v14];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v7 = &v13;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithTopLevelBinaryExpression:v6 error:&v13];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v7 = &v12;
    v8 = [(REScriptASTObjectBuilder *)self buildObjectWithTopLevelBinaryExpressionListNode:v6 error:&v12];
    goto LABEL_19;
  }

  v10 = 0;
  v9 = 0;
LABEL_20:
  if (!(v9 | v10))
  {
    v10 = [(REScriptASTObjectBuilder *)self _errorForUnsupportedNode:v6];
  }

  if (a4)
  {
    v10 = v10;
    *a4 = v10;
  }

  return v9;
}

- (id)buildObjectWithExpressionNode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 prefixExpression];
  v8 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:v7 error:a4];

  v9 = [v6 binaryExpressions];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionListNode:v9 previousExpression:v8 error:a4];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionNode:v9 previousExpression:v8 error:a4];
LABEL_5:
    v11 = v10;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  if (*a4)
  {
    v11 = 0;
  }

  else
  {
    [(REScriptASTObjectBuilder *)self _errorForUnsupportedNode:v9];
    *a4 = v11 = 0;
  }

LABEL_9:

  return v11;
}

- (id)buildObjectWithTopLevelBinaryExpression:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 binaryOperator];
  v8 = [v7 type];

  if ((v8 - 29) > 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = [v6 expression];
    v10 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:v9 error:a4];
  }

  return v10;
}

- (id)buildObjectWithTopLevelBinaryExpressionListNode:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 expressions];
  v8 = [v7 firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(REScriptASTObjectBuilder *)self buildObjectWithTopLevelBinaryExpression:v8 error:a4], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = [v6 expressions];
    v12 = [v11 mutableCopy];

    [v12 removeObjectAtIndex:0];
    v13 = [[REScriptASTBinaryExpressionListNode alloc] initWithExpressions:v12];
    v14 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionListNode:v13 previousExpression:v10 error:a4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)buildObjectWithBinaryExpressionListNode:(id)a3 previousExpression:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 expressions];
  v11 = [v10 count];

  v12 = v9;
  if (v11)
  {
    v13 = 0;
    v14 = v9;
    while (1)
    {
      v15 = [v8 expressions];
      v16 = [v15 objectAtIndexedSubscript:v13];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v17 = [(REScriptASTObjectBuilder *)self buildObjectWithBinaryExpressionNode:v16 previousExpression:v14 error:a5];
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

    if (a5 && !*a5)
    {
      *a5 = [(REScriptASTObjectBuilder *)self _errorForUnsupportedNode:v16];
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

- (id)_errorForUnsupportedNode:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(REScriptASTObjectBuilder *)self objectTypeErrorDescription];
  v7 = [v4 stringWithFormat:@"Unsupported expression found when creating %@", v6];

  v13 = @"REErrorTokenKey";
  v8 = [v5 token];

  v14[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = RECreateErrorWithCodeMessageAndUseInfo(209, v7, v9);

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end