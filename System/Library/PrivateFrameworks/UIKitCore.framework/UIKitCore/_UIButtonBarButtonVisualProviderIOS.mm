@interface _UIButtonBarButtonVisualProviderIOS
- (BOOL)buttonSelectionState:(id)a3 forRequestedState:(BOOL)a4;
- (BOOL)shouldLift;
- (CGPoint)menuAnchorPoint;
- (CGRect)accessoryViewAlignmentRect;
- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CGSize)buttonImageViewSize:(id)a3;
- (UIEdgeInsets)_imageInsetsForBarButtonItem:(id)a3 compact:(BOOL)a4 isBackButton:(BOOL)a5;
- (UIEdgeInsets)_insetsForCompact:(BOOL)a3;
- (UIOffset)backButtonBackgroundVerticalAdjustmentForCompact:(BOOL)a3;
- (UIOffset)backButtonTitlePositionOffsetForCompact:(BOOL)a3;
- (UIOffset)backgroundVerticalAdjustmentForCompact:(BOOL)a3;
- (UIOffset)titlePositionOffsetForCompact:(BOOL)a3;
- (__CFString)_backButtonTitleForCurrentBoundsSize;
- (double)_defaultBackIndicatorBaselineInsetCompact:(BOOL)a3;
- (double)_defaultPaddingForInsets:(UIEdgeInsets)a3;
- (double)_effectiveEdgeSpacing;
- (double)_widthForBackButtonChevronIncludingPaddingToContentButton;
- (id)_backIndicatorImageForCompact:(BOOL)a3;
- (id)_backIndicatorMaskForCompact:(BOOL)a3;
- (id)_backIndicatorMaskSymbolConfigurationForCompact:(BOOL)a3;
- (id)_backIndicatorSymbolConfigurationForCompact:(BOOL)a3;
- (id)_titleContentForTitle:(id)a3;
- (id)alignmentViewForStaticNavBarButtonLeading;
- (id)alignmentViewForStaticNavBarButtonTrailing;
- (id)backButtonBackgroundImageForState:(unint64_t)a3 compact:(BOOL)a4;
- (id)backgroundImageForState:(unint64_t)a3 compact:(BOOL)a4;
- (id)buttonContextMenuInteractionConfiguration;
- (id)buttonContextMenuStyleFromDefaultStyle:(id)a3;
- (id)buttonContextMenuTargetedPreview;
- (id)buttonSpringLoadedInteractionEffect;
- (id)contentView;
- (id)matchingPointerShapeForView:(id)a3 rect:(CGRect)a4 inContainer:(id)a5;
- (id)pointerPreviewParameters;
- (id)pointerShapeInContainer:(id)a3;
- (id)symbolConfigurationCompact:(BOOL)a3;
- (id)symbolImageView;
- (id)tintColor;
- (void)_addConstraintsForBackgroundViewWithOffset:(double)a3 isBackButton:(BOOL)a4 resizesImage:(BOOL)a5;
- (void)_addHorizontalConstraintsForContentButton:(id)a3 titleOffset:(double)a4 backButtonLayoutInsets:(NSDirectionalEdgeInsets)a5;
- (void)_addHorizontalConstraintsForImageWithInsets:(UIEdgeInsets)a3 paddingEdges:(unint64_t)a4 additionalPadding:(double)a5;
- (void)_addHorizontalConstraintsForTextWithOffset:(double)a3 additionalPadding:(UIEdgeInsets)a4;
- (void)_addVerticalConstraintsForBackIndicatorWithTitleOffset:(double)a3 bottomOffset:(double)a4 useBaselineAlignment:(BOOL)a5;
- (void)_addVerticalConstraintsForImageWithInsets:(UIEdgeInsets)a3;
- (void)_addVerticalConstraintsForTextWithOffset:(double)a3;
- (void)_computeTextAttributes;
- (void)_computeTextAttributesForBarButtonItem:(id)a3;
- (void)_configureBackButtonMask;
- (void)_configureBackButtonWithBackButtonLayoutInsets:(NSDirectionalEdgeInsets)a3 useBaselineAlignment:(BOOL)a4;
- (void)_configureImageBackButtonWithImageInsets:(UIEdgeInsets)a3 backButtonLayoutInsets:(NSDirectionalEdgeInsets)a4 useBaselineAlignment:(BOOL)a5;
- (void)_configureImageOrTitleCompact:(BOOL)a3;
- (void)_configureImageWithInsets:(UIEdgeInsets)a3 paddingEdges:(unint64_t)a4 additionalPadding:(double)a5;
- (void)_configureTextBackButtonWithTitlePositionAdjustment:(UIOffset)a3 backButtonLayoutInsets:(NSDirectionalEdgeInsets)a4 useBaselineAlignment:(BOOL)a5;
- (void)_configureTextWithOffset:(UIOffset)a3 additionalPadding:(UIEdgeInsets)a4;
- (void)_prepareBackgroundViewFromBarButtonItem:(id)a3 isBackButton:(BOOL)a4;
- (void)_removeTitleButton;
- (void)_setTitle:(id)a3;
- (void)_setupAlternateTitles;
- (void)_updateMonochromaticTreatment;
- (void)_updateTextContent;
- (void)_updateViewsForMaskingEnabled;
- (void)activateHeightMinimizer;
- (void)activateWidthMinimizer;
- (void)addActiveConstraint:(id)a3 named:(id)a4;
- (void)buttonDidUpdateBoundsSize;
- (void)buttonLayoutSubviews:(id)a3 baseImplementation:(id)a4;
- (void)configureButton:(id)a3 fromBarButtonItem:(id)a4;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
- (void)reload;
- (void)resetButtonHasHighlighted;
- (void)setBackButtonMaskEnabled:(BOOL)a3;
- (void)traitDependenciesUpdated;
- (void)updateActiveConstraints:(id)a3;
- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4;
- (void)updateButton:(id)a3 forHeldState:(BOOL)a4;
- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4;
- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4;
- (void)updateImage;
- (void)updateMenu;
@end

@implementation _UIButtonBarButtonVisualProviderIOS

