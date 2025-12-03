@interface TRAArbitrationInputsValidationStage
- (TRAArbiter)arbiter;
- (TRAArbitrationInputsValidationStage)initWithValidators:(id)validators arbiter:(id)arbiter;
- (id)_setupStateDump;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)validateInputs:(id)inputs withContext:(id)context;
- (void)addInputsValidator:(id)validator update:(BOOL)update;
- (void)dealloc;
- (void)removeInputsValidator:(id)validator update:(BOOL)update;
@end

@implementation TRAArbitrationInputsValidationStage

- (TRAArbitrationInputsValidationStage)initWithValidators:(id)validators arbiter:(id)arbiter
{
  validatorsCopy = validators;
  arbiterCopy = arbiter;
  v15.receiver = self;
  v15.super_class = TRAArbitrationInputsValidationStage;
  v8 = [(TRAArbitrationInputsValidationStage *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_arbiter, arbiterCopy);
    if (validatorsCopy)
    {
      [MEMORY[0x277CBEB18] arrayWithArray:validatorsCopy];
    }

    else
    {
      [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    }
    v10 = ;
    inputsValidators = v9->_inputsValidators;
    v9->_inputsValidators = v10;

    _setupStateDump = [(TRAArbitrationInputsValidationStage *)v9 _setupStateDump];
    stateDumpHandle = v9->_stateDumpHandle;
    v9->_stateDumpHandle = _setupStateDump;
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

- (void)addInputsValidator:(id)validator update:(BOOL)update
{
  updateCopy = update;
  validatorCopy = validator;
  v12 = validatorCopy;
  if (!validatorCopy)
  {
    [TRAArbitrationInputsValidationStage addInputsValidator:update:];
    validatorCopy = 0;
  }

  if (([(NSMutableArray *)self->_inputsValidators containsObject:validatorCopy]& 1) != 0)
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

    if (!updateCopy)
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

- (void)removeInputsValidator:(id)validator update:(BOOL)update
{
  updateCopy = update;
  validatorCopy = validator;
  v9 = validatorCopy;
  if (!validatorCopy)
  {
    [TRAArbitrationInputsValidationStage removeInputsValidator:update:];
    validatorCopy = 0;
  }

  if ([(NSMutableArray *)self->_inputsValidators containsObject:validatorCopy])
  {
    [(NSMutableArray *)self->_inputsValidators removeObject:v9];
    if (!updateCopy)
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
  succinctDescriptionBuilder = [(TRAArbitrationInputsValidationStage *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[NSMutableArray count](self->_inputsValidators, "count")];
  [v3 appendString:v4 withName:@"inputsValidators count"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAArbitrationInputsValidationStage *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(TRAArbitrationInputsValidationStage *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendArraySection:self->_inputsValidators withName:@"inputs validators" skipIfEmpty:0];

  return succinctDescriptionBuilder;
}

- (id)_setupStateDump
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_arbiter);
  weakRetained = [v4 stringWithFormat:@"TraitsArbiter - %p - Arbitration Pipeline - Inputs Validation Stage", WeakRetained];
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

- (id)validateInputs:(id)inputs withContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  contextCopy = context;
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
      v13 = inputsCopy;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        inputsCopy = [*(*(&v16 + 1) + 8 * v12) validateInputs:v13 withContext:{contextCopy, v16}];

        ++v12;
        v13 = inputsCopy;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return inputsCopy;
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