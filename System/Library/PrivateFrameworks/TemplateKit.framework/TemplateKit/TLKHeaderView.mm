@interface TLKHeaderView
- (id)footnoteLabelText;
- (id)hasImage;
- (id)roundedCornerLabelText;
- (id)setupContentView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)didMoveToWindow;
- (void)observedPropertiesChanged;
- (void)setAxis:(int64_t)axis;
- (void)setFootnote:(id)footnote;
- (void)setImage:(id)image;
- (void)setRoundedBorderText:(id)text;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleImage:(id)image;
- (void)setTitle:(id)title;
- (void)setTrailingText:(id)text;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
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
  trailingTextLabel = [(TLKHeaderView *)self trailingTextLabel];
  [trailingTextLabel setTextAlignment:2];

  v11 = [MEMORY[0x1E69DB878] _thinSystemFontOfSize:60.0];
  trailingTextLabel2 = [(TLKHeaderView *)self trailingTextLabel];
  [trailingTextLabel2 setFont:v11];

  trailingTextLabel3 = [(TLKHeaderView *)self trailingTextLabel];
  [TLKLayoutUtilities requireIntrinsicSizeForView:trailingTextLabel3];

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

- (void)setTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = titleCopy;
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

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_title, title);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setSubtitle:(id)subtitle
{
  v34 = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_subtitle setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = subtitleCopy;
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

      subtitleCopy = v23;
    }
  }

  objc_storeStrong(&self->_subtitle, subtitle);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setFootnote:(id)footnote
{
  v34 = *MEMORY[0x1E69E9840];
  footnoteCopy = footnote;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_footnote setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = footnoteCopy;
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

      footnoteCopy = v23;
    }
  }

  objc_storeStrong(&self->_footnote, footnote);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setTrailingText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_trailingText setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = textCopy;
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

      textCopy = v23;
    }
  }

  objc_storeStrong(&self->_trailingText, text);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setSubtitleImage:(id)image
{
  imageCopy = image;
  if (self->_subtitleImage != imageCopy)
  {
    objc_storeStrong(&self->_subtitleImage, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setRoundedBorderText:(id)text
{
  textCopy = text;
  if (self->_roundedBorderText != textCopy)
  {
    objc_storeStrong(&self->_roundedBorderText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setAxis:(int64_t)axis
{
  if (self->_axis != axis)
  {
    self->_axis = axis;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  axis = [(TLKHeaderView *)self axis];
  if (axis == 1)
  {
    v115 = 1;
    v4 = 1;
  }

  else
  {
    trailingText = [(TLKHeaderView *)self trailingText];
    text = [trailingText text];
    v115 = text == 0;

    v4 = 4;
  }

  footnote = [(TLKHeaderView *)self footnote];
  v114 = footnote == 0;

  innerStackView = [(TLKHeaderView *)self innerStackView];
  v9 = innerStackView;
  if (axis != 1)
  {
    [innerStackView setAlignment:1];

    innerStackView2 = [(TLKHeaderView *)self innerStackView];
    arrangedSubviews = [innerStackView2 arrangedSubviews];
    imageView = [(TLKHeaderView *)self imageView];
    v25 = [arrangedSubviews containsObject:imageView];

    if (v25)
    {
      innerStackView3 = [(TLKHeaderView *)self innerStackView];
      imageView2 = [(TLKHeaderView *)self imageView];
      [innerStackView3 removeArrangedSubview:imageView2];
    }

    contentView = [(TLKView *)self contentView];
    arrangedSubviews2 = [contentView arrangedSubviews];
    imageView3 = [(TLKHeaderView *)self imageView];
    v31 = [arrangedSubviews2 containsObject:imageView3];

    if ((v31 & 1) == 0)
    {
      contentView2 = [(TLKView *)self contentView];
      imageView4 = [(TLKHeaderView *)self imageView];
      [contentView2 insertArrangedSubview:imageView4 atIndex:0];
    }

    contentView3 = [(TLKView *)self contentView];
    imageView5 = [(TLKHeaderView *)self imageView];
    [contentView3 setAlignment:1 forView:imageView5 inAxis:1];
    goto LABEL_14;
  }

  [innerStackView setAlignment:3];

  contentView4 = [(TLKView *)self contentView];
  arrangedSubviews3 = [contentView4 arrangedSubviews];
  imageView6 = [(TLKHeaderView *)self imageView];
  v13 = [arrangedSubviews3 containsObject:imageView6];

  if (v13)
  {
    contentView5 = [(TLKView *)self contentView];
    imageView7 = [(TLKHeaderView *)self imageView];
    [contentView5 removeArrangedSubview:imageView7];
  }

  innerStackView4 = [(TLKHeaderView *)self innerStackView];
  arrangedSubviews4 = [innerStackView4 arrangedSubviews];
  imageView8 = [(TLKHeaderView *)self imageView];
  v19 = [arrangedSubviews4 containsObject:imageView8];

  if ((v19 & 1) == 0)
  {
    contentView3 = [(TLKHeaderView *)self innerStackView];
    imageView5 = [(TLKHeaderView *)self imageView];
    [contentView3 insertArrangedSubview:imageView5 atIndex:0];
LABEL_14:
  }

  footnoteLabel = [(TLKHeaderView *)self footnoteLabel];
  [footnoteLabel setTextAlignment:v4];

  subtitleLabel = [(TLKHeaderView *)self subtitleLabel];
  [subtitleLabel setTextAlignment:v4];

  titleLabel = [(TLKHeaderView *)self titleLabel];
  [titleLabel setTextAlignment:v4];

  image = [(TLKHeaderView *)self image];
  LOBYTE(titleLabel) = image == 0;

  imageView9 = [(TLKHeaderView *)self imageView];
  v125[0] = MEMORY[0x1E69E9820];
  v125[1] = 3221225472;
  v125[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke;
  v125[3] = &unk_1E7FD8F38;
  v125[4] = self;
  v126 = titleLabel;
  [imageView9 performBatchUpdates:v125];

  if (axis == 1)
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
  titleIsEquation = [(TLKHeaderView *)self titleIsEquation];
  v46 = MEMORY[0x1E695E0F0];
  if (titleIsEquation)
  {
    v46 = &unk_1F3AA8310;
  }

  v47 = v46;
  subtitleIsEmphasized = [(TLKHeaderView *)self subtitleIsEmphasized];
  v49 = +[TLKUtilities isMacOS];
  if (subtitleIsEmphasized)
  {
    v50 = v39;
  }

  else
  {
    v50 = v44;
  }

  if (subtitleIsEmphasized)
  {
    v51 = v44;
  }

  else
  {
    v51 = v39;
  }

  v52 = [TLKFontUtilities cachedFontForTextStyle:v50 isBold:0 isMacStyle:v49];
  v53 = +[TLKFontUtilities cachedFontForTextStyle:isShort:isBold:useCustomWeight:customFontWeight:isMacStyle:fontFeatures:](TLKFontUtilities, "cachedFontForTextStyle:isShort:isBold:useCustomWeight:customFontWeight:isMacStyle:fontFeatures:", v51, 0, 0, 0, +[TLKUtilities isMacOS], v47, *MEMORY[0x1E69DB978]);

  titleLabel2 = [(TLKHeaderView *)self titleLabel];
  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_2;
  v123[3] = &unk_1E7FD8DA8;
  v123[4] = self;
  v113 = v53;
  v124 = v113;
  [titleLabel2 performBatchUpdates:v123];

  subtitleImageView = [(TLKHeaderView *)self subtitleImageView];
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_3;
  v122[3] = &unk_1E7FD8E98;
  v122[4] = self;
  [subtitleImageView performBatchUpdates:v122];

  subtitleLabel2 = [(TLKHeaderView *)self subtitleLabel];
  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_4;
  v120[3] = &unk_1E7FD8DA8;
  v120[4] = self;
  v112 = v52;
  v121 = v112;
  [subtitleLabel2 performBatchUpdates:v120];

  v57 = 1.5;
  if (axis != 1)
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
  innerStackView5 = [(TLKHeaderView *)self innerStackView];
  [innerStackView5 setSpacing:v60];

  roundedBorderText = [(TLKHeaderView *)self roundedBorderText];
  roundedCornerLabel6 = roundedBorderText == 0;
  roundedCornerLabel = [(TLKHeaderView *)self roundedCornerLabel];
  [roundedCornerLabel setHidden:roundedCornerLabel6];

  roundedBorderText2 = [(TLKHeaderView *)self roundedBorderText];

  if (roundedBorderText2)
  {
    roundedCornerLabel2 = [(TLKHeaderView *)self roundedCornerLabel];

    if (!roundedCornerLabel2)
    {
      v67 = [[TLKRoundedCornerLabel alloc] initWithProminence:1];
      [(TLKHeaderView *)self setRoundedCornerLabel:v67];

      roundedCornerLabel3 = [(TLKHeaderView *)self roundedCornerLabel];
      [roundedCornerLabel3 setSizeConfiguration:1];

      roundedCornerLabel4 = [(TLKHeaderView *)self roundedCornerLabel];
      [TLKLayoutUtilities requireIntrinsicSizeForView:roundedCornerLabel4];

      subtitleStackView = [(TLKHeaderView *)self subtitleStackView];
      roundedCornerLabel5 = [(TLKHeaderView *)self roundedCornerLabel];
      [subtitleStackView addArrangedSubview:roundedCornerLabel5];
    }

    roundedBorderText3 = [(TLKHeaderView *)self roundedBorderText];
    roundedCornerLabel6 = [(TLKHeaderView *)self roundedCornerLabel];
    label = [roundedCornerLabel6 label];
    [label setText:roundedBorderText3];
  }

  subtitle = [(TLKHeaderView *)self subtitle];
  if (subtitle)
  {
    v75 = 0;
  }

  else
  {
    roundedCornerLabel6 = [(TLKHeaderView *)self subtitleImage];
    v75 = roundedCornerLabel6 == 0;
  }

  subtitleStackView2 = [(TLKHeaderView *)self subtitleStackView];
  [subtitleStackView2 setHidden:v75];

  if (!subtitle)
  {
  }

  footnoteLabel2 = [(TLKHeaderView *)self footnoteLabel];
  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_5;
  v118[3] = &unk_1E7FD8F38;
  v118[4] = self;
  v119 = v114;
  [footnoteLabel2 performBatchUpdates:v118];

  trailingTextLabel = [(TLKHeaderView *)self trailingTextLabel];
  v116[0] = MEMORY[0x1E69E9820];
  v116[1] = 3221225472;
  v116[2] = __42__TLKHeaderView_observedPropertiesChanged__block_invoke_6;
  v116[3] = &unk_1E7FD8F38;
  v116[4] = self;
  v117 = v115;
  [trailingTextLabel performBatchUpdates:v116];

  innerStackView6 = [(TLKHeaderView *)self innerStackView];
  viewForFirstBaselineLayout = [innerStackView6 viewForFirstBaselineLayout];
  titleLabel3 = [(TLKHeaderView *)self titleLabel];
  if (viewForFirstBaselineLayout == titleLabel3)
  {
    titleLabel4 = [(TLKHeaderView *)self titleLabel];
    font = [titleLabel4 font];
  }

  else
  {
    font = 0;
  }

  innerStackView7 = [(TLKHeaderView *)self innerStackView];
  viewForLastBaselineLayout = [innerStackView7 viewForLastBaselineLayout];

  subtitleLabel3 = [(TLKHeaderView *)self subtitleLabel];
  font2 = [subtitleLabel3 font];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    font3 = [viewForLastBaselineLayout font];

    font2 = font3;
  }

  [font ascender];
  v90 = v89;
  [font capHeight];
  v92 = v90 - v91;
  [font2 descender];
  [TLKLayoutUtilities deviceScaledFlooredValue:self forView:?];
  v94 = -v93;
  innerStackView8 = [(TLKHeaderView *)self innerStackView];
  [innerStackView8 setCustomAlignmentRectInsets:{v92, 0.0, v94, 0.0}];

  [objc_opt_class() defaultLayoutMargins];
  v97 = v96;
  v99 = v98;
  v100 = 25.0;
  if (axis != 1)
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
  contentView6 = [(TLKView *)self contentView];
  [contentView6 setLayoutMargins:{v104, v106, v108, v110}];

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

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  if (![TLKUtilities isMacOS:view])
  {
    imageView = [(TLKHeaderView *)self imageView];
    if ([(TLKHeaderView *)self axis]== 1)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__TLKHeaderView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke;
      v7[3] = &unk_1E7FD8E98;
      v8 = imageView;
      [v8 performBatchUpdates:v7];
    }

    else
    {
      [TLKLayoutUtilities applyRowBoundedSizingToImageView:imageView isCompactWidth:[(TLKHeaderView *)self useCompactWidth]];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKHeaderView;
  [(TLKHeaderView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKHeaderView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKHeaderView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = TLKHeaderView;
  [(UIView *)&v6 tlk_updateForAppearance:appearance];
  if ([TLKAppearance viewHasOverriddenAppearance:self])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(TLKHeaderView *)self subtitleIsEmphasized]^ 1;
  }

  subtitleLabel = [(TLKHeaderView *)self subtitleLabel];
  [subtitleLabel setProminence:v4];
}

- (id)footnoteLabelText
{
  footnoteLabel = [(TLKHeaderView *)self footnoteLabel];
  text = [footnoteLabel text];

  return text;
}

- (id)hasImage
{
  imageView = [(TLKHeaderView *)self imageView];
  tlkImage = [imageView tlkImage];
  uiImage = [tlkImage uiImage];

  return uiImage;
}

- (id)roundedCornerLabelText
{
  roundedCornerLabel = [(TLKHeaderView *)self roundedCornerLabel];
  if ([roundedCornerLabel isHidden])
  {
    text = 0;
  }

  else
  {
    roundedCornerLabel2 = [(TLKHeaderView *)self roundedCornerLabel];
    label = [roundedCornerLabel2 label];
    text = [label text];
  }

  return text;
}

@end