- (void)_computeTextAttributes
{
  v35[3] = *MEMORY[0x1E69E9840];
  v3 = [(_UIButtonBarButton *)self->super._button appearanceData];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 titleTextAttributesForState:0];
    v34 = [v4 titleTextAttributesForState:1];
    v6 = [v4 titleTextAttributesForState:2];
  }

  else
  {
    v4 = [_UIBarButtonItemData standardItemDataForStyle:(*&self->_flags >> 2) & 7];
    v7 = [v4 titleTextAttributesForState:0];
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v9 = [WeakRetained appearanceStorage];
    v10 = [v9 textAttributesForState:0];
    v5 = _finalAttributesFromSources(v7, v10, 0, 0);

    v11 = [v4 titleTextAttributesForState:1];
    v12 = objc_loadWeakRetained(&self->_appearanceDelegate);
    v13 = [v12 appearanceStorage];
    v14 = [v13 textAttributesForState:1];
    v34 = _finalAttributesFromSources(v11, v14, 0, 0);

    v15 = [v4 titleTextAttributesForState:2];
    v16 = objc_loadWeakRetained(&self->_appearanceDelegate);
    v17 = [v16 appearanceStorage];
    v18 = [v17 textAttributesForState:2];
    v6 = _finalAttributesFromSources(v15, v18, 0, 0);
  }

  v19 = [(_UIButtonBarButtonVisualProviderIOS *)self tintColor];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [(UIView *)self->super._button tintColor];
  }

  v22 = v21;

  v23 = [(UIView *)self->super._button traitCollection];
  v24 = [(NSArray *)self->_barButtonTitleAttributes objectAtIndexedSubscript:0];
  v33 = v5;
  v25 = _finalAttributesFromSources(v5, v24, v22, v23);

  v26 = [(NSArray *)self->_barButtonTitleAttributes objectAtIndexedSubscript:1];
  v27 = _finalAttributesFromSources(v34, v26, v22, v23);

  v28 = [(NSArray *)self->_barButtonTitleAttributes objectAtIndexedSubscript:2];
  v29 = _finalAttributesFromSources(v6, v28, v22, v23);

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
  v4 = [WeakRetained menu];

  if ([(_UIButtonBarButton *)self->super._button isBackButton])
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_loadWeakRetained(&self->super._barButtonItem);
    v5 = [v6 _menuIsPrimary];
  }

  v7 = objc_loadWeakRetained(&self->super._barButtonItem);
  v8 = [v7 _secondaryActionsProvider];

  v9 = objc_loadWeakRetained(&self->super._barButtonItem);
  v10 = [v9 _owningButtonGroup];

  if (v8)
  {
    objc_copyWeak(&to, &self->super._barButtonItem);
    if (v5)
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
    v12[4] = v8;
    objc_copyWeak(v11, &to);
    v17 = _Block_copy(v12);
    menuProvider = self->_menuProvider;
    self->_menuProvider = v17;

    objc_destroyWeak(v11);
    objc_destroyWeak(&to);
  }

  else
  {
    if (v4)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_3;
      aBlock[3] = &unk_1E70F6A70;
      v27 = v4;
      v14 = _Block_copy(aBlock);
      v15 = self->_menuProvider;
      self->_menuProvider = v14;

      v16 = v27;
    }

    else
    {
      if (v10)
      {
        v19 = objc_loadWeakRetained(&self->super._barButtonItem);
        v20 = [v19 _hasAction];

        if ((v20 & 1) == 0)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __49___UIButtonBarButtonVisualProviderIOS_updateMenu__block_invoke_4;
          v24[3] = &unk_1E70F6A70;
          v25 = v10;
          v22 = _Block_copy(v24);
          v23 = self->_menuProvider;
          self->_menuProvider = v22;

          v5 = 1;
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
  [(UIControl *)self->super._button setShowsMenuAsPrimaryAction:v5];
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
    v5 = [v4 isEnabled];

    if ((v5 & 1) == 0)
    {
      v6 = +[UIColor tertiaryLabelColor];
      if (v6)
      {
        v7 = v6;
        goto LABEL_21;
      }
    }
  }

  v8 = objc_loadWeakRetained(&self->super._barButtonItem);
  if ([v8 _prefersFilledAppearance])
  {
    v9 = [(_UIButtonBarButton *)self->super._button usesAdjustedTintColorWhenItemPrefersFilledAppearance];

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->super._barButtonItem);
      v11 = [v10 tintColor];
      if (v11)
      {
        v12 = objc_loadWeakRetained(&self->super._barButtonItem);
        v13 = [v12 tintColor];
      }

      else
      {
        v13 = [(UIView *)self->super._button _ancestorTintColor];
      }

      v21 = [(UIView *)self->super._button traitCollection];
      v7 = [UIColor _legibleForegroundColorForBackgroundColor:v13 traitCollection:v21];

      if (v7)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
  }

  v14 = objc_loadWeakRetained(&self->super._barButtonItem);
  v7 = [v14 tintColor];

  if (!v7)
  {
    v15 = objc_loadWeakRetained(&self->_appearanceDelegate);
    v16 = [v15 appearanceStorage];
    v7 = [v16 tintColor];

    if (!v7)
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
      v7 = ;
    }
  }

LABEL_21:

  return v7;
}

- (void)_setupAlternateTitles
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_titleButton)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    v4 = [WeakRetained _backButtonAlternateTitles];

    if ([v4 count])
    {
      v5 = objc_opt_new();
      v6 = objc_loadWeakRetained(&self->super._barButtonItem);
      v7 = [v6 resolvedTitle];

      if (v7)
      {
        v36 = [v4 containsObject:v7];
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

      if (v7)
      {
        v13 = [(_UIButtonBarButtonVisualProviderIOS *)self _titleContentForTitle:v7];
        [v5 addObject:v13];
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = v4;
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
      if (!v7)
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
        v27 = [(NSArray *)self->_titleContent firstObject];
        [v27 width];
        v29 = v28;

        p_backButtonTitleMaxWidthConstraint = &self->_backButtonTitleMaxWidthConstraint;
        backButtonTitleMaxWidthConstraint = self->_backButtonTitleMaxWidthConstraint;
        if (backButtonTitleMaxWidthConstraint)
        {
          [(NSLayoutConstraint *)backButtonTitleMaxWidthConstraint setConstant:v29];
        }

        else
        {
          v33 = [(UIView *)self->_titleButton widthAnchor];
          v34 = [v33 constraintLessThanOrEqualToConstant:v29];
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
  v3 = [(UIView *)self->super._button traitCollection];
  [v3 _monochromaticTreatment];

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
        v9 = [v8 tintColor];
        if (v9)
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
  v3 = [(_UIButtonBarButton *)self->super._button widthMinimizingConstraint];
  [(NSMutableDictionary *)self->_currentConstraints setObject:v3 forKeyedSubscript:@"minimizeWidth"];
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

  v4 = [(_UIButtonBarButtonVisualProviderIOS *)self _backButtonTitleForCurrentBoundsSize];
  v5 = [(UIButton *)self->_titleButton attributedTitleForState:0];
  v6 = [v5 string];

  v7 = v6;
  v8 = v4;
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

- (id)symbolConfigurationCompact:(BOOL)a3
{
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  if (!v5)
  {
    v5 = [_UIBarButtonItemData standardItemDataForStyle:(*&self->_flags >> 2) & 7];
  }

  if (a3)
  {
    [v5 compactImageSymbolConfiguration];
  }

  else
  {
    [v5 imageSymbolConfiguration];
  }
  v6 = ;

  return v6;
}

- (id)backgroundImageForState:(unint64_t)a3 compact:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3 & 2;
    }

    v10 = [v7 backgroundImageForState:v9];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v12 = [WeakRetained appearanceStorage];
    v10 = [v12 backgroundImageForState:a3 style:(*&self->_flags >> 2) & 7 isMini:v4];
  }

  return v10;
}

- (id)backButtonBackgroundImageForState:(unint64_t)a3 compact:(BOOL)a4
{
  v4 = a4;
  v7 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3 & 2;
    }

    v10 = [v7 backgroundImageForState:v9];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v12 = [WeakRetained appearanceStorage];
    v10 = [v12 backButtonBackgroundImageForState:a3 isMini:v4];
  }

  return v10;
}

- (UIOffset)backgroundVerticalAdjustmentForCompact:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = v5;
  if (v5)
  {
    [v5 backgroundImagePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v12 = [WeakRetained appearanceStorage];
    [v12 backgroundVerticalAdjustmentForBarMetrics:v3];
    v10 = v13;
    v8 = 0.0;
  }

  v14 = v8;
  v15 = v10;
  result.vertical = v15;
  result.horizontal = v14;
  return result;
}

