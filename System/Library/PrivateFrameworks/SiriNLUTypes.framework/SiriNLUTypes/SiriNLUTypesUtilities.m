@interface SiriNLUTypesUtilities
+ (id)serverDelegatedUserDialogActFromNLUResponse:(id)a3;
@end

@implementation SiriNLUTypesUtilities

+ (id)serverDelegatedUserDialogActFromNLUResponse:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 supplementaryOutput];
  v6 = [v5 rewrite];
  [v4 setRewrite:v6];

  v7 = [v3 supplementaryOutput];

  v8 = [v7 matchingSpans];
  [v4 setMatchingSpans:v8];

  [v4 setAsrHypothesisIndex:0];
  [v4 setExternalParserId:@"com.apple.siri.nlv3"];

  return v4;
}

@end