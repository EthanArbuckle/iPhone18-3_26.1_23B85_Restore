@interface VUIDownloadButton
- (BOOL)_hasImage;
- (BOOL)_hasTextForNotDownloadState;
- (BOOL)_hasTitle;
- (CGSize)_imageSizeThatFits:(CGSize)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (UIImage)downloadedImage;
- (UIImage)downloadingImage;
- (UIImage)expiredDownloadImage;
- (UIImage)notDownloadedImage;
- (UIViewController)presentingViewController;
- (VUIDownloadButton)initWithAssetController:(id)a3 type:(unint64_t)a4;
- (VUIDownloadButton)initWithDownloadButtonViewModel:(id)a3 isForLibrary:(BOOL)a4 type:(unint64_t)a5 textLayout:(id)a6;
- (VUIDownloadButton)initWithMediaEntity:(id)a3 type:(unint64_t)a4;
- (VUIDownloadButton)initWithPlayable:(id)a3 type:(unint64_t)a4 textLayout:(id)a5;
- (VUIDownloadButton)initWithRemotePlayable:(id)a3 type:(unint64_t)a4 textLayout:(id)a5;
- (id)_buttonPropertiesForState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6;
- (id)_imageForDownloadState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6;
- (id)_localButtonPropertiesForState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6;
- (id)_remoteButtonPropertiesForState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6;
- (id)accessibilityLabel;
- (id)initTVShowDownloadButtonWithType:(unint64_t)a3 textLayout:(id)a4;
- (void)_clearMasks;
- (void)_configureProgressIndicatorWithProperties:(id)a3;
- (void)_insertProgressIndicatorWithFrame:(CGRect)a3;
- (void)_layoutProgressIndicator;
- (void)_setImage:(id)a3;
- (void)_setTitleWithProperties:(id)a3;
- (void)_setupDownloadButton;
- (void)_startObservingDownloadProgress:(id)a3;
- (void)_startObservingViewModel:(id)a3;
- (void)_stopObservingDownloadProgress:(id)a3;
- (void)_stopObservingViewModel:(id)a3;
- (void)_updateButtonToConnectingWithProperties:(id)a3;
- (void)_updateButtonToDownloadedWithProperties:(id)a3;
- (void)_updateButtonToDownloadingWithProperties:(id)a3;
- (void)_updateButtonToEnqueuedWithProperties:(id)a3;
- (void)_updateButtonToNotDownloadedWithProperties:(id)a3;
- (void)_updateButtonToState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6;
- (void)_updateButtonToState:(unint64_t)a3 oldState:(unint64_t)a4;
- (void)_updateDownloadProgress:(double)a3 animated:(BOOL)a4;
- (void)_updateImageViewTintColorWithDownloadState:(unint64_t)a3;
- (void)_updateMaskForProgressLayer;
- (void)configureActionHandler;
- (void)configureWithLayoutProperties;
- (void)dealloc;
- (void)insertProgressIndicator;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)revertTintColor;
- (void)saturateTintColorAndBackgroundColor;
- (void)setHighlighted:(BOOL)a3;
- (void)setNotDownloadStateText:(id)a3;
- (void)setPresentingViewController:(id)a3;
- (void)setScrolledNonUberPercentage:(double)a3;
- (void)setSeasonDownloadDataSourceProvider:(id)a3;
- (void)setShowsTextInDownloadedState:(BOOL)a3;
- (void)setTintColor:(id)a3;
- (void)setUsesDefaultConfiguration:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)updateWithAssetController:(id)a3;
- (void)updateWithPlayable:(id)a3 textLayout:(id)a4;
- (void)vui_didMoveToWindow;
@end

@implementation VUIDownloadButton

- (VUIDownloadButton)initWithRemotePlayable:(id)a3 type:(unint64_t)a4 textLayout:(id)a5
{
  v5 = [(VUIDownloadButton *)self initWithPlayable:a3 type:a4 textLayout:a5];
  v6 = [(VUIDownloadButton *)v5 viewModel];
  [v6 setIsRemoteDownload:1];

  return v5;
}

- (VUIDownloadButton)initWithPlayable:(id)a3 type:(unint64_t)a4 textLayout:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = VUIDownloadButton;
  v10 = [(VUIButton *)&v17 initWithType:a4 interfaceStyle:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_textLayout, a5);
    [(VUIDownloadButton *)v11 _setupDownloadButton];
    v12 = [VUIDownloadButtonViewModel viewModelWithVideosPlayable:v8];
    [(VUIDownloadButton *)v11 setViewModel:v12];
    objc_initWeak(&location, v11);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__VUIDownloadButton_initWithPlayable_type_textLayout___block_invoke;
    v14[3] = &unk_1E872DE30;
    objc_copyWeak(&v15, &location);
    [(VUIButton *)v11 setSelectActionHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __54__VUIDownloadButton_initWithPlayable_type_textLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionHandler];
  [v1 performAction:objc_msgSend(WeakRetained confirmBeforeStopDownloading:{"isForLibrary"), 0}];
}

- (VUIDownloadButton)initWithDownloadButtonViewModel:(id)a3 isForLibrary:(BOOL)a4 type:(unint64_t)a5 textLayout:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = VUIDownloadButton;
  v12 = [(VUIButton *)&v18 initWithType:a5 interfaceStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textLayout, a6);
    [(VUIDownloadButton *)v13 _setupDownloadButton];
    [(VUIDownloadButton *)v13 setIsForLibrary:v8];
    [(VUIDownloadButton *)v13 setViewModel:v10];
    objc_initWeak(&location, v13);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__VUIDownloadButton_initWithDownloadButtonViewModel_isForLibrary_type_textLayout___block_invoke;
    v15[3] = &unk_1E872DE30;
    objc_copyWeak(&v16, &location);
    [(VUIButton *)v13 setSelectActionHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __82__VUIDownloadButton_initWithDownloadButtonViewModel_isForLibrary_type_textLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained actionHandler];
  [v1 performAction:objc_msgSend(WeakRetained confirmBeforeStopDownloading:{"isForLibrary"), 0}];
}

- (VUIDownloadButton)initWithAssetController:(id)a3 type:(unint64_t)a4
{
  v6 = [VUIDownloadButtonViewModel viewModelWithAssetController:a3];
  v7 = [(VUIDownloadButton *)self initWithDownloadButtonViewModel:v6 isForLibrary:1 type:a4 textLayout:0];

  return v7;
}

- (VUIDownloadButton)initWithMediaEntity:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 assetController];
  v8 = [(VUIDownloadButton *)self initWithAssetController:v7 type:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [(VUIDownloadButton *)v8 viewModel];
    [v10 setMediaEntity:v6];
  }

  return v9;
}

- (id)initTVShowDownloadButtonWithType:(unint64_t)a3 textLayout:(id)a4
{
  v4 = [(VUIDownloadButton *)self initWithDownloadButtonViewModel:0 isForLibrary:0 type:a3 textLayout:a4];
  [(VUIDownloadButton *)v4 setIsForLibrary:0];
  return v4;
}