- (UIOffset)backButtonBackgroundVerticalAdjustmentForCompact:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = v5;
  if (v5)
  {
    [v5 backgroundImagePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v12 = [WeakRetained appearanceStorage];
    [v12 backButtonBackgroundVerticalAdjustmentForBarMetrics:v3];
    v10 = v13;
    v8 = 0.0;
  }

  v14 = v8;
  v15 = v10;
  result.vertical = v15;
  result.horizontal = v14;
  return result;
}

- (UIOffset)titlePositionOffsetForCompact:(BOOL)a3
{
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = v5;
  if (v5)
  {
    [v5 titlePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v12 = [WeakRetained appearanceStorage];

    if (a3)
    {
      [v12 miniTitlePositionOffset];
    }

    else
    {
      [v12 titlePositionOffset];
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

- (UIOffset)backButtonTitlePositionOffsetForCompact:(BOOL)a3
{
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = v5;
  if (v5)
  {
    [v5 titlePositionAdjustmentForState:0];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v12 = [WeakRetained appearanceStorage];

    if (a3)
    {
      [v12 miniBackButtonTitlePositionOffset];
    }

    else
    {
      [v12 backButtonTitlePositionOffset];
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

- (id)_backIndicatorImageForCompact:(BOOL)a3
{
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    [v5 compactBackIndicatorImage];
  }

  else
  {
    [v5 backIndicatorImage];
  }
  v7 = ;
  if (!v7)
  {
LABEL_16:
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v7 = [WeakRetained backIndicatorImage];

    if (!v7)
    {
      v9 = +[_UIBarButtonItemData standardBackButtonData];
      v10 = v9;
      if (a3)
      {
        [v9 compactBackIndicatorImage];
      }

      else
      {
        [v9 backIndicatorImage];
      }
      v7 = ;
    }
  }

  v11 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v11;
}

- (id)_backIndicatorSymbolConfigurationForCompact:(BOOL)a3
{
  if (dyld_program_sdk_at_least())
  {
    v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
      v7 = [WeakRetained backIndicatorImage];

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = +[_UIBarButtonItemData standardBackButtonData];
      }
    }

    if (a3)
    {
      [v5 compactBackIndicatorSymbolConfiguration];
    }

    else
    {
      [v5 backIndicatorSymbolConfiguration];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_backIndicatorMaskForCompact:(BOOL)a3
{
  v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    [v5 compactBackIndicatorTransitionMaskImage];
  }

  else
  {
    [v5 backIndicatorTransitionMaskImage];
  }
  v7 = ;
  if (!v7)
  {
LABEL_13:
    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    v7 = [WeakRetained backIndicatorMaskImage];

    if (!v7)
    {
      v9 = +[_UIBarButtonItemData standardBackButtonData];
      v7 = [v9 compactBackIndicatorTransitionMaskImage];
    }
  }

  v10 = [v7 imageFlippedForRightToLeftLayoutDirection];

  return v10;
}

- (id)_backIndicatorMaskSymbolConfigurationForCompact:(BOOL)a3
{
  if (dyld_program_sdk_at_least())
  {
    v5 = [(_UIButtonBarButton *)self->super._button appearanceData];
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
      v7 = [WeakRetained backIndicatorImage];

      if (v7)
      {
        v5 = 0;
      }

      else
      {
        v5 = +[_UIBarButtonItemData standardBackButtonData];
      }
    }

    if (a3)
    {
      [v5 compactBackIndicatorTransitionMaskSymbolConfiguration];
    }

    else
    {
      [v5 backIndicatorTransitionMaskSymbolConfiguration];
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

- (id)pointerShapeInContainer:(id)a3
{
  v4 = a3;
  v5 = +[_UIPointerSettingsDomain rootSettings];
  v6 = [v5 navigationAndToolbarSettings];

  if ((*&self->_flags & 0x20) != 0 && self->_systemItem == 24)
  {
    backgroundView = self->_backgroundView;
    [(UIView *)backgroundView bounds];
    [(UIView *)backgroundView convertRect:v4 toView:?];
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
      [(UIView *)v10 convertRect:v4 toView:?];
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

    v26 = [(UIButton *)imageButton imageView];
    goto LABEL_21;
  }

  v26 = [(UIButton *)v24 titleLabel];
  if (([v26 isHidden] & 1) == 0)
  {
LABEL_21:
    [v26 bounds];
    [v26 convertRect:self->super._button toView:?];
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
  v8 = _calculateFinalPointerShape(button, v4, WeakRetained, v6, [(_UIButtonBarButton *)self->super._button isBackButton], [(UIView *)self->super._button effectiveUserInterfaceLayoutDirection]!= UIUserInterfaceLayoutDirectionRightToLeft, v32, [(_UIButtonBarButtonVisualProviderIOS *)self prefersCapsularPointerShape], x, y, width, height);

LABEL_32:

  return v8;
}

- (id)matchingPointerShapeForView:(id)a3 rect:(CGRect)a4 inContainer:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a5;
  v12 = a3;
  v13 = +[_UIPointerSettingsDomain rootSettings];
  v14 = [v13 navigationAndToolbarSettings];
  v15 = _calculateFinalPointerShape(v12, v11, 0, v14, 0, 0, 0, [(_UIButtonBarButtonVisualProviderIOS *)self prefersCapsularPointerShape], x, y, width, height);

  return v15;
}

- (BOOL)shouldLift
{
  if ((*&self->_flags & 0x20) != 0 && self->_systemItem == 24)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = [(UIControl *)self->super._button isSelected];
    if (v2)
    {
      v3 = +[_UIPointerSettingsDomain rootSettings];
      v4 = [v3 navigationAndToolbarSettings];

      LOBYTE(v3) = [v4 enableLiftOnSelected];
      LOBYTE(v2) = v3;
    }
  }

  return v2;
}

- (void)updateActiveConstraints:(id)a3
{
  v12 = a3;
  oldConstraints = self->_oldConstraints;
  if (oldConstraints)
  {
    v5 = oldConstraints;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = v5;
  objc_storeStrong(&self->_oldConstraints, self->_currentConstraints);
  objc_storeStrong(&self->_currentConstraints, v6);
  v12[2]();
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
    v9 = [(NSMutableDictionary *)self->_oldConstraints allValues];
    [v8 deactivateConstraints:v9];

    [(NSMutableDictionary *)self->_oldConstraints removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_currentConstraints count])
  {
    v10 = MEMORY[0x1E69977A0];
    v11 = [(NSMutableDictionary *)self->_currentConstraints allValues];
    [v10 activateConstraints:v11];
  }
}

- (void)addActiveConstraint:(id)a3 named:(id)a4
{
  v17 = a3;
  v7 = a4;
  if (![v7 length])
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:872 description:@"Activating a constraint requires a non-empty identifier"];
  }

  if (!v17)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:873 description:{@"Cannot activate a nil constraint (%@)", v7}];
  }

  p_oldConstraints = &self->_oldConstraints;
  v9 = [(NSMutableDictionary *)self->_oldConstraints objectForKeyedSubscript:v7];
  v10 = v9;
  v11 = v17;
  if (v9 == v17)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:878 description:@"On non-optimal path for reusing existing constraint – did you mean to call -activate[Width|Height]Minimizer instead?"];

    v11 = v17;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else if (!v9)
  {
    goto LABEL_10;
  }

  v12 = [v10 _isEqualToConstraintValue:v17 includingConstant:0 includeOtherMutableProperties:0];
  v11 = v17;
  if (v12)
  {
    [v17 constant];
    [v10 setConstant:?];
    [(NSMutableDictionary *)self->_currentConstraints setObject:v10 forKeyedSubscript:v7];
    v13 = 0;
    goto LABEL_11;
  }

LABEL_10:
  [v11 setIdentifier:v7];
  p_oldConstraints = &self->_currentConstraints;
  v13 = v17;
LABEL_11:
  [(NSMutableDictionary *)*p_oldConstraints setObject:v13 forKeyedSubscript:v7];
}

- (void)activateHeightMinimizer
{
  v3 = [(_UIButtonBarButton *)self->super._button heightMinimizingConstraint];
  [(NSMutableDictionary *)self->_currentConstraints setObject:v3 forKeyedSubscript:@"minimizeHeight"];
  [(NSMutableDictionary *)self->_oldConstraints setObject:0 forKeyedSubscript:@"minimizeHeight"];
}

- (void)setBackButtonMaskEnabled:(BOOL)a3
{
  if (self->_backButtonMask)
  {
    flags = self->_flags;
    if (((((flags & 2) == 0) ^ a3) & 1) == 0)
    {
      if (a3)
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

- (BOOL)buttonSelectionState:(id)a3 forRequestedState:(BOOL)a4
{
  if (!a4)
  {
    return 0;
  }

  if ([a3 isBackButton])
  {
    return 0;
  }

  if (self->_titleButton)
  {
    return 1;
  }

  return self->_imageButton != 0;
}

- (void)updateButton:(id)a3 forSelectedState:(BOOL)a4
{
  v4 = a4;
  v16 = a3;
  titleButton = self->_titleButton;
  if (!titleButton || [(UIControl *)titleButton isSelected]== v4)
  {
    imageButton = self->_imageButton;
    if (imageButton)
    {
      v7 = [(UIControl *)imageButton isSelected]^ v4;
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

  [(UIButton *)self->_titleButton setSelected:v4];
  [(UIButton *)self->_imageButton setSelected:v4];
  if (v4)
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
    [v16 setNeedsLayout];
  }
}

- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4
{
  v4 = a4;
  [(UIButton *)self->_backIndicatorButton setHighlighted:a4];
  [(UIButton *)self->_titleButton setHighlighted:v4];
  [(UIButton *)self->_imageButton setHighlighted:v4];
  backgroundImages = self->_backgroundImages;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v8 = [(NSMutableDictionary *)backgroundImages objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = self->_backgroundImages;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
    v10 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v11];
    [(UIImageView *)self->_backgroundView setImage:v10];
  }
}

- (void)updateButton:(id)a3 forHeldState:(BOOL)a4
{
  v4 = a4;
  [(UIButton *)self->_backIndicatorButton _setHasActiveMenuPresentation:a4];
  [(UIButton *)self->_titleButton _setHasActiveMenuPresentation:v4];
  imageButton = self->_imageButton;

  [(UIButton *)imageButton _setHasActiveMenuPresentation:v4];
}

- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4
{
  v4 = a4;
  [(UIButton *)self->_backIndicatorButton setEnabled:a4];
  [(UIButton *)self->_titleButton setEnabled:v4];
  [(UIButton *)self->_imageButton setEnabled:v4];
  if (v4)
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

- (void)_computeTextAttributesForBarButtonItem:(id)a3
{
  v16[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  *&self->_flags = *&self->_flags & 0xE3 | (4 * ([v4 style] & 7));
  v5 = [v4 titleTextAttributesForState:0];
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

  v9 = [v4 titleTextAttributesForState:{1, v8}];
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
  v12 = [v4 titleTextAttributesForState:2];

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

- (void)_setTitle:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
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
    v9 = [(UIButton *)titleButton _allButtonContent];
    v24 = 138412802;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = titleButton;
    v28 = 2112;
    v29 = v9;
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
    v9 = [(UIButton *)v8 _allButtonContent];
    v24 = 138412802;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Received nil title, substituting item's title (item=%@, button=%@, buttonContent=%@)", &v24, 0x20u);
    goto LABEL_5;
  }

LABEL_7:
  v10 = objc_loadWeakRetained(&self->super._barButtonItem);
  v11 = [v10 resolvedTitle];
  v12 = v11;
  v13 = &stru_1EFB14550;
  if (v11)
  {
    v13 = v11;
  }

  v4 = v13;

LABEL_10:
  if (!self->_finalTitleAttributes)
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _computeTextAttributes];
  }

  v14 = objc_alloc(MEMORY[0x1E696AAB0]);
  v15 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:0];
  v16 = [v14 initWithString:v4 attributes:v15];

  [(UIButton *)self->_titleButton setAttributedTitle:v16 forState:0];
  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:1];
  v19 = [v17 initWithString:v4 attributes:v18];

  [(UIButton *)self->_titleButton setAttributedTitle:v19 forState:1];
  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:2];
  v22 = [v20 initWithString:v4 attributes:v21];

  [(UIButton *)self->_titleButton setAttributedTitle:v22 forState:2];
}

- (void)_configureImageOrTitleCompact:(BOOL)a3
{
  v3 = a3;
  v56[2] = *MEMORY[0x1E69E9840];
  if (![(_UIButtonBarButton *)self->super._button isBreadcrumb])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
    v7 = [WeakRetained _imageForState:0 compact:v3 type:0];

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

      v11 = v7;
      *&self->_flags = *&self->_flags & 0xFE | [v11 hasBaseline];
      v17 = [(_UIButtonBarButtonVisualProviderIOS *)self symbolConfigurationCompact:v3];
      [(UIButton *)self->_imageButton setImage:v11 forState:0];
      [(UIButton *)self->_imageButton setPreferredSymbolConfiguration:v17 forImageInState:0];
      [(UIButton *)self->_imageButton setImage:v11 forState:2];
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
    v11 = [v10 resolvedTitle];

    if (!v11 || ![v11 length])
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
      v27 = [v26 centerTextButtons];

      v25 = 0.0;
      if ((v27 & 1) == 0)
      {
        v28 = [(_UIButtonBarButton *)self->super._button isBackButton];
        v25 = 0.0;
        if (!v28)
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

        if (v3)
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
      v34 = [(NSArray *)v33 firstObject];
      v35 = [v34 title];
      v36 = [v35 isEqualToString:v11];

      [(_UIButtonBarButtonVisualProviderIOS *)self _setupAlternateTitles];
      if (v36 && self->_titleContent)
      {
        v37 = [(UIButton *)self->_titleButton attributedTitleForState:0];
        v38 = [v37 string];

        if (v38)
        {
          titleContent = self->_titleContent;
          v51 = MEMORY[0x1E69E9820];
          v52 = 3221225472;
          v53 = __69___UIButtonBarButtonVisualProviderIOS__configureImageOrTitleCompact___block_invoke;
          v54 = &unk_1E70F73B8;
          v40 = v38;
          v55 = v40;
          if ([(NSArray *)titleContent indexOfObjectPassingTest:&v51]== 0x7FFFFFFFFFFFFFFFLL)
          {
            v41 = v11;
          }

          else
          {
            v41 = v40;
          }

          v17 = v41;
        }

        else
        {
          v17 = v11;
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
      v42 = [(_UIButtonBarButtonVisualProviderIOS *)self _backButtonTitleForCurrentBoundsSize];
    }

    else
    {
      v42 = v11;
    }

    v17 = v42;
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
  if (a1)
  {
    [*(a1 + 8) bounds];
    v3 = v2;
    v4 = [(_UIButtonBarButtonVisualProviderIOS *)a1 _widthForBackButtonChevronIncludingPaddingToContentButton];
    if ([*(a1 + 128) count])
    {
      v5 = 0;
      v6 = v3 - (v4 + 6.0);
      while (1)
      {
        v7 = [*(a1 + 128) objectAtIndexedSubscript:v5];
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

        if (++v5 >= [*(a1 + 128) count])
        {
          goto LABEL_7;
        }
      }

      v10 = [v7 title];
    }

    else
    {
LABEL_7:
      v10 = 0;
    }

    v11 = &stru_1EFB14550;
    if (v10)
    {
      v11 = v10;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_prepareBackgroundViewFromBarButtonItem:(id)a3 isBackButton:(BOOL)a4
{
  v4 = a4;
  v28 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  v7 = [WeakRetained compactMetrics];

  v8 = v7;
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
    if (v4)
    {
      v15 = [v28 backButtonBackgroundImageForState:qword_18A678698[v11] barMetrics:v8];
      if (!v15)
      {
        v16 = [(_UIButtonBarButtonVisualProviderIOS *)self backButtonBackgroundImageForState:v14 compact:v8];
LABEL_10:
        v17 = v16;
        if (!v16)
        {
          v17 = [v28 _backgroundImageForState:v14 compact:v8 type:0];
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
      v15 = [v28 backgroundImageForState:qword_18A678698[v11] style:(*&self->_flags >> 2) & 7 barMetrics:v8];
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

- (void)_addConstraintsForBackgroundViewWithOffset:(double)a3 isBackButton:(BOOL)a4 resizesImage:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
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
  if (v6 && self->_backIndicatorButton)
  {
    v11 = [(UIView *)self->_backgroundView leadingAnchor];
    v12 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-3.0];
    v14 = @"BGI_Leading_BIB_Leading";
  }

  else
  {
    v11 = [(UIView *)self->_backgroundView leadingAnchor];
    v12 = [(UIView *)v26 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-3.0];
    v14 = @"BGI_Leading_CB_Leading";
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v13 named:v14];

  v15 = [(UIView *)self->_backgroundView trailingAnchor];
  v16 = [(UIView *)v26 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:3.0];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v17 named:@"BGI_Trailing_CB_Trailing"];

  backgroundView = self->_backgroundView;
  if (v5)
  {
    v19 = [(UIView *)backgroundView topAnchor];
    v20 = [(UIView *)v26 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:a3 + -3.0];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v21 named:@"BGI_Top_CB_Top"];

    v22 = [(UIView *)self->_backgroundView bottomAnchor];
    v23 = [(UIView *)v26 bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:a3 + 3.0];
    v25 = @"BGI_Bottom_CB_Bottom";
  }

  else
  {
    v22 = [(UIView *)backgroundView centerYAnchor];
    v23 = [(UIView *)v26 centerYAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:a3];
    v25 = @"BGI_Center_CB_Center";
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v24 named:v25];
}

- (UIEdgeInsets)_insetsForCompact:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_appearanceDelegate);
    [v7 _layoutMarginsForButtonBarButton:self->super._button compact:v3];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    if (v3)
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

- (double)_defaultBackIndicatorBaselineInsetCompact:(BOOL)a3
{
  result = 3.0;
  if (!a3)
  {
    v4 = [(UIView *)self->super._button traitCollection];
    [v4 displayScale];
    v6 = v5;

    result = 4.0;
    if (v6 > 0.0)
    {
      return -1.0 / v6 + 5.0;
    }
  }

  return result;
}

- (double)_defaultPaddingForInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  left = a3.left;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  v6 = [WeakRetained barType];

  v7 = 10.0;
  if (v6 == 1)
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

- (UIEdgeInsets)_imageInsetsForBarButtonItem:(id)a3 compact:(BOOL)a4 isBackButton:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(UIButton *)self->_imageButton currentImage];
  v10 = v9;
  if (v9)
  {
    [v9 alignmentRectInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    if (v8)
    {
      if (v6)
      {
        [v8 landscapeImagePhoneInsets];
      }

      else
      {
        [v8 imageInsets];
      }

      v22 = v24;
      v20 = v25;
    }

    v30 = v12 + v23;
    v31 = v16 + v21;
    if (!a5)
    {
      [(_UIButtonBarButtonVisualProviderIOS *)self backgroundVerticalAdjustmentForCompact:v6];
      v19 = v32;
      if (fabs(v32) < 2.22044605e-16)
      {
        [v8 backgroundVerticalPositionAdjustmentForBarMetrics:v6];
        v19 = v33;
      }
    }

    v28 = v14 + v22;
    v26 = v18 + v20;
    v34 = v30 + v19;
    v35 = v31 - v19;
    v36 = [objc_opt_self() mainScreen];
    [v36 scale];
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

- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5
{
  v8 = a5;
  v9 = a3;
  objc_storeWeak(&self->_appearanceDelegate, a4);
  [(_UIButtonBarButtonVisualProviderIOS *)self configureButton:v9 fromBarButtonItem:v8];
}

- (double)_widthForBackButtonChevronIncludingPaddingToContentButton
{
  if (!a1)
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v3 = objc_opt_respondsToSelector();

  v4 = 0.0;
  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 96));
    [v5 _backButtonContentPaddingInButtonBarButton:*(a1 + 8)];
    v7 = v6;

    v4 = v7 + v7;
  }

  [*(a1 + 56) intrinsicContentSize];
  return v4 + v8;
}

- (void)_addHorizontalConstraintsForContentButton:(id)a3 titleOffset:(double)a4 backButtonLayoutInsets:(NSDirectionalEdgeInsets)a5
{
  trailing = a5.trailing;
  leading = a5.leading;
  v35 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  [WeakRetained backButtonMargin];
  v11 = v10;

  if (v35)
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

    v17 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    v18 = [(UIView *)self->super._button leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:v11 - leading + v14];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v19 named:@"BIB_Leading_Leading"];

    [(_UIButtonBarButtonVisualProviderIOS *)self contentButtonTrailingOffset:v14];
    v21 = -v20;
    v22 = [v35 leadingAnchor];
    v23 = [(UIView *)self->_backIndicatorButton trailingAnchor];
    v24 = 6.0;
    if (!self)
    {
      v24 = 0.0;
    }

    v25 = [v22 constraintEqualToAnchor:v23 constant:v24 + a4 - trailing];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v25 named:@"BIB_Trailing_CB_Leading"];

    v26 = [v35 trailingAnchor];
    v27 = [(UIView *)self->super._button trailingAnchor];
    v28 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:v21];
    v29 = @"CB_Trailing_Trailing";
  }

  else
  {
    v30 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    v31 = [(UIView *)self->super._button leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:v11 - leading];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v32 named:@"BIB_Leading_Leading"];

    v33 = _UISMCBarsEnabled();
    backIndicatorButton = self->_backIndicatorButton;
    if (v33)
    {
      v26 = [(UIView *)backIndicatorButton centerXAnchor];
      v27 = [(UIView *)self->super._button centerXAnchor];
      v28 = [v26 constraintEqualToAnchor:v27 constant:leading - trailing];
      v29 = @"BIB_CenterX_CenterX";
    }

    else
    {
      v26 = [(UIView *)backIndicatorButton trailingAnchor];
      v27 = [(UIView *)self->super._button trailingAnchor];
      v28 = [v26 constraintLessThanOrEqualToAnchor:v27 constant:-trailing];
      v29 = @"BIB_Trailing_Trailing";
    }
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v28 named:v29];

  [(_UIButtonBarButtonVisualProviderIOS *)self activateWidthMinimizer];
}

