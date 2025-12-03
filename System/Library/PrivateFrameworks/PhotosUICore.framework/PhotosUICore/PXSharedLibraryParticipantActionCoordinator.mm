@interface PXSharedLibraryParticipantActionCoordinator
- (PXSharedLibraryParticipantActionCoordinator)initWithParticipant:(id)participant sharedLibrary:(id)library;
- (UIViewController)actionViewController;
- (void)_removeParticipant:(id)participant;
- (void)_resendInvitation:(id)invitation;
@end

@implementation PXSharedLibraryParticipantActionCoordinator

- (UIViewController)actionViewController
{
  v60[1] = *MEMORY[0x1E69E9840];
  actionViewController = self->_actionViewController;
  if (!actionViewController)
  {
    participant = [(PXSharedLibraryParticipantActionCoordinator *)self participant];
    descriptorForRequiredKeys = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v60[0] = descriptorForRequiredKeys;
    v6 = 0x1E695D000uLL;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    v8 = PXSharedLibraryContactForParticipantAndKeys(participant, v7);

    if (v8)
    {
      v9 = [MEMORY[0x1E695D148] viewControllerForContact:v8];
      v10 = *MEMORY[0x1E695C208];
      v11 = *MEMORY[0x1E695C330];
      v59[0] = *MEMORY[0x1E695C208];
      v59[1] = v11;
      v59[2] = *MEMORY[0x1E695C320];
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
      [(UIViewController *)v9 setDisplayedPropertyKeys:v12];

      emailAddress = [participant emailAddress];
      phoneNumber = [participant phoneNumber];
      if ([emailAddress length])
      {
        v44 = v9;
        v46 = phoneNumber;
        v15 = participant;
        v42 = v10;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v47 = v8;
        emailAddresses = [v8 emailAddresses];
        v17 = [emailAddresses countByEnumeratingWithState:&v52 objects:v58 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v53;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v53 != v19)
              {
                objc_enumerationMutation(emailAddresses);
              }

              v21 = *(*(&v52 + 1) + 8 * i);
              value = [v21 value];
              v23 = [value isEqualToString:emailAddress];

              if (v23)
              {
                identifier = [v21 identifier];
                participant = v15;
                contentViewController = v42;
                v9 = v44;
                goto LABEL_28;
              }
            }

            v18 = [emailAddresses countByEnumeratingWithState:&v52 objects:v58 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        identifier = 0;
        participant = v15;
        phoneNumber = v46;
        v8 = v47;
        contentViewController = v42;
        v9 = v44;
        v6 = 0x1E695D000;
      }

      else if ([phoneNumber length])
      {
        contentViewController = v11;
        v46 = phoneNumber;
        emailAddresses = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:phoneNumber];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47 = v8;
        phoneNumbers = [v8 phoneNumbers];
        identifier = [phoneNumbers countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (identifier)
        {
          v43 = contentViewController;
          v45 = v9;
          v41 = participant;
          v28 = *v49;
          while (2)
          {
            for (j = 0; j != identifier; j = j + 1)
            {
              if (*v49 != v28)
              {
                objc_enumerationMutation(phoneNumbers);
              }

              v30 = *(*(&v48 + 1) + 8 * j);
              value2 = [v30 value];
              v32 = [value2 isLikePhoneNumber:emailAddresses];

              if (v32)
              {
                identifier = [v30 identifier];
                goto LABEL_26;
              }
            }

            identifier = [phoneNumbers countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (identifier)
            {
              continue;
            }

            break;
          }

LABEL_26:
          participant = v41;
          contentViewController = v43;
          v9 = v45;
        }

LABEL_28:
        v8 = v47;
        v6 = 0x1E695D000;
        if (contentViewController)
        {
          phoneNumber = v46;
          if (identifier)
          {
            [(UIViewController *)v9 highlightPropertyWithKey:contentViewController identifier:identifier important:1];
          }
        }

        else
        {
          phoneNumber = v46;
        }
      }

      else
      {
        contentViewController = 0;
        identifier = 0;
      }
    }

    else
    {
      participant2 = [(PXSharedLibraryParticipantActionCoordinator *)self participant];
      v8 = PXSharedLibraryMakeContactForParticipant(participant2);

      v9 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v8];
      contentViewController = [(UIViewController *)v9 contentViewController];
      [contentViewController setAllowsAddingToAddressBook:1];
    }

    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
    {
      [(UIViewController *)v9 setDisplayMode:1];
    }

    [(UIViewController *)v9 setAllowsEditing:0];
    [(UIViewController *)v9 setAllowsActions:0];
    sharedLibrary = self->_sharedLibrary;
    v56 = participant;
    v34 = [*(v6 + 3784) arrayWithObjects:&v56 count:1];
    LODWORD(sharedLibrary) = [(PXSharedLibrary *)sharedLibrary canDeleteParticipants:v34];

    if (sharedLibrary)
    {
      contentViewController2 = [(UIViewController *)v9 contentViewController];
      cardFooterGroup = [contentViewController2 cardFooterGroup];
      if (([participant status] - 5) <= 0xFFFFFFFFFFFFFFFCLL)
      {
        v37 = PXLocalizedSharedLibraryString(@"PXSharedLibraryParticipant_ResendInvitationMenuTitle");
        [contentViewController2 addActionWithTitle:v37 target:self selector:sel__resendInvitation_ inGroup:cardFooterGroup destructive:0];
      }

      v38 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_RemoveParticipantActionButtonTitle");
      [contentViewController2 addActionWithTitle:v38 target:self selector:sel__removeParticipant_ inGroup:cardFooterGroup destructive:1];
    }

    v39 = self->_actionViewController;
    self->_actionViewController = v9;

    actionViewController = self->_actionViewController;
  }

  return actionViewController;
}

