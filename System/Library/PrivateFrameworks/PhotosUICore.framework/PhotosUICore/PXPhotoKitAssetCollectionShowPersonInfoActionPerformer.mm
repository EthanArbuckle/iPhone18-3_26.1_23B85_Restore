@interface PXPhotoKitAssetCollectionShowPersonInfoActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler;
+ (int64_t)actionTypeForPerson:(id)person outContact:(id *)contact;
+ (void)_createPersonInfoActionForPerson:(id)person traitCollection:(id)collection handler:(id)handler completion:(id)completion;
+ (void)getLocalizedTitle:(id *)title subtitle:(id *)subtitle forActionType:(int64_t)type person:(id)person contact:(id)contact;
- (CNContactViewController)pushedContactViewController;
- (void)_handleUnlinkContactButton:(id)button;
- (void)_performUserInteractionTaskWithType:(int64_t)type contact:(id)contact;
- (void)_popContactViewController;
- (void)_showContactDetailViewControllerForContact:(id)contact;
- (void)_showContactPicker;
- (void)_showNamingView;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPickerDidCancel:(id)cancel;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShowPersonInfoActionPerformer

+ (void)_createPersonInfoActionForPerson:(id)person traitCollection:(id)collection handler:(id)handler completion:(id)completion
{
  v45[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  collectionCopy = collection;
  handlerCopy = handler;
  completionCopy = completion;
  v43 = 0;
  v14 = [self actionTypeForPerson:personCopy outContact:&v43];
  v15 = v43;
  v42 = 0;
  v41 = 0;
  [self getLocalizedTitle:&v42 subtitle:&v41 forActionType:v14 person:personCopy contact:v15];
  v16 = v42;
  v17 = v41;
  if (v14 > 1)
  {
    if (v14 == 3)
    {
      if (collectionCopy)
      {
        [collectionCopy displayScale];
        v28 = v27;
      }

      else
      {
        v28 = 1.0;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __126__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer__createPersonInfoActionForPerson_traitCollection_handler_completion___block_invoke_2;
      v29[3] = &unk_1E7735918;
      v30 = v16;
      v31 = handlerCopy;
      v33 = 3;
      v32 = completionCopy;
      [PXActivityUtilities requestImageFromPeopleAlbumForPerson:personCopy targetSize:1 displayScale:v29 highQualityFormat:48.0 completion:48.0, v28];

      v18 = v30;
      goto LABEL_20;
    }

    if (v14 == 2)
    {
      if (collectionCopy)
      {
        [collectionCopy displayScale];
        v23 = v22;
        v24 = [collectionCopy layoutDirection] == 1;
      }

      else
      {
        v24 = 0;
        v23 = 1.0;
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __126__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer__createPersonInfoActionForPerson_traitCollection_handler_completion___block_invoke;
      v34[3] = &unk_1E77358F0;
      v35 = v16;
      v38 = handlerCopy;
      v40 = 2;
      v36 = v15;
      v37 = v17;
      v39 = completionCopy;
      [PXActivityUtilities requestImageForContact:v36 targetSize:v24 displayScale:1 isRTL:v34 deliverOnce:48.0 completion:48.0, v23];

      v18 = v35;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v14)
    {
      if ([personCopy px_isHuman])
      {
        v25 = @"person.crop.circle.badge.plus";
      }

      else
      {
        v25 = @"pawprint.fill";
      }

      v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:v25];
      v19 = [PXPhotoKitAssetCollectionShowPersonInfoAction actionWithTitle:v16 image:v18 identifier:0 handler:handlerCopy];
      [v19 setType:0];
      v44 = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v44;
      goto LABEL_13;
    }

    if (v14 == 1)
    {
      v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.badge.plus"];
      v19 = [PXPhotoKitAssetCollectionShowPersonInfoAction actionWithTitle:v16 image:v18 identifier:0 handler:handlerCopy];
      [v19 setType:1];
      v45[0] = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v45;
LABEL_13:
      v26 = [v20 arrayWithObjects:v21 count:1];
      (*(completionCopy + 2))(completionCopy, v26);

LABEL_20:
    }
  }
}

void __126__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer__createPersonInfoActionForPerson_traitCollection_handler_completion___block_invoke(void *a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [PXPhotoKitAssetCollectionShowPersonInfoAction actionWithTitle:a1[4] image:a2 identifier:0 handler:a1[7]];
  [v3 setType:a1[9]];
  [v3 setContact:a1[5]];
  [v3 setSubtitle:a1[6]];
  v4 = a1[8];
  v6[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  (*(v4 + 16))(v4, v5);
}

void __126__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer__createPersonInfoActionForPerson_traitCollection_handler_completion___block_invoke_2(void *a1, void *a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = PLUIGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Failed to get image for named pet with error %@", buf, 0xCu);
    }
  }

  v9 = [PXPhotoKitAssetCollectionShowPersonInfoAction actionWithTitle:a1[4] image:v6 identifier:0 handler:a1[5]];
  [v9 setType:a1[7]];
  v10 = a1[6];
  v12 = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  (*(v10 + 16))(v10, v11);
}

+ (void)getLocalizedTitle:(id *)title subtitle:(id *)subtitle forActionType:(int64_t)type person:(id)person contact:(id)contact
{
  personCopy = person;
  contactCopy = contact;
  v12 = contactCopy;
  value = 0;
  if (type <= 1)
  {
    if (type)
    {
      v14 = 0;
      if (type != 1)
      {
        goto LABEL_10;
      }

      px_localizedName = PXLocalizedStringFromTable(@"PXPeopleInfoLinkContactInfoAction", @"PhotosUICore");
    }

    else
    {
      px_localizedName = PXLocalizedStringForPersonOrPetAndVisibility(personCopy, 0, @"PXPeopleInfoNameThisPerson");
    }

LABEL_9:
    v14 = px_localizedName;
    value = 0;
    goto LABEL_10;
  }

  if (type != 2)
  {
    v14 = 0;
    if (type != 3)
    {
      goto LABEL_10;
    }

    px_localizedName = [personCopy px_localizedName];
    goto LABEL_9;
  }

  if (contactCopy)
  {
    v14 = [MEMORY[0x1E6978980] fullNameFromContact:contactCopy];
    emailAddresses = [v12 emailAddresses];
    firstObject = [emailAddresses firstObject];

    if (firstObject)
    {
      value = [firstObject value];
    }

    else
    {
      phoneNumbers = [v12 phoneNumbers];
      firstObject2 = [phoneNumbers firstObject];
      value2 = [firstObject2 value];

      value = [value2 stringValue];
    }
  }

  else
  {
    value = 0;
    v14 = 0;
  }

LABEL_10:
  if (title)
  {
    v16 = v14;
    *title = v14;
  }

  if (subtitle)
  {
    v17 = value;
    *subtitle = value;
  }
}

+ (int64_t)actionTypeForPerson:(id)person outContact:(id *)contact
{
  v15[3] = *MEMORY[0x1E69E9840];
  personCopy = person;
  if ([personCopy px_isHuman] && (objc_msgSend(MEMORY[0x1E695CD80], "descriptorForRequiredKeysForStyle:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695D148], "descriptorForRequiredKeys", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = *MEMORY[0x1E695C400], v15[1] = v7, v15[2] = v8, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 3), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(personCopy, "linkedContactWithKeysToFetch:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v7, v6, v10))
  {
    if (contact)
    {
      v11 = v10;
      *contact = v10;
    }

    v12 = 2;
  }

  else
  {
    px_localizedName = [personCopy px_localizedName];
    v10 = [px_localizedName length];

    if (v10)
    {
      v10 = 0;
      if ([personCopy px_isHuman])
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (id)createStandardActionForAssetCollectionReference:(id)reference withInput:(id)input handler:(id)handler
{
  handlerCopy = handler;
  inputCopy = input;
  people = [inputCopy people];
  firstObject = [people firstObject];

  traitEnvironment = [inputCopy traitEnvironment];

  traitCollection = [traitEnvironment traitCollection];

  v13 = MEMORY[0x1E69DC928];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __124__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer_createStandardActionForAssetCollectionReference_withInput_handler___block_invoke;
  v19[3] = &unk_1E77358C8;
  v20 = firstObject;
  v21 = traitCollection;
  v22 = handlerCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = traitCollection;
  v16 = firstObject;
  v17 = [v13 elementWithUncachedProvider:v19];

  return v17;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  people = [inputsCopy people];
  v7 = [people count];

  if (v7 == 1)
  {
    people2 = [inputsCopy people];
    firstObject = [people2 firstObject];

    v10 = [self actionTypeForPerson:firstObject outContact:0] == 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CNContactViewController)pushedContactViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_pushedContactViewController);

  return WeakRetained;
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  contactCopy = contact;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "User selected contact for person from info action", v11, 2u);
  }

  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  if (firstObject)
  {
    photoLibrary = [firstObject photoLibrary];
    [PXPeopleBootstrap nameAndVerifyPerson:firstObject toContact:contactCopy photoLibrary:photoLibrary completionHandler:&__block_literal_global_78590];

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Missing person to assign contact from info action"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v10];
  }
}

void __89__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer_contactPicker_didSelectContact___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to assign contact to person with error %@", &v6, 0xCu);
    }
  }
}

