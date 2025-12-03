@interface VUIDownloadCollectionViewCell
+ (id)_generateMetaDataHeaderFirstLabelForDownloadEntity:(id)entity;
+ (void)_movieConfigurationForVUIDownloadEntityCollectionViewCell:(id)cell withDownloadEntity:(id)entity;
+ (void)_showConfigurationForVUIDownloadEntityCollectionViewCell:(id)cell withDownloadEntity:(id)entity;
+ (void)configureVUIDownloadEntityCollectionViewCell:(id)cell withDownloadEntity:(id)entity width:(double)width forMetrics:(BOOL)metrics;
- (BOOL)_hasSecondaryLabel;
- (CGSize)_layoutForAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only;
- (CGSize)_layoutForCompact:(CGSize)compact metricsOnly:(BOOL)only;
- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIDownloadCollectionViewCellDelegate)delegate;
- (void)_addDownloadButtonIfRequired:(id)required;
- (void)_addMetaDataLabelsIfRequired:(id)required;
- (void)_configureViewElementsForAX;
- (void)_updateViewForEditState;
- (void)downloadEntity:(id)entity numberOfItemsDidChange:(unint64_t)change;
- (void)downloadEntity:(id)entity numberOfItemsDownloadingDidChange:(id)change;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDotSeparatorLabel:(id)label;
- (void)setDownloadButton:(id)button;
- (void)setEditImageView:(id)view;
- (void)setMetaDataHeaderFirstLabel:(id)label;
- (void)setMetaDataHeaderSecondLabel:(id)label;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation VUIDownloadCollectionViewCell

+ (void)configureVUIDownloadEntityCollectionViewCell:(id)cell withDownloadEntity:(id)entity width:(double)width forMetrics:(BOOL)metrics
{
  cellCopy = cell;
  entityCopy = entity;
  [cellCopy setDownloadEntity:entityCopy];
  mediaEntities = [entityCopy mediaEntities];
  firstObject = [mediaEntities firstObject];

  [cellCopy setImageAspectRatio:0.5625];
  if (!metrics)
  {
    [VUILibraryLockupViewCell configureImageViewArtworkForLockupCell:cellCopy withMedia:firstObject width:width];
    [entityCopy setDelegate:cellCopy];
  }

  title = [entityCopy title];

  if (title)
  {
    v13 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v13 setTextStyle:14];
    [(VUITextLayout *)v13 setFontWeight:0];
    vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(VUITextLayout *)v13 setColor:vui_primaryTextColor];

    [(VUITextLayout *)v13 setNumberOfLines:2];
    title2 = [entityCopy title];
    v16 = title2;
    if (title2)
    {
      v17 = title2;
    }

    else
    {
      v17 = &stru_1F5DB25C0;
    }

    titleLabel = [cellCopy titleLabel];
    v19 = [VUILabel labelWithString:v17 textLayout:v13 existingLabel:titleLabel];
  }

  else
  {
    v19 = 0;
  }

  [cellCopy setTitleLabel:v19];
  if ([entityCopy downloadType])
  {
    if ([entityCopy downloadType] == 1 || objc_msgSend(entityCopy, "downloadType") == 2)
    {
      [VUIDownloadCollectionViewCell _showConfigurationForVUIDownloadEntityCollectionViewCell:cellCopy withDownloadEntity:entityCopy];
    }
  }

  else
  {
    [VUIDownloadCollectionViewCell _movieConfigurationForVUIDownloadEntityCollectionViewCell:cellCopy withDownloadEntity:entityCopy];
  }
}

+ (void)_movieConfigurationForVUIDownloadEntityCollectionViewCell:(id)cell withDownloadEntity:(id)entity
{
  entityCopy = entity;
  cellCopy = cell;
  [cellCopy _addMetaDataLabelsIfRequired:entityCopy];
  mediaEntities = [entityCopy mediaEntities];

  firstObject = [mediaEntities firstObject];

  [cellCopy _addDownloadButtonIfRequired:firstObject];
}

+ (void)_showConfigurationForVUIDownloadEntityCollectionViewCell:(id)cell withDownloadEntity:(id)entity
{
  cellCopy = cell;
  v6 = [VUIDownloadCollectionViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:entity];
  [cellCopy setMetaDataHeaderFirstLabel:v6];
}

