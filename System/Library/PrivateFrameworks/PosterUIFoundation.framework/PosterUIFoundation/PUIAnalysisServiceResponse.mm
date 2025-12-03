@interface PUIAnalysisServiceResponse
- (NSSet)requestedAnalyses;
- (PUIAnalysisServiceResponse)initWithCoder:(id)coder;
- (PUIAnalysisServiceResponse)initWithRequestIdentifier:(id)identifier reports:(id)reports;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIAnalysisServiceResponse

- (PUIAnalysisServiceResponse)initWithRequestIdentifier:(id)identifier reports:(id)reports
{
  identifierCopy = identifier;
  reportsCopy = reports;
  v14.receiver = self;
  v14.super_class = PUIAnalysisServiceResponse;
  v9 = [(PUIAnalysisServiceResponse *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_requestIdentifier, identifier);
    v11 = [reportsCopy copy];
    reports = v10->_reports;
    v10->_reports = v11;
  }

  return v10;
}

- (NSSet)requestedAnalyses
{
  v2 = MEMORY[0x1E695DFD8];
  allKeys = [(NSDictionary *)self->_reports allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"_requestIdentifier"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PUIAnalysisServiceResponse_encodeWithCoder___block_invoke;
  v6[3] = &unk_1E7855EE8;
  v6[4] = self;
  v7 = coderCopy;
  v5 = coderCopy;
  PUIAnalysisEnumerate(v6);
}

void __46__PUIAnalysisServiceResponse_encodeWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) resultForAnalysis:?];
  if (v3)
  {
    [*(a1 + 40) encodeObject:v3 forKey:v4];
  }
}

- (PUIAnalysisServiceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_requestIdentifier"];

  v7 = objc_opt_new();
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__PUIAnalysisServiceResponse_initWithCoder___block_invoke;
  v15 = &unk_1E7855EE8;
  v16 = coderCopy;
  v17 = v7;
  v8 = v7;
  v9 = coderCopy;
  PUIAnalysisEnumerate(&v12);
  v10 = [(PUIAnalysisServiceResponse *)self initWithRequestIdentifier:v6 reports:v8, v12, v13, v14, v15];

  return v10;
}

void __44__PUIAnalysisServiceResponse_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = PUIAnalysisResultClassForPUIAnalysis(v5);
  if (v3)
  {
    v4 = [*(a1 + 32) decodeObjectOfClass:v3 forKey:v5];
    if (v4)
    {
      [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
    }
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PUIAnalysisServiceResponse *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v7 = [v6 appendObject:self->_requestIdentifier withName:@"_requestIdentifier"];
  [v6 appendDictionarySection:self->_reports withName:@"reports" multilinePrefix:prefixCopy skipIfEmpty:0];

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PUIAnalysisServiceResponse *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end