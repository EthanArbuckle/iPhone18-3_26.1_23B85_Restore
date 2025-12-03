@interface _UIFindNavigatorView
- (BOOL)_replacementEnabled;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (CGSize)intrinsicContentSize;
- (_UIFindNavigatorView)initWithFrame:(CGRect)frame;
- (_UIFindNavigatorViewDelegate)findNavigatorDelegate;
- (id)_createNavigatorLayoutForTraitCollection:(id)collection;
- (id)_linearFocusMovementSequences;
- (id)suggestedFindMenuItems;
- (void)_handleSearchMenuItem:(id)item;
- (void)_invalidateSearchSession;
- (void)_navigatorHostingTypeChanged;
- (void)_preferredBackgroundColorChanged;
- (void)_setNavigatorLayout:(id)layout;
- (void)find:(id)find;
- (void)layoutSubviews;
- (void)safeAreaInsetsDidChange;
- (void)setAssistantBarStyle:(int64_t)style;
- (void)setMode:(int64_t)mode;
- (void)setVisibleSeparatorEdges:(unint64_t)edges;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIFindNavigatorView

- (_UIFindNavigatorView)initWithFrame:(CGRect)frame
{
  v130[1] = *MEMORY[0x1E69E9840];
  v129.receiver = self;
  v129.super_class = _UIFindNavigatorView;
  v115 = [(UIInputView *)&v129 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v115)
  {
    _inheritedRenderConfig = [(UIView *)v115 _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      [(UIInputView *)v115 _setSuppressBackgroundStyling:1];
    }

    traitCollection = [(UIView *)v115 traitCollection];
    v6 = [(_UIFindNavigatorView *)v115 _createNavigatorLayoutForTraitCollection:traitCollection];

    [v6 addMaterialToViewIfNeeded:v115];
    v7 = v115;
    v8 = CreateSeparatorView();
    v9 = v7[78];
    v7[78] = v8;

    [v7[78] setHidden:1];
    [v7 addSubview:v7[78]];
    v10 = CreateSeparatorView();
    v11 = v7[79];
    v7[79] = v10;

    [v7[79] setHidden:1];
    [v7 addSubview:v7[79]];
    v12 = CreateSeparatorView();
    v13 = v7[80];
    v7[80] = v12;

    [v7[80] setHidden:1];
    [v7 addSubview:v7[80]];
    _inheritedRenderConfig2 = [v7 _inheritedRenderConfig];
    LODWORD(traitCollection) = [_inheritedRenderConfig2 colorAdaptiveBackground];

    if (traitCollection)
    {
      v15 = [UIImage _systemImageNamed:@"checkmark"];
      v111 = +[UIButtonConfiguration _tintedGlassButtonConfiguration];
      [v111 setCornerStyle:4];
      v16 = +[UIColor systemBlueColor];
      [v111 setBaseBackgroundColor:v16];

      preferredMaximumContentSizeCategory = [v6 preferredMaximumContentSizeCategory];
      v18 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" maximumContentSizeCategory:preferredMaximumContentSizeCategory];
      [v18 pointSize];
      v20 = v19;

      v21 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:v20];
      [v111 setPreferredSymbolConfigurationForImage:v21];

      v22 = [UIAction actionWithTitle:&stru_1EFB14550 image:v15 identifier:0 handler:&__block_literal_global_145];
      v23 = [UIButton buttonWithConfiguration:v111 primaryAction:v22];
      v24 = v7[91];
      v7[91] = v23;

      v106 = 0;
    }

    else
    {
      v106 = _UILocalizedString(@"DONE", @"Button that's used to dismiss the parent.", @"Done");
      if ([v6 usesSymbolForDoneButton])
      {
        [v6 commonButtonConfigWithImageName:@"xmark" isAccessory:0];
      }

      else
      {
        [v6 commonButtonConfigWithTitle:v106 isGlass:0];
      }
      v111 = ;
      v25 = [UIButton buttonWithConfiguration:v111 primaryAction:0];
      v26 = v7[91];
      v7[91] = v25;
    }

    [v7[91] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7[91] setAccessibilityIdentifier:@"find.doneButton"];
    [v7[91] setPointerInteractionEnabled:1];
    preferredMaximumContentSizeCategory2 = [v6 preferredMaximumContentSizeCategory];
    v28 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" maximumContentSizeCategory:preferredMaximumContentSizeCategory2];
    [v28 pointSize];
    v30 = v29;

    v31 = [UILabel alloc];
    v32 = *MEMORY[0x1E695F058];
    v33 = *(MEMORY[0x1E695F058] + 8);
    v34 = *(MEMORY[0x1E695F058] + 16);
    v35 = *(MEMORY[0x1E695F058] + 24);
    v36 = [(UILabel *)v31 initWithFrame:*MEMORY[0x1E695F058], v33, v34, v35];
    v37 = v7[93];
    v7[93] = v36;

    v38 = [off_1E70ECC18 monospacedDigitSystemFontOfSize:v30 weight:*off_1E70ECD28];
    [v7[93] setFont:v38];

    v39 = +[UIColor secondaryLabelColor];
    [v7[93] setTextColor:v39];

    [v7[93] setTextAlignment:2];
    [v7[93] setAccessibilityIdentifier:@"find.resultLabel"];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __38___UIFindNavigatorView_initWithFrame___block_invoke_2;
    aBlock[3] = &unk_1E7103498;
    v40 = v6;
    v128 = v40;
    v110 = _Block_copy(aBlock);
    v41 = [[_UIFindNavigatorSearchTextField alloc] initWithFrame:v32, v33, v34, v35];
    v42 = v7[95];
    v7[95] = v41;

    (v110)[2](v110, v7[95]);
    [v7[95] setReturnKeyType:6];
    v43 = _UILocalizedString(@"FIND", @"Find in text", @"Find");
    [v7[95] setPlaceholder:v43];

    preferredMaximumContentSizeCategory3 = [v40 preferredMaximumContentSizeCategory];
    [v7[95] setMaximumContentSizeCategory:preferredMaximumContentSizeCategory3];

    [v7[95] setAccessibilityIdentifier:@"find.searchField"];
    v112 = [v40 commonButtonConfigWithImageName:@"magnifyingglass.and.chevron.down" isAccessory:1];
    preferredSymbolConfigurationForImageForTextFields = [v40 preferredSymbolConfigurationForImageForTextFields];
    [v112 setPreferredSymbolConfigurationForImage:preferredSymbolConfigurationForImageForTextFields];

    [v112 setMacIdiomStyle:2];
    obj = [(UIButton *)_UIFindNavigatorSearchFieldButton buttonWithConfiguration:v112 primaryAction:0];
    [obj setUsesSquareIntrinsicSize:1];
    [obj setPreferredBehavioralStyle:1];
    preferredMaximumContentSizeCategory4 = [v40 preferredMaximumContentSizeCategory];
    [obj setMaximumContentSizeCategory:preferredMaximumContentSizeCategory4];

    [obj setAccessibilityIdentifier:@"find.settingsButton"];
    objc_storeStrong(v7 + 92, obj);
    [v7[92] setShowsMenuAsPrimaryAction:1];
    [v7[95] setLeftView:v7[92]];
    [v7[95] setLeftViewMode:3];
    _inheritedRenderConfig3 = [v7 _inheritedRenderConfig];
    LODWORD(v39) = [_inheritedRenderConfig3 colorAdaptiveBackground];

    if (v39)
    {
      [v7[95] _setLeftViewOffset:{-8.0, 0.0}];
    }

    [v7[95] setRightView:v7[93]];
    [v7[95] setRightViewMode:3];
    v48 = [[_UIFindNavigatorSearchTextField alloc] initWithFrame:v32, v33, v34, v35];
    v49 = v7[96];
    v7[96] = v48;

    (v110)[2](v110, v7[96]);
    [v7[96] setReturnKeyType:4];
    v50 = _UILocalizedString(@"REPLACE", @"Replace text", @"Replace");
    [v7[96] setPlaceholder:v50];

    [v7[96] setAccessibilityIdentifier:@"find.replaceField"];
    preferredMaximumContentSizeCategory5 = [v40 preferredMaximumContentSizeCategory];
    [v7[96] setMaximumContentSizeCategory:preferredMaximumContentSizeCategory5];

    _inheritedRenderConfig4 = [v7 _inheritedRenderConfig];
    colorAdaptiveBackground2 = [_inheritedRenderConfig4 colorAdaptiveBackground];

    if (colorAdaptiveBackground2)
    {
      traitCollection2 = [v7 traitCollection];
      userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
      v56 = 23.0;
      if (!userInterfaceIdiom)
      {
        v56 = 17.0;
      }

      [v7[96] _setCornerRadius:v56];

      [v7[96] _setLeftViewOffset:{-8.0, 0.0}];
    }

    v109 = [v40 commonButtonConfigWithImageName:@"pencil" isAccessory:1];
    preferredSymbolConfigurationForImageForTextFields2 = [v40 preferredSymbolConfigurationForImageForTextFields];
    [v109 setPreferredSymbolConfigurationForImage:preferredSymbolConfigurationForImageForTextFields2];

    v113 = [(UIButton *)_UIFindNavigatorSearchFieldButton buttonWithConfiguration:v109 primaryAction:0];
    preferredMaximumContentSizeCategory6 = [v40 preferredMaximumContentSizeCategory];
    [v113 setMaximumContentSizeCategory:preferredMaximumContentSizeCategory6];

    [v113 setPreferredBehavioralStyle:1];
    [v113 setUsesSquareIntrinsicSize:1];
    [v113 setEnabled:0];
    [v7[96] setLeftView:v113];
    [v7[96] setLeftViewMode:3];
    v107 = _UILocalizedString(@"REPLACE", @"Button whose action replaces text", @"Replace");
    _inheritedRenderConfig5 = [v7 _inheritedRenderConfig];
    colorAdaptiveBackground3 = [_inheritedRenderConfig5 colorAdaptiveBackground];

    if (colorAdaptiveBackground3)
    {
      v108 = [v40 commonButtonConfigWithTitle:v107 isGlass:1];
      [v108 setCornerStyle:4];
    }

    else
    {
      v108 = [v40 commonButtonConfigWithTitle:v107 isGlass:0];
    }

    traitCollection3 = [v7 traitCollection];
    v62 = [traitCollection3 horizontalSizeClass] == 1;

    if (v62)
    {
      [v108 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
    }

    objc_initWeak(&location, v7);
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = __38___UIFindNavigatorView_initWithFrame___block_invoke_3;
    v124[3] = &unk_1E70F7450;
    objc_copyWeak(&v125, &location);
    v63 = [UIAction actionWithHandler:v124];
    v64 = [UIButton buttonWithConfiguration:v108 primaryAction:v63];
    v65 = v7[99];
    v7[99] = v64;

    [v7[99] setTranslatesAutoresizingMaskIntoConstraints:0];
    preferredMaximumContentSizeCategory7 = [v40 preferredMaximumContentSizeCategory];
    [v7[99] setMaximumContentSizeCategory:preferredMaximumContentSizeCategory7];

    [v7[99] setEnabled:0];
    [v7[99] setAccessibilityIdentifier:@"find.replaceButton"];
    [v7[99] setPointerInteractionEnabled:1];
    _inheritedRenderConfig6 = [v7 _inheritedRenderConfig];
    colorAdaptiveBackground4 = [_inheritedRenderConfig6 colorAdaptiveBackground];

    if (colorAdaptiveBackground4)
    {
      v74 = +[UIColor tertiarySystemFillColor];
      [v7[99] setBackgroundColor:v74];
    }

    v75 = _UILocalizedFormat(@"REPLACE_ALL", @"Replace all occurrences.", @"Replace All", v69, v70, v71, v72, v73, v105);
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __38___UIFindNavigatorView_initWithFrame___block_invoke_4;
    v122[3] = &unk_1E70F7450;
    objc_copyWeak(&v123, &location);
    v76 = [UIAction actionWithTitle:v75 image:0 identifier:0 handler:v122];
    v130[0] = v76;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:1];
    v78 = [UIMenu menuWithChildren:v77];
    [v7[99] setMenu:v78];

    usesNextAndPreviousArrows = [v40 usesNextAndPreviousArrows];
    if (usesNextAndPreviousArrows)
    {
      v80 = @"chevron.backward";
    }

    else
    {
      v80 = @"chevron.up";
    }

    v81 = [v40 commonButtonConfigWithImageName:v80 isAccessory:0];
    if (usesNextAndPreviousArrows)
    {
      v82 = @"chevron.forward";
    }

    else
    {
      v82 = @"chevron.down";
    }

    v83 = [v40 commonButtonConfigWithImageName:v82 isAccessory:0];
    _inheritedRenderConfig7 = [v7 _inheritedRenderConfig];
    colorAdaptiveBackground5 = [_inheritedRenderConfig7 colorAdaptiveBackground];

    if (colorAdaptiveBackground5)
    {
      preferredMaximumContentSizeCategory8 = [v40 preferredMaximumContentSizeCategory];
      v87 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleSubhead" maximumContentSizeCategory:preferredMaximumContentSizeCategory8];
      [v87 pointSize];
      v89 = v88;

      v90 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:v89];
      v91 = +[UIColor secondaryLabelColor];
      [v83 setBaseForegroundColor:v91];

      [v83 setPreferredSymbolConfigurationForImage:v90];
      v92 = +[UIColor secondaryLabelColor];
      [v81 setBaseForegroundColor:v92];

      [v81 setPreferredSymbolConfigurationForImage:v90];
    }

    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __38___UIFindNavigatorView_initWithFrame___block_invoke_5;
    v119[3] = &unk_1E70F69F8;
    objc_copyWeak(&v121, &location);
    v93 = v7;
    v120 = v93;
    v94 = [UIAction actionWithHandler:v119];
    v95 = [UIButton buttonWithConfiguration:v81 primaryAction:v94];
    v96 = v93[98];
    v93[98] = v95;

    [v93[98] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v93[98] setMinimumContentSizeCategory:@"UICTContentSizeCategoryM"];
    preferredMaximumContentSizeCategory9 = [v40 preferredMaximumContentSizeCategory];
    [v93[98] setMaximumContentSizeCategory:preferredMaximumContentSizeCategory9];

    [v93[98] setAccessibilityIdentifier:@"find.previousButton"];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __38___UIFindNavigatorView_initWithFrame___block_invoke_6;
    v116[3] = &unk_1E70F69F8;
    objc_copyWeak(&v118, &location);
    v98 = v93;
    v117 = v98;
    v99 = [UIAction actionWithHandler:v116];
    v100 = [UIButton buttonWithConfiguration:v83 primaryAction:v99];
    v101 = v98[97];
    v98[97] = v100;

    [v98[97] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v98[97] setMinimumContentSizeCategory:@"UICTContentSizeCategoryM"];
    preferredMaximumContentSizeCategory10 = [v40 preferredMaximumContentSizeCategory];
    [v98[97] setMaximumContentSizeCategory:preferredMaximumContentSizeCategory10];

    [v98[97] setAccessibilityIdentifier:@"find.nextButton"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v98 selector:sel__preferredContentSizeDidChange name:@"UIContentSizeCategoryDidChangeNotification" object:0];

    [v98 _setNavigatorLayout:v40];
    objc_destroyWeak(&v118);

    objc_destroyWeak(&v121);
    objc_destroyWeak(&v123);
    objc_destroyWeak(&v125);
    objc_destroyWeak(&location);
  }

  return v115;
}

