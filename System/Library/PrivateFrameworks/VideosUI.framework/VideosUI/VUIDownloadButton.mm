@interface VUIDownloadButton
- (BOOL)_hasImage;
- (BOOL)_hasTextForNotDownloadState;
- (BOOL)_hasTitle;
- (CGSize)_imageSizeThatFits:(CGSize)fits;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (UIImage)downloadedImage;
- (UIImage)downloadingImage;
- (UIImage)expiredDownloadImage;
- (UIImage)notDownloadedImage;
- (UIViewController)presentingViewController;
- (VUIDownloadButton)initWithAssetController:(id)controller type:(unint64_t)type;
- (VUIDownloadButton)initWithDownloadButtonViewModel:(id)model isForLibrary:(BOOL)library type:(unint64_t)type textLayout:(id)layout;
- (VUIDownloadButton)initWithMediaEntity:(id)entity type:(unint64_t)type;
- (VUIDownloadButton)initWithPlayable:(id)playable type:(unint64_t)type textLayout:(id)layout;
- (VUIDownloadButton)initWithRemotePlayable:(id)playable type:(unint64_t)type textLayout:(id)layout;
- (id)_buttonPropertiesForState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed;
- (id)_imageForDownloadState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed;
- (id)_localButtonPropertiesForState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed;
- (id)_remoteButtonPropertiesForState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed;
- (id)accessibilityLabel;
- (id)initTVShowDownloadButtonWithType:(unint64_t)type textLayout:(id)layout;
- (void)_clearMasks;
- (void)_configureProgressIndicatorWithProperties:(id)properties;
- (void)_insertProgressIndicatorWithFrame:(CGRect)frame;
- (void)_layoutProgressIndicator;
- (void)_setImage:(id)image;
- (void)_setTitleWithProperties:(id)properties;
- (void)_setupDownloadButton;
- (void)_startObservingDownloadProgress:(id)progress;
- (void)_startObservingViewModel:(id)model;
- (void)_stopObservingDownloadProgress:(id)progress;
- (void)_stopObservingViewModel:(id)model;
- (void)_updateButtonToConnectingWithProperties:(id)properties;
- (void)_updateButtonToDownloadedWithProperties:(id)properties;
- (void)_updateButtonToDownloadingWithProperties:(id)properties;
- (void)_updateButtonToEnqueuedWithProperties:(id)properties;
- (void)_updateButtonToNotDownloadedWithProperties:(id)properties;
- (void)_updateButtonToState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed;
- (void)_updateButtonToState:(unint64_t)state oldState:(unint64_t)oldState;
- (void)_updateDownloadProgress:(double)progress animated:(BOOL)animated;
- (void)_updateImageViewTintColorWithDownloadState:(unint64_t)state;
- (void)_updateMaskForProgressLayer;
- (void)configureActionHandler;
- (void)configureWithLayoutProperties;
- (void)dealloc;
- (void)insertProgressIndicator;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)revertTintColor;
- (void)saturateTintColorAndBackgroundColor;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setNotDownloadStateText:(id)text;
- (void)setPresentingViewController:(id)controller;
- (void)setScrolledNonUberPercentage:(double)percentage;
- (void)setSeasonDownloadDataSourceProvider:(id)provider;
- (void)setShowsTextInDownloadedState:(BOOL)state;
- (void)setTintColor:(id)color;
- (void)setUsesDefaultConfiguration:(BOOL)configuration;
- (void)setViewModel:(id)model;
- (void)updateWithAssetController:(id)controller;
- (void)updateWithPlayable:(id)playable textLayout:(id)layout;
- (void)vui_didMoveToWindow;
@end

@implementation VUIDownloadButton

- (VUIDownloadButton)initWithRemotePlayable:(id)playable type:(unint64_t)type textLayout:(id)layout
{
  v5 = [(VUIDownloadButton *)self initWithPlayable:playable type:type textLayout:layout];
  viewModel = [(VUIDownloadButton *)v5 viewModel];
  [viewModel setIsRemoteDownload:1];

  return v5;
}

- (VUIDownloadButton)initWithPlayable:(id)playable type:(unint64_t)type textLayout:(id)layout
{
  playableCopy = playable;
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = VUIDownloadButton;
  v10 = [(VUIButton *)&v17 initWithType:type interfaceStyle:1];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_textLayout, layout);
    [(VUIDownloadButton *)v11 _setupDownloadButton];
    v12 = [VUIDownloadButtonViewModel viewModelWithVideosPlayable:playableCopy];
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

- (VUIDownloadButton)initWithDownloadButtonViewModel:(id)model isForLibrary:(BOOL)library type:(unint64_t)type textLayout:(id)layout
{
  libraryCopy = library;
  modelCopy = model;
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = VUIDownloadButton;
  v12 = [(VUIButton *)&v18 initWithType:type interfaceStyle:1];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_textLayout, layout);
    [(VUIDownloadButton *)v13 _setupDownloadButton];
    [(VUIDownloadButton *)v13 setIsForLibrary:libraryCopy];
    [(VUIDownloadButton *)v13 setViewModel:modelCopy];
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

