@interface TLKLabel
+ (BOOL)stringStartsWithQuote:(id)quote;
+ (id)primaryLabel;
+ (id)secondaryLabel;
+ (id)tertiaryLabel;
- (BOOL)hasEmphasizedFormattingInRichText;
- (TLKFormattedText)formattedText;
- (TLKLabel)initWithProminence:(unint64_t)prominence;
- (UIEdgeInsets)unadjustedCustemAlignmentRectInsets;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)loadInlineImages;
- (void)performBatchUpdates:(id)updates;
- (void)setAttributedText:(id)text;
- (void)setCustomAlignmentRectInsets:(UIEdgeInsets)insets;
- (void)setFont:(id)font keepOriginal:(BOOL)original;
- (void)setFormattedText:(id)text;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setMultilineText:(id)text;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setProminence:(unint64_t)prominence;
- (void)setRichText:(id)text;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAdjustedProminence;
- (void)updateAttributedText;
- (void)updateWithAttributedString:(id)string;
- (void)updateWithString:(id)string;
@end

@implementation TLKLabel

+ (id)tertiaryLabel
{
  v2 = [objc_alloc(objc_opt_class()) initWithProminence:2];

  return v2;
}

- (void)updateAttributedText
{
  selfCopy = self;
  v106[1] = *MEMORY[0x1E69E9840];
  if ([(TLKLabel *)self attributedTextUpdateDisabled])
  {

    [(TLKLabel *)selfCopy setAttributedTextUpdateSkipped:1];
    return;
  }

  v3 = [TLKAppearance bestAppearanceForView:selfCopy];
  hasCustomTextColor = [(TLKLabel *)selfCopy hasCustomTextColor];
  isVibrant = [v3 isVibrant];
  v88 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  attributedText = [(TLKLabel *)selfCopy attributedText];
  v10 = [attributedText mutableCopy];

  overlayLabelForNonColoredGlyphs = [(TLKLabel *)selfCopy overlayLabelForNonColoredGlyphs];
  [overlayLabelForNonColoredGlyphs removeFromSuperview];

  overlayLabelForColoredGlyphs = [(TLKLabel *)selfCopy overlayLabelForColoredGlyphs];
  [overlayLabelForColoredGlyphs removeFromSuperview];

  richText = [(TLKLabel *)selfCopy richText];

  v85 = v3;
  v86 = v8;
  v87 = v6;
  if (richText)
  {
    v83 = isVibrant;
    v81 = hasCustomTextColor;
    [(TLKLabel *)selfCopy updateWithAttributedString:0];
    richText2 = [(TLKLabel *)selfCopy richText];
    adjustedProminence = [(TLKLabel *)selfCopy adjustedProminence];
    textAlignment = [(TLKLabel *)selfCopy textAlignment];
    [(TLKLabel *)selfCopy font];
    v18 = v17 = v7;
    useButtonColoring = [(TLKLabel *)selfCopy useButtonColoring];
    [(TLKLabel *)selfCopy effectiveScreenScale];
    v21 = v20;
    BYTE1(v79) = [v3 isDark];
    LOBYTE(v79) = useButtonColoring;
    v8 = v86;
    v22 = textAlignment;
    v6 = v87;
    v23 = [TLKFontUtilities attributedStringForRichText:richText2 appearance:v3 prominence:adjustedProminence alignment:v22 coloredRanges:v87 nonColoredRanges:v88 rangesForNonTemplateImageAttachments:v21 rangesForTemplateImageAttachments:v17 font:v86 isButton:v18 scale:v79 isDark:?];

    v7 = v17;
    allKeys = [v17 allKeys];
    [v87 addObjectsFromArray:allKeys];

    v25 = [v23 length];
    if (-[TLKLabel supportsColorGlyphs](selfCopy, "supportsColorGlyphs") && (([v87 count] == 0) & v83) == 1)
    {
      [v23 fixAttributesInRange:{0, v25}];
      [v88 removeAllObjects];
      v26 = *MEMORY[0x1E69DB648];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __32__TLKLabel_updateAttributedText__block_invoke;
      v100[3] = &unk_1E7FD9050;
      v101 = v87;
      v102 = v88;
      [v23 enumerateAttribute:v26 inRange:0 options:v25 usingBlock:{0, v100}];
    }

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v28 = [defaultParagraphStyle mutableCopy];

    [v28 setLineBreakMode:{-[TLKLabel lineBreakMode](selfCopy, "lineBreakMode")}];
    [v28 setAlignment:{-[TLKLabel textAlignment](selfCopy, "textAlignment")}];
    [(TLKLabel *)selfCopy unadjustedCustemAlignmentRectInsets];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if ([v23 length] >= 2)
    {
      v80 = v25;
      v37 = [v23 attributedSubstringFromRange:{1, 1}];
      v38 = objc_opt_class();
      string = [v23 string];
      if ([v38 stringStartsWithQuote:string])
      {
        string2 = [v37 string];
        whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v42 = [string2 rangeOfCharacterFromSet:whitespaceCharacterSet];

        v8 = v86;
        v43 = v42 == 0x7FFFFFFFFFFFFFFFLL;
        v6 = v87;
        if (v43)
        {
          v44 = [v23 attributedSubstringFromRange:{0, 2}];
          [v44 size];
          v46 = v45;
          [v37 size];
          [TLKLayoutUtilities roundedValue:selfCopy inView:v46 - v47];
          v32 = v48;

          [v28 setHeadIndent:v32];
        }
      }

      else
      {
      }

      v7 = v17;
      v25 = v80;
    }

    v99.receiver = selfCopy;
    v99.super_class = TLKLabel;
    [(TLKLabel *)&v99 setCustomAlignmentRectInsets:v30, v32, v34, v36];
    v105 = *MEMORY[0x1E69DB688];
    v106[0] = v28;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    [v23 addAttributes:v49 range:{0, v25}];

    hasCustomTextColor = v81;
    isVibrant = v83;
  }

  else
  {
    v23 = v10;
  }

  [v23 length];
  if ((([v6 count] != 0) & isVibrant) == 1)
  {
    v84 = selfCopy;
    v50 = v23;
    v51 = [v50 mutableCopy];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __32__TLKLabel_updateAttributedText__block_invoke_2;
    v97[3] = &unk_1E7FD9078;
    v52 = v51;
    v98 = v52;
    v82 = v7;
    [v7 enumerateKeysAndObjectsUsingBlock:v97];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v53 = v6;
    v54 = [v53 countByEnumeratingWithState:&v93 objects:v104 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v94;
      v57 = *MEMORY[0x1E69DB650];
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v94 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v59 = *(*(&v93 + 1) + 8 * i);
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          rangeValue = [v59 rangeValue];
          [v52 addAttribute:v57 value:clearColor range:{rangeValue, v62}];
        }

        v55 = [v53 countByEnumeratingWithState:&v93 objects:v104 count:16];
      }

      while (v55);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v63 = v88;
    v64 = [v63 countByEnumeratingWithState:&v89 objects:v103 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v90;
      v67 = *MEMORY[0x1E69DB650];
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v90 != v66)
          {
            objc_enumerationMutation(v63);
          }

          v69 = *(*(&v89 + 1) + 8 * j);
          clearColor2 = [MEMORY[0x1E69DC888] clearColor];
          rangeValue2 = [v69 rangeValue];
          [v50 addAttribute:v67 value:clearColor2 range:{rangeValue2, v72}];
        }

        v65 = [v63 countByEnumeratingWithState:&v89 objects:v103 count:16];
      }

      while (v65);
    }

    selfCopy = v84;
    [(TLKLabel *)v84 updateWithAttributedString:v50];
    overlayLabelForNonColoredGlyphs2 = [(TLKLabel *)v84 overlayLabelForNonColoredGlyphs];
    if (!overlayLabelForNonColoredGlyphs2)
    {
      overlayLabelForNonColoredGlyphs2 = objc_opt_new();
      [overlayLabelForNonColoredGlyphs2 setNumberOfLines:{-[TLKLabel numberOfLines](v84, "numberOfLines")}];
      [overlayLabelForNonColoredGlyphs2 setTextAlignment:{-[TLKLabel textAlignment](v84, "textAlignment")}];
      [overlayLabelForNonColoredGlyphs2 setLineBreakMode:{-[TLKLabel lineBreakMode](v84, "lineBreakMode")}];
      [(TLKLabel *)v84 setOverlayLabelForNonColoredGlyphs:overlayLabelForNonColoredGlyphs2];
    }

    font = [(TLKLabel *)v84 font];
    [overlayLabelForNonColoredGlyphs2 setFont:font];

    v3 = v85;
    v75 = [v85 colorForProminence:{-[TLKLabel adjustedProminence](v84, "adjustedProminence")}];
    [overlayLabelForNonColoredGlyphs2 setTextColor:v75];

    [overlayLabelForNonColoredGlyphs2 setAttributedText:v52];
    [(TLKLabel *)v84 addSubview:overlayLabelForNonColoredGlyphs2];
    [v85 enableAppearanceForView:overlayLabelForNonColoredGlyphs2];
    [(TLKLabel *)v84 setNeedsLayout];

    v8 = v86;
    v6 = v87;
    v7 = v82;
  }

  else
  {
    richText3 = [(TLKLabel *)selfCopy richText];

    if (richText3)
    {
      [(TLKLabel *)selfCopy updateWithAttributedString:v23];
    }

    if (!hasCustomTextColor)
    {
      [v3 enableAppearanceForView:selfCopy];
      goto LABEL_41;
    }
  }

  [v3 disableAppearanceForView:selfCopy];
