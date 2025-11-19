@interface TUIEmojiSearchView
+ (BOOL)bundleAllowsGenmoji;
+ (BOOL)canInsertStickerAsTextInputPayload;
+ (BOOL)canShowEmojiKeyboardInsideStickerPickerService;
+ (BOOL)isNotificationExtension;
+ (BOOL)isStickerPickerService;
+ (BOOL)shouldShowGenmoji;
+ (BOOL)shouldShowGenmojiForStickerEditMenu:(BOOL)a3;
+ (BOOL)shouldShowImages;
- (TUIEmojiSearchView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_handBiasedEdgeInsets;
- (id)_constraintsFromView:(id)a3 toContainerView:(id)a4 insets:(UIEdgeInsets)a5 identifier:(id)a6;
- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5;
- (id)addButtonForAction:(id)a3 image:(id)a4 accessibilityLabel:(id)a5 addLightEffect:(BOOL)a6;
- (id)addButtonForAction:(id)a3 strippingAlignmentRectInsetsFromImage:(id)a4 accessibilityLabel:(id)a5 addLightEffect:(BOOL)a6;
- (void)_buttonConfigurationWillChange:(id)a3;
- (void)_createPredictionViewConstraints;
- (void)_createResultsViewConstraints;
- (void)_createSearchTextFieldAndButtonConstraints;
- (void)_placeholderWillChange:(id)a3;
- (void)_updatePlaceholder;
- (void)addButtons;
- (void)createConstraintsIfNeeded;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)hideTip;
- (void)invalidateCollectionViewLayoutIfNeeded;
- (void)layoutSubviews;
- (void)setCollapsed:(BOOL)a3;
- (void)setPredictionView:(id)a3;
- (void)setPredictionViewVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setResultsCollectionView:(id)a3;
- (void)setResultsViewVisible:(BOOL)a3;
- (void)setShouldCreateButtonGlow:(BOOL)a3 animated:(BOOL)a4;
- (void)showTipIfNeeded;
- (void)transitionToCompactLayout:(BOOL)a3;
- (void)updateButtons;
- (void)updateGlowEffects;
- (void)updateInsetsIfNeeded:(UIEdgeInsets)a3;
- (void)updatePlaceholder;
- (void)updateWidthRatioIfNeeded;
@end

@implementation TUIEmojiSearchView

- (id)_hitTest:(CGPoint)a3 withEvent:(id)a4 windowServerHitTestWindow:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() isStickerPickerService] && objc_msgSend(objc_opt_class(), "canShowEmojiKeyboardInsideStickerPickerService") && (-[TUIEmojiSearchView window](self, "window"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11 != v10))
  {
    v12 = [(TUIEmojiSearchView *)self window];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TUIEmojiSearchView;
    v12 = [(TUIEmojiSearchView *)&v15 _hitTest:v9 withEvent:v10 windowServerHitTestWindow:x, y];
  }

  v13 = v12;

  return v13;
}

- (void)_placeholderWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"Placeholder"];
  v6 = [v5 stringValue];
  overridingPlaceholder = self->_overridingPlaceholder;
  self->_overridingPlaceholder = v6;

  [(TUIEmojiSearchView *)self updatePlaceholder];
}

- (void)_buttonConfigurationWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"ButtonConfiguration"];
  self->_buttonConfiguration = [v5 integerValue];

  overridingPlaceholder = self->_overridingPlaceholder;
  self->_overridingPlaceholder = 0;

  [(TUIEmojiSearchView *)self updateButtons];
  [(TUIEmojiSearchView *)self updatePlaceholder];
  searchTextFieldContainerView = self->_searchTextFieldContainerView;

  [(UIView *)searchTextFieldContainerView layoutIfNeeded];
}

- (UIEdgeInsets)_handBiasedEdgeInsets
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [MEMORY[0x1E69DCBB8] activeKeyboard];
  v8 = [v7 interfaceOrientation] - 1;

  if (v8 <= 1)
  {
    v9 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
    v10 = [v9 preferencesActions];
    v11 = [v10 handBias];

    if (v11)
    {
      [(TUIEmojiSearchView *)self bounds];
      v12 = *MEMORY[0x1E69DEB58];
      v13 = CGRectGetWidth(v18) - v12;
      if (v11 == 2)
      {
        v6 = v13;
      }

      else if (v11 == 1)
      {
        v4 = v13;
      }
    }
  }

  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (id)_constraintsFromView:(id)a3 toContainerView:(id)a4 insets:(UIEdgeInsets)a5 identifier:(id)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v35[4] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (!v14)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v14 = [v15 stringWithFormat:@"<%@:%p>-<%@:%p>", v16, v13, objc_opt_class(), v12];
  }

  v17 = [v12 topAnchor];
  v18 = [v13 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:top];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.top", v14];
  [v19 setIdentifier:v20];

  v21 = [v12 leadingAnchor];
  v22 = [v13 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:left];

  v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.leading", v14];
  [v23 setIdentifier:v24];

  v25 = [v13 bottomAnchor];
  v26 = [v12 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:bottom];

  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bottom", v14];
  [v27 setIdentifier:v28];

  v29 = [v13 trailingAnchor];
  v30 = [v12 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:right];

  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.trailing", v14];
  [v31 setIdentifier:v32];

  v35[0] = v19;
  v35[1] = v23;
  v35[2] = v27;
  v35[3] = v31;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];

  return v33;
}

