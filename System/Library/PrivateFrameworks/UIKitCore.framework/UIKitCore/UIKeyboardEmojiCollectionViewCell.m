@interface UIKeyboardEmojiCollectionViewCell
- (BOOL)_dragAllowed;
- (NSString)debugDescription;
- (UIKeyboardEmojiCollectionViewCell)initWithFrame:(CGRect)a3;
- (int64_t)emojiFontSize;
- (void)layoutSubviews;
- (void)setCurrentEmojiFontSize:(int64_t)a3;
- (void)setEmoji:(id)a3;
- (void)setEmojiFontSize:(int64_t)a3;
- (void)setNoResultsCell:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setUnreleasedHighlight:(BOOL)a3;
- (void)triggerUsageSignal:(id)a3 payload:(id)a4;
@end

@implementation UIKeyboardEmojiCollectionViewCell

- (UIKeyboardEmojiCollectionViewCell)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = UIKeyboardEmojiCollectionViewCell;
  v3 = [(UICollectionViewCell *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v10 = [(UICollectionViewCell *)v3 contentView];
    [v10 addSubview:v3->_emojiLabel];
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
    v6 = [(UIKeyboardEmojiCollectionViewCell *)self emojiFontSize];
    if (v6 == [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize])
    {
      return;
    }

    v5 = [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize];
  }

  else
  {
    v5 = v4;
  }

  [(UIKeyboardEmojiCollectionViewCell *)self setCurrentEmojiFontSize:v5];
}

- (void)setEmoji:(id)a3
{
  v4 = a3;
  if (self->_noResultsCell)
  {
    [(UIKeyboardEmojiCollectionViewCell *)self setNoResultsCell:0];
  }

  emoji = self->_emoji;
  self->_emoji = v4;
  v8 = v4;

  emojiLabel = self->_emojiLabel;
  v7 = [(UIKeyboardEmoji *)self->_emoji emojiString];
  [(UIKeyboardEmojiDraggableView *)emojiLabel setText:v7];

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

- (void)setCurrentEmojiFontSize:(int64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (_MergedGlobals_1_17 != a3 || *algn_1ED499398 == 0)
  {
    v6 = *MEMORY[0x1E6965670];
    v10[0] = *off_1E70ECCA0;
    v10[1] = v6;
    v11[0] = @"AppleColorEmoji";
    v11[1] = MEMORY[0x1E695E110];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v8 = [off_1E70ECC20 fontDescriptorWithFontAttributes:v7];

    v9 = [off_1E70ECC18 fontWithDescriptor:v8 size:a3];
    objc_storeStrong(algn_1ED499398, v9);
    _MergedGlobals_1_17 = a3;
  }

  else
  {
    v9 = *algn_1ED499398;
  }

  [(UIKeyboardEmojiDraggableView *)self->_emojiLabel setFont:v9];
}

- (void)setEmojiFontSize:(int64_t)a3
{
  [(UIKeyboardEmojiCollectionViewCell *)self setDesiredFontSize:a3];
  v4 = [(UIKeyboardEmojiCollectionViewCell *)self desiredFontSize];

  [(UIKeyboardEmojiCollectionViewCell *)self setCurrentEmojiFontSize:v4];
}

- (int64_t)emojiFontSize
{
  v2 = [(UIKeyboardEmojiDraggableView *)self->_emojiLabel font];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (void)setUnreleasedHighlight:(BOOL)a3
{
  v40[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v21 = [(UIKeyboardEmojiCollectionViewCell *)self unreleasedBanner];

      if (!v21)
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
        v29 = [(UICollectionViewCell *)self contentView];
        [v29 addSubview:self->_unreleasedBanner];

        [(UIView *)self->_unreleasedBanner setTranslatesAutoresizingMaskIntoConstraints:0];
        v30 = MEMORY[0x1E69977A0];
        v31 = [(UIView *)self centerXAnchor];
        v32 = [(UIView *)self->_unreleasedBanner centerXAnchor];
        v33 = [v31 constraintEqualToAnchor:v32];
        v40[0] = v33;
        v34 = [(UIView *)self centerYAnchor];
        v35 = [(UIView *)self->_unreleasedBanner centerYAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];
        v40[1] = v36;
        v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
        [v30 activateConstraints:v37];
      }
    }

    v4 = [(UIKeyboardEmojiCollectionViewCell *)self unreleasedBanner];
    [v4 setHidden:0];

    v5 = [(UIView *)self layer];
    [v5 setShadowOffset:{3.0, 0.0}];

    v6 = [(UIView *)self layer];
    [v6 setShadowRadius:3.0];

    v7 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
    v8 = [v7 CGColor];
    v9 = [(UIView *)self layer];
    [v9 setShadowColor:v8];

    v10 = [(UIView *)self layer];
    v11 = v10;
    LODWORD(v12) = 0.5;
  }

  else
  {
    v13 = [(UIKeyboardEmojiCollectionViewCell *)self unreleasedBanner];
    [v13 setHidden:1];

    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
    v16 = [(UIView *)self layer];
    [v16 setShadowOffset:{v14, v15}];

    v17 = [(UIView *)self layer];
    [v17 setShadowRadius:0.0];

    v18 = +[UIColor clearColor];
    v19 = [v18 CGColor];
    v20 = [(UIView *)self layer];
    [v20 setShadowColor:v19];

    v10 = [(UIView *)self layer];
    v11 = v10;
    LODWORD(v12) = 1.0;
  }

  [v10 setShadowOpacity:v12];

  [(UIView *)self setNeedsDisplay];
}

