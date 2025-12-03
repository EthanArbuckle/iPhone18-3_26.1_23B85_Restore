@interface NSURL(ICUtilities)
- (id)URLByAddingValuesFromQueryDictionary:()ICUtilities;
@end

@implementation NSURL(ICUtilities)

- (id)URLByAddingValuesFromQueryDictionary:()ICUtilities
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
    [v5 addValuesFromQueryDictionary:v4];
    selfCopy = [v5 URL];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end