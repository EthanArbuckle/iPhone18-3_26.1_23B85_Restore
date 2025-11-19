@interface TLKAuxilliaryTextView
- (id)bottomLabelFont;
- (id)bottomLabelString;
- (id)middleLabelFont;
- (id)middleLabelString;
- (id)setupContentView;
- (id)topLabelString;
- (void)observedPropertiesChanged;
- (void)setBottomText:(id)a3;
- (void)setMiddleText:(id)a3;
- (void)setTopText:(id)a3;
@end

@implementation TLKAuxilliaryTextView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  [v3 setAxis:1];
  v4 = +[TLKLayoutUtilities isLTR];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

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

- (void)setTopText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_topText setObserver:0];
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_topText, a3);
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

- (void)setMiddleText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_middleText setObserver:0];
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_middleText, a3);
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

- (void)setBottomText:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_bottomText setObserver:0];
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_bottomText, a3);
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

- (void)observedPropertiesChanged
{
  v3 = [(TLKAuxilliaryTextView *)self topText];
  v4 = [(TLKAuxilliaryTextView *)self topLabel];
  [v4 setRichText:v3];

  v5 = [(TLKAuxilliaryTextView *)self middleText];
  v6 = [(TLKAuxilliaryTextView *)self middleLabel];
  [v6 setRichText:v5];

  v7 = [(TLKAuxilliaryTextView *)self bottomText];
  v8 = [(TLKAuxilliaryTextView *)self bottomLabel];
  [v8 setRichText:v7];

  v9 = [(TLKAuxilliaryTextView *)self topText];
  LODWORD(v8) = [v9 hasContent];
  v10 = [(TLKAuxilliaryTextView *)self topLabel];
  [v10 setHidden:v8 ^ 1];

  v11 = [(TLKAuxilliaryTextView *)self middleText];
  LODWORD(v8) = [v11 hasContent];
  v12 = [(TLKAuxilliaryTextView *)self middleLabel];
  [v12 setHidden:v8 ^ 1];

  v13 = [(TLKAuxilliaryTextView *)self bottomText];
  LODWORD(v8) = [v13 hasContent];
  v14 = [(TLKAuxilliaryTextView *)self bottomLabel];
  [v14 setHidden:v8 ^ 1];

  v15 = [(TLKAuxilliaryTextView *)self middleLabel];
  if ([v15 isHidden])
  {
    v14 = [(TLKAuxilliaryTextView *)self bottomLabel];
    if ([v14 isHidden])
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

  v17 = [(TLKAuxilliaryTextView *)self topLabel];
  [v17 setProminence:v16];

  v18 = [(TLKAuxilliaryTextView *)self topLabel];
  v19 = [v18 isHidden];
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v14 = [(TLKAuxilliaryTextView *)self bottomLabel];
    v20 = [v14 isHidden] ^ 1;
  }

  v21 = [(TLKAuxilliaryTextView *)self middleLabel];
  [v21 setProminence:v20];

  if ((v19 & 1) == 0)
  {
  }

  v22 = [(TLKAuxilliaryTextView *)self topLabel];
  if ([v22 isHidden])
  {
    v23 = [(TLKAuxilliaryTextView *)self bottomLabel];
    v24 = [v23 isHidden];
  }

  else
  {
    v24 = 0;
  }

  v25 = [(TLKAuxilliaryTextView *)self topLabel];
  if ([v25 isHidden])
  {
    v26 = [(TLKAuxilliaryTextView *)self middleLabel];
    [v26 isHidden];
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
      v38 = [(TLKAuxilliaryTextView *)self topLabel];
      if ([v38 isHidden])
      {
        v39 = [(TLKAuxilliaryTextView *)self bottomLabel];
        v40 = [v39 isHidden];
        v41 = MEMORY[0x1E69DDDB8];
        if (!v40)
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

    v34 = [(TLKAuxilliaryTextView *)self topLabel];
    if ([v34 isHidden])
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

  v42 = [(TLKAuxilliaryTextView *)self topLabel];
  [v42 setFont:v61];

  v43 = [(TLKAuxilliaryTextView *)self middleLabel];
  [v43 setFont:v36];

  v44 = [(TLKAuxilliaryTextView *)self bottomLabel];
  [v44 setFont:v37];

  v45 = [(TLKAuxilliaryTextView *)self bottomLabel];
  if ([v45 isHidden])
  {
    v46 = 0;
  }

  else
  {
    v47 = [(TLKAuxilliaryTextView *)self middleLabel];
    if ([v47 isHidden])
    {
      v46 = 0;
    }

    else
    {
      v48 = [(TLKAuxilliaryTextView *)self topLabel];
      v46 = [v48 isHidden] ^ 1;
    }
  }

  v49 = +[TLKUtilities isMacOS];
  v50 = [(TLKAuxilliaryTextView *)self useCompactMode];
  if (v50 || v49)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = 2.0;
  }

  if (!v50 && (v46 & 1) == 0)
  {
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:0.5];
    v51 = v52;
  }

  v53 = [(TLKView *)self contentView];
  [v53 setSpacing:v51];

  v54 = [(TLKView *)self contentView];
  if (v46)
  {
    v55 = 2.0;
  }

  else
  {
    v55 = *MEMORY[0x1E698B6F8];
  }

  v56 = [(TLKAuxilliaryTextView *)self topLabel];
  [v54 setCustomSpacing:v56 afterView:v55];

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
    if ((v24 & 1) == 0)
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
  v2 = [(TLKAuxilliaryTextView *)self middleLabel];
  v3 = [v2 font];

  return v3;
}

- (id)bottomLabelFont
{
  v2 = [(TLKAuxilliaryTextView *)self bottomLabel];
  v3 = [v2 font];

  return v3;
}

- (id)topLabelString
{
  v2 = [(TLKAuxilliaryTextView *)self topLabel];
  v3 = [v2 text];

  return v3;
}

- (id)middleLabelString
{
  v2 = [(TLKAuxilliaryTextView *)self middleLabel];
  v3 = [v2 text];

  return v3;
}

- (id)bottomLabelString
{
  v2 = [(TLKAuxilliaryTextView *)self bottomLabel];
  v3 = [v2 text];

  return v3;
}

@end