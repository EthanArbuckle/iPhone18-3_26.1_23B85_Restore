@interface PXCMMSectionHeaderController
+ (id)new;
- (BOOL)_wantsActionButtons;
- (PXCMMSectionHeaderController)init;
- (PXCMMSectionHeaderController)initWithActivityType:(unint64_t)a3 viewModel:(id)a4 momentShareStatusPresentation:(id)a5 importStatusManager:(id)a6;
- (UIView)view;
- (void)_contentSizeCategoryDidChangeNotification:(id)a3;
- (void)_deselectAllAssets;
- (void)_handleActionButtonTapped:(id)a3;
- (void)_handleSecondaryButtonTapped:(id)a3;
- (void)_loadViewIfNeeded;
- (void)_selectAllAssets;
- (void)_setActionButtonType:(int64_t)a3;
- (void)_setSecondaryActionButtonType:(int64_t)a3;
- (void)_updateActionButtons;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXCMMSectionHeaderController

- (void)_contentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = [objc_opt_class() _photosLabelFont];
  [(UILabel *)self->_photosLabel setFont:v4];

  v5 = [objc_opt_class() _buttonLabelFont];
  v6 = [(UIButton *)self->_actionButton titleLabel];
  [v6 setFont:v5];

  v7 = [(UIButton *)self->_actionButton titleLabel];
  [v7 sizeToFit];

  v8 = [objc_opt_class() _buttonLabelFont];
  v9 = [(UIButton *)self->_secondaryButton titleLabel];
  [v9 setFont:v8];

  v10 = [(UIButton *)self->_secondaryButton titleLabel];
  [v10 sizeToFit];

  [(UIView *)self->_underlyingView frame];

  [(PXCMMSectionHeaderController *)self _layoutButtonWithSize:v11, v12];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXCMMViewModelObservationContext == a5)
  {
    if ((v6 & 0x4400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (SelectionModelObservationContext == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v11 = v9;
    [(PXCMMSectionHeaderController *)self _updateActionButtons];
    v9 = v11;
    goto LABEL_8;
  }

  if (PXMomentShareStatusPresentationObservationContext_144545 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMSectionHeaderController.m" lineNumber:423 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_deselectAllAssets
{
  v2 = [(PXCMMViewModel *)self->_viewModel selectionManager];
  [v2 performChanges:&__block_literal_global_228];
}

- (void)_selectAllAssets
{
  v3 = [(PXCMMViewModel *)self->_viewModel selectionManager];
  v4 = v3;
  if (self->_activityType == 2 && self->_importStatusManager)
  {
    [v3 selectNonCopiedAssetsWithImportStatusManager:?];
  }

  else
  {
    [v3 performChanges:&__block_literal_global_144553];
  }
}

- (void)_updateActionButtons
{
  if (!self->_isViewLoaded || ![(PXCMMSectionHeaderController *)self _wantsActionButtons])
  {
    return;
  }

  if (!self->_actionButton)
  {
    v3 = [(UIView *)self->_underlyingView tintColor];
    v4 = [v3 colorWithAlphaComponent:0.3];

    v5 = [MEMORY[0x1E69DC738] buttonWithType:0];
    actionButton = self->_actionButton;
    self->_actionButton = v5;

    v7 = [objc_opt_class() _buttonLabelFont];
    v8 = [(UIButton *)self->_actionButton titleLabel];
    [v8 setFont:v7];

    v9 = self->_actionButton;
    v10 = [(UIView *)self->_underlyingView tintColor];
    [(UIButton *)v9 setTitleColor:v10 forState:0];

    [(UIButton *)self->_actionButton setTitleColor:v4 forState:1];
    [(UIButton *)self->_actionButton addTarget:self action:sel__handleActionButtonTapped_ forControlEvents:0x2000];
    [(UIView *)self->_underlyingView addSubview:self->_actionButton];
  }

  v11 = [(PXCMMViewModel *)self->_viewModel isSelecting];
  v12 = 1;
  if (v11)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [(PXCMMSectionHeaderController *)self _setActionButtonType:v13];
  [(UIButton *)self->_actionButton setHidden:[(PXCMMViewModel *)self->_viewModel selectionEnabled]^ 1];
  if (v11)
  {
    if (!self->_secondaryButton)
    {
      v14 = [(UIView *)self->_underlyingView tintColor];
      v15 = [v14 colorWithAlphaComponent:0.3];

      v16 = [MEMORY[0x1E69DC738] buttonWithType:0];
      secondaryButton = self->_secondaryButton;
      self->_secondaryButton = v16;

      v18 = [objc_opt_class() _buttonLabelFont];
      v19 = [(UIButton *)self->_secondaryButton titleLabel];
      [v19 setFont:v18];

      v20 = self->_secondaryButton;
      v21 = [(UIView *)self->_underlyingView tintColor];
      [(UIButton *)v20 setTitleColor:v21 forState:0];

      [(UIButton *)self->_secondaryButton setTitleColor:v15 forState:1];
      [(UIButton *)self->_secondaryButton addTarget:self action:sel__handleSecondaryButtonTapped_ forControlEvents:0x2000];
      [(UIView *)self->_underlyingView addSubview:self->_secondaryButton];
    }

    v22 = [(PXCMMViewModel *)self->_viewModel selectionManager];
    momentShareStatusPresentation = self->_momentShareStatusPresentation;
    if (momentShareStatusPresentation && self->_activityType == 2)
    {
      v24 = [(PXMomentShareStatusPresentation *)momentShareStatusPresentation numberOfAssetsNotCopied];
      v25 = [v22 selectionSnapshot];
      v26 = [v25 selectedIndexPaths];
      v27 = [v26 count];

      if (v24 != v27)
      {
LABEL_14:
        v28 = 3;
LABEL_18:
        [(PXCMMSectionHeaderController *)self _setSecondaryActionButtonType:v28];

        v12 = [(PXCMMViewModel *)self->_viewModel selectionEnabled]^ 1;
        goto LABEL_19;
      }
    }

    else
    {
      v29 = [v22 selectionSnapshot];
      v30 = [v29 areAllItemsSelected];

      if ((v30 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v28 = 4;
    goto LABEL_18;
  }

LABEL_19:
  [(UIButton *)self->_secondaryButton setHidden:v12];
  v31 = self->_secondaryButton;
  if (v31)
  {
    v32 = [(UIButton *)v31 isHidden]^ 1;
  }

  else
  {
    v32 = 0;
  }

  photosLabel = self->_photosLabel;

  [(UILabel *)photosLabel setHidden:v32];
}

- (BOOL)_wantsActionButtons
{
  activityType = self->_activityType;
  if (activityType == 3)
  {
    return 0;
  }

  if (activityType)
  {
    v9 = activityType == 4;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v14 = v3;
    v15 = v2;
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCMMSectionHeaderController.m" lineNumber:293 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 1;
}

void __54__PXCMMSectionHeaderController__layoutButtonWithSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(*(a1 + 32), "semanticContentAttribute")}];
  v5 = v4;
  if (v4 == 1)
  {
    v6 = 64;
  }

  else
  {
    v6 = 56;
  }

  if (v4 == 1)
  {
    v7 = 56;
  }

  else
  {
    v7 = 64;
  }

  v8 = *(*(a1 + 40) + v6);
  v9 = *(*(a1 + 40) + v7);
  [v8 sizeThatFits:{*(a1 + 48), *(a1 + 56)}];
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 48) - v10 + -20.0;
  [v9 sizeThatFits:?];
  v16 = v15;
  v18 = v17;
  v19 = [MEMORY[0x1E69DC668] sharedApplication];
  v20 = [v19 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v20);

  v22 = 20.0;
  if (IsAccessibilityCategory)
  {
    v23 = 20.0;
  }

  else
  {
    v23 = v14;
  }

  v24 = *(MEMORY[0x1E695F058] + 8);
  if (v5 == 1 && IsAccessibilityCategory)
  {
    v22 = *(a1 + 48) - v16 + -20.0;
    v23 = v14;
  }

  [v8 setFrame:{v23, *(MEMORY[0x1E695F058] + 8), v11, v13}];
  [v9 setFrame:{v22, v24, v16, v18}];
  v47[0] = vdupq_n_s64(0x7FF8000000000000uLL);
  v47[1] = v47[0];
  v47[2] = v47[0];
  v48 = v47[0];
  v49 = v47[0];
  v50 = v47[0];
  v51 = v47[0];
  *(&v48 + 1) = *(a1 + 64);
  if (v9)
  {
    [v3 layoutView:v9 withAttributes:v47];
  }

  if (v8)
  {
    [v3 layoutView:v8 withAttributes:v47];
  }

  v25 = *(a1 + 72);
  if (IsAccessibilityCategory)
  {
    if (v5 == 1)
    {
      v26 = v8;
    }

    else
    {
      v26 = v9;
    }

    if (v5 == 1)
    {
      v27 = v23;
    }

    else
    {
      v13 = v18;
      v11 = v16;
      v27 = v22;
    }

    v28 = v26;
    v29 = [objc_opt_class() _buttonLabelFont];
    [v29 lineHeight];
    v31 = v30;
    [v29 leading];
    v33 = v31 + v32;
    [v29 descender];
    v35 = v33 + v34;
    [v29 capHeight];
    v37 = v25 - (v35 - v36);
    v52.origin.x = v27;
    v52.origin.y = v24;
    v52.size.width = v11;
    v52.size.height = v13;
    [v28 setFrame:{v27, v37 + (CGRectGetHeight(v52) - v31) * -0.5, v11, v13}];
  }

  v38 = vdupq_n_s64(0x7FF8000000000000uLL);
  v40[1] = v38.i64[1];
  v41 = v38;
  v42 = v38;
  v43 = v38;
  v45 = v38;
  v46 = v38;
  v40[0] = 0x4034000000000000;
  *&v45.i64[1] = *(a1 + 48) + 20.0;
  v43.i64[1] = *(a1 + 64);
  v44 = vdupq_n_s64(0x7FF0000000000000uLL);
  [v3 layoutView:*(*(a1 + 40) + 72) withAttributes:v40];
  if (IsAccessibilityCategory)
  {
    v39 = [objc_opt_class() _photosLabelFont];
    [v39 lineHeight];
    [v39 leading];
    [v39 descender];
    [v39 capHeight];
    [*(*(a1 + 40) + 72) frame];
    [*(*(a1 + 40) + 72) setFrame:?];
  }
}

- (void)_setSecondaryActionButtonType:(int64_t)a3
{
  if (self->_secondaryActionButtonType == a3)
  {
    return;
  }

  self->_secondaryActionButtonType = a3;
  if (a3 == 3)
  {
    v6 = @"PXCMMSelectAllButtonTitle";
  }

  else
  {
    if (a3 != 4)
    {
      if (a3 < 3)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        [v5 handleFailureInMethod:a2 object:self file:@"PXCMMSectionHeaderController.m" lineNumber:186 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      goto LABEL_9;
    }

    v6 = @"PXCMMDeselectAllButtonTitle";
  }

  secondaryButton = self->_secondaryButton;
  v8 = PXLocalizedStringFromTable(v6, @"PhotosUICore");
  [(UIButton *)secondaryButton setTitle:v8 forState:0];

LABEL_9:
  [(UIView *)self->_underlyingView frame];

  [(PXCMMSectionHeaderController *)self _layoutButtonWithSize:v9, v10];
}

- (void)_setActionButtonType:(int64_t)a3
{
  if (self->_actionButtonType == a3)
  {
    return;
  }

  self->_actionButtonType = a3;
  if (a3 <= 1)
  {
    if (a3 == 1)
    {
      v4 = @"PXCMMSelectButtonTitle";
      goto LABEL_7;
    }

    if (a3)
    {
      goto LABEL_8;
    }

LABEL_14:
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMSectionHeaderController.m" lineNumber:163 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a3 != 2)
  {
    if ((a3 - 3) >= 2)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v4 = @"PXCMMCancelButtonTitle";
LABEL_7:
  actionButton = self->_actionButton;
  v6 = PXLocalizedStringFromTable(v4, @"PhotosUICore");
  [(UIButton *)actionButton setTitle:v6 forState:0];

LABEL_8:
  [(UIView *)self->_underlyingView frame];

  [(PXCMMSectionHeaderController *)self _layoutButtonWithSize:v7, v8];
}

- (void)_handleSecondaryButtonTapped:(id)a3
{
  v7 = a3;
  v5 = [(PXCMMSectionHeaderController *)self secondaryActionButtonType];
  if (v5 == 3)
  {
    [(PXCMMSectionHeaderController *)self _selectAllAssets];
  }

  else if (v5 == 4)
  {
    [(PXCMMSectionHeaderController *)self _deselectAllAssets];
  }

  else if (v5 < 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCMMSectionHeaderController.m" lineNumber:142 description:@"Code which should be unreachable has been reached"];

    abort();
  }
}

- (void)_handleActionButtonTapped:(id)a3
{
  v3 = self->_viewModel;
  v4 = [(PXCMMViewModel *)v3 isSelecting];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PXCMMSectionHeaderController__handleActionButtonTapped___block_invoke;
  v5[3] = &__block_descriptor_33_e33_v16__0___PXCMMMutableViewModel__8l;
  v6 = v4;
  [(PXCMMViewModel *)v3 performChanges:v5];
}

- (UIView)view
{
  [(PXCMMSectionHeaderController *)self _loadViewIfNeeded];
  underlyingView = self->_underlyingView;

  return underlyingView;
}

- (void)_loadViewIfNeeded
{
  if (!self->_isViewLoaded)
  {
    self->_isViewLoaded = 1;
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    underlyingView = self->_underlyingView;
    self->_underlyingView = v5;

    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)self->_underlyingView setBackgroundColor:v7];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    photosLabel = self->_photosLabel;
    self->_photosLabel = v8;

    v10 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_photosLabel setTextColor:v10];

    [(UILabel *)self->_photosLabel setNumberOfLines:1];
    v11 = [objc_opt_class() _photosLabelFont];
    [(UILabel *)self->_photosLabel setFont:v11];

    v12 = PXLocalizedStringFromTable(@"PXCMMSectionHeaderTitle", @"PhotosUICore");
    [(UILabel *)self->_photosLabel setText:v12];

    [(UIView *)self->_underlyingView addSubview:self->_photosLabel];

    [(PXCMMSectionHeaderController *)self _updateActionButtons];
  }
}

- (PXCMMSectionHeaderController)initWithActivityType:(unint64_t)a3 viewModel:(id)a4 momentShareStatusPresentation:(id)a5 importStatusManager:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = PXCMMSectionHeaderController;
  v14 = [(PXCMMSectionHeaderController *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_activityType = a3;
    objc_storeStrong(&v14->_viewModel, a4);
    [(PXCMMViewModel *)v15->_viewModel registerChangeObserver:v15 context:PXCMMViewModelObservationContext];
    v16 = [(PXCMMViewModel *)v15->_viewModel selectionManager];
    [v16 registerChangeObserver:v15 context:SelectionModelObservationContext];

    objc_storeStrong(&v15->_momentShareStatusPresentation, a5);
    [(PXMomentShareStatusPresentation *)v15->_momentShareStatusPresentation registerChangeObserver:v15 context:PXMomentShareStatusPresentationObservationContext_144545];
    objc_storeStrong(&v15->_importStatusManager, a6);
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v15 selector:sel__contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v15;
}

- (PXCMMSectionHeaderController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMSectionHeaderController.m" lineNumber:63 description:{@"%s is not available as initializer", "-[PXCMMSectionHeaderController init]"}];

  abort();
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXCMMSectionHeaderController.m" lineNumber:67 description:{@"%s is not available as initializer", "+[PXCMMSectionHeaderController new]"}];

  abort();
}

@end