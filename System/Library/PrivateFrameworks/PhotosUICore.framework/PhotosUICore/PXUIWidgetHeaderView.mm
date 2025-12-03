@interface PXUIWidgetHeaderView
- (BOOL)_canComposeTitleWithSubtitle;
- (BOOL)_hasAccessibilityLargeText;
- (BOOL)_hasSubtitle;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXUIWidgetHeaderViewDelegate)delegate;
- (UIEdgeInsets)contentInsets;
- (id)_captionButtonCreateIfNeeded:(BOOL)needed;
- (id)_captionLabelCreateIfNeeded:(BOOL)needed;
- (id)_subtitleButtonCreateIfNeeded:(BOOL)needed;
- (id)_subtitleLabelCreateIfNeeded:(BOOL)needed;
- (id)_titleLabelCreateIfNeeded:(BOOL)needed;
- (id)_visualEffectViewCreateIfNeeded:(BOOL)needed;
- (void)_handleCaptionButton:(id)button;
- (void)_handleSubtitleButton:(id)button;
- (void)_setConstraints:(id)constraints;
- (void)_setHasContent:(BOOL)content;
- (void)_setNeedsUpdate;
- (void)_updateCaptionIfNeeded;
- (void)_updateHasContentIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateSubtitleIfNeeded;
- (void)_updateTitleIfNeeded;
- (void)layoutSubviews;
- (void)performChanges:(id)changes;
- (void)setAllowUserInteractionWithCaption:(BOOL)caption;
- (void)setAllowUserInteractionWithSubtitle:(BOOL)subtitle;
- (void)setCaption:(id)caption;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setDelegate:(id)delegate;
- (void)setDistanceBetweenTitleBaselineAndSubtitleBaseline:(double)baseline;
- (void)setHorizontalSpacingBetweenTitleAndSubtitle:(double)subtitle;
- (void)setLayoutStyle:(int64_t)style;
- (void)setMinimumDistanceBetweenLastBaselineAndBottom:(double)bottom;
- (void)setMinimumDistanceBetweenTopAndFirstBaseline:(double)baseline;
- (void)setPrimaryFont:(id)font;
- (void)setSecondaryFont:(id)font;
- (void)setSubtitle:(id)subtitle;
- (void)setTextColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation PXUIWidgetHeaderView

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXUIWidgetHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateCaptionIfNeeded
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.caption)
  {
    self->_needsUpdateFlags.caption = 0;
    caption = [(PXUIWidgetHeaderView *)self caption];
    secondaryFont = [(PXUIWidgetHeaderView *)self secondaryFont];
    v5 = secondaryFont;
    if (secondaryFont)
    {
      v6 = secondaryFont;
    }

    else
    {
      v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    }

    v7 = v6;

    textColor = [(PXUIWidgetHeaderView *)self textColor];
    v9 = [caption length] != 0;
    allowUserInteractionWithCaption = [(PXUIWidgetHeaderView *)self allowUserInteractionWithCaption];
    v11 = v9 && !allowUserInteractionWithCaption;
    v12 = v9 & allowUserInteractionWithCaption;
    v13 = [(PXUIWidgetHeaderView *)self _captionLabelCreateIfNeeded:v11];
    v14 = [(PXUIWidgetHeaderView *)self _captionButtonCreateIfNeeded:v12];
    if (v11 == 1)
    {
      [v13 setText:caption];
      [v13 setFont:v7];
      [v13 setTextColor:textColor];
    }

    if (v12)
    {
      if (caption)
      {
        v15 = objc_alloc(MEMORY[0x1E696AAB0]);
        v22 = *MEMORY[0x1E69DB648];
        v23[0] = v7;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v17 = [v15 initWithString:caption attributes:v16];
      }

      else
      {
        v17 = 0;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __46__PXUIWidgetHeaderView__updateCaptionIfNeeded__block_invoke;
      v19[3] = &unk_1E774C620;
      v20 = v14;
      v21 = v17;
      v18 = v17;
      [v20 px_updateTitleUsingBlock:v19];
    }

    [v13 setHidden:v12];
    [v14 setHidden:v12 ^ 1];
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

void __46__PXUIWidgetHeaderView__updateCaptionIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAttributedTitle:*(a1 + 40) forState:0];
  [*(a1 + 32) setContentHorizontalAlignment:1];
  v2 = [*(a1 + 32) titleLabel];
  [v2 setLineBreakMode:0];
}

