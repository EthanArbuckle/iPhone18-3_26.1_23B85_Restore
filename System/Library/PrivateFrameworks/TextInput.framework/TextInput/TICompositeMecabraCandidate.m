@interface TICompositeMecabraCandidate
- (TICompositeMecabraCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TICompositeMecabraCandidate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TICompositeMecabraCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = TICompositeMecabraCandidate;
  v4 = a3;
  [(TIMecabraCandidate *)&v7 encodeWithCandidateResultSetCoder:v4];
  v5 = [(TICompositeMecabraCandidate *)self remainderCandidateString:v7.receiver];
  [v4 encodeString:v5];

  v6 = [(TICompositeMecabraCandidate *)self autoconvertedCandidatePointerValues];
  [v4 encodePointerValueArray:v6];
}

- (TICompositeMecabraCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TICompositeMecabraCandidate;
  v5 = [(TIMecabraCandidate *)&v13 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    remainderCandidateString = v5->_remainderCandidateString;
    v5->_remainderCandidateString = v7;

    v9 = [v4 decodePointerValueArray];
    v10 = [v9 copy];
    autoconvertedCandidatePointerValues = v5->_autoconvertedCandidatePointerValues;
    v5->_autoconvertedCandidatePointerValues = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TICompositeMecabraCandidate;
  [(TIMecabraCandidate *)&v7 encodeWithCoder:v4];
  remainderCandidateString = self->_remainderCandidateString;
  if (remainderCandidateString)
  {
    [v4 encodeObject:remainderCandidateString forKey:@"remainderCandidateString"];
  }

  autoconvertedCandidatePointerValues = self->_autoconvertedCandidatePointerValues;
  if (autoconvertedCandidatePointerValues)
  {
    [v4 encodeObject:autoconvertedCandidatePointerValues forKey:@"autoconvertedCandidatePointerValues"];
  }
}

- (TICompositeMecabraCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TICompositeMecabraCandidate;
  v5 = [(TIMecabraCandidate *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainderCandidateString"];
    v7 = [v6 copy];
    remainderCandidateString = v5->_remainderCandidateString;
    v5->_remainderCandidateString = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"autoconvertedCandidatePointerValues"];
    v13 = [v12 copy];
    autoconvertedCandidatePointerValues = v5->_autoconvertedCandidatePointerValues;
    v5->_autoconvertedCandidatePointerValues = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = TICompositeMecabraCandidate;
  v5 = [(TIMecabraCandidate *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_remainderCandidateString copyWithZone:a3];
    v7 = v5[31];
    v5[31] = v6;

    v8 = [(NSArray *)self->_autoconvertedCandidatePointerValues copyWithZone:a3];
    v9 = v5[32];
    v5[32] = v8;
  }

  return v5;
}

@end