- (void)_createSearchTextFieldAndButtonConstraints
{
  v90[3] = *MEMORY[0x1E69E9840];
  v84 = MEMORY[0x1E696ACD8];
  v85 = [(TUIEmojiSearchTextField *)self->_searchTextField topAnchor];
  v3 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
  v4 = [v85 constraintEqualToAnchor:v3];
  v90[0] = v4;
  v5 = [(TUIEmojiSearchTextField *)self->_searchTextField bottomAnchor];
  v6 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v90[1] = v7;
  v8 = [(TUIEmojiSearchTextField *)self->_searchTextField leadingAnchor];
  v9 = [(UIView *)self->_searchTextFieldContainerView leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v90[2] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:3];
  [v84 activateConstraints:v11];

  if (TUIRemoteEmojiSearchViewControllerEnabled())
  {
    v12 = [(UIView *)self->_createButton trailingAnchor];
    v13 = [(TUIEmojiSearchTextField *)self->_searchTextField trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];
    buttonConstraintFirstButtonDisabled = self->_buttonConstraintFirstButtonDisabled;
    self->_buttonConstraintFirstButtonDisabled = v14;

    v16 = [(UIView *)self->_createButton leadingAnchor];
    v17 = [(TUIEmojiSearchTextField *)self->_searchTextField trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:*&kHorizontalPadding];
    buttonConstraintFirstButtonEnabled = self->_buttonConstraintFirstButtonEnabled;
    self->_buttonConstraintFirstButtonEnabled = v18;

    v20 = [(TUIEmojiSearchTextField *)self->_searchTextField trailingAnchor];
    v21 = [(UIView *)self->_searchTextFieldContainerView trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:0.0];
    buttonConstraintNoButton = self->_buttonConstraintNoButton;
    self->_buttonConstraintNoButton = v22;

    v24 = [(UIView *)self->_createButton trailingAnchor];
    v25 = [(UIView *)self->_searchTextFieldContainerView trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    buttonConstraintOneButton = self->_buttonConstraintOneButton;
    self->_buttonConstraintOneButton = v26;

    v28 = [(UIView *)self->_stickerButton trailingAnchor];
    v29 = [(UIView *)self->_searchTextFieldContainerView trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    buttonConstraintTwoButtons = self->_buttonConstraintTwoButtons;
    self->_buttonConstraintTwoButtons = v30;

    v68 = MEMORY[0x1E696ACD8];
    v67 = [(UIView *)self->_createButton topAnchor];
    v87 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
    v86 = [v67 constraintEqualToAnchor:v87];
    v89[0] = v86;
    v83 = [(UIView *)self->_createButton bottomAnchor];
    v82 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
    v81 = [v83 constraintEqualToAnchor:v82];
    v89[1] = v81;
    v80 = [(UIView *)self->_createButton widthAnchor];
    v79 = [(UIView *)self->_createButton heightAnchor];
    v78 = [v80 constraintGreaterThanOrEqualToAnchor:v79];
    v89[2] = v78;
    v77 = [(UIView *)self->_stickerButton topAnchor];
    v76 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
    v75 = [v77 constraintEqualToAnchor:v76];
    v89[3] = v75;
    v74 = [(UIView *)self->_stickerButton bottomAnchor];
    v73 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
    v72 = [v74 constraintEqualToAnchor:v73];
    v89[4] = v72;
    v71 = [(UIView *)self->_stickerButton leadingAnchor];
    v70 = [(UIView *)self->_createButton trailingAnchor];
    v69 = [v71 constraintEqualToAnchor:v70 constant:*&kHorizontalPadding];
    v89[5] = v69;
    v66 = [(UIView *)self->_stickerButton widthAnchor];
    v65 = [(UIView *)self->_stickerButton heightAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v89[6] = v64;
    v63 = [(UIView *)self->_memojiButton topAnchor];
    v62 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v89[7] = v61;
    v60 = [(UIView *)self->_memojiButton bottomAnchor];
    v59 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v89[8] = v58;
    v57 = [(UIView *)self->_memojiButton leadingAnchor];
    v56 = [(UIView *)self->_createButton trailingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56 constant:*&kHorizontalPadding];
    v89[9] = v55;
    v54 = [(UIView *)self->_memojiButton widthAnchor];
    v53 = [(UIView *)self->_memojiButton heightAnchor];
    v52 = [v54 constraintEqualToAnchor:v53];
    v89[10] = v52;
    v51 = [(UIView *)self->_animojiButton topAnchor];
    v50 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v89[11] = v49;
    v32 = [(UIView *)self->_animojiButton bottomAnchor];
    v33 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v89[12] = v34;
    v35 = [(UIView *)self->_animojiButton leadingAnchor];
    v36 = [(UIView *)self->_createButton trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:*&kHorizontalPadding];
    v89[13] = v37;
    v38 = [(UIView *)self->_animojiButton widthAnchor];
    v39 = [(UIView *)self->_animojiButton heightAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v41 = self->_buttonConstraintNoButton;
    v89[14] = v40;
    v89[15] = v41;
    v89[16] = self->_buttonConstraintFirstButtonDisabled;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:17];
    [v68 activateConstraints:v42];

    v43 = v67;
  }

  else
  {
    v44 = [(TUIEmojiSearchTextField *)self->_searchTextField trailingAnchor];
    v45 = [(UIView *)self->_searchTextFieldContainerView trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:0.0];
    v47 = self->_buttonConstraintNoButton;
    self->_buttonConstraintNoButton = v46;

    v48 = MEMORY[0x1E696ACD8];
    v88 = self->_buttonConstraintNoButton;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    [v48 activateConstraints:v43];
  }
}

- (void)_createPredictionViewConstraints
{
  v42[4] = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self->_predictionView superview];
  predictionViewWrapperView = self->_predictionViewWrapperView;

  if (v3 == predictionViewWrapperView)
  {
    if (!self->_predictionViewGuide)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCC20]);
      predictionViewGuide = self->_predictionViewGuide;
      self->_predictionViewGuide = v5;

      [(UILayoutGuide *)self->_predictionViewGuide setIdentifier:@"predictionViewGuide"];
      [(UIView *)self->_predictionViewWrapperView addLayoutGuide:self->_predictionViewGuide];
    }

    v7 = [(UIView *)self->_predictionViewWrapperView trailingAnchor];
    v8 = [(UILayoutGuide *)self->_predictionViewGuide trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:6.0];

    LODWORD(v10) = 1148829696;
    [v9 setPriority:v10];
    v38 = [(UILayoutGuide *)self->_predictionViewGuide leadingAnchor];
    v11 = [(UIView *)self->_predictionViewWrapperView leadingAnchor];
    v12 = [v38 constraintEqualToAnchor:v11];
    v42[0] = v12;
    v13 = [(UILayoutGuide *)self->_predictionViewGuide topAnchor];
    v14 = [(UIView *)self->_predictionViewWrapperView topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v42[1] = v15;
    v42[2] = v9;
    v40 = v9;
    v16 = [(UIView *)self->_predictionViewWrapperView bottomAnchor];
    v17 = [(UILayoutGuide *)self->_predictionViewGuide bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v42[3] = v18;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];

    if (!self->_predictionWrapperTop)
    {
      v19 = [(UIView *)self->_predictionViewWrapperView topAnchor];
      v20 = [(UIView *)self->_bottomHalfContainerView topAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];
      predictionWrapperTop = self->_predictionWrapperTop;
      self->_predictionWrapperTop = v21;

      [(NSLayoutConstraint *)self->_predictionWrapperTop setIdentifier:@"predictionViewWrapper.top"];
    }

    if (!self->_predictionWrapperLeading)
    {
      v23 = [(UIView *)self->_predictionViewWrapperView leadingAnchor];
      v24 = [(UIView *)self->_bottomHalfContainerView leadingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:0.0];
      predictionWrapperLeading = self->_predictionWrapperLeading;
      self->_predictionWrapperLeading = v25;

      [(NSLayoutConstraint *)self->_predictionWrapperLeading setIdentifier:@"predictionViewWrapper.leading"];
    }

    if (!self->_predictionWrapperBottom)
    {
      v27 = [(UIView *)self->_bottomHalfContainerView bottomAnchor];
      v28 = [(UIView *)self->_predictionViewWrapperView bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28 constant:0.0];
      predictionWrapperBottom = self->_predictionWrapperBottom;
      self->_predictionWrapperBottom = v29;

      [(NSLayoutConstraint *)self->_predictionWrapperBottom setIdentifier:@"predictionViewWrapper.bottom"];
    }

    v31 = [(UIView *)self->_bottomHalfContainerView trailingAnchor];
    v32 = [(UIView *)self->_predictionViewWrapperView trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setIdentifier:@"predictionViewWrapper.trailing"];
    v34 = self->_predictionWrapperLeading;
    v41[0] = self->_predictionWrapperTop;
    v41[1] = v34;
    v41[2] = self->_predictionWrapperBottom;
    v41[3] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    v36 = [v39 arrayByAddingObjectsFromArray:v35];
    predictionWrapperConstraints = self->_predictionWrapperConstraints;
    self->_predictionWrapperConstraints = v36;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_predictionWrapperConstraints];
  }
}

- (void)_createResultsViewConstraints
{
  v3 = [(UIView *)self->_resultsCollectionView superview];
  resultsCollectionContainerView = self->_resultsCollectionContainerView;

  if (v3 == resultsCollectionContainerView)
  {
    resultsCollectionWrapperConstraints = self->_resultsCollectionWrapperConstraints;
    if (resultsCollectionWrapperConstraints)
    {
      v6 = [(NSArray *)resultsCollectionWrapperConstraints firstObject];
      v7 = [v6 isActive];

      if (v7)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:self->_resultsCollectionWrapperConstraints];
      }
    }

    v8 = *MEMORY[0x1E69DDCE0];
    v9 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
    v15 = [(TUIEmojiSearchView *)self _constraintsFromView:self->_resultsCollectionView toContainerView:self->_resultsCollectionContainerView insets:@"resultsCollection" identifier:*MEMORY[0x1E69DDCE0], v9, v10, v11];
    v12 = [(TUIEmojiSearchView *)self _constraintsFromView:self->_resultsCollectionContainerView toContainerView:self->_bottomHalfContainerView insets:@"resultsContainer" identifier:v8, v9, v10, v11];
    v13 = [v15 arrayByAddingObjectsFromArray:v12];
    v14 = self->_resultsCollectionWrapperConstraints;
    self->_resultsCollectionWrapperConstraints = v13;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_resultsCollectionWrapperConstraints];
  }
}

- (void)updateWidthRatioIfNeeded
{
  v3 = [(TUIEmojiSearchView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x1E69DCBB8] activeKeyboard];
    v6 = [v5 interfaceOrientation] - 1;

    widthRatio = self->_widthRatio;
    v8 = -120.0;
    if (v6 >= 2)
    {
      v8 = 0.0;
    }

    [(NSLayoutConstraint *)widthRatio setConstant:v8];
  }
}

- (void)updateInsetsIfNeeded:(UIEdgeInsets)a3
{
  if (self->_useHorizontalLayout)
  {
    v15 = v9;
    v16 = v5;
    v17 = v4;
    v18 = v3;
    v12 = 10.0;
    if (TUIRemoteEmojiSearchViewControllerEnabled())
    {
      v13 = [(TUIEmojiSearchView *)self traitCollection];
      v14 = [v13 userInterfaceIdiom];

      if (v14 == 1)
      {
        v12 = -10.0;
      }

      else
      {
        v12 = 10.0;
      }
    }

    [(NSLayoutConstraint *)self->_searchFieldLeading setConstant:v12, v10, v15, v6, v16, v17, v18, v7];

    [(TUIEmojiSearchView *)self layoutIfNeeded];
  }
}

