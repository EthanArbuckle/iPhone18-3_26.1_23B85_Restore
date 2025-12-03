@interface VUIDownloadEntityTableViewCell
+ (id)_generateMetaDataHeaderFirstLabelForDownloadEntity:(id)entity;
+ (void)configureVUIDownloadEntityTableViewCell:(id)cell withDownloadEntity:(id)entity forMetrics:(BOOL)metrics;
- (CGSize)_layoutForCategoryAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only;
- (CGSize)_layoutForCompact:(CGSize)compact metricsOnly:(BOOL)only;
- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIDownloadEntityTableViewCell)initWithFrame:(CGRect)frame;
- (VUIDownloadEntityTableViewCellDelegate)delegate;
- (double)_imageHeightForCurrentSizeClass;
- (double)_verticalPaddingForCurrentSizeClass;
- (id)_episodePlaceholderImage;
- (void)_addDownloadButtonIfRequired:(id)required;
- (void)_addMetaDataLabelsIfRequired:(id)required;
- (void)_configureViewElementsForAX;
- (void)_removeDownloadButtonIfRequired;
- (void)downloadEntity:(id)entity numberOfItemsDidChange:(unint64_t)change;
- (void)downloadEntity:(id)entity numberOfItemsDownloadingDidChange:(id)change;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomSeparatorView:(id)view;
- (void)setDotSeparatorLabel:(id)label;
- (void)setDownloadEntity:(id)entity;
- (void)setEpisodeImageView:(id)view;
- (void)setMetaDataHeaderFirstLabel:(id)label;
- (void)setMetaDataHeaderSecondLabel:(id)label;
- (void)setPosterImageView:(id)view;
- (void)setRightImageView:(id)view;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setTitleLabel:(id)label;
- (void)setTopSeparatorView:(id)view;
- (void)willTransitionToState:(unint64_t)state;
@end

@implementation VUIDownloadEntityTableViewCell

+ (void)configureVUIDownloadEntityTableViewCell:(id)cell withDownloadEntity:(id)entity forMetrics:(BOOL)metrics
{
  cellCopy = cell;
  entityCopy = entity;
  [cellCopy setDownloadEntity:entityCopy];
  [VUIUtilities imageCornerRadiusWithStyle:1];
  v9 = v8;
  v10 = 0.0;
  if (!metrics)
  {
    [entityCopy setDelegate:cellCopy];
    [cellCopy _imageHeightForCurrentSizeClass];
    v10 = v11;
  }

  title = [entityCopy title];

  if (title)
  {
    v13 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v13 setTextStyle:20];
    [(VUITextLayout *)v13 setFontWeight:0];
    vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    [(VUITextLayout *)v13 setColor:vui_primaryTextColor];

    [(VUITextLayout *)v13 setAllowsTextAlignmentOverride:1];
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
    title = [VUILabel labelWithString:v17 textLayout:v13 existingLabel:titleLabel];
  }

  [cellCopy setTitleLabel:title];
  mediaEntities = [entityCopy mediaEntities];
  firstObject = [mediaEntities firstObject];

  if ([entityCopy downloadType])
  {
    if ([entityCopy downloadType] == 1)
    {
      if (!metrics)
      {
        v21 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:firstObject imageType:0];
        posterImageView = [cellCopy posterImageView];
        if (posterImageView)
        {
          posterImageView2 = [cellCopy posterImageView];
        }

        else
        {
          posterImageView2 = objc_alloc_init(MEMORY[0x1E69DF740]);
        }

        v41 = posterImageView2;

        [v41 setUserInteractionEnabled:0];
        vui_imageHighlightColor = [MEMORY[0x1E69DC888] vui_imageHighlightColor];
        [v41 _setFocusedColor:vui_imageHighlightColor];

        _episodePlaceholderImage = [cellCopy _episodePlaceholderImage];
        [v41 setPlaceholderImage:_episodePlaceholderImage];

        if (v21)
        {
          v44 = MEMORY[0x1E69DF728];
          vui_imageBorderColor = [MEMORY[0x1E69DC888] vui_imageBorderColor];
          v46 = [v44 decoratorWithOutlineColor:vui_imageBorderColor outlineWidths:{1.0, 1.0, 1.0, 1.0}];

          v47 = objc_alloc(MEMORY[0x1E69DF730]);
          mediaLibrary = [firstObject mediaLibrary];
          v49 = [v47 initWithObject:v21 imageLoader:mediaLibrary groupType:0];

          [v46 setScaleToSize:{v10 * 1.77777778, v10}];
          [MEMORY[0x1E69DF6D0] radiiFromRadius:v9];
          [v46 setCornerRadii:?];
          [v49 setDecorator:v46];
          [v41 setImageProxy:v49];
          [VUIUtilities imageCornerRadiusWithStyle:1];
          [v41 setCornerRadius:?];
        }

        [cellCopy setPosterImageView:v41];
      }

      [cellCopy _addMetaDataLabelsIfRequired:entityCopy];
      v50 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
      v51 = [VUIVideosImageView alloc];
      v52 = [(VUIVideosImageView *)v51 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      v54 = [v50 imageWithTintColor:vui_secondaryTextColor renderingMode:1];
      [(VUIVideosImageView *)v52 setImage:v54];

      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      v56 = [v50 imageWithTintColor:whiteColor renderingMode:1];
      [(VUIVideosImageView *)v52 setHighlightOrSelectedImage:v56];

      [cellCopy setRightImageView:v52];
LABEL_33:

      goto LABEL_37;
    }

    if ([entityCopy downloadType] != 3)
    {
      if ([entityCopy downloadType] != 2)
      {
        goto LABEL_37;
      }

      if (!metrics)
      {
        v29 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:firstObject imageType:0];
        posterImageView3 = [cellCopy posterImageView];
        if (posterImageView3)
        {
          posterImageView4 = [cellCopy posterImageView];
        }

        else
        {
          posterImageView4 = objc_alloc_init(MEMORY[0x1E69DF740]);
        }

        v58 = posterImageView4;

        [v58 setUserInteractionEnabled:0];
        vui_imageHighlightColor2 = [MEMORY[0x1E69DC888] vui_imageHighlightColor];
        [v58 _setFocusedColor:vui_imageHighlightColor2];

        _episodePlaceholderImage2 = [cellCopy _episodePlaceholderImage];
        [v58 setPlaceholderImage:_episodePlaceholderImage2];

        if (v29)
        {
          v61 = MEMORY[0x1E69DF728];
          vui_imageBorderColor2 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
          v63 = [v61 decoratorWithOutlineColor:vui_imageBorderColor2 outlineWidths:{1.0, 1.0, 1.0, 1.0}];

          v64 = objc_alloc(MEMORY[0x1E69DF730]);
          mediaLibrary2 = [firstObject mediaLibrary];
          v66 = [v64 initWithObject:v29 imageLoader:mediaLibrary2 groupType:0];

          [v63 setScaleToSize:{v10 * 1.77777778, v10}];
          [MEMORY[0x1E69DF6D0] radiiFromRadius:v9];
          [v63 setCornerRadii:?];
          [v66 setDecorator:v63];
          [v58 setImageProxy:v66];
          [VUIUtilities imageCornerRadiusWithStyle:1];
          [v58 setCornerRadius:?];
        }

        [cellCopy setPosterImageView:v58];
      }

      v50 = [VUIDownloadEntityTableViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:entityCopy];
      v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
      v67 = [VUIVideosImageView alloc];
      v68 = [(VUIVideosImageView *)v67 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      vui_secondaryTextColor2 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      v70 = [(VUIVideosImageView *)v52 imageWithTintColor:vui_secondaryTextColor2 renderingMode:1];
      [(VUIVideosImageView *)v68 setImage:v70];

      whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
      v72 = [(VUIVideosImageView *)v52 imageWithTintColor:whiteColor2 renderingMode:1];
      [(VUIVideosImageView *)v68 setHighlightOrSelectedImage:v72];

      [cellCopy setRightImageView:v68];
      [cellCopy setMetaDataHeaderFirstLabel:v50];
      [cellCopy setMetaDataHeaderSecondLabel:0];
      [cellCopy setDotSeparatorLabel:0];

      goto LABEL_33;
    }

    if (!metrics)
    {
      episodeImageView = [cellCopy episodeImageView];
      if (episodeImageView)
      {
        episodeImageView2 = [cellCopy episodeImageView];
      }

      else
      {
        episodeImageView2 = [[VUILibraryEpisodeFrameView alloc] initWithFrame:0.0, 0.0, v10 * 1.77777778, v10];
      }

      v57 = episodeImageView2;

      [VUILibraryEpisodeFrameView configureEpisodeFrameView:v57 withMedia:firstObject layout:0 imageSize:v10 * 1.77777778, v10];
      [cellCopy setEpisodeImageView:v57];
    }
  }

  else if (!metrics)
  {
    v24 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:firstObject imageType:0];
    posterImageView5 = [cellCopy posterImageView];
    if (posterImageView5)
    {
      posterImageView6 = [cellCopy posterImageView];
    }

    else
    {
      posterImageView6 = objc_alloc_init(MEMORY[0x1E69DF740]);
    }

    v32 = posterImageView6;

    [v32 setUserInteractionEnabled:0];
    vui_imageHighlightColor3 = [MEMORY[0x1E69DC888] vui_imageHighlightColor];
    [v32 _setFocusedColor:vui_imageHighlightColor3];

    _episodePlaceholderImage3 = [cellCopy _episodePlaceholderImage];
    [v32 setPlaceholderImage:_episodePlaceholderImage3];

    if (v24)
    {
      v35 = MEMORY[0x1E69DF728];
      vui_imageBorderColor3 = [MEMORY[0x1E69DC888] vui_imageBorderColor];
      v37 = [v35 decoratorWithOutlineColor:vui_imageBorderColor3 outlineWidths:{1.0, 1.0, 1.0, 1.0}];

      v38 = objc_alloc(MEMORY[0x1E69DF730]);
      mediaLibrary3 = [firstObject mediaLibrary];
      v40 = [v38 initWithObject:v24 imageLoader:mediaLibrary3 groupType:0];

      [v37 setScaleToSize:{v10 * 1.77777778, v10}];
      [MEMORY[0x1E69DF6D0] radiiFromRadius:v9];
      [v37 setCornerRadii:?];
      [v40 setDecorator:v37];
      [v32 setImageProxy:v40];
      [VUIUtilities imageCornerRadiusWithStyle:1];
      [v32 setCornerRadius:?];
    }

    [cellCopy setPosterImageView:v32];
  }

  [cellCopy _addMetaDataLabelsIfRequired:entityCopy];
  [cellCopy _addDownloadButtonIfRequired:firstObject];
