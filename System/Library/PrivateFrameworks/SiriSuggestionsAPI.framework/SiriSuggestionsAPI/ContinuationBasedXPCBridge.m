@interface ContinuationBasedXPCBridge
- (void)connectionErrorWithError:(id)a3;
- (void)finalise;
- (void)sendSuggestionsWithSuggestions:(id)a3;
@end

@implementation ContinuationBasedXPCBridge

- (void)sendSuggestionsWithSuggestions:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_1BFAAE338();
  v7 = v6;

  sub_1BFAA1598(v5, v7);
  sub_1BF9FDC2C(v5, v7);
}

- (void)connectionErrorWithError:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1BFAA164C(v5);
}

- (void)finalise
{
  v2 = self;
  sub_1BFAA16D0();
}

@end