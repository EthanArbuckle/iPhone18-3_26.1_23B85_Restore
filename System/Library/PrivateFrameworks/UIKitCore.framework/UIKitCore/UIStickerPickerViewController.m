@interface UIStickerPickerViewController
@end

@implementation UIStickerPickerViewController

void __42___UIStickerPickerViewController_loadView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = _stickersLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Loaded remote view controller %@", &v12, 0xCu);
      }

      [WeakRetained _remoteViewDidLoad:v5];
    }

    else
    {
      if (v10)
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Unable to load remote view controller: %@", &v12, 0xCu);
      }

      [*(a1 + 32) dismissCard];
    }

    v11 = [*(a1 + 32) _viewServiceProxy];
    [v11 prepareForAddStickerFromSubjectLift];
  }
}

uint64_t __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_58(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_2;
  v20[3] = &unk_1E7122560;
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v21 = v14;
  v22 = v15;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v23 = v16;
  v24 = *(a1 + 48);
  v17 = *(a1 + 56);
  v25 = v13;
  v26 = v17;
  v18 = v13;
  v19 = v14;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
}

uint64_t __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = _stickersLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unexpected error adding stickers to store: %@", &v8, 0xCu);
    }

    [*(a1 + 40) dismissCard];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = NSStringFromCGRect(*(a1 + 80));
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Got a successful add to sticker store with target sticker bounds %@", &v8, 0xCu);
    }

    [*(a1 + 40) _addStickerWithRepresentations:*(a1 + 48) previewView:*(a1 + 56) animatingTo:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  }

  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 32));
  }

  return result;
}

void __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_60(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_2_61;
  v15[3] = &unk_1E7104E80;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = v11;
  v17 = v12;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v18 = v13;
  v19 = *(a1 + 48);
  v14 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], v15);
}

uint64_t __103___UIStickerPickerViewController_addStickerWithRepresentations_previewView_originatingView_completion___block_invoke_2_61(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = _stickersLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "Unexpected error adding stickers to store: %@", &v8, 0xCu);
    }

    return [*(a1 + 40) dismissCard];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromCGRect(*(a1 + 64));
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Got a successful add to sticker store with target sticker bounds %@", &v8, 0xCu);
    }

    return [*(a1 + 40) _addStickerWithRepresentations:*(a1 + 48) previewView:*(a1 + 56) animatingTo:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  }
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke(uint64_t a1)
{
  v10 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v10.minimum;
  maximum = v10.maximum;
  preferred = v10.preferred;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_2;
  v7[3] = &unk_1E70F6848;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *&v5 = maximum;
  *&v6 = preferred;
  [UIView sticker_modifyAnimationsWithPreferredFrameRateRange:1048626 updateReason:v7 animations:COERCE_DOUBLE(__PAIR64__(DWORD1(v9), LODWORD(minimum))), v5, v6];
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_4(uint64_t a1)
{
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_5;
  v8[3] = &unk_1E70F3DC8;
  v9 = *(a1 + 32);
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 72);
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView sticker_modifyAnimationsWithPreferredFrameRateRange:1048626 updateReason:v8 animations:COERCE_DOUBLE(__PAIR64__(DWORD1(v12), LODWORD(minimum))), v6, v7];
}

uint64_t __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_7(uint64_t a1)
{
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_8;
  v8[3] = &unk_1E70F3DC8;
  v9 = *(a1 + 32);
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 72);
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView sticker_modifyAnimationsWithPreferredFrameRateRange:1048626 updateReason:v8 animations:COERCE_DOUBLE(__PAIR64__(DWORD1(v12), LODWORD(minimum))), v6, v7];
}

uint64_t __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_10(uint64_t a1)
{
  v13 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  minimum = v13.minimum;
  maximum = v13.maximum;
  preferred = v13.preferred;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_11;
  v8[3] = &unk_1E70F3DC8;
  v9 = *(a1 + 32);
  v5 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v5;
  v12 = *(a1 + 72);
  *&v6 = maximum;
  *&v7 = preferred;
  [UIView sticker_modifyAnimationsWithPreferredFrameRateRange:1048626 updateReason:v8 animations:COERCE_DOUBLE(__PAIR64__(DWORD1(v12), LODWORD(minimum))), v6, v7];
}

uint64_t __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_13(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewServiceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_14;
  v5[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 addStickerAnimationDidFinishWithCompletion:v5];
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_14(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_15;
  v4[3] = &unk_1E70F35B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

void __89___UIStickerPickerViewController__addStickerWithRepresentations_previewView_animatingTo___block_invoke_15(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) _viewServiceProxy];
  [v2 didRemoveStickerPreview];
}

uint64_t __65___UIStickerPickerViewController__insertStickerFromItemProvider___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = +[UIWindow _applicationKeyWindow];
    v6 = objc_loadWeakRetained((a1 + 40));
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    [v8 setKeyWindowChangedDuringInsert:v5 != v6];
  }

  else
  {
    v9 = *(a1 + 32);
    v7 = (a1 + 32);
    [v9 setKeyWindowChangedDuringInsert:0];
  }

  v10 = *v7;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65___UIStickerPickerViewController__insertStickerFromItemProvider___block_invoke_2;
    v12[3] = &unk_1E70F3590;
    v12[4] = v10;
    return [v10 dismissCardAnimated:1 completion:v12];
  }

  else
  {

    return [v10 setKeyWindowChangedDuringInsert:0];
  }
}

uint64_t __65___UIStickerPickerViewController_dismissCardAnimated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissCard];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __45___UIStickerPickerViewController_dismissCard__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) card];
  v3 = [v2 view];
  [v3 removeFromSuperview];

  v4 = [*(a1 + 32) card];
  [v4 removeFromParentViewController];

  [*(a1 + 32) setCard:0];
  v5 = [*(a1 + 32) delegate];
  LOBYTE(v3) = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 stickerPickerViewControllerDidDismiss];
  }
}

@end