- (void)_updateSubtitleIfNeeded
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.subtitle)
  {
    self->_needsUpdateFlags.subtitle = 0;
    subtitle = [(PXUIWidgetHeaderView *)self subtitle];
    secondaryFont = [(PXUIWidgetHeaderView *)self secondaryFont];
    v5 = secondaryFont;
    if (secondaryFont)
    {
      v6 = secondaryFont;
    }

    else
    {
      v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    }

    v7 = v6;

    textColor = [(PXUIWidgetHeaderView *)self textColor];
    allowUserInteractionWithSubtitle = [(PXUIWidgetHeaderView *)self allowUserInteractionWithSubtitle];
    _canComposeTitleWithSubtitle = [(PXUIWidgetHeaderView *)self _canComposeTitleWithSubtitle];
    if (_canComposeTitleWithSubtitle)
    {

      subtitle = 0;
    }

    v11 = [subtitle length] != 0;
    v12 = v11 && !allowUserInteractionWithSubtitle;
    v13 = v11 & allowUserInteractionWithSubtitle;
    v14 = [(PXUIWidgetHeaderView *)self _subtitleLabelCreateIfNeeded:v12];
    v15 = v14;
    if (_canComposeTitleWithSubtitle)
    {
      [v14 setText:0];
    }

    v16 = [(PXUIWidgetHeaderView *)self _subtitleButtonCreateIfNeeded:v13];
    if (v12)
    {
      [v15 setText:subtitle];
      [v15 setFont:v7];
      [v15 setTextColor:textColor];
    }

    if (v13)
    {
      if (subtitle)
      {
        v17 = objc_alloc(MEMORY[0x1E696AAB0]);
        v24 = *MEMORY[0x1E69DB648];
        v25[0] = v7;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v19 = [v17 initWithString:subtitle attributes:v18];
      }

      else
      {
        v19 = 0;
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __47__PXUIWidgetHeaderView__updateSubtitleIfNeeded__block_invoke;
      v21[3] = &unk_1E774C620;
      v22 = v16;
      v23 = v19;
      v20 = v19;
      [v22 px_updateTitleUsingBlock:v21];
    }

    [v15 setHidden:v13];
    [v16 setHidden:v13 ^ 1];
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

void __47__PXUIWidgetHeaderView__updateSubtitleIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAttributedTitle:*(a1 + 40) forState:0];
  v2 = *(a1 + 32);
  if ([MEMORY[0x1E695DF58] px_currentCharacterDirection] == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v2 setContentHorizontalAlignment:v3];
  v4 = [*(a1 + 32) titleLabel];
  [v4 setLineBreakMode:0];
}

- (void)_updateTitleIfNeeded
{
  if (self->_needsUpdateFlags.title)
  {
    self->_needsUpdateFlags.title = 0;
    title = [(PXUIWidgetHeaderView *)self title];
    primaryFont = [(PXUIWidgetHeaderView *)self primaryFont];
    v5 = primaryFont;
    if (primaryFont)
    {
      v6 = primaryFont;
    }

    else
    {
      v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    }

    v7 = v6;

    textColor = [(PXUIWidgetHeaderView *)self textColor];
    v9 = [title length];
    v10 = [(PXUIWidgetHeaderView *)self _titleLabelCreateIfNeeded:v9 != 0];
    if (v9 && [(PXUIWidgetHeaderView *)self _canComposeTitleWithSubtitle])
    {
      v11 = MEMORY[0x1E696AEC0];
      subtitle = [(PXUIWidgetHeaderView *)self subtitle];
      v13 = [v11 stringWithFormat:@"%@ %@ %@", title, @"·", subtitle];

      title = v13;
    }

    [v10 setText:title];
    [v10 setHidden:v9 == 0];
    [v10 setFont:v7];
    [v10 setTextColor:textColor];
    _hasAccessibilityLargeText = [(PXUIWidgetHeaderView *)self _hasAccessibilityLargeText];
    if (_hasAccessibilityLargeText)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4;
    }

    [v10 setNumberOfLines:!_hasAccessibilityLargeText];
    [v10 setLineBreakMode:v15];
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)_updateHasContentIfNeeded
{
  if (self->_needsUpdateFlags.hasContent)
  {
    self->_needsUpdateFlags.hasContent = 0;
    title = [(PXUIWidgetHeaderView *)self title];
    v5 = [title length];

    if (v5 || (-[PXUIWidgetHeaderView subtitle](self, "subtitle"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 length], v6, v7))
    {
      v8 = 1;
    }

    else
    {
      caption = [(PXUIWidgetHeaderView *)self caption];
      v8 = [caption length] != 0;
    }

    [(PXUIWidgetHeaderView *)self _setHasContent:v8];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIWidgetHeaderView.m" lineNumber:544 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXUIWidgetHeaderView *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXUIWidgetHeaderView *)self _updateHasContentIfNeeded];
    [(PXUIWidgetHeaderView *)self _updateTitleIfNeeded];
    [(PXUIWidgetHeaderView *)self _updateSubtitleIfNeeded];
    [(PXUIWidgetHeaderView *)self _updateCaptionIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PXUIWidgetHeaderView *)self _needsUpdate])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIWidgetHeaderView.m" lineNumber:531 description:@"update still needed after update pass"];
    }
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = changesCopy;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
    changesCopy = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXUIWidgetHeaderView *)self _updateIfNeeded];
    changesCopy = v6;
  }
}

