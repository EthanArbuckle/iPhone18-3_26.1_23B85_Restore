@interface _UIButtonBarButtonVisualProviderIOS
- (BOOL)buttonSelectionState:(id)state forRequestedState:(BOOL)requestedState;
- (BOOL)shouldLift;
- (CGPoint)menuAnchorPoint;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CGSize)buttonImageViewSize:(id)size;
- (UIEdgeInsets)_imageInsetsForBarButtonItem:(id)item compact:(BOOL)compact isBackButton:(BOOL)button;
- (UIEdgeInsets)_insetsForCompact:(BOOL)compact;
- (UIOffset)backButtonBackgroundVerticalAdjustmentForCompact:(BOOL)compact;
- (UIOffset)backButtonTitlePositionOffsetForCompact:(BOOL)compact;
- (UIOffset)backgroundVerticalAdjustmentForCompact:(BOOL)compact;
- (UIOffset)titlePositionOffsetForCompact:(BOOL)compact;
- (__CFString)_backButtonTitleForCurrentBoundsSize;
- (double)_defaultBackIndicatorBaselineInsetCompact:(BOOL)compact;
- (double)_defaultPaddingForInsets:(UIEdgeInsets)insets;
- (double)_effectiveEdgeSpacing;
- (double)_widthForBackButtonChevronIncludingPaddingToContentButton;
- (id)_backIndicatorImageForCompact:(BOOL)compact;
- (id)_backIndicatorMaskForCompact:(BOOL)compact;
- (id)_backIndicatorMaskSymbolConfigurationForCompact:(BOOL)compact;
- (id)_backIndicatorSymbolConfigurationForCompact:(BOOL)compact;
- (id)_titleContentForTitle:(id)title;
- (id)alignmentViewForStaticNavBarButtonLeading;
- (id)alignmentViewForStaticNavBarButtonTrailing;
- (id)backButtonBackgroundImageForState:(unint64_t)state compact:(BOOL)compact;
- (id)backgroundImageForState:(unint64_t)state compact:(BOOL)compact;
- (id)buttonContextMenuInteractionConfiguration;
- (id)buttonContextMenuStyleFromDefaultStyle:(id)style;
- (id)buttonContextMenuTargetedPreview;
- (id)buttonSpringLoadedInteractionEffect;
- (id)contentView;
- (id)matchingPointerShapeForView:(id)view rect:(CGRect)rect inContainer:(id)container;
- (id)pointerPreviewParameters;
- (id)pointerShapeInContainer:(id)container;
- (id)symbolConfigurationCompact:(BOOL)compact;
- (id)symbolImageView;
- (id)tintColor;
- (void)_addConstraintsForBackgroundViewWithOffset:(double)offset isBackButton:(BOOL)button resizesImage:(BOOL)image;
- (void)_addHorizontalConstraintsForContentButton:(id)button titleOffset:(double)offset backButtonLayoutInsets:(NSDirectionalEdgeInsets)insets;
- (void)_addHorizontalConstraintsForImageWithInsets:(UIEdgeInsets)insets paddingEdges:(unint64_t)edges additionalPadding:(double)padding;
- (void)_addHorizontalConstraintsForTextWithOffset:(double)offset additionalPadding:(UIEdgeInsets)padding;
- (void)_addVerticalConstraintsForBackIndicatorWithTitleOffset:(double)offset bottomOffset:(double)bottomOffset useBaselineAlignment:(BOOL)alignment;
- (void)_addVerticalConstraintsForImageWithInsets:(UIEdgeInsets)insets;
- (void)_addVerticalConstraintsForTextWithOffset:(double)offset;
- (void)_computeTextAttributes;
- (void)_computeTextAttributesForBarButtonItem:(id)item;
- (void)_configureBackButtonMask;
- (void)_configureBackButtonWithBackButtonLayoutInsets:(NSDirectionalEdgeInsets)insets useBaselineAlignment:(BOOL)alignment;
- (void)_configureImageBackButtonWithImageInsets:(UIEdgeInsets)insets backButtonLayoutInsets:(NSDirectionalEdgeInsets)layoutInsets useBaselineAlignment:(BOOL)alignment;
- (void)_configureImageOrTitleCompact:(BOOL)compact;
- (void)_configureImageWithInsets:(UIEdgeInsets)insets paddingEdges:(unint64_t)edges additionalPadding:(double)padding;
- (void)_configureTextBackButtonWithTitlePositionAdjustment:(UIOffset)adjustment backButtonLayoutInsets:(NSDirectionalEdgeInsets)insets useBaselineAlignment:(BOOL)alignment;
- (void)_configureTextWithOffset:(UIOffset)offset additionalPadding:(UIEdgeInsets)padding;
- (void)_prepareBackgroundViewFromBarButtonItem:(id)item isBackButton:(BOOL)button;
- (void)_removeTitleButton;
- (void)_setTitle:(id)title;
- (void)_setupAlternateTitles;
- (void)_updateMonochromaticTreatment;
- (void)_updateTextContent;
- (void)_updateViewsForMaskingEnabled;
- (void)activateHeightMinimizer;
- (void)activateWidthMinimizer;
- (void)addActiveConstraint:(id)constraint named:(id)named;
- (void)buttonDidUpdateBoundsSize;
- (void)buttonLayoutSubviews:(id)subviews baseImplementation:(id)implementation;
- (void)configureButton:(id)button fromBarButtonItem:(id)item;
- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item;
- (void)reload;
- (void)resetButtonHasHighlighted;
- (void)setBackButtonMaskEnabled:(BOOL)enabled;
- (void)traitDependenciesUpdated;
- (void)updateActiveConstraints:(id)constraints;
- (void)updateButton:(id)button forEnabledState:(BOOL)state;
- (void)updateButton:(id)button forHeldState:(BOOL)state;
- (void)updateButton:(id)button forHighlightedState:(BOOL)state;
- (void)updateButton:(id)button forSelectedState:(BOOL)state;
- (void)updateImage;
- (void)updateMenu;
@end

@implementation _UIButtonBarButtonVisualProviderIOS

- (void)_computeTextAttributes
{
  v35[3] = *MEMORY[0x1E69E9840];
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  if (appearanceData)
  {
    v4 = appearanceData;
    v5 = [appearanceData titleTextAttributesForState:0];
    v34 = [v4 titleTextAttributesForState:1];
    v6 = [v4 titleTextAttributesForState:2];
  }

  else
  {
    v4 = [_UIBarButtonItemData standardItemDataForStyle:(*&self->_flags >> 2) & 7];
    v7 = [v4 titleTextAttributesForState:0];
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];
    v10 = [appearanceStorage textAttributesForState:0];
    v5 = _finalAttributesFromSources(v7, v10, 0, 0);

    v11 = [v4 titleTextAttributesForState:1];
    v12 = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage2 = [v12 appearanceStorage];
    v14 = [appearanceStorage2 textAttributesForState:1];
    v34 = _finalAttributesFromSources(v11, v14, 0, 0);

    v15 = [v4 titleTextAttributesForState:2];
    v16 = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage3 = [v16 appearanceStorage];
    v18 = [appearanceStorage3 textAttributesForState:2];
    v6 = _finalAttributesFromSources(v15, v18, 0, 0);
  }

  tintColor = [(_UIButtonBarButtonVisualProviderIOS *)self tintColor];
  v20 = tintColor;
  if (tintColor)
  {
    tintColor2 = tintColor;
  }

  else
  {
    tintColor2 = [(UIView *)self->super._button tintColor];
  }

  v22 = tintColor2;

  traitCollection = [(UIView *)self->super._button traitCollection];
  v24 = [(NSArray *)self->_barButtonTitleAttributes objectAtIndexedSubscript:0];
  v33 = v5;
  v25 = _finalAttributesFromSources(v5, v24, v22, traitCollection);

  v26 = [(NSArray *)self->_barButtonTitleAttributes objectAtIndexedSubscript:1];
  v27 = _finalAttributesFromSources(v34, v26, v22, traitCollection);

  v28 = [(NSArray *)self->_barButtonTitleAttributes objectAtIndexedSubscript:2];
  v29 = _finalAttributesFromSources(v6, v28, v22, traitCollection);

  v35[0] = v25;
  v35[1] = v27;
  v35[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  finalTitleAttributes = self->_finalTitleAttributes;
  if (finalTitleAttributes && ![(NSArray *)finalTitleAttributes isEqualToArray:v30, v33])
  {
    [(NSMutableDictionary *)self->_titleLookup removeAllObjects];
  }

  v32 = self->_finalTitleAttributes;
  self->_finalTitleAttributes = v30;
}

- (void)updateMenu
{
  WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
  menu = [WeakRetained menu];

  if ([(_UIButtonBarButton *)self->super._button isBackButton])
  {
    _menuIsPrimary = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->super._barButtonItem);
    _menuIsPrimary = [v6 _menuIsPrimary];
  }

  v7 = objc_loadWeakRetained(&self->super._barButtonItem);
  _secondaryActionsProvider = [v7 _secondaryActionsProvider];

  v9 = objc_loadWeakRetained(&self->super._barButtonItem);
  _owningButtonGroup = [v9 _owningButtonGroup];

  if (_secondaryActionsProvider)
  {
    objc_copyWeak(&to, &self->super._barButtonItem);
    if (_menuIsPrimary)
    {
      v11 = &v31;
      v12 = v30;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v13 = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke;
    }

    else
    {
      v11 = &v29;
      v12 = v28;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v13 = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_2;
    }

    v12[2] = v13;
    v12[3] = &unk_1E70F7478;
    v12[4] = _secondaryActionsProvider;
    objc_copyWeak(v11, &to);
    v17 = _Block_copy(v12);
    menuProvider = self->_menuProvider;
    self->_menuProvider = v17;

    objc_destroyWeak(v11);
    objc_destroyWeak(&to);
  }

  else
  {
    if (menu)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_3;
      aBlock[3] = &unk_1E70F6A70;
      v27 = menu;
      v14 = _Block_copy(aBlock);
      v15 = self->_menuProvider;
      self->_menuProvider = v14;

      v16 = v27;
    }

    else
    {
      if (_owningButtonGroup)
      {
        v19 = objc_loadWeakRetained(&self->super._barButtonItem);
        _hasAction = [v19 _hasAction];

        if ((_hasAction & 1) == 0)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_4;
          v24[3] = &unk_1E70F6A70;
          v25 = _owningButtonGroup;
          v22 = _Block_copy(v24);
          v23 = self->_menuProvider;
          self->_menuProvider = v22;

          _menuIsPrimary = 1;
          goto LABEL_15;
        }
      }

      v16 = self->_menuProvider;
      self->_menuProvider = 0;
    }
  }

LABEL_15:
  v21 = objc_loadWeakRetained(&self->super._barButtonItem);
  -[_UIButtonBarButton setPreferredMenuElementOrder:](self->super._button, "setPreferredMenuElementOrder:", [v21 preferredMenuElementOrder]);

  [(UIControl *)self->super._button setContextMenuInteractionEnabled:self->_menuProvider != 0];
  [(UIControl *)self->super._button setShowsMenuAsPrimaryAction:_menuIsPrimary];
}

