@interface REScriptASTFeatureBuilder
- (BOOL)_loadIndexFromNode:(id)a3 index:(unint64_t *)a4 error:(id *)a5;
- (id)_buildTransformedFeature:(id)a3 features:(id)a4 node:(id)a5 error:(id *)a6;
- (id)buildObjectWithBinaryExpressionNode:(id)a3 previousExpression:(id)a4 error:(id *)a5;
- (id)buildObjectWithFunctionNode:(id)a3 error:(id *)a4;
- (id)buildObjectWithIdentifierNode:(id)a3 error:(id *)a4;
- (id)buildObjectWithSubscriptExpressionNode:(id)a3 error:(id *)a4;
- (id)objectTypeErrorDescription;
@end

@implementation REScriptASTFeatureBuilder

- (id)objectTypeErrorDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)buildObjectWithIdentifierNode:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(REScriptASTObjectBuilder *)self table];
  v8 = [v6 name];
  v18 = 0;
  if (![v7 typeForDefinition:v8 type:&v18] || v18)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined feature %@", v8];
    v19 = @"REErrorTokenKey";
    v10 = [v6 token];
    v20 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *a4 = RECreateErrorWithCodeMessageAndUseInfo(210, v9, v11);

    a4 = 0;
  }

  else
  {
    v9 = [v7 objectValueForDefinition:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v9;
      a4 = v9;
    }

    else
    {
      v12 = [v7 nodeValueForDefinition:v8];
      if (v12)
      {
        a4 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:v12 error:a4];
      }

      else if (a4)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Feature %@ doesn't have a definition", v8];
        v21 = @"REErrorTokenKey";
        v14 = [v6 token];
        v22[0] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *a4 = RECreateErrorWithCodeMessageAndUseInfo(210, v13, v15);

        a4 = 0;
      }
    }
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)buildObjectWithBinaryExpressionNode:(id)a3 previousExpression:(id)a4 error:(id *)a5
{
  v23[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 binaryOperator];
  v11 = [v10 type];

  if (v11 != 28)
  {
    if (!a5)
    {
      goto LABEL_8;
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [v8 binaryOperator];
    v17 = REDescriptionForTokenType([v16 type]);
    v13 = [v15 stringWithFormat:@"Unsupported binary operator %@ for constructing feature", v17];

    v21 = @"REErrorTokenKey";
    v14 = [v8 binaryOperator];
    v22 = v14;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *a5 = RECreateErrorWithCodeMessageAndUseInfo(209, v13, v18);

    a5 = 0;
    goto LABEL_6;
  }

  v12 = [v8 expression];
  v13 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:v12 error:a5];

  if (v13)
  {
    v23[0] = v9;
    v23[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    a5 = [REFeature crossedFeatureWithFeatures:v14];
LABEL_6:

    goto LABEL_8;
  }

  a5 = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];

  return a5;
}

- (id)buildObjectWithFunctionNode:(id)a3 error:(id *)a4
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(REScriptASTObjectBuilder *)self table];
  v8 = [v6 functionIdentifier];
  v9 = [v8 value];

  v40 = 0;
  v10 = [v7 typeForDefinition:v9 type:&v40];
  if (v40 == 4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    if (([objc_msgSend(v7 objectValueForDefinition:{v9), "isSubclassOfClass:", objc_opt_class()}] & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_19;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Function %@ doesn't have a definition", v9];
      v43 = @"REErrorTokenKey";
      v19 = [v6 functionIdentifier];
      v44[0] = v19;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *a4 = RECreateErrorWithCodeMessageAndUseInfo(210, v12, v21);

      goto LABEL_15;
    }

    v12 = objc_opt_new();
    if (v12)
    {
      v13 = MEMORY[0x277CBEB18];
      v14 = [v6 arguments];
      v15 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 1;
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__14;
      v34 = __Block_byref_object_dispose__14;
      v35 = 0;
      v16 = objc_alloc_init(RETransformerInvocation);
      v17 = [v6 arguments];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __63__REScriptASTFeatureBuilder_buildObjectWithFunctionNode_error___block_invoke;
      v24[3] = &unk_2785FC288;
      v18 = v16;
      v25 = v18;
      v26 = self;
      v28 = &v30;
      v29 = &v36;
      v19 = v15;
      v27 = v19;
      [v17 enumerateObjectsUsingBlock:v24];

      [v12 configureWithInvocation:v18];
      if (a4)
      {
        *a4 = v31[5];
      }

      if (*(v37 + 24) == 1)
      {
        a4 = [(REScriptASTFeatureBuilder *)self _buildTransformedFeature:v12 features:v19 node:v6 error:a4];
      }

      else
      {
        a4 = 0;
      }

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v36, 8);
      goto LABEL_18;
    }
  }

  if (!a4)
  {
    goto LABEL_19;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined function %@", v9];
  v41 = @"REErrorTokenKey";
  v19 = [v6 token];
  v42 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  *a4 = RECreateErrorWithCodeMessageAndUseInfo(210, v12, v20);

LABEL_15:
  a4 = 0;
LABEL_18:

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];

  return a4;
}

