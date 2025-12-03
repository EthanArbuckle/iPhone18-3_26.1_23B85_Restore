@interface CNContact(TUSearchResultsAdditions)
- (id)handles;
@end

@implementation CNContact(TUSearchResultsAdditions)

- (id)handles
{
  phoneNumberStrings = [self phoneNumberStrings];
  emailAddressStrings = [self emailAddressStrings];
  v4 = [phoneNumberStrings arrayByAddingObjectsFromArray:emailAddressStrings];

  return v4;
}

@end