@interface TLKTitleContainerView
+ (BOOL)hasNonBoldFormattingInRichText:(id)text;
- (TLKTitleContainerView)init;
- (id)secondaryTitleLabelString;
- (id)titleFont;
- (id)titleLabel;
- (id)titleLabelString;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)updateResultWithTitle:(id)title secondaryTitle:(id)secondaryTitle image:(id)image detached:(BOOL)detached useCompactMode:(BOOL)mode truncateMiddle:(BOOL)middle;
@end

@implementation TLKTitleContainerView

- (TLKTitleContainerView)init
{
  v8.receiver = self;
  v8.super_class = TLKTitleContainerView;
  v2 = [(TLKTitleContainerView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(TLKStackView *)v2 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
    [(TLKStackView *)v3 setAlignment:5];
    v4 = objc_opt_new();
    [(TLKTitleContainerView *)v3 setTitleField:v4];

    titleField = [(TLKTitleContainerView *)v3 titleField];
    [titleField setRoundedCornerLabelSizeConfiguration:2];

    titleField2 = [(TLKTitleContainerView *)v3 titleField];
    [(TLKStackView *)v3 addArrangedSubview:titleField2];
  }

  return v3;
}

- (id)titleLabel
{
  titleField = [(TLKTitleContainerView *)self titleField];
  textLabel = [titleField textLabel];

  return textLabel;
}

- (id)viewForFirstBaselineLayout
{
  titleField = [(TLKTitleContainerView *)self titleField];
  viewForFirstBaselineLayout = [titleField viewForFirstBaselineLayout];

  return viewForFirstBaselineLayout;
}

- (void)updateResultWithTitle:(id)title secondaryTitle:(id)secondaryTitle image:(id)image detached:(BOOL)detached useCompactMode:(BOOL)mode truncateMiddle:(BOOL)middle
{
  titleCopy = title;
  secondaryTitleCopy = secondaryTitle;
  imageCopy = image;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __107__TLKTitleContainerView_updateResultWithTitle_secondaryTitle_image_detached_useCompactMode_truncateMiddle___block_invoke;
  v20[3] = &unk_1E7FD8E20;
  v21 = titleCopy;
  v22 = secondaryTitleCopy;
  v23 = imageCopy;
  selfCopy = self;
  detachedCopy = detached;
  modeCopy = mode;
  middleCopy = middle;
  v17 = imageCopy;
  v18 = secondaryTitleCopy;
  v19 = titleCopy;
  [(TLKTitleContainerView *)self performBatchUpdates:v20];
}

void __107__TLKTitleContainerView_updateResultWithTitle_secondaryTitle_image_detached_useCompactMode_truncateMiddle___block_invoke(uint64_t a1)
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) hasContent] & 1) != 0 || objc_msgSend(*(a1 + 40), "hasContent"))
  {
    v2 = (a1 + 56);
    [*(a1 + 56) setHidden:0];
  }

  else
  {
    v2 = (a1 + 56);
    v12 = *(a1 + 48);
    [*(a1 + 56) setHidden:v12 == 0];
    if (!v12)
    {
      return;
    }
  }

  v3 = [*(a1 + 40) hasContent];
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v4 == 1)
  {
    v6 = 16.0;
  }

  else
  {
    v7 = TLKSpotlightPlusUIEnabled();
    v6 = 4.0;
    if (v7)
    {
      v6 = 9.0;
    }
  }

  [*(a1 + 56) setSpacing:v6];
  v8 = [*(a1 + 56) titleField];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __107__TLKTitleContainerView_updateResultWithTitle_secondaryTitle_image_detached_useCompactMode_truncateMiddle___block_invoke_2;
  v50[3] = &unk_1E7FD8DF8;
  v50[4] = *(a1 + 56);
  v51 = *(a1 + 32);
  v52 = *(a1 + 65);
  v53 = v3;
  [v8 performBatchUpdates:v50];

  if (v3)
  {
    v9 = [*v2 secondaryLabel];

    if (!v9)
    {
      v10 = objc_opt_new();
      [*v2 setSecondaryLabel:v10];

      if (+[TLKUtilities isMacOS])
      {
        if (TLKSpotlightPlusUIEnabled())
        {
          v11 = MEMORY[0x1E69DDDC8];
        }

        else
        {
          v11 = MEMORY[0x1E69DDD00];
        }

        v13 = [TLKFontUtilities cachedFontForMacTextStyle:*v11];
      }

      else
      {
        v13 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD80]];
      }

      v14 = v13;
      v15 = [*v2 secondaryLabel];
      [v15 setFont:v14];

      v16 = *v2;
      v17 = [*v2 secondaryLabel];
      [v16 insertArrangedSubview:v17 atIndex:1];
    }

    if (+[TLKUtilities isMacOS])
    {
      if (*(a1 + 65))
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 1;
    }

    v19 = [*(a1 + 56) secondaryLabel];
    [v19 setProminence:v18];

    [*(a1 + 40) setMaxLines:1];
    v20 = *(a1 + 40);
    v21 = [*(a1 + 56) secondaryLabel];
    [v21 setRichText:v20];
  }

  v22 = [*v2 secondaryLabel];
  [v22 setHidden:v3 ^ 1u];

  if (v5)
  {
    v23 = [*v2 secondaryImageView];

    if (!v23)
    {
      v24 = objc_opt_new();
      [*v2 setSecondaryImageView:v24];

      v25 = [*v2 secondaryLabel];
      v26 = [v25 font];
      v27 = [*v2 secondaryImageView];
      [v27 setSymbolFont:v26];

      v28 = [*v2 secondaryImageView];
      [v28 setSymbolScale:1];

      v29 = objc_alloc(MEMORY[0x1E698B718]);
      v30 = [*v2 secondaryImageView];
      v54[0] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];
      v32 = [v29 initWithArrangedSubviews:v31];
      [*v2 setSecondaryImageViewBoxView:v32];

      v33 = [*v2 secondaryImageViewBoxView];
      [v33 setHorizontalAlignment:1];

      v34 = [*v2 secondaryImageViewBoxView];
      LODWORD(v35) = 1148846080;
      [v34 setContentCompressionResistancePriority:0 forAxis:v35];

      v36 = *v2;
      v37 = [*v2 secondaryImageViewBoxView];
      [v36 addArrangedSubview:v37];
    }

    v38 = *(a1 + 48);
    v39 = [*(a1 + 56) secondaryImageView];
    [v39 setTlkImage:v38];
  }

  v40 = [*v2 secondaryImageViewBoxView];
  [v40 setHidden:v5 == 0];

  v41 = *v2;
  if (v4)
  {
    v42 = [v41 titleField];
    [*v2 secondaryLabel];
  }

  else
  {
    v42 = [v41 secondaryLabel];
    [*v2 titleField];
  }
  v43 = ;
  LODWORD(v44) = 1148813312;
  [v42 setContentCompressionResistancePriority:0 forAxis:v44];
  LODWORD(v45) = 1148829696;
  [v43 setContentCompressionResistancePriority:0 forAxis:v45];
  v46 = [*v2 titleField];
  *&v47 = 1000.0 - v4;
  [v46 setContentHuggingPriority:0 forAxis:v47];

  v48 = [*v2 secondaryLabel];
  *&v49 = 1000.0 - ((v5 == 0) & ~v4);
  [v48 setContentHuggingPriority:0 forAxis:v49];
}

