@interface TLKTextView
- (CGSize)intrinsicContentSize;
- (TLKTextView)init;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (void)didMoveToWindow;
- (void)loadInlineImages;
- (void)setMultilineText:(id)a3;
- (void)setProminence:(unint64_t)a3;
- (void)setText:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAttributedString;
- (void)urlify;
@end

@implementation TLKTextView

- (TLKTextView)init
{
  v7.receiver = self;
  v7.super_class = TLKTextView;
  v2 = [(TLKTextView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(TLKTextView *)v2 setBackgroundColor:0];
    [(TLKTextView *)v3 setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(TLKTextView *)v3 setScrollEnabled:0];
    [(TLKTextView *)v3 setUserInteractionEnabled:0];
    v4 = [(TLKTextView *)v3 textContainer];
    [v4 setLineFragmentPadding:0.0];

    v5 = [(TLKTextView *)v3 textContainer];
    [v5 setLineBreakMode:4];

    [(TLKTextView *)v3 setEditable:0];
    [(TLKTextView *)v3 setSelectable:1];
  }

  return v3;
}

- (void)setProminence:(unint64_t)a3
{
  if (self->_prominence != a3)
  {
    self->_prominence = a3;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v5 = [TLKMultilineText textWithString:?];
  }

  else
  {
    v5 = 0;
  }

  v4 = [(TLKTextView *)self textContainer];
  [v5 setMaxLines:{objc_msgSend(v4, "maximumNumberOfLines")}];

  [(TLKTextView *)self setMultilineText:v5];
}

- (void)setMultilineText:(id)a3
{
  objc_storeStrong(&self->_multilineText, a3);
  v5 = a3;
  [(TLKTextView *)self loadInlineImages];
  [(TLKTextView *)self updateAttributedString];
  v6 = [v5 maxLines];

  v7 = [(TLKTextView *)self textContainer];
  [v7 setMaximumNumberOfLines:v6];

  [(TLKTextView *)self invalidateIntrinsicContentSize];
}

- (void)loadInlineImages
{
  v3 = [(TLKTextView *)self multilineText];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(TLKTextView *)self multilineText];
  }

  else
  {
    v4 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__TLKTextView_loadInlineImages__block_invoke;
  v6[3] = &unk_1E7FD8DA8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [TLKFontUtilities cacheInlineImagesForRichText:v5 inView:self updateHandler:v6];
}

void __31__TLKTextView_loadInlineImages__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__TLKTextView_loadInlineImages__block_invoke_2;
  v4[3] = &unk_1E7FD8DA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  [TLKUtilities dispatchMainIfNecessary:v4];
}

