@interface PXSurveyQuestionPlaceholderGadgetView
- (PXSurveyQuestionPlaceholderGadgetView)initWithFrame:(CGRect)frame;
- (PXSurveyQuestionPlaceholderGadgetViewDelegate)delegate;
- (void)_performContentUnavailableButtonAction;
- (void)_restorePlaceholderContentUnavailableConfiguration;
- (void)setPlaceholderContentUnavailableConfiguration:(id)configuration;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PXSurveyQuestionPlaceholderGadgetView

- (PXSurveyQuestionPlaceholderGadgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)change
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PXSurveyQuestionPlaceholderGadgetView;
  changeCopy = change;
  [(PXSurveyQuestionPlaceholderGadgetView *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(PXSurveyQuestionPlaceholderGadgetView *)self traitCollection:v9.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    delegate = [(PXSurveyQuestionPlaceholderGadgetView *)self delegate];
    if (!delegate)
    {
      PXAssertGetLog();
    }

    [delegate placeholderGadgetViewSizeThatFitsDidChange:self];
  }
}

- (void)_restorePlaceholderContentUnavailableConfiguration
{
  placeholderContentUnavailableConfiguration = [(PXSurveyQuestionPlaceholderGadgetView *)self placeholderContentUnavailableConfiguration];
  [(UIContentUnavailableView *)self->_contentUnavailableView setConfiguration:placeholderContentUnavailableConfiguration];
}

- (void)_performContentUnavailableButtonAction
{
  location[3] = *MEMORY[0x1E69E9840];
  delegate = [(PXSurveyQuestionPlaceholderGadgetView *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  loadingContentUnavailableConfiguration = [(PXSurveyQuestionPlaceholderGadgetView *)self loadingContentUnavailableConfiguration];
  if (loadingContentUnavailableConfiguration)
  {
    [(UIContentUnavailableView *)self->_contentUnavailableView setConfiguration:loadingContentUnavailableConfiguration];
  }

  objc_initWeak(location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PXSurveyQuestionPlaceholderGadgetView__performContentUnavailableButtonAction__block_invoke;
  v6[3] = &unk_1E774B2A0;
  v5 = loadingContentUnavailableConfiguration;
  v7 = v5;
  objc_copyWeak(&v8, location);
  [delegate placeholderGadgetView:self invokeActionWithCompletionHandler:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(location);
}

void __79__PXSurveyQuestionPlaceholderGadgetView__performContentUnavailableButtonAction__block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PXSurveyQuestionPlaceholderGadgetView__performContentUnavailableButtonAction__block_invoke_2;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v4, (a1 + 40));
    dispatch_after(v2, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v4);
  }
}

void __79__PXSurveyQuestionPlaceholderGadgetView__performContentUnavailableButtonAction__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _restorePlaceholderContentUnavailableConfiguration];
}

- (void)setPlaceholderContentUnavailableConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadgetView.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"placeholderContentUnavailableConfiguration"}];
  }

  placeholderContentUnavailableConfiguration = self->_placeholderContentUnavailableConfiguration;
  if (placeholderContentUnavailableConfiguration != configurationCopy && ([(UIContentUnavailableConfiguration *)placeholderContentUnavailableConfiguration isEqual:configurationCopy]& 1) == 0)
  {
    v7 = [(UIContentUnavailableConfiguration *)configurationCopy copy];
    v8 = self->_placeholderContentUnavailableConfiguration;
    self->_placeholderContentUnavailableConfiguration = v7;

    buttonProperties = [(UIContentUnavailableConfiguration *)self->_placeholderContentUnavailableConfiguration buttonProperties];
    configuration = [buttonProperties configuration];
    title = [configuration title];

    if (title)
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69DC628];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __87__PXSurveyQuestionPlaceholderGadgetView_setPlaceholderContentUnavailableConfiguration___block_invoke;
      v15[3] = &unk_1E774BB08;
      objc_copyWeak(&v16, &location);
      v13 = [v12 actionWithHandler:v15];
      [buttonProperties setPrimaryAction:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    [(UIContentUnavailableView *)self->_contentUnavailableView setConfiguration:self->_placeholderContentUnavailableConfiguration];
  }
}

void __87__PXSurveyQuestionPlaceholderGadgetView_setPlaceholderContentUnavailableConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performContentUnavailableButtonAction];
}

- (PXSurveyQuestionPlaceholderGadgetView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PXSurveyQuestionPlaceholderGadgetView;
  v3 = [(PXSurveyQuestionPlaceholderGadgetView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSurveyQuestionPlaceholderGadgetView *)v3 setBackgroundColor:secondarySystemBackgroundColor];

    [(PXSurveyQuestionPlaceholderGadgetView *)v3 _setCornerRadius:10.0];
    px_containerized_defaultConfiguration = [MEMORY[0x1E69DC8C8] px_containerized_defaultConfiguration];
    v6 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:px_containerized_defaultConfiguration];
    contentUnavailableView = v3->_contentUnavailableView;
    v3->_contentUnavailableView = v6;

    contentView = [(PXSurveyQuestionPlaceholderGadgetView *)v3 contentView];
    [contentView bounds];
    [(UIContentUnavailableView *)v3->_contentUnavailableView setFrame:?];
    [(UIContentUnavailableView *)v3->_contentUnavailableView setAutoresizingMask:18];
    [contentView addSubview:v3->_contentUnavailableView];
  }

  return v3;
}

@end