- (void)createConstraintsIfNeeded
{
  v108[8] = *MEMORY[0x1E69E9840];
  if (!self->_searchFieldToTop)
  {
    v3 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
    v4 = [(TUIEmojiSearchView *)self topAnchor];
    v5 = [v3 constraintEqualToAnchor:v4 constant:0.0];
    searchFieldToTop = self->_searchFieldToTop;
    self->_searchFieldToTop = v5;

    [(NSLayoutConstraint *)self->_searchFieldToTop setIdentifier:@"searchField.top"];
    LODWORD(v7) = 1148829696;
    [(NSLayoutConstraint *)self->_searchFieldToTop setPriority:v7];
  }

  v8 = [(TUIEmojiSearchView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = [(UIView *)self->_searchTextFieldContainerView heightAnchor];
  +[TUIEmojiSearchTextField preferredHeight];
  v12 = [v10 constraintEqualToConstant:v11 + -13.0];

  [v12 setIdentifier:@"searchField.height"];
  if (!self->_textFieldOnTopConstraints)
  {
    v104 = v9;
    if (_UISolariumEnabled())
    {
      kHorizontalPadding = 0x4022000000000000;
    }

    v13 = [(UIView *)self->_searchTextFieldContainerView leadingAnchor];
    v14 = [(TUIEmojiSearchView *)self leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:*&kHorizontalPadding];

    LODWORD(v16) = 1148829696;
    [v15 setPriority:v16];
    [v15 setIdentifier:@"searchField.leading"];
    v17 = [(TUIEmojiSearchView *)self trailingAnchor];
    v18 = [(UIView *)self->_searchTextFieldContainerView trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:*&kHorizontalPadding];

    LODWORD(v20) = 1148829696;
    [v19 setPriority:v20];
    [v19 setIdentifier:@"searchField.trailing"];
    v21 = [(UIView *)self->_bottomHalfContainerView topAnchor];
    v22 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
    topToBottomPadding = self->_topToBottomPadding;
    self->_topToBottomPadding = v23;

    [(NSLayoutConstraint *)self->_topToBottomPadding setIdentifier:@"verticalSearchSpacing"];
    v25 = [(UIView *)self->_bottomHalfContainerView leadingAnchor];
    v26 = [(TUIEmojiSearchView *)self leadingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:0.0];

    [v27 setIdentifier:@"bottomContainer.leading"];
    v28 = [(TUIEmojiSearchView *)self bottomAnchor];
    v29 = [(UIView *)self->_bottomHalfContainerView bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:0.0];

    [v30 setIdentifier:@"bottomContainer.bottom"];
    v31 = [(TUIEmojiSearchView *)self trailingAnchor];
    v32 = [(UIView *)self->_bottomHalfContainerView trailingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:0.0];

    [v33 setIdentifier:@"bottomContainer.trailing"];
    v34 = self->_topToBottomPadding;
    v108[0] = self->_searchFieldToTop;
    v108[1] = v34;
    v108[2] = v30;
    v108[3] = v12;
    v108[4] = v15;
    v108[5] = v19;
    v108[6] = v27;
    v108[7] = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v108 count:8];
    textFieldOnTopConstraints = self->_textFieldOnTopConstraints;
    self->_textFieldOnTopConstraints = v35;

    v9 = v104;
  }

  if (self->_sideBySideViewConstraints)
  {
    v37 = 0;
  }

  else
  {
    v37 = v9 == 1;
  }

  if (v37)
  {
    v105 = v9;
    v38 = TUIRemoteEmojiSearchViewControllerEnabled();
    searchTextFieldContainerView = self->_searchTextFieldContainerView;
    if (v38)
    {
      v40 = [(UIView *)searchTextFieldContainerView trailingAnchor];
      v41 = [(TUIEmojiSearchView *)self trailingAnchor];
      v42 = [v40 constraintEqualToAnchor:v41 constant:0.0];
      searchFieldLeading = self->_searchFieldLeading;
      self->_searchFieldLeading = v42;

      LODWORD(v44) = 1148829696;
      [(NSLayoutConstraint *)self->_searchFieldLeading setPriority:v44];
      [(NSLayoutConstraint *)self->_searchFieldLeading setIdentifier:@"searchField.leading"];
      v45 = [(UIView *)self->_bottomHalfContainerView bottomAnchor];
      v46 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
      v47 = [v45 constraintEqualToAnchor:v46 constant:4.0];

      [v47 setIdentifier:@"bottomContainer.bottom"];
      v48 = [(UIView *)self->_bottomHalfContainerView trailingAnchor];
      v49 = [(UIView *)self->_searchTextFieldContainerView leadingAnchor];
      v50 = [v48 constraintEqualToAnchor:v49 constant:0.0];

      [v50 setIdentifier:@"bottomContainer.leading"];
      LODWORD(v51) = 1148846080;
      [(UIView *)self->_searchTextFieldContainerView setContentHuggingPriority:1 forAxis:v51];
      LODWORD(v52) = 1112014848;
      [(UIView *)self->_searchTextFieldContainerView setContentHuggingPriority:0 forAxis:v52];
      LODWORD(v53) = 1148846080;
      [(UIView *)self->_searchTextFieldContainerView setContentCompressionResistancePriority:1 forAxis:v53];
      v54 = [(TUIEmojiSearchView *)self topAnchor];
      v55 = [(UIView *)self->_bottomHalfContainerView topAnchor];
      v56 = [v54 constraintEqualToAnchor:v55 constant:-4.0];

      [v56 setIdentifier:@"bottomContainer.top"];
      v57 = [(TUIEmojiSearchView *)self leadingAnchor];
      v58 = [(UIView *)self->_bottomHalfContainerView leadingAnchor];
      v59 = [v57 constraintEqualToAnchor:v58 constant:0.0];

      [v59 setIdentifier:@"bottomContainer.trailing"];
      v60 = [(UIView *)self->_bottomHalfContainerView widthAnchor];
      v61 = [(UIView *)self->_searchTextFieldContainerView widthAnchor];
      v62 = [v60 constraintEqualToAnchor:v61 multiplier:2.0];
      widthRatio = self->_widthRatio;
      self->_widthRatio = v62;

      [(NSLayoutConstraint *)self->_widthRatio setIdentifier:@"searchToResults.width"];
      v107[0] = self->_searchFieldToTop;
      v107[1] = v12;
      v107[2] = self->_searchFieldLeading;
      v107[3] = v47;
      v107[4] = v56;
      v107[5] = v50;
      v64 = self->_widthRatio;
      v107[6] = v59;
      v107[7] = v64;
      v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:8];
      sideBySideViewConstraints = self->_sideBySideViewConstraints;
      self->_sideBySideViewConstraints = v65;
    }

    else
    {
      v67 = [(UIView *)searchTextFieldContainerView leadingAnchor];
      v68 = [(TUIEmojiSearchView *)self leadingAnchor];
      v69 = [v67 constraintEqualToAnchor:v68 constant:0.0];
      v70 = self->_searchFieldLeading;
      self->_searchFieldLeading = v69;

      LODWORD(v71) = 1148829696;
      [(NSLayoutConstraint *)self->_searchFieldLeading setPriority:v71];
      [(NSLayoutConstraint *)self->_searchFieldLeading setIdentifier:@"searchField.leading"];
      v72 = [(TUIEmojiSearchView *)self bottomAnchor];
      v73 = [(UIView *)self->_searchTextFieldContainerView bottomAnchor];
      v103 = [v72 constraintEqualToAnchor:v73 constant:0.0];

      [v103 setIdentifier:@"searchField.bottom"];
      v74 = [(UIView *)self->_bottomHalfContainerView topAnchor];
      v75 = [(UIView *)self->_searchTextFieldContainerView topAnchor];
      v50 = [v74 constraintEqualToAnchor:v75];

      [v50 setIdentifier:@"bottomContainer.top"];
      v76 = [(UIView *)self->_bottomHalfContainerView leadingAnchor];
      v77 = [(UIView *)self->_searchTextFieldContainerView trailingAnchor];
      v56 = [v76 constraintEqualToAnchor:v77 constant:8.0];

      [v56 setIdentifier:@"bottomContainer.leading"];
      v78 = [(TUIEmojiSearchView *)self bottomAnchor];
      v79 = [(UIView *)self->_bottomHalfContainerView bottomAnchor];
      v59 = [v78 constraintEqualToAnchor:v79 constant:0.0];

      [v59 setIdentifier:@"bottomContainer.bottom"];
      v80 = [(TUIEmojiSearchView *)self trailingAnchor];
      v81 = [(UIView *)self->_bottomHalfContainerView trailingAnchor];
      sideBySideViewConstraints = [v80 constraintEqualToAnchor:v81 constant:0.0];

      [sideBySideViewConstraints setIdentifier:@"bottomContainer.trailing"];
      v47 = v103;
      v82 = [(UIView *)self->_bottomHalfContainerView widthAnchor];
      v83 = [(UIView *)self->_searchTextFieldContainerView widthAnchor];
      v84 = [v82 constraintEqualToAnchor:v83 multiplier:2.0];

      [v84 setIdentifier:@"searchToResults.width"];
      v106[0] = self->_searchFieldToTop;
      v106[1] = v103;
      v85 = self->_searchFieldLeading;
      v106[2] = v12;
      v106[3] = v85;
      v106[4] = v50;
      v106[5] = v59;
      v106[6] = v56;
      v106[7] = sideBySideViewConstraints;
      v106[8] = v84;
      v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:9];
      v87 = self->_sideBySideViewConstraints;
      self->_sideBySideViewConstraints = v86;
    }

    v9 = v105;
  }

  if (!self->_resultsCollectionWrapperConstraints)
  {
    [(TUIEmojiSearchView *)self _createResultsViewConstraints];
  }

  if (!self->_predictionWrapperConstraints)
  {
    [(TUIEmojiSearchView *)self _createPredictionViewConstraints];
  }

  if (!self->_buttonConstraintNoButton)
  {
    [(TUIEmojiSearchView *)self _createSearchTextFieldAndButtonConstraints];
  }

  if (self->_useHorizontalLayout)
  {
    v88 = [(NSArray *)self->_sideBySideViewConstraints firstObject];
    v89 = [v88 isActive];

    if ((v89 & 1) == 0)
    {
      [MEMORY[0x1E696ACD8] activateConstraints:self->_sideBySideViewConstraints];
    }

    if (v9 != 1 || ([MEMORY[0x1E69DCBE0] isFloating] & 1) != 0 || (v90 = 4.0, (_UISolariumEnabled() & 1) == 0))
    {
      v90 = 12.0;
    }

    [(NSLayoutConstraint *)self->_searchFieldToTop setConstant:v90];
    [(TUIEmojiSearchView *)self updateWidthRatioIfNeeded];
    [MEMORY[0x1E69DCBB8] keyplanePadding];
    [(TUIEmojiSearchView *)self updateInsetsIfNeeded:?];
    goto LABEL_46;
  }

  v91 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
  v92 = [v91 currentInputMode];

  v93 = [v92 softwareLayout];
  if ([v93 containsString:@"HWR"])
  {
    v94 = [(TUIEmojiSearchView *)self traitCollection];
    v95 = [v94 horizontalSizeClass];

    if (v95 == 1)
    {
      v96 = 0.0;
    }

    else
    {
      v96 = 6.0;
    }
  }

  else
  {

    v96 = 6.0;
  }

  v97 = [(NSArray *)self->_textFieldOnTopConstraints firstObject];
  v98 = [v97 isActive];

  if ((v98 & 1) == 0)
  {
    [MEMORY[0x1E696ACD8] activateConstraints:self->_textFieldOnTopConstraints];
  }

  if (!_UISolariumEnabled())
  {
    v100 = v9 == 1;
    v99 = 2.0;
LABEL_41:
    if (!v100)
    {
      v99 = 10.0;
    }

    goto LABEL_43;
  }

  v99 = 10.0;
  if (v9 == 1)
  {
    v100 = [MEMORY[0x1E69DCBE0] isFloating] == 0;
    v99 = 4.0;
    goto LABEL_41;
  }

