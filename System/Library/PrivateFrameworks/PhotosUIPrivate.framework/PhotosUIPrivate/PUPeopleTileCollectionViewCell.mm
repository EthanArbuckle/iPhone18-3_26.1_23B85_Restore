@interface PUPeopleTileCollectionViewCell
+ (CGSize)itemSizeForTraitCollection:(id)collection;
+ (OS_dispatch_queue)sharedContactFetchQueue;
+ (void)_fetchContactInfoForPerson:(id)person completion:(id)completion;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (CGSize)previousContentViewSize;
- (PUPeopleTileCollectionViewCell)initWithFrame:(CGRect)frame;
- (PUPeopleTileDelegate)peopleDelegate;
- (UIGraphicsImageRenderer)renderer;
- (id)_reviewActionForPerson:(id)person;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_customizeAlbumActionTapped:(id)tapped;
- (void)_displayAvatarImageRequestResult:(id)result faceRect:(CGRect)rect person:(id)person error:(id)error;
- (void)_fetchAvatarImageForPerson:(id)person;
- (void)_fetchContactImageForPerson:(id)person contact:(id)contact;
- (void)_makeKeyPhotoActionTapped:(id)tapped asset:(id)asset;
- (void)_nameActionTapped:(id)tapped;
- (void)_reloadAvatarImageViewForPerson:(id)person;
- (void)_setPerson:(id)person asset:(id)asset reloadAvatar:(BOOL)avatar;
- (void)_setupActionsForPerson:(id)person asset:(id)asset;
- (void)_showAlbumActionTapped:(id)tapped;
- (void)_unnameActionTapped:(id)tapped asset:(id)asset;
- (void)accessibilityInvertColorsStatusDidChange:(id)change;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
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

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  actionType = [performer actionType];
  v6 = [actionType isEqualToString:*MEMORY[0x1E69C4848]];

  if (state == 30)
  {
    if (v6)
    {
      [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.featureLessTapped" withPayload:MEMORY[0x1E695E0F8]];
      px_dispatch_on_main_queue();
    }
  }
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  presentingViewController = [controller presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:handlerCopy];

  return 1;
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  if (type == 2)
  {
    peopleDelegate = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
    [peopleDelegate presentPeopleViewController:controllerCopy];
  }

  else
  {
    if (type != 1)
    {
      v11 = 0;
      goto LABEL_7;
    }

    peopleDelegate = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
    [peopleDelegate pushPeopleViewController:controllerCopy];
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (void)_makeKeyPhotoActionTapped:(id)tapped asset:(id)asset
{
  tappedCopy = tapped;
  assetCopy = asset;
  v7 = assetCopy;
  if (!tappedCopy || !assetCopy)
  {
    v8 = PXAssertGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_ERROR, "Expected to have a person and asset pair for make key photo action", buf, 2u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x1E69C33B0]) initWithPerson:tappedCopy asset:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PUPeopleTileCollectionViewCell__makeKeyPhotoActionTapped_asset___block_invoke;
  v12[3] = &unk_1E7B7FB70;
  v13 = tappedCopy;
  v14 = v7;
  v10 = v7;
  v11 = tappedCopy;
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

- (void)_nameActionTapped:(id)tapped
{
  v4 = MEMORY[0x1E69C3778];
  tappedCopy = tapped;
  v14 = [v4 contextWithPerson:tappedCopy type:1];
  v6 = [MEMORY[0x1E69C3790] isPersonHiddenFromPeopleHome:tappedCopy];

  [v14 setWantsToBeAddedToPeopleAlbum:v6];
  v7 = MEMORY[0x1E696AEC0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  lastPathComponent = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UIPrivate/Projects/PhotosUI/PhotosUI/iOS/People Tile/PUPeopleTileCollectionViewCell.m" lastPathComponent];
  v11 = [v7 stringWithFormat:@"%@:%@:%s:%d", processName, lastPathComponent, "-[PUPeopleTileCollectionViewCell _nameActionTapped:]", 472];
  [v14 setCallerInfo:v11];

  v12 = [MEMORY[0x1E69C3790] bootstrapViewControllerForContext:v14 delegate:0];
  peopleDelegate = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
  [peopleDelegate presentPeopleViewController:v12];

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.nameTapped" withPayload:MEMORY[0x1E695E0F8]];
}

- (void)_unnameActionTapped:(id)tapped asset:(id)asset
{
  tappedCopy = tapped;
  assetCopy = asset;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69C3790];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __60__PUPeopleTileCollectionViewCell__unnameActionTapped_asset___block_invoke;
  v15 = &unk_1E7B7F540;
  objc_copyWeak(&v16, &location);
  v9 = [v8 alertControllerForUntaggingPerson:tappedCopy asset:assetCopy completion:&v12];
  [v9 setModalPresentationStyle:{7, v12, v13, v14, v15}];
  popoverPresentationController = [v9 popoverPresentationController];
  [popoverPresentationController setSourceView:self];
  [(PUPeopleTileCollectionViewCell *)self bounds];
  [popoverPresentationController setSourceRect:?];
  peopleDelegate = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
  [peopleDelegate presentPeopleViewController:v9];

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

- (void)_customizeAlbumActionTapped:(id)tapped
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C3838];
  tappedCopy = tapped;
  v5 = [v3 alloc];
  v10[0] = tappedCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [v5 initWithPeople:v6];
  v8 = [v7 actionPerformerForActionType:*MEMORY[0x1E69C4130]];
  v9 = PXPresentationEnvironmentForSender();
  [v8 setPresentationEnvironment:v9];

  [v8 performActionWithCompletionHandler:0];
}

- (void)_showAlbumActionTapped:(id)tapped
{
  tappedCopy = tapped;
  traitCollection = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    px_navigationURL = [tappedCopy px_navigationURL];
    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:px_navigationURL withOptions:0];
  }

  else
  {
    px_navigationURL = [(PUPeopleTileCollectionViewCell *)self peopleDelegate];
    v8 = MEMORY[0x1E69C3790];
    allPeople = [px_navigationURL allPeople];
    defaultWorkspace = [v8 makeLemonadeDetailViewControllerForPerson:tappedCopy allPeople:allPeople];

    [px_navigationURL presentPeopleViewController:defaultWorkspace];
  }

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.tilingView.showAlbumTapped" withPayload:MEMORY[0x1E695E0F8]];
}