- (void)_handleCaptionButton:(id)button
{
  if (self->_delegateRespondsTo.didSelectCaption)
  {
    buttonCopy = button;
    delegate = [(PXUIWidgetHeaderView *)self delegate];
    [delegate widgetHeaderView:self didSelectCaption:buttonCopy];
  }
}

- (void)_handleSubtitleButton:(id)button
{
  if (self->_delegateRespondsTo.didSelectSubtitle)
  {
    buttonCopy = button;
    delegate = [(PXUIWidgetHeaderView *)self delegate];
    [delegate widgetHeaderView:self didSelectSubtitle:buttonCopy];
  }
}

- (BOOL)_canComposeTitleWithSubtitle
{
  if ([(PXUIWidgetHeaderView *)self layoutStyle]== 2)
  {
    _hasSubtitle = [(PXUIWidgetHeaderView *)self _hasSubtitle];
    if (_hasSubtitle)
    {
      LOBYTE(_hasSubtitle) = ![(PXUIWidgetHeaderView *)self allowUserInteractionWithSubtitle];
    }
  }

  else
  {
    LOBYTE(_hasSubtitle) = 0;
  }

  return _hasSubtitle;
}

- (BOOL)_hasSubtitle
{
  subtitle = [(PXUIWidgetHeaderView *)self subtitle];
  v3 = [subtitle length] != 0;

  return v3;
}

- (void)_setConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v5 = constraintsCopy;
  if (self->__constraints != constraintsCopy)
  {
    v9 = constraintsCopy;
    v6 = [(NSArray *)constraintsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      if (self->__constraints)
      {
        [MEMORY[0x1E696ACD8] deactivateConstraints:?];
        v5 = v9;
      }

      v7 = [(NSArray *)v5 copy];
      constraints = self->__constraints;
      self->__constraints = v7;

      v5 = v9;
      if (self->__constraints)
      {
        [MEMORY[0x1E696ACD8] activateConstraints:?];
        v5 = v9;
      }
    }
  }
}

- (void)_setHasContent:(BOOL)content
{
  if (self->__hasContent != content)
  {
    self->__hasContent = content;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (id)_captionButtonCreateIfNeeded:(BOOL)needed
{
  captionButton = self->__captionButton;
  if (!captionButton)
  {
    v5 = [PXUIButton buttonWithType:1];
    v6 = self->__captionButton;
    self->__captionButton = v5;

    [(UIButton *)self->__captionButton addTarget:self action:sel__handleCaptionButton_ forControlEvents:0x2000];
    [(PXUIWidgetHeaderView *)self addSubview:self->__captionButton];
    captionButton = self->__captionButton;
  }

  return captionButton;
}

- (id)_captionLabelCreateIfNeeded:(BOOL)needed
{
  captionLabel = self->__captionLabel;
  if (captionLabel)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = self->__captionLabel;
    self->__captionLabel = v6;

    [(PXUIWidgetHeaderView *)self addSubview:self->__captionLabel];
    captionLabel = self->__captionLabel;
  }

  return captionLabel;
}

- (id)_subtitleButtonCreateIfNeeded:(BOOL)needed
{
  subtitleButton = self->__subtitleButton;
  if (subtitleButton)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = [PXUIButton buttonWithType:1];
    v7 = self->__subtitleButton;
    self->__subtitleButton = v6;

    [(UIButton *)self->__subtitleButton addTarget:self action:sel__handleSubtitleButton_ forControlEvents:0x2000];
    [(PXUIWidgetHeaderView *)self addSubview:self->__subtitleButton];
    subtitleButton = self->__subtitleButton;
  }

  return subtitleButton;
}

