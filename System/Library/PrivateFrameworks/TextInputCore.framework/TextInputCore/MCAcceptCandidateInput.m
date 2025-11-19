@interface MCAcceptCandidateInput
- (MCAcceptCandidateInput)initWithCandidateText:(id)a3 convertedInput:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shortDescriptionWithLeadingString:(id)a3;
@end

@implementation MCAcceptCandidateInput

- (id)shortDescriptionWithLeadingString:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(MCAcceptCandidateInput *)self candidateText];
  v6 = [(MCAcceptCandidateInput *)self convertedInput];
  v7 = [(MCAcceptCandidateInput *)self remainingInputString];
  v8 = [v4 stringWithFormat:@"MCAcceptCandidateInput: candidate=%@, input=%@, remaining=%@", v5, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = MCAcceptCandidateInput;
  v5 = [(MCKeyboardInput *)&v15 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidateText copyWithZone:a3];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [(NSString *)self->_convertedInput copyWithZone:a3];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [(NSArray *)self->_remainingMecabraInputs copyWithZone:a3];
    v11 = v5[6];
    v5[6] = v10;

    v12 = [(NSString *)self->_remainingInputString copyWithZone:a3];
    v13 = v5[7];
    v5[7] = v12;
  }

  return v5;
}

- (MCAcceptCandidateInput)initWithCandidateText:(id)a3 convertedInput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MCAcceptCandidateInput;
  v8 = [(MCKeyboardInput *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    candidateText = v8->_candidateText;
    v8->_candidateText = v9;

    v11 = [v7 copy];
    convertedInput = v8->_convertedInput;
    v8->_convertedInput = v11;
  }

  return v8;
}

@end