@interface PUPeopleTileCollectionViewCell
+ (CGSize)itemSizeForTraitCollection:(id)a3;
+ (OS_dispatch_queue)sharedContactFetchQueue;
+ (void)_fetchContactInfoForPerson:(id)a3 completion:(id)a4;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (CGSize)previousContentViewSize;
- (PUPeopleTileCollectionViewCell)initWithFrame:(CGRect)a3;
- (PUPeopleTileDelegate)peopleDelegate;
- (UIGraphicsImageRenderer)renderer;
- (id)_reviewActionForPerson:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_customizeAlbumActionTapped:(id)a3;
- (void)_displayAvatarImageRequestResult:(id)a3 faceRect:(CGRect)a4 person:(id)a5 error:(id)a6;
- (void)_fetchAvatarImageForPerson:(id)a3;
- (void)_fetchContactImageForPerson:(id)a3 contact:(id)a4;
- (void)_makeKeyPhotoActionTapped:(id)a3 asset:(id)a4;
- (void)_nameActionTapped:(id)a3;
- (void)_reloadAvatarImageViewForPerson:(id)a3;
- (void)_setPerson:(id)a3 asset:(id)a4 reloadAvatar:(BOOL)a5;
- (void)_setupActionsForPerson:(id)a3 asset:(id)a4;
- (void)_showAlbumActionTapped:(id)a3;
- (void)_unnameActionTapped:(id)a3 asset:(id)a4;
- (void)accessibilityInvertColorsStatusDidChange:(id)a3;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)layoutSubviews;
- (void)refreshPerson;
@end

@implementation PUPeopleTileCollectionViewCell

- (CGSize)previousContentViewSize
{
  objc_copyStruct(v4, &self->_previousContentViewSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUPeopleTileDelegate)peopleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_peopleDelegate);

  return WeakRetained;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v5 = [a3 actionType];
  v6 = [v5 isEqualToString:*MEMORY[0x1E69C4848]];

  if (a4 == 30)
  {
    if (v6)
    {
      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.featureLessTapped" withPayload:MEMORY[0x1E695E0F8]];
      px_dispatch_on_main_queue();
    }
  }
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [a4 presentingViewController];
  [v7 dismissViewControllerAnimated:1 completion:v6];

  return 1;
}

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 == 2)
  {
    v10 = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
    [v10 presentPeopleViewController:v9];
  }

  else
  {
    if (a5 != 1)
    {
      v11 = 0;
      goto LABEL_7;
    }

    v10 = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
    [v10 pushPeopleViewController:v9];
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (void)_makeKeyPhotoActionTapped:(id)a3 asset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5 || !v6)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Expected to have a person and asset pair for make key photo action", buf, 2u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E69C33B0]) initWithPerson:v5 asset:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PUPeopleTileCollectionViewCell__makeKeyPhotoActionTapped_asset___block_invoke;
  v12[3] = &unk_1E7B7FB70;
  v13 = v5;
  v14 = v7;
  v10 = v7;
  v11 = v5;
  [v9 executeWithUndoManager:0 completionHandler:v12];
}

void __66__PUPeopleTileCollectionViewCell__makeKeyPhotoActionTapped_asset___block_invoke(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLOneUpGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) localIdentifier];
      v9 = [*(a1 + 40) localIdentifier];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v10 = "Make Key Photo succeeded from 1up for person %@ asset %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_1B36F3000, v11, v12, v10, &v14, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) localIdentifier];
    v9 = [*(a1 + 40) localIdentifier];
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    v10 = "Make Key Photo failed from 1up for person %@ asset %@. Error: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
    goto LABEL_6;
  }
}

