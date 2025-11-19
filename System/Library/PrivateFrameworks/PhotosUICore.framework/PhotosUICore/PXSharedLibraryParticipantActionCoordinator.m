@interface PXSharedLibraryParticipantActionCoordinator
- (PXSharedLibraryParticipantActionCoordinator)initWithParticipant:(id)a3 sharedLibrary:(id)a4;
- (UIViewController)actionViewController;
- (void)_removeParticipant:(id)a3;
- (void)_resendInvitation:(id)a3;
@end

@implementation PXSharedLibraryParticipantActionCoordinator

- (UIViewController)actionViewController
{
  v60[1] = *MEMORY[0x1E69E9840];
  actionViewController = self->_actionViewController;
  if (!actionViewController)
  {
    v4 = [(PXSharedLibraryParticipantActionCoordinator *)self participant];
    v5 = [MEMORY[0x1E695D148] descriptorForRequiredKeys];
    v60[0] = v5;
    v6 = 0x1E695D000uLL;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    v8 = PXSharedLibraryContactForParticipantAndKeys(v4, v7);

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

      v13 = [v4 emailAddress];
      v14 = [v4 phoneNumber];
      if ([v13 length])
      {
        v44 = v9;
        v46 = v14;
        v15 = v4;
        v42 = v10;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v47 = v8;
        v16 = [v8 emailAddresses];
        v17 = [v16 countByEnumeratingWithState:&v52 objects:v58 count:16];
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
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v52 + 1) + 8 * i);
              v22 = [v21 value];
              v23 = [v22 isEqualToString:v13];

              if (v23)
              {
                v24 = [v21 identifier];
                v4 = v15;
                v25 = v42;
                v9 = v44;
                goto LABEL_28;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v52 objects:v58 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v24 = 0;
        v4 = v15;
        v14 = v46;
        v8 = v47;
        v25 = v42;
        v9 = v44;
        v6 = 0x1E695D000;
      }

      else if ([v14 length])
      {
        v25 = v11;
        v46 = v14;
        v16 = [MEMORY[0x1E695CF50] phoneNumberWithStringValue:v14];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47 = v8;
        v27 = [v8 phoneNumbers];
        v24 = [v27 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v24)
        {
          v43 = v25;
          v45 = v9;
          v41 = v4;
          v28 = *v49;
          while (2)
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v49 != v28)
              {
                objc_enumerationMutation(v27);
              }

              v30 = *(*(&v48 + 1) + 8 * j);
              v31 = [v30 value];
              v32 = [v31 isLikePhoneNumber:v16];

              if (v32)
              {
                v24 = [v30 identifier];
                goto LABEL_26;
              }
            }

            v24 = [v27 countByEnumeratingWithState:&v48 objects:v57 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }

LABEL_26:
          v4 = v41;
          v25 = v43;
          v9 = v45;
        }

LABEL_28:
        v8 = v47;
        v6 = 0x1E695D000;
        if (v25)
        {
          v14 = v46;
          if (v24)
          {
            [(UIViewController *)v9 highlightPropertyWithKey:v25 identifier:v24 important:1];
          }
        }

        else
        {
          v14 = v46;
        }
      }

      else
      {
        v25 = 0;
        v24 = 0;
      }
    }

    else
    {
      v26 = [(PXSharedLibraryParticipantActionCoordinator *)self participant];
      v8 = PXSharedLibraryMakeContactForParticipant(v26);

      v9 = [MEMORY[0x1E695D148] viewControllerForUnknownContact:v8];
      v25 = [(UIViewController *)v9 contentViewController];
      [v25 setAllowsAddingToAddressBook:1];
    }

    if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
    {
      [(UIViewController *)v9 setDisplayMode:1];
    }

    [(UIViewController *)v9 setAllowsEditing:0];
    [(UIViewController *)v9 setAllowsActions:0];
    sharedLibrary = self->_sharedLibrary;
    v56 = v4;
    v34 = [*(v6 + 3784) arrayWithObjects:&v56 count:1];
    LODWORD(sharedLibrary) = [(PXSharedLibrary *)sharedLibrary canDeleteParticipants:v34];

    if (sharedLibrary)
    {
      v35 = [(UIViewController *)v9 contentViewController];
      v36 = [v35 cardFooterGroup];
      if (([v4 status] - 5) <= 0xFFFFFFFFFFFFFFFCLL)
      {
        v37 = PXLocalizedSharedLibraryString(@"PXSharedLibraryParticipant_ResendInvitationMenuTitle");
        [v35 addActionWithTitle:v37 target:self selector:sel__resendInvitation_ inGroup:v36 destructive:0];
      }

      v38 = PXLocalizedSharedLibraryString(@"PXSharedLibraryPreferences_RemoveParticipantActionButtonTitle");
      [v35 addActionWithTitle:v38 target:self selector:sel__removeParticipant_ inGroup:v36 destructive:1];
    }

    v39 = self->_actionViewController;
    self->_actionViewController = v9;

    actionViewController = self->_actionViewController;
  }

  return actionViewController;
}

- (void)_removeParticipant:(id)a3
{
  a3;
  v4 = [(PXSharedLibraryParticipantActionCoordinator *)self participant];
  PXSharedLibraryShortNameForParticipant(v4);
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

- (void)_resendInvitation:(id)a3
{
  v13 = a3;
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v10 = NSStringFromClass(v11);
    v12 = [v13 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantActionCoordinator.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v10, v12}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantActionCoordinator.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v10}];
  }

LABEL_3:
  v5 = [(PXSharedLibrary *)self->_sharedLibrary shareURL];
  v6 = [(PXSharedLibraryParticipantActionCoordinator *)self actionViewController];
  v7 = [off_1E7721960 popoverPresenterWithViewController:v6 sourceItem:v13];

  PXSharedLibraryShareInvitation(v5, v7, @"Preferences", 0);
}

- (PXSharedLibraryParticipantActionCoordinator)initWithParticipant:(id)a3 sharedLibrary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXSharedLibraryParticipantActionCoordinator;
  v9 = [(PXSharedLibraryParticipantActionCoordinator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participant, a3);
    objc_storeStrong(&v10->_sharedLibrary, a4);
  }

  return v10;
}

@end