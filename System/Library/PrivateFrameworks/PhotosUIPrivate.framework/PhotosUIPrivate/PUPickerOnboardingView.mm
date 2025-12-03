@interface PUPickerOnboardingView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)attachmentAnchorSize;
- (CGSize)attachmentIconSize;
- (NSAttributedString)attributedText;
- (PUPickerOnboardingView)initWithClientDisplayName:(id)name;
- (PUPickerOnboardingViewDelegate)delegate;
- (UIView)badgeContainerView;
- (void)_updateBadgeConstraints;
- (void)_updateTextView;
- (void)layoutSubviews;
- (void)setBadgeContainerView:(id)view;
- (void)setCompressionLevel:(unint64_t)level;
- (void)setMaximumContentSizeCategory:(id)category;
- (void)transitionToBadge:(id)badge;
- (void)updateTraitsIfNeeded;
@end

@implementation PUPickerOnboardingView

- (UIView)badgeContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_badgeContainerView);

  return WeakRetained;
}

- (PUPickerOnboardingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v7 = [(PUPickerOnboardingView *)self delegate:view];
  [v7 assetPickerOnboardingViewWantsToLearnMoreAboutDataAccess:self];

  return 0;
}

- (void)layoutSubviews
{
  v79[6] = *MEMORY[0x1E69E9840];
  v76.receiver = self;
  v76.super_class = PUPickerOnboardingView;
  [(PUPickerOnboardingView *)&v76 layoutSubviews];
  overlayView = [(PUPickerOnboardingView *)self overlayView];
  isUserInteractionEnabled = [overlayView isUserInteractionEnabled];

  if (isUserInteractionEnabled)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__PUPickerOnboardingView_layoutSubviews__block_invoke;
    aBlock[3] = &unk_1E7B80798;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = *MEMORY[0x1E69DDC40];
    v79[0] = *MEMORY[0x1E69DDC38];
    v79[1] = v6;
    v7 = *MEMORY[0x1E69DDC58];
    v79[2] = *MEMORY[0x1E69DDC50];
    v79[3] = v7;
    v8 = *MEMORY[0x1E69DDC70];
    v79[4] = *MEMORY[0x1E69DDC60];
    v79[5] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:6];
    lastContentSizeCategory = self->_lastContentSizeCategory;
    traitCollection = [(PUPickerOnboardingView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v13 = UIContentSizeCategoryCompareToCategory(lastContentSizeCategory, preferredContentSizeCategory);

    [(PUPickerOnboardingView *)self bounds];
    Height = CGRectGetHeight(v80);
    v15 = *&Height;
    v16 = &OBJC_IVAR___PUSessionInfo__promptLocation;
    if (v13 == NSOrderedSame)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:Height];
      v18 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastHeight];
      v13 = [v17 compare:v18];

      v16 = &OBJC_IVAR___PUSessionInfo__promptLocation;
    }

    if (v13 == NSOrderedDescending)
    {
      if ([(PUPickerOnboardingView *)self compressionLevel]== 7)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:6];
        v61.receiver = self;
        v61.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v61 layoutSubviews];
        if ((v5[2](v5) & 1) == 0)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:7];
        }
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 6)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:5];
        v60.receiver = self;
        v60.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v60 layoutSubviews];
        if ((v5[2](v5) & 1) == 0)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:6];
        }
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 5)
      {
        v47 = v9;
        reverseObjectEnumerator = [v9 reverseObjectEnumerator];
        nextObject = [reverseObjectEnumerator nextObject];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        obj = reverseObjectEnumerator;
        v23 = [obj countByEnumeratingWithState:&v56 objects:v77 count:16];
        v24 = v5;
        if (v23)
        {
          v25 = v23;
          v26 = *v57;
          while (2)
          {
            v27 = 0;
            v28 = nextObject;
            do
            {
              if (*v57 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v56 + 1) + 8 * v27);
              maximumContentSizeCategory = [(PUPickerOnboardingView *)self maximumContentSizeCategory];
              v31 = [maximumContentSizeCategory isEqualToString:v28];

              if (v31)
              {
                [(PUPickerOnboardingView *)self setMaximumContentSizeCategory:v29];
                v55.receiver = self;
                v55.super_class = PUPickerOnboardingView;
                [(PUPickerOnboardingView *)&v55 layoutSubviews];
                if ((v24[2](v24) & 1) == 0)
                {
                  [(PUPickerOnboardingView *)self setMaximumContentSizeCategory:v28];
                  nextObject = v28;
                  goto LABEL_42;
                }
              }

              nextObject = v29;

              ++v27;
              v28 = nextObject;
            }

            while (v25 != v27);
            v25 = [obj countByEnumeratingWithState:&v56 objects:v77 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

LABEL_42:

        v9 = v47;
        firstObject = [v47 firstObject];

        v5 = v24;
        if (nextObject == firstObject)
        {
          [(PUPickerOnboardingView *)self setMaximumContentSizeCategory:0];
          v54.receiver = self;
          v54.super_class = PUPickerOnboardingView;
          [(PUPickerOnboardingView *)&v54 layoutSubviews];
          if ((v24[2](v24) & 1) == 0)
          {
            [(PUPickerOnboardingView *)self setMaximumContentSizeCategory:nextObject];
          }
        }

        v16 = &OBJC_IVAR___PUSessionInfo__promptLocation;
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 5)
      {
        maximumContentSizeCategory2 = [(PUPickerOnboardingView *)self maximumContentSizeCategory];

        if (!maximumContentSizeCategory2)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:4];
          v53.receiver = self;
          v53.super_class = PUPickerOnboardingView;
          [(PUPickerOnboardingView *)&v53 layoutSubviews];
          if ((v5[2](v5) & 1) == 0)
          {
            [(PUPickerOnboardingView *)self setCompressionLevel:5];
          }
        }
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 4)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:3];
        v52.receiver = self;
        v52.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v52 layoutSubviews];
        if ((v5[2](v5) & 1) == 0)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:4];
        }
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 3)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:2];
        v51.receiver = self;
        v51.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v51 layoutSubviews];
        if ((v5[2](v5) & 1) == 0)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:3];
        }
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 2)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:1];
        v50.receiver = self;
        v50.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v50 layoutSubviews];
        if ((v5[2](v5) & 1) == 0)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:2];
        }
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 1)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:0];
        v49.receiver = self;
        v49.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v49 layoutSubviews];
        if ((v5[2](v5) & 1) == 0)
        {
          [(PUPickerOnboardingView *)self setCompressionLevel:1];
        }
      }
    }

    else if (v13 == NSOrderedAscending)
    {
      if (![(PUPickerOnboardingView *)self compressionLevel]&& (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:1];
        v74.receiver = self;
        v74.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v74 layoutSubviews];
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 1 && (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:2];
        v73.receiver = self;
        v73.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v73 layoutSubviews];
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 2 && (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:3];
        v72.receiver = self;
        v72.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v72 layoutSubviews];
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 3 && (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:4];
        v71.receiver = self;
        v71.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v71 layoutSubviews];
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 4 && (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:5];
        v70.receiver = self;
        v70.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v70 layoutSubviews];
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 5)
      {
        objectEnumerator = [v9 objectEnumerator];
        maximumContentSizeCategory3 = [(PUPickerOnboardingView *)self maximumContentSizeCategory];
        v46 = 416;
        if (maximumContentSizeCategory3)
        {
        }

        else if ((v5[2](v5) & 1) == 0)
        {
          nextObject2 = [objectEnumerator nextObject];
          [(PUPickerOnboardingView *)self setMaximumContentSizeCategory:nextObject2];

          v69.receiver = self;
          v69.super_class = PUPickerOnboardingView;
          [(PUPickerOnboardingView *)&v69 layoutSubviews];
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v35 = objectEnumerator;
        v36 = [v35 countByEnumeratingWithState:&v65 objects:v78 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v66;
LABEL_66:
          v39 = 0;
          while (1)
          {
            if (*v66 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v65 + 1) + 8 * v39);
            if (v5[2](v5))
            {
              break;
            }

            maximumContentSizeCategory4 = [(PUPickerOnboardingView *)self maximumContentSizeCategory];
            v42 = UIContentSizeCategoryCompareToCategory(maximumContentSizeCategory4, v40);

            if (v42 != NSOrderedAscending)
            {
              [(PUPickerOnboardingView *)self setMaximumContentSizeCategory:v40];
              v64.receiver = self;
              v64.super_class = PUPickerOnboardingView;
              [(PUPickerOnboardingView *)&v64 layoutSubviews];
            }

            if (v37 == ++v39)
            {
              v37 = [v35 countByEnumeratingWithState:&v65 objects:v78 count:16];
              if (v37)
              {
                goto LABEL_66;
              }

              break;
            }
          }
        }

        v16 = &OBJC_IVAR___PUSessionInfo__promptLocation;
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 5 && (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:6];
        v63.receiver = self;
        v63.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v63 layoutSubviews];
      }

      if ([(PUPickerOnboardingView *)self compressionLevel]== 6 && (v5[2](v5) & 1) == 0)
      {
        [(PUPickerOnboardingView *)self setCompressionLevel:7];
        v62.receiver = self;
        v62.super_class = PUPickerOnboardingView;
        [(PUPickerOnboardingView *)&v62 layoutSubviews];
      }
    }

    traitCollection2 = [(PUPickerOnboardingView *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
    v45 = self->_lastContentSizeCategory;
    self->_lastContentSizeCategory = preferredContentSizeCategory2;

    *(&self->super.super.super.isa + v16[963]) = v15;
  }
}

