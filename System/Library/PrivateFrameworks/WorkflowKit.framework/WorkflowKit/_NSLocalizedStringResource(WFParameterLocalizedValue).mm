@interface _NSLocalizedStringResource(WFParameterLocalizedValue)
- (id)localizedStringWithContext:()WFParameterLocalizedValue pluralizationNumber:;
@end

@implementation _NSLocalizedStringResource(WFParameterLocalizedValue)

- (id)localizedStringWithContext:()WFParameterLocalizedValue pluralizationNumber:
{
  if (a4)
  {
    [a3 localize:self pluralizationNumber:?];
  }

  else
  {
    [a3 localize:self];
  }
  v4 = ;

  return v4;
}

@end