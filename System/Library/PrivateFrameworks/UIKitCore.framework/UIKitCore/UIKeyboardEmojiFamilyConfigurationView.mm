@interface UIKeyboardEmojiFamilyConfigurationView
+ (CGSize)preferredContentViewSizeForKey:(id)a3 withTraits:(id)a4;
+ (id)_selectionAndSeparatorColorForDarkMode:(BOOL)a3;
- (BOOL)_hasCompletelyConfiguredSkinToneConfiguration;
- (BOOL)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4 phase:(int64_t)a5;
- (UIKeyboardEmojiFamilyConfigurationView)initWithFrame:(CGRect)a3;
- (id)_currentlySelectedSkinToneConfiguration;
- (id)_wellViewForSection:(int64_t)a3 item:(int64_t)a4;
- (id)nextResponder;
- (unint64_t)_silhouetteFromCurrentSelections;
- (void)_beginFamilyMetachronalRhythmAnimation;
- (void)_colorConfigurationDidChange;
- (void)_configureFamilyMemberWellStackViews;
- (void)_configureSkinToneVariantSpecifiersForBaseString:(id)a3;
- (void)_setCurrentlySelectedSkinToneConfiguration:(id)a3;
- (void)_updateBottomRowForSelections:(id)a3;
- (void)_updatePreviewWellForCurrentSelection;
- (void)_updateReferencedKeySelectedVariantIndexBasedOnCurrentConfiguration;
- (void)layoutSubviews;
- (void)retestForTouchUpSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4;
- (void)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4;
- (void)setSelectedVariantIndices:(id)a3;
- (void)updateForKeyplane:(id)a3 key:(id)a4;
- (void)updateRenderConfig:(id)a3;
@end

@implementation UIKeyboardEmojiFamilyConfigurationView

+ (id)_selectionAndSeparatorColorForDarkMode:(BOOL)a3
{
  if (a3)
  {
    [UIColor colorWithWhite:1.0 alpha:0.18];
  }

  else
  {
    [UIColor colorWithRed:0.934 green:0.934 blue:0.938 alpha:1.0];
  }
  v3 = ;

  return v3;
}

- (UIKeyboardEmojiFamilyConfigurationView)initWithFrame:(CGRect)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = UIKeyboardEmojiFamilyConfigurationView;
  v3 = [(UIView *)&v38 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(UIView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E695DF70] array];
    [(UIKeyboardEmojiFamilyConfigurationView *)v3 setFamilyMemberStackViews:v5];

    v6 = [UIView alloc];
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [(UIView *)v6 initWithFrame:*MEMORY[0x1E695F058], v8, v9, v10];
    [(UIKeyboardEmojiFamilyConfigurationView *)v3 setSeparatorView:v11];

    v12 = [objc_opt_class() _selectionAndSeparatorColorForDarkMode:{-[UIKeyboardEmojiFamilyConfigurationView usesDarkStyle](v3, "usesDarkStyle")}];
    v13 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 separatorView];
    [v13 setBackgroundColor:v12];

    v14 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 separatorView];
    [(UIView *)v3 addSubview:v14];

    v15 = [[UIKeyboardEmojiWellView alloc] initWithFrame:v7, v8, v9, v10];
    [(UIKeyboardEmojiFamilyConfigurationView *)v3 setNeutralWellView:v15];

    v16 = [off_1E70ECC18 systemFontOfSize:48.0];
    v17 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 neutralWellView];
    [v17 setLabelFont:v16];

    v18 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 _backgroundColorForSelection];
    v19 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 neutralWellView];
    [v19 setSelectionBackgroundColor:v18];

    v20 = [[UIKeyboardEmojiWellView alloc] initWithFrame:v7, v8, v9, v10];
    [(UIKeyboardEmojiFamilyConfigurationView *)v3 setConfiguredWellView:v20];

    v21 = [off_1E70ECC18 systemFontOfSize:48.0];
    v22 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 configuredWellView];
    [v22 setLabelFont:v21];

    v23 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 configuredWellView];
    [v23 setCompositeImageSize:{48.0, 48.0}];

    v24 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 _backgroundColorForSelection];
    v25 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 configuredWellView];
    [v25 setSelectionBackgroundColor:v24];

    v26 = [UIStackView alloc];
    v27 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 neutralWellView];
    v39[0] = v27;
    v28 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 configuredWellView];
    v39[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v30 = [(UIStackView *)v26 initWithArrangedSubviews:v29];
    [(UIKeyboardEmojiFamilyConfigurationView *)v3 setPreviewWellStackView:v30];

    v31 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 previewWellStackView];
    [v31 setAxis:0];

    v32 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 previewWellStackView];
    [v32 setDistribution:1];

    v33 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 previewWellStackView];
    v34 = [v33 heightAnchor];
    v35 = [v34 constraintEqualToConstant:70.0];
    [v35 setActive:1];

    v36 = [(UIKeyboardEmojiFamilyConfigurationView *)v3 previewWellStackView];
    [(UIView *)v3 addSubview:v36];

    getEMFStringUtilitiesClass_1();
    [(UIKeyboardEmojiFamilyConfigurationView *)v3 setHasSplitFontSupport:objc_opt_respondsToSelector() & 1];
  }

  return v3;
}

