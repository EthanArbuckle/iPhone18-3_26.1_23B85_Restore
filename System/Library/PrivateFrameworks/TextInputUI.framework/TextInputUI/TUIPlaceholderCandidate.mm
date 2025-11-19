@interface TUIPlaceholderCandidate
+ (id)placeholderCandidate;
@end

@implementation TUIPlaceholderCandidate

+ (id)placeholderCandidate
{
  v2 = [(TIKeyboardCandidateSingle *)[TUIPlaceholderCandidate alloc] initWithUnchangedInput:&stru_1F03BA8F8];

  return v2;
}

@end