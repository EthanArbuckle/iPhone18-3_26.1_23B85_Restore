@interface SearchUICompletionStringView
+ (BOOL)supportsImages;
+ (CGSize)appIconSize;
+ (unint64_t)preferredAppIconVariant;
- (BOOL)hasContent;
- (BOOL)hasPrefix;
- (NSString)completionText;
- (SearchUICompletionStringView)init;
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
- (void)setTextColorForCompletionLabel:(id)label;
- (void)updateFields;
- (void)updateLabelStackVisibility;
- (void)updateWithResult:(id)result cardSection:(id)section focusIsOnFirstResult:(BOOL)firstResult;
@end

@implementation SearchUICompletionStringView

- (SearchUICompletionStringView)init
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SearchUICompletionStringView;
  v2 = [(SearchUICompletionStringView *)&v18 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SearchUICompletionStringView *)v2 setLabelsStackView:v3];

    labelsStackView = [(SearchUICompletionStringView *)v2 labelsStackView];
    [labelsStackView setHidden:1];

    completionLabel = [(SearchUICompletionStringView *)v2 completionLabel];
    [completionLabel setAlpha:0.0];

    [(SearchUICompletionStringView *)v2 setRequireResultForCompletion:1];
    labelsStackView2 = [(SearchUICompletionStringView *)v2 labelsStackView];
    LODWORD(v7) = 1148846080;
    [labelsStackView2 setContentHuggingPriority:1 forAxis:v7];

    [(NUIContainerStackView *)v2 setAlignment:3];
    [(NUIContainerStackView *)v2 setSpacing:11.0];
    labelsStackView3 = [(SearchUICompletionStringView *)v2 labelsStackView];
    v19[0] = labelsStackView3;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

    if ([objc_opt_class() supportsImages])
    {
      v10 = objc_opt_new();
      [(SearchUICompletionStringView *)v2 setImageView:v10];

      imageView = [(SearchUICompletionStringView *)v2 imageView];
      [imageView setDelegate:v2];

      imageView2 = [(SearchUICompletionStringView *)v2 imageView];
      [SearchUIAutoLayout requireIntrinsicSizeForView:imageView2];

      imageView3 = [(SearchUICompletionStringView *)v2 imageView];
      v14 = [v9 arrayByAddingObject:imageView3];

      imageView4 = [(SearchUICompletionStringView *)v2 imageView];
      [objc_opt_class() appIconSize];
      [imageView4 setLayoutSize:? withContentPriority:?];

      imageView5 = [(SearchUICompletionStringView *)v2 imageView];
      [imageView5 setCustomAlignmentRectInsets:{1.0, 1.0, 3.0, 1.0}];

      v9 = v14;
    }

    [(SearchUICompletionStringView *)v2 setArrangedSubviews:v9];
    [(SearchUICompletionStringView *)v2 setUserInteractionEnabled:0];
  }

  return v2;
}

+ (CGSize)appIconSize
{
  v2 = 32.0;
  v3 = 32.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (unint64_t)preferredAppIconVariant
{
  [objc_opt_class() appIconSize];

  return [SearchUIAppIconImage bestVariantForSize:?];
}

+ (BOOL)supportsImages
{
  if (+[SearchUIUtilities isIpad])
  {
    return 1;
  }

  return +[SearchUIUtilities isLargeIpad];
}

- (id)extensionLabel
{
  labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
  extensionLabel = [labelsStackView extensionLabel];

  return extensionLabel;
}

- (id)bridgeLabel
{
  labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
  bridgeLabel = [labelsStackView bridgeLabel];

  return bridgeLabel;
}

- (id)completionLabel
{
  labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
  completionLabel = [labelsStackView completionLabel];

  return completionLabel;
}

- (void)setTextColorForCompletionLabel:(id)label
{
  labelCopy = label;
  completionLabel = [(SearchUICompletionStringView *)self completionLabel];
  [completionLabel setTextColor:labelCopy];

  [(SearchUICompletionStringView *)self updateFields];
}

- (UIColor)textColorForCompletionLabel
{
  completionLabel = [(SearchUICompletionStringView *)self completionLabel];
  textColor = [completionLabel textColor];

  return textColor;
}

- (void)setFontForCompletionLabel:(id)label
{
  labelCopy = label;
  labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
  [labelsStackView setFont:labelCopy];
}

- (UIFont)fontForCompletionLabel
{
  completionLabel = [(SearchUICompletionStringView *)self completionLabel];
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
    [(SearchUICompletionStringView *)self updateFields];
    modelCopy = v6;
  }
}

