@interface PUIAnalysisServiceRequest
- (PUIAnalysisServiceRequest)initWithCoder:(id)coder;
- (PUIAnalysisServiceRequest)initWithImage:(id)image analyses:(id)analyses;
- (PUIAnalysisServiceRequest)initWithImage:(id)image analyses:(id)analyses requestIdentifier:(id)identifier;
- (PUIAnalysisServiceRequest)initWithImage:(id)image analysis:(id)analysis;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIAnalysisServiceRequest

- (PUIAnalysisServiceRequest)initWithImage:(id)image analyses:(id)analyses
{
  v6 = MEMORY[0x1E696AFB0];
  analysesCopy = analyses;
  imageCopy = image;
  uUID = [v6 UUID];
  v10 = [(PUIAnalysisServiceRequest *)self initWithImage:imageCopy analyses:analysesCopy requestIdentifier:uUID];

  return v10;
}

- (PUIAnalysisServiceRequest)initWithImage:(id)image analysis:(id)analysis
{
  v6 = MEMORY[0x1E695DFD8];
  imageCopy = image;
  v8 = [v6 setWithObject:analysis];
  v9 = [(PUIAnalysisServiceRequest *)self initWithImage:imageCopy analyses:v8];

  return v9;
}

- (PUIAnalysisServiceRequest)initWithImage:(id)image analyses:(id)analyses requestIdentifier:(id)identifier
{
  imageCopy = image;
  analysesCopy = analyses;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PUIAnalysisServiceRequest;
  v12 = [(PUIAnalysisServiceRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_requestIdentifier, identifier);
    objc_storeStrong(&v13->_requestedAnalyses, analyses);
    objc_storeStrong(&v13->_image, image);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  coderCopy = coder;
  [coderCopy encodeObject:image forKey:@"_image"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"_requestIdentifier"];
  allObjects = [(NSSet *)self->_requestedAnalyses allObjects];
  v7 = [allObjects componentsJoinedByString:@"%%"];

  [coderCopy encodeObject:v7 forKey:@"_requestedAnalyses"];
}

- (PUIAnalysisServiceRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_image"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"_requestIdentifier"];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"_requestedAnalyses"];

  v11 = [v10 componentsSeparatedByString:@"%%"];
  v12 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v13 = [(PUIAnalysisServiceRequest *)self initWithImage:v6 analyses:v12 requestIdentifier:v8];

  return v13;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PUIAnalysisServiceRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  v7 = [v6 appendObject:self->_requestIdentifier withName:@"_requestIdentifier"];
  requestedAnalyses = [(PUIAnalysisServiceRequest *)self requestedAnalyses];
  allObjects = [requestedAnalyses allObjects];
  [v6 appendArraySection:allObjects withName:@"requestedAnalyses" multilinePrefix:prefixCopy skipIfEmpty:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PUIAnalysisServiceRequest_descriptionBuilderWithMultilinePrefix___block_invoke;
  v13[3] = &unk_1E78548A0;
  v10 = v6;
  v14 = v10;
  selfCopy = self;
  [v10 appendBodySectionWithName:@"Payload" multilinePrefix:prefixCopy block:v13];

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
  succinctDescriptionBuilder = [(PUIAnalysisServiceRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

@end