- (VUIDownloadButton)initWithAssetController:(id)controller type:(unint64_t)type
{
  v6 = [VUIDownloadButtonViewModel viewModelWithAssetController:controller];
  v7 = [(VUIDownloadButton *)self initWithDownloadButtonViewModel:v6 isForLibrary:1 type:type textLayout:0];

  return v7;
}

- (VUIDownloadButton)initWithMediaEntity:(id)entity type:(unint64_t)type
{
  entityCopy = entity;
  assetController = [entityCopy assetController];
  v8 = [(VUIDownloadButton *)self initWithAssetController:assetController type:type];
  v9 = v8;
  if (v8)
  {
    viewModel = [(VUIDownloadButton *)v8 viewModel];
    [viewModel setMediaEntity:entityCopy];
  }

  return v9;
}

- (id)initTVShowDownloadButtonWithType:(unint64_t)type textLayout:(id)layout
{
  v4 = [(VUIDownloadButton *)self initWithDownloadButtonViewModel:0 isForLibrary:0 type:type textLayout:layout];
  [(VUIDownloadButton *)v4 setIsForLibrary:0];
  return v4;
}

- (void)setSeasonDownloadDataSourceProvider:(id)provider
{
  providerCopy = provider;
  if (self->_seasonDownloadDataSourceProvider != providerCopy)
  {
    v9 = providerCopy;
    objc_storeStrong(&self->_seasonDownloadDataSourceProvider, provider);
    tvShowCanonicalId = [(VUISeasonDownloadDataSourceProvider *)v9 tvShowCanonicalId];
    v7 = [VUIDownloadButtonViewModel viewModelWithCanonicalId:tvShowCanonicalId title:0 episodeCount:[(VUISeasonDownloadDataSourceProvider *)v9 totalEpisodeCount] downloadType:1];
    if (_os_feature_enabled_impl())
    {
      viewModel = [(VUIDownloadButton *)self viewModel];
      [v7 setIsRemoteDownload:{objc_msgSend(viewModel, "isRemoteDownload")}];
    }

    [(VUIDownloadButton *)self setViewModel:v7];

    providerCopy = v9;
  }
}

- (void)dealloc
{
  [(VUIDownloadButton *)self setViewModel:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DF7E0] object:0];

  v4.receiver = self;
  v4.super_class = VUIDownloadButton;
  [(VUIDownloadButton *)&v4 dealloc];
}

- (void)setUsesDefaultConfiguration:(BOOL)configuration
{
  self->_usesDefaultConfiguration = configuration;
  if (configuration)
  {
    [(VUIButton *)self setPadding:0.0, 0.0, 0.0, 0.0];
    [(VUIButton *)self setImageMaxHeight:28.0];
    [(VUIButton *)self setImageMaxWidth:28.0];
    vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUIButton *)self setImageTintColor:vui_keyColor];

    if ([(VUIButton *)self buttonType]== 9)
    {
      [(VUIButton *)self setHeight:28.0];
      [(VUIButton *)self setWidth:28.0];
      [(VUIButton *)self setCornerRadius:14.0];
      vui_tertiaryFillColor = [MEMORY[0x1E69DC888] vui_tertiaryFillColor];
      [(VUIDownloadButton *)self setKeyBackgroundColor:vui_tertiaryFillColor];

      backgroundView = [(VUIDownloadButton *)self backgroundView];
      keyBackgroundColor = [(VUIDownloadButton *)self keyBackgroundColor];
      [backgroundView setVuiBackgroundColor:keyBackgroundColor];
    }
  }
}

- (void)setPresentingViewController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_presentingViewController, obj);
    actionHandler = [(VUIDownloadButton *)self actionHandler];
    [actionHandler setPresentingViewController:obj];
  }
}

- (void)configureActionHandler
{
  v3 = [VUIDownloadButtonActionHandler alloc];
  viewModel = [(VUIDownloadButton *)self viewModel];
  v5 = [(VUIDownloadButtonActionHandler *)v3 initWithViewModel:viewModel];

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
    buttonBackgroundColor = [(VUIButton *)self buttonBackgroundColor];
    [(VUIDownloadButton *)self setKeyBackgroundColor:buttonBackgroundColor];

    [(VUIButton *)self setButtonBackgroundColor:0];
    backgroundView = [(VUIDownloadButton *)self backgroundView];
    keyBackgroundColor = [(VUIDownloadButton *)self keyBackgroundColor];
    [backgroundView setVuiBackgroundColor:keyBackgroundColor];
  }

  v13.receiver = self;
  v13.super_class = VUIDownloadButton;
  [(VUIButton *)&v13 configureWithLayoutProperties];
  viewModel = [(VUIDownloadButton *)self viewModel];
  downloadState = [viewModel downloadState];
  viewModel2 = [(VUIDownloadButton *)self viewModel];
  isExpired = [viewModel2 isExpired];
  viewModel3 = [(VUIDownloadButton *)self viewModel];
  isExpiringSoon = [viewModel3 isExpiringSoon];
  viewModel4 = [(VUIDownloadButton *)self viewModel];
  -[VUIDownloadButton _updateButtonToState:isExpired:isExpiringSoon:hasFailed:](self, "_updateButtonToState:isExpired:isExpiringSoon:hasFailed:", downloadState, isExpired, isExpiringSoon, [viewModel4 downloadFailedDueToError]);
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIButton *)&v6 setTintColor:colorCopy];
  if ([(VUIDownloadButton *)self tintAdjustmentMode]!= 2)
  {
    progressIndicator = [(VUIDownloadButton *)self progressIndicator];
    [progressIndicator setProgressFillColor:colorCopy];
  }
}

