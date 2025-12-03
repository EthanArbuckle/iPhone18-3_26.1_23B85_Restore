@interface TRAArbitrationPreferencesResolutionStage
- (TRAArbiter)arbiter;
- (TRAArbitrationPreferencesResolutionStage)initWithParticipantsRoles:(id)roles preferencesType:(int64_t)type arbiter:(id)arbiter;
- (id)_setupStateDump;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)dealloc;
- (void)updateResolutionWithContext:(id)context;
@end

@implementation TRAArbitrationPreferencesResolutionStage

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAArbitrationPreferencesResolutionStage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = TRAStringFromTraitsPreferencesType(self->_preferencesType);
  [v3 appendString:v4 withName:@"preferencesType"];

  return v3;
}

- (TRAArbitrationPreferencesResolutionStage)initWithParticipantsRoles:(id)roles preferencesType:(int64_t)type arbiter:(id)arbiter
{
  rolesCopy = roles;
  arbiterCopy = arbiter;
  v10 = arbiterCopy;
  if (rolesCopy)
  {
    if (arbiterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [TRAArbitrationPreferencesResolutionStage initWithParticipantsRoles:preferencesType:arbiter:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [TRAArbitrationPreferencesResolutionStage initWithParticipantsRoles:preferencesType:arbiter:];
LABEL_3:
  v24.receiver = self;
  v24.super_class = TRAArbitrationPreferencesResolutionStage;
  v11 = [(TRAArbitrationPreferencesResolutionStage *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_arbiter, v10);
    v12->_preferencesType = type;
    v13 = [rolesCopy copy];
    participantsRoles = v12->_participantsRoles;
    v12->_participantsRoles = v13;

    array = [MEMORY[0x277CBEB18] array];
    resolutionPolicySpecifiers = v12->_resolutionPolicySpecifiers;
    v12->_resolutionPolicySpecifiers = array;

    array2 = [MEMORY[0x277CBEB18] array];
    nodesSpecsSpecifiers = v12->_nodesSpecsSpecifiers;
    v12->_nodesSpecsSpecifiers = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    stageResolvers = v12->_stageResolvers;
    v12->_stageResolvers = array3;

    _setupStateDump = [(TRAArbitrationPreferencesResolutionStage *)v12 _setupStateDump];
    stateDumpHandle = v12->_stateDumpHandle;
    v12->_stateDumpHandle = _setupStateDump;
  }

  return v12;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  v3.receiver = self;
  v3.super_class = TRAArbitrationPreferencesResolutionStage;
  [(TRAArbitrationPreferencesResolutionStage *)&v3 dealloc];
}

- (void)updateResolutionWithContext:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_resolutionPolicySpecifiers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        acquiredParticipants = [contextCopy acquiredParticipants];
        [v10 updateStageParticipantsResolutionPolicies:acquiredParticipants context:contextCopy];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v52 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v12 = self->_nodesSpecsSpecifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (!v13)
  {
    v15 = v12;
    goto LABEL_18;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v39;
  do
  {
    v17 = 0;
    v18 = v15;
    do
    {
      if (*v39 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v15 = [*(*(&v38 + 1) + 8 * v17) updateStageTreeNodesSpecifications:v18 stageParticipantsRoles:self->_participantsRoles context:contextCopy];

      ++v17;
      v18 = v15;
    }

    while (v14 != v17);
    v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v38 objects:v51 count:16];
  }

  while (v14);

  if (v15)
  {
    v19 = [(TRAArbitrationPreferencesResolutionStage *)self preferencesType]== 1;
    v20 = TRAStringFromTraitsPreferencesType([(TRAArbitrationPreferencesResolutionStage *)self preferencesType]);
    v21 = [TRAPreferencesTree treeWithNodesSpecifications:v15 traversalType:v19 debugName:v20];
    stagePreferencesTree = self->_stagePreferencesTree;
    self->_stagePreferencesTree = v21;

LABEL_18:
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = self->_stageResolvers;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v24)
  {
    v26 = v24;
    v27 = *v35;
    *&v25 = 138543618;
    v33 = v25;
    do
    {
      v28 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v34 + 1) + 8 * v28) resolveStagePreferencesWithContext:contextCopy preferencesTree:{self->_stagePreferencesTree, v33, v34}];
        v29 = TRALogCommon();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = TRAStringFromTraitsPreferencesType(self->_preferencesType);
          recursiveDescription = [(TRAPreferencesTree *)self->_stagePreferencesTree recursiveDescription];
          *buf = v33;
          v47 = v30;
          v48 = 2114;
          v49 = recursiveDescription;
          _os_log_debug_impl(&dword_26F353000, v29, OS_LOG_TYPE_DEBUG, "Current stage tree %{public}@: %{public}@", buf, 0x16u);
        }

        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v26);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __86__TRAArbitrationPreferencesResolutionStage__addStageComponent_toArray_update_animate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 componentOrder];
  v6 = [v4 componentOrder];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationPreferencesResolutionStage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(TRAArbitrationPreferencesResolutionStage *)self succinctDescriptionBuilder];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_resolutionPolicySpecifiers, "count")];
  [succinctDescriptionBuilder appendString:v5 withName:@"resolutionPolicySpecifiers count"];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_nodesSpecsSpecifiers, "count")];
  [succinctDescriptionBuilder appendString:v6 withName:@"nodesSpecificationSpecifiers count"];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_stageResolvers, "count")];
  [succinctDescriptionBuilder appendString:v7 withName:@"stageResolvers count"];

  v8 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSMutableArray count](self->_participantsRoles withName:{"count"), @"participantsRoles count"}];
  if (self->_stagePreferencesTree)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__TRAArbitrationPreferencesResolutionStage_descriptionBuilderWithMultilinePrefix___block_invoke;
    v12[3] = &unk_279DD48D0;
    v13 = succinctDescriptionBuilder;
    selfCopy = self;
    [v13 appendBodySectionWithName:@"Preference Tree" multilinePrefix:0 block:v12];
  }

  else
  {
    recursiveDescription = [0 recursiveDescription];
    [succinctDescriptionBuilder appendString:recursiveDescription withName:@"Preference Tree"];
  }

  [succinctDescriptionBuilder appendArraySection:self->_resolutionPolicySpecifiers withName:@"Resolution Policy Specifiers" skipIfEmpty:0];
  [succinctDescriptionBuilder appendArraySection:self->_stageResolvers withName:@"Resolvers" skipIfEmpty:0];
  v10 = [succinctDescriptionBuilder appendUnsignedInteger:-[NSMutableArray count](self->_participantsRoles withName:{"count"), @"Managed Roles"}];

  return succinctDescriptionBuilder;
}