- (id)_subtitleLabelCreateIfNeeded:(BOOL)needed
{
  subtitleLabel = self->__subtitleLabel;
  if (subtitleLabel)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = self->__subtitleLabel;
    self->__subtitleLabel = v6;

    [(UILabel *)self->__subtitleLabel setNumberOfLines:0];
    visualEffectView = self->__visualEffectView;
    if (visualEffectView)
    {
      selfCopy = [(UIVisualEffectView *)visualEffectView contentView];
    }

    else
    {
      selfCopy = self;
    }

    v10 = selfCopy;
    [(PXUIWidgetHeaderView *)selfCopy addSubview:self->__subtitleLabel];

    subtitleLabel = self->__subtitleLabel;
  }

  return subtitleLabel;
}

- (id)_titleLabelCreateIfNeeded:(BOOL)needed
{
  titleLabel = self->__titleLabel;
  if (titleLabel)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = self->__titleLabel;
    self->__titleLabel = v6;

    visualEffectView = self->__visualEffectView;
    if (visualEffectView)
    {
      selfCopy = [(UIVisualEffectView *)visualEffectView contentView];
    }

    else
    {
      selfCopy = self;
    }

    v10 = selfCopy;
    [(PXUIWidgetHeaderView *)selfCopy addSubview:self->__titleLabel];

    titleLabel = self->__titleLabel;
  }

  return titleLabel;
}

