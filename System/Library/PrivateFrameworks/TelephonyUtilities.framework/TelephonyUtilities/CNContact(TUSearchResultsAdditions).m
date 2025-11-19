@interface CNContact(TUSearchResultsAdditions)
- (id)handles;
@end

@implementation CNContact(TUSearchResultsAdditions)

- (id)handles
{
  v2 = [a1 phoneNumberStrings];
  v3 = [a1 emailAddressStrings];
  v4 = [v2 arrayByAddingObjectsFromArray:v3];

  return v4;
}

@end