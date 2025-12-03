@interface TILabeledKeyboardCandidate
- (BOOL)isEqual:(id)equal;
- (TILabeledKeyboardCandidate)initWithCandidate:(id)candidate forInput:(id)input label:(id)label transliterationType:(int64_t)type;
- (TILabeledKeyboardCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TILabeledKeyboardCandidate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TILabeledKeyboardCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TILabeledKeyboardCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:coderCopy];
  if (self->_label)
  {
    label = self->_label;
  }

  else
  {
    label = &stru_1EF56D550;
  }

  [coderCopy encodeString:{label, v6.receiver, v6.super_class}];
  [coderCopy encodeByte:LOBYTE(self->_transliterationType)];
}

- (TILabeledKeyboardCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TILabeledKeyboardCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    label = v5->_label;
    v5->_label = v7;

    v5->_transliterationType = [coderCopy decodeByte];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = TILabeledKeyboardCandidate;
  [(TIKeyboardCandidateSingle *)&v7 encodeWithCoder:coderCopy];
  label = self->_label;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"label"];
  }

  transliterationType = self->_transliterationType;
  if (transliterationType)
  {
    [coderCopy encodeInt:transliterationType forKey:@"transliterationType"];
  }
}

- (TILabeledKeyboardCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TILabeledKeyboardCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v6;

    v5->_transliterationType = [coderCopy decodeIntForKey:@"transliterationType"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = TILabeledKeyboardCandidate;
  v4 = [(TIKeyboardCandidateSingle *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 31, self->_label);
    v5[29] = self->_transliterationType;
  }

  return v5;
}

- (TILabeledKeyboardCandidate)initWithCandidate:(id)candidate forInput:(id)input label:(id)label transliterationType:(int64_t)type
{
  labelCopy = label;
  v15.receiver = self;
  v15.super_class = TILabeledKeyboardCandidate;
  v12 = [(TIKeyboardCandidateSingle *)&v15 initWithCandidate:candidate forInput:input];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_label, label);
    v13->_transliterationType = type;
  }

  return v13;
}

@end