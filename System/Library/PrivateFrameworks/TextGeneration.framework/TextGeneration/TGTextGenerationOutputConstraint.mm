@interface TGTextGenerationOutputConstraint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TGTextGenerationOutputConstraint

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TGTextGenerationOutputConstraint);
  maxWordCount = [(TGTextGenerationOutputConstraint *)self maxWordCount];
  [(TGTextGenerationOutputConstraint *)v4 setMaxWordCount:maxWordCount];

  selfCopy = self;
  return selfCopy;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TGMutableTextGenerationOutputConstraint);
  maxWordCount = [(TGTextGenerationOutputConstraint *)self maxWordCount];
  [(TGTextGenerationOutputConstraint *)v4 setMaxWordCount:maxWordCount];

  selfCopy = self;
  return selfCopy;
}

- (unint64_t)hash
{
  maxWordCount = [(TGTextGenerationOutputConstraint *)self maxWordCount];
  v3 = [maxWordCount hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
    maxWordCount = [(TGTextGenerationOutputConstraint *)self maxWordCount];
    maxWordCount2 = [v7 maxWordCount];

    v6 = TGTextGenerationEqualAllowingNil(maxWordCount, maxWordCount2);
  }

  return v6;
}

@end