- (void)setSeasonDownloadDataSourceProvider:(id)a3
{
  v5 = a3;
  if (self->_seasonDownloadDataSourceProvider != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_seasonDownloadDataSourceProvider, a3);
    v6 = [(VUISeasonDownloadDataSourceProvider *)v9 tvShowCanonicalId];
    v7 = [VUIDownloadButtonViewModel viewModelWithCanonicalId:v6 title:0 episodeCount:[(VUISeasonDownloadDataSourceProvider *)v9 totalEpisodeCount] downloadType:1];
    if (_os_feature_enabled_impl())
    {
      v8 = [(VUIDownloadButton *)self viewModel];
      [v7 setIsRemoteDownload:{objc_msgSend(v8, "isRemoteDownload")}];
    }

    [(VUIDownloadButton *)self setViewModel:v7];

    v5 = v9;
  }
}

- (void)dealloc
{
  [(VUIDownloadButton *)self setViewModel:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DF7E0] object:0];

  v4.receiver = self;
  v4.super_class = VUIDownloadButton;
  [(VUIDownloadButton *)&v4 dealloc];
}

- (void)setUsesDefaultConfiguration:(BOOL)a3
{
  self->_usesDefaultConfiguration = a3;
  if (a3)
  {
    [(VUIButton *)self setPadding:0.0, 0.0, 0.0, 0.0];
    [(VUIButton *)self setImageMaxHeight:28.0];
    [(VUIButton *)self setImageMaxWidth:28.0];
    v4 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUIButton *)self setImageTintColor:v4];

    if ([(VUIButton *)self buttonType]== 9)
    {
      [(VUIButton *)self setHeight:28.0];
      [(VUIButton *)self setWidth:28.0];
      [(VUIButton *)self setCornerRadius:14.0];
      v5 = [MEMORY[0x1E69DC888] vui_tertiaryFillColor];
      [(VUIDownloadButton *)self setKeyBackgroundColor:v5];

      v7 = [(VUIDownloadButton *)self backgroundView];
      v6 = [(VUIDownloadButton *)self keyBackgroundColor];
      [v7 setVuiBackgroundColor:v6];
    }
  }
}

- (void)setPresentingViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presentingViewController, obj);
    v5 = [(VUIDownloadButton *)self actionHandler];
    [v5 setPresentingViewController:obj];
  }
}

- (void)configureActionHandler
{
  v3 = [VUIDownloadButtonActionHandler alloc];
  v4 = [(VUIDownloadButton *)self viewModel];
  v5 = [(VUIDownloadButtonActionHandler *)v3 initWithViewModel:v4];

  [(VUIDownloadButtonActionHandler *)v5 setParentView:self];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__VUIDownloadButton_configureActionHandler__block_invoke;
  v8[3] = &unk_1E872E4B8;
  objc_copyWeak(&v9, &location);
  [(VUIDownloadButtonActionHandler *)v5 setAcknowledgementDownloadDeletedBlock:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__VUIDownloadButton_configureActionHandler__block_invoke_2;
  v6[3] = &unk_1E872E4B8;
  objc_copyWeak(&v7, &location);
  [(VUIDownloadButtonActionHandler *)v5 setAcknowledgementDownloadCancelledBlock:v6];
  [(VUIDownloadButton *)self setActionHandler:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __43__VUIDownloadButton_configureActionHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWasDeleted:1];
}

void __43__VUIDownloadButton_configureActionHandler__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWasCanceled:1];
  [WeakRetained setEnabled:0];
}

- (void)configureWithLayoutProperties
{
  if (-[VUIButton buttonType](self, "buttonType") && -[VUIButton buttonType](self, "buttonType") != 3 || ([MEMORY[0x1E69DF6F0] isMac] & 1) == 0)
  {
    v3 = [(VUIButton *)self buttonBackgroundColor];
    [(VUIDownloadButton *)self setKeyBackgroundColor:v3];

    [(VUIButton *)self setButtonBackgroundColor:0];
    v4 = [(VUIDownloadButton *)self backgroundView];
    v5 = [(VUIDownloadButton *)self keyBackgroundColor];
    [v4 setVuiBackgroundColor:v5];
  }

  v13.receiver = self;
  v13.super_class = VUIDownloadButton;
  [(VUIButton *)&v13 configureWithLayoutProperties];
  v6 = [(VUIDownloadButton *)self viewModel];
  v7 = [v6 downloadState];
  v8 = [(VUIDownloadButton *)self viewModel];
  v9 = [v8 isExpired];
  v10 = [(VUIDownloadButton *)self viewModel];
  v11 = [v10 isExpiringSoon];
  v12 = [(VUIDownloadButton *)self viewModel];
  -[VUIDownloadButton _updateButtonToState:isExpired:isExpiringSoon:hasFailed:](self, "_updateButtonToState:isExpired:isExpiringSoon:hasFailed:", v7, v9, v11, [v12 downloadFailedDueToError]);
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIButton *)&v6 setTintColor:v4];
  if ([(VUIDownloadButton *)self tintAdjustmentMode]!= 2)
  {
    v5 = [(VUIDownloadButton *)self progressIndicator];
    [v5 setProgressFillColor:v4];
  }
}

- (void)saturateTintColorAndBackgroundColor
{
  v3 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  saturatedTintColor = self->_saturatedTintColor;
  self->_saturatedTintColor = v3;

  v5 = [(VUIDownloadButton *)self progressIndicator];
  [v5 setProgressFillColor:self->_saturatedTintColor];

  v6 = [(VUIButton *)self imageView];
  [v6 _setTintColor:self->_saturatedTintColor];
}

- (void)revertTintColor
{
  v6 = [(VUIButton *)self imageTintColor];
  v3 = [(VUIDownloadButton *)self progressIndicator];
  [v3 setProgressFillColor:v6];

  v4 = [(VUIButton *)self imageView];
  [v4 _setTintColor:v6];

  saturatedTintColor = self->_saturatedTintColor;
  self->_saturatedTintColor = 0;
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v28.receiver = self;
  v28.super_class = VUIDownloadButton;
  [VUIButton vui_layoutSubviews:sel_vui_layoutSubviews_computationOnly_ computationOnly:?];
  v9 = v8;
  v11 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VUIDownloadButton_vui_layoutSubviews_computationOnly___block_invoke;
  aBlock[3] = &unk_1E8737998;
  aBlock[4] = self;
  *&aBlock[5] = width;
  *&aBlock[6] = height;
  *&aBlock[7] = v8;
  *&aBlock[8] = v10;
  v12 = _Block_copy(aBlock);
  if (v4)
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    v15 = [(VUIButton *)self buttonType];
    if (v9 == v13 && v11 == v14)
    {
      if (v15 == 7)
      {
        v18 = [(VUIDownloadButton *)self progressIndicator];

        if (v18)
        {
          v19 = [(VUIDownloadButton *)self progressIndicator];
          [v19 vui_sizeThatFits:{width, height}];
          v9 = v20;
          v11 = v21;
        }
      }
    }

    else if (v15 == 9)
    {
      v9 = v12[2](v12, v9, v11);
      v11 = v17;
    }
  }

  v22 = [(VUIDownloadButton *)self progressIndicator];

  if (v22)
  {
    [(VUIDownloadButton *)self _layoutProgressIndicator];
  }

  v23 = [(VUIDownloadButton *)self backgroundView];
  [v23 setFrame:{0.0, 0.0, v9, v11}];

  v24 = [(VUIDownloadButton *)self backgroundView];
  [(VUIButton *)self cornerRadius];
  [v24 _setCornerRadius:?];

  v25 = v9;
  v26 = v11;
  result.height = v26;
  result.width = v25;
  return result;
}

