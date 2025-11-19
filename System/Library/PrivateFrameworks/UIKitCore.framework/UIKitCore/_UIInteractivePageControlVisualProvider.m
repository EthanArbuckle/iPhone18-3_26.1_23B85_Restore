@interface _UIInteractivePageControlVisualProvider
- (BOOL)_indicatorModeForPage:(id *)a1;
- (BOOL)_isPageWithinPermittedDisplayedRange:(_BOOL8)result;
- (BOOL)_isPageWithinValidJoggingOffset:(uint64_t)a1;
- (BOOL)_supportsExpandedIndicator;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)supportsContinuousInteraction;
- (CGPoint)previousTouchLocation;
- (CGRect)indicatorFrameForPage:(int64_t)a3;
- (CGSize)indicatorSizeForImage:(id)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeForNumberOfPages:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_contentTransformForActiveState:(int)a3;
- (double)_indicatorScaleForPage:(uint64_t)a1;
- (double)_indicatorSpacing;
- (double)_intrinsicContentSizeWithPageControlSize:(double)a3 includeExpandedActiveIndicator:(double)a4;
- (double)_layoutSizeForIndicator:(double)a3 progress:;
- (double)_layoutSizeForIndicator:(id *)a1;
- (double)_preciseIndicatorPageForPoint:(double)a3;
- (id)_hasActiveExpandedIndicator;
- (id)_indicatorColorForEnabled:(id *)a1;
- (id)_numberOfVisibleIndicatorsFittingContentLengthForStartIndex:(id *)result;
- (id)_resolvedVisualEffect;
- (id)_updateIndicatorMode;
- (id)_visibleLeftIndicator;
- (id)_visibleRightIndicator;
- (id)backgroundView;
- (id)customActiveIndicatorImageForPage:(int64_t)a3;
- (id)customIndicatorImageForPage:(int64_t)a3;
- (id)preferredActiveIndicatorImage;
- (id)preferredIndicatorImage;
- (uint64_t)_allowsPreciseTargetPageForTap:(uint64_t)a1;
- (uint64_t)_hasContentScaling;
- (uint64_t)_pageForExpandedIndicator;
- (uint64_t)_updateCurrentPlatterMode;
- (unint64_t)maxVisibleIndicators;
- (void)_installBackgroundViewIfNeeded;
- (void)_setDisplayedPage:(void *)a3 completion:;
- (void)_transitionIndicatorForPage:(uint64_t)a3 toEnabled:;
- (void)_updateCurrentPage:(void *)a3 completion:;
- (void)_updateIndicatorTintColor;
- (void)_updateReuseQueue;
- (void)configureIndicator:(id)a3 atPage:(int64_t)a4;
- (void)configureIndicatorImagesForIndicator:(id)a3 atPage:(int64_t)a4;
- (void)didScrubPageControl:(id)a3;
- (void)didTapPageControl:(id)a3;
- (void)didUpdateBackgroundEffect;
- (void)didUpdateBackgroundStyle;
- (void)didUpdateCurrentPageProgress;
- (void)didUpdateCustomLayoutValues;
- (void)didUpdateInteractionTypeAvailability;
- (void)didUpdateLayoutDirection;
- (void)didUpdateNumberOfPages;
- (void)didUpdatePageProgress;
- (void)displayLinkTicked:(id)a3;
- (void)invalidateIndicators;
- (void)layoutSubviews;
- (void)prepare;
- (void)pruneArchivedSubviews:(id)a3;
- (void)resetSuccessiveTapInfo;
- (void)setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3;
- (void)setBackgroundView:(id)a3;
- (void)setCustomActiveIndicatorImage:(id)a3 forPage:(int64_t)a4;
- (void)setCustomIndicatorImage:(id)a3 forPage:(int64_t)a4;
- (void)setPage:(int64_t)a3 interactionState:(int64_t)a4;
- (void)setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3;
- (void)setPlatterExpanded:(BOOL)a3;
- (void)setPreciseTouchedPage:(double)a3;
- (void)setPreferredActiveIndicatorImage:(id)a3;
- (void)setPreferredIndicatorImage:(id)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)traitCollectionDidChangeOnSubtree:(id)a3;
- (void)updateDisplayedPageToCurrentPage;
- (void)updateScrubbingGestureRecognizer;
@end

@implementation _UIInteractivePageControlVisualProvider

- (double)_indicatorSpacing
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 8);
  if ((*(v1 + 468) & 4) != 0)
  {
    return *(v1 + 488);
  }

  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  result = 8.0;
  if (v3 == 5)
  {
    return 12.0;
  }

  return result;
}

- (void)_updateReuseQueue
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 312);
    v3 = *(a1 + 320);
    v4 = [*(a1 + 8) numberOfPages];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [a1 indicatorFeed];
    v6 = [v5 indicators];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = fmax((v2 - 2), 0.0);
      v10 = fmin((v2 + v3 + 2), v4);
      v11 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 page] < v9 || objc_msgSend(v13, "page") >= v10)
          {
            [v13 invalidate];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v14 = [a1 indicatorFeed];
    [v14 updateReuseQueue];
  }
}

- (uint64_t)_pageForExpandedIndicator
{
  if (!a1)
  {
    return 0;
  }

  if ([(_UIInteractivePageControlVisualProvider *)a1 _hasActiveExpandedIndicator])
  {
    v3 = [a1 continuousDisplayedPage];
    [v3 value];
    v1 = v4;
  }

  return v1;
}

- (id)_hasActiveExpandedIndicator
{
  if (result)
  {
    v1 = result;
    v2 = [result[1] progress];

    if (v2)
    {
      return ([v1 isScrubbing] ^ 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)layoutSubviews
{
  v273 = *MEMORY[0x1E69E9840];
  v271.receiver = self;
  v271.super_class = _UIInteractivePageControlVisualProvider;
  [(_UIPageControlVisualProvider *)&v271 layoutSubviews];
  if (![(UIPageControl *)self->super._pageControl numberOfPages])
  {
    return;
  }

  v3 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  v4 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  v5 = [(UIPageControl *)self->super._pageControl progress];

  [(UIView *)self->super._pageControl bounds];
  v8 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _intrinsicContentSizeWithPageControlSize:v6 includeExpandedActiveIndicator:v7];
  v10 = v9;
  v11 = 0.0;
  if ([(UIPageControl *)self->super._pageControl numberOfPages]> self->_numberOfVisibleIndicators)
  {
    v12 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    [v12 joggingDistance];
    v11 = v13;
  }

  v14 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
  [v14 presentationValue];
  v16 = v11 * v15 + (1.0 - v15) * 0.0;

  [(UIView *)self->super._pageControl bounds];
  v19 = v18 + v17 * 0.5;
  v22 = v21 + v20 * 0.5;
  v262 = [(_UIInteractivePageControlVisualProvider *)self _indicatorSpacing];
  v23 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  if (v23 >= 2)
  {
    v24 = v22;
  }

  else
  {
    v24 = v19;
  }

  v25 = v16 + v24;
  if (v23 >= 2)
  {
    v22 = v25;
  }

  else
  {
    v19 = v25;
  }

  [(UIView *)self->super._pageControl _currentScreenScale];
  UIRectCenteredAboutPointScale(0.0, 0.0, v8, v10, v19, v22, v26);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v35 setBounds:{0.0, 0.0, v32, v34}];

  v36 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v36 setCenter:{v28 + v32 * 0.5, v30 + v34 * 0.5}];

  v37 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  v38 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v38 contentSizeForNumberOfPages:-[UIPageControl numberOfPages](self->super._pageControl hasExpandedActiveIndicator:{"numberOfPages"), v5 != 0}];
  if (v37 >= 2)
  {
    v41 = v40;
  }

  else
  {
    v41 = v39;
  }

  v42 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v42 bounds];
  v44 = v43;
  v46 = v45;

  if (v3 < 2)
  {
    v44 = v41;
  }

  else
  {
    v46 = v41;
  }

  v47 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  [v47 setBounds:{0.0, 0.0, v44, v46}];

  v48 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
  [v48 presentationValue];
  if (v49 != 0.0)
  {
    goto LABEL_22;
  }

  v50 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
  [v50 value];
  v52 = v51;

  if (v52 == 0.0)
  {
    v53 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v54 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v54 bounds];
    v57 = v56 + v55 * 0.5;
    v60 = v59 + v58 * 0.5;
    if (v53 >= 2)
    {
      v61 = v60;
    }

    else
    {
      v61 = v57;
    }

    v48 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    [v48 setUnconstrainedPosition:v61 offset:0.0];