LABEL_41:
  text = [(TLKLabel *)selfCopy text];
  v78 = [text length];

  if (!v78)
  {
    [(TLKLabel *)selfCopy updateWithString:@" "];
  }
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = TLKLabel;
  [(TLKLabel *)&v21 layoutSubviews];
  [(TLKLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  overlayLabelForNonColoredGlyphs = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [overlayLabelForNonColoredGlyphs setFrame:{v4, v6, v8, v10}];

  [(TLKLabel *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  overlayLabelForColoredGlyphs = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [overlayLabelForColoredGlyphs setFrame:{v13, v15, v17, v19}];
}

- (void)loadInlineImages
{
  richText = [(TLKLabel *)self richText];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__TLKLabel_loadInlineImages__block_invoke;
  v5[3] = &unk_1E7FD8DA8;
  v6 = richText;
  selfCopy = self;
  v4 = richText;
  [TLKFontUtilities cacheInlineImagesForRichText:v4 inView:self updateHandler:v5];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKLabel;
  [(TLKLabel *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

void __32__TLKLabel_updateAttributedText__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 fontDescriptor];
  v8 = [v7 symbolicTraits];
  v9 = 32;
  if ((v8 & 0x2000) == 0)
  {
    v9 = 40;
  }

  v10 = *(a1 + v9);

  v11 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
  [v10 addObject:v11];
}

- (UIEdgeInsets)unadjustedCustemAlignmentRectInsets
{
  objc_copyStruct(v6, &self->_unadjustedCustemAlignmentRectInsets, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)updateAdjustedProminence
{
  prominence = [(TLKLabel *)self prominence];
  if (!prominence)
  {
    prominence = [(TLKLabel *)self hasEmphasizedFormattingInRichText];
  }

  [(TLKLabel *)self setAdjustedProminence:prominence];
}

- (BOOL)hasEmphasizedFormattingInRichText
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  richText = [(TLKLabel *)self richText];
  formattedTextItems = [richText formattedTextItems];

  v4 = [formattedTextItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(formattedTextItems);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEmphasized])
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [formattedTextItems countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

+ (id)primaryLabel
{
  v2 = [objc_alloc(objc_opt_class()) initWithProminence:0];

  return v2;
}

+ (id)secondaryLabel
{
  v2 = [objc_alloc(objc_opt_class()) initWithProminence:1];

  return v2;
}

- (TLKLabel)initWithProminence:(unint64_t)prominence
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  v4 = [(TLKLabel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TLKLabel *)v4 setOpaque:0];
    v5->_prominence = prominence;
    v5->_hasCustomTextColor = 0;
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKLabel;
  [(TLKLabel *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKLabel *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKLabel *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setFont:(id)font keepOriginal:(BOOL)original
{
  fontCopy = font;
  font = [(TLKLabel *)self font];

  if (font != fontCopy)
  {
    if (!original)
    {
      originalFont = self->_originalFont;
      self->_originalFont = 0;
    }

    v11.receiver = self;
    v11.super_class = TLKLabel;
    [(TLKLabel *)&v11 setFont:fontCopy];
    overlayLabelForNonColoredGlyphs = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
    [overlayLabelForNonColoredGlyphs setFont:fontCopy];

    overlayLabelForColoredGlyphs = [(TLKLabel *)self overlayLabelForColoredGlyphs];
    [overlayLabelForColoredGlyphs setFont:fontCopy];

    [(TLKLabel *)self updateAttributedText];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  [(TLKLabel *)&v7 setTextAlignment:?];
  overlayLabelForNonColoredGlyphs = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [overlayLabelForNonColoredGlyphs setTextAlignment:alignment];

  overlayLabelForColoredGlyphs = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [overlayLabelForColoredGlyphs setTextAlignment:alignment];

  [(TLKLabel *)self updateAttributedText];
}

- (void)setText:(id)text
{
  textCopy = text;
  [(TLKLabel *)self updateWithString:0];
  if (textCopy)
  {
    v4 = [(TLKMultilineText *)TLKRichText textWithString:textCopy];
  }

  else
  {
    v4 = 0;
  }

  [v4 setMaxLines:{-[TLKLabel numberOfLines](self, "numberOfLines")}];
  [(TLKLabel *)self setRichText:v4];
}

- (void)setMultilineText:(id)text
{
  textCopy = text;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = textCopy;
  }

  else
  {
    v5 = textCopy;
    if (textCopy)
    {
      v4 = objc_opt_new();
      v5 = textCopy;
    }

    else
    {
      v4 = 0;
    }

    text = [v5 text];
    [v4 setText:text];

    [v4 setMaxLines:{objc_msgSend(textCopy, "maxLines")}];
  }

  [(TLKLabel *)self setRichText:v4];
}

- (TLKFormattedText)formattedText
{
  richText = [(TLKLabel *)self richText];
  formattedTextItems = [richText formattedTextItems];
  firstObject = [formattedTextItems firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  richText2 = [(TLKLabel *)self richText];
  v8 = richText2;
  if (isKindOfClass)
  {
    formattedTextItems2 = [richText2 formattedTextItems];
    firstObject2 = [formattedTextItems2 firstObject];
  }

  else
  {
    if (richText2)
    {
      richText3 = [(TLKLabel *)self richText];
      text = [richText3 text];
      firstObject2 = [TLKFormattedText formattedTextWithString:text];
    }

    else
    {
      firstObject2 = 0;
    }

    [firstObject2 setMaxLines:{-[TLKRichText maxLines](self->_richText, "maxLines")}];
  }

  return firstObject2;
}

- (void)setFormattedText:(id)text
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (text)
  {
    textCopy = text;
    v5 = objc_opt_new();
    v7[0] = textCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    [v5 setFormattedTextItems:v6];
  }

  else
  {
    v5 = 0;
  }

  [(TLKLabel *)self setRichText:v5];
}

- (void)setRichText:(id)text
{
  textCopy = text;
  if (!textCopy)
  {
    [(TLKLabel *)self updateWithAttributedString:0];
  }

  adjustedProminence = [(TLKLabel *)self adjustedProminence];
  objc_storeStrong(&self->_richText, text);
  if (textCopy)
  {
    maxLines = [textCopy maxLines];
    if (!maxLines)
    {
      formattedTextItems = [textCopy formattedTextItems];
      if ([formattedTextItems count] == 1)
      {
        formattedTextItems2 = [textCopy formattedTextItems];
        firstObject = [formattedTextItems2 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          maxLines = 0;
          goto LABEL_11;
        }

        formattedTextItems = [textCopy formattedTextItems];
        firstObject2 = [formattedTextItems firstObject];
        maxLines = [firstObject2 maxLines];
      }

      else
      {
        maxLines = 0;
      }
    }

LABEL_11:
    [(TLKLabel *)self setNumberOfLines:maxLines];
  }

  [(TLKLabel *)self loadInlineImages];
  [(TLKLabel *)self updateAdjustedProminence];
  if (adjustedProminence == [(TLKLabel *)self adjustedProminence]|| ([(TLKLabel *)self window], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    [(TLKLabel *)self updateAttributedText];
  }

  else
  {
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setAttributedText:(id)text
{
  richText = self->_richText;
  self->_richText = 0;
  textCopy = text;

  [(TLKLabel *)self updateWithAttributedString:textCopy];
  if ([(TLKLabel *)self supportsColorGlyphs])
  {

    [(TLKLabel *)self updateAttributedText];
  }
}

- (void)setProminence:(unint64_t)prominence
{
  if (self->_prominence != prominence)
  {
    self->_prominence = prominence;
    [(TLKLabel *)self updateAdjustedProminence];

    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

void __28__TLKLabel_loadInlineImages__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__TLKLabel_loadInlineImages__block_invoke_2;
  v4[3] = &unk_1E7FD8DA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  [TLKUtilities dispatchMainIfNecessary:v4];
}

void __28__TLKLabel_loadInlineImages__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) richText];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 updateAttributedText];
  }
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v8.receiver = self;
  v8.super_class = TLKLabel;
  [(UIView *)&v8 tlk_updateForAppearance:appearanceCopy];
  superview = [(TLKLabel *)self superview];
  [appearanceCopy enableAppearanceForContainer:superview];

  [(TLKLabel *)self loadInlineImages];
  if (![(TLKLabel *)self hasCustomTextColor])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__TLKLabel_tlk_updateForAppearance___block_invoke;
    v6[3] = &unk_1E7FD8DA8;
    v6[4] = self;
    v7 = appearanceCopy;
    [(TLKLabel *)self performBatchUpdates:v6];
  }
}

void __36__TLKLabel_tlk_updateForAppearance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attributedText];
  v3 = [*(a1 + 32) attributedTextExplicitelySet];
  [*(a1 + 32) updateWithAttributedString:0];
  v4 = [*(a1 + 32) useButtonColoring];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) adjustedProminence];
  if (v4)
  {
    [v5 buttonColorForProminence:v6];
  }

  else
  {
    [v5 colorForProminence:v6];
  }
  v7 = ;
  v12.receiver = *(a1 + 32);
  v12.super_class = TLKLabel;
  objc_msgSendSuper2(&v12, sel_setTextColor_, v7);

  v8 = [*(a1 + 32) textColor];
  v9 = [*(a1 + 32) overlayLabelForNonColoredGlyphs];
  [v9 setTextColor:v8];

  v10 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) updateWithAttributedString:v2];
  }

  else
  {
    v11 = [v2 string];
    [v10 updateWithString:v11];
  }

  [*(a1 + 32) updateAttributedText];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  textColor = [(TLKLabel *)self textColor];

  if (textColor != colorCopy)
  {
    [(TLKLabel *)self setHasCustomTextColor:colorCopy != 0];
    if (colorCopy)
    {
      v12.receiver = self;
      v12.super_class = TLKLabel;
      [(TLKLabel *)&v12 setTextColor:colorCopy];
      overlayLabelForNonColoredGlyphs = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
      superview = [overlayLabelForNonColoredGlyphs superview];

      if (superview)
      {
        overlayLabelForNonColoredGlyphs2 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
        [overlayLabelForNonColoredGlyphs2 setTextColor:colorCopy];
      }

      overlayLabelForColoredGlyphs = [(TLKLabel *)self overlayLabelForColoredGlyphs];
      superview2 = [overlayLabelForColoredGlyphs superview];

      if (superview2)
      {
        overlayLabelForColoredGlyphs2 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
        [overlayLabelForColoredGlyphs2 setTextColor:colorCopy];
      }

      [(TLKLabel *)self updateAttributedText];
    }

    else
    {
      [(UIView *)self tlk_updateWithCurrentAppearance];
    }
  }
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  [(TLKLabel *)self setAttributedTextUpdateDisabled:1];
  updatesCopy[2](updatesCopy);

  [(TLKLabel *)self setAttributedTextUpdateDisabled:0];
  if ([(TLKLabel *)self attributedTextUpdateSkipped])
  {
    [(TLKLabel *)self updateAttributedText];

    [(TLKLabel *)self setAttributedTextUpdateSkipped:0];
  }
}

