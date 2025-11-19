@interface TIKeyboardCandidate(UIKeyboardAdditions)
- (uint64_t)isSlottedCandidate;
@end

@implementation TIKeyboardCandidate(UIKeyboardAdditions)

- (uint64_t)isSlottedCandidate
{
  if ([a1 isSecureContentCandidate])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end