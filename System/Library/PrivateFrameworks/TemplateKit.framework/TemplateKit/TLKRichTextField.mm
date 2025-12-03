@interface TLKRichTextField
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (NSString)description;
- (TLKObserver)observer;
- (TLKRichTextField)init;
- (UIFont)font;
- (id)attributedString;
- (unint64_t)prominence;
- (void)propertiesDidChange;
- (void)setFont:(id)font;
- (void)setProminence:(unint64_t)prominence;
- (void)setRichText:(id)text;
- (void)setRoundedCornerLabelSizeConfiguration:(unint64_t)configuration;
- (void)setScaleIconsToFont:(BOOL)font;
- (void)setUseCompactMode:(BOOL)mode;
- (void)updateIconSizing;
- (void)updateIcons:(id)icons;
- (void)updateRoundedCornerLabels:(id)labels;
- (void)updateStarRating:(id)rating;
- (void)updateWithRichText:(id)text;
@end

@implementation TLKRichTextField

- (TLKRichTextField)init
{
  v9.receiver = self;
  v9.super_class = TLKRichTextField;
  v2 = [(TLKRichTextField *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(TLKStackView *)v2 setAxis:0];
    [(TLKStackView *)v3 setAlignment:5];
    v4 = objc_opt_new();
    [(TLKRichTextField *)v3 setTextLabel:v4];

    textLabel = [(TLKRichTextField *)v3 textLabel];
    [textLabel setSupportsColorGlyphs:1];

    v6 = +[TLKFontUtilities shortFootnoteFont];
    [(TLKRichTextField *)v3 setFont:v6];

    textLabel2 = [(TLKRichTextField *)v3 textLabel];
    [(TLKStackView *)v3 addArrangedSubview:textLabel2];

    [(TLKRichTextField *)v3 setDelegate:v3];
    [(TLKRichTextField *)v3 setObserver:v3];
  }

  return v3;
}

- (void)updateIconSizing
{
  if (!-[TLKRichTextField scaleIconsToFont](self, "scaleIconsToFont") || ((-[TLKRichTextField richText](self, "richText"), v3 = objc_claimAutoreleasedReturnValue(), [v3 icons], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "image"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "size"), v8 = v7, v10 = v9, v11 = *MEMORY[0x1E695F060], v12 = *(MEMORY[0x1E695F060] + 8), v6, v5, v4, v3, v8 == v11) ? (v13 = v10 == v12) : (v13 = 0), v13))
  {
    iconView = [(TLKRichTextField *)self iconView];
    [iconView setMinimumLayoutSize:{0.0, 0.0}];

    iconView2 = [(TLKRichTextField *)self iconView];
    v21 = iconView2;
    v19 = 1.79769313e308;
  }

  else
  {
    font = [(TLKRichTextField *)self font];
    [font capHeight];
    v16 = v15;

    iconView3 = [(TLKRichTextField *)self iconView];
    [iconView3 setMinimumLayoutSize:{0.0, v16}];

    iconView2 = [(TLKRichTextField *)self iconView];
    v21 = iconView2;
    v19 = v16;
  }

  [iconView2 setMaximumLayoutSize:{1.79769313e308, v19}];
}

- (TLKObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->observer);

  return WeakRetained;
}

- (void)propertiesDidChange
{
  richText = [(TLKRichTextField *)self richText];
  [(TLKRichTextField *)self updateWithRichText:richText];
}

- (void)setRichText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_richText setObserver:0];
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
      v6 = self->_richText;
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

      textCopy = v23;
    }
  }

  objc_storeStrong(&self->_richText, text);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_richText setObserver:self];
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
      v12 = self->_richText;
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

  observer = [(TLKRichTextField *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKRichTextField *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKRichTextField *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)updateWithRichText:(id)text
{
  textCopy = text;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__TLKRichTextField_updateWithRichText___block_invoke;
  v6[3] = &unk_1E7FD8DA8;
  v6[4] = self;
  v7 = textCopy;
  v5 = textCopy;
  [(TLKRichTextField *)self performBatchUpdates:v6];
}

void __39__TLKRichTextField_updateWithRichText___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) textLabel];
  [v3 setRichText:v2];

  LODWORD(v2) = [*(a1 + 40) hasContent];
  v4 = [*(a1 + 32) textLabel];
  [v4 setHidden:v2 ^ 1];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) stars];
  [v5 updateStarRating:v6];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) icons];
  [v7 updateIcons:v8];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) inlineRoundedText];
  [v9 updateRoundedCornerLabels:v10];
}

