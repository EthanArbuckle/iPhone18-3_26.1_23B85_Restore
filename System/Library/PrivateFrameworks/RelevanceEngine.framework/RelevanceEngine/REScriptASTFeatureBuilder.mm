@interface REScriptASTFeatureBuilder
- (BOOL)_loadIndexFromNode:(id)node index:(unint64_t *)index error:(id *)error;
- (id)_buildTransformedFeature:(id)feature features:(id)features node:(id)node error:(id *)error;
- (id)buildObjectWithBinaryExpressionNode:(id)node previousExpression:(id)expression error:(id *)error;
- (id)buildObjectWithFunctionNode:(id)node error:(id *)error;
- (id)buildObjectWithIdentifierNode:(id)node error:(id *)error;
- (id)buildObjectWithSubscriptExpressionNode:(id)node error:(id *)error;
- (id)objectTypeErrorDescription;
@end

@implementation REScriptASTFeatureBuilder

- (id)objectTypeErrorDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)buildObjectWithIdentifierNode:(id)node error:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  table = [(REScriptASTObjectBuilder *)self table];
  name = [nodeCopy name];
  v18 = 0;
  if (![table typeForDefinition:name type:&v18] || v18)
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined feature %@", name];
    v19 = @"REErrorTokenKey";
    token = [nodeCopy token];
    v20 = token;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(210, v9, v11);

    error = 0;
  }

  else
  {
    v9 = [table objectValueForDefinition:name];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v9;
      error = v9;
    }

    else
    {
      v12 = [table nodeValueForDefinition:name];
      if (v12)
      {
        error = [(REScriptASTObjectBuilder *)self buildObjectWithNode:v12 error:error];
      }

      else if (error)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Feature %@ doesn't have a definition", name];
        v21 = @"REErrorTokenKey";
        token2 = [nodeCopy token];
        v22[0] = token2;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *error = RECreateErrorWithCodeMessageAndUseInfo(210, v13, v15);

        error = 0;
      }
    }
  }