- (void)_nameActionTapped:(id)a3
{
  v4 = MEMORY[0x1E69C3778];
  v5 = a3;
  v14 = [v4 contextWithPerson:v5 type:1];
  v6 = [MEMORY[0x1E69C3790] isPersonHiddenFromPeopleHome:v5];

  [v14 setWantsToBeAddedToPeopleAlbum:v6];
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AE30] processInfo];
  v9 = [v8 processName];
  v10 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UIPrivate/Projects/PhotosUI/PhotosUI/iOS/People Tile/PUPeopleTileCollectionViewCell.m" lastPathComponent];
  v11 = [v7 stringWithFormat:@"%@:%@:%s:%d", v9, v10, "-[PUPeopleTileCollectionViewCell _nameActionTapped:]", 472];
  [v14 setCallerInfo:v11];

  v12 = [MEMORY[0x1E69C3790] bootstrapViewControllerForContext:v14 delegate:0];
  v13 = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
  [v13 presentPeopleViewController:v12];

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.nameTapped" withPayload:MEMORY[0x1E695E0F8]];
}

- (void)_unnameActionTapped:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69C3790];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __60__PUPeopleTileCollectionViewCell__unnameActionTapped_asset___block_invoke;
  v15 = &unk_1E7B7F540;
  objc_copyWeak(&v16, &location);
  v9 = [v8 alertControllerForUntaggingPerson:v6 asset:v7 completion:&v12];
  [v9 setModalPresentationStyle:{7, v12, v13, v14, v15}];
  v10 = [v9 popoverPresentationController];
  [v10 setSourceView:self];
  [(PUPeopleTileCollectionViewCell *)self bounds];
  [v10 setSourceRect:?];
  v11 = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
  [v11 presentPeopleViewController:v9];

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.untagTapped" withPayload:MEMORY[0x1E695E0F8]];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__PUPeopleTileCollectionViewCell__unnameActionTapped_asset___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));

    if (WeakRetained)
    {
      v4 = objc_loadWeakRetained((a1 + 32));
      v5 = [v4 peopleDelegate];
      [v5 presentPeopleViewController:v6];
    }
  }
}

- (void)_customizeAlbumActionTapped:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C3838];
  v4 = a3;
  v5 = [v3 alloc];
  v10[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [v5 initWithPeople:v6];
  v8 = [v7 actionPerformerForActionType:*MEMORY[0x1E69C4130]];
  v9 = PXPresentationEnvironmentForSender();
  [v8 setPresentationEnvironment:v9];

  [v8 performActionWithCompletionHandler:0];
}

- (void)_showAlbumActionTapped:(id)a3
{
  v10 = a3;
  v4 = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = [v10 px_navigationURL];
    v7 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v7 openSensitiveURL:v6 withOptions:0];
  }

  else
  {
    v6 = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
    v8 = MEMORY[0x1E69C3790];
    v9 = [v6 allPeople];
    v7 = [v8 makeLemonadeDetailViewControllerForPerson:v10 allPeople:v9];

    [v6 presentPeopleViewController:v7];
  }

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.showAlbumTapped" withPayload:MEMORY[0x1E695E0F8]];
}

- (id)_reviewActionForPerson:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC628];
  v6 = PXLemonadeLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.rectangle.stack"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PUPeopleTileCollectionViewCell__reviewActionForPerson___block_invoke;
  v11[3] = &unk_1E7B7F4F0;
  objc_copyWeak(&v13, &location);
  v8 = v4;
  v12 = v8;
  v9 = [v5 actionWithTitle:v6 image:v7 identifier:0 handler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __57__PUPeopleTileCollectionViewCell__reviewActionForPerson___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _customizeAlbumActionTapped:*(a1 + 32)];
}

