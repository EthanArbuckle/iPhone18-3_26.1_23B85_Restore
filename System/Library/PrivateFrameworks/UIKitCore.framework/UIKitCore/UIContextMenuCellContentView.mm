@interface UIContextMenuCellContentView
@end

@implementation UIContextMenuCellContentView

void __42___UIContextMenuCellContentView_setTitle___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 40) _createLabelStackViewIfNeeded];
    [*(a1 + 40) _installTitleLabelIfNeeded];
  }

  v2 = [*(a1 + 40) titleLabel];
  [v2 setAttributedText:0];

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) titleLabel];
  [v4 setText:v3];

  [*(a1 + 40) setHasAttributedTitle:0];
  [*(a1 + 40) _updateTitleLabelNumberOfLines];
  v6 = [*(a1 + 40) _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
  v5 = [*(a1 + 40) iconImageView];
  [v5 setPreferredSymbolConfiguration:v6];
}

uint64_t __52___UIContextMenuCellContentView_setAttributedTitle___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 40) _createLabelStackViewIfNeeded];
    [*(a1 + 40) _installTitleLabelIfNeeded];
  }

  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) titleLabel];
  [v3 setAttributedText:v2];

  [*(a1 + 40) setHasAttributedTitle:1];
  v4 = *(a1 + 40);

  return [v4 _updateTitleLabelNumberOfLines];
}

void __45___UIContextMenuCellContentView_setSubtitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  if (v2)
  {
    [*(a1 + 40) _createLabelStackViewIfNeeded];
    [*(a1 + 40) _installSubtitleLabelIfNeeded];
  }

  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) subtitleLabel];
  [v4 setText:v3];

  v5 = [*(a1 + 40) subtitleLabel];
  [v5 setHidden:v2 == 0];
}

uint64_t __42___UIContextMenuCellContentView_setImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) iconImageView];
  v4 = v3;
  if (v2)
  {

    if (!v4)
    {
      v5 = [*(a1 + 40) _contentImageViewForImage:*(a1 + 32)];
      [*(a1 + 40) setIconImageView:v5];

      v6 = dyld_program_sdk_at_least();
      v7 = [*(a1 + 40) _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:0];
      v8 = [*(a1 + 40) iconImageView];
      v9 = v8;
      if (v6)
      {
        [v8 setPreferredSymbolConfiguration:v7];
      }

      else
      {
        [v8 _setOverridingSymbolConfiguration:v7];
      }
    }

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) iconImageView];
    [v11 setImage:v10];

    v12 = [*(a1 + 40) iconImageView];
    [v12 sizeToFit];
  }

  else
  {
    [v3 removeFromSuperview];

    [*(a1 + 40) setIconImageView:0];
  }

  v13 = *(a1 + 40);

  return [v13 _setNeedsConstraintRebuild];
}

void __53___UIContextMenuCellContentView_setKeyboardShortcut___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) keyShortcutInputView];
  v4 = v3;
  if (v2)
  {

    if (!v4)
    {
      v5 = [*(a1 + 40) traitCollection];
      v6 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
      v7 = objc_opt_new();
      v8 = [v6 itemKeyboardShortcutColor];
      [v7 setTextColor:v8];

      v9 = [v6 titleFont];
      [v7 setFont:v9];

      [*(a1 + 40) setKeyShortcutInputView:v7];
      v10 = [*(a1 + 40) keyShortcutInputView];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v11 = *(a1 + 32);
    v13 = [*(a1 + 40) keyShortcutInputView];
    [v13 setShortcut:v11];
  }

  else
  {
    [v3 removeFromSuperview];

    v12 = *(a1 + 40);

    [v12 setKeyShortcutInputView:0];
  }
}

void __53___UIContextMenuCellContentView__setDecorationImage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) decorationImageView];
  v4 = v3;
  if (v2)
  {

    if (!v4)
    {
      v5 = [*(a1 + 40) _contentImageViewForImage:*(a1 + 32)];
      [*(a1 + 40) setDecorationImageView:v5];
    }

    v6 = [*(a1 + 40) _childIndicatorColorForCurrentState];
    v7 = [*(a1 + 40) decorationImageView];
    [v7 setTintColor:v6];

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) decorationImageView];
    [v9 setImage:v8];

    v11 = [*(a1 + 40) decorationImageView];
    [v11 sizeToFit];
  }

  else
  {
    [v3 removeFromSuperview];

    v10 = *(a1 + 40);

    [v10 setDecorationImageView:0];
  }
}

void __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) options];
  v3 = *(a1 + 32);
  if ((v2 & 4) != 0)
  {
    v4 = [v3 _selectionImage];
    [v3 _setDecorationImage:v4];
  }

  else
  {

    [v3 _setDecorationImage:0];
  }
}

void __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) options];
  v3 = *(a1 + 32);
  if ((v2 & 8) != 0)
  {
    v4 = [v3 _mixedSelectionImage];
    [v3 _setDecorationImage:v4];
  }

  else
  {

    [v3 _setDecorationImage:0];
  }
}

