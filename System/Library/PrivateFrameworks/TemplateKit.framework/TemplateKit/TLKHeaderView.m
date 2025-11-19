@interface TLKHeaderView
- (id)footnoteLabelText;
- (id)hasImage;
- (id)roundedCornerLabelText;
- (id)setupContentView;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)didMoveToWindow;
- (void)observedPropertiesChanged;
- (void)setAxis:(int64_t)a3;
- (void)setFootnote:(id)a3;
- (void)setImage:(id)a3;
- (void)setRoundedBorderText:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSubtitleImage:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTrailingText:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TLKHeaderView

- (id)setupContentView
{
  v26[2] = *MEMORY[0x1E69E9840];
  v22 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v22];
  [(TLKHeaderView *)self setImageView:v22];
  v21 = objc_opt_new();
  [(TLKHeaderView *)self setTitleLabel:v21];
  v3 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v3];
  [(TLKHeaderView *)self setSubtitleImageView:v3];
  v23 = +[TLKLabel secondaryLabel];
  [(TLKHeaderView *)self setSubtitleLabel:?];
  v4 = [TLKStackView alloc];
  v26[0] = v3;
  v26[1] = v23;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v6 = [(NUIContainerStackView *)v4 initWithArrangedSubviews:v5];

  [(TLKStackView *)v6 setAlignment:3];
  [(NUIContainerStackView *)v6 setSpacing:8.0];
  [TLKView makeContainerShadowCompatible:v6];
  [(TLKHeaderView *)self setSubtitleStackView:v6];
  [(TLKHeaderView *)self setAxis:1];
  v7 = +[TLKLabel tertiaryLabel];
  v8 = +[TLKFontUtilities shortFootnoteFont];
  [v7 setFont:v8];

  [(TLKHeaderView *)self setFootnoteLabel:v7];
  v9 = objc_opt_new();
  [(TLKHeaderView *)self setTrailingTextLabel:v9];
  v10 = [(TLKHeaderView *)self trailingTextLabel];
  [v10 setTextAlignment:2];

  v11 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:60.0];
  v12 = [(TLKHeaderView *)self trailingTextLabel];
  [v12 setFont:v11];

  v13 = [(TLKHeaderView *)self trailingTextLabel];
  [TLKLayoutUtilities requireIntrinsicSizeForView:v13];

  v14 = [TLKStackView alloc];
  v25[0] = v21;
  v25[1] = v6;
  v25[2] = v7;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v16 = [(NUIContainerStackView *)v14 initWithArrangedSubviews:v15];

  [(TLKStackView *)v16 setAxis:1];
  [(NUIContainerStackView *)v16 setCustomSpacing:v6 afterView:2.0];
  [TLKView makeContainerShadowCompatible:v16];
  [(TLKHeaderView *)self setInnerStackView:v16];
  v17 = [TLKStackView alloc];
  v24[0] = v22;
  v24[1] = v16;
  v24[2] = v9;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v19 = [(NUIContainerStackView *)v17 initWithArrangedSubviews:v18];

  [(TLKStackView *)v19 setDelegate:self];
  [(TLKStackView *)v19 setAlignment:3];
  [(NUIContainerStackView *)v19 setSpacing:12.0];

  return v19;
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

- (void)setSubtitle:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle setObserver:0];
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
      v6 = self->_subtitle;
      v7 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKRichText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_subtitle, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle setObserver:self];
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
      v12 = self->_subtitle;
      v13 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKRichText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)setFootnote:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_footnote setObserver:0];
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
      v6 = self->_footnote;
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

  objc_storeStrong(&self->_footnote, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_footnote setObserver:self];
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
      v12 = self->_footnote;
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

- (void)setTrailingText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingText setObserver:0];
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
      v6 = self->_trailingText;
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

  objc_storeStrong(&self->_trailingText, a3);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingText setObserver:self];
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
      v12 = self->_trailingText;
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