LABEL_37:
}

- (VUIDownloadEntityTableViewCell)initWithFrame:(CGRect)frame
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VUIDownloadEntityTableViewCell;
  v3 = [(VUIDownloadEntityTableViewCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    objc_initWeak(&location, v3);
    v11[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__VUIDownloadEntityTableViewCell_initWithFrame___block_invoke;
    v7[3] = &unk_1E872E760;
    objc_copyWeak(&v8, &location);
    v5 = [(VUIDownloadEntityTableViewCell *)v3 registerForTraitChanges:v4 withHandler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __48__VUIDownloadEntityTableViewCell_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained rightImageView];
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
  [v1 setImage:v2];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = VUIDownloadEntityTableViewCell;
  [(VUIDownloadEntityTableViewCell *)&v5 prepareForReuse];
  [(VUIDownloadEntityTableViewCell *)self setRightImageView:0];
  [(VUIDownloadEntityTableViewCell *)self _removeDownloadButtonIfRequired];
  [(VUIDownloadEntityTableViewCell *)self setEpisodeImageView:0];
  [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:0];
  [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderSecondLabel:0];
  [(VUIDownloadEntityTableViewCell *)self setDotSeparatorLabel:0];
  downloadEntity = [(VUIDownloadEntityTableViewCell *)self downloadEntity];
  [downloadEntity setDelegate:0];

  downloadEntity = self->_downloadEntity;
  self->_downloadEntity = 0;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v9.receiver = self;
  v9.super_class = VUIDownloadEntityTableViewCell;
  [(VUIDownloadEntityTableViewCell *)&v9 setSelected:selected animated:animated];
  if ([(VUIDownloadEntityTableViewCell *)self isEditing])
  {
    topSeparatorView = [(VUIDownloadEntityTableViewCell *)self topSeparatorView];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
    [topSeparatorView setBackgroundColor:v6];

    bottomSeparatorView = [(VUIDownloadEntityTableViewCell *)self bottomSeparatorView];
    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
    [bottomSeparatorView setBackgroundColor:v8];
  }
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
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_titleLabel];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setPosterImageView:(id)view
{
  viewCopy = view;
  posterImageView = self->_posterImageView;
  if (posterImageView != viewCopy)
  {
    v8 = viewCopy;
    [(VUIImageView *)posterImageView removeFromSuperview];
    [(VUIImageView *)v8 setUserInteractionEnabled:0];
    objc_storeStrong(&self->_posterImageView, view);
    if (self->_posterImageView)
    {
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_posterImageView];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    viewCopy = v8;
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
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_metaDataHeaderFirstLabel];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
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
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_metaDataHeaderSecondLabel];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setEpisodeImageView:(id)view
{
  viewCopy = view;
  episodeImageView = self->_episodeImageView;
  if (episodeImageView != viewCopy)
  {
    v8 = viewCopy;
    [(VUILibraryEpisodeFrameView *)episodeImageView removeFromSuperview];
    [(VUILibraryEpisodeFrameView *)v8 setUserInteractionEnabled:0];
    objc_storeStrong(&self->_episodeImageView, view);
    if (self->_episodeImageView)
    {
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_episodeImageView];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    viewCopy = v8;
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
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_dotSeparatorLabel];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    labelCopy = v8;
  }
}

- (void)setRightImageView:(id)view
{
  viewCopy = view;
  rightImageView = self->_rightImageView;
  if (rightImageView != viewCopy)
  {
    v8 = viewCopy;
    [(VUIVideosImageView *)rightImageView removeFromSuperview];
    objc_storeStrong(&self->_rightImageView, view);
    if (self->_rightImageView)
    {
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_rightImageView];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    viewCopy = v8;
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
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_topSeparatorView];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
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
      contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView addSubview:self->_bottomSeparatorView];
    }

    [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)setDownloadEntity:(id)entity
{
  entityCopy = entity;
  downloadEntity = self->_downloadEntity;
  if (downloadEntity != entityCopy)
  {
    v7 = entityCopy;
    [(VUIDownloadEntity *)downloadEntity setDelegate:0];
    objc_storeStrong(&self->_downloadEntity, entity);
    entityCopy = v7;
  }
}