LABEL_22:
  }

  v62 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _numberOfVisibleIndicatorsFittingContentLengthForStartIndex:([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0)];
  v63 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  [v63 value];
  v65 = v64;

  v66 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  [v66 presentationValue];
  v68 = fmax(fmin(v67, ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);

  v69 = fmax(fmin(([(UIPageControl *)self->super._pageControl numberOfPages]- v62), ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
  v70 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  [v70 presentationValue];
  v72 = v71;

  v73 = [(UIPageControl *)self->super._pageControl numberOfPages];
  continuousStartIndex = self->_continuousStartIndex;
  if (v62)
  {
    v75 = fmax(fmin(((v62 - 2) / 2), 2.0), 0.0);
    v76 = fmax(v72 - v75, 0.0);
    if (continuousStartIndex < v76)
    {
      v76 = fmin(v73, v72 + v75 + 1.0) - v62;
      if (continuousStartIndex > v76)
      {
        v76 = round(continuousStartIndex);
        if (v76 == continuousStartIndex)
        {
          v76 = self->_continuousStartIndex;
        }
      }
    }
  }

  else
  {
    v76 = self->_continuousStartIndex;
  }

  v77 = fmax(fmin(v76, v69), 0.0);
  self->_continuousStartIndex = v77;
  self->super._displayedPage = llround(v68);
  self->_indicatorStartIndex = vcvtmd_s64_f64(v77);
  self->_numberOfVisibleIndicators = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _numberOfVisibleIndicatorsFittingContentLengthForStartIndex:?];
  v78 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  [v78 frame];
  v80 = v79;
  v81 = v68;
  v83 = v82;

  v250 = v81;
  if (v65 > v81)
  {
    v84 = 1;
  }

  else
  {
    v84 = 2 * (v65 < v81);
  }

  pageControl = self->super._pageControl;
  v86 = 14.0;
  if ((*&pageControl->_custom & 2) != 0)
  {
    [(UIPageControl *)pageControl _customHorizontalPadding];
    v86 = v87;
    pageControl = self->super._pageControl;
  }

  v88 = self->_continuousStartIndex;
  if ([(UIPageControl *)pageControl backgroundStyle]== UIPageControlBackgroundStyleMinimal && (*&self->super._pageControl->_custom & 3) == 0)
  {
    v86 = 0.0;
  }

  v253 = v16;
  v252 = v5;
  v251 = v65;
  v89 = v3;
  if (v84 == 2)
  {
    indicatorStartIndex = vcvtmd_s64_f64(v88);
  }

  else if (v84 == 1)
  {
    indicatorStartIndex = vcvtpd_s64_f64(v88);
  }

  else
  {
    indicatorStartIndex = self->_indicatorStartIndex;
  }

  v91 = [(UIPageControl *)self->super._pageControl progress];

  v92 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _numberOfVisibleIndicatorsFittingContentLengthForStartIndex:?];
  v93 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  v94 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v94 minimumContentSizeForIndicatorsInRange:indicatorStartIndex hasExpandedActiveIndicator:{v92, v91 != 0}];
  if (v93 >= 2)
  {
    v97 = v96;
  }

  else
  {
    v97 = v95;
  }

  if (v91)
  {
    v98 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v99 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
    [v99 minimumContentSizeForIndicatorsInRange:indicatorStartIndex hasExpandedActiveIndicator:{v92, 0}];
    if (v98 >= 2)
    {
      v100 = v101;
    }

    v259 = v100;

    v102 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
    [v102 presentationValue];
    v103 = v83;
    v104 = v80;
    v106 = 1.0 - v105;

    v107 = v259 * (1.0 - v106);
    v108 = v97 * v106;
    v80 = v104;
    v83 = v103;
    v97 = v108 + v107;
  }

  v109 = v89;
  v263 = v4 & 0xFFFFFFFFFFFFFFFDLL;
  v110 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  v111 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v111 bounds];
  if (v110 >= 2)
  {
    v114 = v113;
  }

  else
  {
    v114 = v112;
  }

  v115 = v114 - (v86 + v86);

  v116 = (v115 - v97) * 0.5;
  if (v116 == self->_indicatorPaddingOffset || v88 == indicatorStartIndex)
  {
    self->_indicatorPaddingOffset = v116;
  }

  v117 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v117 indicatorPositionForContinuousPage:-[_UIInteractivePageControlVisualProvider _pageForExpandedIndicator](self) expandedIndicatorPage:self->_continuousStartIndex];

  if (v263 == 1)
  {
    [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v118 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v118 bounds];
    [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  }

  UIRoundToViewScale(self->super._pageControl);
  v255 = v109;
  if (v109 >= 2)
  {
    v120 = 0.0;
  }

  else
  {
    v120 = v119;
  }

  if (v109 >= 2)
  {
    v121 = v119;
  }

  else
  {
    v121 = 0.0;
  }

  v122 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  [v122 setFrame:{v120, v121, v80, v83}];

  v123 = self->_indicatorStartIndex;
  v124 = fmax((v123 - 2), 0.0);
  v125 = fmin((v123 + self->_numberOfVisibleIndicators + 2), [(UIPageControl *)self->super._pageControl numberOfPages]);
  v126 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
  [v126 prepareIndicatorsFrom:v124 to:v125];

  v127 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v127 indicatorPositionForContinuousPage:-[_UIInteractivePageControlVisualProvider _pageForExpandedIndicator](self) expandedIndicatorPage:v124];
  v129 = v128;

  if (v263 == 1)
  {
    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v130 = v83;
    }

    else
    {
      v130 = v80;
    }

    v129 = v130 - v129;
  }

  v131 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  v132 = [v131 subviews];
  v133 = [v132 mutableCopy];

  v134 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v134 defaultIndicatorSize];
  v254 = v135;
  v257 = v136;

  v260 = [(UIControl *)self->super._pageControl contentVerticalAlignment];
  v256 = [(UIControl *)self->super._pageControl contentHorizontalAlignment];
  v137 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v137 bounds];
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;

  if (v124 < v125)
  {
    v146 = v255 < 2;
    v147 = v141 + v145 * 0.5;
    if (v255 >= 2)
    {
      v148 = v139 + v143 * 0.5;
    }

    else
    {
      v148 = 0.0;
    }

    if (v255 >= 2)
    {
      v149 = 0.0;
    }

    else
    {
      v149 = v147;
    }

    if (v260)
    {
      v150 = v255 < 2;
    }

    else
    {
      v150 = 0;
    }

    v261 = v150;
    if (v256 == UIControlContentHorizontalAlignmentCenter)
    {
      v146 = 1;
    }

    v258 = v146;
    do
    {
      v151 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
      v152 = [v151 indicatorForPage:v124];

      v153 = [v152 image];
      v154 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
      v155 = [v154 indicatorImage];
      v156 = [v153 isEqual:v155];

      if ((v156 & 1) == 0)
      {
        if (v261)
        {
          if (v260 == UIControlContentVerticalAlignmentBottom)
          {
            [v152 bounds];
            v158 = v163 - v257;
            v159 = -0.5;
            goto LABEL_92;
          }

          if (v260 == UIControlContentVerticalAlignmentTop)
          {
            [v152 bounds];
            v158 = v157 - v257;
            v159 = 0.5;
LABEL_92:
            v149 = v149 + v158 * v159;
          }
        }

        else if (!v258)
        {
          if (v256 == UIControlContentHorizontalAlignmentRight)
          {
            [v152 bounds];
            v161 = v164 - v254;
            v162 = -0.5;
            goto LABEL_94;
          }

          if (v256 == UIControlContentHorizontalAlignmentLeft)
          {
            [v152 bounds];
            v161 = v160 - v254;
            v162 = 0.5;
LABEL_94:
            v148 = v148 + v161 * v162;
          }
        }
      }

      v165 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _layoutSizeForIndicator:v152];
      v167 = v166;
      if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
      {
        v168 = v167;
      }

      else
      {
        v168 = v165;
      }

      v169 = -[_UIInteractivePageControlVisualProvider _indicatorScaleForPage:](self, [v152 page]);
      v170 = [v152 superview];

      if (v170)
      {
        [v133 removeObject:v152];
      }

      else
      {
        v171 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
        [v171 addSubview:v152];
      }

      v172 = v168 * 0.5;
      v173 = v129 - v172;
      v174 = v129 + v172;
      v175 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
      if (v263 == 1)
      {
        v129 = v173 - (v262 + v172);
      }

      else
      {
        v129 = v174 + v262 + v172;
      }

      UIRoundToViewScale(self->super._pageControl);
      if (v175 >= 2)
      {
        v149 = v176;
      }

      else
      {
        v148 = v176;
      }

      [v152 setDefaultModeSize:{-[_UIInteractivePageControlVisualProvider _layoutSizeForIndicator:progress:](&self->super.super.isa, v152, 0.0)}];
      [v152 setExpandedModeSize:{-[_UIInteractivePageControlVisualProvider _layoutSizeForIndicator:progress:](&self->super.super.isa, v152, 1.0)}];
      [v152 setBounds:{0.0, 0.0, v165, v167}];
      [v152 setCenter:{v148, v149}];
      CGAffineTransformMakeScale(&v270, v169, v169);
      v269 = v270;
      [v152 setTransform:&v269];
      [v152 layoutBelowIfNeeded];

      ++v124;
    }

    while (v125 != v124);
  }

  v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  v177 = v133;
  v178 = [v177 countByEnumeratingWithState:&v265 objects:v272 count:16];
  if (v178)
  {
    v179 = v178;
    v180 = *v266;
    do
    {
      for (i = 0; i != v179; ++i)
      {
        if (*v266 != v180)
        {
          objc_enumerationMutation(v177);
        }

        [*(*(&v265 + 1) + 8 * i) removeFromSuperview];
      }

      v179 = [v177 countByEnumeratingWithState:&v265 objects:v272 count:16];
    }

    while (v179);
  }

  v182 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v182 bounds];
  v184 = v183;
  v186 = v185;

  if (v252)
  {
    v187 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
    [v187 presentationValue];
    v189 = 1.0 - v188;

    [(UIView *)self->super._pageControl bounds];
    v184 = v184 * v189 + (1.0 - v189) * [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _intrinsicContentSizeWithPageControlSize:v190 includeExpandedActiveIndicator:v191];
    v186 = v186 * v189 + (1.0 - v189) * v192;
  }

  v193 = [(_UIInteractivePageControlVisualProvider *)self backgroundView];
  [v193 setBounds:{0.0, 0.0, v184, v186}];
  v194 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v194 bounds];
  [v193 setCenter:{v196 + v195 * 0.5, v198 + v197 * 0.5}];

  v199 = fabs(v253);
  v200 = v199 * 0.0625 / 20.0 + 1.0;
  v201 = v199 * -0.11111112 / 20.0 + 1.0;
  if (v255 > 1)
  {
    v202 = v199 * -0.11111112 / 20.0 + 1.0;
  }

  else
  {
    v202 = v199 * 0.0625 / 20.0 + 1.0;
    v200 = v201;
  }

  CGAffineTransformMakeScale(&v264, v202, v200);
  v269 = v264;
  [v193 setTransform:&v269];
  v203 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
  v204 = [(_UIInteractivePageControlVisualProvider *)self backgroundView];
  [v204 frame];
  if (v203 >= 2)
  {
    v207 = v205;
  }

  else
  {
    v207 = v206;
  }

  [v193 _setContinuousCornerRadius:v207 * 0.5];

  if (v251 == v250)
  {
    v208 = [(_UIInteractivePageControlVisualProvider *)self _visibleLeftIndicator];
    v209 = [(_UIInteractivePageControlVisualProvider *)self _visibleLeftIndicator];
    [v209 bounds];
    v211 = v210;
    v213 = v212;
    v215 = v214;
    v217 = v216;
    v218 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v208 convertRect:v218 toView:{v211, v213, v215, v217}];
    v220 = v219;
    v222 = v221;
    v224 = v223;
    v226 = v225;

    v227 = [(_UIInteractivePageControlVisualProvider *)self _visibleRightIndicator];
    v228 = [(_UIInteractivePageControlVisualProvider *)self _visibleRightIndicator];
    [v228 bounds];
    v230 = v229;
    v232 = v231;
    v234 = v233;
    v236 = v235;
    v237 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v227 convertRect:v237 toView:{v230, v232, v234, v236}];
    v239 = v238;
    v241 = v240;
    v243 = v242;
    v245 = v244;

    v246 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    v247 = v246;
    if (v255 > 1)
    {
      [v246 updateScrubLowerBound:v222 + v226 * 0.5 upperBound:v241 + v245 * 0.5];

      v248 = [(_UIInteractivePageControlVisualProvider *)self interactor];
      v249 = v222 + v226;
      v239 = v241;
    }

    else
    {
      [v246 updateScrubLowerBound:v220 + v224 * 0.5 upperBound:v239 + v243 * 0.5];

      v248 = [(_UIInteractivePageControlVisualProvider *)self interactor];
      v249 = v220 + v224;
    }

    [v248 updateRubberbandLowerBound:v262 + v249 upperBound:v239 - v262];
  }
}

- (id)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    v4 = [UIVisualEffectView alloc];
    v5 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _resolvedVisualEffect];
    v6 = [(UIVisualEffectView *)v4 initWithEffect:v5];
    v7 = self->_backgroundView;
    self->_backgroundView = v6;

    [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _installBackgroundViewIfNeeded];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (BOOL)_supportsExpandedIndicator
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 8) progress];
  v2 = v1 != 0;

  return v2;
}

- (id)_visibleLeftIndicator
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 resolvedDirection] & 0xFFFFFFFFFFFFFFFDLL;
    v3 = *(v1 + 312);
    if (v2 == 1)
    {
      v3 = v3 + *(v1 + 320) - 1;
    }

    if (v3 < 0 || v3 >= [*(v1 + 8) numberOfPages])
    {
      v1 = 0;
    }

    else
    {
      v4 = [v1 indicatorFeed];
      v1 = [v4 indicatorForPage:v3];
    }
  }

  return v1;
}

- (id)_visibleRightIndicator
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 resolvedDirection] & 0xFFFFFFFFFFFFFFFDLL;
    v3 = *(v1 + 312);
    if (v2 != 1)
    {
      v3 = v3 + *(v1 + 320) - 1;
    }

    if (v3 < 0 || v3 >= [*(v1 + 8) numberOfPages])
    {
      v1 = 0;
    }

    else
    {
      v4 = [v1 indicatorFeed];
      v1 = [v4 indicatorForPage:v3];
    }
  }

  return v1;
}

- (void)didUpdateLayoutDirection
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = self->super._pageControl;
  v4 = [(UIPageControl *)v3 direction];
  if (v4 > 2)
  {
    v6 = 3;
    if (v4 != 4)
    {
      v6 = 0;
    }

    if (v4 == 3)
    {
      v5 = 2;
    }

    else
    {
      v5 = v6;
    }
  }

  else if (v4)
  {
    v5 = v4 == 2;
  }

  else
  {
    v5 = [(UIView *)v3 _shouldReverseLayoutDirection];
  }

  v7 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v7 setDirection:v5];

  if (v5 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 16;
  }

  v9 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  [v9 setAutoresizingMask:v8];

  if (self->_resolvedDirection != v5)
  {
    self->_resolvedDirection = v5;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    v11 = [v10 indicators];

    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * i) setDirection:v5];
        }

        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }

    [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
    [(UIView *)self->super._pageControl setNeedsLayout];
  }
}

- (unint64_t)maxVisibleIndicators
{
  if (self->super._pageControl->_preferredNumberOfVisibleIndicators <= 0xA)
  {
    return 10;
  }

  else
  {
    return self->super._pageControl->_preferredNumberOfVisibleIndicators;
  }
}

