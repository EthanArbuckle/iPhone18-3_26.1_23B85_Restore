@interface VUIEpisodeDetailView
+ (CGSize)_episodeFrameImageSizeForDetailView:(id)view withViewSize:(CGSize)size;
+ (void)configureEpisodeDetailView:(id)view withMedia:(id)media viewSize:(CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (VUIEpisodeDetailView)initWithFrame:(CGRect)frame;
- (VUIEpisodeDetailViewDelegate)episodeViewDelegate;
- (double)_descriptionBottomMarginWithBaselineMargin:(double)margin;
- (double)_descriptionTopMarginWithBaselineMargin:(double)margin otherFont:(id)font;
- (double)_seasonMargin;
- (void)_configureDotSeparator;
- (void)_configureViewElementsForAX;
- (void)didTapButtonForEpisodeFrameView:(id)view;
- (void)layoutSubviews;
- (void)setContentDescriptionView:(id)view;
- (void)setEpisodeNumberLabel:(id)label;
- (void)setEpisodeTitleLabel:(id)label;
- (void)setImageFrameView:(id)view;
- (void)setMediaBadgeTagsView:(id)view;
- (void)setReleaseDateLabel:(id)label;
- (void)setSeasonNumberLabel:(id)label;
- (void)updateProgress;
@end

@implementation VUIEpisodeDetailView

+ (CGSize)_episodeFrameImageSizeForDetailView:(id)view withViewSize:(CGSize)size
{
  width = size.width;
  if ([VUIUtilities isIpadInterface:view])
  {
    v5 = width + -48.0;
  }

  else
  {
    v5 = width;
  }

  [VUIUtilities imageSizeWithAspectRatio:1.77777778 scaleToSize:v5, 0.0];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (void)configureEpisodeDetailView:(id)view withMedia:(id)media viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  mediaCopy = media;
  [viewCopy setMediaItem:mediaCopy];
  imageFrameView = [viewCopy imageFrameView];
  if (imageFrameView)
  {
    imageFrameView2 = [viewCopy imageFrameView];
  }

  else
  {
    imageFrameView2 = [[VUILibraryEpisodeFrameView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v12 = imageFrameView2;

  [self _episodeFrameImageSizeForDetailView:viewCopy withViewSize:{width, height}];
  [VUILibraryEpisodeFrameView configureEpisodeFrameView:v12 withMedia:mediaCopy layout:1 imageSize:?];
  v69 = v12;
  [viewCopy setImageFrameView:v12];
  v13 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v13 setTextStyle:+[VUIUtilities isIpadInterface]^ 1];
  [(VUITextLayout *)v13 setFontWeight:10];
  vui_primaryTextColor = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v13 setColor:vui_primaryTextColor];

  [(VUITextLayout *)v13 setNumberOfLines:2];
  title = [mediaCopy title];
  episodeTitleLabel = [viewCopy episodeTitleLabel];
  v17 = [VUILabel labelWithString:title textLayout:v13 existingLabel:episodeTitleLabel];
  [viewCopy setEpisodeTitleLabel:v17];

  v18 = objc_alloc_init(VUITextLayout);
  if (+[VUIUtilities isIpadInterface])
  {
    v19 = 15;
  }

  else
  {
    v19 = 17;
  }

  [(VUITextLayout *)v18 setTextStyle:v19];
  [(VUITextLayout *)v18 setFontWeight:10];
  vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v18 setColor:vui_secondaryTextColor];

  [(VUITextLayout *)v18 setNumberOfLines:1];
  seasonNumber = [mediaCopy seasonNumber];
  v22 = seasonNumber;
  v23 = &unk_1F5E5D968;
  if (seasonNumber)
  {
    v23 = seasonNumber;
  }

  v24 = v23;

  v25 = MEMORY[0x1E696AEC0];
  v26 = +[VUILocalizationManager sharedInstance];
  v27 = [v26 localizedStringForKey:@"SEASON_%@"];
  v28 = [v25 stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:0, v24];

  localizedUppercaseString = [v28 localizedUppercaseString];

  seasonNumberLabel = [viewCopy seasonNumberLabel];
  v68 = localizedUppercaseString;
  v31 = [VUILabel labelWithString:localizedUppercaseString textLayout:v18 existingLabel:seasonNumberLabel];
  [viewCopy setSeasonNumberLabel:v31];

  v32 = objc_alloc_init(VUITextLayout);
  if (+[VUIUtilities isIpadInterface])
  {
    v33 = 15;
  }

  else
  {
    v33 = 17;
  }

  [(VUITextLayout *)v32 setTextStyle:v33];
  [(VUITextLayout *)v32 setFontWeight:10];
  vui_secondaryTextColor2 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v32 setColor:vui_secondaryTextColor2];

  [(VUITextLayout *)v32 setNumberOfLines:1];
  v35 = MEMORY[0x1E696AEC0];
  v36 = +[VUILocalizationManager sharedInstance];
  v37 = [v36 localizedStringForKey:@"EPISODE_%@"];
  episodeNumber = [mediaCopy episodeNumber];
  v39 = [v35 stringWithValidatedFormat:v37 validFormatSpecifiers:@"%@" error:0, episodeNumber];
  localizedUppercaseString2 = [v39 localizedUppercaseString];

  episodeNumberLabel = [viewCopy episodeNumberLabel];
  v67 = localizedUppercaseString2;
  v42 = [VUILabel labelWithString:localizedUppercaseString2 textLayout:v32 existingLabel:episodeNumberLabel];
  [viewCopy setEpisodeNumberLabel:v42];

  v43 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v43 setTextStyle:21];
  [(VUITextLayout *)v43 setFontWeight:0];
  vui_primaryTextColor2 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v43 setColor:vui_primaryTextColor2];

  [(VUITextLayout *)v43 setNumberOfLines:1];
  releaseDate = [mediaCopy releaseDate];
  if (releaseDate)
  {
    v46 = [MEMORY[0x1E696AB78] localizedStringFromDate:releaseDate dateStyle:2 timeStyle:0];
    releaseDateLabel = [viewCopy releaseDateLabel];
    v48 = [VUILabel labelWithString:v46 textLayout:v43 existingLabel:releaseDateLabel];
    [viewCopy setReleaseDateLabel:v48];
  }

  contentDescription = [mediaCopy contentDescription];
  v50 = [contentDescription length];

  if (v50)
  {
    v51 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v51 setTextStyle:21];
    [(VUITextLayout *)v51 setFontWeight:0];
    vui_secondaryTextColor3 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v51 setColor:vui_secondaryTextColor3];

    vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUITextLayout *)v51 setSeeMoreTextColor:vui_keyColor];

    [(VUITextLayout *)v51 setNumberOfLines:0];
    contentDescription2 = [mediaCopy contentDescription];
    contentDescriptionView = [viewCopy contentDescriptionView];
    v56 = [VUIFocusableTextView textViewWithString:contentDescription2 textLayout:v51 existingTextView:contentDescriptionView];

    contentDescription3 = [mediaCopy contentDescription];
    v58 = contentDescription3;
    if (contentDescription3)
    {
      v59 = contentDescription3;
    }

    else
    {
      v59 = &stru_1F5DB25C0;
    }

    v60 = [(VUITextLayout *)v51 attributedStringWithString:v59];

    [v56 setDescriptionText:v60];
    v61 = [MEMORY[0x1E69DB878] vui_fontFromTextStyle:-[VUITextLayout textStyle](v51 fontWeight:"textStyle") fontSize:0 fontWidth:0 symbolicTraits:{0, 0.0}];
    [viewCopy setContentDescriptionFont:v61];

    [viewCopy setContentDescriptionView:v56];
  }

  v62 = [[VUIMediaTagsViewLayout alloc] initWithType:11];
  v63 = [VUIMediaTagsView alloc];
  v64 = [(VUIMediaTagsView *)v63 initWithFrame:v62 layout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v65 = [[VUIMediaTagsViewHelper alloc] initWithVUIMediaItem:mediaCopy];
  tagsViewDictionary = [(VUIMediaTagsViewHelper *)v65 tagsViewDictionary];
  [(VUIMediaTagsView *)v64 updateWithMetadata:tagsViewDictionary];

  [viewCopy setMediaBadgeTagsView:v64];
}

