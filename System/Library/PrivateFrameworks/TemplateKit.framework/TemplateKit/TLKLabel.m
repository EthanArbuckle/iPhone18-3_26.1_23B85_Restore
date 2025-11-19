@interface TLKLabel
+ (BOOL)stringStartsWithQuote:(id)a3;
+ (id)primaryLabel;
+ (id)secondaryLabel;
+ (id)tertiaryLabel;
- (BOOL)hasEmphasizedFormattingInRichText;
- (TLKFormattedText)formattedText;
- (TLKLabel)initWithProminence:(unint64_t)a3;
- (UIEdgeInsets)unadjustedCustemAlignmentRectInsets;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)loadInlineImages;
- (void)performBatchUpdates:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setCustomAlignmentRectInsets:(UIEdgeInsets)a3;
- (void)setFont:(id)a3 keepOriginal:(BOOL)a4;
- (void)setFormattedText:(id)a3;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setMultilineText:(id)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setProminence:(unint64_t)a3;
- (void)setRichText:(id)a3;
- (void)setText:(id)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTextColor:(id)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAdjustedProminence;
- (void)updateAttributedText;
- (void)updateWithAttributedString:(id)a3;
- (void)updateWithString:(id)a3;
@end

@implementation TLKLabel

+ (id)tertiaryLabel
{
  v2 = [objc_alloc(objc_opt_class()) initWithProminence:2];

  return v2;
}

