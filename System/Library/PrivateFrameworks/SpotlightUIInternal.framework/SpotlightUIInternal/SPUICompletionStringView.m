@interface SPUICompletionStringView
- (BOOL)completionResultIsPotentiallyPunchout;
- (BOOL)hasContent;
- (BOOL)hasPrefix;
- (NSString)completionText;
- (SPUICompletionStringView)init;
- (UIColor)textColorForCompletionLabel;
- (UIFont)fontForCompletionLabel;
- (double)trailingPaddingForFieldEditor;
- (id)bridgeLabel;
- (id)completionLabel;
- (id)extensionLabel;
- (void)didFailToLoadImage;
- (void)didUpdateWithImage:(id)a3;
- (void)setFontForCompletionLabel:(id)a3;
- (void)setSearchFieldModel:(id)a3;
- (void)setSelectionHighlightColor:(id)a3;
- (void)setTextColorForCompletionLabel:(id)a3;
- (void)updateFields;
- (void)updateLayoutMargins;
@end

@implementation SPUICompletionStringView

- (SPUICompletionStringView)init
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = SPUICompletionStringView;
  v2 = [(SPUICompletionStringView *)&v22 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SPUICompletionStringView *)v2 setLabelsStackView:v3];

    v4 = [(SPUICompletionStringView *)v2 labelsStackView];
    [v4 setHidden:1];

    v5 = [(SPUICompletionStringView *)v2 completionLabel];
    [v5 setAlpha:0.0];

    v6 = [(SPUICompletionStringView *)v2 labelsStackView];
    LODWORD(v7) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v7];

    [(SPUICompletionStringView *)v2 setUserInteractionEnabled:0];
    [(SPUICompletionStringView *)v2 setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerStackView *)v2 setAlignment:3];
    [(NUIContainerStackView *)v2 setSpacing:0.0];
    v8 = [(SPUICompletionStringView *)v2 labelsStackView];
    v23[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      v10 = objc_opt_new();
      [(SPUICompletionStringView *)v2 setImageView:v10];

      v11 = [(SPUICompletionStringView *)v2 imageView];
      [v11 setDelegate:v2];

      v12 = MEMORY[0x277D4C828];
      v13 = [(SPUICompletionStringView *)v2 imageView];
      [v12 requireIntrinsicSizeForView:v13];

      v14 = [(SPUICompletionStringView *)v2 imageView];
      v15 = [v9 arrayByAddingObject:v14];

      if (_UISolariumEnabled())
      {
        v16 = 32.0;
      }

      else
      {
        v16 = 33.0;
      }

      v17 = [(SPUICompletionStringView *)v2 imageView];
      [v17 setMaximumLayoutSize:{v16, v16}];

      v18 = [(SPUICompletionStringView *)v2 imageView];
      [v18 setMinimumLayoutSize:{v16, v16}];

      v9 = v15;
    }

    [(SPUICompletionStringView *)v2 setArrangedSubviews:v9];
    v19 = [MEMORY[0x277D75348] systemFillColor];
    [(SPUICompletionStringView *)v2 setSelectionHighlightColor:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)completionLabel
{
  v2 = [(SPUICompletionStringView *)self labelsStackView];
  v3 = [v2 completionLabel];

  return v3;
}

