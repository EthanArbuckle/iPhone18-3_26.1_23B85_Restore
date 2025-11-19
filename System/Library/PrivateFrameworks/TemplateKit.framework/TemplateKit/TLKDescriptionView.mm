@interface TLKDescriptionView
- (BOOL)moreButtonIsHidden;
- (BOOL)shouldHideMoreButtonForTextView:(id)a3;
- (CGSize)textSizeForTextView:(id)a3 width:(double)a4 lineCount:(unint64_t)a5;
- (TLKDescriptionViewDelegate)delegate;
- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins;
- (id)detailTextViewText;
- (id)exclusionPathsForTextView;
- (id)setupContentView;
- (id)viewForFirstBaselineLayout;
- (int64_t)numberOfLines;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)didMoveToWindow;
- (void)footnoteButtonPressed;
- (void)moreButtonPressed;
- (void)observedPropertiesChanged;
- (void)setExclusionPathInContainer:(id)a3 includeMoreButton:(BOOL)a4;
- (void)setFootnoteButtonText:(id)a3;
- (void)setImage:(id)a3;
- (void)setMoreButtonText:(id)a3;
- (void)setText:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTrailingFootnoteButtonText:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)trailingFootnoteButtonPressed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TLKDescriptionView

- (id)setupContentView
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDCF8] isShort:0 isBold:1];
  [v3 setFont:v5];

  [TLKLayoutUtilities requireIntrinsicSizeForView:v3];
  v6 = objc_opt_new();
  if (+[TLKUtilities isIpad](TLKUtilities, "isIpad") || +[TLKUtilities isMacOS])
  {
    v4 = *MEMORY[0x1E69DDD80];
  }

  v7 = [TLKFontUtilities cachedFontForTextStyle:v4 isShort:0 isBold:0];
  [v6 setFont:v7];

  v8 = objc_opt_new();
  v9 = [v6 font];
  [v8 setFont:v9];

  [v8 addTarget:self action:sel_moreButtonPressed];
  v10 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v10];
  v11 = [TLKDescriptionContainerBoxView alloc];
  v23[0] = v10;
  v23[1] = v6;
  v23[2] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v13 = [(NUIContainerBoxView *)v11 initWithArrangedSubviews:v12];

  [(TLKDescriptionContainerBoxView *)v13 setViewForFirstAndLastBaseline:v6];
  [(NUIContainerBoxView *)v13 setHorizontalAlignment:1];
  [(NUIContainerBoxView *)v13 setVerticalAlignment:1];
  [(TLKDescriptionContainerBoxView *)v13 setDelegate:self];
  [(TLKDescriptionContainerBoxView *)v13 setAlignment:0 forView:v6 inAxis:0];
  [(TLKDescriptionContainerBoxView *)v13 setAlignment:4 forView:v8 inAxis:0];
  [(TLKDescriptionContainerBoxView *)v13 setAlignment:4 forView:v8 inAxis:1];
  [TLKView makeContainerShadowCompatible:v13];
  [(TLKDescriptionView *)self setTitleLabel:v3];
  [(TLKDescriptionView *)self setDetailsTextView:v6];
  [(TLKDescriptionView *)self setMoreButton:v8];
  [(TLKDescriptionView *)self setImageAndDescriptionBoxView:v13];
  [(TLKDescriptionView *)self setImageView:v10];
  [(TLKDescriptionView *)self setImageViewExclusionPath:0];
  [(TLKDescriptionView *)self setMoreButtonExclusionPath:0];
  v14 = [TLKStackView alloc];
  v22[0] = v3;
  v22[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v16 = [(NUIContainerStackView *)v14 initWithArrangedSubviews:v15];

  [(TLKStackView *)v16 setAxis:1];
  [(NUIContainerStackView *)v16 setSpacing:1.0];
  [(TLKStackView *)v16 setDelegate:self];
  [(TLKDescriptionView *)self setStackView:v16];
  v17 = [(TLKDescriptionView *)self imageAndDescriptionBoxView];
  [v17 effectiveBaselineOffsetFromBottom];
  v19 = v18;

  v20 = [(TLKDescriptionView *)self imageView];
  [v20 setCustomAlignmentRectInsets:{0.0, 0.0, -v19, 0.0}];

  return v16;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKDescriptionView;
  [(TLKDescriptionView *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKDescriptionView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKDescriptionView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKDescriptionView;
  [(TLKDescriptionView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v10.receiver = self;
  v10.super_class = TLKDescriptionView;
  v4 = a3;
  [(UIView *)&v10 tlk_updateForAppearance:v4];
  v5 = [v4 isVibrant];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [(TLKDescriptionView *)self moreButton];
  [v7 setProminence:v6];

  v8 = [(TLKDescriptionView *)self footnoteButton];
  [v8 setProminence:3];

  v9 = [(TLKDescriptionView *)self trailingFootnoteButton];
  [v9 setProminence:3];
}

- (void)setText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_text;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_text, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_text;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setTitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_title;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_title, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_title;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setMoreButtonText:(id)a3
{
  v10 = a3;
  if (self->_moreButtonText != v10)
  {
    objc_storeStrong(&self->_moreButtonText, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setFootnoteButtonText:(id)a3
{
  v10 = a3;
  if (self->_footnoteButtonText != v10)
  {
    objc_storeStrong(&self->_footnoteButtonText, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setTrailingFootnoteButtonText:(id)a3
{
  v10 = a3;
  if (self->_trailingFootnoteButtonText != v10)
  {
    objc_storeStrong(&self->_trailingFootnoteButtonText, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setImage:(id)a3
{
  v10 = a3;
  if (self->_image != v10)
  {
    objc_storeStrong(&self->_image, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  v56[3] = *MEMORY[0x1E69E9840];
  v6 = [(TLKDescriptionView *)self text];
  v7 = [(TLKDescriptionView *)self detailsTextView];
  [v7 setMultilineText:v6];

  v8 = [(TLKDescriptionView *)self footnoteButtonText];
  v9 = [(TLKDescriptionView *)self trailingFootnoteButtonText];
  if (!(v8 | v9))
  {
    goto LABEL_10;
  }

  v10 = [(TLKDescriptionView *)self footnoteButtonStackView];

  if (!v10)
  {
    v11 = +[TLKFontUtilities shortFootnoteFont];
    v3 = objc_opt_new();
    [v3 setFont:v11];
    [v3 setAlignment:4];
    LODWORD(v12) = 1148846080;
    [v3 setContentHuggingPriority:0 forAxis:v12];
    [v3 addTarget:self action:sel_footnoteButtonPressed];
    [(TLKDescriptionView *)self setFootnoteButton:v3];
    v4 = objc_opt_new();
    [v4 setFont:v11];
    if (+[TLKLayoutUtilities isLTR])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [v4 setAlignment:v13];
    LODWORD(v14) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v14];
    [v4 addTarget:self action:sel_trailingFootnoteButtonPressed_];
    [(TLKDescriptionView *)self setTrailingFootnoteButton:v4];
    v15 = objc_opt_new();
    [(TLKDescriptionView *)self setFootnoteButtonStackDummyView:v15];

    v16 = [TLKStackView alloc];
    v17 = [(TLKDescriptionView *)self footnoteButtonStackDummyView];
    v56[1] = v17;
    v56[2] = v4;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v19 = [(NUIContainerStackView *)v16 initWithArrangedSubviews:v18];
    [(TLKDescriptionView *)self setFootnoteButtonStackView:v19];

    v20 = [(TLKDescriptionView *)self footnoteButtonStackView];
    [v20 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

    v21 = [(TLKDescriptionView *)self stackView];
    v22 = [(TLKDescriptionView *)self footnoteButtonStackView];
    [v21 addArrangedSubview:v22];
  }

  v23 = [(TLKDescriptionView *)self footnoteButton];
  [v23 setTitle:v8];

  v2 = [(TLKDescriptionView *)self trailingFootnoteButton];
  [v2 setTitle:v9];

  if (v8)
  {
    v2 = [(TLKDescriptionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(TLKDescriptionView *)self delegate];
      v4 = [(TLKDescriptionView *)self footnoteButton];
      v24 = [v3 configureMenuForFootnoteButton:v4];
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }
  }

  else
  {
LABEL_10:
    v25 = 0;
    v24 = 0;
  }

  v26 = [(TLKDescriptionView *)self footnoteButton];
  [v26 setShowsMenuAsPrimaryAction:v24];

  if (v25)
  {
  }

  if (v8)
  {
  }

  if (v9)
  {
    v2 = [(TLKDescriptionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v3 = [(TLKDescriptionView *)self delegate];
      v4 = [(TLKDescriptionView *)self trailingFootnoteButton];
      v27 = [v3 configureMenuForTrailingFootnoteButton:v4];
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v29 = [(TLKDescriptionView *)self trailingFootnoteButton];
  [v29 setShowsMenuAsPrimaryAction:v27];

  if (v28)
  {
  }

  if (v9)
  {
  }

  v30 = v8 == 0;
  v31 = [(TLKDescriptionView *)self footnoteButtonStackView];
  [v31 setHidden:(v8 | v9) == 0];

  v32 = [(TLKDescriptionView *)self footnoteButtonStackView];
  v33 = [v32 axis] == 1;
  v34 = [(TLKDescriptionView *)self footnoteButtonStackDummyView];
  [v34 setHidden:v33];

  v35 = [(TLKDescriptionView *)self footnoteButton];
  [v35 setHidden:v30];

  v36 = [(TLKDescriptionView *)self trailingFootnoteButton];
  [v36 setHidden:v9 == 0];

  v37 = [(TLKDescriptionView *)self text];
  v38 = [v37 maxLines];
  if (v38)
  {
    v30 = [(TLKDescriptionView *)self moreButtonText];
    v39 = v30 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = [(TLKDescriptionView *)self moreButton];
  [v40 setHidden:v39];

  if (v38)
  {
  }

  v41 = [(TLKDescriptionView *)self moreButtonText];
  v42 = [(TLKDescriptionView *)self moreButton];
  [v42 setTitle:v41];

  v43 = [(TLKDescriptionView *)self image];
  v44 = [(TLKDescriptionView *)self imageView];
  [v44 setHidden:v43 == 0];

  v45 = [(TLKDescriptionView *)self image];
  v46 = [(TLKDescriptionView *)self imageView];
  [v46 setTlkImage:v45];

  v47 = [(TLKDescriptionView *)self title];
  v48 = [(TLKDescriptionView *)self titleLabel];
  [v48 setHidden:v47 == 0];

  v49 = [(TLKDescriptionView *)self title];
  v50 = [v49 text];
  v51 = [(TLKDescriptionView *)self titleLabel];
  [v51 setText:v50];

  v52 = [(TLKDescriptionView *)self imageViewExclusionPath];
  if (!v52 || (v53 = v52, [(TLKDescriptionView *)self image], v54 = objc_claimAutoreleasedReturnValue(), v54, v53, !v54))
  {
    [(TLKDescriptionView *)self setImageViewExclusionPath:0];
  }

  v55 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(TLKDescriptionView *)self setMoreButtonExclusionPath:v55];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (id)viewForFirstBaselineLayout
{
  v3 = [(TLKDescriptionView *)self titleLabel];
  if ([v3 isHidden])
  {
    v4 = [(TLKDescriptionView *)self imageAndDescriptionBoxView];
    v5 = [v4 viewForFirstBaselineLayout];
  }

  else
  {
    v5 = [(TLKDescriptionView *)self titleLabel];
  }

  return v5;
}

- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins
{
  v23.receiver = self;
  v23.super_class = TLKDescriptionView;
  [(TLKView *)&v23 defaultBaselineRelativeLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TLKDescriptionView *)self titleLabel];
  if ([v11 isHidden])
  {
    v12 = [(TLKDescriptionView *)self imageView];
    v13 = [v12 isHidden];

    if ((v13 & 1) == 0)
    {
      v14 = [(TLKDescriptionView *)self detailsTextView];
      v15 = [v14 font];
      [v15 ascender];
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:?];
      v17 = v16;

      [objc_opt_class() defaultLayoutMargins];
      v4 = v17 + v18;
    }
  }

  else
  {
  }

  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(TLKDescriptionView *)self imageView];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __85__TLKDescriptionView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke;
  v32[3] = &unk_1E7FD8FB0;
  v32[4] = self;
  *&v32[5] = width;
  *&v32[6] = height;
  [v10 performBatchUpdates:v32];

  v11 = [(TLKDescriptionView *)self imageAndDescriptionBoxView];

  if (!a5 && v11 == v9)
  {
    v12 = [(TLKDescriptionView *)self image];

    if (v12)
    {
      v13 = [(TLKDescriptionView *)self imageView];
      [v13 intrinsicContentSize];
      v15 = v14;
      v17 = v16;

      v18 = [(TLKDescriptionView *)self detailsTextView];
      v19 = [v18 font];

      v21 = *MEMORY[0x1E695F058];
      v20 = *(MEMORY[0x1E695F058] + 8);
      v22 = v15 + 10.0;
      [TLKLayoutUtilities scaledValueForValue:v19 withFont:self view:16.0];
      v24 = v17 + v23;
      [v19 capHeight];
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:?];
      v26 = v24 - v25;
      if (!+[TLKLayoutUtilities isLTR])
      {
        v33.origin.x = v21;
        v33.origin.y = v20;
        v33.size.width = v22;
        v33.size.height = v26;
        [TLKLayoutUtilities ceilingValue:self inView:width - CGRectGetWidth(v33)];
        v21 = v27;
      }

      v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v21, v20, v22, v26}];
      [(TLKDescriptionView *)self setImageViewExclusionPath:v28];
    }

    v29 = [(TLKDescriptionView *)self detailsTextView];
    v30 = [v29 textContainer];
    [(TLKDescriptionView *)self setExclusionPathInContainer:v30 includeMoreButton:0];

    v31 = [(TLKDescriptionView *)self detailsTextView];
    [v31 invalidateIntrinsicContentSize];

    [v9 invalidateIntrinsicContentSize];
  }
}

void __85__TLKDescriptionView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40) * 0.5;
  v2 = [*(a1 + 32) imageView];
  [v2 setMaximumLayoutSize:{v1, 1.79769313e308}];
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = a3;
  v5 = [(TLKDescriptionView *)self imageAndDescriptionBoxView];

  if (v5 == v4)
  {
    v6 = [(TLKDescriptionView *)self detailsTextView];
    v7 = [(TLKDescriptionView *)self moreButtonText];

    if (v7)
    {
      v8 = [(TLKDescriptionView *)self shouldHideMoreButtonForTextView:v6];
      v9 = [(TLKDescriptionView *)self moreButton];
      [v9 setHidden:v8];

      v10 = [(TLKDescriptionView *)self moreButton];
      LOBYTE(v9) = [v10 isHidden];

      if (v9)
      {
        v11 = [v6 textContainer];
        [(TLKDescriptionView *)self setExclusionPathInContainer:v11 includeMoreButton:0];
      }

      else
      {
        v11 = [v6 layoutManager];
        v12 = [v6 textContainer];
        v13 = [v11 glyphRangeForTextContainer:v12];
        v15 = v14;

        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke;
        v54[3] = &unk_1E7FD8FD8;
        v54[4] = &v63;
        v54[5] = &v59;
        v54[6] = &v55;
        [v11 enumerateLineFragmentsForGlyphRange:v13 usingBlock:{v15, v54}];
        v16 = +[TLKLayoutUtilities isLTR];
        v17 = [(TLKDescriptionView *)self moreButton];
        v18 = [(TLKDescriptionView *)self moreButton];
        v19 = [v18 titleLabel];
        [v19 frame];
        [v17 convertRect:v6 toView:?];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        rect = v26;

        v27 = -3.0;
        if (v16)
        {
          v27 = 3.0;
        }

        v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v21 - v27, v64[3], v23 + 3.0, v25, rect}];
        [(TLKDescriptionView *)self setMoreButtonExclusionPath:v28];

        v29 = [v6 textContainer];
        [(TLKDescriptionView *)self setExclusionPathInContainer:v29 includeMoreButton:1];

        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke_2;
        v53[3] = &unk_1E7FD8FD8;
        v53[4] = &v63;
        v53[5] = &v59;
        v53[6] = &v55;
        [v11 enumerateLineFragmentsForGlyphRange:v13 usingBlock:{v15, v53}];
        v30 = [(TLKDescriptionView *)self moreButton];
        [v30 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v39 = v64[3];
        v67.origin.x = v32;
        v67.origin.y = v34;
        v67.size.width = v36;
        v67.size.height = v38;
        Height = CGRectGetHeight(v67);
        v68.origin.x = v21;
        v68.origin.y = recta;
        v68.size.width = v23;
        v68.size.height = v25;
        v41 = CGRectGetHeight(v68);
        [v6 frame];
        v43 = v42;
        if (v16)
        {
          v44 = v60[3] + v56[3];
          v45 = 3.0;
        }

        else
        {
          v44 = v56[3] - v36;
          v45 = -3.0;
        }

        [TLKLayoutUtilities roundedValue:self inView:v44 + v45];
        v47 = v46;
        [TLKLayoutUtilities ceilingValue:self inView:v39 + (Height - v41) * -0.5 + v43];
        v49 = v48;
        v50 = [(TLKDescriptionView *)self moreButton];
        [v50 setFrame:{v47, v49, v36, v38}];

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);
      }
    }
  }
}

void *__61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke(void *result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *(*(result[4] + 8) + 24) = a3;
  *(*(result[5] + 8) + 24) = a8;
  *(*(result[6] + 8) + 24) = a6;
  return result;
}

void *__61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke_2(void *result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (floor(a8) > 1.0)
  {
    *(*(result[4] + 8) + 24) = a3;
    *(*(result[5] + 8) + 24) = a8;
    *(*(result[6] + 8) + 24) = a6;
  }

  return result;
}

- (void)setExclusionPathInContainer:(id)a3 includeMoreButton:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v6 = [(TLKDescriptionView *)self imageViewExclusionPath];
  if (v4)
  {
    v7 = [(TLKDescriptionView *)self moreButtonExclusionPath];
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  if (v6)
  {
    v9 = [v8 initWithObjects:{v6, v7, 0}];
  }

  else
  {
    v9 = [v8 initWithObjects:{v7, 0, v11}];
  }

  v10 = v9;
  [v12 setExclusionPaths:v9];
}

- (CGSize)textSizeForTextView:(id)a3 width:(double)a4 lineCount:(unint64_t)a5
{
  v8 = MEMORY[0x1E69DB850];
  v9 = a3;
  v10 = [v8 alloc];
  v11 = [v9 attributedText];
  v12 = [v10 initWithAttributedString:v11];

  v13 = [objc_alloc(MEMORY[0x1E69DB800]) initWithSize:{a4, 3.40282347e38}];
  v14 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
  [v14 addTextContainer:v13];
  [v12 addLayoutManager:v14];
  [v13 setMaximumNumberOfLines:a5];
  v15 = [v9 textContainer];
  [v15 lineFragmentPadding];
  [v13 setLineFragmentPadding:?];

  v16 = [v9 textContainer];
  [v13 setLineBreakMode:{objc_msgSend(v16, "lineBreakMode")}];

  [(TLKDescriptionView *)self setExclusionPathInContainer:v13 includeMoreButton:0];
  [v14 ensureLayoutForTextContainer:v13];
  [v14 usedRectForTextContainer:v13];
  v18 = v17;
  [TLKLayoutUtilities flooredValue:v9 inView:v19];
  v21 = v20;

  v22 = v18;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (BOOL)shouldHideMoreButtonForTextView:(id)a3
{
  v4 = a3;
  v5 = [v4 textContainer];
  v6 = [v5 maximumNumberOfLines];

  if (v6 && ([v4 frame], v8 != 0.0))
  {
    [(TLKDescriptionView *)self textSizeForTextView:v4 width:0 lineCount:v7];
    v11 = v10;
    [v4 frame];
    v9 = v11 <= v12;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)moreButtonPressed
{
  v3 = [(TLKDescriptionView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TLKDescriptionView *)self detailsTextView];
    v6 = [v5 textContainer];
    [(TLKDescriptionView *)self setExclusionPathInContainer:v6 includeMoreButton:0];

    v7 = [(TLKDescriptionView *)self text];
    [v7 setMaxLines:0];

    v8 = [(TLKDescriptionView *)self detailsTextView];
    [v8 invalidateIntrinsicContentSize];

    v9 = [(TLKDescriptionView *)self delegate];
    [v9 didPressMoreButton];
  }
}

- (void)footnoteButtonPressed
{
  v3 = [(TLKDescriptionView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TLKDescriptionView *)self delegate];
    [v5 didPressFootnoteButton];
  }
}

- (void)trailingFootnoteButtonPressed:(id)a3
{
  v7 = a3;
  v4 = [(TLKDescriptionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TLKDescriptionView *)self delegate];
    [v6 didPressTrailingFootnoteButton:v7];
  }
}

- (id)detailTextViewText
{
  v2 = [(TLKDescriptionView *)self detailsTextView];
  v3 = [v2 text];

  return v3;
}

- (int64_t)numberOfLines
{
  v2 = [(TLKDescriptionView *)self detailsTextView];
  v3 = [v2 textContainer];
  v4 = [v3 maximumNumberOfLines];

  return v4;
}

- (BOOL)moreButtonIsHidden
{
  v2 = [(TLKDescriptionView *)self moreButton];
  v3 = [v2 isHidden];

  return v3;
}

- (id)exclusionPathsForTextView
{
  v2 = [(TLKDescriptionView *)self detailsTextView];
  v3 = [v2 textContainer];
  v4 = [v3 exclusionPaths];

  return v4;
}

- (TLKDescriptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end