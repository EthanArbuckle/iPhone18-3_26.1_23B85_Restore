@interface REScriptASTBinaryExpressionNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTBinaryExpressionNode)initWithOperator:(id)a3 expression:(id)a4;
@end

@implementation REScriptASTBinaryExpressionNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 currentToken];
  v7 = [v5 currentToken];
  v8 = [v7 type];

  if (v8 > 0x2D || ((1 << v8) & 0x3F0070180000) == 0)
  {
    if (a4)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v6 value];
      v16 = [v14 stringWithFormat:@"Unexpected token %@ found. Expecting operator token.", v15];

      v18 = @"REErrorTokenKey";
      v19[0] = v6;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *a4 = RECreateErrorWithCodeMessageAndUseInfo(204, v16, v17);
    }

    v11 = 0;
  }

  else
  {
    [v5 push];
    [v5 next];
    v10 = [REScriptASTPrefixExpressionNode parseBuffer:v5 error:a4];
    if (v10)
    {
      [v5 consume];
      v11 = [[REScriptASTBinaryExpressionNode alloc] initWithOperator:v6 expression:v10];
    }

    else
    {
      [v5 pop];
      v11 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (REScriptASTBinaryExpressionNode)initWithOperator:(id)a3 expression:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REScriptASTBinaryExpressionNode;
  v9 = [(REScriptASTNode *)&v12 initWithToken:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_binaryOperator, a3);
    objc_storeStrong(&v10->_expression, a4);
  }

  return v10;
}

@end