- (void)saturateTintColorAndBackgroundColor
{
  systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
  saturatedTintColor = self->_saturatedTintColor;
  self->_saturatedTintColor = systemMidGrayColor;

  progressIndicator = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator setProgressFillColor:self->_saturatedTintColor];

  imageView = [(VUIButton *)self imageView];
  [imageView _setTintColor:self->_saturatedTintColor];
}

- (void)revertTintColor
{
  imageTintColor = [(VUIButton *)self imageTintColor];
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator setProgressFillColor:imageTintColor];

  imageView = [(VUIButton *)self imageView];
  [imageView _setTintColor:imageTintColor];

  saturatedTintColor = self->_saturatedTintColor;
  self->_saturatedTintColor = 0;
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  onlyCopy = only;
  height = subviews.height;
  width = subviews.width;
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
  if (onlyCopy)
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
    buttonType = [(VUIButton *)self buttonType];
    if (v9 == v13 && v11 == v14)
    {
      if (buttonType == 7)
      {
        progressIndicator = [(VUIDownloadButton *)self progressIndicator];

        if (progressIndicator)
        {
          progressIndicator2 = [(VUIDownloadButton *)self progressIndicator];
          [progressIndicator2 vui_sizeThatFits:{width, height}];
          v9 = v20;
          v11 = v21;
        }
      }
    }

    else if (buttonType == 9)
    {
      v9 = v12[2](v12, v9, v11);
      v11 = v17;
    }
  }

  progressIndicator3 = [(VUIDownloadButton *)self progressIndicator];

  if (progressIndicator3)
  {
    [(VUIDownloadButton *)self _layoutProgressIndicator];
  }

  backgroundView = [(VUIDownloadButton *)self backgroundView];
  [backgroundView setFrame:{0.0, 0.0, v9, v11}];

  backgroundView2 = [(VUIDownloadButton *)self backgroundView];
  [(VUIButton *)self cornerRadius];
  [backgroundView2 _setCornerRadius:?];

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
  window = [(VUIDownloadButton *)self window];

  v4 = +[VUIUnifiedMessagingRegistry sharedInstance];
  v5 = v4;
  if (window)
  {
    [v4 registerDownloadButton:self];
  }

  else
  {
    [v4 unRegisterDownloadButton:self];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (__ViewModelDownloadStateContext == context)
  {
    viewModel = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A500]];
    v15 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (viewModel)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            -[VUIDownloadButton _updateButtonToState:oldState:](self, "_updateButtonToState:oldState:", [v15 unsignedIntegerValue], objc_msgSend(viewModel, "unsignedIntegerValue"));
          }
        }
      }
    }

    goto LABEL_12;
  }

  if (__ViewModelDownloadExpirationDateContext == context)
  {
    viewModel = [(VUIDownloadButton *)self viewModel];
    downloadState = [viewModel downloadState];
    viewModel2 = [(VUIDownloadButton *)self viewModel];
    v17 = objectCopy;
    v18 = pathCopy;
    isExpired = [viewModel2 isExpired];
    viewModel3 = [(VUIDownloadButton *)self viewModel];
    isExpiringSoon = [viewModel3 isExpiringSoon];
    viewModel4 = [(VUIDownloadButton *)self viewModel];
    downloadFailedDueToError = [viewModel4 downloadFailedDueToError];
    v24 = isExpired;
    pathCopy = v18;
    objectCopy = v17;
    [(VUIDownloadButton *)self _updateButtonToState:downloadState isExpired:v24 isExpiringSoon:isExpiringSoon hasFailed:downloadFailedDueToError];

LABEL_12:
    goto LABEL_13;
  }

  if (__ViewModelDownloadProgressContext == context)
  {
    v25 = VUIDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      viewModel5 = [(VUIDownloadButton *)self viewModel];
      [viewModel5 downloadProgress];
      *buf = 134217984;
      v32 = v27;
      _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUIDownloadButton:: update download progress %f", buf, 0xCu);
    }

    viewModel6 = [(VUIDownloadButton *)self viewModel];
    [viewModel6 downloadProgress];
    [(VUIDownloadButton *)self _updateDownloadProgress:1 animated:?];
  }

  else
  {
    v30.receiver = self;
    v30.super_class = VUIDownloadButton;
    [(VUIDownloadButton *)&v30 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_13:
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v7 = modelCopy;
    if (viewModel)
    {
      [(VUIDownloadButton *)self _stopObservingViewModel:?];
      [(VUIDownloadButton *)self _stopObservingDownloadProgress:self->_viewModel];
    }

    objc_storeStrong(&self->_viewModel, model);
    modelCopy = v7;
    if (v7)
    {
      [(VUIDownloadButton *)self configureActionHandler];
      [(VUIDownloadButton *)self _startObservingViewModel:v7];
      [(VUIDownloadButton *)self _updateButtonToState:[(VUIDownloadButtonViewModel *)v7 downloadState] isExpired:[(VUIDownloadButtonViewModel *)v7 isExpired] isExpiringSoon:[(VUIDownloadButtonViewModel *)v7 isExpiringSoon] hasFailed:[(VUIDownloadButtonViewModel *)v7 downloadFailedDueToError]];
      modelCopy = v7;
    }
  }
}