- (id)tintColor
{
  WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
  if ([WeakRetained style] && _UISolariumEnabled())
  {
  }

  else
  {
    v4 = objc_loadWeakRetained(&self->super._barButtonItem);
    isEnabled = [v4 isEnabled];

    if ((isEnabled & 1) == 0)
    {
      v6 = +[UIColor tertiaryLabelColor];
      if (v6)
      {
        tintColor3 = v6;
        goto LABEL_21;
      }
    }
  }

  v8 = objc_loadWeakRetained(&self->super._barButtonItem);
  if ([v8 _prefersFilledAppearance])
  {
    usesAdjustedTintColorWhenItemPrefersFilledAppearance = [(_UIButtonBarButton *)self->super._button usesAdjustedTintColorWhenItemPrefersFilledAppearance];

    if (usesAdjustedTintColorWhenItemPrefersFilledAppearance)
    {
      v10 = objc_loadWeakRetained(&self->super._barButtonItem);
      tintColor = [v10 tintColor];
      if (tintColor)
      {
        v12 = objc_loadWeakRetained(&self->super._barButtonItem);
        tintColor2 = [v12 tintColor];
      }

      else
      {
        tintColor2 = [(UIView *)self->super._button _ancestorTintColor];
      }

      traitCollection = [(UIView *)self->super._button traitCollection];
      tintColor3 = [UIColor _legibleForegroundColorForBackgroundColor:tintColor2 traitCollection:traitCollection];

      if (tintColor3)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  v14 = objc_loadWeakRetained(&self->super._barButtonItem);
  tintColor3 = [v14 tintColor];

  if (!tintColor3)
  {
    v15 = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [v15 appearanceStorage];
    tintColor3 = [appearanceStorage tintColor];

    if (!tintColor3)
    {
      v17 = objc_loadWeakRetained(&self->_appearanceDelegate);
      v18 = objc_opt_respondsToSelector();

      v19 = objc_loadWeakRetained(&self->_appearanceDelegate);
      v20 = v19;
      if (v18)
      {
        [v19 tintColorForButtonBarButton:self->super._button];
      }

      else
      {
        [v19 tintColor];
      }
      tintColor3 = ;
    }
  }

LABEL_21:

  return tintColor3;
}

- (void)_setupAlternateTitles
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_titleButton)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    _backButtonAlternateTitles = [WeakRetained _backButtonAlternateTitles];

    if ([_backButtonAlternateTitles count])
    {
      v5 = objc_opt_new();
      v6 = objc_loadWeakRetained(&self->super._barButtonItem);
      resolvedTitle = [v6 resolvedTitle];

      if (resolvedTitle)
      {
        v36 = [_backButtonAlternateTitles containsObject:resolvedTitle];
      }

      else
      {
        v36 = 0;
      }

      if (!self->_titleLookup)
      {
        v11 = objc_opt_new();
        titleLookup = self->_titleLookup;
        self->_titleLookup = v11;
      }

      if (resolvedTitle)
      {
        v13 = [(_UIButtonBarButtonVisualProviderIOS *)self _titleContentForTitle:resolvedTitle];
        [v5 addObject:v13];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = _backButtonAlternateTitles;
      v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v37 + 1) + 8 * i);
            v20 = [(_UIButtonBarButtonVisualProviderIOS *)self _titleContentForTitle:v19];
            v21 = [v5 indexOfObject:v20 inSortedRange:0 options:objc_msgSend(v5 usingComparator:{"count"), 1024, &__block_literal_global_55}];
            if (v19)
            {
              v22 = v21 == 0;
            }

            else
            {
              v22 = 0;
            }

            if (!v22)
            {
              [v5 insertObject:v20 atIndex:v21];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v16);
      }

      v23 = [v5 copy];
      titleContent = self->_titleContent;
      self->_titleContent = v23;

      v25 = [(NSArray *)self->_titleContent count];
      v26 = v36 ^ 1;
      if (!resolvedTitle)
      {
        v26 = 0;
      }

      if (v26)
      {
        if (v25 > 1)
        {
          goto LABEL_30;
        }
      }

      else if (v25)
      {
LABEL_30:
        LODWORD(v10) = 1132068864;
        [(UIView *)self->_titleButton setContentCompressionResistancePriority:0 forAxis:v10];
        firstObject = [(NSArray *)self->_titleContent firstObject];
        [firstObject width];
        v29 = v28;

        p_backButtonTitleMaxWidthConstraint = &self->_backButtonTitleMaxWidthConstraint;
        backButtonTitleMaxWidthConstraint = self->_backButtonTitleMaxWidthConstraint;
        if (backButtonTitleMaxWidthConstraint)
        {
          [(NSLayoutConstraint *)backButtonTitleMaxWidthConstraint setConstant:v29];
        }

        else
        {
          widthAnchor = [(UIView *)self->_titleButton widthAnchor];
          v34 = [widthAnchor constraintLessThanOrEqualToConstant:v29];
          v35 = *p_backButtonTitleMaxWidthConstraint;
          *p_backButtonTitleMaxWidthConstraint = v34;
        }

        v32 = 1;
        goto LABEL_36;
      }
    }

    else
    {
      v9 = self->_titleContent;
      self->_titleContent = 0;
    }

    LODWORD(v10) = 1144913920;
    [(UIView *)self->_titleButton setContentCompressionResistancePriority:0 forAxis:v10];
    v32 = 0;
    p_backButtonTitleMaxWidthConstraint = &self->_backButtonTitleMaxWidthConstraint;
LABEL_36:
    [*p_backButtonTitleMaxWidthConstraint setActive:v32];

    return;
  }

  v8 = self->_titleContent;
  self->_titleContent = 0;
}

- (id)buttonSpringLoadedInteractionEffect
{
  v2 = objc_opt_new();

  return v2;
}

- (void)_updateMonochromaticTreatment
{
  traitCollection = [(UIView *)self->super._button traitCollection];
  [traitCollection _monochromaticTreatment];

  WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
  if ([WeakRetained isEnabled])
  {
    v5 = objc_loadWeakRetained(&self->super._barButtonItem);
    if ([v5 isSelected])
    {
      v6 = 0;
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->super._barButtonItem);
      if ([v7 _prefersFilledAppearance] && -[_UIButtonBarButton usesAdjustedTintColorWhenItemPrefersFilledAppearance](self->super._button, "usesAdjustedTintColorWhenItemPrefersFilledAppearance"))
      {
        v6 = 0;
      }

      else
      {
        v8 = objc_loadWeakRetained(&self->super._barButtonItem);
        tintColor = [v8 tintColor];
        if (tintColor)
        {
          v6 = +[_UIButtonBarButton shouldUseMonochromeTreatmentWithCustomTintColor];
        }

        else
        {
          v6 = 1;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  [(_UIModernBarButton *)self->_titleButton setEnableMonochromaticTreatmentOnImageAndTitle:v6];
  [(_UIModernBarButton *)self->_imageButton setEnableMonochromaticTreatmentOnImageAndTitle:v6];
  backIndicatorButton = self->_backIndicatorButton;

  [(_UIModernBarButton *)backIndicatorButton setEnableMonochromaticTreatmentOnImageAndTitle:v6];
}

- (void)activateWidthMinimizer
{
  widthMinimizingConstraint = [(_UIButtonBarButton *)self->super._button widthMinimizingConstraint];
  [(NSMutableDictionary *)self->_currentConstraints setObject:widthMinimizingConstraint forKeyedSubscript:@"minimizeWidth"];
  [(NSMutableDictionary *)self->_oldConstraints setObject:0 forKeyedSubscript:@"minimizeWidth"];
}

- (void)_updateViewsForMaskingEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  flags = self->_flags;
  if ((flags & 2) != 0)
  {
    backgroundView = 0;
  }

  else
  {
    backgroundView = self->_backgroundView;
  }

  v9 = backgroundView;
  titleButton = self->_titleButton;
  if (!titleButton)
  {
    titleButton = self->_imageButton;
  }

  backButtonMask = self->_backButtonMask;
  v10 = titleButton;
  v11 = backButtonMask;
  backIndicatorButton = self->_backIndicatorButton;
  if ((flags & 2) != 0)
  {
    v7 = self->_backgroundView;
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  [(UIView *)self->super._button _ensureViewsAreInstalledInRelativeOrder:&v9 viewCount:5 insertionStartIndex:0];
  [(UIView *)self->_backButtonMask setHidden:(*&self->_flags & 2) == 0, v9, v10, v11, backIndicatorButton];
  if ((*&self->_flags & 2) != 0)
  {
    v8 = 18;
  }

  else
  {
    v8 = 0;
  }

  [(UIView *)self->_backgroundView setCompositingMode:v8];
}

- (double)_effectiveEdgeSpacing
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->super._barButtonItem);
    [WeakRetained defaultEdgeSpacing];
    v6 = v5;
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained additionalEdgeSpacingForButtonBarButton:self->super._button representingBarButtonItem:v4];
      v6 = v6 + v7;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)symbolImageView
{
  imageButton = self->_imageButton;
  if (imageButton)
  {
    imageButton = [imageButton _imageView];
    v2 = vars8;
  }

  return imageButton;
}

- (void)_removeTitleButton
{
  backButtonTitleMaxWidthConstraint = self->_backButtonTitleMaxWidthConstraint;
  self->_backButtonTitleMaxWidthConstraint = 0;

  [(UIView *)self->_titleButton removeFromSuperview];
  titleButton = self->_titleButton;
  self->_titleButton = 0;
}

- (void)buttonDidUpdateBoundsSize
{
  if (!_UISMCBarsEnabled())
  {
    return;
  }

  if (!self->_titleContent)
  {
    return;
  }

  if (!self->super._button)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);

  if (!WeakRetained)
  {
    return;
  }

  _backButtonTitleForCurrentBoundsSize = [(_UIButtonBarButtonVisualProviderIOS *)self _backButtonTitleForCurrentBoundsSize];
  v5 = [(UIButton *)self->_titleButton attributedTitleForState:0];
  string = [v5 string];

  v7 = string;
  v8 = _backButtonTitleForCurrentBoundsSize;
  v12 = v8;
  if (v7 == v8)
  {

    v10 = v7;
  }

  else
  {
    if (v8 && v7)
    {
      v9 = [v7 isEqual:v8];

      if (v9)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    [(_UIButtonBarButtonVisualProviderIOS *)self _setTitle:v12];
    button = self->super._button;
    v10 = objc_loadWeakRetained(&self->super._barButtonItem);
    [(_UIButtonBarButtonVisualProviderIOS *)self configureButton:button fromBarButtonItem:v10];
  }

LABEL_15:
}

- (id)contentView
{
  imageButton = self->_imageButton;
  if (imageButton)
  {
    goto LABEL_2;
  }

  v3 = self->_titleButton;
  if (!v3)
  {
    imageButton = self->_backIndicatorButton;
LABEL_2:
    v3 = imageButton;
  }

  return v3;
}

- (id)symbolConfigurationCompact:(BOOL)compact
{
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  if (!appearanceData)
  {
    appearanceData = [_UIBarButtonItemData standardItemDataForStyle:(*&self->_flags >> 2) & 7];
  }

  if (compact)
  {
    [appearanceData compactImageSymbolConfiguration];
  }

  else
  {
    [appearanceData imageSymbolConfiguration];
  }
  v6 = ;

  return v6;
}

- (id)backgroundImageForState:(unint64_t)state compact:(BOOL)compact
{
  compactCopy = compact;
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v8 = appearanceData;
  if (appearanceData)
  {
    if (state)
    {
      v9 = 1;
    }

    else
    {
      v9 = state & 2;
    }

    v10 = [appearanceData backgroundImageForState:v9];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];
    v10 = [appearanceStorage backgroundImageForState:state style:(*&self->_flags >> 2) & 7 isMini:compactCopy];
  }

  return v10;
}

- (id)backButtonBackgroundImageForState:(unint64_t)state compact:(BOOL)compact
{
  compactCopy = compact;
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v8 = appearanceData;
  if (appearanceData)
  {
    if (state)
    {
      v9 = 1;
    }

    else
    {
      v9 = state & 2;
    }

    v10 = [appearanceData backgroundImageForState:v9];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];
    v10 = [appearanceStorage backButtonBackgroundImageForState:state isMini:compactCopy];
  }

  return v10;
}

- (UIOffset)backgroundVerticalAdjustmentForCompact:(BOOL)compact
{
  compactCopy = compact;
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = appearanceData;
  if (appearanceData)
  {
    [appearanceData backgroundImagePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];
    [appearanceStorage backgroundVerticalAdjustmentForBarMetrics:compactCopy];
    v10 = v13;
    v8 = 0.0;
  }

  v14 = v8;
  v15 = v10;
  result.vertical = v15;
  result.horizontal = v14;
  return result;
}

