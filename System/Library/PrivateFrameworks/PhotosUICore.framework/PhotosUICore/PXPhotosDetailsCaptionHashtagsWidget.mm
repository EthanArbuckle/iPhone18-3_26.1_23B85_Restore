@interface PXPhotosDetailsCaptionHashtagsWidget
- (BOOL)_fadeInEnabled;
- (BOOL)_prefersFloatingInfoPanelLayout;
- (BOOL)captionHashtagsEntryViewShouldBeginEditing:(id)a3;
- (BOOL)hasContentForCurrentInput;
- (BOOL)wantsFocus;
- (CGRect)_textEntryViewFrameForSize:(CGSize)a3;
- (CGSize)contentSize;
- (CGSize)maxVisibleSizeInEditMode;
- (PXPhotosDetailsCaptionHashtagsWidget)init;
- (PXWidgetDelegate)widgetDelegate;
- (PXWidgetEditingDelegate)widgetEditingDelegate;
- (UIEdgeInsets)_contentInsets;
- (UIEdgeInsets)_textViewContainerInsets;
- (UIView)contentView;
- (double)currentContentHeight;
- (double)preferredContentHeightForWidth:(double)a3;
- (id)prepareForPhotoLibraryChange:(id)a3;
- (void)_addSeparatorView;
- (void)_applySpec;
- (void)_configureFadeInAnimation;
- (void)_configureTextViewVisibility:(BOOL)a3;
- (void)_logCPAnalyticsEventsForCommittedCaption:(id)a3 numOfHashtags:(unint64_t)a4;
- (void)_removeSeparatorView;
- (void)captionHashtagsEntryViewDidBeginEditing:(id)a3;
- (void)captionHashtagsEntryViewDidEndEditing:(id)a3;
- (void)captionHashtagsEntryViewPreferredHeightDidChange:(id)a3;
- (void)captionHashtagsEntryViewRequestFocus:(id)a3;
- (void)contentViewDidDisappear;
- (void)contentViewWillAppear;
- (void)contentViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)loadContentData;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4;
- (void)requestExitEditWithChangesSavingMode:(int64_t)a3;
- (void)setContext:(id)a3;
- (void)setMaxVisibleSizeInEditMode:(CGSize)a3;
- (void)setSpec:(id)a3;
- (void)unloadContentData;
@end

@implementation PXPhotosDetailsCaptionHashtagsWidget

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxVisibleSizeInEditMode
{
  width = self->_maxVisibleSizeInEditMode.width;
  height = self->_maxVisibleSizeInEditMode.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXWidgetDelegate)widgetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetDelegate);

  return WeakRetained;
}

- (PXWidgetEditingDelegate)widgetEditingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_widgetEditingDelegate);

  return WeakRetained;
}

- (void)_configureFadeInAnimation
{
  v3 = +[PXPhotosDetailsSettings sharedInstance];
  [v3 captionWidgetFadeInDuration];
  v5 = v4;

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PXPhotosDetailsCaptionHashtagsWidget__configureFadeInAnimation__block_invoke;
  aBlock[3] = &unk_1E7749808;
  v9[1] = v5;
  objc_copyWeak(v9, &location);
  v6 = _Block_copy(aBlock);
  v7 = [(PXPhotosDetailsCaptionHashtagsWidget *)self containerView];

  if (v7)
  {
    v6[2](v6);
  }

  else
  {
    [(PXPhotosDetailsCaptionHashtagsWidget *)self setDeferredAppearingAnimation:v6];
  }

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __65__PXPhotosDetailsCaptionHashtagsWidget__configureFadeInAnimation__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PXPhotosDetailsCaptionHashtagsWidget__configureFadeInAnimation__block_invoke_2;
  v3[3] = &unk_1E774C318;
  objc_copyWeak(&v4, (a1 + 32));
  [v1 animateWithDuration:v3 animations:v2];
  objc_destroyWeak(&v4);
}

void __65__PXPhotosDetailsCaptionHashtagsWidget__configureFadeInAnimation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureTextViewVisibility:1];
}