- (id)_reviewActionForPerson:(id)person
{
  personCopy = person;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x1E69DC628];
  v6 = PXLemonadeLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.rectangle.stack"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__PUPeopleTileCollectionViewCell__reviewActionForPerson___block_invoke;
  v11[3] = &unk_1E7B7F4F0;
  objc_copyWeak(&v13, &location);
  v8 = personCopy;
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

- (void)_setupActionsForPerson:(id)person asset:(id)asset
{
  v73[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  assetCopy = asset;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPeopleTileCollectionViewCell.m" lineNumber:346 description:{@"%s must be called on the main thread", "-[PUPeopleTileCollectionViewCell _setupActionsForPerson:asset:]"}];
  }

  objc_initWeak(location, self);
  personActionManager = [(PUPeopleTileCollectionViewCell *)self personActionManager];
  v50 = [personActionManager standardActionForActionType:*MEMORY[0x1E69C4848]];

  px_localizedName = [personCopy px_localizedName];
  v45 = px_localizedName;
  if ([px_localizedName length])
  {
    v11 = PXLocalizedStringForPersonOrPetAndVisibility();
    v43 = px_localizedName;
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
  v14 = personCopy;
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
  v44 = assetCopy;
  v60 = v44;
  v49 = [v15 actionWithTitle:v52 image:v51 identifier:0 handler:v58];
  personActionManager2 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
  v18 = [personActionManager2 standardActionForActionType:*MEMORY[0x1E69C4868]];

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
  name = [v16 name];
  v46 = v21;
  if ([name length] && objc_msgSend(v16, "px_fetchCanHaveFacesRejectedWithRigor:", 0))
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
    v28 = name;
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
  menuButton = [(PUPeopleTileCollectionViewCell *)self menuButton];
  [menuButton setMenu:v40];

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
    traitCollection = [(PUPeopleTileCollectionViewCell *)self traitCollection];
    [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:traitCollection];
    v6 = v5;
    v8 = v7;

    v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v6, v8}];
    v10 = self->_renderer;
    self->_renderer = v9;

    renderer = self->_renderer;
  }

  return renderer;
}

