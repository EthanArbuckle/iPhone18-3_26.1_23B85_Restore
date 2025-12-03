@interface PXAlbumStreamingUtilities
+ (id)contactsViewControllerForParticipant:(id)participant resendInvitationSelector:(SEL)selector removeSubscriberSelector:(SEL)subscriberSelector target:(id)target;
@end

@implementation PXAlbumStreamingUtilities

+ (id)contactsViewControllerForParticipant:(id)participant resendInvitationSelector:(SEL)selector removeSubscriberSelector:(SEL)subscriberSelector target:(id)target
{
  v47[1] = *MEMORY[0x1E69E9840];
  participantCopy = participant;
  targetCopy = target;
  descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v47[0] = descriptorForRequiredKeys;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v43 = 0;
  v44 = 0;
  v11 = [participantCopy matchingContactWithKeysToFetch:v10 outMatchingKey:&v44 outMatchingIdentifier:&v43];
  v12 = v44;
  v13 = v43;

  v41 = PLServicesLocalizedFrameworkString();
  v40 = PLServicesLocalizedFrameworkString();
  v38 = v13;
  if (v11)
  {
    v14 = [MEMORY[0x1E695D148] viewControllerForContact:v11];
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
    {
      [v14 setDisplayMode:1];
    }

    [v14 setAllowsEditing:0];
    [v14 setAllowsActions:0];
    if (v12 && v13)
    {
      [v14 highlightPropertyWithKey:v12 identifier:v13];
    }

    contentViewController = [v14 contentViewController];
    cardFooterGroup = [contentViewController cardFooterGroup];
    if (selector)
    {
      [contentViewController addActionWithTitle:v41 target:targetCopy selector:selector inGroup:cardFooterGroup destructive:0];
    }

    if (subscriberSelector)
    {
      [contentViewController addActionWithTitle:v40 target:targetCopy selector:subscriberSelector inGroup:cardFooterGroup destructive:1];
    }

LABEL_25:

    v13 = v38;
    goto LABEL_26;
  }

  emailAddressString = [participantCopy emailAddressString];
  if (emailAddressString)
  {

LABEL_14:
    v36 = descriptorForRequiredKeys;
    contentViewController = objc_alloc_init(MEMORY[0x1E695CF18]);
    firstName = [participantCopy firstName];
    [contentViewController setGivenName:firstName];

    lastName = [participantCopy lastName];
    [contentViewController setFamilyName:lastName];

    emailAddressString2 = [participantCopy emailAddressString];

    if (emailAddressString2)
    {
      v22 = objc_alloc(MEMORY[0x1E695CEE0]);
      v23 = *MEMORY[0x1E695CB60];
      emailAddressString3 = [participantCopy emailAddressString];
      v25 = [v22 initWithLabel:v23 value:emailAddressString3];

      v46 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [contentViewController setEmailAddresses:v26];
    }

    phoneNumberString = [participantCopy phoneNumberString];

    if (phoneNumberString)
    {
      v28 = MEMORY[0x1E695CF50];
      phoneNumberString2 = [participantCopy phoneNumberString];
      v30 = [v28 phoneNumberWithStringValue:phoneNumberString2];

      v31 = objc_alloc(MEMORY[0x1E695CEE0]);
      v32 = [v31 initWithLabel:*MEMORY[0x1E695CBC0] value:v30];
      v45 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      [contentViewController setPhoneNumbers:v33];
    }

    v14 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:contentViewController];
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
    {
      [v14 setDisplayMode:1];
    }

    [v14 setAllowsActions:1];
    cardFooterGroup = [v14 contentViewController];
    [cardFooterGroup setAllowsAddingToAddressBook:1];
    v16CardFooterGroup = [cardFooterGroup cardFooterGroup];
    if (selector)
    {
      [cardFooterGroup addActionWithTitle:v41 target:targetCopy selector:selector inGroup:v16CardFooterGroup destructive:0];
    }

    if (subscriberSelector)
    {
      [cardFooterGroup addActionWithTitle:v40 target:targetCopy selector:subscriberSelector inGroup:v16CardFooterGroup destructive:1];
    }

    descriptorForRequiredKeys = v37;
    goto LABEL_25;
  }

  phoneNumberString3 = [participantCopy phoneNumberString];

  if (phoneNumberString3)
  {
    goto LABEL_14;
  }

  v14 = 0;
LABEL_26:

  return v14;
}

@end