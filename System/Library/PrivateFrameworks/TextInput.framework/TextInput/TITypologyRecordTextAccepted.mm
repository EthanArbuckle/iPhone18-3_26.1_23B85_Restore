@interface TITypologyRecordTextAccepted
- (TITypologyRecordTextAccepted)initWithCoder:(id)coder;
- (id)changedText;
- (id)shortDescription;
- (id)textSummary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecordTextAccepted

- (id)changedText
{
  candidate = [(TITypologyRecordTextAccepted *)self candidate];
  input = [candidate input];
  v5 = [input length];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    candidate2 = [(TITypologyRecordTextAccepted *)self candidate];
    input2 = [candidate2 input];
    candidate3 = [(TITypologyRecordTextAccepted *)self candidate];
    v9Candidate = [candidate3 candidate];
    v7Candidate = [v6 stringWithFormat:@"%@->%@", input2, v9Candidate];

LABEL_5:
    goto LABEL_6;
  }

  candidate4 = [(TITypologyRecordTextAccepted *)self candidate];
  v12Candidate = [candidate4 candidate];

  if (v12Candidate)
  {
    candidate2 = [(TITypologyRecordTextAccepted *)self candidate];
    v7Candidate = [candidate2 candidate];
    goto LABEL_5;
  }

  v7Candidate = 0;
LABEL_6:

  return v7Candidate;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  candidate = [(TITypologyRecordTextAccepted *)self candidate];
  v4Candidate = [candidate candidate];
  candidate2 = [(TITypologyRecordTextAccepted *)self candidate];
  input = [candidate2 input];
  v8 = [v3 stringWithFormat:@"TEXT ACCEPTED: %@ for %@", v4Candidate, input];

  return v8;
}

- (id)textSummary
{
  candidate = [(TITypologyRecordTextAccepted *)self candidate];
  isAutocorrection = [candidate isAutocorrection];

  if (isAutocorrection)
  {
    candidate2 = [(TITypologyRecordTextAccepted *)self candidate];
    v6 = [(TITypologyRecord *)self textSummaryForAutocorrection:candidate2];
  }

  else
  {
    v6 = &stru_1EF56D550;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordTextAccepted;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidate forKey:{@"candidate", v5.receiver, v5.super_class}];
}

- (TITypologyRecordTextAccepted)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TITypologyRecordTextAccepted;
  v5 = [(TITypologyRecord *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    candidate = v5->_candidate;
    v5->_candidate = v6;
  }

  return v5;
}

@end