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
- (void)didUpdateWithImage:(id)a3;
- (void)setFontForCompletionLabel:(id)a3;
- (void)setSearchFieldModel:(id)a3;
- (void)setTextColorForCompletionLabel:(id)a3;
- (void)updateFields;
- (void)updateLabelStackVisibility;
- (void)updateWithResult:(id)a3 cardSection:(id)a4 focusIsOnFirstResult:(BOOL)a5;
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

    v4 = [(SearchUICompletionStringView *)v2 labelsStackView];
    [v4 setHidden:1];

    v5 = [(SearchUICompletionStringView *)v2 completionLabel];
    [v5 setAlpha:0.0];

    [(SearchUICompletionStringView *)v2 setRequireResultForCompletion:1];
    v6 = [(SearchUICompletionStringView *)v2 labelsStackView];
    LODWORD(v7) = 1148846080;
    [v6 setContentHuggingPriority:1 forAxis:v7];

    [(NUIContainerStackView *)v2 setAlignment:3];
    [(NUIContainerStackView *)v2 setSpacing:11.0];
    v8 = [(SearchUICompletionStringView *)v2 labelsStackView];
    v19[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

    if ([objc_opt_class() supportsImages])
    {
      v10 = objc_opt_new();
      [(SearchUICompletionStringView *)v2 setImageView:v10];

      v11 = [(SearchUICompletionStringView *)v2 imageView];
      [v11 setDelegate:v2];

      v12 = [(SearchUICompletionStringView *)v2 imageView];
      [SearchUIAutoLayout requireIntrinsicSizeForView:v12];

      v13 = [(SearchUICompletionStringView *)v2 imageView];
      v14 = [v9 arrayByAddingObject:v13];

      v15 = [(SearchUICompletionStringView *)v2 imageView];
      [objc_opt_class() appIconSize];
      [v15 setLayoutSize:? withContentPriority:?];

      v16 = [(SearchUICompletionStringView *)v2 imageView];
      [v16 setCustomAlignmentRectInsets:{1.0, 1.0, 3.0, 1.0}];

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
  v2 = [(SearchUICompletionStringView *)self labelsStackView];
  v3 = [v2 extensionLabel];

  return v3;
}

- (id)bridgeLabel
{
  v2 = [(SearchUICompletionStringView *)self labelsStackView];
  v3 = [v2 bridgeLabel];

  return v3;
}

- (id)completionLabel
{
  v2 = [(SearchUICompletionStringView *)self labelsStackView];
  v3 = [v2 completionLabel];

  return v3;
}

- (void)setTextColorForCompletionLabel:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICompletionStringView *)self completionLabel];
  [v5 setTextColor:v4];

  [(SearchUICompletionStringView *)self updateFields];
}

- (UIColor)textColorForCompletionLabel
{
  v2 = [(SearchUICompletionStringView *)self completionLabel];
  v3 = [v2 textColor];

  return v3;
}

- (void)setFontForCompletionLabel:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICompletionStringView *)self labelsStackView];
  [v5 setFont:v4];
}

- (UIFont)fontForCompletionLabel
{
  v2 = [(SearchUICompletionStringView *)self completionLabel];
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
    [(SearchUICompletionStringView *)self updateFields];
    v5 = v6;
  }
}