- (id)_resolvedVisualEffect
{
  if (a1)
  {
    v2 = a1;
    v3 = [a1[1] _platterEffect];

    if (v3)
    {
      [v2[1] _platterEffect];
    }

    else
    {
      [UIBlurEffect effectWithStyle:7];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

- (CGSize)intrinsicContentSize
{
  if (self)
  {
    if (self->super._pageControl->_preferredNumberOfVisibleIndicators)
    {
      preferredNumberOfVisibleIndicators = self->super._pageControl->_preferredNumberOfVisibleIndicators;
    }

    else
    {
      preferredNumberOfVisibleIndicators = 8;
    }
  }

  else
  {
    preferredNumberOfVisibleIndicators = 0;
  }

  [(_UIInteractivePageControlVisualProvider *)self sizeForNumberOfPages:preferredNumberOfVisibleIndicators];

  [(_UIInteractivePageControlVisualProvider *)self sizeThatFits:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)_installBackgroundViewIfNeeded
{
  if (a1 && a1[47])
  {
    [a1[47] setAlpha:{objc_msgSend(a1, "isPlatterExpanded")}];
    v2 = [a1 contentView];
    [v2 insertSubview:a1[47] atIndex:0];
  }
}

- (void)updateScrubbingGestureRecognizer
{
  if (a1)
  {
    v2 = [a1[1] allowsContinuousInteraction];
    v3 = [a1 scrubbingGestureRecognizer];
    [v3 setEnabled:v2];
  }
}

- (void)didUpdateNumberOfPages
{
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa updateScrubbingGestureRecognizer];
  v3 = [(UIPageControl *)self->super._pageControl numberOfPages];
  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v5 = [v4 numberOfPages];

  if (v5 != v3)
  {
    v6 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
    [v6 updateStoreForNumberOfPages:v3];

    numberOfVisibleIndicators = self->_numberOfVisibleIndicators;
    if (numberOfVisibleIndicators + self->_indicatorStartIndex > v3)
    {
      self->_indicatorStartIndex = fmax(fmin((v3 - numberOfVisibleIndicators), ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
    }

    if (v3 < 1)
    {
      v8 = -1;
    }

    else
    {
      v8 = fmax(fmin(self->super._displayedPage, ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
    }

    self->super._displayedPage = v8;
    [(_UIInteractivePageControlVisualProvider *)self _updateReuseQueue];
    pageControl = self->super._pageControl;

    [(UIView *)pageControl setNeedsLayout];
  }
}

- (void)prepare
{
  v50[2] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = _UIInteractivePageControlVisualProvider;
  [(_UIPageControlVisualProvider *)&v49 prepare];
  self->_numberOfVisibleIndicators = 0;
  [(UIPageControl *)self->super._pageControl setAllowsContinuousInteraction:1];
  [(UIPageControl *)self->super._pageControl _setAllowsDiscreteInteraction:1];
  [(UIPageControl *)self->super._pageControl _setFlickToEndGestureEnabled:1];
  self->_preciseTouchedPage = -1.79769313e308;
  v3 = [[_UIPageIndicatorFeed alloc] initWithPageControl:self->super._pageControl];
  [(_UIInteractivePageControlVisualProvider *)self setIndicatorFeed:v3];

  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
  [v4 setDelegate:self];

  v5 = objc_opt_new();
  [(_UIInteractivePageControlVisualProvider *)self setIndicatorStore:v5];

  v6 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v6 setDelegate:self];

  v7 = [[_UIPageControlInteractor alloc] initWithMaximumDistance:20.0];
  [(_UIInteractivePageControlVisualProvider *)self setInteractor:v7];

  v8 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v9) = 0.375;
  LODWORD(v10) = -0.125;
  LODWORD(v11) = -0.3125;
  LODWORD(v12) = 0.125;
  v13 = [v8 initWithControlPoints:v9 :v10 :v11 :v12];
  [(_UIInteractivePageControlVisualProvider *)self setIndicatorTransformCurve:v13];

  v14 = objc_opt_new();
  [(_UIInteractivePageControlVisualProvider *)self setContentView:v14];

  v15 = objc_opt_new();
  [(_UIInteractivePageControlVisualProvider *)self setIndicatorContentView:v15];

  v16 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  [v25 setFrame:{v18, v20, v22, v24}];

  v26 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  v27 = [(_UIInteractivePageControlVisualProvider *)self indicatorContentView];
  [v26 addSubview:v27];

  pageControl = self->super._pageControl;
  v29 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [(UIView *)pageControl addSubview:v29];

  [(_UIInteractivePageControlVisualProvider *)self didUpdateLayoutDirection];
  v30 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_didTapPageControl_];
  [(UIGestureRecognizer *)v30 setDelegate:self];
  [(UIGestureRecognizer *)v30 setCancelsTouchesInView:0];
  [(UIView *)self->super._pageControl addGestureRecognizer:v30];
  [(_UIInteractivePageControlVisualProvider *)self setTapGestureRecognizer:v30];
  v31 = objc_opt_new();
  [v31 setDelegate:self];
  [v31 setControlEventsDelegate:self];
  [v31 setDelaysTouchesEnded:0];
  [v31 setCancelsTouchesInView:0];
  [(UIView *)self->super._pageControl addGestureRecognizer:v31];
  [(_UIPageControlVisualProvider *)self setInteractionState:0];
  v32 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel_didScrubPageControl_];
  [(UILongPressGestureRecognizer *)v32 setMinimumPressDuration:0.15];
  [(UIGestureRecognizer *)v32 setDelegate:self];
  [(UIGestureRecognizer *)v32 setCancelsTouchesInView:0];
  [(UILongPressGestureRecognizer *)v32 setAllowableMovement:1.79769313e308];
  [(UIView *)self->super._pageControl addGestureRecognizer:v32];
  [(_UIInteractivePageControlVisualProvider *)self setScrubbingGestureRecognizer:v32];
  v33 = objc_opt_new();
  [(_UIInteractivePageControlVisualProvider *)self setContinuousDisplayedPage:v33];

  v34 = objc_opt_new();
  [(_UIInteractivePageControlVisualProvider *)self setScrubProgress:v34];

  v35 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  [v35 setValue:0.0];

  v36 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
  [v36 setValue:0.0];

  v37 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  v50[0] = v37;
  v38 = [(_UIInteractivePageControlVisualProvider *)self scrubProgress];
  v50[1] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];

  objc_initWeak(&location, self);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __50___UIInteractivePageControlVisualProvider_prepare__block_invoke;
  v46[3] = &unk_1E70F5A28;
  objc_copyWeak(&v47, &location);
  [UIView _createTransformerWithInputAnimatableProperties:v39 presentationValueChangedCallback:v46];
  [(_UIInteractivePageControlVisualProvider *)self resetSuccessiveTapInfo];
  [(_UIInteractivePageControlVisualProvider *)self didUpdateCustomLayoutValues];
  v40 = +[_UISelectionFeedbackGeneratorConfiguration pageControlConfiguration];
  v41 = [v40 tweakedConfigurationForClass:objc_opt_class() usage:@"pageControl"];

  v42 = [(UIFeedbackGenerator *)[UISelectionFeedbackGenerator alloc] initWithConfiguration:v41 view:self->super._pageControl];
  [(_UIInteractivePageControlVisualProvider *)self setSelectionFeedbackGenerator:v42];

  v43 = +[_UIImpactFeedbackGeneratorConfiguration lightConfiguration];
  v44 = [v43 tweakedConfigurationForClass:objc_opt_class() usage:@"pageControl"];

  v45 = [(UIFeedbackGenerator *)[UIImpactFeedbackGenerator alloc] initWithConfiguration:v44 view:self->super._pageControl];
  [(_UIInteractivePageControlVisualProvider *)self setJoggingFeedbackGenerator:v45];

  [(UIView *)self->super._pageControl setNeedsLayout];
  objc_destroyWeak(&v47);
  objc_destroyWeak(&location);
}

- (void)didUpdateInteractionTypeAvailability
{
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa updateScrubbingGestureRecognizer];
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  [(UIView *)self->super._pageControl setNeedsLayout];
  if ([(UIPageControl *)self->super._pageControl _allowsDiscreteInteraction])
  {
    v3 = [(UIPageControl *)self->super._pageControl _prefersTargetPageForDiscreteInteraction];
    v4 = !v3;
    if (v3)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 0.15;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0.0;
  }

  v6 = [(_UIInteractivePageControlVisualProvider *)self scrubbingGestureRecognizer];
  [v6 setMinimumPressDuration:v5];

  v7 = [(_UIInteractivePageControlVisualProvider *)self tapGestureRecognizer];
  [v7 setEnabled:v4];
}

- (BOOL)supportsContinuousInteraction
{
  v2 = [(UIView *)self->super._pageControl traitCollection];
  v3 = [v2 userInterfaceIdiom] != 6;

  return v3;
}

- (void)resetSuccessiveTapInfo
{
  [(_UIInteractivePageControlVisualProvider *)self setPreviousTouchLocation:-100.0, -100.0];

  [(_UIInteractivePageControlVisualProvider *)self setPreviousMoveDirection:0];
}

- (void)didUpdateCustomLayoutValues
{
  v3 = [(_UIInteractivePageControlVisualProvider *)self _indicatorSpacing];
  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v4 setIndicatorSpacing:v3];

  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  pageControl = self->super._pageControl;

  [(UIView *)pageControl setNeedsLayout];
}

- (void)_updateIndicatorTintColor
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [(_UIInteractivePageControlVisualProvider *)a1 _indicatorColorForEnabled:?];
    v3 = [(_UIInteractivePageControlVisualProvider *)a1 _indicatorColorForEnabled:?];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [a1 indicatorFeed];
    v5 = [v4 indicators];

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 page];
          v12 = [a1 continuousDisplayedPage];
          [v12 value];
          v14 = v13 == v11;

          -[_UIInteractivePageControlVisualProvider _transitionIndicatorForPage:toEnabled:](a1, [v10 page], v14);
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateDisplayedPageToCurrentPage
{
  if ([(_UIInteractivePageControlVisualProvider *)self isScrubbing]&& [(UIPageControl *)self->super._pageControl currentPage]!= self->super._displayedPage)
  {
    v3 = [(_UIInteractivePageControlVisualProvider *)self scrubbingGestureRecognizer];
    [v3 setEnabled:0];

    v4 = [(_UIInteractivePageControlVisualProvider *)self scrubbingGestureRecognizer];
    [v4 setEnabled:1];
  }

  self->_targetPage = [(UIPageControl *)self->super._pageControl currentPage];
  [(_UIPageControlVisualProvider *)self setInteractionState:0];
  v5 = [(UIPageControl *)self->super._pageControl currentPage];

  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _setDisplayedPage:v5 completion:0];
}

- (void)pruneArchivedSubviews:(id)a3
{
  v4 = a3;
  v5 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v4 removeObject:v5];
}

- (id)_numberOfVisibleIndicatorsFittingContentLengthForStartIndex:(id *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result resolvedDirection];
    v5 = [v3 contentView];
    [v5 bounds];
    if (v4 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = [v3[1] backgroundStyle];
    v10 = v3[1];
    if (v9 != 2 || (v10[468] & 3) != 0)
    {
      v12 = 28.0;
      if ((v10[468] & 2) != 0)
      {
        [v10 _customHorizontalPadding];
        v12 = v13 + v13;
      }

      v8 = v8 - v12;
    }

    v14 = [v3 indicatorStore];
    v15 = [v3[1] progress];
    v16 = v15 != 0;

    v17 = [v14 numberOfVisibleIndicatorsForStartIndex:a2 fittingLength:v16 hasExpandedActiveIndicator:v8];
    return v17;
  }

  return result;
}