- (void)_removeSeparatorView
{
  v3 = [(PXPhotosDetailsCaptionHashtagsWidget *)self separatorView];

  if (v3)
  {
    v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self separatorView];
    [v4 removeFromSuperview];

    [(PXPhotosDetailsCaptionHashtagsWidget *)self setSeparatorView:0];
  }
}

- (void)_addSeparatorView
{
  v3 = [(PXPhotosDetailsCaptionHashtagsWidget *)self separatorView];

  if (v3)
  {
    [(PXPhotosDetailsCaptionHashtagsWidget *)self _removeSeparatorView];
  }

  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  v13 = CGRectGetMaxY(v20) + -1.0;
  v21.origin.x = v6;
  v21.origin.y = v8;
  v21.size.width = v10;
  v21.size.height = v12;
  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, v13, CGRectGetWidth(v21), 1.0}];
  [(PXPhotosDetailsCaptionHashtagsWidget *)self setSeparatorView:v14];

  v15 = [MEMORY[0x1E69DC888] separatorColor];
  v16 = [v15 colorWithAlphaComponent:0.1];
  v17 = [(PXPhotosDetailsCaptionHashtagsWidget *)self separatorView];
  [v17 setBackgroundColor:v16];

  v18 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
  [v18 addSubview:self->_separatorView];
}

