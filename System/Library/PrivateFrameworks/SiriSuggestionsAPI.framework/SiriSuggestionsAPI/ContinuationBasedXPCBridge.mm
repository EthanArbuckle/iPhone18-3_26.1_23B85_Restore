@interface ContinuationBasedXPCBridge
- (void)connectionErrorWithError:(id)error;
- (void)finalise;
- (void)sendSuggestionsWithSuggestions:(id)suggestions;
@end

@implementation ContinuationBasedXPCBridge

- (void)sendSuggestionsWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  selfCopy = self;
  v5 = sub_1BFAAE338();
  v7 = v6;

  sub_1BFAA1598(v5, v7);
  sub_1BF9FDC2C(v5, v7);
}

- (void)connectionErrorWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  sub_1BFAA164C(errorCopy);
}

- (void)finalise
{
  selfCopy = self;
  sub_1BFAA16D0();
}

@end