- (void)_removeParticipant:(id)participant
{
  participant;
  participant = [(PXSharedLibraryParticipantActionCoordinator *)self participant];
  PXSharedLibraryShortNameForParticipant(participant);
  objc_claimAutoreleasedReturnValue();
  PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_RemoveParticipantAlertTitle");
  objc_claimAutoreleasedReturnValue();
  PXStringWithValidatedFormat();
}

void __66__PXSharedLibraryParticipantActionCoordinator__removeParticipant___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [off_1E7721960 defaultPresenterWithViewController:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v9[0] = *(a1 + 48);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__PXSharedLibraryParticipantActionCoordinator__removeParticipant___block_invoke_2;
  v6[3] = &unk_1E774B730;
  v7 = *(a1 + 32);
  v8 = v2;
  v5 = v2;
  [v3 deleteParticipants:v4 presentationEnvironment:v5 withCompletion:v6];
}

void __66__PXSharedLibraryParticipantActionCoordinator__removeParticipant___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v6 = [*(a1 + 32) navigationController];
    v4 = [v6 popViewControllerAnimated:1];
  }

  else
  {
    v5 = *(a1 + 40);

    PXHandleErrorDeletingParticipants(a3, v5, 0);
  }
}

- (void)_resendInvitation:(id)invitation
{
  invitationCopy = invitation;
  if (invitationCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    px_descriptionForAssertionMessage = [invitationCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantActionCoordinator.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v10, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantActionCoordinator.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v10}];
  }

LABEL_3:
  shareURL = [(PXSharedLibrary *)self->_sharedLibrary shareURL];
  actionViewController = [(PXSharedLibraryParticipantActionCoordinator *)self actionViewController];
  v7 = [off_1E7721960 popoverPresenterWithViewController:actionViewController sourceItem:invitationCopy];

  PXSharedLibraryShareInvitation(shareURL, v7, @"Preferences", 0);
}

- (PXSharedLibraryParticipantActionCoordinator)initWithParticipant:(id)participant sharedLibrary:(id)library
{
  participantCopy = participant;
  libraryCopy = library;
  v12.receiver = self;
  v12.super_class = PXSharedLibraryParticipantActionCoordinator;
  v9 = [(PXSharedLibraryParticipantActionCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, participant);
    objc_storeStrong(&v10->_sharedLibrary, library);
  }

  return v10;
}

@end