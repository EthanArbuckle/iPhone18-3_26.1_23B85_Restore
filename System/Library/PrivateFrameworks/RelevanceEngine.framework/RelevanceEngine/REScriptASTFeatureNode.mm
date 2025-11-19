@interface REScriptASTFeatureNode
+ (id)parseBuffer:(id)a3 error:(id *)a4;
- (REScriptASTFeatureNode)initWithName:(id)a3 options:(id)a4 expression:(id)a5;
- (id)dependencies;
@end

@implementation REScriptASTFeatureNode

+ (id)parseBuffer:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!REExpectTokenTypeInBuffer(v5, 0xCuLL, a4))
  {
    v11 = 0;
    goto LABEL_21;
  }

  [v5 push];
  [v5 next];
  v6 = REScriptParseOptionsValues(v5, a4);
  if (v6 && REExpectTokenTypeInBuffer(v5, 6uLL, a4))
  {
    v7 = [v5 currentToken];
    [v5 next];
    [v5 consume];
    [v5 push];
    v8 = [REScriptASTBinaryExpressionListNode parseBuffer:v5 error:a4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 expressions];
      v10 = [v9 firstObject];

      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v10 = v8;
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v10 binaryOperator];
      v13 = [v12 type];

      if (v13 == 30)
      {
        [v5 consume];
LABEL_18:
        v11 = [[REScriptASTFeatureNode alloc] initWithName:v7 options:v6 expression:v8];
LABEL_19:

        goto LABEL_20;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a4)
      {
        v14 = MEMORY[0x277CCACA8];
        v15 = REDescriptionForTokenType(0x1EuLL);
        v16 = [v10 binaryOperator];
        v17 = REDescriptionForTokenType([v16 type]);
        v18 = [v14 stringWithFormat:@"Expecting '%@' token but found '%@'", v15, v17];

        v23 = @"REErrorTokenKey";
        v19 = [v10 binaryOperator];
        v24[0] = v19;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
        *a4 = RECreateErrorWithCodeMessageAndUseInfo(204, v18, v20);
      }

      [v5 pop];

      v8 = 0;
      v11 = 0;
      goto LABEL_19;
    }

LABEL_17:
    [v5 pop];

    v8 = 0;
    goto LABEL_18;
  }

  [v5 pop];
  v11 = 0;
LABEL_20:

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (REScriptASTFeatureNode)initWithName:(id)a3 options:(id)a4 expression:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REScriptASTFeatureNode;
  v12 = [(REScriptASTNode *)&v15 initWithToken:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a3);
    objc_storeStrong(&v13->_options, a4);
    objc_storeStrong(&v13->_value, a5);
  }

  return v13;
}

- (id)dependencies
{
  v2 = [(REScriptASTNode *)self->_value dependencies];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

@end