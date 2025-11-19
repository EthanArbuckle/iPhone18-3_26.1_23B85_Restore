@interface PXPhotoKitAssetCollectionShowPersonInfoActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)createStandardActionForAssetCollectionReference:(id)a3 withInput:(id)a4 handler:(id)a5;
+ (int64_t)actionTypeForPerson:(id)a3 outContact:(id *)a4;
+ (void)_createPersonInfoActionForPerson:(id)a3 traitCollection:(id)a4 handler:(id)a5 completion:(id)a6;
+ (void)getLocalizedTitle:(id *)a3 subtitle:(id *)a4 forActionType:(int64_t)a5 person:(id)a6 contact:(id)a7;
- (CNContactViewController)pushedContactViewController;
- (void)_handleUnlinkContactButton:(id)a3;
- (void)_performUserInteractionTaskWithType:(int64_t)a3 contact:(id)a4;
- (void)_popContactViewController;
- (void)_showContactDetailViewControllerForContact:(id)a3;
- (void)_showContactPicker;
- (void)_showNamingView;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionShowPersonInfoActionPerformer

+ (void)_createPersonInfoActionForPerson:(id)a3 traitCollection:(id)a4 handler:(id)a5 completion:(id)a6
{
  v45[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v43 = 0;
  v14 = [a1 actionTypeForPerson:v10 outContact:&v43];
  v15 = v43;
  v42 = 0;
  v41 = 0;
  [a1 getLocalizedTitle:&v42 subtitle:&v41 forActionType:v14 person:v10 contact:v15];
  v16 = v42;
  v17 = v41;
  if (v14 > 1)
  {
    if (v14 == 3)
    {
      if (v11)
      {
        [v11 displayScale];
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
      v31 = v12;
      v33 = 3;
      v32 = v13;
      [PXActivityUtilities requestImageFromPeopleAlbumForPerson:v10 targetSize:1 displayScale:v29 highQualityFormat:48.0 completion:48.0, v28];

      v18 = v30;
      goto LABEL_20;
    }

    if (v14 == 2)
    {
      if (v11)
      {
        [v11 displayScale];
        v23 = v22;
        v24 = [v11 layoutDirection] == 1;
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
      v38 = v12;
      v40 = 2;
      v36 = v15;
      v37 = v17;
      v39 = v13;
      [PXActivityUtilities requestImageForContact:v36 targetSize:v24 displayScale:1 isRTL:v34 deliverOnce:48.0 completion:48.0, v23];

      v18 = v35;
      goto LABEL_20;
    }
  }

  else
  {
    if (!v14)
    {
      if ([v10 px_isHuman])
      {
        v25 = @"person.crop.circle.badge.plus";
      }

      else
      {
        v25 = @"pawprint.fill";
      }

      v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:v25];
      v19 = [PXPhotoKitAssetCollectionShowPersonInfoAction actionWithTitle:v16 image:v18 identifier:0 handler:v12];
      [v19 setType:0];
      v44 = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = &v44;
      goto LABEL_13;
    }

    if (v14 == 1)
    {
      v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.badge.plus"];
      v19 = [PXPhotoKitAssetCollectionShowPersonInfoAction actionWithTitle:v16 image:v18 identifier:0 handler:v12];
      [v19 setType:1];
      v45[0] = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v45;
LABEL_13:
      v26 = [v20 arrayWithObjects:v21 count:1];
      (*(v13 + 2))(v13, v26);

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

+ (void)getLocalizedTitle:(id *)a3 subtitle:(id *)a4 forActionType:(int64_t)a5 person:(id)a6 contact:(id)a7
{
  v23 = a6;
  v11 = a7;
  v12 = v11;
  v13 = 0;
  if (a5 <= 1)
  {
    if (a5)
    {
      v14 = 0;
      if (a5 != 1)
      {
        goto LABEL_10;
      }

      v15 = PXLocalizedStringFromTable(@"PXPeopleInfoLinkContactInfoAction", @"PhotosUICore");
    }

    else
    {
      v15 = PXLocalizedStringForPersonOrPetAndVisibility(v23, 0, @"PXPeopleInfoNameThisPerson");
    }

LABEL_9:
    v14 = v15;
    v13 = 0;
    goto LABEL_10;
  }

  if (a5 != 2)
  {
    v14 = 0;
    if (a5 != 3)
    {
      goto LABEL_10;
    }

    v15 = [v23 px_localizedName];
    goto LABEL_9;
  }

  if (v11)
  {
    v14 = [MEMORY[0x1E6978980] fullNameFromContact:v11];
    v18 = [v12 emailAddresses];
    v19 = [v18 firstObject];

    if (v19)
    {
      v13 = [v19 value];
    }

    else
    {
      v20 = [v12 phoneNumbers];
      v21 = [v20 firstObject];
      v22 = [v21 value];

      v13 = [v22 stringValue];
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_10:
  if (a3)
  {
    v16 = v14;
    *a3 = v14;
  }

  if (a4)
  {
    v17 = v13;
    *a4 = v13;
  }
}

+ (int64_t)actionTypeForPerson:(id)a3 outContact:(id *)a4
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 px_isHuman] && (objc_msgSend(MEMORY[0x1E695CD80], "descriptorForRequiredKeysForStyle:", 0), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695D148], "descriptorForRequiredKeys", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = *MEMORY[0x1E695C400], v15[1] = v7, v15[2] = v8, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 3), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "linkedContactWithKeysToFetch:", v9), v10 = objc_claimAutoreleasedReturnValue(), v9, v7, v6, v10))
  {
    if (a4)
    {
      v11 = v10;
      *a4 = v10;
    }

    v12 = 2;
  }

  else
  {
    v13 = [v5 px_localizedName];
    v10 = [v13 length];

    if (v10)
    {
      v10 = 0;
      if ([v5 px_isHuman])
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

+ (id)createStandardActionForAssetCollectionReference:(id)a3 withInput:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 people];
  v10 = [v9 firstObject];

  v11 = [v8 traitEnvironment];

  v12 = [v11 traitCollection];

  v13 = MEMORY[0x1E69DC928];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __124__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer_createStandardActionForAssetCollectionReference_withInput_handler___block_invoke;
  v19[3] = &unk_1E77358C8;
  v20 = v10;
  v21 = v12;
  v22 = v7;
  v23 = a1;
  v14 = v7;
  v15 = v12;
  v16 = v10;
  v17 = [v13 elementWithUncachedProvider:v19];

  return v17;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v5 = a4;
  v6 = [v5 people];
  v7 = [v6 count];

  if (v7 == 1)
  {
    v8 = [v5 people];
    v9 = [v8 firstObject];

    v10 = [a1 actionTypeForPerson:v9 outContact:0] == 1;
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

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v5 = a4;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "User selected contact for person from info action", v11, 2u);
  }

  v7 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v8 = [v7 firstObject];

  if (v8)
  {
    v9 = [v8 photoLibrary];
    [PXPeopleBootstrap nameAndVerifyPerson:v8 toContact:v5 photoLibrary:v9 completionHandler:&__block_literal_global_78590];

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

- (void)contactPickerDidCancel:(id)a3
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
  v2 = [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self pushedContactViewController];
  v3 = [v2 navigationController];
  v4 = [v3 topViewController];

  if (v4 == v2)
  {
    v6 = [v3 popViewControllerAnimated:1];
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

- (void)_handleUnlinkContactButton:(id)a3
{
  v4 = a3;
  [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self pushedContactViewController];
  [objc_claimAutoreleasedReturnValue() contact];
  objc_claimAutoreleasedReturnValue();
  v5 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  [v5 firstObject];
  objc_claimAutoreleasedReturnValue();

  objc_initWeak(&location, self);
  PXPresentationEnvironmentForSender();
}

void __85__PXPhotoKitAssetCollectionShowPersonInfoActionPerformer__handleUnlinkContactButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _popContactViewController];
}

- (void)_showContactDetailViewControllerForContact:(id)a3
{
  v5 = [PXPeopleUtilities contactViewControllerForContact:a3 target:self selector:sel__handleUnlinkContactButton_];
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
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v9 = [v3 firstObject];

  v4 = [(PXActionPerformer *)self presentationEnvironment];
  v5 = [PXPeopleNamingCreator namingViewControllerFor:v9 presentationEnvironment:v4];

  if ([(PXActionPerformer *)self presentViewController:v5])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [v9 localIdentifier];
    v8 = [v6 px_genericErrorWithDebugDescription:{@"Failed to present people naming view for person: %@", v7}];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v8];
  }
}

- (void)_performUserInteractionTaskWithType:(int64_t)a3 contact:(id)a4
{
  v6 = a4;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = v6;
      [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _showContactDetailViewControllerForContact:v6];
      goto LABEL_9;
    }

    if (a3 != 3)
    {
      goto LABEL_10;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_10;
    }

    v7 = v6;
    [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _showContactPicker];
    goto LABEL_9;
  }

  v7 = v6;
  [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _showNamingView];
LABEL_9:
  v6 = v7;
LABEL_10:
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetCollectionActionPerformer *)self sendingAction];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v4 = v3;

  if (!v4)
  {
LABEL_6:
    v7 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
    v8 = [v7 firstObject];

    v11 = 0;
    v9 = [objc_opt_class() actionTypeForPerson:v8 outContact:&v11];
    v10 = v11;
    [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _performUserInteractionTaskWithType:v9 contact:v10];

    v4 = 0;
    goto LABEL_7;
  }

  v5 = [v4 type];
  v6 = [v4 contact];
  [(PXPhotoKitAssetCollectionShowPersonInfoActionPerformer *)self _performUserInteractionTaskWithType:v5 contact:v6];

LABEL_7:
}

@end