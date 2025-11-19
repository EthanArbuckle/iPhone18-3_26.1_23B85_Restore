@interface PXSurveyQuestionPlaceholderGadgetView
- (PXSurveyQuestionPlaceholderGadgetView)initWithFrame:(CGRect)a3;
- (PXSurveyQuestionPlaceholderGadgetViewDelegate)delegate;
- (void)_performContentUnavailableButtonAction;
- (void)_restorePlaceholderContentUnavailableConfiguration;
- (void)setPlaceholderContentUnavailableConfiguration:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PXSurveyQuestionPlaceholderGadgetView

- (PXSurveyQuestionPlaceholderGadgetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PXSurveyQuestionPlaceholderGadgetView;
  v4 = a3;
  [(PXSurveyQuestionPlaceholderGadgetView *)&v9 traitCollectionDidChange:v4];
  v5 = [(PXSurveyQuestionPlaceholderGadgetView *)self traitCollection:v9.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  if (v6 != v7)
  {
    v8 = [(PXSurveyQuestionPlaceholderGadgetView *)self delegate];
    if (!v8)
    {
      PXAssertGetLog();
    }

    [v8 placeholderGadgetViewSizeThatFitsDidChange:self];
  }
}

- (void)_restorePlaceholderContentUnavailableConfiguration
{
  v3 = [(PXSurveyQuestionPlaceholderGadgetView *)self placeholderContentUnavailableConfiguration];
  [(UIContentUnavailableView *)self->_contentUnavailableView setConfiguration:v3];
}

- (void)_performContentUnavailableButtonAction
{
  location[3] = *MEMORY[0x1E69E9840];
  v3 = [(PXSurveyQuestionPlaceholderGadgetView *)self delegate];
  if (!v3)
  {
    PXAssertGetLog();
  }

  v4 = [(PXSurveyQuestionPlaceholderGadgetView *)self loadingContentUnavailableConfiguration];
  if (v4)
  {
    [(UIContentUnavailableView *)self->_contentUnavailableView setConfiguration:v4];
  }

  objc_initWeak(location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PXSurveyQuestionPlaceholderGadgetView__performContentUnavailableButtonAction__block_invoke;
  v6[3] = &unk_1E774B2A0;
  v5 = v4;
  v7 = v5;
  objc_copyWeak(&v8, location);
  [v3 placeholderGadgetView:self invokeActionWithCompletionHandler:v6];
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

- (void)setPlaceholderContentUnavailableConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionPlaceholderGadgetView.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"placeholderContentUnavailableConfiguration"}];
  }

  placeholderContentUnavailableConfiguration = self->_placeholderContentUnavailableConfiguration;
  if (placeholderContentUnavailableConfiguration != v5 && ([(UIContentUnavailableConfiguration *)placeholderContentUnavailableConfiguration isEqual:v5]& 1) == 0)
  {
    v7 = [(UIContentUnavailableConfiguration *)v5 copy];
    v8 = self->_placeholderContentUnavailableConfiguration;
    self->_placeholderContentUnavailableConfiguration = v7;

    v9 = [(UIContentUnavailableConfiguration *)self->_placeholderContentUnavailableConfiguration buttonProperties];
    v10 = [v9 configuration];
    v11 = [v10 title];

    if (v11)
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69DC628];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __87__PXSurveyQuestionPlaceholderGadgetView_setPlaceholderContentUnavailableConfiguration___block_invoke;
      v15[3] = &unk_1E774BB08;
      objc_copyWeak(&v16, &location);
      v13 = [v12 actionWithHandler:v15];
      [v9 setPrimaryAction:v13];

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

- (PXSurveyQuestionPlaceholderGadgetView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PXSurveyQuestionPlaceholderGadgetView;
  v3 = [(PXSurveyQuestionPlaceholderGadgetView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(PXSurveyQuestionPlaceholderGadgetView *)v3 setBackgroundColor:v4];

    [(PXSurveyQuestionPlaceholderGadgetView *)v3 _setCornerRadius:10.0];
    v5 = [MEMORY[0x1E69DC8C8] px_containerized_defaultConfiguration];
    v6 = [objc_alloc(MEMORY[0x1E69DC8D0]) initWithConfiguration:v5];
    contentUnavailableView = v3->_contentUnavailableView;
    v3->_contentUnavailableView = v6;

    v8 = [(PXSurveyQuestionPlaceholderGadgetView *)v3 contentView];
    [v8 bounds];
    [(UIContentUnavailableView *)v3->_contentUnavailableView setFrame:?];
    [(UIContentUnavailableView *)v3->_contentUnavailableView setAutoresizingMask:18];
    [v8 addSubview:v3->_contentUnavailableView];
  }

  return v3;
}

@end