- (void)setSubtitleImage:(id)a3
{
  v10 = a3;
  if (self->_subtitleImage != v10)
  {
    objc_storeStrong(&self->_subtitleImage, a3);
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

- (void)setRoundedBorderText:(id)a3
{
  v10 = a3;
  if (self->_roundedBorderText != v10)
  {
    objc_storeStrong(&self->_roundedBorderText, a3);
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

- (void)setAxis:(int64_t)a3
{
  if (self->_axis != a3)
  {
    self->_axis = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  v3 = [(TLKHeaderView *)self axis];
  if (v3 == 1)
  {
    v115 = 1;
    v4 = 1;
  }

  else
  {
    v5 = [(TLKHeaderView *)self trailingText];
    v6 = [v5 text];
    v115 = v6 == 0;

    v4 = 4;
  }

  v7 = [(TLKHeaderView *)self footnote];
  v114 = v7 == 0;

  v8 = [(TLKHeaderView *)self innerStackView];
  v9 = v8;
  if (v3 != 1)
  {
    [v8 setAlignment:1];

    v22 = [(TLKHeaderView *)self innerStackView];
    v23 = [v22 arrangedSubviews];
    v24 = [(TLKHeaderView *)self imageView];
    v25 = [v23 containsObject:v24];

    if (v25)
    {
      v26 = [(TLKHeaderView *)self innerStackView];
      v27 = [(TLKHeaderView *)self imageView];
      [v26 removeArrangedSubview:v27];
    }

    v28 = [(TLKView *)self contentView];
    v29 = [v28 arrangedSubviews];
    v30 = [(TLKHeaderView *)self imageView];
    v31 = [v29 containsObject:v30];

    if ((v31 & 1) == 0)
    {
      v32 = [(TLKView *)self contentView];
      v33 = [(TLKHeaderView *)self imageView];
      [v32 insertArrangedSubview:v33 atIndex:0];
    }

    v20 = [(TLKView *)self contentView];
    v21 = [(TLKHeaderView *)self imageView];
    [v20 setAlignment:1 forView:v21 inAxis:1];
    goto LABEL_14;
  }

  [v8 setAlignment:3];

  v10 = [(TLKView *)self contentView];
  v11 = [v10 arrangedSubviews];
  v12 = [(TLKHeaderView *)self imageView];
  v13 = [v11 containsObject:v12];

  if (v13)
  {
    v14 = [(TLKView *)self contentView];
    v15 = [(TLKHeaderView *)self imageView];
    [v14 removeArrangedSubview:v15];
  }

  v16 = [(TLKHeaderView *)self innerStackView];
  v17 = [v16 arrangedSubviews];
  v18 = [(TLKHeaderView *)self imageView];
  v19 = [v17 containsObject:v18];

  if ((v19 & 1) == 0)
  {
    v20 = [(TLKHeaderView *)self innerStackView];
    v21 = [(TLKHeaderView *)self imageView];
    [v20 insertArrangedSubview:v21 atIndex:0];
LABEL_14:
  }

  v34 = [(TLKHeaderView *)self footnoteLabel];
  [v34 setTextAlignment:v4];

  v35 = [(TLKHeaderView *)self subtitleLabel];
  [v35 setTextAlignment:v4];

  v36 = [(TLKHeaderView *)self titleLabel];
  [v36 setTextAlignment:v4];

  v37 = [(TLKHeaderView *)self image];
  LOBYTE(v36) = v37 == 0;

  v38 = [(TLKHeaderView *)self imageView];
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke;
  v125[3] = &unk_1E7FD8F38;
  v125[4] = self;
  v126 = v36;
  [v38 performBatchUpdates:v125];

  if (v3 == 1)
  {
    v39 = *MEMORY[0x1E69DDDC0];
    v40 = MEMORY[0x1E69DDD40];
  }

  else
  {
    v41 = +[TLKUtilities isMacOS];
    v42 = MEMORY[0x1E69DDDC0];
    if (!v41)
    {
      v42 = MEMORY[0x1E69DDD58];
    }

    v39 = *v42;
    v43 = +[TLKUtilities isMacOS];
    v40 = MEMORY[0x1E69DDD00];
    if (!v43)
    {
      v40 = MEMORY[0x1E69DDD80];
    }
  }

  v44 = *v40;
  v45 = [(TLKHeaderView *)self titleIsEquation];
  v46 = MEMORY[0x1E695E0F0];
  if (v45)
  {
    v46 = &unk_1F3AA8310;
  }

  v47 = v46;
  v48 = [(TLKHeaderView *)self subtitleIsEmphasized];
  v49 = +[TLKUtilities isMacOS];
  if (v48)
  {
    v50 = v39;
  }

  else
  {
    v50 = v44;
  }

  if (v48)
  {
    v51 = v44;
  }

  else
  {
    v51 = v39;
  }

  v52 = [TLKFontUtilities cachedFontForTextStyle:v50 isBold:0 isMacStyle:v49];
  v53 = +[TLKFontUtilities cachedFontForTextStyle:isShort:isBold:useCustomWeight:customFontWeight:isMacStyle:fontFeatures:](TLKFontUtilities, "cachedFontForTextStyle:isShort:isBold:useCustomWeight:customFontWeight:isMacStyle:fontFeatures:", v51, 0, 0, 0, +[TLKUtilities isMacOS], v47, *MEMORY[0x1E69DB978]);

  v54 = [(TLKHeaderView *)self titleLabel];
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_2;
  v123[3] = &unk_1E7FD8DA8;
  v123[4] = self;
  v113 = v53;
  v124 = v113;
  [v54 performBatchUpdates:v123];

  v55 = [(TLKHeaderView *)self subtitleImageView];
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_3;
  v122[3] = &unk_1E7FD8E98;
  v122[4] = self;
  [v55 performBatchUpdates:v122];

  v56 = [(TLKHeaderView *)self subtitleLabel];
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_4;
  v120[3] = &unk_1E7FD8DA8;
  v120[4] = self;
  v112 = v52;
  v121 = v112;
  [v56 performBatchUpdates:v120];

  v57 = 1.5;
  if (v3 != 1)
  {
    v58 = +[TLKUtilities isMacOS];
    v57 = 4.0;
    if (v58)
    {
      v57 = 2.5;
    }
  }

  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v57];
  v60 = v59;
  v61 = [(TLKHeaderView *)self innerStackView];
  [v61 setSpacing:v60];

  v62 = [(TLKHeaderView *)self roundedBorderText];
  v63 = v62 == 0;
  v64 = [(TLKHeaderView *)self roundedCornerLabel];
  [v64 setHidden:v63];

  v65 = [(TLKHeaderView *)self roundedBorderText];

  if (v65)
  {
    v66 = [(TLKHeaderView *)self roundedCornerLabel];

    if (!v66)
    {
      v67 = [[TLKRoundedCornerLabel alloc] initWithProminence:1];
      [(TLKHeaderView *)self setRoundedCornerLabel:v67];

      v68 = [(TLKHeaderView *)self roundedCornerLabel];
      [v68 setSizeConfiguration:1];

      v69 = [(TLKHeaderView *)self roundedCornerLabel];
      [TLKLayoutUtilities requireIntrinsicSizeForView:v69];

      v70 = [(TLKHeaderView *)self subtitleStackView];
      v71 = [(TLKHeaderView *)self roundedCornerLabel];
      [v70 addArrangedSubview:v71];
    }

    v72 = [(TLKHeaderView *)self roundedBorderText];
    v63 = [(TLKHeaderView *)self roundedCornerLabel];
    v73 = [v63 label];
    [v73 setText:v72];
  }

  v74 = [(TLKHeaderView *)self subtitle];
  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v63 = [(TLKHeaderView *)self subtitleImage];
    v75 = v63 == 0;
  }

  v76 = [(TLKHeaderView *)self subtitleStackView];
  [v76 setHidden:v75];

  if (!v74)
  {
  }

  v77 = [(TLKHeaderView *)self footnoteLabel];
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_5;
  v118[3] = &unk_1E7FD8F38;
  v118[4] = self;
  v119 = v114;
  [v77 performBatchUpdates:v118];

  v78 = [(TLKHeaderView *)self trailingTextLabel];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_6;
  v116[3] = &unk_1E7FD8F38;
  v116[4] = self;
  v117 = v115;
  [v78 performBatchUpdates:v116];

  v79 = [(TLKHeaderView *)self innerStackView];
  v80 = [v79 viewForFirstBaselineLayout];
  v81 = [(TLKHeaderView *)self titleLabel];
  if (v80 == v81)
  {
    v83 = [(TLKHeaderView *)self titleLabel];
    v82 = [v83 font];
  }

  else
  {
    v82 = 0;
  }

  v84 = [(TLKHeaderView *)self innerStackView];
  v85 = [v84 viewForLastBaselineLayout];

  v86 = [(TLKHeaderView *)self subtitleLabel];
  v87 = [v86 font];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v88 = [v85 font];

    v87 = v88;
  }

  [v82 ascender];
  v90 = v89;
  [v82 capHeight];
  v92 = v90 - v91;
  [v87 descender];
  [TLKLayoutUtilities deviceScaledFlooredValue:self forView:?];
  v94 = -v93;
  v95 = [(TLKHeaderView *)self innerStackView];
  [v95 setCustomAlignmentRectInsets:{v92, 0.0, v94, 0.0}];

  [objc_opt_class() defaultLayoutMargins];
  v97 = v96;
  v99 = v98;
  v100 = 25.0;
  if (v3 != 1)
  {
    if (+[TLKUtilities isMacOS])
    {
      v100 = 13.0;
    }

    else
    {
      v100 = 22.5;
    }
  }

  v101 = +[TLKUtilities isMacOS];
  v102 = 19.5;
  if (v101)
  {
    v102 = 14.0;
  }

  [TLKLayoutUtilities deviceScaledRoundedInsets:self forView:v102, v97, v100, v99];
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v110 = v109;
  v111 = [(TLKView *)self contentView];
  [v111 setLayoutMargins:{v104, v106, v108, v110}];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

void __42__TLKHeaderView_observedPropertiesChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) image];
  v3 = [*(a1 + 32) imageView];
  [v3 setTlkImage:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) imageView];
  [v5 setHidden:v4];
}