- (UIOffset)backButtonBackgroundVerticalAdjustmentForCompact:(BOOL)compact
{
  compactCopy = compact;
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = appearanceData;
  if (appearanceData)
  {
    [appearanceData backgroundImagePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];
    [appearanceStorage backButtonBackgroundVerticalAdjustmentForBarMetrics:compactCopy];
    v10 = v13;
    v8 = 0.0;
  }

  v14 = v8;
  v15 = v10;
  result.vertical = v15;
  result.horizontal = v14;
  return result;
}

- (UIOffset)titlePositionOffsetForCompact:(BOOL)compact
{
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = appearanceData;
  if (appearanceData)
  {
    [appearanceData titlePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];

    if (compact)
    {
      [appearanceStorage miniTitlePositionOffset];
    }

    else
    {
      [appearanceStorage titlePositionOffset];
    }
    v13 = ;
    v14 = v13;
    if (v13)
    {
      [v13 UIOffsetValue];
      v8 = v15;
      v10 = v16;
    }

    else
    {
      v8 = 0.0;
      v10 = 0.0;
    }
  }

  v17 = v8;
  v18 = v10;
  result.vertical = v18;
  result.horizontal = v17;
  return result;
}

- (UIOffset)backButtonTitlePositionOffsetForCompact:(BOOL)compact
{
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = appearanceData;
  if (appearanceData)
  {
    [appearanceData titlePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    appearanceStorage = [WeakRetained appearanceStorage];

    if (compact)
    {
      [appearanceStorage miniBackButtonTitlePositionOffset];
    }

    else
    {
      [appearanceStorage backButtonTitlePositionOffset];
    }
    v13 = ;
    v14 = v13;
    if (v13)
    {
      [v13 UIOffsetValue];
      v8 = v15;
      v10 = v16;
    }

    else
    {
      v8 = 0.0;
      v10 = 0.0;
    }
  }

  v17 = v8;
  v18 = v10;
  result.vertical = v18;
  result.horizontal = v17;
  return result;
}

- (id)_backIndicatorImageForCompact:(BOOL)compact
{
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = appearanceData;
  if (!appearanceData)
  {
    goto LABEL_16;
  }

  if (compact)
  {
    [appearanceData compactBackIndicatorImage];
  }

  else
  {
    [appearanceData backIndicatorImage];
  }
  backIndicatorImage = ;
  if (!backIndicatorImage)
  {
LABEL_16:
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    backIndicatorImage = [WeakRetained backIndicatorImage];

    if (!backIndicatorImage)
    {
      v9 = +[_UIBarButtonItemData standardBackButtonData];
      v10 = v9;
      if (compact)
      {
        [v9 compactBackIndicatorImage];
      }

      else
      {
        [v9 backIndicatorImage];
      }
      backIndicatorImage = ;
    }
  }

  imageFlippedForRightToLeftLayoutDirection = [backIndicatorImage imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_backIndicatorSymbolConfigurationForCompact:(BOOL)compact
{
  if (dyld_program_sdk_at_least())
  {
    appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
    if (!appearanceData)
    {
      WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
      backIndicatorImage = [WeakRetained backIndicatorImage];

      if (backIndicatorImage)
      {
        appearanceData = 0;
      }

      else
      {
        appearanceData = +[_UIBarButtonItemData standardBackButtonData];
      }
    }

    if (compact)
    {
      [appearanceData compactBackIndicatorSymbolConfiguration];
    }

    else
    {
      [appearanceData backIndicatorSymbolConfiguration];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_backIndicatorMaskForCompact:(BOOL)compact
{
  appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = appearanceData;
  if (!appearanceData)
  {
    goto LABEL_13;
  }

  if (compact)
  {
    [appearanceData compactBackIndicatorTransitionMaskImage];
  }

  else
  {
    [appearanceData backIndicatorTransitionMaskImage];
  }
  backIndicatorMaskImage = ;
  if (!backIndicatorMaskImage)
  {
LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    backIndicatorMaskImage = [WeakRetained backIndicatorMaskImage];

    if (!backIndicatorMaskImage)
    {
      v9 = +[_UIBarButtonItemData standardBackButtonData];
      backIndicatorMaskImage = [v9 compactBackIndicatorTransitionMaskImage];
    }
  }

  imageFlippedForRightToLeftLayoutDirection = [backIndicatorMaskImage imageFlippedForRightToLeftLayoutDirection];

  return imageFlippedForRightToLeftLayoutDirection;
}

- (id)_backIndicatorMaskSymbolConfigurationForCompact:(BOOL)compact
{
  if (dyld_program_sdk_at_least())
  {
    appearanceData = [(_UIButtonBarButton *)self->super._button appearanceData];
    if (!appearanceData)
    {
      WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
      backIndicatorImage = [WeakRetained backIndicatorImage];

      if (backIndicatorImage)
      {
        appearanceData = 0;
      }

      else
      {
        appearanceData = +[_UIBarButtonItemData standardBackButtonData];
      }
    }

    if (compact)
    {
      [appearanceData compactBackIndicatorTransitionMaskSymbolConfiguration];
    }

    else
    {
      [appearanceData backIndicatorTransitionMaskSymbolConfiguration];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resetButtonHasHighlighted
{
  [(UIControl *)self->_titleButton _setTouchHasHighlighted:0];
  [(UIControl *)self->_imageButton _setTouchHasHighlighted:0];
  backIndicatorButton = self->_backIndicatorButton;

  [(UIControl *)backIndicatorButton _setTouchHasHighlighted:0];
}

- (id)pointerPreviewParameters
{
  v3 = objc_opt_new();
  if ((*&self->_flags & 0x20) != 0 && self->_systemItem == 24)
  {
    [(UIView *)self->_backgroundView frame];
    v4 = [UIBezierPath bezierPathWithOvalInRect:?];
    [v3 setShadowPath:v4];
  }

  else
  {
    if (![(UIControl *)self->super._button isSelected])
    {
      goto LABEL_10;
    }

    titleButton = self->_titleButton;
    if (titleButton)
    {
      v4 = titleButton;
    }

    else
    {
      v4 = self->_imageButton;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    [(_UIModernBarButton *)v4 _selectedIndicatorBounds];
    [(UIView *)v4 convertRect:self->super._button toView:?];
    v6 = [UIBezierPath bezierPathWithOvalInRect:?];
    [v3 setShadowPath:v6];
  }

LABEL_10:

  return v3;
}

- (id)pointerShapeInContainer:(id)container
{
  containerCopy = container;
  v5 = +[_UIPointerSettingsDomain rootSettings];
  navigationAndToolbarSettings = [v5 navigationAndToolbarSettings];

  if ((*&self->_flags & 0x20) != 0 && self->_systemItem == 24)
  {
    backgroundView = self->_backgroundView;
    [(UIView *)backgroundView bounds];
    [(UIView *)backgroundView convertRect:containerCopy toView:?];
    v8 = [UIPointerShape shapeWithRoundedRect:v37.origin.x cornerRadius:v37.origin.y, v37.size.width, v37.size.height, CGRectGetWidth(v37) * 0.5];
    goto LABEL_32;
  }

  if ([(UIControl *)self->super._button isSelected])
  {
    titleButton = self->_titleButton;
    if (titleButton)
    {
      v10 = titleButton;
    }

    else
    {
      v10 = self->_imageButton;
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    if ([(UIButton *)v10 _hasVisibleDefaultSelectionIndicator])
    {
      [(_UIModernBarButton *)v10 _selectedIndicatorBounds];
      [(UIView *)v10 convertRect:containerCopy toView:?];
      v8 = [UIPointerShape shapeWithRoundedRect:"shapeWithRoundedRect:cornerRadius:" cornerRadius:?];

      goto LABEL_32;
    }
  }

  backIndicatorButton = self->_backIndicatorButton;
  if (backIndicatorButton)
  {
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
    [(UIView *)backIndicatorButton frame];
    v42.origin.x = v16;
    v42.origin.y = v17;
    v42.size.width = v18;
    v42.size.height = v19;
    v38.origin.x = v12;
    v38.origin.y = v13;
    v38.size.width = v14;
    v38.size.height = v15;
    v39 = CGRectUnion(v38, v42);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v24 = self->_titleButton;
    goto LABEL_16;
  }

  v24 = self->_titleButton;
  if (!v24 && !self->_imageButton)
  {
LABEL_35:
    v8 = 0;
    goto LABEL_32;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
LABEL_16:
  v25 = v24 == 0;
  if (!v24)
  {
    imageButton = self->_imageButton;
    if (!imageButton)
    {
      v25 = 1;
      goto LABEL_23;
    }

    imageView = [(UIButton *)imageButton imageView];
    goto LABEL_21;
  }

  imageView = [(UIButton *)v24 titleLabel];
  if (([imageView isHidden] & 1) == 0)
  {
LABEL_21:
    [imageView bounds];
    [imageView convertRect:self->super._button toView:?];
    v43.origin.x = v28;
    v43.origin.y = v29;
    v43.size.width = v30;
    v43.size.height = v31;
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v41 = CGRectUnion(v40, v43);
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    height = v41.size.height;
    goto LABEL_22;
  }

  v25 = 1;
LABEL_22:

LABEL_23:
  if ([(_UIButtonBarButtonVisualProviderIOS *)self prefersCapsularPointerShape])
  {
    if ([(_UIButtonBarButton *)self->super._button isSingleItemInSectionWithPlatter]&& self->_imageButton)
    {
      v32 = 1;
    }

    else if (self->_backIndicatorButton)
    {
      v32 = v25;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  button = self->super._button;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  v8 = _calculateFinalPointerShape(button, containerCopy, WeakRetained, navigationAndToolbarSettings, [(_UIButtonBarButton *)self->super._button isBackButton], [(UIView *)self->super._button effectiveUserInterfaceLayoutDirection]!= UIUserInterfaceLayoutDirectionRightToLeft, v32, [(_UIButtonBarButtonVisualProviderIOS *)self prefersCapsularPointerShape], x, y, width, height);

LABEL_32:

  return v8;
}

- (id)matchingPointerShapeForView:(id)view rect:(CGRect)rect inContainer:(id)container
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  containerCopy = container;
  viewCopy = view;
  v13 = +[_UIPointerSettingsDomain rootSettings];
  navigationAndToolbarSettings = [v13 navigationAndToolbarSettings];
  v15 = _calculateFinalPointerShape(viewCopy, containerCopy, 0, navigationAndToolbarSettings, 0, 0, 0, [(_UIButtonBarButtonVisualProviderIOS *)self prefersCapsularPointerShape], x, y, width, height);

  return v15;
}

- (BOOL)shouldLift
{
  if ((*&self->_flags & 0x20) != 0 && self->_systemItem == 24)
  {
    LOBYTE(isSelected) = 1;
  }

  else
  {
    isSelected = [(UIControl *)self->super._button isSelected];
    if (isSelected)
    {
      v3 = +[_UIPointerSettingsDomain rootSettings];
      navigationAndToolbarSettings = [v3 navigationAndToolbarSettings];

      LOBYTE(v3) = [navigationAndToolbarSettings enableLiftOnSelected];
      LOBYTE(isSelected) = v3;
    }
  }

  return isSelected;
}

- (void)updateActiveConstraints:(id)constraints
{
  constraintsCopy = constraints;
  oldConstraints = self->_oldConstraints;
  if (oldConstraints)
  {
    dictionary = oldConstraints;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = dictionary;
  objc_storeStrong(&self->_oldConstraints, self->_currentConstraints);
  objc_storeStrong(&self->_currentConstraints, v6);
  constraintsCopy[2]();
  if ([(_UIButtonBarButtonVisualProviderIOS *)self allowsFittingSizeCachingWithNilLayoutEngine])
  {
    v7 = [(NSMutableDictionary *)self->_oldConstraints count];
    if (v7 != [(NSMutableDictionary *)self->_currentConstraints count]|| ([(NSMutableDictionary *)self->_currentConstraints isEqualToDictionary:self->_oldConstraints]& 1) == 0)
    {
      [(_UIButtonBarButton *)self->super._button _invalidateSystemLayoutSizeFittingSize];
    }
  }

  if ([(NSMutableDictionary *)self->_oldConstraints count])
  {
    v8 = MEMORY[0x1E69977A0];
    allValues = [(NSMutableDictionary *)self->_oldConstraints allValues];
    [v8 deactivateConstraints:allValues];

    [(NSMutableDictionary *)self->_oldConstraints removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_currentConstraints count])
  {
    v10 = MEMORY[0x1E69977A0];
    allValues2 = [(NSMutableDictionary *)self->_currentConstraints allValues];
    [v10 activateConstraints:allValues2];
  }
}

- (void)addActiveConstraint:(id)constraint named:(id)named
{
  constraintCopy = constraint;
  namedCopy = named;
  if (![namedCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:872 description:@"Activating a constraint requires a non-empty identifier"];
  }

  if (!constraintCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:873 description:{@"Cannot activate a nil constraint (%@)", namedCopy}];
  }

  p_oldConstraints = &self->_oldConstraints;
  v9 = [(NSMutableDictionary *)self->_oldConstraints objectForKeyedSubscript:namedCopy];
  v10 = v9;
  v11 = constraintCopy;
  if (v9 == constraintCopy)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:878 description:@"On non-optimal path for reusing existing constraint – did you mean to call -activate[Width|Height]Minimizer instead?"];

    v11 = constraintCopy;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else if (!v9)
  {
    goto LABEL_10;
  }

  v12 = [v10 _isEqualToConstraintValue:constraintCopy includingConstant:0 includeOtherMutableProperties:0];
  v11 = constraintCopy;
  if (v12)
  {
    [constraintCopy constant];
    [v10 setConstant:?];
    [(NSMutableDictionary *)self->_currentConstraints setObject:v10 forKeyedSubscript:namedCopy];
    v13 = 0;
    goto LABEL_11;
  }

LABEL_10:
  [v11 setIdentifier:namedCopy];
  p_oldConstraints = &self->_currentConstraints;
  v13 = constraintCopy;
LABEL_11:
  [(NSMutableDictionary *)*p_oldConstraints setObject:v13 forKeyedSubscript:namedCopy];
}

- (void)activateHeightMinimizer
{
  heightMinimizingConstraint = [(_UIButtonBarButton *)self->super._button heightMinimizingConstraint];
  [(NSMutableDictionary *)self->_currentConstraints setObject:heightMinimizingConstraint forKeyedSubscript:@"minimizeHeight"];
  [(NSMutableDictionary *)self->_oldConstraints setObject:0 forKeyedSubscript:@"minimizeHeight"];
}

- (void)setBackButtonMaskEnabled:(BOOL)enabled
{
  if (self->_backButtonMask)
  {
    flags = self->_flags;
    if (((((flags & 2) == 0) ^ enabled) & 1) == 0)
    {
      if (enabled)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      *&self->_flags = flags & 0xFD | v4;
      [(_UIButtonBarButtonVisualProviderIOS *)self _updateViewsForMaskingEnabled];
    }
  }
}

- (BOOL)buttonSelectionState:(id)state forRequestedState:(BOOL)requestedState
{
  if (!requestedState)
  {
    return 0;
  }

  if ([state isBackButton])
  {
    return 0;
  }

  if (self->_titleButton)
  {
    return 1;
  }

  return self->_imageButton != 0;
}

- (void)updateButton:(id)button forSelectedState:(BOOL)state
{
  stateCopy = state;
  buttonCopy = button;
  titleButton = self->_titleButton;
  if (!titleButton || [(UIControl *)titleButton isSelected]== stateCopy)
  {
    imageButton = self->_imageButton;
    if (imageButton)
    {
      v7 = [(UIControl *)imageButton isSelected]^ stateCopy;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  [(UIButton *)self->_titleButton setSelected:stateCopy];
  [(UIButton *)self->_imageButton setSelected:stateCopy];
  if (stateCopy)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  backgroundImages = self->_backgroundImages;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  v12 = [(NSMutableDictionary *)backgroundImages objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = self->_backgroundImages;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
    v15 = [(NSMutableDictionary *)v13 objectForKeyedSubscript:v14];
    [(UIImageView *)self->_backgroundView setImage:v15];
  }

  if ((_UISMCBarsEnabled() & v7) == 1)
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _updateMonochromaticTreatment];
    [buttonCopy setNeedsLayout];
  }
}

- (void)updateButton:(id)button forHighlightedState:(BOOL)state
{
  stateCopy = state;
  [(UIButton *)self->_backIndicatorButton setHighlighted:state];
  [(UIButton *)self->_titleButton setHighlighted:stateCopy];
  [(UIButton *)self->_imageButton setHighlighted:stateCopy];
  backgroundImages = self->_backgroundImages;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:stateCopy];
  v8 = [(NSMutableDictionary *)backgroundImages objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = self->_backgroundImages;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:stateCopy];
    v10 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v11];
    [(UIImageView *)self->_backgroundView setImage:v10];
  }
}

- (void)updateButton:(id)button forHeldState:(BOOL)state
{
  stateCopy = state;
  [(UIButton *)self->_backIndicatorButton _setHasActiveMenuPresentation:state];
  [(UIButton *)self->_titleButton _setHasActiveMenuPresentation:stateCopy];
  imageButton = self->_imageButton;

  [(UIButton *)imageButton _setHasActiveMenuPresentation:stateCopy];
}

- (void)updateButton:(id)button forEnabledState:(BOOL)state
{
  stateCopy = state;
  [(UIButton *)self->_backIndicatorButton setEnabled:state];
  [(UIButton *)self->_titleButton setEnabled:stateCopy];
  [(UIButton *)self->_imageButton setEnabled:stateCopy];
  if (stateCopy)
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  backgroundImages = self->_backgroundImages;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v9 = [(NSMutableDictionary *)backgroundImages objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = self->_backgroundImages;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    v11 = [(NSMutableDictionary *)v10 objectForKeyedSubscript:v12];
    [(UIImageView *)self->_backgroundView setImage:v11];
  }
}

- (void)_computeTextAttributesForBarButtonItem:(id)item
{
  v16[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  *&self->_flags = *&self->_flags & 0xE3 | (4 * ([itemCopy style] & 7));
  v5 = [itemCopy titleTextAttributesForState:0];
  v6 = v5;
  v7 = MEMORY[0x1E695E0F8];
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  v9 = [itemCopy titleTextAttributesForState:{1, v8}];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  v16[1] = v11;
  v12 = [itemCopy titleTextAttributesForState:2];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v7;
  }

  v16[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
  barButtonTitleAttributes = self->_barButtonTitleAttributes;
  self->_barButtonTitleAttributes = v14;

  [(_UIButtonBarButtonVisualProviderIOS *)self _computeTextAttributes];
}

- (void)_setTitle:(id)title
{
  v30 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (titleCopy)
  {
    goto LABEL_10;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v6 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_6;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    titleButton = self->_titleButton;
    _allButtonContent = [(UIButton *)titleButton _allButtonContent];
    v24 = 138412802;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = titleButton;
    v28 = 2112;
    v29 = _allButtonContent;
    _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Received nil title, substituting item's title (item=%@, button=%@, buttonContent=%@)", &v24, 0x20u);
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v5 = *(__UILogGetCategoryCachedImpl("Assert", &_setTitle____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = v5;
    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    v8 = self->_titleButton;
    _allButtonContent = [(UIButton *)v8 _allButtonContent];
    v24 = 138412802;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = _allButtonContent;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Received nil title, substituting item's title (item=%@, button=%@, buttonContent=%@)", &v24, 0x20u);
    goto LABEL_5;
  }

LABEL_7:
  v10 = objc_loadWeakRetained(&self->super._barButtonItem);
  resolvedTitle = [v10 resolvedTitle];
  v12 = resolvedTitle;
  v13 = &stru_1EFB14550;
  if (resolvedTitle)
  {
    v13 = resolvedTitle;
  }

  titleCopy = v13;

LABEL_10:
  if (!self->_finalTitleAttributes)
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _computeTextAttributes];
  }

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:0];
  v16 = [v14 initWithString:titleCopy attributes:v15];

  [(UIButton *)self->_titleButton setAttributedTitle:v16 forState:0];
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:1];
  v19 = [v17 initWithString:titleCopy attributes:v18];

  [(UIButton *)self->_titleButton setAttributedTitle:v19 forState:1];
  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:2];
  v22 = [v20 initWithString:titleCopy attributes:v21];

  [(UIButton *)self->_titleButton setAttributedTitle:v22 forState:2];
}

- (void)_configureImageOrTitleCompact:(BOOL)compact
{
  compactCopy = compact;
  v56[2] = *MEMORY[0x1E69E9840];
  if (![(_UIButtonBarButton *)self->super._button isBreadcrumb])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    v7 = [WeakRetained _imageForState:0 compact:compactCopy type:0];

    if (v7)
    {
      [(_UIButtonBarButtonVisualProviderIOS *)self _removeTitleButton];
      imageButton = self->_imageButton;
      if (imageButton)
      {
        [(UIButton *)imageButton setNeedsLayout];
      }

      else
      {
        v13 = _newButton(self);
        v14 = self->_imageButton;
        self->_imageButton = v13;

        v15 = objc_loadWeakRetained(&self->super._barButtonItem);
        [v15 _additionalSelectionInsets];
        [(_UIModernBarButton *)self->_imageButton _setAdditionalSelectionInsets:?];

        [(_UIModernBarButton *)self->_imageButton _setupForUseAsImageButton];
      }

      v16 = objc_loadWeakRetained(&self->super._barButtonItem);
      -[UIButton setEnabled:](self->_imageButton, "setEnabled:", [v16 isEnabled]);

      resolvedTitle = v7;
      *&self->_flags = *&self->_flags & 0xFE | [resolvedTitle hasBaseline];
      v17 = [(_UIButtonBarButtonVisualProviderIOS *)self symbolConfigurationCompact:compactCopy];
      [(UIButton *)self->_imageButton setImage:resolvedTitle forState:0];
      [(UIButton *)self->_imageButton setPreferredSymbolConfiguration:v17 forImageInState:0];
      [(UIButton *)self->_imageButton setImage:resolvedTitle forState:2];
      [(_UIModernBarButton *)self->_imageButton _setGuardAgainstDegenerateBaselineCalculation:1];
      v18 = objc_loadWeakRetained(&self->super._barButtonItem);
      -[UIControl setSymbolAnimationEnabled:](self->_imageButton, "setSymbolAnimationEnabled:", [v18 isSymbolAnimationEnabled]);

      [(_UIModernBarButton *)self->_imageButton setUsesTintColorCapsuleForSelection:[(_UIButtonBarButton *)self->super._button usesTintColorCapsuleForSelection]];
LABEL_14:

LABEL_16:
      return;
    }

    [(UIView *)self->_imageButton removeFromSuperview];
    v9 = self->_imageButton;
    self->_imageButton = 0;

    *&self->_flags &= ~1u;
    v10 = objc_loadWeakRetained(&self->super._barButtonItem);
    resolvedTitle = [v10 resolvedTitle];

    if (!resolvedTitle || ![resolvedTitle length])
    {
      [(_UIButtonBarButtonVisualProviderIOS *)self _removeTitleButton];
      goto LABEL_16;
    }

    titleButton = self->_titleButton;
    if (titleButton)
    {
      [(UIButton *)self->_titleButton setNeedsLayout];
    }

    else
    {
      v19 = _newButton(self);
      v20 = self->_titleButton;
      self->_titleButton = v19;

      v21 = self->_titleButton;
      v56[0] = 0x1EFE32440;
      v56[1] = 0x1EFE324A0;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
      v23 = [(UIView *)v21 _registerForTraitTokenChanges:v22 withTarget:self action:sel__updateTextContent];
    }

    v24 = 0.0;
    if ([(_UIButtonBarButton *)self->super._button verticallyCentersContents])
    {
      v25 = 0.0;
    }

    else
    {
      v26 = objc_loadWeakRetained(&self->_appearanceDelegate);
      centerTextButtons = [v26 centerTextButtons];

      v25 = 0.0;
      if ((centerTextButtons & 1) == 0)
      {
        isBackButton = [(_UIButtonBarButton *)self->super._button isBackButton];
        v25 = 0.0;
        if (!isBackButton)
        {
          v29 = objc_loadWeakRetained(&self->_appearanceDelegate);
          v30 = objc_loadWeakRetained(&self->super._barButtonItem);
          v31 = [v29 edgesPaddingBarButtonItem:v30];

          if ((v31 & 8) != 0)
          {
            v25 = 3.0;
          }

          else
          {
            v25 = 0.0;
          }
        }

        if (compactCopy)
        {
          v24 = 3.0;
        }

        else
        {
          v24 = 1.0;
        }
      }
    }

    [(UIButton *)self->_titleButton setContentEdgeInsets:v24, 0.0, 0.0, v25];
    [(_UIModernBarButton *)self->_titleButton setUsesTintColorCapsuleForSelection:[(_UIButtonBarButton *)self->super._button usesTintColorCapsuleForSelection]];
    v32 = objc_loadWeakRetained(&self->super._barButtonItem);
    -[UIButton setEnabled:](self->_titleButton, "setEnabled:", [v32 isEnabled]);

    if (titleButton && (v33 = self->_titleContent) != 0)
    {
      firstObject = [(NSArray *)v33 firstObject];
      title = [firstObject title];
      v36 = [title isEqualToString:resolvedTitle];

      [(_UIButtonBarButtonVisualProviderIOS *)self _setupAlternateTitles];
      if (v36 && self->_titleContent)
      {
        v37 = [(UIButton *)self->_titleButton attributedTitleForState:0];
        string = [v37 string];

        if (string)
        {
          titleContent = self->_titleContent;
          v51 = MEMORY[0x1E69E9820];
          v52 = 3221225472;
          v53 = __69___UIButtonBarButtonVisualProviderIOS__configureImageOrTitleCompact___block_invoke;
          v54 = &unk_1E70F73B8;
          v40 = string;
          v55 = v40;
          if ([(NSArray *)titleContent indexOfObjectPassingTest:&v51]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = resolvedTitle;
          }

          else
          {
            v41 = v40;
          }

          v17 = v41;
        }

        else
        {
          v17 = resolvedTitle;
        }

        goto LABEL_43;
      }
    }

    else
    {
      [(_UIButtonBarButtonVisualProviderIOS *)self _setupAlternateTitles];
    }

    if (_UISMCBarsEnabled() && self->_titleContent)
    {
      _backButtonTitleForCurrentBoundsSize = [(_UIButtonBarButtonVisualProviderIOS *)self _backButtonTitleForCurrentBoundsSize];
    }

    else
    {
      _backButtonTitleForCurrentBoundsSize = resolvedTitle;
    }

    v17 = _backButtonTitleForCurrentBoundsSize;
LABEL_43:
    [(_UIButtonBarButtonVisualProviderIOS *)self _setTitle:v17, v51, v52, v53, v54];
    if ((_UISMCBarsEnabled() & 1) == 0)
    {
      if ([(UIView *)self->super._button translatesAutoresizingMaskIntoConstraints])
      {
        [(UIView *)self->_titleButton layoutMargins];
        v43 = *MEMORY[0x1E695EFF8];
        v44 = *(MEMORY[0x1E695EFF8] + 8);
        v47 = v45 + v46;
        v50 = v48 + v49;
        [(UIView *)self->super._button bounds];
        v59.origin.x = v43;
        v59.origin.y = v44;
        v59.size.width = v47;
        v59.size.height = v50;
        if (!CGRectContainsRect(v58, v59))
        {
          [(_UIButtonBarButton *)self->super._button setBounds:v43, v44, v47, v50];
        }
      }

      [(UIView *)self->_titleButton layoutIfNeeded];
    }

    goto LABEL_14;
  }

  [(UIView *)self->_imageButton removeFromSuperview];
  v5 = self->_imageButton;
  self->_imageButton = 0;

  [(_UIButtonBarButtonVisualProviderIOS *)self _removeTitleButton];
}

- (__CFString)_backButtonTitleForCurrentBoundsSize
{
  if (self)
  {
    [*(self + 8) bounds];
    v3 = v2;
    _widthForBackButtonChevronIncludingPaddingToContentButton = [(_UIButtonBarButtonVisualProviderIOS *)self _widthForBackButtonChevronIncludingPaddingToContentButton];
    if ([*(self + 128) count])
    {
      v5 = 0;
      v6 = v3 - (_widthForBackButtonChevronIncludingPaddingToContentButton + 6.0);
      while (1)
      {
        v7 = [*(self + 128) objectAtIndexedSubscript:v5];
        [v7 width];
        if (v8 <= v6)
        {
          break;
        }

        [v7 width];
        if (vabdd_f64(v9, v6) < 0.0001)
        {
          break;
        }

        if (++v5 >= [*(self + 128) count])
        {
          goto LABEL_7;
        }
      }

      title = [v7 title];
    }

    else
    {
LABEL_7:
      title = 0;
    }

    v11 = &stru_1EFB14550;
    if (title)
    {
      v11 = title;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_prepareBackgroundViewFromBarButtonItem:(id)item isBackButton:(BOOL)button
{
  buttonCopy = button;
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  compactMetrics = [WeakRetained compactMetrics];

  v8 = compactMetrics;
  if (!self->_backgroundImages)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    backgroundImages = self->_backgroundImages;
    self->_backgroundImages = v9;
  }

  v11 = 0;
  v12 = *MEMORY[0x1E695F060];
  v13 = *(MEMORY[0x1E695F060] + 8);
  do
  {
    v14 = qword_18A678698[v11];
    if (buttonCopy)
    {
      v15 = [itemCopy backButtonBackgroundImageForState:qword_18A678698[v11] barMetrics:v8];
      if (!v15)
      {
        v16 = [(_UIButtonBarButtonVisualProviderIOS *)self backButtonBackgroundImageForState:v14 compact:v8];
LABEL_10:
        v17 = v16;
        if (!v16)
        {
          v17 = [itemCopy _backgroundImageForState:v14 compact:v8 type:0];
          if (!v17)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
      v15 = [itemCopy backgroundImageForState:qword_18A678698[v11] style:(*&self->_flags >> 2) & 7 barMetrics:v8];
      if (!v15)
      {
        v16 = [(_UIButtonBarButtonVisualProviderIOS *)self backgroundImageForState:v14 compact:v8];
        goto LABEL_10;
      }
    }

    v17 = v15;
LABEL_12:
    [v17 size];
    if (v19 != v12 || v18 != v13)
    {
      v21 = self->_backgroundImages;
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
      [(NSMutableDictionary *)v21 setObject:v17 forKey:v22];
    }

LABEL_17:

    ++v11;
  }

  while (v11 != 3);
  v23 = [(NSMutableDictionary *)self->_backgroundImages objectForKeyedSubscript:&unk_1EFE2FB78];

  backgroundView = self->_backgroundView;
  if (v23)
  {
    if (!backgroundView)
    {
      v25 = objc_alloc_init(UIImageView);
      [(UIImageView *)v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIImageView *)v25 setContentMode:0];
      [(UIView *)self->super._button insertSubview:v25 atIndex:0];
      v26 = self->_backgroundView;
      self->_backgroundView = v25;
    }

    v27 = [(NSMutableDictionary *)self->_backgroundImages objectForKeyedSubscript:&unk_1EFE2FB78];
    [(UIImageView *)self->_backgroundView setImage:v27];
LABEL_24:
  }

  else if (backgroundView)
  {
    [(UIView *)backgroundView removeFromSuperview];
    v27 = self->_backgroundView;
    self->_backgroundView = 0;
    goto LABEL_24;
  }
}

- (void)_addConstraintsForBackgroundViewWithOffset:(double)offset isBackButton:(BOOL)button resizesImage:(BOOL)image
{
  imageCopy = image;
  buttonCopy = button;
  imageButton = self->_imageButton;
  if (imageButton)
  {
    v10 = imageButton;
  }

  else
  {
    v10 = self->_titleButton;
    if (!v10)
    {
      return;
    }
  }

  v26 = v10;
  if (buttonCopy && self->_backIndicatorButton)
  {
    leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-3.0];
    v14 = @"BGI_Leading_BIB_Leading";
  }

  else
  {
    leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor2 = [(UIView *)v26 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-3.0];
    v14 = @"BGI_Leading_CB_Leading";
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v13 named:v14];

  trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
  trailingAnchor2 = [(UIView *)v26 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:3.0];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v17 named:@"BGI_Trailing_CB_Trailing"];

  backgroundView = self->_backgroundView;
  if (imageCopy)
  {
    topAnchor = [(UIView *)backgroundView topAnchor];
    topAnchor2 = [(UIView *)v26 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:offset + -3.0];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v21 named:@"BGI_Top_CB_Top"];

    bottomAnchor = [(UIView *)self->_backgroundView bottomAnchor];
    bottomAnchor2 = [(UIView *)v26 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:offset + 3.0];
    v25 = @"BGI_Bottom_CB_Bottom";
  }

  else
  {
    bottomAnchor = [(UIView *)backgroundView centerYAnchor];
    bottomAnchor2 = [(UIView *)v26 centerYAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:offset];
    v25 = @"BGI_Center_CB_Center";
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v24 named:v25];
}

- (UIEdgeInsets)_insetsForCompact:(BOOL)compact
{
  compactCopy = compact;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_appearanceDelegate);
    [v7 _layoutMarginsForButtonBarButton:self->super._button compact:compactCopy];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    if (compactCopy)
    {
      v13 = 11.0;
    }

    else
    {
      v13 = 16.0;
    }

    v15 = 0.0;
    v11 = 0.0;
    v9 = v13;
  }

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.right = v19;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (double)_defaultBackIndicatorBaselineInsetCompact:(BOOL)compact
{
  result = 3.0;
  if (!compact)
  {
    traitCollection = [(UIView *)self->super._button traitCollection];
    [traitCollection displayScale];
    v6 = v5;

    result = 4.0;
    if (v6 > 0.0)
    {
      return -1.0 / v6 + 5.0;
    }
  }

  return result;
}

- (double)_defaultPaddingForInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  barType = [WeakRetained barType];

  v7 = 10.0;
  if (barType == 1)
  {
    v7 = 22.0;
  }

  return v7 - left - right;
}

- (id)alignmentViewForStaticNavBarButtonLeading
{
  backIndicatorButton = self->_backIndicatorButton;
  if (!backIndicatorButton)
  {
    backIndicatorButton = self->_imageButton;
    if (!backIndicatorButton)
    {
      backIndicatorButton = self->_titleButton;
    }
  }

  return backIndicatorButton;
}

- (id)alignmentViewForStaticNavBarButtonTrailing
{
  titleButton = self->_titleButton;
  if (!titleButton)
  {
    titleButton = self->_imageButton;
    if (!titleButton)
    {
      titleButton = self->_backIndicatorButton;
    }
  }

  return titleButton;
}

- (UIEdgeInsets)_imageInsetsForBarButtonItem:(id)item compact:(BOOL)compact isBackButton:(BOOL)button
{
  compactCopy = compact;
  itemCopy = item;
  currentImage = [(UIButton *)self->_imageButton currentImage];
  v10 = currentImage;
  if (currentImage)
  {
    [currentImage alignmentRectInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (itemCopy)
    {
      if (compactCopy)
      {
        [itemCopy landscapeImagePhoneInsets];
      }

      else
      {
        [itemCopy imageInsets];
      }

      v22 = v24;
      v20 = v25;
    }

    v30 = v12 + v23;
    v31 = v16 + v21;
    if (!button)
    {
      [(_UIButtonBarButtonVisualProviderIOS *)self backgroundVerticalAdjustmentForCompact:compactCopy];
      v19 = v32;
      if (fabs(v32) < 2.22044605e-16)
      {
        [itemCopy backgroundVerticalPositionAdjustmentForBarMetrics:compactCopy];
        v19 = v33;
      }
    }

    v28 = v14 + v22;
    v26 = v18 + v20;
    v34 = v30 + v19;
    v35 = v31 - v19;
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v38 = v37;

    UIRoundToScale(1.0 / v38, v38);
    v29 = v34 - v39;
    v27 = v35 - v39;
  }

  else
  {
    v26 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
  }

  v40 = v29;
  v41 = v28;
  v42 = v27;
  v43 = v26;
  result.right = v43;
  result.bottom = v42;
  result.left = v41;
  result.top = v40;
  return result;
}

- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item
{
  itemCopy = item;
  buttonCopy = button;
  objc_storeWeak(&self->_appearanceDelegate, delegate);
  [(_UIButtonBarButtonVisualProviderIOS *)self configureButton:buttonCopy fromBarButtonItem:itemCopy];
}

- (double)_widthForBackButtonChevronIncludingPaddingToContentButton
{
  if (!self)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((self + 96));
  v3 = objc_opt_respondsToSelector();

  v4 = 0.0;
  if (v3)
  {
    v5 = objc_loadWeakRetained((self + 96));
    [v5 _backButtonContentPaddingInButtonBarButton:*(self + 8)];
    v7 = v6;

    v4 = v7 + v7;
  }

  [*(self + 56) intrinsicContentSize];
  return v4 + v8;
}

- (void)_addHorizontalConstraintsForContentButton:(id)button titleOffset:(double)offset backButtonLayoutInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  leading = insets.leading;
  buttonCopy = button;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  [WeakRetained backButtonMargin];
  v11 = v10;

  if (buttonCopy)
  {
    v12 = objc_loadWeakRetained(&self->_appearanceDelegate);
    v13 = objc_opt_respondsToSelector();

    v14 = 0.0;
    if (v13)
    {
      v15 = objc_loadWeakRetained(&self->_appearanceDelegate);
      [v15 _backButtonContentPaddingInButtonBarButton:self->super._button];
      v14 = v16;
    }

    leadingAnchor = [(UIView *)self->_backIndicatorButton leadingAnchor];
    leadingAnchor2 = [(UIView *)self->super._button leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v11 - leading + v14];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v19 named:@"BIB_Leading_Leading"];

    [(_UIButtonBarButtonVisualProviderIOS *)self contentButtonTrailingOffset:v14];
    v21 = -v20;
    leadingAnchor3 = [buttonCopy leadingAnchor];
    trailingAnchor = [(UIView *)self->_backIndicatorButton trailingAnchor];
    v24 = 6.0;
    if (!self)
    {
      v24 = 0.0;
    }

    trailing = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v24 + offset - trailing];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:trailing named:@"BIB_Trailing_CB_Leading"];

    trailingAnchor2 = [buttonCopy trailingAnchor];
    trailingAnchor3 = [(UIView *)self->super._button trailingAnchor];
    trailing2 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:v21];
    v29 = @"CB_Trailing_Trailing";
  }

  else
  {
    leadingAnchor4 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    leadingAnchor5 = [(UIView *)self->super._button leadingAnchor];
    leading = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:v11 - leading];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:leading named:@"BIB_Leading_Leading"];

    v33 = _UISMCBarsEnabled();
    backIndicatorButton = self->_backIndicatorButton;
    if (v33)
    {
      trailingAnchor2 = [(UIView *)backIndicatorButton centerXAnchor];
      trailingAnchor3 = [(UIView *)self->super._button centerXAnchor];
      trailing2 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:leading - trailing];
      v29 = @"BIB_CenterX_CenterX";
    }

    else
    {
      trailingAnchor2 = [(UIView *)backIndicatorButton trailingAnchor];
      trailingAnchor3 = [(UIView *)self->super._button trailingAnchor];
      trailing2 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-trailing];
      v29 = @"BIB_Trailing_Trailing";
    }
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:trailing2 named:v29];

  [(_UIButtonBarButtonVisualProviderIOS *)self activateWidthMinimizer];
}

