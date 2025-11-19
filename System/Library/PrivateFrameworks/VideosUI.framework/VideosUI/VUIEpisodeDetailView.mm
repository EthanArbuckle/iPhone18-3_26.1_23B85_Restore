@interface VUIEpisodeDetailView
+ (CGSize)_episodeFrameImageSizeForDetailView:(id)a3 withViewSize:(CGSize)a4;
+ (void)configureEpisodeDetailView:(id)a3 withMedia:(id)a4 viewSize:(CGSize)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIEpisodeDetailView)initWithFrame:(CGRect)a3;
- (VUIEpisodeDetailViewDelegate)episodeViewDelegate;
- (double)_descriptionBottomMarginWithBaselineMargin:(double)a3;
- (double)_descriptionTopMarginWithBaselineMargin:(double)a3 otherFont:(id)a4;
- (double)_seasonMargin;
- (void)_configureDotSeparator;
- (void)_configureViewElementsForAX;
- (void)didTapButtonForEpisodeFrameView:(id)a3;
- (void)layoutSubviews;
- (void)setContentDescriptionView:(id)a3;
- (void)setEpisodeNumberLabel:(id)a3;
- (void)setEpisodeTitleLabel:(id)a3;
- (void)setImageFrameView:(id)a3;
- (void)setMediaBadgeTagsView:(id)a3;
- (void)setReleaseDateLabel:(id)a3;
- (void)setSeasonNumberLabel:(id)a3;
- (void)updateProgress;
@end

@implementation VUIEpisodeDetailView

+ (CGSize)_episodeFrameImageSizeForDetailView:(id)a3 withViewSize:(CGSize)a4
{
  width = a4.width;
  if ([VUIUtilities isIpadInterface:a3])
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

+ (void)configureEpisodeDetailView:(id)a3 withMedia:(id)a4 viewSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v70 = a3;
  v9 = a4;
  [v70 setMediaItem:v9];
  v10 = [v70 imageFrameView];
  if (v10)
  {
    v11 = [v70 imageFrameView];
  }

  else
  {
    v11 = [[VUILibraryEpisodeFrameView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v12 = v11;

  [a1 _episodeFrameImageSizeForDetailView:v70 withViewSize:{width, height}];
  [VUILibraryEpisodeFrameView configureEpisodeFrameView:v12 withMedia:v9 layout:1 imageSize:?];
  v69 = v12;
  [v70 setImageFrameView:v12];
  v13 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v13 setTextStyle:+[VUIUtilities isIpadInterface]^ 1];
  [(VUITextLayout *)v13 setFontWeight:10];
  v14 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v13 setColor:v14];

  [(VUITextLayout *)v13 setNumberOfLines:2];
  v15 = [v9 title];
  v16 = [v70 episodeTitleLabel];
  v17 = [VUILabel labelWithString:v15 textLayout:v13 existingLabel:v16];
  [v70 setEpisodeTitleLabel:v17];

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
  v20 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v18 setColor:v20];

  [(VUITextLayout *)v18 setNumberOfLines:1];
  v21 = [v9 seasonNumber];
  v22 = v21;
  v23 = &unk_1F5E5D968;
  if (v21)
  {
    v23 = v21;
  }

  v24 = v23;

  v25 = MEMORY[0x1E696AEC0];
  v26 = +[VUILocalizationManager sharedInstance];
  v27 = [v26 localizedStringForKey:@"SEASON_%@"];
  v28 = [v25 stringWithValidatedFormat:v27 validFormatSpecifiers:@"%@" error:0, v24];

  v29 = [v28 localizedUppercaseString];

  v30 = [v70 seasonNumberLabel];
  v68 = v29;
  v31 = [VUILabel labelWithString:v29 textLayout:v18 existingLabel:v30];
  [v70 setSeasonNumberLabel:v31];

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
  v34 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
  [(VUITextLayout *)v32 setColor:v34];

  [(VUITextLayout *)v32 setNumberOfLines:1];
  v35 = MEMORY[0x1E696AEC0];
  v36 = +[VUILocalizationManager sharedInstance];
  v37 = [v36 localizedStringForKey:@"EPISODE_%@"];
  v38 = [v9 episodeNumber];
  v39 = [v35 stringWithValidatedFormat:v37 validFormatSpecifiers:@"%@" error:0, v38];
  v40 = [v39 localizedUppercaseString];

  v41 = [v70 episodeNumberLabel];
  v67 = v40;
  v42 = [VUILabel labelWithString:v40 textLayout:v32 existingLabel:v41];
  [v70 setEpisodeNumberLabel:v42];

  v43 = objc_alloc_init(VUITextLayout);
  [(VUITextLayout *)v43 setTextStyle:21];
  [(VUITextLayout *)v43 setFontWeight:0];
  v44 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  [(VUITextLayout *)v43 setColor:v44];

  [(VUITextLayout *)v43 setNumberOfLines:1];
  v45 = [v9 releaseDate];
  if (v45)
  {
    v46 = [MEMORY[0x1E696AB78] localizedStringFromDate:v45 dateStyle:2 timeStyle:0];
    v47 = [v70 releaseDateLabel];
    v48 = [VUILabel labelWithString:v46 textLayout:v43 existingLabel:v47];
    [v70 setReleaseDateLabel:v48];
  }

  v49 = [v9 contentDescription];
  v50 = [v49 length];

  if (v50)
  {
    v51 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v51 setTextStyle:21];
    [(VUITextLayout *)v51 setFontWeight:0];
    v52 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v51 setColor:v52];

    v53 = [MEMORY[0x1E69DC888] vui_keyColor];
    [(VUITextLayout *)v51 setSeeMoreTextColor:v53];

    [(VUITextLayout *)v51 setNumberOfLines:0];
    v54 = [v9 contentDescription];
    v55 = [v70 contentDescriptionView];
    v56 = [VUIFocusableTextView textViewWithString:v54 textLayout:v51 existingTextView:v55];

    v57 = [v9 contentDescription];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      v59 = &stru_1F5DB25C0;
    }

    v60 = [(VUITextLayout *)v51 attributedStringWithString:v59];

    [v56 setDescriptionText:v60];
    v61 = [MEMORY[0x1E69DB878] vui_fontFromTextStyle:-[VUITextLayout textStyle](v51 fontWeight:"textStyle") fontSize:0 fontWidth:0 symbolicTraits:{0, 0.0}];
    [v70 setContentDescriptionFont:v61];

    [v70 setContentDescriptionView:v56];
  }

  v62 = [[VUIMediaTagsViewLayout alloc] initWithType:11];
  v63 = [VUIMediaTagsView alloc];
  v64 = [(VUIMediaTagsView *)v63 initWithFrame:v62 layout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v65 = [[VUIMediaTagsViewHelper alloc] initWithVUIMediaItem:v9];
  v66 = [(VUIMediaTagsViewHelper *)v65 tagsViewDictionary];
  [(VUIMediaTagsView *)v64 updateWithMetadata:v66];

  [v70 setMediaBadgeTagsView:v64];
}

