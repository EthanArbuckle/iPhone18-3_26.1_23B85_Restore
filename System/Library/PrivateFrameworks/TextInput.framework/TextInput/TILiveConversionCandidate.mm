@interface TILiveConversionCandidate
- (BOOL)isEqual:(id)equal;
- (TILiveConversionCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TILiveConversionCandidate)initWithCoder:(id)coder;
- (TILiveConversionCandidate)initWithSurface:(id)surface input:(id)input candidate:(id)candidate mecabraCandidatePointerValue:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)label;
- (unint64_t)hash;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TILiveConversionCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TILiveConversionCandidate;
  coderCopy = coder;
  [(TIMecabraCandidate *)&v5 encodeWithCandidateResultSetCoder:coderCopy];
  [coderCopy encodeString:{self->_candidate, v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_inlineCandidate];
  [coderCopy encodeBool:self->_partialCandidate];
}

- (TILiveConversionCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TILiveConversionCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v5->_inlineCandidate = [coderCopy decodeBool];
    v5->_partialCandidate = [coderCopy decodeBool];
  }

  return v5;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = TILiveConversionCandidate;
  v3 = 257 * [(TIKeyboardCandidate *)&v5 hash];
  return [(NSString *)self->_candidate hash]+ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = TILiveConversionCandidate, [(TIMecabraCandidate *)&v12 isEqual:equalCopy]))
  {
    v5 = equalCopy;
    label = [(TILiveConversionCandidate *)self label];
    label2 = [v5 label];
    if ([label isEqualToString:label2])
    {
      candidate = [(TILiveConversionCandidate *)self candidate];
      candidate2 = [v5 candidate];
      v10 = [candidate isEqualToString:candidate2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TILiveConversionCandidate;
  [(TIMecabraCandidate *)&v6 encodeWithCoder:coderCopy];
  candidate = self->_candidate;
  if (candidate)
  {
    [coderCopy encodeObject:candidate forKey:@"candidate-liveconversion"];
  }

  if (self->_inlineCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"inlinecandidate-liveconversion"];
  }

  if (self->_partialCandidate)
  {
    [coderCopy encodeBool:1 forKey:@"partialcandidate-liveconversion"];
  }
}

- (id)label
{
  v4.receiver = self;
  v4.super_class = TILiveConversionCandidate;
  candidate = [(TIMecabraCandidate *)&v4 candidate];

  return candidate;
}

- (TILiveConversionCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TILiveConversionCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate-liveconversion"];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v5->_inlineCandidate = [coderCopy decodeBoolForKey:@"inlinecandidate-liveconversion"];
    v5->_partialCandidate = [coderCopy decodeBoolForKey:@"partialcandidate-liveconversion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = TILiveConversionCandidate;
  v5 = [(TIMecabraCandidate *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidate copyWithZone:zone];
    v7 = v5[31];
    v5[31] = v6;

    *(v5 + 256) = self->_inlineCandidate;
    *(v5 + 257) = self->_partialCandidate;
  }

  return v5;
}

- (TILiveConversionCandidate)initWithSurface:(id)surface input:(id)input candidate:(id)candidate mecabraCandidatePointerValue:(id)value
{
  candidateCopy = candidate;
  v15.receiver = self;
  v15.super_class = TILiveConversionCandidate;
  v12 = [(TIMecabraCandidate *)&v15 initWithSurface:surface input:input mecabraCandidatePointerValue:value];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_candidate, candidate);
  }

  return v13;
}

@end