- (void)_addHorizontalConstraintsForTextWithOffset:(double)offset additionalPadding:(UIEdgeInsets)padding
{
  right = padding.right;
  left = padding.left;
  v8 = [(UIView *)self->super._button effectiveUserInterfaceLayoutDirection:offset];
  if (v8 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v9 = right;
  }

  else
  {
    v9 = left;
  }

  if (v8 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    right = left;
  }

  leadingAnchor = [(UIView *)self->_titleButton leadingAnchor];
  leadingAnchor2 = [(UIView *)self->super._button leadingAnchor];
  offset = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9 + offset];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:offset named:@"TB_Leading_Leading"];

  trailingAnchor = [(UIView *)self->super._button trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_titleButton trailingAnchor];
  offset2 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right - offset];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:offset2 named:@"TB_Trailing_Trailing"];
}

- (void)_addHorizontalConstraintsForImageWithInsets:(UIEdgeInsets)insets paddingEdges:(unint64_t)edges additionalPadding:(double)padding
{
  right = insets.right;
  left = insets.left;
  [(_UIButtonBarButtonVisualProviderIOS *)self _defaultPaddingForInsets:insets.top, insets.left, insets.bottom];
  v11 = v10;
  effectiveUserInterfaceLayoutDirection = [(UIView *)self->super._button effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v13 = 8;
  }

  else
  {
    v13 = 2;
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v14 = 2;
  }

  else
  {
    v14 = 8;
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v15 = right;
  }

  else
  {
    v15 = left;
  }

  if (effectiveUserInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v16 = left;
  }

  else
  {
    v16 = right;
  }

  if ((v13 & edges) != 0)
  {
    v17 = v11 * 0.5 + padding;
    leadingAnchor = [(UIView *)self->_imageButton leadingAnchor];
    leadingAnchor2 = [(UIView *)self->super._button leadingAnchor];
    v20 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v17 - v15];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v20 named:@"IB_Leading_Leading"];

    v21 = v17 + 0.0;
  }

  else
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _effectiveEdgeSpacing];
    v23 = v22 - v15;
    leadingAnchor3 = [(UIView *)self->_imageButton leadingAnchor];
    leadingAnchor4 = [(UIView *)self->super._button leadingAnchor];
    v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v23];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v26 named:@"IB_Leading_Leading"];

    v17 = 0.0;
    v21 = 0.0;
  }

  if ((v14 & edges) != 0)
  {
    v27 = v11 * 0.5 + padding;
    trailingAnchor = [(UIView *)self->super._button trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_imageButton trailingAnchor];
    v30 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:v27 - v16];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v30 named:@"IB_Trailing_Trailing"];

    v21 = v27 + v21;
  }

  else
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _effectiveEdgeSpacing];
    v32 = v31 - v16;
    trailingAnchor3 = [(UIView *)self->super._button trailingAnchor];
    trailingAnchor4 = [(UIView *)self->_imageButton trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v32];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v35 named:@"IB_Trailing_Trailing"];

    v27 = 0.0;
  }

  v36 = left + v17;
  v37 = right + v27;
  if (left + v17 != 0.0 || v37 == 0.0)
  {
    if (v37 == 0.0 && v36 != 0.0)
    {
      left = left + v17;
    }
  }

  else
  {
    left = -v37;
  }

  centerXAnchor = [(UIView *)self->_imageButton centerXAnchor];
  centerXAnchor2 = [(UIView *)self->super._button centerXAnchor];
  v46 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:left];

  LODWORD(v41) = 1148829696;
  [v46 setPriority:v41];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v46 named:@"IB_CenterX_CenterX"];
  [(_UIButtonBarButtonVisualProviderIOS *)self activateWidthMinimizer];
  widthAnchor = [(UIView *)self->super._button widthAnchor];
  widthAnchor2 = [(UIView *)self->_imageButton widthAnchor];
  v44 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v21];

  LODWORD(v45) = 1148829696;
  [v44 setPriority:v45];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v44 named:@"IB_Width"];
}

