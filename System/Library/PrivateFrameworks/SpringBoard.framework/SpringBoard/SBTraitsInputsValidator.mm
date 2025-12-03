@interface SBTraitsInputsValidator
- (NSString)description;
- (SBTraitsInputsValidator)initWithValidatorOrder:(id)order;
- (id)validateInputs:(id)inputs withContext:(id)context;
@end

@implementation SBTraitsInputsValidator

- (SBTraitsInputsValidator)initWithValidatorOrder:(id)order
{
  orderCopy = order;
  v9.receiver = self;
  v9.super_class = SBTraitsInputsValidator;
  v5 = [(SBTraitsInputsValidator *)&v9 init];
  if (v5)
  {
    v6 = [orderCopy copy];
    validatorOrder = v5->_validatorOrder;
    v5->_validatorOrder = v6;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCAB68];
  v8.receiver = self;
  v8.super_class = SBTraitsInputsValidator;
  v4 = [(SBTraitsInputsValidator *)&v8 description];
  v5 = [v3 stringWithString:v4];

  stringValue = [(NSNumber *)self->_validatorOrder stringValue];
  [v5 appendFormat:@" order: %@", stringValue];

  return v5;
}

- (id)validateInputs:(id)inputs withContext:(id)context
{
  inputsCopy = inputs;
  if (!inputsCopy)
  {
    [SBTraitsInputsValidator validateInputs:a2 withContext:self];
  }

  return inputsCopy;
}

- (void)validateInputs:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsInputsValidators.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"inputs != nil"}];
}

@end