- (void)_applySpec
{
  if ([(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersFloatingInfoPanelLayout])
  {
    [(PXPhotosDetailsCaptionHashtagsWidget *)self _removeSeparatorView];
  }

  else
  {
    [(PXPhotosDetailsCaptionHashtagsWidget *)self _addSeparatorView];
  }

  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  v5 = [v4 uiTextView];
  [v5 setBackgroundColor:v3];

  if ([(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersFloatingInfoPanelLayout])
  {
    v6 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
    v7 = [v6 layer];
    [v7 setCornerRadius:8.0];

    v8 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  }

  else
  {
    v9 = [(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersVisionOSInfoPanelLayout];
    v10 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
    v11 = [v10 layer];
    v12 = v11;
    if (v9)
    {
      [v11 setCornerRadius:16.0];

      v13 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
      v14 = [v13 layer];
      [v14 setMasksToBounds:1];
      goto LABEL_10;
    }

    [v11 setCornerRadius:0.0];

    v8 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  v13 = v8;
  v14 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
  [v14 setBackgroundColor:v13];
LABEL_10:

  v16 = [(PXPhotosDetailsCaptionHashtagsWidget *)self spec];
  v15 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  [v15 setSpec:v16];
}

- (void)_configureTextViewVisibility:(BOOL)a3
{
  if (a3)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [(PXPhotosDetailsCaptionHashtagsWidget *)self containerView];
  [v5 setAlpha:v4];

  v7 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  v6 = [v7 uiTextView];
  [v6 setAlpha:v4];
}

- (void)_logCPAnalyticsEventsForCommittedCaption:(id)a3 numOfHashtags:(unint64_t)a4
{
  v32[4] = *MEMORY[0x1E69E9840];
  v6 = [a3 length];
  v7 = [(PXPhotosDetailsCaptionHashtagsWidget *)self asset];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = MEMORY[0x1E6991F28];
    v13 = *MEMORY[0x1E6991E18];
    v31[0] = *MEMORY[0x1E6991E20];
    v12 = v31[0];
    v31[1] = v13;
    v32[0] = v10;
    v32[1] = v8;
    v31[2] = @"captionLength";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v32[2] = v14;
    v31[3] = @"numOfHashtags";
    [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v15 = v26 = a4;
    v32[3] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
    [v11 sendEvent:@"com.apple.photos.CPAnalytics.oneUpCaptionEditExited" withPayload:v16];

    v17 = [MEMORY[0x1E6991F28] bucketNameForInteger:v6 bucketLimits:{1, 10, 20, 30, 50, 100, 0}];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@With%@Characters", @"com.apple.photos.CPAnalytics.oneUpCaptionEditExited", v17];
    v19 = MEMORY[0x1E6991F28];
    v29[0] = v12;
    v29[1] = v13;
    v20 = v13;
    v30[0] = v10;
    v30[1] = v8;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    [v19 sendEvent:v18 withPayload:v21];

    if (v26)
    {
      v22 = [MEMORY[0x1E6991F28] bucketNameForInteger:v26 bucketLimits:{1, 2, 3, 5, 10, 0}];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@With%@Hashtags", @"com.apple.photos.CPAnalytics.oneUpCaptionEditExited", v22];
      v24 = MEMORY[0x1E6991F28];
      v27[0] = v12;
      v27[1] = v20;
      v28[0] = v10;
      v28[1] = v8;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
      [v24 sendEvent:v23 withPayload:v25];
    }
  }
}

- (CGRect)_textEntryViewFrameForSize:(CGSize)a3
{
  [(PXPhotosDetailsCaptionHashtagsWidget *)self _contentInsets];
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textViewContainer];
  [v4 bounds];

  PXEdgeInsetsInsetRect();
}

- (BOOL)_prefersFloatingInfoPanelLayout
{
  v3 = [(PXPhotosDetailsCaptionHashtagsWidget *)self spec];
  v4 = [v3 sizeClass];

  if (v4 == 2)
  {
    return ![(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersVisionOSInfoPanelLayout];
  }

  else
  {
    return 0;
  }
}

- (UIEdgeInsets)_contentInsets
{
  v3 = [(PXPhotosDetailsCaptionHashtagsWidget *)self spec];
  [v3 contentGuideInsets];
  v5 = v4;
  v7 = v6;

  v8 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  [v8 textContainerInsets];
  v10 = 14.0 - v9;
  v11 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  [v11 textContainerInsets];
  v13 = 14.0 - v12;

  v14 = v10;
  v15 = v5;
  v16 = v13;
  v17 = v7;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3 withPreparedInfo:(id)a4
{
  v11 = a4;
  v5 = [v11 objectForKeyedSubscript:@"new"];
  if (v5)
  {
    [(PXPhotosDetailsCaptionHashtagsWidget *)self setAsset:v5];
    v6 = [v11 objectForKeyedSubscript:@"description"];
    v7 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
    v8 = [v7 originalText];
    v9 = [v8 isEqualToString:v6];

    if ((v9 & 1) == 0)
    {
      v10 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
      [v10 setOriginalText:v6];
    }
  }
}

- (id)prepareForPhotoLibraryChange:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosDetailsCaptionHashtagsWidget *)self asset];
  v6 = [v4 changeDetailsForObject:v5];

  v7 = [v6 objectAfterChanges];
  v8 = v7;
  if (v7)
  {
    [v7 fetchPropertySetsIfNeeded];
    v9 = [v8 descriptionProperties];
    v10 = [v9 assetDescription];
    v11 = v10;
    v12 = &stru_1F1741150;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v16[0] = @"new";
    v16[1] = @"description";
    v17[0] = v8;
    v17[1] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)captionHashtagsEntryViewRequestFocus:(id)a3
{
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetDelegate];
  [v4 widgetRequestFocus:self];
}

- (void)captionHashtagsEntryViewDidEndEditing:(id)a3
{
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self asset];
  v5 = [v4 descriptionProperties];
  v6 = [v5 assetDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F1741150;
  }

  v9 = v8;

  v10 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  v11 = [v10 text];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1741150;
  }

  v14 = v13;

  if (([(__CFString *)v9 isEqualToString:v14]& 1) == 0)
  {
    v15 = [(PXPhotosDetailsCaptionHashtagsWidget *)self exitEditChangesSavingMode];
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
        [v16 setOriginalText:v14];

        v17 = dispatch_time(0, 200000000);
        v18 = dispatch_get_global_queue(25, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __78__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidEndEditing___block_invoke;
        block[3] = &unk_1E774C620;
        v31 = v4;
        v32 = v14;
        dispatch_after(v17, v18, block);
      }
    }

    else
    {
      v19 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
      [v19 resetToOriginalText];
    }

    v20 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
    -[PXPhotosDetailsCaptionHashtagsWidget _logCPAnalyticsEventsForCommittedCaption:numOfHashtags:](self, "_logCPAnalyticsEventsForCommittedCaption:numOfHashtags:", v14, [v20 numberOfHashtagsInText]);
  }

  [(PXPhotosDetailsCaptionHashtagsWidget *)self setExitEditChangesSavingMode:1];
  self->_isInEditMode = 0;
  v21 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetEditingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v21 widget:self didChangeEditingMode:0];
  }

  v22 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetDelegate];
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __78__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidEndEditing___block_invoke_214;
  v27 = &unk_1E774C620;
  v23 = v22;
  v28 = v23;
  v29 = self;
  [v23 widget:self animateChanges:&v24 withAnimationOptions:0];
  if (objc_opt_respondsToSelector())
  {
    [v21 widgetEditorHeightDidChange:{self, v24, v25, v26, v27}];
  }
}

