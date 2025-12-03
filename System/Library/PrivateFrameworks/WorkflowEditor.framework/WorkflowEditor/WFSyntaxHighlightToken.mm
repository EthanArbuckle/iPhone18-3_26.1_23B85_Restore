@interface WFSyntaxHighlightToken
+ (id)constructToken;
- (_NSRange)range;
@end

@implementation WFSyntaxHighlightToken

- (_NSRange)range
{
  start = [(WFSyntaxHighlightToken *)self start];
  v4 = [(WFSyntaxHighlightToken *)self length];
  v5 = start;
  result.length = v4;
  result.location = v5;
  return result;
}

+ (id)constructToken
{
  v2 = objc_alloc_init(WFSyntaxHighlightToken);

  return v2;
}

@end