- (void)_colorConfigurationDidChange
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() _selectionAndSeparatorColorForDarkMode:{-[UIKeyboardEmojiFamilyConfigurationView usesDarkStyle](self, "usesDarkStyle")}];
  v4 = [(UIKeyboardEmojiFamilyConfigurationView *)self separatorView];
  [v4 setBackgroundColor:v3];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v11 = [v10 arrangedSubviews];
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v17;
          do
          {
            v15 = 0;
            do
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [*(*(&v16 + 1) + 8 * v15++) setSelectionBackgroundColor:v3];
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v13);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }
}

- (void)_configureSkinToneVariantSpecifiersForBaseString:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v27 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette_0();
  v24 = v3;
  v5 = [getEMFStringUtilitiesClass_1() _skinToneChooserVariantsForString:v3];
  if ([v5 count])
  {
    v6 = 0;
    v7 = 0;
    v25 = v5;
    v26 = v4;
    do
    {
      v8 = [MEMORY[0x1E695DF70] array];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v9 = [v5 objectAtIndexedSubscript:v6];
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = v10;
      v12 = *v30;
      do
      {
        v13 = 0;
        do
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [getEMFStringUtilitiesClass_1() _skinToneSpecifiersForString:*(*(&v29 + 1) + 8 * v13)];
          if ([(UIKeyboardEmojiFamilyConfigurationView *)self hasSplitFontSupport])
          {
            v15 = [v14 firstObject];
            goto LABEL_14;
          }

          if (v7 == 1)
          {
            v15 = v27;
LABEL_14:
            v16 = v15;
            v17 = [v14 firstObject];
LABEL_15:
            v18 = v17;
            goto LABEL_16;
          }

          if (!v7)
          {
            v16 = [v14 firstObject];
            v17 = v27;
            goto LABEL_15;
          }

          v16 = 0;
          v18 = 0;
LABEL_16:
          v33[0] = v16;
          v33[1] = v18;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
          [v8 addObject:v19];

          ++v13;
        }

        while (v11 != v13);
        v20 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
        v11 = v20;
      }

      while (v20);
LABEL_20:

      v4 = v26;
      [v26 addObject:v8];

      v5 = v25;
      v6 = ++v7;
    }

    while ([v25 count] > v7);
  }

  [(UIKeyboardEmojiFamilyConfigurationView *)self setBaseEmojiString:v24];
  [(UIKeyboardEmojiFamilyConfigurationView *)self setSkinToneVariantRows:v4];
  if ([(UIKeyboardEmojiFamilyConfigurationView *)self hasSplitFontSupport])
  {
    -[UIKeyboardEmojiFamilyConfigurationView setVariantDisplayRows:](self, "setVariantDisplayRows:", [getEMFStringUtilitiesClass_1() performSelector:sel__coupleSkinToneChooserVariantsForString_ withObject:v24]);
  }

  v21 = [MEMORY[0x1E695DF70] array];
  if ([v4 count])
  {
    v22 = 0;
    do
    {
      [(NSMutableArray *)v21 addObject:&unk_1EFE33F58];
      ++v22;
    }

    while (v22 < [v4 count]);
  }

  selectedVariantIndices = self->_selectedVariantIndices;
  self->_selectedVariantIndices = v21;

  [(UIKeyboardEmojiFamilyConfigurationView *)self _configureFamilyMemberWellStackViews];
}