void __78__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidEndEditing___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __78__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidEndEditing___block_invoke_2;
  v3[3] = &unk_1E774C620;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 performChanges:v3 completionHandler:&__block_literal_global_17254];
}

void __78__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidEndEditing___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978648] changeRequestForAsset:*(a1 + 32)];
  [v2 setAssetDescription:*(a1 + 40)];
}

void __78__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidEndEditing___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Saving assetDescription failed with error: %@", &v6, 0xCu);
    }
  }
}

- (void)captionHashtagsEntryViewDidBeginEditing:(id)a3
{
  self->_isInEditMode = 1;
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetEditingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 widget:self didChangeEditingMode:1];
  }

  v5 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetDelegate];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __80__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewDidBeginEditing___block_invoke;
  v10 = &unk_1E774C620;
  v6 = v5;
  v11 = v6;
  v12 = self;
  [v6 widget:self animateChanges:&v7 withAnimationOptions:0];
  if (objc_opt_respondsToSelector())
  {
    [v4 widgetEditorHeightDidChange:{self, v7, v8, v9, v10}];
  }
}

- (BOOL)captionHashtagsEntryViewShouldBeginEditing:(id)a3
{
  v3 = [(PXPhotosDetailsCaptionHashtagsWidget *)self asset];
  v4 = [v3 canPerformEditOperation:3];

  return v4;
}

- (void)captionHashtagsEntryViewPreferredHeightDidChange:(id)a3
{
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetDelegate];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __89__PXPhotosDetailsCaptionHashtagsWidget_captionHashtagsEntryViewPreferredHeightDidChange___block_invoke;
  v10 = &unk_1E774C620;
  v5 = v4;
  v11 = v5;
  v12 = self;
  [v5 widget:self animateChanges:&v7 withAnimationOptions:0];
  v6 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetEditingDelegate:v7];
  if (objc_opt_respondsToSelector())
  {
    [v6 widgetEditorHeightDidChange:self];
  }
}

- (void)setMaxVisibleSizeInEditMode:(CGSize)a3
{
  if (a3.width != self->_maxVisibleSizeInEditMode.width || a3.height != self->_maxVisibleSizeInEditMode.height)
  {
    self->_maxVisibleSizeInEditMode = a3;
    [(PXPhotosDetailsCaptionHashtagsWidget *)self _textEntryViewFrameForSize:?];
    v7 = v6;
    v8 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
    [v8 setMaxHeightInEditMode:v7];
  }
}

- (BOOL)wantsFocus
{
  v2 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  v3 = [v2 isEditing];

  return v3;
}

- (void)requestExitEditWithChangesSavingMode:(int64_t)a3
{
  [(PXPhotosDetailsCaptionHashtagsWidget *)self setExitEditChangesSavingMode:a3];
  v4 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  [v4 exitEditing];
}

- (void)contentViewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v5 = a4;
  [(PXPhotosDetailsCaptionHashtagsWidget *)self _textViewContainerInsets];
  PXEdgeInsetsInsetRect();
}

void __98__PXPhotosDetailsCaptionHashtagsWidget_contentViewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) textViewContainer];
  [v6 setFrame:{v2, v3, v4, v5}];

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  v11 = [*(a1 + 32) separatorView];
  [v11 setFrame:{v7, v8, v9, v10}];

  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  v14 = *(a1 + 120);
  v15 = *(a1 + 128);
  v16 = [*(a1 + 32) textEntryView];
  [v16 setFrame:{v12, v13, v14, v15}];
}

- (void)contentViewDidDisappear
{
  if ([(PXPhotosDetailsCaptionHashtagsWidget *)self _fadeInEnabled])
  {

    [(PXPhotosDetailsCaptionHashtagsWidget *)self _configureTextViewVisibility:0];
  }
}