- (void)_addHorizontalConstraintsForTextWithOffset:(double)a3 additionalPadding:(UIEdgeInsets)a4
{
  right = a4.right;
  left = a4.left;
  v8 = [(UIView *)self->super._button effectiveUserInterfaceLayoutDirection:a3];
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

  v10 = [(UIView *)self->_titleButton leadingAnchor];
  v11 = [(UIView *)self->super._button leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v9 + a3];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v12 named:@"TB_Leading_Leading"];

  v15 = [(UIView *)self->super._button trailingAnchor];
  v13 = [(UIView *)self->_titleButton trailingAnchor];
  v14 = [v15 constraintEqualToAnchor:v13 constant:right - a3];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v14 named:@"TB_Trailing_Trailing"];
}

- (void)_addHorizontalConstraintsForImageWithInsets:(UIEdgeInsets)a3 paddingEdges:(unint64_t)a4 additionalPadding:(double)a5
{
  right = a3.right;
  left = a3.left;
  [(_UIButtonBarButtonVisualProviderIOS *)self _defaultPaddingForInsets:a3.top, a3.left, a3.bottom];
  v11 = v10;
  v12 = [(UIView *)self->super._button effectiveUserInterfaceLayoutDirection];
  if (v12 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v13 = 8;
  }

  else
  {
    v13 = 2;
  }

  if (v12 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v14 = 2;
  }

  else
  {
    v14 = 8;
  }

  if (v12 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v15 = right;
  }

  else
  {
    v15 = left;
  }

  if (v12 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v16 = left;
  }

  else
  {
    v16 = right;
  }

  if ((v13 & a4) != 0)
  {
    v17 = v11 * 0.5 + a5;
    v18 = [(UIView *)self->_imageButton leadingAnchor];
    v19 = [(UIView *)self->super._button leadingAnchor];
    v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:v17 - v15];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v20 named:@"IB_Leading_Leading"];

    v21 = v17 + 0.0;
  }

  else
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _effectiveEdgeSpacing];
    v23 = v22 - v15;
    v24 = [(UIView *)self->_imageButton leadingAnchor];
    v25 = [(UIView *)self->super._button leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:v23];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v26 named:@"IB_Leading_Leading"];

    v17 = 0.0;
    v21 = 0.0;
  }

  if ((v14 & a4) != 0)
  {
    v27 = v11 * 0.5 + a5;
    v28 = [(UIView *)self->super._button trailingAnchor];
    v29 = [(UIView *)self->_imageButton trailingAnchor];
    v30 = [v28 constraintGreaterThanOrEqualToAnchor:v29 constant:v27 - v16];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v30 named:@"IB_Trailing_Trailing"];

    v21 = v27 + v21;
  }

  else
  {
    [(_UIButtonBarButtonVisualProviderIOS *)self _effectiveEdgeSpacing];
    v32 = v31 - v16;
    v33 = [(UIView *)self->super._button trailingAnchor];
    v34 = [(UIView *)self->_imageButton trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v32];
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

  v39 = [(UIView *)self->_imageButton centerXAnchor];
  v40 = [(UIView *)self->super._button centerXAnchor];
  v46 = [v39 constraintEqualToAnchor:v40 constant:left];

  LODWORD(v41) = 1148829696;
  [v46 setPriority:v41];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v46 named:@"IB_CenterX_CenterX"];
  [(_UIButtonBarButtonVisualProviderIOS *)self activateWidthMinimizer];
  v42 = [(UIView *)self->super._button widthAnchor];
  v43 = [(UIView *)self->_imageButton widthAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v21];

  LODWORD(v45) = 1148829696;
  [v44 setPriority:v45];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v44 named:@"IB_Width"];
}