- (void)_setupActionsForPerson:(id)a3 asset:(id)a4
{
  v73[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:self file:@"PUPeopleTileCollectionViewCell.m" lineNumber:346 description:{@"%s must be called on the main thread", "-[PUPeopleTileCollectionViewCell _setupActionsForPerson:asset:]"}];
  }

  objc_initWeak(location, self);
  v9 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
  v50 = [v9 standardActionForActionType:*MEMORY[0x1E69C4848]];

  v10 = [v7 px_localizedName];
  v45 = v10;
  if ([v10 length])
  {
    v11 = PXLocalizedStringForPersonOrPetAndVisibility();
    v43 = v10;
    v53 = PXStringWithValidatedFormat();
  }

  else
  {
    v53 = PXLocalizedString();
  }

  v12 = MEMORY[0x1E69DC628];
  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"rectangle.stack", v43}];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __63__PUPeopleTileCollectionViewCell__setupActionsForPerson_asset___block_invoke;
  v62[3] = &unk_1E7B7F4F0;
  objc_copyWeak(&v64, location);
  v14 = v7;
  v63 = v14;
  v48 = [v12 actionWithTitle:v53 image:v13 identifier:0 handler:v62];

  v52 = PXLocalizedString();
  v51 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack.person.crop"];
  v15 = MEMORY[0x1E69DC628];
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __63__PUPeopleTileCollectionViewCell__setupActionsForPerson_asset___block_invoke_2;
  v58[3] = &unk_1E7B7F518;
  objc_copyWeak(&v61, location);
  v16 = v14;
  v59 = v16;
  v44 = v8;
  v60 = v44;
  v49 = [v15 actionWithTitle:v52 image:v51 identifier:0 handler:v58];
  v17 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
  v18 = [v17 standardActionForActionType:*MEMORY[0x1E69C4868]];

  if (v18)
  {
    v19 = MEMORY[0x1E69DCC60];
    v73[0] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
    v21 = [v19 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v20];
  }

  else
  {
    v21 = 0;
  }

  v47 = [(PUPeopleTileCollectionViewCell *)self _reviewActionForPerson:v16];
  v22 = [v16 name];
  v46 = v21;
  if ([v22 length] && objc_msgSend(v16, "px_fetchCanHaveFacesRejectedWithRigor:", 0))
  {
    v23 = MEMORY[0x1E69DC628];
    v24 = PXLocalizedString();
    v25 = PXStringWithValidatedFormat();
    v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:{@"person.crop.circle.badge.xmark", v45}];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __63__PUPeopleTileCollectionViewCell__setupActionsForPerson_asset___block_invoke_3;
    v54[3] = &unk_1E7B7F518;
    objc_copyWeak(&v57, location);
    v55 = v16;
    v56 = v44;
    v27 = [v23 actionWithTitle:v25 image:v26 identifier:0 handler:v54];

    [v27 setAttributes:2];
    v28 = v22;
    v29 = MEMORY[0x1E69DCC60];
    v72[0] = v50;
    v72[1] = v27;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
    v31 = [v29 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v30];

    if (v18 && (v32 = MEMORY[0x1E69DCC60], v71 = v18, [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "menuWithTitle:image:identifier:options:children:", &stru_1F2AC6818, 0, 0, 1, v33), v34 = objc_claimAutoreleasedReturnValue(), v33, v34))
    {
      v70[0] = v34;
      v70[1] = v48;
      v70[2] = v49;
      v70[3] = v47;
      v70[4] = v31;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:5];
    }

    else
    {
      v69[0] = v48;
      v69[1] = v49;
      v69[2] = v47;
      v69[3] = v31;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:4];
    }

    objc_destroyWeak(&v57);
  }

  else
  {
    v36 = MEMORY[0x1E69DCC60];
    v68 = v50;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    v38 = [v36 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v37];

    if (v46)
    {
      v66[1] = v46;
      v66[2] = v48;
      v66[3] = v49;
      v66[4] = v47;
      v39 = &v67;
    }

    else
    {
      location[1] = v48;
      location[2] = v49;
      location[3] = v47;
      v39 = v66;
    }

    *v39 = v38;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

    v28 = 0;
  }

  if (v18)
  {
    [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 children:v35];
  }

  else
  {
    [MEMORY[0x1E69DCC60] menuWithTitle:v28 children:v35];
  }
  v40 = ;
  v41 = [(PUPeopleTileCollectionViewCell *)self menuButton];
  [v41 setMenu:v40];

  objc_destroyWeak(&v61);
  objc_destroyWeak(&v64);

  objc_destroyWeak(location);
}