LABEL_43:
  [(NSLayoutConstraint *)self->_searchFieldToTop setConstant:v99];
  v101 = [(TUIEmojiSearchView *)self isCollapsed];
  v102 = 0.0;
  if (!v101)
  {
    v102 = v96;
  }

  [(NSLayoutConstraint *)self->_topToBottomPadding setConstant:v102];

LABEL_46:
  [(TUIEmojiSearchView *)self layoutIfNeeded];
}

- (void)hideTip
{
  v3 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 didTriggerOneTimeAction:@"KeyboardDidShowGenmojiTip"];

  v5 = [(TUIGenmojiTipView *)self->_tipView hostingController];
  [v5 willMoveToParentViewController:0];

  [(TUIGenmojiTipView *)self->_tipView removeFromSuperview];
  v6 = [(TUIGenmojiTipView *)self->_tipView hostingController];
  [v6 removeFromParentViewController];

  tipView = self->_tipView;
  self->_tipView = 0;
}

- (void)showTipIfNeeded
{
  v41[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCC00] sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = [v4 oneTimeActionCompleted:@"KeyboardDidShowGenmojiTip"];

  if ((v5 & 1) != 0 || !+[TUIEmojiSearchView shouldShowGenmoji](TUIEmojiSearchView, "shouldShowGenmoji") || !+[TUIEmojiSearchView shouldShowImages])
  {
    return;
  }

  NSClassFromString(&cfstr_Uipopoverview.isa);
  v6 = [(TUIEmojiSearchView *)self superview];
  if (!v6)
  {
LABEL_7:
    objc_initWeak(&location, self);
    if (!self->_tipView)
    {
      v8 = [(TUIGenmojiButton *)self->_genmojiButton window];
      v9 = [v8 rootViewController];
      if (!v9)
      {
LABEL_16:

        goto LABEL_17;
      }

      v10 = v9;
      v11 = [(TUIEmojiSearchView *)self window];
      v12 = [v11 rootViewController];
      if (!v12)
      {

        goto LABEL_16;
      }

      v13 = v12;
      v14 = [(TUIEmojiSearchTextField *)self->_searchTextField window];
      v15 = [v14 rootViewController];

      if (v15)
      {
        v16 = [(TUIEmojiSearchView *)self window];
        v8 = [v16 rootViewController];

        v17 = [TUIGenmojiTipView alloc];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __37__TUIEmojiSearchView_showTipIfNeeded__block_invoke;
        v38[3] = &unk_1E72D7FD8;
        objc_copyWeak(&v39, &location);
        v18 = [(TUIGenmojiTipView *)v17 initWith:v38];
        tipView = self->_tipView;
        self->_tipView = v18;

        [(TUIGenmojiTipView *)self->_tipView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(TUIGenmojiTipView *)self->_tipView setUserInteractionEnabled:0];
        v20 = [(TUIGenmojiTipView *)self->_tipView hostingController];
        [v8 addChildViewController:v20];

        v21 = [v8 view];
        [v21 addSubview:self->_tipView];

        v22 = [(TUIGenmojiTipView *)self->_tipView hostingController];
        [v22 didMoveToParentViewController:v8];

        v32 = MEMORY[0x1E696ACD8];
        v37 = [(TUIGenmojiTipView *)self->_tipView topAnchor];
        v35 = [(TUIGenmojiButton *)self->_genmojiButton topAnchor];
        v34 = [v37 constraintEqualToAnchor:v35 constant:-5.0];
        v41[0] = v34;
        v33 = [(TUIGenmojiTipView *)self->_tipView bottomAnchor];
        v31 = [(TUIGenmojiButton *)self->_genmojiButton bottomAnchor];
        v30 = [v33 constraintEqualToAnchor:v31 constant:5.0];
        v41[1] = v30;
        v29 = [(TUIGenmojiTipView *)self->_tipView leadingAnchor];
        v23 = [(TUIGenmojiButton *)self->_genmojiButton leadingAnchor];
        v24 = [v29 constraintEqualToAnchor:v23];
        v41[2] = v24;
        v25 = [(TUIGenmojiTipView *)self->_tipView trailingAnchor];
        v26 = [(TUIGenmojiButton *)self->_genmojiButton trailingAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];
        v41[3] = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
        [v32 activateConstraints:v28];

        [(TUIGenmojiTipView *)self->_tipView setNeedsLayout];
        [(TUIGenmojiTipView *)self->_tipView layoutIfNeeded];
        objc_destroyWeak(&v39);
        goto LABEL_16;
      }
    }

LABEL_17:
    objc_destroyWeak(&location);
    return;
  }

  while (1)
  {
    v36 = v6;
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v7 = [v36 superview];

    v6 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }
}

void __37__TUIEmojiSearchView_showTipIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained hideTip];
    WeakRetained = v2;
  }
}

