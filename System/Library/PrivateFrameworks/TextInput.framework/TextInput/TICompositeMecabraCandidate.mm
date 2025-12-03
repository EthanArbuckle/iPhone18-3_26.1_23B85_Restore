@interface TICompositeMecabraCandidate
- (TICompositeMecabraCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TICompositeMecabraCandidate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TICompositeMecabraCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = TICompositeMecabraCandidate;
  coderCopy = coder;
  [(TIMecabraCandidate *)&v7 encodeWithCandidateResultSetCoder:coderCopy];
  v5 = [(TICompositeMecabraCandidate *)self remainderCandidateString:v7.receiver];
  [coderCopy encodeString:v5];

  autoconvertedCandidatePointerValues = [(TICompositeMecabraCandidate *)self autoconvertedCandidatePointerValues];
  [coderCopy encodePointerValueArray:autoconvertedCandidatePointerValues];
}

- (TICompositeMecabraCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TICompositeMecabraCandidate;
  v5 = [(TIMecabraCandidate *)&v13 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    remainderCandidateString = v5->_remainderCandidateString;
    v5->_remainderCandidateString = v7;

    decodePointerValueArray = [coderCopy decodePointerValueArray];
    v10 = [decodePointerValueArray copy];
    autoconvertedCandidatePointerValues = v5->_autoconvertedCandidatePointerValues;
    v5->_autoconvertedCandidatePointerValues = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TICompositeMecabraCandidate;
  [(TIMecabraCandidate *)&v7 encodeWithCoder:coderCopy];
  remainderCandidateString = self->_remainderCandidateString;
  if (remainderCandidateString)
  {
    [coderCopy encodeObject:remainderCandidateString forKey:@"remainderCandidateString"];
  }

  autoconvertedCandidatePointerValues = self->_autoconvertedCandidatePointerValues;
  if (autoconvertedCandidatePointerValues)
  {
    [coderCopy encodeObject:autoconvertedCandidatePointerValues forKey:@"autoconvertedCandidatePointerValues"];
  }
}

- (TICompositeMecabraCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = TICompositeMecabraCandidate;
  v5 = [(TIMecabraCandidate *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainderCandidateString"];
    v7 = [v6 copy];
    remainderCandidateString = v5->_remainderCandidateString;
    v5->_remainderCandidateString = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"autoconvertedCandidatePointerValues"];
    v13 = [v12 copy];
    autoconvertedCandidatePointerValues = v5->_autoconvertedCandidatePointerValues;
    v5->_autoconvertedCandidatePointerValues = v13;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TICompositeMecabraCandidate;
  v5 = [(TIMecabraCandidate *)&v11 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_remainderCandidateString copyWithZone:zone];
    v7 = v5[31];
    v5[31] = v6;

    v8 = [(NSArray *)self->_autoconvertedCandidatePointerValues copyWithZone:zone];
    v9 = v5[32];
    v5[32] = v8;
  }

  return v5;
}

@end