void __42__TLKHeaderView_observedPropertiesChanged__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) title];
  v3 = [*(a1 + 32) titleLabel];
  [v3 setHidden:v2 == 0];

  v4 = [*(a1 + 32) title];
  v5 = [*(a1 + 32) titleLabel];
  [v5 setMultilineText:v4];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) titleLabel];
  [v7 setFont:v6];

  v8 = [*(a1 + 32) subtitleIsEmphasized];
  v9 = [*(a1 + 32) titleLabel];
  [v9 setProminence:v8];
}

void __42__TLKHeaderView_observedPropertiesChanged__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) subtitleImage];
  v3 = [*(a1 + 32) subtitleImageView];
  [v3 setHidden:v2 == 0];

  v5 = [*(a1 + 32) subtitleImage];
  v4 = [*(a1 + 32) subtitleImageView];
  [v4 setTlkImage:v5];
}

void __42__TLKHeaderView_observedPropertiesChanged__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) subtitle];
  v3 = v2 == 0;
  v4 = [*(a1 + 32) subtitleLabel];
  [v4 setHidden:v3];

  v5 = [*(a1 + 32) roundedBorderText];
  if (v5)
  {
    v6 = 0;
    v7 = 1;
  }

  else
  {
    v3 = [*(a1 + 32) subtitleImage];
    if (v3)
    {
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v4 = [*(a1 + 32) subtitle];
      v7 = [v4 maxLines];
      v6 = 1;
    }
  }

  v8 = [*(a1 + 32) subtitle];
  [v8 setMaxLines:v7];

  if (v6)
  {
  }

  if (!v5)
  {
  }

  v9 = [*(a1 + 32) subtitle];
  v10 = [*(a1 + 32) subtitleLabel];
  [v10 setRichText:v9];

  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) subtitleLabel];
  [v12 setFont:v11];
}

