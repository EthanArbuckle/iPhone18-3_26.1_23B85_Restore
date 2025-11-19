@interface SiriUISuggestionsView
- (CGPoint)contentOffset;
- (SiriUISuggestionsView)initWithFrame:(CGRect)a3;
- (SiriUISuggestionsViewDelegate)delegate;
- (double)_headerToLargeSubheaderOffset;
- (double)_headerToSubheaderOffset;
- (double)_suggestionFontSize;
- (double)_suggestionSpacing;
- (id)_createSpringAnimation:(double)a3;
- (int)_heightType;
- (unint64_t)_numberOfSuggestionsToDisplay;
- (void)_animateHeaderIn;
- (void)_animateHeaderOut;
- (void)_animateInSuggestionAtIndex:(unint64_t)a3;
- (void)_animateOutSuggestionAtIndex:(unint64_t)a3;
- (void)_loadLargeSubheaderViewIfNeeded;
- (void)_loadSubheaderViewIfNeeded;
- (void)_loadSuggestionsViewsIfNeeded;
- (void)_setHeaderText:(id)a3;
- (void)_setLargeSubheaderText:(id)a3;
- (void)_setSubheaderText:(id)a3;
- (void)_setSuggestionTexts:(id)a3;
- (void)_updateSuggestions;
- (void)acousticIDSpinnerDidHide:(id)a3;
- (void)animateOutWithCompletion:(id)a3;
- (void)clearCurrentSuggestions;
- (void)layoutSubviews;
- (void)setGuideHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setGuideView:(id)a3;
- (void)setHeaderText:(id)a3;
- (void)setLargeSubheaderText:(id)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setSubheaderText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)showAcousticIDSpinner;
- (void)startSuggesting;
- (void)stopSuggesting;
@end

@implementation SiriUISuggestionsView

- (SiriUISuggestionsView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = SiriUISuggestionsView;
  v3 = [(SiriUISuggestionsView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SiriUISuggestionsView *)v3 setUserInteractionEnabled:0];
    v4->_firstSuggestionPresentation = 1;
    v5 = [MEMORY[0x277D74300] siriui_dynamicTitle0Font];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    contentView = v4->_contentView;
    v4->_contentView = v7;

    [(SiriUISuggestionsView *)v4 addSubview:v4->_contentView];
    v9 = [MEMORY[0x277D60108] label];
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v9;

    v11 = v4->_headerLabel;
    v12 = [MEMORY[0x277D75348] siriui_lightTextColor];
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)v4->_headerLabel setFont:v5];
    [(UILabel *)v4->_headerLabel setNumberOfLines:0];
    [(UIView *)v4->_contentView addSubview:v4->_headerLabel];
    [(UILabel *)v4->_headerLabel setAlpha:0.0];
    v13 = [MEMORY[0x277D60108] label];
    oldHeaderLabel = v4->_oldHeaderLabel;
    v4->_oldHeaderLabel = v13;

    v15 = v4->_oldHeaderLabel;
    v16 = [MEMORY[0x277D75348] siriui_lightTextColor];
    [(UILabel *)v15 setTextColor:v16];

    [(UILabel *)v4->_oldHeaderLabel setFont:v5];
    [(UILabel *)v4->_oldHeaderLabel setNumberOfLines:0];
    [(UIView *)v4->_contentView addSubview:v4->_oldHeaderLabel];
    [(UILabel *)v4->_oldHeaderLabel setAlpha:0.0];
    v17 = objc_alloc_init(MEMORY[0x277CBEB40]);
    pendedSuggestions = v4->_pendedSuggestions;
    v4->_pendedSuggestions = v17;

    v4->_orientation = 0;
    [(SiriUISuggestionsView *)v4 setOrientation:1];
    *&v4->_edgeInsets.top = kSuggestionsViewDirectionalLayoutMargins;
    *&v4->_edgeInsets.bottom = unk_2694DDCF8;
  }

  return v4;
}

- (void)_loadSubheaderViewIfNeeded
{
  if (!self->_subheaderLabel)
  {
    v3 = [MEMORY[0x277D60108] label];
    subheaderLabel = self->_subheaderLabel;
    self->_subheaderLabel = v3;

    v5 = self->_subheaderLabel;
    v6 = [MEMORY[0x277D75348] siriui_lightTextColor];
    [(UILabel *)v5 setTextColor:v6];

    v7 = self->_subheaderLabel;
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)self->_subheaderLabel setNumberOfLines:0];
    [(UIView *)self->_contentView addSubview:self->_subheaderLabel];
    [(UILabel *)self->_subheaderLabel setAlpha:0.0];

    [(SiriUISuggestionsView *)self setNeedsLayout];
  }
}

- (void)_loadLargeSubheaderViewIfNeeded
{
  if (!self->_largeSubheaderLabel)
  {
    v3 = [MEMORY[0x277D60108] label];
    largeSubheaderLabel = self->_largeSubheaderLabel;
    self->_largeSubheaderLabel = v3;

    v5 = self->_largeSubheaderLabel;
    v6 = [MEMORY[0x277D75348] siriui_lightTextColor];
    [(UILabel *)v5 setTextColor:v6];

    v7 = self->_largeSubheaderLabel;
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    [(UILabel *)v7 setFont:v8];

    [(UILabel *)self->_largeSubheaderLabel setNumberOfLines:3];
    [(UIView *)self->_contentView addSubview:self->_largeSubheaderLabel];
    [(UILabel *)self->_largeSubheaderLabel setAlpha:0.0];

    [(SiriUISuggestionsView *)self setNeedsLayout];
  }
}