- (void)_addVerticalConstraintsForBackIndicatorWithTitleOffset:(double)a3 bottomOffset:(double)a4 useBaselineAlignment:(BOOL)a5
{
  v5 = a5;
  v9 = [(_UIButtonBarButton *)self->super._button verticallyCentersContents];
  backIndicatorButton = self->_backIndicatorButton;
  if (v9)
  {
    v11 = [(UIView *)backIndicatorButton centerYAnchor];
    v12 = [(UIView *)self->super._button centerYAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v13 named:@"BIB_CenterY_CenterY"];
  }

  else
  {
    if (v5)
    {
      v11 = [(UIView *)backIndicatorButton lastBaselineAnchor];
      v12 = [(UIView *)self->super._button layoutMarginsGuide];
      v13 = [v12 bottomAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 constant:-a3];
      v15 = @"BIB_Baseline_Baseline";
    }

    else
    {
      v11 = [(UIView *)backIndicatorButton bottomAnchor];
      v12 = [(UIView *)self->super._button layoutMarginsGuide];
      v13 = [v12 bottomAnchor];
      v14 = [v11 constraintEqualToAnchor:v13 constant:a4 - a3];
      v15 = @"BIB_Bottom_Baseline";
    }

    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v14 named:v15];
  }

  v16 = [(UIView *)self->_backIndicatorButton topAnchor];
  v17 = [(UIView *)self->super._button topAnchor];
  v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v18 named:@"BIB_Top_Top"];

  v21 = [(UIView *)self->super._button bottomAnchor];
  v19 = [(UIView *)self->_backIndicatorButton bottomAnchor];
  v20 = [v21 constraintGreaterThanOrEqualToAnchor:v19];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v20 named:@"BIB_Bottom_Bottom"];
}

