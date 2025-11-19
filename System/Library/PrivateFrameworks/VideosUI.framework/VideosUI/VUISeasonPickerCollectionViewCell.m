@interface VUISeasonPickerCollectionViewCell
+ (void)configureSeasonPickerCell:(id)a3 withMedia:(id)a4 traitCollection:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUISeasonPickerCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setBottomSeparatorView:(id)a3;
- (void)setSeasonImageView:(id)a3;
- (void)setSecondSubtitleLabel:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)setTopSeparatorView:(id)a3;
@end

@implementation VUISeasonPickerCollectionViewCell

+ (void)configureSeasonPickerCell:(id)a3 withMedia:(id)a4 traitCollection:(id)a5
{
  v55 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:v7 imageType:0];
  v10 = [v55 seasonImageView];
  if (v10)
  {
    v11 = [v55 seasonImageView];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DF740]);
  }

  v12 = v11;

  [v12 setUserInteractionEnabled:0];
  v13 = +[VUILibraryViewFactory tvPlaceholderImage];
  [v12 setPlaceholderImage:v13];

  v14 = MEMORY[0x1E69DF728];
  v15 = 0x1E69DC000uLL;
  v16 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
  v17 = [v14 decoratorWithOutlineColor:v16 outlineWidths:{1.0, 1.0, 1.0, 1.0}];

  [v17 setScaleToSize:{68.0, 102.0}];
  [VUIUtilities imageCornerRadiusWithStyle:0];
  v19 = v18;
  [MEMORY[0x1E69DF6D0] radiiFromRadius:?];
  v54 = v17;
  [v17 setCornerRadii:?];
  v20 = NSSelectorFromString(&cfstr_Artworkurl.isa);
  if (objc_opt_respondsToSelector())
  {
    v21 = ([v7 methodForSelector:v20])(v7, v20);
    if ([v21 length])
    {
      v22 = [objc_alloc(MEMORY[0x1E69DF770]) initWithSrc:v21 size:{68.0, 102.0}];
      v23 = [VUIUtilities placeholderImageResourceName:0];
      [v22 setPlaceholderSrc:v23];

      [MEMORY[0x1E69DF6D0] radiiFromRadius:v19];
      [v22 setBorderRadii:?];
      [v22 setExtension:@"jpeg"];
      v24 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
      [v22 setBackgroundColor:v24];

      v25 = MEMORY[0x1E69DF720];
      v26 = [v55 seasonImageView];
      v27 = [v25 makeImageViewWithDescriptor:v22 existingView:v26];

      v15 = 0x1E69DC000;
      v12 = v27;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v28 = objc_alloc(MEMORY[0x1E69DF730]);
    v29 = [v7 mediaLibrary];
    v21 = [v28 initWithObject:v9 imageLoader:v29 groupType:0];

    [v21 setDecorator:v54];
    [v12 setImageProxy:v21];
  }

LABEL_10:
  [VUIUtilities imageCornerRadiusWithStyle:2];
  [v12 setCornerRadius:?];
  [v12 setBorderWidth:1.0];
  v30 = [*(v15 + 2184) vui_lockupBorderColorOpal];
  [v12 setBorderColor:v30];

  [v55 setSeasonImageView:v12];
  v31 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v31 setTextStyle:13];
  [(VUITextLayout *)v31 setFontWeight:0];
  v32 = [*(v15 + 2184) vui_primaryTextColor];
  [(VUITextLayout *)v31 setColor:v32];

  [(VUITextLayout *)v31 setNumberOfLines:1];
  v33 = [v7 title];
  v34 = [v55 titleLabel];
  v35 = [VUILabel labelWithString:v33 textLayout:v31 existingLabel:v34];
  [v55 setTitleLabel:v35];

  LODWORD(v35) = [v8 isAXEnabled];
  v36 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v36 setTextStyle:21];
  [(VUITextLayout *)v36 setFontWeight:0];
  v37 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(VUITextLayout *)v36 setColor:v37];

  if (v35)
  {
    v53 = v9;
    [(VUITextLayout *)v36 setNumberOfLines:0];
    v38 = [v7 genreTitle];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = &stru_1F5DB25C0;
    }

    v41 = [v55 subtitleLabel];
    v42 = [VUILabel labelWithString:v40 textLayout:v36 existingLabel:v41];
    [v55 setSubtitleLabel:v42];

    v43 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v43 setTextStyle:21];
    [(VUITextLayout *)v43 setFontWeight:0];
    v44 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(VUITextLayout *)v43 setColor:v44];

    [(VUITextLayout *)v43 setNumberOfLines:0];
    v45 = [v7 releaseYear];
    v46 = [v45 stringValue];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = &stru_1F5DB25C0;
    }

    v49 = [v55 secondSubtitleLabel];
    v50 = [VUILabel labelWithString:v48 textLayout:v43 existingLabel:v49];
    [v55 setSecondSubtitleLabel:v50];
