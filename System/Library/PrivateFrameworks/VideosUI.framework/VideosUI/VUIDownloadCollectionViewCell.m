@interface VUIDownloadCollectionViewCell
+ (id)_generateMetaDataHeaderFirstLabelForDownloadEntity:(id)a3;
+ (void)_movieConfigurationForVUIDownloadEntityCollectionViewCell:(id)a3 withDownloadEntity:(id)a4;
+ (void)_showConfigurationForVUIDownloadEntityCollectionViewCell:(id)a3 withDownloadEntity:(id)a4;
+ (void)configureVUIDownloadEntityCollectionViewCell:(id)a3 withDownloadEntity:(id)a4 width:(double)a5 forMetrics:(BOOL)a6;
- (BOOL)_hasSecondaryLabel;
- (CGSize)_layoutForAccessibility:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)_layoutForCompact:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIDownloadCollectionViewCellDelegate)delegate;
- (void)_addDownloadButtonIfRequired:(id)a3;
- (void)_addMetaDataLabelsIfRequired:(id)a3;
- (void)_configureViewElementsForAX;
- (void)_updateViewForEditState;
- (void)downloadEntity:(id)a3 numberOfItemsDidChange:(unint64_t)a4;
- (void)downloadEntity:(id)a3 numberOfItemsDownloadingDidChange:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDotSeparatorLabel:(id)a3;
- (void)setDownloadButton:(id)a3;
- (void)setEditImageView:(id)a3;
- (void)setMetaDataHeaderFirstLabel:(id)a3;
- (void)setMetaDataHeaderSecondLabel:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation VUIDownloadCollectionViewCell

+ (void)configureVUIDownloadEntityCollectionViewCell:(id)a3 withDownloadEntity:(id)a4 width:(double)a5 forMetrics:(BOOL)a6
{
  v20 = a3;
  v9 = a4;
  [v20 setDownloadEntity:v9];
  v10 = [v9 mediaEntities];
  v11 = [v10 firstObject];

  [v20 setImageAspectRatio:0.5625];
  if (!a6)
  {
    [VUILibraryLockupViewCell configureImageViewArtworkForLockupCell:v20 withMedia:v11 width:a5];
    [v9 setDelegate:v20];
  }

  v12 = [v9 title];

  if (v12)
  {
    v13 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v13 setTextStyle:14];
    [(VUITextLayout *)v13 setFontWeight:0];
    v14 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(VUITextLayout *)v13 setColor:v14];

    [(VUITextLayout *)v13 setNumberOfLines:2];
    v15 = [v9 title];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &stru_1F5DB25C0;
    }

    v18 = [v20 titleLabel];
    v19 = [VUILabel labelWithString:v17 textLayout:v13 existingLabel:v18];
  }

  else
  {
    v19 = 0;
  }

  [v20 setTitleLabel:v19];
  if ([v9 downloadType])
  {
    if ([v9 downloadType] == 1 || objc_msgSend(v9, "downloadType") == 2)
    {
      [VUIDownloadCollectionViewCell _showConfigurationForVUIDownloadEntityCollectionViewCell:v20 withDownloadEntity:v9];
    }
  }

  else
  {
    [VUIDownloadCollectionViewCell _movieConfigurationForVUIDownloadEntityCollectionViewCell:v20 withDownloadEntity:v9];
  }
}

+ (void)_movieConfigurationForVUIDownloadEntityCollectionViewCell:(id)a3 withDownloadEntity:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 _addMetaDataLabelsIfRequired:v5];
  v7 = [v5 mediaEntities];

  v8 = [v7 firstObject];

  [v6 _addDownloadButtonIfRequired:v8];
}

+ (void)_showConfigurationForVUIDownloadEntityCollectionViewCell:(id)a3 withDownloadEntity:(id)a4
{
  v5 = a3;
  v6 = [VUIDownloadCollectionViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:a4];
  [v5 setMetaDataHeaderFirstLabel:v6];
}