- (void)_addVerticalConstraintsForTextWithOffset:(double)a3
{
  if (!self->_titleButton)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1547 description:@"Invalid text button configuration"];
  }

  if (-[_UIButtonBarButton verticallyCentersContents](self->super._button, "verticallyCentersContents") || (WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate), v6 = [WeakRetained centerTextButtons], WeakRetained, v6))
  {
    v7 = [(UIView *)self->_titleButton centerYAnchor];
    v8 = [(UIView *)self->super._button centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v9 named:@"TB_CenterY_CenterY"];
  }

  else
  {
    v7 = [(UIView *)self->_titleButton lastBaselineAnchor];
    v8 = [(UIView *)self->super._button layoutMarginsGuide];
    v9 = [v8 bottomAnchor];
    v10 = [v7 constraintEqualToAnchor:v9 constant:a3];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v10 named:@"TB_Baseline_Baseline"];
  }

  v11 = [(UIView *)self->_titleButton topAnchor];
  v12 = [(UIView *)self->super._button topAnchor];
  v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v13 named:@"TB_Top_Top"];

  v18 = [(UIView *)self->super._button bottomAnchor];
  v14 = [(UIView *)self->_titleButton bottomAnchor];
  v15 = [v18 constraintGreaterThanOrEqualToAnchor:v14];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v15 named:@"TB_Bottom_Bottom"];
}

- (void)_addVerticalConstraintsForImageWithInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  top = a3.top;
  if (!self->_imageButton)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1561 description:@"Invalid image button configuration"];
  }

  if ([(_UIButtonBarButton *)self->super._button verticallyCentersContents:a3.top])
  {
    v6 = [(UIButton *)self->_imageButton imageView];
    [v6 alignmentRectInsets];
    v8 = v7;
    v10 = v9;

    v35 = [(UIView *)self->_imageButton centerYAnchor];
    v11 = [(UIView *)self->super._button centerYAnchor];
    v12 = [v35 constraintEqualToAnchor:v11 constant:(v8 - v10) * -0.5];
    v13 = @"IB_CenterY_CenterY";
LABEL_16:
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v12 named:v13];

    return;
  }

  if (*&self->_flags)
  {
    v26 = [(UIView *)self->_imageButton lastBaselineAnchor];
    v27 = [(UIView *)self->super._button layoutMarginsGuide];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v29 named:@"IB_Baseline_Baseline"];

    v30 = [(UIView *)self->_imageButton topAnchor];
    v31 = [(UIView *)self->super._button topAnchor];
    v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v32 named:@"IB_Top_Top"];

    v35 = [(UIView *)self->super._button bottomAnchor];
    v11 = [(UIView *)self->_imageButton bottomAnchor];
    v12 = [v35 constraintGreaterThanOrEqualToAnchor:v11];
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

  v17 = [(UIView *)self->_imageButton centerYAnchor];
  v18 = [(UIView *)self->super._button centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v16];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v19 named:@"IB_CenterY_CenterY"];

  v20 = [(UIView *)self->_imageButton topAnchor];
  v21 = [(UIView *)self->super._button topAnchor];
  v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21 constant:top];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v22 named:@"IB_Top_Top"];

  v23 = [(UIView *)self->super._button bottomAnchor];
  v24 = [(UIView *)self->_imageButton bottomAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24 constant:v15];
  [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v25 named:@"IB_Bottom_Bottom"];

  [(_UIButtonBarButtonVisualProviderIOS *)self activateHeightMinimizer];
}

- (void)_configureImageWithInsets:(UIEdgeInsets)a3 paddingEdges:(unint64_t)a4 additionalPadding:(double)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForImageWithInsets:a4 paddingEdges:a3.top additionalPadding:a3.left, a3.bottom, a3.right, a5];

  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForImageWithInsets:top, left, bottom, right];
}

- (void)_configureTextWithOffset:(UIOffset)a3 additionalPadding:(UIEdgeInsets)a4
{
  vertical = a3.vertical;
  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForTextWithOffset:a3.horizontal additionalPadding:a4.top, a4.left, a4.bottom, a4.right];

  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForTextWithOffset:vertical];
}

- (void)_configureBackButtonMask
{
  backButtonMask = self->_backButtonMask;
  if (backButtonMask)
  {
    v4 = [(UIView *)backButtonMask leadingAnchor];
    v5 = [(UIView *)self->super._button leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v6 named:@"Mask_Leading_Leading"];

    v7 = [(UIView *)self->_backButtonMask trailingAnchor];
    v8 = [(UIView *)self->super._button trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v9 named:@"Mask_Trailing_Trailing"];

    v10 = [(UIView *)self->_backButtonMask topAnchor];
    v11 = [(UIView *)self->super._button topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v12 named:@"Mask_Top_Top"];

    v13 = [(UIView *)self->_backButtonMask bottomAnchor];
    v14 = [(UIView *)self->super._button bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v15 named:@"Mask_Bottom_Bottom"];

    v16 = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    v17 = [v16 leadingAnchor];
    v18 = [(UIView *)self->_backIndicatorButton leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v19 named:@"MaskIV_Leading_BIB_Leadinng"];

    v20 = [(_UIBackButtonMaskView *)self->_backButtonMask maskExtensionLeadingAnchor];
    v21 = [(UIView *)self->_backIndicatorButton trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v22 named:@"MaskEV_Leading_BIB_Trailing"];

    v26 = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    v23 = [v26 centerYAnchor];
    v24 = [(UIView *)self->_backIndicatorButton centerYAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [(_UIButtonBarButtonVisualProviderIOS *)self addActiveConstraint:v25 named:@"MaskIV_CenterY_BIB_CenterY"];
  }
}

- (void)_configureImageBackButtonWithImageInsets:(UIEdgeInsets)a3 backButtonLayoutInsets:(NSDirectionalEdgeInsets)a4 useBaselineAlignment:(BOOL)a5
{
  v5 = a5;
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  right = a3.right;
  v11 = a3.bottom;
  left = a3.left;
  v13 = a3.top;
  if (!self->_imageButton)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1614 description:@"Invalid image button configuration"];
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForContentButton:0.0 titleOffset:top backButtonLayoutInsets:leading, bottom, trailing];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForBackIndicatorWithTitleOffset:v5 bottomOffset:0.0 useBaselineAlignment:bottom];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForImageWithInsets:v13, left, v11, right];

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureBackButtonMask];
}

- (void)_configureTextBackButtonWithTitlePositionAdjustment:(UIOffset)a3 backButtonLayoutInsets:(NSDirectionalEdgeInsets)a4 useBaselineAlignment:(BOOL)a5
{
  v5 = a5;
  trailing = a4.trailing;
  bottom = a4.bottom;
  leading = a4.leading;
  top = a4.top;
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  if (!self->_titleButton)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIButtonBarButtonVisualProviderIOS.m" lineNumber:1623 description:@"Invalid text button configuration"];
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForContentButton:horizontal titleOffset:top backButtonLayoutInsets:leading, bottom, trailing];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForBackIndicatorWithTitleOffset:v5 bottomOffset:vertical useBaselineAlignment:bottom];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForTextWithOffset:vertical];

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureBackButtonMask];
}

- (void)_configureBackButtonWithBackButtonLayoutInsets:(NSDirectionalEdgeInsets)a3 useBaselineAlignment:(BOOL)a4
{
  v4 = a4;
  bottom = a3.bottom;
  [(_UIButtonBarButtonVisualProviderIOS *)self _addHorizontalConstraintsForContentButton:0 titleOffset:0.0 backButtonLayoutInsets:a3.top, a3.leading, a3.bottom, a3.trailing];
  [(_UIButtonBarButtonVisualProviderIOS *)self _addVerticalConstraintsForBackIndicatorWithTitleOffset:v4 bottomOffset:0.0 useBaselineAlignment:bottom];

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureBackButtonMask];
}

