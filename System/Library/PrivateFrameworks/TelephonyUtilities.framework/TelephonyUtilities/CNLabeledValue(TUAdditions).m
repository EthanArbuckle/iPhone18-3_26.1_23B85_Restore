@interface CNLabeledValue(TUAdditions)
- (uint64_t)tuIsSuggested;
@end

@implementation CNLabeledValue(TUAdditions)

- (uint64_t)tuIsSuggested
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [a1 isSuggested];
}

@end