- (void)updateAttributedText
{
  v2 = self;
  v106[1] = *MEMORY[0x1E69E9840];
  if ([(TLKLabel *)self attributedTextUpdateDisabled])
  {

    [(TLKLabel *)v2 setAttributedTextUpdateSkipped:1];
    return;
  }

  v3 = [TLKAppearance bestAppearanceForView:v2];
  v4 = [(TLKLabel *)v2 hasCustomTextColor];
  v5 = [v3 isVibrant];
  v88 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(TLKLabel *)v2 attributedText];
  v10 = [v9 mutableCopy];

  v11 = [(TLKLabel *)v2 overlayLabelForNonColoredGlyphs];
  [v11 removeFromSuperview];

  v12 = [(TLKLabel *)v2 overlayLabelForColoredGlyphs];
  [v12 removeFromSuperview];

  v13 = [(TLKLabel *)v2 richText];

  v85 = v3;
  v86 = v8;
  v87 = v6;
  if (v13)
  {
    v83 = v5;
    v81 = v4;
    [(TLKLabel *)v2 updateWithAttributedString:0];
    v14 = [(TLKLabel *)v2 richText];
    v15 = [(TLKLabel *)v2 adjustedProminence];
    v16 = [(TLKLabel *)v2 textAlignment];
    [(TLKLabel *)v2 font];
    v18 = v17 = v7;
    v19 = [(TLKLabel *)v2 useButtonColoring];
    [(TLKLabel *)v2 effectiveScreenScale];
    v21 = v20;
    BYTE1(v79) = [v3 isDark];
    LOBYTE(v79) = v19;
    v8 = v86;
    v22 = v16;
    v6 = v87;
    v23 = [TLKFontUtilities attributedStringForRichText:v14 appearance:v3 prominence:v15 alignment:v22 coloredRanges:v87 nonColoredRanges:v88 rangesForNonTemplateImageAttachments:v21 rangesForTemplateImageAttachments:v17 font:v86 isButton:v18 scale:v79 isDark:?];

    v7 = v17;
    v24 = [v17 allKeys];
    [v87 addObjectsFromArray:v24];

    v25 = [v23 length];
    if (-[TLKLabel supportsColorGlyphs](v2, "supportsColorGlyphs") && (([v87 count] == 0) & v83) == 1)
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

    v27 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v28 = [v27 mutableCopy];

    [v28 setLineBreakMode:{-[TLKLabel lineBreakMode](v2, "lineBreakMode")}];
    [v28 setAlignment:{-[TLKLabel textAlignment](v2, "textAlignment")}];
    [(TLKLabel *)v2 unadjustedCustemAlignmentRectInsets];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    if ([v23 length] >= 2)
    {
      v80 = v25;
      v37 = [v23 attributedSubstringFromRange:{1, 1}];
      v38 = objc_opt_class();
      v39 = [v23 string];
      if ([v38 stringStartsWithQuote:v39])
      {
        v40 = [v37 string];
        v41 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v42 = [v40 rangeOfCharacterFromSet:v41];

        v8 = v86;
        v43 = v42 == 0x7FFFFFFFFFFFFFFFLL;
        v6 = v87;
        if (v43)
        {
          v44 = [v23 attributedSubstringFromRange:{0, 2}];
          [v44 size];
          v46 = v45;
          [v37 size];
          [TLKLayoutUtilities roundedValue:v2 inView:v46 - v47];
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

    v99.receiver = v2;
    v99.super_class = TLKLabel;
    [(TLKLabel *)&v99 setCustomAlignmentRectInsets:v30, v32, v34, v36];
    v105 = *MEMORY[0x1E69DB688];
    v106[0] = v28;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    [v23 addAttributes:v49 range:{0, v25}];

    v4 = v81;
    v5 = v83;
  }

  else
  {
    v23 = v10;
  }

  [v23 length];
  if ((([v6 count] != 0) & v5) == 1)
  {
    v84 = v2;
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
          v60 = [MEMORY[0x1E69DC888] clearColor];
          v61 = [v59 rangeValue];
          [v52 addAttribute:v57 value:v60 range:{v61, v62}];
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
          v70 = [MEMORY[0x1E69DC888] clearColor];
          v71 = [v69 rangeValue];
          [v50 addAttribute:v67 value:v70 range:{v71, v72}];
        }

        v65 = [v63 countByEnumeratingWithState:&v89 objects:v103 count:16];
      }

      while (v65);
    }

    v2 = v84;
    [(TLKLabel *)v84 updateWithAttributedString:v50];
    v73 = [(TLKLabel *)v84 overlayLabelForNonColoredGlyphs];
    if (!v73)
    {
      v73 = objc_opt_new();
      [v73 setNumberOfLines:{-[TLKLabel numberOfLines](v84, "numberOfLines")}];
      [v73 setTextAlignment:{-[TLKLabel textAlignment](v84, "textAlignment")}];
      [v73 setLineBreakMode:{-[TLKLabel lineBreakMode](v84, "lineBreakMode")}];
      [(TLKLabel *)v84 setOverlayLabelForNonColoredGlyphs:v73];
    }

    v74 = [(TLKLabel *)v84 font];
    [v73 setFont:v74];

    v3 = v85;
    v75 = [v85 colorForProminence:{-[TLKLabel adjustedProminence](v84, "adjustedProminence")}];
    [v73 setTextColor:v75];

    [v73 setAttributedText:v52];
    [(TLKLabel *)v84 addSubview:v73];
    [v85 enableAppearanceForView:v73];
    [(TLKLabel *)v84 setNeedsLayout];

    v8 = v86;
    v6 = v87;
    v7 = v82;
  }

  else
  {
    v76 = [(TLKLabel *)v2 richText];

    if (v76)
    {
      [(TLKLabel *)v2 updateWithAttributedString:v23];
    }

    if (!v4)
    {
      [v3 enableAppearanceForView:v2];
      goto LABEL_41;
    }
  }

  [v3 disableAppearanceForView:v2];
