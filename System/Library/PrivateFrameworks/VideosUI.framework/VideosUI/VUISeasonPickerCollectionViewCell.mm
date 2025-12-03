@interface VUISeasonPickerCollectionViewCell
+ (void)configureSeasonPickerCell:(id)cell withMedia:(id)media traitCollection:(id)collection;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUISeasonPickerCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBottomSeparatorView:(id)view;
- (void)setSeasonImageView:(id)view;
- (void)setSecondSubtitleLabel:(id)label;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
- (void)setTopSeparatorView:(id)view;
@end

@implementation VUISeasonPickerCollectionViewCell

+ (void)configureSeasonPickerCell:(id)cell withMedia:(id)media traitCollection:(id)collection
{
  cellCopy = cell;
  mediaCopy = media;
  collectionCopy = collection;
  v9 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:mediaCopy imageType:0];
  seasonImageView = [cellCopy seasonImageView];
  if (seasonImageView)
  {
    seasonImageView2 = [cellCopy seasonImageView];
  }

  else
  {
    seasonImageView2 = objc_alloc_init(MEMORY[0x1E69DF740]);
  }

  v12 = seasonImageView2;

  [v12 setUserInteractionEnabled:0];
  v13 = +[VUILibraryViewFactory tvPlaceholderImage];
  [v12 setPlaceholderImage:v13];

  v14 = MEMORY[0x1E69DF728];
  v15 = 0x1E69DC000uLL;
  vui_imageBorderColor = [MEMORY[0x1E69DC888] vui_imageBorderColor];
  v17 = [v14 decoratorWithOutlineColor:vui_imageBorderColor outlineWidths:{1.0, 1.0, 1.0, 1.0}];

  [v17 setScaleToSize:{68.0, 102.0}];
  [VUIUtilities imageCornerRadiusWithStyle:0];
  v19 = v18;
  [MEMORY[0x1E69DF6D0] radiiFromRadius:?];
  v54 = v17;
  [v17 setCornerRadii:?];
  v20 = NSSelectorFromString(&cfstr_Artworkurl.isa);
  if (objc_opt_respondsToSelector())
  {
    v21 = ([mediaCopy methodForSelector:v20])(mediaCopy, v20);
    if ([v21 length])
    {
      v22 = [objc_alloc(MEMORY[0x1E69DF770]) initWithSrc:v21 size:{68.0, 102.0}];
      v23 = [VUIUtilities placeholderImageResourceName:0];
      [v22 setPlaceholderSrc:v23];

      [MEMORY[0x1E69DF6D0] radiiFromRadius:v19];
      [v22 setBorderRadii:?];
      [v22 setExtension:@"jpeg"];
      vui_imageBorderColor2 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
      [v22 setBackgroundColor:vui_imageBorderColor2];

      v25 = MEMORY[0x1E69DF720];
      seasonImageView3 = [cellCopy seasonImageView];
      v27 = [v25 makeImageViewWithDescriptor:v22 existingView:seasonImageView3];

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
    mediaLibrary = [mediaCopy mediaLibrary];
    v21 = [v28 initWithObject:v9 imageLoader:mediaLibrary groupType:0];

    [v21 setDecorator:v54];
    [v12 setImageProxy:v21];
  }

LABEL_10:
  [VUIUtilities imageCornerRadiusWithStyle:2];
  [v12 setCornerRadius:?];
  [v12 setBorderWidth:1.0];
  vui_lockupBorderColorOpal = [*(v15 + 2184) vui_lockupBorderColorOpal];
  [v12 setBorderColor:vui_lockupBorderColorOpal];

  [cellCopy setSeasonImageView:v12];
  v31 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v31 setTextStyle:13];
  [(VUITextLayout *)v31 setFontWeight:0];
  vui_primaryTextColor = [*(v15 + 2184) vui_primaryTextColor];
  [(VUITextLayout *)v31 setColor:vui_primaryTextColor];

  [(VUITextLayout *)v31 setNumberOfLines:1];
  title = [mediaCopy title];
  titleLabel = [cellCopy titleLabel];
  v35 = [VUILabel labelWithString:title textLayout:v31 existingLabel:titleLabel];
  [cellCopy setTitleLabel:v35];

  LODWORD(v35) = [collectionCopy isAXEnabled];
  v36 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v36 setTextStyle:21];
  [(VUITextLayout *)v36 setFontWeight:0];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(VUITextLayout *)v36 setColor:systemGrayColor];

  if (v35)
  {
    v53 = v9;
    [(VUITextLayout *)v36 setNumberOfLines:0];
    genreTitle = [mediaCopy genreTitle];
    v39 = genreTitle;
    if (genreTitle)
    {
      v40 = genreTitle;
    }

    else
    {
      v40 = &stru_1F5DB25C0;
    }

    subtitleLabel = [cellCopy subtitleLabel];
    v42 = [VUILabel labelWithString:v40 textLayout:v36 existingLabel:subtitleLabel];
    [cellCopy setSubtitleLabel:v42];

    v43 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v43 setTextStyle:21];
    [(VUITextLayout *)v43 setFontWeight:0];
    systemGrayColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
    [(VUITextLayout *)v43 setColor:systemGrayColor2];

    [(VUITextLayout *)v43 setNumberOfLines:0];
    releaseYear = [mediaCopy releaseYear];
    stringValue = [releaseYear stringValue];
    releaseYear2 = stringValue;
    if (stringValue)
    {
      v48 = stringValue;
    }

    else
    {
      v48 = &stru_1F5DB25C0;
    }

    secondSubtitleLabel = [cellCopy secondSubtitleLabel];
    v50 = [VUILabel labelWithString:v48 textLayout:v43 existingLabel:secondSubtitleLabel];
    [cellCopy setSecondSubtitleLabel:v50];
