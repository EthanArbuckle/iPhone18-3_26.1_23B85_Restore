@interface TLKAuxilliaryTextView
- (id)bottomLabelFont;
- (id)bottomLabelString;
- (id)middleLabelFont;
- (id)middleLabelString;
- (id)setupContentView;
- (id)topLabelString;
- (void)observedPropertiesChanged;
- (void)setBottomText:(id)text;
- (void)setMiddleText:(id)text;
- (void)setTopText:(id)text;
@end

@implementation TLKAuxilliaryTextView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [v3 setAxis:1];
  v4 = +[TLKLayoutUtilities isLTR];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [(TLKAuxilliaryTextView *)self setUserInteractionEnabled:0];
  v8 = 2;
  if (v4 && IsAccessibilityCategory)
  {
    v8 = 0;
  }

  if (v4 || IsAccessibilityCategory)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_new();
  [v10 setSupportsColorGlyphs:1];
  [v10 setTextAlignment:v9];
  [(TLKAuxilliaryTextView *)self setTopLabel:v10];
  [v3 addArrangedSubview:v10];
  v11 = objc_opt_new();
  [v11 setTextAlignment:v9];
  [(TLKAuxilliaryTextView *)self setMiddleLabel:v11];
  [v3 addArrangedSubview:v11];
  v12 = +[TLKLabel secondaryLabel];
  [v12 setTextAlignment:v9];
  [(TLKAuxilliaryTextView *)self setBottomLabel:v12];
  [v3 addArrangedSubview:v12];

  return v3;
}

- (void)setTopText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_topText setObserver:0];
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
      v6 = self->_topText;
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

  objc_storeStrong(&self->_topText, text);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_topText setObserver:self];
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
      v12 = self->_topText;
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

- (void)setMiddleText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_middleText setObserver:0];
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
      v6 = self->_middleText;
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

  objc_storeStrong(&self->_middleText, text);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_middleText setObserver:self];
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
      v12 = self->_middleText;
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

- (void)setBottomText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_bottomText setObserver:0];
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
      v6 = self->_bottomText;
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

  objc_storeStrong(&self->_bottomText, text);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_bottomText setObserver:self];
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
      v12 = self->_bottomText;
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