- (double)_intrinsicContentSizeWithPageControlSize:(double)a3 includeExpandedActiveIndicator:(double)a4
{
  if (!a1)
  {
    return 0.0;
  }

  if (qword_1ED49B048 != -1)
  {
    dispatch_once(&qword_1ED49B048, &__block_literal_global_605);
  }

  v8 = _MergedGlobals_23_6;
  v9 = 1.0;
  if (_MergedGlobals_23_6 == 1)
  {
    if ([(_UIInteractivePageControlVisualProvider *)a1 _hasContentScaling])
    {
      v9 = 1.05;
    }

    else
    {
      v9 = 1.0;
    }
  }

  if ([a1 resolvedDirection] >= 2)
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  v11 = v10 / v9;
  v12 = [a1[1] backgroundStyle];
  v13 = a1[1];
  if (v12 != 2 || (v13[468] & 3) != 0)
  {
    v14 = 28.0;
    if ((v13[468] & 2) != 0)
    {
      [v13 _customHorizontalPadding];
      v14 = v15 + v15;
      v13 = a1[1];
    }

    v11 = v11 - v14;
  }

  if (![v13 numberOfPages])
  {
    return *MEMORY[0x1E695F060];
  }

  v16 = 0.0;
  if (v8)
  {
    v17 = [a1[1] allowsContinuousInteraction];
    v16 = 42.5;
    if (!v17)
    {
      v16 = 0.0;
    }
  }

  v18 = ceil(v11 - v16);
  v19 = [a1 indicatorStore];
  [v19 sizeForMaximumContentSizeFittingLength:a2 hasExpandedActiveIndicator:v18];
  v21 = v20;
  v23 = v22;

  if ([a1[1] backgroundStyle] != 2 || (v24 = a1[1], (v24[468] & 3) != 0))
  {
    v25 = [a1 resolvedDirection];
    v24 = a1[1];
    v26 = v24[468];
    if ((v26 & 2) != 0)
    {
      [v24 _customHorizontalPadding];
      v27 = v29;
      v24 = a1[1];
      v26 = v24[468];
    }

    else
    {
      v27 = 14.0;
    }

    v30 = 8.0;
    if (v26)
    {
      [v24 _customVerticalPadding];
      v24 = a1[1];
    }

    if (v25 >= 2)
    {
      v31 = v30;
    }

    else
    {
      v31 = v27;
    }

    if (v25 >= 2)
    {
      v30 = v27;
    }

    v23 = v23 + v30 + v30;
    v21 = v21 + v31 + v31;
  }

  [v24 _currentScreenScale];
  v33 = v32;
  UICeilToScale(v21, v32);
  v28 = v34;
  UICeilToScale(v23, v33);
  return v28;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
  {
    v6 = height;
  }

  else
  {
    v6 = width;
  }

  if (v6 == 0.0)
  {

    [(_UIInteractivePageControlVisualProvider *)self intrinsicContentSize];
  }

  else
  {
    if (self)
    {
      v9 = [(UIPageControl *)self->super._pageControl progress];

      if (v9)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }

      v11 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
      v12 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
      [v12 defaultIndicatorSize];
      if (v11 >= 2)
      {
        v13 = v14;
      }

      v15 = v13 * v10;
      v16 = [(_UIInteractivePageControlVisualProvider *)self _indicatorSpacing]* (v10 - 1);
      pageControl = self->super._pageControl;
      v18 = 28.0;
      if ((*&pageControl->_custom & 2) != 0)
      {
        [(UIPageControl *)pageControl _customHorizontalPadding];
        v18 = v19 + v19;
      }

      v20 = v16 + v15;

      if (qword_1ED49B048 != -1)
      {
        dispatch_once(&qword_1ED49B048, &__block_literal_global_605);
      }

      v21 = v20 + v18;
      if (_MergedGlobals_23_6 == 1)
      {
        v22 = [(UIPageControl *)self->super._pageControl allowsContinuousInteraction];
        v23 = 42.5;
        if (!v22)
        {
          v23 = 0.0;
        }

        v24 = v21 + v23;
        hasContent = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _hasContentScaling];
        v26 = 1.05;
        if (!hasContent)
        {
          v26 = 1.0;
        }

        v21 = v24 * v26;
      }
    }

    else
    {
      v21 = 0.0;
    }

    v27 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v28 = height;
    }

    else
    {
      v28 = width;
    }

    v29 = fmax(v21, v28);
    if (v27 >= 2)
    {
      height = v29;
    }

    else
    {
      width = v29;
    }

    v30 = [(_UIInteractivePageControlVisualProvider *)self _supportsExpandedIndicator];
    v31.f64[0] = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _intrinsicContentSizeWithPageControlSize:v30 includeExpandedActiveIndicator:width, height];
    if (qword_1ED49B048 != -1)
    {
      v43 = v32;
      v46 = v31.f64[0];
      dispatch_once(&qword_1ED49B048, &__block_literal_global_605);
      v32 = v43;
      v31.f64[0] = v46;
    }

    if (_MergedGlobals_23_6 == 1)
    {
      v42 = v32;
      v44 = v31.f64[0];
      v33 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
      if (self)
      {
        v35 = [(UIPageControl *)self->super._pageControl allowsContinuousInteraction];
        v36 = 42.5;
        if (!v35)
        {
          v36 = 0.0;
        }
      }

      else
      {
        v36 = 0.0;
      }

      if (v33 >= 2)
      {
        v37 = v42;
      }

      else
      {
        v37 = v44;
      }

      v38 = v37 + v36;
      if (v33 >= 2)
      {
        *&v34 = v44;
      }

      else
      {
        *&v34 = v38;
      }

      v41 = v34;
      if (v33 < 2)
      {
        v38 = v42;
      }

      v45 = v38;
      [(_UIInteractivePageControlVisualProvider *)v47 _contentTransformForActiveState:1];
      v31 = vaddq_f64(vmulq_n_f64(v47[0], *&v41), vmulq_n_f64(v47[1], v45));
    }

    else
    {
      v31.f64[1] = v32;
    }

    v39 = v31;
    [(UIView *)self->super._pageControl _currentScreenScale];
    v7 = UISizeRoundToScale(v39.f64[0], v39.f64[1], v40);
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (double)_contentTransformForActiveState:(int)a3
{
  if (a2)
  {
    hasContent = [(_UIInteractivePageControlVisualProvider *)a2 _hasContentScaling];
    if (a3)
    {
      v6 = 1.05;
      if (!hasContent)
      {
        v6 = 1.0;
      }

      CGAffineTransformMakeScale(a1, v6, v6);
    }

    else
    {
      v8 = MEMORY[0x1E695EFD0];
      v9 = *(MEMORY[0x1E695EFD0] + 16);
      *a1 = *MEMORY[0x1E695EFD0];
      *(a1 + 16) = v9;
      v7 = *(v8 + 32);
      *(a1 + 32) = v7;
    }
  }

  else
  {
    *&v7 = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return *&v7;
}

- (void)setPreciseTouchedPage:(double)a3
{
  v50 = *MEMORY[0x1E69E9840];
  preciseTouchedPage = self->_preciseTouchedPage;
  if (preciseTouchedPage != a3)
  {
    v4 = a3;
    self->_preciseTouchedPage = a3;
    memset(&v48, 0, sizeof(v48));
    [(_UIPageControlVisualProvider *)self activeTransformForTouchedPage];
    v47 = v48;
    if (!CGAffineTransformIsIdentity(&v47))
    {
      memset(&v47, 0, sizeof(v47));
      [(_UIPageControlVisualProvider *)self targetTransformForTouchedPage];
      v46 = v47;
      IsIdentity = CGAffineTransformIsIdentity(&v46);
      v7 = floor(v4);
      if (v4 >= 0.0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      v9 = [(UIPageControl *)self->super._pageControl numberOfPages];
      if (fmax(fmin(v8, ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0) == v8)
      {
        v10 = floor(preciseTouchedPage);
        if (preciseTouchedPage >= 0.0)
        {
          v10 = preciseTouchedPage;
        }

        if (preciseTouchedPage != -1.79769313e308 && fmax(fmin(v10, (v9 - 1)), 0.0) != v10)
        {
          v11 = [(_UIInteractivePageControlVisualProvider *)self selectionFeedbackGenerator];
          [(UIView *)self->super._pageControl center];
          [v11 selectionChangedAtLocation:?];
        }
      }

      state = self->_state;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v12 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
      v13 = [v12 indicators];

      v14 = [v13 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v43;
        v32 = *(MEMORY[0x1E695EFD0] + 16);
        v33 = *MEMORY[0x1E695EFD0];
        v31 = *(MEMORY[0x1E695EFD0] + 32);
        v17 = 1.0;
        v18 = v4;
        do
        {
          v19 = 0;
          do
          {
            if (*v43 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v42 + 1) + 8 * v19);
            *&v46.a = v33;
            *&v46.c = v32;
            *&v46.tx = v31;
            *&v41.a = v33;
            *&v41.c = v32;
            *&v41.tx = v31;
            if (v4 == -1.79769313e308)
            {
              *&v46.a = v33;
              *&v46.c = v32;
              *&v46.tx = v31;
              goto LABEL_27;
            }

            if ([v20 page] == v8)
            {
              if ((state & 4) != 0)
              {
                v46 = v48;
              }

              else
              {
                v40 = v48;
                _UITransformLerp(MEMORY[0x1E695EFD0], &v40, &v46, 0.333333333);
              }

              *&v41.a = *&v46.a;
              *&v41.c = *&v46.c;
              v21 = *&v46.tx;
            }

            else
            {
              if ((state & 4) == 0 || IsIdentity)
              {
                *&v46.a = v33;
                *&v46.c = v32;
                *&v46.tx = v31;
                goto LABEL_27;
              }

              v17 = 1.0;
              v28 = fmax(fmin(vabdd_f64(v4, [v20 page]) * -0.25 + 1.0, 1.0), 0.0);
              transform = v47;
              _UITransformLerp(MEMORY[0x1E695EFD0], &transform, &v40, v28);
              v46 = v40;
              if (v28 >= 2.22044605e-16)
              {
                *&v41.a = *&v47.a;
                *&v41.c = *&v47.c;
                v21 = *&v47.tx;
              }

              else
              {
                *&v41.a = v33;
                *&v41.c = v32;
                v21 = v31;
              }
            }

            *&v41.tx = v21;
LABEL_27:
            transform = v41;
            memset(&v40, 0, sizeof(v40));
            CGAffineTransformDecompose(&v40, &transform);
            [v20 setImageDisplayScaleFactor:{fmax(v40.scale.width, v40.scale.height)}];
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            v38 = v46;
            aBlock[2] = __65___UIInteractivePageControlVisualProvider_setPreciseTouchedPage___block_invoke;
            aBlock[3] = &unk_1E70F3DC8;
            aBlock[4] = v20;
            v22 = _Block_copy(aBlock);
            transform = v46;
            t2 = v48;
            v23 = CGAffineTransformEqualToTransform(&transform, &t2);
            v24 = v23;
            if (v23)
            {
              v25 = 0.49991;
            }

            else
            {
              v25 = v17;
            }

            if (v23)
            {
              v26 = 0.4;
            }

            else
            {
              v26 = 0.25;
            }

            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __65___UIInteractivePageControlVisualProvider_setPreciseTouchedPage___block_invoke_2;
            v34[3] = &unk_1E70F0F78;
            v35 = v22;
            v27 = v22;
            [UIView _animateUsingSpringWithDampingRatio:!v24 response:v34 tracking:0 dampingRatioSmoothing:v25 responseSmoothing:v26 targetSmoothing:0.08 projectionDeceleration:1.0 animations:0.0 completion:0.0];

            ++v19;
            v4 = v18;
          }

          while (v15 != v19);
          v29 = [v13 countByEnumeratingWithState:&v42 objects:v49 count:16];
          v15 = v29;
        }

        while (v29);
      }
    }
  }
}

- (void)setPage:(int64_t)a3 interactionState:(int64_t)a4
{
  [(_UIPageControlVisualProvider *)self setInteractionState:a4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68___UIInteractivePageControlVisualProvider_setPage_interactionState___block_invoke;
  v7[3] = &unk_1E70F6848;
  v7[4] = self;
  v7[5] = a3;
  v7[6] = a4;
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _updateCurrentPage:a3 completion:v7];
}

- (void)_updateCurrentPage:(void *)a3 completion:
{
  if (a1)
  {
    v5 = a1[1];
    v6 = a3;
    [v5 _updateCurrentPage:a2 updateDisplayImmediately:0];
    [a1[1] _emitValueChanged];
    [(_UIInteractivePageControlVisualProvider *)a1 _setDisplayedPage:a2 completion:v6];
  }
}

- (void)traitCollectionDidChangeOnSubtree:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIView *)self->super._pageControl traitCollection];
  if (v5)
  {
    if (v4)
    {
      v6 = v5[13];
      v7 = v4[13];

      if (v6 == v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    v9 = [v8 indicators];

    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * v13++) sizeToFit];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

LABEL_14:
  [(_UIInteractivePageControlVisualProvider *)self didUpdateLayoutDirection];
  v14 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v14 invalidateLayoutCache];

  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  [(UIView *)self->super._pageControl setNeedsLayout];
}

- (void)didUpdateBackgroundStyle
{
  [(_UIInteractivePageControlVisualProvider *)self _updateCurrentPlatterMode];
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  pageControl = self->super._pageControl;

  [(UIView *)pageControl setNeedsLayout];
}

- (uint64_t)_updateCurrentPlatterMode
{
  if (result)
  {
    v1 = result;
    result = [*(result + 8) backgroundStyle];
    if (result == 2)
    {
      v2 = 0;
    }

    else if (result == 1)
    {
      v2 = 1;
    }

    else
    {
      if (result)
      {
        return result;
      }

      v2 = [v1 isScrubbing];
    }

    return [v1 setPlatterExpanded:v2];
  }

  return result;
}

- (void)didUpdateBackgroundEffect
{
  custom = self->super._pageControl->_custom;
  v4 = self->_backgroundView;
  if ((custom & 8) == 0)
  {
    v7 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v7;
    if (isKindOfClass)
    {
      v6 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _resolvedVisualEffect];
      [(UIView *)v7 setEffect:v6];

      v4 = v7;
    }
  }
}