void __63__PUPeopleTileCollectionViewCell__setupActionsForPerson_asset___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _showAlbumActionTapped:*(a1 + 32)];
}

void __63__PUPeopleTileCollectionViewCell__setupActionsForPerson_asset___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _makeKeyPhotoActionTapped:*(a1 + 32) asset:*(a1 + 40)];
}

void __63__PUPeopleTileCollectionViewCell__setupActionsForPerson_asset___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _unnameActionTapped:*(a1 + 32) asset:*(a1 + 40)];
}

- (UIGraphicsImageRenderer)renderer
{
  renderer = self->_renderer;
  if (!renderer)
  {
    v4 = [(PUPeopleTileCollectionViewCell *)self traitCollection];
    [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:v4];
    v6 = v5;
    v8 = v7;

    v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v6, v8}];
    v10 = self->_renderer;
    self->_renderer = v9;

    renderer = self->_renderer;
  }

  return renderer;
}

- (void)_displayAvatarImageRequestResult:(id)a3 faceRect:(CGRect)a4 person:(id)a5 error:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = [(PUPeopleTileCollectionViewCell *)self person];

  if (v16 == v14)
  {
    if (v13)
    {
      v17 = [(PUPeopleTileCollectionViewCell *)self avatarImageView];
      [v17 frame];
      v19 = v18;
      v20 = [v17 layer];
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v21 = CGRectEqualToRect(v40, *MEMORY[0x1E69C48E0]);
      v22 = !v21;
      [v20 setMasksToBounds:v22];
      v23 = v19 * 0.5;
      v24 = !v21;
      if (v21)
      {
        v25 = 4;
      }

      else
      {
        v25 = 1;
      }

      if (v24)
      {
        v26 = 1.0;
      }

      else
      {
        v26 = 0.0;
      }

      if (!v24)
      {
        v23 = 0.0;
      }

      [v20 setCornerRadius:v23];
      [v20 setBorderWidth:v26];
      [v20 setContentsRect:{x, y, width, height}];
      [v17 setContentMode:v25];
      [v17 setBackgroundColor:0];
      if (v22)
      {
        [v17 setImage:v13];
      }

      else
      {
        v27 = [(PUPeopleTileCollectionViewCell *)self renderer];
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __89__PUPeopleTileCollectionViewCell__displayAvatarImageRequestResult_faceRect_person_error___block_invoke;
        v32 = &unk_1E7B7F4C8;
        v34 = v19;
        v33 = v13;
        v28 = [v27 imageWithActions:&v29];
        [v17 setImage:v28, v29, v30, v31, v32];
      }
    }

    else
    {
      v17 = PLUIGetLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_18;
      }

      v20 = [v15 localizedDescription];
      *buf = 138412546;
      v36 = v14;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "No face image returned from face crop manager. Person: %@ - Error: %@", buf, 0x16u);
    }

    goto LABEL_17;
  }

LABEL_18:
}

uint64_t __89__PUPeopleTileCollectionViewCell__displayAvatarImageRequestResult_faceRect_person_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *(a1 + 40) + -2.0;
  v12.origin.x = 1.0;
  v12.origin.y = 1.0;
  v12.size.width = v4;
  v12.size.height = v4;
  v13 = CGRectInset(v12, -1.0, -1.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  CGContextSetGrayFillColor(v3, 1.0, 1.0);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGContextFillEllipseInRect(v3, v14);
  v9 = *(a1 + 32);

  return [v9 drawInRect:{1.0, 1.0, v4, v4}];
}

- (void)_fetchAvatarImageForPerson:(id)a3
{
  v4 = a3;
  v5 = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:v5];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x1E69C3780]);
  [v5 displayScale];
  v12 = [v10 initWithPerson:v4 targetSize:v7 displayScale:{v9, v11}];
  [v12 setCornerStyle:2];
  objc_initWeak(&location, self);
  v13 = [MEMORY[0x1E69C3788] sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PUPeopleTileCollectionViewCell__fetchAvatarImageForPerson___block_invoke;
  v15[3] = &unk_1E7B7F4A0;
  objc_copyWeak(&v17, &location);
  v14 = v4;
  v16 = v14;
  [v13 requestFaceCropForOptions:v12 resultHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __61__PUPeopleTileCollectionViewCell__fetchAvatarImageForPerson___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v5;
  v8 = *(a1 + 32);
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v9);
}