- (void)setNotDownloadStateText:(id)text
{
  textCopy = text;
  if (self->_notDownloadStateText != textCopy)
  {
    v7 = textCopy;
    objc_storeStrong(&self->_notDownloadStateText, text);
    v6 = [(VUIDownloadButton *)self _buttonPropertiesForState:0 isExpired:0 isExpiringSoon:0 hasFailed:0];
    [(VUIDownloadButton *)self _updateButtonToNotDownloadedWithProperties:v6];

    textCopy = v7;
  }
}

- (void)setShowsTextInDownloadedState:(BOOL)state
{
  self->_showsTextInDownloadedState = state;
  if (state)
  {
    viewModel = [(VUIDownloadButton *)self viewModel];
    downloadState = [viewModel downloadState];

    if (downloadState == 4)
    {
      v6 = [(VUIDownloadButton *)self _buttonPropertiesForState:4 isExpired:0 isExpiringSoon:0 hasFailed:0];
      [(VUIDownloadButton *)self _updateButtonToDownloadedWithProperties:v6];
    }
  }
}

- (void)updateWithAssetController:(id)controller
{
  controllerCopy = controller;
  viewModel = [(VUIDownloadButton *)self viewModel];
  [viewModel setAssetController:controllerCopy];
}

- (void)updateWithPlayable:(id)playable textLayout:(id)layout
{
  layout = [VUIDownloadButtonViewModel viewModelWithVideosPlayable:playable, layout];
  [(VUIDownloadButton *)self setViewModel:layout];
}

- (void)setScrolledNonUberPercentage:(double)percentage
{
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIButton *)&v6 setScrolledNonUberPercentage:?];
  backgroundView = [(VUIDownloadButton *)self backgroundView];
  [backgroundView setHidden:percentage == 0.0];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = VUIDownloadButton;
  [(VUIButton *)&v6 setHighlighted:?];
  if ([(VUIButton *)self buttonType]== 9)
  {
    v5 = 1.0;
    if (highlightedCopy)
    {
      v5 = 0.5;
    }

    [(VUIDownloadButton *)self setVuiAlpha:v5];
  }
}

- (CGSize)_imageSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  viewModel = [(VUIDownloadButton *)self viewModel];
  v7 = +[VUIDownloadButtonViewModel shouldShowExpiredImageWithDownloadState:isExpired:isExpiringSoon:hasFailed:](VUIDownloadButtonViewModel, "shouldShowExpiredImageWithDownloadState:isExpired:isExpiringSoon:hasFailed:", [viewModel downloadState], objc_msgSend(viewModel, "isExpired"), objc_msgSend(viewModel, "isExpiringSoon"), objc_msgSend(viewModel, "downloadFailedDueToError"));
  if ([(VUIButton *)self buttonType])
  {
    v8 = [(VUIButton *)self buttonType]== 3;
  }

  else
  {
    v8 = 1;
  }

  if ([viewModel downloadState] != 4 || v7 || v8)
  {
    progressIndicator = [(VUIDownloadButton *)self progressIndicator];

    if (progressIndicator)
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

  subviews = [(VUIDownloadButton *)self subviews];
  firstObject = [subviews firstObject];

  [(VUIDownloadButton *)self vui_insertSubview:self->_backgroundView belowSubview:firstObject oldView:0];
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
    backgroundView = [(VUIDownloadButton *)self backgroundView];
    layer = [backgroundView layer];
    [layer setMask:self->_backgroundMaskingLayer];

    backdropView = [(VUIButton *)self backdropView];
    layer2 = [backdropView layer];
    [layer2 setMask:self->_backdropMaskingLayer];
  }
}

- (void)_clearMasks
{
  backgroundView = [(VUIDownloadButton *)self backgroundView];
  layer = [backgroundView layer];
  [layer setMask:0];

  backdropView = [(VUIButton *)self backdropView];
  layer2 = [backdropView layer];
  [layer2 setMask:0];
}

- (BOOL)_hasTitle
{
  textContentView = [(VUIButton *)self textContentView];
  v3 = textContentView != 0;

  return v3;
}

- (BOOL)_hasImage
{
  imageView = [(VUIButton *)self imageView];
  if (imageView)
  {
    v4 = 1;
  }

  else
  {
    progressIndicator = [(VUIDownloadButton *)self progressIndicator];
    v4 = progressIndicator != 0;
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

    textContentView = [(VUIButton *)self textContentView];
    textLayout = [textContentView textLayout];
    [textLayout margin];
    v18 = v17;

    [(VUIButton *)self imageMargin];
    v20 = v19;
    [(VUIDownloadButton *)self _imageSizeThatFits:v9, v12];
    v22 = v21;
    v24 = v23;
    textContentView2 = [(VUIButton *)self textContentView];
    [textContentView2 frame];
    v26 = CGRectGetMinX(v41) - v18 - v20 - v22;

    VUIRoundValue();
    v28 = v27;
    progressIndicator = [(VUIDownloadButton *)self progressIndicator];
    v39 = progressIndicator;
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
    progressIndicator = [(VUIDownloadButton *)self progressIndicator];
    v39 = progressIndicator;
    v32 = 28.0;
    v33 = 28.0;
    v30 = v35;
    v31 = v37;
LABEL_11:
    [progressIndicator setFrame:{v30, v31, v32, v33}];

    return;
  }

  progressIndicator2 = [(VUIDownloadButton *)self progressIndicator];
  [(VUIDownloadButton *)self bounds];
  [progressIndicator2 setFrame:?];

  [(VUIDownloadButton *)self _updateMaskForProgressLayer];
}

