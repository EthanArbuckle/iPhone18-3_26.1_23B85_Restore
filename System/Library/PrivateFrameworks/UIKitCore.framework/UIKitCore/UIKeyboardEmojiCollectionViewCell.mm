@interface UIKeyboardEmojiCollectionViewCell
- (BOOL)_dragAllowed;
- (NSString)debugDescription;
- (UIKeyboardEmojiCollectionViewCell)initWithFrame:(CGRect)frame;
- (int64_t)emojiFontSize;
- (void)layoutSubviews;
- (void)setCurrentEmojiFontSize:(int64_t)size;
- (void)setEmoji:(id)emoji;
- (void)setEmojiFontSize:(int64_t)size;
- (void)setNoResultsCell:(BOOL)cell;
- (void)setSelected:(BOOL)selected;
- (void)setUnreleasedHighlight:(BOOL)highlight;
- (void)triggerUsageSignal:(id)signal payload:(id)payload;
@end

@implementation UIKeyboardEmojiCollectionViewCell

- (UIKeyboardEmojiCollectionViewCell)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiCollectionViewCell;
  v3 = [(UICollectionViewCell *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIKeyboardEmojiDraggableView alloc];
    [(UIView *)v3 bounds];
    v5 = [(UIKeyboardEmojiDraggableView *)v4 initWithFrame:?];
    emojiLabel = v3->_emojiLabel;
    v3->_emojiLabel = v5;

    v7 = +[UIColor clearColor];
    [(UIView *)v3->_emojiLabel setBackgroundColor:v7];

    [(UIKeyboardEmojiDraggableView *)v3->_emojiLabel setDelegate:v3];
    v8 = [UIKeyboardEmoji emojiWithString:0 withVariantMask:0];
    emoji = v3->_emoji;
    v3->_emoji = v8;

    v3->_highlightPadding = 2.0;
    contentView = [(UICollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_emojiLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = UIKeyboardEmojiCollectionViewCell;
  [(UICollectionViewCell *)&v7 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_emojiLabel setFrame:?];
  [(UIView *)self->_emojiLabel frame];
  v4 = v3;
  if (v3 >= [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize])
  {
    emojiFontSize = [(UIKeyboardEmojiCollectionViewCell *)self emojiFontSize];
    if (emojiFontSize == [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize])
    {
      return;
    }

    desiredFontSize = [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize];
  }

  else
  {
    desiredFontSize = v4;
  }

  [(UIKeyboardEmojiCollectionViewCell *)self setCurrentEmojiFontSize:desiredFontSize];
}

- (void)setEmoji:(id)emoji
{
  emojiCopy = emoji;
  if (self->_noResultsCell)
  {
    [(UIKeyboardEmojiCollectionViewCell *)self setNoResultsCell:0];
  }

  emoji = self->_emoji;
  self->_emoji = emojiCopy;
  v8 = emojiCopy;

  emojiLabel = self->_emojiLabel;
  emojiString = [(UIKeyboardEmoji *)self->_emoji emojiString];
  [(UIKeyboardEmojiDraggableView *)emojiLabel setText:emojiString];

  [(UIKeyboardEmojiDraggableView *)self->_emojiLabel setDragEnabled:[(UIKeyboardEmojiCollectionViewCell *)self _dragAllowed]];
}

- (BOOL)_dragAllowed
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    LOBYTE(v3) = ![(UIKeyboardEmoji *)self->_emoji supportsSkinToneVariants];
  }

  return v3;
}

- (void)setCurrentEmojiFontSize:(int64_t)size
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_1_17 != size || *algn_1ED499398 == 0)
  {
    v6 = *MEMORY[0x1E6965670];
    v10[0] = *off_1E70ECCA0;
    v10[1] = v6;
    v11[0] = @"AppleColorEmoji";
    v11[1] = MEMORY[0x1E695E110];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v8 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v7];

    v9 = [off_1E70ECC18 fontWithDescriptor:v8 size:size];
    objc_storeStrong(algn_1ED499398, v9);
    _MergedGlobals_1_17 = size;
  }

  else
  {
    v9 = *algn_1ED499398;
  }

  [(UIKeyboardEmojiDraggableView *)self->_emojiLabel setFont:v9];
}

- (void)setEmojiFontSize:(int64_t)size
{
  [(UIKeyboardEmojiCollectionViewCell *)self setDesiredFontSize:size];
  desiredFontSize = [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize];

  [(UIKeyboardEmojiCollectionViewCell *)self setCurrentEmojiFontSize:desiredFontSize];
}