- (void)willTransitionToState:(unint64_t)state
{
  v12.receiver = self;
  v12.super_class = VUIDownloadEntityTableViewCell;
  [(VUIDownloadEntityTableViewCell *)&v12 willTransitionToState:?];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __56__VUIDownloadEntityTableViewCell_willTransitionToState___block_invoke;
  v9 = &unk_1E872ECA0;
  selfCopy = self;
  v11 = state == 1;
  v5 = _Block_copy(&v6);
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:0 completion:{0.300000012, v6, v7, v8, v9}];
}

void __56__VUIDownloadEntityTableViewCell_willTransitionToState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rightImageView];
  [v2 setHidden:*(a1 + 40)];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIDownloadEntityTableViewCell *)self _layoutWithSize:1 metricsOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VUIDownloadEntityTableViewCell;
  [(VUIDownloadEntityTableViewCell *)&v4 layoutSubviews];
  [(VUIDownloadEntityTableViewCell *)self bounds];
  Width = CGRectGetWidth(v5);
  [(VUIDownloadEntityTableViewCell *)self bounds];
  [(VUIDownloadEntityTableViewCell *)self _layoutWithSize:0 metricsOnly:Width, CGRectGetHeight(v6)];
}

- (void)downloadEntity:(id)entity numberOfItemsDownloadingDidChange:(id)change
{
  change = [VUIDownloadEntityTableViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:entity, change];
  [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:change];
  [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
}

- (void)downloadEntity:(id)entity numberOfItemsDidChange:(unint64_t)change
{
  change = [VUIDownloadEntityTableViewCell _generateMetaDataHeaderFirstLabelForDownloadEntity:entity, change];
  [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:change];
  [(VUIDownloadEntityTableViewCell *)self setNeedsLayout];
}

- (CGSize)_layoutWithSize:(CGSize)size metricsOnly:(BOOL)only
{
  onlyCopy = only;
  height = size.height;
  width = size.width;
  [(VUIDownloadEntityTableViewCell *)self _configureViewElementsForAX];
  traitCollection = [(VUIDownloadEntityTableViewCell *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  if (isAXEnabled)
  {

    [(VUIDownloadEntityTableViewCell *)self _layoutForCategoryAccessibility:onlyCopy metricsOnly:width, height];
  }

  else
  {

    [(VUIDownloadEntityTableViewCell *)self _layoutForCompact:onlyCopy metricsOnly:width, height];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)_layoutForCategoryAccessibility:(CGSize)accessibility metricsOnly:(BOOL)only
{
  height = accessibility.height;
  width = accessibility.width;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:?];
  v171 = v8;
  v10 = v9;
  [(VUIDownloadEntityTableViewCell *)self _imageHeightForCurrentSizeClass];
  v169 = v11;
  image = [(VUIVideosImageView *)self->_rightImageView image];
  [image size];
  v14 = v13;
  v16 = v15;

  if (![(VUIDownloadEntity *)self->_downloadEntity downloadType]|| [(VUIDownloadEntity *)self->_downloadEntity downloadType]== 3)
  {
    v16 = 28.0;
    v14 = 16.0;
  }

  v17 = MEMORY[0x1E695F060];
  v18 = width - (v171 + v10 + 10.0 + v14);
  [(VUILabel *)self->_titleLabel sizeThatFits:v18, height];
  v166 = v19;
  v21 = v20;
  [(VUILabel *)self->_metaDataHeaderFirstLabel sizeThatFits:v18, height];
  v164 = v23;
  v165 = v22;
  [(VUILabel *)self->_metaDataHeaderSecondLabel sizeThatFits:v18, height];
  v25 = v24;
  v27 = v26;
  [(VUIDownloadButton *)self->_downloadButton sizeToFit];
  traitCollection = [(VUIDownloadEntityTableViewCell *)self traitCollection];
  [VUIUtilities scaleContentSizeValue:traitCollection forTraitCollection:8.0];
  v170 = v29;

  metaDataHeaderFirstLabel = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];

  if (metaDataHeaderFirstLabel)
  {
    metaDataHeaderFirstLabel2 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];
  }

  else
  {
    metaDataHeaderSecondLabel = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderSecondLabel];

    if (!metaDataHeaderSecondLabel)
    {
      goto LABEL_9;
    }

    metaDataHeaderFirstLabel2 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderSecondLabel];
  }

  metaDataHeaderSecondLabel = metaDataHeaderFirstLabel2;