LABEL_27:

    v9 = v53;
    goto LABEL_28;
  }

  [(VUITextLayout *)v36 setNumberOfLines:1];
  v45 = [v7 genreTitle];
  v47 = [v7 releaseYear];
  v51 = [v45 length];
  if (v51 && v47)
  {
    v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", v45, @"·", v47];
LABEL_25:
    v43 = v52;
    if (!v52)
    {
      goto LABEL_28;
    }

    v53 = v9;
    v49 = [v55 subtitleLabel];
    v50 = [VUILabel labelWithString:v43 textLayout:v36 existingLabel:v49];
    [v55 setSubtitleLabel:v50];
    goto LABEL_27;
  }

  if (v51)
  {
    v52 = v45;
    goto LABEL_25;
  }

  if (v47)
  {
    v52 = [v47 stringValue];
    goto LABEL_25;
  }

  v43 = 0;
LABEL_28:
}

- (VUISeasonPickerCollectionViewCell)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = VUISeasonPickerCollectionViewCell;
  v3 = [(VUISeasonPickerCollectionViewCell *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIListCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x1E69DC888] vui_secondaryFillColor];
    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:v5];
  }

  return v3;
}

- (void)setTitleLabel:(id)a3
{
  v5 = a3;
  titleLabel = self->_titleLabel;
  if (titleLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, a3);
    if (self->_titleLabel)
    {
      v7 = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [v7 addSubview:self->_titleLabel];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setSubtitleLabel:(id)a3
{
  v5 = a3;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)subtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_subtitleLabel, a3);
    if (self->_subtitleLabel)
    {
      v7 = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [v7 addSubview:self->_subtitleLabel];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setSecondSubtitleLabel:(id)a3
{
  v5 = a3;
  secondSubtitleLabel = self->_secondSubtitleLabel;
  if (secondSubtitleLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)secondSubtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_secondSubtitleLabel, a3);
    if (self->_secondSubtitleLabel)
    {
      v7 = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [v7 addSubview:self->_secondSubtitleLabel];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setSeasonImageView:(id)a3
{
  v5 = a3;
  if (self->_seasonImageView != v5)
  {
    v7 = v5;
    [(VUIImageView *)v5 removeFromSuperview];
    objc_storeStrong(&self->_seasonImageView, a3);
    if (self->_seasonImageView)
    {
      v6 = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [v6 addSubview:self->_seasonImageView];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setTopSeparatorView:(id)a3
{
  v5 = a3;
  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView != v5)
  {
    v8 = v5;
    [(VUISeparatorView *)topSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_topSeparatorView, a3);
    if (self->_topSeparatorView)
    {
      v7 = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [v7 addSubview:self->_topSeparatorView];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setBottomSeparatorView:(id)a3
{
  v5 = a3;
  bottomSeparatorView = self->_bottomSeparatorView;
  if (bottomSeparatorView != v5)
  {
    v8 = v5;
    [(VUISeparatorView *)bottomSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_bottomSeparatorView, a3);
    if (self->_bottomSeparatorView)
    {
      v7 = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [v7 addSubview:self->_bottomSeparatorView];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v6 = v5;
  v8 = v7;
  v9 = [MEMORY[0x1E69DC668] sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  v11 = [MEMORY[0x1E69DF678] contentSizeCategoryIsAccessibility:{objc_msgSend(MEMORY[0x1E69DF6D0], "vuiContentSizeCategoryFor:", v10)}];
  if (v11)
  {
    v12 = 102.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = width - (v6 + v8);
  [(VUILabel *)self->_titleLabel sizeThatFits:v13, 1.79769313e308];
  v15 = v14;
  [(VUILabel *)self->_subtitleLabel sizeThatFits:v13, 1.79769313e308];
  v17 = v16;
  [(VUILabel *)self->_secondSubtitleLabel sizeThatFits:v13, 1.79769313e308];
  v19 = v18;
  v20 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:v20 forTraitCollection:18.0];
  v22 = v21;
  [(UILabel *)self->_subtitleLabel vui_heightToBaseline];
  v24 = v22 - v23;

  [(UILabel *)self->_titleLabel vui_heightToBaseline];
  v26 = v12 + v25;
  [(UILabel *)self->_subtitleLabel vui_heightToBaseline];
  v28 = v24 + v26 + v27;
  secondSubtitleLabel = self->_secondSubtitleLabel;
  if (secondSubtitleLabel)
  {
    [(UILabel *)secondSubtitleLabel vui_heightToBaseline];
    v31 = v28 + v30;
    v32 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
    [VUIUtilities scaleContentSizeValue:v32 forTraitCollection:18.0];
    v34 = v33;
    [(UILabel *)self->_secondSubtitleLabel vui_heightToBaseline];
    v28 = v31 + v34 - v35;

    v36 = [(VUILabel *)self->_secondSubtitleLabel font];
    [v36 lineHeight];
    v38 = vcvtad_u64_f64(v19 / v37);

    if (v38 >= 2)
    {
      v39 = [(VUILabel *)self->_secondSubtitleLabel font];
      [v39 lineHeight];
      v28 = v28 + v40 * (v38 - 1);
    }
  }

  v41 = [(VUILabel *)self->_titleLabel font];
  [v41 lineHeight];
  v43 = vcvtad_u64_f64(v15 / v42);

  if (v43 >= 2)
  {
    v44 = [(VUILabel *)self->_titleLabel font];
    [v44 lineHeight];
    v28 = v28 + v45 * (v43 - 1);
  }

  v46 = [(VUILabel *)self->_subtitleLabel font];
  [v46 lineHeight];
  v48 = vcvtad_u64_f64(v17 / v47);

  if (v48 >= 2)
  {
    v49 = [(VUILabel *)self->_subtitleLabel font];
    [v49 lineHeight];
    v28 = v28 + v50 * (v48 - 1);
  }

  v51 = v28 + 20.0;
  if (!v11)
  {
    v51 = v28;
  }

  v52 = fmax(v51, 118.0);

  v53 = width;
  v54 = v52;
  result.height = v54;
  result.width = v53;
  return result;
}

- (void)layoutSubviews
{
  [MEMORY[0x1E69DD2E8] vui_padding];
  v4 = v3;
  v6 = v5;
  topSeparatorView = self->_topSeparatorView;
  [(VUISeasonPickerCollectionViewCell *)self bounds];
  [(VUIBaseView *)topSeparatorView sizeThatFits:v8, 1.79769313e308];
  v109 = v9;
  v110 = v10;
  bottomSeparatorView = self->_bottomSeparatorView;
  [(VUISeasonPickerCollectionViewCell *)self bounds];
  [(VUIBaseView *)bottomSeparatorView sizeThatFits:v12, 1.79769313e308];
  v111 = v13;
  v112 = v14;
  v15 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [v15 bounds];
  MaxY = CGRectGetMaxY(v120);

  titleLabel = self->_titleLabel;
  v18 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [v18 bounds];
  v19 = v4 + v6;
  [(VUILabel *)titleLabel sizeThatFits:v20 - v19, 1.79769313e308];
  v113 = v21;
  v23 = v22;

  subtitleLabel = self->_subtitleLabel;
  v25 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [v25 bounds];
  [(VUILabel *)subtitleLabel sizeThatFits:v26 - v19, 1.79769313e308];
  v115 = v27;
  v118 = v28;

  secondSubtitleLabel = self->_secondSubtitleLabel;
  v30 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [v30 bounds];
  [(VUILabel *)secondSubtitleLabel sizeThatFits:v31 - v19, 1.79769313e308];
  v33 = v32;
  v117 = v34;

  [(UILabel *)self->_titleLabel vui_heightToBaseline];
  v36 = v35;
  [(UILabel *)self->_subtitleLabel vui_heightToBaseline];
  v38 = v37;
  v39 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:v39 forTraitCollection:18.0];
  v41 = v40 - v38;

  v42 = v36 + v41;
  v43 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
  LODWORD(v39) = [v43 isAXEnabled];

  v114 = v23;
  if (v39)
  {
    v44 = v33;
    v45 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
    [VUIUtilities scaleContentSizeValue:v45 forTraitCollection:18.0];
    v47 = v46;
    [(UILabel *)self->_secondSubtitleLabel vui_heightToBaseline];
    v49 = v38 + v42 + v47 - v48;

    v50 = [(VUILabel *)self->_titleLabel font];
    [v50 lineHeight];
    v52 = vcvtad_u64_f64(v23 / v51);

    if (v52 >= 2)
    {
      v53 = [(VUILabel *)self->_titleLabel font];
      [v53 lineHeight];
      v54 = (v52 - 1);
      v42 = v42 + v55 * v54;

      v56 = [(VUILabel *)self->_titleLabel font];
      [v56 lineHeight];
      v49 = v49 + v57 * v54;
    }

    v58 = [(VUILabel *)self->_subtitleLabel font];
    [v58 lineHeight];
    v60 = vcvtad_u64_f64(v118 / v59);

    v61 = v44;
    if (v60 >= 2)
    {
      v62 = [(VUILabel *)self->_subtitleLabel font];
      [v62 lineHeight];
      v49 = v49 + v63 * (v60 - 1);
    }

    v121.size.width = 68.0;
    v121.size.height = 102.0;
    v116 = 10.0;
    v121.origin.y = 10.0;
    v121.origin.x = v4;
    v64 = CGRectGetMaxY(v121);
    v107 = v42 + v64;
    v108 = v4;
    v65 = v49 + v64;
    v66 = v4;
    v106 = v4;
  }

  else
  {
    v67 = [(VUISeasonPickerCollectionViewCell *)self contentView];
    [v67 bounds];
    MidY = CGRectGetMidY(v122);

    v69 = v36 + 0.0 + v38 + v41;
    v70 = [(VUILabel *)self->_titleLabel font];
    [v70 lineHeight];
    v72 = vcvtad_u64_f64(v23 / v71);

    if (v72 >= 2)
    {
      v73 = [(VUILabel *)self->_titleLabel font];
      [v73 lineHeight];
      v75 = v74;
      v76 = (v72 - 1);
      v77 = [(VUILabel *)self->_titleLabel font];
      [v77 descender];
      v69 = v69 + v78 + v75 * v76;

      v79 = [(VUILabel *)self->_titleLabel font];
      [v79 lineHeight];
      v81 = v80;
      v82 = [(VUILabel *)self->_titleLabel font];
      [v82 descender];
      v42 = v42 + v83 + v81 * v76;
    }

    v84 = MEMORY[0x1E695F058];
    v116 = MidY + -51.0;
    v85 = [(VUILabel *)self->_titleLabel font];
    [v85 lineHeight];
    v87 = vcvtad_u64_f64(v118 / v86);

    if (v87 >= 2)
    {
      v88 = [(VUILabel *)self->_subtitleLabel font];
      [v88 lineHeight];
      v90 = v89;
      v91 = (v87 - 1);
      v92 = [(VUILabel *)self->_subtitleLabel font];
      [v92 descender];
      v69 = v69 + v93 + v90 * v91;
    }

    v65 = v84[1];
    v108 = *v84;
    v61 = v84[2];
    v117 = v84[3];
    v94 = [(VUISeasonPickerCollectionViewCell *)self contentView];
    [v94 bounds];
    v64 = CGRectGetMidY(v123) + v69 * -0.5;

    v107 = v42 + v64;
    v124.origin.x = v4;
    v124.origin.y = v116;
    v124.size.width = 68.0;
    v124.size.height = 102.0;
    v106 = CGRectGetMaxX(v124) + 16.0;
    v125.origin.x = v4;
    v125.origin.y = v116;
    v125.size.width = 68.0;
    v125.size.height = 102.0;
    v66 = CGRectGetMaxX(v125) + 16.0;
  }

  v95 = MaxY - v112;
  if ([(VUISeasonPickerCollectionViewCell *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    [(VUISeasonPickerCollectionViewCell *)self bounds];
    v96 = self->_topSeparatorView;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUISeparatorView *)v96 setFrame:?];
    v97 = self->_bottomSeparatorView;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUISeparatorView *)v97 setFrame:?];
    seasonImageView = self->_seasonImageView;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUIImageView *)seasonImageView setFrame:?];
    v99 = self->_titleLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILabel *)v99 setFrame:?];
    v100 = self->_subtitleLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILabel *)v100 setFrame:?];
    v101 = self->_secondSubtitleLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v65 = v104;
    v61 = v105;
  }

  else
  {
    [(VUISeparatorView *)self->_topSeparatorView setFrame:v4, 0.0, v109, v110];
    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:v4, v95, v111, v112];
    [(VUIImageView *)self->_seasonImageView setFrame:v4, v116, 68.0, 102.0];
    [(VUILabel *)self->_titleLabel setFrame:v106, v64, v113, v114];
    [(VUILabel *)self->_subtitleLabel setFrame:v66, v107, v115, v118];
    v101 = self->_secondSubtitleLabel;
    v103 = v117;
    v102 = v108;
  }

  [(VUILabel *)v101 setFrame:v102, v65, v61, v103];
}

@end