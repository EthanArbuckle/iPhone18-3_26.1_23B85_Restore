@interface PSSpecifier(UIAdditions)
- (void)st_startSpinner;
- (void)st_stopSpinner;
@end

@implementation PSSpecifier(UIAdditions)

- (void)st_startSpinner
{
  v1 = [a1 propertyForKey:*MEMORY[0x277D40148]];
  if (v1)
  {
    v3 = v1;
    v2 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v2 startAnimating];
    [v3 setAccessoryView:v2];

    v1 = v3;
  }
}

- (void)st_stopSpinner
{
  v2 = [a1 propertyForKey:*MEMORY[0x277D40148]];
  if (v2)
  {
    v4 = v2;
    v3 = [a1 propertyForKey:*MEMORY[0x277D3FEB0]];
    [v4 setAccessoryView:v3];

    v2 = v4;
  }
}

@end