- (void)_setNavigatorLayout:(id)layout
{
  layoutCopy = layout;
  if (![(_UIFindNavigatorViewLayout *)self->_layout isEqual:?])
  {
    [(UIView *)self->_layout removeFromSuperview];
    objc_storeStrong(&self->_layout, layout);
    [(UIView *)self addSubview:self->_layout];
    [layoutCopy setNextResultButton:self->_nextResultButton];
    [layoutCopy setPreviousResultButton:self->_previousResultButton];
    [layoutCopy setDoneButton:self->_doneButton];
    [layoutCopy setReplaceButton:self->_replaceButton];
    [layoutCopy setSearchTextField:self->_searchTextField];
    [layoutCopy setReplaceTextField:self->_replaceTextField];
    [layoutCopy setAssistantBarStyle:self->_assistantBarStyle];
    [layoutCopy setUsesAssistantBarHeight:self->_intrinsicHeightDerivedFromAssistantBar];
    [layoutCopy preferredCornerRadius];
    [(UIView *)self _setCornerRadius:?];
    [(_UIFindNavigatorView *)self _preferredBackgroundColorChanged];
    [layoutCopy prepareForLayout];
    [layoutCopy setReplaceFieldVisible:self->_mode == 1];
  }
}

- (id)_createNavigatorLayoutForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = off_1E70EB6E0;
  if ([collectionCopy userInterfaceIdiom] && objc_msgSend(collectionCopy, "horizontalSizeClass") != 1)
  {
    v4 = off_1E70EB6D8;
  }

  v5 = objc_alloc(*v4);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  [(_UIFindNavigatorView *)self _navigatorHostingTypeChanged];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [(_UIFindNavigatorView *)self _createNavigatorLayoutForTraitCollection:traitCollection];

  [(_UIFindNavigatorView *)self _setNavigatorLayout:v5];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _UIFindNavigatorView;
  [(UIView *)&v3 safeAreaInsetsDidChange];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (void)willMoveToWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = _UIFindNavigatorView;
  [(UIView *)&v4 willMoveToWindow:window];
  [(_UIFindNavigatorView *)self _navigatorHostingTypeChanged];
}