- (void)_setTitleWithProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy hasTitle] && (objc_msgSend(propertiesCopy, "title"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v5))
  {
    textContentView = [(VUIButton *)self textContentView];
    textLayout = [textContentView textLayout];
    if (textLayout)
    {
      textContentView2 = [(VUIButton *)self textContentView];
      textLayout2 = [textContentView2 textLayout];
    }

    else
    {
      textLayout2 = [(VUIDownloadButton *)self textLayout];
    }

    textContentView3 = [(VUIButton *)self textContentView];

    title = [propertiesCopy title];
    if (textContentView3)
    {
      textContentView4 = [(VUIButton *)self textContentView];
      v13 = [VUILabel labelWithString:title textLayout:textLayout2 existingLabel:textContentView4];
    }

    else
    {
      textContentView4 = [VUILabel labelWithString:title textLayout:textLayout2 existingLabel:0];
      [(VUIButton *)self setTextContentView:textContentView4];
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
  viewModel = [(VUIDownloadButton *)self viewModel];
  downloadFailedDueToError = [viewModel downloadFailedDueToError];

  viewModel2 = [(VUIDownloadButton *)self viewModel];
  isExpired = [viewModel2 isExpired];

  v7 = 0;
  if ((downloadFailedDueToError & 1) == 0 && (isExpired & 1) == 0)
  {
    notDownloadStateText = [(VUIDownloadButton *)self notDownloadStateText];
    v7 = [notDownloadStateText length] != 0;
  }

  return v7;
}

- (void)_setImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    [(VUIButton *)self setImageTrailsTextContent:0];
    imageView = [(VUIButton *)self imageView];
    if (imageView)
    {
      v5 = imageView;
      [imageView setImage:imageCopy];
    }

    else
    {
      v5 = objc_opt_new();
      [v5 setImage:imageCopy];
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
    vuiTemplateImage = [v8 vuiTemplateImage];
    v10 = self->_notDownloadedImage;
    self->_notDownloadedImage = vuiTemplateImage;

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
    vuiTemplateImage = [v9 vuiTemplateImage];
    v11 = self->_downloadedImage;
    self->_downloadedImage = vuiTemplateImage;

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
    vuiTemplateImage = [v10 vuiTemplateImage];
    v12 = self->_downloadingImage;
    self->_downloadingImage = vuiTemplateImage;

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
    vuiTemplateImage = [v8 vuiTemplateImage];
    v10 = self->_expiredDownloadImage;
    self->_expiredDownloadImage = vuiTemplateImage;

    expiredDownloadImage = self->_expiredDownloadImage;
  }

  return expiredDownloadImage;
}

- (id)_imageForDownloadState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed
{
  if ([VUIDownloadButtonViewModel shouldShowExpiredImageWithDownloadState:state isExpired:expired isExpiringSoon:soon hasFailed:failed])
  {
    expiredDownloadImage = [(VUIDownloadButton *)self expiredDownloadImage];
    goto LABEL_9;
  }

  switch(state)
  {
    case 0uLL:
      goto LABEL_6;
    case 4uLL:
      expiredDownloadImage = [(VUIDownloadButton *)self downloadedImage];
      break;
    case 3uLL:
LABEL_6:
      expiredDownloadImage = [(VUIDownloadButton *)self notDownloadedImage];
      break;
    default:
      expiredDownloadImage = 0;
      break;
  }

LABEL_9:

  return expiredDownloadImage;
}

- (void)_updateButtonToState:(unint64_t)state oldState:(unint64_t)oldState
{
  if (state != oldState)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"VUIUnifiedMessagingRegistryActiveButtonsDidChange" object:self];
  }

  if (state > 5 || ((1 << state) & 0x26) == 0)
  {
    viewModel = [(VUIDownloadButton *)self viewModel];
    isExpired = [viewModel isExpired];
    viewModel2 = [(VUIDownloadButton *)self viewModel];
    isExpiringSoon = [viewModel2 isExpiringSoon];
    viewModel3 = [(VUIDownloadButton *)self viewModel];
    -[VUIDownloadButton _updateButtonToState:isExpired:isExpiringSoon:hasFailed:](self, "_updateButtonToState:isExpired:isExpiringSoon:hasFailed:", state, isExpired, isExpiringSoon, [viewModel3 downloadFailedDueToError]);

    if (state != oldState)
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

  if (state == oldState)
  {
    goto LABEL_8;
  }

  [(VUIDownloadButton *)self _updateButtonToState:state isExpired:0 isExpiringSoon:0 hasFailed:0];
LABEL_10:
  downloadStateChangeHandler = [(VUIDownloadButton *)self downloadStateChangeHandler];

  if (downloadStateChangeHandler)
  {
    downloadStateChangeHandler2 = [(VUIDownloadButton *)self downloadStateChangeHandler];
    (downloadStateChangeHandler2)[2](downloadStateChangeHandler2, state, [(VUIDownloadButton *)self wasDeleted], [(VUIDownloadButton *)self wasCanceled]);
  }

  [(VUIDownloadButton *)self setWasDeleted:0];

  [(VUIDownloadButton *)self setWasCanceled:0];
}

