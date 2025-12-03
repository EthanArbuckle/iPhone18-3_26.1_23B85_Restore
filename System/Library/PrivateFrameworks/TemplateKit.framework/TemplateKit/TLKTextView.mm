@interface TLKTextView
- (CGSize)intrinsicContentSize;
- (TLKTextView)init;
- (double)effectiveBaselineOffsetFromBottom;
- (double)effectiveFirstBaselineOffsetFromTop;
- (void)didMoveToWindow;
- (void)loadInlineImages;
- (void)setMultilineText:(id)text;
- (void)setProminence:(unint64_t)prominence;
- (void)setText:(id)text;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
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
    textContainer = [(TLKTextView *)v3 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    textContainer2 = [(TLKTextView *)v3 textContainer];
    [textContainer2 setLineBreakMode:4];

    [(TLKTextView *)v3 setEditable:0];
    [(TLKTextView *)v3 setSelectable:1];
  }

  return v3;
}

- (void)setProminence:(unint64_t)prominence
{
  if (self->_prominence != prominence)
  {
    self->_prominence = prominence;
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setText:(id)text
{
  if (text)
  {
    v5 = [TLKMultilineText textWithString:?];
  }

  else
  {
    v5 = 0;
  }

  textContainer = [(TLKTextView *)self textContainer];
  [v5 setMaxLines:{objc_msgSend(textContainer, "maximumNumberOfLines")}];

  [(TLKTextView *)self setMultilineText:v5];
}

- (void)setMultilineText:(id)text
{
  objc_storeStrong(&self->_multilineText, text);
  textCopy = text;
  [(TLKTextView *)self loadInlineImages];
  [(TLKTextView *)self updateAttributedString];
  maxLines = [textCopy maxLines];

  textContainer = [(TLKTextView *)self textContainer];
  [textContainer setMaximumNumberOfLines:maxLines];

  [(TLKTextView *)self invalidateIntrinsicContentSize];
}

- (void)loadInlineImages
{
  multilineText = [(TLKTextView *)self multilineText];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    multilineText2 = [(TLKTextView *)self multilineText];
  }

  else
  {
    multilineText2 = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__TLKTextView_loadInlineImages__block_invoke;
  v6[3] = &unk_1E7FD8DA8;
  v7 = multilineText2;
  selfCopy = self;
  v5 = multilineText2;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKTextView;
  [(TLKTextView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKTextView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKTextView *)self traitCollection];
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
  v3.super_class = TLKTextView;
  [(TLKTextView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)urlify
{
  v28 = *MEMORY[0x1E69E9840];
  textStorage = [(TLKTextView *)self textStorage];
  string = [textStorage string];
  if ([string length])
  {
    textStorage2 = [objc_alloc(MEMORY[0x1E6999A90]) initWithScannerType:1 passiveIntent:1];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [MEMORY[0x1E6999A88] scanString:string range:0 configuration:{objc_msgSend(string, "length"), textStorage2}];
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      selfCopy = self;
      v19 = textStorage2;
      v20 = string;
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
          scheme = [v13 scheme];
          lowercaseString = [scheme lowercaseString];

          if (([lowercaseString isEqualToString:@"http"] & 1) != 0 || objc_msgSend(lowercaseString, "isEqualToString:", @"https"))
          {
            if (!v8)
            {
              v8 = [textStorage mutableCopy];
            }

            urlificationRange = [v12 urlificationRange];
            [v8 addAttribute:v10 value:v13 range:{urlificationRange, v17}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);

      if (!v8)
      {
        string = v20;
        goto LABEL_20;
      }

      v22.receiver = selfCopy;
      v22.super_class = TLKTextView;
      [(TLKTextView *)&v22 setText:&stru_1F3A9C928];
      textStorage2 = [(TLKTextView *)selfCopy textStorage];
      [textStorage2 appendAttributedString:v8];
      string = v20;
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

- (void)tlk_updateForAppearance:(id)appearance
{
  v4.receiver = self;
  v4.super_class = TLKTextView;
  [(UIView *)&v4 tlk_updateForAppearance:appearance];
  [(TLKTextView *)self loadInlineImages];
  [(TLKTextView *)self updateAttributedString];
}

- (void)updateAttributedString
{
  v3 = [TLKAppearance bestAppearanceForView:self];
  attributedText = [(TLKTextView *)self attributedText];
  v5 = [attributedText copy];

  v33.receiver = self;
  v33.super_class = TLKTextView;
  [(TLKTextView *)&v33 setText:&stru_1F3A9C928];
  multilineText = [(TLKTextView *)self multilineText];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  multilineText2 = [(TLKTextView *)self multilineText];
  v9 = multilineText2;
  if (isKindOfClass)
  {
    textStorage = [(TLKTextView *)self textStorage];
    prominence = [(TLKTextView *)self prominence];
    textAlignment = [(TLKTextView *)self textAlignment];
    font = [(TLKTextView *)self font];
    [(TLKTextView *)self effectiveScreenScale];
    v15 = v14;
    LOBYTE(v30) = [v3 isDark];
    v16 = [TLKFontUtilities attributedStringForRichText:v9 appearance:v3 prominence:prominence alignment:textAlignment font:font isButton:0 scale:v15 isDark:v30];
    [textStorage appendAttributedString:v16];

    attributedText2 = [(TLKTextView *)self attributedText];
    v18 = [attributedText2 length];

    if (!v18)
    {
      text = [v9 text];
      v20 = text;
      if (text)
      {
        v21 = text;
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
      textStorage2 = [(TLKTextView *)self textStorage];
      v23 = [v5 isEqual:textStorage2];

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
      multilineText3 = [(TLKTextView *)self multilineText];
      text2 = [multilineText3 text];
      v31.receiver = self;
      v31.super_class = TLKTextView;
      [(TLKTextView *)&v31 setText:text2];

      if ([(TLKTextView *)self automaticUrlification])
      {
        textStorage3 = [(TLKTextView *)self textStorage];
        v27 = [v5 isEqual:textStorage3];

        if ((v27 & 1) == 0)
        {
          [(TLKTextView *)self urlify];
        }
      }
    }

    else
    {
      textStorage4 = [(TLKTextView *)self textStorage];
      [textStorage4 setAttributedString:v5];
    }
  }

  v29 = [v3 colorForProminence:{-[TLKTextView prominence](self, "prominence")}];
  [(TLKTextView *)self setTextColor:v29];

  [v3 enableAppearanceForView:self];
}

- (CGSize)intrinsicContentSize
{
  textContainer = [(TLKTextView *)self textContainer];
  layoutManager = [(TLKTextView *)self layoutManager];
  [layoutManager ensureLayoutForTextContainer:textContainer];
  [layoutManager usedRectForTextContainer:textContainer];
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

  font = [(TLKTextView *)self font];
  [font ascender];
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

  font = [(TLKTextView *)self font];
  [font descender];
  [TLKLayoutUtilities deviceScaledRoundedValue:self forView:-v5];
  v7 = v6;

  return v7;
}

@end