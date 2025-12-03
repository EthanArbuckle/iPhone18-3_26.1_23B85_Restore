@interface TLTransliteratorCandidateContext
- (TLTransliteratorCandidateContext)initWithCandidates:(id)candidates;
- (id)description;
@end

@implementation TLTransliteratorCandidateContext

- (TLTransliteratorCandidateContext)initWithCandidates:(id)candidates
{
  candidatesCopy = candidates;
  v9.receiver = self;
  v9.super_class = TLTransliteratorCandidateContext;
  v5 = [(TLTransliteratorCandidateContext *)&v9 init];
  if (v5)
  {
    v6 = [candidatesCopy copy];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  return v5;
}

- (id)description
{
  candidates = [(TLTransliteratorCandidateContext *)self candidates];
  v3 = [candidates description];

  return v3;
}

@end