void __42__TLKHeaderView_observedPropertiesChanged__block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) footnoteLabel];
  [v3 setHidden:v2];

  v5 = [*(a1 + 32) footnote];
  v4 = [*(a1 + 32) footnoteLabel];
  [v4 setMultilineText:v5];
}

void __42__TLKHeaderView_observedPropertiesChanged__block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) trailingTextLabel];
  [v3 setHidden:v2];

  v5 = [*(a1 + 32) trailingText];
  v4 = [*(a1 + 32) trailingTextLabel];
  [v4 setMultilineText:v5];
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  if (![TLKUtilities isMacOS:a3])
  {
    v6 = [(TLKHeaderView *)self imageView];
    if ([(TLKHeaderView *)self axis]== 1)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__TLKHeaderView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke;
      v7[3] = &unk_1E7FD8E98;
      v8 = v6;
      [v8 performBatchUpdates:v7];
    }

    else
    {
      [TLKLayoutUtilities applyRowBoundedSizingToImageView:v6 isCompactWidth:[(TLKHeaderView *)self useCompactWidth]];
    }
  }
}

uint64_t __80__TLKHeaderView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMinimumLayoutSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v2 = *MEMORY[0x1E698B700];
  v3 = *(MEMORY[0x1E698B700] + 8);
  v4 = *(a1 + 32);

  return [v4 setMaximumLayoutSize:{v2, v3}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKHeaderView;
  [(TLKHeaderView *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKHeaderView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKHeaderView *)self traitCollection];
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
  v3.super_class = TLKHeaderView;
  [(TLKHeaderView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = TLKHeaderView;
  [(UIView *)&v6 tlk_updateForAppearance:a3];
  if ([TLKAppearance viewHasOverriddenAppearance:self])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(TLKHeaderView *)self subtitleIsEmphasized]^ 1;
  }

  v5 = [(TLKHeaderView *)self subtitleLabel];
  [v5 setProminence:v4];
}

- (id)footnoteLabelText
{
  v2 = [(TLKHeaderView *)self footnoteLabel];
  v3 = [v2 text];

  return v3;
}

- (id)hasImage
{
  v2 = [(TLKHeaderView *)self imageView];
  v3 = [v2 tlkImage];
  v4 = [v3 uiImage];

  return v4;
}

- (id)roundedCornerLabelText
{
  v3 = [(TLKHeaderView *)self roundedCornerLabel];
  if ([v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(TLKHeaderView *)self roundedCornerLabel];
    v6 = [v5 label];
    v4 = [v6 text];
  }

  return v4;
}

@end