- (void)_navigatorHostingTypeChanged
{
  _ui_findNavigatorResponder = [(UIResponder *)self _ui_findNavigatorResponder];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [_ui_findNavigatorResponder hostingTypeForTraitCollection:traitCollection];

  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:v5 != 1];

  [(UIInputView *)self setAllowsSelfSizing:v5 == 1];
}

- (void)_preferredBackgroundColorChanged
{
  if (self->_usesOpaqueBackground)
  {
    preferredOpaqueBackgroundColor = [(_UIFindNavigatorViewLayout *)self->_layout preferredOpaqueBackgroundColor];
    [(UIView *)self setBackgroundColor:preferredOpaqueBackgroundColor];
  }

  else
  {

    [(UIView *)self setBackgroundColor:0];
  }
}

- (void)setMode:(int64_t)mode
{
  if (mode == 1)
  {
    [(_UIFindNavigatorViewLayout *)self->_layout setReplaceFieldVisible:?];
    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    if ([_inheritedRenderConfig colorAdaptiveBackground])
    {
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        goto LABEL_9;
      }

      [(UISearchTextField *)self->_searchTextField setBorderStyle:0];
      v10 = +[UIColor tertiarySystemFillColor];
      [(UITextField *)self->_searchTextField setBackgroundColor:v10];

      [(UISearchTextField *)self->_replaceTextField setBorderStyle:0];
      _inheritedRenderConfig = +[UIColor tertiarySystemFillColor];
      [(UITextField *)self->_replaceTextField setBackgroundColor:_inheritedRenderConfig];
    }
  }

  else if (!mode)
  {
    [(_UIFindNavigatorViewLayout *)self->_layout setReplaceFieldVisible:0];
    _inheritedRenderConfig2 = [(UIView *)self _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig2 colorAdaptiveBackground];

    if (colorAdaptiveBackground)
    {
      [(UITextField *)self->_searchTextField setBackgroundColor:0];
      [(UISearchTextField *)self->_searchTextField setBorderStyle:3];
    }
  }

