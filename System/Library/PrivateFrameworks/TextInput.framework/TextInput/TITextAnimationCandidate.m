@interface TITextAnimationCandidate
+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 forTextEffectName:(id)a5;
- (BOOL)isEqual:(id)a3;
- (TITextAnimationCandidate)initWithCandidateResultSetCoder:(id)a3;
- (TITextAnimationCandidate)initWithCandidateWithCandidate:(id)a3 forInput:(id)a4 forTextEffectName:(id)a5;
- (TITextAnimationCandidate)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCandidateResultSetCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TITextAnimationCandidate

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(TIKeyboardCandidateSingle *)self candidate];
  v5 = [(TIKeyboardCandidateSingle *)self input];
  v6 = [(TITextAnimationCandidate *)self textEffectName];
  v7 = [v3 stringWithFormat:@"<TITextAnimationCandidate: candidate %@, input %@, textEffectName %@>", v4, v5, v6];

  return v7;
}

- (void)encodeWithCandidateResultSetCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TITextAnimationCandidate;
  v4 = a3;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCandidateResultSetCoder:v4];
  v5 = [(TITextAnimationCandidate *)self textEffectName:v6.receiver];
  [v4 encodeString:v5];
}

- (TITextAnimationCandidate)initWithCandidateResultSetCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = TITextAnimationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v10 initWithCandidateResultSetCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeString];
    v7 = [v6 copy];
    textEffectName = v5->_textEffectName;
    v5->_textEffectName = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (textEffectName = self->_textEffectName, [v4 textEffectName], v6 = objc_claimAutoreleasedReturnValue(), LODWORD(textEffectName) = -[NSString isEqualToString:](textEffectName, "isEqualToString:", v6), v6, textEffectName))
  {
    v9.receiver = self;
    v9.super_class = TITextAnimationCandidate;
    v7 = [(TIKeyboardCandidate *)&v9 isEqual:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TITextAnimationCandidate;
  [(TIKeyboardCandidateSingle *)&v6 encodeWithCoder:v4];
  textEffectName = self->_textEffectName;
  if (textEffectName)
  {
    [v4 encodeObject:textEffectName forKey:@"textEffectName"];
  }
}

- (TITextAnimationCandidate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TITextAnimationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textEffectName"];
    textEffectName = v5->_textEffectName;
    v5->_textEffectName = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = TITextAnimationCandidate;
  v5 = [(TIKeyboardCandidateSingle *)&v9 copyWithZone:?];
  if (v5)
  {
    v6 = [(NSString *)self->_textEffectName copyWithZone:a3];
    v7 = v5[29];
    v5[29] = v6;
  }

  return v5;
}

- (TITextAnimationCandidate)initWithCandidateWithCandidate:(id)a3 forInput:(id)a4 forTextEffectName:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TITextAnimationCandidate;
  v10 = [(TIKeyboardCandidateSingle *)&v13 initWithCandidate:a3 forInput:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_textEffectName, a5);
  }

  return v11;
}

+ (id)candidateWithCandidate:(id)a3 forInput:(id)a4 forTextEffectName:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithCandidateWithCandidate:v10 forInput:v9 forTextEffectName:v8];

  return v11;
}

@end