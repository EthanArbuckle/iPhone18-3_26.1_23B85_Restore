@interface TITypologyRecordAcceptedCandidate
- (TITypologyRecordAcceptedCandidate)initWithCoder:(id)coder;
- (id)changedText;
- (id)shortDescription;
- (id)textSummary;
- (void)encodeWithCoder:(id)coder;
- (void)removeContextFromKeyboardState;
- (void)replaceDocumentState:(id)state;
@end

@implementation TITypologyRecordAcceptedCandidate

- (void)replaceDocumentState:(id)state
{
  stateCopy = state;
  keyboardState = [(TITypologyRecordAcceptedCandidate *)self keyboardState];
  [keyboardState setDocumentState:stateCopy];
}

- (id)changedText
{
  candidate = [(TITypologyRecordAcceptedCandidate *)self candidate];
  input = [candidate input];
  if ([input length])
  {
    candidate2 = [(TITypologyRecordAcceptedCandidate *)self candidate];
    input2 = [candidate2 input];
    candidate3 = [(TITypologyRecordAcceptedCandidate *)self candidate];
    v7Candidate = [candidate3 candidate];
    v9 = [input2 isEqualToString:v7Candidate];

    if ((v9 & 1) == 0)
    {
      v10 = MEMORY[0x1E696AEC0];
      candidate4 = [(TITypologyRecordAcceptedCandidate *)self candidate];
      input3 = [candidate4 input];
      candidate5 = [(TITypologyRecordAcceptedCandidate *)self candidate];
      v13Candidate = [candidate5 candidate];
      v11Candidate = [v10 stringWithFormat:@"%@->%@", input3, v13Candidate];

LABEL_7:
      goto LABEL_9;
    }
  }

  else
  {
  }

  candidate6 = [(TITypologyRecordAcceptedCandidate *)self candidate];
  v16Candidate = [candidate6 candidate];

  if (v16Candidate)
  {
    candidate4 = [(TITypologyRecordAcceptedCandidate *)self candidate];
    v11Candidate = [candidate4 candidate];
    goto LABEL_7;
  }

  v11Candidate = 0;
LABEL_9:

  return v11Candidate;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AD60];
  candidate = [(TITypologyRecordAcceptedCandidate *)self candidate];
  v4Candidate = [candidate candidate];
  v6 = [v3 stringWithFormat:@"ACCEPTED %@", v4Candidate];

  textToCommit = [(TITypologyRecordAcceptedCandidate *)self textToCommit];

  if (textToCommit)
  {
    textToCommit2 = [(TITypologyRecordAcceptedCandidate *)self textToCommit];
    [v6 appendFormat:@"; COMMIT %@", textToCommit2];
  }

  keyboardConfig = [(TITypologyRecordAcceptedCandidate *)self keyboardConfig];
  intermediateText = [keyboardConfig intermediateText];

  if (intermediateText)
  {
    keyboardConfig2 = [(TITypologyRecordAcceptedCandidate *)self keyboardConfig];
    intermediateText2 = [keyboardConfig2 intermediateText];
    [v6 appendFormat:@"; %@", intermediateText2];
  }

  return v6;
}

- (id)textSummary
{
  candidate = [(TITypologyRecordAcceptedCandidate *)self candidate];
  v2Candidate = [candidate candidate];
  v4 = v2Candidate;
  if (v2Candidate)
  {
    v5 = v2Candidate;
  }

  else
  {
    v5 = &stru_1EF56D550;
  }

  v6 = v5;

  return v5;
}

- (void)removeContextFromKeyboardState
{
  keyboardState = [(TITypologyRecordAcceptedCandidate *)self keyboardState];
  v4 = [keyboardState copy];

  [v4 setInputContextHistory:0];
  [(TITypologyRecordAcceptedCandidate *)self setKeyboardState:v4];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordAcceptedCandidate;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidate forKey:{@"candidate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_keyboardState forKey:@"keyboardState"];
  [coderCopy encodeObject:self->_keyboardConfig forKey:@"keyboardConfig"];
  [coderCopy encodeObject:self->_textToCommit forKey:@"textToCommit"];
}

- (TITypologyRecordAcceptedCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TITypologyRecordAcceptedCandidate;
  v5 = [(TITypologyRecord *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    candidate = v5->_candidate;
    v5->_candidate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardState"];
    keyboardState = v5->_keyboardState;
    v5->_keyboardState = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyboardConfig"];
    keyboardConfig = v5->_keyboardConfig;
    v5->_keyboardConfig = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textToCommit"];
    v13 = [v12 copy];
    textToCommit = v5->_textToCommit;
    v5->_textToCommit = v13;
  }

  return v5;
}

@end