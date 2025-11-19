@interface VUIFamilyMemberCell
+ (id)_monogramViewForFamilyMemberCell:(id)a3;
+ (void)configureVUIFamilyMemberCell:(id)a3 withFamilyMember:(id)a4 metricsOnly:(BOOL)a5;
- (CGSize)_iOS_layoutSubviewsWithSize:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)monogramSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIFamilyMemberCell)initWithFrame:(CGRect)a3;
- (void)configureMonogramImageLayoutForWindowWidth:(double)a3;
- (void)familyMember:(id)a3 photoRequestDidCompleteWithImage:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setFamilyMemberImageView:(id)a3;
- (void)setMonogramView:(id)a3;
- (void)setNameLabel:(id)a3;
@end

@implementation VUIFamilyMemberCell

+ (void)configureVUIFamilyMemberCell:(id)a3 withFamilyMember:(id)a4 metricsOnly:(BOOL)a5
{
  v22 = a3;
  v7 = a4;
  [v22 setFamilyMember:v7];
  v8 = [v7 memberImage];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69D5998]);
    [v9 setImage:v8];
    [v22 setFamilyMemberImageView:v9];
  }

  if (!a5)
  {
    [v7 setDelegate:v22];
  }

  v10 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v10 setTextStyle:13];
  v11 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v10 setColor:v11];

  v12 = [MEMORY[0x1E69DC888] whiteColor];
  [(VUITextLayout *)v10 setHighlightOrSelectedColor:v12];

  -[VUITextLayout setAlignment:](v10, "setAlignment:", 2 * ([v22 effectiveUserInterfaceLayoutDirection] == 1));
  [(VUITextLayout *)v10 setFontWeight:0];
  v13 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v14 = [v7 firstName];
  [v13 setGivenName:v14];

  v15 = [v7 lastName];
  [v13 setFamilyName:v15];

  v16 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  [v16 setStyle:2];
  v17 = [v16 stringFromPersonNameComponents:v13];
  v18 = [v22 nameLabel];
  v19 = [VUILabel labelWithString:v17 textLayout:v10 existingLabel:v18];

  [v22 setNameLabel:v19];
  v20 = [VUIFamilyMemberCell _monogramViewForFamilyMemberCell:v22];
  v21 = [v7 memberImage];

  if (!v21)
  {
    [v22 setMonogramView:v20];
  }
}

- (VUIFamilyMemberCell)initWithFrame:(CGRect)a3
{
  v26.receiver = self;
  v26.super_class = VUIFamilyMemberCell;
  v3 = [(VUIFamilyMemberCell *)&v26 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v11 = [(VUIFamilyMemberCell *)v3 contentView];
    [v11 addSubview:v3->_bottomSeparatorView];

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v13 = [VUIVideosImageView alloc];
    v14 = [(VUIVideosImageView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    chevronImageView = v3->_chevronImageView;
    v3->_chevronImageView = v14;

    v16 = v3->_chevronImageView;
    v17 = [MEMORY[0x1E69DC888] lightGrayColor];
    v18 = [v12 imageWithTintColor:v17 renderingMode:1];
    [(VUIVideosImageView *)v16 setImage:v18];

    v19 = v3->_chevronImageView;
    v20 = [MEMORY[0x1E69DC888] whiteColor];
    v21 = [v12 imageWithTintColor:v20 renderingMode:1];
    [(VUIVideosImageView *)v19 setHighlightOrSelectedImage:v21];

    v22 = [(VUIFamilyMemberCell *)v3 contentView];
    [v22 addSubview:v3->_chevronImageView];

    v23 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIListCollectionViewCell *)v3 setBackgroundColor:v23];

    v24 = [MEMORY[0x1E69DC888] vui_keyColor];

    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:v24];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = VUIFamilyMemberCell;
  [(VUIListCollectionViewCell *)&v4 prepareForReuse];
  v3 = [(VUIFamilyMemberCell *)self familyMember];
  [v3 setDelegate:0];

  [(VUIFamilyMemberCell *)self setFamilyMember:0];
  [(VUIFamilyMemberCell *)self setFamilyMemberImageView:0];
  [(VUIFamilyMemberCell *)self setMonogramView:0];
  [(VUIFamilyMemberCell *)self setNameLabel:0];
  [(VUIFamilyMemberCell *)self setChevronImageView:0];
  [(VUIFamilyMemberCell *)self setBottomSeparatorView:0];
}

- (void)setNameLabel:(id)a3
{
  v5 = a3;
  nameLabel = self->_nameLabel;
  if (nameLabel != v5)
  {
    v10 = v5;
    [(VUILabel *)nameLabel removeFromSuperview];
    if (v10)
    {
      v7 = [(VUIFamilyMemberCell *)self contentView];
      v8 = [(VUILabel *)v10 isDescendantOfView:v7];

      if ((v8 & 1) == 0)
      {
        v9 = [(VUIFamilyMemberCell *)self contentView];
        [v9 addSubview:v10];
      }
    }

    objc_storeStrong(&self->_nameLabel, a3);
    [(VUIFamilyMemberCell *)self setNeedsLayout];
    v5 = v10;
  }
}