- (void)updateFields
{
  v58[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUICompletionStringView *)self searchFieldModel];
  if (([v3 searchFieldHasTokens] & 1) != 0 || (-[SPUICompletionStringView result](self, "result"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(SPUICompletionStringView *)self searchFieldModel];
  v7 = [v6 hasMarkedText];

  if (v7)
  {
LABEL_7:
    v21 = [(SPUICompletionStringView *)self labelsStackView];
    [v21 setHidden:1];

    v22 = [(SPUICompletionStringView *)self imageView];
    [v22 setHidden:1];

    v23 = [(SPUICompletionStringView *)self imageView];
    [v23 updateWithImage:0];

    v24 = 0;
    goto LABEL_8;
  }

  v8 = [(SPUICompletionStringView *)self extensionLabel];
  [v8 setAttributedText:0];

  v9 = [(SPUICompletionStringView *)self labelsStackView];
  v10 = [(SPUICompletionStringView *)self searchFieldModel];
  v11 = [v10 displayedText];
  [v9 setTypedString:v11];

  v12 = [(SPUICompletionStringView *)self searchFieldModel];
  v13 = [v12 displayedText];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCA898]);
    v15 = [(SPUICompletionStringView *)self searchFieldModel];
    v16 = [v15 displayedText];
    v57 = *MEMORY[0x277D740A8];
    v17 = [(SPUICompletionStringView *)self completionLabel];
    v18 = [v17 font];
    v58[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v20 = [v14 initWithString:v16 attributes:v19];
  }

  else
  {
    v20 = 0;
  }

  v27 = MEMORY[0x277D4C858];
  v28 = [(SPUICompletionStringView *)self result];
  v29 = [(SPUICompletionStringView *)self cardSection];
  v24 = [v27 initWithAttributedTypedString:v20 result:v28 cardSection:v29];

  v30 = [v24 completionString];
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v32 = [v24 extensionString];
    if (v32)
    {
      v33 = [(SPUICompletionStringView *)self searchFieldModel];
      v34 = [v33 queryId];
      v35 = [(SPUICompletionStringView *)self result];
      v31 = v34 == [v35 queryId];
    }

    else
    {
      v31 = 0;
    }
  }

  v36 = [v24 completionString];
  v37 = [(SPUICompletionStringView *)self completionLabel];
  [v37 setAttributedText:v36];

  if (v31)
  {
    v38 = [(SPUICompletionStringView *)self searchFieldModel];
    v39 = [v38 displayedText];
    v40 = [(SPUICompletionStringView *)self completionLabel];
    [v40 setText:v39];
  }

  v41 = [v24 completionString];
  if (v41)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = [(SPUICompletionStringView *)self completionLabel];
  [v43 setAlpha:v42];

  v44 = [v24 completionString];
  v45 = v44 != 0 || v31;

  if (v45)
  {
    v46 = [v24 extensionString];
    v47 = [(SPUICompletionStringView *)self extensionLabel];
    [v47 setText:v46];

    v48 = [v24 bridgeString];
    v49 = [(SPUICompletionStringView *)self bridgeLabel];
    [v49 setText:v48];
  }

  v50 = [(SPUICompletionStringView *)self extensionLabel];
  [v50 setHidden:!v45];

  v51 = [(SPUICompletionStringView *)self bridgeLabel];
  [v51 setHidden:!v45];

  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v52 = MEMORY[0x277D4C868];
    v53 = [v24 image];
    v54 = [v52 imageWithSFImage:v53 variantForAppIcon:2];

    v55 = [(SPUICompletionStringView *)self imageView];
    v56 = v55;
    if (v54)
    {
      [v55 updateWithImage:v54];
    }

    else
    {
      [v55 setHidden:1];
    }
  }

  [(SPUICompletionStringView *)self updateLayoutMargins];