- (void)didMoveToWindow
{
  v3 = [(TUIEmojiSearchView *)self window];

  if (v3)
  {
    [(TUIEmojiSearchView *)self updateButtons];
    [(TUIGenmojiButton *)self->_genmojiButton layoutIfNeeded];

    [(TUIEmojiSearchView *)self showTipIfNeeded];
  }

  else
  {
    overridingPlaceholder = self->_overridingPlaceholder;
    self->_overridingPlaceholder = 0;
  }
}

- (void)setResultsViewVisible:(BOOL)a3
{
  if (self->_resultsViewVisible != a3)
  {
    self->_resultsViewVisible = a3;
    [(UIView *)self->_bottomHalfContainerView setHidden:!a3];
    if (!a3)
    {
      [(TUIEmojiSearchView *)self transitionToCompactLayout:1];
    }

    [(TUIEmojiSearchView *)self setNeedsLayout];
    v5 = [(TUIEmojiSearchView *)self layoutInvalidationCallback];

    if (v5)
    {
      v6 = [(TUIEmojiSearchView *)self layoutInvalidationCallback];
      v6[2]();
    }
  }
}

- (void)setPredictionViewVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (self->_predictionViewVisible != a3 || (v7 = [(UIView *)self->_predictionViewWrapperView isHidden], v7 == [(UIView *)self->_resultsCollectionContainerView isHidden]))
  {
    self->_predictionViewVisible = v5;
    v8 = &OBJC_IVAR___TUIEmojiSearchView__resultsCollectionContainerView;
    if (v5)
    {
      v8 = &OBJC_IVAR___TUIEmojiSearchView__predictionViewWrapperView;
    }

    v9 = *(&self->super.super.super.isa + *v8);
    if (v5)
    {
      v10 = self->_resultsCollectionContainerView;
    }

    else
    {
      v10 = [(UIView *)self->_predictionViewWrapperView snapshotViewAfterScreenUpdates:0];
    }

    v11 = v10;
    [v9 setHidden:0];
    [(UIView *)self->_bottomHalfContainerView bringSubviewToFront:v9];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__TUIEmojiSearchView_setPredictionViewVisible_animated___block_invoke;
    aBlock[3] = &unk_1E72D7538;
    v29 = v5;
    v12 = v11;
    v27 = v12;
    v13 = v9;
    v28 = v13;
    v14 = _Block_copy(aBlock);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __56__TUIEmojiSearchView_setPredictionViewVisible_animated___block_invoke_4;
    v22 = &unk_1E72D7560;
    v15 = v12;
    v25 = v5;
    v23 = v15;
    v24 = self;
    v16 = _Block_copy(&v19);
    if (v4)
    {
      if (!v5)
      {
        [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0, v19, v20, v21, v22];
        [(UIView *)self->_bottomHalfContainerView addSubview:v15];
        v17 = MEMORY[0x1E696ACD8];
        v18 = [(TUIEmojiSearchView *)self _constraintsFromView:v15 toContainerView:self->_predictionViewWrapperView insets:@"snapshot" identifier:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
        [v17 activateConstraints:v18];

        [(UIView *)self->_predictionViewWrapperView setHidden:1];
      }

      [MEMORY[0x1E69DD250] animateKeyframesWithDuration:1 delay:v14 options:v16 animations:0.2 completion:{0.0, v19, v20, v21, v22}];
    }

    else
    {
      v14[2](v14);
      v16[2](v16, 1);
    }
  }
}

void __56__TUIEmojiSearchView_setPredictionViewVisible_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 0.5;
  }

  v3 = MEMORY[0x1E69DD250];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__TUIEmojiSearchView_setPredictionViewVisible_animated___block_invoke_2;
  v7[3] = &unk_1E72D83A0;
  v8 = *(a1 + 32);
  [v3 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.0 animations:1.0];
  v4 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__TUIEmojiSearchView_setPredictionViewVisible_animated___block_invoke_3;
  v5[3] = &unk_1E72D83A0;
  v6 = *(a1 + 40);
  [v4 addKeyframeWithRelativeStartTime:v5 relativeDuration:v2 animations:1.0 - v2];
}

void __56__TUIEmojiSearchView_setPredictionViewVisible_animated___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) setHidden:1];
    if ((*(a1 + 48) & 1) == 0)
    {
      [*(a1 + 32) removeFromSuperview];
    }

    v3 = [*(a1 + 40) layoutInvalidationCallback];

    if (v3)
    {
      v4 = [*(a1 + 40) layoutInvalidationCallback];
      v4[2]();
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUIEmojiSearchView;
  [(TUIEmojiSearchView *)&v3 layoutSubviews];
  [(TUIEmojiSearchView *)self updateGlowEffects];
  if (![(TUIEmojiSearchView *)self isCollapsed])
  {
    [(UILayoutGuide *)self->_predictionViewGuide layoutFrame];
    [(UIView *)self->_predictionView setFrame:?];
  }
}

- (void)setCollapsed:(BOOL)a3
{
  if (self->_collapsed == a3)
  {
    return;
  }

  v4 = a3;
  self->_collapsed = a3;
  [(TUIEmojiSearchView *)self createConstraintsIfNeeded];
  [(UIView *)self->_bottomHalfContainerView setHidden:v4];
  [(TUIEmojiSearchView *)self invalidateCollectionViewLayoutIfNeeded];
  if (v4)
  {
    [(TUIEmojiSearchView *)self setShouldCreateButtonGlow:0 animated:0];
  }

  if (self->_useHorizontalLayout)
  {
    if (TUIRemoteEmojiSearchViewControllerEnabled())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
  }

  [(TUIEmojiSearchView *)self setHidden:v4];
LABEL_9:

  [(TUIEmojiSearchView *)self layoutIfNeeded];
}

- (void)setPredictionView:(id)a3
{
  v5 = a3;
  predictionView = self->_predictionView;
  v10 = v5;
  if (predictionView != v5)
  {
    [(UIView *)predictionView removeFromSuperview];
    if (self->_predictionWrapperConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
      predictionWrapperConstraints = self->_predictionWrapperConstraints;
      self->_predictionWrapperConstraints = 0;
    }

    objc_storeStrong(&self->_predictionView, a3);
    [(UIView *)self->_predictionView setHidden:0];
    [(TUIEmojiSearchView *)self setPredictionViewVisible:0 animated:0];
    predictionView = self->_predictionView;
  }

  v8 = [(UIView *)predictionView superview];
  predictionViewWrapperView = self->_predictionViewWrapperView;

  if (v8 != predictionViewWrapperView)
  {
    [(UIView *)self->_predictionViewWrapperView addSubview:self->_predictionView];
    [(TUIEmojiSearchView *)self setNeedsLayout];
  }

  if (!self->_predictionWrapperConstraints)
  {
    [(TUIEmojiSearchView *)self _createPredictionViewConstraints];
  }
}

- (void)setResultsCollectionView:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_resultsCollectionView, a3);
  v5 = [(UIView *)self->_resultsCollectionView superview];
  resultsCollectionContainerView = self->_resultsCollectionContainerView;

  if (v5 != resultsCollectionContainerView)
  {
    [(UIView *)self->_resultsCollectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_resultsCollectionContainerView addSubview:self->_resultsCollectionView];
    if (!self->_resultsCollectionWrapperConstraints)
    {
      [(TUIEmojiSearchView *)self _createResultsViewConstraints];
    }
  }

  [(TUIEmojiSearchView *)self setNeedsLayout];
  v7 = self->_predictionViewVisible && !self->_resultsViewVisible;
  [(UIView *)self->_resultsCollectionView setHidden:v7];
  [(TUIEmojiSearchView *)self invalidateCollectionViewLayoutIfNeeded];
}