void __32__TLKLabel_updateAttributedText__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14 = [TLKFontUtilities clearTextAttachmentForTextAttachment:a3];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x1E69DB5F8];
  v8 = [v5 rangeValue];
  [v6 removeAttribute:v7 range:{v8, v9}];
  v10 = *(a1 + 32);
  v11 = [v5 rangeValue];
  v13 = v12;

  [v10 addAttribute:v7 value:v14 range:{v11, v13}];
}

+ (BOOL)stringStartsWithQuote:(id)quote
{
  v3 = stringStartsWithQuote__onceToken;
  quoteCopy = quote;
  if (v3 != -1)
  {
    +[TLKLabel stringStartsWithQuote:];
  }

  v5 = stringStartsWithQuote__quoteCharacters;
  v6 = [quoteCopy substringToIndex:1];

  v7 = [v5 containsObject:v6];
  return v7;
}

uint64_t __34__TLKLabel_stringStartsWithQuote___block_invoke()
{
  stringStartsWithQuote__quoteCharacters = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3AA8328];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setCustomAlignmentRectInsets:(UIEdgeInsets)insets
{
  [(TLKLabel *)self setUnadjustedCustemAlignmentRectInsets:insets.top, insets.left, insets.bottom, insets.right];

  [(TLKLabel *)self updateAttributedText];
}