- (void)didUpdatePageProgress
{
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  [(UIView *)self->super._pageControl setNeedsLayout];
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _updateIndicatorMode];
  v3 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _hasActiveExpandedIndicator];
  v4 = [(UIPageControl *)self->super._pageControl progress];
  [v4 _progressVisibilityChanged:v3];
}

- (id)_updateIndicatorMode
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = [result continuousDisplayedPage];
    [v2 value];
    v4 = v3;

    v5 = [v1[1] progress];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v1 indicatorFeed];
    v7 = [v6 indicators];

    obj = v7;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = v4;
      v11 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 page];
          if (v14 > v10)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2 * (v14 < v10);
          }

          v16 = -[_UIInteractivePageControlVisualProvider _indicatorModeForPage:](v1, [v13 page]);
          [v13 setSupportsExpandedIndicator:v5 != 0];
          [v13 setMode:v16 direction:v15];
        }

        v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    return [v1 didUpdateCurrentPageProgress];
  }

  return result;
}

- (void)didUpdateCurrentPageProgress
{
  v3 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
  v5 = [v3 activeIndicatorForPage:{-[UIPageControl currentPage](self->super._pageControl, "currentPage")}];

  v4 = [(UIPageControl *)self->super._pageControl progress];
  [v4 currentProgress];
  [v5 setCurrentProgress:?];
}

- (void)setPageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3
{
  v7.receiver = self;
  v7.super_class = _UIInteractivePageControlVisualProvider;
  v4 = *&a3->m33;
  v6[2] = *&a3->m24;
  v6[3] = v4;
  v6[4] = *&a3->m42;
  v5 = *&a3->m15;
  v6[0] = *&a3->m11;
  v6[1] = v5;
  [(_UIPageControlVisualProvider *)&v7 setPageIndicatorVibrantColorMatrix:v6];
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _updateIndicatorTintColor];
}

- (void)setActivePageIndicatorVibrantColorMatrix:(CAColorMatrix *)a3
{
  v7.receiver = self;
  v7.super_class = _UIInteractivePageControlVisualProvider;
  v4 = *&a3->m33;
  v6[2] = *&a3->m24;
  v6[3] = v4;
  v6[4] = *&a3->m42;
  v5 = *&a3->m15;
  v6[0] = *&a3->m11;
  v6[1] = v5;
  [(_UIPageControlVisualProvider *)&v7 setActivePageIndicatorVibrantColorMatrix:v6];
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _updateIndicatorTintColor];
}

- (id)_indicatorColorForEnabled:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      v3 = [a1[1] currentPageIndicatorTintColor];
      if (!v3)
      {
        v4 = +[UIColor systemWhiteColor];
LABEL_12:
        v2 = v4;

        goto LABEL_13;
      }

LABEL_11:
      v4 = v3;
      goto LABEL_12;
    }

    v5 = [a1 isPlatterExpanded];
    v6 = v2[1];
    if ((v5 & 1) == 0)
    {
      v3 = [v6 pageIndicatorTintColor];
      if (!v3)
      {
        v4 = +[UIColor _pageControlIndicatorColor];
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ([v6 backgroundStyle] != 1 || !dyld_program_sdk_at_least() || (objc_msgSend(v2[1], "pageIndicatorTintColor"), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v2 = +[UIColor _pageControlPlatterIndicatorColor];
    }
  }

LABEL_13:

  return v2;
}

- (void)_transitionIndicatorForPage:(uint64_t)a3 toEnabled:
{
  if (a1)
  {
    v6 = [a1 indicatorFeed];
    v7 = [v6 indicators];
    v8 = [v7 firstObject];
    v9 = a2 - [v8 page];

    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = [a1 indicatorFeed];
      v11 = [v10 indicators];
      v12 = [v11 count];

      if (v9 < v12)
      {
        v13 = [a1 indicatorFeed];
        v14 = [v13 indicatorForPage:a2];

        v15 = [(_UIInteractivePageControlVisualProvider *)a1 _indicatorColorForEnabled:?];
        [v14 setActiveIndicatorColor:v15];

        v16 = [(_UIInteractivePageControlVisualProvider *)a1 _indicatorColorForEnabled:?];
        [v14 setIndicatorColor:v16];

        [a1 pageIndicatorVibrantColorMatrix];
        v24 = v29;
        v25 = v30;
        v26 = v31;
        v22 = v27;
        v23 = v28;
        [v14 setVibrantColorMatrix:&v22];
        [a1 activePageIndicatorVibrantColorMatrix];
        v24 = v19;
        v25 = v20;
        v26 = v21;
        v22 = v17;
        v23 = v18;
        [v14 setActiveVibrantColorMatrix:&v22];
        [v14 setActive:a3];
      }
    }
  }
}

- (void)_setDisplayedPage:(void *)a3 completion:
{
  v5 = a3;
  if (a1)
  {
    v6 = [a1 continuousDisplayedPage];
    [v6 value];
    v8 = v7;

    if (v8 != a2)
    {
      if ([a1 interactionState])
      {
        v9 = 1;
      }

      else
      {
        v10 = [a1[1] window];
        v9 = v10 != 0;
      }

      v11 = [a1 interactionState];
      v12 = [a1 continuousDisplayedPage];
      [v12 value];
      v14 = v13;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72___UIInteractivePageControlVisualProvider__setDisplayedPage_completion___block_invoke;
      aBlock[3] = &unk_1E70F6848;
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[6] = v14;
      v15 = _Block_copy(aBlock);
      v16 = v15;
      if (v9)
      {
        v17 = [(_UIInteractivePageControlVisualProvider *)a1 _hasActiveExpandedIndicator];
        if (v17)
        {
          v18 = 0.35;
        }

        else
        {
          v18 = 0.15;
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __72___UIInteractivePageControlVisualProvider__setDisplayedPage_completion___block_invoke_2;
        v24[3] = &unk_1E70F0F78;
        v25 = v16;
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __72___UIInteractivePageControlVisualProvider__setDisplayedPage_completion___block_invoke_3;
        v22[3] = &unk_1E7103030;
        v23 = v5;
        [UIView _animateUsingSpringWithDampingRatio:v17 ^ 1 response:v24 tracking:v22 dampingRatioSmoothing:1.0 responseSmoothing:v18 targetSmoothing:0.08 projectionDeceleration:1.0 animations:0.08 completion:0.995];
      }

      else
      {
        (*(v15 + 2))(v15);
        if (v5)
        {
          v5[2](v5);
        }

        [(_UIInteractivePageControlVisualProvider *)a1 _updateReuseQueue];
        [a1[1] setNeedsLayout];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __93___UIInteractivePageControlVisualProvider_animateTransitionIndicatorsFromPage_toPage_ripple___block_invoke;
      v33[3] = &unk_1E70F32F0;
      v33[4] = a1;
      v33[5] = v14;
      v19 = v33;
      v20 = 0.25;
      if (v11 == 1)
      {
        v20 = 0.125;
      }

      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = ___UIPageIndicatorAnimateFadeOut_block_invoke;
      v30 = &unk_1E70F0F78;
      v31 = v19;
      [UIView animateWithDuration:131076 delay:&v27 options:0 animations:v20 completion:0.0];

      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __93___UIInteractivePageControlVisualProvider_animateTransitionIndicatorsFromPage_toPage_ripple___block_invoke_2;
      v30 = &unk_1E70F32F0;
      v31 = a1;
      v32 = a2;
      v21 = &v27;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = ___UIPageIndicatorAnimateFadeIn_block_invoke;
      v34[3] = &unk_1E70F0F78;
      v35 = v21;
      [UIView animateWithDuration:7 delay:v34 options:0 animations:0.015625 completion:0.0];
    }
  }
}

- (BOOL)_indicatorModeForPage:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    if ([(_UIInteractivePageControlVisualProvider *)a1 _hasActiveExpandedIndicator])
    {
      v4 = a2;
      v5 = [v2 continuousDisplayedPage];
      [v5 value];
      v2 = v6 == v4;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;
  v6 = v4;

  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _installBackgroundViewIfNeeded];
  [(UIView *)self->super._pageControl setNeedsLayout];
}

- (double)_layoutSizeForIndicator:(id *)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v3 = a2;
  [v3 currentExpandProgress];
  v5 = [(_UIInteractivePageControlVisualProvider *)a1 _layoutSizeForIndicator:v3 progress:v4];

  return v5;
}

- (double)_indicatorScaleForPage:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = *(a1 + 320);
  v5 = fmax(fmin(((v4 - 2) / 2), 2.0), 0.0);
  v6 = *(a1 + 368);
  v7 = a2;
  v8 = a2 - v6;
  v9 = [*(a1 + 8) numberOfPages];
  v10 = 1.0;
  v11 = fmax(fmin((v6 + -0.999) / -0.999, 1.0), 0.0);
  if (a2 || (v11 > 0.0 ? (v12 = v5 < 1) : (v12 = 1), v12))
  {
    if (a2 == 1 && v11 > 0.0 && v5 >= 2)
    {
      v16 = (v8 + 0.5) / 1.5;
LABEL_30:
      v14 = fmin(v16, 1.0);
      goto LABEL_31;
    }

    v17 = v4;
    if (fmax(fmin((v6 - ((v9 - v4) + -1.0)) / ((v9 - v4) - ((v9 - v4) + -1.0)), 1.0), 0.0) > 0.0)
    {
      if ([*(a1 + 8) numberOfPages] - 1 == a2 && v5 >= 1)
      {
        v18 = v4 - 1;
LABEL_28:
        v19 = v18;
        goto LABEL_29;
      }

      if ([*(a1 + 8) numberOfPages] - 2 == a2 && v5 >= 2)
      {
        v19 = v17 + -1.5;
LABEL_29:
        v16 = (v8 - v17) / (v19 - v17);
        goto LABEL_30;
      }
    }

    v20 = v5;
    if (v6 != 0.0 && v8 < v20)
    {
      v10 = 1.0;
      v13 = (v8 + 1.0) / (v20 + 1.0);
      goto LABEL_8;
    }

    v21 = fmax(v6, v6 + v17 + -1.0);
    v22 = 1.0;
    if (v21 + 1.0 == [*(a1 + 8) numberOfPages] || v21 - v20 >= v7)
    {
      goto LABEL_32;
    }

    v18 = v4 + ~v5;
    goto LABEL_28;
  }

  v13 = v8 + 1.0;
LABEL_8:
  v14 = fmin(v13, v10);
LABEL_31:
  v22 = fmax(v14, 0.0);
LABEL_32:
  v23 = [a1 indicatorTransformCurve];
  *&v24 = v22;
  [v23 _solveForInput:v24];
  v26 = fabsf(v25);

  return v26;
}

- (double)_layoutSizeForIndicator:(double)a3 progress:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    v8 = [a1 indicatorStore];
    v9 = [v7 page];

    [v8 resolvedIndicatorLayoutSizeForPage:v9];
    v11 = v10;

    if (a3 != 0.0)
    {
      [v7 page];
      v12 = [v7 page];
      if (v12 != [a1[1] numberOfPages] - 1)
      {
        v13 = [a1 indicatorStore];
        [v13 resolvedIndicatorLayoutSizeForPage:{objc_msgSend(v7, "page") + 1}];
      }

      [(_UIInteractivePageControlVisualProvider *)a1 _indicatorSpacing];
      [a1 resolvedDirection];
      [a1 resolvedDirection];
      UIRoundToViewScale(a1[1]);
      v15 = v14;
      if ([a1 resolvedDirection] < 2)
      {
        v11 = v15;
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (void)invalidateIndicators
{
  [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
  v3 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
  [v3 invalidateIndicators];

  [(_UIInteractivePageControlVisualProvider *)self _updateReuseQueue];
  pageControl = self->super._pageControl;

  [(UIView *)pageControl setNeedsLayout];
}

- (BOOL)_isPageWithinPermittedDisplayedRange:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 312);
    v5 = a2 - v4;
    v6 = *(result + 320);
    v7 = [*(result + 8) numberOfPages];
    v8 = [*(v3 + 8) numberOfPages];
    result = 0;
    if ((v5 & 0x8000000000000000) == 0 && v5 < v6)
    {
      v9 = fmax(fmin(((*(v3 + 320) - 2) / 2), 2.0), 0.0);
      if (v4 && v5 < v9)
      {
        return 0;
      }

      if ([*(v3 + 8) numberOfPages] - v9 <= a2)
      {
        v10 = *(v3 + 312);
        if (v10 != fmax(fmin((v7 - v6), (v8 - 1)), 0.0) && v5 + v9 >= v6)
        {
          return 0;
        }
      }

      else
      {
        if (v5 + v9 >= v6)
        {
          return 0;
        }

        v10 = *(v3 + 312);
      }

      return v10 + v6 <= [*(v3 + 8) numberOfPages];
    }
  }

  return result;
}