- (void)_addVerticalConstraintsForBackIndicatorWithTitleOffset:(double)offset bottomOffset:(double)bottomOffset useBaselineAlignment:(BOOL)alignment
{
  alignmentCopy = alignment;
  verticallyCentersContents = [(_UIButtonBarButton *)self->super._button verticallyCentersContents];
  backIndicatorButton = self->_backIndicatorButton;
  if (verticallyCentersContents)
  {
    centerYAnchor = [(UIView *)backIndicatorButton centerYAnchor];
    centerYAnchor2 = [(UIView *)self->super._button centerYAnchor];
    bottomAnchor = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:bottomAnchor named:@"BIB_CenterY_CenterY"];
  }

  else
  {
    if (alignmentCopy)
    {
      centerYAnchor = [(UIView *)backIndicatorButton lastBaselineAnchor];
      centerYAnchor2 = [(UIView *)self->super._button layoutMarginsGuide];
      bottomAnchor = [centerYAnchor2 bottomAnchor];
      offset = [centerYAnchor constraintEqualToAnchor:bottomAnchor constant:-offset];
      v15 = @"BIB_Baseline_Baseline";
    }

    else
    {
      centerYAnchor = [(UIView *)backIndicatorButton bottomAnchor];
      centerYAnchor2 = [(UIView *)self->super._button layoutMarginsGuide];
      bottomAnchor = [centerYAnchor2 bottomAnchor];
      offset = [centerYAnchor constraintEqualToAnchor:bottomAnchor constant:bottomOffset - offset];
      v15 = @"BIB_Bottom_Baseline";
    }

    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:offset named:v15];
  }

  topAnchor = [(UIView *)self->_backIndicatorButton topAnchor];
  topAnchor2 = [(UIView *)self->super._button topAnchor];
  v18 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v18 named:@"BIB_Top_Top"];

  bottomAnchor2 = [(UIView *)self->super._button bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_backIndicatorButton bottomAnchor];
  v20 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v20 named:@"BIB_Bottom_Bottom"];
}

