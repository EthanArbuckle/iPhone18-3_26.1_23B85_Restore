@interface NSURL(ICUtilities)
- (id)URLByAddingValuesFromQueryDictionary:()ICUtilities;
@end

@implementation NSURL(ICUtilities)

- (id)URLByAddingValuesFromQueryDictionary:()ICUtilities
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:0];
    [v5 addValuesFromQueryDictionary:v4];
    v6 = [v5 URL];
  }

  else
  {
    v6 = a1;
  }

  return v6;
}

@end