LABEL_9:
  v160 = *v17;
  [(VUILabel *)self->_titleLabel topMarginToLabel:metaDataHeaderSecondLabel withBaselineMargin:21.0];
  v163 = v33;
  if (!only)
  {
    v147 = v25;
    v149 = v16;
    v151 = v14;
    v157 = v10;
    v135 = v27;
    v136 = v21;
    v34 = *MEMORY[0x1E695F058];
    v35 = *(MEMORY[0x1E695F058] + 8);
    v37 = *(MEMORY[0x1E695F058] + 16);
    v36 = *(MEMORY[0x1E695F058] + 24);
    topSeparatorView = self->_topSeparatorView;
    contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView bounds];
    [(VUIBaseView *)topSeparatorView sizeThatFits:CGRectGetWidth(v173) - v171, 1.79769313e308];
    v41 = v40;
    v154 = v42;

    [(VUIDownloadEntityTableViewCell *)self posterImageView];
    v174.origin.x = v171;
    v174.origin.y = v170;
    v168 = v169 * 1.77777778;
    v174.size.width = v169 * 1.77777778;
    v174.size.height = v169;
    MaxY = CGRectGetMaxY(v174);
    titleLabel = [(VUIDownloadEntityTableViewCell *)self titleLabel];

    v162 = v35;
    if (titleLabel)
    {
      v35 = v163 + MaxY;
      v45 = v171;
      v175.origin.x = v171;
      v175.origin.y = v35;
      v46 = v166;
      v175.size.width = v166;
      v175.size.height = v136;
      v161 = CGRectGetMaxY(v175);
      v153 = v136;
    }

    else
    {
      v161 = MaxY;
      v153 = v36;
      v46 = v37;
      v45 = v34;
    }

    v156 = v35;
    v167 = v46;
    metaDataHeaderFirstLabel3 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];

    v142 = v41;
    if (metaDataHeaderFirstLabel3)
    {
      v176.origin.x = v171;
      v176.origin.y = v161;
      v176.size.width = v165;
      v176.size.height = v164;
      v48 = CGRectGetMaxY(v176);
      v49 = v164;
      v139 = v171;
      v50 = v162;
    }

    else
    {
      v48 = v161;
      v50 = v162;
      v49 = v36;
      v165 = v37;
      v161 = v162;
      v139 = v34;
    }

    metaDataHeaderSecondLabel2 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderSecondLabel];

    v52 = v36;
    v53 = v37;
    v54 = v50;
    v55 = v34;
    v56 = v50;
    if (metaDataHeaderSecondLabel2)
    {
      v52 = v135;
      v53 = v147;
      v54 = v48;
      v55 = v171;
    }

    v144 = v55;
    v145 = v54;
    v146 = v53;
    v148 = v52;
    v57 = v36;
    v58 = v37;
    v134 = v34;
    v59 = v154;
    if (self->_rightImageView)
    {
      v60 = [(VUIDownloadEntityTableViewCell *)self contentView:v56];
      [v60 bounds];
      v58 = v151;
      v61 = CGRectGetMaxX(v177) - (v157 + v151);

      if ([(VUIDownloadEntity *)self->_downloadEntity downloadType]&& [(VUIDownloadEntity *)self->_downloadEntity downloadType]!= 3)
      {
        v61 = v61 + (16.0 - v151) * -0.5;
      }

      v134 = v61;
      v178.origin.y = v170;
      v178.origin.x = v171;
      v178.size.width = v169 * 1.77777778;
      v178.size.height = v169;
      v56 = CGRectGetMidY(v178) + v149 * -0.5;
      v57 = v149;
      v59 = v154;
    }

    v140 = v56;
    v141 = v57;
    v133 = v58;
    downloadButton = self->_downloadButton;
    if (downloadButton)
    {
      [(VUIDownloadButton *)downloadButton frame];
      v37 = CGRectGetWidth(v179);
      [(VUIDownloadButton *)self->_downloadButton frame];
      v36 = CGRectGetHeight(v180);
      contentView2 = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView2 bounds];
      v34 = CGRectGetMaxX(v181) - (v157 + v37);
      v182.origin.y = v170;
      v182.origin.x = v171;
      v182.size.width = v169 * 1.77777778;
      v182.size.height = v169;
      v162 = CGRectGetMidY(v182) + v36 * -0.5;
    }

    v150 = v49;
    v152 = v45;
    v159 = v34;
    v158 = v37;
    bottomSeparatorView = self->_bottomSeparatorView;
    contentView3 = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView3 bounds];
    [(VUIBaseView *)bottomSeparatorView sizeThatFits:CGRectGetWidth(v183) - v171, 1.79769313e308];
    v67 = v66;
    v69 = v68;

    v184.origin.x = v171;
    v184.size.height = v169;
    v184.origin.y = v170;
    v184.size.width = v169 * 1.77777778;
    v138 = CGRectGetMaxX(v184) + 16.0;
    contentView4 = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView4 bounds];
    v137 = CGRectGetHeight(v185) - v69;

    effectiveUserInterfaceLayoutDirection = [(VUIDownloadEntityTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    v72 = 0.0;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      contentView5 = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView5 bounds];

      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v126 = v74;
      v127 = v75;
      v143 = v76;
      v155 = v77;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v125 = v78;
      v130 = v80;
      v131 = v79;
      v128 = v81;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v171 = v82;
      v132 = v83;
      v168 = v84;
      v129 = v85;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v139 = v86;
      v161 = v87;
      v165 = v88;
      v150 = v89;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v144 = v90;
      v145 = v91;
      v146 = v92;
      v148 = v93;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v152 = v94;
      v156 = v95;
      v167 = v96;
      v153 = v97;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v99 = v98;
      v140 = v100;
      v141 = v101;
      v103 = v102;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v105 = v104;
      v162 = v106;
      v158 = v107;
      v108 = v125;
      v36 = v109;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v137 = v111;
      v138 = v110;
      v112 = v126;
      v67 = v113;
      v114 = v143;
      v69 = v115;
      v116 = v155;
      v72 = v127;
      v27 = v135;
    }

    else
    {
      v132 = v170;
      v129 = v169;
      v108 = v171;
      v131 = v170;
      v130 = v169 * 1.77777778;
      v128 = v169;
      v112 = v171;
      v99 = v134;
      v27 = v135;
      v105 = v159;
      v116 = v59;
      v114 = v142;
      v103 = v133;
    }

    [(VUISeparatorView *)self->_topSeparatorView setFrame:v112, v72, v114, v116];
    [(VUIImageView *)self->_posterImageView setFrame:v108, v131, v130, v128];
    [(VUILibraryEpisodeFrameView *)self->_episodeImageView setFrame:v171, v132, v168, v129];
    [(VUILabel *)self->_metaDataHeaderFirstLabel setFrame:v139, v161, v165, v150];
    [(VUILabel *)self->_metaDataHeaderSecondLabel setFrame:v144, v145, v146, v148];
    [(VUILabel *)self->_titleLabel setFrame:v152, v156, v167, v153];
    [(VUIVideosImageView *)self->_rightImageView setFrame:v99, v140, v103, v141];
    [(VUIDownloadButton *)self->_downloadButton setFrame:v105, v162, v158, v36];
    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:v138, v137, v67, v69];
    v21 = v136;
  }

  v117 = v169 + 0.0;
  metaDataHeaderFirstLabel4 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];

  if (metaDataHeaderFirstLabel4)
  {
    v117 = v117 + v164;
  }

  metaDataHeaderSecondLabel3 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderSecondLabel];

  if (metaDataHeaderSecondLabel3)
  {
    v117 = v27 + v117;
  }

  titleLabel2 = [(VUIDownloadEntityTableViewCell *)self titleLabel];

  v121 = v21 + v163 + v117;
  if (!titleLabel2)
  {
    v121 = v117;
  }

  v122 = v121 + v170 * 2.0;

  v123 = v160;
  v124 = v122;
  result.height = v124;
  result.width = v123;
  return result;
}