- (void)transitionToCompactLayout:(BOOL)a3
{
  v3 = a3;
  [(TUIEmojiSearchView *)self createConstraintsIfNeeded];
  v5 = [(TUIEmojiSearchView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1)
  {
    goto LABEL_16;
  }

  self->_useHorizontalLayout = !v3;
  if (!v3)
  {
    if ((TUIRemoteEmojiSearchViewControllerEnabled() & 1) == 0)
    {
      [(TUIEmojiSearchView *)self setHidden:[(TUIEmojiSearchView *)self isCollapsed]];
    }

    p_textFieldOnTopConstraints = &self->_textFieldOnTopConstraints;
    v11 = [(NSArray *)self->_textFieldOnTopConstraints firstObject];
    v12 = [v11 isActive];

    if (!v12)
    {
      goto LABEL_10;
    }

    v10 = &OBJC_IVAR___TUIEmojiSearchView__sideBySideViewConstraints;
    goto LABEL_9;
  }

  [(TUIEmojiSearchView *)self setHidden:0];
  p_textFieldOnTopConstraints = &self->_sideBySideViewConstraints;
  v8 = [(NSArray *)self->_sideBySideViewConstraints firstObject];
  v9 = [v8 isActive];

  if (v9)
  {
    v10 = &OBJC_IVAR___TUIEmojiSearchView__textFieldOnTopConstraints;
LABEL_9:
    [MEMORY[0x1E696ACD8] deactivateConstraints:*p_textFieldOnTopConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:*(&self->super.super.super.isa + *v10)];
  }

LABEL_10:
  v13 = [MEMORY[0x1E69DCBE0] activeInstance];
  v14 = [v13 showsCandidateBar];

  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    if (self->_useHorizontalLayout)
    {
      v15 = -9.0;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = 6.0;
  }

  [(NSLayoutConstraint *)self->_predictionWrapperTop setConstant:v15];
  [(NSLayoutConstraint *)self->_predictionWrapperBottom setConstant:v15];
  [(NSLayoutConstraint *)self->_predictionWrapperLeading setConstant:v16];
LABEL_16:

  [(TUIEmojiSearchView *)self invalidateCollectionViewLayoutIfNeeded];
}

- (void)invalidateCollectionViewLayoutIfNeeded
{
  if ((TUIRemoteEmojiSearchViewControllerEnabled() & 1) == 0)
  {
    v3 = [(TUIEmojiSearchView *)self resultsCollectionView];
    v4 = [v3 collectionViewLayout];
    [v4 invalidateLayout];
  }

  v5 = [(TUIEmojiSearchView *)self layoutInvalidationCallback];

  if (v5)
  {
    v6 = [(TUIEmojiSearchView *)self layoutInvalidationCallback];
    v6[2]();
  }
}

- (id)addButtonForAction:(id)a3 strippingAlignmentRectInsetsFromImage:(id)a4 accessibilityLabel:(id)a5 addLightEffect:(BOOL)a6
{
  v6 = a6;
  v10 = *MEMORY[0x1E69DDCE0];
  v11 = *(MEMORY[0x1E69DDCE0] + 8);
  v12 = *(MEMORY[0x1E69DDCE0] + 16);
  v13 = *(MEMORY[0x1E69DDCE0] + 24);
  v14 = a5;
  v15 = a3;
  v16 = [a4 imageWithAlignmentRectInsets:{v10, v11, v12, v13}];
  v17 = [(TUIEmojiSearchView *)self addButtonForAction:v15 image:v16 accessibilityLabel:v14 addLightEffect:v6];

  return v17;
}

- (id)addButtonForAction:(id)a3 image:(id)a4 accessibilityLabel:(id)a5 addLightEffect:(BOOL)a6
{
  v6 = a6;
  v66[4] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = MEMORY[0x1E69DC740];
  v12 = a5;
  v13 = a4;
  v14 = [v11 plainButtonConfiguration];
  [v14 setImage:v13];

  v61 = v14;
  v62 = v10;
  v60 = self;
  if (v6)
  {
    v15 = [[TUIGenmojiButton alloc] initWithAction:v10];
    genmojiButton = self->_genmojiButton;
    self->_genmojiButton = v15;

    v17 = self->_genmojiButton;
  }

  else
  {
    v18 = MEMORY[0x1E69DC738];
    v19 = MEMORY[0x1E69DC628];
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __81__TUIEmojiSearchView_addButtonForAction_image_accessibilityLabel_addLightEffect___block_invoke;
    v63[3] = &unk_1E72D7510;
    v64 = v10;
    v20 = [v19 actionWithHandler:v63];
    v17 = [v18 buttonWithConfiguration:v14 primaryAction:v20];
  }

  [(TUIGenmojiButton *)v17 setAccessibilityLabel:v12];

  [(TUIGenmojiButton *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [MEMORY[0x1E69DC888] labelColor];
  v22 = v21 = v17;
  v58 = v21;
  [(TUIGenmojiButton *)v21 setTintColor:v22];

  v23 = [TUIEmojiSearchTextFieldBackgroundView alloc];
  [(TUIGenmojiButton *)v21 bounds];
  v24 = [(TUIEmojiSearchTextFieldBackgroundView *)v23 initWithFrame:?];
  [(TUIEmojiSearchTextFieldBackgroundView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = objc_alloc(MEMORY[0x1E69DD250]);
  v26 = [v25 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v26 setAlpha:0.0];
  v27 = [v26 layer];
  [v27 setAllowsGroupBlending:0];

  v28 = [v26 layer];
  [v28 setAllowsGroupOpacity:0];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 addSubview:v24];
  v48 = MEMORY[0x1E696ACD8];
  v56 = [(TUIEmojiSearchTextFieldBackgroundView *)v24 topAnchor];
  v54 = [v26 topAnchor];
  v52 = [v56 constraintEqualToAnchor:v54];
  v66[0] = v52;
  v50 = [(TUIEmojiSearchTextFieldBackgroundView *)v24 bottomAnchor];
  v29 = [v26 bottomAnchor];
  v30 = [v50 constraintEqualToAnchor:v29];
  v66[1] = v30;
  v59 = v24;
  v31 = [(TUIEmojiSearchTextFieldBackgroundView *)v24 leadingAnchor];
  v32 = [v26 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v66[2] = v33;
  v34 = [(TUIEmojiSearchTextFieldBackgroundView *)v24 trailingAnchor];
  v35 = [v26 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v66[3] = v36;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:4];
  [v48 activateConstraints:v37];

  [v26 addSubview:v58];
  v47 = MEMORY[0x1E696ACD8];
  v57 = [(TUIGenmojiButton *)v58 topAnchor];
  v55 = [v26 topAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v65[0] = v53;
  v51 = [(TUIGenmojiButton *)v58 bottomAnchor];
  v49 = [v26 bottomAnchor];
  v38 = [v51 constraintEqualToAnchor:v49];
  v65[1] = v38;
  v39 = [(TUIGenmojiButton *)v58 leadingAnchor];
  v40 = [v26 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v65[2] = v41;
  v42 = [(TUIGenmojiButton *)v58 trailingAnchor];
  v43 = [v26 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  v65[3] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
  [v47 activateConstraints:v45];

  [(UIView *)v60->_searchTextFieldContainerView addSubview:v26];

  return v26;
}

- (void)updateButtons
{
  p_buttonConstraintFirstButtonEnabled = &self->_buttonConstraintFirstButtonEnabled;
  [(NSLayoutConstraint *)self->_buttonConstraintFirstButtonEnabled setActive:0];
  [(NSLayoutConstraint *)self->_buttonConstraintFirstButtonDisabled setActive:0];
  [(NSLayoutConstraint *)self->_buttonConstraintNoButton setActive:0];
  [(NSLayoutConstraint *)self->_buttonConstraintOneButton setActive:0];
  [(NSLayoutConstraint *)self->_buttonConstraintTwoButtons setActive:0];
  v4 = 0;
  if (+[TUIEmojiSearchView shouldShowImages])
  {
    v4 = +[TUIEmojiSearchView shouldShowButtons];
  }

  v5 = +[TUIEmojiSearchView shouldShowGenmoji];
  v6 = !v4;
  if (v5 || v6)
  {
    p_buttonConstraintFirstButtonDisabled = p_buttonConstraintFirstButtonEnabled;
  }

  else
  {
    p_buttonConstraintFirstButtonDisabled = &self->_buttonConstraintFirstButtonDisabled;
  }

  v8 = 0.0;
  if (v5 || v6)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [(NSLayoutConstraint *)*p_buttonConstraintFirstButtonDisabled setActive:1];
  if (v6)
  {
    [(NSLayoutConstraint *)self->_buttonConstraintNoButton setActive:1];
    v11 = 0;
    v12 = 0.0;
    v13 = 0.0;
    v9 = 0.0;
    goto LABEL_19;
  }

  if (![(TUIEmojiSearchView *)self _stickerCreationAllowed])
  {
    [(NSLayoutConstraint *)self->_buttonConstraintOneButton setActive:1];
    v11 = 0;
    goto LABEL_17;
  }

  buttonConfiguration = self->_buttonConfiguration;
  if (buttonConfiguration == 3)
  {
    [(NSLayoutConstraint *)self->_buttonConstraintTwoButtons setActive:1];
    v11 = 0;
    v8 = 1.0;
    goto LABEL_17;
  }

  if (buttonConfiguration != 2)
  {
    if (buttonConfiguration == 1)
    {
      [(NSLayoutConstraint *)self->_buttonConstraintTwoButtons setActive:1];
      v11 = 0;
      v12 = 1.0;
LABEL_18:
      v13 = 0.0;
      goto LABEL_19;
    }

    [(NSLayoutConstraint *)self->_buttonConstraintOneButton setActive:1];
    v11 = [(TUIEmojiSearchTextField *)self->_searchTextField isActive]^ 1;
LABEL_17:
    v12 = 0.0;
    goto LABEL_18;
  }

  [(NSLayoutConstraint *)self->_buttonConstraintTwoButtons setActive:1];
  v11 = 0;
  v13 = 1.0;
  v12 = 0.0;
LABEL_19:
  [(UIView *)self->_createButton setAlpha:v9];
  [(UIView *)self->_stickerButton setAlpha:v12];
  [(UIView *)self->_memojiButton setAlpha:v13];
  [(UIView *)self->_animojiButton setAlpha:v8];
  [(TUIGenmojiButton *)self->_genmojiButton setShowText:v11];

  [(TUIEmojiSearchView *)self updatePlaceholder];
}

- (void)_updatePlaceholder
{
  overridingPlaceholder = self->_overridingPlaceholder;
  if (overridingPlaceholder)
  {
    v4 = overridingPlaceholder;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (+[TUIEmojiSearchView shouldShowGenmoji])
    {
      v6 = @"DESCRIBE_AN_EMOJI";
    }

    else
    {
      v6 = @"SEARCH_EMOJI";
    }

    v7 = [v5 localizedStringInDeviceLanguageForKey:v6];

    v4 = v7;
  }

  v8 = v4;
  [(TUIEmojiSearchTextField *)self->_searchTextField setPlaceholder:v4];
}

- (void)updatePlaceholder
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__TUIEmojiSearchView_updatePlaceholder__block_invoke;
  v2[3] = &unk_1E72D83A0;
  v2[4] = self;
  tui_performBlockOnMainThread(v2);
}

- (void)setShouldCreateButtonGlow:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3 && !self->_collapsed;
  v5 = v4;
  if (self->_shouldCreateButtonGlow != v5)
  {
    self->_shouldCreateButtonGlow = v5;
    if (a4)
    {
      if (v5)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke;
        v9[3] = &unk_1E72D84B0;
        v9[4] = self;
        v9[5] = 0x3FF3333333333333;
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke_2;
        v7[3] = &unk_1E72D74E8;
        v7[4] = self;
        v8 = xmmword_1900C0F60;
        [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v7 completion:0.2];
      }

      else
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke_5;
        v6[3] = &unk_1E72D83A0;
        v6[4] = self;
        [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.5];
      }
    }

    else
    {

      [(TUIEmojiSearchView *)self updateGlowEffects];
    }
  }
}

uint64_t __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v7, *(a1 + 40), *(a1 + 40));
  v2 = *(*(a1 + 32) + 472);
  v6 = v7;
  [v2 setTransform:&v6];
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v3 = *(*(a1 + 32) + 448);
  v6 = v5;
  return [v3 setTransform:&v6];
}

uint64_t __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke_2(double *a1)
{
  v2 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke_3;
  v6[3] = &unk_1E72D83A0;
  *&v6[4] = a1[4];
  [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:v2];
  v3 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke_4;
  v5[3] = &unk_1E72D83A0;
  *&v5[4] = a1[4];
  return [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v3];
}

uint64_t __57__TUIEmojiSearchView_setShouldCreateButtonGlow_animated___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 472);
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v7 = v8;
  v9 = v6;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = v10;
  [v2 setTransform:&v8];
  v3 = *(*(a1 + 32) + 448);
  v8 = v7;
  v9 = v6;
  v10 = v5;
  return [v3 setTransform:&v8];
}