double __56__VUIDownloadButton_vui_layoutSubviews_computationOnly___block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) viewModel];
  if ([v4 downloadState])
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) _hasTextForNotDownloadState];
  }

  v6 = [*(a1 + 32) viewModel];
  if ([v6 downloadState] == 4)
  {
    v7 = [*(a1 + 32) showsTextInDownloadedState];
  }

  else
  {
    v7 = 0;
  }

  if ((v5 | v7))
  {
    v8 = [*(a1 + 32) textContentView];

    if (v8)
    {
      v9 = [*(a1 + 32) textContentView];
      [v9 vui_sizeThatFits:{*(a1 + 40), *(a1 + 48)}];
      v11 = v10;

      [*(a1 + 32) imageMargin];
      v13 = v12;
      v14 = [*(a1 + 32) textContentView];
      v15 = [v14 textLayout];
      [v15 margin];
      a2 = a2 + v11 + v13 + v16;
    }

    [*(a1 + 32) padding];
    v18 = v17;
    [*(a1 + 32) padding];
    a2 = a2 + v18 + v19;
    [*(a1 + 32) padding];
    [*(a1 + 32) padding];
    [*(a1 + 32) height];
    if (v20 > 0.0)
    {
      [*(a1 + 32) height];
    }
  }

  return a2;
}

- (void)vui_didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIDownloadButton *)&v6 vui_didMoveToWindow];
  v3 = [(VUIDownloadButton *)self window];

  v4 = +[VUIUnifiedMessagingRegistry sharedInstance];
  v5 = v4;
  if (v3)
  {
    [v4 registerDownloadButton:self];
  }

  else
  {
    [v4 unRegisterDownloadButton:self];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (__ViewModelDownloadStateContext == a6)
  {
    v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[VUIDownloadButton _updateButtonToState:oldState:](self, "_updateButtonToState:oldState:", [v15 unsignedIntegerValue], objc_msgSend(v14, "unsignedIntegerValue"));
          }
        }
      }
    }

    goto LABEL_12;
  }

  if (__ViewModelDownloadExpirationDateContext == a6)
  {
    v14 = [(VUIDownloadButton *)self viewModel];
    v29 = [v14 downloadState];
    v16 = [(VUIDownloadButton *)self viewModel];
    v17 = v11;
    v18 = v10;
    v19 = [v16 isExpired];
    v20 = [(VUIDownloadButton *)self viewModel];
    v21 = [v20 isExpiringSoon];
    v22 = [(VUIDownloadButton *)self viewModel];
    v23 = [v22 downloadFailedDueToError];
    v24 = v19;
    v10 = v18;
    v11 = v17;
    [(VUIDownloadButton *)self _updateButtonToState:v29 isExpired:v24 isExpiringSoon:v21 hasFailed:v23];

LABEL_12:
    goto LABEL_13;
  }

  if (__ViewModelDownloadProgressContext == a6)
  {
    v25 = VUIDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(VUIDownloadButton *)self viewModel];
      [v26 downloadProgress];
      *buf = 134217984;
      v32 = v27;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIDownloadButton:: update download progress %f", buf, 0xCu);
    }

    v28 = [(VUIDownloadButton *)self viewModel];
    [v28 downloadProgress];
    [(VUIDownloadButton *)self _updateDownloadProgress:1 animated:?];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = VUIDownloadButton;
    [(VUIDownloadButton *)&v30 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_13:
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v7 = v5;
    if (viewModel)
    {
      [(VUIDownloadButton *)self _stopObservingViewModel:?];
      [(VUIDownloadButton *)self _stopObservingDownloadProgress:self->_viewModel];
    }

    objc_storeStrong(&self->_viewModel, a3);
    v5 = v7;
    if (v7)
    {
      [(VUIDownloadButton *)self configureActionHandler];
      [(VUIDownloadButton *)self _startObservingViewModel:v7];
      [(VUIDownloadButton *)self _updateButtonToState:[(VUIDownloadButtonViewModel *)v7 downloadState] isExpired:[(VUIDownloadButtonViewModel *)v7 isExpired] isExpiringSoon:[(VUIDownloadButtonViewModel *)v7 isExpiringSoon] hasFailed:[(VUIDownloadButtonViewModel *)v7 downloadFailedDueToError]];
      v5 = v7;
    }
  }
}

- (void)setNotDownloadStateText:(id)a3
{
  v5 = a3;
  if (self->_notDownloadStateText != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_notDownloadStateText, a3);
    v6 = [(VUIDownloadButton *)self _buttonPropertiesForState:0 isExpired:0 isExpiringSoon:0 hasFailed:0];
    [(VUIDownloadButton *)self _updateButtonToNotDownloadedWithProperties:v6];

    v5 = v7;
  }
}

- (void)setShowsTextInDownloadedState:(BOOL)a3
{
  self->_showsTextInDownloadedState = a3;
  if (a3)
  {
    v4 = [(VUIDownloadButton *)self viewModel];
    v5 = [v4 downloadState];

    if (v5 == 4)
    {
      v6 = [(VUIDownloadButton *)self _buttonPropertiesForState:4 isExpired:0 isExpiringSoon:0 hasFailed:0];
      [(VUIDownloadButton *)self _updateButtonToDownloadedWithProperties:v6];
    }
  }
}

- (void)updateWithAssetController:(id)a3
{
  v4 = a3;
  v5 = [(VUIDownloadButton *)self viewModel];
  [v5 setAssetController:v4];
}

- (void)updateWithPlayable:(id)a3 textLayout:(id)a4
{
  v5 = [VUIDownloadButtonViewModel viewModelWithVideosPlayable:a3, a4];
  [(VUIDownloadButton *)self setViewModel:v5];
}

- (void)setScrolledNonUberPercentage:(double)a3
{
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIButton *)&v6 setScrolledNonUberPercentage:?];
  v5 = [(VUIDownloadButton *)self backgroundView];
  [v5 setHidden:a3 == 0.0];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIButton *)&v6 setHighlighted:?];
  if ([(VUIButton *)self buttonType]== 9)
  {
    v5 = 1.0;
    if (v3)
    {
      v5 = 0.5;
    }

    [(VUIDownloadButton *)self setVuiAlpha:v5];
  }
}