- (void)_loadSuggestionsViewsIfNeeded
{
  if (!self->_suggestionLabels || !self->_oldSuggestionLabels)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__SiriUISuggestionsView__loadSuggestionsViewsIfNeeded__block_invoke;
    v8[3] = &unk_279C5A588;
    v8[4] = self;
    v3 = MEMORY[0x26D63F900](v8, a2);
    v4 = v3[2]();
    suggestionLabels = self->_suggestionLabels;
    self->_suggestionLabels = v4;

    v6 = (v3[2])(v3);
    oldSuggestionLabels = self->_oldSuggestionLabels;
    self->_oldSuggestionLabels = v6;

    [(SiriUISuggestionsView *)self setNeedsLayout];
  }
}

id __54__SiriUISuggestionsView__loadSuggestionsViewsIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  if (*(*(a1 + 32) + 496))
  {
    v3 = 0;
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    do
    {
      v8 = [objc_alloc(MEMORY[0x277D60108]) initWithFrame:{v4, v5, v6, v7}];
      v9 = [MEMORY[0x277D75348] siriui_lightTextColor];
      [v8 setTextColor:v9];

      v10 = MEMORY[0x277D74300];
      [*(a1 + 32) _suggestionFontSize];
      v11 = [v10 siriui_thinWeightFontWithSize:?];
      [v8 setFont:v11];

      v12 = *(a1 + 32);
      if (*(v12 + 568))
      {
        [v8 setTextColor:?];
        v12 = *(a1 + 32);
      }

      [*(v12 + 408) addSubview:v8];
      [v8 setAlpha:0.0];
      [v2 addObject:v8];

      ++v3;
    }

    while (v3 < *(*(a1 + 32) + 496));
  }

  return v2;
}

- (void)layoutSubviews
{
  v132 = *MEMORY[0x277D85DE8];
  [(UIView *)self recursive_setSemanticContentAttribute:SiriLanguageSemanticContentAttribute()];
  v129.receiver = self;
  v129.super_class = SiriUISuggestionsView;
  [(SiriUISuggestionsView *)&v129 layoutSubviews];
  [(SiriUISuggestionsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SiriUISuggestionsView *)self frame];
  v12 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 contentWidthForSuggestionsView:self];
    v12 = v16;
  }

  [(UIView *)self->_contentView setFrame:v4, v6, v8, v10];
  [(UIView *)self->_contentView frame];
  v117 = v17;
  v18 = v12 - (self->_edgeInsets.leading + self->_edgeInsets.trailing);
  v19 = objc_loadWeakRetained(&self->_delegate);
  v20 = objc_opt_respondsToSelector();

  v21 = 0.0;
  if (v20)
  {
    v22 = objc_loadWeakRetained(&self->_delegate);
    [v22 statusBarHeightForSuggestionsView:self];
    v21 = v23;
  }

  v133.origin.x = v4;
  v133.origin.y = v6;
  v133.size.width = v8;
  v133.size.height = v10;
  v24 = CGRectGetWidth(v133) - v18;
  v25 = [(SiriUISuggestionsHeaderText *)self->_headerText attributedStringForMainScreenTraitCollection];
  [(SiriUISuggestionsView *)self _setHeaderText:v25];

  v116 = v21;
  rect = v8;
  if (SiriUIIsCompactWidth() || SiriUIIsCompactHeight())
  {
    if (SiriUIIsCompactWidth())
    {
      v26 = 122.0 - v21;
      goto LABEL_12;
    }

    v27 = v117 + v21;
    v28 = &SiriUIDefaultHeaderRegularPhoneLeadingRatio;
  }

  else
  {
    v27 = v117 + v21;
    v28 = &SiriUIDefaultHeaderPadScreenLeadingRatio;
  }

  v26 = -(v21 - v27 * *v28);