- (VUIEpisodeDetailView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = VUIEpisodeDetailView;
  v3 = [(VUIEpisodeDetailView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIEpisodeDetailView *)v3 setBackgroundColor:vui_primaryDynamicBackgroundColor];

    [(VUIEpisodeDetailView *)v3 setShowsVerticalScrollIndicator:0];
    [(VUIEpisodeDetailView *)v3 setShowsHorizontalScrollIndicator:0];
    [(VUIEpisodeDetailView *)v3 setAlwaysBounceVertical:1];
  }

  return v3;
}

- (void)setImageFrameView:(id)view
{
  viewCopy = view;
  imageFrameView = self->_imageFrameView;
  if (imageFrameView != viewCopy)
  {
    v8 = viewCopy;
    [(VUILibraryEpisodeFrameView *)imageFrameView removeFromSuperview];
    [(VUILibraryEpisodeFrameView *)self->_imageFrameView setDelegate:0];
    objc_storeStrong(&self->_imageFrameView, view);
    v7 = self->_imageFrameView;
    if (v7)
    {
      [(VUILibraryEpisodeFrameView *)v7 setDelegate:self];
      [(VUIEpisodeDetailView *)self addSubview:self->_imageFrameView];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)setEpisodeTitleLabel:(id)label
{
  labelCopy = label;
  episodeTitleLabel = self->_episodeTitleLabel;
  if (episodeTitleLabel != labelCopy)
  {
    v7 = labelCopy;
    [(VUILabel *)episodeTitleLabel removeFromSuperview];
    objc_storeStrong(&self->_episodeTitleLabel, label);
    if (self->_episodeTitleLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    labelCopy = v7;
  }
}

- (void)setSeasonNumberLabel:(id)label
{
  labelCopy = label;
  seasonNumberLabel = self->_seasonNumberLabel;
  if (seasonNumberLabel != labelCopy)
  {
    v7 = labelCopy;
    [(VUILabel *)seasonNumberLabel removeFromSuperview];
    objc_storeStrong(&self->_seasonNumberLabel, label);
    if (self->_seasonNumberLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
      [(VUIEpisodeDetailView *)self _configureDotSeparator];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    labelCopy = v7;
  }
}

- (void)setEpisodeNumberLabel:(id)label
{
  labelCopy = label;
  episodeNumberLabel = self->_episodeNumberLabel;
  if (episodeNumberLabel != labelCopy)
  {
    v7 = labelCopy;
    [(VUILabel *)episodeNumberLabel removeFromSuperview];
    objc_storeStrong(&self->_episodeNumberLabel, label);
    if (self->_episodeNumberLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
      [(VUIEpisodeDetailView *)self _configureDotSeparator];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    labelCopy = v7;
  }
}

- (void)setReleaseDateLabel:(id)label
{
  labelCopy = label;
  releaseDateLabel = self->_releaseDateLabel;
  if (releaseDateLabel != labelCopy)
  {
    v7 = labelCopy;
    [(VUILabel *)releaseDateLabel removeFromSuperview];
    objc_storeStrong(&self->_releaseDateLabel, label);
    if (self->_releaseDateLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    labelCopy = v7;
  }
}

- (void)setMediaBadgeTagsView:(id)view
{
  viewCopy = view;
  mediaBadgeTagsView = self->_mediaBadgeTagsView;
  v7 = viewCopy;
  if (mediaBadgeTagsView != viewCopy)
  {
    [(VUIMediaTagsView *)mediaBadgeTagsView removeFromSuperview];
    objc_storeStrong(&self->_mediaBadgeTagsView, view);
    if (self->_mediaBadgeTagsView)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
    }
  }
}

- (void)setContentDescriptionView:(id)view
{
  viewCopy = view;
  contentDescriptionView = self->_contentDescriptionView;
  if (contentDescriptionView != viewCopy)
  {
    [(VUIFocusableTextView *)contentDescriptionView removeFromSuperview];
    [(TVFocusableTextView *)self->_contentDescriptionView setSelectionHandler:0];
    objc_storeStrong(&self->_contentDescriptionView, view);
    if (self->_contentDescriptionView)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
      objc_initWeak(&location, self);
      v7 = self->_contentDescriptionView;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __50__VUIEpisodeDetailView_setContentDescriptionView___block_invoke;
      v11 = &unk_1E87347E0;
      objc_copyWeak(&v12, &location);
      [(TVFocusableTextView *)v7 setSelectionHandler:&v8];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout:v8];
  }
}

void __50__VUIEpisodeDetailView_setContentDescriptionView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained contentDescriptionView];
  [v1 setMaximumNumberOfLines:0];

  [WeakRetained bounds];
  [WeakRetained sizeThatFits:{v2, v3}];
  [WeakRetained setContentSize:?];
  [WeakRetained setNeedsLayout];
}

- (void)layoutSubviews
{
  v165.receiver = self;
  v165.super_class = VUIEpisodeDetailView;
  [(VUIEpisodeDetailView *)&v165 layoutSubviews];
  [(VUIEpisodeDetailView *)self _configureViewElementsForAX];
  traitCollection = [(VUIEpisodeDetailView *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  [(VUIEpisodeDetailView *)self safeAreaInsets];
  v6 = v5;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v8 = v7;
  v10 = v9;
  [(VUIEpisodeDetailView *)self bounds];
  [VUIEpisodeDetailView _episodeFrameImageSizeForDetailView:self withViewSize:v11, v12];
  v162 = v13;
  v15 = v14;
  v16 = +[VUIUtilities isIpadInterface];
  if (v16)
  {
    v17 = 24.0;
  }

  else
  {
    v17 = v10;
  }

  if (v16)
  {
    v8 = 24.0;
    v18 = 24.0;
  }

  else
  {
    v18 = v6;
  }

  v163 = v18;
  if (v16)
  {
    v19 = 24.0;
  }

  else
  {
    v19 = 0.0;
  }

  seasonNumberLabel = self->_seasonNumberLabel;
  [(VUIEpisodeDetailView *)self _seasonMargin];
  [(VUILabel *)seasonNumberLabel topMarginWithBaselineMargin:?];
  v160 = v21;
  episodeNumberLabel = self->_episodeNumberLabel;
  [(VUIEpisodeDetailView *)self _seasonMargin];
  [(VUILabel *)episodeNumberLabel topMarginWithBaselineMargin:?];
  v155 = v23;
  mediaBadgeTagsView = self->_mediaBadgeTagsView;
  [(VUIEpisodeDetailView *)self bounds];
  [(VUIBaseView *)mediaBadgeTagsView sizeThatFits:CGRectGetWidth(v166), 1.79769313e308];
  v136 = v25;
  v154 = v26;
  v27 = self->_seasonNumberLabel;
  [(VUIEpisodeDetailView *)self bounds];
  [(VUILabel *)v27 sizeThatFits:CGRectGetWidth(v167) - (v8 + v17), 1.79769313e308];
  v29 = v28;
  v31 = v30;
  v32 = self->_episodeNumberLabel;
  [(VUIEpisodeDetailView *)self bounds];
  [(VUILabel *)v32 sizeThatFits:CGRectGetWidth(v168) - (v8 + v17), 1.79769313e308];
  v158 = v34;
  v159 = v33;
  dotSeparatorLabel = self->_dotSeparatorLabel;
  [(VUIEpisodeDetailView *)self bounds];
  v139 = v8 + v17;
  v36 = v15;
  [(VUILabel *)dotSeparatorLabel sizeThatFits:CGRectGetWidth(v169) - (v8 + v17), 1.79769313e308];
  v38 = v37;
  v40 = v39;
  v170.size.width = v162;
  v170.origin.x = v163;
  v170.origin.y = v19;
  rect = v36;
  v170.size.height = v36;
  v41 = v160 + CGRectGetMaxY(v170);
  v171.origin.x = v8;
  v171.origin.y = v41;
  v171.size.width = v29;
  v171.size.height = v31;
  MaxX = CGRectGetMaxX(v171);
  v172.origin.x = v8;
  v172.origin.y = v41;
  v172.size.width = v29;
  v172.size.height = v31;
  v43 = CGRectGetMidY(v172) + v40 * -0.5;
  v150 = v29;
  v151 = v19;
  v148 = v40;
  v149 = v31;
  v146 = v41;
  v147 = v38;
  v144 = v43;
  v145 = MaxX;
  if (isAXEnabled)
  {
    v173.origin.x = v8;
    v173.origin.y = v41;
    v173.size.width = v29;
    v173.size.height = v31;
    v156 = v160 + CGRectGetMaxY(v173);
    v157 = v8;
  }

  else
  {
    v44 = MaxX;
    v45 = v38;
    v46 = v40;
    v157 = CGRectGetMaxX(*(&v43 - 1));
    v174.size.width = v162;
    v174.origin.x = v163;
    v174.origin.y = v19;
    v174.size.height = rect;
    v156 = v155 + CGRectGetMaxY(v174);
  }

  episodeTitleLabel = self->_episodeTitleLabel;
  [(VUIEpisodeDetailView *)self bounds];
  [(VUILabel *)episodeTitleLabel sizeThatFits:CGRectGetWidth(v175) - v139, 1.79769313e308];
  v49 = v48;
  v51 = v50;
  v52 = self->_episodeTitleLabel;
  v53 = self->_episodeNumberLabel;
  v54 = +[VUIUtilities isIpadInterface];
  v55 = 32.0;
  if (v54)
  {
    v55 = 40.0;
  }

  [(VUILabel *)v52 topMarginToLabel:v53 withBaselineMargin:v55];
  v57 = v56;
  v176.origin.y = v156;
  v176.origin.x = v157;
  v176.size.height = v158;
  v176.size.width = v159;
  v58 = v57 + CGRectGetMaxY(v176);
  releaseDateLabel = self->_releaseDateLabel;
  [(VUIEpisodeDetailView *)self bounds];
  [(VUILabel *)releaseDateLabel sizeThatFits:CGRectGetWidth(v177) - v139, 1.79769313e308];
  v61 = v60;
  v63 = v62;
  [(VUILabel *)self->_releaseDateLabel topMarginToLabel:self->_episodeTitleLabel withBaselineMargin:28.0];
  v65 = v64;
  v178.origin.x = v8;
  v178.origin.y = v58;
  v178.size.width = v49;
  v178.size.height = v51;
  v66 = v65 + CGRectGetMaxY(v178);
  [(VUILabel *)self->_episodeTitleLabel bottomMarginWithBaselineMargin:28.0];
  v137 = v67 - v154;
  v179.origin.x = v8;
  v179.origin.y = v66;
  v179.size.width = v61;
  v68 = v63;
  v179.size.height = v63;
  v69 = CGRectGetMaxX(v179) + 5.0;
  v180.origin.x = v8;
  v141 = v58;
  v142 = v51;
  v180.origin.y = v58;
  v180.size.width = v49;
  v180.size.height = v51;
  MaxY = CGRectGetMaxY(v180);
  v71 = self->_releaseDateLabel;
  v72 = v71 == 0;
  v73 = v71 != 0;
  if (v72)
  {
    v74 = 0;
  }

  else
  {
    v74 = isAXEnabled;
  }

  if ((v73 & ~isAXEnabled) != 0)
  {
    v75 = v69;
  }

  else
  {
    v75 = v8;
  }

  v161 = v75;
  v143 = v49;
  if (v74 == 1)
  {
    v181.origin.x = v8;
    v181.origin.y = v66;
    v181.size.width = v61;
    v181.size.height = v68;
    MaxY = CGRectGetMaxY(v181);
    v161 = v8;
  }

  v76 = v61;
  v77 = v68;
  v78 = v137 + MaxY;
  contentDescriptionView = self->_contentDescriptionView;
  [(VUIEpisodeDetailView *)self bounds];
  [(TVFocusableTextView *)contentDescriptionView sizeThatFits:CGRectGetWidth(v182) - v139, 1.79769313e308];
  v135 = v80;
  v82 = v81;
  font = [(VUILabel *)self->_releaseDateLabel font];
  [(VUIEpisodeDetailView *)self _descriptionTopMarginWithBaselineMargin:font otherFont:28.0];
  v85 = v84;

  v183.origin.x = v8;
  v183.origin.y = v66;
  v140 = v76;
  v183.size.width = v76;
  v183.size.height = v77;
  v86 = CGRectGetMaxY(v183);
  v87 = v136;
  v138 = v77;
  if (!self->_releaseDateLabel || (v88 = v85 + v86, isAXEnabled) && self->_mediaBadgeTagsView)
  {
    [(VUIEpisodeDetailView *)self _descriptionTopMarginWithBaselineMargin:0 otherFont:28.0];
    v90 = v89;
    v184.origin.x = v161;
    v184.origin.y = v78;
    v184.size.width = v136;
    v184.size.height = v154;
    v88 = v90 + CGRectGetMaxY(v184);
  }

  if ([(VUIEpisodeDetailView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    [(VUIEpisodeDetailView *)self bounds];
    v130 = v82;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v164 = v91;
    v152 = v92;
    v162 = v93;
    rect = v94;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v134 = v95;
    v146 = v96;
    v149 = v98;
    v150 = v97;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v144 = v100;
    v145 = v99;
    v147 = v101;
    v148 = v102;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v156 = v104;
    v157 = v103;
    v158 = v106;
    v159 = v105;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v133 = v107;
    v141 = v108;
    v142 = v109;
    v143 = v110;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v132 = v111;
    v113 = v112;
    v138 = v115;
    v140 = v114;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v161 = v116;
    v131 = v117;
    v119 = v118;
    v66 = v113;
    v87 = v120;
    VUIRectWithFlippedOriginRelativeToBoundingRect();
    v8 = v121;
    v122 = v164;
    v88 = v123;
    v124 = v152;
    v126 = v125;
    v82 = v127;
  }

  else
  {
    v132 = v8;
    v133 = v8;
    v134 = v8;
    v122 = v163;
    v124 = v151;
    v126 = v135;
    v131 = v78;
    v119 = v154;
  }

  [(VUILibraryEpisodeFrameView *)self->_imageFrameView setFrame:v122, v124, v162, rect, *&v130];
  [(VUILabel *)self->_seasonNumberLabel setFrame:v134, v146, v150, v149];
  [(VUILabel *)self->_dotSeparatorLabel setFrame:v145, v144, v147, v148];
  [(VUILabel *)self->_episodeNumberLabel setFrame:v157, v156, v159, v158];
  [(VUILabel *)self->_episodeTitleLabel setFrame:v133, v141, v143, v142];
  [(VUILabel *)self->_releaseDateLabel setFrame:v132, v66, v140, v138];
  [(VUIMediaTagsView *)self->_mediaBadgeTagsView setFrame:v161, v131, v87, v119];
  [(TVFocusableTextView *)self->_contentDescriptionView setFrame:v8, v88, v126, v82];
  [(VUIEpisodeDetailView *)self bounds];
  Width = CGRectGetWidth(v185);
  v186.size.width = v126;
  v129 = Width;
  v186.origin.x = v8;
  v186.origin.y = v88;
  v186.size.height = v82;
  [(VUIEpisodeDetailView *)self setContentSize:v129, CGRectGetMaxY(v186)];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [MEMORY[0x1E69DD2E8] vui_padding];
  v7 = v6;
  v9 = v8;
  [VUIEpisodeDetailView _episodeFrameImageSizeForDetailView:self withViewSize:width, height];
  v11 = v10 + 0.0;
  seasonNumberLabel = self->_seasonNumberLabel;
  [(VUIEpisodeDetailView *)self _seasonMargin];
  [(VUILabel *)seasonNumberLabel topMarginWithBaselineMargin:?];
  v14 = v11 + v13;
  v15 = width - (v7 + v9);
  [(VUILabel *)self->_seasonNumberLabel sizeThatFits:v15, 1.79769313e308];
  v17 = v14 + v16;
  traitCollection = [(VUIEpisodeDetailView *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  if (isAXEnabled)
  {
    episodeNumberLabel = self->_episodeNumberLabel;
    [(VUIEpisodeDetailView *)self _seasonMargin];
    [(VUILabel *)episodeNumberLabel topMarginWithBaselineMargin:?];
    v22 = v17 + v21;
    [(VUILabel *)self->_episodeNumberLabel sizeThatFits:v15, 1.79769313e308];
    v17 = v22 + v23;
  }

  episodeTitleLabel = self->_episodeTitleLabel;
  v25 = self->_seasonNumberLabel;
  v26 = +[VUIUtilities isIpadInterface];
  v27 = 32.0;
  if (v26)
  {
    v27 = 40.0;
  }

  [(VUILabel *)episodeTitleLabel topMarginToLabel:v25 withBaselineMargin:v27];
  v29 = v17 + v28;
  [(VUILabel *)self->_episodeTitleLabel sizeThatFits:v15, 1.79769313e308];
  v31 = v29 + v30;
  [(VUILabel *)self->_releaseDateLabel topMarginToLabel:self->_episodeTitleLabel withBaselineMargin:28.0];
  v33 = v31 + v32;
  [(VUILabel *)self->_releaseDateLabel sizeThatFits:v15, 1.79769313e308];
  v35 = v33 + v34;
  font = [(VUILabel *)self->_releaseDateLabel font];
  [(VUIEpisodeDetailView *)self _descriptionTopMarginWithBaselineMargin:font otherFont:28.0];
  v38 = v35 + v37;

  [(TVFocusableTextView *)self->_contentDescriptionView sizeThatFits:v15, 1.79769313e308];
  v40 = v38 + v39;
  if (+[VUIUtilities isIpadInterface])
  {
    v41 = v40 + 48.0;
  }

  else
  {
    v41 = v40;
  }

  v42 = width;
  result.height = v41;
  result.width = v42;
  return result;
}

- (void)updateProgress
{
  imageFrameView = [(VUIEpisodeDetailView *)self imageFrameView];
  mediaItem = [(VUIEpisodeDetailView *)self mediaItem];
  [imageFrameView updateProgress:mediaItem];
}

- (void)_configureDotSeparator
{
  if (self->_seasonNumberLabel && self->_episodeNumberLabel)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", @"·"];
    v3 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v3 setTextStyle:22];
    vui_secondaryTextColor = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v3 setColor:vui_secondaryTextColor];

    [(VUITextLayout *)v3 setNumberOfLines:1];
    v5 = [VUILabel labelWithString:v7 textLayout:v3 existingLabel:self->_dotSeparatorLabel];
    dotSeparatorLabel = self->_dotSeparatorLabel;
    self->_dotSeparatorLabel = v5;

    [(VUIEpisodeDetailView *)self addSubview:self->_dotSeparatorLabel];
  }
}

- (double)_descriptionTopMarginWithBaselineMargin:(double)margin otherFont:(id)font
{
  fontCopy = font;
  contentDescriptionFont = [(VUIEpisodeDetailView *)self contentDescriptionFont];
  traitCollection = [(VUIEpisodeDetailView *)self traitCollection];
  if (fontCopy)
  {
    [contentDescriptionFont topMarginToFont:fontCopy withBaselineMargin:traitCollection traitCollection:margin];
  }

  else
  {
    [contentDescriptionFont topMarginWithBaselineMargin:traitCollection traitCollection:margin];
  }

  v10 = v9;

  return v10;
}

- (double)_descriptionBottomMarginWithBaselineMargin:(double)margin
{
  contentDescriptionFont = [(VUIEpisodeDetailView *)self contentDescriptionFont];
  traitCollection = [(VUIEpisodeDetailView *)self traitCollection];
  [contentDescriptionFont bottomMarginWithBaselineMargin:traitCollection traitCollection:margin];
  v8 = v7;

  return v8;
}

- (void)didTapButtonForEpisodeFrameView:(id)view
{
  WeakRetained = objc_loadWeakRetained(&self->_episodeViewDelegate);
  [WeakRetained didTapPlay];
}

- (void)_configureViewElementsForAX
{
  traitCollection = [(VUIEpisodeDetailView *)self traitCollection];
  isAXEnabled = [traitCollection isAXEnabled];

  dotSeparatorLabel = [(VUIEpisodeDetailView *)self dotSeparatorLabel];
  [dotSeparatorLabel setHidden:isAXEnabled];
}

- (double)_seasonMargin
{
  traitCollection = [(VUIEpisodeDetailView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  result = 15.0;
  if (!userInterfaceIdiom)
  {
    result = 20.0;
  }

  if (userInterfaceIdiom == 1)
  {
    return 24.0;
  }

  return result;
}

- (VUIEpisodeDetailViewDelegate)episodeViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_episodeViewDelegate);

  return WeakRetained;
}

@end