- (CGSize)_layoutForCompact:(CGSize)compact metricsOnly:(BOOL)only
{
  height = compact.height;
  width = compact.width;
  [MEMORY[0x1E69DD2E8] vui_paddingForWindowWidth:?];
  v9 = v8;
  v11 = v10;
  [(VUIDownloadEntityTableViewCell *)self _imageHeightForCurrentSizeClass];
  v13 = v12;
  [(VUIDownloadEntityTableViewCell *)self _verticalPaddingForCurrentSizeClass];
  v192 = v14;
  image = [(VUIVideosImageView *)self->_rightImageView image];
  [image size];
  v17 = v16;
  v19 = v18;

  if ([(VUIDownloadEntity *)self->_downloadEntity downloadType]&& [(VUIDownloadEntity *)self->_downloadEntity downloadType]!= 3)
  {
    v159 = v19;
  }

  else
  {
    v159 = 28.0;
    v17 = 16.0;
  }

  v195 = v13 * 1.77777778;
  v181 = v11;
  downloadButton = self->_downloadButton;
  v21 = v17;
  if (downloadButton)
  {
    [(VUIDownloadButton *)downloadButton sizeToFit];
    [(VUIDownloadButton *)self->_downloadButton frame];
    v21 = CGRectGetWidth(v197);
  }

  v183 = v17;
  v22 = width - (v11 + v9 + v13 * 1.77777778 + 32.0 + 10.0 + v21);
  if ([(VUIDownloadEntityTableViewCell *)self isEditing])
  {
    v23 = v22 + -10.0;
  }

  else
  {
    v23 = v22;
  }

  [(VUILabel *)self->_titleLabel sizeThatFits:v23, height];
  v25 = v24;
  [(VUILabel *)self->_metaDataHeaderFirstLabel sizeThatFits:v23, height];
  v193 = v26;
  v194 = v27;
  [(VUILabel *)self->_metaDataHeaderSecondLabel sizeThatFits:v23, height];
  v29 = v28;
  v185 = v30;
  [(VUILabel *)self->_dotSeparatorLabel sizeThatFits:v23, height];
  v189 = v31;
  v190 = v32;
  metaDataHeaderFirstLabel = self->_metaDataHeaderFirstLabel;
  if (metaDataHeaderFirstLabel || (metaDataHeaderFirstLabel = self->_metaDataHeaderSecondLabel) != 0)
  {
    v34 = metaDataHeaderFirstLabel;
    [(VUILabel *)v34 sizeThatFits:v23, height];
    v36 = v35;
    [(VUILabel *)self->_titleLabel topMarginToLabel:v34 withBaselineMargin:21.0];
    v38 = v37;
  }

  else
  {
    v34 = 0;
    v36 = *(MEMORY[0x1E695F060] + 8);
    v38 = 0.0;
  }

  v39 = v25 + v38 + v36;
  if (!only)
  {
    v163 = v29;
    v187 = v23;
    v191 = v25;
    v149 = v25 + v38 + v36;
    v150 = width;
    v173 = (v13 - v39) * 0.5;
    v40 = *(MEMORY[0x1E695F058] + 8);
    v188 = *MEMORY[0x1E695F058];
    v41 = *(MEMORY[0x1E695F058] + 16);
    v151 = *(MEMORY[0x1E695F058] + 24);
    topSeparatorView = self->_topSeparatorView;
    contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView bounds];
    [(VUIBaseView *)topSeparatorView sizeThatFits:CGRectGetWidth(v198) - v9, 1.79769313e308];
    v177 = v44;
    v179 = v45;

    contentView2 = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView2 bounds];
    v47 = CGRectGetMidY(v199) - v13 * 0.5;

    contentView3 = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView3 bounds];
    v49 = CGRectGetMidY(v200) - v13 * 0.5;

    posterImageView = [(VUIDownloadEntityTableViewCell *)self posterImageView];
    v175 = v49;
    v176 = v47;
    if (posterImageView)
    {
      v51 = v47;
    }

    else
    {
      v51 = v49;
    }

    v201.origin.x = v9;
    v201.origin.y = v51;
    v201.size.width = v13 * 1.77777778;
    v201.size.height = v13;
    v52 = v173 + CGRectGetMinY(v201);
    titleLabel = [(VUIDownloadEntityTableViewCell *)self titleLabel];

    v156 = v40;
    if (titleLabel)
    {
      v202.origin.x = v9;
      v202.origin.y = v51;
      v202.size.width = v13 * 1.77777778;
      v202.size.height = v13;
      v203.origin.x = CGRectGetMaxX(v202) + 16.0;
      x = v203.origin.x;
      v174 = v52;
      v203.origin.y = v52;
      v203.size.width = v187;
      v203.size.height = v191;
      v165 = v38 + CGRectGetMaxY(v203);
      v54 = v151;
    }

    else
    {
      v165 = v52;
      v54 = v151;
      v191 = v151;
      v187 = v41;
      v174 = v40;
      x = v188;
    }

    v204.origin.x = v9;
    v204.origin.y = v51;
    v204.size.width = v13 * 1.77777778;
    v204.size.height = v13;
    v55 = CGRectGetMaxX(v204) + 16.0;
    rect = v51;
    if (self->_metaDataHeaderFirstLabel)
    {
      v205.origin.x = v9;
      v205.origin.y = v51;
      v205.size.height = v13;
      v205.size.width = v13 * 1.77777778;
      MaxX = CGRectGetMaxX(v205);
      v57 = MaxX + 16.0;
      v168 = MaxX + 16.0;
      if (self->_dotSeparatorLabel)
      {
        v206.origin.x = MaxX + 16.0;
        v58 = v165;
        v206.origin.y = v165;
        v170 = v13;
        v59 = v9;
        v206.size.width = v193;
        v206.size.height = v194;
        v60 = CGRectGetMaxX(v206) + 6.0;
        v207.origin.x = v57;
        v207.origin.y = v165;
        v207.size.width = v193;
        v61 = v170;
        v207.size.height = v194;
        MidY = CGRectGetMidY(v207);
        v208.size.width = v189;
        v208.size.height = v190;
        v63 = MidY + v190 * -0.5;
        v208.origin.x = v60;
        v208.origin.y = v63;
        v64 = CGRectGetMaxX(v208);
        v65 = v63;
        v55 = v64 + 6.0;
        v66 = v188;
        v67 = v156;
      }

      else
      {
        v61 = v13;
        v59 = v9;
        v189 = v41;
        v190 = v54;
        v67 = v156;
        v65 = v156;
        v66 = v188;
        v60 = v188;
        v58 = v165;
      }
    }

    else
    {
      v61 = v13;
      v59 = v9;
      v189 = v41;
      v190 = v54;
      v67 = v156;
      v65 = v156;
      v66 = v188;
      v60 = v188;
      v193 = v41;
      v194 = v54;
      v58 = v156;
      v168 = v188;
    }

    v167 = v58;
    v169 = v65;
    v171 = v60;
    v68 = v54;
    v69 = v41;
    v70 = v67;
    v71 = v66;
    v72 = v195;
    if (self->_metaDataHeaderSecondLabel)
    {
      v68 = v185;
      v69 = v163;
      v70 = v165;
      v71 = v55;
    }

    v161 = v71;
    v162 = v70;
    v164 = v69;
    v166 = v68;
    v73 = v54;
    v74 = v41;
    v186 = v67;
    v75 = v66;
    v76 = v59;
    v13 = v61;
    if (self->_rightImageView)
    {
      v77 = [(VUIDownloadEntityTableViewCell *)self contentView:v54];
      [v77 bounds];
      v75 = CGRectGetMaxX(v209) - (v181 + v183);

      if ([(VUIDownloadEntity *)self->_downloadEntity downloadType]&& [(VUIDownloadEntity *)self->_downloadEntity downloadType]!= 3)
      {
        v78 = v195;
        v75 = v75 + (16.0 - v183) * -0.5;
      }

      else
      {
        v78 = v195;
      }

      contentView4 = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView4 bounds];
      v186 = CGRectGetMidY(v210) + v159 * -0.5;

      v73 = v159;
      v74 = v183;
      v72 = v78;
    }

    v158 = v74;
    v160 = v73;
    v80 = self->_downloadButton;
    if (v80)
    {
      [(VUIDownloadButton *)v80 frame];
      v41 = CGRectGetWidth(v211);
      [(VUIDownloadButton *)self->_downloadButton frame];
      v54 = CGRectGetHeight(v212);
      contentView5 = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView5 bounds];
      v188 = CGRectGetMaxX(v213) - (v181 + v41);
      contentView6 = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView6 bounds];
      v67 = CGRectGetMidY(v214) + v54 * -0.5;
    }

    v182 = v75;
    v184 = v41;
    bottomSeparatorView = self->_bottomSeparatorView;
    contentView7 = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView7 bounds];
    [(VUIBaseView *)bottomSeparatorView sizeThatFits:CGRectGetWidth(v215) - v76, 1.79769313e308];
    v155 = v85;
    v87 = v86;

    v216.origin.x = v76;
    v216.origin.y = rect;
    v216.size.width = v72;
    v216.size.height = v13;
    recta = CGRectGetMaxX(v216) + 16.0;
    contentView8 = [(VUIDownloadEntityTableViewCell *)self contentView];
    [contentView8 bounds];
    v157 = v87;
    v152 = CGRectGetHeight(v217) - v87;

    effectiveUserInterfaceLayoutDirection = [(VUIDownloadEntityTableViewCell *)self effectiveUserInterfaceLayoutDirection];
    v90 = 0.0;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      contentView9 = [(VUIDownloadEntityTableViewCell *)self contentView];
      [contentView9 bounds];

      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v142 = v92;
      v143 = v93;
      v178 = v94;
      v180 = v95;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v147 = v97;
      v148 = v96;
      v176 = v98;
      v146 = v99;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v144 = v100;
      v175 = v101;
      v195 = v102;
      v145 = v103;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v167 = v105;
      v168 = v104;
      v193 = v106;
      v194 = v107;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v161 = v108;
      v162 = v109;
      v164 = v110;
      v166 = v111;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      x = v112;
      v174 = v113;
      v187 = v114;
      v191 = v115;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v182 = v116;
      v186 = v117;
      v158 = v118;
      v160 = v119;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v121 = v120;
      v67 = v122;
      v184 = v123;
      v125 = v124;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v152 = v127;
      recta = v126;
      v155 = v128;
      v157 = v129;
      v54 = v125;
      v130 = v180;
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v169 = v132;
      v171 = v131;
      v133 = v142;
      v90 = v143;
      v135 = v134;
      v136 = v178;
      v138 = v137;
      width = v150;
    }

    else
    {
      v147 = v13;
      v148 = v76;
      v133 = v76;
      v145 = v13;
      v146 = v72;
      width = v150;
      v135 = v189;
      v138 = v190;
      v136 = v177;
      v130 = v179;
      v144 = v76;
      v121 = v188;
    }

    [(VUISeparatorView *)self->_topSeparatorView setFrame:v133, v90, v136, v130];
    [(VUIImageView *)self->_posterImageView setFrame:v148, v176, v146, v147];
    [(VUILibraryEpisodeFrameView *)self->_episodeImageView setFrame:v144, v175, v195, v145];
    [(VUILabel *)self->_metaDataHeaderFirstLabel setFrame:v168, v167, v193, v194];
    [(VUILabel *)self->_metaDataHeaderSecondLabel setFrame:v161, v162, v164, v166];
    [(VUILabel *)self->_titleLabel setFrame:x, v174, v187, v191];
    [(VUIVideosImageView *)self->_rightImageView setFrame:v182, v186, v158, v160];
    [(VUIDownloadButton *)self->_downloadButton setFrame:v121, v67, v184, v54];
    [(VUISeparatorView *)self->_bottomSeparatorView setFrame:recta, v152, v155, v157];
    [(VUILabel *)self->_dotSeparatorLabel setFrame:v171, v169, v135, v138];
    v39 = v149;
  }

  if (v39 < v13)
  {
    v39 = v13;
  }

  v139 = v39 + 0.0 + v192 * 2.0;

  v140 = width;
  v141 = v139;
  result.height = v141;
  result.width = v140;
  return result;
}