void __61__PUPeopleTileCollectionViewCell__fetchAvatarImageForPerson___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C4100]];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69C4108]];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = *(a1 + 40);
  [v5 CGRectValue];
  [WeakRetained _displayAvatarImageRequestResult:v4 faceRect:*(a1 + 48) person:v2 error:?];
}

- (void)_fetchContactImageForPerson:(id)a3 contact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:v8];
  v10 = v9;
  v12 = v11;
  v13 = [v8 layoutDirection];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69C3310];
  [v8 displayScale];
  v16 = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__PUPeopleTileCollectionViewCell__fetchContactImageForPerson_contact___block_invoke;
  v18[3] = &unk_1E7B7F450;
  objc_copyWeak(&v20, &location);
  v17 = v6;
  v19 = v17;
  [v14 requestImageForContact:v7 targetSize:v13 == 1 displayScale:0 isRTL:v18 deliverOnce:v10 completion:{v12, v16}];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __70__PUPeopleTileCollectionViewCell__fetchContactImageForPerson_contact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = v5;
  v8 = *(a1 + 32);
  px_dispatch_on_main_queue();

  objc_destroyWeak(&v9);
}

void __70__PUPeopleTileCollectionViewCell__fetchContactImageForPerson_contact___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _displayAvatarImageRequestResult:*(a1 + 32) faceRect:*(a1 + 40) person:0 error:{*MEMORY[0x1E69C48E0], *(MEMORY[0x1E69C48E0] + 8), *(MEMORY[0x1E69C48E0] + 16), *(MEMORY[0x1E69C48E0] + 24)}];
}

- (void)_reloadAvatarImageViewForPerson:(id)a3
{
  v4 = a3;
  v5 = [(PUPeopleTileCollectionViewCell *)self avatarImageView];
  v6 = [v5 layer];
  [v5 frame];
  v8 = v7;
  [v5 setImage:0];
  v9 = [MEMORY[0x1E69DC888] blackColor];
  [v5 setBackgroundColor:v9];

  [v6 setMasksToBounds:1];
  [v6 setCornerRadius:v8 * 0.5];
  [v6 setBorderWidth:1.0];
  objc_initWeak(&location, self);
  v10 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PUPeopleTileCollectionViewCell__reloadAvatarImageViewForPerson___block_invoke;
  v12[3] = &unk_1E7B7F428;
  objc_copyWeak(&v14, &location);
  v11 = v4;
  v13 = v11;
  [v10 _fetchContactInfoForPerson:v11 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__PUPeopleTileCollectionViewCell__reloadAvatarImageViewForPerson___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (v6)
  {
    [WeakRetained _fetchContactImageForPerson:v5 contact:v6];
  }

  else
  {
    [WeakRetained _fetchAvatarImageForPerson:v5];
  }
}

- (void)refreshPerson
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C3790];
  v4 = [(PUPeopleTileCollectionViewCell *)self person];
  v5 = [v4 localIdentifier];
  v11[0] = *MEMORY[0x1E6978F38];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [(PUPeopleTileCollectionViewCell *)self person];
  v8 = [v7 photoLibrary];
  v9 = [v3 personWithLocalIdentifier:v5 propertySets:v6 photoLibrary:v8];

  v10 = [(PUPeopleTileCollectionViewCell *)self asset];
  [(PUPeopleTileCollectionViewCell *)self _setPerson:v9 asset:v10 reloadAvatar:0];
}