- (void)observedPropertiesChanged
{
  topText = [(TLKAuxilliaryTextView *)self topText];
  topLabel = [(TLKAuxilliaryTextView *)self topLabel];
  [topLabel setRichText:topText];

  middleText = [(TLKAuxilliaryTextView *)self middleText];
  middleLabel = [(TLKAuxilliaryTextView *)self middleLabel];
  [middleLabel setRichText:middleText];

  bottomText = [(TLKAuxilliaryTextView *)self bottomText];
  bottomLabel = [(TLKAuxilliaryTextView *)self bottomLabel];
  [bottomLabel setRichText:bottomText];

  topText2 = [(TLKAuxilliaryTextView *)self topText];
  LODWORD(bottomLabel) = [topText2 hasContent];
  topLabel2 = [(TLKAuxilliaryTextView *)self topLabel];
  [topLabel2 setHidden:bottomLabel ^ 1];

  middleText2 = [(TLKAuxilliaryTextView *)self middleText];
  LODWORD(bottomLabel) = [middleText2 hasContent];
  middleLabel2 = [(TLKAuxilliaryTextView *)self middleLabel];
  [middleLabel2 setHidden:bottomLabel ^ 1];

  bottomText2 = [(TLKAuxilliaryTextView *)self bottomText];
  LODWORD(bottomLabel) = [bottomText2 hasContent];
  bottomLabel2 = [(TLKAuxilliaryTextView *)self bottomLabel];
  [bottomLabel2 setHidden:bottomLabel ^ 1];

  middleLabel3 = [(TLKAuxilliaryTextView *)self middleLabel];
  if ([middleLabel3 isHidden])
  {
    bottomLabel2 = [(TLKAuxilliaryTextView *)self bottomLabel];
    if ([bottomLabel2 isHidden])
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 2;
  }

  topLabel3 = [(TLKAuxilliaryTextView *)self topLabel];
  [topLabel3 setProminence:v16];

  topLabel4 = [(TLKAuxilliaryTextView *)self topLabel];
  isHidden = [topLabel4 isHidden];
  if (isHidden)
  {
    v20 = 0;
  }

  else
  {
    bottomLabel2 = [(TLKAuxilliaryTextView *)self bottomLabel];
    v20 = [bottomLabel2 isHidden] ^ 1;
  }

  middleLabel4 = [(TLKAuxilliaryTextView *)self middleLabel];
  [middleLabel4 setProminence:v20];

  if ((isHidden & 1) == 0)
  {
  }

  topLabel5 = [(TLKAuxilliaryTextView *)self topLabel];
  if ([topLabel5 isHidden])
  {
    bottomLabel3 = [(TLKAuxilliaryTextView *)self bottomLabel];
    isHidden2 = [bottomLabel3 isHidden];
  }

  else
  {
    isHidden2 = 0;
  }

  topLabel6 = [(TLKAuxilliaryTextView *)self topLabel];
  if ([topLabel6 isHidden])
  {
    middleLabel5 = [(TLKAuxilliaryTextView *)self middleLabel];
    [middleLabel5 isHidden];
  }

  v61 = +[TLKFontUtilities footnoteFont];
  if ([(TLKAuxilliaryTextView *)self useCompactMode])
  {
    if (TLKBiggerSuggestionsLayoutEnabled())
    {
      v27 = *MEMORY[0x1E69DDDC8];
    }

    else
    {
      topLabel7 = [(TLKAuxilliaryTextView *)self topLabel];
      if ([topLabel7 isHidden])
      {
        bottomLabel4 = [(TLKAuxilliaryTextView *)self bottomLabel];
        isHidden3 = [bottomLabel4 isHidden];
        v41 = MEMORY[0x1E69DDDB8];
        if (!isHidden3)
        {
          v41 = MEMORY[0x1E69DDCF8];
        }

        v27 = *v41;
      }

      else
      {
        v27 = *MEMORY[0x1E69DDCF8];
      }
    }

    v36 = [TLKFontUtilities cachedFontForTextStyle:v27 isShort:0 isBold:0];
    v37 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:0];
  }

  else
  {
    v28 = +[TLKUtilities isMacOS];
    v29 = v28;
    v30 = MEMORY[0x1E69DDD00];
    if (!v28)
    {
      v30 = MEMORY[0x1E69DDD80];
    }

    v31 = *v30;
    if (v28)
    {
      v32 = MEMORY[0x1E69DDDC0];
    }

    else
    {
      v32 = MEMORY[0x1E69DDDC8];
    }

    v27 = v31;
    v33 = [TLKFontUtilities cachedFontForTextStyle:v27 isBold:1 isMacStyle:v29];

    topLabel8 = [(TLKAuxilliaryTextView *)self topLabel];
    if ([topLabel8 isHidden])
    {
      v35 = *v32;
    }

    else
    {
      v35 = v27;
    }

    v36 = [TLKFontUtilities cachedFontForTextStyle:v35 isBold:0 isMacStyle:v29];

    v37 = [TLKFontUtilities cachedFontForTextStyle:v27 isBold:0 isMacStyle:v29];
    v61 = v33;
  }

  topLabel9 = [(TLKAuxilliaryTextView *)self topLabel];
  [topLabel9 setFont:v61];

  middleLabel6 = [(TLKAuxilliaryTextView *)self middleLabel];
  [middleLabel6 setFont:v36];

  bottomLabel5 = [(TLKAuxilliaryTextView *)self bottomLabel];
  [bottomLabel5 setFont:v37];

  bottomLabel6 = [(TLKAuxilliaryTextView *)self bottomLabel];
  if ([bottomLabel6 isHidden])
  {
    v46 = 0;
  }

  else
  {
    middleLabel7 = [(TLKAuxilliaryTextView *)self middleLabel];
    if ([middleLabel7 isHidden])
    {
      v46 = 0;
    }

    else
    {
      topLabel10 = [(TLKAuxilliaryTextView *)self topLabel];
      v46 = [topLabel10 isHidden] ^ 1;
    }
  }

  v49 = +[TLKUtilities isMacOS];
  useCompactMode = [(TLKAuxilliaryTextView *)self useCompactMode];
  if (useCompactMode || v49)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 2.0;
  }

  if (!useCompactMode && (v46 & 1) == 0)
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:0.5];
    v51 = v52;
  }

  contentView = [(TLKView *)self contentView];
  [contentView setSpacing:v51];

  contentView2 = [(TLKView *)self contentView];
  if (v46)
  {
    v55 = 2.0;
  }

  else
  {
    v55 = *MEMORY[0x1E698B6F8];
  }

  topLabel11 = [(TLKAuxilliaryTextView *)self topLabel];
  [contentView2 setCustomSpacing:topLabel11 afterView:v55];

  if (v46)
  {
    v57 = +[TLKUtilities isMacOS];
    v58 = 2.0;
    if (v57)
    {
      v58 = 1.0;
    }
  }

  else
  {
    v58 = 0.0;
    if ((isHidden2 & 1) == 0)
    {
      v59 = +[TLKUtilities isMacOS];
      v60 = -2.5;
      if (v59)
      {
        v60 = -3.0;
      }

      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v60];
    }
  }

  [(TLKAuxilliaryTextView *)self setLayoutMargins:v58, 0.0, 0.0, 0.0];
}

- (id)middleLabelFont
{
  middleLabel = [(TLKAuxilliaryTextView *)self middleLabel];
  font = [middleLabel font];

  return font;
}

- (id)bottomLabelFont
{
  bottomLabel = [(TLKAuxilliaryTextView *)self bottomLabel];
  font = [bottomLabel font];

  return font;
}

- (id)topLabelString
{
  topLabel = [(TLKAuxilliaryTextView *)self topLabel];
  text = [topLabel text];

  return text;
}

- (id)middleLabelString
{
  middleLabel = [(TLKAuxilliaryTextView *)self middleLabel];
  text = [middleLabel text];

  return text;
}

- (id)bottomLabelString
{
  bottomLabel = [(TLKAuxilliaryTextView *)self bottomLabel];
  text = [bottomLabel text];

  return text;
}

@end