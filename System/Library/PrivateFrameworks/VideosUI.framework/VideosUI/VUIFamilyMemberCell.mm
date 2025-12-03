@interface VUIFamilyMemberCell
+ (id)_monogramViewForFamilyMemberCell:(id)cell;
+ (void)configureVUIFamilyMemberCell:(id)cell withFamilyMember:(id)member metricsOnly:(BOOL)only;
- (CGSize)_iOS_layoutSubviewsWithSize:(CGSize)size computationOnly:(BOOL)only;
- (CGSize)monogramSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIFamilyMemberCell)initWithFrame:(CGRect)frame;
- (void)configureMonogramImageLayoutForWindowWidth:(double)width;
- (void)familyMember:(id)member photoRequestDidCompleteWithImage:(id)image;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFamilyMemberImageView:(id)view;
- (void)setMonogramView:(id)view;
- (void)setNameLabel:(id)label;
@end

@implementation VUIFamilyMemberCell

+ (void)configureVUIFamilyMemberCell:(id)cell withFamilyMember:(id)member metricsOnly:(BOOL)only
{
  cellCopy = cell;
  memberCopy = member;
  [cellCopy setFamilyMember:memberCopy];
  memberImage = [memberCopy memberImage];
  if (memberImage)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69D5998]);
    [v9 setImage:memberImage];
    [cellCopy setFamilyMemberImageView:v9];
  }

  if (!only)
  {
    [memberCopy setDelegate:cellCopy];
  }

  v10 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v10 setTextStyle:13];
  vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v10 setColor:vui_primaryTextColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(VUITextLayout *)v10 setHighlightOrSelectedColor:whiteColor];

  -[VUITextLayout setAlignment:](v10, "setAlignment:", 2 * ([cellCopy effectiveUserInterfaceLayoutDirection] == 1));
  [(VUITextLayout *)v10 setFontWeight:0];
  v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  firstName = [memberCopy firstName];
  [v13 setGivenName:firstName];

  lastName = [memberCopy lastName];
  [v13 setFamilyName:lastName];

  v16 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  [v16 setStyle:2];
  v17 = [v16 stringFromPersonNameComponents:v13];
  nameLabel = [cellCopy nameLabel];
  v19 = [VUILabel labelWithString:v17 textLayout:v10 existingLabel:nameLabel];

  [cellCopy setNameLabel:v19];
  v20 = [VUIFamilyMemberCell _monogramViewForFamilyMemberCell:cellCopy];
  memberImage2 = [memberCopy memberImage];

  if (!memberImage2)
  {
    [cellCopy setMonogramView:v20];
  }
}

- (VUIFamilyMemberCell)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = VUIFamilyMemberCell;
  v3 = [(VUIFamilyMemberCell *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    +[VUIFamilyMemberCell maxMonogramHeight];
    v5 = v4;
    v6 = objc_opt_new();
    [v6 setImageSize:{v5, v5}];
    [v6 setAcceptsFocus:1];
    monogramImageLayout = v3->_monogramImageLayout;
    v3->_monogramImageLayout = v6;
    v8 = v6;

    v9 = objc_alloc_init(VUISeparatorView);
    bottomSeparatorView = v3->_bottomSeparatorView;
    v3->_bottomSeparatorView = v9;

    contentView = [(VUIFamilyMemberCell *)v3 contentView];
    [contentView addSubview:v3->_bottomSeparatorView];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v13 = [VUIVideosImageView alloc];
    v14 = [(VUIVideosImageView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    chevronImageView = v3->_chevronImageView;
    v3->_chevronImageView = v14;

    v16 = v3->_chevronImageView;
    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    v18 = [v12 imageWithTintColor:lightGrayColor renderingMode:1];
    [(VUIVideosImageView *)v16 setImage:v18];

    v19 = v3->_chevronImageView;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v21 = [v12 imageWithTintColor:whiteColor renderingMode:1];
    [(VUIVideosImageView *)v19 setHighlightOrSelectedImage:v21];

    contentView2 = [(VUIFamilyMemberCell *)v3 contentView];
    [contentView2 addSubview:v3->_chevronImageView];

    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIListCollectionViewCell *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];

    vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];

    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:vui_keyColor];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = VUIFamilyMemberCell;
  [(VUIListCollectionViewCell *)&v4 prepareForReuse];
  familyMember = [(VUIFamilyMemberCell *)self familyMember];
  [familyMember setDelegate:0];

  [(VUIFamilyMemberCell *)self setFamilyMember:0];
  [(VUIFamilyMemberCell *)self setFamilyMemberImageView:0];
  [(VUIFamilyMemberCell *)self setMonogramView:0];
  [(VUIFamilyMemberCell *)self setNameLabel:0];
  [(VUIFamilyMemberCell *)self setChevronImageView:0];
  [(VUIFamilyMemberCell *)self setBottomSeparatorView:0];
}

