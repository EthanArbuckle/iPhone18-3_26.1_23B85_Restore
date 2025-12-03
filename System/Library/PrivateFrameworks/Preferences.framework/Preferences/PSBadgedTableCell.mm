@interface PSBadgedTableCell
+ (Class)alternativeCellClass;
+ (id)unreadBubbleImage;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PSBadgedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)badgeWithInteger:(int64_t)integer;
- (void)dealloc;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)resetLocale;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation PSBadgedTableCell

+ (Class)alternativeCellClass
{
  if (objc_opt_class() == self)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)layoutSubviews
{
  v139 = *MEMORY[0x1E69E9840];
  v137.receiver = self;
  v137.super_class = PSBadgedTableCell;
  [(PSTableCell *)&v137 layoutSubviews];
  if (!self->_badgeImageView)
  {
    return;
  }

  [(UILabel *)self->_badgeNumberLabel sizeToFit];
  layoutManager = [(PSBadgedTableCell *)self layoutManager];
  [layoutManager contentRectForCell:self forState:0];
  v5 = v4;
  rect = v6;
  v8 = v7;
  v10 = v9;

  [(UIImageView *)self->_badgeImageView frame];
  v12 = v11;
  v14 = v13;
  traitCollection = [(PSBadgedTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v128 = v5;
  if ([(PSBadgedTableCell *)self _shouldUseRoundStyle])
  {
    if (IsAccessibilityCategory)
    {
      [(UILabel *)self->_badgeNumberLabel frame];
      v14 = v18;
      [(UILabel *)self->_badgeNumberLabel frame];
      if (v14 < v19)
      {
        v14 = v19;
      }

      v12 = v14;
    }
  }

  else
  {
    [objc_opt_class() badgePadding];
    v21 = v20;
    [(UILabel *)self->_badgeNumberLabel frame];
    v14 = v22;
    [(UILabel *)self->_badgeNumberLabel frame];
    v12 = v23 + v21 * 2.0;
    [(PSBadgedTableCell *)self minimumBadgeWidth];
    if (v12 < v24)
    {
      v12 = v24;
    }
  }

  _shouldReverseLayoutDirection = [(PSBadgedTableCell *)self _shouldReverseLayoutDirection];
  accessoryView = [(PSBadgedTableCell *)self accessoryView];
  objc_opt_class();
  v27 = 0.0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PSBadgedTableCell *)self contentAccessoryPadding];
    v27 = v28;
  }

  v124 = v10;
  v125 = v8;
  if (!_shouldReverseLayoutDirection)
  {
    v27 = v8 - v27 - v12;
  }

  v29 = (v10 - v14) * 0.5;
  v30 = floorf(v29);
  [(UIImageView *)self->_badgeImageView setFrame:v27, v30, v12, v14];
  badgeNumberLabel = self->_badgeNumberLabel;
  if (([(PSBadgedTableCell *)self isHighlighted]& 1) == 0)
  {
    [(PSBadgedTableCell *)self isSelected];
  }

  badgeNumberLabelTextColor = [objc_opt_class() badgeNumberLabelTextColor];
  [(UILabel *)badgeNumberLabel setTextColor:badgeNumberLabelTextColor];

  if ([(PSBadgedTableCell *)self _shouldUseRoundStyle])
  {
    v33 = v30;
  }

  else
  {
    v33 = v30 + -1.0;
  }

  [(UILabel *)self->_badgeNumberLabel setFrame:v27, v33, v12, v14];
  textLabel = [(PSBadgedTableCell *)self textLabel];
  [textLabel frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v131 = v12;
  v132 = v27;
  v130 = v14;
  v43 = v36;
  v44 = v38;
  v45 = v40;
  v46 = v42;
  if (_shouldReverseLayoutDirection)
  {
    v120 = v42;
    v47 = v38;
    MinX = CGRectGetMinX(*&v43);
    v140.origin.x = v27;
    v140.origin.y = v30;
    v140.size.width = v12;
    v140.size.height = v14;
    if (MinX >= CGRectGetMaxX(v140))
    {
      v53 = v36;
      v60 = v30;
      v54 = v47;
      v42 = v120;
      if (!IsAccessibilityCategory)
      {
        goto LABEL_42;
      }

      goto LABEL_28;
    }

    v141.origin.x = v36;
    v122 = v47;
    v141.origin.y = v47;
    v141.size.width = v40;
    v42 = v120;
    v141.size.height = v120;
    MaxX = CGRectGetMaxX(v141);
    v142.origin.x = v27;
    v121 = v30;
    v142.origin.y = v30;
    v142.size.width = v12;
    v142.size.height = v14;
    v50 = MaxX - CGRectGetMaxX(v142);
    [(PSBadgedTableCell *)self contentAccessoryPadding];
    v52 = v50 - v51;
    v53 = v36 + v40 - v52;
    v40 = v52;
    v54 = v122;
LABEL_23:
    textLabel2 = [(PSBadgedTableCell *)self textLabel];
    [textLabel2 setFrame:{v53, v54, v40, v42}];

    v60 = v121;
    if (!IsAccessibilityCategory)
    {
      goto LABEL_42;
    }

LABEL_28:
    v146.origin.x = v53;
    v146.origin.y = v54;
    v146.size.width = v40;
    v146.size.height = v42;
    Width = CGRectGetWidth(v146);
    textLabel3 = [(PSBadgedTableCell *)self textLabel];
    [textLabel3 sizeThatFits:{Width, 1.79769313e308}];
    v64 = v63;
    v66 = v65;

    v147.origin.y = rect;
    v147.origin.x = v128;
    v147.size.height = v124;
    v147.size.width = v125;
    Height = CGRectGetHeight(v147);
    v148.origin.x = v53;
    v148.origin.y = v54;
    v148.size.width = v64;
    v148.size.height = v66;
    v68 = CGRectGetHeight(v148);
    v69 = PSRoundToPixel((Height - v68) * 0.5);
    textLabel4 = [(PSBadgedTableCell *)self textLabel];
    [textLabel4 setFrame:{v53, v69, v64, v66}];

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    subviews = [(PSBadgedTableCell *)self subviews];
    v72 = [subviews countByEnumeratingWithState:&v133 objects:v138 count:16];
    if (v72)
    {
      v73 = v72;
      v129 = _shouldReverseLayoutDirection;
      v74 = 0;
      v75 = *v134;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v134 != v75)
          {
            objc_enumerationMutation(subviews);
          }

          v77 = *(*(&v133 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v78 = v77;

            v74 = v78;
          }
        }

        v73 = [subviews countByEnumeratingWithState:&v133 objects:v138 count:16];
      }

      while (v73);

      if (v74)
      {
        [v74 frame];
        v80 = v79;
        recta = v81;
        v83 = v82;
        v85 = v84;
        v149.origin.x = v53;
        v149.origin.y = v69;
        v149.size.width = v64;
        v149.size.height = v66;
        MinY = CGRectGetMinY(v149);
        textLabel5 = [(PSBadgedTableCell *)self textLabel];
        font = [textLabel5 font];
        [font lineHeight];
        v90 = v89;
        v150.origin.x = v80;
        v150.origin.y = recta;
        v150.size.width = v83;
        v150.size.height = v85;
        v91 = CGRectGetHeight(v150);
        v92 = MinY + PSRoundToPixel((v90 - v91) * 0.5);

        [v74 setFrame:{v80, v92, v83, v85}];
      }

      _shouldReverseLayoutDirection = v129;
    }

    else
    {

      v74 = 0;
    }

    textLabel6 = [(PSBadgedTableCell *)self textLabel];
    [textLabel6 frame];
    v94 = CGRectGetMinY(v151);
    textLabel7 = [(PSBadgedTableCell *)self textLabel];
    font2 = [textLabel7 font];
    [font2 lineHeight];
    v98 = v97;
    v152.origin.x = v132;
    v152.origin.y = v60;
    v152.size.width = v131;
    v152.size.height = v130;
    v99 = CGRectGetHeight(v152);
    v100 = v60 - (v94 + PSRoundToPixel((v98 - v99) * 0.5));

    v60 = v60 - v100;
    [(UIImageView *)self->_badgeImageView setFrame:v132, v60, v131, v130];
    [(UILabel *)self->_badgeNumberLabel setFrame:v132, v60, v131, v130];

    goto LABEL_42;
  }

  v123 = v38;
  v55 = CGRectGetMaxX(*&v43);
  v143.origin.x = v27;
  v143.origin.y = v30;
  v143.size.width = v12;
  v143.size.height = v14;
  if (v55 > CGRectGetMinX(v143))
  {
    v144.origin.x = v27;
    v121 = v30;
    v144.origin.y = v30;
    v144.size.width = v12;
    v144.size.height = v14;
    v56 = CGRectGetMinX(v144);
    v145.origin.x = v36;
    v54 = v123;
    v145.origin.y = v123;
    v145.size.width = v40;
    v145.size.height = v42;
    v57 = v56 - CGRectGetMinX(v145);
    [(PSBadgedTableCell *)self contentAccessoryPadding];
    v40 = v57 - v58;
    v53 = v36;
    goto LABEL_23;
  }

  v53 = v36;
  v60 = v30;
  v54 = v123;
  if (IsAccessibilityCategory)
  {
    goto LABEL_28;
  }