- (CGSize)sizeForNumberOfPages:(int64_t)a3
{
  v5 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  [v5 contentSizeForNumberOfPages:a3 hasExpandedActiveIndicator:-[_UIInteractivePageControlVisualProvider _supportsExpandedIndicator](self)];
  v7 = v6;
  v9 = v8;

  if (self && ([(UIPageControl *)self->super._pageControl backgroundStyle]!= UIPageControlBackgroundStyleMinimal || (*&self->super._pageControl->_custom & 3) != 0))
  {
    v10 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    pageControl = self->super._pageControl;
    custom = pageControl->_custom;
    if (v10 > 1)
    {
      v13 = 16.0;
      if (*&pageControl->_custom)
      {
        [(UIPageControl *)pageControl _customVerticalPadding];
        v13 = v17 + v17;
        pageControl = self->super._pageControl;
        custom = pageControl->_custom;
      }

      v15 = 28.0;
      if ((custom & 2) == 0)
      {
        goto LABEL_14;
      }

      [(UIPageControl *)pageControl _customHorizontalPadding];
    }

    else
    {
      v13 = 28.0;
      if ((*&pageControl->_custom & 2) != 0)
      {
        [(UIPageControl *)pageControl _customHorizontalPadding];
        v13 = v14 + v14;
        pageControl = self->super._pageControl;
        custom = pageControl->_custom;
      }

      v15 = 16.0;
      if ((custom & 1) == 0)
      {
        goto LABEL_14;
      }

      [(UIPageControl *)pageControl _customVerticalPadding];
    }

    v15 = v16 + v16;
LABEL_14:
    v7 = v7 + v13;
    v9 = v9 + v15;
  }

  if (qword_1ED49B048 != -1)
  {
    dispatch_once(&qword_1ED49B048, &__block_literal_global_605);
  }

  if (_MergedGlobals_23_6 == 1)
  {
    v18 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v19 = 0.0;
    v20 = 0.0;
    if (self)
    {
      v21 = [(UIPageControl *)self->super._pageControl allowsContinuousInteraction];
      v20 = 42.5;
      if (!v21)
      {
        v20 = 0.0;
      }
    }

    if (v18 >= 2)
    {
      v22 = v9;
    }

    else
    {
      v22 = v7;
    }

    v23 = v22 + v20;
    if (v18 >= 2)
    {
      v9 = v23;
    }

    else
    {
      v7 = v23;
    }

    v24 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v25 = v9;
    }

    else
    {
      v25 = v7;
    }

    if (self)
    {
      if ([(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _hasContentScaling])
      {
        v19 = 1.05;
      }

      else
      {
        v19 = 1.0;
      }
    }

    if (v24 >= 2)
    {
      v9 = v25 * v19;
    }

    else
    {
      v7 = v25 * v19;
    }
  }

  v26 = v7;
  v27 = v9;
  result.height = v27;
  result.width = v26;
  return result;
}

- (CGRect)indicatorFrameForPage:(int64_t)a3
{
  v5 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
  v6 = [v5 activeIndicatorForPage:a3];

  if (v6)
  {
    [v6 bounds];
    [v6 convertRect:self->super._pageControl toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F050];
    v10 = *(MEMORY[0x1E695F050] + 8);
    v12 = *(MEMORY[0x1E695F050] + 16);
    v14 = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGSize)indicatorSizeForImage:(id)a3
{
  v4 = a3;
  v5 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
  [v5 indicatorSizeForCustomImage:v4];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)configureIndicatorImagesForIndicator:(id)a3 atPage:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v8 = [v7 indicatorImageForPage:a4];
  [v6 setImage:v8];

  v10 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v9 = [v10 activeIndicatorImageForPage:a4];
  [v6 setActiveImage:v9];
}

- (void)configureIndicator:(id)a3 atPage:(int64_t)a4
{
  v6 = a3;
  v7 = [(_UIInteractivePageControlVisualProvider *)self _indicatorScaleForPage:a4];
  CGAffineTransformMakeScale(&v24, v7, v7);
  v18 = v24;
  [v6 setTransform:&v18];
  [v6 setDirection:{-[_UIInteractivePageControlVisualProvider resolvedDirection](self, "resolvedDirection")}];
  [v6 setSupportsExpandedIndicator:-[_UIInteractivePageControlVisualProvider _supportsExpandedIndicator](self)];
  v8 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _indicatorColorForEnabled:?];
  [v6 setActiveIndicatorColor:v8];

  v9 = [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _indicatorColorForEnabled:?];
  [v6 setIndicatorColor:v9];

  [(_UIPageControlVisualProvider *)self pageIndicatorVibrantColorMatrix];
  v18 = v21;
  v19 = v22;
  v20 = v23;
  [v6 setVibrantColorMatrix:&v18];
  [(_UIPageControlVisualProvider *)self activePageIndicatorVibrantColorMatrix];
  v18 = v15;
  v19 = v16;
  v20 = v17;
  [v6 setActiveVibrantColorMatrix:&v18];
  v10 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  [v10 value];
  [v6 setActive:v11 == a4];

  v12 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
  [v12 value];
  if (self)
  {
    if (v13 >= a4)
    {
      v14 = 2 * (v13 > a4);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  [v6 setMode:-[_UIInteractivePageControlVisualProvider _indicatorModeForPage:](&self->super.super.isa direction:{a4), v14}];
}

- (id)customIndicatorImageForPage:(int64_t)a3
{
  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v5 = [v4 customIndicatorImageForPage:a3];

  return v5;
}

- (void)setCustomIndicatorImage:(id)a3 forPage:(int64_t)a4
{
  v14 = a3;
  v6 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v7 = [v6 customIndicatorImageForPage:a4];
  v8 = [v7 isEqual:v14];

  if ((v8 & 1) == 0)
  {
    v9 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
    [v9 updateImage:v14 forPage:a4];

    v10 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    [v10 reloadIndicatorImageForPage:a4];

    v11 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
    [v11 value];
    v13 = llround(v12);

    [(_UIInteractivePageControlVisualProvider *)self _transitionIndicatorForPage:a4 toEnabled:v13 == a4];
    [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
    [(UIView *)self->super._pageControl setNeedsLayout];
  }
}

- (void)setPreferredIndicatorImage:(id)a3
{
  v8 = a3;
  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v5 = [v4 preferredImage];
  v6 = [v5 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
    [v7 setPreferredImage:v8];

    [(_UIInteractivePageControlVisualProvider *)self invalidateIndicators];
  }
}

- (id)preferredIndicatorImage
{
  v2 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v3 = [v2 preferredImage];

  return v3;
}

- (id)customActiveIndicatorImageForPage:(int64_t)a3
{
  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v5 = [v4 customActiveIndicatorImageForPage:a3];

  return v5;
}

- (void)setCustomActiveIndicatorImage:(id)a3 forPage:(int64_t)a4
{
  v14 = a3;
  v6 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v7 = [v6 customActiveIndicatorImageForPage:a4];
  v8 = [v7 isEqual:v14];

  if ((v8 & 1) == 0)
  {
    v9 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
    [v9 updateActiveImage:v14 forPage:a4];

    v10 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    [v10 reloadIndicatorImageForPage:a4];

    v11 = [(_UIInteractivePageControlVisualProvider *)self continuousDisplayedPage];
    [v11 value];
    v13 = llround(v12);

    [(_UIInteractivePageControlVisualProvider *)self _transitionIndicatorForPage:a4 toEnabled:v13 == a4];
    [(UIView *)self->super._pageControl invalidateIntrinsicContentSize];
    [(UIView *)self->super._pageControl setNeedsLayout];
  }
}

- (void)setPreferredActiveIndicatorImage:(id)a3
{
  v8 = a3;
  v4 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v5 = [v4 preferredActiveImage];
  v6 = [v5 isEqual:v8];

  if ((v6 & 1) == 0)
  {
    v7 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
    [v7 setPreferredActiveImage:v8];

    [(_UIInteractivePageControlVisualProvider *)self invalidateIndicators];
  }
}

- (id)preferredActiveIndicatorImage
{
  v2 = [(_UIInteractivePageControlVisualProvider *)self indicatorStore];
  v3 = [v2 preferredActiveImage];

  return v3;
}

- (double)_preciseIndicatorPageForPoint:(double)a3
{
  if (!a1)
  {
    return 0.0;
  }

  v6 = [a1 contentView];
  v7 = [a1 indicatorContentView];
  [v6 convertPoint:v7 toView:{a2, a3}];
  v74 = v9;
  v76 = v8;

  v10 = [a1 resolvedDirection] & 0xFFFFFFFFFFFFFFFDLL;
  v11 = [(_UIInteractivePageControlVisualProvider *)a1 _indicatorSpacing]* 0.5;
  [*(a1 + 8) _currentScreenScale];
  v13 = v12;
  v14 = *(a1 + 320) + *(a1 + 312);
  v15 = [*(a1 + 8) numberOfPages];
  if (v14 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = *(a1 + 312);
  if (v17 >= v16)
  {
LABEL_23:
    v43 = [a1 resolvedDirection];
    v44 = [a1 indicatorStore];
    [v44 defaultIndicatorSize];
    if (v43 >= 2)
    {
      v45 = v46;
    }

    v47 = v11 + v11 + v45;

    v19 = [(_UIInteractivePageControlVisualProvider *)a1 _visibleLeftIndicator];
    v48 = [(_UIInteractivePageControlVisualProvider *)a1 _visibleRightIndicator];
    v49 = v76;
    if ([a1 resolvedDirection] >= 2)
    {
      v50 = v75;
    }

    else
    {
      v50 = v76;
    }

    v51 = [a1 resolvedDirection];
    [v19 center];
    if (v51 >= 2)
    {
      v54 = v53;
    }

    else
    {
      v54 = v52;
    }

    if ([a1 resolvedDirection] >= 2)
    {
      v49 = v75;
    }

    v55 = [a1 resolvedDirection];
    if (v50 >= v54)
    {
      [v48 center];
      if (v55 >= 2)
      {
        v66 = v65;
      }

      else
      {
        v66 = v64;
      }

      v67 = [a1 resolvedDirection];
      v68 = [(_UIInteractivePageControlVisualProvider *)a1 _layoutSizeForIndicator:v19];
      if (v67 >= 2)
      {
        v68 = v69;
      }

      v62 = v11 + v66 + v68 * 0.5;
      v63 = [v48 page] + 1;
    }

    else
    {
      [v19 center];
      if (v55 >= 2)
      {
        v58 = v57;
      }

      else
      {
        v58 = v56;
      }

      v59 = [a1 resolvedDirection];
      v60 = [(_UIInteractivePageControlVisualProvider *)a1 _layoutSizeForIndicator:v19];
      if (v59 >= 2)
      {
        v60 = v61;
      }

      v62 = v58 + v60 * -0.5 - v11;
      v63 = [v19 page];
    }

    v70 = (v49 - v62) / v47;
    if (v10 == 1)
    {
      v70 = -v70;
    }

    v71 = v70 + v63;
  }

  else
  {
    while (1)
    {
      v18 = [a1 indicatorFeed];
      v19 = [v18 indicatorForPage:v17];

      v20 = [a1 resolvedDirection];
      [v19 center];
      if (v20 >= 2)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21;
      }

      v24 = [a1 resolvedDirection];
      v25 = [(_UIInteractivePageControlVisualProvider *)a1 _layoutSizeForIndicator:v19];
      if (v24 >= 2)
      {
        v25 = v26;
      }

      v27 = v23 + v25 * -0.5 - v11;
      v28 = [a1 resolvedDirection];
      [v19 center];
      v30 = v29;
      v32 = v31;
      v33 = [a1 resolvedDirection];
      v34 = [(_UIInteractivePageControlVisualProvider *)a1 _layoutSizeForIndicator:v19];
      v36 = v35;
      v37 = [a1 resolvedDirection] >= 2 ? v74 : v76;
      UIFloorToScale(v27, v13);
      if (v37 >= v38)
      {
        v39 = v28 >= 2 ? v32 : v30;
        v40 = v33 >= 2 ? v36 : v34;
        v41 = v11 + v39 + v40 * 0.5;
        UICeilToScale(v41, v13);
        if (v37 <= v42)
        {
          break;
        }
      }

      if (v16 == ++v17)
      {
        goto LABEL_23;
      }
    }

    v73 = (v37 - v41) / (v27 - v41);
    if (v10 != 1)
    {
      v73 = (v37 - v27) / (v41 - v27);
    }

    v71 = v73 + v17;
  }

  return v71;
}

- (uint64_t)_allowsPreciseTargetPageForTap:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 408);
    if (v4 == v3)
    {
      v6 = [v4 touches];
      v7 = [v6 firstObject];
      v5 = [v7 _isPointerTouch];
    }

    else
    {
      v5 = 0;
    }

    v8 = [a1 contentView];
    v9 = [a1 contentView];
    [v3 locationInView:v9];
    v10 = [v8 pointInside:0 withEvent:?];

    if ([*(a1 + 8) _prefersTargetPageForDiscreteInteraction])
    {
      v11 = [(_UIInteractivePageControlVisualProvider *)a1 _indicatorSpacing]> 20.0;
    }

    else
    {
      v11 = 0;
    }

    LOBYTE(a1) = (v5 | v11) & v10;
  }

  return a1 & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if ([v4 _isGestureType:1])
  {
    v5 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    v6 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v4 locationInView:v6];
    LOBYTE(self) = [v5 pointInside:0 withEvent:?];
  }

  else if ([v4 _isGestureType:0])
  {
    LODWORD(self) = ![(_UIInteractivePageControlVisualProvider *)self isScrubbing];
  }

  else
  {
    LOBYTE(self) = 1;
  }

  return self;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 isMemberOfClass:objc_opt_class()];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 isMemberOfClass:objc_opt_class()];
  }

  return v8;
}