- (void)updateGlowEffects
{
  v10[1] = *MEMORY[0x1E69E9840];
  [(UIView *)self->_createButton frame];
  [(UIVisualEffectView *)self->_createButtonVisualEffectView _setCornerRadius:v3 * 0.5];
  if (self->_shouldCreateButtonGlow)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD570]);
    v5 = [MEMORY[0x1E69DD578] sharedShimmeringLight];
    [(UIView *)self->_createButton frame];
    v7 = [v4 initWithLightSource:v5 radius:1 region:v6 / 6.0];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [(UIVisualEffectView *)self->_createButtonVisualEffectView setBackgroundEffects:v8];
  }

  else
  {
    createButtonVisualEffectView = self->_createButtonVisualEffectView;

    [(UIVisualEffectView *)createButtonVisualEffectView setBackgroundEffects:0];
  }
}

- (void)addButtons
{
  v52[4] = *MEMORY[0x1E69E9840];
  if (TUIRemoteEmojiSearchViewControllerEnabled())
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DCAD8];
    [MEMORY[0x1E69DB878] smallSystemFontSize];
    v4 = [v3 configurationWithPointSize:4 weight:?];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __32__TUIEmojiSearchView_addButtons__block_invoke;
    v49[3] = &unk_1E72D7FD8;
    objc_copyWeak(&v50, &location);
    v5 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"emoji.face.grinning.and.plus" withConfiguration:v4];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringInDeviceLanguageForKey:@"Genmoji"];
    v8 = [(TUIEmojiSearchView *)self addButtonForAction:v49 image:v5 accessibilityLabel:v7 addLightEffect:1];
    createButton = self->_createButton;
    self->_createButton = v8;

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __32__TUIEmojiSearchView_addButtons__block_invoke_3;
    v47[3] = &unk_1E72D7FD8;
    objc_copyWeak(&v48, &location);
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"sticker.badge.plus" withConfiguration:v4];
    v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringInDeviceLanguageForKey:@"New Sticker"];
    v13 = [(TUIEmojiSearchView *)self addButtonForAction:v47 strippingAlignmentRectInsetsFromImage:v10 accessibilityLabel:v12 addLightEffect:0];
    stickerButton = self->_stickerButton;
    self->_stickerButton = v13;

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __32__TUIEmojiSearchView_addButtons__block_invoke_4;
    v45[3] = &unk_1E72D7FD8;
    objc_copyWeak(&v46, &location);
    v42 = v4;
    v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"ellipsis" withConfiguration:v4];
    v16 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringInDeviceLanguageForKey:@"Edit Memoji"];
    v18 = [(TUIEmojiSearchView *)self addButtonForAction:v45 image:v15 accessibilityLabel:v17 addLightEffect:0];
    memojiButton = self->_memojiButton;
    self->_memojiButton = v18;

    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __32__TUIEmojiSearchView_addButtons__block_invoke_5;
    v43[3] = &unk_1E72D7FD8;
    objc_copyWeak(&v44, &location);
    v20 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"plus" withConfiguration:v4];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringInDeviceLanguageForKey:@"New Memoji"];
    v23 = [(TUIEmojiSearchView *)self addButtonForAction:v43 image:v20 accessibilityLabel:v22 addLightEffect:0];
    animojiButton = self->_animojiButton;
    self->_animojiButton = v23;

    v25 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    createButtonVisualEffectView = self->_createButtonVisualEffectView;
    self->_createButtonVisualEffectView = v25;

    [(UIVisualEffectView *)self->_createButtonVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [(UIVisualEffectView *)self->_createButtonVisualEffectView layer];
    [v27 setAllowsHitTesting:0];

    [(UIVisualEffectView *)self->_createButtonVisualEffectView setUserInteractionEnabled:0];
    [(TUIEmojiSearchView *)self addSubview:self->_createButtonVisualEffectView];
    v38 = MEMORY[0x1E696ACD8];
    v41 = [(UIVisualEffectView *)self->_createButtonVisualEffectView topAnchor];
    v40 = [(UIView *)self->_createButton topAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v52[0] = v39;
    v28 = [(UIVisualEffectView *)self->_createButtonVisualEffectView bottomAnchor];
    v29 = [(UIView *)self->_createButton bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v52[1] = v30;
    v31 = [(UIVisualEffectView *)self->_createButtonVisualEffectView leadingAnchor];
    v32 = [(UIView *)self->_createButton leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v52[2] = v33;
    v34 = [(UIVisualEffectView *)self->_createButtonVisualEffectView trailingAnchor];
    v35 = [(UIView *)self->_createButton trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v52[3] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
    [v38 activateConstraints:v37];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);

    objc_destroyWeak(&location);
  }
}

void __32__TUIEmojiSearchView_addButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained createButtonCallback];

  if (v3)
  {
    v4 = [WeakRetained createButtonCallback];
    v4[2]();

    v5 = dispatch_time(0, 400000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__TUIEmojiSearchView_addButtons__block_invoke_2;
    block[3] = &unk_1E72D7FD8;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v7);
  }
}

