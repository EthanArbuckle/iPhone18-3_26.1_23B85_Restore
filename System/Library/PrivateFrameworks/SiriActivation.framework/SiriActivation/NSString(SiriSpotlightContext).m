@interface NSString(SiriSpotlightContext)
+ (__CFString)stringWithSiriSpotlightContextSource:()SiriSpotlightContext;
@end

@implementation NSString(SiriSpotlightContext)

+ (__CFString)stringWithSiriSpotlightContextSource:()SiriSpotlightContext
{
  v3 = @"UnknownSiriSpotlightContextSource";
  if (a3 == 1)
  {
    v3 = @"SiriSpotlightContextSourceAskSiriButton";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"SiriSpotlightContextSourceQuerySuggestion";
  }
}

@end