@interface TILiveConversionCandidate
- (BOOL)isEqual:(id)a3;
- (TILiveConversionCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TILiveConversionCandidate)initWithCoder:(id)a3;
- (TILiveConversionCandidate)initWithSurface:(id)a3 input:(id)a4 candidate:(id)a5 mecabraCandidatePointerValue:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)label;
- (unint64_t)hash;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TILiveConversionCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TILiveConversionCandidate;
  v4 = a3;
  [(TIMecabraCandidate *)&v5 encodeWithCandidateResultSetCoder:v4];
  [v4 encodeString:{self->_candidate, v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_inlineCandidate];
  [v4 encodeBool:self->_partialCandidate];
}

- (TILiveConversionCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TILiveConversionCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v5->_inlineCandidate = [v4 decodeBool];
    v5->_partialCandidate = [v4 decodeBool];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v12.receiver = self, v12.super_class = TILiveConversionCandidate, [(TIMecabraCandidate *)&v12 isEqual:v4]))
  {
    v5 = v4;
    v6 = [(TILiveConversionCandidate *)self label];
    v7 = [v5 label];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(TILiveConversionCandidate *)self candidate];
      v9 = [v5 candidate];
      v10 = [v8 isEqualToString:v9];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TILiveConversionCandidate;
  [(TIMecabraCandidate *)&v6 encodeWithCoder:v4];
  candidate = self->_candidate;
  if (candidate)
  {
    [v4 encodeObject:candidate forKey:@"candidate-liveconversion"];
  }

  if (self->_inlineCandidate)
  {
    [v4 encodeBool:1 forKey:@"inlinecandidate-liveconversion"];
  }

  if (self->_partialCandidate)
  {
    [v4 encodeBool:1 forKey:@"partialcandidate-liveconversion"];
  }
}

- (id)label
{
  v4.receiver = self;
  v4.super_class = TILiveConversionCandidate;
  v2 = [(TIMecabraCandidate *)&v4 candidate];

  return v2;
}

- (TILiveConversionCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TILiveConversionCandidate;
  v5 = [(TIMecabraCandidate *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"candidate-liveconversion"];
    v7 = [v6 copy];
    candidate = v5->_candidate;
    v5->_candidate = v7;

    v5->_inlineCandidate = [v4 decodeBoolForKey:@"inlinecandidate-liveconversion"];
    v5->_partialCandidate = [v4 decodeBoolForKey:@"partialcandidate-liveconversion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = TILiveConversionCandidate;
  v5 = [(TIMecabraCandidate *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_candidate copyWithZone:a3];
    v7 = v5[31];
    v5[31] = v6;

    *(v5 + 256) = self->_inlineCandidate;
    *(v5 + 257) = self->_partialCandidate;
  }

  return v5;
}

- (TILiveConversionCandidate)initWithSurface:(id)a3 input:(id)a4 candidate:(id)a5 mecabraCandidatePointerValue:(id)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TILiveConversionCandidate;
  v12 = [(TIMecabraCandidate *)&v15 initWithSurface:a3 input:a4 mecabraCandidatePointerValue:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_candidate, a5);
  }

  return v13;
}

@end