- (void)_setPerson:(id)a3 asset:(id)a4 reloadAvatar:(BOOL)a5
{
  v5 = a5;
  v34[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  objc_storeStrong(&self->_person, a3);
  objc_storeStrong(&self->_asset, a4);
  if (v5)
  {
    [(PUPeopleTileCollectionViewCell *)self _reloadAvatarImageViewForPerson:v9];
  }

  v11 = [(PUPeopleTileCollectionViewCell *)self questionView];
  v12 = [v9 name];
  v13 = [v12 length];

  if (v13)
  {
    v14 = v11;
    v15 = 1;
  }

  else
  {
    if (!v11)
    {
      v16 = MEMORY[0x1E69DD250];
      v17 = [MEMORY[0x1E69DC888] systemBlueColor];
      v11 = [v16 px_circularGlyphViewWithName:@"questionmark.circle" backgroundColor:v17];

      [(PUPeopleTileCollectionViewCell *)self setQuestionView:v11];
      v18 = [(PUPeopleTileCollectionViewCell *)self contentView];
      [v18 addSubview:v11];
    }

    v14 = v11;
    v15 = 0;
  }

  [v14 setHidden:v15];
  if (v9)
  {
    v19 = [(PUPeopleTileCollectionViewCell *)self personActionManager];

    if (!v19)
    {
      v20 = MEMORY[0x1E6978650];
      v21 = [v9 photoLibrary];
      v22 = [v20 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:0 photoLibrary:v21];

      v23 = [objc_alloc(MEMORY[0x1E69C37A0]) initWithAssetCollection:v22 displayTitleInfo:0];
      [(PUPeopleTileCollectionViewCell *)self setPersonActionManager:v23];

      v24 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
      [v24 setPerformerDelegate:self];
    }
  }

  v25 = objc_alloc(MEMORY[0x1E69788E0]);
  v34[0] = v9;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  v27 = [v9 photoLibrary];
  v28 = [MEMORY[0x1E6978980] fetchType];
  v29 = [v25 initWithObjects:v26 photoLibrary:v27 fetchType:v28 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  v30 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
  [v30 setPeople:v29];

  v31 = [v9 px_localizedName];
  if ([v31 length])
  {
    v32 = [(PUPeopleTileCollectionViewCell *)self menuButton];
    [v32 setAccessibilityLabel:v31];
  }

  else
  {
    v32 = PXLocalizedStringForPersonOrPetAndVisibility();
    v33 = [(PUPeopleTileCollectionViewCell *)self menuButton];
    [v33 setAccessibilityLabel:v32];
  }

  [(PUPeopleTileCollectionViewCell *)self _setupActionsForPerson:v9 asset:v10];
  [(PUPeopleTileCollectionViewCell *)self setNeedsLayout];
}

- (void)accessibilityInvertColorsStatusDidChange:(id)a3
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v8 = ;
  v4 = v8;
  v5 = [v8 CGColor];
  v6 = [(PUPeopleTileCollectionViewCell *)self shadowView];
  v7 = [v6 layer];
  [v7 setShadowColor:v5];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(PUPeopleTileCollectionViewCell *)self menuButton];
  [v8 convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(PUPeopleTileCollectionViewCell *)self menuButton];
  v14 = [v13 hitTest:v7 withEvent:{v10, v12}];

  return v14;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = PUPeopleTileCollectionViewCell;
  [(PUPeopleTileCollectionViewCell *)&v32 layoutSubviews];
  v3 = [(PUPeopleTileCollectionViewCell *)self contentView];
  v4 = [v3 effectiveUserInterfaceLayoutDirection];

  v5 = [(PUPeopleTileCollectionViewCell *)self contentView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PUPeopleTileCollectionViewCell *)self avatarImageView];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [(PUPeopleTileCollectionViewCell *)self menuButton];
  [v15 setFrame:{v7, v9, v11, v13}];

  v16 = [(PUPeopleTileCollectionViewCell *)self shadowView];
  [v16 setFrame:{v7, v9, v11, v13}];

  v17 = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 6)
  {
    v19 = [(PUPeopleTileCollectionViewCell *)self menuButton];
    v20 = [v19 layer];
    [v19 frame];
    v22 = v21;
    [v20 setMasksToBounds:1];
    [v20 setCornerRadius:v22 * 0.5];
  }

  if (v4 == 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v11 - v11 * 0.400000006;
  }

  v24 = [(PUPeopleTileCollectionViewCell *)self questionView];
  [v24 setFrame:{v23, v13 - v11 * 0.400000006, v11 * 0.400000006, v11 * 0.400000006}];

  [(PUPeopleTileCollectionViewCell *)self previousContentViewSize];
  if (v11 != v26 || v13 != v25)
  {
    v27 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v11, v11, v11 * 0.5}];
    v28 = [v27 CGPath];
    v29 = [(PUPeopleTileCollectionViewCell *)self shadowView];
    v30 = [v29 layer];
    [v30 setShadowPath:v28];

    [(PUPeopleTileCollectionViewCell *)self setRenderer:0];
    v31 = [(PUPeopleTileCollectionViewCell *)self person];
    [(PUPeopleTileCollectionViewCell *)self _reloadAvatarImageViewForPerson:v31];
  }

  [(PUPeopleTileCollectionViewCell *)self setPreviousContentViewSize:v11, v13];
}