- (void)contactPickerDidCancel:(id)cancel
{
  v4 = PLUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "User cancelled contact picking from info action", v5, 2u);
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

- (void)_popContactViewController
{
  pushedContactViewController = [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self pushedContactViewController];
  navigationController = [pushedContactViewController navigationController];
  topViewController = [navigationController topViewController];

  if (topViewController == pushedContactViewController)
  {
    v6 = [navigationController popViewControllerAnimated:1];
  }

  else
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Contact details view controller is not top most, which is unexpected. Will not dismiss", v7, 2u);
    }
  }
}

- (void)_handleUnlinkContactButton:(id)button
{
  buttonCopy = button;
  [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self pushedContactViewController];
  [objc_claimAutoreleasedReturnValue() contact];
  objc_claimAutoreleasedReturnValue();
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  [people firstObject];
  objc_claimAutoreleasedReturnValue();

  objc_initWeak(&location, self);
  PXPresentationEnvironmentForSender();
}

void __85__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer__handleUnlinkContactButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _popContactViewController];
}

- (void)_showContactDetailViewControllerForContact:(id)contact
{
  v5 = [PXPeopleUtilities contactViewControllerForContact:contact target:self selector:sel__handleUnlinkContactButton_];
  objc_setAssociatedObject(v5, sel__showContactDetailViewControllerForContact_, self, 1);
  if ([(PXActionPerformer *)self pushViewController:v5])
  {
    [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self setPushedContactViewController:v5];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to push contact detail view controller"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v4];
  }
}

