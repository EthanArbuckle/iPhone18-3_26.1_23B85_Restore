@interface WFSyntaxHighlightToken
+ (id)constructToken;
- (_NSRange)range;
@end

@implementation WFSyntaxHighlightToken

- (_NSRange)range
{
  v3 = [(WFSyntaxHighlightToken *)self start];
  v4 = [(WFSyntaxHighlightToken *)self length];
  v5 = v3;
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