- (id)_visualEffectViewCreateIfNeeded:(BOOL)needed
{
  visualEffectView = self->__visualEffectView;
  if (visualEffectView)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC730] effectWithStyle:4];
    v7 = [MEMORY[0x1E69DD248] effectForBlurEffect:v6];
    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
    v9 = self->__visualEffectView;
    self->__visualEffectView = v8;

    [(PXUIWidgetHeaderView *)self addSubview:self->__visualEffectView];
    visualEffectView = self->__visualEffectView;
  }

  return visualEffectView;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PXUIWidgetHeaderView *)self layoutIfNeeded:fits.width];
  [(PXUIWidgetHeaderView *)self _currentHeight];
  v6 = v5;
  v7 = width;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PXUIWidgetHeaderView;
  [(PXUIWidgetHeaderView *)&v15 layoutSubviews];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([(PXUIWidgetHeaderView *)self _hasContent])
  {
    layoutStyle = [(PXUIWidgetHeaderView *)self layoutStyle];
    [(PXUIWidgetHeaderView *)self bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    if (CGRectIsEmpty(v16))
    {
      px_screen = [(PXUIWidgetHeaderView *)self px_screen];
      [px_screen bounds];
      width = CGRectGetWidth(v17);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__PXUIWidgetHeaderView_layoutSubviews__block_invoke;
    v10[3] = &unk_1E77454C8;
    *&v10[6] = x;
    *&v10[7] = y;
    *&v10[8] = width;
    *&v10[9] = height;
    v10[10] = layoutStyle;
    v10[11] = a2;
    v10[4] = self;
    v10[5] = &v11;
    [PXViewLayoutHelper performLayoutWithinView:self usingBlock:v10];
  }

  [(PXUIWidgetHeaderView *)self _setCurrentHeight:v12[3]];
  _Block_object_dispose(&v11, 8);
}

void __38__PXUIWidgetHeaderView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) contentInsets];
  v69 = v4;
  v70 = v5;
  v7 = v6;
  v9 = v8;
  MinX = CGRectGetMinX(*(a1 + 48));
  MaxX = CGRectGetMaxX(*(a1 + 48));
  MinY = CGRectGetMinY(*(a1 + 48));
  v13 = CGRectGetMinY(*(a1 + 48));
  [*(a1 + 32) minimumDistanceBetweenTopAndFirstBaseline];
  v15 = v14;
  v16 = [*(a1 + 32) _visualEffectView];
  if (v16)
  {
    [*(a1 + 32) bounds];
    [v16 setFrame:?];
  }

  v17 = v7 + MinX;
  v18 = MaxX - v9;
  v19 = v13 + v15;
  v20 = [*(a1 + 32) title];
  v21 = [v20 length];

  if (v21)
  {
    v22 = [*(a1 + 32) _titleLabel];
    if (v22)
    {
      v23 = vdupq_n_s64(0x7FF8000000000000uLL);
      v78.i64[1] = v23.i64[1];
      v79 = v23;
      v80 = v23;
      v81.i64[1] = v23.i64[1];
      v83 = v23.i64[0];
      v85 = v23;
      *v78.i64 = v17;
      v84 = v18;
      *v81.i64 = v13 + v15;
      v82 = vdupq_n_s64(0x7FF0000000000000uLL);
      [v3 layoutView:v22 withAttributes:&v78];
      [v3 lastBaselineOfView:v22];
      v19 = v24;
      [v3 bottomOfView:v22];
      MinY = v25;
    }
  }

  else
  {
    v22 = 0;
  }

  v26 = [*(a1 + 32) caption];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [*(a1 + 32) allowUserInteractionWithCaption];
    v29 = *(a1 + 32);
    if (v28)
    {
      [v29 _captionButton];
    }

    else
    {
      [v29 _captionLabel];
    }
    v30 = ;
    if (v30 && ([*(a1 + 32) _hasAccessibilityLargeText] & 1) == 0)
    {
      MidX = CGRectGetMidX(*(a1 + 48));
      if (v22)
      {
        [v3 trailingOfView:v22];
        if (MidX >= v32)
        {
          MidX = v32;
        }
      }

      v78 = vdupq_n_s64(0x7FF8000000000000uLL);
      v79.i64[1] = v78.i64[1];
      v80 = v78;
      v81.i64[1] = v78.i64[1];
      v84 = *&v78.i64[1];
      v85 = v78;
      v83 = *&MidX;
      *v79.i64 = v18;
      *v81.i64 = v19;
      v82 = vdupq_n_s64(0x7FF0000000000000uLL);
      [v3 layoutView:v30 withAttributes:{&v78, *&v82, *&v78}];
      [v3 leadingOfView:v30];
      v18 = v33;
      if (v22)
      {
        v71.i64[1] = v68.i64[1];
        v72 = v68;
        v73 = v68;
        v74 = v68;
        v76.i64[0] = v68.i64[0];
        v77 = v68;
        v71.i64[0] = 0xFFF0000000000000;
        *&v76.i64[1] = v33;
        v75 = v67;
        [v3 layoutView:v22 withAttributes:&v71];
      }

      else
      {
        [v3 bottomOfView:v30];
        MinY = v34;
      }
    }
  }

  else
  {
    v30 = 0;
  }

  v35 = [*(a1 + 32) title];
  v36 = [v35 length];

  if (v36)
  {
    [*(a1 + 32) distanceBetweenTitleBaselineAndSubtitleBaseline];
    v38 = v37;
    if (v37 <= 0.0)
    {
      v39 = [*(a1 + 32) secondaryFont];
      [v39 lineHeight];
      v38 = v40;
    }
  }

  else
  {
    v38 = 0.0;
  }

  v41 = [*(a1 + 32) subtitle];
  v42 = [v41 length];

  if (!v42)
  {
    v45 = 0;
    goto LABEL_46;
  }

  v43 = [*(a1 + 32) allowUserInteractionWithSubtitle];
  v44 = *(a1 + 32);
  if (v43)
  {
    [v44 _subtitleButton];
  }

  else
  {
    [v44 _subtitleLabel];
  }
  v45 = ;
  if (v45)
  {
    v46 = *(a1 + 80);
    switch(v46)
    {
      case 1:
        v55 = vdupq_n_s64(0x7FF8000000000000uLL);
        v78.i64[1] = v55.i64[1];
        v79 = v55;
        v80 = v55;
        v81 = v55;
        v83 = v55.i64[0];
        v85 = v55;
        *v78.i64 = v17;
        v84 = v18;
        v82 = vdupq_n_s64(0x7FF0000000000000uLL);
        if (v22)
        {
          v19 = v19 + v38;
        }

        else
        {
          *v85.i64 = v69 + CGRectGetMinY(*(a1 + 48));
        }

        *v81.i64 = v19;
        [v3 layoutView:v45 withAttributes:&v78];
        [v3 lastBaselineOfView:v45];
        v19 = v56;
        [v3 bottomOfView:v45];
        MinY = v57;
        if (!v30 || ([*(a1 + 32) _hasAccessibilityLargeText] & 1) != 0)
        {
          goto LABEL_46;
        }

        v71 = vdupq_n_s64(0x7FF8000000000000uLL);
        v72 = v71;
        v73 = v71;
        v74.i64[1] = v71.i64[1];
        v75 = v71;
        v76 = v71;
        v77 = v71;
        *v74.i64 = v19;
        v52 = &v71;
        v53 = v3;
        v54 = v30;
        break;
      case 2:
        if (v22)
        {
          [v3 trailingOfView:v22];
          v49 = v48;
          [*(a1 + 32) horizontalSpacingBetweenTitleAndSubtitle];
          v17 = v49 + v50;
        }

        v51 = vdupq_n_s64(0x7FF8000000000000uLL);
        v78.i64[1] = v51.i64[1];
        v79 = v51;
        v80 = v51;
        v81 = v51;
        v83 = v51.i64[0];
        v85 = v51;
        *v78.i64 = v17;
        v84 = v18;
        v82 = vdupq_n_s64(0x7FF0000000000000uLL);
        if (!v22)
        {
          *v85.i64 = v69 + CGRectGetMinY(*(a1 + 48));
        }

        *v81.i64 = v19;
        v52 = &v78;
        v53 = v3;
        v54 = v45;
        break;
      case 0:
        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        [v47 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"PXUIWidgetHeaderView.m" lineNumber:307 description:@"Code which should be unreachable has been reached"];

        abort();
      default:
        goto LABEL_46;
    }

    [v53 layoutView:v54 withAttributes:v52];
  }

