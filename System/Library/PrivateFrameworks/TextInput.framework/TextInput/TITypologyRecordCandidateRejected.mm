@interface TITypologyRecordCandidateRejected
- (TITypologyRecordCandidateRejected)initWithCoder:(id)coder;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITypologyRecordCandidateRejected

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  candidate = [(TITypologyRecordCandidateRejected *)self candidate];
  v3Candidate = [candidate candidate];
  v5 = [v2 stringWithFormat:@"CANDIDATE REJECTED: %@", v3Candidate];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordCandidateRejected;
  coderCopy = coder;
  [(TITypologyRecord *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_candidate forKey:{@"candidate", v5.receiver, v5.super_class}];
}

- (TITypologyRecordCandidateRejected)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TITypologyRecordCandidateRejected;
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