- (void)_configureViewElementsForAX
{
  traitCollection = [(VUIDownloadEntityTableViewCell *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  dotSeparatorLabel = [(VUIDownloadEntityTableViewCell *)self dotSeparatorLabel];
  [dotSeparatorLabel setHidden:isAXEnabled];
}

- (void)_addMetaDataLabelsIfRequired:(id)required
{
  requiredCopy = required;
  mediaEntities = [requiredCopy mediaEntities];
  firstObject = [mediaEntities firstObject];

  if (![requiredCopy downloadType])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = firstObject;
      rentalExpirationDate = [v15 rentalExpirationDate];
      downloadExpirationDate = [v15 downloadExpirationDate];
      availabilityEndDate = [v15 availabilityEndDate];
      assetController = [v15 assetController];

      state = [assetController state];
      v10 = +[VUIRentalExpirationLabel labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:](VUIRentalExpirationLabel, "labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:", rentalExpirationDate, downloadExpirationDate, availabilityEndDate, [state status]);

      if (v10)
      {
        goto LABEL_11;
      }
    }

    duration = [requiredCopy duration];
    if (duration)
    {
      v21 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
      v22 = [v21 transformedValue:duration];

      v23 = objc_alloc_init(VUITextLayout);
      [(VUITextLayout *)v23 setTextStyle:21];
      [(VUITextLayout *)v23 setFontWeight:0];
      [(VUITextLayout *)v23 setNumberOfLines:1];
      vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      [(VUITextLayout *)v23 setColor:vui_secondaryTextColor];

      metaDataHeaderFirstLabel = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];
      v10 = [VUILabel labelWithString:v22 textLayout:v23 existingLabel:metaDataHeaderFirstLabel];
    }

    else
    {
      v10 = 0;
    }

    [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:v10];
    releaseYear = [requiredCopy releaseYear];
    stringValue = [releaseYear stringValue];

    if (stringValue)
    {
      v36 = objc_alloc_init(VUITextLayout);
      [(VUITextLayout *)v36 setTextStyle:21];
      [(VUITextLayout *)v36 setFontWeight:0];
      [(VUITextLayout *)v36 setNumberOfLines:1];
      vui_secondaryTextColor2 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      [(VUITextLayout *)v36 setColor:vui_secondaryTextColor2];

      metaDataHeaderSecondLabel = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderSecondLabel];
      v39 = [VUILabel labelWithString:stringValue textLayout:v36 existingLabel:metaDataHeaderSecondLabel];

      [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderSecondLabel:v39];
      if (duration)
      {
        v40 = objc_alloc_init(VUITextLayout);
        [(VUITextLayout *)v40 setTextStyle:22];
        vui_secondaryTextColor3 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        [(VUITextLayout *)v40 setColor:vui_secondaryTextColor3];

        [(VUITextLayout *)v40 setNumberOfLines:1];
        dotSeparatorLabel = [(VUIDownloadEntityTableViewCell *)self dotSeparatorLabel];
        v43 = [VUILabel labelWithString:@"·" textLayout:v40 existingLabel:dotSeparatorLabel];

LABEL_20:
        [(VUIDownloadEntityTableViewCell *)self setDotSeparatorLabel:v43];

        goto LABEL_21;
      }
    }

    else
    {
      [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderSecondLabel:0];
      v39 = 0;
    }

    v43 = 0;
    goto LABEL_20;
  }

  if ([requiredCopy downloadType] == 1)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"NUMBER_OF_EPISODES"];
    numberOfMediaItems = [requiredCopy numberOfMediaItems];
    v10 = [v6 localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%d" error:0, objc_msgSend(numberOfMediaItems, "intValue")];

    duration = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)duration setTextStyle:21];
    [(VUITextLayout *)duration setFontWeight:0];
    [(VUITextLayout *)duration setNumberOfLines:0];
    vui_secondaryTextColor4 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)duration setColor:vui_secondaryTextColor4];

    metaDataHeaderFirstLabel2 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];
    stringValue = [VUILabel labelWithString:v10 textLayout:duration existingLabel:metaDataHeaderFirstLabel2];

    [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:stringValue];
