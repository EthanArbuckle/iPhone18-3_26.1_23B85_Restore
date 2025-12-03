@interface UITextReplacementCandidate
+ (id)textReplacementCandidateForTextReplacement:(id)replacement;
- (id)_initWithTextReplacement:(id)replacement;
@end

@implementation UITextReplacementCandidate

+ (id)textReplacementCandidateForTextReplacement:(id)replacement
{
  replacementCopy = replacement;
  v4 = [[UITextReplacementCandidate alloc] _initWithTextReplacement:replacementCopy];

  return v4;
}

- (id)_initWithTextReplacement:(id)replacement
{
  replacementCopy = replacement;
  v9.receiver = self;
  v9.super_class = UITextReplacementCandidate;
  v6 = [(UITextReplacementCandidate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replacement, replacement);
  }

  return v7;
}

@end