- (int64_t)emojiFontSize
{
  font = [(UIKeyboardEmojiDraggableView *)self->_emojiLabel font];
  [font pointSize];
  v4 = v3;

  return v4;
}

- (void)setUnreleasedHighlight:(BOOL)highlight
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (highlight)
  {
    if (os_variant_has_internal_diagnostics())
    {
      unreleasedBanner = [(UIKeyboardEmojiCollectionViewCell *)self unreleasedBanner];

      if (!unreleasedBanner)
      {
        v22 = [UILabel alloc];
        [(UIView *)self bounds];
        v23 = [(UILabel *)v22 initWithFrame:?];
        unreleasedBanner = self->_unreleasedBanner;
        self->_unreleasedBanner = v23;

        [(UILabel *)self->_unreleasedBanner setText:@"PRERELEASE"];
        v25 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
        [(UILabel *)self->_unreleasedBanner setTextColor:v25];

        v26 = [off_1E70ECC18 systemFontOfSize:6.0 weight:*off_1E70ECD08];
        [(UILabel *)self->_unreleasedBanner setFont:v26];

        [(UILabel *)self->_unreleasedBanner setAdjustsFontSizeToFitWidth:1];
        [(UILabel *)self->_unreleasedBanner setMinimumScaleFactor:0.5];
        v27 = *(MEMORY[0x1E695EFD0] + 16);
        *&v38.a = *MEMORY[0x1E695EFD0];
        *&v38.c = v27;
        *&v38.tx = *(MEMORY[0x1E695EFD0] + 32);
        CGAffineTransformRotate(&v39, &v38, -0.785398163);
        v28 = self->_unreleasedBanner;
        v38 = v39;
        [(UIView *)v28 setTransform:&v38];
        contentView = [(UICollectionViewCell *)self contentView];
        [contentView addSubview:self->_unreleasedBanner];

        [(UIView *)self->_unreleasedBanner setTranslatesAutoresizingMaskIntoConstraints:0];
        v30 = MEMORY[0x1E69977A0];
        centerXAnchor = [(UIView *)self centerXAnchor];
        centerXAnchor2 = [(UIView *)self->_unreleasedBanner centerXAnchor];
        v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v40[0] = v33;
        centerYAnchor = [(UIView *)self centerYAnchor];
        centerYAnchor2 = [(UIView *)self->_unreleasedBanner centerYAnchor];
        v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v40[1] = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
        [v30 activateConstraints:v37];
      }
    }

    unreleasedBanner2 = [(UIKeyboardEmojiCollectionViewCell *)self unreleasedBanner];
    [unreleasedBanner2 setHidden:0];

    layer = [(UIView *)self layer];
    [layer setShadowOffset:{3.0, 0.0}];

    layer2 = [(UIView *)self layer];
    [layer2 setShadowRadius:3.0];

    v7 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
    cGColor = [v7 CGColor];
    layer3 = [(UIView *)self layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [(UIView *)self layer];
    v11 = layer4;
    LODWORD(v12) = 0.5;
  }

  else
  {
    unreleasedBanner3 = [(UIKeyboardEmojiCollectionViewCell *)self unreleasedBanner];
    [unreleasedBanner3 setHidden:1];

    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
    layer5 = [(UIView *)self layer];
    [layer5 setShadowOffset:{v14, v15}];

    layer6 = [(UIView *)self layer];
    [layer6 setShadowRadius:0.0];

    v18 = +[UIColor clearColor];
    cGColor2 = [v18 CGColor];
    layer7 = [(UIView *)self layer];
    [layer7 setShadowColor:cGColor2];

    layer4 = [(UIView *)self layer];
    v11 = layer4;
    LODWORD(v12) = 1.0;
  }

  [layer4 setShadowOpacity:v12];

  [(UIView *)self setNeedsDisplay];
}