- (void)setNameLabel:(id)label
{
  labelCopy = label;
  nameLabel = self->_nameLabel;
  if (nameLabel != labelCopy)
  {
    v10 = labelCopy;
    [(VUILabel *)nameLabel removeFromSuperview];
    if (v10)
    {
      contentView = [(VUIFamilyMemberCell *)self contentView];
      v8 = [(VUILabel *)v10 isDescendantOfView:contentView];

      if ((v8 & 1) == 0)
      {
        contentView2 = [(VUIFamilyMemberCell *)self contentView];
        [contentView2 addSubview:v10];
      }
    }

    objc_storeStrong(&self->_nameLabel, label);
    [(VUIFamilyMemberCell *)self setNeedsLayout];
    labelCopy = v10;
  }
}

- (void)setFamilyMemberImageView:(id)view
{
  viewCopy = view;
  familyMemberImageView = self->_familyMemberImageView;
  if (familyMemberImageView != viewCopy)
  {
    v10 = viewCopy;
    [(_TVImageView *)familyMemberImageView removeFromSuperview];
    objc_storeStrong(&self->_familyMemberImageView, view);
    if (v10)
    {
      contentView = [(VUIFamilyMemberCell *)self contentView];
      v8 = [(_TVImageView *)v10 isDescendantOfView:contentView];

      if ((v8 & 1) == 0)
      {
        contentView2 = [(VUIFamilyMemberCell *)self contentView];
        [contentView2 addSubview:self->_familyMemberImageView];
      }
    }

    [(VUIFamilyMemberCell *)self setNeedsLayout];
    viewCopy = v10;
  }
}

- (void)setMonogramView:(id)view
{
  viewCopy = view;
  monogramView = self->_monogramView;
  if (monogramView != viewCopy)
  {
    v10 = viewCopy;
    [(_TVMonogramView *)monogramView removeFromSuperview];
    if (v10)
    {
      contentView = [(VUIFamilyMemberCell *)self contentView];
      v8 = [(_TVMonogramView *)v10 isDescendantOfView:contentView];

      if ((v8 & 1) == 0)
      {
        contentView2 = [(VUIFamilyMemberCell *)self contentView];
        [contentView2 addSubview:v10];
      }
    }

    objc_storeStrong(&self->_monogramView, view);
    [(VUIFamilyMemberCell *)self setNeedsLayout];
    viewCopy = v10;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIFamilyMemberCell *)self _iOS_layoutSubviewsWithSize:1 computationOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIFamilyMemberCell;
  [(VUIFamilyMemberCell *)&v5 layoutSubviews];
  [(VUIFamilyMemberCell *)self bounds];
  [(VUIFamilyMemberCell *)self _iOS_layoutSubviewsWithSize:0 computationOnly:v3, v4];
}

- (void)familyMember:(id)member photoRequestDidCompleteWithImage:(id)image
{
  memberCopy = member;
  imageCopy = image;
  if (imageCopy)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __69__VUIFamilyMemberCell_familyMember_photoRequestDidCompleteWithImage___block_invoke;
    v11 = &unk_1E872F038;
    objc_copyWeak(&v13, &location);
    v12 = imageCopy;
    v8 = v9;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v10(v8);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __69__VUIFamilyMemberCell_familyMember_photoRequestDidCompleteWithImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_alloc_init(MEMORY[0x1E69D5998]);
  [v2 setImage:*(a1 + 32)];
  if (v2)
  {
    v3 = [WeakRetained monogramView];

    if (v3)
    {
      [WeakRetained setMonogramView:0];
    }
  }

  [WeakRetained setFamilyMemberImageView:v2];
}