- (CGSize)_imageSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(VUIDownloadButton *)self viewModel];
  v7 = +[VUIDownloadButtonViewModel shouldShowExpiredImageWithDownloadState:isExpired:isExpiringSoon:hasFailed:](VUIDownloadButtonViewModel, "shouldShowExpiredImageWithDownloadState:isExpired:isExpiringSoon:hasFailed:", [v6 downloadState], objc_msgSend(v6, "isExpired"), objc_msgSend(v6, "isExpiringSoon"), objc_msgSend(v6, "downloadFailedDueToError"));
  if ([(VUIButton *)self buttonType])
  {
    v8 = [(VUIButton *)self buttonType]== 3;
  }

  else
  {
    v8 = 1;
  }

  if ([v6 downloadState] != 4 || v7 || v8)
  {
    v13 = [(VUIDownloadButton *)self progressIndicator];

    if (v13)
    {
      [(VUIDownloadButton *)self progressIndicator];
    }

    else
    {
      [(VUIButton *)self imageView];
    }
    v14 = ;
    [v14 vui_sizeThatFits:{width, height}];
    v10 = v15;
    v12 = v16;
  }

  else
  {
    [(VUIDownloadButton *)self bounds];
    v10 = v9 + 5.0;
    [(VUIDownloadButton *)self bounds];
    v12 = v11 + 5.0;
  }

  v17 = v10;
  v18 = v12;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)_setupDownloadButton
{
  if (MEMORY[0x1E6913230](self, a2) && [(VUIButton *)self buttonType]== 7)
  {
    v3 = +[_TtC8VideosUI26VUIBarButtonItemConfigObjC symbolConfigureForBarButtonItem];
  }

  else
  {
    v3 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:16.0];
  }

  primarySymbolConfiguration = self->_primarySymbolConfiguration;
  self->_primarySymbolConfiguration = v3;

  [(CAShapeLayer *)self->_backgroundMaskingLayer removeFromSuperlayer];
  [(UIView *)self->_backgroundView removeFromSuperview];
  v5 = objc_opt_new();
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  v7 = [(VUIDownloadButton *)self subviews];
  v13 = [v7 firstObject];

  [(VUIDownloadButton *)self vui_insertSubview:self->_backgroundView belowSubview:v13 oldView:0];
  v8 = objc_alloc_init(MEMORY[0x1E69794A0]);
  backgroundMaskingLayer = self->_backgroundMaskingLayer;
  self->_backgroundMaskingLayer = v8;

  v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
  backdropMaskingLayer = self->_backdropMaskingLayer;
  self->_backdropMaskingLayer = v10;

  v12 = *MEMORY[0x1E69797F8];
  [(CAShapeLayer *)self->_backgroundMaskingLayer setFillRule:*MEMORY[0x1E69797F8]];
  [(CAShapeLayer *)self->_backdropMaskingLayer setFillRule:v12];
}

- (void)_updateMaskForProgressLayer
{
  LODWORD(v2) = 1.0;
  [(CAShapeLayer *)self->_backdropMaskingLayer setOpacity:v2];
  progressIndicator = self->_progressIndicator;
  if (progressIndicator)
  {
    [(VUICircularProgress *)progressIndicator bounds];
    v6 = v5 * 0.5;
    [(VUICircularProgress *)self->_progressIndicator vuiCenter];
    v8 = v7;
    v10 = v9;
    v18 = [VUIBezierPath vui_bezierPathWithArcCenter:"vui_bezierPathWithArcCenter:radius:startAngle:endAngle:clockwise:" radius:1 startAngle:? endAngle:? clockwise:?];
    if ([(VUICircularProgress *)self->_progressIndicator isIndeterminate])
    {
      v11 = [VUIBezierPath vui_bezierPathWithArcCenter:1 radius:v8 startAngle:v10 endAngle:v6 clockwise:-1.57079633, 4.71238898];
    }

    else
    {
      VUIRoundValue();
      VUIRoundValue();
      v11 = [VUIBezierPath vui_bezierPathWithArcCenter:1 radius:v8 startAngle:v10 endAngle:v12 clockwise:-1.57079633, 4.71238898];
      LODWORD(v13) = 0.75;
      [(CAShapeLayer *)self->_backdropMaskingLayer setOpacity:v13];
    }

    [v18 appendBezierPath:v11];
    -[CAShapeLayer setPath:](self->_backgroundMaskingLayer, "setPath:", [v18 vuiCGPath]);
    -[CAShapeLayer setPath:](self->_backdropMaskingLayer, "setPath:", [v18 vuiCGPath]);
    v14 = [(VUIDownloadButton *)self backgroundView];
    v15 = [v14 layer];
    [v15 setMask:self->_backgroundMaskingLayer];

    v16 = [(VUIButton *)self backdropView];
    v17 = [v16 layer];
    [v17 setMask:self->_backdropMaskingLayer];
  }
}

- (void)_clearMasks
{
  v3 = [(VUIDownloadButton *)self backgroundView];
  v4 = [v3 layer];
  [v4 setMask:0];

  v6 = [(VUIButton *)self backdropView];
  v5 = [v6 layer];
  [v5 setMask:0];
}

- (BOOL)_hasTitle
{
  v2 = [(VUIButton *)self textContentView];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)_hasImage
{
  v3 = [(VUIButton *)self imageView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VUIDownloadButton *)self progressIndicator];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_layoutProgressIndicator
{
  if (_os_feature_enabled_impl() && (![(VUIButton *)self buttonType]|| [(VUIButton *)self buttonType]== 3))
  {
    [(VUIDownloadButton *)self bounds];
    v4 = v3;
    v6 = v5;
    [(VUIButton *)self padding];
    v9 = v4 - (v7 + v8);
    v12 = v6 - (v10 + v11);
    if (![(VUIDownloadButton *)self _hasTitle]&& ![(VUIDownloadButton *)self _hasImage])
    {
      [(VUIDownloadButton *)self bounds];
      v9 = v13;
      v12 = v14;
    }

    v15 = [(VUIButton *)self textContentView];
    v16 = [v15 textLayout];
    [v16 margin];
    v18 = v17;

    [(VUIButton *)self imageMargin];
    v20 = v19;
    [(VUIDownloadButton *)self _imageSizeThatFits:v9, v12];
    v22 = v21;
    v24 = v23;
    v25 = [(VUIButton *)self textContentView];
    [v25 frame];
    v26 = CGRectGetMinX(v41) - v18 - v20 - v22;

    VUIRoundValue();
    v28 = v27;
    v29 = [(VUIDownloadButton *)self progressIndicator];
    v39 = v29;
    v30 = v26;
    v31 = v28;
    v32 = v22;
    v33 = v24;
    goto LABEL_11;
  }

  if (MEMORY[0x1E6913230]() && [(VUIButton *)self buttonType]== 7)
  {
    [(VUIDownloadButton *)self bounds];
    v35 = (v34 + -28.0) * 0.5;
    [(VUIDownloadButton *)self bounds];
    v37 = (v36 + -28.0) * 0.5;
    v29 = [(VUIDownloadButton *)self progressIndicator];
    v39 = v29;
    v32 = 28.0;
    v33 = 28.0;
    v30 = v35;
    v31 = v37;
LABEL_11:
    [v29 setFrame:{v30, v31, v32, v33}];

    return;
  }

  v38 = [(VUIDownloadButton *)self progressIndicator];
  [(VUIDownloadButton *)self bounds];
  [v38 setFrame:?];

  [(VUIDownloadButton *)self _updateMaskForProgressLayer];
}

