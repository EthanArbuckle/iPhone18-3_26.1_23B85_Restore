@interface SiriNLUTypesUtilities
+ (id)serverDelegatedUserDialogActFromNLUResponse:(id)response;
@end

@implementation SiriNLUTypesUtilities

+ (id)serverDelegatedUserDialogActFromNLUResponse:(id)response
{
  responseCopy = response;
  v4 = objc_opt_new();
  supplementaryOutput = [responseCopy supplementaryOutput];
  rewrite = [supplementaryOutput rewrite];
  [v4 setRewrite:rewrite];

  supplementaryOutput2 = [responseCopy supplementaryOutput];

  matchingSpans = [supplementaryOutput2 matchingSpans];
  [v4 setMatchingSpans:matchingSpans];

  [v4 setAsrHypothesisIndex:0];
  [v4 setExternalParserId:@"com.apple.siri.nlv3"];

  return v4;
}

@end