- (void)didTapPageControl:(id)a3
{
  v81 = a3;
  v4 = [(_UIInteractivePageControlVisualProvider *)self contentView];
  [v81 locationInView:v4];
  v6 = v5;
  v8 = v7;

  if (![(_UIInteractivePageControlVisualProvider *)self _allowsPreciseTargetPageForTap:v81])
  {
    if ([(UIPageControl *)self->super._pageControl numberOfPages]== 2)
    {
      v9 = [(UIPageControl *)self->super._pageControl currentPage]== 0;
LABEL_52:
      if (v9 != [(UIPageControl *)self->super._pageControl currentPage])
      {
        [(_UIInteractivePageControlVisualProvider *)self setPage:v9 interactionState:1];
      }

      goto LABEL_54;
    }

    v23 = [(_UIInteractivePageControlVisualProvider *)self _indicatorSpacing];
    v24 = [(_UIInteractivePageControlVisualProvider *)self previousMoveDirection];
    v25 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    [(_UIInteractivePageControlVisualProvider *)self previousTouchLocation];
    v27 = v8 - v26;
    v29 = v6 - v28;
    if (v25 >= 2)
    {
      v29 = v27;
    }

    if (v24)
    {
      v29 = fabs(v29);
      if (v29 <= v23)
      {
LABEL_44:
        v9 = [(UIPageControl *)self->super._pageControl currentPage];
        if (v24 != 1)
        {
          if (v24 != 2)
          {
LABEL_48:
            v77 = [(_UIInteractivePageControlVisualProvider *)self successiveTapAction];

            if (v77)
            {
              v78 = [(_UIInteractivePageControlVisualProvider *)self successiveTapAction];
              [v78 cancel];

              [(_UIInteractivePageControlVisualProvider *)self setSuccessiveTapAction:0];
            }

            v79 = [[UIDelayedAction alloc] initWithTarget:self action:sel_resetSuccessiveTapInfo userInfo:0 delay:0.75];
            [(_UIInteractivePageControlVisualProvider *)self setSuccessiveTapAction:v79];

            [(_UIInteractivePageControlVisualProvider *)self setPreviousTouchLocation:v6, v8];
LABEL_51:
            if (v9 == -1)
            {
              goto LABEL_54;
            }

            goto LABEL_52;
          }

          v24 = -1;
        }

        v9 = fmax(fmin((v24 + v9), ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
        goto LABEL_48;
      }
    }

    v30 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    v31 = [v30 activeIndicatorForPage:{-[UIPageControl currentPage](self->super._pageControl, "currentPage")}];

    if (v31)
    {
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v40 = [(_UIInteractivePageControlVisualProvider *)self contentView];
      [v31 convertRect:v40 toView:{v33, v35, v37, v39}];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v85.origin.x = v42;
      v85.origin.y = v44;
      v85.size.width = v46;
      v85.size.height = v48;
      v83.x = v6;
      v83.y = v8;
      if (CGRectContainsPoint(v85, v83))
      {
LABEL_43:
        [(_UIInteractivePageControlVisualProvider *)self setPreviousMoveDirection:v24];

        goto LABEL_44;
      }
    }

    else
    {
      v68 = [(_UIInteractivePageControlVisualProvider *)self contentView];
      [v68 bounds];
      v42 = v69;
      v44 = v70;
      v46 = v71;
      v48 = v72;
    }

    v73 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v74 = ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]& 0xFFFFFFFFFFFFFFFDLL) == 1;
    if (v73 > 1)
    {
      v75 = v8 > v48 * 0.5 + v44;
    }

    else
    {
      v75 = v6 > v46 * 0.5 + v42;
    }

    v76 = v75;
    if (v76 != v74)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }

    goto LABEL_43;
  }

  v9 = [(_UIInteractivePageControlVisualProvider *)self _preciseIndicatorPageForPoint:v6, v8];
  indicatorStartIndex = self->_indicatorStartIndex;
  if (indicatorStartIndex <= v9 && self->_numberOfVisibleIndicators + indicatorStartIndex > v9)
  {
    v11 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    v12 = [v11 indicatorForPage:v9];

    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [v81 touches];
    v22 = [v21 firstObject];
    if ([v22 _isPointerTouch])
    {
    }

    else
    {
      v49 = [(UIPageControl *)self->super._pageControl _prefersTargetPageForDiscreteInteraction];

      if (v49)
      {
        v50 = *(MEMORY[0x1E695F060] + 8);
        v80 = *MEMORY[0x1E695F060];
        v51 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
        v52 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
        [v12 bounds];
        if (v52 >= 2)
        {
          v55 = v54;
        }

        else
        {
          v55 = v53;
        }

        v56 = [(_UIInteractivePageControlVisualProvider *)self _indicatorSpacing]+ v55;
        if (v51 >= 2)
        {
          v57 = v80;
        }

        else
        {
          v57 = v56;
        }

        if (v51 >= 2)
        {
          v50 = v56;
        }

        v58 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
        v59 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
        v60 = [(_UIInteractivePageControlVisualProvider *)self contentView];
        [v60 bounds];
        if (v59 >= 2)
        {
          v63 = v61;
        }

        else
        {
          v63 = v62;
        }

        if (v58 < 2)
        {
          v50 = v63;
        }

        else
        {
          v57 = v63;
        }

        v14 = v14 + (v18 - v57) * 0.5;
        v16 = v16 + (v20 - v50) * 0.5;
        v20 = v50;
        v18 = v57;
      }
    }

    v64 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v64 convertPoint:v12 toView:{v6, v8}];
    v84.x = v65;
    v84.y = v66;
    v86.origin.x = v14;
    v86.origin.y = v16;
    v86.size.width = v18;
    v86.size.height = v20;
    v67 = CGRectContainsPoint(v86, v84);

    if (v67)
    {
      goto LABEL_51;
    }
  }

LABEL_54:
}

- (void)didScrubPageControl:(id)a3
{
  v70 = a3;
  [v70 locationInView:self->super._pageControl];
  v5 = v4;
  v7 = v6;
  v8 = [v70 state];
  if (v8 == 4)
  {
    v11 = [(_UIInteractivePageControlVisualProvider *)self selectionFeedbackGenerator];
    [v11 userInteractionCancelledAtLocation:{v5, v7}];
    goto LABEL_7;
  }

  if (v8 == 3)
  {
    v11 = [(_UIInteractivePageControlVisualProvider *)self selectionFeedbackGenerator];
    [v11 userInteractionEndedAtLocation:{v5, v7}];
LABEL_7:

    v10 = [(_UIInteractivePageControlVisualProvider *)self joggingFeedbackGenerator];
    [v10 deactivate];
    goto LABEL_8;
  }

  if (v8 != 1)
  {
    goto LABEL_9;
  }

  v9 = [(_UIInteractivePageControlVisualProvider *)self selectionFeedbackGenerator];
  [v9 userInteractionStartedAtLocation:{v5, v7}];

  v10 = [(_UIInteractivePageControlVisualProvider *)self joggingFeedbackGenerator];
  [v10 activateWithCompletionBlock:0];
LABEL_8:

LABEL_9:
  v12 = [v70 state];
  if ((v12 - 3) < 2)
  {
    v47 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v70 velocityInView:v47];
    v49 = v48;
    v51 = v50;

    if ([(UIPageControl *)self->super._pageControl _flickToEndGestureEnabled])
    {
      v52 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2 ? v51 : v49;
      if (fabs(v52) > 800.0)
      {
        if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
        {
          v53 = v51;
        }

        else
        {
          v53 = v49;
        }

        if (v53 > 0.0 == (([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]& 0xFFFFFFFFFFFFFFFDLL) == 1))
        {
          v54 = 0;
        }

        else
        {
          v54 = [(UIPageControl *)self->super._pageControl numberOfPages]- 1;
        }

        self->_targetPage = v54;
        [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _updateCurrentPage:v54 completion:0];
      }
    }

    v69 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    [v69 commitTranslation];

    [(_UIInteractivePageControlVisualProvider *)self setScrubbing:0];
  }

  else if (v12 == 2)
  {
    v55 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v70 _translationInView:v55];
    v57 = v56;
    v59 = v58;

    v60 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v70 velocityInView:v60];
    v62 = v61;
    v64 = v63;

    v65 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v66 = v59;
    }

    else
    {
      v66 = v57;
    }

    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v67 = v64;
    }

    else
    {
      v67 = v62;
    }

    [v65 setTranslation:v66 velocity:v67];

    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v68 = v59;
    }

    else
    {
      v68 = v57;
    }

    self->_panDistance = v68;
    [(UIView *)self->super._pageControl setNeedsLayout];
  }

  else if (v12 == 1)
  {
    [(_UIInteractivePageControlVisualProvider *)self setScrubbing:1];
    *&self->_state &= ~4u;
    v13 = [(_UIInteractivePageControlVisualProvider *)self contentView];
    [v70 startPoint];
    v15 = v14;
    v17 = v16;
    v18 = [v70 view];
    [v13 convertPoint:v18 fromView:{v15, v17}];
    v20 = v19;
    v22 = v21;

    v23 = fmax(fmin([(_UIInteractivePageControlVisualProvider *)self _preciseIndicatorPageForPoint:v20, v22], ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
    if ([(_UIInteractivePageControlVisualProvider *)self _allowsPreciseTargetPageForTap:v70])
    {
      indicatorStartIndex = self->_indicatorStartIndex;
      if (indicatorStartIndex <= v23 && self->_numberOfVisibleIndicators + indicatorStartIndex > v23)
      {
        self->_targetPage = v23;
        [(_UIInteractivePageControlVisualProvider *)self setPage:v23 interactionState:1];
      }
    }

    v25 = [(UIPageControl *)self->super._pageControl currentPage];
    v26 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    v27 = [v26 indicatorForPage:v23];
    [v27 center];
    v29 = v28;
    v31 = v30;

    v32 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
    v33 = [v32 indicatorForPage:v25];
    [v33 center];
    v35 = v34;
    v37 = v36;

    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v35 = v37;
    }

    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v38 = v31;
    }

    else
    {
      v38 = v29;
    }

    v39 = v35 - v38;
    v40 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
    {
      v41 = v22;
    }

    else
    {
      v41 = v20;
    }

    [v40 setUnconstrainedPosition:v41 offset:v39];

    v42 = [(_UIInteractivePageControlVisualProvider *)self displayLink];

    if (!v42)
    {
      v43 = [(UIView *)self->super._pageControl _screen];
      v44 = [v43 displayLinkWithTarget:self selector:sel_displayLinkTicked_];

      v45 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v44 addToRunLoop:v45 forMode:*MEMORY[0x1E695DA28]];

      v46 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [v44 addToRunLoop:v46 forMode:@"UITrackingRunLoopMode"];

      [(_UIInteractivePageControlVisualProvider *)self setDisplayLink:v44];
    }
  }
}