- (void)_addVerticalConstraintsForTextWithOffset:(double)offset
{
  if (!self->_titleButton)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1547 description:@"Invalid text button configuration"];
  }

  if (-[_UIButtonBarButton verticallyCentersContents](self->super._button, "verticallyCentersContents") || (WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate), v6 = [WeakRetained centerTextButtons], WeakRetained, v6))
  {
    centerYAnchor = [(UIView *)self->_titleButton centerYAnchor];
    centerYAnchor2 = [(UIView *)self->super._button centerYAnchor];
    bottomAnchor = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:bottomAnchor named:@"TB_CenterY_CenterY"];
  }

  else
  {
    centerYAnchor = [(UIView *)self->_titleButton lastBaselineAnchor];
    centerYAnchor2 = [(UIView *)self->super._button layoutMarginsGuide];
    bottomAnchor = [centerYAnchor2 bottomAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:bottomAnchor constant:offset];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v10 named:@"TB_Baseline_Baseline"];
  }

  topAnchor = [(UIView *)self->_titleButton topAnchor];
  topAnchor2 = [(UIView *)self->super._button topAnchor];
  v13 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v13 named:@"TB_Top_Top"];

  bottomAnchor2 = [(UIView *)self->super._button bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_titleButton bottomAnchor];
  v15 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v15 named:@"TB_Bottom_Bottom"];
}