- (void)updateWithAttributedString:(id)string
{
  stringCopy = string;
  if ([(TLKLabel *)self autoHideIfNoContent])
  {
    -[TLKLabel setHidden:](self, "setHidden:", [stringCopy length] == 0);
  }

  [(TLKLabel *)self setAttributedTextExplicitelySet:stringCopy != 0];
  v5.receiver = self;
  v5.super_class = TLKLabel;
  [(TLKLabel *)&v5 setAttributedText:stringCopy];
}

- (void)updateWithString:(id)string
{
  stringCopy = string;
  [(TLKLabel *)self setAttributedTextExplicitelySet:0];
  v5.receiver = self;
  v5.super_class = TLKLabel;
  [(TLKLabel *)&v5 setText:stringCopy];
}

- (void)setLineBreakMode:(int64_t)mode
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  [(TLKLabel *)&v7 setLineBreakMode:?];
  overlayLabelForNonColoredGlyphs = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [overlayLabelForNonColoredGlyphs setLineBreakMode:mode];

  overlayLabelForColoredGlyphs = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [overlayLabelForColoredGlyphs setLineBreakMode:mode];
}

- (void)setNumberOfLines:(int64_t)lines
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  [(TLKLabel *)&v7 setNumberOfLines:?];
  overlayLabelForNonColoredGlyphs = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [overlayLabelForNonColoredGlyphs setNumberOfLines:lines];

  overlayLabelForColoredGlyphs = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [overlayLabelForColoredGlyphs setNumberOfLines:lines];
}

@end