- (void)updateWithResult:(id)a3 cardSection:(id)a4 focusIsOnFirstResult:(BOOL)a5
{
  v5 = a5;
  v13 = a3;
  v8 = a4;
  v9 = [(SearchUICompletionStringView *)self result];
  if (v9 != v13 || [(SearchUICompletionStringView *)self focusIsOnFirstResult]!= v5)
  {
    goto LABEL_5;
  }

  v10 = [(SearchUICompletionStringView *)self cardSection];
  v11 = v10;
  if (v10 != v8)
  {

LABEL_5:
LABEL_6:
    [(SearchUICompletionStringView *)self setResult:v13];
    [(SearchUICompletionStringView *)self setCardSection:v8];
    [(SearchUICompletionStringView *)self setFocusIsOnFirstResult:v5];
    [(SearchUICompletionStringView *)self updateFields];
    goto LABEL_7;
  }

  v12 = [(SearchUICompletionStringView *)self requireResultForCompletion];

  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (void)updateFields
{
  v3 = [(SearchUICompletionStringView *)self searchFieldModel];
  if (([v3 searchFieldHasTokens] & 1) != 0 || (-[SearchUICompletionStringView result](self, "result"), (v4 = objc_claimAutoreleasedReturnValue()) == 0) && -[SearchUICompletionStringView requireResultForCompletion](self, "requireResultForCompletion"))
  {

LABEL_6:
    v7 = [(SearchUICompletionStringView *)self labelsStackView];
    [v7 setHidden:1];

    v8 = [(SearchUICompletionStringView *)self imageView];
    [v8 setHidden:1];

    v9 = [(SearchUICompletionStringView *)self extensionLabel];
    [v9 setText:0];

    v10 = [(SearchUICompletionStringView *)self completionLabel];
    [v10 setText:0];

    v11 = [(SearchUICompletionStringView *)self imageView];
    [v11 updateWithImage:0];

    v12 = 0;
    goto LABEL_39;
  }

  v5 = [(SearchUICompletionStringView *)self searchFieldModel];
  v6 = [v5 hasMarkedText];

  if (v6)
  {
    goto LABEL_6;
  }

  v13 = [(SearchUICompletionStringView *)self extensionLabel];
  [v13 setAttributedText:0];

  v14 = [(SearchUICompletionStringView *)self result];
  if (v14)
  {
    v4 = [(SearchUICompletionStringView *)self searchFieldModel];
    v15 = [v4 displayedText];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(SearchUICompletionStringView *)self labelsStackView];
  [v16 setTypedString:v15];

  if (v14)
  {
  }

  v17 = [(SearchUICompletionStringView *)self searchFieldModel];
  v18 = [v17 displayedText];
  v19 = [(SearchUICompletionStringView *)self result];
  v20 = [(SearchUICompletionStringView *)self cardSection];
  v52 = [SearchUICompletion initWithAttributedTypedString:v18 result:v19 cardSection:v20];

  v21 = [v52 completionString];
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v23 = [v52 extensionString];
    v22 = v23 != 0;
  }

  v24 = [v52 completionString];
  v25 = [(SearchUICompletionStringView *)self completionLabel];
  [v25 setAttributedText:v24];

  if (v22 || ![(SearchUICompletionStringView *)self requireResultForCompletion])
  {
    v26 = [(SearchUICompletionStringView *)self searchFieldModel];
    v27 = [v26 displayedText];
    v28 = [(SearchUICompletionStringView *)self completionLabel];
    [v28 setAttributedText:v27];
  }

  v29 = [(SearchUICompletionStringView *)self completionLabel];
  v30 = [v29 attributedText];
  if ([v30 length])
  {
    v31 = 1.0;
  }

  else
  {
    v31 = 0.0;
  }

  v32 = [(SearchUICompletionStringView *)self completionLabel];
  [v32 setAlpha:v31];

  v33 = [v52 completionString];
  if ([v33 length] == 0 && !v22)
  {

    goto LABEL_25;
  }

  v34 = [v52 extensionString];

  if (!v34)
  {
LABEL_25:
    v40 = [(SearchUICompletionStringView *)self extensionLabel];
    [v40 setText:0];

    v37 = [(SearchUICompletionStringView *)self bridgeLabel];
    [v37 setText:0];
    v39 = 0;
    goto LABEL_26;
  }

  v35 = [v52 extensionString];
  v36 = [(SearchUICompletionStringView *)self extensionLabel];
  [v36 setText:v35];

  v37 = [v52 bridgeString];
  v38 = [(SearchUICompletionStringView *)self bridgeLabel];
  [v38 setText:v37];

  v39 = 1;
LABEL_26:

  v41 = [(SearchUICompletionStringView *)self extensionLabel];
  [v41 setHidden:v39 ^ 1u];

  v42 = [(SearchUICompletionStringView *)self bridgeLabel];
  [v42 setHidden:v39 ^ 1u];

  if (v39)
  {
    v43 = 0;
  }

  else
  {
    v42 = [(SearchUICompletionStringView *)self completionLabel];
    [v42 alpha];
    if (v44 == 0.0)
    {
      v43 = 1;
    }

    else
    {
      v43 = [v52 isCompletionStringFullyMatched];
    }
  }

  v45 = [(SearchUICompletionStringView *)self labelsStackView];
  v46 = [v45 extensionLabelBackgroundView];
  [v46 setHidden:v43];

  if ((v39 & 1) == 0)
  {
  }

  if ([objc_opt_class() supportsImages])
  {
    v47 = [v52 image];
    v48 = +[SearchUIImage imageWithSFImage:variantForAppIcon:](SearchUIImage, "imageWithSFImage:variantForAppIcon:", v47, [objc_opt_class() preferredAppIconVariant]);

    v49 = [(SearchUICompletionStringView *)self imageView];
    v50 = v49;
    if (v48)
    {
      [v49 updateWithImage:v48];
    }

    else
    {
      [v49 updateWithImage:0];

      v50 = [(SearchUICompletionStringView *)self imageView];
      [v50 setHidden:1];
    }
  }

  [(SearchUICompletionStringView *)self updateLabelStackVisibility];
  v12 = v52;
LABEL_39:
  v53 = v12;
  [(SearchUICompletionStringView *)self setCompletion:v12];
  v51 = [(SearchUICompletionStringView *)self superview];
  [v51 setNeedsLayout];
}