+ (id)_generateMetaDataHeaderFirstLabelForDownloadEntity:(id)a3
{
  v3 = a3;
  v4 = [v3 numberOfMediaItemsDownloading];
  v5 = [v4 intValue];

  v6 = MEMORY[0x1E696AEC0];
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = v7;
  if (v5 < 1)
  {
    v13 = [v7 localizedStringForKey:@"NUMBER_OF_EPISODES"];
    v14 = [v3 numberOfMediaItems];

    v11 = [v6 localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%d" error:0, objc_msgSend(v14, "intValue")];

    v12 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v12 setTextStyle:16];
    [(VUITextLayout *)v12 setFontWeight:10];
    [(VUITextLayout *)v12 setNumberOfLines:0];
    [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"DOWNLOADING_NUMBER_OF_EPISODES"];
    v10 = [v3 numberOfMediaItemsDownloading];

    v11 = [v6 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:0, objc_msgSend(v10, "intValue")];

    v12 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v12 setTextStyle:16];
    [(VUITextLayout *)v12 setFontWeight:10];
    [(VUITextLayout *)v12 setNumberOfLines:0];
    [MEMORY[0x1E69DC888] vui_keyColor];
  }
  v15 = ;
  [(VUITextLayout *)v12 setColor:v15];

  v16 = [VUILabel labelWithString:v11 textLayout:v12 existingLabel:0];

  return v16;
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = VUIDownloadCollectionViewCell;
  [(VUIDownloadCollectionViewCell *)&v4 setSelected:a3];
  if (self->_editing)
  {
    [(VUIDownloadCollectionViewCell *)self _updateViewForEditState];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = VUIDownloadCollectionViewCell;
  [(VUIDownloadCollectionViewCell *)&v5 setSelected:a3 animated:a4];
  if (self->_editing)
  {
    [(VUIDownloadCollectionViewCell *)self _updateViewForEditState];
  }
}