BOOL __40__PUPickerOnboardingView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) button];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) button];
  [v11 alignmentRectForFrame:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [*(a1 + 32) contentLayoutGuide];
  [v20 layoutFrame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v31.origin.x = v13;
  v31.origin.y = v15;
  v31.size.width = v17;
  v31.size.height = v19;
  v33 = CGRectInset(v31, 1.0, 1.0);
  v32.origin.x = v22;
  v32.origin.y = v24;
  v32.size.width = v26;
  v32.size.height = v28;
  v29 = CGRectContainsRect(v32, v33);

  return v29;
}

- (void)updateTraitsIfNeeded
{
  if ([MEMORY[0x1E69DD250] instancesRespondToSelector:sel_updateTraitsIfNeeded])
  {
    v3.receiver = self;
    v3.super_class = PUPickerOnboardingView;
    [(PUPickerOnboardingView *)&v3 updateTraitsIfNeeded];
  }
}

- (void)setMaximumContentSizeCategory:(id)category
{
  v4.receiver = self;
  v4.super_class = PUPickerOnboardingView;
  [(PUPickerOnboardingView *)&v4 setMaximumContentSizeCategory:category];
  [(PUPickerOnboardingView *)self updateTraitsIfNeeded];
  [(PUPickerOnboardingView *)self _updateTextView];
  [(PUPickerOnboardingView *)self setNeedsLayout];
}

- (void)setBadgeContainerView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  window2 = [(PUPickerOnboardingView *)self window];
  if (window == window2)
  {
    v7 = viewCopy;
  }

  else
  {
    v7 = 0;
  }

  obj = v7;

  WeakRetained = objc_loadWeakRetained(&self->_badgeContainerView);
  v9 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_badgeContainerView, obj);
    [(PUPickerOnboardingView *)self _updateBadgeConstraints];
    v9 = obj;
  }
}

