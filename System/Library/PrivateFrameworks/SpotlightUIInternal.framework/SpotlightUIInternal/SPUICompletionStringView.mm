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
- (void)didUpdateWithImage:(id)image;
- (void)setFontForCompletionLabel:(id)label;
- (void)setSearchFieldModel:(id)model;
- (void)setSelectionHighlightColor:(id)color;
- (void)setTextColorForCompletionLabel:(id)label;
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

    labelsStackView = [(SPUICompletionStringView *)v2 labelsStackView];
    [labelsStackView setHidden:1];

    completionLabel = [(SPUICompletionStringView *)v2 completionLabel];
    [completionLabel setAlpha:0.0];

    labelsStackView2 = [(SPUICompletionStringView *)v2 labelsStackView];
    LODWORD(v7) = 1148846080;
    [labelsStackView2 setContentCompressionResistancePriority:1 forAxis:v7];

    [(SPUICompletionStringView *)v2 setUserInteractionEnabled:0];
    [(SPUICompletionStringView *)v2 setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerStackView *)v2 setAlignment:3];
    [(NUIContainerStackView *)v2 setSpacing:0.0];
    labelsStackView3 = [(SPUICompletionStringView *)v2 labelsStackView];
    v23[0] = labelsStackView3;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      v10 = objc_opt_new();
      [(SPUICompletionStringView *)v2 setImageView:v10];

      imageView = [(SPUICompletionStringView *)v2 imageView];
      [imageView setDelegate:v2];

      v12 = MEMORY[0x277D4C828];
      imageView2 = [(SPUICompletionStringView *)v2 imageView];
      [v12 requireIntrinsicSizeForView:imageView2];

      imageView3 = [(SPUICompletionStringView *)v2 imageView];
      v15 = [v9 arrayByAddingObject:imageView3];

      if (_UISolariumEnabled())
      {
        v16 = 32.0;
      }

      else
      {
        v16 = 33.0;
      }

      imageView4 = [(SPUICompletionStringView *)v2 imageView];
      [imageView4 setMaximumLayoutSize:{v16, v16}];

      imageView5 = [(SPUICompletionStringView *)v2 imageView];
      [imageView5 setMinimumLayoutSize:{v16, v16}];

      v9 = v15;
    }

    [(SPUICompletionStringView *)v2 setArrangedSubviews:v9];
    systemFillColor = [MEMORY[0x277D75348] systemFillColor];
    [(SPUICompletionStringView *)v2 setSelectionHighlightColor:systemFillColor];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)completionLabel
{
  labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
  completionLabel = [labelsStackView completionLabel];

  return completionLabel;
}