- (void)_configureFamilyMemberWellStackViews
{
  v3 = [(UIKeyboardEmojiFamilyConfigurationView *)self baseEmojiString];

  if (v3)
  {
    if ([(UIKeyboardEmojiFamilyConfigurationView *)self hasSplitFontSupport])
    {
      v4 = [(UIKeyboardEmojiFamilyConfigurationView *)self variantDisplayRows];
      v5 = [v4 count];

      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = [(UIKeyboardEmojiFamilyConfigurationView *)self variantDisplayRows];
          v8 = [v7 objectAtIndex:v6];

          v24 = 0;
          v25 = &v24;
          v26 = 0x3032000000;
          v27 = __Block_byref_object_copy__246;
          v28 = __Block_byref_object_dispose__246;
          v29 = [MEMORY[0x1E695DF70] array];
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __78__UIKeyboardEmojiFamilyConfigurationView__configureFamilyMemberWellStackViews__block_invoke;
          v23[3] = &unk_1E70FF540;
          v23[5] = &v24;
          v23[6] = v6;
          v23[4] = self;
          [v8 enumerateObjectsUsingBlock:v23];
          v9 = [UIStackView alloc];
          v10 = [(UIStackView *)v9 initWithArrangedSubviews:v25[5]];
          v11 = [(UIView *)v10 heightAnchor];
          v12 = [v11 constraintEqualToConstant:50.0];
          [v12 setActive:1];

          LODWORD(v13) = 1148829696;
          [(UIView *)v10 setContentCompressionResistancePriority:1 forAxis:v13];
          [(UIStackView *)v10 setAxis:0];
          [(UIStackView *)v10 setDistribution:1];
          v14 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
          [v14 addObject:v10];

          [(UIView *)self addSubview:v10];
          _Block_object_dispose(&v24, 8);

          ++v6;
          v15 = [(UIKeyboardEmojiFamilyConfigurationView *)self variantDisplayRows];
          v16 = [v15 count];
        }

        while (v6 < v16);
      }
    }

    else
    {
      v17 = [(UIKeyboardEmojiFamilyConfigurationView *)self skinToneVariantRows];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __78__UIKeyboardEmojiFamilyConfigurationView__configureFamilyMemberWellStackViews__block_invoke_2;
      v22[3] = &unk_1E712B850;
      v22[4] = self;
      [v17 enumerateObjectsUsingBlock:v22];
    }

    v18 = [(UIKeyboardEmojiFamilyConfigurationView *)self baseEmojiString];
    v19 = [(UIKeyboardEmojiFamilyConfigurationView *)self neutralWellView];
    [v19 setStringRepresentation:v18];

    v20 = [(UIKeyboardEmojiFamilyConfigurationView *)self baseEmojiString];
    LODWORD(v18) = [UIKeyboardEmoji shouldHighlightEmoji:v20];

    if (v18)
    {
      v21 = [(UIKeyboardEmojiFamilyConfigurationView *)self neutralWellView];
      [v21 setUnreleasedHighlight:1];
    }

    [(UIKeyboardEmojiFamilyConfigurationView *)self _updatePreviewWellForCurrentSelection];
  }
}

void __78__UIKeyboardEmojiFamilyConfigurationView__configureFamilyMemberWellStackViews__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [UIKeyboardEmojiWellView alloc];
  v10 = [(UIKeyboardEmojiWellView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = [objc_opt_class() _selectionAndSeparatorColorForDarkMode:{objc_msgSend(*(a1 + 32), "usesDarkStyle")}];
  [(UIKeyboardEmojiWellView *)v10 setSelectionBackgroundColor:v7];

  if (*(a1 + 48))
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(UIKeyboardEmojiWellView *)v10 setStringRepresentation:v5 silhouette:v8];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
  v9 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:*(a1 + 48)];
  [(UIKeyboardEmojiWellView *)v10 setAssociatedIndexPath:v9];
}

void __78__UIKeyboardEmojiFamilyConfigurationView__configureFamilyMemberWellStackViews__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__246;
  v17 = __Block_byref_object_dispose__246;
  v18 = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__UIKeyboardEmojiFamilyConfigurationView__configureFamilyMemberWellStackViews__block_invoke_3;
  v12[3] = &unk_1E712B828;
  v12[4] = *(a1 + 32);
  v12[5] = &v13;
  v12[6] = a3;
  [v5 enumerateObjectsUsingBlock:v12];
  v6 = [UIStackView alloc];
  v7 = [(UIStackView *)v6 initWithArrangedSubviews:v14[5]];
  v8 = [(UIView *)v7 heightAnchor];
  v9 = [v8 constraintEqualToConstant:50.0];
  [v9 setActive:1];

  LODWORD(v10) = 1148846080;
  [(UIView *)v7 setContentCompressionResistancePriority:1 forAxis:v10];
  [(UIStackView *)v7 setAxis:0];
  [(UIStackView *)v7 setDistribution:1];
  v11 = [*(a1 + 32) familyMemberStackViews];
  [v11 addObject:v7];

  [*(a1 + 32) addSubview:v7];
  _Block_object_dispose(&v13, 8);
}