- (UIFont)font
{
  textLabel = [(TLKRichTextField *)self textLabel];
  font = [textLabel font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  textLabel = [(TLKRichTextField *)self textLabel];
  [textLabel setFont:fontCopy];

  starRatingView = [(TLKRichTextField *)self starRatingView];
  [starRatingView setFont:fontCopy];

  iconView = [(TLKRichTextField *)self iconView];
  [iconView setSymbolFont:fontCopy];

  [(TLKRichTextField *)self updateIconSizing];
}

- (void)setScaleIconsToFont:(BOOL)font
{
  if (self->_scaleIconsToFont != font)
  {
    self->_scaleIconsToFont = font;
    [(TLKRichTextField *)self updateIconSizing];
  }
}

- (void)setRoundedCornerLabelSizeConfiguration:(unint64_t)configuration
{
  self->_roundedCornerLabelSizeConfiguration = configuration;
  roundedCornerLabels = [(TLKRichTextField *)self roundedCornerLabels];
  [roundedCornerLabels setSizeConfiguration:configuration];
}

- (unint64_t)prominence
{
  textLabel = [(TLKRichTextField *)self textLabel];
  prominence = [textLabel prominence];

  return prominence;
}

- (void)setProminence:(unint64_t)prominence
{
  textLabel = [(TLKRichTextField *)self textLabel];
  [textLabel setProminence:prominence];

  iconView = [(TLKRichTextField *)self iconView];
  [iconView setProminence:prominence];

  roundedCornerLabels = [(TLKRichTextField *)self roundedCornerLabels];
  [roundedCornerLabels setProminence:prominence];
}

- (void)setUseCompactMode:(BOOL)mode
{
  modeCopy = mode;
  self->_useCompactMode = mode;
  starRatingView = [(TLKRichTextField *)self starRatingView];
  [starRatingView setUseCompactMode:modeCopy];
}

- (void)updateStarRating:(id)rating
{
  ratingCopy = rating;
  starRatingView = [(TLKRichTextField *)self starRatingView];
  if (ratingCopy)
  {

    if (!starRatingView)
    {
      v5 = objc_opt_new();
      [(TLKRichTextField *)self setStarRatingView:v5];

      font = [(TLKRichTextField *)self font];
      starRatingView2 = [(TLKRichTextField *)self starRatingView];
      [starRatingView2 setFont:font];

      useCompactMode = [(TLKRichTextField *)self useCompactMode];
      starRatingView3 = [(TLKRichTextField *)self starRatingView];
      [starRatingView3 setUseCompactMode:useCompactMode];

      starRatingView4 = [(TLKRichTextField *)self starRatingView];
      [(TLKRichTextField *)self insertArrangedSubview:starRatingView4 atIndex:0];

      starRatingView5 = [(TLKRichTextField *)self starRatingView];
      [(TLKRichTextField *)self setMinimumSpacing:starRatingView5 adjacentToView:0.0, 0.0, 0.0, 5.5];
    }

    firstObject = [ratingCopy firstObject];
    [firstObject starRating];
    v14 = v13;
    starRatingView6 = [(TLKRichTextField *)self starRatingView];
    [starRatingView6 setStarRating:v14];

    starRatingView7 = [(TLKRichTextField *)self starRatingView];
    starRatingView = starRatingView7;
    v17 = 0;
  }

  else
  {
    starRatingView7 = starRatingView;
    v17 = 1;
  }

  [starRatingView7 setHidden:v17];
}

- (void)updateIcons:(id)icons
{
  iconsCopy = icons;
  iconView = [(TLKRichTextField *)self iconView];
  if (iconsCopy)
  {

    if (!iconView)
    {
      v5 = objc_opt_new();
      [(TLKRichTextField *)self setIconView:v5];

      prominence = [(TLKRichTextField *)self prominence];
      iconView2 = [(TLKRichTextField *)self iconView];
      [iconView2 setProminence:prominence];

      font = [(TLKRichTextField *)self font];
      iconView3 = [(TLKRichTextField *)self iconView];
      [iconView3 setSymbolFont:font];

      iconView4 = [(TLKRichTextField *)self iconView];
      [TLKLayoutUtilities requireIntrinsicSizeForView:iconView4];

      [(TLKRichTextField *)self updateIconSizing];
      iconView5 = [(TLKRichTextField *)self iconView];
      arrangedSubviews = [(TLKRichTextField *)self arrangedSubviews];
      -[TLKRichTextField insertArrangedSubview:atIndex:](self, "insertArrangedSubview:atIndex:", iconView5, [arrangedSubviews count] - 1);

      iconView6 = [(TLKRichTextField *)self iconView];
      [(TLKRichTextField *)self setMinimumSpacing:iconView6 adjacentToView:0.0, 0.0, 0.0, 4.0];
    }

    iconView7 = [(TLKRichTextField *)self iconView];
    [iconView7 updateIcons:iconsCopy];

    iconView8 = [(TLKRichTextField *)self iconView];
    iconView = iconView8;
    v16 = 0;
  }

  else
  {
    iconView8 = iconView;
    v16 = 1;
  }

  [iconView8 setHidden:v16];
}

- (void)updateRoundedCornerLabels:(id)labels
{
  labelsCopy = labels;
  roundedCornerLabels = [(TLKRichTextField *)self roundedCornerLabels];
  if (labelsCopy)
  {

    if (!roundedCornerLabels)
    {
      v5 = objc_opt_new();
      [(TLKRichTextField *)self setRoundedCornerLabels:v5];

      prominence = [(TLKRichTextField *)self prominence];
      roundedCornerLabels2 = [(TLKRichTextField *)self roundedCornerLabels];
      [roundedCornerLabels2 setProminence:prominence];

      roundedCornerLabelSizeConfiguration = [(TLKRichTextField *)self roundedCornerLabelSizeConfiguration];
      roundedCornerLabels3 = [(TLKRichTextField *)self roundedCornerLabels];
      [roundedCornerLabels3 setSizeConfiguration:roundedCornerLabelSizeConfiguration];

      roundedCornerLabels4 = [(TLKRichTextField *)self roundedCornerLabels];
      [TLKLayoutUtilities requireIntrinsicSizeForView:roundedCornerLabels4];

      roundedCornerLabels5 = [(TLKRichTextField *)self roundedCornerLabels];
      starRatingView = [(TLKRichTextField *)self starRatingView];
      [(TLKRichTextField *)self insertArrangedSubview:roundedCornerLabels5 atIndex:starRatingView != 0];

      roundedCornerLabels6 = [(TLKRichTextField *)self roundedCornerLabels];
      [(TLKRichTextField *)self setMinimumSpacing:roundedCornerLabels6 adjacentToView:0.0, 0.0, 0.0, 10.0];
    }

    roundedCornerLabels7 = [(TLKRichTextField *)self roundedCornerLabels];
    [roundedCornerLabels7 updateRoundedText:labelsCopy];

    roundedCornerLabels8 = [(TLKRichTextField *)self roundedCornerLabels];
    roundedCornerLabels = roundedCornerLabels8;
    v16 = 0;
  }

  else
  {
    roundedCornerLabels8 = roundedCornerLabels;
    v16 = 1;
  }

  [roundedCornerLabels8 setHidden:v16];
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewCopy = subview;
  starRatingView = [(TLKRichTextField *)self starRatingView];

  if (starRatingView != subviewCopy)
  {
    roundedCornerLabels = [(TLKRichTextField *)self roundedCornerLabels];

    if (roundedCornerLabels == subviewCopy)
    {
      x = x + 1.0;
    }

    else
    {
      iconView = [(TLKRichTextField *)self iconView];

      if (iconView == subviewCopy)
      {
        iconView2 = [(TLKRichTextField *)self iconView];
        imageViews = [iconView2 imageViews];
        firstObject = [imageViews firstObject];
        [firstObject intrinsicContentSize];
        v18 = v17;

        if (v18 < 20.0)
        {
          [TLKLayoutUtilities deviceScaledRoundedValue:self forView:0.5];
          y = y - v19;
        }
      }
    }
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)attributedString
{
  textLabel = [(TLKRichTextField *)self textLabel];
  attributedText = [textLabel attributedText];

  return attributedText;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = TLKRichTextField;
  v4 = [(TLKRichTextField *)&v9 description];
  v5 = [v3 stringWithString:v4];

  textLabel = [(TLKRichTextField *)self textLabel];
  v7 = [textLabel description];

  if (v7)
  {
    [v5 appendString:v7];
  }

  return v5;
}

@end