- (void)_setTitleWithProperties:(id)a3
{
  v14 = a3;
  if ([v14 hasTitle] && (objc_msgSend(v14, "title"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    v6 = [(VUIButton *)self textContentView];
    v7 = [v6 textLayout];
    if (v7)
    {
      v8 = [(VUIButton *)self textContentView];
      v9 = [v8 textLayout];
    }

    else
    {
      v9 = [(VUIDownloadButton *)self textLayout];
    }

    v10 = [(VUIButton *)self textContentView];

    v11 = [v14 title];
    if (v10)
    {
      v12 = [(VUIButton *)self textContentView];
      v13 = [VUILabel labelWithString:v11 textLayout:v9 existingLabel:v12];
    }

    else
    {
      v12 = [VUILabel labelWithString:v11 textLayout:v9 existingLabel:0];
      [(VUIButton *)self setTextContentView:v12];
    }
  }

  else
  {
    [(VUIButton *)self setTextContentView:0];
  }

  [(VUIDownloadButton *)self invalidateIntrinsicContentSize];
}

- (BOOL)_hasTextForNotDownloadState
{
  v3 = [(VUIDownloadButton *)self viewModel];
  v4 = [v3 downloadFailedDueToError];

  v5 = [(VUIDownloadButton *)self viewModel];
  v6 = [v5 isExpired];

  v7 = 0;
  if ((v4 & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = [(VUIDownloadButton *)self notDownloadStateText];
    v7 = [v8 length] != 0;
  }

  return v7;
}

- (void)_setImage:(id)a3
{
  v6 = a3;
  if (v6)
  {
    [(VUIButton *)self setImageTrailsTextContent:0];
    v4 = [(VUIButton *)self imageView];
    if (v4)
    {
      v5 = v4;
      [v4 setImage:v6];
    }

    else
    {
      v5 = objc_opt_new();
      [v5 setImage:v6];
      [(VUIButton *)self setImageView:v5];
    }

    [v5 setVuiUserInteractionEnabled:0];
    [(VUIDownloadButton *)self vui_setNeedsLayout];
  }

  else
  {
    [(VUIButton *)self setImageView:0];
  }
}

- (UIImage)notDownloadedImage
{
  notDownloadedImage = self->_notDownloadedImage;
  if (!notDownloadedImage)
  {
    v4 = MEMORY[0x1E69DCAB8];
    primarySymbolConfiguration = self->_primarySymbolConfiguration;
    v6 = +[VUILocalizationManager sharedInstance];
    v7 = [v6 localizedStringForKey:@"TV.Image.Not.Downloaded.VO"];
    v8 = [v4 vuiSystemImageNamed:@"arrow.down" withConfiguration:primarySymbolConfiguration accessibilityDescription:v7];
    v9 = [v8 vuiTemplateImage];
    v10 = self->_notDownloadedImage;
    self->_notDownloadedImage = v9;

    notDownloadedImage = self->_notDownloadedImage;
  }

  return notDownloadedImage;
}

- (UIImage)downloadedImage
{
  downloadedImage = self->_downloadedImage;
  if (!downloadedImage)
  {
    v4 = self->_primarySymbolConfiguration;
    if ((MEMORY[0x1E6913230]() & 1) == 0)
    {
      v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:3 scale:16.0];

      v4 = v5;
    }

    v6 = MEMORY[0x1E69DCAB8];
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"TV.Image.Downloaded.VO"];
    v9 = [v6 vuiSystemImageNamed:@"arrow.down.circle.fill" withConfiguration:v4 accessibilityDescription:v8];
    v10 = [v9 vuiTemplateImage];
    v11 = self->_downloadedImage;
    self->_downloadedImage = v10;

    downloadedImage = self->_downloadedImage;
  }

  return downloadedImage;
}

- (UIImage)downloadingImage
{
  downloadingImage = self->_downloadingImage;
  if (!downloadingImage)
  {
    if (MEMORY[0x1E6913230](0, a2) && (([MEMORY[0x1E69DF6F0] isPhone] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DF6F0], "isPad")))
    {
      primarySymbolConfiguration = self->_primarySymbolConfiguration;
      v5 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
      v6 = [(UIImageSymbolConfiguration *)primarySymbolConfiguration configurationByApplyingConfiguration:v5];
    }

    else
    {
      v6 = self->_primarySymbolConfiguration;
    }

    v7 = MEMORY[0x1E69DCAB8];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"TV.Image.Downloaded.VO"];
    v10 = [v7 vuiSystemImageNamed:@"arrow.down" withConfiguration:v6 accessibilityDescription:v9];
    v11 = [v10 vuiTemplateImage];
    v12 = self->_downloadingImage;
    self->_downloadingImage = v11;

    downloadingImage = self->_downloadingImage;
  }

  return downloadingImage;
}

- (UIImage)expiredDownloadImage
{
  expiredDownloadImage = self->_expiredDownloadImage;
  if (!expiredDownloadImage)
  {
    v4 = MEMORY[0x1E69DCAB8];
    primarySymbolConfiguration = self->_primarySymbolConfiguration;
    v6 = +[VUILocalizationManager sharedInstance];
    v7 = [v6 localizedStringForKey:@"TV.Image.Download.Expired.VO"];
    v8 = [v4 vuiSystemImageNamed:@"exclamationmark" withConfiguration:primarySymbolConfiguration accessibilityDescription:v7];
    v9 = [v8 vuiTemplateImage];
    v10 = self->_expiredDownloadImage;
    self->_expiredDownloadImage = v9;

    expiredDownloadImage = self->_expiredDownloadImage;
  }

  return expiredDownloadImage;
}

- (id)_imageForDownloadState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6
{
  if ([VUIDownloadButtonViewModel shouldShowExpiredImageWithDownloadState:a3 isExpired:a4 isExpiringSoon:a5 hasFailed:a6])
  {
    v8 = [(VUIDownloadButton *)self expiredDownloadImage];
    goto LABEL_9;
  }

  switch(a3)
  {
    case 0uLL:
      goto LABEL_6;
    case 4uLL:
      v8 = [(VUIDownloadButton *)self downloadedImage];
      break;
    case 3uLL:
LABEL_6:
      v8 = [(VUIDownloadButton *)self notDownloadedImage];
      break;
    default:
      v8 = 0;
      break;
  }

LABEL_9:

  return v8;
}