LABEL_12:
  v29 = v24 * 0.5;
  v30 = objc_loadWeakRetained(&self->_delegate);
  v31 = objc_opt_respondsToSelector();

  if ((v31 & 1) != 0 && (v32 = objc_loadWeakRetained(&self->_delegate), v33 = [v32 suggestionsViewIsInTextInputMode:self], v32, v33) && !SiriUIIsCompactWidth())
  {
    [(UILabel *)self->_headerLabel sizeThatFits:506.0, v117];
    v41 = v112;
    v39 = v113;
    v137.origin.x = v4;
    v137.origin.y = v6;
    v137.size.width = rect;
    v137.size.height = v10;
    v37 = v117;
    v40 = (CGRectGetWidth(v137) + -506.0) * 0.5;
    v34 = [(UILabel *)self->_headerLabel font];
    [v34 ascender];
    v36 = v114;
  }

  else
  {
    v34 = [(UILabel *)self->_headerLabel font];
    [v34 ascender];
    v36 = v35;
    v37 = v117;
    [(UILabel *)self->_headerLabel sizeThatFits:v18, v117];
    v39 = v38;
    v40 = v24 * 0.5;
    v41 = v18;
  }

  v42 = v26 - v36;
  [(UILabel *)self->_headerLabel setFrame:v40, v42, v41, v39];
  if (self->_subheaderLabel)
  {
    v43 = [(SiriUISuggestionsHeaderText *)self->_subheaderText attributedStringForMainScreenTraitCollection];
    [(SiriUISuggestionsView *)self _setSubheaderText:v43];

    [(UILabel *)self->_subheaderLabel sizeThatFits:v18, v37];
    v45 = v44;
    v134.origin.x = v40;
    v134.origin.y = v42;
    v134.size.width = v41;
    v134.size.height = v39;
    MaxY = CGRectGetMaxY(v134);
    [(SiriUISuggestionsView *)self _headerToSubheaderOffset];
    v48 = MaxY + v47;
    v37 = v117;
    [(UILabel *)self->_subheaderLabel setFrame:v29, v48 + 0.0, v18, v45];
  }

  if (self->_largeSubheaderLabel)
  {
    v49 = [(SiriUISuggestionsHeaderText *)self->_subheaderText attributedStringForMainScreenTraitCollection];
    [(SiriUISuggestionsView *)self _setSubheaderText:v49];

    [(UILabel *)self->_largeSubheaderLabel sizeThatFits:v18, v37];
    v51 = v50;
    v135.origin.x = v40;
    v135.origin.y = v42;
    v135.size.width = v41;
    v135.size.height = v39;
    v52 = CGRectGetMaxY(v135);
    [(SiriUISuggestionsView *)self _headerToLargeSubheaderOffset];
    [(UILabel *)self->_largeSubheaderLabel setFrame:v29, v52 + v53 + 0.0, v18, v51];
  }

  v54 = [(SiriUIAcousticIDSpinner *)self->_acousticIDSpinner superview];

  if (v54 == self)
  {
    [(SiriUIAcousticIDSpinner *)self->_acousticIDSpinner sizeThatFits:v18, v37];
    v55 = [MEMORY[0x277D759A0] mainScreen];
    [v55 scale];

    [(UIView *)self->_contentView bounds];
    UIRectCenteredXInRectScale();
    [(SiriUIAcousticIDSpinner *)self->_acousticIDSpinner setFrame:0];
  }

  v56 = [MEMORY[0x277D759A0] mainScreen];
  [v56 scale];
  v57 = floor((v37 + v116) * 0.25);
  if (v58 >= 2.0)
  {
    v59 = (v37 + v116) * 0.25;
  }

  else
  {
    v59 = v57;
  }

  v60 = objc_loadWeakRetained(&self->_delegate);
  v61 = objc_opt_respondsToSelector();

  if (v61)
  {
    v62 = objc_loadWeakRetained(&self->_delegate);
    [v62 statusViewHeightForSuggestionsView:self];
    v64 = v63;

    v37 = v37 - v64;
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v65 = self->_suggestionLabels;
  v66 = [(NSArray *)v65 countByEnumeratingWithState:&v125 objects:v131 count:16];
  v118 = v37;
  v115 = v59;
  if (!v66)
  {
    v69 = 0.0;
    goto LABEL_45;
  }

  v67 = v66;
  v68 = *v126;
  v119 = v37 - v59;
  v69 = 0.0;
  do
  {
    for (i = 0; i != v67; ++i)
    {
      if (*v126 != v68)
      {
        objc_enumerationMutation(v65);
      }

      v71 = *(*(&v125 + 1) + 8 * i);
      [(SiriUISuggestionsView *)self _suggestionSpacing];
      [v71 setNumberOfLines:1];
      v72 = MEMORY[0x277D74300];
      [(SiriUISuggestionsView *)self _suggestionFontSize];
      v73 = [v72 siriui_thinWeightFontWithSize:?];
      [v71 setFont:v73];

      [v71 sizeThatFits:{v18, 1.79769313e308}];
      if (v74 > v18)
      {
        v76 = v75;
        [v71 setNumberOfLines:5];
        [v71 sizeThatFits:{v18, 1.79769313e308}];
        v74 = v77 - v76;
      }

      [(UIView *)self->_contentView bounds];
      UIRectCenteredXInRectScale();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v86 = v69 + v84;
      if (v69 + v84 > v119)
      {
        [v71 setHidden:{1, 0}];
        v87 = [v71 text];

        if (!v87)
        {
          goto LABEL_41;
        }

        pendedSuggestions = self->_pendedSuggestions;
        v89 = [v71 text];
        [(NSMutableOrderedSet *)pendedSuggestions addObject:v89];
        goto LABEL_39;
      }

      v90 = [v71 text];

      if (v90)
      {
        v91 = self->_pendedSuggestions;
        v89 = [v71 text];
        [(NSMutableOrderedSet *)v91 removeObject:v89];
        v69 = v86;
LABEL_39:

        goto LABEL_41;
      }

      v69 = v86;
LABEL_41:
      [v71 setFrame:{v79, v81, v83, v85}];
    }

    v67 = [(NSArray *)v65 countByEnumeratingWithState:&v125 objects:v131 count:16];
  }

  while (v67);
LABEL_45:

  v92 = [MEMORY[0x277D759A0] mainScreen];
  [v92 scale];
  v94 = v93;
  v95 = [MEMORY[0x277D759A0] mainScreen];
  [v95 scale];

  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v96 = self->_suggestionLabels;
  v97 = [(NSArray *)v96 countByEnumeratingWithState:&v121 objects:v130 count:16];
  if (v97)
  {
    v98 = v97;
    v99 = v115 + (v118 - v116 - v115 - v69) * 0.5;
    v100 = floor(v99);
    if (v94 < 2.0)
    {
      v99 = v100;
    }

    v101 = v99 + -10.0;
    v102 = *v122;
    do
    {
      for (j = 0; j != v98; ++j)
      {
        if (*v122 != v102)
        {
          objc_enumerationMutation(v96);
        }

        v104 = *(*(&v121 + 1) + 8 * j);
        [v104 frame];
        v106 = v105;
        v108 = v107;
        v110 = v109;
        [v104 setFrame:?];
        v136.origin.x = v106;
        v136.origin.y = v101;
        v136.size.width = v108;
        v136.size.height = v110;
        v101 = CGRectGetMaxY(v136);
      }

      v98 = [(NSArray *)v96 countByEnumeratingWithState:&v121 objects:v130 count:16];
    }

    while (v98);
  }

  guideView = self->_guideView;
  [(UIView *)self->_contentView bounds];
  [(UIView *)guideView setFrame:?];
}