LABEL_9:
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(UIView *)self invalidateIntrinsicContentSize];
    WeakRetained = objc_loadWeakRetained(&self->_findNavigatorDelegate);
    [WeakRetained findNavigator:self didChangeMode:mode];
  }
}

- (BOOL)_replacementEnabled
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_findNavigatorDelegate);
  LOBYTE(selfCopy) = [WeakRetained findNavigatorShouldShowReplacementOption:selfCopy];

  return selfCopy;
}

- (void)setAssistantBarStyle:(int64_t)style
{
  traitCollection = [(UIView *)self traitCollection];
  v6 = [(_UIFindNavigatorView *)self _createNavigatorLayoutForTraitCollection:traitCollection];

  [(_UIFindNavigatorView *)self _setNavigatorLayout:v6];
  self->_assistantBarStyle = style;
  [(_UIFindNavigatorViewLayout *)self->_layout setAssistantBarStyle:style];
  [(UIView *)self setNeedsLayout];
}

- (id)suggestedFindMenuItems
{
  v33[1] = *MEMORY[0x1E69E9840];
  p_searchMenu = &self->_searchMenu;
  if (!self->_searchMenu.initialized)
  {
    objc_initWeak(&location, self);
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __46___UIFindNavigatorView_suggestedFindMenuItems__block_invoke;
    v28 = &unk_1E70F7450;
    objc_copyWeak(&v29, &location);
    v4 = _Block_copy(&v25);
    v5 = _UILocalizedString(@"FIND", @"Find text", @"Find");
    v6 = [UIAction actionWithTitle:v5 image:0 identifier:@"find" handler:v4, v25, v26, v27, v28];
    find = p_searchMenu->find;
    p_searchMenu->find = v6;

    v8 = _UILocalizedString(@"FIND_AND_REPLACE", @"Find and replace text", @"Find & Replace");
    v9 = [UIAction actionWithTitle:v8 image:0 identifier:@"replace" handler:v4];
    replace = p_searchMenu->replace;
    p_searchMenu->replace = v9;

    v11 = _UILocalizedString(@"WHOLE_WORDS", @"Match whole words", @"Whole Words");
    v12 = [UIAction actionWithTitle:v11 image:0 identifier:@"wholeWords" handler:v4];
    wholeWords = p_searchMenu->wholeWords;
    p_searchMenu->wholeWords = v12;

    v14 = _UILocalizedString(@"MATCH_CASE", @"Match, case sensitive", @"Match Case");
    v15 = [UIAction actionWithTitle:v14 image:0 identifier:@"matchCase" handler:v4];
    matchCase = p_searchMenu->matchCase;
    p_searchMenu->matchCase = v15;

    p_searchMenu->initialized = 1;
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  [(UIAction *)p_searchMenu->find setState:self->_mode == 0];
  [(UIAction *)p_searchMenu->replace setState:self->_mode == 1];
  [(UIAction *)p_searchMenu->matchCase setState:self->_matchCase];
  [(UIAction *)p_searchMenu->wholeWords setState:self->_wholeWords];
  if ([(_UIFindNavigatorView *)self _replacementEnabled]&& [(_UIFindNavigatorViewLayout *)self->_layout showsReplaceInOptionsMenu])
  {
    v17 = p_searchMenu->replace;
    v32[0] = p_searchMenu->find;
    v32[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v19 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v18];
    v33[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  }

  else
  {
    v20 = MEMORY[0x1E695E0F0];
  }

  v21 = p_searchMenu->wholeWords;
  v31[0] = p_searchMenu->matchCase;
  v31[1] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v23 = [v20 arrayByAddingObjectsFromArray:v22];

  return v23;
}

- (void)_invalidateSearchSession
{
  WeakRetained = objc_loadWeakRetained(&self->_findNavigatorDelegate);
  [WeakRetained findNavigatorDidInvalidateSearchSession:self];
}

- (void)_handleSearchMenuItem:(id)item
{
  itemCopy = item;
  identifier = [itemCopy identifier];

  if (identifier == @"find")
  {
    selfCopy2 = self;
    v9 = 0;
LABEL_8:
    [(_UIFindNavigatorView *)selfCopy2 setMode:v9];
    goto LABEL_11;
  }

  identifier2 = [itemCopy identifier];

  if (identifier2 == @"replace")
  {
    selfCopy2 = self;
    v9 = 1;
    goto LABEL_8;
  }

  identifier3 = [itemCopy identifier];

  if (identifier3 == @"matchCase")
  {
    [(_UIFindNavigatorView *)self setMatchCase:[(_UIFindNavigatorView *)self matchCase]^ 1];
  }

  else
  {
    identifier4 = [itemCopy identifier];

    if (identifier4 != @"wholeWords")
    {
      goto LABEL_11;
    }

    [(_UIFindNavigatorView *)self setWholeWords:[(_UIFindNavigatorView *)self wholeWords]^ 1];
  }

  [(_UIFindNavigatorView *)self _invalidateSearchSession];
LABEL_11:
}

- (CGSize)intrinsicContentSize
{
  [(_UIFindNavigatorViewLayout *)self->_layout preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setVisibleSeparatorEdges:(unint64_t)edges
{
  _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if (colorAdaptiveBackground)
  {
    edges = 0;
  }

  self->_visibleSeparatorEdges = edges;
  p_separatorViews = &self->_separatorViews;
  [(UIView *)p_separatorViews->left setHidden:(edges & 2) == 0];
  [(UIView *)p_separatorViews->right setHidden:(edges & 8) == 0];
  bottom = p_separatorViews->bottom;

  [(UIView *)bottom setHidden:(edges & 4) == 0];
}

- (BOOL)becomeFirstResponder
{
  isFirstResponder = [(UIView *)self->_searchTextField isFirstResponder];
  becomeFirstResponder = [(UISearchTextField *)self->_searchTextField becomeFirstResponder];
  v5 = becomeFirstResponder;
  if (!isFirstResponder && becomeFirstResponder)
  {
    text = [(_UIFindNavigatorSearchTextField *)self->_searchTextField text];
    v7 = [text length];

    if (v7)
    {
      [(UITextField *)self->_searchTextField selectAll];
    }
  }

  return v5;
}

- (BOOL)resignFirstResponder
{
  v3 = 760;
  if ([(UIView *)self->_searchTextField isFirstResponder]|| (v3 = 768, [(UIView *)self->_replaceTextField isFirstResponder]))
  {
    v4 = *(&self->super.super.super.super.isa + v3);

    return [v4 resignFirstResponder];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = _UIFindNavigatorView;
    return [(UIResponder *)&v6 resignFirstResponder];
  }
}

- (id)_linearFocusMovementSequences
{
  v8[1] = *MEMORY[0x1E69E9840];
  replaceTextField = self->_replaceTextField;
  v7[0] = self->_searchTextField;
  v7[1] = replaceTextField;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [_UIFocusLinearMovementSequence sequenceWithItems:v3 loops:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v5;
}

- (void)find:(id)find
{
  if (![(UIView *)self->_searchTextField isFirstResponder])
  {
    [(UISearchTextField *)self->_searchTextField becomeFirstResponder];
  }

  searchTextField = self->_searchTextField;

  [(UITextField *)searchTextField selectAll];
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = _UIFindNavigatorView;
  [(UIView *)&v33 layoutSubviews];
  if ([(_UIFindNavigatorView *)self visibleSeparatorEdges])
  {
    traitCollection = [(UIView *)self traitCollection];
    [traitCollection displayScale];
    v5 = 1.0 / v4;

    [(UIView *)self bounds];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __38___UIFindNavigatorView_layoutSubviews__block_invoke;
    v32[3] = &__block_descriptor_48_e19_v24__0__UIView_8d16l;
    *&v32[4] = v5;
    v32[5] = v6;
    v7 = _Block_copy(v32);
    v7[2](v7, self->_separatorViews.left, 0.0);
    right = self->_separatorViews.right;
    [(UIView *)self bounds];
    v7[2](v7, right, v9 - v5);
    [(UIView *)self bounds];
    v11 = v10 - v5;
    [(UIView *)self bounds];
    [(UIView *)self->_separatorViews.bottom setFrame:0.0, v11];
  }

  [(UIView *)self safeAreaInsets];
  v13 = v12;
  [(UIView *)self safeAreaInsets];
  v15 = v13 + v14;
  [(UIView *)self bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(_UIFindNavigatorViewLayout *)self->_layout preferredHorizontalPadding];
  v25 = v15 + v24;
  [(_UIFindNavigatorViewLayout *)self->_layout preferredVerticalPadding];
  v27 = v26;
  v34.origin.x = v17;
  v34.origin.y = v19;
  v34.size.width = v21;
  v34.size.height = v23;
  v35 = CGRectInset(v34, v25, v27);
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  if (!CGRectIsNull(v35))
  {
    [(UIView *)self->_layout setFrame:x, y, width, height];
  }
}

- (_UIFindNavigatorViewDelegate)findNavigatorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_findNavigatorDelegate);

  return WeakRetained;
}

@end