- (CGSize)monogramSize
{
  [(TVImageLayout *)self->_monogramImageLayout decoratorSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)_monogramViewForFamilyMemberCell:(id)cell
{
  v3 = MEMORY[0x1E69DC888];
  cellCopy = cell;
  v24 = [v3 colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.780392 green:0.780392 blue:0.8 alpha:0.8];
  v6 = [objc_alloc(MEMORY[0x1E69D5968]) initWithStyle:0];
  [v6 setUnfocusedBgColor:v5];
  [v6 setFocusedBgColor:v24];
  monogramImageLayout = [cellCopy monogramImageLayout];
  [monogramImageLayout decoratorSize];
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E69D59A8]) initWithFrame:v6 configuration:{0.0, 0.0, v9, v11}];
  [v12 setControlState:0 animated:0];
  [v6 focusedSizeIncrease];
  [v12 setFocusedSizeIncrease:?];
  monogramImageLayout2 = [cellCopy monogramImageLayout];
  [v12 tv_setLayout:monogramImageLayout2];

  [v12 setFocusedStateEnabled:1];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:21.0 weight:*MEMORY[0x1E69DB968]];
  fontDescriptor = [v14 fontDescriptor];

  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:fontDescriptor size:21.0];
  v17 = objc_alloc(MEMORY[0x1E69D59A0]);
  familyMember = [cellCopy familyMember];
  firstName = [familyMember firstName];
  familyMember2 = [cellCopy familyMember];

  lastName = [familyMember2 lastName];
  v22 = [v17 initWithFirstName:firstName lastName:lastName imageURL:0 font:v16];

  [v22 setCornerRadius:v9 * 0.5];
  [v22 setSize:{v9, v11}];
  [v6 focusedSizeIncrease];
  [v22 setUpscaleAdjustment:?];
  [v22 setFillColor:v5];
  [v12 setMonogramDescription:v22];

  return v12;
}

- (void)configureMonogramImageLayoutForWindowWidth:(double)width
{
  +[VUIFamilyMemberCell maxMonogramHeight];
  v5 = v4;
  v6 = objc_opt_new();
  [v6 setImageSize:{v5, v5}];
  [v6 setAcceptsFocus:1];
  monogramImageLayout = self->_monogramImageLayout;
  self->_monogramImageLayout = v6;
}

