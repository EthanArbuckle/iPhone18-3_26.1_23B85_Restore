@interface TLKDescriptionView
- (BOOL)moreButtonIsHidden;
- (BOOL)shouldHideMoreButtonForTextView:(id)view;
- (CGSize)textSizeForTextView:(id)view width:(double)width lineCount:(unint64_t)count;
- (TLKDescriptionViewDelegate)delegate;
- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins;
- (id)detailTextViewText;
- (id)exclusionPathsForTextView;
- (id)setupContentView;
- (id)viewForFirstBaselineLayout;
- (int64_t)numberOfLines;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)didMoveToWindow;
- (void)footnoteButtonPressed;
- (void)moreButtonPressed;
- (void)observedPropertiesChanged;
- (void)setExclusionPathInContainer:(id)container includeMoreButton:(BOOL)button;
- (void)setFootnoteButtonText:(id)text;
- (void)setImage:(id)image;
- (void)setMoreButtonText:(id)text;
- (void)setText:(id)text;
- (void)setTitle:(id)title;
- (void)setTrailingFootnoteButtonText:(id)text;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)trailingFootnoteButtonPressed:(id)pressed;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TLKDescriptionView

- (id)setupContentView
{
  v23[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDCF8] isShort:0 isBold:1];
  [v3 setFont:v5];

  [TLKLayoutUtilities requireIntrinsicSizeForView:v3];
  v6 = objc_opt_new();
  if (+[TLKUtilities isIpad](TLKUtilities, "isIpad") || +[TLKUtilities isMacOS])
  {
    v4 = *MEMORY[0x1E69DDD80];
  }

  v7 = [TLKFontUtilities cachedFontForTextStyle:v4 isShort:0 isBold:0];
  [v6 setFont:v7];

  v8 = objc_opt_new();
  font = [v6 font];
  [v8 setFont:font];

  [v8 addTarget:self action:sel_moreButtonPressed];
  v10 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v10];
  v11 = [TLKDescriptionContainerBoxView alloc];
  v23[0] = v10;
  v23[1] = v6;
  v23[2] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v13 = [(NUIContainerBoxView *)v11 initWithArrangedSubviews:v12];

  [(TLKDescriptionContainerBoxView *)v13 setViewForFirstAndLastBaseline:v6];
  [(NUIContainerBoxView *)v13 setHorizontalAlignment:1];
  [(NUIContainerBoxView *)v13 setVerticalAlignment:1];
  [(TLKDescriptionContainerBoxView *)v13 setDelegate:self];
  [(TLKDescriptionContainerBoxView *)v13 setAlignment:0 forView:v6 inAxis:0];
  [(TLKDescriptionContainerBoxView *)v13 setAlignment:4 forView:v8 inAxis:0];
  [(TLKDescriptionContainerBoxView *)v13 setAlignment:4 forView:v8 inAxis:1];
  [TLKView makeContainerShadowCompatible:v13];
  [(TLKDescriptionView *)self setTitleLabel:v3];
  [(TLKDescriptionView *)self setDetailsTextView:v6];
  [(TLKDescriptionView *)self setMoreButton:v8];
  [(TLKDescriptionView *)self setImageAndDescriptionBoxView:v13];
  [(TLKDescriptionView *)self setImageView:v10];
  [(TLKDescriptionView *)self setImageViewExclusionPath:0];
  [(TLKDescriptionView *)self setMoreButtonExclusionPath:0];
  v14 = [TLKStackView alloc];
  v22[0] = v3;
  v22[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v16 = [(NUIContainerStackView *)v14 initWithArrangedSubviews:v15];

  [(TLKStackView *)v16 setAxis:1];
  [(NUIContainerStackView *)v16 setSpacing:1.0];
  [(TLKStackView *)v16 setDelegate:self];
  [(TLKDescriptionView *)self setStackView:v16];
  imageAndDescriptionBoxView = [(TLKDescriptionView *)self imageAndDescriptionBoxView];
  [imageAndDescriptionBoxView effectiveBaselineOffsetFromBottom];
  v19 = v18;

  imageView = [(TLKDescriptionView *)self imageView];
  [imageView setCustomAlignmentRectInsets:{0.0, 0.0, -v19, 0.0}];

  return v16;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKDescriptionView;
  [(TLKDescriptionView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKDescriptionView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKDescriptionView *)self traitCollection];
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
  v3.super_class = TLKDescriptionView;
  [(TLKDescriptionView *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v10.receiver = self;
  v10.super_class = TLKDescriptionView;
  appearanceCopy = appearance;
  [(UIView *)&v10 tlk_updateForAppearance:appearanceCopy];
  isVibrant = [appearanceCopy isVibrant];

  if (isVibrant)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  moreButton = [(TLKDescriptionView *)self moreButton];
  [moreButton setProminence:v6];

  footnoteButton = [(TLKDescriptionView *)self footnoteButton];
  [footnoteButton setProminence:3];

  trailingFootnoteButton = [(TLKDescriptionView *)self trailingFootnoteButton];
  [trailingFootnoteButton setProminence:3];
}

- (void)setText:(id)text
{
  v34 = *MEMORY[0x1E69E9840];
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = textCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_text;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      textCopy = v23;
    }
  }

  objc_storeStrong(&self->_text, text);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_text setObserver:self];
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
      v12 = self->_text;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setTitle:(id)title
{
  v34 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = titleCopy;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_title;
      v7 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
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

          v8 = [(TLKMultilineText *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      titleCopy = v23;
    }
  }

  objc_storeStrong(&self->_title, title);
  if (objc_opt_respondsToSelector())
  {
    [(TLKObject *)self->_title setObserver:self];
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
      v12 = self->_title;
      v13 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

          v14 = [(TLKMultilineText *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setMoreButtonText:(id)text
{
  textCopy = text;
  if (self->_moreButtonText != textCopy)
  {
    objc_storeStrong(&self->_moreButtonText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setFootnoteButtonText:(id)text
{
  textCopy = text;
  if (self->_footnoteButtonText != textCopy)
  {
    objc_storeStrong(&self->_footnoteButtonText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setTrailingFootnoteButtonText:(id)text
{
  textCopy = text;
  if (self->_trailingFootnoteButtonText != textCopy)
  {
    objc_storeStrong(&self->_trailingFootnoteButtonText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)observedPropertiesChanged
{
  v56[3] = *MEMORY[0x1E69E9840];
  text = [(TLKDescriptionView *)self text];
  detailsTextView = [(TLKDescriptionView *)self detailsTextView];
  [detailsTextView setMultilineText:text];

  footnoteButtonText = [(TLKDescriptionView *)self footnoteButtonText];
  trailingFootnoteButtonText = [(TLKDescriptionView *)self trailingFootnoteButtonText];
  if (!(footnoteButtonText | trailingFootnoteButtonText))
  {
    goto LABEL_10;
  }

  footnoteButtonStackView = [(TLKDescriptionView *)self footnoteButtonStackView];

  if (!footnoteButtonStackView)
  {
    v11 = +[TLKFontUtilities shortFootnoteFont];
    delegate = objc_opt_new();
    [delegate setFont:v11];
    [delegate setAlignment:4];
    LODWORD(v12) = 1148846080;
    [delegate setContentHuggingPriority:0 forAxis:v12];
    [delegate addTarget:self action:sel_footnoteButtonPressed];
    [(TLKDescriptionView *)self setFootnoteButton:delegate];
    footnoteButton2 = objc_opt_new();
    [footnoteButton2 setFont:v11];
    if (+[TLKLayoutUtilities isLTR])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    [footnoteButton2 setAlignment:v13];
    LODWORD(v14) = 1148846080;
    [footnoteButton2 setContentHuggingPriority:0 forAxis:v14];
    [footnoteButton2 addTarget:self action:sel_trailingFootnoteButtonPressed_];
    [(TLKDescriptionView *)self setTrailingFootnoteButton:footnoteButton2];
    v15 = objc_opt_new();
    [(TLKDescriptionView *)self setFootnoteButtonStackDummyView:v15];

    v16 = [TLKStackView alloc];
    footnoteButtonStackDummyView = [(TLKDescriptionView *)self footnoteButtonStackDummyView];
    v56[1] = footnoteButtonStackDummyView;
    v56[2] = footnoteButton2;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
    v19 = [(NUIContainerStackView *)v16 initWithArrangedSubviews:v18];
    [(TLKDescriptionView *)self setFootnoteButtonStackView:v19];

    footnoteButtonStackView2 = [(TLKDescriptionView *)self footnoteButtonStackView];
    [footnoteButtonStackView2 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

    stackView = [(TLKDescriptionView *)self stackView];
    footnoteButtonStackView3 = [(TLKDescriptionView *)self footnoteButtonStackView];
    [stackView addArrangedSubview:footnoteButtonStackView3];
  }

  footnoteButton = [(TLKDescriptionView *)self footnoteButton];
  [footnoteButton setTitle:footnoteButtonText];

  trailingFootnoteButton = [(TLKDescriptionView *)self trailingFootnoteButton];
  [trailingFootnoteButton setTitle:trailingFootnoteButtonText];

  if (footnoteButtonText)
  {
    trailingFootnoteButton = [(TLKDescriptionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(TLKDescriptionView *)self delegate];
      footnoteButton2 = [(TLKDescriptionView *)self footnoteButton];
      v24 = [delegate configureMenuForFootnoteButton:footnoteButton2];
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = 0;
    }
  }

  else
  {
LABEL_10:
    v25 = 0;
    v24 = 0;
  }

  footnoteButton3 = [(TLKDescriptionView *)self footnoteButton];
  [footnoteButton3 setShowsMenuAsPrimaryAction:v24];

  if (v25)
  {
  }

  if (footnoteButtonText)
  {
  }

  if (trailingFootnoteButtonText)
  {
    trailingFootnoteButton = [(TLKDescriptionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate = [(TLKDescriptionView *)self delegate];
      footnoteButton2 = [(TLKDescriptionView *)self trailingFootnoteButton];
      v27 = [delegate configureMenuForTrailingFootnoteButton:footnoteButton2];
      v28 = 1;
    }

    else
    {
      v28 = 0;
      v27 = 0;
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  trailingFootnoteButton2 = [(TLKDescriptionView *)self trailingFootnoteButton];
  [trailingFootnoteButton2 setShowsMenuAsPrimaryAction:v27];

  if (v28)
  {
  }

  if (trailingFootnoteButtonText)
  {
  }

  moreButtonText = footnoteButtonText == 0;
  footnoteButtonStackView4 = [(TLKDescriptionView *)self footnoteButtonStackView];
  [footnoteButtonStackView4 setHidden:(footnoteButtonText | trailingFootnoteButtonText) == 0];

  footnoteButtonStackView5 = [(TLKDescriptionView *)self footnoteButtonStackView];
  v33 = [footnoteButtonStackView5 axis] == 1;
  footnoteButtonStackDummyView2 = [(TLKDescriptionView *)self footnoteButtonStackDummyView];
  [footnoteButtonStackDummyView2 setHidden:v33];

  footnoteButton4 = [(TLKDescriptionView *)self footnoteButton];
  [footnoteButton4 setHidden:moreButtonText];

  trailingFootnoteButton3 = [(TLKDescriptionView *)self trailingFootnoteButton];
  [trailingFootnoteButton3 setHidden:trailingFootnoteButtonText == 0];

  text2 = [(TLKDescriptionView *)self text];
  maxLines = [text2 maxLines];
  if (maxLines)
  {
    moreButtonText = [(TLKDescriptionView *)self moreButtonText];
    v39 = moreButtonText == 0;
  }

  else
  {
    v39 = 1;
  }

  moreButton = [(TLKDescriptionView *)self moreButton];
  [moreButton setHidden:v39];

  if (maxLines)
  {
  }

  moreButtonText2 = [(TLKDescriptionView *)self moreButtonText];
  moreButton2 = [(TLKDescriptionView *)self moreButton];
  [moreButton2 setTitle:moreButtonText2];

  image = [(TLKDescriptionView *)self image];
  imageView = [(TLKDescriptionView *)self imageView];
  [imageView setHidden:image == 0];

  image2 = [(TLKDescriptionView *)self image];
  imageView2 = [(TLKDescriptionView *)self imageView];
  [imageView2 setTlkImage:image2];

  title = [(TLKDescriptionView *)self title];
  titleLabel = [(TLKDescriptionView *)self titleLabel];
  [titleLabel setHidden:title == 0];

  title2 = [(TLKDescriptionView *)self title];
  text3 = [title2 text];
  titleLabel2 = [(TLKDescriptionView *)self titleLabel];
  [titleLabel2 setText:text3];

  imageViewExclusionPath = [(TLKDescriptionView *)self imageViewExclusionPath];
  if (!imageViewExclusionPath || (v53 = imageViewExclusionPath, [(TLKDescriptionView *)self image], v54 = objc_claimAutoreleasedReturnValue(), v54, v53, !v54))
  {
    [(TLKDescriptionView *)self setImageViewExclusionPath:0];
  }

  v55 = [MEMORY[0x1E69DC728] bezierPathWithRect:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(TLKDescriptionView *)self setMoreButtonExclusionPath:v55];

  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (id)viewForFirstBaselineLayout
{
  titleLabel = [(TLKDescriptionView *)self titleLabel];
  if ([titleLabel isHidden])
  {
    imageAndDescriptionBoxView = [(TLKDescriptionView *)self imageAndDescriptionBoxView];
    viewForFirstBaselineLayout = [imageAndDescriptionBoxView viewForFirstBaselineLayout];
  }

  else
  {
    viewForFirstBaselineLayout = [(TLKDescriptionView *)self titleLabel];
  }

  return viewForFirstBaselineLayout;
}

- (UIEdgeInsets)defaultBaselineRelativeLayoutMargins
{
  v23.receiver = self;
  v23.super_class = TLKDescriptionView;
  [(TLKView *)&v23 defaultBaselineRelativeLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  titleLabel = [(TLKDescriptionView *)self titleLabel];
  if ([titleLabel isHidden])
  {
    imageView = [(TLKDescriptionView *)self imageView];
    isHidden = [imageView isHidden];

    if ((isHidden & 1) == 0)
    {
      detailsTextView = [(TLKDescriptionView *)self detailsTextView];
      font = [detailsTextView font];
      [font ascender];
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:?];
      v17 = v16;

      [objc_opt_class() defaultLayoutMargins];
      v4 = v17 + v18;
    }
  }

  else
  {
  }

  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  imageView = [(TLKDescriptionView *)self imageView];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __85__TLKDescriptionView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke;
  v32[3] = &unk_1E7FD8FB0;
  v32[4] = self;
  *&v32[5] = width;
  *&v32[6] = height;
  [imageView performBatchUpdates:v32];

  imageAndDescriptionBoxView = [(TLKDescriptionView *)self imageAndDescriptionBoxView];

  if (!reason && imageAndDescriptionBoxView == viewCopy)
  {
    image = [(TLKDescriptionView *)self image];

    if (image)
    {
      imageView2 = [(TLKDescriptionView *)self imageView];
      [imageView2 intrinsicContentSize];
      v15 = v14;
      v17 = v16;

      detailsTextView = [(TLKDescriptionView *)self detailsTextView];
      font = [detailsTextView font];

      v21 = *MEMORY[0x1E695F058];
      v20 = *(MEMORY[0x1E695F058] + 8);
      v22 = v15 + 10.0;
      [TLKLayoutUtilities scaledValueForValue:font withFont:self view:16.0];
      v24 = v17 + v23;
      [font capHeight];
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:?];
      v26 = v24 - v25;
      if (!+[TLKLayoutUtilities isLTR])
      {
        v33.origin.x = v21;
        v33.origin.y = v20;
        v33.size.width = v22;
        v33.size.height = v26;
        [TLKLayoutUtilities ceilingValue:self inView:width - CGRectGetWidth(v33)];
        v21 = v27;
      }

      v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v21, v20, v22, v26}];
      [(TLKDescriptionView *)self setImageViewExclusionPath:v28];
    }

    detailsTextView2 = [(TLKDescriptionView *)self detailsTextView];
    textContainer = [detailsTextView2 textContainer];
    [(TLKDescriptionView *)self setExclusionPathInContainer:textContainer includeMoreButton:0];

    detailsTextView3 = [(TLKDescriptionView *)self detailsTextView];
    [detailsTextView3 invalidateIntrinsicContentSize];

    [viewCopy invalidateIntrinsicContentSize];
  }
}

void __85__TLKDescriptionView_containerView_willMeasureArrangedSubviewsFittingSize_forReason___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40) * 0.5;
  v2 = [*(a1 + 32) imageView];
  [v2 setMaximumLayoutSize:{v1, 1.79769313e308}];
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  imageAndDescriptionBoxView = [(TLKDescriptionView *)self imageAndDescriptionBoxView];

  if (imageAndDescriptionBoxView == subviewsCopy)
  {
    detailsTextView = [(TLKDescriptionView *)self detailsTextView];
    moreButtonText = [(TLKDescriptionView *)self moreButtonText];

    if (moreButtonText)
    {
      v8 = [(TLKDescriptionView *)self shouldHideMoreButtonForTextView:detailsTextView];
      moreButton = [(TLKDescriptionView *)self moreButton];
      [moreButton setHidden:v8];

      moreButton2 = [(TLKDescriptionView *)self moreButton];
      LOBYTE(moreButton) = [moreButton2 isHidden];

      if (moreButton)
      {
        textContainer = [detailsTextView textContainer];
        [(TLKDescriptionView *)self setExclusionPathInContainer:textContainer includeMoreButton:0];
      }

      else
      {
        textContainer = [detailsTextView layoutManager];
        textContainer2 = [detailsTextView textContainer];
        v13 = [textContainer glyphRangeForTextContainer:textContainer2];
        v15 = v14;

        v63 = 0;
        v64 = &v63;
        v65 = 0x2020000000;
        v66 = 0;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v58 = 0;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke;
        v54[3] = &unk_1E7FD8FD8;
        v54[4] = &v63;
        v54[5] = &v59;
        v54[6] = &v55;
        [textContainer enumerateLineFragmentsForGlyphRange:v13 usingBlock:{v15, v54}];
        v16 = +[TLKLayoutUtilities isLTR];
        moreButton3 = [(TLKDescriptionView *)self moreButton];
        moreButton4 = [(TLKDescriptionView *)self moreButton];
        titleLabel = [moreButton4 titleLabel];
        [titleLabel frame];
        [moreButton3 convertRect:detailsTextView toView:?];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        rect = v26;

        v27 = -3.0;
        if (v16)
        {
          v27 = 3.0;
        }

        v28 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v21 - v27, v64[3], v23 + 3.0, v25, rect}];
        [(TLKDescriptionView *)self setMoreButtonExclusionPath:v28];

        textContainer3 = [detailsTextView textContainer];
        [(TLKDescriptionView *)self setExclusionPathInContainer:textContainer3 includeMoreButton:1];

        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke_2;
        v53[3] = &unk_1E7FD8FD8;
        v53[4] = &v63;
        v53[5] = &v59;
        v53[6] = &v55;
        [textContainer enumerateLineFragmentsForGlyphRange:v13 usingBlock:{v15, v53}];
        moreButton5 = [(TLKDescriptionView *)self moreButton];
        [moreButton5 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v39 = v64[3];
        v67.origin.x = v32;
        v67.origin.y = v34;
        v67.size.width = v36;
        v67.size.height = v38;
        Height = CGRectGetHeight(v67);
        v68.origin.x = v21;
        v68.origin.y = recta;
        v68.size.width = v23;
        v68.size.height = v25;
        v41 = CGRectGetHeight(v68);
        [detailsTextView frame];
        v43 = v42;
        if (v16)
        {
          v44 = v60[3] + v56[3];
          v45 = 3.0;
        }

        else
        {
          v44 = v56[3] - v36;
          v45 = -3.0;
        }

        [TLKLayoutUtilities roundedValue:self inView:v44 + v45];
        v47 = v46;
        [TLKLayoutUtilities ceilingValue:self inView:v39 + (Height - v41) * -0.5 + v43];
        v49 = v48;
        moreButton6 = [(TLKDescriptionView *)self moreButton];
        [moreButton6 setFrame:{v47, v49, v36, v38}];

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);
      }
    }
  }
}

void *__61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke(void *result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *(*(result[4] + 8) + 24) = a3;
  *(*(result[5] + 8) + 24) = a8;
  *(*(result[6] + 8) + 24) = a6;
  return result;
}

void *__61__TLKDescriptionView_containerViewDidLayoutArrangedSubviews___block_invoke_2(void *result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (floor(a8) > 1.0)
  {
    *(*(result[4] + 8) + 24) = a3;
    *(*(result[5] + 8) + 24) = a8;
    *(*(result[6] + 8) + 24) = a6;
  }

  return result;
}

- (void)setExclusionPathInContainer:(id)container includeMoreButton:(BOOL)button
{
  buttonCopy = button;
  containerCopy = container;
  imageViewExclusionPath = [(TLKDescriptionView *)self imageViewExclusionPath];
  if (buttonCopy)
  {
    moreButtonExclusionPath = [(TLKDescriptionView *)self moreButtonExclusionPath];
  }

  else
  {
    moreButtonExclusionPath = 0;
  }

  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  if (imageViewExclusionPath)
  {
    v9 = [v8 initWithObjects:{imageViewExclusionPath, moreButtonExclusionPath, 0}];
  }

  else
  {
    v9 = [v8 initWithObjects:{moreButtonExclusionPath, 0, v11}];
  }

  v10 = v9;
  [containerCopy setExclusionPaths:v9];
}

- (CGSize)textSizeForTextView:(id)view width:(double)width lineCount:(unint64_t)count
{
  v8 = MEMORY[0x1E69DB850];
  viewCopy = view;
  v10 = [v8 alloc];
  attributedText = [viewCopy attributedText];
  v12 = [v10 initWithAttributedString:attributedText];

  v13 = [objc_alloc(MEMORY[0x1E69DB800]) initWithSize:{width, 3.40282347e38}];
  v14 = objc_alloc_init(MEMORY[0x1E69DB7C0]);
  [v14 addTextContainer:v13];
  [v12 addLayoutManager:v14];
  [v13 setMaximumNumberOfLines:count];
  textContainer = [viewCopy textContainer];
  [textContainer lineFragmentPadding];
  [v13 setLineFragmentPadding:?];

  textContainer2 = [viewCopy textContainer];
  [v13 setLineBreakMode:{objc_msgSend(textContainer2, "lineBreakMode")}];

  [(TLKDescriptionView *)self setExclusionPathInContainer:v13 includeMoreButton:0];
  [v14 ensureLayoutForTextContainer:v13];
  [v14 usedRectForTextContainer:v13];
  v18 = v17;
  [TLKLayoutUtilities flooredValue:viewCopy inView:v19];
  v21 = v20;

  v22 = v18;
  v23 = v21;
  result.height = v23;
  result.width = v22;
  return result;
}

- (BOOL)shouldHideMoreButtonForTextView:(id)view
{
  viewCopy = view;
  textContainer = [viewCopy textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  if (maximumNumberOfLines && ([viewCopy frame], v8 != 0.0))
  {
    [(TLKDescriptionView *)self textSizeForTextView:viewCopy width:0 lineCount:v7];
    v11 = v10;
    [viewCopy frame];
    v9 = v11 <= v12;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)moreButtonPressed
{
  delegate = [(TLKDescriptionView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    detailsTextView = [(TLKDescriptionView *)self detailsTextView];
    textContainer = [detailsTextView textContainer];
    [(TLKDescriptionView *)self setExclusionPathInContainer:textContainer includeMoreButton:0];

    text = [(TLKDescriptionView *)self text];
    [text setMaxLines:0];

    detailsTextView2 = [(TLKDescriptionView *)self detailsTextView];
    [detailsTextView2 invalidateIntrinsicContentSize];

    delegate2 = [(TLKDescriptionView *)self delegate];
    [delegate2 didPressMoreButton];
  }
}

- (void)footnoteButtonPressed
{
  delegate = [(TLKDescriptionView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(TLKDescriptionView *)self delegate];
    [delegate2 didPressFootnoteButton];
  }
}

- (void)trailingFootnoteButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(TLKDescriptionView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TLKDescriptionView *)self delegate];
    [delegate2 didPressTrailingFootnoteButton:pressedCopy];
  }
}

- (id)detailTextViewText
{
  detailsTextView = [(TLKDescriptionView *)self detailsTextView];
  text = [detailsTextView text];

  return text;
}

- (int64_t)numberOfLines
{
  detailsTextView = [(TLKDescriptionView *)self detailsTextView];
  textContainer = [detailsTextView textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  return maximumNumberOfLines;
}

- (BOOL)moreButtonIsHidden
{
  moreButton = [(TLKDescriptionView *)self moreButton];
  isHidden = [moreButton isHidden];

  return isHidden;
}

- (id)exclusionPathsForTextView
{
  detailsTextView = [(TLKDescriptionView *)self detailsTextView];
  textContainer = [detailsTextView textContainer];
  exclusionPaths = [textContainer exclusionPaths];

  return exclusionPaths;
}

- (TLKDescriptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end