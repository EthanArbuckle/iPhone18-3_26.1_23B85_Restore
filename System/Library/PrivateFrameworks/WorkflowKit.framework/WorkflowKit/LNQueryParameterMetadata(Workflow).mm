@interface LNQueryParameterMetadata(Workflow)
- (id)wf_propertyQueryWithValue:()Workflow contentOperator:parameterIndex:;
- (id)wf_supportedContentOperators;
@end

@implementation LNQueryParameterMetadata(Workflow)

- (id)wf_propertyQueryWithValue:()Workflow contentOperator:parameterIndex:
{
  v7 = a5;
  v8 = a3;
  v9 = WFContentOperatorToLNComparisonPropertyMapping();
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v11 = [v9 objectForKey:v10];

  v12 = [objc_alloc(MEMORY[0x1E69AC760]) initWithPropertyIndex:v7 value:v8 type:{objc_msgSend(v11, "unsignedIntegerValue")}];

  return v12;
}

- (id)wf_supportedContentOperators
{
  v2 = WFContentOperatorToLNComparisonPropertyMapping();
  comparators = [self comparators];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__LNQueryParameterMetadata_Workflow__wf_supportedContentOperators__block_invoke;
  v7[3] = &unk_1E837B048;
  v8 = v2;
  v4 = v2;
  v5 = [comparators if_compactMap:v7];

  return v5;
}

@end