LABEL_42:
  if ([(PSBadgedTableCell *)self style]!= 3)
  {
    return;
  }

  detailTextLabel = [(PSBadgedTableCell *)self detailTextLabel];
  [detailTextLabel frame];
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;

  if (_shouldReverseLayoutDirection)
  {
    v153.size.width = v131;
    v153.origin.x = v132;
    v153.origin.y = v60;
    v153.size.height = v130;
    v110 = CGRectGetMaxX(v153);
    [(PSBadgedTableCell *)self contentAccessoryPadding];
    v112 = v110 + v111;
    v154.origin.x = v103;
    v154.origin.y = v105;
    v154.size.width = v107;
    v154.size.height = v109;
    if (CGRectGetMinX(v154) >= v112)
    {
      return;
    }

    v155.origin.x = v103;
    v155.origin.y = v105;
    v155.size.width = v107;
    v155.size.height = v109;
    v113 = v112 - CGRectGetMinX(v155);
    v156.origin.x = v103;
    v156.origin.y = v105;
    v156.size.width = v107;
    v156.size.height = v109;
    v114 = CGRectGetMaxX(v156) - v112;
  }

  else
  {
    v157.size.width = v131;
    v157.origin.x = v132;
    v157.origin.y = v60;
    v157.size.height = v130;
    v115 = CGRectGetMinX(v157);
    [(PSBadgedTableCell *)self contentAccessoryPadding];
    v117 = v115 - v116;
    v158.origin.x = v103;
    v158.origin.y = v105;
    v158.size.width = v107;
    v158.size.height = v109;
    if (CGRectGetMaxX(v158) <= v117)
    {
      return;
    }

    v159.origin.x = v103;
    v159.origin.y = v105;
    v159.size.width = v107;
    v159.size.height = v109;
    v113 = v117 - CGRectGetMinX(v159);
    v160.origin.x = v103;
    v160.origin.y = v105;
    v160.size.width = v107;
    v160.size.height = v109;
    v114 = v117 - CGRectGetMinX(v160);
  }

  if (_shouldReverseLayoutDirection)
  {
    v118 = v103 + v113;
  }

  else
  {
    v118 = v103;
  }

  detailTextLabel2 = [(PSBadgedTableCell *)self detailTextLabel];
  [detailTextLabel2 setFrame:{v118, v105, v114, v109}];
}