- (CGSize)_iOS_layoutSubviewsWithSize:(CGSize)size computationOnly:(BOOL)only
{
  height = size.height;
  width = size.width;
  v6 = size.width == *MEMORY[0x1E695F060] && size.height == *(MEMORY[0x1E695F060] + 8);
  v101 = size.height;
  if (!v6)
  {
    v9 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:size.width];
    if ((v9 - 3) >= 3)
    {
      v10 = 50.0;
    }

    else
    {
      v10 = 72.0;
    }

    v11 = 66.0;
    if ((v9 - 3) < 3)
    {
      v11 = 96.0;
    }

    v101 = v11;
    v13 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:width];
    v99 = v16;
    v85 = v17;
    effectiveUserInterfaceLayoutDirection = [(VUIFamilyMemberCell *)self effectiveUserInterfaceLayoutDirection];
    [(VUIFamilyMemberCell *)self bounds];
    monogramView = self->_monogramView;
    v97 = v15;
    v98 = v15;
    v100 = v14;
    v86 = v13;
    v87 = v14;
    v95 = v12;
    if (monogramView)
    {
      v20 = monogramView;
      v95 = 0.0;
      v98 = v10;
      v87 = v10;
      v86 = v99;
    }

    familyMemberImageView = self->_familyMemberImageView;
    if (familyMemberImageView)
    {
      v22 = familyMemberImageView;

      v23 = 0.0;
      v24 = v10;
      v25 = v99;
      monogramView = v22;
      v80 = v99;
      v81 = v10;
      v83 = v10;
      v26 = 0.0;
      v27 = v97;
    }

    else
    {
      v27 = v15;
      v10 = v98;
      v25 = v86;
      v24 = v87;
      v23 = v95;
      v81 = v15;
      v83 = v100;
      v26 = v12;
      v80 = v13;
    }

    bottomSeparatorView = self->_bottomSeparatorView;
    v84 = v27;
    v29 = v100;
    v96 = v12;
    v82 = v12;
    v30 = v13;
    v88 = v25;
    v90 = v23;
    if (bottomSeparatorView)
    {
      v93 = v26;
      [(VUIBaseView *)bottomSeparatorView sizeThatFits:width - v99, 1.79769313e308];
      v32 = v31;
      v84 = v33;
      if (monogramView)
      {
        v103.origin.x = v88;
        v103.origin.y = v90;
        v103.size.width = v24;
        v103.size.height = v10;
        v30 = CGRectGetMaxX(v103) + 12.0;
        v104.origin.x = v88;
        v104.origin.y = v90;
        v104.size.width = v24;
        v104.size.height = v10;
        v32 = v32 - (CGRectGetWidth(v104) + 12.0);
      }

      else
      {
        v30 = v99;
      }

      [(VUISeparatorView *)self->_bottomSeparatorView lineHeight];
      v82 = height - v34;
      v29 = v32;
      v26 = v93;
      v25 = v88;
      v23 = v90;
    }

    v77 = v24;
    v78 = v30;
    v79 = v29;
    chevronImageView = self->_chevronImageView;
    v36 = v96;
    v92 = v97;
    v94 = v100;
    v37 = v13;
    if (chevronImageView)
    {
      image = [(VUIVideosImageView *)chevronImageView image];
      [image size];
      v40 = v39;
      v42 = v41;

      v36 = (height - v42) * 0.5;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v37 = v43;
        v92 = v45;
        v94 = v44;
      }

      else
      {
        v92 = v42;
        v94 = v40;
        v37 = width - v85 - v40;
      }

      v25 = v88;
      v23 = v90;
    }

    v91 = v36;
    if (self->_nameLabel)
    {
      v100 = width - v99 - v85;
      if (monogramView)
      {
        v89 = v37;
        if (effectiveUserInterfaceLayoutDirection == 1)
        {
          v46 = v37;
          v47 = v23;
          v49 = v92;
          v48 = v94;
          v50 = v25;
          MaxX = CGRectGetMaxX(*(&v36 - 1));
          v52 = v24;
        }

        else
        {
          v105.origin.x = v25;
          v105.origin.y = v23;
          v52 = v24;
          v105.size.width = v24;
          v47 = v23;
          v105.size.height = v10;
          v50 = v25;
          MaxX = CGRectGetMaxX(v105);
        }

        v99 = MaxX + 12.0;
        v106.origin.x = v50;
        v106.origin.y = v47;
        v106.size.width = v52;
        v106.size.height = v10;
        v100 = v100 - (CGRectGetWidth(v106) + 12.0);
        v37 = v89;
        v36 = v91;
      }

      v55 = v92;
      v54 = v94;
      v56 = v26;
      if (self->_chevronImageView)
      {
        v57 = v37;
        v100 = v100 - (CGRectGetWidth(*(&v36 - 1)) + 12.0);
      }

      [(VUILabel *)self->_nameLabel topMarginWithBaselineMargin:32.0, *&v24];
      v59 = v58;
      [(VUILabel *)self->_nameLabel sizeThatFits:v100, 1.79769313e308];
      v53 = v60;
      [(VUILabel *)self->_nameLabel bottomMarginWithBaselineMargin:16.0];
      v62 = v61;
      v107.origin.x = v99;
      v107.origin.y = v59;
      v107.size.width = v100;
      v107.size.height = v53;
      v63 = v62 + v59 + CGRectGetHeight(v107);
      v64 = v101;
      if (v101 < v63)
      {
        v64 = v63;
      }

      v101 = v64;
      v96 = (v64 - v53) * 0.5;
      v26 = v56;
    }

    else
    {
      v99 = v13;
      v53 = v97;
    }

    v65 = v95;
    v66 = v81;
    if (self->_familyMemberImageView)
    {
      v26 = (v101 - v81) * 0.5;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v26 = v68;
        v83 = v69;
        v66 = v70;
        if (only)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }
    }

    else if (self->_monogramView)
    {
      v65 = (v101 - v98) * 0.5;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v86 = v71;
        v87 = v72;
        v65 = v73;
        v98 = v74;
      }
    }

    v67 = v80;
    if (only)
    {
LABEL_48:

      goto LABEL_49;
    }

LABEL_45:
    [(_TVImageView *)self->_familyMemberImageView setFrame:v67, v26, v83, v66, *&v77];
    if (!self->_familyMemberImageView)
    {
      [(_TVMonogramView *)self->_monogramView setFrame:v86, v65, v87, v98];
    }

    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:v78, v82, v79, v84];
    [(VUILabel *)self->_nameLabel setFrame:v99, v96, v100, v53];
    [(VUIVideosImageView *)self->_chevronImageView setFrame:v37, v91, v94, v92];
    goto LABEL_48;
  }

LABEL_49:
  v75 = width;
  v76 = v101;
  result.height = v76;
  result.width = v75;
  return result;
}

@end