- (void)_animateHeaderIn
{
  v11 = [(SiriUISuggestionsView *)self _createSpringAnimation:2.0];
  [v11 setKeyPath:@"transform.translation.y"];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:224.0];
  [v11 setFromValue:v3];

  [v11 setToValue:&unk_287A0D528];
  v4 = [(SiriUISuggestionsView *)self _createSpringAnimation:2.0];
  [v4 setFromValue:&unk_287A0D528];
  [v4 setToValue:&unk_287A0D538];
  [(UILabel *)self->_headerLabel setAlpha:1.0];
  [(UILabel *)self->_subheaderLabel setAlpha:1.0];
  [(UILabel *)self->_largeSubheaderLabel setAlpha:1.0];
  [v4 setKeyPath:@"opacity"];
  v5 = [(UILabel *)self->_headerLabel layer];
  [v5 addAnimation:v4 forKey:@"HeaderLabelOpacityAnimation"];

  v6 = [(UILabel *)self->_headerLabel layer];
  [v6 addAnimation:v11 forKey:@"HeaderLabelTranslationAnimation"];

  v7 = [(UILabel *)self->_subheaderLabel layer];
  [v7 addAnimation:v4 forKey:@"HeaderLabelOpacityAnimation"];

  v8 = [(UILabel *)self->_subheaderLabel layer];
  [v8 addAnimation:v11 forKey:@"HeaderLabelTranslationAnimation"];

  v9 = [(UILabel *)self->_largeSubheaderLabel layer];
  [v9 addAnimation:v4 forKey:@"HeaderLabelOpacityAnimation"];

  v10 = [(UILabel *)self->_largeSubheaderLabel layer];
  [v10 addAnimation:v11 forKey:@"HeaderLabelTranslationAnimation"];
}

- (void)_animateHeaderOut
{
  v16 = [(SiriUISuggestionsView *)self _createSpringAnimation:2.0];
  [v16 setKeyPath:@"transform.translation.y"];
  [v16 setFromValue:&unk_287A0D528];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:-564.0];
  [v16 setToValue:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD9E10]);
  LODWORD(v5) = 1036831949;
  LODWORD(v6) = 0.25;
  LODWORD(v7) = 0.25;
  LODWORD(v8) = 1.0;
  v9 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v6 :v5 :v7 :v8];
  [v4 setTimingFunction:v9];
  [v4 setDuration:0.2];
  [v4 setBeginTime:CACurrentMediaTime()];
  [v4 setKeyPath:@"opacity"];
  [v4 setFromValue:&unk_287A0D538];
  [v4 setToValue:&unk_287A0D528];
  [(UILabel *)self->_headerLabel setAlpha:0.0];
  [(UILabel *)self->_subheaderLabel setAlpha:0.0];
  [(UILabel *)self->_largeSubheaderLabel setAlpha:0.0];
  v10 = [(UILabel *)self->_headerLabel layer];
  [v10 addAnimation:v16 forKey:@"HeaderLabelTranslationAnimation"];

  v11 = [(UILabel *)self->_headerLabel layer];
  [v11 addAnimation:v4 forKey:@"HeaderLabelOpacityAnimation"];

  v12 = [(UILabel *)self->_subheaderLabel layer];
  [v12 addAnimation:v16 forKey:@"HeaderLabelTranslationAnimation"];

  v13 = [(UILabel *)self->_subheaderLabel layer];
  [v13 addAnimation:v4 forKey:@"HeaderLabelOpacityAnimation"];

  v14 = [(UILabel *)self->_largeSubheaderLabel layer];
  [v14 addAnimation:v16 forKey:@"HeaderLabelTranslationAnimation"];

  v15 = [(UILabel *)self->_largeSubheaderLabel layer];
  [v15 addAnimation:v4 forKey:@"HeaderLabelOpacityAnimation"];
}