LABEL_21:

    goto LABEL_22;
  }

  if ([requiredCopy downloadType] != 3)
  {
    goto LABEL_23;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v26 = firstObject, [v26 rentalExpirationDate], v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "downloadExpirationDate"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "availabilityEndDate"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "assetController"), v30 = objc_claimAutoreleasedReturnValue(), v26, objc_msgSend(v30, "state"), v31 = objc_claimAutoreleasedReturnValue(), +[VUIRentalExpirationLabel labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:](VUIRentalExpirationLabel, "labelForRentalExpirationDate:downloadExpirationDate:contentAvailabilityDate:downloadStatus:", v27, v28, v29, objc_msgSend(v31, "status")), v10 = objc_claimAutoreleasedReturnValue(), v31, v30, v29, v28, v27, !v10))
  {
    v32 = +[VUILocalizationManager sharedInstance];
    v10 = [v32 localizedStringForKey:@"EPISODE_NUMBER"];

    fractionalEpisodeNumber = [requiredCopy fractionalEpisodeNumber];

    if (fractionalEpisodeNumber)
    {
      fractionalEpisodeNumber2 = [requiredCopy fractionalEpisodeNumber];
    }

    else
    {
      episodeNumber = [requiredCopy episodeNumber];

      if (!episodeNumber)
      {
        v45 = 0;
        goto LABEL_29;
      }

      fractionalEpisodeNumber2 = [requiredCopy episodeNumber];
    }

    v45 = fractionalEpisodeNumber2;
LABEL_29:
    v46 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:0, v45];
    if (v45)
    {
      v47 = objc_alloc_init(VUITextLayout);
      [(VUITextLayout *)v47 setTextStyle:21];
      [(VUITextLayout *)v47 setFontWeight:0];
      [(VUITextLayout *)v47 setNumberOfLines:0];
      vui_secondaryTextColor5 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      [(VUITextLayout *)v47 setColor:vui_secondaryTextColor5];

      metaDataHeaderFirstLabel3 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderFirstLabel];
      v50 = [VUILabel labelWithString:v46 textLayout:v47 existingLabel:metaDataHeaderFirstLabel3];
    }

    else
    {
      v50 = 0;
    }

    [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:v50];
    duration2 = [requiredCopy duration];
    if (duration2)
    {
      v62 = v45;
      v52 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
      [v52 transformedValue:duration2];
      v53 = v63 = v46;

      v54 = objc_alloc_init(VUITextLayout);
      [(VUITextLayout *)v54 setTextStyle:21];
      [(VUITextLayout *)v54 setFontWeight:0];
      [(VUITextLayout *)v54 setNumberOfLines:1];
      vui_secondaryTextColor6 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
      [(VUITextLayout *)v54 setColor:vui_secondaryTextColor6];

      metaDataHeaderSecondLabel2 = [(VUIDownloadEntityTableViewCell *)self metaDataHeaderSecondLabel];
      v57 = [VUILabel labelWithString:v53 textLayout:v54 existingLabel:metaDataHeaderSecondLabel2];

      v46 = v63;
      [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderSecondLabel:v57];
      if (v63)
      {
        v58 = objc_alloc_init(VUITextLayout);
        [(VUITextLayout *)v58 setTextStyle:22];
        vui_secondaryTextColor7 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
        [(VUITextLayout *)v58 setColor:vui_secondaryTextColor7];

        [(VUITextLayout *)v58 setNumberOfLines:1];
        dotSeparatorLabel2 = [(VUIDownloadEntityTableViewCell *)self dotSeparatorLabel];
        v61 = [VUILabel labelWithString:@"·" textLayout:v58 existingLabel:dotSeparatorLabel2];

        v46 = v63;
      }

      else
      {
        v61 = 0;
      }

      v45 = v62;
    }

    else
    {
      [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderSecondLabel:0];
      v57 = 0;
      v61 = 0;
    }

    [(VUIDownloadEntityTableViewCell *)self setDotSeparatorLabel:v61];

    goto LABEL_22;
  }