- (void)_addVerticalConstraintsForImageWithInsets:(UIEdgeInsets)insets
{
  bottom = insets.bottom;
  top = insets.top;
  if (!self->_imageButton)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1561 description:@"Invalid image button configuration"];
  }

  if ([(_UIButtonBarButton *)self->super._button verticallyCentersContents:insets.top])
  {
    imageView = [(UIButton *)self->_imageButton imageView];
    [imageView alignmentRectInsets];
    v8 = v7;
    v10 = v9;

    centerYAnchor = [(UIView *)self->_imageButton centerYAnchor];
    centerYAnchor2 = [(UIView *)self->super._button centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:(v8 - v10) * -0.5];
    v13 = @"IB_CenterY_CenterY";
LABEL_16:
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v12 named:v13];

    return;
  }

  if (*&self->_flags)
  {
    lastBaselineAnchor = [(UIView *)self->_imageButton lastBaselineAnchor];
    layoutMarginsGuide = [(UIView *)self->super._button layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide bottomAnchor];
    v29 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v29 named:@"IB_Baseline_Baseline"];

    topAnchor = [(UIView *)self->_imageButton topAnchor];
    topAnchor2 = [(UIView *)self->super._button topAnchor];
    v32 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v32 named:@"IB_Top_Top"];

    centerYAnchor = [(UIView *)self->super._button bottomAnchor];
    centerYAnchor2 = [(UIView *)self->_imageButton bottomAnchor];
    v12 = [centerYAnchor constraintGreaterThanOrEqualToAnchor:centerYAnchor2];
    v13 = @"IB_Bottom_Bottom";
    goto LABEL_16;
  }

  v14 = bottom != 0.0 && top == 0.0;
  v15 = -bottom;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = top;
  }

  centerYAnchor3 = [(UIView *)self->_imageButton centerYAnchor];
  centerYAnchor4 = [(UIView *)self->super._button centerYAnchor];
  v19 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4 constant:v16];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v19 named:@"IB_CenterY_CenterY"];

  topAnchor3 = [(UIView *)self->_imageButton topAnchor];
  topAnchor4 = [(UIView *)self->super._button topAnchor];
  v22 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:top];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v22 named:@"IB_Top_Top"];

  bottomAnchor2 = [(UIView *)self->super._button bottomAnchor];
  bottomAnchor3 = [(UIView *)self->_imageButton bottomAnchor];
  v25 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:v15];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v25 named:@"IB_Bottom_Bottom"];

  [(_UIButtonBarButtonVisualProviderIOS *)self activateHeightMinimizer];
}

- (void)_configureImageWithInsets:(UIEdgeInsets)insets paddingEdges:(unint64_t)edges additionalPadding:(double)padding
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForImageWithInsets:edges paddingEdges:insets.top additionalPadding:insets.left, insets.bottom, insets.right, padding];

  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForImageWithInsets:top, left, bottom, right];
}

- (void)_configureTextWithOffset:(UIOffset)offset additionalPadding:(UIEdgeInsets)padding
{
  vertical = offset.vertical;
  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForTextWithOffset:offset.horizontal additionalPadding:padding.top, padding.left, padding.bottom, padding.right];

  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForTextWithOffset:vertical];
}

- (void)_configureBackButtonMask
{
  backButtonMask = self->_backButtonMask;
  if (backButtonMask)
  {
    leadingAnchor = [(UIView *)backButtonMask leadingAnchor];
    leadingAnchor2 = [(UIView *)self->super._button leadingAnchor];
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v6 named:@"Mask_Leading_Leading"];

    trailingAnchor = [(UIView *)self->_backButtonMask trailingAnchor];
    trailingAnchor2 = [(UIView *)self->super._button trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v9 named:@"Mask_Trailing_Trailing"];

    topAnchor = [(UIView *)self->_backButtonMask topAnchor];
    topAnchor2 = [(UIView *)self->super._button topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v12 named:@"Mask_Top_Top"];

    bottomAnchor = [(UIView *)self->_backButtonMask bottomAnchor];
    bottomAnchor2 = [(UIView *)self->super._button bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v15 named:@"Mask_Bottom_Bottom"];

    maskImageView = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    leadingAnchor3 = [maskImageView leadingAnchor];
    leadingAnchor4 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v19 named:@"MaskIV_Leading_BIB_Leadinng"];

    maskExtensionLeadingAnchor = [(_UIBackButtonMaskView *)self->_backButtonMask maskExtensionLeadingAnchor];
    trailingAnchor3 = [(UIView *)self->_backIndicatorButton trailingAnchor];
    v22 = [maskExtensionLeadingAnchor constraintEqualToAnchor:trailingAnchor3];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v22 named:@"MaskEV_Leading_BIB_Trailing"];

    maskImageView2 = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    centerYAnchor = [maskImageView2 centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_backIndicatorButton centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v25 named:@"MaskIV_CenterY_BIB_CenterY"];
  }
}

- (void)_configureImageBackButtonWithImageInsets:(UIEdgeInsets)insets backButtonLayoutInsets:(NSDirectionalEdgeInsets)layoutInsets useBaselineAlignment:(BOOL)alignment
{
  alignmentCopy = alignment;
  trailing = layoutInsets.trailing;
  bottom = layoutInsets.bottom;
  leading = layoutInsets.leading;
  top = layoutInsets.top;
  right = insets.right;
  v11 = insets.bottom;
  left = insets.left;
  v13 = insets.top;
  if (!self->_imageButton)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1614 description:@"Invalid image button configuration"];
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForContentButton:0.0 titleOffset:top backButtonLayoutInsets:leading, bottom, trailing];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForBackIndicatorWithTitleOffset:alignmentCopy bottomOffset:0.0 useBaselineAlignment:bottom];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForImageWithInsets:v13, left, v11, right];

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureBackButtonMask];
}

- (void)_configureTextBackButtonWithTitlePositionAdjustment:(UIOffset)adjustment backButtonLayoutInsets:(NSDirectionalEdgeInsets)insets useBaselineAlignment:(BOOL)alignment
{
  alignmentCopy = alignment;
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  if (!self->_titleButton)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1623 description:@"Invalid text button configuration"];
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForContentButton:horizontal titleOffset:top backButtonLayoutInsets:leading, bottom, trailing];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForBackIndicatorWithTitleOffset:alignmentCopy bottomOffset:vertical useBaselineAlignment:bottom];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForTextWithOffset:vertical];

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureBackButtonMask];
}

- (void)_configureBackButtonWithBackButtonLayoutInsets:(NSDirectionalEdgeInsets)insets useBaselineAlignment:(BOOL)alignment
{
  alignmentCopy = alignment;
  bottom = insets.bottom;
  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForContentButton:0 titleOffset:0.0 backButtonLayoutInsets:insets.top, insets.leading, insets.bottom, insets.trailing];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForBackIndicatorWithTitleOffset:alignmentCopy bottomOffset:0.0 useBaselineAlignment:bottom];

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureBackButtonMask];
}

- (id)_titleContentForTitle:(id)title
{
  titleCopy = title;
  v5 = [(NSMutableDictionary *)self->_titleLookup objectForKeyedSubscript:titleCopy];
  if (!v5)
  {
    v6 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:0];
    v5 = [_UITitleContent contentWithTitle:titleCopy attributes:v6 button:self->_titleButton];

    [(NSMutableDictionary *)self->_titleLookup setObject:v5 forKeyedSubscript:titleCopy];
  }

  return v5;
}

- (CGSize)buttonImageViewSize:(id)size
{
  if (self->_imageButton)
  {
    _imageView = [(UIButton *)self->_imageButton _imageView];
    [_imageView bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIButtonBarButtonVisualProviderIOS;
    [(_UIButtonBarButtonVisualProvider *)&v12 buttonImageViewSize:size];
    v5 = v8;
    v7 = v9;
  }

  v10 = v5;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)accessoryViewAlignmentRect
{
  [(UIView *)self->super._button bounds];
  imageButton = self->_imageButton;
  if (imageButton)
  {
    imageView = [(UIButton *)imageButton imageView];
    imageView2 = [(UIButton *)self->_imageButton imageView];
    [imageView2 bounds];
    [imageView convertRect:self->super._button toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    imageView3 = [(UIButton *)self->_imageButton imageView];
  }

  else
  {
    titleButton = self->_titleButton;
    if (!titleButton)
    {
      v28 = v3;
      v30 = v4;
      v32 = v5;
      v34 = v6;
      goto LABEL_6;
    }

    titleLabel = [(UIButton *)titleButton titleLabel];
    titleLabel2 = [(UIButton *)self->_titleButton titleLabel];
    [titleLabel2 bounds];
    [titleLabel convertRect:self->super._button toView:?];
    v11 = v22;
    v13 = v23;
    v15 = v24;
    v17 = v25;

    imageView3 = [(UIButton *)self->_titleButton titleLabel];
  }

  v26 = imageView3;
  [imageView3 alignmentRectForFrame:{v11, v13, v15, v17}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

LABEL_6:
  v35 = v28;
  v36 = v30;
  v37 = v32;
  v38 = v34;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (void)configureButton:(id)button fromBarButtonItem:(id)item
{
  v117[1] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  itemCopy = item;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  if (self && (WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate), v10 = objc_opt_respondsToSelector(), WeakRetained, (v10 & 1) != 0))
  {
    _UIBeginTrackingTraitUsage(self->super._button, 0, __dst);
    v112 = __dst[8];
    v113 = __dst[9];
    v114 = __dst[10];
    v108 = __dst[4];
    v109 = __dst[5];
    v110 = __dst[6];
    v111 = __dst[7];
    v104 = __dst[0];
    v105 = __dst[1];
    v106 = __dst[2];
    v107 = __dst[3];
    v100 = *(&__dst[19] + 8);
    v101 = *(&__dst[20] + 8);
    v102 = *(&__dst[21] + 8);
    v96 = *(&__dst[15] + 8);
    v97 = *(&__dst[16] + 8);
    v11 = *&__dst[11];
    v103 = *(&__dst[22] + 1);
    v98 = *(&__dst[17] + 8);
    v99 = *(&__dst[18] + 8);
    v92 = *(&__dst[11] + 8);
    v93 = *(&__dst[12] + 8);
    v12 = 1;
    v94 = *(&__dst[13] + 8);
    v95 = *(&__dst[14] + 8);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v68 = v11;
  if ([itemCopy isSpringLoaded])
  {
    isBackButton = 1;
  }

  else
  {
    isBackButton = [buttonCopy isBackButton];
  }

  [buttonCopy setSpringLoaded:isBackButton];
  [(_UIButtonBarButtonVisualProviderIOS *)self updateMenu];
  isSystemItem = [itemCopy isSystemItem];
  if (isSystemItem)
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  flags = *&self->_flags & 0xDF | v15;
  *&self->_flags = flags;
  if (isSystemItem)
  {
    self->_systemItem = [itemCopy systemItem];
    flags = self->_flags;
  }

  v69 = a2;
  *&self->_flags = flags & 0xFD;
  tintColor = [(_UIButtonBarButtonVisualProviderIOS *)self tintColor];
  [buttonCopy setTintColor:tintColor];

  [(_UIButtonBarButtonVisualProviderIOS *)self _computeTextAttributesForBarButtonItem:itemCopy];
  v18 = objc_loadWeakRetained(&self->_appearanceDelegate);
  compactMetrics = [v18 compactMetrics];

  v71 = v12;
  if ([buttonCopy isBackButton])
  {
    _showsChevron = 1;
  }

  else
  {
    _showsChevron = [itemCopy _showsChevron];
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureImageOrTitleCompact:compactMetrics];
  [(_UIButtonBarButtonVisualProviderIOS *)self _updateMonochromaticTreatment];
  v21 = objc_opt_self();
  v117[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:1];
  v23 = [buttonCopy registerForTraitChanges:v22 withTarget:self action:sel__updateMonochromaticTreatment];

  backIndicatorButton = self->_backIndicatorButton;
  v25 = _showsChevron;
  v70 = itemCopy;
  if (_showsChevron)
  {
    v67 = _showsChevron;
    if (!backIndicatorButton)
    {
      v26 = _newButton(self);
      v27 = self->_backIndicatorButton;
      self->_backIndicatorButton = v26;
    }

    v66 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorImageForCompact:compactMetrics];
    [UIButton setImage:"setImage:forState:" forState:?];
    v28 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorSymbolConfigurationForCompact:compactMetrics];
    [(UIButton *)self->_backIndicatorButton setPreferredSymbolConfiguration:v28 forImageInState:0];
    [(UIButton *)self->_backIndicatorButton setTintColor:0];
    if (!self->_backButtonMask)
    {
      v29 = objc_alloc_init(_UIBackButtonMaskView);
      backButtonMask = self->_backButtonMask;
      self->_backButtonMask = v29;

      [(UIView *)self->_backButtonMask setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v31 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorMaskForCompact:compactMetrics];
    maskImageView = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    [maskImageView setImage:v31];

    v33 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorMaskSymbolConfigurationForCompact:compactMetrics];
    maskImageView2 = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    [maskImageView2 setPreferredSymbolConfiguration:v33];

    v25 = v67;
    v35 = v66;
  }

  else
  {
    [(UIView *)backIndicatorButton removeFromSuperview];
    v36 = self->_backIndicatorButton;
    self->_backIndicatorButton = 0;

    [(UIView *)self->_backButtonMask removeFromSuperview];
    v35 = 0;
    v28 = self->_backButtonMask;
    self->_backButtonMask = 0;
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _prepareBackgroundViewFromBarButtonItem:v70 isBackButton:v25];
  [(_UIButtonBarButtonVisualProviderIOS *)self _updateViewsForMaskingEnabled];
  [(_UIButtonBarButtonVisualProviderIOS *)self _insetsForCompact:compactMetrics];
  [buttonCopy setLayoutMargins:?];
  v37 = objc_loadWeakRetained(&self->_appearanceDelegate);
  v38 = [v37 edgesPaddingBarButtonItem:v70];

  v39 = objc_loadWeakRetained(&self->_appearanceDelegate);
  [v39 absorptionForItem:v70];
  v41 = v40;

  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __73___UIButtonBarButtonVisualProviderIOS_configureButton_fromBarButtonItem___block_invoke;
  v82[3] = &unk_1E70F7400;
  v89 = v25;
  v42 = v35;
  v83 = v42;
  selfCopy = self;
  v90 = compactMetrics;
  v43 = v70;
  v85 = v43;
  v86 = v38;
  v87 = v41;
  v88 = compactMetrics;
  [(_UIButtonBarButtonVisualProviderIOS *)self updateActiveConstraints:v82];
  v81 = 0u;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  _gestureRecognizers = [v43 _gestureRecognizers];
  v45 = [_gestureRecognizers countByEnumeratingWithState:&v78 objects:v116 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v79;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v79 != v47)
        {
          objc_enumerationMutation(_gestureRecognizers);
        }

        [buttonCopy addGestureRecognizer:*(*(&v78 + 1) + 8 * i)];
      }

      v46 = [_gestureRecognizers countByEnumeratingWithState:&v78 objects:v116 count:16];
    }

    while (v46);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  _interactions = [v43 _interactions];
  v50 = [_interactions countByEnumeratingWithState:&v74 objects:v115 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v75;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v75 != v52)
        {
          objc_enumerationMutation(_interactions);
        }

        [buttonCopy addInteraction:*(*(&v74 + 1) + 8 * j)];
      }

      v51 = [_interactions countByEnumeratingWithState:&v74 objects:v115 count:16];
    }

    while (v51);
  }

  if (v71)
  {
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 1, sizeof(__dst));
    v55 = v113;
    TraitCollectionTSD[9] = v112;
    TraitCollectionTSD[10] = v55;
    TraitCollectionTSD[11] = v114;
    v56 = v109;
    TraitCollectionTSD[5] = v108;
    TraitCollectionTSD[6] = v56;
    v57 = v111;
    TraitCollectionTSD[7] = v110;
    TraitCollectionTSD[8] = v57;
    v58 = v105;
    TraitCollectionTSD[1] = v104;
    TraitCollectionTSD[2] = v58;
    v59 = v107;
    TraitCollectionTSD[3] = v106;
    TraitCollectionTSD[4] = v59;
    v60 = v99;
    *(TraitCollectionTSD + 296) = v98;
    *(TraitCollectionTSD + 312) = v60;
    v61 = v97;
    *(TraitCollectionTSD + 264) = v96;
    *(TraitCollectionTSD + 280) = v61;
    v62 = v102;
    *(TraitCollectionTSD + 344) = v101;
    *(TraitCollectionTSD + 360) = v62;
    *(TraitCollectionTSD + 328) = v100;
    v63 = v93;
    *(TraitCollectionTSD + 200) = v92;
    *(TraitCollectionTSD + 216) = v63;
    v64 = v95;
    *(TraitCollectionTSD + 232) = v94;
    *(TraitCollectionTSD + 24) = v68;
    *(TraitCollectionTSD + 47) = v103;
    *(TraitCollectionTSD + 248) = v64;
    button = self->super._button;
    *&v72 = *&__dst[11] & ~v68;
    *(&v72 + 1) = v68 & ~*&__dst[11];
    v73 = *&__dst[11] & v68;
    [(UIView *)button _recordTraitUsage:&v72 trackedStateDiff:[(_UIButtonBarButtonVisualProviderIOS *)self methodForSelector:v69] insideMethod:sel_traitDependenciesUpdated withInvalidationAction:?];
    _UITraitUsageTrackingResultDestroy(__dst);
  }
}

