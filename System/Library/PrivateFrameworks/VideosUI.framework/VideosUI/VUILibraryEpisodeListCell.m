@interface VUILibraryEpisodeListCell
+ (id)_metadataLabelWithString:(id)a3 existingLabel:(id)a4;
+ (void)configureVUILibraryEpisodeListCell:(id)a3 withMedia:(id)a4 andAssetController:(id)a5;
- (BOOL)_contentSizeCategoryIsAccessibility;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUILibraryEpisodeListCell)initWithFrame:(CGRect)a3;
- (double)_metadataHeightToBaselineNonAXContentSizeCategory;
- (double)_metadataScaledTopMarginForNonAXContentSizeCategory;
- (void)_addDownloadButtonIfRequired:(id)a3;
- (void)_configureDotSeparator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDownloadButton:(id)a3;
- (void)setDuration:(id)a3;
- (void)setImageFrameView:(id)a3;
- (void)setReleaseDate:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation VUILibraryEpisodeListCell

+ (void)configureVUILibraryEpisodeListCell:(id)a3 withMedia:(id)a4 andAssetController:(id)a5
{
  v26 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v26 imageFrameView];
  if (v9)
  {
    v10 = [v26 imageFrameView];
  }

  else
  {
    v11 = [VUILibraryEpisodeFrameView alloc];
    v10 = [(VUILibraryEpisodeFrameView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v12 = v10;

  [VUIUtilities imageSizeWithAspectRatio:1.77777778 scaleToSize:0.0, 48.0];
  [VUILibraryEpisodeFrameView configureEpisodeFrameView:v12 withMedia:v7 layout:0 imageSize:?];
  [v26 setImageFrameView:v12];
  objc_storeStrong(v26 + 96, a4);
  objc_storeStrong(v26 + 95, a5);
  [v26 _addDownloadButtonIfRequired:v7];
  v13 = [v7 episodeNumber];
  v14 = [v13 vui_languageAwareDescription];

  v15 = [v7 title];
  v16 = [v15 vui_stringWithFirstStrongDirectionalIsolates];

  v17 = MEMORY[0x1E696AEC0];
  v18 = +[VUILocalizationManager sharedInstance];
  v19 = [v18 localizedStringForKey:@"EPISODE_NUMBER_INDICATOR_FOLLOWED_BY_TITLE"];
  v20 = [v17 stringWithValidatedFormat:v19 validFormatSpecifiers:@"%@ %@" error:0, v14, v16];
  [v26 setTitle:v20];

  v21 = [v7 releaseDate];
  v22 = [MEMORY[0x1E696AB78] localizedStringFromDate:v21 dateStyle:2 timeStyle:0];
  [v26 setReleaseDate:v22];

  v23 = [v7 duration];
  if (v23)
  {
    v24 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
    v25 = [v24 transformedValue:v23];
  }

  else
  {
    v25 = &stru_1F5DB25C0;
  }

  [v26 setDuration:v25];
  [v26 setNeedsLayout];
}

- (VUILibraryEpisodeListCell)initWithFrame:(CGRect)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VUILibraryEpisodeListCell;
  v3 = [(VUILibraryEpisodeListCell *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [VUISeparatorView alloc];
    v5 = [(VUISeparatorView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    separatorView = v3->_separatorView;
    v3->_separatorView = v5;

    v7 = [(VUILibraryEpisodeListCell *)v3 contentView];
    [v7 addSubview:v3->_separatorView];

    objc_initWeak(&location, v3);
    v15[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__VUILibraryEpisodeListCell_initWithFrame___block_invoke;
    v11[3] = &unk_1E872E760;
    objc_copyWeak(&v12, &location);
    v9 = [(VUILibraryEpisodeListCell *)v3 registerForTraitChanges:v8 withHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__VUILibraryEpisodeListCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained dotSeparatorLabel];
  [v1 setHidden:{objc_msgSend(WeakRetained, "_contentSizeCategoryIsAccessibility")}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = VUILibraryEpisodeListCell;
  [(VUIListCollectionViewCell *)&v3 prepareForReuse];
  [(VUILibraryEpisodeListCell *)self setImageFrameView:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = MEMORY[0x1E69DF6D0];
  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 vuiContentSizeCategoryFor:v7];

  if (![MEMORY[0x1E69DF678] contentSizeCategoryIsAccessibility:v8])
  {
    [VUIUtilities imageSizeWithAspectRatio:1.77777778 scaleToSize:0.0, 48.0];
    v12 = width - (v11 + 16.0);
    downloadButton = self->_downloadButton;
    if (downloadButton)
    {
      [(VUIDownloadButton *)downloadButton sizeToFit];
      [(VUIDownloadButton *)self->_downloadButton frame];
      v12 = v12 - (CGRectGetWidth(v25) + 16.0);
    }

    [(VUILabel *)self->_releaseDateLabel sizeThatFits:v12, 1.79769313e308];
    v15 = v14;
    [(VUILabel *)self->_durationLabel sizeThatFits:v12, 1.79769313e308];
    v17 = v16;
    [(VUILabel *)self->_titleLabel sizeThatFits:v12, 1.79769313e308];
    [(VUILabel *)self->_dotSeparatorLabel sizeThatFits:v12, 1.79769313e308];
    v19 = v18;
    [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:32.0];
    if (self->_dotSeparatorLabel && v17 + v15 + 4.0 + v19 + 4.0 > v12)
    {
      [(VUILabel *)self->_releaseDateLabel topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    }

    else
    {
      releaseDateLabel = self->_releaseDateLabel;
      if (releaseDateLabel)
      {
        [(VUILabel *)releaseDateLabel topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
        goto LABEL_14;
      }
    }

    [(VUILabel *)self->_durationLabel topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    goto LABEL_14;
  }

  [(VUILabel *)self->_titleLabel sizeThatFits:width, 1.79769313e308];
  [(VUILabel *)self->_releaseDateLabel sizeThatFits:width, 1.79769313e308];
  [(VUILabel *)self->_durationLabel sizeThatFits:width, 1.79769313e308];
  [VUIUtilities imageSizeWithAspectRatio:1.77777778 scaleToSize:0.0, 48.0];
  v9 = [(VUILibraryEpisodeListCell *)self assetController];
  if (v9)
  {
    v10 = [[VUIDownloadButton alloc] initWithAssetController:v9 type:9];
  }

  else
  {
    v10 = 0;
  }

  [(VUIDownloadButton *)v10 setUsesDefaultConfiguration:1];
  [(VUIDownloadButton *)v10 sizeToFit];
  [(VUIDownloadButton *)v10 frame];
  CGRectGetHeight(v26);
  [(VUILabel *)self->_titleLabel topMarginWithBaselineMargin:32.0];

LABEL_14:
  VUIRoundValue();
  v22 = v21;
  v23 = width;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)setImageFrameView:(id)a3
{
  v5 = a3;
  imageFrameView = self->_imageFrameView;
  if (imageFrameView != v5)
  {
    v7 = v5;
    [(VUILibraryEpisodeFrameView *)imageFrameView removeFromSuperview];
    objc_storeStrong(&self->_imageFrameView, a3);
    if (self->_imageFrameView)
    {
      [(VUILibraryEpisodeListCell *)self addSubview:?];
    }

    [(VUILibraryEpisodeListCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setDownloadButton:(id)a3
{
  v5 = a3;
  downloadButton = self->_downloadButton;
  if (downloadButton != v5)
  {
    v7 = v5;
    [(VUIDownloadButton *)downloadButton removeFromSuperview];
    objc_storeStrong(&self->_downloadButton, a3);
    if (self->_downloadButton)
    {
      [(VUILibraryEpisodeListCell *)self addSubview:?];
    }

    [(VUILibraryEpisodeListCell *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    objc_storeStrong(&self->_title, a3);
    v5 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v5 setTextStyle:20];
    v6 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(VUITextLayout *)v5 setColor:v6];

    [(VUITextLayout *)v5 setNumberOfLines:2];
    [(VUITextLayout *)v5 setAlignment:2 * ([(VUILibraryEpisodeListCell *)self effectiveUserInterfaceLayoutDirection]== 1)];
    [(VUITextLayout *)v5 setLineBreakMode:4];
    v7 = [VUILabel labelWithString:self->_title textLayout:v5 existingLabel:self->_titleLabel];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v7;

    v9 = [(VUILibraryEpisodeListCell *)self contentView];
    [v9 addSubview:self->_titleLabel];
  }
}

- (void)setReleaseDate:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_releaseDate isEqualToString:?])
  {
    objc_storeStrong(&self->_releaseDate, a3);
    if (self->_releaseDate)
    {
      v5 = [objc_opt_class() _metadataLabelWithString:self->_releaseDate existingLabel:self->_releaseDateLabel];
      releaseDateLabel = self->_releaseDateLabel;
      self->_releaseDateLabel = v5;

      v7 = [(VUILibraryEpisodeListCell *)self contentView];
      [v7 addSubview:self->_releaseDateLabel];
    }

    else
    {
      [(VUILabel *)self->_releaseDateLabel removeFromSuperview];
      v7 = self->_releaseDateLabel;
      self->_releaseDateLabel = 0;
    }

    [(VUILibraryEpisodeListCell *)self _configureDotSeparator];
  }
}

- (void)setDuration:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_duration isEqualToString:?])
  {
    objc_storeStrong(&self->_duration, a3);
    if (self->_duration)
    {
      v5 = [objc_opt_class() _metadataLabelWithString:self->_duration existingLabel:self->_durationLabel];
      durationLabel = self->_durationLabel;
      self->_durationLabel = v5;

      v7 = [(VUILibraryEpisodeListCell *)self contentView];
      [v7 addSubview:self->_durationLabel];
    }

    else
    {
      [(VUILabel *)self->_durationLabel removeFromSuperview];
      v7 = self->_durationLabel;
      self->_durationLabel = 0;
    }

    [(VUILibraryEpisodeListCell *)self _configureDotSeparator];
  }
}

- (void)layoutSubviews
{
  v139.receiver = self;
  v139.super_class = VUILibraryEpisodeListCell;
  [(VUILibraryEpisodeListCell *)&v139 layoutSubviews];
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v138 = *(MEMORY[0x1E695F058] + 16);
  if ([(VUILibraryEpisodeListCell *)self _contentSizeCategoryIsAccessibility])
  {
    titleLabel = self->_titleLabel;
    v7 = [(VUILibraryEpisodeListCell *)self contentView];
    [v7 bounds];
    [(VUILabel *)titleLabel sizeThatFits:CGRectGetWidth(v140), 1.79769313e308];
    v9 = v8;
    v11 = v10;

    v128 = 0.0;
    [VUIUtilities imageSizeWithAspectRatio:1.77777778 scaleToSize:?];
    v13 = v12;
    v15 = v14;
    separatorView = self->_separatorView;
    v17 = [(VUILibraryEpisodeListCell *)self contentView];
    [v17 bounds];
    [(VUIBaseView *)separatorView sizeThatFits:CGRectGetWidth(v141), 1.79769313e308];
    v119 = v19;
    v120 = v18;

    v142.origin.y = 32.0;
    v142.origin.x = 0.0;
    v126 = v13;
    v127 = v15;
    v142.size.width = v13;
    v142.size.height = v15;
    MaxY = CGRectGetMaxY(v142);
    v143.origin.x = 0.0;
    v143.origin.y = MaxY;
    v137 = v9;
    v143.size.width = v9;
    rect = v11;
    v143.size.height = v11;
    v21 = CGRectGetMaxY(v143);
    releaseDateLabel = self->_releaseDateLabel;
    v130 = MaxY;
    v23 = v5;
    if (releaseDateLabel)
    {
      v24 = [(VUILibraryEpisodeListCell *)self contentView];
      [v24 bounds];
      [(VUILabel *)releaseDateLabel sizeThatFits:CGRectGetWidth(v144), 1.79769313e308];
      v26 = v25;
      v28 = v27;

      v145.origin.x = 0.0;
      v29 = v21;
      v145.origin.y = v21;
      v133 = v26;
      v134 = v28;
      v145.size.width = v26;
      v145.size.height = v28;
      v21 = CGRectGetMaxY(v145);
    }

    else
    {
      v133 = v138;
      v134 = v5;
      v29 = v3;
      v128 = v4;
    }

    v84 = v3;
    durationLabel = self->_durationLabel;
    if (durationLabel)
    {
      v86 = [(VUILibraryEpisodeListCell *)self contentView];
      [v86 bounds];
      [(VUILabel *)durationLabel sizeThatFits:CGRectGetWidth(v158), 1.79769313e308];
      v88 = v87;
      v90 = v89;

      v159.origin.x = 0.0;
      v118 = 0.0;
      v159.origin.y = v21;
      v159.size.width = v88;
      v159.size.height = v90;
      v122 = CGRectGetMaxY(v159);
      v91 = v84;
    }

    else
    {
      v122 = v21;
      v90 = v23;
      v88 = v138;
      v91 = v84;
      v21 = v84;
      v118 = v4;
    }

    [(VUIDownloadButton *)self->_downloadButton sizeToFit];
    [(VUIDownloadButton *)self->_downloadButton frame];
    v123 = v93;
    v124 = v92;
    v121 = 0.0;
    v125 = 32.0;
    v116 = v138;
    v117 = v23;
    v115 = v91;
    v136 = v90;
    v66 = 0.0;
    v138 = v88;
    v3 = v21;
    v73 = v128;
    v72 = v29;
    v94 = rect;
    goto LABEL_33;
  }

  v129 = v4;
  [(VUIDownloadButton *)self->_downloadButton sizeToFit];
  [(VUIDownloadButton *)self->_downloadButton frame];
  v31 = v30;
  v33 = v32;
  v34 = [(VUILibraryEpisodeListCell *)self contentView];
  [v34 bounds];
  MaxX = CGRectGetMaxX(v146);
  [(VUIDownloadButton *)self->_downloadButton frame];
  v136 = v5;
  v36 = MaxX - CGRectGetWidth(v147);
  v37 = [(VUILibraryEpisodeListCell *)self contentView];
  [v37 bounds];
  MidY = CGRectGetMidY(v148);
  [(VUIDownloadButton *)self->_downloadButton frame];
  v39 = MidY - CGRectGetHeight(v149) * 0.5;

  [VUIUtilities imageSizeWithAspectRatio:1.77777778 scaleToSize:?];
  v41 = v40;
  v43 = v42;
  v44 = [(VUILibraryEpisodeListCell *)self contentView];
  [v44 bounds];
  v45 = CGRectGetMidY(v150) - v43 * 0.5;

  v151.origin.x = 0.0;
  v125 = v45;
  v151.origin.y = v45;
  v151.size.width = v41;
  v127 = v43;
  v151.size.height = v43;
  v135 = CGRectGetMaxX(v151);
  v46 = [(VUILibraryEpisodeListCell *)self contentView];
  [v46 bounds];
  Width = CGRectGetWidth(v152);
  v121 = v36;
  v122 = v39;
  v153.origin.x = v36;
  v153.origin.y = v39;
  v123 = v33;
  v124 = v31;
  v153.size.width = v31;
  v153.size.height = v33;
  v48 = Width - (v41 + CGRectGetWidth(v153) + 16.0);

  if (self->_downloadButton)
  {
    v48 = v48 + -16.0;
  }

  v49 = self->_separatorView;
  v50 = [(VUILibraryEpisodeListCell *)self contentView];
  [v50 bounds];
  v126 = v41;
  [(VUIBaseView *)v49 sizeThatFits:CGRectGetWidth(v154) - (v41 + 16.0), 1.79769313e308];
  v119 = v52;
  v120 = v51;

  v137 = v48;
  [(VUILabel *)self->_titleLabel sizeThatFits:v48, 1.79769313e308];
  v54 = v53;
  v55 = self->_releaseDateLabel;
  if (v55 && self->_durationLabel)
  {
    [(VUILabel *)v55 sizeThatFits:v48, 1.79769313e308];
    v57 = v56;
    [(VUILabel *)self->_durationLabel sizeThatFits:v137, 1.79769313e308];
    v58 = v3;
    v60 = v59;
    [(VUILabel *)self->_dotSeparatorLabel sizeThatFits:v137, 1.79769313e308];
    v62 = v60 + v57 + 4.0 + v61 + 4.0;
    v3 = v58;
    v63 = v62 > v137;
  }

  else
  {
    v63 = 0;
  }

  [(VUILabel *)self->_titleLabel baselineHeight];
  v64 = [(VUILabel *)self->_titleLabel font];
  [v64 capHeight];

  recta = v54;
  v65 = self->_releaseDateLabel;
  if (v65)
  {
    [(VUILabel *)v65 topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    [(VUILabel *)self->_releaseDateLabel sizeThatFits:v137, 1.79769313e308];
    [(VUILabel *)self->_releaseDateLabel _baselineOffsetFromBottom];
  }

  v66 = v135 + 16.0;
  v67 = self->_durationLabel;
  if (v67 && (self->_releaseDateLabel == 0 || v63))
  {
    [(VUILabel *)v67 topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    [(VUILabel *)self->_durationLabel sizeThatFits:v137, 1.79769313e308];
    [(VUILabel *)self->_durationLabel _baselineOffsetFromBottom];
  }

  v68 = [(VUILibraryEpisodeListCell *)self contentView];
  [v68 bounds];
  CGRectGetHeight(v155);
  VUIRoundValue();
  v70 = v69;

  v71 = self->_releaseDateLabel;
  v4 = v135 + 16.0;
  v133 = v138;
  v134 = v136;
  v72 = v3;
  v73 = v129;
  if (v71)
  {
    [(VUILabel *)v71 topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    v75 = v74;
    [(VUILabel *)self->_releaseDateLabel sizeThatFits:v137, 1.79769313e308];
    v77 = v76;
    v134 = v78;
    v156.origin.x = v66;
    v156.origin.y = v70;
    v156.size.width = v137;
    v156.size.height = recta;
    v72 = v75 + CGRectGetMaxY(v156);
    v133 = v77;
    v4 = v66 + v77 + 4.0;
    v73 = v66;
  }

  v130 = v70;
  dotSeparatorLabel = self->_dotSeparatorLabel;
  if (!dotSeparatorLabel)
  {
    v82 = v4;
    v83 = v136;
    goto LABEL_24;
  }

  [(VUILabel *)dotSeparatorLabel sizeThatFits:v137, 1.79769313e308];
  if (v63)
  {
    [(VUILabel *)self->_dotSeparatorLabel setHidden:1];
    v157.origin.x = 0.0;
    v157.origin.y = v125;
    v157.size.width = v41;
    v157.size.height = v127;
    v82 = CGRectGetMaxX(v157) + 16.0;
    v83 = v136;
LABEL_24:
    v115 = v3;
    v116 = v138;
    v4 = v129;
    goto LABEL_28;
  }

  v95 = v80;
  v83 = v81;
  [(VUILabel *)self->_dotSeparatorLabel setHidden:0];
  v160.origin.x = v73;
  v160.origin.y = v72;
  v160.size.width = v133;
  v160.size.height = v134;
  v115 = CGRectGetMidY(v160) + v83 * -0.5;
  v116 = v95;
  v82 = v4 + v95 + 4.0;
LABEL_28:
  v94 = recta;
  v117 = v83;
  v96 = self->_durationLabel;
  if (v96)
  {
    v118 = v82;
    v97 = v72;
    [(VUILabel *)v96 topMarginToLabel:self->_titleLabel withBaselineMargin:20.0];
    v99 = v98;
    v161.origin.x = v66;
    v161.origin.y = v130;
    v161.size.width = v137;
    v161.size.height = recta;
    v100 = CGRectGetMaxY(v161);
    if (v63)
    {
      v162.origin.x = v73;
      v162.origin.y = v97;
      v162.size.width = v133;
      v162.size.height = v134;
      v100 = CGRectGetMaxY(v162);
    }

    v3 = v99 + v100;
    [(VUILabel *)self->_durationLabel sizeThatFits:v137, 1.79769313e308];
    v138 = v101;
    v136 = v102;
    v72 = v97;
  }

  else
  {
    v118 = v129;
  }

LABEL_33:
  if ([(VUILibraryEpisodeListCell *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v103 = [(VUILibraryEpisodeListCell *)self contentView];
    [v103 bounds];

    v104 = self->_separatorView;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUISeparatorView *)v104 setFrame:?];
    v105 = self->_dotSeparatorLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILabel *)v105 setFrame:?];
    imageFrameView = self->_imageFrameView;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILibraryEpisodeFrameView *)imageFrameView setFrame:?];
    v107 = self->_titleLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILabel *)v107 setFrame:?];
    v108 = self->_releaseDateLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILabel *)v108 setFrame:?];
    v109 = self->_durationLabel;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    [(VUILabel *)v109 setFrame:?];
    downloadButton = self->_downloadButton;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
  }

  else
  {
    [(VUISeparatorView *)self->_separatorView setFrame:v66, 0.0, v120, v119];
    [(VUILabel *)self->_dotSeparatorLabel setFrame:v4, v115, v116, v117];
    [(VUILibraryEpisodeFrameView *)self->_imageFrameView setFrame:0.0, v125, v126, v127];
    [(VUILabel *)self->_titleLabel setFrame:v66, v130, v137, v94];
    [(VUILabel *)self->_releaseDateLabel setFrame:v73, v72, v133, v134];
    [(VUILabel *)self->_durationLabel setFrame:v118, v3, v138, v136];
    downloadButton = self->_downloadButton;
    v114 = v123;
    v113 = v124;
    v111 = v121;
    v112 = v122;
  }

  [(VUIDownloadButton *)downloadButton setFrame:v111, v112, v113, v114];
}

- (void)_addDownloadButtonIfRequired:(id)a3
{
  v8 = a3;
  v4 = [v8 assetController];

  if (v4)
  {
    v5 = [(VUILibraryEpisodeListCell *)self downloadButton];
    if (v5)
    {
      v6 = v5;
      [(VUIDownloadButton *)v5 updateWithAssetController:self->_assetController];
    }

    else
    {
      v6 = [[VUIDownloadButton alloc] initWithMediaEntity:v8 type:9];
      [(VUIDownloadButton *)v6 setUsesDefaultConfiguration:1];
      v7 = [(VUILibraryEpisodeListCell *)self contentView];
      [v7 addSubview:v6];

      [(VUILibraryEpisodeListCell *)self setDownloadButton:v6];
    }
  }

  else
  {
    [(VUILibraryEpisodeListCell *)self setDownloadButton:0];
  }
}

- (void)_configureDotSeparator
{
  if (self->_releaseDate && self->_duration && ![(VUILibraryEpisodeListCell *)self _contentSizeCategoryIsAccessibility])
  {
    v8 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v8 setTextStyle:22];
    v4 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v8 setColor:v4];

    [(VUITextLayout *)v8 setNumberOfLines:1];
    v5 = [VUILabel labelWithString:@"·" textLayout:v8 existingLabel:self->_dotSeparatorLabel];
    dotSeparatorLabel = self->_dotSeparatorLabel;
    self->_dotSeparatorLabel = v5;

    v7 = [(VUILibraryEpisodeListCell *)self contentView];
    [v7 addSubview:self->_dotSeparatorLabel];

    v3 = v8;
  }

  else
  {
    [(VUILabel *)self->_dotSeparatorLabel removeFromSuperview];
    v3 = self->_dotSeparatorLabel;
    self->_dotSeparatorLabel = 0;
  }
}

- (double)_metadataScaledTopMarginForNonAXContentSizeCategory
{
  v3 = [(VUILibraryEpisodeListCell *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:v3 forTraitCollection:20.0];
  v5 = v4;

  [(VUILibraryEpisodeListCell *)self _metadataHeightToBaselineNonAXContentSizeCategory];
  return v5 - v6;
}

- (double)_metadataHeightToBaselineNonAXContentSizeCategory
{
  releaseDateLabel = self->_releaseDateLabel;
  if (!releaseDateLabel)
  {
    releaseDateLabel = self->_durationLabel;
    if (!releaseDateLabel)
    {
      return 0.0;
    }
  }

  [(UILabel *)releaseDateLabel vui_heightToBaseline];
  return result;
}

- (BOOL)_contentSizeCategoryIsAccessibility
{
  v2 = [(VUILibraryEpisodeListCell *)self traitCollection];
  v3 = [v2 isAXEnabled];

  return v3;
}

+ (id)_metadataLabelWithString:(id)a3 existingLabel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v7 setTextStyle:22];
  v8 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v7 setColor:v8];

  [(VUITextLayout *)v7 setNumberOfLines:1];
  v9 = [VUILabel labelWithString:v6 textLayout:v7 existingLabel:v5];

  return v9;
}

@end