LABEL_41:
  v77 = [(TLKLabel *)v2 text];
  v78 = [v77 length];

  if (!v78)
  {
    [(TLKLabel *)v2 updateWithString:@" "];
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
  v11 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(TLKLabel *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [v20 setFrame:{v13, v15, v17, v19}];
}

- (void)loadInlineImages
{
  v3 = [(TLKLabel *)self richText];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__TLKLabel_loadInlineImages__block_invoke;
  v5[3] = &unk_1E7FD8DA8;
  v6 = v3;
  v7 = self;
  v4 = v3;
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
  v3 = [(TLKLabel *)self prominence];
  if (!v3)
  {
    v3 = [(TLKLabel *)self hasEmphasizedFormattingInRichText];
  }

  [(TLKLabel *)self setAdjustedProminence:v3];
}

- (BOOL)hasEmphasizedFormattingInRichText
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TLKLabel *)self richText];
  v3 = [v2 formattedTextItems];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEmphasized])
        {
          LOBYTE(v4) = 1;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (TLKLabel)initWithProminence:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  v4 = [(TLKLabel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(TLKLabel *)v4 setOpaque:0];
    v5->_prominence = a3;
    v5->_hasCustomTextColor = 0;
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKLabel;
  [(TLKLabel *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKLabel *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKLabel *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)setFont:(id)a3 keepOriginal:(BOOL)a4
{
  v6 = a3;
  v7 = [(TLKLabel *)self font];

  if (v7 != v6)
  {
    if (!a4)
    {
      originalFont = self->_originalFont;
      self->_originalFont = 0;
    }

    v11.receiver = self;
    v11.super_class = TLKLabel;
    [(TLKLabel *)&v11 setFont:v6];
    v9 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
    [v9 setFont:v6];

    v10 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
    [v10 setFont:v6];

    [(TLKLabel *)self updateAttributedText];
  }
}

- (void)setTextAlignment:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  [(TLKLabel *)&v7 setTextAlignment:?];
  v5 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [v5 setTextAlignment:a3];

  v6 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [v6 setTextAlignment:a3];

  [(TLKLabel *)self updateAttributedText];
}

- (void)setText:(id)a3
{
  v5 = a3;
  [(TLKLabel *)self updateWithString:0];
  if (v5)
  {
    v4 = [(TLKMultilineText *)TLKRichText textWithString:v5];
  }

  else
  {
    v4 = 0;
  }

  [v4 setMaxLines:{-[TLKLabel numberOfLines](self, "numberOfLines")}];
  [(TLKLabel *)self setRichText:v4];
}

- (void)setMultilineText:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v7;
  }

  else
  {
    v5 = v7;
    if (v7)
    {
      v4 = objc_opt_new();
      v5 = v7;
    }

    else
    {
      v4 = 0;
    }

    v6 = [v5 text];
    [v4 setText:v6];

    [v4 setMaxLines:{objc_msgSend(v7, "maxLines")}];
  }

  [(TLKLabel *)self setRichText:v4];
}

- (TLKFormattedText)formattedText
{
  v3 = [(TLKLabel *)self richText];
  v4 = [v3 formattedTextItems];
  v5 = [v4 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(TLKLabel *)self richText];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 formattedTextItems];
    v10 = [v9 firstObject];
  }

  else
  {
    if (v7)
    {
      v11 = [(TLKLabel *)self richText];
      v12 = [v11 text];
      v10 = [TLKFormattedText formattedTextWithString:v12];
    }

    else
    {
      v10 = 0;
    }

    [v10 setMaxLines:{-[TLKRichText maxLines](self->_richText, "maxLines")}];
  }

  return v10;
}

- (void)setFormattedText:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = objc_opt_new();
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

    [v5 setFormattedTextItems:v6];
  }

  else
  {
    v5 = 0;
  }

  [(TLKLabel *)self setRichText:v5];
}

- (void)setRichText:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    [(TLKLabel *)self updateWithAttributedString:0];
  }

  v5 = [(TLKLabel *)self adjustedProminence];
  objc_storeStrong(&self->_richText, a3);
  if (v13)
  {
    v6 = [v13 maxLines];
    if (!v6)
    {
      v7 = [v13 formattedTextItems];
      if ([v7 count] == 1)
      {
        v8 = [v13 formattedTextItems];
        v9 = [v8 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v6 = 0;
          goto LABEL_11;
        }

        v7 = [v13 formattedTextItems];
        v11 = [v7 firstObject];
        v6 = [v11 maxLines];
      }

      else
      {
        v6 = 0;
      }
    }

LABEL_11:
    [(TLKLabel *)self setNumberOfLines:v6];
  }

  [(TLKLabel *)self loadInlineImages];
  [(TLKLabel *)self updateAdjustedProminence];
  if (v5 == [(TLKLabel *)self adjustedProminence]|| ([(TLKLabel *)self window], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    [(TLKLabel *)self updateAttributedText];
  }

  else
  {
    [(UIView *)self tlk_updateWithCurrentAppearance];
  }
}