void __76___UIContextMenuCellContentView__updateForOptionsChangeFromPreviousOptions___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) options];
  v3 = *(a1 + 32);
  if ((v2 & 0x10) != 0)
  {
    v4 = [v3 _childIndicatorImage];
    [v3 _setDecorationImage:v4];
  }

  else
  {

    [v3 _setDecorationImage:0];
  }
}

void __50___UIContextMenuCellContentView__updateSecureView__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50___UIContextMenuCellContentView__updateSecureView__block_invoke_3;
  block[3] = &unk_1E71162E8;
  v16[1] = a2;
  v13 = v7;
  v14 = *(a1 + 32);
  v10 = v7;
  objc_copyWeak(v16, (a1 + 40));
  v15 = v8;
  v11 = v8;
  dispatch_async(v9, block);

  objc_destroyWeak(v16);
}

void __50___UIContextMenuCellContentView__updateSecureView__block_invoke_3(uint64_t a1)
{
  v2 = [_UIConcretePasteboard _remoteContentForLayerContextWithId:*(a1 + 64) slotStyle:*(a1 + 32) pasteButtonTag:*(a1 + 40)];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___UIContextMenuCellContentView__updateSecureView__block_invoke_4;
    block[3] = &unk_1E7103FA8;
    objc_copyWeak(&v6, (a1 + 56));
    v5 = *(a1 + 48);
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v6);
  }
}

void __50___UIContextMenuCellContentView__updateSecureView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained pasteVariant];
  if (v2)
  {
    v3 = v2;
    v4 = (*(*(a1 + 40) + 16))();

    if (!v4)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _hideContents];
  }
}

void __49___UIContextMenuCellContentView_setIsEmphasized___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[410] != 1)
  {
    return;
  }

  v3 = [v2 titleLabel];
  v4 = [v3 text];
  if ([v4 length])
  {
    v5 = [*(a1 + 32) emphasizedTitleLabel];

    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) _primaryTitleLabel];
    [*(a1 + 32) setEmphasizedTitleLabel:v6];

    v7 = [*(a1 + 32) traitCollection];
    v8 = _UIContextMenuGetPlatformMetrics([v7 userInterfaceIdiom]);
    v9 = [v8 titleEmphasizedFont];
    v10 = [v9 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v7];

    v11 = [*(a1 + 32) emphasizedTitleLabel];
    [v11 setFont:v10];

    v12 = [*(a1 + 32) titleLabel];
    v13 = [v12 textAlignment];
    v14 = [*(a1 + 32) emphasizedTitleLabel];
    [v14 setTextAlignment:v13];

    v15 = [*(a1 + 32) titleLabel];
    v16 = [v15 adjustsFontSizeToFitWidth];
    v17 = [*(a1 + 32) emphasizedTitleLabel];
    [v17 setAdjustsFontSizeToFitWidth:v16];

    v18 = [*(a1 + 32) _primaryCompositingFilterForCurrentTraitsAndState];
    v19 = [*(a1 + 32) emphasizedTitleLabel];
    v20 = [v19 layer];
    [v20 setCompositingFilter:v18];

    v3 = [*(a1 + 32) titleLabel];
    v4 = [v3 superview];
    v21 = [*(a1 + 32) emphasizedTitleLabel];
    v22 = [*(a1 + 32) titleLabel];
    [v4 insertSubview:v21 aboveSubview:v22];
  }

LABEL_6:
  v23 = [*(a1 + 32) titleLabel];
  v24 = [v23 text];
  v25 = [*(a1 + 32) emphasizedTitleLabel];
  [v25 setText:v24];

  v26 = [*(a1 + 32) emphasizedTitleLabel];
  [v26 setAlpha:0.0];

  v27 = [*(a1 + 32) iconImageView];
  v28 = [v27 image];
  if (!v28)
  {

    goto LABEL_11;
  }

  v29 = v28;
  v30 = [*(a1 + 32) emphasizedIconImageView];

  if (v30)
  {
LABEL_11:
    v35 = [*(a1 + 32) iconImageView];
    v36 = [v35 image];
    v37 = [*(a1 + 32) emphasizedIconImageView];
    [v37 setImage:v36];

    goto LABEL_12;
  }

  v31 = *(a1 + 32);
  v32 = [v31 iconImageView];
  v33 = [v32 image];
  v34 = [v31 _contentImageViewForImage:v33];
  [*(a1 + 32) setEmphasizedIconImageView:v34];

  v35 = [*(a1 + 32) _iconSymbolConfigurationForCurrentTraitsUsingBoldFont:1];
  v36 = [*(a1 + 32) emphasizedIconImageView];
  [v36 _setOverridingSymbolConfiguration:v35];
LABEL_12:

  v38 = [*(a1 + 32) emphasizedIconImageView];
  [v38 sizeToFit];

  v39 = [*(a1 + 32) emphasizedIconImageView];
  [v39 setAlpha:0.0];
}

@end