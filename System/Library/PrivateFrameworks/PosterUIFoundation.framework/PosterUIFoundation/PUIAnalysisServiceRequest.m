@interface PUIAnalysisServiceRequest
- (PUIAnalysisServiceRequest)initWithCoder:(id)a3;
- (PUIAnalysisServiceRequest)initWithImage:(id)a3 analyses:(id)a4;
- (PUIAnalysisServiceRequest)initWithImage:(id)a3 analyses:(id)a4 requestIdentifier:(id)a5;
- (PUIAnalysisServiceRequest)initWithImage:(id)a3 analysis:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUIAnalysisServiceRequest

- (PUIAnalysisServiceRequest)initWithImage:(id)a3 analyses:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [(PUIAnalysisServiceRequest *)self initWithImage:v8 analyses:v7 requestIdentifier:v9];

  return v10;
}

- (PUIAnalysisServiceRequest)initWithImage:(id)a3 analysis:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a3;
  v8 = [v6 setWithObject:a4];
  v9 = [(PUIAnalysisServiceRequest *)self initWithImage:v7 analyses:v8];

  return v9;
}

- (PUIAnalysisServiceRequest)initWithImage:(id)a3 analyses:(id)a4 requestIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PUIAnalysisServiceRequest;
  v12 = [(PUIAnalysisServiceRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestIdentifier, a5);
    objc_storeStrong(&v13->_requestedAnalyses, a4);
    objc_storeStrong(&v13->_image, a3);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  v5 = a3;
  [v5 encodeObject:image forKey:@"_image"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"_requestIdentifier"];
  v6 = [(NSSet *)self->_requestedAnalyses allObjects];
  v7 = [v6 componentsJoinedByString:@"%%"];

  [v5 encodeObject:v7 forKey:@"_requestedAnalyses"];
}

- (PUIAnalysisServiceRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_image"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"_requestIdentifier"];

  v9 = objc_opt_self();
  v10 = [v4 decodeObjectOfClass:v9 forKey:@"_requestedAnalyses"];

  v11 = [v10 componentsSeparatedByString:@"%%"];
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v13 = [(PUIAnalysisServiceRequest *)self initWithImage:v6 analyses:v12 requestIdentifier:v8];

  return v13;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PUIAnalysisServiceRequest *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = MEMORY[0x1E698E680];
  v5 = a3;
  v6 = [v4 builderWithObject:self];
  v7 = [v6 appendObject:self->_requestIdentifier withName:@"_requestIdentifier"];
  v8 = [(PUIAnalysisServiceRequest *)self requestedAnalyses];
  v9 = [v8 allObjects];
  [v6 appendArraySection:v9 withName:@"requestedAnalyses" multilinePrefix:v5 skipIfEmpty:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PUIAnalysisServiceRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13[3] = &unk_1E78548A0;
  v10 = v6;
  v14 = v10;
  v15 = self;
  [v10 appendBodySectionWithName:@"Payload" multilinePrefix:v5 block:v13];

  v11 = v10;
  return v10;
}

void __67__PUIAnalysisServiceRequest_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) image];
  v2 = [v1 appendObject:v3 withName:@"_image"];
}

- (id)succinctDescription
{
  v2 = [(PUIAnalysisServiceRequest *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

@end