@interface SFCreateContactCommand(SearchUICommandClass)
- (void)_searchUICommandHandlerClass;
@end

@implementation SFCreateContactCommand(SearchUICommandClass)

- (void)_searchUICommandHandlerClass
{
  person = [self person];
  if (person)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end