LABEL_27:

    v9 = v53;
    goto LABEL_28;
  }

  [(VUITextLayout *)v36 setNumberOfLines:1];
  releaseYear = [mediaCopy genreTitle];
  releaseYear2 = [mediaCopy releaseYear];
  v51 = [releaseYear length];
  if (v51 && releaseYear2)
  {
    stringValue2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", releaseYear, @"·", releaseYear2];
LABEL_25:
    v43 = stringValue2;
    if (!stringValue2)
    {
      goto LABEL_28;
    }

    v53 = v9;
    secondSubtitleLabel = [cellCopy subtitleLabel];
    v50 = [VUILabel labelWithString:v43 textLayout:v36 existingLabel:secondSubtitleLabel];
    [cellCopy setSubtitleLabel:v50];
    goto LABEL_27;
  }

  if (v51)
  {
    stringValue2 = releaseYear;
    goto LABEL_25;
  }

  if (releaseYear2)
  {
    stringValue2 = [releaseYear2 stringValue];
    goto LABEL_25;
  }

  v43 = 0;
LABEL_28:
}

- (VUISeasonPickerCollectionViewCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = VUISeasonPickerCollectionViewCell;
  v3 = [(VUISeasonPickerCollectionViewCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIListCollectionViewCell *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];

    vui_secondaryFillColor = [MEMORY[0x1E69DC888] vui_secondaryFillColor];
    [(VUIListCollectionViewCell *)v3 setHighlightedBackgroundColor:vui_secondaryFillColor];
  }

  return v3;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  titleLabel = self->_titleLabel;
  if (titleLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)titleLabel removeFromSuperview];
    objc_storeStrong(&self->_titleLabel, label);
    if (self->_titleLabel)
    {
      contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_titleLabel];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)subtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_subtitleLabel, label);
    if (self->_subtitleLabel)
    {
      contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_subtitleLabel];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setSecondSubtitleLabel:(id)label
{
  labelCopy = label;
  secondSubtitleLabel = self->_secondSubtitleLabel;
  if (secondSubtitleLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)secondSubtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_secondSubtitleLabel, label);
    if (self->_secondSubtitleLabel)
    {
      contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_secondSubtitleLabel];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setSeasonImageView:(id)view
{
  viewCopy = view;
  if (self->_seasonImageView != viewCopy)
  {
    v7 = viewCopy;
    [(VUIImageView *)viewCopy removeFromSuperview];
    objc_storeStrong(&self->_seasonImageView, view);
    if (self->_seasonImageView)
    {
      contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_seasonImageView];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)setTopSeparatorView:(id)view
{
  viewCopy = view;
  topSeparatorView = self->_topSeparatorView;
  if (topSeparatorView != viewCopy)
  {
    v8 = viewCopy;
    [(VUISeparatorView *)topSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_topSeparatorView, view);
    if (self->_topSeparatorView)
    {
      contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_topSeparatorView];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)setBottomSeparatorView:(id)view
{
  viewCopy = view;
  bottomSeparatorView = self->_bottomSeparatorView;
  if (bottomSeparatorView != viewCopy)
  {
    v8 = viewCopy;
    [(VUISeparatorView *)bottomSeparatorView removeFromSuperview];
    objc_storeStrong(&self->_bottomSeparatorView, view);
    if (self->_bottomSeparatorView)
    {
      contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
      [contentView addSubview:self->_bottomSeparatorView];
    }

    [(VUISeasonPickerCollectionViewCell *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v6 = v5;
  v8 = v7;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  v11 = [MEMORY[0x1E69DF678] contentSizeCategoryIsAccessibility:{objc_msgSend(MEMORY[0x1E69DF6D0], "vuiContentSizeCategoryFor:", preferredContentSizeCategory)}];
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
  traitCollection = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:18.0];
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
    traitCollection2 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
    [VUIUtilities scaleContentSizeValue:traitCollection2 forTraitCollection:18.0];
    v34 = v33;
    [(UILabel *)self->_secondSubtitleLabel vui_heightToBaseline];
    v28 = v31 + v34 - v35;

    font = [(VUILabel *)self->_secondSubtitleLabel font];
    [font lineHeight];
    v38 = vcvtad_u64_f64(v19 / v37);

    if (v38 >= 2)
    {
      font2 = [(VUILabel *)self->_secondSubtitleLabel font];
      [font2 lineHeight];
      v28 = v28 + v40 * (v38 - 1);
    }
  }

  font3 = [(VUILabel *)self->_titleLabel font];
  [font3 lineHeight];
  v43 = vcvtad_u64_f64(v15 / v42);

  if (v43 >= 2)
  {
    font4 = [(VUILabel *)self->_titleLabel font];
    [font4 lineHeight];
    v28 = v28 + v45 * (v43 - 1);
  }

  font5 = [(VUILabel *)self->_subtitleLabel font];
  [font5 lineHeight];
  v48 = vcvtad_u64_f64(v17 / v47);

  if (v48 >= 2)
  {
    font6 = [(VUILabel *)self->_subtitleLabel font];
    [font6 lineHeight];
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
  contentView = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [contentView bounds];
  MaxY = CGRectGetMaxY(v120);

  titleLabel = self->_titleLabel;
  contentView2 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [contentView2 bounds];
  v19 = v4 + v6;
  [(VUILabel *)titleLabel sizeThatFits:v20 - v19, 1.79769313e308];
  v113 = v21;
  v23 = v22;

  subtitleLabel = self->_subtitleLabel;
  contentView3 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [contentView3 bounds];
  [(VUILabel *)subtitleLabel sizeThatFits:v26 - v19, 1.79769313e308];
  v115 = v27;
  v118 = v28;

  secondSubtitleLabel = self->_secondSubtitleLabel;
  contentView4 = [(VUISeasonPickerCollectionViewCell *)self contentView];
  [contentView4 bounds];
  [(VUILabel *)secondSubtitleLabel sizeThatFits:v31 - v19, 1.79769313e308];
  v33 = v32;
  v117 = v34;

  [(UILabel *)self->_titleLabel vui_heightToBaseline];
  v36 = v35;
  [(UILabel *)self->_subtitleLabel vui_heightToBaseline];
  v38 = v37;
  traitCollection = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:18.0];
  v41 = v40 - v38;

  v42 = v36 + v41;
  traitCollection2 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
  LODWORD(traitCollection) = [traitCollection2 isAXEnabled];

  v114 = v23;
  if (traitCollection)
  {
    v44 = v33;
    traitCollection3 = [(VUISeasonPickerCollectionViewCell *)self traitCollection];
    [VUIUtilities scaleContentSizeValue:traitCollection3 forTraitCollection:18.0];
    v47 = v46;
    [(UILabel *)self->_secondSubtitleLabel vui_heightToBaseline];
    v49 = v38 + v42 + v47 - v48;

    font = [(VUILabel *)self->_titleLabel font];
    [font lineHeight];
    v52 = vcvtad_u64_f64(v23 / v51);

    if (v52 >= 2)
    {
      font2 = [(VUILabel *)self->_titleLabel font];
      [font2 lineHeight];
      v54 = (v52 - 1);
      v42 = v42 + v55 * v54;

      font3 = [(VUILabel *)self->_titleLabel font];
      [font3 lineHeight];
      v49 = v49 + v57 * v54;
    }

    font4 = [(VUILabel *)self->_subtitleLabel font];
    [font4 lineHeight];
    v60 = vcvtad_u64_f64(v118 / v59);

    v61 = v44;
    if (v60 >= 2)
    {
      font5 = [(VUILabel *)self->_subtitleLabel font];
      [font5 lineHeight];
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
    contentView5 = [(VUISeasonPickerCollectionViewCell *)self contentView];
    [contentView5 bounds];
    MidY = CGRectGetMidY(v122);

    v69 = v36 + 0.0 + v38 + v41;
    font6 = [(VUILabel *)self->_titleLabel font];
    [font6 lineHeight];
    v72 = vcvtad_u64_f64(v23 / v71);

    if (v72 >= 2)
    {
      font7 = [(VUILabel *)self->_titleLabel font];
      [font7 lineHeight];
      v75 = v74;
      v76 = (v72 - 1);
      font8 = [(VUILabel *)self->_titleLabel font];
      [font8 descender];
      v69 = v69 + v78 + v75 * v76;

      font9 = [(VUILabel *)self->_titleLabel font];
      [font9 lineHeight];
      v81 = v80;
      font10 = [(VUILabel *)self->_titleLabel font];
      [font10 descender];
      v42 = v42 + v83 + v81 * v76;
    }

    v84 = MEMORY[0x1E695F058];
    v116 = MidY + -51.0;
    font11 = [(VUILabel *)self->_titleLabel font];
    [font11 lineHeight];
    v87 = vcvtad_u64_f64(v118 / v86);

    if (v87 >= 2)
    {
      font12 = [(VUILabel *)self->_subtitleLabel font];
      [font12 lineHeight];
      v90 = v89;
      v91 = (v87 - 1);
      font13 = [(VUILabel *)self->_subtitleLabel font];
      [font13 descender];
      v69 = v69 + v93 + v90 * v91;
    }

    v65 = v84[1];
    v108 = *v84;
    v61 = v84[2];
    v117 = v84[3];
    contentView6 = [(VUISeasonPickerCollectionViewCell *)self contentView];
    [contentView6 bounds];
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