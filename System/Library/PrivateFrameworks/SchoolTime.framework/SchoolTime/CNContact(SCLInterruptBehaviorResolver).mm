@interface CNContact(SCLInterruptBehaviorResolver)
+ (id)scl_predicateForContactsMatchingEventSender:()SCLInterruptBehaviorResolver;
@end

@implementation CNContact(SCLInterruptBehaviorResolver)

+ (id)scl_predicateForContactsMatchingEventSender:()SCLInterruptBehaviorResolver
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  contactIdentifier = [v4 contactIdentifier];

  if (contactIdentifier)
  {
    contactIdentifier2 = [v4 contactIdentifier];
    v12[0] = contactIdentifier2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [self predicateForContactsWithIdentifiers:v7];
LABEL_6:
    v9 = v8;

    goto LABEL_7;
  }

  contactIdentifier2 = [v4 value];
  if (([contactIdentifier2 destinationIdIsPhoneNumber] & 1) != 0 || objc_msgSend(v4, "type") == 2)
  {
    v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:contactIdentifier2];
    v8 = [self predicateForContactsMatchingPhoneNumber:v7 prefixHint:0];
    goto LABEL_6;
  }

  v9 = [self predicateForContactsMatchingEmailAddress:contactIdentifier2];
LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end