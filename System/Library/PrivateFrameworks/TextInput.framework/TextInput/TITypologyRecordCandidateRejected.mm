@interface TITypologyRecordCandidateRejected
- (TITypologyRecordCandidateRejected)initWithCoder:(id)a3;
- (id)shortDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITypologyRecordCandidateRejected

- (id)shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(TITypologyRecordCandidateRejected *)self candidate];
  v4 = [v3 candidate];
  v5 = [v2 stringWithFormat:@"CANDIDATE REJECTED: %@", v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TITypologyRecordCandidateRejected;
  v4 = a3;
  [(TITypologyRecord *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_candidate forKey:{@"candidate", v5.receiver, v5.super_class}];
}

- (TITypologyRecordCandidateRejected)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TITypologyRecordCandidateRejected;
  v5 = [(TITypologyRecord *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
    candidate = v5->_candidate;
    v5->_candidate = v6;
  }

  return v5;
}

@end