- (void)_updateButtonToState:(unint64_t)a3 oldState:(unint64_t)a4
{
  if (a3 != a4)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"VUIUnifiedMessagingRegistryActiveButtonsDidChange" object:self];
  }

  if (a3 > 5 || ((1 << a3) & 0x26) == 0)
  {
    v8 = [(VUIDownloadButton *)self viewModel];
    v9 = [v8 isExpired];
    v10 = [(VUIDownloadButton *)self viewModel];
    v11 = [v10 isExpiringSoon];
    v12 = [(VUIDownloadButton *)self viewModel];
    -[VUIDownloadButton _updateButtonToState:isExpired:isExpiringSoon:hasFailed:](self, "_updateButtonToState:isExpired:isExpiringSoon:hasFailed:", a3, v9, v11, [v12 downloadFailedDueToError]);

    if (a3 != a4)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (![(VUIDownloadButton *)self wasDeleted]&& ![(VUIDownloadButton *)self wasCanceled])
    {
      return;
    }

    goto LABEL_10;
  }

  if (a3 == a4)
  {
    goto LABEL_8;
  }

  [(VUIDownloadButton *)self _updateButtonToState:a3 isExpired:0 isExpiringSoon:0 hasFailed:0];
LABEL_10:
  v13 = [(VUIDownloadButton *)self downloadStateChangeHandler];

  if (v13)
  {
    v14 = [(VUIDownloadButton *)self downloadStateChangeHandler];
    (v14)[2](v14, a3, [(VUIDownloadButton *)self wasDeleted], [(VUIDownloadButton *)self wasCanceled]);
  }

  [(VUIDownloadButton *)self setWasDeleted:0];

  [(VUIDownloadButton *)self setWasCanceled:0];
}

- (void)_updateButtonToState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6
{
  v8 = [(VUIDownloadButton *)self _buttonPropertiesForState:a3 isExpired:a4 isExpiringSoon:a5 hasFailed:a6];
  -[VUIButton setEnabled:](self, "setEnabled:", [v8 isEnabled]);
  if (a3 > 2)
  {
    if (a3 == 5)
    {
      [(VUIDownloadButton *)self _updateButtonToEnqueuedWithProperties:v8];
      goto LABEL_13;
    }

    if (a3 == 4)
    {
      [(VUIDownloadButton *)self _updateButtonToDownloadedWithProperties:v8];
      goto LABEL_13;
    }

    if (a3 != 3)
    {
      goto LABEL_13;
    }

LABEL_9:
    [(VUIDownloadButton *)self _updateButtonToNotDownloadedWithProperties:v8];
    goto LABEL_13;
  }

  switch(a3)
  {
    case 0uLL:
      goto LABEL_9;
    case 1uLL:
      [(VUIDownloadButton *)self _updateButtonToConnectingWithProperties:v8];
      break;
    case 2uLL:
      [(VUIDownloadButton *)self _updateButtonToDownloadingWithProperties:v8];
      break;
  }

LABEL_13:
  [(VUIDownloadButton *)self _updateImageViewTintColorWithDownloadState:a3];
  [(VUIDownloadButton *)self vui_setNeedsLayout];
}

- (void)_updateButtonToNotDownloadedWithProperties:(id)a3
{
  v7 = a3;
  if ([v7 hasImage])
  {
    v4 = [v7 image];
    [(VUIDownloadButton *)self _setImage:v4];
  }

  [(VUIDownloadButton *)self _clearMasks];
  [(VUIDownloadButton *)self _setTitleWithProperties:v7];
  v5 = [(VUIDownloadButton *)self progressIndicator];
  [v5 vui_removeFromSuperView];

  [(VUIDownloadButton *)self setProgressIndicator:0];
  v6 = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _stopObservingDownloadProgress:v6];
}

- (void)_updateButtonToConnectingWithProperties:(id)a3
{
  v6 = a3;
  [(VUIDownloadButton *)self _setTitleWithProperties:?];
  v4 = [(VUIDownloadButton *)self progressIndicator];

  if (!v4)
  {
    [(VUIDownloadButton *)self insertProgressIndicator];
  }

  v5 = [v6 image];
  [(VUIDownloadButton *)self _setImage:v5];

  [(VUIDownloadButton *)self _configureProgressIndicatorWithProperties:v6];
}

- (void)_updateButtonToDownloadingWithProperties:(id)a3
{
  v6 = a3;
  [(VUIDownloadButton *)self _setTitleWithProperties:?];
  v4 = [(VUIDownloadButton *)self progressIndicator];

  if (!v4)
  {
    [(VUIDownloadButton *)self insertProgressIndicator];
  }

  [(VUIDownloadButton *)self _configureProgressIndicatorWithProperties:v6];
  v5 = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _startObservingDownloadProgress:v5];

  [(VUIDownloadButton *)self _setImage:0];
}

- (void)insertProgressIndicator
{
  if (MEMORY[0x1E6913230](self, a2) && -[VUIButton buttonType](self, "buttonType") == 7 && (([MEMORY[0x1E69DF6F0] isPhone] & 1) != 0 || objc_msgSend(MEMORY[0x1E69DF6F0], "isPad")))
  {
    [(VUIDownloadButton *)self bounds];
    v4 = (v3 + -28.0) * 0.5;
    [(VUIDownloadButton *)self bounds];
    v6 = (v5 + -28.0) * 0.5;
    v7 = 28.0;
    v8 = 28.0;
  }

  else
  {
    v9 = [(VUIButton *)self imageView];

    if (v9)
    {
      v10 = [(VUIButton *)self imageView];
      [v10 frame];
      v4 = v11;
      v6 = v12;
      v8 = v13;
      v7 = v14;
    }

    else
    {
      v4 = 0.0;
      v7 = 28.0;
      v8 = 28.0;
      v6 = 0.0;
    }
  }

  [(VUIDownloadButton *)self _insertProgressIndicatorWithFrame:v4, v6, v8, v7];
}

- (void)_updateButtonToEnqueuedWithProperties:(id)a3
{
  v6 = a3;
  [(VUIDownloadButton *)self _setTitleWithProperties:?];
  v4 = [(VUIDownloadButton *)self progressIndicator];

  if (!v4)
  {
    [(VUIDownloadButton *)self insertProgressIndicator];
  }

  [(VUIDownloadButton *)self _configureProgressIndicatorWithProperties:v6];
  v5 = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _startObservingDownloadProgress:v5];

  [(VUIDownloadButton *)self _setImage:0];
}