- (void)setCompressionLevel:(unint64_t)level
{
  v34 = *MEMORY[0x1E69E9840];
  if (self->_compressionLevel != level)
  {
    self->_compressionLevel = level;
    [(PUPickerOnboardingView *)self updateTraitsIfNeeded];
    [(PUPickerOnboardingView *)self _updateTextView];
    [(PUPickerOnboardingView *)self setNeedsLayout];
    compressionLevel = self->_compressionLevel;
    [(UIImageView *)self->_largeIconView setHidden:compressionLevel != 0];
    if (compressionLevel)
    {
      [(NSLayoutConstraint *)self->_textViewTopAnchorToLargeIconConstraint setActive:0];
      [(NSLayoutConstraint *)self->_textViewTopAnchorToPlatterConstraint setActive:1];
      buttonBottomSpacing = self->_buttonBottomSpacing * 0.5;
    }

    else
    {
      [(NSLayoutConstraint *)self->_textViewTopAnchorToPlatterConstraint setActive:0];
      [(NSLayoutConstraint *)self->_textViewTopAnchorToLargeIconConstraint setActive:1];
      buttonBottomSpacing = self->_buttonBottomSpacing;
    }

    [(NSLayoutConstraint *)self->_buttonBottomConstraint setConstant:buttonBottomSpacing];
    v6 = self->_compressionLevel;
    if (v6 == 2)
    {
      v7 = 16.0;
    }

    else
    {
      v7 = 8.0;
    }

    if (v6 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 24.0;
    }

    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = self->_platterInsetConstraints;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v28 + 1) + 8 * v13++) setConstant:v8];
        }

        while (v11 != v13);
        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    if (self->_compressionLevel <= 2)
    {
      v14 = 16.0;
    }

    else
    {
      v14 = 8.0;
    }

    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = self->_contentInsetConstraints;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        v19 = 0;
        do
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v24 + 1) + 8 * v19++) setConstant:{v14, v24}];
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v17);
    }

    v20 = self->_compressionLevel;
    v21 = v20 > 3;
    if (v20 <= 3)
    {
      v22 = 16.0;
    }

    else
    {
      v22 = 4.0;
    }

    v23 = &OBJC_IVAR___PUPickerOnboardingView__filledButtonConfiguration;
    if (v21)
    {
      v23 = &OBJC_IVAR___PUPickerOnboardingView__plainButtonConfiguration;
    }

    [(UIButton *)self->_button setConfiguration:*(&self->super.super.super.isa + *v23), v24];
    [(NSLayoutConstraint *)self->_buttonTopConstraint setConstant:v22];
  }
}

- (NSAttributedString)attributedText
{
  v67[3] = *MEMORY[0x1E69E9840];
  attributedText = self->_attributedText;
  if (attributedText)
  {
    v3 = attributedText;
    goto LABEL_11;
  }

  v59 = PULocalizedString(@"PICKER_PRIVACY_TITLE");
  clientDisplayName = [(PUPickerOnboardingView *)self clientDisplayName];
  if (![clientDisplayName length])
  {

    goto LABEL_7;
  }

  clientDisplayName2 = [(PUPickerOnboardingView *)self clientDisplayName];

  if (!clientDisplayName2)
  {
LABEL_7:
    v53 = PULocalizedString(@"PICKER_PRIVACY_MESSAGE_GENERIC");
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = PULocalizedString(@"PICKER_PRIVACY_MESSAGE_%@_APP_NAME");
  v53 = [v7 stringWithFormat:v8, clientDisplayName2];

LABEL_8:
  v51 = PULocalizedString(@"PICKER_PRIVACY_LEARN_MORE_MESSAGE");
  defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
  v10 = [defaultParagraphStyle mutableCopy];

  [v10 setAlignment:1];
  [v10 setLineSpacing:-2.0];
  v58 = [v10 copy];
  [v10 setParagraphSpacing:2.0];
  v55 = v10;
  v11 = [v10 copy];
  v12 = [PUImageTextAttachment alloc];
  attachmentAnchorView = [(PUPickerOnboardingView *)self attachmentAnchorView];
  [(PUPickerOnboardingView *)self attachmentAnchorSize];
  v14 = [(PUImageTextAttachment *)v12 initWithImageView:attachmentAnchorView size:?];

  v54 = v14;
  v15 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v14];
  v16 = [v15 mutableCopy];

  v17 = *MEMORY[0x1E69DB688];
  v57 = v16;
  [v16 addAttribute:*MEMORY[0x1E69DB688] value:v11 range:{0, objc_msgSend(v16, "length")}];
  v64 = *MEMORY[0x1E69DB648];
  v18 = v64;
  titleFont = [(PUPickerOnboardingView *)self titleFont];
  v67[0] = titleFont;
  v65 = *MEMORY[0x1E69DB650];
  v20 = v65;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v66 = v17;
  v67[1] = labelColor;
  v67[2] = v11;
  v56 = v11;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v64 count:3];

  v23 = objc_alloc(MEMORY[0x1E696AAB0]);
  v24 = [v59 stringByAppendingString:@"\n"];
  v52 = v22;
  v25 = [v23 initWithString:v24 attributes:v22];

  v62[0] = v18;
  bodyFont = [(PUPickerOnboardingView *)self bodyFont];
  v63[0] = bodyFont;
  v62[1] = v20;
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  v62[2] = v17;
  v63[1] = labelColor2;
  v63[2] = v58;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];

  v29 = objc_alloc(MEMORY[0x1E696AAB0]);
  v30 = v53;
  v31 = [v53 stringByAppendingString:@" "];
  v50 = v28;
  v32 = [v29 initWithString:v31 attributes:v28];

  v33 = v32;
  v60[0] = v18;
  bodyFont2 = [(PUPickerOnboardingView *)self bodyFont];
  v35 = *MEMORY[0x1E69DB670];
  v61[0] = bodyFont2;
  v61[1] = @"foo://bar";
  v60[1] = v35;
  v60[2] = v17;
  v49 = v17;
  v61[2] = v58;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];

  v37 = v51;
  v38 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:? attributes:?];
  v39 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v57];
  [v39 appendAttributedString:v25];
  [v39 appendAttributedString:v33];
  [v39 appendAttributedString:v38];
  if ([(PUPickerOnboardingView *)self compressionLevel])
  {
    v48 = v25;
    v40 = [PUImageTextAttachment alloc];
    attachmentIconView = [(PUPickerOnboardingView *)self attachmentIconView];
    [(PUPickerOnboardingView *)self attachmentIconSize];
    v42 = [(PUImageTextAttachment *)v40 initWithImageView:attachmentIconView size:?];

    v43 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v42];
    v44 = [v43 mutableCopy];

    v30 = v53;
    v37 = v51;
    [v44 addAttribute:v49 value:v56 range:{0, objc_msgSend(v44, "length")}];
    [v39 insertAttributedString:v44 atIndex:0];

    v25 = v48;
  }

  v45 = [v39 copy];
  v46 = self->_attributedText;
  self->_attributedText = v45;

  v3 = self->_attributedText;
