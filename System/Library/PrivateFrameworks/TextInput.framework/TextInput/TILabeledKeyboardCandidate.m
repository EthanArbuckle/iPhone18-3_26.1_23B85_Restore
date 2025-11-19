@interface TILabeledKeyboardCandidate
- (BOOL)isEqual:(id)a3;
- (TILabeledKeyboardCandidate)initWithCandidate:(id)a3 forInput:(id)a4 label:(id)a5 transliterationType:(int64_t)a6;
- (TILabeledKeyboardCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TILabeledKeyboardCandidate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TILabeledKeyboardCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TILabeledKeyboardCandidate;
  v4 = a3;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:v4];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = &stru_1EF56D550;
  }

  [v4 encodeString:{label, v6.receiver, v6.super_class}];
  [v4 encodeByte:LOBYTE(self->_transliterationType)];
}

- (TILabeledKeyboardCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TILabeledKeyboardCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    label = v5->_label;
    v5->_label = v7;

    v5->_transliterationType = [v4 decodeByte];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8.receiver = self;
    v8.super_class = TILabeledKeyboardCandidate;
    if ([(TIKeyboardCandidate *)&v8 isEqual:v5])
    {
      v6 = self->_transliterationType == v5[29];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TILabeledKeyboardCandidate;
  [(TIKeyboardCandidateSingle *)&v7 encodeWithCoder:v4];
  label = self->_label;
  if (label)
  {
    [v4 encodeObject:label forKey:@"label"];
  }

  transliterationType = self->_transliterationType;
  if (transliterationType)
  {
    [v4 encodeInt:transliterationType forKey:@"transliterationType"];
  }
}

- (TILabeledKeyboardCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TILabeledKeyboardCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_transliterationType = [v4 decodeIntForKey:@"transliterationType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = TILabeledKeyboardCandidate;
  v4 = [(TIKeyboardCandidateSingle *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 31, self->_label);
    v5[29] = self->_transliterationType;
  }

  return v5;
}

- (TILabeledKeyboardCandidate)initWithCandidate:(id)a3 forInput:(id)a4 label:(id)a5 transliterationType:(int64_t)a6
{
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TILabeledKeyboardCandidate;
  v12 = [(TIKeyboardCandidateSingle *)&v15 initWithCandidate:a3 forInput:a4];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_label, a5);
    v13->_transliterationType = a6;
  }

  return v13;
}

@end