- (void)updateWithResult:(id)result cardSection:(id)section focusIsOnFirstResult:(BOOL)firstResult
{
  firstResultCopy = firstResult;
  resultCopy = result;
  sectionCopy = section;
  result = [(SearchUICompletionStringView *)self result];
  if (result != resultCopy || [(SearchUICompletionStringView *)self focusIsOnFirstResult]!= firstResultCopy)
  {
    goto LABEL_5;
  }

  cardSection = [(SearchUICompletionStringView *)self cardSection];
  v11 = cardSection;
  if (cardSection != sectionCopy)
  {

LABEL_5:
LABEL_6:
    [(SearchUICompletionStringView *)self setResult:resultCopy];
    [(SearchUICompletionStringView *)self setCardSection:sectionCopy];
    [(SearchUICompletionStringView *)self setFocusIsOnFirstResult:firstResultCopy];
    [(SearchUICompletionStringView *)self updateFields];
    goto LABEL_7;
  }

  requireResultForCompletion = [(SearchUICompletionStringView *)self requireResultForCompletion];

  if (!requireResultForCompletion)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)updateFields
{
  searchFieldModel = [(SearchUICompletionStringView *)self searchFieldModel];
  if (([searchFieldModel searchFieldHasTokens] & 1) != 0 || (-[SearchUICompletionStringView result](self, "result"), (searchFieldModel3 = objc_claimAutoreleasedReturnValue()) == 0) && -[SearchUICompletionStringView requireResultForCompletion](self, "requireResultForCompletion"))
  {

LABEL_6:
    labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
    [labelsStackView setHidden:1];

    imageView = [(SearchUICompletionStringView *)self imageView];
    [imageView setHidden:1];

    extensionLabel = [(SearchUICompletionStringView *)self extensionLabel];
    [extensionLabel setText:0];

    completionLabel = [(SearchUICompletionStringView *)self completionLabel];
    [completionLabel setText:0];

    imageView2 = [(SearchUICompletionStringView *)self imageView];
    [imageView2 updateWithImage:0];

    v12 = 0;
    goto LABEL_39;
  }

  searchFieldModel2 = [(SearchUICompletionStringView *)self searchFieldModel];
  hasMarkedText = [searchFieldModel2 hasMarkedText];

  if (hasMarkedText)
  {
    goto LABEL_6;
  }

  extensionLabel2 = [(SearchUICompletionStringView *)self extensionLabel];
  [extensionLabel2 setAttributedText:0];

  result = [(SearchUICompletionStringView *)self result];
  if (result)
  {
    searchFieldModel3 = [(SearchUICompletionStringView *)self searchFieldModel];
    displayedText = [searchFieldModel3 displayedText];
  }

  else
  {
    displayedText = 0;
  }

  labelsStackView2 = [(SearchUICompletionStringView *)self labelsStackView];
  [labelsStackView2 setTypedString:displayedText];

  if (result)
  {
  }

  searchFieldModel4 = [(SearchUICompletionStringView *)self searchFieldModel];
  displayedText2 = [searchFieldModel4 displayedText];
  result2 = [(SearchUICompletionStringView *)self result];
  cardSection = [(SearchUICompletionStringView *)self cardSection];
  v52 = [SearchUICompletion initWithAttributedTypedString:displayedText2 result:result2 cardSection:cardSection];

  completionString = [v52 completionString];
  if (completionString)
  {
    v22 = 0;
  }

  else
  {
    extensionString = [v52 extensionString];
    v22 = extensionString != 0;
  }

  completionString2 = [v52 completionString];
  completionLabel2 = [(SearchUICompletionStringView *)self completionLabel];
  [completionLabel2 setAttributedText:completionString2];

  if (v22 || ![(SearchUICompletionStringView *)self requireResultForCompletion])
  {
    searchFieldModel5 = [(SearchUICompletionStringView *)self searchFieldModel];
    displayedText3 = [searchFieldModel5 displayedText];
    completionLabel3 = [(SearchUICompletionStringView *)self completionLabel];
    [completionLabel3 setAttributedText:displayedText3];
  }

  completionLabel4 = [(SearchUICompletionStringView *)self completionLabel];
  attributedText = [completionLabel4 attributedText];
  if ([attributedText length])
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  completionLabel5 = [(SearchUICompletionStringView *)self completionLabel];
  [completionLabel5 setAlpha:v31];

  completionString3 = [v52 completionString];
  if ([completionString3 length] == 0 && !v22)
  {

    goto LABEL_25;
  }

  extensionString2 = [v52 extensionString];

  if (!extensionString2)
  {
LABEL_25:
    extensionLabel3 = [(SearchUICompletionStringView *)self extensionLabel];
    [extensionLabel3 setText:0];

    bridgeLabel = [(SearchUICompletionStringView *)self bridgeLabel];
    [bridgeLabel setText:0];
    v39 = 0;
    goto LABEL_26;
  }

  extensionString3 = [v52 extensionString];
  extensionLabel4 = [(SearchUICompletionStringView *)self extensionLabel];
  [extensionLabel4 setText:extensionString3];

  bridgeLabel = [v52 bridgeString];
  bridgeLabel2 = [(SearchUICompletionStringView *)self bridgeLabel];
  [bridgeLabel2 setText:bridgeLabel];

  v39 = 1;
LABEL_26:

  extensionLabel5 = [(SearchUICompletionStringView *)self extensionLabel];
  [extensionLabel5 setHidden:v39 ^ 1u];

  bridgeLabel3 = [(SearchUICompletionStringView *)self bridgeLabel];
  [bridgeLabel3 setHidden:v39 ^ 1u];

  if (v39)
  {
    isCompletionStringFullyMatched = 0;
  }

  else
  {
    bridgeLabel3 = [(SearchUICompletionStringView *)self completionLabel];
    [bridgeLabel3 alpha];
    if (v44 == 0.0)
    {
      isCompletionStringFullyMatched = 1;
    }

    else
    {
      isCompletionStringFullyMatched = [v52 isCompletionStringFullyMatched];
    }
  }

  labelsStackView3 = [(SearchUICompletionStringView *)self labelsStackView];
  extensionLabelBackgroundView = [labelsStackView3 extensionLabelBackgroundView];
  [extensionLabelBackgroundView setHidden:isCompletionStringFullyMatched];

  if ((v39 & 1) == 0)
  {
  }

  if ([objc_opt_class() supportsImages])
  {
    image = [v52 image];
    v48 = +[SearchUIImage imageWithSFImage:variantForAppIcon:](SearchUIImage, "imageWithSFImage:variantForAppIcon:", image, [objc_opt_class() preferredAppIconVariant]);

    imageView3 = [(SearchUICompletionStringView *)self imageView];
    imageView4 = imageView3;
    if (v48)
    {
      [imageView3 updateWithImage:v48];
    }

    else
    {
      [imageView3 updateWithImage:0];

      imageView4 = [(SearchUICompletionStringView *)self imageView];
      [imageView4 setHidden:1];
    }
  }

  [(SearchUICompletionStringView *)self updateLabelStackVisibility];
  v12 = v52;
LABEL_39:
  v53 = v12;
  [(SearchUICompletionStringView *)self setCompletion:v12];
  superview = [(SearchUICompletionStringView *)self superview];
  [superview setNeedsLayout];
}

