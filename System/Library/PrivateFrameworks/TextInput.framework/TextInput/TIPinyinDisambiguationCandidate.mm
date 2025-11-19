@interface TIPinyinDisambiguationCandidate
+ (id)candidateWithPinyinSyllable:(id)a3;
- (BOOL)isEqual:(id)a3;
- (TIPinyinDisambiguationCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TIPinyinDisambiguationCandidate)initWithCoder:(id)a3;
- (TIPinyinDisambiguationCandidate)initWithPinyinSyllable:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIPinyinDisambiguationCandidate

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TIPinyinDisambiguationCandidate;
  v4 = a3;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:v4];
  v5 = [(TIPinyinDisambiguationCandidate *)self label:v6.receiver];
  [v4 encodeString:v5];
}

- (TIPinyinDisambiguationCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    label = v5->_label;
    v5->_label = v7;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(TIPinyinDisambiguationCandidate *)self label];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TIPinyinDisambiguationCandidate *)self label];
    v7 = [v5 label];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(TIPinyinDisambiguationCandidate *)self isGeneratedByChoosePinyin];
      v9 = v8 ^ [v5 isGeneratedByChoosePinyin] ^ 1;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TIPinyinDisambiguationCandidate;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCoder:v4];
  label = self->_label;
  if (label)
  {
    [v4 encodeObject:label forKey:@"label"];
  }

  [v4 encodeBool:self->_generatedByChoosePinyin forKey:@"generatedByChoosePinyin"];
}

- (TIPinyinDisambiguationCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    v7 = [v6 copy];
    label = v5->_label;
    v5->_label = v7;

    v5->_generatedByChoosePinyin = [v4 decodeBoolForKey:@"generatedByChoosePinyin"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 copyWithZone:?];
  if (v5)
  {
    v6 = [(TIPinyinDisambiguationCandidate *)self label];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[30];
    v5[30] = v7;

    *(v5 + 232) = self->_generatedByChoosePinyin;
  }

  return v5;
}

- (TIPinyinDisambiguationCandidate)initWithPinyinSyllable:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIPinyinDisambiguationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 initWithCandidate:&stru_1EF56D550 forInput:&stru_1EF56D550];
  if (v5)
  {
    v6 = [v4 copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)candidateWithPinyinSyllable:(id)a3
{
  v3 = a3;
  v4 = [[TIPinyinDisambiguationCandidate alloc] initWithPinyinSyllable:v3];

  return v4;
}

@end