@interface _UIDocumentCarouselView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (_UIDocumentCarouselView)initWithFrame:(CGRect)a3;
- (void)_cleanUpAfterAnimation;
- (void)_handlePanNavigation:(id)a3;
- (void)_handleTapNavigation:(id)a3;
- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3;
- (void)_performLayout;
- (void)_updatePagingFraction:(double)a3 withTracking:;
- (void)dealloc;
- (void)scrollToItemAtIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setItems:(id)a3;
- (void)setLockedFocusEnvironmentForAnimation:(_BYTE *)a1;
- (void)setPagingEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIDocumentCarouselView

- (_UIDocumentCarouselView)initWithFrame:(CGRect)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = _UIDocumentCarouselView;
  v3 = [(UIView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_centerItemFraction = 1.0;
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
    containerViews = v4->_containerViews;
    v4->_containerViews = v5;

    [(UIView *)v4 setPreservesSuperviewLayoutMargins:1];
    if (v4->_panGestureRecognizer || v4->_tapGestureRecognizer)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:sel__configureGestureRecognizers object:v4 file:@"_UIDocumentCarouselView.m" lineNumber:588 description:@"UIKit internal inconsistency: gesture recognizers have already been configured"];
    }

    v7 = [[UIPanGestureRecognizer alloc] initWithTarget:v4 action:sel__handlePanNavigation_];
    [(UIPanGestureRecognizer *)v7 setDelegate:v4];
    [(UIPanGestureRecognizer *)v7 setAllowedScrollTypesMask:3];
    panGestureRecognizer = v4->_panGestureRecognizer;
    v4->_panGestureRecognizer = v7;
    v9 = v7;

    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v4 action:sel__handleTapNavigation_];
    [(UIGestureRecognizer *)v10 setDelegate:v4];
    tapGestureRecognizer = v4->_tapGestureRecognizer;
    v4->_tapGestureRecognizer = v10;
    v12 = v10;

    [(UIView *)v4 addGestureRecognizer:v9];
    [(UIView *)v4 addGestureRecognizer:v12];

    v13 = objc_alloc_init(UIViewFloatAnimatableProperty);
    pagingFractionAnimatableProperty = v4->_pagingFractionAnimatableProperty;
    v4->_pagingFractionAnimatableProperty = v13;

    v15 = objc_alloc_init(UIViewFloatAnimatableProperty);
    revealAnimatableProperty = v4->_revealAnimatableProperty;
    v4->_revealAnimatableProperty = v15;

    objc_initWeak(&location, v4);
    v24[0] = v4->_pagingFractionAnimatableProperty;
    v24[1] = v4->_revealAnimatableProperty;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __57___UIDocumentCarouselView__configureAnimatableProperties__block_invoke;
    v21[3] = &unk_1E70F5A28;
    objc_copyWeak(&v22, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v17 presentationValueChangedCallback:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    [(_UIDocumentCarouselView *)v4 setPagingEnabled:1 animated:0];
  }

  return v4;
}