LABEL_8:
  [(SPUICompletionStringView *)self setCompletion:v24];
  v25 = [(SPUICompletionStringView *)self superview];
  [v25 setNeedsLayout];

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasContent
{
  v4 = [(SPUICompletionStringView *)self hasPrefix];
  if (!v4)
  {
    v2 = [(SPUICompletionStringView *)self extensionLabel];
    if ([v2 isHidden])
    {
      LOBYTE(v5) = 0;
LABEL_5:

      return v5;
    }
  }

  v6 = [(SPUICompletionStringView *)self labelsStackView];
  v5 = [v6 isHidden] ^ 1;

  if (!v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)hasPrefix
{
  v3 = [(SPUICompletionStringView *)self completionLabel];
  [v3 alpha];
  if (v4 == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = [(SPUICompletionStringView *)self labelsStackView];
    v6 = [v5 isHidden] ^ 1;
  }

  return v6;
}

- (id)extensionLabel
{
  v2 = [(SPUICompletionStringView *)self labelsStackView];
  v3 = [v2 extensionLabel];

  return v3;
}

- (id)bridgeLabel
{
  v2 = [(SPUICompletionStringView *)self labelsStackView];
  v3 = [v2 bridgeLabel];

  return v3;
}

- (void)setTextColorForCompletionLabel:(id)a3
{
  v4 = a3;
  v5 = [(SPUICompletionStringView *)self completionLabel];
  [v5 setTextColor:v4];

  [(SPUICompletionStringView *)self updateFields];
}

- (UIColor)textColorForCompletionLabel
{
  v2 = [(SPUICompletionStringView *)self completionLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setFontForCompletionLabel:(id)a3
{
  v4 = a3;
  v5 = [(SPUICompletionStringView *)self labelsStackView];
  [v5 setFont:v4];
}

- (UIFont)fontForCompletionLabel
{
  v2 = [(SPUICompletionStringView *)self completionLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setSearchFieldModel:(id)a3
{
  v5 = a3;
  if (self->_searchFieldModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_searchFieldModel, a3);
    [(SPUICompletionStringView *)self updateFields];
    v5 = v6;
  }
}

- (void)setSelectionHighlightColor:(id)a3
{
  v5 = a3;
  if (v5 && self->_selectionHighlightColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectionHighlightColor, a3);
    [(SPUICompletionStringView *)self updateFields];
    v5 = v6;
  }
}

- (void)didUpdateWithImage:(id)a3
{
  v4 = [(SPUICompletionStringView *)self imageView];
  [v4 setHidden:0];

  [(SPUICompletionStringView *)self updateLayoutMargins];
}

- (void)didFailToLoadImage
{
  v3 = [(SPUICompletionStringView *)self imageView];
  [v3 setHidden:1];

  [(SPUICompletionStringView *)self updateLayoutMargins];
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  v2 = [(SPUICompletionStringView *)self completion];
  v3 = [v2 completionResultIsPotentiallyPunchout];

  return v3;
}

- (void)updateLayoutMargins
{
  v4 = [(SPUICompletionStringView *)self imageView];
  if (v4)
  {
    v2 = [(SPUICompletionStringView *)self imageView];
    v5 = [v2 currentImage];
    if (v5)
    {
      v6 = [(SPUICompletionStringView *)self imageView];
      v7 = [v6 isHidden] ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [(SPUICompletionStringView *)self completionLabel];
  [v8 alpha];
  v10 = v9;
  if (v9 == 0.0)
  {
    v2 = [(SPUICompletionStringView *)self extensionLabel];
    v11 = [v2 isHidden] & (v7 ^ 1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SPUICompletionStringView *)self labelsStackView];
  [v12 setHidden:v11];

  if (v10 == 0.0)
  {
  }

  v13 = 0.0;
  v14 = 0.0;
  if (_UISolariumEnabled() && [MEMORY[0x277D65D28] bottomSearchFieldEnabled])
  {
    [MEMORY[0x277D6F1B8] deviceScaledRoundedValue:self forView:0.5];
    v14 = v15;
  }

  if (v7)
  {
    if (_UISolariumEnabled())
    {
      v13 = 10.0;
    }

    else
    {
      v13 = 8.0;
    }
  }

  [(SPUICompletionStringView *)self setLayoutMargins:v14, 0.0, 0.0, v13];
}

- (NSString)completionText
{
  if ([(SPUICompletionStringView *)self hasPrefix])
  {
    v3 = [(SPUICompletionStringView *)self completionLabel];
    v4 = [v3 text];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)trailingPaddingForFieldEditor
{
  v3 = [(SPUICompletionStringView *)self imageView];
  v4 = [v3 currentImage];

  if (!v4)
  {
    return 0.0;
  }

  [(NUIContainerStackView *)self spacing];
  v6 = v5;
  v7 = [(SPUICompletionStringView *)self imageView];
  v8 = [v7 currentImage];
  [v8 size];
  v10 = v6 + v9;

  return v10;
}

@end