- (void)_animateInSuggestionAtIndex:(unint64_t)a3
{
  v5 = CACurrentMediaTime();
  firstSuggestionPresentation = self->_firstSuggestionPresentation;
  v21 = 3221225472;
  v20 = MEMORY[0x277D85DD0];
  v22 = __53__SiriUISuggestionsView__animateInSuggestionAtIndex___block_invoke;
  v23 = &__block_descriptor_48_e24___CASpringAnimation_8__0l;
  if (firstSuggestionPresentation)
  {
    v7 = v5;
  }

  else
  {
    v7 = v5 + 0.41;
  }

  v24 = v7;
  v25 = a3;
  v8 = MEMORY[0x26D63F900](&v20);
  v12 = v8[2](v8, v9, v10, v11);
  [v12 setKeyPath:{@"transform.translation.y", v20, v21, v22, v23}];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:292.0];
  [v12 setFromValue:v13];

  [v12 setToValue:&unk_287A0D528];
  [v12 setAdditive:1];
  v14 = (v8[2])(v8);
  [v14 setKeyPath:@"opacity"];
  [v14 setFromValue:&unk_287A0D528];
  [v14 setToValue:&unk_287A0D538];
  v15 = [(NSArray *)self->_suggestionLabels objectAtIndex:a3];
  [v15 setAlpha:1.0];
  v16 = objc_alloc_init(MEMORY[0x277CD9E10]);
  [(SiriUISuggestionsView *)self _updateSuggestionsDelay];
  [v16 setDuration:?];
  [v16 setBeginTime:v7];
  [v16 setAdditive:1];
  [v16 setKeyPath:@"transform.translation.y"];
  [v16 setFromValue:&unk_287A0D548];
  [v16 setToValue:&unk_287A0D528];
  v17 = [v15 layer];
  [v17 addAnimation:v16 forKey:@"SuggestionLabelSecondaryTranslationAnimation"];

  v18 = [v15 layer];
  [v18 addAnimation:v12 forKey:@"SuggestionLabelTranslationAnimation"];

  v19 = [v15 layer];
  [v19 addAnimation:v14 forKey:@"SuggestionLabelOpacityAnimation"];
}

id __53__SiriUISuggestionsView__animateInSuggestionAtIndex___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9FA0] animation];
  [v2 setMass:4.0];
  [v2 setStiffness:400.0];
  [v2 setDamping:800.0];
  [v2 setFillMode:*MEMORY[0x277CDA228]];
  [v2 setBeginTime:*(a1 + 32) + (*(a1 + 40) + 1) * 0.03];
  [v2 setDuration:2.0];

  return v2;
}

- (void)_animateOutSuggestionAtIndex:(unint64_t)a3
{
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__SiriUISuggestionsView__animateOutSuggestionAtIndex___block_invoke;
  v15[3] = &__block_descriptor_40_e24___CASpringAnimation_8__0l;
  v15[4] = a3;
  v5 = MEMORY[0x26D63F900](v15, a2);
  v6 = v5[2]();
  v7 = *MEMORY[0x277CDA7B0];
  v8 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
  [v6 setTimingFunction:v8];

  [v6 setKeyPath:@"transform.translation.y"];
  [v6 setFromValue:&unk_287A0D528];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:-584.0];
  [v6 setToValue:v9];

  [v6 setDuration:2.0];
  v10 = objc_alloc_init(MEMORY[0x277CD9E10]);
  v11 = [MEMORY[0x277CD9EF8] functionWithName:v7];
  [v10 setTimingFunction:v11];

  [v10 setKeyPath:@"opacity"];
  [v10 setFromValue:&unk_287A0D538];
  [v10 setToValue:&unk_287A0D528];
  [v10 setFillMode:*MEMORY[0x277CDA228]];
  [v10 setBeginTime:CACurrentMediaTime() + a3 * 0.03];
  [v10 setDuration:0.34];
  v12 = [(NSArray *)self->_suggestionLabels objectAtIndex:a3];
  [v12 setAlpha:0.0];
  v13 = [v12 layer];
  [v13 addAnimation:v6 forKey:@"SuggestionLabelTranslationAnimation"];

  v14 = [v12 layer];
  [v14 addAnimation:v10 forKey:@"SuggestionLabelOpacityAnimation"];
}

id __54__SiriUISuggestionsView__animateOutSuggestionAtIndex___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD9FA0] animation];
  [v2 setMass:4.0];
  [v2 setStiffness:400.0];
  [v2 setDamping:800.0];
  [v2 setFillMode:*MEMORY[0x277CDA228]];
  [v2 setBeginTime:CACurrentMediaTime() + *(a1 + 32) * 0.03];

  return v2;
}

- (void)animateOutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(UILabel *)self->_headerLabel layer];
  [v5 removeAnimationForKey:@"HeaderLabelOpacityAnimation"];

  v6 = [(UILabel *)self->_subheaderLabel layer];
  [v6 removeAnimationForKey:@"HeaderLabelOpacityAnimation"];

  v7 = [(UILabel *)self->_largeSubheaderLabel layer];
  [v7 removeAnimationForKey:@"HeaderLabelOpacityAnimation"];

  [(NSArray *)self->_suggestionLabels enumerateObjectsUsingBlock:&__block_literal_global_8];
  v8 = [(UIView *)self->_guideView layer];
  [v8 removeAnimationForKey:@"GuideOpacityAnimation"];

  v9 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SiriUISuggestionsView_animateOutWithCompletion___block_invoke_2;
  v13[3] = &unk_279C59D78;
  v13[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__SiriUISuggestionsView_animateOutWithCompletion___block_invoke_5;
  v11[3] = &unk_279C5A610;
  v12 = v4;
  v10 = v4;
  [v9 animateWithDuration:v13 animations:v11 completion:0.25];
}

void __50__SiriUISuggestionsView_animateOutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 layer];
  [v2 removeAnimationForKey:@"SuggestionLabelOpacityAnimation"];
}

uint64_t __50__SiriUISuggestionsView_animateOutWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 416) setAlpha:0.0];
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  [*(*(a1 + 32) + 440) setAlpha:0.0];
  [*(*(a1 + 32) + 448) enumerateObjectsUsingBlock:&__block_literal_global_54];
  [*(*(a1 + 32) + 456) enumerateObjectsUsingBlock:&__block_literal_global_56];
  [*(*(a1 + 32) + 536) setAlpha:0.0];
  result = [*(*(a1 + 32) + 488) isShowing];
  if (result)
  {
    v3 = *(*(a1 + 32) + 488);

    return [v3 animateOut];
  }

  return result;
}