- (void)_performLayout
{
  v216 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  [*(a1 + 416) presentationValue];
  v3 = v2;
  [*(a1 + 424) presentationValue];
  v5 = v4;
  v6 = [*(a1 + 496) count];
  v7 = v6;
  if (v6 >= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = v6;
  }

  _UIDocumentCarouselViewItemWidth(a1);
  v10 = v9;
  _UIDocumentCarouselViewRevealDimension(a1);
  v136 = v11;
  if (!v7 || v10 <= 0.0)
  {
    v67 = *(a1 + 408);

    [v67 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_309];
    return;
  }

  v12 = vcvtmd_s64_f64(v3);
  v13 = floor(v3);
  v14 = vcvtpd_s64_f64(v3);
  if (v3 == v13)
  {
    v14 = v12 + 1;
  }

  v15 = (v12 % v7 + v7) % v7;
  v16 = (v14 % v7 + v7) % v7;
  v17 = *(a1 + 448);
  [a1 bounds];
  v158 = v19;
  v159 = v18;
  v156 = v21;
  v157 = v20;
  v170 = a1;
  [a1 directionalLayoutMargins];
  v23 = v22;
  v147 = v25;
  v149 = v24;
  v168 = v26;
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  v28 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8];
  v29 = 1;
  if (v7 < 4)
  {
    v29 = 2;
  }

  if (v7 >= 2)
  {
    v30 = v29;
  }

  else
  {
    v30 = 3;
  }

  v162 = v8;
  v167 = v28;
  do
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15 % v7];
    [v27 setObject:v31 forKeyedSubscript:v32];

    v33 = v167;
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v30];
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16 % v7];
    [v167 setObject:v34 forKeyedSubscript:v35];

    ++v16;
    ++v15;
    ++v30;
    --v8;
  }

  while (v8);
  v166 = v27;
  v36 = v3 - v13;
  v37 = v3 <= v17 + -1.0;
  if (v3 >= v17 + 1.0)
  {
    v37 = 1;
  }

  v164 = v37;
  v163 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v162];
  v133 = 0;
  v134 = 0;
  v137 = 0;
  v38 = 0;
  v39 = round(v3);
  v160 = *(MEMORY[0x1E695F060] + 8);
  v161 = *MEMORY[0x1E695F060];
  v40 = *MEMORY[0x1E695F060] == 0.0;
  if (v160 != 0.0)
  {
    v40 = 0;
  }

  v145 = v40;
  v151 = *(MEMORY[0x1E695F058] + 8);
  v153 = *MEMORY[0x1E695F058];
  v42 = *(MEMORY[0x1E695F058] + 16);
  v41 = *(MEMORY[0x1E695F058] + 24);
  do
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v38, v133}];
    v44 = [v166 objectForKeyedSubscript:v43];
    v45 = [v44 unsignedIntegerValue];

    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
    v47 = [v33 objectForKeyedSubscript:v46];
    v48 = [v47 unsignedIntegerValue];

    v49 = *(v170 + 408);
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
    p_a = [v49 objectForKeyedSubscript:v50];

    if (!(v45 | v48))
    {
      [p_a _setHiddenForReuse:1];
      goto LABEL_56;
    }

    v52 = objc_alloc_init(_UIDocumentCarouselViewLayoutAttributes);
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
    [v163 setObject:v52 forKeyedSubscript:v53];

    if (v45 == 3)
    {
      v54 = v52;

      if (v36 <= 0.5)
      {
        if (v54)
        {
          v54->_userInteractionEnabled = 1;
        }

        if (v164)
        {
          *(v170 + 456) = v38;
          *(v170 + 448) = v39;
        }
      }

      if (v38 == *(v170 + 456))
      {
        v137 = (v48 - 1) < 2;
      }

      v134 = v54;
    }

    if (v48 == 3)
    {
      v55 = v52;

      if (v36 > 0.5)
      {
        if (v55)
        {
          v55->_userInteractionEnabled = 1;
        }

        if (v164)
        {
          *(v170 + 456) = v38;
          *(v170 + 448) = v39;
        }
      }

      if (v38 == *(v170 + 456))
      {
        v137 = (v45 - 1) < 2;
      }

      v133 = v55;
    }

    v56 = [*(v170 + 496) objectAtIndexedSubscript:{v38, v133}];
    if (p_a)
    {
      [(_UIDocumentCarouselViewItemContainerView *)p_a setContentConfiguration:v56];
    }

    else
    {
      v57 = [_UIDocumentCarouselViewItemContainerView alloc];
      if (v57)
      {
        *&v214.a = v57;
        *&v214.b = _UIDocumentCarouselViewItemContainerView;
        v58 = [(CGAffineTransform *)&v214 initWithFrame:v153, v151, v42, v41];
        p_a = &v58->a;
        if (v58)
        {
          [(CGAffineTransform *)v58 _configureView];
          [(_UIDocumentCarouselViewItemContainerView *)p_a setContentConfiguration:v56];
        }
      }

      else
      {
        p_a = 0;
      }

      v59 = *(v170 + 408);
      v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
      [v59 setObject:p_a forKeyedSubscript:v60];

      [v170 addSubview:p_a];
      if (!p_a)
      {
        v62 = 0.0;
        v61 = 0.0;
        if (!v145)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    v61 = p_a[53];
    v62 = p_a[54];
    if (v161 != v61 || v160 != v62)
    {
      goto LABEL_53;
    }

LABEL_52:
    [p_a setDirectionalLayoutMargins:{0.0, 0.0, 0.0, 0.0}];
    v218.origin.y = v158;
    v218.origin.x = v159;
    v218.size.height = v156;
    v218.size.width = v157;
    Height = CGRectGetHeight(v218);
    LODWORD(v65) = 1148846080;
    LODWORD(v66) = 1132068864;
    [p_a systemLayoutSizeFittingSize:v10 withHorizontalFittingPriority:Height - v23 - v168 verticalFittingPriority:{v65, v66}];
LABEL_53:
    if (v52)
    {
      v52->_size.width = v61;
      v52->_size.height = v62;
    }

LABEL_56:
    ++v38;
    v33 = v167;
  }

  while (v7 != v38);
  v197[0] = MEMORY[0x1E69E9820];
  v197[1] = 3221225472;
  v198 = __41___UIDocumentCarouselView__performLayout__block_invoke_2;
  v199 = &unk_1E710BE78;
  v201 = v136;
  v202 = v159;
  v203 = v158;
  v204 = v157;
  v205 = v156;
  v206 = v23;
  v207 = v149;
  v208 = v168;
  v209 = v147;
  v210 = sel__performLayout;
  v200 = v170;
  v193[0] = MEMORY[0x1E69E9820];
  v193[1] = 3221225472;
  v194 = __41___UIDocumentCarouselView__performLayout__block_invoke_3;
  v195 = &__block_descriptor_40_e8_d16__0Q8l;
  v196 = v5;
  v188[0] = MEMORY[0x1E69E9820];
  v188[1] = 3221225472;
  v189 = __41___UIDocumentCarouselView__performLayout__block_invoke_4;
  v190 = &unk_1E710BEC0;
  v192 = sel__performLayout;
  v191 = v170;
  v176[0] = MEMORY[0x1E69E9820];
  v176[1] = 3221225472;
  v177 = __41___UIDocumentCarouselView__performLayout__block_invoke_5;
  v178 = &unk_1E710BEE8;
  v180 = v159;
  v181 = v158;
  v182 = v157;
  v183 = v156;
  v184 = v23;
  v185 = v149;
  v186 = v168;
  v187 = v147;
  v179 = v170;
  v154 = 0.0;
  v155 = 0;
  v152 = 0.0;
  if (v134)
  {
    v152 = v134[6];
    v154 = v134[7];
  }

  v68 = 0.0;
  v69 = v166;
  if (v133)
  {
    v68 = v133[6];
    v155 = *(v133 + 7);
  }

  v71 = *MEMORY[0x1E695EFF8];
  v70 = *(MEMORY[0x1E695EFF8] + 8);
  v219.origin.y = v158;
  v219.origin.x = v159;
  v219.size.height = v156;
  v219.size.width = v157;
  MidX = CGRectGetMidX(v219);
  v72 = v206;
  v169 = v70;
  v73 = (v198)(v197, 3, v68, *&v155, v71, v70, v161, v160);
  v146 = v74;
  v148 = v73;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = [v163 keyEnumerator];
  v165 = [obj countByEnumeratingWithState:&v172 objects:v215 count:16];
  if (v165)
  {
    v140 = v154 * 0.5 + v72;
    v75 = 1.0 - v36;
    if (v137)
    {
      v75 = v36;
    }

    v139 = *v173;
    if (v75 <= 0.5)
    {
      v76 = v75 + v75 + 0.0;
    }

    else
    {
      v76 = 1.0 - (v75 + -0.5 + v75 + -0.5);
    }

    v135 = v76;
    v143 = v36;
    v144 = v5;
    v141 = v71;
    v142 = v68;
    do
    {
      v77 = 0;
      do
      {
        if (*v173 != v139)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v172 + 1) + 8 * v77);
        v79 = [v163 objectForKeyedSubscript:v78];
        v80 = [*(v170 + 408) objectForKeyedSubscript:v78];
        v81 = [v69 objectForKeyedSubscript:v78];
        v82 = [v81 unsignedIntegerValue];

        v83 = [v167 objectForKeyedSubscript:v78];
        v84 = [v83 unsignedIntegerValue];

        v85 = 0.0;
        v86.n128_u64[0] = 0;
        v87.n128_u64[0] = 0;
        if (v79)
        {
          v87.n128_u64[0] = *(v79 + 48);
          v86.n128_u64[0] = *(v79 + 56);
        }

        v88 = v5;
        v89 = (v198)(v197, v82, v87, v86, MidX, v140, v152, v154);
        v91 = v90;
        v92.n128_u64[0] = 0;
        if (v79)
        {
          v92.n128_u64[0] = *(v79 + 48);
          v85 = *(v79 + 56);
        }

        v95 = (v198)(v197, v84, v92, v85, v148, v146, v68, *&v155);
        v96 = v94.n128_f64[0];
        if (v79)
        {
          v93.n128_u64[0] = *(v79 + 48);
          v94.n128_u64[0] = *(v79 + 56);
        }

        else
        {
          v94.n128_u64[0] = 0;
          v93.n128_u64[0] = 0;
        }

        v97 = (v198)(v197, 3, v93, v94, v71, v169, v161, v160);
        v99 = v98;
        v100 = v97 + v88 * (v89 + v36 * (v95 - v89) - v97);
        v101 = *(v170 + 456);
        if (v101 == [v78 unsignedIntegerValue])
        {
          v69 = v166;
          if (v79)
          {
            v102 = *(v79 + 48);
            v103 = *(v79 + 56) * 0.0599640065;
          }

          else
          {
            v103 = 0.0;
            v102 = 0.0;
          }

          v104 = v102 + v103 + v102 + v102 * -0.99820054 - v136 + 20.0;
          _UIScrollViewRubberBandOffsetWithoutDecorationForOffset(0, v135 * v104, v104 + -85.0, 0.0, v104);
          if (v137)
          {
            v105 = -v105;
          }

          v100 = v100 + v105;
        }

        else
        {
          v69 = v166;
        }

        if (v79)
        {
          *(v79 + 32) = v100;
          *(v79 + 40) = v99 + v88 * (v91 + v36 * (v96 - v91) - v99);
        }

        memset(&v171, 0, sizeof(v171));
        v220.origin.x = v159;
        v220.origin.y = v158;
        v220.size.width = v157;
        v220.size.height = v156;
        v106 = v100 < CGRectGetMidX(v220);
        v221.origin.x = v159;
        v221.origin.y = v158;
        v221.size.width = v157;
        v221.size.height = v156;
        v107 = v100 - CGRectGetMidX(v221);
        if (v107 >= 0.0)
        {
          v108 = v107;
        }

        else
        {
          v108 = -v107;
        }

        v222.origin.x = v159;
        v222.origin.y = v158;
        v222.size.width = v157;
        v222.size.height = v156;
        v109 = v108 / (CGRectGetWidth(v222) * 0.5);
        memset(&v214, 0, sizeof(v214));
        CGAffineTransformMakeRotation(&v214, dbl_18A67CA40[v106] * v109);
        memset(&v213, 0, sizeof(v213));
        CGAffineTransformMakeScale(&v213, v109 * -0.05 + 1.0, v109 * -0.05 + 1.0);
        memset(&v171, 0, sizeof(v171));
        t1 = v214;
        t2 = v213;
        CGAffineTransformConcat(&v171, &t1, &t2);
        if (v79)
        {
          v110 = *&v171.c;
          *(v79 + 96) = *&v171.a;
          *(v79 + 112) = v110;
          *(v79 + 128) = *&v171.tx;
        }

        v111 = v194(v193, v82);
        v194(v193, v84);
        v68 = v142;
        v36 = v143;
        if (v79)
        {
          *(v79 + 24) = v111 + v143 * (v112 - v111);
        }

        v113 = v189(v188, v82);
        v189(v188, v84);
        v5 = v144;
        if (v79)
        {
          *(v79 + 16) = v113 + v143 * (v114 - v113);
          v115.n128_u64[0] = *(v79 + 48);
          v116.n128_u64[0] = *(v79 + 56);
        }

        else
        {
          v116.n128_u64[0] = 0;
          v115.n128_u64[0] = 0;
        }

        (v177)(v176, v97, v99, v115, v116);
        if (v79)
        {
          *(v79 + 64) = v117;
          *(v79 + 72) = v118;
          *(v79 + 80) = v119;
          *(v79 + 88) = v120;
          [v80 _setHiddenForReuse:0];
          v71 = v141;
          if (!v80)
          {
            goto LABEL_108;
          }

          [v80 setCenter:{*(v79 + 32), *(v79 + 40)}];
          [v80 setBounds:{v141, v169, *(v79 + 48), *(v79 + 56)}];
          v121 = *(v79 + 112);
          *&v214.a = *(v79 + 96);
          *&v214.c = v121;
          *&v214.tx = *(v79 + 128);
          [v80 setTransform:&v214];
          v122 = *(v79 + 24) * 0.2;
        }

        else
        {
          [v80 _setHiddenForReuse:0];
          v71 = v141;
          if (!v80)
          {
            goto LABEL_108;
          }

          [v80 setCenter:{0.0, 0.0}];
          [v80 setBounds:{v141, v169, 0.0, 0.0}];
          memset(&v214, 0, sizeof(v214));
          [v80 setTransform:&v214];
          v122 = 0.0;
        }

        v123 = [v80 layer];
        *&v124 = v122;
        [v123 setShadowOpacity:v124];

        if (v79)
        {
          v125 = *(v79 + 16);
          v126 = [v80 layer];
          [v126 setZPosition:v125];

          [v80 setUserInteractionEnabled:*(v79 + 8)];
          v127 = *(v79 + 64);
          v128 = *(v79 + 72);
          v129 = *(v79 + 80);
          v130 = *(v79 + 88);
        }

        else
        {
          v131 = [v80 layer];
          v128 = 0.0;
          [v131 setZPosition:0.0];

          [v80 setUserInteractionEnabled:0];
          v129 = 0.0;
          v130 = 0.0;
          v127 = 0.0;
        }

        [v80 setDirectionalLayoutMargins:{v127, v128, v129, v130}];
LABEL_108:

        ++v77;
      }

      while (v165 != v77);
      v132 = [obj countByEnumeratingWithState:&v172 objects:v215 count:16];
      v165 = v132;
    }

    while (v132);
  }
}