- (void)updateFields
{
  v58[1] = *MEMORY[0x277D85DE8];
  searchFieldModel = [(SPUICompletionStringView *)self searchFieldModel];
  if (([searchFieldModel searchFieldHasTokens] & 1) != 0 || (-[SPUICompletionStringView result](self, "result"), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_7;
  }

  v5 = v4;
  searchFieldModel2 = [(SPUICompletionStringView *)self searchFieldModel];
  hasMarkedText = [searchFieldModel2 hasMarkedText];

  if (hasMarkedText)
  {
LABEL_7:
    labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
    [labelsStackView setHidden:1];

    imageView = [(SPUICompletionStringView *)self imageView];
    [imageView setHidden:1];

    imageView2 = [(SPUICompletionStringView *)self imageView];
    [imageView2 updateWithImage:0];

    v24 = 0;
    goto LABEL_8;
  }

  extensionLabel = [(SPUICompletionStringView *)self extensionLabel];
  [extensionLabel setAttributedText:0];

  labelsStackView2 = [(SPUICompletionStringView *)self labelsStackView];
  searchFieldModel3 = [(SPUICompletionStringView *)self searchFieldModel];
  displayedText = [searchFieldModel3 displayedText];
  [labelsStackView2 setTypedString:displayedText];

  searchFieldModel4 = [(SPUICompletionStringView *)self searchFieldModel];
  displayedText2 = [searchFieldModel4 displayedText];

  if (displayedText2)
  {
    v14 = objc_alloc(MEMORY[0x277CCA898]);
    searchFieldModel5 = [(SPUICompletionStringView *)self searchFieldModel];
    displayedText3 = [searchFieldModel5 displayedText];
    v57 = *MEMORY[0x277D740A8];
    completionLabel = [(SPUICompletionStringView *)self completionLabel];
    font = [completionLabel font];
    v58[0] = font;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    v20 = [v14 initWithString:displayedText3 attributes:v19];
  }

  else
  {
    v20 = 0;
  }

  v27 = MEMORY[0x277D4C858];
  result = [(SPUICompletionStringView *)self result];
  cardSection = [(SPUICompletionStringView *)self cardSection];
  v24 = [v27 initWithAttributedTypedString:v20 result:result cardSection:cardSection];

  completionString = [v24 completionString];
  if (completionString)
  {
    v31 = 0;
  }

  else
  {
    extensionString = [v24 extensionString];
    if (extensionString)
    {
      searchFieldModel6 = [(SPUICompletionStringView *)self searchFieldModel];
      queryId = [searchFieldModel6 queryId];
      result2 = [(SPUICompletionStringView *)self result];
      v31 = queryId == [result2 queryId];
    }

    else
    {
      v31 = 0;
    }
  }

  completionString2 = [v24 completionString];
  completionLabel2 = [(SPUICompletionStringView *)self completionLabel];
  [completionLabel2 setAttributedText:completionString2];

  if (v31)
  {
    searchFieldModel7 = [(SPUICompletionStringView *)self searchFieldModel];
    displayedText4 = [searchFieldModel7 displayedText];
    completionLabel3 = [(SPUICompletionStringView *)self completionLabel];
    [completionLabel3 setText:displayedText4];
  }

  completionString3 = [v24 completionString];
  if (completionString3)
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  completionLabel4 = [(SPUICompletionStringView *)self completionLabel];
  [completionLabel4 setAlpha:v42];

  completionString4 = [v24 completionString];
  v45 = completionString4 != 0 || v31;

  if (v45)
  {
    extensionString2 = [v24 extensionString];
    extensionLabel2 = [(SPUICompletionStringView *)self extensionLabel];
    [extensionLabel2 setText:extensionString2];

    bridgeString = [v24 bridgeString];
    bridgeLabel = [(SPUICompletionStringView *)self bridgeLabel];
    [bridgeLabel setText:bridgeString];
  }

  extensionLabel3 = [(SPUICompletionStringView *)self extensionLabel];
  [extensionLabel3 setHidden:!v45];

  bridgeLabel2 = [(SPUICompletionStringView *)self bridgeLabel];
  [bridgeLabel2 setHidden:!v45];

  if ([MEMORY[0x277D65D28] enableFloatingWindow])
  {
    v52 = MEMORY[0x277D4C868];
    image = [v24 image];
    v54 = [v52 imageWithSFImage:image variantForAppIcon:2];

    imageView3 = [(SPUICompletionStringView *)self imageView];
    v56 = imageView3;
    if (v54)
    {
      [imageView3 updateWithImage:v54];
    }

    else
    {
      [imageView3 setHidden:1];
    }
  }

  [(SPUICompletionStringView *)self updateLayoutMargins];

LABEL_8:
  [(SPUICompletionStringView *)self setCompletion:v24];
  superview = [(SPUICompletionStringView *)self superview];
  [superview setNeedsLayout];

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasContent
{
  hasPrefix = [(SPUICompletionStringView *)self hasPrefix];
  if (!hasPrefix)
  {
    extensionLabel = [(SPUICompletionStringView *)self extensionLabel];
    if ([extensionLabel isHidden])
    {
      LOBYTE(v5) = 0;
LABEL_5:

      return v5;
    }
  }

  labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
  v5 = [labelsStackView isHidden] ^ 1;

  if (!hasPrefix)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)hasPrefix
{
  completionLabel = [(SPUICompletionStringView *)self completionLabel];
  [completionLabel alpha];
  if (v4 == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
    v6 = [labelsStackView isHidden] ^ 1;
  }

  return v6;
}

- (id)extensionLabel
{
  labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
  extensionLabel = [labelsStackView extensionLabel];

  return extensionLabel;
}

- (id)bridgeLabel
{
  labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
  bridgeLabel = [labelsStackView bridgeLabel];

  return bridgeLabel;
}

- (void)setTextColorForCompletionLabel:(id)label
{
  labelCopy = label;
  completionLabel = [(SPUICompletionStringView *)self completionLabel];
  [completionLabel setTextColor:labelCopy];

  [(SPUICompletionStringView *)self updateFields];
}

- (UIColor)textColorForCompletionLabel
{
  completionLabel = [(SPUICompletionStringView *)self completionLabel];
  textColor = [completionLabel textColor];

  return textColor;
}

- (void)setFontForCompletionLabel:(id)label
{
  labelCopy = label;
  labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
  [labelsStackView setFont:labelCopy];
}

- (UIFont)fontForCompletionLabel
{
  completionLabel = [(SPUICompletionStringView *)self completionLabel];
  font = [completionLabel font];

  return font;
}

- (void)setSearchFieldModel:(id)model
{
  modelCopy = model;
  if (self->_searchFieldModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_searchFieldModel, model);
    [(SPUICompletionStringView *)self updateFields];
    modelCopy = v6;
  }
}

- (void)setSelectionHighlightColor:(id)color
{
  colorCopy = color;
  if (colorCopy && self->_selectionHighlightColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_selectionHighlightColor, color);
    [(SPUICompletionStringView *)self updateFields];
    colorCopy = v6;
  }
}

