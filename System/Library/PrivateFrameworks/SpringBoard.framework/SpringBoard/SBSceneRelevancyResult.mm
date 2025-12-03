@interface SBSceneRelevancyResult
+ (id)defaultResult;
- (BOOL)hasSameAssertions:(id)assertions;
- (BOOL)isEqual:(id)equal;
- (SBSceneRelevancyResult)initWithActivityMode:(char)mode jetsamMode:(char)jetsamMode resourceElevation:(char)elevation resignActive:(BOOL)active disableFlattening:(BOOL)flattening;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
@end

@implementation SBSceneRelevancyResult

- (SBSceneRelevancyResult)initWithActivityMode:(char)mode jetsamMode:(char)jetsamMode resourceElevation:(char)elevation resignActive:(BOOL)active disableFlattening:(BOOL)flattening
{
  v21.receiver = self;
  v21.super_class = SBSceneRelevancyResult;
  v12 = [(SBSceneRelevancyResult *)&v21 init];
  v13 = v12;
  if (v12)
  {
    v12->_activityMode = mode;
    v12->_jetsamMode = jetsamMode;
    v12->_resourceElevation = elevation;
    v12->_resignActive = active;
    v12->_disableFlattening = flattening;
    v14 = objc_alloc_init(MEMORY[0x277CF0C40]);
    v15 = [v14 appendInteger:v13->_activityMode];
    v16 = [v14 appendInteger:v13->_jetsamMode];
    v17 = [v14 appendInteger:v13->_resourceElevation];
    v18 = [v14 appendBool:v13->_resignActive];
    v19 = [v14 appendBool:v13->_disableFlattening];
    v13->_cachedHash = [v14 hash];
  }

  return v13;
}

+ (id)defaultResult
{
  v2 = [[SBSceneRelevancyResult alloc] initWithActivityMode:0 jetsamMode:0 resourceElevation:0 resignActive:0 disableFlattening:0];

  return v2;
}

- (BOOL)hasSameAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:assertionsCopy ofExpectedClass:objc_opt_class()];
  activityMode = self->_activityMode;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__SBSceneRelevancyResult_hasSameAssertions___block_invoke;
  v21[3] = &unk_2783ACDE0;
  v7 = assertionsCopy;
  v22 = v7;
  v8 = [v5 appendInteger:activityMode counterpart:v21];
  jetsamMode = self->_jetsamMode;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__SBSceneRelevancyResult_hasSameAssertions___block_invoke_2;
  v19[3] = &unk_2783ACDE0;
  v10 = v7;
  v20 = v10;
  v11 = [v8 appendInteger:jetsamMode counterpart:v19];
  resourceElevation = self->_resourceElevation;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__SBSceneRelevancyResult_hasSameAssertions___block_invoke_3;
  v17[3] = &unk_2783ACDE0;
  v18 = v10;
  v13 = v10;
  v14 = [v11 appendInteger:resourceElevation counterpart:v17];
  v15 = [v14 isEqual];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  activityMode = self->_activityMode;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __34__SBSceneRelevancyResult_isEqual___block_invoke;
  v30[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendInteger:activityMode counterpart:v30];
  jetsamMode = self->_jetsamMode;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __34__SBSceneRelevancyResult_isEqual___block_invoke_2;
  v28[3] = &unk_2783ACDE0;
  v10 = v7;
  v29 = v10;
  v11 = [v8 appendInteger:jetsamMode counterpart:v28];
  resourceElevation = self->_resourceElevation;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __34__SBSceneRelevancyResult_isEqual___block_invoke_3;
  v26[3] = &unk_2783ACDE0;
  v13 = v10;
  v27 = v13;
  v14 = [v11 appendInteger:resourceElevation counterpart:v26];
  resignActive = self->_resignActive;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __34__SBSceneRelevancyResult_isEqual___block_invoke_4;
  v24[3] = &unk_2783ACE58;
  v16 = v13;
  v25 = v16;
  v17 = [v14 appendBool:resignActive counterpart:v24];
  disableFlattening = self->_disableFlattening;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __34__SBSceneRelevancyResult_isEqual___block_invoke_5;
  v22[3] = &unk_2783ACE58;
  v23 = v16;
  v19 = v16;
  v20 = [v17 appendBool:disableFlattening counterpart:v22];
  LOBYTE(disableFlattening) = [v20 isEqual];

  return disableFlattening;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSceneRelevancyResult *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneRelevancyResult *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBSceneRelevancyResult *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__SBSceneRelevancyResult_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_2783A92D8;
  v6 = succinctDescriptionBuilder;
  v10 = v6;
  selfCopy = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v9];

  v7 = v6;
  return v6;
}

id __64__SBSceneRelevancyResult_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromFBSSceneActivityMode();
  [v2 appendString:v3 withName:@"activityMode"];

  v4 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 17) withName:@"jetsamMode"];
  v5 = [*(a1 + 32) appendInt:*(*(a1 + 40) + 18) withName:@"resourceElevation"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 19) withName:@"resignActive" ifEqualTo:1];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 20) withName:@"disableFlattening" ifEqualTo:1];
}

@end