- (PSBadgedTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PSBadgedTableCell;
  v4 = [(PSTableCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_resetLocale name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4.receiver = self;
  v4.super_class = PSBadgedTableCell;
  [(PSTableCell *)&v4 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSBadgedTableCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v6 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"badgeNumber", v6.receiver, v6.super_class}];

  -[PSBadgedTableCell badgeWithInteger:](self, "badgeWithInteger:", [v5 integerValue]);
}

- (void)resetLocale
{
  badgeNumberLabel = self->_badgeNumberLabel;
  v4 = MEMORY[0x1E696ADA0];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_badgeInt];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:0];
  [(UILabel *)badgeNumberLabel setText:v6];

  [(PSBadgedTableCell *)self setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = PSBadgedTableCell;
  [(PSBadgedTableCell *)&v5 setHighlighted:highlighted animated:animated];
  [(PSBadgedTableCell *)self setNeedsLayout];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = PSBadgedTableCell;
  [(PSBadgedTableCell *)&v5 setSelected:selected animated:animated];
  [(PSBadgedTableCell *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  traitCollection = [(PSBadgedTableCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory && self->_badgeImageView)
  {
    if ([(PSBadgedTableCell *)self _shouldUseRoundStyle])
    {
      [(UILabel *)self->_badgeNumberLabel frame];
      v10 = v9;
      [(UILabel *)self->_badgeNumberLabel frame];
      if (v10 >= v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }
    }

    else
    {
      [objc_opt_class() badgePadding];
      v14 = v13;
      [(UILabel *)self->_badgeNumberLabel frame];
      v12 = v15 + v14 * 2.0;
      if (v12 < 30.0)
      {
        v12 = 30.0;
      }
    }

    width = width - (v12 + 20.0);
  }

  v18.receiver = self;
  v18.super_class = PSBadgedTableCell;
  [(PSBadgedTableCell *)&v18 sizeThatFits:width, height];
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)badgeWithInteger:(int64_t)integer
{
  if (self->_badgeInt != integer)
  {
    self->_badgeInt = integer;
    [(UIImageView *)self->_badgeImageView removeFromSuperview];
    badgeImageView = self->_badgeImageView;
    self->_badgeImageView = 0;

    [(UILabel *)self->_badgeNumberLabel removeFromSuperview];
    badgeNumberLabel = self->_badgeNumberLabel;
    self->_badgeNumberLabel = 0;

    if (integer)
    {
      unreadBubbleImage = [objc_opt_class() unreadBubbleImage];
      unreadBubbleImage2 = [objc_opt_class() unreadBubbleImage];
      v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:unreadBubbleImage highlightedImage:unreadBubbleImage2];
      v11 = self->_badgeImageView;
      self->_badgeImageView = v10;

      contentView = [(PSBadgedTableCell *)self contentView];
      [contentView addSubview:self->_badgeImageView];

      v13 = objc_alloc(MEMORY[0x1E69DCC10]);
      v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v15 = self->_badgeNumberLabel;
      self->_badgeNumberLabel = v14;

      v16 = self->_badgeNumberLabel;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v16 setBackgroundColor:clearColor];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
      IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

      v21 = 17.0;
      if (IsAccessibilityCategory)
      {
        v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
        [v22 pointSize];
        v24 = v23;

        v21 = fmin(v24, 50.0);
      }

      _shouldUseRoundStyle = [(PSBadgedTableCell *)self _shouldUseRoundStyle];
      v26 = self->_badgeNumberLabel;
      if (_shouldUseRoundStyle)
      {
        [MEMORY[0x1E69DB878] systemFontOfSize:v21];
      }

      else
      {
        [MEMORY[0x1E69DB878] boldSystemFontOfSize:v21];
      }
      v27 = ;
      [(UILabel *)v26 setFont:v27];

      v28 = self->_badgeNumberLabel;
      v29 = MEMORY[0x1E696ADA0];
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
      v31 = [v29 localizedStringFromNumber:v30 numberStyle:0];
      [(UILabel *)v28 setText:v31];

      [(UILabel *)self->_badgeNumberLabel setTextAlignment:1];
      contentView2 = [(PSBadgedTableCell *)self contentView];
      [contentView2 addSubview:self->_badgeNumberLabel];
    }

    [(PSBadgedTableCell *)self setNeedsLayout];
  }
}

+ (id)unreadBubbleImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PSBadgedTableCell_unreadBubbleImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (unreadBubbleImage_onceToken != -1)
  {
    dispatch_once(&unreadBubbleImage_onceToken, block);
  }

  v2 = unreadBubbleImage_image;

  return v2;
}

void __38__PSBadgedTableCell_unreadBubbleImage__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = PSPreferencesFrameworkBundle();
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  v5 = [v4 traitCollection];
  v6 = [v2 imageNamed:@"UnreadBubble" inBundle:v3 compatibleWithTraitCollection:v5];
  v7 = unreadBubbleImage_image;
  unreadBubbleImage_image = v6;

  [*(a1 + 32) badgePadding];
  if (v8 != 0.0)
  {
    v9 = unreadBubbleImage_image;
    [*(a1 + 32) badgePadding];
    v11 = [v9 stretchableImageWithLeftCapWidth:v10 topCapHeight:0];
    v12 = unreadBubbleImage_image;
    unreadBubbleImage_image = v11;
  }
}

@end