void __63__REScriptASTFeatureBuilder_buildObjectWithFunctionNode_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v7 token];

    v8 = [v17 type];
    v9 = 0;
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        v14 = [v17 value];
        v15 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v14 longLongValue]);
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_20;
        }

        v14 = [v17 value];
        [v14 doubleValue];
        v15 = [REFeatureValue featureValueWithDouble:?];
      }

      v9 = v15;
    }

    else
    {
      if (v8 != 5)
      {
        if (v8 == 10)
        {
          v10 = 0;
          goto LABEL_16;
        }

        if (v8 == 9)
        {
          v10 = 1;
LABEL_16:
          v9 = [REFeatureValue featureValueWithBool:v10, v17];
        }

LABEL_20:
        v16 = RECreateFeatureValueTaggedPointer(v9);
        [*(a1 + 32) setArgument:v16 atIndex:a3];
        REReleaseFeatureValueTaggedPointer(v16);

        return;
      }

      v14 = [v17 value];
      v9 = [REFeatureValue featureValueWithString:v14];
    }

    goto LABEL_20;
  }

  v11 = *(a1 + 40);
  v12 = *(*(a1 + 56) + 8);
  obj = *(v12 + 40);
  v13 = [v11 buildObjectWithNode:v7 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if (v13)
  {
    [*(a1 + 48) addObject:v13];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }
}

- (id)buildObjectWithSubscriptExpressionNode:(id)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 expression];
  v8 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:v7 error:a4];

  if (!v8)
  {
LABEL_8:
    a4 = 0;
    goto LABEL_18;
  }

  v9 = [v8 _bitCount];
  if (v9 <= 0)
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [v8 name];
    v14 = [v12 stringWithFormat:@"Unable to slice feature %@", v13];

    v26 = @"REErrorTokenKey";
    v15 = [v6 token];
    v27[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *a4 = RECreateErrorWithCodeMessageAndUseInfo(211, v14, v16);

    goto LABEL_8;
  }

  v10 = v9;
  v23 = 0;
  v24 = 0;
  v11 = [v6 startIndex];
  if (!v11)
  {
    v24 = 0;
LABEL_10:
    v17 = [v6 endIndex];
    if (v17)
    {
      if (![(REScriptASTFeatureBuilder *)self _loadIndexFromNode:v17 index:&v23 error:a4])
      {
        a4 = 0;
        goto LABEL_16;
      }

      v18 = v23;
    }

    else
    {
      v18 = v10 - 1;
      v23 = v10 - 1;
    }

    v19 = [REFeatureTransformer maskAndShiftTransformWithStartIndex:v24 endIndex:v18];
    v25 = v8;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    a4 = [(REScriptASTFeatureBuilder *)self _buildTransformedFeature:v19 features:v20 node:v6 error:a4];

LABEL_16:
    goto LABEL_17;
  }

  if ([(REScriptASTFeatureBuilder *)self _loadIndexFromNode:v11 index:&v24 error:a4])
  {
    goto LABEL_10;
  }

  a4 = 0;
LABEL_17:

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)_buildTransformedFeature:(id)a3 features:(id)a4 node:(id)a5 error:(id *)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [REFeature transformedFeatureWithTransformer:v8 features:v9];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_loadIndexFromNode:(id)a3 index:(unint64_t *)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 token];
    v10 = [v9 type];

    if (v10 == 3)
    {
      if (a4)
      {
        v11 = [v8 token];
        v12 = [v11 value];
        *a4 = [v12 integerValue];
      }

      LOBYTE(a5) = 1;
      goto LABEL_11;
    }

    if (!a5)
    {
LABEL_11:

      goto LABEL_12;
    }

    v19 = @"REErrorTokenKey";
    v13 = [v8 token];
    v20[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *a5 = RECreateErrorWithCodeMessageAndUseInfo(204, @"Unexpected literal. Expecting integer", v14);

LABEL_10:
    LOBYTE(a5) = 0;
    goto LABEL_11;
  }

  if (a5)
  {
    v17 = @"REErrorTokenKey";
    v8 = [v7 token];
    v18 = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *a5 = RECreateErrorWithCodeMessageAndUseInfo(204, @"Unexpected token. Expecting index", v13);
    goto LABEL_10;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return a5;
}

@end