@interface NSURL(ISURLBagAdditions)
- (id)sanitizedURL;
@end

@implementation NSURL(ISURLBagAdditions)

- (id)sanitizedURL
{
  v2 = [MEMORY[0x277D69C90] contextWithBagType:0];
  v3 = +[ISURLBagCache sharedCache];
  v4 = [v3 URLBagForContext:v2];

  v5 = [v4 sanitizedURLForURL:self];

  return v5;
}

@end