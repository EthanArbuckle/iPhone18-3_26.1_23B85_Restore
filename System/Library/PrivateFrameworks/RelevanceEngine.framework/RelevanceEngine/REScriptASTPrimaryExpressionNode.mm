@interface REScriptASTPrimaryExpressionNode
+ (id)parseBuffer:(id)buffer error:(id *)error;
@end

@implementation REScriptASTPrimaryExpressionNode

+ (id)parseBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  currentToken = [bufferCopy currentToken];
  type = [currentToken type];

  v8 = 0;
  if (type > 0x20)
  {
    goto LABEL_13;
  }

  if (((1 << type) & 0x638) != 0)
  {
    v9 = objc_opt_class();
    v10 = bufferCopy;
    goto LABEL_4;
  }

  if (type == 6)
  {
    v23 = objc_opt_class();
    v24 = bufferCopy;
    [v24 push];
    v8 = [v23 parseBuffer:v24 error:error];
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
    v8 = [v9 parseBuffer:v11 error:error];
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

  if (type == 32)
  {
    [bufferCopy push];
    [bufferCopy next];
    v8 = [REScriptASTExpressionNode parseBuffer:bufferCopy error:error];
    if (v8 && ([bufferCopy currentToken], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "type"), v13, v14 == 33))
    {
      [bufferCopy next];
      [bufferCopy consume];
    }

    else
    {
      [bufferCopy pop];
    }
  }

  while (1)
  {
LABEL_13:
    v15 = [REScriptASTSubscriptExpressionNode parseBuffer:bufferCopy error:error];
    if (v15)
    {
      v16 = [REScriptASTSubscriptExpressionNode alloc];
      startIndex = [v15 startIndex];
      endIndex = [v15 endIndex];
      v19 = [(REScriptASTSubscriptExpressionNode *)v16 initWithExpression:v8 startIndex:startIndex endIndex:endIndex];
      goto LABEL_17;
    }

    startIndex = [REScriptASTMemberExpressionNode parseBuffer:bufferCopy error:error];
    if (!startIndex)
    {
      break;
    }

    v20 = [REScriptASTMemberExpressionNode alloc];
    endIndex = [startIndex member];
    v19 = [(REScriptASTMemberExpressionNode *)v20 initWithMember:endIndex expression:v8];
LABEL_17:
    v21 = v19;

    v8 = v21;
  }

  return v8;
}

@end