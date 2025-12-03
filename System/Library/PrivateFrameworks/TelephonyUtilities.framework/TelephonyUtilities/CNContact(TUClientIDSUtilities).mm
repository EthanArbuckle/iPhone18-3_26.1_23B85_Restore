@interface CNContact(TUClientIDSUtilities)
- (id)allIDSDestinations;
@end

@implementation CNContact(TUClientIDSUtilities)

- (id)allIDSDestinations
{
  phoneNumberStrings = [self phoneNumberStrings];
  emailAddressStrings = [self emailAddressStrings];
  v4 = [phoneNumberStrings count];
  v5 = [emailAddressStrings count];
  v6 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v5 + v4];
  v7 = [phoneNumberStrings arrayByApplyingSelector:sel_IDSFormattedDestinationID];
  [v6 addObjectsFromArray:v7];

  v8 = [emailAddressStrings arrayByApplyingSelector:sel_IDSFormattedDestinationID];
  [v6 addObjectsFromArray:v8];

  array = [v6 array];

  return array;
}

@end