- (void)didUpdateWithImage:(id)image
{
  imageView = [(SPUICompletionStringView *)self imageView];
  [imageView setHidden:0];

  [(SPUICompletionStringView *)self updateLayoutMargins];
}

- (void)didFailToLoadImage
{
  imageView = [(SPUICompletionStringView *)self imageView];
  [imageView setHidden:1];

  [(SPUICompletionStringView *)self updateLayoutMargins];
}

- (BOOL)completionResultIsPotentiallyPunchout
{
  completion = [(SPUICompletionStringView *)self completion];
  completionResultIsPotentiallyPunchout = [completion completionResultIsPotentiallyPunchout];

  return completionResultIsPotentiallyPunchout;
}

- (void)updateLayoutMargins
{
  imageView = [(SPUICompletionStringView *)self imageView];
  if (imageView)
  {
    imageView2 = [(SPUICompletionStringView *)self imageView];
    currentImage = [imageView2 currentImage];
    if (currentImage)
    {
      imageView3 = [(SPUICompletionStringView *)self imageView];
      v7 = [imageView3 isHidden] ^ 1;
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

  completionLabel = [(SPUICompletionStringView *)self completionLabel];
  [completionLabel alpha];
  v10 = v9;
  if (v9 == 0.0)
  {
    imageView2 = [(SPUICompletionStringView *)self extensionLabel];
    v11 = [imageView2 isHidden] & (v7 ^ 1);
  }

  else
  {
    v11 = 0;
  }

  labelsStackView = [(SPUICompletionStringView *)self labelsStackView];
  [labelsStackView setHidden:v11];

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
    completionLabel = [(SPUICompletionStringView *)self completionLabel];
    text = [completionLabel text];
  }

  else
  {
    text = 0;
  }

  return text;
}

- (double)trailingPaddingForFieldEditor
{
  imageView = [(SPUICompletionStringView *)self imageView];
  currentImage = [imageView currentImage];

  if (!currentImage)
  {
    return 0.0;
  }

  [(NUIContainerStackView *)self spacing];
  v6 = v5;
  imageView2 = [(SPUICompletionStringView *)self imageView];
  currentImage2 = [imageView2 currentImage];
  [currentImage2 size];
  v10 = v6 + v9;

  return v10;
}

@end