+ (id)_generateMetaDataHeaderFirstLabelForDownloadEntity:(id)entity
{
  entityCopy = entity;
  numberOfMediaItemsDownloading = [entityCopy numberOfMediaItemsDownloading];
  intValue = [numberOfMediaItemsDownloading intValue];

  v6 = MEMORY[0x1E696AEC0];
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = v7;
  if (intValue < 1)
  {
    v13 = [v7 localizedStringForKey:@"NUMBER_OF_EPISODES"];
    numberOfMediaItems = [entityCopy numberOfMediaItems];

    v11 = [v6 localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%d" error:0, objc_msgSend(numberOfMediaItems, "intValue")];

    v12 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v12 setTextStyle:16];
    [(VUITextLayout *)v12 setFontWeight:10];
    [(VUITextLayout *)v12 setNumberOfLines:0];
    [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"DOWNLOADING_NUMBER_OF_EPISODES"];
    numberOfMediaItemsDownloading2 = [entityCopy numberOfMediaItemsDownloading];

    v11 = [v6 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:0, objc_msgSend(numberOfMediaItemsDownloading2, "intValue")];

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

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = VUIDownloadCollectionViewCell;
  [(VUIDownloadCollectionViewCell *)&v4 setSelected:selected];
  if (self->_editing)
  {
    [(VUIDownloadCollectionViewCell *)self _updateViewForEditState];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = VUIDownloadCollectionViewCell;
  [(VUIDownloadCollectionViewCell *)&v5 setSelected:selected animated:animated];
  if (self->_editing)
  {
    [(VUIDownloadCollectionViewCell *)self _updateViewForEditState];
  }
}

- (void)setMetaDataHeaderFirstLabel:(id)label
{
  labelCopy = label;
  metaDataHeaderFirstLabel = self->_metaDataHeaderFirstLabel;
  if (metaDataHeaderFirstLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)metaDataHeaderFirstLabel removeFromSuperview];
    objc_storeStrong(&self->_metaDataHeaderFirstLabel, label);
    if (self->_metaDataHeaderFirstLabel)
    {
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView addSubview:self->_metaDataHeaderFirstLabel];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setMetaDataHeaderSecondLabel:(id)label
{
  labelCopy = label;
  metaDataHeaderSecondLabel = self->_metaDataHeaderSecondLabel;
  if (metaDataHeaderSecondLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)metaDataHeaderSecondLabel removeFromSuperview];
    objc_storeStrong(&self->_metaDataHeaderSecondLabel, label);
    if (self->_metaDataHeaderSecondLabel)
    {
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView addSubview:self->_metaDataHeaderSecondLabel];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setDotSeparatorLabel:(id)label
{
  labelCopy = label;
  dotSeparatorLabel = self->_dotSeparatorLabel;
  if (dotSeparatorLabel != labelCopy)
  {
    v8 = labelCopy;
    [(VUILabel *)dotSeparatorLabel removeFromSuperview];
    objc_storeStrong(&self->_dotSeparatorLabel, label);
    if (self->_dotSeparatorLabel)
    {
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView addSubview:self->_dotSeparatorLabel];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setEditImageView:(id)view
{
  viewCopy = view;
  editImageView = self->_editImageView;
  if (editImageView != viewCopy)
  {
    v8 = viewCopy;
    [(UIImageView *)editImageView removeFromSuperview];
    objc_storeStrong(&self->_editImageView, view);
    if (self->_editImageView)
    {
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView addSubview:self->_editImageView];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)setDownloadButton:(id)button
{
  buttonCopy = button;
  downloadButton = self->_downloadButton;
  if (downloadButton != buttonCopy)
  {
    v8 = buttonCopy;
    if (downloadButton)
    {
      [(VUIDownloadButton *)downloadButton removeFromSuperview];
    }

    objc_storeStrong(&self->_downloadButton, button);
    if (v8)
    {
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView addSubview:v8];
    }

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
    buttonCopy = v8;
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = VUIDownloadCollectionViewCell;
  [(VUILibraryLockupViewCell *)&v4 prepareForReuse];
  downloadEntity = [(VUIDownloadCollectionViewCell *)self downloadEntity];
  [downloadEntity setDelegate:0];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIDownloadCollectionViewCell *)self _layoutWithSize:1 metricsOnly:fits.width, fits.height];
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

- (void)downloadEntity:(id)entity numberOfItemsDownloadingDidChange:(id)change
{
  change = [VUIDownloadCollectionViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:entity, change];
  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:change];
  [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
}

- (void)downloadEntity:(id)entity numberOfItemsDidChange:(unint64_t)change
{
  change = [VUIDownloadCollectionViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:entity, change];
  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:change];
  [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
}

- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only
{
  onlyCopy = only;
  height = size.height;
  width = size.width;
  [(VUIDownloadCollectionViewCell *)self _configureViewElementsForAX];
  traitCollection = [(VUIDownloadCollectionViewCell *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  if (isAXEnabled)
  {

    [(VUIDownloadCollectionViewCell *)self _layoutForAccessibility:onlyCopy metricsOnly:width, height];
  }

  else
  {

    [(VUIDownloadCollectionViewCell *)self _layoutForCompact:onlyCopy metricsOnly:width, height];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_layoutForCompact:(CGSize)compact metricsOnly:(BOOL)only
{
  height = compact.height;
  width = compact.width;
  downloadButton = [(VUIDownloadCollectionViewCell *)self downloadButton];

  if (downloadButton)
  {
    [(VUIDownloadButton *)self->_downloadButton sizeToFit];
    downloadButton2 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    [downloadButton2 frame];
    v10 = CGRectGetWidth(v167);

    downloadButton3 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    [downloadButton3 frame];
    v12 = CGRectGetHeight(v168);

    v13 = v10;
  }

  else
  {
    editImageView = [(VUIDownloadCollectionViewCell *)self editImageView];

    v12 = 0.0;
    if (editImageView)
    {
      v10 = 22.0;
    }

    else
    {
      v10 = 0.0;
    }

    v13 = 0.0;
  }

  titleLabel = [(VUILibraryLockupViewCell *)self titleLabel];
  [titleLabel sizeThatFits:{width - v10, height}];
  v163 = v16;
  v18 = v17;

  titleLabel2 = [(VUILibraryLockupViewCell *)self titleLabel];
  [titleLabel2 topMarginWithBaselineMargin:24.0];
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
  titleLabel3 = [(VUILibraryLockupViewCell *)self titleLabel];

  if (titleLabel3)
  {
    titleLabel4 = [(VUILibraryLockupViewCell *)self titleLabel];
    metaDataHeaderFirstLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
    [titleLabel4 topMarginToLabel:metaDataHeaderFirstLabel withBaselineMargin:20.0];
    v153 = v35;

    titleLabel5 = [(VUILibraryLockupViewCell *)self titleLabel];
    metaDataHeaderSecondLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];
    [titleLabel5 topMarginToLabel:metaDataHeaderSecondLabel withBaselineMargin:20.0];
    v161 = v38;
  }

  else
  {
    v153 = v29;
    v161 = v31;
  }

  metaDataHeaderFirstLabel2 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
  if (metaDataHeaderFirstLabel2)
  {
    v40 = metaDataHeaderFirstLabel2;
    metaDataHeaderSecondLabel2 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

    v42 = v13 + v156 + v159 + v148 + 12.0;
    if (!metaDataHeaderSecondLabel2)
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
  dotSeparatorLabel = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
  [dotSeparatorLabel setHidden:v44];

  _hasSecondaryLabel = [(VUIDownloadCollectionViewCell *)self _hasSecondaryLabel];
  v47 = v43;
  if (_hasSecondaryLabel)
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
  titleLabel6 = [(VUILibraryLockupViewCell *)self titleLabel];

  if (!only)
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
    titleLabel7 = [(VUILibraryLockupViewCell *)self titleLabel];

    if (titleLabel7)
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

    _hasSecondaryLabel2 = [(VUIDownloadCollectionViewCell *)self _hasSecondaryLabel];
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
    if (_hasSecondaryLabel2)
    {
      metaDataHeaderFirstLabel3 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

      if (metaDataHeaderFirstLabel3)
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

      dotSeparatorLabel2 = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
      if (dotSeparatorLabel2 && (v68 = dotSeparatorLabel2, -[VUIDownloadCollectionViewCell dotSeparatorLabel](self, "dotSeparatorLabel"), v69 = objc_claimAutoreleasedReturnValue(), v70 = [v69 isHidden], v69, v68, (v70 & 1) == 0))
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

      metaDataHeaderSecondLabel3 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

      if (metaDataHeaderSecondLabel3)
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
          metaDataHeaderFirstLabel4 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

          if (metaDataHeaderFirstLabel4)
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
    downloadButton4 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    v75 = v164;
    v76 = v165;
    v77 = v51;
    v78 = v50;
    if (downloadButton4)
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
    editImageView2 = [(VUIDownloadCollectionViewCell *)self editImageView];
    if (editImageView2)
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
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView bounds];

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

    titleLabel8 = [(VUILibraryLockupViewCell *)self titleLabel];
    [titleLabel8 setFrame:{v138, v140, v163, v139}];

    [(VUILabel *)self->_metaDataHeaderFirstLabel setFrame:v155, rect, v162, v152];
    [(VUILabel *)self->_metaDataHeaderSecondLabel setFrame:v147, v144, v142, v160];
    [(VUIDownloadButton *)self->_downloadButton setFrame:v131, v133, v77, v124];
    [(VUILabel *)self->_dotSeparatorLabel setFrame:v109, v158, v149, v113];
    [(UIImageView *)self->_editImageView setFrame:v50, v164, v51, v165];
    v21 = v128;
    v18 = v129;
  }

  v120 = v150;
  if (titleLabel6)
  {
    v120 = v18 + v21 + v150;
  }

  v121 = width;
  result.height = v120;
  result.width = v121;
  return result;
}

- (CGSize)_layoutForAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only
{
  height = accessibility.height;
  width = accessibility.width;
  titleLabel = [(VUILibraryLockupViewCell *)self titleLabel];
  [titleLabel sizeThatFits:{width, height}];
  v119 = v9;
  v11 = v10;

  titleLabel2 = [(VUILibraryLockupViewCell *)self titleLabel];
  [titleLabel2 topMarginWithBaselineMargin:24.0];
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
  downloadButton = [(VUIDownloadCollectionViewCell *)self downloadButton];

  if (downloadButton)
  {
    [(VUIDownloadButton *)self->_downloadButton sizeToFit];
  }

  v26 = ceil(width * 0.5625);
  if (!only)
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
    titleLabel3 = [(VUILibraryLockupViewCell *)self titleLabel];

    v104 = v30;
    if (titleLabel3)
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
    metaDataHeaderFirstLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

    if (metaDataHeaderFirstLabel)
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

    metaDataHeaderSecondLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

    if (metaDataHeaderSecondLabel)
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
    downloadButton2 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    v41 = v29;
    v42 = v39;
    v43 = v33;
    v44 = v34;
    if (downloadButton2)
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
    editImageView = [(VUIDownloadCollectionViewCell *)self editImageView];

    v48 = v39;
    v49 = 0.0;
    if (editImageView)
    {
      v29 = 22.0;
      v50 = 22.0;
    }

    else
    {
      v50 = v48;
    }

    if (editImageView)
    {
      v51 = MaxY;
    }

    else
    {
      v51 = v33;
    }

    v103 = v51;
    v105 = v50;
    if (editImageView)
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
      contentView = [(VUIDownloadCollectionViewCell *)self contentView];
      [contentView bounds];

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

    titleLabel4 = [(VUILibraryLockupViewCell *)self titleLabel];
    [titleLabel4 setFrame:{v115, v117, v120, v116}];

    [(VUILabel *)self->_metaDataHeaderFirstLabel setFrame:v113, v114, v121, v112];
    [(VUILabel *)self->_metaDataHeaderSecondLabel setFrame:v110, v111, v122, v109];
    [(VUIDownloadButton *)self->_downloadButton setFrame:v107, v106, v108, v74];
    [(UIImageView *)self->_editImageView setFrame:v102, v103, v105, v90];
    v11 = v96;
    v26 = v118;
  }

  metaDataHeaderFirstLabel2 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];

  if (metaDataHeaderFirstLabel2)
  {
    v82 = v17 + v26 + v22;
  }

  else
  {
    v82 = v26;
  }

  metaDataHeaderSecondLabel2 = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];

  if (metaDataHeaderSecondLabel2)
  {
    v82 = v20 + v24 + v82;
  }

  titleLabel5 = [(VUILibraryLockupViewCell *)self titleLabel];

  if (titleLabel5)
  {
    v82 = v11 + v14 + v82;
  }

  downloadButton3 = [(VUIDownloadCollectionViewCell *)self downloadButton];
  if (downloadButton3)
  {
    v86 = self->_editing;

    if (!v86)
    {
      downloadButton4 = [(VUIDownloadCollectionViewCell *)self downloadButton];
      [downloadButton4 frame];
      v82 = v82 + CGRectGetHeight(v130);
    }
  }

  v88 = width;
  v89 = v82;
  result.height = v89;
  result.width = v88;
  return result;
}

- (void)_addMetaDataLabelsIfRequired:(id)required
{
  requiredCopy = required;
  mediaEntities = [requiredCopy mediaEntities];
  firstObject = [mediaEntities firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = firstObject;
    rentalExpirationDate = [v6 rentalExpirationDate];
    downloadExpirationDate = [v6 downloadExpirationDate];
    availabilityEndDate = [v6 availabilityEndDate];
    assetController = [v6 assetController];

    state = [assetController state];
    stringValue = +[VUIRentalExpirationLabel labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:](VUIRentalExpirationLabel, "labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:", rentalExpirationDate, downloadExpirationDate, availabilityEndDate, [state status]);

    if (stringValue)
    {
      [stringValue setDelegate:self];
      [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:stringValue];
      [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:0];
      [(VUIDownloadCollectionViewCell *)self setDotSeparatorLabel:0];
      goto LABEL_13;
    }
  }

  releaseYear = [requiredCopy releaseYear];
  stringValue = [releaseYear stringValue];

  if (stringValue)
  {
    v14 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v14 setTextStyle:16];
    [(VUITextLayout *)v14 setFontWeight:10];
    [(VUITextLayout *)v14 setNumberOfLines:1];
    vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v14 setColor:vui_secondaryTextColor];

    metaDataHeaderFirstLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
    v17 = [VUILabel labelWithString:stringValue textLayout:v14 existingLabel:metaDataHeaderFirstLabel];
  }

  else
  {
    v17 = 0;
  }

  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderFirstLabel:v17];
  duration = [requiredCopy duration];
  if (!duration)
  {
    [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:0];
    v24 = 0;
    goto LABEL_11;
  }

  v19 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
  v20 = [v19 transformedValue:duration];

  v21 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v21 setTextStyle:16];
  [(VUITextLayout *)v21 setFontWeight:10];
  [(VUITextLayout *)v21 setNumberOfLines:1];
  vui_secondaryTextColor2 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v21 setColor:vui_secondaryTextColor2];

  metaDataHeaderSecondLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];
  v24 = [VUILabel labelWithString:v20 textLayout:v21 existingLabel:metaDataHeaderSecondLabel];

  [(VUIDownloadCollectionViewCell *)self setMetaDataHeaderSecondLabel:v24];
  if (!stringValue)
  {
LABEL_11:
    v28 = 0;
    goto LABEL_12;
  }

  v25 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v25 setTextStyle:22];
  vui_secondaryTextColor3 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v25 setColor:vui_secondaryTextColor3];

  [(VUITextLayout *)v25 setNumberOfLines:1];
  dotSeparatorLabel = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
  v28 = [VUILabel labelWithString:@"·" textLayout:v25 existingLabel:dotSeparatorLabel];