uint64_t __50__SiriUISuggestionsView_animateOutWithCompletion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)setGuideView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_guideView removeFromSuperview];
  guideView = self->_guideView;
  self->_guideView = v4;
  v6 = v4;

  [(UIView *)self->_guideView setHidden:1];
  [(UIView *)self->_contentView addSubview:self->_guideView];

  [(SiriUISuggestionsView *)self setNeedsLayout];
}

- (void)setGuideHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(SiriUISuggestionsView *)self isGuideHidden]!= a3)
  {
    [(SiriUISuggestionsView *)self setUserInteractionEnabled:!v5];
    if (v5)
    {
      if (v4)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __49__SiriUISuggestionsView_setGuideHidden_animated___block_invoke;
        v14[3] = &unk_279C59D78;
        v14[4] = self;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __49__SiriUISuggestionsView_setGuideHidden_animated___block_invoke_2;
        v13[3] = &unk_279C59DF0;
        v13[4] = self;
        [MEMORY[0x277D75D18] animateWithDuration:v14 animations:v13 completion:0.25];
      }

      else
      {
        guideView = self->_guideView;

        [(UIView *)guideView setHidden:1];
      }
    }

    else
    {
      [(UIView *)self->_guideView setHidden:0];
      [(UIView *)self->_guideView setAlpha:1.0];
      if (v4)
      {
        v12 = [(SiriUISuggestionsView *)self _createSpringAnimation:2.0];
        [v12 setKeyPath:@"transform.translation.y"];
        v7 = [MEMORY[0x277CCABB0] numberWithDouble:224.0];
        [v12 setFromValue:v7];

        [v12 setToValue:&unk_287A0D528];
        v8 = [(SiriUISuggestionsView *)self _createSpringAnimation:2.0];
        [v8 setFromValue:&unk_287A0D528];
        [v8 setToValue:&unk_287A0D538];
        [v8 setKeyPath:@"opacity"];
        v9 = [(UIView *)self->_guideView layer];
        [v9 addAnimation:v8 forKey:@"GuideOpacityAnimation"];

        v10 = [(UIView *)self->_guideView layer];
        [v10 addAnimation:v12 forKey:@"GuideTranslationAnimation"];
      }
    }
  }
}

- (void)setHeaderText:(id)a3
{
  v9 = a3;
  if (![(SiriUISuggestionsHeaderText *)self->_headerText isEqual:?])
  {
    objc_storeStrong(&self->_headerText, a3);
    [(SiriUISuggestionsView *)self _animateHeaderOut];
    v5 = self->_headerLabel;
    objc_storeStrong(&self->_headerLabel, self->_oldHeaderLabel);
    oldHeaderLabel = self->_oldHeaderLabel;
    self->_oldHeaderLabel = v5;
    v7 = v5;

    v8 = [v9 attributedStringForMainScreenTraitCollection];
    [(SiriUISuggestionsView *)self _setHeaderText:v8];

    [(SiriUISuggestionsView *)self setNeedsLayout];
    [(SiriUISuggestionsView *)self _animateHeaderIn];
  }
}

- (void)setSubheaderText:(id)a3
{
  v6 = a3;
  if (![(SiriUISuggestionsHeaderText *)self->_subheaderText isEqual:?])
  {
    objc_storeStrong(&self->_subheaderText, a3);
    [(SiriUISuggestionsView *)self _loadSubheaderViewIfNeeded];
    v5 = [v6 attributedStringForMainScreenTraitCollection];
    [(SiriUISuggestionsView *)self _setLargeSubheaderText:v5];

    [(SiriUISuggestionsView *)self setNeedsLayout];
  }
}

- (void)setLargeSubheaderText:(id)a3
{
  v6 = a3;
  if (![(SiriUISuggestionsHeaderText *)self->_largeSubheaderText isEqual:?])
  {
    objc_storeStrong(&self->_largeSubheaderText, a3);
    [(SiriUISuggestionsView *)self _loadLargeSubheaderViewIfNeeded];
    v5 = [v6 attributedStringForMainScreenTraitCollection];
    [(SiriUISuggestionsView *)self _setLargeSubheaderText:v5];

    [(SiriUISuggestionsView *)self setNeedsLayout];
  }
}

- (void)_setHeaderText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_headerLabel attributedText];
  v5 = [v4 isEqualToAttributedString:v6];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_headerLabel setAttributedText:v6];
  }
}

- (void)_setSubheaderText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_subheaderLabel attributedText];
  v5 = [v4 isEqualToAttributedString:v6];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_subheaderLabel setAttributedText:v6];
  }
}

- (void)_setLargeSubheaderText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_largeSubheaderLabel attributedText];
  v5 = [v4 isEqualToAttributedString:v6];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_largeSubheaderLabel setAttributedText:v6];
  }
}

