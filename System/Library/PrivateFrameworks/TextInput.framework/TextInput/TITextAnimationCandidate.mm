@interface TITextAnimationCandidate
+ (id)candidateWithCandidate:(id)candidate forInput:(id)input forTextEffectName:(id)name;
- (BOOL)isEqual:(id)equal;
- (TITextAnimationCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TITextAnimationCandidate)initWithCandidateWithCandidate:(id)candidate forInput:(id)input forTextEffectName:(id)name;
- (TITextAnimationCandidate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TITextAnimationCandidate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  candidate = [(TIKeyboardCandidateSingle *)self candidate];
  input = [(TIKeyboardCandidateSingle *)self input];
  textEffectName = [(TITextAnimationCandidate *)self textEffectName];
  v7 = [v3 stringWithFormat:@"<TITextAnimationCandidate: candidate %@, input %@, textEffectName %@>", candidate, input, textEffectName];

  return v7;
}

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TITextAnimationCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:coderCopy];
  v5 = [(TITextAnimationCandidate *)self textEffectName:v6.receiver];
  [coderCopy encodeString:v5];
}

- (TITextAnimationCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TITextAnimationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    textEffectName = v5->_textEffectName;
    v5->_textEffectName = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (textEffectName = self->_textEffectName, [equalCopy textEffectName], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(textEffectName) = -[NSString isEqualToString:](textEffectName, "isEqualToString:", v6), v6, textEffectName))
  {
    v9.receiver = self;
    v9.super_class = TITextAnimationCandidate;
    v7 = [(TIKeyboardCandidate *)&v9 isEqual:equalCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TITextAnimationCandidate;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCoder:coderCopy];
  textEffectName = self->_textEffectName;
  if (textEffectName)
  {
    [coderCopy encodeObject:textEffectName forKey:@"textEffectName"];
  }
}

- (TITextAnimationCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TITextAnimationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textEffectName"];
    textEffectName = v5->_textEffectName;
    v5->_textEffectName = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = TITextAnimationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_textEffectName copyWithZone:zone];
    v7 = v5[29];
    v5[29] = v6;
  }

  return v5;
}

- (TITextAnimationCandidate)initWithCandidateWithCandidate:(id)candidate forInput:(id)input forTextEffectName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = TITextAnimationCandidate;
  v10 = [(TIKeyboardCandidateSingle *)&v13 initWithCandidate:candidate forInput:input];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_textEffectName, name);
  }

  return v11;
}

+ (id)candidateWithCandidate:(id)candidate forInput:(id)input forTextEffectName:(id)name
{
  nameCopy = name;
  inputCopy = input;
  candidateCopy = candidate;
  v11 = [[self alloc] initWithCandidateWithCandidate:candidateCopy forInput:inputCopy forTextEffectName:nameCopy];

  return v11;
}

@end