LABEL_46:
  v58 = [*(a1 + 32) _hasAccessibilityLargeText];
  if (v30 && v58)
  {
    if (v38 <= 0.0)
    {
      v59 = [*(a1 + 32) secondaryFont];
      [v59 lineHeight];
      v38 = v60;
    }

    v61 = vdupq_n_s64(0x7FF8000000000000uLL);
    v78.i64[1] = v61.i64[1];
    v79 = v61;
    v80 = v61;
    v81.i64[1] = v61.i64[1];
    v83 = v61.i64[0];
    v85 = v61;
    *v78.i64 = v17;
    v84 = v18;
    *v81.i64 = v19 + v38;
    v82 = vdupq_n_s64(0x7FF0000000000000uLL);
    [v3 layoutView:v30 withAttributes:&v78];
    [v3 lastBaselineOfView:v30];
    v19 = v62;
    [v3 bottomOfView:v30];
    MinY = v63;
  }

  *(*(*(a1 + 40) + 8) + 24) = v70 + MinY;
  v64 = *(*(*(a1 + 40) + 8) + 24);
  [*(a1 + 32) minimumDistanceBetweenLastBaselineAndBottom];
  v66 = v19 + v65;
  if (v64 >= v66)
  {
    v66 = v64;
  }

  *(*(*(a1 + 40) + 8) + 24) = v66;
}

- (BOOL)_hasAccessibilityLargeText
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 0;
  }

  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

