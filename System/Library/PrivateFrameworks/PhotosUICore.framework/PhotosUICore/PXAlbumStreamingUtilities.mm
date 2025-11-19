@interface PXAlbumStreamingUtilities
+ (id)contactsViewControllerForParticipant:(id)a3 resendInvitationSelector:(SEL)a4 removeSubscriberSelector:(SEL)a5 target:(id)a6;
@end

@implementation PXAlbumStreamingUtilities

+ (id)contactsViewControllerForParticipant:(id)a3 resendInvitationSelector:(SEL)a4 removeSubscriberSelector:(SEL)a5 target:(id)a6
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v42 = a6;
  v9 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
  v47[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
  v43 = 0;
  v44 = 0;
  v11 = [v8 matchingContactWithKeysToFetch:v10 outMatchingKey:&v44 outMatchingIdentifier:&v43];
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

    v15 = [v14 contentViewController];
    v16 = [v15 cardFooterGroup];
    if (a4)
    {
      [v15 addActionWithTitle:v41 target:v42 selector:a4 inGroup:v16 destructive:0];
    }

    if (a5)
    {
      [v15 addActionWithTitle:v40 target:v42 selector:a5 inGroup:v16 destructive:1];
    }

LABEL_25:

    v13 = v38;
    goto LABEL_26;
  }

  v17 = [v8 emailAddressString];
  if (v17)
  {

LABEL_14:
    v36 = v9;
    v15 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v19 = [v8 firstName];
    [v15 setGivenName:v19];

    v20 = [v8 lastName];
    [v15 setFamilyName:v20];

    v21 = [v8 emailAddressString];

    if (v21)
    {
      v22 = objc_alloc(MEMORY[0x1E695CEE0]);
      v23 = *MEMORY[0x1E695CB60];
      v24 = [v8 emailAddressString];
      v25 = [v22 initWithLabel:v23 value:v24];

      v46 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [v15 setEmailAddresses:v26];
    }

    v27 = [v8 phoneNumberString];

    if (v27)
    {
      v28 = MEMORY[0x1E695CF50];
      v29 = [v8 phoneNumberString];
      v30 = [v28 phoneNumberWithStringValue:v29];

      v31 = objc_alloc(MEMORY[0x1E695CEE0]);
      v32 = [v31 initWithLabel:*MEMORY[0x1E695CBC0] value:v30];
      v45 = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
      [v15 setPhoneNumbers:v33];
    }

    v14 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v15];
    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
    {
      [v14 setDisplayMode:1];
    }

    [v14 setAllowsActions:1];
    v16 = [v14 contentViewController];
    [v16 setAllowsAddingToAddressBook:1];
    v34 = [v16 cardFooterGroup];
    if (a4)
    {
      [v16 addActionWithTitle:v41 target:v42 selector:a4 inGroup:v34 destructive:0];
    }

    if (a5)
    {
      [v16 addActionWithTitle:v40 target:v42 selector:a5 inGroup:v34 destructive:1];
    }

    v9 = v37;
    goto LABEL_25;
  }

  v18 = [v8 phoneNumberString];

  if (v18)
  {
    goto LABEL_14;
  }

  v14 = 0;
LABEL_26:

  return v14;
}

@end