- (void)_updateButtonToDownloadedWithProperties:(id)a3
{
  v13 = a3;
  [(VUIDownloadButton *)self _setTitleWithProperties:v13];
  if (([v13 hasTitle] & 1) == 0 && -[VUIDownloadButton showsTextInDownloadedState](self, "showsTextInDownloadedState"))
  {
    v4 = [(VUIButton *)self textContentView];
    v5 = [v4 textLayout];
    if (v5)
    {
      v6 = [(VUIButton *)self textContentView];
      v7 = [v6 textLayout];
    }

    else
    {
      v7 = [(VUIDownloadButton *)self textLayout];
    }

    v8 = [v13 title];
    v9 = [VUILabel labelWithString:v8 textLayout:v7 existingLabel:0];
    [(VUIButton *)self setTextContentView:v9];
  }

  if ([v13 hasImage])
  {
    v10 = [v13 image];
    [(VUIDownloadButton *)self _setImage:v10];
  }

  [(VUIDownloadButton *)self _clearMasks];
  v11 = [(VUIDownloadButton *)self progressIndicator];
  [v11 vui_removeFromSuperView];

  [(VUIDownloadButton *)self setProgressIndicator:0];
  v12 = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _stopObservingDownloadProgress:v12];
}

- (void)_updateImageViewTintColorWithDownloadState:(unint64_t)a3
{
  v5 = [(VUIButton *)self imageView];
  v4 = [(VUIButton *)self imageTintColor];
  [v5 _setTintColor:v4];
}

- (void)_updateDownloadProgress:(double)a3 animated:(BOOL)a4
{
  v6 = [(VUIDownloadButton *)self progressIndicator];

  if (v6)
  {
    v7 = [(VUIDownloadButton *)self progressIndicator];
    [v7 setProgress:a3];
  }
}

- (id)_remoteButtonPropertiesForState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v11 = objc_opt_new();
  v12 = [(VUIButton *)self buttonType]!= 9 && [(VUIButton *)self buttonType]!= 7;
  if ([(VUIButton *)self buttonType])
  {
    v13 = [(VUIButton *)self buttonType]== 3;
  }

  else
  {
    v13 = 1;
  }

  [v11 setHasTitle:v12];
  v14 = [(VUIDownloadButton *)self _imageForDownloadState:a3 isExpired:v8 isExpiringSoon:v7 hasFailed:v6];
  [v11 setImage:v14];

  [v11 setHasImage:1];
  [v11 setDownloadState:a3];
  v15 = [(VUIDownloadButton *)self viewModel];
  [v15 downloadProgress];
  [v11 setProgress:?];

  [v11 setEnabled:1];
  if (a3 > 5)
  {
    goto LABEL_19;
  }

  if (((1 << a3) & 0x26) != 0)
  {
    [v11 setHasImage:0];
    if (v13)
    {
      v16 = +[VUILocalizationManager sharedInstance];
      v17 = [v16 localizedStringForKey:@"TV.Button.RemoteDownload.Downloading"];
      [v11 setTitle:v17];
    }

    [v11 setHasTitle:v13];
    v18 = v11;
    v19 = 1;
    goto LABEL_27;
  }

  if (((1 << a3) & 9) == 0)
  {
    [v11 setIndeterminate:0];
    if (v13)
    {
      v27 = +[VUILocalizationManager sharedInstance];
      v28 = [v27 localizedStringForKey:@"TV.Button.RemoteDownload.Downloaded"];
      [v11 setTitle:v28];

      v29 = v11;
      v30 = 1;
LABEL_20:
      [v29 setHasTitle:v30];
      goto LABEL_28;
    }

LABEL_19:
    v29 = v11;
    v30 = 0;
    goto LABEL_20;
  }

  if (v13 | ![(VUIDownloadButton *)self _hasTextForNotDownloadState])
  {
    if (!v13)
    {
      goto LABEL_25;
    }

    v20 = [(VUIDownloadButton *)self viewModel];
    v21 = [v20 videosPlayable];
    v22 = [v21 playbackModes];
    v23 = [v22 containsObject:@"Stereoscopic"];

    v24 = +[VUILocalizationManager sharedInstance];
    v25 = v24;
    v26 = (v23 & 1) != 0 ? @"TV.Button.RemoteDownload.Download3D" : @"TV.Button.RemoteDownload.Download";
    v31 = [v24 localizedStringForKey:v26];

    if (!v31)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v31 = [(VUIDownloadButton *)self notDownloadStateText];
    if (!v31)
    {
LABEL_25:
      [v11 setHasTitle:0];
      goto LABEL_26;
    }
  }

  [v11 setTitle:v31];
  [v11 setHasTitle:1];

LABEL_26:
  v18 = v11;
  v19 = 0;
LABEL_27:
  [v18 setIndeterminate:v19];
LABEL_28:

  return v11;
}

- (id)_localButtonPropertiesForState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v11 = objc_opt_new();
  v12 = [(VUIButton *)self buttonType]!= 9 && [(VUIButton *)self buttonType]!= 7;
  [v11 setHasTitle:v12];
  v13 = [(VUIDownloadButton *)self _imageForDownloadState:a3 isExpired:v8 isExpiringSoon:v7 hasFailed:v6];
  [v11 setImage:v13];

  [v11 setHasImage:1];
  [v11 setDownloadState:a3];
  v14 = [(VUIDownloadButton *)self viewModel];
  [v14 downloadProgress];
  [v11 setProgress:?];

  [v11 setEnabled:1];
  if (a3 > 2)
  {
    if (a3 == 5)
    {
      goto LABEL_14;
    }

    if (a3 == 4)
    {
      [v11 setIndeterminate:0];
      v23 = +[VUILocalizationManager sharedInstance];
      v24 = v23;
      if (v8)
      {
        v25 = @"RENEW";
      }

      else
      {
        v25 = @"BUTTON_DOWNLOADED";
      }

      v27 = [v23 localizedStringForKey:v25];
      [v11 setTitle:v27];

      goto LABEL_27;
    }

    if (a3 != 3)
    {
      goto LABEL_15;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      [v11 setHasBorder:0];
      [v11 setHasImage:0];
      [v11 setHasTitle:0];
      v21 = v11;
      v22 = 1;
      goto LABEL_19;
    }

    if (a3 != 2)
    {
LABEL_15:
      [v11 setHasTitle:0];
      goto LABEL_27;
    }

LABEL_14:
    [v11 setHasBorder:1];
    [v11 setHasImage:0];
    [v11 setHasTitle:0];
    v21 = v11;
    v22 = 0;
LABEL_19:
    [v21 setIndeterminate:v22];
    goto LABEL_27;
  }

  v15 = [(VUIDownloadButton *)self notDownloadStateText];
  v16 = [(VUIDownloadButton *)self _hasTextForNotDownloadState];
  v17 = v16;
  if (v8)
  {
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = v18;
    v20 = @"RENEW";
LABEL_23:
    v26 = [v18 localizedStringForKey:v20];
    [v11 setTitle:v26];

    goto LABEL_24;
  }

  if (!v16)
  {
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = v18;
    v20 = @"BUTTON_DOWNLOAD";
    goto LABEL_23;
  }

  [v11 setTitle:v15];
