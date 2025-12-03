@interface INObject(WFNaming)
- (id)wfName;
@end

@implementation INObject(WFNaming)

- (id)wfName
{
  displayString = [self displayString];
  v2 = WFAbbreviatedNameFromText();

  return v2;
}

@end