- (void)didUpdateWithImage:(id)a3
{
  v4 = [(SearchUICompletionStringView *)self imageView];
  [v4 setHidden:0];

  [(SearchUICompletionStringView *)self updateLabelStackVisibility];
}

- (void)didFailToLoadImage
{
  v3 = [(SearchUICompletionStringView *)self imageView];
  [v3 setHidden:1];

  [(SearchUICompletionStringView *)self updateLabelStackVisibility];
}

- (void)updateLabelStackVisibility
{
  v3 = [(SearchUICompletionStringView *)self imageView];
  if (v3)
  {
    v4 = [(SearchUICompletionStringView *)self imageView];
    v5 = [v4 currentImage];
    if (v5)
    {
      v6 = [(SearchUICompletionStringView *)self imageView];
      v7 = [v6 isHidden];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v12 = [(SearchUICompletionStringView *)self completionLabel];
  [v12 alpha];
  v9 = v8;
  if (v8 == 0.0)
  {
    v3 = [(SearchUICompletionStringView *)self extensionLabel];
    v10 = [v3 isHidden] & v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(SearchUICompletionStringView *)self labelsStackView];
  [v11 setHidden:v10];

  if (v9 == 0.0)
  {
  }
}

- (BOOL)hasContent
{
  v4 = [(SearchUICompletionStringView *)self hasPrefix];
  if (!v4)
  {
    v2 = [(SearchUICompletionStringView *)self extensionLabel];
    if ([v2 isHidden])
    {
      LOBYTE(v5) = 0;
LABEL_5:

      return v5;
    }
  }

  v6 = [(SearchUICompletionStringView *)self labelsStackView];
  v5 = [v6 isHidden] ^ 1;

  if (!v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (BOOL)hasPrefix
{
  v3 = [(SearchUICompletionStringView *)self completionLabel];
  [v3 alpha];
  if (v4 == 0.0)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v5 = [(SearchUICompletionStringView *)self labelsStackView];
    v6 = [v5 isHidden] ^ 1;
  }

  return v6;
}

- (NSString)completionText
{
  if ([(SearchUICompletionStringView *)self hasPrefix])
  {
    v3 = [(SearchUICompletionStringView *)self completionLabel];
    v4 = [v3 attributedText];
    v5 = [v4 string];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)trailingPaddingForFieldEditor
{
  v3 = [(SearchUICompletionStringView *)self imageView];
  v4 = [v3 currentImage];

  if (!v4)
  {
    return 0.0;
  }

  [(NUIContainerStackView *)self spacing];
  v6 = v5;
  v7 = [(SearchUICompletionStringView *)self imageView];
  v8 = [v7 currentImage];
  [v8 size];
  v10 = v6 + v9;

  return v10;
}

@end