void __32__TUIEmojiSearchView_addButtons__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained createStickerFromPhotosButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained createStickerFromPhotosButtonCallback];
    v2[2]();
  }
}

void __32__TUIEmojiSearchView_addButtons__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentAvatarEditorButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained presentAvatarEditorButtonCallback];
    v2[2]();
  }
}

void __32__TUIEmojiSearchView_addButtons__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentAvatarEditorButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained presentAvatarEditorButtonCallback];
    v2[2]();
  }
}

void __32__TUIEmojiSearchView_addButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained searchTextField];
    [v2 setText:0];

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUIEmojiSearchView;
  [(TUIEmojiSearchView *)&v4 dealloc];
}

- (TUIEmojiSearchView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = TUIEmojiSearchView;
  v3 = [(TUIEmojiSearchView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    bottomHalfContainerView = v3->_bottomHalfContainerView;
    v3->_bottomHalfContainerView = v9;

    [(UIView *)v3->_bottomHalfContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUIEmojiSearchView *)v3 addSubview:v3->_bottomHalfContainerView];
    v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    resultsCollectionContainerView = v3->_resultsCollectionContainerView;
    v3->_resultsCollectionContainerView = v11;

    [(UIView *)v3->_resultsCollectionContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_bottomHalfContainerView addSubview:v3->_resultsCollectionContainerView];
    v3->_resultsViewVisible = 1;
    v13 = [[TUIEmojiSearchTextField alloc] initWithFrame:1 pretendsToBecomeFirstResponder:v5, v6, v7, v8];
    searchTextField = v3->_searchTextField;
    v3->_searchTextField = v13;

    [(TUIEmojiSearchTextField *)v3->_searchTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUIEmojiSearchView *)v3 updatePlaceholder];
    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    searchTextFieldContainerView = v3->_searchTextFieldContainerView;
    v3->_searchTextFieldContainerView = v15;

    [(UIView *)v3->_searchTextFieldContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_searchTextFieldContainerView addSubview:v3->_searchTextField];
    [(TUIEmojiSearchView *)v3 insertSubview:v3->_searchTextFieldContainerView belowSubview:v3->_bottomHalfContainerView];
    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    predictionViewWrapperView = v3->_predictionViewWrapperView;
    v3->_predictionViewWrapperView = v17;

    [(UIView *)v3->_predictionViewWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_bottomHalfContainerView addSubview:v3->_predictionViewWrapperView];
    [(UIView *)v3->_predictionViewWrapperView setHidden:!v3->_predictionViewVisible];
    v3->_buttonConfiguration = 1;
    if (TUIRemoteEmojiSearchViewControllerEnabled())
    {
      [(TUIEmojiSearchView *)v3 addButtons];
      [(TUIEmojiSearchView *)v3 createConstraintsIfNeeded];
      [(TUIEmojiSearchView *)v3 updateButtons];
      [(TUIEmojiSearchView *)v3 layoutIfNeeded];
    }

    if (TUIRemoteEmojiSearchViewControllerEnabled())
    {
      v19 = [(TUIEmojiSearchView *)v3 traitCollection];
      -[TUIEmojiSearchView setCollapsed:](v3, "setCollapsed:", [v19 userInterfaceIdiom] != 1);
    }

    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v3 selector:sel__didChangeHandBiasNotification_ name:*MEMORY[0x1E69DDFA8] object:0];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v3 selector:sel__buttonConfigurationWillChange_ name:@"TUIEmojiSearchViewButtonConfigurationWillChangeNotification" object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v3 selector:sel__placeholderWillChange_ name:@"TUIChangeEmojiSearchTextFieldPlaceholderNotification" object:0];
  }

  return v3;
}

+ (BOOL)canShowEmojiKeyboardInsideStickerPickerService
{
  if (canShowEmojiKeyboardInsideStickerPickerService_onceToken != -1)
  {
    dispatch_once(&canShowEmojiKeyboardInsideStickerPickerService_onceToken, &__block_literal_global_216);
  }

  v2 = [canShowEmojiKeyboardInsideStickerPickerService_suite objectForKey:@"com.apple.StickerKit.InternalSettings.useNewCollectionView"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t __68__TUIEmojiSearchView_canShowEmojiKeyboardInsideStickerPickerService__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.StickerKit.InternalSettings"];
  v1 = canShowEmojiKeyboardInsideStickerPickerService_suite;
  canShowEmojiKeyboardInsideStickerPickerService_suite = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (BOOL)isStickerPickerService
{
  if (isStickerPickerService_onceToken != -1)
  {
    dispatch_once(&isStickerPickerService_onceToken, &__block_literal_global_211);
  }

  return isStickerPickerService_isStickerPickerService;
}

void __44__TUIEmojiSearchView_isStickerPickerService__block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  isStickerPickerService_isStickerPickerService = [v0 isEqualToString:@"com.apple.StickerKit.StickerPickerService"];
}

+ (BOOL)bundleAllowsGenmoji
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__TUIEmojiSearchView_bundleAllowsGenmoji__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (bundleAllowsGenmoji_onceToken != -1)
  {
    dispatch_once(&bundleAllowsGenmoji_onceToken, block);
  }

  return (bundleAllowsGenmoji_bundleAllowsGenmoji & 1) == 0;
}

void __41__TUIEmojiSearchView_bundleAllowsGenmoji__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (([*(a1 + 32) isStickerPickerService] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"com.apple.GenerativePlaygroundApp"))
  {
    bundleAllowsGenmoji_bundleAllowsGenmoji = 1;
  }
}

+ (BOOL)isNotificationExtension
{
  if (isNotificationExtension_onceToken != -1)
  {
    dispatch_once(&isNotificationExtension_onceToken, &__block_literal_global_4079);
  }

  return isNotificationExtension_isNotificationExtension;
}

uint64_t __45__TUIEmojiSearchView_isNotificationExtension__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v7 = [v1 objectForKey:@"NSExtension"];

  v3 = v7;
  if (v7)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v3 = v7;
    if (isKindOfClass)
    {
      v4 = [v7 objectForKey:@"NSExtensionPointIdentifier"];
      v5 = [v4 isEqualToString:@"com.apple.usernotifications.content-extension"];

      v3 = v7;
      if (v5)
      {
        isNotificationExtension_isNotificationExtension = 1;
      }
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v3);
}

+ (BOOL)shouldShowImages
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v2 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v19 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v15[3] = &unk_1E72D8058;
    v15[4] = &v16;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v15);
    v2 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v2)
  {
    v3 = v2(0);
    v5 = v3 == 3 || v3 == 0;
    v6 = [MEMORY[0x1E69DCBE0] activeInstance];
    if (objc_opt_respondsToSelector())
    {
      v7 = [MEMORY[0x1E69DCBE0] activeInstance];
      v8 = [v7 canInsertAdaptiveImageGlyph];
    }

    else
    {
      v8 = 0;
    }

    v9 = +[TUIEmojiSearchView canInsertStickerAsTextInputPayload];
    v10 = [MEMORY[0x1E69DCBD8] sharedInstance];
    v11 = [v10 memojiSettingEnabled];

    if (!TUIRemoteEmojiSearchViewControllerEnabled())
    {
      return 0;
    }

    v12 = [MEMORY[0x1E69DCBE0] activeInstance];
    if ([v12 canPasteImage])
    {
      if ((v11 | v9 | v8))
      {
LABEL_17:

        return v5;
      }
    }

    else if (v8)
    {
      goto LABEL_17;
    }

    v5 = 0;
    goto LABEL_17;
  }

  dlerror();
  v14 = abort_report_np();
  return __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v14);
}

+ (BOOL)canInsertStickerAsTextInputPayload
{
  v2 = [MEMORY[0x1E69DD0F0] sharedInstance];
  v3 = [v2 supportedPayloadIds];

  LOBYTE(v2) = [v3 containsObject:@"com.apple.messages.stageSticker"];
  return v2;
}

+ (BOOL)shouldShowGenmojiForStickerEditMenu:(BOOL)a3
{
  v5 = [a1 gmsAvailability];
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = [a1 shouldShowImages];
  }

  v7 = [MEMORY[0x1E69DC938] currentDevice];
  [v7 userInterfaceIdiom];

  v8 = _os_feature_enabled_impl();
  if ((v5 & v6) != 1 || !v8)
  {
    return 0;
  }

  return [a1 shouldShowButtons];
}

+ (BOOL)shouldShowGenmoji
{
  v3 = [a1 shouldShowGenmojiForStickerEditMenu:0];
  if (v3)
  {

    LOBYTE(v3) = [a1 bundleAllowsGenmoji];
  }

  return v3;
}

@end