void __78__UIKeyboardEmojiFamilyConfigurationView__configureFamilyMemberWellStackViews__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 baseEmojiString];
  v8 = [v6 objectAtIndexedSubscript:0];
  v9 = [v6 objectAtIndexedSubscript:1];

  v15 = UIKBImageSetForCoupleCharacter(v7, v8, v9);

  v10 = [UIKeyboardEmojiWellView alloc];
  v11 = [(UIKeyboardEmojiWellView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = [objc_opt_class() _selectionAndSeparatorColorForDarkMode:{objc_msgSend(*(a1 + 32), "usesDarkStyle")}];
  [(UIKeyboardEmojiWellView *)v11 setSelectionBackgroundColor:v12];

  v13 = [v15 array];
  [(UIKeyboardEmojiWellView *)v11 setCompositeImageRepresentation:v13];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
  v14 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:*(a1 + 48)];
  [(UIKeyboardEmojiWellView *)v11 setAssociatedIndexPath:v14];
}

- (id)_wellViewForSection:(int64_t)a3 item:(int64_t)a4
{
  v7 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
  v8 = [v7 count];

  if (v8 >= a3 && (-[UIKeyboardEmojiFamilyConfigurationView familyMemberStackViews](self, "familyMemberStackViews"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectAtIndexedSubscript:a3], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "arrangedSubviews"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v9, v12 >= a4))
  {
    v14 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
    v15 = [v14 objectAtIndexedSubscript:a3];
    v16 = [v15 arrangedSubviews];
    v13 = [v16 objectAtIndexedSubscript:a4];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)_silhouetteFromCurrentSelections
{
  v3 = [(UIKeyboardEmojiFamilyConfigurationView *)self selectedVariantIndices];
  v4 = [v3 firstObject];
  v5 = [v4 integerValue];

  v6 = [(UIKeyboardEmojiFamilyConfigurationView *)self selectedVariantIndices];
  v7 = [v6 lastObject];
  v8 = [v7 integerValue];

  v9 = 2;
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 3;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  else
  {
    return v5 == 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (id)_currentlySelectedSkinToneConfiguration
{
  v3 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette_0();
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__246;
  v12 = __Block_byref_object_dispose__246;
  v13 = [MEMORY[0x1E695DF70] array];
  v4 = [(UIKeyboardEmojiFamilyConfigurationView *)self selectedVariantIndices];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__UIKeyboardEmojiFamilyConfigurationView__currentlySelectedSkinToneConfiguration__block_invoke;
  v7[3] = &unk_1E712B878;
  v7[5] = v3;
  v7[6] = &v8;
  v7[4] = self;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __81__UIKeyboardEmojiFamilyConfigurationView__currentlySelectedSkinToneConfiguration__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 48) + 8) + 40);

    [v7 addObject:v6];
  }

  else
  {
    v8 = v5;
    v9 = [*(a1 + 32) skinToneVariantRows];
    v10 = [v9 objectAtIndexedSubscript:a3];
    v11 = [v10 objectAtIndexedSubscript:v8];
    v12 = [v11 objectAtIndexedSubscript:a3];

    [*(*(*(a1 + 48) + 8) + 40) addObject:v12];
  }
}

- (void)_setCurrentlySelectedSkinToneConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiFamilyConfigurationView *)self selectedVariantIndices];
  v6 = [v5 mutableCopy];

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __85__UIKeyboardEmojiFamilyConfigurationView__setCurrentlySelectedSkinToneConfiguration___block_invoke;
  v11 = &unk_1E70FF4D0;
  v12 = self;
  v13 = v6;
  v7 = v6;
  [v4 enumerateObjectsUsingBlock:&v8];

  [(UIKeyboardEmojiFamilyConfigurationView *)self setSelectedVariantIndices:v7, v8, v9, v10, v11, v12];
}

void __85__UIKeyboardEmojiFamilyConfigurationView__setCurrentlySelectedSkinToneConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) skinToneVariantRows];
  v7 = [v6 objectAtIndex:a3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__UIKeyboardEmojiFamilyConfigurationView__setCurrentlySelectedSkinToneConfiguration___block_invoke_2;
  v9[3] = &unk_1E712B8A0;
  v12 = a3;
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:v9];
}