- (void)setFamilyMemberImageView:(id)a3
{
  v5 = a3;
  familyMemberImageView = self->_familyMemberImageView;
  if (familyMemberImageView != v5)
  {
    v10 = v5;
    [(_TVImageView *)familyMemberImageView removeFromSuperview];
    objc_storeStrong(&self->_familyMemberImageView, a3);
    if (v10)
    {
      v7 = [(VUIFamilyMemberCell *)self contentView];
      v8 = [(_TVImageView *)v10 isDescendantOfView:v7];

      if ((v8 & 1) == 0)
      {
        v9 = [(VUIFamilyMemberCell *)self contentView];
        [v9 addSubview:self->_familyMemberImageView];
      }
    }

    [(VUIFamilyMemberCell *)self setNeedsLayout];
    v5 = v10;
  }
}

- (void)setMonogramView:(id)a3
{
  v5 = a3;
  monogramView = self->_monogramView;
  if (monogramView != v5)
  {
    v10 = v5;
    [(_TVMonogramView *)monogramView removeFromSuperview];
    if (v10)
    {
      v7 = [(VUIFamilyMemberCell *)self contentView];
      v8 = [(_TVMonogramView *)v10 isDescendantOfView:v7];

      if ((v8 & 1) == 0)
      {
        v9 = [(VUIFamilyMemberCell *)self contentView];
        [v9 addSubview:v10];
      }
    }

    objc_storeStrong(&self->_monogramView, a3);
    [(VUIFamilyMemberCell *)self setNeedsLayout];
    v5 = v10;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIFamilyMemberCell *)self _iOS_layoutSubviewsWithSize:1 computationOnly:a3.width, a3.height];
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

- (void)familyMember:(id)a3 photoRequestDidCompleteWithImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    objc_initWeak(&location, self);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v10 = __69__VUIFamilyMemberCell_familyMember_photoRequestDidCompleteWithImage___block_invoke;
    v11 = &unk_1E872F038;
    objc_copyWeak(&v13, &location);
    v12 = v7;
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

+ (id)_monogramViewForFamilyMemberCell:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v24 = [v3 colorWithRed:0.4 green:0.4 blue:0.4 alpha:1.0];
  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.780392 green:0.780392 blue:0.8 alpha:0.8];
  v6 = [objc_alloc(MEMORY[0x1E69D5968]) initWithStyle:0];
  [v6 setUnfocusedBgColor:v5];
  [v6 setFocusedBgColor:v24];
  v7 = [v4 monogramImageLayout];
  [v7 decoratorSize];
  v9 = v8;
  v11 = v10;

  v12 = [objc_alloc(MEMORY[0x1E69D59A8]) initWithFrame:v6 configuration:{0.0, 0.0, v9, v11}];
  [v12 setControlState:0 animated:0];
  [v6 focusedSizeIncrease];
  [v12 setFocusedSizeIncrease:?];
  v13 = [v4 monogramImageLayout];
  [v12 tv_setLayout:v13];

  [v12 setFocusedStateEnabled:1];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:21.0 weight:*MEMORY[0x1E69DB968]];
  v15 = [v14 fontDescriptor];

  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v15 size:21.0];
  v17 = objc_alloc(MEMORY[0x1E69D59A0]);
  v18 = [v4 familyMember];
  v19 = [v18 firstName];
  v20 = [v4 familyMember];

  v21 = [v20 lastName];
  v22 = [v17 initWithFirstName:v19 lastName:v21 imageURL:0 font:v16];

  [v22 setCornerRadius:v9 * 0.5];
  [v22 setSize:{v9, v11}];
  [v6 focusedSizeIncrease];
  [v22 setUpscaleAdjustment:?];
  [v22 setFillColor:v5];
  [v12 setMonogramDescription:v22];

  return v12;
}

- (void)configureMonogramImageLayoutForWindowWidth:(double)a3
{
  +[VUIFamilyMemberCell maxMonogramHeight];
  v5 = v4;
  v6 = objc_opt_new();
  [v6 setImageSize:{v5, v5}];
  [v6 setAcceptsFocus:1];
  monogramImageLayout = self->_monogramImageLayout;
  self->_monogramImageLayout = v6;
}

- (CGSize)_iOS_layoutSubviewsWithSize:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a3.width == *MEMORY[0x1E695F060] && a3.height == *(MEMORY[0x1E695F060] + 8);
  v101 = a3.height;
  if (!v6)
  {
    v9 = [MEMORY[0x1E69DD2E8] vui_currentSizeClassForWindowWidth:a3.width];
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
    v18 = [(VUIFamilyMemberCell *)self effectiveUserInterfaceLayoutDirection];
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
      v38 = [(VUIVideosImageView *)chevronImageView image];
      [v38 size];
      v40 = v39;
      v42 = v41;

      v36 = (height - v42) * 0.5;
      if (v18 == 1)
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
        if (v18 == 1)
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
      if (v18 == 1)
      {
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v26 = v68;
        v83 = v69;
        v66 = v70;
        if (a4)
        {
          goto LABEL_48;
        }

        goto LABEL_45;
      }
    }

    else if (self->_monogramView)
    {
      v65 = (v101 - v98) * 0.5;
      if (v18 == 1)
      {
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v86 = v71;
        v87 = v72;
        v65 = v73;
        v98 = v74;
      }
    }

    v67 = v80;
    if (a4)
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