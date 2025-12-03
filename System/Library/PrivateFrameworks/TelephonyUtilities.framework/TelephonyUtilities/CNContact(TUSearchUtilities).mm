@interface CNContact(TUSearchUtilities)
+ (id)keysToFetchForFaceTime;
- (id)anyDestinationID;
- (id)emailAddressStrings;
- (id)faceTimeQuicklookURL;
- (id)phoneNumberLastFourDigitStrings;
- (id)phoneNumberStrings;
@end

@implementation CNContact(TUSearchUtilities)

+ (id)keysToFetchForFaceTime
{
  if (keysToFetchForFaceTime_onceToken != -1)
  {
    +[CNContact(TUSearchUtilities) keysToFetchForFaceTime];
  }

  v1 = keysToFetchForFaceTime_keysToFetchForFaceTime;

  return v1;
}

- (id)anyDestinationID
{
  phoneNumberStrings = [self phoneNumberStrings];
  emailAddressStrings = [self emailAddressStrings];
  v4 = [phoneNumberStrings arrayByAddingObjectsFromArray:emailAddressStrings];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)faceTimeQuicklookURL
{
  v1 = MEMORY[0x1E695DFF8];
  v2 = MEMORY[0x1E696AEC0];
  identifier = [self identifier];
  v4 = [v2 stringWithFormat:@"addressbook://%@", identifier];
  v5 = [v1 URLWithString:v4];

  return v5;
}

- (id)phoneNumberStrings
{
  phoneNumbers = [self phoneNumbers];
  v2 = [phoneNumbers arrayByApplyingSelector:sel_value];
  v3 = [v2 arrayByApplyingSelector:sel_stringValue];

  return v3;
}

- (id)phoneNumberLastFourDigitStrings
{
  phoneNumbers = [self phoneNumbers];
  v2 = [phoneNumbers arrayByApplyingSelector:sel_value];
  v3 = [v2 arrayByApplyingSelector:sel_lastFourDigits];

  return v3;
}

- (id)emailAddressStrings
{
  emailAddresses = [self emailAddresses];
  v2 = [emailAddresses arrayByApplyingSelector:sel_value];

  return v2;
}

@end