- (void)_showContactPicker
{
  v4 = objc_alloc_init(MEMORY[0x1E695D120]);
  [v4 setDelegate:self];
  if (![(PXActionPerformer *)self presentViewController:v4])
  {
    v3 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present contact picker"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v3];
  }
}

- (void)_showNamingView
{
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  v5 = [PXPeopleNamingCreator namingViewControllerFor:firstObject presentationEnvironment:presentationEnvironment];

  if ([(PXActionPerformer *)self presentViewController:v5])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    localIdentifier = [firstObject localIdentifier];
    v8 = [v6 px_genericErrorWithDebugDescription:{@"Failed to present people naming view for person: %@", localIdentifier}];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v8];
  }
}

- (void)_performUserInteractionTaskWithType:(int64_t)type contact:(id)contact
{
  contactCopy = contact;
  if (type > 1)
  {
    if (type == 2)
    {
      v7 = contactCopy;
      [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _showContactDetailViewControllerForContact:contactCopy];
      goto LABEL_9;
    }

    if (type != 3)
    {
      goto LABEL_10;
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_10;
    }

    v7 = contactCopy;
    [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _showContactPicker];
    goto LABEL_9;
  }

  v7 = contactCopy;
  [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _showNamingView];
LABEL_9:
  contactCopy = v7;
LABEL_10:
}

- (void)performUserInteractionTask
{
  sendingAction = [(PXPhotoKitAssetCollectionActionPerformer *)self sendingAction];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = sendingAction;

  if (!v4)
  {
LABEL_6:
    people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
    firstObject = [people firstObject];

    v11 = 0;
    v9 = [objc_opt_class() actionTypeForPerson:firstObject outContact:&v11];
    v10 = v11;
    [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _performUserInteractionTaskWithType:v9 contact:v10];

    v4 = 0;
    goto LABEL_7;
  }

  type = [v4 type];
  contact = [v4 contact];
  [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _performUserInteractionTaskWithType:type contact:contact];

LABEL_7:
}

@end