- (void)setNoResultsCell:(BOOL)a3
{
  v3 = a3;
  v24[4] = *MEMORY[0x1E69E9840];
  if (self->_noResultsCell != a3)
  {
    self->_noResultsCell = a3;
    if (a3 && !self->_noResultsLabel)
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
      v23 = [(UIView *)self->_noResultsLabel topAnchor];
      v22 = [(UIView *)self topAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v24[0] = v21;
      v20 = [(UIView *)self->_noResultsLabel leadingAnchor];
      v19 = [(UIView *)self leadingAnchor];
      v17 = [v20 constraintEqualToAnchor:v19];
      v24[1] = v17;
      v10 = [(UIView *)self bottomAnchor];
      v11 = [(UIView *)self->_noResultsLabel bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v24[2] = v12;
      v13 = [(UIView *)self trailingAnchor];
      v14 = [(UIView *)self->_noResultsLabel trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v24[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
      [v18 activateConstraints:v16];
    }
  }

  [(UIView *)self->_noResultsLabel setHidden:!v3];
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

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v33[4] = *MEMORY[0x1E69E9840];
  v5 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];

  if (!v5)
  {
    v8 = objc_alloc_init(UIView);
    [(UIKeyboardEmojiCollectionViewCell *)self setNavigationHighlightView:v8];

    v9 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(UICollectionViewCell *)self contentView];
    [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v11 = v32 = v3;
    [v10 insertSubview:v11 belowSubview:self->_emojiLabel];

    v12 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v13 = [v12 layer];
    [v13 setCornerRadius:5.0];

    v24 = MEMORY[0x1E69977A0];
    v30 = [(UIView *)self leadingAnchor];
    v31 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v29 = [v31 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:self->_highlightPadding];
    v33[0] = v28;
    v27 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v26 = [v27 trailingAnchor];
    v25 = [(UIView *)self trailingAnchor];
    v23 = [v26 constraintEqualToAnchor:v25 constant:self->_highlightPadding];
    v33[1] = v23;
    v14 = [(UIView *)self topAnchor];
    v15 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:self->_highlightPadding];
    v33[2] = v17;
    v18 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    v19 = [v18 bottomAnchor];
    v20 = [(UIView *)self bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:self->_highlightPadding];
    v33[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v24 activateConstraints:v22];

    if (v32)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
    [v6 setBackgroundColor:0];
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = +[UIColor systemBlueColor];
  v7 = [(UIKeyboardEmojiCollectionViewCell *)self navigationHighlightView];
  [v7 setBackgroundColor:v6];

LABEL_6:
  [(UIView *)self setNeedsDisplay];
}

- (NSString)debugDescription
{
  v8.receiver = self;
  v8.super_class = UIKeyboardEmojiCollectionViewCell;
  v3 = [(UIView *)&v8 debugDescription];
  v4 = [(UIKeyboardEmojiCollectionViewCell *)self emoji];
  v5 = [v4 emojiString];
  v6 = [v3 stringByAppendingFormat:@"emojiString = %@", v5];

  return v3;
}

- (void)triggerUsageSignal:(id)a3 payload:(id)a4
{
  v12 = a4;
  v5 = [(UIKeyboardEmojiCollectionViewCell *)self usageSource];

  if (v5)
  {
    usageSource = self->_usageSource;
    v7 = +[_UISignalAnalytics getIAPayloadKeyGenmojiUsageSource];
    [v12 setObject:usageSource forKeyedSubscript:v7];
  }

  v8 = [(UIKeyboardEmojiCollectionViewCell *)self bundleID];

  if (v8)
  {
    bundleID = self->_bundleID;
    v10 = +[_UISignalAnalytics getIAPayloadKeyGenmojiBundleID];
    [v12 setObject:bundleID forKeyedSubscript:v10];
  }

  v11 = +[_UISignalAnalytics getIASignalGenmojiUsage];
  [_UISignalAnalytics sendGenmojiSignal:v11 payload:v12];
}

@end