@interface TIPinyinDisambiguationCandidate
+ (id)candidateWithPinyinSyllable:(id)syllable;
- (BOOL)isEqual:(id)equal;
- (TIPinyinDisambiguationCandidate)initWithCandidateResultSetCoder:(id)coder;
- (TIPinyinDisambiguationCandidate)initWithCoder:(id)coder;
- (TIPinyinDisambiguationCandidate)initWithPinyinSyllable:(id)syllable;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCandidateResultSetCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIPinyinDisambiguationCandidate

- (void)encodeWithCandidateResultSetCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TIPinyinDisambiguationCandidate;
  coderCopy = coder;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:coderCopy];
  v5 = [(TIPinyinDisambiguationCandidate *)self label:v6.receiver];
  [coderCopy encodeString:v5];
}

- (TIPinyinDisambiguationCandidate)initWithCandidateResultSetCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCandidateResultSetCoder:coderCopy];
  if (v5)
  {
    decodeString = [coderCopy decodeString];
    v7 = [decodeString copy];
    label = v5->_label;
    v5->_label = v7;
  }

  return v5;
}

- (unint64_t)hash
{
  label = [(TIPinyinDisambiguationCandidate *)self label];
  v3 = [label hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    label = [(TIPinyinDisambiguationCandidate *)self label];
    label2 = [v5 label];
    if ([label isEqualToString:label2])
    {
      isGeneratedByChoosePinyin = [(TIPinyinDisambiguationCandidate *)self isGeneratedByChoosePinyin];
      v9 = isGeneratedByChoosePinyin ^ [v5 isGeneratedByChoosePinyin] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TIPinyinDisambiguationCandidate;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCoder:coderCopy];
  label = self->_label;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"label"];
  }

  [coderCopy encodeBool:self->_generatedByChoosePinyin forKey:@"generatedByChoosePinyin"];
}

- (TIPinyinDisambiguationCandidate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    v7 = [v6 copy];
    label = v5->_label;
    v5->_label = v7;

    v5->_generatedByChoosePinyin = [coderCopy decodeBoolForKey:@"generatedByChoosePinyin"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 copyWithZone:?];
  if (v5)
  {
    label = [(TIPinyinDisambiguationCandidate *)self label];
    v7 = [label copyWithZone:zone];
    v8 = v5[30];
    v5[30] = v7;

    *(v5 + 232) = self->_generatedByChoosePinyin;
  }

  return v5;
}

- (TIPinyinDisambiguationCandidate)initWithPinyinSyllable:(id)syllable
{
  syllableCopy = syllable;
  v9.receiver = self;
  v9.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 initWithCandidate:&stru_1EF56D550 forInput:&stru_1EF56D550];
  if (v5)
  {
    v6 = [syllableCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)candidateWithPinyinSyllable:(id)syllable
{
  syllableCopy = syllable;
  v4 = [[TIPinyinDisambiguationCandidate alloc] initWithPinyinSyllable:syllableCopy];

  return v4;
}

@end