void __85__UIKeyboardEmojiFamilyConfigurationView__setCurrentlySelectedSkinToneConfiguration___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 objectAtIndexedSubscript:*(a1 + 48)];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v9 atIndexedSubscript:*(a1 + 48)];

    *a4 = 1;
  }
}

- (void)setSelectedVariantIndices:(id)a3
{
  v4 = a3;
  v5 = self->_selectedVariantIndices;
  v6 = [v4 count];
  v7 = [(NSMutableArray *)v5 count];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __68__UIKeyboardEmojiFamilyConfigurationView_setSelectedVariantIndices___block_invoke;
  v23 = &unk_1E712B8F0;
  v24 = self;
  v8 = v4;
  v25 = v8;
  v9 = _Block_copy(&v20);
  v9[2](v9, v5, 0);
  if (v6 == v7)
  {
    v9[2](v9, v8, 1);
    v10 = v8;
    selectedVariantIndices = self->_selectedVariantIndices;
    self->_selectedVariantIndices = v10;
  }

  else
  {
    v12 = [(NSMutableArray *)v8 count:v20];
    if ((v12 - [(NSMutableArray *)v5 count]) >= 2)
    {
      do
      {
        [(NSMutableArray *)v8 removeLastObject];
        v13 = [(NSMutableArray *)v8 count];
      }

      while ((v13 - [(NSMutableArray *)v5 count]) > 1);
    }

    [(UIKeyboardEmojiFamilyConfigurationView *)self _updateBottomRowForSelections:v8];
    selectedVariantIndices = [(NSMutableArray *)v8 subarrayWithRange:0, [(NSMutableArray *)v8 count]- 1];
    v9[2](v9, selectedVariantIndices, 1);
    v14 = [(NSMutableArray *)selectedVariantIndices mutableCopy];
    v15 = self->_selectedVariantIndices;
    self->_selectedVariantIndices = v14;
  }

  [(UIKeyboardEmojiFamilyConfigurationView *)self _updatePreviewWellForCurrentSelection];
  v16 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey];
  v17 = [v16 selectedVariantIndices];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey];
    [v19 setSelectedVariantIndices:v8];
  }
}

void __68__UIKeyboardEmojiFamilyConfigurationView_setSelectedVariantIndices___block_invoke(uint64_t a1, void *a2, char a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__UIKeyboardEmojiFamilyConfigurationView_setSelectedVariantIndices___block_invoke_2;
  v6[3] = &unk_1E712B8C8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = a3;
  [a2 enumerateObjectsUsingBlock:v6];
}

void __68__UIKeyboardEmojiFamilyConfigurationView_setSelectedVariantIndices___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    v7 = [*(a1 + 32) skinToneVariantRows];
    v8 = [v7 objectAtIndex:a3];
    v9 = [v8 count] - 1;

    if (v6 > v9)
    {
      v10 = *(a1 + 40);
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
      [v10 replaceObjectAtIndex:a3 withObject:v11];

      v6 = 0;
    }

    v12 = [*(a1 + 32) _wellViewForSection:a3 item:v6];
    [v12 setSelected:*(a1 + 48)];
  }
}

- (void)_updateBottomRowForSelections:(id)a3
{
  v31 = a3;
  v4 = [v31 lastObject];
  v5 = [v4 integerValue];

  v6 = [(UIKeyboardEmojiFamilyConfigurationView *)self lastSelectedIndexPath];
  v7 = [v6 section];
  v8 = [v31 count] - 1;

  if (v7 == v8)
  {
    v9 = [(UIKeyboardEmojiFamilyConfigurationView *)self lastSelectedIndexPath];
    v10 = [v9 item];

    if (v5 == v10)
    {
      v11 = [v31 subarrayWithRange:{0, objc_msgSend(v31, "count") - 1}];
      v12 = MEMORY[0x1E696AC88];
      v13 = [v11 lastObject];
      v14 = [v12 indexPathForRow:objc_msgSend(v13 inSection:{"integerValue"), objc_msgSend(v11, "count") - 1}];
      [(UIKeyboardEmojiFamilyConfigurationView *)self setLastSelectedIndexPath:v14];

      v15 = [(UIKeyboardEmojiFamilyConfigurationView *)self neutralWellView];
      [v15 setActiveSelection:0];

      v16 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];
      [v16 setActiveSelection:0];

      goto LABEL_18;
    }

    v25 = v5 & 1;
    if (v5 < 0)
    {
      v25 = -v25;
    }

    if (v25 == 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v5;
    }

    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [(UIKeyboardEmojiFamilyConfigurationView *)self neutralWellView];
    [v28 setActiveSelection:v27 == 0];

    v29 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];
    [v29 setActiveSelection:v27 == 1];

    v30 = MEMORY[0x1E696AC88];
    v22 = [v31 count] - 1;
    v23 = v30;
    v24 = v27;
  }

  else
  {
    v17 = [(UIKeyboardEmojiFamilyConfigurationView *)self neutralWellView];
    v18 = v17;
    if (v5 >= 0)
    {
      v19 = v5 & 1;
    }

    else
    {
      v19 = -(v5 & 1);
    }

    [v17 setActiveSelection:v5 == 0];

    v20 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];
    [v20 setActiveSelection:v5 == 1];

    v21 = MEMORY[0x1E696AC88];
    v22 = [v31 count] - 1;
    v23 = v21;
    v24 = v19;
  }

  v11 = [v23 indexPathForRow:v24 inSection:v22];
  [(UIKeyboardEmojiFamilyConfigurationView *)self setLastSelectedIndexPath:v11];