- (void)_updatePagingFraction:(double)a3 withTracking:
{
  if (val)
  {
    v6 = val[54];
    if (!v6)
    {
      [(_UIDocumentCarouselView *)val setLockedFocusEnvironmentForAnimation:?];
      v6 = val[54];
    }

    val[54] = v6 + 1;
    objc_initWeak(&location, val);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62___UIDocumentCarouselView__updatePagingFraction_withTracking___block_invoke;
    v9[3] = &unk_1E70F32F0;
    v9[4] = val;
    *&v9[5] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62___UIDocumentCarouselView__updatePagingFraction_withTracking___block_invoke_2;
    v7[3] = &unk_1E7105398;
    objc_copyWeak(&v8, &location);
    _UIDocumentCarouselViewAnimateWithTracking(a2, v9, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)_cleanUpAfterAnimation
{
  if (a1)
  {
    v2 = *(a1 + 432);
    if (!v2)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__cleanUpAfterAnimation object:a1 file:@"_UIDocumentCarouselView.m" lineNumber:531 description:@"UIKit internal inconsistency: unbalanced document animation"];

      v2 = *(a1 + 432);
    }

    v3 = v2 - 1;
    *(a1 + 432) = v3;
    if (!v3)
    {

      [(_UIDocumentCarouselView *)a1 setLockedFocusEnvironmentForAnimation:?];
    }
  }
}