- (void)didUpdateWithImage:(id)image
{
  imageView = [(SearchUICompletionStringView *)self imageView];
  [imageView setHidden:0];

  [(SearchUICompletionStringView *)self updateLabelStackVisibility];
}

- (void)didFailToLoadImage
{
  imageView = [(SearchUICompletionStringView *)self imageView];
  [imageView setHidden:1];

  [(SearchUICompletionStringView *)self updateLabelStackVisibility];
}

- (void)updateLabelStackVisibility
{
  imageView = [(SearchUICompletionStringView *)self imageView];
  if (imageView)
  {
    imageView2 = [(SearchUICompletionStringView *)self imageView];
    currentImage = [imageView2 currentImage];
    if (currentImage)
    {
      imageView3 = [(SearchUICompletionStringView *)self imageView];
      isHidden = [imageView3 isHidden];
    }

    else
    {
      isHidden = 1;
    }
  }

  else
  {
    isHidden = 1;
  }

  completionLabel = [(SearchUICompletionStringView *)self completionLabel];
  [completionLabel alpha];
  v9 = v8;
  if (v8 == 0.0)
  {
    imageView = [(SearchUICompletionStringView *)self extensionLabel];
    v10 = [imageView isHidden] & isHidden;
  }

  else
  {
    v10 = 0;
  }

  labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
  [labelsStackView setHidden:v10];

  if (v9 == 0.0)
  {
  }
}

- (BOOL)hasContent
{
  hasPrefix = [(SearchUICompletionStringView *)self hasPrefix];
  if (!hasPrefix)
  {
    extensionLabel = [(SearchUICompletionStringView *)self extensionLabel];
    if ([extensionLabel isHidden])
    {
      LOBYTE(v5) = 0;
LABEL_5:

      return v5;
    }
  }

  labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
  v5 = [labelsStackView isHidden] ^ 1;

  if (!hasPrefix)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)hasPrefix
{
  completionLabel = [(SearchUICompletionStringView *)self completionLabel];
  [completionLabel alpha];
  if (v4 == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    labelsStackView = [(SearchUICompletionStringView *)self labelsStackView];
    v6 = [labelsStackView isHidden] ^ 1;
  }

  return v6;
}

- (NSString)completionText
{
  if ([(SearchUICompletionStringView *)self hasPrefix])
  {
    completionLabel = [(SearchUICompletionStringView *)self completionLabel];
    attributedText = [completionLabel attributedText];
    string = [attributedText string];
  }

  else
  {
    string = 0;
  }

  return string;
}

- (double)trailingPaddingForFieldEditor
{
  imageView = [(SearchUICompletionStringView *)self imageView];
  currentImage = [imageView currentImage];

  if (!currentImage)
  {
    return 0.0;
  }

  [(NUIContainerStackView *)self spacing];
  v6 = v5;
  imageView2 = [(SearchUICompletionStringView *)self imageView];
  currentImage2 = [imageView2 currentImage];
  [currentImage2 size];
  v10 = v6 + v9;

  return v10;
}

@end