LABEL_13:
  v16 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)buildObjectWithBinaryExpressionNode:(id)node previousExpression:(id)expression error:(id *)error
{
  v23[2] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  expressionCopy = expression;
  binaryOperator = [nodeCopy binaryOperator];
  type = [binaryOperator type];

  if (type != 28)
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v15 = MEMORY[0x277CCACA8];
    binaryOperator2 = [nodeCopy binaryOperator];
    v17 = REDescriptionForTokenType([binaryOperator2 type]);
    v13 = [v15 stringWithFormat:@"Unsupported binary operator %@ for constructing feature", v17];

    v21 = @"REErrorTokenKey";
    binaryOperator3 = [nodeCopy binaryOperator];
    v22 = binaryOperator3;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(209, v13, v18);

    error = 0;
    goto LABEL_6;
  }

  expression = [nodeCopy expression];
  v13 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:expression error:error];

  if (v13)
  {
    v23[0] = expressionCopy;
    v23[1] = v13;
    binaryOperator3 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
    error = [REFeature crossedFeatureWithFeatures:binaryOperator3];
LABEL_6:

    goto LABEL_8;
  }

  error = 0;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)buildObjectWithFunctionNode:(id)node error:(id *)error
{
  v44[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  table = [(REScriptASTObjectBuilder *)self table];
  functionIdentifier = [nodeCopy functionIdentifier];
  value = [functionIdentifier value];

  v40 = 0;
  v10 = [table typeForDefinition:value type:&v40];
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
    if (([objc_msgSend(table objectValueForDefinition:{value), "isSubclassOfClass:", objc_opt_class()}] & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_19;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Function %@ doesn't have a definition", value];
      v43 = @"REErrorTokenKey";
      functionIdentifier2 = [nodeCopy functionIdentifier];
      v44[0] = functionIdentifier2;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *error = RECreateErrorWithCodeMessageAndUseInfo(210, v12, v21);

      goto LABEL_15;
    }

    v12 = objc_opt_new();
    if (v12)
    {
      v13 = MEMORY[0x277CBEB18];
      arguments = [nodeCopy arguments];
      v15 = [v13 arrayWithCapacity:{objc_msgSend(arguments, "count")}];

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
      arguments2 = [nodeCopy arguments];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __63__REScriptASTFeatureBuilder_buildObjectWithFunctionNode_error___block_invoke;
      v24[3] = &unk_2785FC288;
      v18 = v16;
      v25 = v18;
      selfCopy = self;
      v28 = &v30;
      v29 = &v36;
      functionIdentifier2 = v15;
      v27 = functionIdentifier2;
      [arguments2 enumerateObjectsUsingBlock:v24];

      [v12 configureWithInvocation:v18];
      if (error)
      {
        *error = v31[5];
      }

      if (*(v37 + 24) == 1)
      {
        error = [(REScriptASTFeatureBuilder *)self _buildTransformedFeature:v12 features:functionIdentifier2 node:nodeCopy error:error];
      }

      else
      {
        error = 0;
      }

      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(&v36, 8);
      goto LABEL_18;
    }
  }

  if (!error)
  {
    goto LABEL_19;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined function %@", value];
  v41 = @"REErrorTokenKey";
  functionIdentifier2 = [nodeCopy token];
  v42 = functionIdentifier2;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  *error = RECreateErrorWithCodeMessageAndUseInfo(210, v12, v20);

LABEL_15:
  error = 0;
LABEL_18:

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];

  return error;
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

- (id)buildObjectWithSubscriptExpressionNode:(id)node error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  expression = [nodeCopy expression];
  v8 = [(REScriptASTObjectBuilder *)self buildObjectWithNode:expression error:error];

  if (!v8)
  {
LABEL_8:
    error = 0;
    goto LABEL_18;
  }

  _bitCount = [v8 _bitCount];
  if (_bitCount <= 0)
  {
    if (!error)
    {
      goto LABEL_18;
    }

    v12 = MEMORY[0x277CCACA8];
    name = [v8 name];
    v14 = [v12 stringWithFormat:@"Unable to slice feature %@", name];

    v26 = @"REErrorTokenKey";
    token = [nodeCopy token];
    v27[0] = token;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(211, v14, v16);

    goto LABEL_8;
  }

  v10 = _bitCount;
  v23 = 0;
  v24 = 0;
  startIndex = [nodeCopy startIndex];
  if (!startIndex)
  {
    v24 = 0;
LABEL_10:
    endIndex = [nodeCopy endIndex];
    if (endIndex)
    {
      if (![(REScriptASTFeatureBuilder *)self _loadIndexFromNode:endIndex index:&v23 error:error])
      {
        error = 0;
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
    error = [(REScriptASTFeatureBuilder *)self _buildTransformedFeature:v19 features:v20 node:nodeCopy error:error];

LABEL_16:
    goto LABEL_17;
  }

  if ([(REScriptASTFeatureBuilder *)self _loadIndexFromNode:startIndex index:&v24 error:error])
  {
    goto LABEL_10;
  }

  error = 0;
LABEL_17:

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)_buildTransformedFeature:(id)feature features:(id)features node:(id)node error:(id *)error
{
  v14 = *MEMORY[0x277D85DE8];
  featureCopy = feature;
  featuresCopy = features;
  nodeCopy = node;
  v11 = [REFeature transformedFeatureWithTransformer:featureCopy features:featuresCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)_loadIndexFromNode:(id)node index:(unint64_t *)index error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    token4 = nodeCopy;
    token = [token4 token];
    type = [token type];

    if (type == 3)
    {
      if (index)
      {
        token2 = [token4 token];
        value = [token2 value];
        *index = [value integerValue];
      }

      LOBYTE(error) = 1;
      goto LABEL_11;
    }

    if (!error)
    {
LABEL_11:

      goto LABEL_12;
    }

    v19 = @"REErrorTokenKey";
    token3 = [token4 token];
    v20[0] = token3;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(204, @"Unexpected literal. Expecting integer", v14);

LABEL_10:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  if (error)
  {
    v17 = @"REErrorTokenKey";
    token4 = [nodeCopy token];
    v18 = token4;
    token3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *error = RECreateErrorWithCodeMessageAndUseInfo(204, @"Unexpected token. Expecting index", token3);
    goto LABEL_10;
  }

LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return error;
}

@end