- (void)setLockedFocusEnvironmentForAnimation:(_BYTE *)a1
{
  if (a1 && a1[488] != a2)
  {
    a1[488] = a2;
    v4 = [a1 _focusSystem];
    v5 = v4;
    if (a2)
    {
      [v4 _lockEnvironment:a1];
    }

    else
    {
      [v4 _unlockEnvironment:a1];
    }
  }
}

- (void)scrollToItemAtIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = [(NSArray *)self->_items count];
  v9 = v8;
  if (a3 < 0 || v8 <= a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDocumentCarouselView.m" lineNumber:550 description:{@"Attempted to scroll to an invalid index: %ld", a3}];
  }

  v10 = v9 + -1.0;
  if (v10 > 2.0)
  {
    v10 = 2.0;
  }

  v11 = a3 - v10;
  if (v4)
  {

    [(_UIDocumentCarouselView *)self _updatePagingFraction:v11 withTracking:?];
  }

  else
  {
    [(UIViewFloatAnimatableProperty *)self->_pagingFractionAnimatableProperty setValue:v11];

    [(_UIDocumentCarouselView *)self _performLayout];
  }
}

- (void)setPagingEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_pagingEnabled != a3)
  {
    self->_pagingEnabled = a3;
    if (a3)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    if (a4)
    {
      animationCount = self->_animationCount;
      if (!animationCount)
      {
        [(_UIDocumentCarouselView *)self setLockedFocusEnvironmentForAnimation:?];
        animationCount = self->_animationCount;
      }

      self->_animationCount = animationCount + 1;
      objc_initWeak(&location, self);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __53___UIDocumentCarouselView_setPagingEnabled_animated___block_invoke;
      v10[3] = &unk_1E70F32F0;
      v10[4] = self;
      *&v10[5] = v5;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53___UIDocumentCarouselView_setPagingEnabled_animated___block_invoke_2;
      v8[3] = &unk_1E7105398;
      objc_copyWeak(&v9, &location);
      _UIDocumentCarouselViewAnimateWithTracking(0, v10, v8);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }

    else
    {
      revealAnimatableProperty = self->_revealAnimatableProperty;

      [(UIViewFloatAnimatableProperty *)revealAnimatableProperty setValue:v5];
    }
  }
}