- (void)setNoResultsCell:(BOOL)cell
{
  cellCopy = cell;
  v24[4] = *MEMORY[0x1E69E9840];
  if (self->_noResultsCell != cell)
  {
    self->_noResultsCell = cell;
    if (cell && !self->_noResultsLabel)
    {
      v5 = objc_alloc_init(UILabel);
      noResultsLabel = self->_noResultsLabel;
      self->_noResultsLabel = v5;

      [(UIView *)self->_noResultsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = _UILocalizedStringInSystemLanguage(@"No Results", @"No Results");
      [(UILabel *)self->_noResultsLabel setText:v7];

      v8 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleTitle3"];
      [(UILabel *)self->_noResultsLabel setFont:v8];

      [(UILabel *)self->_noResultsLabel setTextAlignment:1];
      v9 = [UIColor colorWithDynamicProvider:&__block_literal_global_375];
      [(UILabel *)self->_noResultsLabel setTextColor:v9];

      [(UIView *)self addSubview:self->_noResultsLabel];
      v18 = MEMORY[0x1E69977A0];
      topAnchor = [(UIView *)self->_noResultsLabel topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v24[0] = v21;
      leadingAnchor = [(UIView *)self->_noResultsLabel leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v24[1] = v17;
      bottomAnchor = [(UIView *)self bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_noResultsLabel bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v24[2] = v12;
      trailingAnchor = [(UIView *)self trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_noResultsLabel trailingAnchor];
      v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v24[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
      [v18 activateConstraints:v16];
    }
  }

  [(UIView *)self->_noResultsLabel setHidden:!cellCopy];
}

id __54__UIKeyboardEmojiCollectionViewCell_setNoResultsCell___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [UIColor colorWithRed:0.518 green:0.553 blue:0.6 alpha:1.0];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v2 = ;

  return v2;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v33[4] = *MEMORY[0x1E69E9840];
  navigationHighlightView = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];

  if (!navigationHighlightView)
  {
    v8 = objc_alloc_init(UIView);
    [(UIKeyboardEmojiCollectionViewCell *)self setNavigationHighlightView:v8];

    navigationHighlightView2 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    [navigationHighlightView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(UICollectionViewCell *)self contentView];
    [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v11 = v32 = selectedCopy;
    [contentView insertSubview:v11 belowSubview:self->_emojiLabel];

    navigationHighlightView3 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    layer = [navigationHighlightView3 layer];
    [layer setCornerRadius:5.0];

    v24 = MEMORY[0x1E69977A0];
    leadingAnchor = [(UIView *)self leadingAnchor];
    navigationHighlightView4 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    leadingAnchor2 = [navigationHighlightView4 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:self->_highlightPadding];
    v33[0] = v28;
    navigationHighlightView5 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    trailingAnchor = [navigationHighlightView5 trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:self->_highlightPadding];
    v33[1] = v23;
    topAnchor = [(UIView *)self topAnchor];
    navigationHighlightView6 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    topAnchor2 = [navigationHighlightView6 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:self->_highlightPadding];
    v33[2] = v17;
    navigationHighlightView7 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    bottomAnchor = [navigationHighlightView7 bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:self->_highlightPadding];
    v33[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v22];

    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    navigationHighlightView8 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    [navigationHighlightView8 setBackgroundColor:0];
    goto LABEL_6;
  }

  if (!selectedCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  navigationHighlightView8 = +[UIColor systemBlueColor];
  navigationHighlightView9 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
  [navigationHighlightView9 setBackgroundColor:navigationHighlightView8];

LABEL_6:
  [(UIView *)self setNeedsDisplay];
}

- (NSString)debugDescription
{
  v8.receiver = self;
  v8.super_class = UIKeyboardEmojiCollectionViewCell;
  v3 = [(UIView *)&v8 debugDescription];
  emoji = [(UIKeyboardEmojiCollectionViewCell *)self emoji];
  emojiString = [emoji emojiString];
  v6 = [v3 stringByAppendingFormat:@"emojiString = %@", emojiString];

  return v3;
}

- (void)triggerUsageSignal:(id)signal payload:(id)payload
{
  payloadCopy = payload;
  usageSource = [(UIKeyboardEmojiCollectionViewCell *)self usageSource];

  if (usageSource)
  {
    usageSource = self->_usageSource;
    v7 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageSource];
    [payloadCopy setObject:usageSource forKeyedSubscript:v7];
  }

  bundleID = [(UIKeyboardEmojiCollectionViewCell *)self bundleID];

  if (bundleID)
  {
    bundleID = self->_bundleID;
    v10 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
    [payloadCopy setObject:bundleID forKeyedSubscript:v10];
  }

  v11 = +[_UISignalAnalytics getIASignalGenmojiUsage];
  [_UISignalAnalytics sendGenmojiSignal:v11 payload:payloadCopy];
}

@end