void __107__TLKTitleContainerView_updateResultWithTitle_secondaryTitle_image_detached_useCompactMode_truncateMiddle___block_invoke_2(uint64_t a1)
{
  v2 = [objc_opt_class() hasNonBoldFormattingInRichText:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = +[TLKUtilities isMacOS];
  if (v3 != 1)
  {
    if (!v4)
    {
      v6 = *MEMORY[0x1E69DDCF8];
      v7 = v2 ^ 1u;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v8 = TLKSpotlightPlusUIEnabled();
    v9 = MEMORY[0x1E69DDDC0];
    if (!v8)
    {
      v9 = MEMORY[0x1E69DDCF8];
    }

    v10 = [TLKFontUtilities cachedFontForMacTextStyle:*v9];
    goto LABEL_12;
  }

  v5 = TLKBiggerSuggestionsLayoutEnabled();
  v6 = *MEMORY[0x1E69DDCF8];
  if (v5)
  {
    v7 = 1;
LABEL_10:
    v10 = [TLKFontUtilities cachedFontForTextStyle:v6 isShort:0 isBold:v7];
    goto LABEL_12;
  }

  v10 = [TLKFontUtilities cachedFontForTextStyle:v6 isShort:0 fontWeight:*MEMORY[0x1E69DB970]];
LABEL_12:
  v20 = v10;
  v11 = [*(a1 + 32) titleLabel];
  [v11 setAttributedText:0];

  v12 = [*(a1 + 32) titleLabel];
  [v12 setFont:v20];

  if (*(a1 + 49))
  {
    v13 = 5;
  }

  else
  {
    v13 = 4;
  }

  v14 = [*(a1 + 32) titleField];
  v15 = [v14 textLabel];
  [v15 setLineBreakMode:v13];

  v16 = +[TLKLayoutUtilities isSuperLargeAccessibilitySize];
  if (*(a1 + 50) & 1) != 0 || !v16 && (*(a1 + 48))
  {
    v17 = 1;
  }

  else
  {
    v17 = [*(a1 + 40) maxLines];
  }

  [*(a1 + 40) setMaxLines:v17];
  v18 = *(a1 + 40);
  v19 = [*(a1 + 32) titleField];
  [v19 setRichText:v18];
}

+ (BOOL)hasNonBoldFormattingInRichText:(id)text
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  formattedTextItems = [text formattedTextItems];
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
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isBold])
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

- (id)titleFont
{
  titleField = [(TLKTitleContainerView *)self titleField];
  font = [titleField font];

  return font;
}

- (id)viewForLastBaselineLayout
{
  titleField = [(TLKTitleContainerView *)self titleField];
  viewForLastBaselineLayout = [titleField viewForLastBaselineLayout];

  return viewForLastBaselineLayout;
}

- (id)titleLabelString
{
  titleField = [(TLKTitleContainerView *)self titleField];
  richText = [titleField richText];
  text = [richText text];

  return text;
}

- (id)secondaryTitleLabelString
{
  secondaryLabel = [(TLKTitleContainerView *)self secondaryLabel];
  text = [secondaryLabel text];

  return text;
}

@end