- (void)_handlePanNavigation:(id)a3
{
  if (self->_panGestureRecognizer != a3)
  {
    v39 = [MEMORY[0x1E696AAA8] currentHandler];
    [v39 handleFailureInMethod:a2 object:self file:@"_UIDocumentCarouselView.m" lineNumber:606 description:{@"Invalid parameter not satisfying: %@", @"panGestureRecognizer == _panGestureRecognizer"}];
  }

  v5 = [a3 state];
  if ((v5 - 3) < 2)
  {
    [a3 translationInView:self];
    v9 = v8;
    [a3 velocityInView:self];
    v11 = v10;
    v12 = -v10;
    if (v11 >= 0.0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }

    _UIDocumentCarouselViewItemWidth(self);
    if (v9 >= 0.0)
    {
      v15 = v9;
    }

    else
    {
      v15 = -v9;
    }

    v16 = v14 * 0.5;
    if (v9 <= 0.0 || v11 <= -100.0)
    {
      v17 = v9 < 0.0;
      if (v11 >= 100.0)
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 1;
    }

    v34 = v13 >= 100.0;
    if (v15 >= v16)
    {
      v34 = 1;
    }

    pagingFractionPanStart = self->_pagingFractionPanStart;
    v36 = 1.0;
    if (v9 > 0.0)
    {
      v36 = -1.0;
    }

    v37 = v36 + pagingFractionPanStart;
    if (v34 && v17)
    {
      pagingFractionPanStart = v37;
    }

    [(_UIDocumentCarouselView *)self _updatePagingFraction:pagingFractionPanStart withTracking:?];

    [(_UIDocumentCarouselView *)self _cleanUpAfterAnimation];
  }

  else if (v5 == 2)
  {
    v18 = [(UIView *)self window];
    v19 = [v18 screen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [a3 translationInView:self];
    v29 = v28;
    v41.origin.x = v21;
    v41.origin.y = v23;
    v41.size.width = v25;
    v41.size.height = v27;
    v30 = v29 / CGRectGetWidth(v41);
    if (v30 < 0.0)
    {
      v30 = -v30;
    }

    v31 = fmax(fmin(v30, 0.9999), 0.0001);
    v32 = 1.0;
    if (v29 > 0.0)
    {
      v32 = -1.0;
    }

    v33 = self->_pagingFractionPanStart + (self->_pagingFractionPanStart + v32 - self->_pagingFractionPanStart) * v31;

    [(_UIDocumentCarouselView *)self _updatePagingFraction:v33 withTracking:?];
  }

  else if (v5 == 1)
  {
    [(UIViewFloatAnimatableProperty *)self->_pagingFractionAnimatableProperty value];
    self->_pagingFractionPanStart = v6;
    animationCount = self->_animationCount;
    if (!animationCount)
    {
      [(_UIDocumentCarouselView *)self setLockedFocusEnvironmentForAnimation:?];
      animationCount = self->_animationCount;
    }

    self->_animationCount = animationCount + 1;
  }
}

- (void)_handleTapNavigation:(id)a3
{
  if (self->_tapGestureRecognizer != a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIDocumentCarouselView.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"tapGestureRecognizer == _tapGestureRecognizer"}];
  }

  if ([a3 state] == 3)
  {
    [a3 locationInView:self];
    v6 = v5;
    [(UIView *)self bounds];
    MidX = CGRectGetMidX(v14);
    [(UIViewFloatAnimatableProperty *)self->_pagingFractionAnimatableProperty value];
    v9 = 1.0;
    if (v6 < MidX)
    {
      v9 = -1.0;
    }

    v10 = v9 + v8;

    [(_UIDocumentCarouselView *)self _updatePagingFraction:v10 withTracking:?];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v5 = [(NSArray *)self->_items count]>= 2 && [(_UIDocumentCarouselView *)self isPagingEnabled];
  if (self->_panGestureRecognizer != a3)
  {
    if (self->_tapGestureRecognizer == a3)
    {
      containerViews = self->_containerViews;
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_centerItemIndex];
      v8 = [(NSMutableDictionary *)containerViews objectForKeyedSubscript:v7];

      if (v8)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [a3 locationInView:self];
        v11 = v10;
        [(UIView *)self bounds];
        v12 = CGRectGetMidX(v15) - v11;
        if (v12 >= 0.0)
        {
          v13 = v12;
        }

        else
        {
          v13 = -v12;
        }

        [v8 frame];
        LOBYTE(v5) = v13 > CGRectGetWidth(v16) * 0.5;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)setItems:(id)a3
{
  if (([(NSArray *)self->_items isEqual:?]& 1) == 0)
  {
    v5 = [a3 copy];
    items = self->_items;
    self->_items = v5;

    if ([a3 count])
    {

      [(_UIDocumentCarouselView *)self scrollToItemAtIndex:0 animated:0];
    }

    else
    {

      [(_UIDocumentCarouselView *)self _performLayout];
    }
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = _UIDocumentCarouselView;
  [(UIView *)&v20 setFrame:x, y, width, height];
  [(UIView *)self frame];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    if (self)
    {
      [(NSMutableDictionary *)self->_containerViews enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15_7];
    }

    [(_UIDocumentCarouselView *)self _performLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = _UIDocumentCarouselView;
  [(UIView *)&v20 setBounds:x, y, width, height];
  [(UIView *)self bounds];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    if (self)
    {
      [(NSMutableDictionary *)self->_containerViews enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15_7];
    }

    [(_UIDocumentCarouselView *)self _performLayout];
  }
}

- (void)_layoutMarginsDidChangeFromOldMargins:(UIEdgeInsets)a3
{
  v4.receiver = self;
  v4.super_class = _UIDocumentCarouselView;
  [(UIView *)&v4 _layoutMarginsDidChangeFromOldMargins:a3.top, a3.left, a3.bottom, a3.right];
  if (self)
  {
    [(NSMutableDictionary *)self->_containerViews enumerateKeysAndObjectsUsingBlock:&__block_literal_global_15_7];
  }

  [(_UIDocumentCarouselView *)self _performLayout];
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDocumentCarouselView;
  [(UIView *)&v5 willMoveToWindow:?];
  if (!a3)
  {
    [(_UIDocumentCarouselView *)self setLockedFocusEnvironmentForAnimation:?];
  }
}

- (void)dealloc
{
  [(_UIDocumentCarouselView *)self setLockedFocusEnvironmentForAnimation:?];
  v3.receiver = self;
  v3.super_class = _UIDocumentCarouselView;
  [(UIView *)&v3 dealloc];
}

@end