- (void)setMetaDataHeaderFirstLabel:(id)a3
{
  v5 = a3;
  metaDataHeaderFirstLabel = self->_metaDataHeaderFirstLabel;
  if (metaDataHeaderFirstLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)metaDataHeaderFirstLabel removeFromSuperview];
    objc_storeStrong(&self->_metaDataHeaderFirstLabel, a3);
    if (self->_metaDataHeaderFirstLabel)
    {
      v7 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v7 addSubview:self->_metaDataHeaderFirstLabel];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setMetaDataHeaderSecondLabel:(id)a3
{
  v5 = a3;
  metaDataHeaderSecondLabel = self->_metaDataHeaderSecondLabel;
  if (metaDataHeaderSecondLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)metaDataHeaderSecondLabel removeFromSuperview];
    objc_storeStrong(&self->_metaDataHeaderSecondLabel, a3);
    if (self->_metaDataHeaderSecondLabel)
    {
      v7 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v7 addSubview:self->_metaDataHeaderSecondLabel];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setDotSeparatorLabel:(id)a3
{
  v5 = a3;
  dotSeparatorLabel = self->_dotSeparatorLabel;
  if (dotSeparatorLabel != v5)
  {
    v8 = v5;
    [(VUILabel *)dotSeparatorLabel removeFromSuperview];
    objc_storeStrong(&self->_dotSeparatorLabel, a3);
    if (self->_dotSeparatorLabel)
    {
      v7 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v7 addSubview:self->_dotSeparatorLabel];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setEditImageView:(id)a3
{
  v5 = a3;
  editImageView = self->_editImageView;
  if (editImageView != v5)
  {
    v8 = v5;
    [(UIImageView *)editImageView removeFromSuperview];
    objc_storeStrong(&self->_editImageView, a3);
    if (self->_editImageView)
    {
      v7 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v7 addSubview:self->_editImageView];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setDownloadButton:(id)a3
{
  v5 = a3;
  downloadButton = self->_downloadButton;
  if (downloadButton != v5)
  {
    v8 = v5;
    if (downloadButton)
    {
      [(VUIDownloadButton *)downloadButton removeFromSuperview];
    }

    objc_storeStrong(&self->_downloadButton, a3);
    if (v8)
    {
      v7 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v7 addSubview:v8];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = VUIDownloadCollectionViewCell;
  [(VUILibraryLockupViewCell *)&v4 prepareForReuse];
  v3 = [(VUIDownloadCollectionViewCell *)self downloadEntity];
  [v3 setDelegate:0];

  [(VUIDownloadCollectionViewCell *)self setDownloadEntity:0];
  [(VUIDownloadCollectionViewCell *)self setEditImageView:0];
  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:0];
  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:0];
  [(VUIDownloadCollectionViewCell *)self setDotSeparatorLabel:0];
  [(VUILibraryLockupViewCell *)self setTitleLabel:0];
  [(VUIDownloadCollectionViewCell *)self setDownloadButton:0];
  [(VUIDownloadCollectionViewCell *)self setPreviousDownloadState:0];
  [(VUIDownloadCollectionViewCell *)self setEditing:0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIDownloadCollectionViewCell *)self _layoutWithSize:1 metricsOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUIDownloadCollectionViewCell;
  [(VUILibraryLockupViewCell *)&v4 layoutSubviews];
  [(VUIDownloadCollectionViewCell *)self bounds];
  Width = CGRectGetWidth(v5);
  [(VUIDownloadCollectionViewCell *)self bounds];
  [(VUIDownloadCollectionViewCell *)self _layoutWithSize:0 metricsOnly:Width, CGRectGetHeight(v6)];
}

- (void)downloadEntity:(id)a3 numberOfItemsDownloadingDidChange:(id)a4
{
  v5 = [VUIDownloadCollectionViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:a3, a4];
  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:v5];
  [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
}

- (void)downloadEntity:(id)a3 numberOfItemsDidChange:(unint64_t)a4
{
  v5 = [VUIDownloadCollectionViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:a3, a4];
  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:v5];
  [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
}

- (CGSize)_layoutWithSize:(CGSize)a3 metricsOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  [(VUIDownloadCollectionViewCell *)self _configureViewElementsForAX];
  v8 = [(VUIDownloadCollectionViewCell *)self traitCollection];
  v9 = [v8 isAXEnabled];

  if (v9)
  {

    [(VUIDownloadCollectionViewCell *)self _layoutForAccessibility:v4 metricsOnly:width, height];
  }

  else
  {

    [(VUIDownloadCollectionViewCell *)self _layoutForCompact:v4 metricsOnly:width, height];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_layoutForCompact:(CGSize)a3 metricsOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(VUIDownloadCollectionViewCell *)self downloadButton];

  if (v8)
  {
    [(VUIDownloadButton *)self->_downloadButton sizeToFit];
    v9 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    [v9 frame];
    v10 = CGRectGetWidth(v167);

    v11 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    [v11 frame];
    v12 = CGRectGetHeight(v168);

    v13 = v10;
  }

  else
  {
    v14 = [(VUIDownloadCollectionViewCell *)self editImageView];

    v12 = 0.0;
    if (v14)
    {
      v10 = 22.0;
    }

    else
    {
      v10 = 0.0;
    }

    v13 = 0.0;
  }

  v15 = [(VUILibraryLockupViewCell *)self titleLabel];
  [v15 sizeThatFits:{width - v10, height}];
  v163 = v16;
  v18 = v17;

  v19 = [(VUILibraryLockupViewCell *)self titleLabel];
  [v19 topMarginWithBaselineMargin:24.0];
  v21 = v20;

  [(VUILabel *)self->_metaDataHeaderFirstLabel sizeThatFits:width, height];
  v156 = v22;
  v151 = v23;
  [(VUILabel *)self->_metaDataHeaderSecondLabel sizeThatFits:width, height];
  v159 = v24;
  v143 = v25;
  [(VUILabel *)self->_dotSeparatorLabel sizeThatFits:width, height];
  v148 = v26;
  v134 = v27;
  [(VUILabel *)self->_metaDataHeaderFirstLabel topMarginWithBaselineMargin:20.0];
  v29 = v28;
  [(VUILabel *)self->_metaDataHeaderSecondLabel topMarginWithBaselineMargin:20.0];
  v31 = v30;
  v32 = [(VUILibraryLockupViewCell *)self titleLabel];

  if (v32)
  {
    v33 = [(VUILibraryLockupViewCell *)self titleLabel];
    v34 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
    [v33 topMarginToLabel:v34 withBaselineMargin:20.0];
    v153 = v35;

    v36 = [(VUILibraryLockupViewCell *)self titleLabel];
    v37 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];
    [v36 topMarginToLabel:v37 withBaselineMargin:20.0];
    v161 = v38;
  }

  else
  {
    v153 = v29;
    v161 = v31;
  }

  v39 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
  if (v39)
  {
    v40 = v39;
    v41 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

    v42 = v13 + v156 + v159 + v148 + 12.0;
    if (!v41)
    {
      v42 = v13 + v156 + v159;
    }
  }

  else
  {
    v42 = v13 + v156 + v159;
  }

  v43 = ceil(width * 0.5625);
  v141 = v42;
  v44 = v42 > width;
  v45 = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
  [v45 setHidden:v44];

  v46 = [(VUIDownloadCollectionViewCell *)self _hasSecondaryLabel];
  v47 = v43;
  if (v46)
  {
    v48 = v151 + v153;
    if (v151 + v153 < v143 + v161)
    {
      v48 = v143 + v161;
    }

    if (v141 > width)
    {
      v48 = v143 + v161 + v151 + v153;
    }

    v47 = v43 + v48;
  }

  v150 = v47;
  v49 = [(VUILibraryLockupViewCell *)self titleLabel];

  if (!a4)
  {
    v130 = v13;
    v132 = v12;
    v128 = v21;
    v129 = v18;
    v50 = *MEMORY[0x1E695F058];
    v51 = *(MEMORY[0x1E695F058] + 16);
    v164 = *(MEMORY[0x1E695F058] + 8);
    v165 = *(MEMORY[0x1E695F058] + 24);
    v169.origin.x = 0.0;
    v169.origin.y = 0.0;
    v169.size.width = width;
    v169.size.height = v43;
    MaxY = CGRectGetMaxY(v169);
    v53 = [(VUILibraryLockupViewCell *)self titleLabel];

    if (v53)
    {
      v170.origin.y = v21 + MaxY;
      v170.origin.x = 0.0;
      v140 = v21 + MaxY;
      v170.size.width = v163;
      v170.size.height = v129;
      v126 = CGRectGetMaxY(v170);
      v139 = v129;
      v138 = 0.0;
    }

    else
    {
      v126 = MaxY;
      v139 = v165;
      v163 = v51;
      v140 = v164;
      v138 = v50;
    }

    v54 = [(VUIDownloadCollectionViewCell *)self _hasSecondaryLabel];
    v55 = v165;
    v56 = v51;
    v57 = v164;
    v58 = v50;
    v59 = v165;
    v60 = v51;
    v61 = v164;
    v62 = v50;
    v63 = v165;
    v64 = v51;
    rect = v164;
    v65 = v50;
    if (v54)
    {
      v66 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

      if (v66)
      {
        v64 = v156;
        v171.origin.y = v153 + v126;
        v171.origin.x = 0.0;
        v154 = 0.0;
        rect = v171.origin.y;
        v171.size.width = v156;
        v171.size.height = v151;
        MaxX = CGRectGetMaxX(v171);
      }

      else
      {
        MaxX = 0.0;
        v151 = v165;
        v64 = v51;
        rect = v164;
        v154 = v50;
      }

      v67 = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
      if (v67 && (v68 = v67, -[VUIDownloadCollectionViewCell dotSeparatorLabel](self, "dotSeparatorLabel"), v69 = objc_claimAutoreleasedReturnValue(), v70 = [v69 isHidden], v69, v68, (v70 & 1) == 0))
      {
        v172.size.height = v151;
        v172.origin.x = v154;
        v172.origin.y = rect;
        v172.size.width = v64;
        v173.origin.y = CGRectGetMidY(v172) + v134 * -0.5;
        v136 = MaxX + 6.0;
        v173.origin.x = MaxX + 6.0;
        y = v173.origin.y;
        v173.size.width = v148;
        v173.size.height = v134;
        MaxX = CGRectGetMaxX(v173) + 6.0;
      }

      else
      {
        v134 = v165;
        v148 = v51;
        y = v164;
        v136 = v50;
      }

      v71 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

      if (v71)
      {
        if (v141 <= width)
        {
          v63 = v151;
          v65 = v154;
          v55 = v134;
          v58 = v136;
          v57 = y;
          v62 = MaxX;
          v56 = v148;
          v73 = v126;
        }

        else
        {
          v72 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

          if (v72)
          {
            v63 = v151;
            v65 = v154;
            v174.origin.x = v154;
            v174.origin.y = rect;
            v174.size.width = v64;
            v174.size.height = v151;
            v73 = CGRectGetMaxY(v174);
            v62 = 0.0;
          }

          else
          {
            v73 = v161 + v126;
            v62 = 0.0;
            v63 = v151;
            v65 = v154;
          }

          v55 = v134;
          v58 = v136;
          v57 = y;
          v56 = v148;
        }

        v60 = v159;
        v61 = v161 + v73;
        v59 = v143;
      }

      else
      {
        v61 = v164;
        v59 = v165;
        v60 = v51;
        v62 = v50;
        v63 = v151;
        v65 = v154;
        v55 = v134;
        v58 = v136;
        v57 = y;
        v56 = v148;
      }
    }

    v142 = v60;
    v144 = v61;
    v160 = v59;
    v147 = v62;
    v149 = v56;
    v135 = v55;
    v137 = v58;
    v158 = v57;
    v162 = v64;
    v152 = v63;
    v155 = v65;
    v74 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    v75 = v164;
    v76 = v165;
    v77 = v51;
    v78 = v50;
    if (v74)
    {
      editing = self->_editing;

      v78 = width - v130;
      v75 = v43 + ceil((height - v43) * 0.5) - v132 * 0.5;
      v76 = editing ? v165 : v132;
      v77 = editing ? v51 : v130;
      if (editing)
      {
        v75 = v164;
        v78 = v50;
      }
    }

    v131 = v78;
    v133 = v75;
    v80 = [(VUIDownloadCollectionViewCell *)self editImageView];
    if (v80)
    {
      v81 = self->_editing;

      v82 = v43 + ceil((height - v43) * 0.5) + -11.0;
      v83 = v165;
      if (v81)
      {
        v83 = 22.0;
        v51 = 22.0;
      }

      v84 = v164;
      if (v81)
      {
        v84 = v82;
      }

      v164 = v84;
      v165 = v83;
      if (v81)
      {
        v50 = width + -22.0;
      }
    }

    v85 = 0.0;
    if ([(VUIDownloadCollectionViewCell *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v86 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v86 bounds];

      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v125 = v87;
      v127 = v88;
      v122 = v89;
      v123 = v90;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v138 = v91;
      v140 = v92;
      v163 = v93;
      v139 = v94;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v155 = v95;
      rect = v96;
      v162 = v97;
      v152 = v98;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v147 = v99;
      v142 = v101;
      v144 = v100;
      v160 = v102;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v131 = v103;
      v133 = v104;
      v106 = v105;
      v124 = v107;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v109 = v108;
      v158 = v110;
      v149 = v111;
      v113 = v112;
      v77 = v106;
      v85 = v122;
      v43 = v123;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v50 = v114;
      v164 = v115;
      v165 = v116;
      v51 = v117;
    }

    else
    {
      v125 = 0.0;
      v127 = width;
      v124 = v76;
      v113 = v135;
      v109 = v137;
    }

    v118 = [(VUILibraryLockupViewCell *)self imageView:*&v122];
    [v118 setFrame:{v125, v85, v127, v43}];

    v119 = [(VUILibraryLockupViewCell *)self titleLabel];
    [v119 setFrame:{v138, v140, v163, v139}];

    [(VUILabel *)self->_metaDataHeaderFirstLabel setFrame:v155, rect, v162, v152];
    [(VUILabel *)self->_metaDataHeaderSecondLabel setFrame:v147, v144, v142, v160];
    [(VUIDownloadButton *)self->_downloadButton setFrame:v131, v133, v77, v124];
    [(VUILabel *)self->_dotSeparatorLabel setFrame:v109, v158, v149, v113];
    [(UIImageView *)self->_editImageView setFrame:v50, v164, v51, v165];
    v21 = v128;
    v18 = v129;
  }

  v120 = v150;
  if (v49)
  {
    v120 = v18 + v21 + v150;
  }

  v121 = width;
  result.height = v120;
  result.width = v121;
  return result;
}

- (CGSize)_layoutForAccessibility:(CGSize)a3 metricsOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(VUILibraryLockupViewCell *)self titleLabel];
  [v8 sizeThatFits:{width, height}];
  v119 = v9;
  v11 = v10;

  v12 = [(VUILibraryLockupViewCell *)self titleLabel];
  [v12 topMarginWithBaselineMargin:24.0];
  v14 = v13;

  [(VUILabel *)self->_metaDataHeaderFirstLabel sizeThatFits:width, height];
  v121 = v15;
  v17 = v16;
  [(VUILabel *)self->_metaDataHeaderSecondLabel sizeThatFits:width, height];
  v122 = v18;
  v20 = v19;
  [(VUILabel *)self->_metaDataHeaderFirstLabel topMarginWithBaselineMargin:20.0];
  v22 = v21;
  [(VUILabel *)self->_metaDataHeaderSecondLabel topMarginWithBaselineMargin:20.0];
  v24 = v23;
  v25 = [(VUIDownloadCollectionViewCell *)self downloadButton];

  if (v25)
  {
    [(VUIDownloadButton *)self->_downloadButton sizeToFit];
  }

  v26 = ceil(width * 0.5625);
  if (!a4)
  {
    v97 = v22;
    v98 = v24;
    v99 = v17;
    v100 = v20;
    v101 = v14;
    v27 = *MEMORY[0x1E695F058];
    v28 = *(MEMORY[0x1E695F058] + 8);
    v30 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
    v124.origin.x = 0.0;
    v124.origin.y = 0.0;
    v124.size.width = width;
    v118 = v26;
    v124.size.height = v26;
    MaxY = CGRectGetMaxY(v124);
    v32 = [(VUILibraryLockupViewCell *)self titleLabel];

    v104 = v30;
    if (v32)
    {
      v33 = v28;
      v34 = v27;
      v125.origin.y = v101 + MaxY;
      v125.origin.x = 0.0;
      v117 = v101 + MaxY;
      v35 = v119;
      v125.size.width = v119;
      v125.size.height = v11;
      MaxY = CGRectGetMaxY(v125);
      v116 = v11;
      v115 = 0.0;
    }

    else
    {
      v116 = v29;
      v117 = v28;
      v35 = v30;
      v33 = v28;
      v34 = v27;
      v115 = v27;
    }

    v36 = v35;
    v37 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

    if (v37)
    {
      v126.origin.y = v97 + MaxY;
      v126.origin.x = 0.0;
      v113 = 0.0;
      v114 = v97 + MaxY;
      v126.size.width = v121;
      v126.size.height = v99;
      MaxY = CGRectGetMaxY(v126);
      v112 = v99;
    }

    else
    {
      v112 = v29;
      v121 = v104;
      v113 = v34;
      v114 = v33;
    }

    v38 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

    if (v38)
    {
      v127.origin.y = v98 + MaxY;
      v127.origin.x = 0.0;
      v110 = 0.0;
      v111 = v98 + MaxY;
      v127.size.width = v122;
      v127.size.height = v100;
      MaxY = CGRectGetMaxY(v127);
      v109 = v100;
      v39 = v104;
    }

    else
    {
      v109 = v29;
      v39 = v104;
      v122 = v104;
      v110 = v34;
      v111 = v33;
    }

    v96 = v11;
    v40 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    v41 = v29;
    v42 = v39;
    v43 = v33;
    v44 = v34;
    if (v40)
    {
      editing = self->_editing;

      v41 = v29;
      v42 = v39;
      v43 = v33;
      v44 = v34;
      if (!editing)
      {
        [(VUIDownloadButton *)self->_downloadButton frame:v29];
        v42 = CGRectGetWidth(v128);
        [(VUIDownloadButton *)self->_downloadButton frame];
        v41 = CGRectGetHeight(v129);
        v44 = 0.0;
        v43 = MaxY;
      }
    }

    v106 = v43;
    v107 = v44;
    v95 = v41;
    v108 = v42;
    v46 = v36;
    v47 = [(VUIDownloadCollectionViewCell *)self editImageView];

    v48 = v39;
    v49 = 0.0;
    if (v47)
    {
      v29 = 22.0;
      v50 = 22.0;
    }

    else
    {
      v50 = v48;
    }

    if (v47)
    {
      v51 = MaxY;
    }

    else
    {
      v51 = v33;
    }

    v103 = v51;
    v105 = v50;
    if (v47)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v34;
    }

    v102 = v52;
    if ([(VUIDownloadCollectionViewCell *)self effectiveUserInterfaceLayoutDirection]== 1)
    {
      v53 = [(VUIDownloadCollectionViewCell *)self contentView];
      [v53 bounds];

      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v92 = v54;
      v93 = v55;
      v49 = v56;
      v94 = v57;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v115 = v58;
      v116 = v60;
      v117 = v59;
      v120 = v61;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v113 = v62;
      v114 = v63;
      v121 = v64;
      v112 = v65;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v110 = v66;
      v111 = v67;
      v122 = v68;
      v109 = v69;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v106 = v71;
      v107 = v70;
      v108 = v72;
      v74 = v73;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v102 = v75;
      v103 = v76;
      v105 = v77;
      v20 = v100;
      v14 = v101;
      v24 = v98;
      v17 = v99;
      v22 = v97;
      [(VUILibraryLockupViewCell *)self imageView];
    }

    else
    {
      v93 = width;
      v94 = v118;
      v91 = v29;
      v92 = 0.0;
      v20 = v100;
      v14 = v101;
      v24 = v98;
      v17 = v99;
      v22 = v97;
      v120 = v46;
      v74 = v95;
      [(VUILibraryLockupViewCell *)self imageView];
    }
    v79 = ;
    [v79 setFrame:{v92, v49, v93, v94}];

    v80 = [(VUILibraryLockupViewCell *)self titleLabel];
    [v80 setFrame:{v115, v117, v120, v116}];

    [(VUILabel *)self->_metaDataHeaderFirstLabel setFrame:v113, v114, v121, v112];
    [(VUILabel *)self->_metaDataHeaderSecondLabel setFrame:v110, v111, v122, v109];
    [(VUIDownloadButton *)self->_downloadButton setFrame:v107, v106, v108, v74];
    [(UIImageView *)self->_editImageView setFrame:v102, v103, v105, v90];
    v11 = v96;
    v26 = v118;
  }

  v81 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

  if (v81)
  {
    v82 = v17 + v26 + v22;
  }

  else
  {
    v82 = v26;
  }

  v83 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

  if (v83)
  {
    v82 = v20 + v24 + v82;
  }

  v84 = [(VUILibraryLockupViewCell *)self titleLabel];

  if (v84)
  {
    v82 = v11 + v14 + v82;
  }

  v85 = [(VUIDownloadCollectionViewCell *)self downloadButton];
  if (v85)
  {
    v86 = self->_editing;

    if (!v86)
    {
      v87 = [(VUIDownloadCollectionViewCell *)self downloadButton];
      [v87 frame];
      v82 = v82 + CGRectGetHeight(v130);
    }
  }

  v88 = width;
  v89 = v82;
  result.height = v89;
  result.width = v88;
  return result;
}