LABEL_18:
}

- (void)_updatePreviewWellForCurrentSelection
{
  v13 = [(UIKeyboardEmojiFamilyConfigurationView *)self _currentlySelectedSkinToneConfiguration];
  if (![(UIKeyboardEmojiFamilyConfigurationView *)self hasSplitFontSupport])
  {
    v9 = [(UIKeyboardEmojiFamilyConfigurationView *)self baseEmojiString];
    v10 = [v13 objectAtIndexedSubscript:0];
    v11 = [v13 objectAtIndexedSubscript:1];
    v6 = UIKBImageSetForCoupleCharacter(v9, v10, v11);

    v8 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];
    v12 = [v6 array];
    [v8 setCompositeImageRepresentation:v12];

    goto LABEL_6;
  }

  v3 = [(UIKeyboardEmojiFamilyConfigurationView *)self _silhouetteFromCurrentSelections];
  EMFStringUtilitiesClass_1 = getEMFStringUtilitiesClass_1();
  v5 = [(UIKeyboardEmojiFamilyConfigurationView *)self baseEmojiString];
  v6 = [EMFStringUtilitiesClass_1 _multiPersonStringForString:v5 skinToneVariantSpecifier:v13];

  v7 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];
  [v7 setStringRepresentation:v6 silhouette:v3];

  if (!v3 && [UIKeyboardEmoji shouldHighlightEmoji:v6])
  {
    v8 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];
    [v8 setUnreleasedHighlight:1];
LABEL_6:
  }
}

- (BOOL)_hasCompletelyConfiguredSkinToneConfiguration
{
  v3 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette_0();
  v4 = [(UIKeyboardEmojiFamilyConfigurationView *)self _currentlySelectedSkinToneConfiguration];
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (void)_updateReferencedKeySelectedVariantIndexBasedOnCurrentConfiguration
{
  if ([(UIKeyboardEmojiFamilyConfigurationView *)self _hasCompletelyConfiguredSkinToneConfiguration])
  {
    v3 = [(UIKeyboardEmojiFamilyConfigurationView *)self _currentlySelectedSkinToneConfiguration];
    EMFStringUtilitiesClass_1 = getEMFStringUtilitiesClass_1();
    v5 = [(UIKeyboardEmojiFamilyConfigurationView *)self baseEmojiString];
    v6 = [EMFStringUtilitiesClass_1 _multiPersonStringForString:v5 skinToneVariantSpecifier:v3];

    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey];
    v8 = [v7 subtrees];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __109__UIKeyboardEmojiFamilyConfigurationView__updateReferencedKeySelectedVariantIndexBasedOnCurrentConfiguration__block_invoke;
    v15 = &unk_1E710FF58;
    v9 = v6;
    v16 = v9;
    v17 = &v18;
    [v8 enumerateObjectsUsingBlock:&v12];

    v10 = v19[3];
    v11 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey:v12];
    [v11 setSelectedVariantIndex:v10];

    _Block_object_dispose(&v18, 8);
  }
}

