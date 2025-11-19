@interface TLTransliteratorCandidateContext
- (TLTransliteratorCandidateContext)initWithCandidates:(id)a3;
- (id)description;
@end

@implementation TLTransliteratorCandidateContext

- (TLTransliteratorCandidateContext)initWithCandidates:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLTransliteratorCandidateContext;
  v5 = [(TLTransliteratorCandidateContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    candidates = v5->_candidates;
    v5->_candidates = v6;
  }

  return v5;
}

- (id)description
{
  v2 = [(TLTransliteratorCandidateContext *)self candidates];
  v3 = [v2 description];

  return v3;
}

@end