- (void)displayLinkTicked:(id)a3
{
  v4 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
  if ([(_UIInteractivePageControlVisualProvider *)self isScrubbing])
  {
    v5 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v6 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    [v6 unconstrainedPosition];
    MidY = v7;
    [(UIView *)self->super._pageControl bounds];
    if (v5 > 1)
    {
      MidX = CGRectGetMidX(*&v9);
    }

    else
    {
      MidX = MidY;
      MidY = CGRectGetMidY(*&v9);
    }

    v14 = [(_UIInteractivePageControlVisualProvider *)self _preciseIndicatorPageForPoint:MidY];
    [(_UIInteractivePageControlVisualProvider *)self setPreciseTouchedPage:?];
    v15 = fabs(self->_panDistance);
    if (v15 <= 16.0)
    {
      if ((*&self->_state & 4) == 0)
      {
        return;
      }
    }

    else
    {
      *&self->_state |= 4u;
    }

    v16 = [(_UIInteractivePageControlVisualProvider *)self resolvedDirection];
    v17 = [(_UIInteractivePageControlVisualProvider *)self interactor];
    [v17 boundedScrubPosition];
    v19 = v18;
    [(UIView *)self->super._pageControl bounds];
    if (v16 > 1)
    {
      v24 = CGRectGetMidX(*&v20);
    }

    else
    {
      v24 = v19;
      v19 = CGRectGetMidY(*&v20);
    }

    v25 = [(_UIInteractivePageControlVisualProvider *)self _preciseIndicatorPageForPoint:v24, v19];
    if (v15 <= 16.0 && self->_tickThreshold != 0)
    {
LABEL_35:
      v43 = self->_currentTick + 1;
      self->_currentTick = v43;
      if (v43 < self->_tickThreshold)
      {
        goto LABEL_70;
      }

      self->_currentTick = 0;
      v44 = [(_UIInteractivePageControlVisualProvider *)self _isPageWithinPermittedDisplayedRange:v14];
      v45 = [(_UIInteractivePageControlVisualProvider *)self _isPageWithinPermittedDisplayedRange:v25];
      v46 = [(UIPageControl *)self->super._pageControl currentPage];
      v47 = [(UIPageControl *)self->super._pageControl numberOfPages];
      v48 = [(UIPageControl *)self->super._pageControl numberOfPages];
      if (v44 || !v45)
      {
        v49 = fmax(fmin(v25, (v48 - 1)), 0.0);
        if (v45 || !v44 || v46 == v49)
        {
          goto LABEL_62;
        }

        v53 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
        [v53 indicatorSizeForPage:v46];
        v55 = v54;
        v57 = v56;

        if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
        {
          v58 = v57;
        }

        else
        {
          v58 = v55;
        }

        v59 = v58 * 0.25;
      }

      else
      {
        v49 = fmax(fmin(v14, (v47 - 1)), 0.0);
        numberOfVisibleIndicators = self->_numberOfVisibleIndicators;
        v51 = [(UIPageControl *)self->super._pageControl numberOfPages];
        if (v15 > 16.0 && numberOfVisibleIndicators != v51)
        {
          v52 = [(_UIInteractivePageControlVisualProvider *)self interactor];
          [v52 reduceScrubOffsetByRatio:3.0];
LABEL_61:

LABEL_62:
          if (v49 > v46)
          {
            v69 = 1;
          }

          else
          {
            v69 = 2 * (v49 < v46);
          }

          v70 = v4[866];
          v71 = *(&self->super.super.isa + v70);
          if (v69 != 1)
          {
            if (v69 != 2)
            {
LABEL_69:
              *(&self->super.super.isa + v70) = v71;
              goto LABEL_70;
            }

            v69 = -1;
          }

          v71 = fmax(fmin((v71 + v69), ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
          goto LABEL_69;
        }

        v61 = v15 <= 16.0 || numberOfVisibleIndicators != v51;
        if (v46 == v49 && v61)
        {
          v49 = v46;
          goto LABEL_62;
        }

        v62 = [(_UIInteractivePageControlVisualProvider *)self _indicatorSpacing];
        v63 = [(_UIInteractivePageControlVisualProvider *)self indicatorFeed];
        [v63 indicatorSizeForPage:v46];
        v65 = v64;
        v67 = v66;

        if ([(_UIInteractivePageControlVisualProvider *)self resolvedDirection]>= 2)
        {
          v68 = v67;
        }

        else
        {
          v68 = v65;
        }

        v59 = v62 + v68;
      }

      v52 = [(_UIInteractivePageControlVisualProvider *)self interactor];
      [v52 reduceScrubOffsetByOffset:v59];
      goto LABEL_61;
    }

    v27 = [(UIPageControl *)self->super._pageControl numberOfPages];
    v28 = self->_numberOfVisibleIndicators;
    indicatorStartIndex = self->_indicatorStartIndex;
    v30 = [(_UIInteractivePageControlVisualProvider *)self displayLink];
    v31 = [v30 actualFramesPerSecond];

    v32 = self->_numberOfVisibleIndicators;
    v33 = [(UIPageControl *)self->super._pageControl numberOfPages];
    v34 = [(_UIInteractivePageControlVisualProvider *)self _isPageWithinValidJoggingOffset:v14];
    v35 = [(_UIInteractivePageControlVisualProvider *)self _isPageWithinValidJoggingOffset:v25];
    if (vcvtd_n_f64_s64(v28, 1uLL) + indicatorStartIndex >= v14)
    {
      v36 = self->_indicatorStartIndex - v14;
    }

    else
    {
      v36 = v14 - (indicatorStartIndex + v28);
    }

    v37 = v31;
    if (v32 == v33)
    {
      v4 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
      v38 = v14 < -1.0 && [(UIPageControl *)self->super._pageControl currentPage]> 1;
      v41 = v14 > v27 && [(UIPageControl *)self->super._pageControl currentPage]< v27 - 2;
      v42 = 0.0;
      if (!v38 && !v41)
      {
        goto LABEL_34;
      }

      v40 = exp2(fmin(v36, 3.0));
    }

    else
    {
      v4 = &OBJC_IVAR____UITabContainerView__alongsideAnimator;
      if ((v34 & v35) != 1)
      {
        v42 = v37 * 0.25;
        if (v34 == v35)
        {
          v42 = 0.0;
        }

        goto LABEL_34;
      }

      v39 = fmax(fmin(((v28 - 2) / 2), 2.0), 0.0);
      v40 = pow(1.6, fmin(v39 + 3.5, v36 + v39));
    }

    v42 = v37 / v40;
LABEL_34:
    self->_tickThreshold = v42;
    self->_panDistance = 0.0;
    goto LABEL_35;
  }

LABEL_70:
  v72 = [(UIPageControl *)self->super._pageControl currentPage];
  v73 = [(UIPageControl *)self->super._pageControl numberOfPages];
  v74 = fmax(fmin(*(&self->super.super.isa + v4[866]), ([(UIPageControl *)self->super._pageControl numberOfPages]- 1)), 0.0);
  if (v72 == v74)
  {
    if (![(_UIInteractivePageControlVisualProvider *)self isScrubbing])
    {
      v75 = [(_UIInteractivePageControlVisualProvider *)self displayLink];
      [v75 invalidate];

      [(_UIInteractivePageControlVisualProvider *)self setDisplayLink:0];
    }

    return;
  }

  [(_UIPageControlVisualProvider *)self setInteractionState:2];
  [(_UIInteractivePageControlVisualProvider *)&self->super.super.isa _updateCurrentPage:v74 completion:0];
  if (v73 != self->_numberOfVisibleIndicators)
  {
    if (v74)
    {
      v76 = v73 - 1 == v74;
    }

    else
    {
      v76 = 1;
    }

    if (v76)
    {
      v82 = [(_UIInteractivePageControlVisualProvider *)self joggingFeedbackGenerator];
      [(UIView *)self->super._pageControl center];
      [v82 impactOccurredWithIntensity:1.0 atLocation:{v77, v78}];
      goto LABEL_86;
    }

    if (![(_UIInteractivePageControlVisualProvider *)self _isPageWithinPermittedDisplayedRange:v74])
    {
      v82 = [(_UIInteractivePageControlVisualProvider *)self joggingFeedbackGenerator];
      [(UIView *)self->super._pageControl center];
      [v82 impactOccurredWithIntensity:0.45 atLocation:{v80, v81}];
      goto LABEL_86;
    }
  }

  v82 = [(_UIInteractivePageControlVisualProvider *)self selectionFeedbackGenerator];
  [(UIView *)self->super._pageControl center];
  [v82 selectionChangedAtLocation:?];
LABEL_86:
}

- (BOOL)_isPageWithinValidJoggingOffset:(uint64_t)a1
{
  v4 = *(a1 + 312);
  v5 = *(a1 + 320);
  if ([(_UIInteractivePageControlVisualProvider *)a1 _isPageWithinPermittedDisplayedRange:a2])
  {
    return 0;
  }

  if (a2 <= 0.0 && *(a1 + 312) == 0)
  {
    return 0;
  }

  v7 = v5 + v4;
  v8 = [*(a1 + 8) numberOfPages];
  return (v7 - 1) > a2 || v7 != v8;
}

- (void)setScrubbing:(BOOL)a3
{
  v3 = a3;
  if ([(_UIInteractivePageControlVisualProvider *)self isScrubbing]!= a3)
  {
    *&self->_state = *&self->_state & 0xFE | v3;
    self->_targetPage = [(UIPageControl *)self->super._pageControl currentPage];
    self->_tickThreshold = 0;
    [(_UIInteractivePageControlVisualProvider *)self _updateCurrentPlatterMode];
    if (v3)
    {
      v5 = 2;
    }

    else
    {
      [(_UIInteractivePageControlVisualProvider *)self setPreciseTouchedPage:-1.79769313e308];
      v5 = 0;
    }

    [(_UIPageControlVisualProvider *)self setInteractionState:v5];
    v6 = [(UIPageControl *)self->super._pageControl progress];
    [v6 _progressVisibilityChanged:!v3];

    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    [(_UIInteractivePageControlVisualProvider *)&v16 _contentTransformForActiveState:v3];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    v12 = v16;
    aBlock[2] = __56___UIInteractivePageControlVisualProvider_setScrubbing___block_invoke;
    aBlock[3] = &unk_1E71016A8;
    aBlock[4] = self;
    v13 = v17;
    v14 = v18;
    v15 = v3;
    v7 = _Block_copy(aBlock);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56___UIInteractivePageControlVisualProvider_setScrubbing___block_invoke_2;
    v9[3] = &unk_1E70F0F78;
    v10 = v7;
    v8 = v7;
    [UIView _animateUsingSpringWithDampingRatio:1 response:v9 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.25 targetSmoothing:0.08 projectionDeceleration:1.0 animations:0.0 completion:0.0];
  }
}

- (uint64_t)_hasContentScaling
{
  result = [a1[1] backgroundStyle];
  if (result)
  {
    [a1 activeTransformForTouchedPage];
    return CGAffineTransformIsIdentity(&v3);
  }

  return result;
}

- (void)setPlatterExpanded:(BOOL)a3
{
  v3 = a3;
  if ([(_UIInteractivePageControlVisualProvider *)self isPlatterExpanded]!= a3)
  {
    if (v3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_state = *&self->_state & 0xFD | v5;
    v6 = [(_UIInteractivePageControlVisualProvider *)self backgroundView];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __62___UIInteractivePageControlVisualProvider_setPlatterExpanded___block_invoke;
    aBlock[3] = &unk_1E70F35E0;
    v7 = v6;
    v14 = v7;
    v15 = v3;
    v8 = _Block_copy(aBlock);
    if (v3 && ![(UIPageControl *)self->super._pageControl _allowsDiscreteInteraction])
    {
      v8[2](v8);
      [(_UIInteractivePageControlVisualProvider *)self didUpdatePageIndicatorTintColor];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __62___UIInteractivePageControlVisualProvider_setPlatterExpanded___block_invoke_2;
      v11[3] = &unk_1E70F0F78;
      v12 = v8;
      [UIView _animateUsingSpringWithDampingRatio:1 response:v11 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.1 targetSmoothing:0.08 projectionDeceleration:1.0 animations:0.0 completion:0.0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __62___UIInteractivePageControlVisualProvider_setPlatterExpanded___block_invoke_3;
      v10[3] = &unk_1E70F3590;
      v10[4] = self;
      v9 = v10;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___UIPageIndicatorAnimateFadeIn_block_invoke;
      v16[3] = &unk_1E70F0F78;
      v17 = v9;
      [UIView animateWithDuration:7 delay:v16 options:0 animations:0.015625 completion:0.0];
    }
  }
}

- (CGPoint)previousTouchLocation
{
  x = self->_previousTouchLocation.x;
  y = self->_previousTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end