- (void)contentViewWillAppear
{
  if ([(PXPhotosDetailsCaptionHashtagsWidget *)self _fadeInEnabled])
  {

    [(PXPhotosDetailsCaptionHashtagsWidget *)self _configureFadeInAnimation];
  }
}

- (UIEdgeInsets)_textViewContainerInsets
{
  if (![(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersVisionOSInfoPanelLayout]&& [(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersFloatingInfoPanelLayout])
  {
    PXEdgeInsetsMake();
  }

  v3 = *off_1E7721FA8;
  v4 = *(off_1E7721FA8 + 1);
  v5 = *(off_1E7721FA8 + 2);
  v6 = *(off_1E7721FA8 + 3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)_fadeInEnabled
{
  if ([(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersFloatingInfoPanelLayout])
  {
    return 0;
  }

  v3 = +[PXPhotosDetailsSettings sharedInstance];
  v4 = [v3 captionWidgetEnableFadeInEffect];

  return v4;
}

- (UIView)contentView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    [(PXPhotosDetailsCaptionHashtagsWidget *)self contentSize];
    [(PXPhotosDetailsCaptionHashtagsWidget *)self _prefersVisionOSInfoPanelLayout];
    PXSizeIsNull();
  }

  v4 = containerView;

  return v4;
}

- (void)unloadContentData
{
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v3 px_unregisterChangeObserver:self];
}

- (void)loadContentData
{
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  [v3 px_registerChangeObserver:self];
}

- (void)setContext:(id)a3
{
  v5 = a3;
  if (self->_context != v5)
  {
    objc_storeStrong(&self->_context, a3);
    v6 = [(PXPhotosDetailsContext *)v5 firstAsset];
    [(PXPhotosDetailsCaptionHashtagsWidget *)self setAsset:v6];
    v7 = [v6 descriptionProperties];
    v8 = [v7 assetDescription];
    v9 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
    [v9 setOriginalText:v8];

    if (!v6)
    {
      v10 = PLOneUpGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "No asset is in the photos details context!", v11, 2u);
      }
    }
  }
}

- (double)preferredContentHeightForWidth:(double)a3
{
  [(PXPhotosDetailsCaptionHashtagsWidget *)self _contentInsets];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(PXPhotosDetailsCaptionHashtagsWidget *)self _textViewContainerInsets];
  v15 = fmax(a3 - (v14 + v8 + v12 + v13), 0.0);
  v16 = [(PXPhotosDetailsCaptionHashtagsWidget *)self textEntryView];
  [v16 preferredHeightForWidth:v15];
  v18 = v17;

  return v10 + v6 + v18;
}

- (double)currentContentHeight
{
  v2 = [(PXPhotosDetailsCaptionHashtagsWidget *)self contentView];
  [v2 frame];
  Height = CGRectGetHeight(v5);

  return Height;
}

- (BOOL)hasContentForCurrentInput
{
  v2 = [(PXPhotosDetailsCaptionHashtagsWidget *)self asset];
  if ([v2 canPerformEditOperation:3])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 descriptionProperties];
    v5 = [v4 assetDescription];
    v3 = [v5 length] != 0;
  }

  return v3;
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_spec, a3);
    [(PXPhotosDetailsCaptionHashtagsWidget *)self _applySpec];
    v6 = [(PXPhotosDetailsCaptionHashtagsWidget *)self widgetDelegate];
    [v6 widgetPreferredContentHeightForWidthDidChange:self];

    v5 = v7;
  }
}

- (PXPhotosDetailsCaptionHashtagsWidget)init
{
  v14.receiver = self;
  v14.super_class = PXPhotosDetailsCaptionHashtagsWidget;
  v2 = [(PXPhotosDetailsCaptionHashtagsWidget *)&v14 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 120) = *off_1E7722230;
    *(v2 + 11) = 1;
    v4 = [PXCaptionHashtagsEntryView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(PXCaptionHashtagsEntryView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    textEntryView = v3->_textEntryView;
    v3->_textEntryView = v9;

    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    textViewContainer = v3->_textViewContainer;
    v3->_textViewContainer = v11;
  }

  return v3;
}

@end