- (void)_addMetaDataLabelsIfRequired:(id)a3
{
  v29 = a3;
  v4 = [v29 mediaEntities];
  v5 = [v4 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 rentalExpirationDate];
    v8 = [v6 downloadExpirationDate];
    v9 = [v6 availabilityEndDate];
    v10 = [v6 assetController];

    v11 = [v10 state];
    v12 = +[VUIRentalExpirationLabel labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:](VUIRentalExpirationLabel, "labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:", v7, v8, v9, [v11 status]);

    if (v12)
    {
      [v12 setDelegate:self];
      [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:v12];
      [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:0];
      [(VUIDownloadCollectionViewCell *)self setDotSeparatorLabel:0];
      goto LABEL_13;
    }
  }

  v13 = [v29 releaseYear];
  v12 = [v13 stringValue];

  if (v12)
  {
    v14 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v14 setTextStyle:16];
    [(VUITextLayout *)v14 setFontWeight:10];
    [(VUITextLayout *)v14 setNumberOfLines:1];
    v15 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v14 setColor:v15];

    v16 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
    v17 = [VUILabel labelWithString:v12 textLayout:v14 existingLabel:v16];
  }

  else
  {
    v17 = 0;
  }

  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:v17];
  v18 = [v29 duration];
  if (!v18)
  {
    [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:0];
    v24 = 0;
    goto LABEL_11;
  }

  v19 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
  v20 = [v19 transformedValue:v18];

  v21 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v21 setTextStyle:16];
  [(VUITextLayout *)v21 setFontWeight:10];
  [(VUITextLayout *)v21 setNumberOfLines:1];
  v22 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v21 setColor:v22];

  v23 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];
  v24 = [VUILabel labelWithString:v20 textLayout:v21 existingLabel:v23];

  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:v24];
  if (!v12)
  {
LABEL_11:
    v28 = 0;
    goto LABEL_12;
  }

  v25 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v25 setTextStyle:22];
  v26 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v25 setColor:v26];

  [(VUITextLayout *)v25 setNumberOfLines:1];
  v27 = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
  v28 = [VUILabel labelWithString:@"·" textLayout:v25 existingLabel:v27];

