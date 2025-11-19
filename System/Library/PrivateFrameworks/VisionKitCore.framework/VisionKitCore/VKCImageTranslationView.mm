@interface VKCImageTranslationView
- (UIView)presentationAnchorView;
- (VKCImageTranslationView)init;
- (id)recognizedLines;
- (void)checkForTranslationResultsWithCompletion:(id)a3;
- (void)hideTranslationOverlay;
- (void)setContentsRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setRecognitionResult:(id)a3;
- (void)showTranslationOverlay;
@end

@implementation VKCImageTranslationView

- (VKCImageTranslationView)init
{
  v8.receiver = self;
  v8.super_class = VKCImageTranslationView;
  v2 = [(VKCImageTranslationView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(VKCImageBaseOverlayView *)v2 setNormalizedVisibleRect:0.0, 0.0, 1.0, 1.0];
    v3->_translationNeedsUpdate = 1;
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(VKCImageTranslationView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    translationContainerView = v3->_translationContainerView;
    v3->_translationContainerView = v5;

    [(VKCImageTranslationView *)v3 addSubview:v3->_translationContainerView];
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = VKCImageTranslationView;
  [(VKCImageTranslationView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:0.0, 0.0, 1.0, 1.0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(VKCImageTranslationView *)self translationContainerView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)setContentsRect:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = VKCImageTranslationView;
  [(VKCImageBaseOverlayView *)&v13 setContentsRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKCImageBaseOverlayView *)self viewRectFromNormalizedRect:0.0, 0.0, 1.0, 1.0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(VKCImageTranslationView *)self translationContainerView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)checkForTranslationResultsWithCompletion:(id)a3
{
  v4 = a3;
  if (vk_isSeedBuild() && ([MEMORY[0x1E695E000] standardUserDefaults], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "BOOLForKey:", @"DebugVisionKitCatalystTranslation"), v5, !v6))
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  else
  {
    LTUIVisualTranslationViewClass = getLTUIVisualTranslationViewClass();
    v8 = [(VKCImageTranslationView *)self recognizedLines];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__VKCImageTranslationView_checkForTranslationResultsWithCompletion___block_invoke;
    v9[3] = &unk_1E7BE4988;
    v10 = v4;
    [LTUIVisualTranslationViewClass isTranslatable:v8 completion:v9];
  }
}

- (void)showTranslationOverlay
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self->_visualTranslationView)
  {
    v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = self;
      _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Creating Translation overlay View: %@", buf, 0xCu);
    }

    getLTUIVisualTranslationViewClass();
    v4 = objc_opt_new();
    visualTranslationView = self->_visualTranslationView;
    self->_visualTranslationView = v4;

    v6 = [(VKCImageTranslationView *)self presentationAnchorView];
    v7 = [(VKCImageTranslationView *)self visualTranslationView];
    [v7 setPresentationAnchorView:v6];

    v8 = [(VKCImageTranslationView *)self visualTranslationView];
    v9 = [v8 superview];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(VKCImageTranslationView *)self visualTranslationView];
    [v18 setFrame:{v11, v13, v15, v17}];
  }

  v19 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = self;
    _os_log_impl(&dword_1B4335000, v19, OS_LOG_TYPE_DEFAULT, "Activating Translation overlay: %@", buf, 0xCu);
  }

  if (self->_translationNeedsUpdate)
  {
    objc_initWeak(buf, self);
    v20 = [(VKCImageTranslationView *)self visualTranslationView];
    v21 = [(VKCImageTranslationView *)self recognizedLines];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __49__VKCImageTranslationView_showTranslationOverlay__block_invoke;
    v24[3] = &unk_1E7BE49B0;
    objc_copyWeak(&v25, buf);
    v24[4] = self;
    [v20 translate:v21 completion:v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    v22 = [(VKCImageTranslationView *)self translationContainerView];
    v23 = [(VKCImageTranslationView *)self visualTranslationView];
    [v22 addSubview:v23];
  }
}

void __49__VKCImageTranslationView_showTranslationOverlay__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setTranslationNeedsUpdate:0];

    [*(a1 + 32) viewRectFromNormalizedRect:{0.0, 0.0, 1.0, 1.0}];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [*(a1 + 32) visualTranslationView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v18 = objc_loadWeakRetained((a1 + 40));
    v15 = [v18 translationContainerView];
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 visualTranslationView];
    [v15 addSubview:v17];
  }
}

- (id)recognizedLines
{
  v2 = [(VKCImageBaseOverlayView *)self recognitionResult];
  v3 = [v2 sourceVNDocument];

  v4 = [v3 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];

  return v4;
}

- (void)hideTranslationOverlay
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Hiding Translation overlay %@", &v5, 0xCu);
  }

  v4 = [(VKCImageTranslationView *)self visualTranslationView];
  [v4 dismiss];
}

- (void)setRecognitionResult:(id)a3
{
  v4.receiver = self;
  v4.super_class = VKCImageTranslationView;
  [(VKCImageBaseOverlayView *)&v4 setRecognitionResult:a3];
  [(VKCImageTranslationView *)self setTranslationNeedsUpdate:1];
}

- (UIView)presentationAnchorView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationAnchorView);

  return WeakRetained;
}

@end