- (VUIEpisodeDetailView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = VUIEpisodeDetailView;
  v3 = [(VUIEpisodeDetailView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
    [(VUIEpisodeDetailView *)v3 setBackgroundColor:v4];

    [(VUIEpisodeDetailView *)v3 setShowsVerticalScrollIndicator:0];
    [(VUIEpisodeDetailView *)v3 setShowsHorizontalScrollIndicator:0];
    [(VUIEpisodeDetailView *)v3 setAlwaysBounceVertical:1];
  }

  return v3;
}

- (void)setImageFrameView:(id)a3
{
  v5 = a3;
  imageFrameView = self->_imageFrameView;
  if (imageFrameView != v5)
  {
    v8 = v5;
    [(VUILibraryEpisodeFrameView *)imageFrameView removeFromSuperview];
    [(VUILibraryEpisodeFrameView *)self->_imageFrameView setDelegate:0];
    objc_storeStrong(&self->_imageFrameView, a3);
    v7 = self->_imageFrameView;
    if (v7)
    {
      [(VUILibraryEpisodeFrameView *)v7 setDelegate:self];
      [(VUIEpisodeDetailView *)self addSubview:self->_imageFrameView];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (void)setEpisodeTitleLabel:(id)a3
{
  v5 = a3;
  episodeTitleLabel = self->_episodeTitleLabel;
  if (episodeTitleLabel != v5)
  {
    v7 = v5;
    [(VUILabel *)episodeTitleLabel removeFromSuperview];
    objc_storeStrong(&self->_episodeTitleLabel, a3);
    if (self->_episodeTitleLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setSeasonNumberLabel:(id)a3
{
  v5 = a3;
  seasonNumberLabel = self->_seasonNumberLabel;
  if (seasonNumberLabel != v5)
  {
    v7 = v5;
    [(VUILabel *)seasonNumberLabel removeFromSuperview];
    objc_storeStrong(&self->_seasonNumberLabel, a3);
    if (self->_seasonNumberLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
      [(VUIEpisodeDetailView *)self _configureDotSeparator];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setEpisodeNumberLabel:(id)a3
{
  v5 = a3;
  episodeNumberLabel = self->_episodeNumberLabel;
  if (episodeNumberLabel != v5)
  {
    v7 = v5;
    [(VUILabel *)episodeNumberLabel removeFromSuperview];
    objc_storeStrong(&self->_episodeNumberLabel, a3);
    if (self->_episodeNumberLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
      [(VUIEpisodeDetailView *)self _configureDotSeparator];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setReleaseDateLabel:(id)a3
{
  v5 = a3;
  releaseDateLabel = self->_releaseDateLabel;
  if (releaseDateLabel != v5)
  {
    v7 = v5;
    [(VUILabel *)releaseDateLabel removeFromSuperview];
    objc_storeStrong(&self->_releaseDateLabel, a3);
    if (self->_releaseDateLabel)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
    }

    [(VUIEpisodeDetailView *)self setNeedsLayout];
    v5 = v7;
  }
}

- (void)setMediaBadgeTagsView:(id)a3
{
  v5 = a3;
  mediaBadgeTagsView = self->_mediaBadgeTagsView;
  v7 = v5;
  if (mediaBadgeTagsView != v5)
  {
    [(VUIMediaTagsView *)mediaBadgeTagsView removeFromSuperview];
    objc_storeStrong(&self->_mediaBadgeTagsView, a3);
    if (self->_mediaBadgeTagsView)
    {
      [(VUIEpisodeDetailView *)self addSubview:?];
    }
  }
}

- (void)setContentDescriptionView:(id)a3
{
  v5 = a3;
  contentDescriptionView = self->_contentDescriptionView;
  if (contentDescriptionView != v5)
  {
    [(VUIFocusableTextView *)contentDescriptionView removeFromSuperview];
    [(TVFocusableTextView *)self->_contentDescriptionView setSelectionHandler:0];
    objc_storeStrong(&self->_contentDescriptionView, a3);
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
  v3 = [(VUIEpisodeDetailView *)self traitCollection];
  v4 = [v3 isAXEnabled];

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
  if (v4)
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
    v74 = v4;
  }

  if ((v73 & ~v4) != 0)
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
  v83 = [(VUILabel *)self->_releaseDateLabel font];
  [(VUIEpisodeDetailView *)self _descriptionTopMarginWithBaselineMargin:v83 otherFont:28.0];
  v85 = v84;

  v183.origin.x = v8;
  v183.origin.y = v66;
  v140 = v76;
  v183.size.width = v76;
  v183.size.height = v77;
  v86 = CGRectGetMaxY(v183);
  v87 = v136;
  v138 = v77;
  if (!self->_releaseDateLabel || (v88 = v85 + v86, v4) && self->_mediaBadgeTagsView)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v18 = [(VUIEpisodeDetailView *)self traitCollection];
  v19 = [v18 isAXEnabled];

  if (v19)
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
  v36 = [(VUILabel *)self->_releaseDateLabel font];
  [(VUIEpisodeDetailView *)self _descriptionTopMarginWithBaselineMargin:v36 otherFont:28.0];
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
  v4 = [(VUIEpisodeDetailView *)self imageFrameView];
  v3 = [(VUIEpisodeDetailView *)self mediaItem];
  [v4 updateProgress:v3];
}

- (void)_configureDotSeparator
{
  if (self->_seasonNumberLabel && self->_episodeNumberLabel)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", @"·"];
    v3 = objc_alloc_init(VUITextLayout);
    [(VUITextLayout *)v3 setTextStyle:22];
    v4 = [MEMORY[0x1E69DC888] vui_secondaryTextColor];
    [(VUITextLayout *)v3 setColor:v4];

    [(VUITextLayout *)v3 setNumberOfLines:1];
    v5 = [VUILabel labelWithString:v7 textLayout:v3 existingLabel:self->_dotSeparatorLabel];
    dotSeparatorLabel = self->_dotSeparatorLabel;
    self->_dotSeparatorLabel = v5;

    [(VUIEpisodeDetailView *)self addSubview:self->_dotSeparatorLabel];
  }
}

- (double)_descriptionTopMarginWithBaselineMargin:(double)a3 otherFont:(id)a4
{
  v6 = a4;
  v7 = [(VUIEpisodeDetailView *)self contentDescriptionFont];
  v8 = [(VUIEpisodeDetailView *)self traitCollection];
  if (v6)
  {
    [v7 topMarginToFont:v6 withBaselineMargin:v8 traitCollection:a3];
  }

  else
  {
    [v7 topMarginWithBaselineMargin:v8 traitCollection:a3];
  }

  v10 = v9;

  return v10;
}

- (double)_descriptionBottomMarginWithBaselineMargin:(double)a3
{
  v5 = [(VUIEpisodeDetailView *)self contentDescriptionFont];
  v6 = [(VUIEpisodeDetailView *)self traitCollection];
  [v5 bottomMarginWithBaselineMargin:v6 traitCollection:a3];
  v8 = v7;

  return v8;
}

- (void)didTapButtonForEpisodeFrameView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_episodeViewDelegate);
  [WeakRetained didTapPlay];
}

- (void)_configureViewElementsForAX
{
  v3 = [(VUIEpisodeDetailView *)self traitCollection];
  v4 = [v3 isAXEnabled];

  v5 = [(VUIEpisodeDetailView *)self dotSeparatorLabel];
  [v5 setHidden:v4];
}

- (double)_seasonMargin
{
  v2 = [(VUIEpisodeDetailView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = 15.0;
  if (!v3)
  {
    result = 20.0;
  }

  if (v3 == 1)
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