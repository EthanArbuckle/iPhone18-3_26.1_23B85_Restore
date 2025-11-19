@interface SBTraitsInputsValidator
- (NSString)description;
- (SBTraitsInputsValidator)initWithValidatorOrder:(id)a3;
- (id)validateInputs:(id)a3 withContext:(id)a4;
@end

@implementation SBTraitsInputsValidator

- (SBTraitsInputsValidator)initWithValidatorOrder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBTraitsInputsValidator;
  v5 = [(SBTraitsInputsValidator *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

  v6 = [(NSNumber *)self->_validatorOrder stringValue];
  [v5 appendFormat:@" order: %@", v6];

  return v5;
}

- (id)validateInputs:(id)a3 withContext:(id)a4
{
  v6 = a3;
  if (!v6)
  {
    [SBTraitsInputsValidator validateInputs:a2 withContext:self];
  }

  return v6;
}

- (void)validateInputs:(uint64_t)a1 withContext:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBTraitsInputsValidators.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"inputs != nil"}];
}

@end