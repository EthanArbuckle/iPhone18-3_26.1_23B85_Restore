@interface MCAcceptCandidateInput
- (MCAcceptCandidateInput)initWithCandidateText:(id)text convertedInput:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescriptionWithLeadingString:(id)string;
@end

@implementation MCAcceptCandidateInput

- (id)shortDescriptionWithLeadingString:(id)string
{
  v4 = MEMORY[0x277CCACA8];
  candidateText = [(MCAcceptCandidateInput *)self candidateText];
  convertedInput = [(MCAcceptCandidateInput *)self convertedInput];
  remainingInputString = [(MCAcceptCandidateInput *)self remainingInputString];
  v8 = [v4 stringWithFormat:@"MCAcceptCandidateInput: candidate=%@, input=%@, remaining=%@", candidateText, convertedInput, remainingInputString];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = MCAcceptCandidateInput;
  v5 = [(MCKeyboardInput *)&v15 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidateText copyWithZone:zone];
    v7 = v5[4];
    v5[4] = v6;

    v8 = [(NSString *)self->_convertedInput copyWithZone:zone];
    v9 = v5[5];
    v5[5] = v8;

    v10 = [(NSArray *)self->_remainingMecabraInputs copyWithZone:zone];
    v11 = v5[6];
    v5[6] = v10;

    v12 = [(NSString *)self->_remainingInputString copyWithZone:zone];
    v13 = v5[7];
    v5[7] = v12;
  }

  return v5;
}

- (MCAcceptCandidateInput)initWithCandidateText:(id)text convertedInput:(id)input
{
  textCopy = text;
  inputCopy = input;
  v14.receiver = self;
  v14.super_class = MCAcceptCandidateInput;
  v8 = [(MCKeyboardInput *)&v14 init];
  if (v8)
  {
    v9 = [textCopy copy];
    candidateText = v8->_candidateText;
    v8->_candidateText = v9;

    v11 = [inputCopy copy];
    convertedInput = v8->_convertedInput;
    v8->_convertedInput = v11;
  }

  return v8;
}

@end