LABEL_11:
  [v10 setDelegate:self];
  [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderFirstLabel:v10];
  [(VUIDownloadEntityTableViewCell *)self setMetaDataHeaderSecondLabel:0];
  [(VUIDownloadEntityTableViewCell *)self setDotSeparatorLabel:0];
LABEL_22:

LABEL_23:
}

- (void)_addDownloadButtonIfRequired:(id)required
{
  requiredCopy = required;
  assetController = [requiredCopy assetController];

  if (assetController)
  {
    downloadButton = [(VUIDownloadEntityTableViewCell *)self downloadButton];
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
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __63__VUIDownloadEntityTableViewCell__addDownloadButtonIfRequired___block_invoke;
      v13 = &unk_1E872F460;
      objc_copyWeak(&v14, &location);
      [(VUIDownloadButton *)v7 setDownloadStateChangeHandler:&v10];
      v9 = [(VUIDownloadEntityTableViewCell *)self contentView:v10];
      [v9 addSubview:v7];

      [(VUIDownloadEntityTableViewCell *)self setDownloadButton:v7];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void __63__VUIDownloadEntityTableViewCell__addDownloadButtonIfRequired___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
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

- (void)_removeDownloadButtonIfRequired
{
  downloadButton = [(VUIDownloadEntityTableViewCell *)self downloadButton];
  if (downloadButton)
  {
    v4 = downloadButton;
    [downloadButton removeFromSuperview];
    [(VUIDownloadEntityTableViewCell *)self setDownloadButton:0];
    [(VUIDownloadEntityTableViewCell *)self setPreviousDownloadState:0];
    downloadButton = v4;
  }
}

- (id)_episodePlaceholderImage
{
  contentView = [(VUIDownloadEntityTableViewCell *)self contentView];
  traitCollection = [contentView traitCollection];
  v4 = +[VUIUtilities placeholderImageResourceName:](VUIUtilities, "placeholderImageResourceName:", [traitCollection userInterfaceStyle]);
  v5 = [VUIImageResourceMap imageForResourceName:v4];

  return v5;
}

- (double)_imageHeightForCurrentSizeClass
{
  vui_currentSizeClass = [MEMORY[0x1E69DD2E8] vui_currentSizeClass];
  result = 54.0;
  if ((vui_currentSizeClass - 3) < 3)
  {
    return 72.0;
  }

  return result;
}

- (double)_verticalPaddingForCurrentSizeClass
{
  vui_currentSizeClass = [MEMORY[0x1E69DD2E8] vui_currentSizeClass];
  result = 8.0;
  if ((vui_currentSizeClass - 3) < 3)
  {
    return 12.0;
  }

  return result;
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
    [(VUITextLayout *)v12 setTextStyle:21];
    [(VUITextLayout *)v12 setFontWeight:0];
    [(VUITextLayout *)v12 setNumberOfLines:0];
    [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  }

  else
  {
    v9 = [v7 localizedStringForKey:@"DOWNLOADING_NUMBER_OF_EPISODES"];
    numberOfMediaItemsDownloading2 = [entityCopy numberOfMediaItemsDownloading];

    v11 = [v6 localizedStringWithValidatedFormat:v9 validFormatSpecifiers:@"%d" error:0, objc_msgSend(numberOfMediaItemsDownloading2, "intValue")];

    v12 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v12 setTextStyle:21];
    [(VUITextLayout *)v12 setFontWeight:0];
    [(VUITextLayout *)v12 setNumberOfLines:0];
    [MEMORY[0x1E69DC888] vui_keyColor];
  }
  v15 = ;
  [(VUITextLayout *)v12 setColor:v15];

  v16 = [VUILabel labelWithString:v11 textLayout:v12 existingLabel:0];

  return v16;
}

- (VUIDownloadEntityTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end