void __31__TLKTextView_loadInlineImages__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) multilineText];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 updateAttributedString];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKTextView;
  [(TLKTextView *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKTextView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKTextView *)self traitCollection];
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
  v3.super_class = TLKTextView;
  [(TLKTextView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)urlify
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = [(TLKTextView *)self textStorage];
  v3 = [v21 string];
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:1 passiveIntent:1];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [MEMORY[0x1E6999A88] scanString:v3 range:0 configuration:{objc_msgSend(v3, "length"), v4}];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v18 = self;
      v19 = v4;
      v20 = v3;
      v8 = 0;
      v9 = *v24;
      v10 = *MEMORY[0x1E69DB670];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 url];
          v14 = [v13 scheme];
          v15 = [v14 lowercaseString];

          if (([v15 isEqualToString:@"http"] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", @"https"))
          {
            if (!v8)
            {
              v8 = [v21 mutableCopy];
            }

            v16 = [v12 urlificationRange];
            [v8 addAttribute:v10 value:v13 range:{v16, v17}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);

      if (!v8)
      {
        v3 = v20;
        goto LABEL_20;
      }

      v22.receiver = v18;
      v22.super_class = TLKTextView;
      [(TLKTextView *)&v22 setText:&stru_1F3A9C928];
      v4 = [(TLKTextView *)v18 textStorage];
      [v4 appendAttributedString:v8];
      v3 = v20;
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_20:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4.receiver = self;
  v4.super_class = TLKTextView;
  [(UIView *)&v4 tlk_updateForAppearance:a3];
  [(TLKTextView *)self loadInlineImages];
  [(TLKTextView *)self updateAttributedString];
}

- (void)updateAttributedString
{
  v3 = [TLKAppearance bestAppearanceForView:self];
  v4 = [(TLKTextView *)self attributedText];
  v5 = [v4 copy];

  v33.receiver = self;
  v33.super_class = TLKTextView;
  [(TLKTextView *)&v33 setText:&stru_1F3A9C928];
  v6 = [(TLKTextView *)self multilineText];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [(TLKTextView *)self multilineText];
  v9 = v8;
  if (isKindOfClass)
  {
    v10 = [(TLKTextView *)self textStorage];
    v11 = [(TLKTextView *)self prominence];
    v12 = [(TLKTextView *)self textAlignment];
    v13 = [(TLKTextView *)self font];
    [(TLKTextView *)self effectiveScreenScale];
    v15 = v14;
    LOBYTE(v30) = [v3 isDark];
    v16 = [TLKFontUtilities attributedStringForRichText:v9 appearance:v3 prominence:v11 alignment:v12 font:v13 isButton:0 scale:v15 isDark:v30];
    [v10 appendAttributedString:v16];

    v17 = [(TLKTextView *)self attributedText];
    v18 = [v17 length];

    if (!v18)
    {
      v19 = [v9 text];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = &stru_1F3A9C928;
      }

      v32.receiver = self;
      v32.super_class = TLKTextView;
      [(TLKTextView *)&v32 setText:v21];
    }

    if ([(TLKTextView *)self automaticUrlification])
    {
      v22 = [(TLKTextView *)self textStorage];
      v23 = [v5 isEqual:v22];

      if ((v23 & 1) == 0)
      {
        [(TLKTextView *)self urlify];
      }
    }
  }

  else
  {

    if (v9)
    {
      v24 = [(TLKTextView *)self multilineText];
      v25 = [v24 text];
      v31.receiver = self;
      v31.super_class = TLKTextView;
      [(TLKTextView *)&v31 setText:v25];

      if ([(TLKTextView *)self automaticUrlification])
      {
        v26 = [(TLKTextView *)self textStorage];
        v27 = [v5 isEqual:v26];

        if ((v27 & 1) == 0)
        {
          [(TLKTextView *)self urlify];
        }
      }
    }

    else
    {
      v28 = [(TLKTextView *)self textStorage];
      [v28 setAttributedString:v5];
    }
  }

  v29 = [v3 colorForProminence:{-[TLKTextView prominence](self, "prominence")}];
  [(TLKTextView *)self setTextColor:v29];

  [v3 enableAppearanceForView:self];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(TLKTextView *)self textContainer];
  v4 = [(TLKTextView *)self layoutManager];
  [v4 ensureLayoutForTextContainer:v3];
  [v4 usedRectForTextContainer:v3];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)effectiveFirstBaselineOffsetFromTop
{
  v8.receiver = self;
  v8.super_class = TLKTextView;
  [(TLKTextView *)&v8 effectiveFirstBaselineOffsetFromTop];
  if (v3 != 0.0)
  {
    return v3;
  }

  v4 = [(TLKTextView *)self font];
  [v4 ascender];
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:?];
  v6 = v5;

  return v6;
}

- (double)effectiveBaselineOffsetFromBottom
{
  v9.receiver = self;
  v9.super_class = TLKTextView;
  [(TLKTextView *)&v9 effectiveBaselineOffsetFromBottom];
  if (v3 != 0.0)
  {
    return v3;
  }

  v4 = [(TLKTextView *)self font];
  [v4 descender];
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:-v5];
  v7 = v6;

  return v7;
}

@end