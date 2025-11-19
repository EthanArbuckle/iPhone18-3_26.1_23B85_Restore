@interface INObject(WFNaming)
- (id)wfName;
@end

@implementation INObject(WFNaming)

- (id)wfName
{
  v1 = [a1 displayString];
  v2 = WFAbbreviatedNameFromText();

  return v2;
}

@end