- (void)_updateButtonToState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed
{
  v8 = [(VUIDownloadButton *)self _buttonPropertiesForState:state isExpired:expired isExpiringSoon:soon hasFailed:failed];
  -[VUIButton setEnabled:](self, "setEnabled:", [v8 isEnabled]);
  if (state > 2)
  {
    if (state == 5)
    {
      [(VUIDownloadButton *)self _updateButtonToEnqueuedWithProperties:v8];
      goto LABEL_13;
    }

    if (state == 4)
    {
      [(VUIDownloadButton *)self _updateButtonToDownloadedWithProperties:v8];
      goto LABEL_13;
    }

    if (state != 3)
    {
      goto LABEL_13;
    }

LABEL_9:
    [(VUIDownloadButton *)self _updateButtonToNotDownloadedWithProperties:v8];
    goto LABEL_13;
  }

  switch(state)
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
  [(VUIDownloadButton *)self _updateImageViewTintColorWithDownloadState:state];
  [(VUIDownloadButton *)self vui_setNeedsLayout];
}

- (void)_updateButtonToNotDownloadedWithProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy hasImage])
  {
    image = [propertiesCopy image];
    [(VUIDownloadButton *)self _setImage:image];
  }

  [(VUIDownloadButton *)self _clearMasks];
  [(VUIDownloadButton *)self _setTitleWithProperties:propertiesCopy];
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator vui_removeFromSuperView];

  [(VUIDownloadButton *)self setProgressIndicator:0];
  viewModel = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _stopObservingDownloadProgress:viewModel];
}

- (void)_updateButtonToConnectingWithProperties:(id)properties
{
  propertiesCopy = properties;
  [(VUIDownloadButton *)self _setTitleWithProperties:?];
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];

  if (!progressIndicator)
  {
    [(VUIDownloadButton *)self insertProgressIndicator];
  }

  image = [propertiesCopy image];
  [(VUIDownloadButton *)self _setImage:image];

  [(VUIDownloadButton *)self _configureProgressIndicatorWithProperties:propertiesCopy];
}

- (void)_updateButtonToDownloadingWithProperties:(id)properties
{
  propertiesCopy = properties;
  [(VUIDownloadButton *)self _setTitleWithProperties:?];
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];

  if (!progressIndicator)
  {
    [(VUIDownloadButton *)self insertProgressIndicator];
  }

  [(VUIDownloadButton *)self _configureProgressIndicatorWithProperties:propertiesCopy];
  viewModel = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _startObservingDownloadProgress:viewModel];

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
    imageView = [(VUIButton *)self imageView];

    if (imageView)
    {
      imageView2 = [(VUIButton *)self imageView];
      [imageView2 frame];
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

- (void)_updateButtonToEnqueuedWithProperties:(id)properties
{
  propertiesCopy = properties;
  [(VUIDownloadButton *)self _setTitleWithProperties:?];
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];

  if (!progressIndicator)
  {
    [(VUIDownloadButton *)self insertProgressIndicator];
  }

  [(VUIDownloadButton *)self _configureProgressIndicatorWithProperties:propertiesCopy];
  viewModel = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _startObservingDownloadProgress:viewModel];

  [(VUIDownloadButton *)self _setImage:0];
}

- (void)_updateButtonToDownloadedWithProperties:(id)properties
{
  propertiesCopy = properties;
  [(VUIDownloadButton *)self _setTitleWithProperties:propertiesCopy];
  if (([propertiesCopy hasTitle] & 1) == 0 && -[VUIDownloadButton showsTextInDownloadedState](self, "showsTextInDownloadedState"))
  {
    textContentView = [(VUIButton *)self textContentView];
    textLayout = [textContentView textLayout];
    if (textLayout)
    {
      textContentView2 = [(VUIButton *)self textContentView];
      textLayout2 = [textContentView2 textLayout];
    }

    else
    {
      textLayout2 = [(VUIDownloadButton *)self textLayout];
    }

    title = [propertiesCopy title];
    v9 = [VUILabel labelWithString:title textLayout:textLayout2 existingLabel:0];
    [(VUIButton *)self setTextContentView:v9];
  }

  if ([propertiesCopy hasImage])
  {
    image = [propertiesCopy image];
    [(VUIDownloadButton *)self _setImage:image];
  }

  [(VUIDownloadButton *)self _clearMasks];
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator vui_removeFromSuperView];

  [(VUIDownloadButton *)self setProgressIndicator:0];
  viewModel = [(VUIDownloadButton *)self viewModel];
  [(VUIDownloadButton *)self _stopObservingDownloadProgress:viewModel];
}

- (void)_updateImageViewTintColorWithDownloadState:(unint64_t)state
{
  imageView = [(VUIButton *)self imageView];
  imageTintColor = [(VUIButton *)self imageTintColor];
  [imageView _setTintColor:imageTintColor];
}