LABEL_11:

  return v3;
}

- (CGSize)attachmentAnchorSize
{
  [(UIFont *)self->_titleFont lineHeight];
  v3 = v2;
  v4 = 3.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)attachmentIconSize
{
  traitCollection = [(PUPickerOnboardingView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = 14.0;
  if (userInterfaceIdiom != 5)
  {
    traitCollection2 = [(PUPickerOnboardingView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection2 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      v5 = 32.0;
    }

    else
    {
      compressionLevel = [(PUPickerOnboardingView *)self compressionLevel];
      switch(compressionLevel)
      {
        case 5uLL:
          v5 = 18.0;
          break;
        case 7uLL:
          v5 = 14.0;
          break;
        case 6uLL:
          v5 = 16.0;
          break;
        default:
          v5 = 20.0;
          break;
      }
    }
  }

  v9 = v5;
  result.height = v9;
  result.width = v5;
  return result;
}

- (void)transitionToBadge:(id)badge
{
  badgeCopy = badge;
  platter = [(PUPickerOnboardingView *)self platter];
  [platter setTranslatesAutoresizingMaskIntoConstraints:1];
  v5 = MEMORY[0x1E696ACD8];
  platterInsetConstraints = [(PUPickerOnboardingView *)self platterInsetConstraints];
  [v5 deactivateConstraints:platterInsetConstraints];

  v7 = MEMORY[0x1E696ACD8];
  contentCenterConstraints = [(PUPickerOnboardingView *)self contentCenterConstraints];
  [v7 deactivateConstraints:contentCenterConstraints];

  v9 = MEMORY[0x1E696ACD8];
  contentInsetConstraints = [(PUPickerOnboardingView *)self contentInsetConstraints];
  [v9 deactivateConstraints:contentInsetConstraints];

  largeIconView = [(PUPickerOnboardingView *)self largeIconView];
  [largeIconView setTranslatesAutoresizingMaskIntoConstraints:1];
  v11 = MEMORY[0x1E696ACD8];
  largeIconViewConstraints = [(PUPickerOnboardingView *)self largeIconViewConstraints];
  [v11 deactivateConstraints:largeIconViewConstraints];

  textView = [(PUPickerOnboardingView *)self textView];
  [textView setTranslatesAutoresizingMaskIntoConstraints:1];
  [textView setAutoresizingMask:40];
  v14 = MEMORY[0x1E696ACD8];
  textViewConstraints = [(PUPickerOnboardingView *)self textViewConstraints];
  [v14 deactivateConstraints:textViewConstraints];

  button = [(PUPickerOnboardingView *)self button];
  [button setTranslatesAutoresizingMaskIntoConstraints:1];
  v17 = MEMORY[0x1E696ACD8];
  buttonConstraints = [(PUPickerOnboardingView *)self buttonConstraints];
  [v17 deactivateConstraints:buttonConstraints];

  badge = [(PUPickerOnboardingView *)self badge];
  delegate = [(PUPickerOnboardingView *)self delegate];
  objc_initWeak(location, self);
  v20 = objc_alloc(MEMORY[0x1E69DD278]);
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke;
  v137[3] = &unk_1E7B80DD0;
  v21 = button;
  v138 = v21;
  v104 = [v20 initWithDuration:v137 controlPoint1:0.3 controlPoint2:? animations:?];
  v22 = objc_alloc(MEMORY[0x1E69DD278]);
  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_2;
  v135[3] = &unk_1E7B80DD0;
  v94 = v21;
  v136 = v94;
  v103 = [v22 initWithDuration:v135 controlPoint1:0.3 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  [v104 startAnimation];
  [v103 startAnimation];
  if ([(PUPickerOnboardingView *)self compressionLevel])
  {
    [(PUPickerOnboardingView *)self attachmentIconView];
  }

  else
  {
    [(PUPickerOnboardingView *)self largeIconView];
  }
  v23 = ;
  [v23 bounds];
  [v23 convertRect:platter toView:?];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  badgeIconView = [(PUPickerOnboardingView *)self badgeIconView];
  [badgeIconView setFrame:{v25, v27, v29, v31}];
  [badgeIconView setAlpha:0.0];
  [badgeIconView setHidden:0];
  badgeLabel = [(PUPickerOnboardingView *)self badgeLabel];
  titleFont = [(PUPickerOnboardingView *)self titleFont];
  [titleFont pointSize];
  v36 = v35;
  font = [badgeLabel font];
  [font pointSize];
  v39 = v38;

  traitCollection = [(PUPickerOnboardingView *)self traitCollection];
  if ([traitCollection layoutDirection])
  {
    v41 = -1.0;
  }

  else
  {
    v41 = 1.0;
  }

  attachmentAnchorView = [(PUPickerOnboardingView *)self attachmentAnchorView];
  v99 = v41;
  v101 = v39;
  v43 = v36;
  [attachmentAnchorView bounds];
  [attachmentAnchorView convertRect:platter toView:?];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  [badgeLabel sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v53 = v52;
  v55 = v54;
  v93 = attachmentAnchorView;
  v140.origin.x = v45;
  v140.origin.y = v47;
  v140.size.width = v49;
  v140.size.height = v51;
  MaxX = CGRectGetMaxX(v140);
  v141.origin.x = v45;
  v141.origin.y = v47;
  v141.size.width = v49;
  v141.size.height = v51;
  [badgeLabel setCenter:{MaxX + v43 / v101 * v53 * 0.5 * v99, CGRectGetMidY(v141)}];
  [badgeLabel setBounds:{0.0, 0.0, v53, v55}];
  CGAffineTransformMakeScale(&v134, v43 / v101, v43 / v101);
  v133 = v134;
  [badgeLabel setTransform:&v133];
  [badgeLabel setAlpha:0.0];
  [badgeLabel setHidden:0];
  v57 = objc_alloc(MEMORY[0x1E69DD278]);
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_3;
  v130[3] = &unk_1E7B80C38;
  v102 = v23;
  v131 = v102;
  v58 = badgeIconView;
  v132 = v58;
  v59 = [v57 initWithDuration:3 curve:v130 animations:0.167];
  [v59 startAnimation];
  v100 = v59;
  v60 = objc_alloc(MEMORY[0x1E69DD278]);
  v127[0] = MEMORY[0x1E69E9820];
  v127[1] = 3221225472;
  v127[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_4;
  v127[3] = &unk_1E7B80C38;
  v61 = platter;
  v128 = v61;
  v62 = badge;
  v129 = v62;
  v63 = [v60 initWithDuration:v127 controlPoint1:0.5 controlPoint2:0.33 animations:{0.0, 0.2, 1.0}];
  [v63 startAnimationAfterDelay:0.167];
  v64 = objc_alloc(MEMORY[0x1E69DD278]);
  v124[0] = MEMORY[0x1E69E9820];
  v124[1] = 3221225472;
  v124[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_5;
  v124[3] = &unk_1E7B80C38;
  v65 = v61;
  v125 = v65;
  v66 = v62;
  v126 = v66;
  v67 = [v64 initWithDuration:v124 controlPoint1:0.5 controlPoint2:0.33 animations:{0.0, 0.2, 1.0}];
  [v67 startAnimationAfterDelay:0.217];
  v92 = v67;
  v68 = objc_alloc(MEMORY[0x1E69DD278]);
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_6;
  v121[3] = &unk_1E7B80C38;
  v69 = badgeLabel;
  v122 = v69;
  v70 = textView;
  v123 = v70;
  v71 = [v68 initWithDuration:v121 controlPoint1:0.167 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  [v71 startAnimationAfterDelay:0.167];
  v91 = v71;
  v72 = objc_alloc(MEMORY[0x1E69DD278]);
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_7;
  v117[3] = &unk_1E7B809F0;
  v73 = v58;
  v118 = v73;
  v74 = v66;
  v119 = v74;
  v75 = v69;
  v120 = v75;
  v76 = [v72 initWithDuration:v117 controlPoint1:0.5 controlPoint2:0.33 animations:{0.0, 0.2, 1.0}];
  [v76 startAnimationAfterDelay:0.167];
  overlayView = [(PUPickerOnboardingView *)self overlayView];
  v90 = v70;
  v78 = objc_alloc(MEMORY[0x1E69DD278]);
  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_8;
  v115[3] = &unk_1E7B80DD0;
  v79 = overlayView;
  v116 = v79;
  v80 = [v78 initWithDuration:v115 controlPoint1:0.333 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  [v80 startAnimationAfterDelay:0.334];
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_9;
  v112[3] = &unk_1E7B80770;
  v81 = delegate;
  v113 = v81;
  objc_copyWeak(&v114, location);
  [v80 addCompletion:v112];
  v98 = v63;
  [v73 flipToPrivacyIconAfterDelay:1.167];
  v89 = v75;
  v82 = objc_alloc(MEMORY[0x1E69DD278]);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_10;
  v110[3] = &unk_1E7B80DD0;
  v83 = v65;
  v111 = v83;
  v84 = [v82 initWithDuration:v110 controlPoint1:0.167 controlPoint2:0.33 animations:{0.0, 0.8, 0.7}];
  [v84 startAnimationAfterDelay:3.217];
  v85 = objc_alloc(MEMORY[0x1E69DD278]);
  v108[0] = MEMORY[0x1E69E9820];
  v108[1] = 3221225472;
  v108[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_11;
  v108[3] = &unk_1E7B80DD0;
  v86 = v83;
  v109 = v86;
  v87 = [v85 initWithDuration:v108 controlPoint1:0.167 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  [v87 startAnimationAfterDelay:3.217];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __44__PUPickerOnboardingView_transitionToBadge___block_invoke_12;
  v105[3] = &unk_1E7B80770;
  v88 = v81;
  v106 = v88;
  objc_copyWeak(&v107, location);
  [v87 addCompletion:v105];
  objc_destroyWeak(&v107);

  objc_destroyWeak(&v114);
  objc_destroyWeak(location);
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.5, 0.5);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke_4(uint64_t a1)
{
  [*(a1 + 40) bounds];
  [*(a1 + 32) setBounds:?];
  [*(a1 + 40) _cornerRadius];
  v2 = *(a1 + 32);

  return [v2 _setCornerRadius:?];
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke_5(uint64_t a1)
{
  [*(a1 + 40) center];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke_7(id *a1)
{
  [a1[5] imageFrame];
  [a1[4] setFrame:?];
  v2 = a1[6];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  [a1[5] labelFrame];
  return [a1[6] setFrame:?];
}

void __44__PUPickerOnboardingView_transitionToBadge___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 assetPickerOnboardingViewDidTransitionToBadge:WeakRetained];
}

uint64_t __44__PUPickerOnboardingView_transitionToBadge___block_invoke_10(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.75, 0.75);
  v2 = *(a1 + 32);
  v4 = v5;
  return [v2 setTransform:&v4];
}

void __44__PUPickerOnboardingView_transitionToBadge___block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 assetPickerOnboardingViewDidDismissBadge:WeakRetained];
}

- (void)_updateBadgeConstraints
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (self->_badgeConstraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  badgeContainerView = [(PUPickerOnboardingView *)self badgeContainerView];
  v4 = badgeContainerView;
  if (badgeContainerView)
  {
    selfCopy = badgeContainerView;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  leadingAnchor = [(PUPickerPrivacyBadge *)self->_badge leadingAnchor];
  safeAreaLayoutGuide = [(PUPickerOnboardingView *)v6 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v19[0] = v9;
  topAnchor = [(PUPickerPrivacyBadge *)self->_badge topAnchor];
  safeAreaLayoutGuide2 = [(PUPickerOnboardingView *)v6 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide2 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  badgeConstraints = self->_badgeConstraints;
  self->_badgeConstraints = v14;

  v16 = MEMORY[0x1E696ACD8];
  v17 = self->_badgeConstraints;

  [v16 activateConstraints:v17];
}

- (void)_updateTextView
{
  v25[1] = *MEMORY[0x1E69E9840];
  attributedText = self->_attributedText;
  self->_attributedText = 0;

  traitCollection = [(PUPickerOnboardingView *)self traitCollection];
  v5 = 0;
  compressionLevel = self->_compressionLevel;
  if (compressionLevel > 4)
  {
    if (compressionLevel == 5)
    {
      v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] compatibleWithTraitCollection:traitCollection];
      v8 = MEMORY[0x1E69DB880];
      v9 = MEMORY[0x1E69DDD08];
    }

    else
    {
      if (compressionLevel != 6)
      {
        v7 = 0;
        if (compressionLevel != 7)
        {
          goto LABEL_6;
        }

        v21 = *MEMORY[0x1E69DDD10];
        v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:traitCollection];
        v8 = MEMORY[0x1E69DB880];
        v10 = v21;
        goto LABEL_5;
      }

      v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] compatibleWithTraitCollection:traitCollection];
      v8 = MEMORY[0x1E69DB880];
      v9 = MEMORY[0x1E69DDD10];
    }

LABEL_4:
    v10 = *v9;
LABEL_5:
    v5 = [v8 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:traitCollection];
    goto LABEL_6;
  }

  v7 = 0;
  if (compressionLevel < 5)
  {
    v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] compatibleWithTraitCollection:traitCollection];
    v8 = MEMORY[0x1E69DB880];
    v9 = MEMORY[0x1E69DDD28];
    goto LABEL_4;
  }

LABEL_6:
  v24 = *MEMORY[0x1E69DB8F0];
  v22 = *MEMORY[0x1E69DB990];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
  v23 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v14 = [v7 fontDescriptorByAddingAttributes:v13];

  v15 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];
  titleFont = self->_titleFont;
  self->_titleFont = v15;

  v17 = [MEMORY[0x1E69DB878] fontWithDescriptor:v5 size:0.0];
  bodyFont = self->_bodyFont;
  self->_bodyFont = v17;

  attributedText = [(PUPickerOnboardingView *)self attributedText];
  textView = [(PUPickerOnboardingView *)self textView];
  [textView setAttributedText:attributedText];
}

- (PUPickerOnboardingView)initWithClientDisplayName:(id)name
{
  v199[4] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v192.receiver = self;
  v192.super_class = PUPickerOnboardingView;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(PUPickerOnboardingView *)&v192 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
  if (v9)
  {
    v189 = nameCopy;
    v10 = [nameCopy copy];
    clientDisplayName = v9->_clientDisplayName;
    v9->_clientDisplayName = v10;

    traitCollection = [(PUPickerOnboardingView *)v9 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v14 = [preferredContentSizeCategory copy];
    lastContentSizeCategory = v9->_lastContentSizeCategory;
    v9->_lastContentSizeCategory = v14;

    v9->_lastHeight = 1.79769313e308;
    v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
    overlayView = v9->_overlayView;
    v9->_overlayView = v16;

    v18 = [MEMORY[0x1E69DC888] px_colorNamed:@"PrivacyViewDimming"];
    [(UIView *)v9->_overlayView setBackgroundColor:v18];

    [(UIView *)v9->_overlayView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUPickerOnboardingView *)v9 addSubview:v9->_overlayView];
    v175 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIView *)v9->_overlayView topAnchor];
    topAnchor2 = [(PUPickerOnboardingView *)v9 topAnchor];
    v183 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v199[0] = v183;
    bottomAnchor = [(UIView *)v9->_overlayView bottomAnchor];
    bottomAnchor2 = [(PUPickerOnboardingView *)v9 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v199[1] = v20;
    leadingAnchor = [(UIView *)v9->_overlayView leadingAnchor];
    leadingAnchor2 = [(PUPickerOnboardingView *)v9 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v199[2] = v23;
    trailingAnchor = [(UIView *)v9->_overlayView trailingAnchor];
    trailingAnchor2 = [(PUPickerOnboardingView *)v9 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v199[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:4];
    [v175 activateConstraints:v27];

    v28 = objc_alloc(MEMORY[0x1E69DD298]);
    v29 = [MEMORY[0x1E69DC730] effectWithStyle:5];
    v30 = [v28 initWithEffect:v29];
    platter = v9->_platter;
    v9->_platter = v30;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(UIVisualEffectView *)v9->_platter layer];
    [layer setShadowColor:cGColor];

    layer2 = [(UIVisualEffectView *)v9->_platter layer];
    LODWORD(v36) = 1041865114;
    [layer2 setShadowOpacity:v36];

    v37 = *MEMORY[0x1E695F060];
    v38 = *(MEMORY[0x1E695F060] + 8);
    layer3 = [(UIVisualEffectView *)v9->_platter layer];
    [layer3 setShadowOffset:{v37, v38}];

    layer4 = [(UIVisualEffectView *)v9->_platter layer];
    [layer4 setShadowRadius:1.0];

    [(UIVisualEffectView *)v9->_platter setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v9->_platter _setCornerRadius:10.0];
    [(PUPickerOnboardingView *)v9 addSubview:v9->_platter];
    leadingAnchor3 = [(UIVisualEffectView *)v9->_platter leadingAnchor];
    leadingAnchor4 = [(PUPickerOnboardingView *)v9 leadingAnchor];
    v184 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:24.0];
    v198[0] = v184;
    topAnchor3 = [(UIVisualEffectView *)v9->_platter topAnchor];
    topAnchor4 = [(PUPickerOnboardingView *)v9 topAnchor];
    v41 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:24.0];
    v198[1] = v41;
    trailingAnchor3 = [(PUPickerOnboardingView *)v9 trailingAnchor];
    trailingAnchor4 = [(UIVisualEffectView *)v9->_platter trailingAnchor];
    v44 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:24.0];
    v198[2] = v44;
    bottomAnchor3 = [(PUPickerOnboardingView *)v9 bottomAnchor];
    bottomAnchor4 = [(UIVisualEffectView *)v9->_platter bottomAnchor];
    v47 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4 constant:24.0];
    v198[3] = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:4];
    platterInsetConstraints = v9->_platterInsetConstraints;
    v9->_platterInsetConstraints = v48;

    [MEMORY[0x1E696ACD8] activateConstraints:v9->_platterInsetConstraints];
    v50 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    contentLayoutGuide = v9->_contentLayoutGuide;
    v9->_contentLayoutGuide = v50;

    centerXAnchor = [(UILayoutGuide *)v9->_contentLayoutGuide centerXAnchor];
    safeAreaLayoutGuide = [(PUPickerOnboardingView *)v9 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v197[0] = v54;
    centerYAnchor = [(UILayoutGuide *)v9->_contentLayoutGuide centerYAnchor];
    safeAreaLayoutGuide2 = [(PUPickerOnboardingView *)v9 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide2 centerYAnchor];
    v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v197[1] = v58;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:2];
    contentCenterConstraints = v9->_contentCenterConstraints;
    v9->_contentCenterConstraints = v59;

    leadingAnchor5 = [(UILayoutGuide *)v9->_contentLayoutGuide leadingAnchor];
    leadingAnchor6 = [(UIVisualEffectView *)v9->_platter leadingAnchor];
    v172 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:16.0];
    v196[0] = v172;
    topAnchor5 = [(UILayoutGuide *)v9->_contentLayoutGuide topAnchor];
    topAnchor6 = [(UIVisualEffectView *)v9->_platter topAnchor];
    v167 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:16.0];
    v196[1] = v167;
    trailingAnchor5 = [(UIVisualEffectView *)v9->_platter trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v9->_contentLayoutGuide trailingAnchor];
    v63 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:16.0];
    v196[2] = v63;
    bottomAnchor5 = [(UIVisualEffectView *)v9->_platter bottomAnchor];
    bottomAnchor6 = [(UILayoutGuide *)v9->_contentLayoutGuide bottomAnchor];
    v66 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:16.0];
    v196[3] = v66;
    v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:4];
    contentInsetConstraints = v9->_contentInsetConstraints;
    v9->_contentInsetConstraints = v67;

    [(PUPickerOnboardingView *)v9 addLayoutGuide:v9->_contentLayoutGuide];
    [MEMORY[0x1E696ACD8] activateConstraints:v9->_contentCenterConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:v9->_contentInsetConstraints];
    v69 = objc_alloc(MEMORY[0x1E69A8A00]);
    v70 = PXPlatformAppBundleIdentifier();
    v71 = [v69 initWithBundleIdentifier:v70];

    v182 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:32.0 scale:{32.0, 3.0}];
    v185 = v71;
    v72 = [v71 prepareImageForDescriptor:?];
    cGImage = [v72 CGImage];

    v178 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:cGImage scale:0 orientation:3.0];
    v74 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v178];
    largeIconView = v9->_largeIconView;
    v9->_largeIconView = v74;

    [(UIImageView *)v9->_largeIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((MEMORY[0x1B8C6D660]([(UIImageView *)v9->_largeIconView setAccessibilityIdentifier:@"PickerOnboardingViewIcon"]) & 1) == 0)
    {
      blackColor2 = [MEMORY[0x1E69DC888] blackColor];
      cGColor2 = [blackColor2 CGColor];
      layer5 = [(UIImageView *)v9->_largeIconView layer];
      [layer5 setShadowColor:cGColor2];

      layer6 = [(UIImageView *)v9->_largeIconView layer];
      LODWORD(v80) = 1041865114;
      [layer6 setShadowOpacity:v80];

      layer7 = [(UIImageView *)v9->_largeIconView layer];
      [layer7 setShadowOffset:{v37, v38}];

      layer8 = [(UIImageView *)v9->_largeIconView layer];
      [layer8 setShadowRadius:1.0];
    }

    widthAnchor = [(UIImageView *)v9->_largeIconView widthAnchor];
    v171 = [widthAnchor constraintEqualToConstant:32.0];
    v195[0] = v171;
    heightAnchor = [(UIImageView *)v9->_largeIconView heightAnchor];
    v83 = [heightAnchor constraintEqualToConstant:32.0];
    v195[1] = v83;
    topAnchor7 = [(UIImageView *)v9->_largeIconView topAnchor];
    topAnchor8 = [(UILayoutGuide *)v9->_contentLayoutGuide topAnchor];
    v86 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v195[2] = v86;
    centerXAnchor3 = [(UIImageView *)v9->_largeIconView centerXAnchor];
    centerXAnchor4 = [(UILayoutGuide *)v9->_contentLayoutGuide centerXAnchor];
    v89 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v195[3] = v89;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:4];
    largeIconViewConstraints = v9->_largeIconViewConstraints;
    v9->_largeIconViewConstraints = v90;

    [(PUPickerOnboardingView *)v9 addSubview:v9->_largeIconView];
    [MEMORY[0x1E696ACD8] activateConstraints:v9->_largeIconViewConstraints];
    v92 = objc_alloc(MEMORY[0x1E69DCA78]);
    [(PUPickerOnboardingView *)v9 attachmentAnchorSize];
    v174 = [v92 initWithSize:?];
    v93 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v94 = [v174 imageWithActions:&__block_literal_global_96361];
    v95 = [v93 initWithImage:v94];
    attachmentAnchorView = v9->_attachmentAnchorView;
    v9->_attachmentAnchorView = v95;

    v97 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v98 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"PhotosIndicator"];
    v99 = [v97 initWithImage:v98];
    attachmentIconView = v9->_attachmentIconView;
    v9->_attachmentIconView = v99;

    v101 = [MEMORY[0x1E69DD168] textViewUsingTextLayoutManager:1];
    textContainer = [(UITextView *)v101 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(UITextView *)v101 setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v101 setBackgroundColor:clearColor];

    [(UITextView *)v101 setEditable:0];
    [(UITextView *)v101 setScrollEnabled:0];
    [(UITextView *)v101 setDelaysContentTouches:0];
    [(UITextView *)v101 setSelectable:1];
    [(UITextView *)v101 _setInteractiveTextSelectionDisabled:1];
    textView = v9->_textView;
    v9->_textView = v101;

    [(UITextView *)v9->_textView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)v9->_textView setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v9->_textView setDelegate:v9];
    widthAnchor2 = [(UITextView *)v9->_textView widthAnchor];
    v106 = [widthAnchor2 constraintEqualToConstant:320.0];
    textViewWidthConstraint = v9->_textViewWidthConstraint;
    v9->_textViewWidthConstraint = v106;

    LODWORD(v108) = 1144750080;
    [(NSLayoutConstraint *)v9->_textViewWidthConstraint setPriority:v108];
    topAnchor9 = [(UITextView *)v9->_textView topAnchor];
    bottomAnchor7 = [(UIImageView *)v9->_largeIconView bottomAnchor];
    v111 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:12.0];
    textViewTopAnchorToLargeIconConstraint = v9->_textViewTopAnchorToLargeIconConstraint;
    v9->_textViewTopAnchorToLargeIconConstraint = v111;

    topAnchor10 = [(UITextView *)v9->_textView topAnchor];
    topAnchor11 = [(UILayoutGuide *)v9->_contentLayoutGuide topAnchor];
    v115 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    textViewTopAnchorToPlatterConstraint = v9->_textViewTopAnchorToPlatterConstraint;
    v9->_textViewTopAnchorToPlatterConstraint = v115;

    v194[0] = v9->_textViewWidthConstraint;
    leadingAnchor7 = [(UITextView *)v9->_textView leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v9->_contentLayoutGuide leadingAnchor];
    v119 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v194[1] = v119;
    trailingAnchor7 = [(UILayoutGuide *)v9->_contentLayoutGuide trailingAnchor];
    trailingAnchor8 = [(UITextView *)v9->_textView trailingAnchor];
    v122 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v194[2] = v122;
    v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:3];
    textViewConstraints = v9->_textViewConstraints;
    v9->_textViewConstraints = v123;

    [(PUPickerOnboardingView *)v9 _updateTextView];
    [(PUPickerOnboardingView *)v9 addSubview:v9->_textView];
    v125 = MEMORY[0x1E696ACD8];
    v126 = [(NSArray *)v9->_textViewConstraints arrayByAddingObject:v9->_textViewTopAnchorToLargeIconConstraint];
    [v125 activateConstraints:v126];

    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    filledButtonConfiguration = v9->_filledButtonConfiguration;
    v9->_filledButtonConfiguration = filledButtonConfiguration;

    [(UIButtonConfiguration *)v9->_filledButtonConfiguration setCornerStyle:4];
    [(UIButtonConfiguration *)v9->_filledButtonConfiguration setButtonSize:2];
    v129 = PULocalizedString(@"PICKER_PRIVACY_OK_BUTTON_TITLE");
    [(UIButtonConfiguration *)v9->_filledButtonConfiguration setTitle:v129];

    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    plainButtonConfiguration = v9->_plainButtonConfiguration;
    v9->_plainButtonConfiguration = plainButtonConfiguration;

    [(UIButtonConfiguration *)v9->_plainButtonConfiguration setContentInsets:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
    [(UIButtonConfiguration *)v9->_plainButtonConfiguration setButtonSize:2];
    title = [(UIButtonConfiguration *)v9->_filledButtonConfiguration title];
    [(UIButtonConfiguration *)v9->_plainButtonConfiguration setTitle:title];

    v133 = v9->_filledButtonConfiguration;
    v134 = MEMORY[0x1E69DC738];
    v135 = v9;
    v136 = [v134 buttonWithConfiguration:v133 primaryAction:0];
    [v136 addTarget:v135 action:sel_transitionToBadge_ forControlEvents:0x2000];

    LODWORD(v137) = 1148846080;
    [v136 setContentHuggingPriority:1 forAxis:v137];
    [v136 setRole:1];
    v138 = v135[72];
    v135[72] = v136;

    [v135[72] setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor12 = [v135[72] topAnchor];
    bottomAnchor8 = [(UITextView *)v9->_textView bottomAnchor];
    v141 = [topAnchor12 constraintEqualToAnchor:bottomAnchor8 constant:16.0];
    v142 = v135[75];
    v135[75] = v141;

    bottomAnchor9 = [(UILayoutGuide *)v9->_contentLayoutGuide bottomAnchor];
    bottomAnchor10 = [v135[72] bottomAnchor];
    v145 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v146 = v135[76];
    v135[76] = v145;

    LODWORD(v147) = 1132199936;
    [v135[76] setPriority:v147];
    [v135[76] constant];
    v135[78] = v148;
    v193[0] = v135[75];
    v193[1] = v135[76];
    widthAnchor3 = [v135[72] widthAnchor];
    v150 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:80.0];
    v193[2] = v150;
    centerXAnchor5 = [v135[72] centerXAnchor];
    centerXAnchor6 = [v135 centerXAnchor];
    v153 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v193[3] = v153;
    v154 = [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:4];
    v155 = v135[77];
    v135[77] = v154;

    [v135 addSubview:v135[72]];
    [MEMORY[0x1E696ACD8] activateConstraints:v135[77]];
    v156 = objc_alloc_init(PUPickerPrivacyBadge);
    v157 = v135[81];
    v135[81] = v156;

    [v135[81] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v135[81] setHidden:1];
    [v135 addSubview:v135[81]];
    [v135 _updateBadgeConstraints];
    v158 = [[PUPickerBadgeIconView alloc] initWithFrame:0.0, 0.0, 20.0, 20.0];
    v159 = v135[83];
    v135[83] = v158;

    [v135[83] setHidden:1];
    contentView = [(UIVisualEffectView *)v9->_platter contentView];
    [contentView addSubview:v135[83]];

    v161 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    v162 = v135[84];
    v135[84] = v161;

    labelFont = [v135[81] labelFont];
    [v135[84] setFont:labelFont];

    labelText = [v135[81] labelText];
    [v135[84] setText:labelText];

    [v135[84] setHidden:1];
    contentView2 = [(UIVisualEffectView *)v9->_platter contentView];
    [contentView2 addSubview:v135[84]];

    nameCopy = v189;
  }

  return v9;
}

@end