- (void)setMinimumDistanceBetweenLastBaselineAndBottom:(double)bottom
{
  if (self->_minimumDistanceBetweenLastBaselineAndBottom != bottom)
  {
    self->_minimumDistanceBetweenLastBaselineAndBottom = bottom;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)setHorizontalSpacingBetweenTitleAndSubtitle:(double)subtitle
{
  if (self->_horizontalSpacingBetweenTitleAndSubtitle != subtitle)
  {
    self->_horizontalSpacingBetweenTitleAndSubtitle = subtitle;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)setDistanceBetweenTitleBaselineAndSubtitleBaseline:(double)baseline
{
  if (self->_distanceBetweenTitleBaselineAndSubtitleBaseline != baseline)
  {
    self->_distanceBetweenTitleBaselineAndSubtitleBaseline = baseline;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)setMinimumDistanceBetweenTopAndFirstBaseline:(double)baseline
{
  if (self->_minimumDistanceBetweenTopAndFirstBaseline != baseline)
  {
    self->_minimumDistanceBetweenTopAndFirstBaseline = baseline;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)setLayoutStyle:(int64_t)style
{
  if (self->_layoutStyle != style)
  {
    self->_layoutStyle = style;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
  }
}

- (void)setAllowUserInteractionWithCaption:(BOOL)caption
{
  if (self->_allowUserInteractionWithCaption != caption)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_allowUserInteractionWithCaption = caption;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__PXUIWidgetHeaderView_setAllowUserInteractionWithCaption___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v6];
  }
}

- (void)setAllowUserInteractionWithSubtitle:(BOOL)subtitle
{
  if (self->_allowUserInteractionWithSubtitle != subtitle)
  {
    v6[7] = v3;
    v6[8] = v4;
    self->_allowUserInteractionWithSubtitle = subtitle;
    [(PXUIWidgetHeaderView *)self setNeedsLayout];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__PXUIWidgetHeaderView_setAllowUserInteractionWithSubtitle___block_invoke;
    v6[3] = &unk_1E774C648;
    v6[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v6];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  v6 = colorCopy;
  if (self->_textColor != colorCopy && ([(UIColor *)colorCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_textColor, color);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__PXUIWidgetHeaderView_setTextColor___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v7];
  }
}

uint64_t __37__PXUIWidgetHeaderView_setTextColor___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateTitle];
  [*(a1 + 32) _invalidateSubtitle];
  v2 = *(a1 + 32);

  return [v2 _invalidateCaption];
}

- (void)setSecondaryFont:(id)font
{
  fontCopy = font;
  v6 = fontCopy;
  if (self->_secondaryFont != fontCopy && ([(UIFont *)fontCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_secondaryFont, font);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __41__PXUIWidgetHeaderView_setSecondaryFont___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v7];
  }
}

uint64_t __41__PXUIWidgetHeaderView_setSecondaryFont___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateSubtitle];
  v2 = *(a1 + 32);

  return [v2 _invalidateCaption];
}

- (void)setPrimaryFont:(id)font
{
  fontCopy = font;
  v6 = fontCopy;
  if (self->_primaryFont != fontCopy && ([(UIFont *)fontCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_primaryFont, font);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__PXUIWidgetHeaderView_setPrimaryFont___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v7];
  }
}

- (void)setCaption:(id)caption
{
  captionCopy = caption;
  v5 = captionCopy;
  if (self->_caption != captionCopy && ([(NSString *)captionCopy isEqual:?]& 1) == 0)
  {
    v6 = [(NSString *)v5 copy];
    caption = self->_caption;
    self->_caption = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__PXUIWidgetHeaderView_setCaption___block_invoke;
    v8[3] = &unk_1E774C648;
    v8[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v8];
  }
}

uint64_t __35__PXUIWidgetHeaderView_setCaption___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateHasContent];
  v2 = *(a1 + 32);

  return [v2 _invalidateCaption];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (self->_subtitle != subtitleCopy && ([(NSString *)subtitleCopy isEqual:?]& 1) == 0)
  {
    _hasSubtitle = [(PXUIWidgetHeaderView *)self _hasSubtitle];
    v7 = [(NSString *)v5 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v7;

    if (_hasSubtitle != [(PXUIWidgetHeaderView *)self _hasSubtitle])
    {
      [(PXUIWidgetHeaderView *)self setNeedsLayout];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__PXUIWidgetHeaderView_setSubtitle___block_invoke;
    v9[3] = &unk_1E774C648;
    v9[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v9];
  }
}

uint64_t __36__PXUIWidgetHeaderView_setSubtitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateHasContent];
  v2 = *(a1 + 32);

  return [v2 _invalidateSubtitle];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_title != titleCopy && ([(NSString *)titleCopy isEqual:?]& 1) == 0)
  {
    v6 = [(NSString *)v5 copy];
    title = self->_title;
    self->_title = v6;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__PXUIWidgetHeaderView_setTitle___block_invoke;
    v8[3] = &unk_1E774C648;
    v8[4] = self;
    [(PXUIWidgetHeaderView *)self performChanges:v8];
  }
}

uint64_t __33__PXUIWidgetHeaderView_setTitle___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateHasContent];
  v2 = *(a1 + 32);

  return [v2 _invalidateTitle];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->didSelectSubtitle = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->didSelectCaption = objc_opt_respondsToSelector() & 1;
  }
}

@end