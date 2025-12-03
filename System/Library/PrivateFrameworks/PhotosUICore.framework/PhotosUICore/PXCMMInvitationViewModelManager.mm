@interface PXCMMInvitationViewModelManager
+ (id)_serialQueue;
- (PXCMMInvitationViewModelManager)init;
- (PXCMMInvitationViewModelManager)initWithInvitation:(id)invitation invitationSpec:(id)spec bulletPrefix:(int64_t)prefix;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_invitationsIsNewMonitorDidChange:(id)change;
- (void)_registerMomentShareStatusPresentation;
- (void)_updateExpirationTitle:(id)title;
- (void)_updateIsNew:(id)new;
- (void)_updatePosterTitle:(id)title;
- (void)_updateStatusString:(id)string;
- (void)_updateTitle:(id)title;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setMomentShareStatusPresentation:(id)presentation;
@end

@implementation PXCMMInvitationViewModelManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXMomentShareStatusPresentationObservationContext_10974 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModelManager.m" lineNumber:256 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((changeCopy & 0x1C) != 0)
  {
    viewModel = self->_viewModel;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__PXCMMInvitationViewModelManager_observable_didChange_context___block_invoke;
    v13[3] = &unk_1E772E610;
    v14 = (changeCopy & 0x18) != 0;
    v13[4] = self;
    v15 = (changeCopy & 4) != 0;
    [(PXCMMInvitationViewModel *)viewModel performChanges:v13];
  }
}

void __64__PXCMMInvitationViewModelManager_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) _updateStatusString:v3];
    v3 = v4;
  }

  if (*(a1 + 41) == 1)
  {
    [*(a1 + 32) _updateExpirationTitle:v4];
    v3 = v4;
  }
}

- (void)_invitationsIsNewMonitorDidChange:(id)change
{
  viewModel = self->_viewModel;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PXCMMInvitationViewModelManager__invitationsIsNewMonitorDidChange___block_invoke;
  v4[3] = &unk_1E772E5E8;
  v4[4] = self;
  [(PXCMMInvitationViewModel *)viewModel performChanges:v4];
}

void __69__PXCMMInvitationViewModelManager__invitationsIsNewMonitorDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _updateIsNew:?];
  if ([*(a1 + 32) _showIsNewStatusInAttributedTitle])
  {
    [*(a1 + 32) _updateTitle:v3];
  }
}

- (void)_contentSizeCategoryDidChange:(id)change
{
  viewModel = self->_viewModel;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__PXCMMInvitationViewModelManager__contentSizeCategoryDidChange___block_invoke;
  v4[3] = &unk_1E772E5E8;
  v4[4] = self;
  [(PXCMMInvitationViewModel *)viewModel performChanges:v4];
}

void __65__PXCMMInvitationViewModelManager__contentSizeCategoryDidChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updatePosterTitle:v4];
  [*(a1 + 32) _updateTitle:v4];
  [*(a1 + 32) _updateStatusString:v4];
  [*(a1 + 32) _updateExpirationTitle:v4];
}

- (void)setMomentShareStatusPresentation:(id)presentation
{
  presentationCopy = presentation;
  momentShareStatusPresentation = self->_momentShareStatusPresentation;
  if (momentShareStatusPresentation != presentationCopy)
  {
    [(PXMomentShareStatusPresentation *)momentShareStatusPresentation unregisterChangeObserver:self context:PXMomentShareStatusPresentationObservationContext_10974];
    objc_storeStrong(&self->_momentShareStatusPresentation, presentation);
    [(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation registerChangeObserver:self context:PXMomentShareStatusPresentationObservationContext_10974];
    viewModel = self->_viewModel;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PXCMMInvitationViewModelManager_setMomentShareStatusPresentation___block_invoke;
    v8[3] = &unk_1E772E5E8;
    v8[4] = self;
    [(PXCMMInvitationViewModel *)viewModel performChanges:v8];
  }
}

void __68__PXCMMInvitationViewModelManager_setMomentShareStatusPresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _updateStatusString:v4];
  [*(a1 + 32) _updateExpirationTitle:v4];
}

- (void)_updateExpirationTitle:(id)title
{
  v18[2] = *MEMORY[0x1E69E9840];
  momentShareStatusPresentation = self->_momentShareStatusPresentation;
  if (momentShareStatusPresentation)
  {
    titleCopy = title;
    expirationTitle = [(PXMomentShareStatusPresentation *)momentShareStatusPresentation expirationTitle];
    if (expirationTitle)
    {
      v17[0] = *MEMORY[0x1E69DB648];
      subtitle2Font = [(PXCMMInvitationSpec *)self->_spec subtitle2Font];
      v18[0] = subtitle2Font;
      v17[1] = *MEMORY[0x1E69DB650];
      subtitle2Color = [(PXCMMInvitationSpec *)self->_spec subtitle2Color];
      v18[1] = subtitle2Color;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];

      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:expirationTitle attributes:v9];
    }

    else
    {
      v9 = PLSharingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        invitation = self->_invitation;
        expiryDate = [(PXCMMInvitation *)invitation expiryDate];
        v13 = 138412546;
        v14 = invitation;
        v15 = 2112;
        v16 = expiryDate;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Received CMM share: %@ has no expiration date: %@", &v13, 0x16u);
      }

      v10 = 0;
    }

    [titleCopy setAttributedSubtitle2:v10];
  }
}