- (PUPeopleTileCollectionViewCell)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = PUPeopleTileCollectionViewCell;
  v3 = [(PUPeopleTileCollectionViewCell *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUPeopleTileCollectionViewCell *)v3 contentView];
    v6 = objc_opt_new();
    v7 = [(UIView *)v6 layer];
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v8 = ;
    [v7 setShadowColor:{objc_msgSend(v8, "CGColor")}];

    LODWORD(v9) = 1051931443;
    [v7 setShadowOpacity:v9];
    [v7 setShadowOffset:{0.0, 1.0}];
    [v7 setShadowRadius:4.0];
    shadowView = v4->_shadowView;
    v4->_shadowView = v6;
    v11 = v6;

    [v5 addSubview:v11];
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v4 selector:sel_accessibilityInvertColorsStatusDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

    v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v15 = [(UIImageView *)v14 layer];
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    [v15 setBorderColor:{objc_msgSend(v16, "CGColor")}];

    avatarImageView = v4->_avatarImageView;
    v4->_avatarImageView = v14;
    v18 = v14;

    [v5 addSubview:v18];
    v19 = objc_alloc_init(MEMORY[0x1E69DC738]);
    [(UIButton *)v19 setShowsMenuAsPrimaryAction:1];
    [(UIButton *)v19 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    menuButton = v4->_menuButton;
    v4->_menuButton = v19;
    v21 = v19;

    [v5 addSubview:v21];
  }

  return v4;
}

+ (void)_fetchContactInfoForPerson:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() sharedContactFetchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PUPeopleTileCollectionViewCell__fetchContactInfoForPerson_completion___block_invoke;
  v10[3] = &unk_1E7B80B48;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __72__PUPeopleTileCollectionViewCell__fetchContactInfoForPerson_completion___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v10[0] = *MEMORY[0x1E695C400];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v4 = [v2 linkedContactWithKeysToFetch:v3];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PUPeopleTileCollectionViewCell__fetchContactInfoForPerson_completion___block_invoke_2;
  v7[3] = &unk_1E7B80B48;
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

+ (OS_dispatch_queue)sharedContactFetchQueue
{
  if (sharedContactFetchQueue_onceToken != -1)
  {
    dispatch_once(&sharedContactFetchQueue_onceToken, &__block_literal_global_89805);
  }

  v3 = sharedContactFetchQueue_contactFetchQueue;

  return v3;
}

void __57__PUPeopleTileCollectionViewCell_sharedContactFetchQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("OneUpPeopleContactFetchQueue", v2);
  v1 = sharedContactFetchQueue_contactFetchQueue;
  sharedContactFetchQueue_contactFetchQueue = v0;
}

+ (CGSize)itemSizeForTraitCollection:(id)a3
{
  v3 = PXUserInterfaceSizeClassFromUITraitCollection();
  v4 = 32.0;
  if (v3 == 2)
  {
    v4 = 40.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

@end