void __109__UIKeyboardEmojiFamilyConfigurationView__updateReferencedKeySelectedVariantIndexBasedOnCurrentConfiguration__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 representedString];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)_beginFamilyMetachronalRhythmAnimation
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = getEMFSkinToneSpecifierTypeFitzpatrickSilhouette_0();
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4;
  if (v4 - self->_metachronalRhythmAnimationStartTime >= 0.25)
  {
    v6 = [(UIKeyboardEmojiFamilyConfigurationView *)self _currentlySelectedSkinToneConfiguration];
    v7 = [v6 count];
    v8 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
    v9 = [v8 count];

    if (v7 == v9)
    {
      if ([v6 count])
      {
        v10 = 0;
        v11 = 0.0;
        v25 = self;
        v26 = v3;
        v24 = v6;
        do
        {
          v12 = [v6 objectAtIndexedSubscript:v10];
          if ([v12 isEqualToString:v3])
          {
            v28 = v12;
            v13 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
            v29 = v10;
            v14 = [v13 objectAtIndexedSubscript:v10];

            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v27 = v14;
            v15 = [v14 arrangedSubviews];
            v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v33;
              v19 = v11;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v33 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v21 = *(*(&v32 + 1) + 8 * i);
                  aBlock[0] = MEMORY[0x1E69E9820];
                  aBlock[1] = 3221225472;
                  aBlock[2] = __80__UIKeyboardEmojiFamilyConfigurationView__beginFamilyMetachronalRhythmAnimation__block_invoke;
                  aBlock[3] = &unk_1E70F3590;
                  aBlock[4] = v21;
                  v22 = _Block_copy(aBlock);
                  v30[0] = MEMORY[0x1E69E9820];
                  v30[1] = 3221225472;
                  v30[2] = __80__UIKeyboardEmojiFamilyConfigurationView__beginFamilyMetachronalRhythmAnimation__block_invoke_2;
                  v30[3] = &unk_1E70F3590;
                  v30[4] = v21;
                  v23 = _Block_copy(v30);
                  [UIView animateWithDuration:0 delay:v22 options:0 animations:0.25 completion:v19];
                  [UIView animateWithDuration:4 delay:v23 usingSpringWithDamping:0 initialSpringVelocity:1.25 options:v19 + 0.25 animations:0.4 completion:0.5];
                  v19 = v19 + 0.05;
                }

                v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
              }

              while (v17);
            }

            v11 = v11 + 0.0825;
            self = v25;
            v3 = v26;
            v6 = v24;
            v12 = v28;
            v10 = v29;
          }

          ++v10;
        }

        while (v10 < [v6 count]);
      }

      self->_metachronalRhythmAnimationStartTime = v5;
    }
  }
}

uint64_t __80__UIKeyboardEmojiFamilyConfigurationView__beginFamilyMetachronalRhythmAnimation__block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.2, 1.2);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __80__UIKeyboardEmojiFamilyConfigurationView__beginFamilyMetachronalRhythmAnimation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  return [v1 setTransform:v4];
}

- (void)layoutSubviews
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = UIKeyboardEmojiFamilyConfigurationView;
  [(UIView *)&v20 layoutSubviews];
  [(UIView *)self bounds];
  v24 = CGRectInset(v23, 16.0, 0.0);
  x = v24.origin.x;
  width = v24.size.width;
  height = v24.size.height;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(UIKeyboardEmojiFamilyConfigurationView *)self familyMemberStackViews];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    MaxY = 6.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        [v12 setFrame:{x, MaxY, width, 50.0}];
        [v12 frame];
        MaxY = CGRectGetMaxY(v25);
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
    v13 = MaxY + 8.0;
  }

  else
  {
    v13 = 14.0;
  }

  v14 = [(UIKeyboardEmojiFamilyConfigurationView *)self separatorView];
  [v14 setFrame:{x, v13, width, 1.0}];

  v15 = [(UIKeyboardEmojiFamilyConfigurationView *)self previewWellStackView];
  [v15 setFrame:{x, v13 + 9.0, width, height - (v13 + 9.0) + -6.0}];
}

+ (CGSize)preferredContentViewSizeForKey:(id)a3 withTraits:(id)a4
{
  v4 = 262.0;
  v5 = 199.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (BOOL)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4 phase:(int64_t)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  if (a5 == 3)
  {
    [(UIKeyboardEmojiFamilyConfigurationView *)self retestForTouchUpSelectedVariantIndexForKey:v9 atPoint:x, y];
  }

  else if (!a5)
  {
    [(UIKeyboardEmojiFamilyConfigurationView *)self retestSelectedVariantIndexForKey:v9 atPoint:x, y];
  }

  return 0;
}

