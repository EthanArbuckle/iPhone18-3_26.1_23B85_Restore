@interface UIButtonBarButtonVisualProviderIOS
@end

@implementation UIButtonBarButtonVisualProviderIOS

uint64_t __69___UIButtonBarButtonVisualProviderIOS__configureImageOrTitleCompact___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 title];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __60___UIButtonBarButtonVisualProviderIOS__setupAlternateTitles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 width];
  v6 = v5;
  [v4 width];
  v8 = v7;

  v9 = -1;
  if (v6 <= v8)
  {
    v9 = 1;
  }

  if (v6 == v8)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

void *__73___UIButtonBarButtonVisualProviderIOS_configureButton_fromBarButtonItem___block_invoke(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 32) alignmentRectInsets];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v8 = [*(a1 + 32) hasBaseline];
    v9 = 0.0;
    if ((v8 & 1) == 0)
    {
      [*(a1 + 40) _defaultBackIndicatorBaselineInsetCompact:*(a1 + 81)];
      v9 = v5 + v10;
    }

    v11 = *(a1 + 40);
    if (v11[10])
    {
      [v11 _imageInsetsForBarButtonItem:*(a1 + 48) compact:*(a1 + 81) isBackButton:1];
      [*(a1 + 40) _configureImageBackButtonWithImageInsets:v8 backButtonLayoutInsets:? useBaselineAlignment:?];
      goto LABEL_22;
    }

    if (v11[9])
    {
      if (!_UISMCBarsEnabled() || ([*(*(a1 + 40) + 72) attributedTitleForState:0], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "string"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
      {
        [*(a1 + 40) backButtonTitlePositionOffsetForCompact:*(a1 + 81)];
        [*(a1 + 40) _configureTextBackButtonWithTitlePositionAdjustment:v8 backButtonLayoutInsets:? useBaselineAlignment:?];
        goto LABEL_22;
      }

      v11 = *(a1 + 40);
    }

    [v11 _configureBackButtonWithBackButtonLayoutInsets:v8 useBaselineAlignment:{0.0, v3, v9, v7}];
  }

  else
  {
    v12 = *(a1 + 40);
    if (v12[10])
    {
      [v12 _imageInsetsForBarButtonItem:*(a1 + 48) compact:*(a1 + 81) isBackButton:0];
      [*(a1 + 40) _configureImageWithInsets:*(a1 + 56) paddingEdges:? additionalPadding:?];
    }

    else if (v12[9])
    {
      [*(a1 + 48) titlePositionAdjustmentForBarMetrics:*(a1 + 72)];
      v17 = v16;
      [*(a1 + 40) titlePositionOffsetForCompact:*(a1 + 81)];
      v19 = v18;
      v21 = v20;
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 96));
      [WeakRetained defaultTextPadding];
      v24 = v23;

      v25 = *(a1 + 56);
      if ((v25 & 8) != 0)
      {
        v27 = v24 + *(a1 + 64);
      }

      else
      {
        [*(a1 + 40) _effectiveEdgeSpacing];
        v27 = v26;
        v25 = *(a1 + 56);
      }

      v28 = v17 + v19;
      if ((v25 & 2) != 0)
      {
        v30 = v24 + *(a1 + 64);
      }

      else
      {
        [*(a1 + 40) _effectiveEdgeSpacing];
        v30 = v29;
      }

      [*(a1 + 40) _configureTextWithOffset:v28 additionalPadding:{v21, 0.0, v30, 0.0, v27}];
    }
  }

LABEL_22:
  result = *(a1 + 40);
  if (result[11])
  {
    [result backButtonBackgroundVerticalAdjustmentForCompact:*(a1 + 81)];
    v33 = v32;
    if (fabs(v32) < 2.22044605e-16)
    {
      [*(a1 + 48) backButtonBackgroundVerticalPositionAdjustmentForBarMetrics:*(a1 + 81)];
      v33 = v34;
    }

    v35 = *(a1 + 80);
    v36 = *(a1 + 40);
    v37 = [*(a1 + 48) _resizesBackgroundImage];

    return [v36 _addConstraintsForBackgroundViewWithOffset:v35 isBackButton:v37 resizesImage:v33];
  }

  return result;
}

void __127___UIButtonBarButtonVisualProviderIOS_backButtonSystemLayoutSizeFittingSize_horizontalFittingPriority_verticalFittingPriority___block_invoke(uint64_t a1)
{
  v28 = *(*(a1 + 32) + 8);
  v2 = [*(*(a1 + 32) + 72) attributedTitleForState:0];
  v3 = [v2 string];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = [WeakRetained resolvedTitle];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1EFB14550;
  }

  v8 = v7;

  v9 = *(a1 + 32);
  v10 = objc_loadWeakRetained(v9 + 2);
  v11 = [v10 resolvedTitle];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1EFB14550;
  }

  [v9 _setTitle:v13];

  v14 = [(__CFString *)v8 length];
  v15 = *(a1 + 32);
  LODWORD(v16) = *(a1 + 64);
  LODWORD(v17) = *(a1 + 68);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  if (v14)
  {
    [*(v15 + 72) systemLayoutSizeFittingSize:v18 withHorizontalFittingPriority:v19 verticalFittingPriority:{v16, v17}];
    v20 = *(*(a1 + 40) + 8);
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    *(*(*(a1 + 40) + 8) + 32) = [(_UIButtonBarButtonVisualProviderIOS *)*(a1 + 32) _widthForBackButtonChevronIncludingPaddingToContentButton]+ *(*(*(a1 + 40) + 8) + 32);
    v23 = 6.0;
    if (!*(a1 + 32))
    {
      v23 = 0.0;
    }

    *(*(*(a1 + 40) + 8) + 32) = v23 + *(*(*(a1 + 40) + 8) + 32);
  }

  else
  {
    [*(v15 + 8) systemLayoutSizeFittingSize:v18 withHorizontalFittingPriority:v19 verticalFittingPriority:{v16, v17}];
    v24 = *(*(a1 + 40) + 8);
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
  }

  if (v3)
  {
    v27 = v3;
  }

  else
  {
    v27 = &stru_1EFB14550;
  }

  [*(a1 + 32) _setTitle:v27];
}

id __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = (*(v4 + 16))(v4, WeakRetained, v3);

  if (!v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v18 = objc_loadWeakRetained((a1 + 40));
        *buf = 138412290;
        v26 = v18;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "Client configured a bar button item (%@) with a secondaryActionsProvider and secondaryActionsArePrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v8;
        v10 = objc_loadWeakRetained((a1 + 40));
        *buf = 138412290;
        v26 = v10;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Client configured a bar button item (%@) with a secondaryActionsProvider and secondaryActionsArePrimary=YES, but failed to return a menu, Substituting a dummy menu.", buf, 0xCu);
      }
    }

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 title];
    v13 = objc_loadWeakRetained((a1 + 40));
    v14 = [v13 image];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_323;
    v22 = &unk_1E70F7450;
    objc_copyWeak(&v23, (a1 + 40));
    v15 = [UIAction actionWithTitle:v12 image:v14 identifier:0 handler:&v19];

    v24 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:{1, v19, v20, v21, v22}];
    v6 = [UIMenu menuWithChildren:v16];

    objc_destroyWeak(&v23);
  }

  return v6;
}

void __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_323(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerActionForEvent:0];
}

id __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = (*(v3 + 16))(v3, WeakRetained, v4);

  return v6;
}

@end