- (void)_updateStatusString:(id)string
{
  v19[2] = *MEMORY[0x1E69E9840];
  momentShareStatusPresentation = self->_momentShareStatusPresentation;
  if (momentShareStatusPresentation)
  {
    stringCopy = string;
    activityTitle = [(PXMomentShareStatusPresentation *)momentShareStatusPresentation activityTitle];
    if (activityTitle || ([(PXMomentShareStatusPresentation *)self->_momentShareStatusPresentation idleTitle], (activityTitle = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = activityTitle;
      v18[0] = *MEMORY[0x1E69DB648];
      subtitle1Font = [(PXCMMInvitationSpec *)self->_spec subtitle1Font];
      v19[0] = subtitle1Font;
      v18[1] = *MEMORY[0x1E69DB650];
      subtitle1Color = [(PXCMMInvitationSpec *)self->_spec subtitle1Color];
      v19[1] = subtitle1Color;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

      v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v7 attributes:v10];
    }

    else
    {
      v10 = PLSharingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        invitation = self->_invitation;
        v13 = self->_momentShareStatusPresentation;
        v14 = 138412546;
        v15 = invitation;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Received CMM share: %@ has no status: %@", &v14, 0x16u);
      }

      v7 = 0;
      v11 = 0;
    }

    [stringCopy setAttributedSubtitle1:v11];
  }
}

- (void)_updateTitle:(id)title
{
  v34[2] = *MEMORY[0x1E69E9840];
  spec = self->_spec;
  titleCopy = title;
  titleColor = [(PXCMMInvitationSpec *)spec titleColor];
  v7 = *MEMORY[0x1E69DB648];
  v33[0] = *MEMORY[0x1E69DB648];
  titleEmphasizedFont = [(PXCMMInvitationSpec *)self->_spec titleEmphasizedFont];
  v9 = *MEMORY[0x1E69DB650];
  v33[1] = *MEMORY[0x1E69DB650];
  v34[0] = titleEmphasizedFont;
  v34[1] = titleColor;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  if ([(PXCMMInvitation *)self->_invitation shareType]== 1)
  {
    owner = [(PXCMMInvitation *)self->_invitation owner];
    localizedName = [owner localizedName];
    if (!localizedName)
    {
      v19 = PLSharingGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        invitation = self->_invitation;
        *buf = 138412546;
        v28 = invitation;
        v29 = 2112;
        v30 = owner;
        _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_ERROR, "Received CMM share: %@ has no sender display name: %@", buf, 0x16u);
      }

      v13 = 0;
LABEL_10:

      goto LABEL_12;
    }

    v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:localizedName attributes:v10];
    if ([(PXCMMInvitationViewModelManager *)self _showIsNewStatusInAttributedTitle])
    {
      v24 = titleCopy;
      v14 = +[PXCMMInvitationsIsNewMonitor sharedMonitor];
      v15 = [v14 invitationIsNew:self->_invitation];

      if (!v15)
      {
        titleCopy = v24;
        goto LABEL_12;
      }

      v16 = self->_spec;
      v23 = self->_bulletPrefix == 1;
      v31[0] = v7;
      titleFont = [(PXCMMInvitationSpec *)v16 titleFont];
      v31[1] = v9;
      v32[0] = titleFont;
      titleBulletColor = [(PXCMMInvitationSpec *)self->_spec titleBulletColor];
      v32[1] = titleBulletColor;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

      v20 = [v13 px_bulletPrefixAttributedStringWithBulletAttributes:v19 isLeftToRight:v23];

      v13 = v20;
      titleCopy = v24;
      goto LABEL_10;
    }
  }

  else
  {
    owner = PXLocalizedStringFromTable(@"PXCMMSharedByYou", @"PhotosUICore");
    v25[0] = v7;
    titleFont2 = [(PXCMMInvitationSpec *)self->_spec titleFont];
    v25[1] = v9;
    v26[0] = titleFont2;
    v26[1] = titleColor;
    localizedName = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];

    v13 = [MEMORY[0x1E696AAB0] px_attributedStringWithHTMLString:owner defaultAttributes:localizedName emphasizedAttributes:v10];
  }

LABEL_12:

  [titleCopy setAttributedTitle:v13];
}