LABEL_24:
  [v11 setIndeterminate:0];
  [v11 setHasTitle:v17];

LABEL_27:

  return v11;
}

- (id)_buttonPropertiesForState:(unint64_t)a3 isExpired:(BOOL)a4 isExpiringSoon:(BOOL)a5 hasFailed:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  if (_os_feature_enabled_impl() && (-[VUIDownloadButton viewModel](self, "viewModel"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isRemoteDownload], v11, v12))
  {
    v13 = [(VUIDownloadButton *)self _remoteButtonPropertiesForState:a3 isExpired:v8 isExpiringSoon:v7 hasFailed:v6];
  }

  else
  {
    v13 = [(VUIDownloadButton *)self _localButtonPropertiesForState:a3 isExpired:v8 isExpiringSoon:v7 hasFailed:v6];
  }

  return v13;
}

- (void)_insertProgressIndicatorWithFrame:(CGRect)a3
{
  if (!self->_progressIndicator)
  {
    v13 = [[VUICircularProgress alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(VUICircularProgress *)v13 setVuiBackgroundColor:v5];

    if (MEMORY[0x1E6913230]())
    {
      v6 = [(VUIButton *)self buttonType]!= 7;
    }

    else
    {
      v6 = 1;
    }

    [(VUICircularProgress *)v13 setProgressBgHidden:v6];
    VUIRoundValue();
    [(VUICircularProgress *)v13 setProgressWidth:?];
    VUIRoundValue();
    v7 = 7.0;
    if (MEMORY[0x1E6913230]([(VUICircularProgress *)v13 setIndeterminateWidth:?]))
    {
      if ([(VUIButton *)self buttonType]== 7)
      {
        v7 = 10.0;
      }

      else
      {
        v7 = 7.0;
      }
    }

    [(VUICircularProgress *)v13 setCenterSquareWidth:v7];
    [(VUICircularProgress *)v13 setCenterSquareCornerRadius:1.5];
    [(VUICircularProgress *)v13 setVuiClipsToBounds:0];
    if (_os_feature_enabled_impl())
    {
      v8 = [(VUIDownloadButton *)self viewModel];
      -[VUICircularProgress setIndeterminateType:](v13, "setIndeterminateType:", [v8 isRemoteDownload]);
    }

    v9 = [(VUIDownloadButton *)self viewModel];
    v10 = [v9 downloadType];

    if (v10 == 1)
    {
      if (MEMORY[0x1E6913230]() && [(VUIButton *)self buttonType]== 7)
      {
        v11 = [(VUIDownloadButton *)self downloadingImage];
      }

      else
      {
        v11 = [(VUIDownloadButton *)self notDownloadedImage];
      }

      v12 = v11;
      [(VUICircularProgress *)v13 setCenterImage:v11];
    }

    [(VUIDownloadButton *)self vui_addSubview:v13 oldView:0];
    [(VUIDownloadButton *)self setProgressIndicator:v13];
  }
}

- (void)_configureProgressIndicatorWithProperties:(id)a3
{
  v4 = a3;
  v5 = [(VUIDownloadButton *)self progressIndicator];
  v6 = [v5 vuiLayer];
  [v6 removeAllAnimations];

  v7 = [(VUIDownloadButton *)self progressIndicator];
  [v7 setVuiUserInteractionEnabled:0];

  v8 = [(VUIButton *)self imageTintColor];
  if (!v8)
  {
    v8 = [MEMORY[0x1E69DC888] vui_keyColor];
  }

  v18 = v8;
  v9 = [(VUIDownloadButton *)self saturatedTintColor];

  if (v9)
  {
    v10 = [(VUIDownloadButton *)self saturatedTintColor];

    v18 = v10;
  }

  v11 = [(VUIDownloadButton *)self progressIndicator];
  [v11 setVuiTintColor:v18];

  v12 = [(VUIDownloadButton *)self progressIndicator];
  [v12 setProgressFillColor:v18];

  v13 = [v18 colorWithAlphaComponent:0.2];
  v14 = [(VUIDownloadButton *)self progressIndicator];
  [v14 setProgressBgColor:v13];

  v15 = [(VUIDownloadButton *)self progressIndicator];
  [v4 progress];
  [v15 setProgress:?];

  v16 = [(VUIDownloadButton *)self progressIndicator];
  v17 = [v4 isIndeterminate];

  [v16 setIndeterminate:v17];
}

- (void)_startObservingViewModel:(id)a3
{
  v4 = __ViewModelDownloadStateContext;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"downloadState" options:3 context:v4];
  [v5 addObserver:self forKeyPath:@"downloadExpirationDate" options:3 context:__ViewModelDownloadExpirationDateContext];
}

- (void)_stopObservingViewModel:(id)a3
{
  v4 = __ViewModelDownloadStateContext;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"downloadState" context:v4];
  [v5 removeObserver:self forKeyPath:@"downloadExpirationDate" context:__ViewModelDownloadExpirationDateContext];
}

- (void)_startObservingDownloadProgress:(id)a3
{
  v4 = a3;
  if (![(VUIDownloadButton *)self observingDownloadProgress])
  {
    [v4 addObserver:self forKeyPath:@"downloadProgress" options:5 context:__ViewModelDownloadProgressContext];
    [(VUIDownloadButton *)self setObservingDownloadProgress:1];
  }
}

- (void)_stopObservingDownloadProgress:(id)a3
{
  v4 = a3;
  if ([(VUIDownloadButton *)self observingDownloadProgress])
  {
    [(VUIDownloadButton *)self setObservingDownloadProgress:0];
    [v4 removeObserver:self forKeyPath:@"downloadProgress" context:__ViewModelDownloadProgressContext];
  }
}

- (id)accessibilityLabel
{
  v3 = [(VUIDownloadButton *)self viewModel];
  v4 = [v3 downloadState];

  if (v4 == 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = MEMORY[0x1E696AD98];
    v8 = [(VUIDownloadButton *)self viewModel];
    [v8 downloadProgress];
    v10 = [v7 numberWithDouble:v9 * 100.0];
    v5 = [v6 stringWithFormat:@"%d", objc_msgSend(v10, "intValue")];

    v11 = MEMORY[0x1E696AEC0];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.Downloading.VO"];
    v14 = [v11 stringWithFormat:v13, v5];
  }

  else
  {
    if (v4 == 1)
    {
      v5 = +[VUILocalizationManager sharedInstance];
      [v5 localizedStringForKey:@"TV.Download.Connecting.VO"];
    }

    else
    {
      v15 = [(VUIButton *)self imageView];
      v5 = [v15 image];

      [v5 accessibilityLabel];
    }
    v14 = ;
  }

  return v14;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end