- (void)_setSuggestionTexts:(id)a3
{
  v4 = a3;
  [(SiriUISuggestionsView *)self _loadSuggestionsViewsIfNeeded];
  suggestionLabels = self->_suggestionLabels;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__SiriUISuggestionsView__setSuggestionTexts___block_invoke;
  v10[3] = &unk_279C5A638;
  v10[4] = self;
  [(NSArray *)suggestionLabels enumerateObjectsUsingBlock:v10];
  v6 = self->_suggestionLabels;
  objc_storeStrong(&self->_suggestionLabels, self->_oldSuggestionLabels);
  oldSuggestionLabels = self->_oldSuggestionLabels;
  self->_oldSuggestionLabels = v6;
  v8 = v6;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__SiriUISuggestionsView__setSuggestionTexts___block_invoke_2;
  v9[3] = &unk_279C5A660;
  v9[4] = self;
  [v4 enumerateObjectsUsingBlock:v9];
}

void __45__SiriUISuggestionsView__setSuggestionTexts___block_invoke_2(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 496) <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v6 = MEMORY[0x277D74240];
    v7 = a2;
    v8 = objc_alloc_init(v6);
    [v8 setLineSpacing:0.0];
    [v8 setAlignment:1];
    v9 = objc_alloc(MEMORY[0x277CCA898]);
    v14 = *MEMORY[0x277D74118];
    v15[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = [v9 initWithString:v7 attributes:v10];

    [*(a1 + 32) setNeedsLayout];
    if ([*(*(a1 + 32) + 448) count] > a3)
    {
      v12 = [*(*(a1 + 32) + 448) objectAtIndex:a3];
      [v12 setAttributedText:v11];

      v13 = [*(*(a1 + 32) + 448) objectAtIndex:a3];
      [v13 setHidden:0];

      [*(a1 + 32) _animateInSuggestionAtIndex:a3];
    }
  }
}

- (void)startSuggesting
{
  v3 = [(SiriUIAcousticIDSpinner *)self->_acousticIDSpinner isShowing];
  if (!self->_updateSuggestionsTimer && !v3)
  {

    [(SiriUISuggestionsView *)self _updateSuggestions];
  }
}

- (void)stopSuggesting
{
  updateSuggestionsTimer = self->_updateSuggestionsTimer;
  if (updateSuggestionsTimer)
  {
    [(NSTimer *)updateSuggestionsTimer invalidate];
    v4 = self->_updateSuggestionsTimer;
    self->_updateSuggestionsTimer = 0;
  }
}

- (void)clearCurrentSuggestions
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_numberOfSuggestions];
  v5 = v3;
  if (self->_numberOfSuggestions)
  {
    v4 = 0;
    do
    {
      [v3 addObject:&stru_2879FFD58];
      v3 = v5;
      ++v4;
    }

    while (v4 < self->_numberOfSuggestions);
  }

  [(SiriUISuggestionsView *)self _setSuggestionTexts:v3];
}

- (void)_updateSuggestions
{
  updateSuggestionsTimer = self->_updateSuggestionsTimer;
  if (updateSuggestionsTimer)
  {
    [(NSTimer *)updateSuggestionsTimer invalidate];
  }

  firstSuggestionPresentation = self->_firstSuggestionPresentation;
  v5 = MEMORY[0x277CBEBB8];
  [(SiriUISuggestionsView *)self _updateSuggestionsDelay];
  if (!firstSuggestionPresentation)
  {
    v6 = v6 + 0.41;
  }

  v7 = [v5 scheduledTimerWithTimeInterval:self target:sel__updateSuggestions selector:0 userInfo:0 repeats:v6];
  v8 = self->_updateSuggestionsTimer;
  self->_updateSuggestionsTimer = v7;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  v11 = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v10 & 1) != 0 || (v12)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__1;
    v23 = __Block_byref_object_dispose__1;
    v24 = [(NSMutableOrderedSet *)self->_pendedSuggestions array];
    [(NSMutableOrderedSet *)self->_pendedSuggestions removeAllObjects];
    numberOfSuggestions = self->_numberOfSuggestions;
    v14 = numberOfSuggestions - [v20[5] count];
    if (v14 < 1)
    {
LABEL_14:
      _Block_object_dispose(&v19, 8);

      goto LABEL_15;
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __43__SiriUISuggestionsView__updateSuggestions__block_invoke;
    v18[3] = &unk_279C5A6B0;
    v18[4] = self;
    v18[5] = &v19;
    v15 = MEMORY[0x26D63F900](v18);
    if (v10)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 getNextSuggestionsForSuggestionsView:self maxSuggestions:v14 completion:v15];
    }

    else
    {
      if ((v12 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }

      v17 = objc_loadWeakRetained(&self->_delegate);
      v16 = [v17 nextSuggestionsForSuggestionsView:self maxSuggestions:v14];

      (v15)[2](v15, v16);
    }

    goto LABEL_13;
  }

LABEL_15:
  self->_firstSuggestionPresentation = 0;
}

void __43__SiriUISuggestionsView__updateSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SiriUISuggestionsView__updateSuggestions__block_invoke_2;
    block[3] = &unk_279C5A688;
    v10 = *(a1 + 40);
    v5 = v3;
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __43__SiriUISuggestionsView__updateSuggestions__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObjectsFromArray:*(a1 + 32)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 40) _setSuggestionTexts:*(*(*(a1 + 48) + 8) + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 576));
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained((*(a1 + 40) + 576));
    [v7 didShowSuggestionsForSuggestionsView:*(a1 + 40)];
  }
}