- (void)traitDependenciesUpdated
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  v3 = objc_loadWeakRetained(&self->super._barButtonItem);
  if (WeakRetained)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained configurationDependenciesChangedForButtonBarButton:self->super._button representingBarButtonItem:v3];
  }
}

- (void)_updateTextContent
{
  v21 = *MEMORY[0x1E69E9840];
  finalTitleAttributes = self->_finalTitleAttributes;
  self->_finalTitleAttributes = 0;

  v15 = [(UIButton *)self->_titleButton attributedTitleForState:0];
  string = [v15 string];
  [(_UIButtonBarButtonVisualProviderIOS *)self _setTitle:string];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_titleContent;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:0];
        [v10 updateWithTitleAttributes:v11 button:self->_titleButton];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  firstObject = [(NSArray *)self->_titleContent firstObject];
  [firstObject width];
  v14 = v13;

  [(NSLayoutConstraint *)self->_backButtonTitleMaxWidthConstraint setConstant:v14];
  [(UIView *)self->super._button setNeedsLayout];
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  if ([(_UIButtonBarButton *)self->super._button isBreadcrumb]|| !self->_titleContent)
  {
    v31.receiver = self;
    v31.super_class = _UIButtonBarButtonVisualProviderIOS;
    *&v10 = priority;
    *&v11 = fittingPriority;
    [(_UIButtonBarButtonVisualProvider *)&v31 backButtonSystemLayoutSizeFittingSize:width horizontalFittingPriority:height verticalFittingPriority:v10, v11];
    v16 = v17;
    v14 = v18;
  }

  else
  {
    imageButton = self->_imageButton;
    if (imageButton)
    {
      *&v10 = priority;
      *&v11 = fittingPriority;
      [(UIButton *)imageButton systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
      v14 = v13;
      v16 = v15 + [(_UIButtonBarButtonVisualProviderIOS *)self _widthForBackButtonChevronIncludingPaddingToContentButton]+ 6.0;
    }

    else
    {
      v21 = [(UIButton *)self->_titleButton attributedTitleForState:0];
      string = [v21 string];

      v26 = 0;
      v27 = &v26;
      v28 = 0x3010000000;
      v29 = "";
      v30 = *MEMORY[0x1E695F060];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __127___UIButtonBarButtonVisualProviderIOS_backButtonSystemLayoutSizeFittingSize_horizontalFittingPriority_verticalFittingPriority___block_invoke;
      v23[3] = &unk_1E70F7428;
      v23[4] = self;
      v23[5] = &v26;
      *&v23[6] = width;
      *&v23[7] = height;
      priorityCopy = priority;
      fittingPriorityCopy = fittingPriority;
      [UIView performWithoutAnimation:v23];
      v16 = v27[4];
      v14 = v27[5];
      _Block_object_dispose(&v26, 8);
    }
  }

  v19 = v16;
  v20 = v14;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)buttonLayoutSubviews:(id)subviews baseImplementation:(id)implementation
{
  subviewsCopy = subviews;
  implementationCopy = implementation;
  if ((_UISMCBarsEnabled() & 1) != 0 || !self->_titleContent)
  {
    v15 = 0;
    goto LABEL_17;
  }

  [(UIView *)self->_titleButton _nsis_bounds];
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  [WeakRetained backButtonMaximumWidth];

  UIRoundToViewScale(self->_titleButton);
  v9 = v8;
  if (![(NSArray *)self->_titleContent count])
  {
    v14 = 0;
LABEL_12:
    title = &stru_1EFB14550;
    goto LABEL_13;
  }

  v10 = 0;
  title = &stru_1EFB14550;
  while (1)
  {
    v12 = [(NSArray *)self->_titleContent objectAtIndexedSubscript:v10];
    [v12 width];
    if (v13 <= v9)
    {
      break;
    }

    if (++v10 >= [(NSArray *)self->_titleContent count])
    {
      v14 = 0;
      goto LABEL_13;
    }
  }

  v14 = v10 != 0;
  if (!v12)
  {
    goto LABEL_12;
  }

  title = [v12 title];

LABEL_13:
  v16 = [(UIButton *)self->_titleButton titleForState:0];
  if ([v16 length])
  {
    v15 = v14 & ([v16 isEqualToString:title] ^ 1);
  }

  else
  {
    v15 = 0;
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _setTitle:title];

LABEL_17:
  implementationCopy[2](implementationCopy);
  if (([subviewsCopy isBackButton] & 1) == 0 && objc_msgSend(subviewsCopy, "usesTintColorCapsuleForSelection"))
  {
    if (self->_imageButton)
    {
      [subviewsCopy bounds];
      [subviewsCopy convertRect:self->_imageButton toView:?];
      [(_UIModernBarButton *)self->_imageButton setSelectionIndicatorViewFrame:?];
    }

    if (self->_titleButton)
    {
      [subviewsCopy bounds];
      [subviewsCopy convertRect:self->_titleButton toView:?];
      [(_UIModernBarButton *)self->_titleButton setSelectionIndicatorViewFrame:?];
    }
  }

  if (v15)
  {
    v17 = objc_loadWeakRetained(&self->_appearanceDelegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->_appearanceDelegate);
      [v19 backButtonTitleDidChange];
    }
  }
}

- (id)buttonContextMenuInteractionConfiguration
{
  if (self->_menuProvider)
  {
    v3 = [UIContextMenuConfiguration configurationWithIdentifier:@"UIBarButtonItemContextMenu" previewProvider:0 actionProvider:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buttonContextMenuStyleFromDefaultStyle:(id)style
{
  styleCopy = style;
  [(_UIButtonBarButtonVisualProviderIOS *)self menuAnchorPoint];
  v6 = v5;
  v8 = v7;
  button = self->super._button;
  buttonContextMenuTargetedPreview = [(_UIButtonBarButtonVisualProviderIOS *)self buttonContextMenuTargetedPreview];
  _UIControlMenuSupportUpdateStyleForBarButtons(styleCopy, button, buttonContextMenuTargetedPreview, self->_backIndicatorButton != 0, v6, v8);

  return styleCopy;
}

- (id)buttonContextMenuTargetedPreview
{
  button = self->super._button;
  imageButton = self->_imageButton;
  if (!imageButton)
  {
    imageButton = self->_titleButton;
  }

  return _UIControlMenuSupportTargetedPreviewOverViews(button, imageButton, self->_backIndicatorButton);
}

- (CGPoint)menuAnchorPoint
{
  imageButton = self->_imageButton;
  if (!imageButton)
  {
    imageButton = self->_titleButton;
    if (!imageButton)
    {
      imageButton = self->_backIndicatorButton;
    }
  }

  v3 = imageButton;
  _viewControllerForAncestor = [(UIView *)v3 _viewControllerForAncestor];
  view = [_viewControllerForAncestor view];

  if (!view)
  {
    view = [(UIView *)v3 window];
  }

  superview = [(UIView *)v3 superview];
  [(UIView *)v3 frame];
  [superview convertRect:view toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = _UIControlMenuAttachmentPointForRectInContainer(view, v8, v10, v12, v14);
  v17 = v16;

  v18 = v15;
  v19 = v17;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)updateImage
{
  if (self->_imageButton)
  {
    button = self->super._button;
    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    [(_UIButtonBarButtonVisualProviderIOS *)self configureButton:button fromBarButtonItem:WeakRetained];
  }
}

- (void)reload
{
  button = self->super._button;
  WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
  [(_UIButtonBarButtonVisualProviderIOS *)self configureButton:button fromBarButtonItem:WeakRetained];
}

@end