LABEL_12:
  [(VUIDownloadCollectionViewCell *)self setDotSeparatorLabel:v28];

LABEL_13:
}

- (void)_addDownloadButtonIfRequired:(id)required
{
  requiredCopy = required;
  assetController = [requiredCopy assetController];

  if (assetController)
  {
    downloadButton = [(VUIDownloadCollectionViewCell *)self downloadButton];
    if (downloadButton)
    {
      v7 = downloadButton;
      assetController2 = [requiredCopy assetController];
      [(VUIDownloadButton *)v7 updateWithAssetController:assetController2];
    }

    else
    {
      v7 = [[VUIDownloadButton alloc] initWithMediaEntity:requiredCopy type:9];
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
  traitCollection = [(VUIDownloadCollectionViewCell *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  dotSeparatorLabel = [(VUIDownloadCollectionViewCell *)self dotSeparatorLabel];
  [dotSeparatorLabel setHidden:isAXEnabled];
}

- (BOOL)_hasSecondaryLabel
{
  metaDataHeaderFirstLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderFirstLabel];
  if (metaDataHeaderFirstLabel)
  {
    v4 = 1;
  }

  else
  {
    metaDataHeaderSecondLabel = [(VUIDownloadCollectionViewCell *)self metaDataHeaderSecondLabel];
    v4 = metaDataHeaderSecondLabel != 0;
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
      vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
      v10 = [v3 vui_imageWithColor:vui_keyColor];
    }

    else
    {
      v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
      vui_keyColor = [MEMORY[0x1E69DC888] systemGrayColor];
      v7 = [v3 vui_imageWithColor:vui_keyColor];
      v10 = [v7 imageWithRenderingMode:1];
    }

    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v10];
    [(VUIDownloadCollectionViewCell *)self setEditImageView:v8];
    downloadButton = [(VUIDownloadCollectionViewCell *)self downloadButton];
    [downloadButton removeFromSuperview];
  }

  else
  {
    [(VUIDownloadCollectionViewCell *)self setEditImageView:0];
    downloadButton2 = [(VUIDownloadCollectionViewCell *)self downloadButton];
    if (!downloadButton2)
    {
      goto LABEL_9;
    }

    v10 = downloadButton2;
    contentView = [(VUIDownloadCollectionViewCell *)self contentView];
    [contentView addSubview:v10];

    [(VUIDownloadCollectionViewCell *)self setNeedsLayout];
  }

  downloadButton2 = v10;
LABEL_9:
}

- (VUIDownloadCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end