@interface REScriptASTPrimaryExpressionNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
@end

@implementation REScriptASTPrimaryExpressionNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 currentToken];
  v7 = [v6 type];

  v8 = 0;
  if (v7 > 0x20)
  {
    goto LABEL_13;
  }

  if (((1 << v7) & 0x638) != 0)
  {
    v9 = objc_opt_class();
    v10 = v5;
    goto LABEL_4;
  }

  if (v7 == 6)
  {
    v23 = objc_opt_class();
    v24 = v5;
    [v24 push];
    v8 = [v23 parseBuffer:v24 error:a4];
    if (v8)
    {
      [v24 consume];

      v25 = v8;
    }

    else
    {
      [v24 pop];
    }

    if (v8)
    {
      goto LABEL_13;
    }

    v9 = objc_opt_class();
    v10 = v24;
LABEL_4:
    v11 = v10;
    [v10 push];
    v8 = [v9 parseBuffer:v11 error:a4];
    if (v8)
    {
      [v11 consume];

      v12 = v8;
    }

    else
    {
      [v11 pop];
    }

    goto LABEL_13;
  }

  if (v7 == 32)
  {
    [v5 push];
    [v5 next];
    v8 = [REScriptASTExpressionNode parseBuffer:v5 error:a4];
    if (v8 && ([v5 currentToken], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "type"), v13, v14 == 33))
    {
      [v5 next];
      [v5 consume];
    }

    else
    {
      [v5 pop];
    }
  }

  while (1)
  {
LABEL_13:
    v15 = [REScriptASTSubscriptExpressionNode parseBuffer:v5 error:a4];
    if (v15)
    {
      v16 = [REScriptASTSubscriptExpressionNode alloc];
      v17 = [v15 startIndex];
      v18 = [v15 endIndex];
      v19 = [(REScriptASTSubscriptExpressionNode *)v16 initWithExpression:v8 startIndex:v17 endIndex:v18];
      goto LABEL_17;
    }

    v17 = [REScriptASTMemberExpressionNode parseBuffer:v5 error:a4];
    if (!v17)
    {
      break;
    }

    v20 = [REScriptASTMemberExpressionNode alloc];
    v18 = [v17 member];
    v19 = [(REScriptASTMemberExpressionNode *)v20 initWithMember:v18 expression:v8];
LABEL_17:
    v21 = v19;

    v8 = v21;
  }

  return v8;
}

@end