- (void)_updateDownloadProgress:(double)progress animated:(BOOL)animated
{
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];

  if (progressIndicator)
  {
    progressIndicator2 = [(VUIDownloadButton *)self progressIndicator];
    [progressIndicator2 setProgress:progress];
  }
}

- (id)_remoteButtonPropertiesForState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed
{
  failedCopy = failed;
  soonCopy = soon;
  expiredCopy = expired;
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
  v14 = [(VUIDownloadButton *)self _imageForDownloadState:state isExpired:expiredCopy isExpiringSoon:soonCopy hasFailed:failedCopy];
  [v11 setImage:v14];

  [v11 setHasImage:1];
  [v11 setDownloadState:state];
  viewModel = [(VUIDownloadButton *)self viewModel];
  [viewModel downloadProgress];
  [v11 setProgress:?];

  [v11 setEnabled:1];
  if (state > 5)
  {
    goto LABEL_19;
  }

  if (((1 << state) & 0x26) != 0)
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

  if (((1 << state) & 9) == 0)
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

    viewModel2 = [(VUIDownloadButton *)self viewModel];
    videosPlayable = [viewModel2 videosPlayable];
    playbackModes = [videosPlayable playbackModes];
    v23 = [playbackModes containsObject:@"Stereoscopic"];

    v24 = +[VUILocalizationManager sharedInstance];
    v25 = v24;
    v26 = (v23 & 1) != 0 ? @"TV.Button.RemoteDownload.Download3D" : @"TV.Button.RemoteDownload.Download";
    notDownloadStateText = [v24 localizedStringForKey:v26];

    if (!notDownloadStateText)
    {
      goto LABEL_25;
    }
  }

  else
  {
    notDownloadStateText = [(VUIDownloadButton *)self notDownloadStateText];
    if (!notDownloadStateText)
    {
LABEL_25:
      [v11 setHasTitle:0];
      goto LABEL_26;
    }
  }

  [v11 setTitle:notDownloadStateText];
  [v11 setHasTitle:1];

LABEL_26:
  v18 = v11;
  v19 = 0;
LABEL_27:
  [v18 setIndeterminate:v19];
LABEL_28:

  return v11;
}

- (id)_localButtonPropertiesForState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed
{
  failedCopy = failed;
  soonCopy = soon;
  expiredCopy = expired;
  v11 = objc_opt_new();
  v12 = [(VUIButton *)self buttonType]!= 9 && [(VUIButton *)self buttonType]!= 7;
  [v11 setHasTitle:v12];
  v13 = [(VUIDownloadButton *)self _imageForDownloadState:state isExpired:expiredCopy isExpiringSoon:soonCopy hasFailed:failedCopy];
  [v11 setImage:v13];

  [v11 setHasImage:1];
  [v11 setDownloadState:state];
  viewModel = [(VUIDownloadButton *)self viewModel];
  [viewModel downloadProgress];
  [v11 setProgress:?];

  [v11 setEnabled:1];
  if (state > 2)
  {
    if (state == 5)
    {
      goto LABEL_14;
    }

    if (state == 4)
    {
      [v11 setIndeterminate:0];
      v23 = +[VUILocalizationManager sharedInstance];
      v24 = v23;
      if (expiredCopy)
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

    if (state != 3)
    {
      goto LABEL_15;
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [v11 setHasBorder:0];
      [v11 setHasImage:0];
      [v11 setHasTitle:0];
      v21 = v11;
      v22 = 1;
      goto LABEL_19;
    }

    if (state != 2)
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

  notDownloadStateText = [(VUIDownloadButton *)self notDownloadStateText];
  _hasTextForNotDownloadState = [(VUIDownloadButton *)self _hasTextForNotDownloadState];
  v17 = _hasTextForNotDownloadState;
  if (expiredCopy)
  {
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = v18;
    v20 = @"RENEW";
LABEL_23:
    v26 = [v18 localizedStringForKey:v20];
    [v11 setTitle:v26];

    goto LABEL_24;
  }

  if (!_hasTextForNotDownloadState)
  {
    v18 = +[VUILocalizationManager sharedInstance];
    v19 = v18;
    v20 = @"BUTTON_DOWNLOAD";
    goto LABEL_23;
  }

  [v11 setTitle:notDownloadStateText];
LABEL_24:
  [v11 setIndeterminate:0];
  [v11 setHasTitle:v17];

LABEL_27:

  return v11;
}

- (id)_buttonPropertiesForState:(unint64_t)state isExpired:(BOOL)expired isExpiringSoon:(BOOL)soon hasFailed:(BOOL)failed
{
  failedCopy = failed;
  soonCopy = soon;
  expiredCopy = expired;
  if (_os_feature_enabled_impl() && (-[VUIDownloadButton viewModel](self, "viewModel"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isRemoteDownload], v11, v12))
  {
    v13 = [(VUIDownloadButton *)self _remoteButtonPropertiesForState:state isExpired:expiredCopy isExpiringSoon:soonCopy hasFailed:failedCopy];
  }

  else
  {
    v13 = [(VUIDownloadButton *)self _localButtonPropertiesForState:state isExpired:expiredCopy isExpiringSoon:soonCopy hasFailed:failedCopy];
  }

  return v13;
}

- (void)_insertProgressIndicatorWithFrame:(CGRect)frame
{
  if (!self->_progressIndicator)
  {
    v13 = [[VUICircularProgress alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(VUICircularProgress *)v13 setVuiBackgroundColor:clearColor];

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
      viewModel = [(VUIDownloadButton *)self viewModel];
      -[VUICircularProgress setIndeterminateType:](v13, "setIndeterminateType:", [viewModel isRemoteDownload]);
    }

    viewModel2 = [(VUIDownloadButton *)self viewModel];
    downloadType = [viewModel2 downloadType];

    if (downloadType == 1)
    {
      if (MEMORY[0x1E6913230]() && [(VUIButton *)self buttonType]== 7)
      {
        downloadingImage = [(VUIDownloadButton *)self downloadingImage];
      }

      else
      {
        downloadingImage = [(VUIDownloadButton *)self notDownloadedImage];
      }

      v12 = downloadingImage;
      [(VUICircularProgress *)v13 setCenterImage:downloadingImage];
    }

    [(VUIDownloadButton *)self vui_addSubview:v13 oldView:0];
    [(VUIDownloadButton *)self setProgressIndicator:v13];
  }
}

- (void)_configureProgressIndicatorWithProperties:(id)properties
{
  propertiesCopy = properties;
  progressIndicator = [(VUIDownloadButton *)self progressIndicator];
  vuiLayer = [progressIndicator vuiLayer];
  [vuiLayer removeAllAnimations];

  progressIndicator2 = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator2 setVuiUserInteractionEnabled:0];

  imageTintColor = [(VUIButton *)self imageTintColor];
  if (!imageTintColor)
  {
    imageTintColor = [MEMORY[0x1E69DC888] vui_keyColor];
  }

  v18 = imageTintColor;
  saturatedTintColor = [(VUIDownloadButton *)self saturatedTintColor];

  if (saturatedTintColor)
  {
    saturatedTintColor2 = [(VUIDownloadButton *)self saturatedTintColor];

    v18 = saturatedTintColor2;
  }

  progressIndicator3 = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator3 setVuiTintColor:v18];

  progressIndicator4 = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator4 setProgressFillColor:v18];

  v13 = [v18 colorWithAlphaComponent:0.2];
  progressIndicator5 = [(VUIDownloadButton *)self progressIndicator];
  [progressIndicator5 setProgressBgColor:v13];

  progressIndicator6 = [(VUIDownloadButton *)self progressIndicator];
  [propertiesCopy progress];
  [progressIndicator6 setProgress:?];

  progressIndicator7 = [(VUIDownloadButton *)self progressIndicator];
  isIndeterminate = [propertiesCopy isIndeterminate];

  [progressIndicator7 setIndeterminate:isIndeterminate];
}