- (void)retestSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4
{
  v5 = [(UIView *)self hitTest:0 withEvent:a4.x, a4.y];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v7 = [v6 superview];

    v6 = v7;
    if (!v7)
    {
      return;
    }
  }

  v19 = v6;
  v8 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];

  if (v19 == v8)
  {
    [(UIKeyboardEmojiFamilyConfigurationView *)self _updateReferencedKeySelectedVariantIndexBasedOnCurrentConfiguration];
    if (![(UIKeyboardEmojiFamilyConfigurationView *)self _hasCompletelyConfiguredSkinToneConfiguration])
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v9 = [(UIKeyboardEmojiFamilyConfigurationView *)self neutralWellView];

  if (v19 == v9)
  {
    v14 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey];
    [v14 setSelectedVariantIndex:0];

    v15 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey];
    v16 = [v15 selectedVariantIndices];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(UIKeyboardEmojiFamilyConfigurationView *)self representedKey];
      [v18 setSelectedVariantIndices:&unk_1EFE2DFA8];
    }

LABEL_13:
    [v19 setSelected:1];
    goto LABEL_14;
  }

  [v19 setSelected:1];
  v10 = [v19 associatedIndexPath];
  v11 = [(UIKeyboardEmojiFamilyConfigurationView *)self selectedVariantIndices];
  v12 = [v11 mutableCopy];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "item")}];
  [v12 setObject:v13 atIndexedSubscript:{objc_msgSend(v10, "section")}];

  [(UIKeyboardEmojiFamilyConfigurationView *)self setSelectedVariantIndices:v12];
LABEL_14:
}

- (void)retestForTouchUpSelectedVariantIndexForKey:(id)a3 atPoint:(CGPoint)a4
{
  v9 = [(UIView *)self hitTest:0 withEvent:a4.x, a4.y];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v9;
  if (isKindOfClass)
  {
    v7 = v9;
    v8 = [(UIKeyboardEmojiFamilyConfigurationView *)self configuredWellView];

    if (v7 == v8 && !-[UIKeyboardEmojiFamilyConfigurationView _hasCompletelyConfiguredSkinToneConfiguration](self, "_hasCompletelyConfiguredSkinToneConfiguration") && ([v7 isSelected] & 1) == 0)
    {
      [(UIKeyboardEmojiFamilyConfigurationView *)self _beginFamilyMetachronalRhythmAnimation];
    }

    v6 = v9;
  }
}

- (void)updateForKeyplane:(id)a3 key:(id)a4
{
  v17 = a4;
  [v17 setSelectedVariantIndex:0x7FFFFFFFFFFFFFFFLL];
  [(UIKeyboardEmojiFamilyConfigurationView *)self setRepresentedKey:v17];
  v5 = [v17 selectedVariantIndices];
  if ([v5 count])
  {
    v6 = [v17 selectedVariantIndices];
    v7 = [v6 firstObject];
    v8 = [v7 integerValue];

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [v17 selectedVariantIndices];
      v10 = [v9 mutableCopy];
      [(UIKeyboardEmojiFamilyConfigurationView *)self setSelectedVariantIndices:v10];

      [(UIKeyboardEmojiFamilyConfigurationView *)self _updateReferencedKeySelectedVariantIndexBasedOnCurrentConfiguration];
      goto LABEL_6;
    }
  }

  else
  {
  }

  EMFStringUtilitiesClass_1 = getEMFStringUtilitiesClass_1();
  v12 = [v17 representedString];
  v13 = [EMFStringUtilitiesClass_1 _baseStringForEmojiString:v12];

  [(UIKeyboardEmojiFamilyConfigurationView *)self _configureSkinToneVariantSpecifiersForBaseString:v13];
  v14 = getEMFStringUtilitiesClass_1();
  v15 = [v17 representedString];
  v16 = [v14 _skinToneSpecifiersForString:v15];

  [(UIKeyboardEmojiFamilyConfigurationView *)self _setCurrentlySelectedSkinToneConfiguration:v16];
LABEL_6:
}

- (void)updateRenderConfig:(id)a3
{
  v4 = a3;
  v5 = [(UIKeyboardEmojiFamilyConfigurationView *)self usesDarkStyle];
  v6 = [v4 lightKeyboard];

  [(UIKeyboardEmojiFamilyConfigurationView *)self setUsesDarkStyle:v6 ^ 1u];
  if (v5 != [(UIKeyboardEmojiFamilyConfigurationView *)self usesDarkStyle])
  {

    [(UIKeyboardEmojiFamilyConfigurationView *)self _colorConfigurationDidChange];
  }
}

- (id)nextResponder
{
  v3 = [(UIKeyboardEmojiFamilyConfigurationView *)self touchForwardingView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIKeyboardEmojiFamilyConfigurationView;
    v5 = [(UIView *)&v8 nextResponder];
  }

  v6 = v5;

  return v6;
}

@end