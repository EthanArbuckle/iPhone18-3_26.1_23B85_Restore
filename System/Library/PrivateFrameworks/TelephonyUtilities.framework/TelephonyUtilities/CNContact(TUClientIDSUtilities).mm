@interface CNContact(TUClientIDSUtilities)
- (id)allIDSDestinations;
@end

@implementation CNContact(TUClientIDSUtilities)

- (id)allIDSDestinations
{
  v2 = [a1 phoneNumberStrings];
  v3 = [a1 emailAddressStrings];
  v4 = [v2 count];
  v5 = [v3 count];
  v6 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:v5 + v4];
  v7 = [v2 arrayByApplyingSelector:sel_IDSFormattedDestinationID];
  [v6 addObjectsFromArray:v7];

  v8 = [v3 arrayByApplyingSelector:sel_IDSFormattedDestinationID];
  [v6 addObjectsFromArray:v8];

  v9 = [v6 array];

  return v9;
}

@end