- (void)_startObservingViewModel:(id)model
{
  v4 = __ViewModelDownloadStateContext;
  modelCopy = model;
  [modelCopy addObserver:self forKeyPath:@"downloadState" options:3 context:v4];
  [modelCopy addObserver:self forKeyPath:@"downloadExpirationDate" options:3 context:__ViewModelDownloadExpirationDateContext];
}

- (void)_stopObservingViewModel:(id)model
{
  v4 = __ViewModelDownloadStateContext;
  modelCopy = model;
  [modelCopy removeObserver:self forKeyPath:@"downloadState" context:v4];
  [modelCopy removeObserver:self forKeyPath:@"downloadExpirationDate" context:__ViewModelDownloadExpirationDateContext];
}

- (void)_startObservingDownloadProgress:(id)progress
{
  progressCopy = progress;
  if (![(VUIDownloadButton *)self observingDownloadProgress])
  {
    [progressCopy addObserver:self forKeyPath:@"downloadProgress" options:5 context:__ViewModelDownloadProgressContext];
    [(VUIDownloadButton *)self setObservingDownloadProgress:1];
  }
}

- (void)_stopObservingDownloadProgress:(id)progress
{
  progressCopy = progress;
  if ([(VUIDownloadButton *)self observingDownloadProgress])
  {
    [(VUIDownloadButton *)self setObservingDownloadProgress:0];
    [progressCopy removeObserver:self forKeyPath:@"downloadProgress" context:__ViewModelDownloadProgressContext];
  }
}

- (id)accessibilityLabel
{
  viewModel = [(VUIDownloadButton *)self viewModel];
  downloadState = [viewModel downloadState];

  if (downloadState == 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = MEMORY[0x1E696AD98];
    viewModel2 = [(VUIDownloadButton *)self viewModel];
    [viewModel2 downloadProgress];
    v10 = [v7 numberWithDouble:v9 * 100.0];
    image = [v6 stringWithFormat:@"%d", objc_msgSend(v10, "intValue")];

    v11 = MEMORY[0x1E696AEC0];
    v12 = +[VUILocalizationManager sharedInstance];
    v13 = [v12 localizedStringForKey:@"TV.Downloading.VO"];
    v14 = [v11 stringWithFormat:v13, image];
  }

  else
  {
    if (downloadState == 1)
    {
      image = +[VUILocalizationManager sharedInstance];
      [image localizedStringForKey:@"TV.Download.Connecting.VO"];
    }

    else
    {
      imageView = [(VUIButton *)self imageView];
      image = [imageView image];

      [image accessibilityLabel];
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