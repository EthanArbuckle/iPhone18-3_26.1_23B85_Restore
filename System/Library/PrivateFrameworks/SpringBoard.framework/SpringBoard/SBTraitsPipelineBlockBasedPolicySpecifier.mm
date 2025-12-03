@interface SBTraitsPipelineBlockBasedPolicySpecifier
- (NSString)description;
- (SBTraitsPipelineBlockBasedPolicySpecifier)initWithPolicySpecifierBlock:(id)block specifierDescription:(id)description componentOrder:(id)order arbiter:(id)arbiter;
- (TRAArbiter)arbiter;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBTraitsPipelineBlockBasedPolicySpecifier

- (void)invalidate
{
  if (self->_isValid)
  {
    self->_isValid = 0;
    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    orientationResolutionStage = [WeakRetained orientationResolutionStage];
    [orientationResolutionStage removeResolutionPolicySpecifier:self];
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBTraitsPipelineBlockBasedPolicySpecifier)initWithPolicySpecifierBlock:(id)block specifierDescription:(id)description componentOrder:(id)order arbiter:(id)arbiter
{
  blockCopy = block;
  descriptionCopy = description;
  orderCopy = order;
  arbiterCopy = arbiter;
  if (arbiterCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBTraitsPipelineBlockBasedPolicySpecifier initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:];
    if (blockCopy)
    {
LABEL_3:
      if (orderCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      [SBTraitsPipelineBlockBasedPolicySpecifier initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:];
      if (descriptionCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [SBTraitsPipelineBlockBasedPolicySpecifier initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:];
  if (!orderCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (descriptionCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  [SBTraitsPipelineBlockBasedPolicySpecifier initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:];
LABEL_5:
  v24.receiver = self;
  v24.super_class = SBTraitsPipelineBlockBasedPolicySpecifier;
  v14 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)&v24 init];
  v15 = v14;
  if (v14)
  {
    v14->_isValid = 1;
    objc_storeWeak(&v14->_arbiter, arbiterCopy);
    v16 = [blockCopy copy];
    specifierBlock = v15->_specifierBlock;
    v15->_specifierBlock = v16;

    v18 = [orderCopy copy];
    componentOrder = v15->_componentOrder;
    v15->_componentOrder = v18;

    v20 = [descriptionCopy copy];
    specifierDescription = v15->_specifierDescription;
    v15->_specifierDescription = v20;

    orientationResolutionStage = [arbiterCopy orientationResolutionStage];
    [orientationResolutionStage addResolutionPolicySpecifier:v15 update:0];
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v9.receiver = self;
  v9.super_class = SBTraitsPipelineBlockBasedPolicySpecifier;
  v4 = [(SBTraitsPipelineBlockBasedPolicySpecifier *)&v9 description];
  v5 = [v3 stringWithString:v4];

  specifierDescription = self->_specifierDescription;
  stringValue = [(NSNumber *)self->_componentOrder stringValue];
  [v5 appendFormat:@" %@ order: %@", specifierDescription, stringValue];

  return v5;
}

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (void)initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"arbiter" object:? file:? lineNumber:? description:?];
}

- (void)initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"specifierBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"componentOrder" object:? file:? lineNumber:? description:?];
}

- (void)initWithPolicySpecifierBlock:specifierDescription:componentOrder:arbiter:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"specifierDescription" object:? file:? lineNumber:? description:?];
}

@end