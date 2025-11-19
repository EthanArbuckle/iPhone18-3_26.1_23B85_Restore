@interface TRAArbitrationInputsValidationStage
- (TRAArbiter)arbiter;
- (TRAArbitrationInputsValidationStage)initWithValidators:(id)a3 arbiter:(id)a4;
- (id)_setupStateDump;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)validateInputs:(id)a3 withContext:(id)a4;
- (void)addInputsValidator:(id)a3 update:(BOOL)a4;
- (void)dealloc;
- (void)removeInputsValidator:(id)a3 update:(BOOL)a4;
@end

@implementation TRAArbitrationInputsValidationStage

- (TRAArbitrationInputsValidationStage)initWithValidators:(id)a3 arbiter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TRAArbitrationInputsValidationStage;
  v8 = [(TRAArbitrationInputsValidationStage *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_arbiter, v7);
    if (v6)
    {
      [MEMORY[0x277CBEB18] arrayWithArray:v6];
    }

    else
    {
      [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    }
    v10 = ;
    inputsValidators = v9->_inputsValidators;
    v9->_inputsValidators = v10;

    v12 = [(TRAArbitrationInputsValidationStage *)v9 _setupStateDump];
    stateDumpHandle = v9->_stateDumpHandle;
    v9->_stateDumpHandle = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateDumpHandle invalidate];
  v3.receiver = self;
  v3.super_class = TRAArbitrationInputsValidationStage;
  [(TRAArbitrationInputsValidationStage *)&v3 dealloc];
}

- (void)addInputsValidator:(id)a3 update:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v12 = v7;
  if (!v7)
  {
    [TRAArbitrationInputsValidationStage addInputsValidator:update:];
    v7 = 0;
  }

  if (([(NSMutableArray *)self->_inputsValidators containsObject:v7]& 1) != 0)
  {
    WeakRetained = [MEMORY[0x277CCA890] currentHandler];
    [WeakRetained handleFailureInMethod:a2 object:self file:@"TRAArbitration.m" lineNumber:99 description:{@"inputsValidator[%@] already added to the stage[%@]", v12, self}];
  }

  else
  {
    [(NSMutableArray *)self->_inputsValidators addObject:v12];
    v9 = [(NSMutableArray *)self->_inputsValidators sortedArrayUsingComparator:&__block_literal_global];
    v10 = [v9 mutableCopy];
    inputsValidators = self->_inputsValidators;
    self->_inputsValidators = v10;

    if (!v4)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _inputsValidationStageDidUpdateValidators:self];
  }

LABEL_8:
}

uint64_t __65__TRAArbitrationInputsValidationStage_addInputsValidator_update___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 validatorOrder];
  v6 = [v4 validatorOrder];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)removeInputsValidator:(id)a3 update:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v9 = v7;
  if (!v7)
  {
    [TRAArbitrationInputsValidationStage removeInputsValidator:update:];
    v7 = 0;
  }

  if ([(NSMutableArray *)self->_inputsValidators containsObject:v7])
  {
    [(NSMutableArray *)self->_inputsValidators removeObject:v9];
    if (!v4)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_arbiter);
    [WeakRetained _inputsValidationStageDidUpdateValidators:self];
  }

  else
  {
    WeakRetained = [MEMORY[0x277CCA890] currentHandler];
    [WeakRetained handleFailureInMethod:a2 object:self file:@"TRAArbitration.m" lineNumber:115 description:{@"inputsValidator[%@] can't be removed since not found in stage[%@]", v9, self}];
  }

LABEL_8:
}

- (id)succinctDescription
{
  v2 = [(TRAArbitrationInputsValidationStage *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_inputsValidators, "count")];
  [v3 appendString:v4 withName:@"inputsValidators count"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAArbitrationInputsValidationStage *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(TRAArbitrationInputsValidationStage *)self succinctDescriptionBuilder];
  [v4 appendArraySection:self->_inputsValidators withName:@"inputs validators" skipIfEmpty:0];

  return v4;
}

- (id)_setupStateDump
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  v6 = [v4 stringWithFormat:@"TraitsArbiter - %p - Arbitration Pipeline - Inputs Validation Stage", WeakRetained];
  objc_copyWeak(&v9, &location);
  v7 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v7;
}

__CFString *__54__TRAArbitrationInputsValidationStage__setupStateDump__block_invoke(uint64_t a1)
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

- (id)validateInputs:(id)a3 withContext:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_inputsValidators;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = v6;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v6 = [*(*(&v16 + 1) + 8 * v12) validateInputs:v13 withContext:{v7, v16}];

        ++v12;
        v13 = v6;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (TRAArbiter)arbiter
{
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);

  return WeakRetained;
}

- (void)addInputsValidator:update:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputsValidator" object:? file:? lineNumber:? description:?];
}

- (void)removeInputsValidator:update:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"inputsValidator" object:? file:? lineNumber:? description:?];
}

@end