LABEL_12:
  [(VUIDownloadCollectionViewCell *)self setDotSeparatorLabel:v28];

LABEL_13:
}

- (void)_addDownloadButtonIfRequired:(id)a3
{
  v4 = a3;
  v5 = [v4 assetController];

  if (v5)
  {
    v6 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 assetController];
      [(VUIDownloadButton *)v7 updateWithAssetController:v8];
    }

    else
    {
      v7 = [[VUIDownloadButton alloc] initWithMediaEntity:v4 type:9];
      [(VUIDownloadButton *)v7 setUsesDefaultConfiguration:1];
      objc_initWeak(&location, self);
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __62__VUIDownloadCollectionViewCell__addDownloadButtonIfRequired___block_invoke;
      v12 = &unk_1E872F460;
      objc_copyWeak(&v13, &location);
      [(VUIDownloadButton *)v7 setDownloadStateChangeHandler:&v9];
      [(VUIDownloadCollectionViewCell *)self setDownloadButton:v7, v9, v10, v11, v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __62__VUIDownloadCollectionViewCell__addDownloadButtonIfRequired___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = WeakRetained;
  if (a2 || !(a3 | a4))
  {
    if ([WeakRetained previousDownloadState] != a2)
    {
      [v10 setMetaDataHeaderFirstLabel:0];
      v9 = [v10 downloadEntity];
      [v10 _addMetaDataLabelsIfRequired:v9];

      [v10 setPreviousDownloadState:a2];
    }
  }

  else
  {
    v8 = [WeakRetained delegate];
    [v8 downloadCellDidRequestCancelDownload:v10];
  }
}

- (void)_configureViewElementsForAX
{
  v3 = [(VUIDownloadCollectionViewCell *)self traitCollection];
  v4 = [v3 isAXEnabled];

  v5 = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
  [v5 setHidden:v4];
}

- (BOOL)_hasSecondaryLabel
{
  v3 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];
    v4 = v5 != 0;
  }

  return v4;
}

- (void)_updateViewForEditState
{
  if (self->_editing)
  {
    if ([(VUIDownloadCollectionViewCell *)self isSelected])
    {
      v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
      v4 = [MEMORY[0x1E69DC888] vui_keyColor];
      v10 = [v3 vui_imageWithColor:v4];
    }

    else
    {
      v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
      v4 = [MEMORY[0x1E69DC888] systemGrayColor];
      v7 = [v3 vui_imageWithColor:v4];
      v10 = [v7 imageWithRenderingMode:1];
    }

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    [(VUIDownloadCollectionViewCell *)self setEditImageView:v8];
    v9 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    [v9 removeFromSuperview];
  }

  else
  {
    [(VUIDownloadCollectionViewCell *)self setEditImageView:0];
    v5 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    if (!v5)
    {
      goto LABEL_9;
    }

    v10 = v5;
    v6 = [(VUIDownloadCollectionViewCell *)self contentView];
    [v6 addSubview:v10];

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
  }

  v5 = v10;
LABEL_9:
}

- (VUIDownloadCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end