- (void)_displayAvatarImageRequestResult:(id)result faceRect:(CGRect)rect person:(id)person error:(id)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  personCopy = person;
  errorCopy = error;
  person = [(PUPeopleTileCollectionViewCell *)self person];

  if (person == personCopy)
  {
    if (resultCopy)
    {
      avatarImageView = [(PUPeopleTileCollectionViewCell *)self avatarImageView];
      [avatarImageView frame];
      v19 = v18;
      layer = [avatarImageView layer];
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v21 = CGRectEqualToRect(v40, *MEMORY[0x1E69C48E0]);
      v22 = !v21;
      [layer setMasksToBounds:v22];
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

      [layer setCornerRadius:v23];
      [layer setBorderWidth:v26];
      [layer setContentsRect:{x, y, width, height}];
      [avatarImageView setContentMode:v25];
      [avatarImageView setBackgroundColor:0];
      if (v22)
      {
        [avatarImageView setImage:resultCopy];
      }

      else
      {
        renderer = [(PUPeopleTileCollectionViewCell *)self renderer];
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __89__PUPeopleTileCollectionViewCell__displayAvatarImageRequestResult_faceRect_person_error___block_invoke;
        v32 = &unk_1E7B7F4C8;
        v34 = v19;
        v33 = resultCopy;
        v28 = [renderer imageWithActions:&v29];
        [avatarImageView setImage:v28, v29, v30, v31, v32];
      }
    }

    else
    {
      avatarImageView = PLUIGetLog();
      if (!os_log_type_enabled(avatarImageView, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        goto LABEL_18;
      }

      layer = [errorCopy localizedDescription];
      *buf = 138412546;
      v36 = personCopy;
      v37 = 2112;
      v38 = layer;
      _os_log_impl(&dword_1B36F3000, avatarImageView, OS_LOG_TYPE_ERROR, "No face image returned from face crop manager. Person: %@ - Error: %@", buf, 0x16u);
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

- (void)_fetchAvatarImageForPerson:(id)person
{
  personCopy = person;
  traitCollection = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:traitCollection];
  v7 = v6;
  v9 = v8;
  v10 = objc_alloc(MEMORY[0x1E69C3780]);
  [traitCollection displayScale];
  v12 = [v10 initWithPerson:personCopy targetSize:v7 displayScale:{v9, v11}];
  [v12 setCornerStyle:2];
  objc_initWeak(&location, self);
  mEMORY[0x1E69C3788] = [MEMORY[0x1E69C3788] sharedManager];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PUPeopleTileCollectionViewCell__fetchAvatarImageForPerson___block_invoke;
  v15[3] = &unk_1E7B7F4A0;
  objc_copyWeak(&v17, &location);
  v14 = personCopy;
  v16 = v14;
  [mEMORY[0x1E69C3788] requestFaceCropForOptions:v12 resultHandler:v15];

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

- (void)_fetchContactImageForPerson:(id)person contact:(id)contact
{
  personCopy = person;
  contactCopy = contact;
  traitCollection = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  [PUPeopleTileCollectionViewCell itemSizeForTraitCollection:traitCollection];
  v10 = v9;
  v12 = v11;
  layoutDirection = [traitCollection layoutDirection];
  objc_initWeak(&location, self);
  v14 = MEMORY[0x1E69C3310];
  [traitCollection displayScale];
  v16 = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__PUPeopleTileCollectionViewCell__fetchContactImageForPerson_contact___block_invoke;
  v18[3] = &unk_1E7B7F450;
  objc_copyWeak(&v20, &location);
  v17 = personCopy;
  v19 = v17;
  [v14 requestImageForContact:contactCopy targetSize:layoutDirection == 1 displayScale:0 isRTL:v18 deliverOnce:v10 completion:{v12, v16}];

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

- (void)_reloadAvatarImageViewForPerson:(id)person
{
  personCopy = person;
  avatarImageView = [(PUPeopleTileCollectionViewCell *)self avatarImageView];
  layer = [avatarImageView layer];
  [avatarImageView frame];
  v8 = v7;
  [avatarImageView setImage:0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [avatarImageView setBackgroundColor:blackColor];

  [layer setMasksToBounds:1];
  [layer setCornerRadius:v8 * 0.5];
  [layer setBorderWidth:1.0];
  objc_initWeak(&location, self);
  v10 = objc_opt_class();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PUPeopleTileCollectionViewCell__reloadAvatarImageViewForPerson___block_invoke;
  v12[3] = &unk_1E7B7F428;
  objc_copyWeak(&v14, &location);
  v11 = personCopy;
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
  person = [(PUPeopleTileCollectionViewCell *)self person];
  localIdentifier = [person localIdentifier];
  v11[0] = *MEMORY[0x1E6978F38];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  person2 = [(PUPeopleTileCollectionViewCell *)self person];
  photoLibrary = [person2 photoLibrary];
  v9 = [v3 personWithLocalIdentifier:localIdentifier propertySets:v6 photoLibrary:photoLibrary];

  asset = [(PUPeopleTileCollectionViewCell *)self asset];
  [(PUPeopleTileCollectionViewCell *)self _setPerson:v9 asset:asset reloadAvatar:0];
}

- (void)_setPerson:(id)person asset:(id)asset reloadAvatar:(BOOL)avatar
{
  avatarCopy = avatar;
  v34[1] = *MEMORY[0x1E69E9840];
  personCopy = person;
  assetCopy = asset;
  objc_storeStrong(&self->_person, person);
  objc_storeStrong(&self->_asset, asset);
  if (avatarCopy)
  {
    [(PUPeopleTileCollectionViewCell *)self _reloadAvatarImageViewForPerson:personCopy];
  }

  questionView = [(PUPeopleTileCollectionViewCell *)self questionView];
  name = [personCopy name];
  v13 = [name length];

  if (v13)
  {
    v14 = questionView;
    v15 = 1;
  }

  else
  {
    if (!questionView)
    {
      v16 = MEMORY[0x1E69DD250];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      questionView = [v16 px_circularGlyphViewWithName:@"questionmark.circle" backgroundColor:systemBlueColor];

      [(PUPeopleTileCollectionViewCell *)self setQuestionView:questionView];
      contentView = [(PUPeopleTileCollectionViewCell *)self contentView];
      [contentView addSubview:questionView];
    }

    v14 = questionView;
    v15 = 0;
  }

  [v14 setHidden:v15];
  if (personCopy)
  {
    personActionManager = [(PUPeopleTileCollectionViewCell *)self personActionManager];

    if (!personActionManager)
    {
      v20 = MEMORY[0x1E6978650];
      photoLibrary = [personCopy photoLibrary];
      v22 = [v20 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:0 photoLibrary:photoLibrary];

      v23 = [objc_alloc(MEMORY[0x1E69C37A0]) initWithAssetCollection:v22 displayTitleInfo:0];
      [(PUPeopleTileCollectionViewCell *)self setPersonActionManager:v23];

      personActionManager2 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
      [personActionManager2 setPerformerDelegate:self];
    }
  }

  v25 = objc_alloc(MEMORY[0x1E69788E0]);
  v34[0] = personCopy;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  photoLibrary2 = [personCopy photoLibrary];
  fetchType = [MEMORY[0x1E6978980] fetchType];
  v29 = [v25 initWithObjects:v26 photoLibrary:photoLibrary2 fetchType:fetchType fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  personActionManager3 = [(PUPeopleTileCollectionViewCell *)self personActionManager];
  [personActionManager3 setPeople:v29];

  px_localizedName = [personCopy px_localizedName];
  if ([px_localizedName length])
  {
    menuButton = [(PUPeopleTileCollectionViewCell *)self menuButton];
    [menuButton setAccessibilityLabel:px_localizedName];
  }

  else
  {
    menuButton = PXLocalizedStringForPersonOrPetAndVisibility();
    menuButton2 = [(PUPeopleTileCollectionViewCell *)self menuButton];
    [menuButton2 setAccessibilityLabel:menuButton];
  }

  [(PUPeopleTileCollectionViewCell *)self _setupActionsForPerson:personCopy asset:assetCopy];
  [(PUPeopleTileCollectionViewCell *)self setNeedsLayout];
}

- (void)accessibilityInvertColorsStatusDidChange:(id)change
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
  cGColor = [v8 CGColor];
  shadowView = [(PUPeopleTileCollectionViewCell *)self shadowView];
  layer = [shadowView layer];
  [layer setShadowColor:cGColor];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  menuButton = [(PUPeopleTileCollectionViewCell *)self menuButton];
  [menuButton convertPoint:self fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  menuButton2 = [(PUPeopleTileCollectionViewCell *)self menuButton];
  v14 = [menuButton2 hitTest:eventCopy withEvent:{v10, v12}];

  return v14;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = PUPeopleTileCollectionViewCell;
  [(PUPeopleTileCollectionViewCell *)&v32 layoutSubviews];
  contentView = [(PUPeopleTileCollectionViewCell *)self contentView];
  effectiveUserInterfaceLayoutDirection = [contentView effectiveUserInterfaceLayoutDirection];

  contentView2 = [(PUPeopleTileCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  avatarImageView = [(PUPeopleTileCollectionViewCell *)self avatarImageView];
  [avatarImageView setFrame:{v7, v9, v11, v13}];

  menuButton = [(PUPeopleTileCollectionViewCell *)self menuButton];
  [menuButton setFrame:{v7, v9, v11, v13}];

  shadowView = [(PUPeopleTileCollectionViewCell *)self shadowView];
  [shadowView setFrame:{v7, v9, v11, v13}];

  traitCollection = [(PUPeopleTileCollectionViewCell *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    menuButton2 = [(PUPeopleTileCollectionViewCell *)self menuButton];
    layer = [menuButton2 layer];
    [menuButton2 frame];
    v22 = v21;
    [layer setMasksToBounds:1];
    [layer setCornerRadius:v22 * 0.5];
  }

  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v11 - v11 * 0.400000006;
  }

  questionView = [(PUPeopleTileCollectionViewCell *)self questionView];
  [questionView setFrame:{v23, v13 - v11 * 0.400000006, v11 * 0.400000006, v11 * 0.400000006}];

  [(PUPeopleTileCollectionViewCell *)self previousContentViewSize];
  if (v11 != v26 || v13 != v25)
  {
    v27 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v11, v11, v11 * 0.5}];
    cGPath = [v27 CGPath];
    shadowView2 = [(PUPeopleTileCollectionViewCell *)self shadowView];
    layer2 = [shadowView2 layer];
    [layer2 setShadowPath:cGPath];

    [(PUPeopleTileCollectionViewCell *)self setRenderer:0];
    person = [(PUPeopleTileCollectionViewCell *)self person];
    [(PUPeopleTileCollectionViewCell *)self _reloadAvatarImageViewForPerson:person];
  }

  [(PUPeopleTileCollectionViewCell *)self setPreviousContentViewSize:v11, v13];
}

- (PUPeopleTileCollectionViewCell)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = PUPeopleTileCollectionViewCell;
  v3 = [(PUPeopleTileCollectionViewCell *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PUPeopleTileCollectionViewCell *)v3 contentView];
    v6 = objc_opt_new();
    layer = [(UIView *)v6 layer];
    if (UIAccessibilityIsInvertColorsEnabled())
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v8 = ;
    [layer setShadowColor:{objc_msgSend(v8, "CGColor")}];

    LODWORD(v9) = 1051931443;
    [layer setShadowOpacity:v9];
    [layer setShadowOffset:{0.0, 1.0}];
    [layer setShadowRadius:4.0];
    shadowView = v4->_shadowView;
    v4->_shadowView = v6;
    v11 = v6;

    [contentView addSubview:v11];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_accessibilityInvertColorsStatusDidChange_ name:*MEMORY[0x1E69DD8D8] object:0];

    v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    layer2 = [(UIImageView *)v14 layer];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [layer2 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

    avatarImageView = v4->_avatarImageView;
    v4->_avatarImageView = v14;
    v18 = v14;

    [contentView addSubview:v18];
    v19 = objc_alloc_init(MEMORY[0x1E69DC738]);
    [(UIButton *)v19 setShowsMenuAsPrimaryAction:1];
    [(UIButton *)v19 _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    menuButton = v4->_menuButton;
    v4->_menuButton = v19;
    v21 = v19;

    [contentView addSubview:v21];
  }

  return v4;
}

+ (void)_fetchContactInfoForPerson:(id)person completion:(id)completion
{
  personCopy = person;
  completionCopy = completion;
  sharedContactFetchQueue = [objc_opt_class() sharedContactFetchQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PUPeopleTileCollectionViewCell__fetchContactInfoForPerson_completion___block_invoke;
  v10[3] = &unk_1E7B80B48;
  v11 = personCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = personCopy;
  dispatch_async(sharedContactFetchQueue, v10);
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

+ (CGSize)itemSizeForTraitCollection:(id)collection
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