- (void)setAttributedText:(id)a3
{
  richText = self->_richText;
  self->_richText = 0;
  v5 = a3;

  [(TLKLabel *)self updateWithAttributedString:v5];
  if ([(TLKLabel *)self supportsColorGlyphs])
  {

    [(TLKLabel *)self updateAttributedText];
  }
}

- (void)setProminence:(unint64_t)a3
{
  if (self->_prominence != a3)
  {
    self->_prominence = a3;
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

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TLKLabel;
  [(UIView *)&v8 tlk_updateForAppearance:v4];
  v5 = [(TLKLabel *)self superview];
  [v4 enableAppearanceForContainer:v5];

  [(TLKLabel *)self loadInlineImages];
  if (![(TLKLabel *)self hasCustomTextColor])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__TLKLabel_tlk_updateForAppearance___block_invoke;
    v6[3] = &unk_1E7FD8DA8;
    v6[4] = self;
    v7 = v4;
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

- (void)setTextColor:(id)a3
{
  v4 = a3;
  v5 = [(TLKLabel *)self textColor];

  if (v5 != v4)
  {
    [(TLKLabel *)self setHasCustomTextColor:v4 != 0];
    if (v4)
    {
      v12.receiver = self;
      v12.super_class = TLKLabel;
      [(TLKLabel *)&v12 setTextColor:v4];
      v6 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
      v7 = [v6 superview];

      if (v7)
      {
        v8 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
        [v8 setTextColor:v4];
      }

      v9 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
      v10 = [v9 superview];

      if (v10)
      {
        v11 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
        [v11 setTextColor:v4];
      }

      [(TLKLabel *)self updateAttributedText];
    }

    else
    {
      [(UIView *)self tlk_updateWithCurrentAppearance];
    }
  }
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  [(TLKLabel *)self setAttributedTextUpdateDisabled:1];
  v4[2](v4);

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

+ (BOOL)stringStartsWithQuote:(id)a3
{
  v3 = stringStartsWithQuote__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[TLKLabel stringStartsWithQuote:];
  }

  v5 = stringStartsWithQuote__quoteCharacters;
  v6 = [v4 substringToIndex:1];

  v7 = [v5 containsObject:v6];
  return v7;
}

uint64_t __34__TLKLabel_stringStartsWithQuote___block_invoke()
{
  stringStartsWithQuote__quoteCharacters = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F3AA8328];

  return MEMORY[0x1EEE66BB8]();
}

- (void)setCustomAlignmentRectInsets:(UIEdgeInsets)a3
{
  [(TLKLabel *)self setUnadjustedCustemAlignmentRectInsets:a3.top, a3.left, a3.bottom, a3.right];

  [(TLKLabel *)self updateAttributedText];
}

- (void)updateWithAttributedString:(id)a3
{
  v4 = a3;
  if ([(TLKLabel *)self autoHideIfNoContent])
  {
    -[TLKLabel setHidden:](self, "setHidden:", [v4 length] == 0);
  }

  [(TLKLabel *)self setAttributedTextExplicitelySet:v4 != 0];
  v5.receiver = self;
  v5.super_class = TLKLabel;
  [(TLKLabel *)&v5 setAttributedText:v4];
}

- (void)updateWithString:(id)a3
{
  v4 = a3;
  [(TLKLabel *)self setAttributedTextExplicitelySet:0];
  v5.receiver = self;
  v5.super_class = TLKLabel;
  [(TLKLabel *)&v5 setText:v4];
}

- (void)setLineBreakMode:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  [(TLKLabel *)&v7 setLineBreakMode:?];
  v5 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [v5 setLineBreakMode:a3];

  v6 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [v6 setLineBreakMode:a3];
}

- (void)setNumberOfLines:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = TLKLabel;
  [(TLKLabel *)&v7 setNumberOfLines:?];
  v5 = [(TLKLabel *)self overlayLabelForNonColoredGlyphs];
  [v5 setNumberOfLines:a3];

  v6 = [(TLKLabel *)self overlayLabelForColoredGlyphs];
  [v6 setNumberOfLines:a3];
}

@end