- (void)showAcousticIDSpinner
{
  v3 = [(SiriUIAcousticIDSpinner *)self->_acousticIDSpinner superview];

  if (v3 != self)
  {
    [(SiriUISuggestionsView *)self setNeedsLayout];
  }

  if (self->_updateSuggestionsTimer)
  {
    [MEMORY[0x277CD9FF0] begin];
    [(SiriUISuggestionsView *)self stopSuggesting];
    [(SiriUISuggestionsView *)self clearCurrentSuggestions];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__SiriUISuggestionsView_showAcousticIDSpinner__block_invoke;
    v4[3] = &unk_279C59D78;
    v4[4] = self;
    [MEMORY[0x277CD9FF0] setCompletionBlock:v4];
    [MEMORY[0x277CD9FF0] commit];
  }

  else
  {

    [(SiriUISuggestionsView *)self _reallyShowAcousticIDSpinner];
  }
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  [(UILabel *)self->_headerLabel setTextColor:v4];
  [(UILabel *)self->_oldHeaderLabel setTextColor:v4];
  [(UILabel *)self->_subheaderLabel setTextColor:v4];
  [(UILabel *)self->_largeSubheaderLabel setTextColor:v4];
  suggestionLabels = self->_suggestionLabels;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__SiriUISuggestionsView_setTextColor___block_invoke;
  v13[3] = &unk_279C5A638;
  v6 = v4;
  v14 = v6;
  [(NSArray *)suggestionLabels enumerateObjectsUsingBlock:v13];
  oldSuggestionLabels = self->_oldSuggestionLabels;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SiriUISuggestionsView_setTextColor___block_invoke_2;
  v11[3] = &unk_279C5A638;
  v8 = v6;
  v12 = v8;
  [(NSArray *)oldSuggestionLabels enumerateObjectsUsingBlock:v11];
  textColor = self->_textColor;
  self->_textColor = v8;
  v10 = v8;
}

- (void)setOrientation:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_orientation != a3)
  {
    v5 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      orientation = self->_orientation;
      v7 = 136315650;
      v8 = "[SiriUISuggestionsView setOrientation:]";
      v9 = 2048;
      v10 = orientation;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(&dword_26948D000, v5, OS_LOG_TYPE_DEFAULT, "%s %zd from:%zd", &v7, 0x20u);
    }

    self->_orientation = a3;
    self->_numberOfSuggestions = [(SiriUISuggestionsView *)self _numberOfSuggestionsToDisplay];
  }
}

- (int)_heightType
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 _referenceBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(SiriUISuggestionsView *)self _isPortrait];
  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  if (v12)
  {
    Height = CGRectGetHeight(*&v13);
  }

  else
  {
    Height = CGRectGetWidth(*&v13);
  }

  v18 = Height;
  if (Height >= 1366.0 && !SiriUIIsCompactWidth() && !SiriUIIsCompactHeight())
  {
    return 6;
  }

  if (v18 >= 768.0 && !SiriUIIsCompactWidth() && !SiriUIIsCompactHeight())
  {
    return 5;
  }

  if (v18 >= 736.0)
  {
    return 4;
  }

  if (v18 >= 667.0)
  {
    return 3;
  }

  if (v18 >= 568.0)
  {
    return 2;
  }

  return v18 > 414.0;
}

- (double)_suggestionSpacing
{
  v3 = [(SiriUISuggestionsView *)self _heightType];
  v4 = 0.0;
  if (v3 > 2)
  {
    if ((v3 - 5) < 2)
    {
      if ([(SiriUISuggestionsView *)self _isPortrait])
      {
        v4 = 70.0;
      }

      else
      {
        v4 = 60.0;
      }
    }

    else
    {
      v5 = 44.0;
      if (v3 != 4)
      {
        v5 = 0.0;
      }

      if (v3 == 3)
      {
        v4 = 54.0;
      }

      else
      {
        v4 = v5;
      }
    }
  }

  else
  {
    if (!v3)
    {
LABEL_5:
      v4 = 44.0;
      goto LABEL_16;
    }

    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_16;
      }

      goto LABEL_5;
    }

    v4 = 37.0;
  }

LABEL_16:
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v7 = floor(v4);
  if (v8 < 2.0)
  {
    v4 = v7;
  }

  return v4;
}

- (unint64_t)_numberOfSuggestionsToDisplay
{
  v2 = [(SiriUISuggestionsView *)self _heightType];
  if (v2 > 6)
  {
    return 0;
  }

  else
  {
    return qword_2694DDD08[v2];
  }
}

- (double)_headerToSubheaderOffset
{
  if ([(SiriUISuggestionsView *)self _isPadHeightType])
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 5.0;
  }

  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 scale];
  v4 = ceil(v2);
  if (v5 < 2.0)
  {
    v2 = v4;
  }

  return v2;
}

- (double)_headerToLargeSubheaderOffset
{
  [(SiriUISuggestionsView *)self _isPadHeightType];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];

  return 10.0;
}

- (double)_suggestionFontSize
{
  v2 = [(SiriUISuggestionsView *)self _heightType];
  result = 24.0;
  if (v2 <= 4)
  {
    return dbl_2694DDD40[v2];
  }

  return result;
}

- (id)_createSpringAnimation:(double)a3
{
  v4 = [MEMORY[0x277CD9FA0] animation];
  [v4 setRemovedOnCompletion:0];
  [v4 setMass:4.0];
  [v4 setStiffness:400.0];
  [v4 setDamping:800.0];
  [v4 setFillMode:*MEMORY[0x277CDA228]];
  [v4 setBeginTime:CACurrentMediaTime()];
  [v4 setDuration:a3];

  return v4;
}

- (void)acousticIDSpinnerDidHide:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 suggestionsView:self didHideVibrantView:v7];
  }
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (SiriUISuggestionsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end