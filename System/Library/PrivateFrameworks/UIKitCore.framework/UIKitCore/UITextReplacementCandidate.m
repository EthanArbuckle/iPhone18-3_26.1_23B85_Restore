@interface UITextReplacementCandidate
+ (id)textReplacementCandidateForTextReplacement:(id)a3;
- (id)_initWithTextReplacement:(id)a3;
@end

@implementation UITextReplacementCandidate

+ (id)textReplacementCandidateForTextReplacement:(id)a3
{
  v3 = a3;
  v4 = [[UITextReplacementCandidate alloc] _initWithTextReplacement:v3];

  return v4;
}

- (id)_initWithTextReplacement:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UITextReplacementCandidate;
  v6 = [(UITextReplacementCandidate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replacement, a3);
  }

  return v7;
}

@end