- (id)_titleContentForTitle:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_titleLookup objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(NSArray *)self->_finalTitleAttributes objectAtIndexedSubscript:0];
    v5 = [_UITitleContent contentWithTitle:v4 attributes:v6 button:self->_titleButton];

    [(NSMutableDictionary *)self->_titleLookup setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (CGSize)buttonImageViewSize:(id)a3
{
  if (self->_imageButton)
  {
    v3 = [(UIButton *)self->_imageButton _imageView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIButtonBarButtonVisualProviderIOS;
    [(_UIButtonBarButtonVisualProvider *)&v12 buttonImageViewSize:a3];
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
    v8 = [(UIButton *)imageButton imageView];
    v9 = [(UIButton *)self->_imageButton imageView];
    [v9 bounds];
    [v8 convertRect:self->super._button toView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(UIButton *)self->_imageButton imageView];
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

    v20 = [(UIButton *)titleButton titleLabel];
    v21 = [(UIButton *)self->_titleButton titleLabel];
    [v21 bounds];
    [v20 convertRect:self->super._button toView:?];
    v11 = v22;
    v13 = v23;
    v15 = v24;
    v17 = v25;

    v18 = [(UIButton *)self->_titleButton titleLabel];
  }

  v26 = v18;
  [v18 alignmentRectForFrame:{v11, v13, v15, v17}];
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

- (void)configureButton:(id)a3 fromBarButtonItem:(id)a4
{
  v117[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
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
  if ([v8 isSpringLoaded])
  {
    v13 = 1;
  }

  else
  {
    v13 = [v7 isBackButton];
  }

  [v7 setSpringLoaded:v13];
  [(_UIButtonBarButtonVisualProviderIOS *)self updateMenu];
  v14 = [v8 isSystemItem];
  if (v14)
  {
    v15 = 32;
  }

  else
  {
    v15 = 0;
  }

  flags = *&self->_flags & 0xDF | v15;
  *&self->_flags = flags;
  if (v14)
  {
    self->_systemItem = [v8 systemItem];
    flags = self->_flags;
  }

  v69 = a2;
  *&self->_flags = flags & 0xFD;
  v17 = [(_UIButtonBarButtonVisualProviderIOS *)self tintColor];
  [v7 setTintColor:v17];

  [(_UIButtonBarButtonVisualProviderIOS *)self _computeTextAttributesForBarButtonItem:v8];
  v18 = objc_loadWeakRetained(&self->_appearanceDelegate);
  v19 = [v18 compactMetrics];

  v71 = v12;
  if ([v7 isBackButton])
  {
    v20 = 1;
  }

  else
  {
    v20 = [v8 _showsChevron];
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _configureImageOrTitleCompact:v19];
  [(_UIButtonBarButtonVisualProviderIOS *)self _updateMonochromaticTreatment];
  v21 = objc_opt_self();
  v117[0] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:1];
  v23 = [v7 registerForTraitChanges:v22 withTarget:self action:sel__updateMonochromaticTreatment];

  backIndicatorButton = self->_backIndicatorButton;
  v25 = v20;
  v70 = v8;
  if (v20)
  {
    v67 = v20;
    if (!backIndicatorButton)
    {
      v26 = _newButton(self);
      v27 = self->_backIndicatorButton;
      self->_backIndicatorButton = v26;
    }

    v66 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorImageForCompact:v19];
    [UIButton setImage:"setImage:forState:" forState:?];
    v28 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorSymbolConfigurationForCompact:v19];
    [(UIButton *)self->_backIndicatorButton setPreferredSymbolConfiguration:v28 forImageInState:0];
    [(UIButton *)self->_backIndicatorButton setTintColor:0];
    if (!self->_backButtonMask)
    {
      v29 = objc_alloc_init(_UIBackButtonMaskView);
      backButtonMask = self->_backButtonMask;
      self->_backButtonMask = v29;

      [(UIView *)self->_backButtonMask setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    v31 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorMaskForCompact:v19];
    v32 = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    [v32 setImage:v31];

    v33 = [(_UIButtonBarButtonVisualProviderIOS *)self _backIndicatorMaskSymbolConfigurationForCompact:v19];
    v34 = [(_UIBackButtonMaskView *)self->_backButtonMask maskImageView];
    [v34 setPreferredSymbolConfiguration:v33];

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
  [(_UIButtonBarButtonVisualProviderIOS *)self _insetsForCompact:v19];
  [v7 setLayoutMargins:?];
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
  v84 = self;
  v90 = v19;
  v43 = v70;
  v85 = v43;
  v86 = v38;
  v87 = v41;
  v88 = v19;
  [(_UIButtonBarButtonVisualProviderIOS *)self updateActiveConstraints:v82];
  v81 = 0u;
  v79 = 0u;
  v80 = 0u;
  v78 = 0u;
  v44 = [v43 _gestureRecognizers];
  v45 = [v44 countByEnumeratingWithState:&v78 objects:v116 count:16];
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
          objc_enumerationMutation(v44);
        }

        [v7 addGestureRecognizer:*(*(&v78 + 1) + 8 * i)];
      }

      v46 = [v44 countByEnumeratingWithState:&v78 objects:v116 count:16];
    }

    while (v46);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v49 = [v43 _interactions];
  v50 = [v49 countByEnumeratingWithState:&v74 objects:v115 count:16];
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
          objc_enumerationMutation(v49);
        }

        [v7 addInteraction:*(*(&v74 + 1) + 8 * j)];
      }

      v51 = [v49 countByEnumeratingWithState:&v74 objects:v115 count:16];
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
  v4 = [v15 string];
  [(_UIButtonBarButtonVisualProviderIOS *)self _setTitle:v4];

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

  v12 = [(NSArray *)self->_titleContent firstObject];
  [v12 width];
  v14 = v13;

  [(NSLayoutConstraint *)self->_backButtonTitleMaxWidthConstraint setConstant:v14];
  [(UIView *)self->super._button setNeedsLayout];
}

- (CGSize)backButtonSystemLayoutSizeFittingSize:(CGSize)a3 horizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  if ([(_UIButtonBarButton *)self->super._button isBreadcrumb]|| !self->_titleContent)
  {
    v31.receiver = self;
    v31.super_class = _UIButtonBarButtonVisualProviderIOS;
    *&v10 = a4;
    *&v11 = a5;
    [(_UIButtonBarButtonVisualProvider *)&v31 backButtonSystemLayoutSizeFittingSize:width horizontalFittingPriority:height verticalFittingPriority:v10, v11];
    v16 = v17;
    v14 = v18;
  }

  else
  {
    imageButton = self->_imageButton;
    if (imageButton)
    {
      *&v10 = a4;
      *&v11 = a5;
      [(UIButton *)imageButton systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
      v14 = v13;
      v16 = v15 + [(_UIButtonBarButtonVisualProviderIOS *)self _widthForBackButtonChevronIncludingPaddingToContentButton]+ 6.0;
    }

    else
    {
      v21 = [(UIButton *)self->_titleButton attributedTitleForState:0];
      v22 = [v21 string];

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
      v24 = a4;
      v25 = a5;
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

- (void)buttonLayoutSubviews:(id)a3 baseImplementation:(id)a4
{
  v20 = a3;
  v6 = a4;
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
    v11 = &stru_1EFB14550;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = &stru_1EFB14550;
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

  v11 = [v12 title];

LABEL_13:
  v16 = [(UIButton *)self->_titleButton titleForState:0];
  if ([v16 length])
  {
    v15 = v14 & ([v16 isEqualToString:v11] ^ 1);
  }

  else
  {
    v15 = 0;
  }

  [(_UIButtonBarButtonVisualProviderIOS *)self _setTitle:v11];

LABEL_17:
  v6[2](v6);
  if (([v20 isBackButton] & 1) == 0 && objc_msgSend(v20, "usesTintColorCapsuleForSelection"))
  {
    if (self->_imageButton)
    {
      [v20 bounds];
      [v20 convertRect:self->_imageButton toView:?];
      [(_UIModernBarButton *)self->_imageButton setSelectionIndicatorViewFrame:?];
    }

    if (self->_titleButton)
    {
      [v20 bounds];
      [v20 convertRect:self->_titleButton toView:?];
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

- (id)buttonContextMenuStyleFromDefaultStyle:(id)a3
{
  v4 = a3;
  [(_UIButtonBarButtonVisualProviderIOS *)self menuAnchorPoint];
  v6 = v5;
  v8 = v7;
  button = self->super._button;
  v10 = [(_UIButtonBarButtonVisualProviderIOS *)self buttonContextMenuTargetedPreview];
  _UIControlMenuSupportUpdateStyleForBarButtons(v4, button, v10, self->_backIndicatorButton != 0, v6, v8);

  return v4;
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
  v4 = [(UIView *)v3 _viewControllerForAncestor];
  v5 = [v4 view];

  if (!v5)
  {
    v5 = [(UIView *)v3 window];
  }

  v6 = [(UIView *)v3 superview];
  [(UIView *)v3 frame];
  [v6 convertRect:v5 toView:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = _UIControlMenuAttachmentPointForRectInContainer(v5, v8, v10, v12, v14);
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