void __82__TRAArbitrationPreferencesResolutionStage_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 40) recursiveDescription];
  [v1 appendString:v2 withName:0];
}

- (id)_setupStateDump
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v6 = TRAStringFromTraitsPreferencesType(self->_preferencesType);
  v7 = [v4 stringWithFormat:@"TraitsArbiter - %p - Arbitration Pipeline - Preferences Resolution Stages - %@", WeakRetained, v6];
  objc_copyWeak(&v10, &location);
  v8 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v8;
}

__CFString *__59__TRAArbitrationPreferencesResolutionStage__setupStateDump__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained debugDescription];
  }

  else
  {
    v3 = &stru_287F70690;
  }

  return v3;
}

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (void)initWithParticipantsRoles:preferencesType:arbiter:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"participantsRoles" object:? file:? lineNumber:? description:?];
}

- (void)initWithParticipantsRoles:preferencesType:arbiter:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"arbiter" object:? file:? lineNumber:? description:?];
}

- (void)_addStageComponent:toArray:update:animate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"component" object:? file:? lineNumber:? description:?];
}

- (void)_addStageComponent:(uint64_t)a3 toArray:update:animate:.cold.2(void *a1, void *a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v6 = TRAStringFromTraitsPreferencesType([a1 preferencesType]);
  v7 = TRAStringFromTraitsPreferencesType([a2 preferencesType]);
  [v8 handleFailureInMethod:a3 object:a2 file:@"TRAArbitration.m" lineNumber:284 description:{@"Preferences stage component[%@] preferences type[%@], doesn't match stage[%@] preferences type[%@]", a1, v6, a2, v7}];
}

- (void)_removeComponent:fromArray:update:animate:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"component" object:? file:? lineNumber:? description:?];
}

@end