- (void)_updatePosterTitle:(id)title
{
  v12[2] = *MEMORY[0x1E69E9840];
  viewModel = self->_viewModel;
  titleCopy = title;
  posterTitle = [(PXCMMInvitationViewModel *)viewModel posterTitle];
  v11[0] = *MEMORY[0x1E69DB648];
  posterTitleFont = [(PXCMMInvitationSpec *)self->_spec posterTitleFont];
  v12[0] = posterTitleFont;
  v11[1] = *MEMORY[0x1E69DB650];
  posterTitleColor = [(PXCMMInvitationSpec *)self->_spec posterTitleColor];
  v12[1] = posterTitleColor;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:posterTitle attributes:v9];
  [titleCopy setAttributedPosterTitle:v10];
}

- (void)_updateIsNew:(id)new
{
  newCopy = new;
  v4 = +[PXCMMInvitationsIsNewMonitor sharedMonitor];
  v5 = [v4 invitationIsNew:self->_invitation];

  [newCopy setIsNew:v5];
}

- (void)_registerMomentShareStatusPresentation
{
  _serialQueue = [objc_opt_class() _serialQueue];
  dispatch_assert_queue_V2(_serialQueue);

  statusPresentation = [(PXCMMInvitation *)self->_invitation statusPresentation];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PXCMMInvitationViewModelManager__registerMomentShareStatusPresentation__block_invoke;
  block[3] = &unk_1E774B248;
  objc_copyWeak(&v8, &location);
  v7 = statusPresentation;
  v5 = statusPresentation;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __73__PXCMMInvitationViewModelManager__registerMomentShareStatusPresentation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setMomentShareStatusPresentation:v1];
}

- (PXCMMInvitationViewModelManager)initWithInvitation:(id)invitation invitationSpec:(id)spec bulletPrefix:(int64_t)prefix
{
  invitationCopy = invitation;
  specCopy = spec;
  v12 = specCopy;
  if (invitationCopy)
  {
    if (specCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModelManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"invitation"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModelManager.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"invitationSpec"}];

LABEL_3:
  v29.receiver = self;
  v29.super_class = PXCMMInvitationViewModelManager;
  v13 = [(PXCMMInvitationViewModelManager *)&v29 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_invitation, invitation);
    objc_storeStrong(&v14->_spec, spec);
    v14->_bulletPrefix = prefix;
    v15 = objc_alloc_init(PXCMMInvitationViewModel);
    viewModel = v14->_viewModel;
    v14->_viewModel = v15;

    v17 = v14->_viewModel;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __82__PXCMMInvitationViewModelManager_initWithInvitation_invitationSpec_bulletPrefix___block_invoke;
    v26[3] = &unk_1E772E5C0;
    v27 = invitationCopy;
    v18 = v14;
    v28 = v18;
    [(PXCMMInvitationViewModel *)v17 performChanges:v26];
    objc_initWeak(&location, v18);
    _serialQueue = [objc_opt_class() _serialQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PXCMMInvitationViewModelManager_initWithInvitation_invitationSpec_bulletPrefix___block_invoke_2;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v24, &location);
    dispatch_async(_serialQueue, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __82__PXCMMInvitationViewModelManager_initWithInvitation_invitationSpec_bulletPrefix___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) owner];
  [v10 setOwner:v3];

  v4 = [*(a1 + 32) title];
  [v10 setPosterTitle:v4];

  v5 = [*(a1 + 32) subtitle];
  [v10 setPosterSubtitle:v5];

  v6 = [*(a1 + 32) posterAsset];
  if (v6)
  {
    v7 = [*(a1 + 32) posterMediaProvider];
  }

  else
  {
    v7 = 0;
  }

  [v10 setPosterAsset:v6];
  [v10 setPosterMediaProvider:v7];
  [*(a1 + 40) _updatePosterTitle:v10];
  [*(a1 + 40) _updateIsNew:v10];
  [*(a1 + 40) _updateTitle:v10];
  [*(a1 + 40) _updateStatusString:v10];
  [*(a1 + 40) _updateExpirationTitle:v10];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:*(a1 + 40) selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:*(a1 + 40) selector:sel__invitationsIsNewMonitorDidChange_ name:@"PXCMMInvitationsIsNewMonitorDidChangeNotification" object:0];
}

void __82__PXCMMInvitationViewModelManager_initWithInvitation_invitationSpec_bulletPrefix___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerMomentShareStatusPresentation];
}

- (PXCMMInvitationViewModelManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMInvitationViewModelManager.m" lineNumber:49 description:{@"%s is not available as initializer", "-[PXCMMInvitationViewModelManager init]"}];

  abort();
}

+ (id)_serialQueue
{
  if (_serialQueue_predicate != -1)
  {
    dispatch_once(&_serialQueue_predicate, &__block_literal_global_11013);
  }

  v3 = _serialQueue_serialQueue;

  return v3;
}

void __47__PXCMMInvitationViewModelManager__serialQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.photos.PXCMMInvitationViewModelManager", attr);
  v2 = _serialQueue_serialQueue;
  _serialQueue_serialQueue = v1;
}

@end