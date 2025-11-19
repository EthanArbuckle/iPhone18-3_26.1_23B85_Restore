@interface VUIMediaTagsView
+ (id)tagsViewWithMetadata:(id)a3 layout:(id)a4 existingView:(id)a5;
- (BOOL)_shouldApplyTintColor:(id)a3 forImage:(id)a4;
- (BOOL)elementsArePlacedOnIndividualLines;
- (CGSize)_layoutSubviewsForSize:(CGSize)a3 computationOnly:(BOOL)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (VUIMediaTagsView)initWithFrame:(CGRect)a3 layout:(id)a4;
- (double)_rightMarginForView:(id)a3;
- (double)_totalSubviewsWidth;
- (double)bottomMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (double)bottomMarginWithBaselineMargin:(double)a3;
- (double)firstBaselineOffsetFromTop;
- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4;
- (double)topMarginWithBaselineMargin:(double)a3;
- (double)vui_baselineOffsetFromBottom;
- (id)_firstLabelSubview;
- (id)_newGenresLabel:(id)a3 textLayout:(id)a4;
- (id)_newImageViewAsSubview:(BOOL)a3;
- (id)_newLabelAsSubview:(id)a3 textLayout:(id)a4;
- (id)_newLabelAsSubview:(id)a3 withAttributedString:(id)a4 textLayout:(id)a5;
- (id)_newRentalExpirationlabel:(id)a3 exisitingLabel:(id)a4;
- (id)_newTextBadgeViewAsSubview:(id)a3 layout:(id)a4 withString:(id)a5;
- (id)_textLayoutForKey:(id)a3;
- (id)pinnedBrandLinkButtonView;
- (void)_addGenreLabelAndSeparator;
- (void)_adjustGenresLabelWidthIfNeeded;
- (void)_adjustViewsPositionFor:(id)a3 preferredSize:(CGSize)a4;
- (void)_adjustViewsPositionFor:(id)a3 topPadding:(double)a4;
- (void)_adjustViewsPositionVerticallyCenteredFor:(id)a3 preferredSize:(CGSize)a4;
- (void)_removeGenreLabelAndSeparator;
- (void)_removeSeparatorsFromGroupsIfNeeded:(BOOL)a3;
- (void)_updateAppearanceWithUserInterfaceStyle:(unint64_t)a3;
- (void)_updateImageAppearanceWithUserInterfaceStyle:(unint64_t)a3;
- (void)contrastSettingsDidChange;
- (void)dealloc;
- (void)setTotalSubviewsWidth:(double)a3;
- (void)transparencySettingsDidChange;
- (void)updateWithMetadata:(id)a3;
- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5;
@end

@implementation VUIMediaTagsView

+ (id)tagsViewWithMetadata:(id)a3 layout:(id)a4 existingView:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
  }

  else
  {
    v11 = [VUIMediaTagsView alloc];
    v10 = [(VUIMediaTagsView *)v11 initWithFrame:v7 layout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v12 = v10;
  v13 = [[VUIMediaTagsViewHelper alloc] initWithContentMetadata:v9 additionalMetadata:0];

  v14 = [(VUIMediaTagsViewHelper *)v13 tagsViewDictionary];
  [(VUIMediaTagsView *)v12 updateWithMetadata:v14];

  return v12;
}

- (VUIMediaTagsView)initWithFrame:(CGRect)a3 layout:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v34.receiver = self;
  v34.super_class = VUIMediaTagsView;
  v11 = [(VUIMediaTagsView *)&v34 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tagsViewLayout, a4);
    viewsMap = v12->_viewsMap;
    v12->_viewsMap = MEMORY[0x1E695E0F8];

    groupedSubviews = v12->_groupedSubviews;
    v12->_groupedSubviews = MEMORY[0x1E695E0F0];

    v12->_isSelected = 0;
    [(VUIMediaTagsView *)v12 setVuiClipsToBounds:1];
    v15 = [(VUIMediaTagsViewLayout *)v12->_tagsViewLayout compositingFilter];

    if (v15)
    {
      v16 = [(VUIMediaTagsViewLayout *)v12->_tagsViewLayout compositingFilter];
      v17 = [(VUIMediaTagsView *)v12 layer];
      [v17 setCompositingFilter:v16];
    }

    [(VUIMediaTagsView *)v12 setAccessibilityTraits:*MEMORY[0x1E69DDA18] | *MEMORY[0x1E69DD9D0]];
    objc_initWeak(&location, v12);
    v37[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __41__VUIMediaTagsView_initWithFrame_layout___block_invoke;
    v31[3] = &unk_1E872E760;
    objc_copyWeak(&v32, &location);
    [(VUIMediaTagsView *)v12 vui_registerForTraitChanges:v18 withHandler:v31];

    v36 = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __41__VUIMediaTagsView_initWithFrame_layout___block_invoke_2;
    v29[3] = &unk_1E872E760;
    objc_copyWeak(&v30, &location);
    [(VUIMediaTagsView *)v12 vui_registerForTraitChanges:v19 withHandler:v29];

    v35 = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __41__VUIMediaTagsView_initWithFrame_layout___block_invoke_3;
    v27 = &unk_1E872E760;
    objc_copyWeak(&v28, &location);
    [(VUIMediaTagsView *)v12 vui_registerForTraitChanges:v20 withHandler:&v24];

    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 addObserver:v12 selector:sel_contrastSettingsDidChange name:*MEMORY[0x1E69DD8B8] object:0];

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v12 selector:sel_transparencySettingsDidChange name:*MEMORY[0x1E69DD920] object:0];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __41__VUIMediaTagsView_initWithFrame_layout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained vuiTraitCollection];
  v2 = [v1 vuiUserInterfaceStyle];

  [WeakRetained _updateAppearanceWithUserInterfaceStyle:v2];
}

void __41__VUIMediaTagsView_initWithFrame_layout___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained vuiTraitCollection];
  v2 = [v1 vuiUserInterfaceStyle];

  [WeakRetained _updateAppearanceWithUserInterfaceStyle:v2];
  v3 = [WeakRetained tagsViewLayout];
  [v3 updateHighMotionFontSize];

  [WeakRetained vui_setNeedsLayout];
  [WeakRetained invalidateIntrinsicContentSize];
}

void __41__VUIMediaTagsView_initWithFrame_layout___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained vui_setNeedsLayout];
  [WeakRetained invalidateIntrinsicContentSize];
}

- (void)setTotalSubviewsWidth:(double)a3
{
  if (self->_totalSubviewsWidth != a3)
  {
    self->_totalSubviewsWidth = a3;
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DD8B8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DD920] object:0];

  v5.receiver = self;
  v5.super_class = VUIMediaTagsView;
  [(VUIMediaTagsView *)&v5 dealloc];
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v8 = [(VUIMediaTagsView *)self tagsViewLayout];
  [v8 maxWidth];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = [(VUIMediaTagsView *)self tagsViewLayout];
    [v11 maxWidth];
    v13 = v12;

    if (width >= v13)
    {
      width = v13;
    }
  }

  v16.receiver = self;
  v16.super_class = VUIMediaTagsView;
  [(VUIMediaTagsView *)&v16 vui_layoutSubviews:v4 computationOnly:width, height];
  [(VUIMediaTagsView *)self _layoutSubviewsForSize:v4 computationOnly:width, height];
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_layoutSubviewsForSize:(CGSize)a3 computationOnly:(BOOL)a4
{
  v237 = a4;
  height = a3.height;
  width = a3.width;
  v329 = *MEMORY[0x1E69E9840];
  v226 = [(VUIMediaTagsView *)self elementsArePlacedOnIndividualLines];
  v257 = self;
  v6 = [(VUIMediaTagsView *)self tagsViewLayout];
  v233 = [v6 orphanAvoidance];

  v322 = 0;
  v323 = &v322;
  v324 = 0x2020000000;
  v325 = 0;
  v318 = 0;
  v319 = &v318;
  v320 = 0x2020000000;
  v321 = 0;
  v316[0] = 0;
  v316[1] = v316;
  v316[2] = 0x3032000000;
  v316[3] = __Block_byref_object_copy__15;
  v316[4] = __Block_byref_object_dispose__15;
  v317 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v314[0] = 0;
  v314[1] = v314;
  v314[2] = 0x3032000000;
  v314[3] = __Block_byref_object_copy__15;
  v314[4] = __Block_byref_object_dispose__15;
  v315 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v312[0] = 0;
  v312[1] = v312;
  v312[2] = 0x3032000000;
  v312[3] = __Block_byref_object_copy__15;
  v312[4] = __Block_byref_object_dispose__15;
  v313 = 0;
  v306 = 0;
  v307 = &v306;
  v308 = 0x4010000000;
  v309 = &unk_1E44FDE95;
  v7 = MEMORY[0x1E695F058];
  v252 = *(MEMORY[0x1E695F058] + 16);
  *obj = *MEMORY[0x1E695F058];
  v310 = *MEMORY[0x1E695F058];
  v311 = v252;
  v305[0] = 0;
  v305[1] = v305;
  v305[2] = 0x2020000000;
  v305[3] = 0;
  v304[0] = 0;
  v304[1] = v304;
  v304[2] = 0x2020000000;
  v304[3] = 0;
  v8 = [(VUIMediaTagsView *)v257 tagsViewLayout];
  v9 = [v8 isWrappingAllowed];

  v10 = v257;
  if ((v9 & 1) == 0)
  {
    [(VUIMediaTagsView *)v257 totalSubviewsWidth];
    if (v11 <= width)
    {
      [(VUIMediaTagsView *)v257 _addGenreLabelAndSeparator];
    }

    else
    {
      [(VUIMediaTagsView *)v257 _removeGenreLabelAndSeparator];
    }
  }

  if (_os_feature_enabled_impl())
  {
    v12 = [(VUIMediaTagsView *)v257 tagsViewLayout];
    v13 = [v12 adjustGenresToFit];

    v10 = v257;
    if (v13)
    {
      [(VUIMediaTagsView *)v257 totalSubviewsWidth];
      if (v14 > width)
      {
        [(VUIMediaTagsView *)v257 _adjustGenresLabelWidthIfNeeded];
      }
    }
  }

  v302[0] = 0;
  v302[1] = v302;
  v302[2] = 0x3032000000;
  v302[3] = __Block_byref_object_copy__15;
  v302[4] = __Block_byref_object_dispose__15;
  v303 = 0;
  v299[0] = 0;
  v299[1] = v299;
  v299[2] = 0x4010000000;
  v299[3] = &unk_1E44FDE95;
  v300 = *obj;
  v301 = v252;
  v294 = 0;
  v295 = &v294;
  v296 = 0x3010000000;
  v297 = &unk_1E44FDE95;
  v298 = *MEMORY[0x1E695F060];
  v288 = 0;
  v289 = &v288;
  v290 = 0x3032000000;
  v291 = __Block_byref_object_copy__15;
  v292 = __Block_byref_object_dispose__15;
  v293 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v282 = 0;
  v283 = &v282;
  v284 = 0x3032000000;
  v285 = __Block_byref_object_copy__15;
  v286 = __Block_byref_object_dispose__15;
  v287 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v289[5] addObject:v283[5]];
  v276 = 0;
  v277 = &v276;
  v278 = 0x3032000000;
  v279 = __Block_byref_object_copy__15;
  v280 = __Block_byref_object_dispose__15;
  v281 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
  objc_initWeak(&location, v10);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__VUIMediaTagsView__layoutSubviewsForSize_computationOnly___block_invoke;
  aBlock[3] = &unk_1E8732EE0;
  objc_copyWeak(v272, &location);
  v272[1] = *&width;
  v272[2] = *&height;
  v273 = v226;
  aBlock[6] = v312;
  aBlock[7] = &v306;
  v274 = v237;
  aBlock[8] = &v318;
  aBlock[9] = v302;
  aBlock[5] = &v322;
  aBlock[4] = v257;
  aBlock[10] = v304;
  aBlock[11] = v305;
  aBlock[12] = v316;
  aBlock[13] = v314;
  aBlock[14] = &v294;
  aBlock[15] = v299;
  aBlock[16] = &v282;
  aBlock[17] = &v288;
  v236 = _Block_copy(aBlock);
  v15 = v257;
  [(VUIMediaTagsView *)v257 bounds];
  v246 = v17;
  v248 = v16;
  v250 = v18;
  rect = v19;
  v228 = [(VUIMediaTagsView *)v257 pinnedBrandLinkButtonView];
  if (v228)
  {
    [(VUIMediaTagsView *)v257 bounds];
    [v228 vui_sizeThatFits:{v20, v21}];
    v23 = v22;
    v24 = [(VUIMediaTagsView *)v257 tagsViewLayout];
    [v24 badgeMargin];
    v26 = v25;

    v27 = [(VUIMediaTagsView *)v257 tagsViewLayout];
    [v27 badgeMargin];
    v29 = v28;

    v250 = v250 - v23 - v26 - v29;
    v15 = v257;
  }

  v229 = 0;
  v240 = v7[1];
  v242 = *v7;
  rect2 = v7[3];
  v239 = v7[2];
  v30 = 0.0;
  while (1)
  {
    v31 = [(VUIMediaTagsView *)v15 groupedSubviews];
    v32 = v229 < [v31 count];

    if (!v32)
    {
      break;
    }

    v33 = [(VUIMediaTagsView *)v257 groupedSubviews];
    v34 = [v33 objectAtIndexedSubscript:v229];

    v269 = 0u;
    v270 = 0u;
    v267 = 0u;
    v268 = 0u;
    obja = v34;
    v35 = [obja countByEnumeratingWithState:&v267 objects:v328 count:16];
    if (v35)
    {
      v36 = 0;
      v253 = *v268;
      do
      {
        v37 = 0;
        do
        {
          if (*v268 != v253)
          {
            objc_enumerationMutation(obja);
          }

          v38 = *(*(&v267 + 1) + 8 * v37);
          v39 = [obja firstObject];

          v40 = 0.0;
          if ([v38 isHidden])
          {
LABEL_19:
            v41 = rect2;
            v42 = v239;
            v43 = v240;
            v44 = v242;
            goto LABEL_76;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(VUIMediaTagsView *)v257 _rightMarginForView:v38];
            v40 = v45;
            v46 = [v38 tag];
            if ((v46 - 101) < 0xA)
            {
              v36 |= 0x327u >> (v46 - 101);
            }

            v47 = v236[2](v236, v38, v36 & 1, v39 == v38, [(VUIMediaTagsView *)v257 vuiIsRTL], v40, 0.0, 0.0, v248, v246, v250, rect);
            v44 = v47;
            v43 = v48;
            v42 = v49;
            v41 = v50;
            if (v237)
            {
              if (!v233)
              {
                goto LABEL_76;
              }

              v51 = v277[5];
              v52 = [MEMORY[0x1E696B098] valueWithCGRect:{v47, v48, v49, v50}];
              [v51 setObject:v52 forKey:v38];
              goto LABEL_75;
            }

            MaxX = CGRectGetMaxX(*&v47);
            v331.origin.y = v246;
            v331.origin.x = v248;
            v331.size.width = v250;
            v331.size.height = rect;
            v81 = MaxX - CGRectGetMaxX(v331);
            if (v81 > 0.0)
            {
              v42 = v42 - v81;
            }

            if ([(VUIMediaTagsView *)v257 vuiIsRTL])
            {
LABEL_38:
              VUIRectWithFlippedOriginRelativeToBoundingRect();
            }

            else
            {
              v79 = v44;
              v78 = v43;
              v76 = v41;
              v77 = v42;
            }

LABEL_97:
            [v38 setFrame:{v79, v78, v77, v76}];
            goto LABEL_76;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v53 badgeMargin];
            v40 = v54;

            v55 = [v38 tag];
            v56 = MEMORY[0x1E69DF6D0];
            v57 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v57 badgeMaxHeight];
            v59 = v58;
            v60 = [(VUIMediaTagsView *)v257 vuiTraitCollection];
            v61 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v56 scaleContentSizeValue:v60 forTraitCollection:objc_msgSend(v61 maximumContentSizeCategory:{"badgeMaxContentSizeCategory"), v59}];
            v63 = v62;

            v52 = [v38 image];
            [v52 size];
            v64 = 0.0;
            if (v65 > 0.0)
            {
              [v52 size];
              if (v66 > 0.0)
              {
                [v52 size];
                v68 = v67;
                [v52 size];
                v64 = v68 / v69;
              }
            }

            if (v55 > 108)
            {
              if (v55 == 109)
              {
                v121 = [(VUIMediaTagsView *)v257 tagsViewLayout];
                [v121 immersiveMargin];
                v40 = v122;
              }

              else
              {
                if (v55 != 110)
                {
                  if (v55 == 111)
                  {
                    v99 = [(VUIMediaTagsView *)v257 tagsViewLayout];
                    [v99 entitlementCueMargin];
                    v40 = v100;

                    v101 = [(VUIMediaTagsView *)v257 tagsViewLayout];
                    [v101 entitlementCueImageSize];
                    v103 = v102;
                    v63 = v104;

                    if (_os_feature_enabled_impl())
                    {
                      [v38 vui_sizeThatFits:{width, height}];
                      v103 = v105;
                      v63 = v106;
                    }

                    v36 = 1;
                    v64 = v103 / v63;
                  }

                  goto LABEL_69;
                }

                v125 = [(VUIMediaTagsView *)v257 tagsViewLayout];
                [v125 highMotionMargin];
                v40 = v126;
              }
            }

            else
            {
              switch(v55)
              {
                case 'e':
                  v119 = [(VUIMediaTagsView *)v257 tagsViewLayout];
                  [v119 commonSenseMargin];
                  v40 = v120;

                  break;
                case 'f':
                  v123 = [(VUIMediaTagsView *)v257 tagsViewLayout];
                  [v123 tomatoMeterMargin];
                  v40 = v124;

                  break;
                case 'g':
                  break;
                default:
LABEL_69:
                  v127 = v236[2](v236, v38, v36 & 1, v39 == v38, [(VUIMediaTagsView *)v257 vuiIsRTL], v40, v63, v64, v248, v246, v250, rect);
                  v44 = v127;
                  v43 = v128;
                  v42 = v129;
                  v41 = v130;
                  if (v237)
                  {
                    if (v233)
                    {
                      v131 = v277[5];
                      v132 = [MEMORY[0x1E696B098] valueWithCGRect:{v127, v128, v129, v130}];
                      [v131 setObject:v132 forKey:v38];
                    }
                  }

                  else
                  {
                    v133 = [(VUIMediaTagsView *)v257 vuiIsRTL];
                    v134 = v41;
                    v135 = v42;
                    v136 = v43;
                    v137 = v44;
                    if (v133)
                    {
                      VUIRectWithFlippedOriginRelativeToBoundingRect();
                    }

                    [v38 setFrame:{v137, v136, v135, v134}];
                  }

LABEL_75:

                  goto LABEL_76;
              }
            }

            v36 = 1;
            goto LABEL_69;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v70 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v70 textBadgeMargin];
            v40 = v71;

            v44 = v236[2](v236, v38, v36 & 1, v39 == v38, [(VUIMediaTagsView *)v257 vuiIsRTL], v40, 0.0, 0.0, v248, v246, v250, rect);
            v43 = v72;
            v42 = v73;
            v41 = v74;
            if (v237)
            {
              goto LABEL_76;
            }

            v75 = [(VUIMediaTagsView *)v257 vuiIsRTL];
            v76 = v41;
            v77 = v42;
            v78 = v43;
            v79 = v44;
            if (v75)
            {
              goto LABEL_38;
            }

            goto LABEL_97;
          }

          if ([v38 tag] == 111)
          {
            v82 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v82 entitlementCueMargin];
            v40 = v83;

            v84 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v84 entitlementCueImageSize];
            v86 = v85;
            v88 = v87;

            if (_os_feature_enabled_impl())
            {
              [v38 vui_sizeThatFits:{width, height}];
              v86 = v89;
              v88 = v90;
            }

            v44 = v236[2](v236, v38, 1, v39 == v38, [(VUIMediaTagsView *)v257 vuiIsRTL], v40, v88, v86 / v88, v248, v246, v250, rect);
            v43 = v91;
            v42 = v92;
            v41 = v93;
            if (!v237)
            {
              v94 = [(VUIMediaTagsView *)v257 vuiIsRTL];
              v95 = v41;
              v96 = v42;
              v97 = v43;
              v98 = v44;
              if (v94)
              {
                VUIRectWithFlippedOriginRelativeToBoundingRect();
              }

              [v38 setFrame:{v98, v97, v96, v95}];
            }

            v36 = 1;
          }

          else
          {
            if ([v38 tag] != 108)
            {
              goto LABEL_19;
            }

            v107 = [(VUIMediaTagsView *)v257 tagsViewLayout];
            [v107 badgeMargin];
            v40 = v108;

            [(VUIMediaTagsView *)v257 bounds];
            v113 = v236[2](v236, v38, v36 & 1, v39 == v38, [(VUIMediaTagsView *)v257 vuiIsRTL], v40, 0.0, 0.0, v109, v110, v111, v112);
            v44 = v113;
            v43 = v114;
            v42 = v115;
            v41 = v116;
            if (!v237)
            {
              v117 = CGRectGetMaxX(*&v113);
              [(VUIMediaTagsView *)v257 bounds];
              v118 = v117 - CGRectGetMaxX(v332);
              if (v118 > 0.0)
              {
                if (v228)
                {
                  v44 = v44 - v118;
                }

                else
                {
                  v42 = v42 - v118;
                }
              }

              v147 = [(VUIMediaTagsView *)v257 vuiIsRTL];
              v76 = v41;
              v77 = v42;
              v78 = v43;
              v79 = v44;
              if (v147)
              {
                [(VUIMediaTagsView *)v257 bounds:v44];
                VUIRectWithFlippedOriginRelativeToBoundingRect();
              }

              goto LABEL_97;
            }
          }

LABEL_76:
          v138 = [(VUIMediaTagsView *)v257 tagsViewLayout];
          v139 = [v138 alignBadgeVertically];
          if (v43 < 0.0)
          {
            v140 = v139;
          }

          else
          {
            v140 = 0;
          }

          if (v30 >= v43)
          {
            v141 = v43;
          }

          else
          {
            v141 = v30;
          }

          if (v140)
          {
            v30 = v141;
          }

          v142 = v295;
          v143 = v40 + v42 + v44;
          if (v295[4] >= v143)
          {
            v143 = v295[4];
          }

          if (width < v143)
          {
            v143 = width;
          }

          v144 = ceil(v143);
          v145 = 0.0;
          if (v43 >= 0.0)
          {
            v145 = v43;
          }

          v146 = v41 + v145;
          if (v295[5] >= v146)
          {
            v146 = v295[5];
          }

          v295[4] = v144;
          v142[5] = v146;
          ++v37;
        }

        while (v35 != v37);
        v148 = [obja countByEnumeratingWithState:&v267 objects:v328 count:16];
        v35 = v148;
      }

      while (v148);
    }

    v149 = [(VUIMediaTagsView *)v257 tagsViewLayout];
    [v149 groupMargin];
    if (v226)
    {
      v319[3] = v150 + v319[3];

      v323[3] = 0.0;
    }

    else
    {
      v323[3] = v151 + v323[3];
    }

    ++v229;
    v15 = v257;
  }

  v266[0] = MEMORY[0x1E69E9820];
  v266[1] = 3221225472;
  v266[2] = __59__VUIMediaTagsView__layoutSubviewsForSize_computationOnly___block_invoke_2;
  v266[3] = &unk_1E8732F08;
  v266[4] = &v276;
  v152 = _Block_copy(v266);
  v153 = v257;
  if ((v233 & 1) == 0 || [v289[5] count] < 2 || -[VUIMediaTagsView elementsArePlacedOnIndividualLines](v257, "elementsArePlacedOnIndividualLines") || !v237)
  {
    goto LABEL_106;
  }

  v172 = [v289[5] lastObject];
  if ([v172 count] > 1 || !objc_msgSend(v172, "count"))
  {
    *obj = *(v295 + 2);

    goto LABEL_143;
  }

  v254 = [v172 firstObject];
  v173 = [v289[5] objectAtIndexedSubscript:{objc_msgSend(v289[5], "count") - 2}];
  v174 = [v173 mutableCopy];
  v251 = [v172 mutableCopy];
  v175 = 0;
  v176 = [v173 count] - 1;
  if (v176 < 0)
  {
    v178 = 0;
  }

  else
  {
    while (1)
    {
      v177 = [v173 objectAtIndexedSubscript:v176];
      if ([v177 tag] != 100)
      {
        break;
      }

      [v174 removeLastObject];

      --v176;
      v175 = v177;
      if (v176 == -1)
      {
        v178 = 0;
        v175 = v177;
        goto LABEL_150;
      }
    }

    v178 = v177;
    [v174 removeLastObject];
    if (v176 - 1 >= 0)
    {
      v182 = [v173 objectAtIndexedSubscript:v176];
      v183 = [v182 tag] == 100;

      if (v183)
      {
        [v174 removeLastObject];
      }
    }
  }

LABEL_150:
  if ([v174 count] <= 1)
  {
    goto LABEL_151;
  }

  v185 = v152[2](v152, v178);
  v187 = v186;
  v189 = v188;
  v191 = v190;
  v230 = v152[2](v152, v175);
  v232 = v192;
  v227 = v193;
  v225 = v194;
  v195 = [v174 lastObject];
  obj[0] = COERCE_ID(v152[2](v152, v195));
  v247 = v197;
  v249 = v196;
  v199 = v198;

  v200 = v152[2](v152, v254);
  recta = v201;
  v234 = v203;
  v235 = v202;
  v204 = v200;
  v333.origin.x = v185;
  v333.origin.y = v187;
  v333.size.width = v189;
  v333.size.height = v191;
  v344.origin.y = v240;
  v344.origin.x = v242;
  v344.size.height = rect2;
  v344.size.width = v239;
  if (CGRectEqualToRect(v333, v344))
  {
    goto LABEL_174;
  }

  *&v334.origin.x = obj[0];
  v334.size.width = v247;
  v334.origin.y = v249;
  v334.size.height = v199;
  v345.origin.y = v240;
  v345.origin.x = v242;
  v345.size.height = rect2;
  v345.size.width = v239;
  if (CGRectEqualToRect(v334, v345))
  {
    goto LABEL_174;
  }

  v335.origin.x = v204;
  v346.origin.x = v242;
  v335.origin.y = recta;
  v335.size.height = v234;
  v335.size.width = v235;
  v346.size.width = v239;
  v346.origin.y = v240;
  v346.size.height = rect2;
  if ((v178 == 0) | CGRectEqualToRect(v335, v346))
  {
    goto LABEL_174;
  }

  v336.origin.x = v204;
  v336.origin.y = recta;
  v336.size.height = v234;
  v336.size.width = v235;
  MinY = CGRectGetMinY(v336);
  [v251 insertObject:v178 atIndex:0];
  objc_opt_class();
  v206 = v189 + 0.0;
  v243 = MinY + 0.0;
  if (objc_opt_isKindOfClass())
  {
    [(VUIMediaTagsView *)v257 _rightMarginForView:v178];
    v206 = v206 + v207;
LABEL_160:
    v213 = v243;
    goto LABEL_161;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_160;
  }

  [(VUIMediaTagsView *)v257 _rightMarginForView:v178];
  v209 = v208;
  v210 = [(VUIMediaTagsView *)v257 tagsViewLayout];
  v211 = [v210 alignBadgeVertically];

  v206 = v206 + v209;
  if (!v211)
  {
    goto LABEL_160;
  }

  v337.origin.x = v204;
  v337.origin.y = recta;
  v337.size.height = v234;
  v337.size.width = v235;
  MidY = CGRectGetMidY(v337);
  *&v338.size.width = v307[6];
  *&v338.size.height = v307[7];
  v338.origin.x = v206;
  v338.origin.y = v243;
  v213 = v243 + MidY - CGRectGetMidY(v338);
LABEL_161:
  v241 = v213;
  if (v175)
  {
    [(VUIMediaTagsView *)v257 _rightMarginForView:v175];
    v215 = v214;
    [v251 insertObject:v178 atIndex:1];
    v230 = v206;
    v206 = v206 + v232 + v215;
  }

  else
  {
    v243 = v225;
  }

  v216 = v206;
  v339.origin.x = v206;
  v339.origin.y = recta;
  v339.size.height = v234;
  v339.size.width = v235;
  v217 = CGRectGetMaxX(v339);
  *&v340.origin.x = obj[0];
  v340.size.width = v247;
  v340.origin.y = v249;
  v340.size.height = v199;
  v218 = CGRectGetMaxX(v340);
  if (v217 > v218)
  {
LABEL_151:
    v184 = 0;
    *obj = *(v295 + 2);
    goto LABEL_175;
  }

  v341.origin.x = 0.0;
  v341.origin.y = v241;
  v341.size.width = v189;
  v341.size.height = v191;
  MaxY = CGRectGetMaxY(v341);
  v342.origin.x = v230;
  v342.size.width = v232;
  v342.origin.y = v243;
  v342.size.height = v227;
  v220 = CGRectGetMaxY(v342);
  v343.origin.x = v216;
  v343.origin.y = recta;
  v343.size.height = v234;
  v343.size.width = v235;
  v221 = CGRectGetMaxY(v343);
  if (MaxY >= v220)
  {
    v222 = MaxY;
  }

  else
  {
    v222 = v220;
  }

  if (v222 >= v221)
  {
    v221 = v222;
  }

  v223 = v295;
  if (width >= v218)
  {
    v224 = v218;
  }

  else
  {
    v224 = width;
  }

  v295[4] = v224;
  v223[5] = v221;
LABEL_174:
  v184 = 1;
LABEL_175:

  v153 = v257;
  if (!v184)
  {
    goto LABEL_143;
  }

LABEL_106:
  v154 = [(VUIMediaTagsView *)v153 tagsViewLayout];
  v155 = [v154 alignBadgeVertically];

  if (v155 && !v237 && v30 < 0.0)
  {
    v264 = 0u;
    v265 = 0u;
    v262 = 0u;
    v263 = 0u;
    v156 = v289[5];
    v157 = [v156 countByEnumeratingWithState:&v262 objects:v327 count:16];
    if (v157)
    {
      v158 = *v263;
      do
      {
        for (i = 0; i != v157; ++i)
        {
          if (*v263 != v158)
          {
            objc_enumerationMutation(v156);
          }

          v160 = *(*(&v262 + 1) + 8 * i);
          v258 = 0u;
          v259 = 0u;
          v260 = 0u;
          v261 = 0u;
          v161 = v160;
          v162 = [v161 countByEnumeratingWithState:&v258 objects:v326 count:16];
          if (v162)
          {
            v163 = *v259;
            do
            {
              for (j = 0; j != v162; ++j)
              {
                if (*v259 != v163)
                {
                  objc_enumerationMutation(v161);
                }

                v165 = *(*(&v258 + 1) + 8 * j);
                [v165 frame];
                [v165 setFrame:?];
              }

              v162 = [v161 countByEnumeratingWithState:&v258 objects:v326 count:16];
            }

            while (v162);
          }
        }

        v157 = [v156 countByEnumeratingWithState:&v262 objects:v327 count:16];
      }

      while (v157);
    }
  }

  v166 = v257;
  [(VUIMediaTagsViewLayout *)v257->_tagsViewLayout padding];
  v168 = v167;
  if (!v237)
  {
    [(VUIMediaTagsView *)v257 _adjustViewsPositionFor:v289[5] preferredSize:v295[4], v295[5]];
    if ([v289[5] count])
    {
      v169 = [v289[5] lastObject];
      if ([v169 count] < 2)
      {

        v166 = v257;
      }

      else
      {
        v170 = [v169 lastObject];
        v171 = [v170 tag] == 108;

        v166 = v257;
        if (v171)
        {
          [(VUIMediaTagsView *)v257 _adjustViewsPositionVerticallyCenteredFor:v289[5] preferredSize:v295[4], v295[5]];
        }
      }
    }

    if (v168 <= 0.0)
    {
      goto LABEL_142;
    }

    [(VUIMediaTagsView *)v166 _adjustViewsPositionFor:v289[5] topPadding:v168];
    goto LABEL_140;
  }

  if (v167 > 0.0)
  {
LABEL_140:
    v179 = v295[5];
    if (v179 > 0.0)
    {
      v295[5] = v168 + v179;
    }
  }

LABEL_142:
  *obj = *(v295 + 2);
LABEL_143:

  objc_destroyWeak(v272);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v276, 8);

  _Block_object_dispose(&v282, 8);
  _Block_object_dispose(&v288, 8);

  _Block_object_dispose(&v294, 8);
  _Block_object_dispose(v299, 8);
  _Block_object_dispose(v302, 8);

  _Block_object_dispose(v304, 8);
  _Block_object_dispose(v305, 8);
  _Block_object_dispose(&v306, 8);
  _Block_object_dispose(v312, 8);

  _Block_object_dispose(v314, 8);
  _Block_object_dispose(v316, 8);

  _Block_object_dispose(&v318, 8);
  _Block_object_dispose(&v322, 8);
  v181 = *&obj[1];
  v180 = *obj;
  result.height = v181;
  result.width = v180;
  return result;
}

double __59__VUIMediaTagsView__layoutSubviewsForSize_computationOnly___block_invoke(uint64_t a1, void *a2, int a3, int a4, int a5, double a6, double a7, double a8)
{
  v14 = a2;
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 144));
  v19 = *(a1 + 152);
  v18 = *(a1 + 160);
  if ([v16 tag] == 110)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [WeakRetained tagsViewLayout];
      [v20 badgeMaxHeight];
      v18 = v21;

      v19 = 0.0;
    }
  }

  [v16 vui_sizeThatFits:{v19, v18}];
  v24 = *MEMORY[0x1E695F060];
  v25 = *(MEMORY[0x1E695F060] + 8);
  if (v22 != *MEMORY[0x1E695F060] || v23 != v25)
  {
    v27 = v22;
    v28 = v23;
    v177 = a6;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v30 = isKindOfClass;
    if (a7 <= 0.0)
    {
      v31 = v28;
    }

    else
    {
      v31 = a7;
    }

    if (a8 > 0.0)
    {
      v27 = v31 * a8;
    }

    if (*(a1 + 168) == 1)
    {
      v178 = v27;
      if (isKindOfClass)
      {
        if (a3)
        {
          if (*(*(*(a1 + 48) + 8) + 40))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v31;
              v33 = v16;
              [v33 baselineHeight];
              v35 = v34;
              VUIRoundValue();
              v37 = v36;
              v38 = [v33 vuiFont];
              [v38 capHeight];
              v40 = v39;

              v41 = *(*(*(a1 + 64) + 8) + 24);
              MidY = CGRectGetMidY(*(*(*(a1 + 56) + 8) + 32));
              v43 = [WeakRetained tagsViewLayout];
              v44 = [v43 alignBadgeVertically];

              if ([v33 requiresMoreThanOneLineForTextWidth:v178])
              {
                v31 = v32;
                if (CGRectGetHeight(*(*(*(a1 + 56) + 8) + 32)) < v32)
                {
                  *(*(*(a1 + 56) + 8) + 40) = v32 * 0.5 + *(*(*(a1 + 64) + 8) + 24) - *(*(*(a1 + 56) + 8) + 56) * 0.5;
                  goto LABEL_102;
                }

                *(*(*(a1 + 64) + 8) + 24) = CGRectGetMidY(*(*(*(a1 + 56) + 8) + 32)) + v32 * -0.5;
LABEL_113:

                objc_storeStrong((*(*(a1 + 72) + 8) + 40), v14);
                goto LABEL_114;
              }

              if (v44)
              {
                v143 = v40 * 0.5 + v35 - v40 + v41;
                if (v143 > MidY)
                {
                  v144 = *(*(a1 + 56) + 8);
                  v145 = v143 - MidY + *(v144 + 40);
LABEL_101:
                  *(v144 + 40) = v145;
                  v31 = v32;
LABEL_102:
                  if ((*(a1 + 169) & 1) == 0)
                  {
                    if (a5)
                    {
                      VUIRectWithFlippedOriginRelativeToBoundingRect();
                    }

                    [*(*(*(a1 + 48) + 8) + 40) setFrame:?];
                  }

                  goto LABEL_113;
                }

                v150 = *(*(a1 + 64) + 8);
                v151 = MidY - v143 + *(v150 + 24);
              }

              else
              {
                if (v35 > *(*(*(a1 + 56) + 8) + 56))
                {
                  [v33 frame];
                  v145 = fabs(v37) + v146;
                  v144 = *(*(a1 + 56) + 8);
                  goto LABEL_101;
                }

                v151 = fabs(v37);
                v150 = *(*(a1 + 64) + 8);
              }

              *(v150 + 24) = v151;
              v31 = v32;
              goto LABEL_113;
            }
          }
        }

        *(*(*(a1 + 40) + 8) + 24) = 0;
        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v14);
        goto LABEL_65;
      }

      if ([v16 tag] == 108)
      {
        goto LABEL_62;
      }

      v114 = *(*(*(a1 + 48) + 8) + 40);
      if (a4)
      {
        if (!v114)
        {
          goto LABEL_114;
        }

        goto LABEL_65;
      }

      if (v114)
      {
        if ([v16 tag] == 109)
        {
          v131 = [*(a1 + 32) tagsViewLayout];
          v132 = [v131 isSportsCanonicalType];

          if (v132)
          {
LABEL_62:
            v92 = *(*(a1 + 40) + 8);
LABEL_63:
            *(v92 + 24) = 0;
LABEL_65:
            *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24);
            v93 = [WeakRetained tagsViewLayout];
            [v93 badgeMargin];
            v95 = v94;

            v96 = [WeakRetained tagsViewLayout];
            v97 = [v96 textLayout];
            [v97 margin];
            v99 = v98;

            if (v95 >= v99)
            {
              v100 = v95;
            }

            else
            {
              v100 = v99;
            }

            v101 = fmax(v100, 2.0);
            v102 = [WeakRetained tagsViewLayout];
            v103 = [v102 textLayout];
            [v103 margin];
            v105 = v104;

            v106 = [WeakRetained tagsViewLayout];
            [v106 badgeMargin];
            v108 = v107;

            if (v105 >= v108)
            {
              v109 = v105;
            }

            else
            {
              v109 = v108;
            }

            *(*(*(a1 + 64) + 8) + 24) = v101 + *(*(*(a1 + 88) + 8) + 24) + fmax(v109, 2.0) + *(*(*(a1 + 64) + 8) + 24);
LABEL_72:
            v91 = 1;
            goto LABEL_115;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 56) + 8) + 40);
          v92 = *(*(a1 + 40) + 8);
          if (v27 + *(v92 + 24) <= *(a1 + 152))
          {
            goto LABEL_114;
          }

          goto LABEL_63;
        }

        v133 = *(*(*(a1 + 56) + 8) + 40);
        v134 = *(*(*(a1 + 48) + 8) + 40);
        [v134 baselineHeight];
        VUIRoundValue();
        *(*(*(a1 + 64) + 8) + 24) = v133 + fabs(v135);
      }

LABEL_114:
      v91 = 0;
      goto LABEL_115;
    }

    v46 = [WeakRetained tagsViewLayout];
    v47 = [v46 isWrappingAllowed];

    if (v47 && v27 + *(*(*(a1 + 40) + 8) + 24) > *(a1 + 152))
    {
      v48 = *(*(a1 + 72) + 8);
      v49 = *(v48 + 40);
      *(v48 + 40) = 0;

      [*(*(*(a1 + 96) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 104) + 8) + 40) removeAllObjects];
      if ((v30 & 1) == 0)
      {
        v178 = v27;
        if ([*(*(*(a1 + 48) + 8) + 40) tag] == 103)
        {
          [*(*(*(a1 + 48) + 8) + 40) vui_sizeThatFits:{*(a1 + 152), *(a1 + 160)}];
          v116 = v115;
          v118 = v117;
          v119 = fmax(v117, v31);
          v120 = [WeakRetained tagsViewLayout];
          v121 = [v120 textLayout];
          [v121 margin];
          v123 = v119 + v122;
          v124 = [WeakRetained tagsViewLayout];
          [v124 badgeMargin];
          *(*(*(a1 + 64) + 8) + 24) = v123 + v125 + *(*(*(a1 + 64) + 8) + 24);

          *(*(*(a1 + 56) + 8) + 32) = 0;
          *(*(*(a1 + 56) + 8) + 40) = *(*(*(a1 + 64) + 8) + 24);
          v126 = *(*(a1 + 56) + 8);
          *(v126 + 48) = v116;
          *(v126 + 56) = v118;
          v127 = *(*(*(a1 + 56) + 8) + 32) + *(*(*(a1 + 56) + 8) + 48);
          v128 = [WeakRetained tagsViewLayout];
          v129 = [v128 textLayout];
          [v129 margin];
          *(*(*(a1 + 40) + 8) + 24) = v127 + v130;

          if ((*(a1 + 169) & 1) == 0)
          {
            if (a5)
            {
              VUIRectWithFlippedOriginRelativeToBoundingRect();
            }

            [*(*(*(a1 + 48) + 8) + 40) setFrame:?];
          }

          v147 = *(*(a1 + 112) + 8);
          v148 = *(v147 + 40);
          v149 = *(*(a1 + 64) + 8);
          if (v148 < v118 + *(v149 + 24))
          {
            v148 = v118 + *(v149 + 24);
          }

          *(v147 + 40) = v148;
        }

        else
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          v136 = *(*(*(a1 + 56) + 8) + 56);
          v137 = [WeakRetained tagsViewLayout];
          v138 = [v137 textLayout];
          [v138 margin];
          v140 = v136 + v139;
          v141 = [WeakRetained tagsViewLayout];
          [v141 badgeMargin];
          *(*(*(a1 + 64) + 8) + 24) = v140 + v142 + *(*(*(a1 + 64) + 8) + 24);
        }

        goto LABEL_72;
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      v50 = *(*(*(a1 + 88) + 8) + 24);
      v51 = [WeakRetained tagsViewLayout];
      v52 = [v51 textLayout];
      [v52 margin];
      v54 = v50 + v53;
      v55 = [WeakRetained tagsViewLayout];
      [v55 badgeMargin];
      *(*(*(a1 + 64) + 8) + 24) = v54 + v56 + *(*(*(a1 + 64) + 8) + 24);

      HIDWORD(v170) = v30;
      v174 = a5;
      if ([v16 tag] == 100)
      {
        v176 = 0.0;
        if ((*(a1 + 169) & 1) == 0)
        {
          [v16 removeFromSuperview];
        }

        LODWORD(v170) = 1;
        v27 = 0.0;
      }

      else
      {
        v176 = v31;
        if ((*(a1 + 169) & 1) == 0 && [*(*(*(a1 + 48) + 8) + 40) tag] == 100)
        {
          [*(*(*(a1 + 48) + 8) + 40) removeFromSuperview];
        }

        LODWORD(v170) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24);
      if ((v30 & 1) == 0)
      {
        v110 = [WeakRetained tagsViewLayout];
        v111 = [v110 alignBadgeVertically];

        v178 = v27;
        if (!v111 || !*(*(*(a1 + 72) + 8) + 40))
        {
          goto LABEL_114;
        }

        v112 = *(*(*(a1 + 120) + 8) + 40);
        VUIRoundValue();
        v91 = 0;
        *(*(*(a1 + 64) + 8) + 24) = v112 + v113 * 0.5;
        goto LABEL_115;
      }

      v176 = v31;
      HIDWORD(v170) = v30;
      v174 = a5;
      if ((*(a1 + 169) & 1) == 0 && [*(*(*(a1 + 48) + 8) + 40) tag] == 100)
      {
        v57 = [*(*(*(a1 + 48) + 8) + 40) superview];

        if (!v57)
        {
          [WeakRetained addSubview:*(*(*(a1 + 48) + 8) + 40)];
        }
      }

      LODWORD(v170) = 0;
    }

    v58 = v16;
    v171 = v14;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v14);
    v178 = v27;
    v59 = [v58 requiresMoreThanOneLineForTextWidth:v27];
    [v58 baselineHeight];
    v180 = v60;
    v61 = [v58 vuiFont];
    [v61 capHeight];
    v63 = v62;

    if ([*(*(*(a1 + 96) + 8) + 40) count])
    {
      v64 = 0;
      v172 = v63 * 0.5;
      v173 = v180 - v63;
      v175 = v176 * 0.5;
      v179 = v25;
      do
      {
        v65 = [*(*(*(a1 + 96) + 8) + 40) objectAtIndexedSubscript:{v64, v170}];
        v66 = [*(*(*(a1 + 104) + 8) + 40) objectAtIndexedSubscript:v64];
        [v66 CGRectValue];
        v68 = v67;
        v70 = v69;
        v72 = v71;
        v74 = v73;

        v75 = v58;
        if (v72 == v24 && v74 == v25)
        {
          goto LABEL_59;
        }

        v77 = v24;
        v78 = *(*(*(a1 + 64) + 8) + 24);
        VUIRoundValue();
        v80 = v79;
        v181.origin.x = v68;
        v181.origin.y = v70;
        v181.size.width = v72;
        v181.size.height = v74;
        v81 = CGRectGetMidY(v181);
        v82 = [WeakRetained tagsViewLayout];
        v83 = [v82 alignBadgeVertically];

        if (v59)
        {
          v182.origin.x = v68;
          v182.origin.y = v70;
          v182.size.width = v72;
          v182.size.height = v74;
          if (CGRectGetHeight(v182) < v176)
          {
            v84 = v175 + *(*(*(a1 + 64) + 8) + 24) + *(*(*(a1 + 56) + 8) + 56) * -0.5;
            goto LABEL_50;
          }

          v183.origin.x = v68;
          v183.origin.y = v70;
          v183.size.width = v72;
          v183.size.height = v74;
          *(*(*(a1 + 64) + 8) + 24) = CGRectGetMidY(v183) - v175;
        }

        else
        {
          if (v83)
          {
            v85 = v172 + v173 + v78;
            v24 = v77;
            if (v85 > v81)
            {
              v84 = v70 + v85 - v81;
              goto LABEL_51;
            }

            *(*(*(a1 + 64) + 8) + 24) = v81 - v85 + *(*(*(a1 + 64) + 8) + 24);
            goto LABEL_58;
          }

          v86 = fabs(v80);
          if (v180 > v74)
          {
            [v75 frame];
            v84 = v86 + v87;
LABEL_50:
            v24 = v77;
LABEL_51:
            v25 = v179;
            if ((*(a1 + 169) & 1) == 0)
            {
              if (v174)
              {
                VUIRectWithFlippedOriginRelativeToBoundingRect();
                v68 = v88;
                v72 = v89;
                v74 = v90;
              }

              [v65 setFrame:{v68, v84, v72, v74}];
            }

            goto LABEL_59;
          }

          *(*(*(a1 + 64) + 8) + 24) = v86;
        }

        v24 = v77;
LABEL_58:
        v25 = v179;
LABEL_59:

        ++v64;
      }

      while (v64 < [*(*(*(a1 + 96) + 8) + 40) count]);
    }

    v31 = v176;
    v14 = v171;
    v91 = v170;
    LOBYTE(v30) = BYTE4(v170);
LABEL_115:
    v152 = [*(a1 + 32) tagsViewLayout];
    [v152 separatorMargin];
    v154 = v153;

    if ([v16 tag] == 100 && v154 > 0.0)
    {
      [*(a1 + 32) _rightMarginForView:*(*(*(a1 + 48) + 8) + 40)];
      *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - v155;
      *(*(*(a1 + 40) + 8) + 24) = v154 + *(*(*(a1 + 40) + 8) + 24);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v14);
    v156 = *(*(a1 + 40) + 8);
    v45 = *(v156 + 24);
    v157 = *(*(*(a1 + 64) + 8) + 24);
    *(v156 + 24) = v178 + v177 + v45;
    v158 = *(*(a1 + 56) + 8);
    v158[4] = v45;
    v158[5] = v157;
    v158[6] = v178;
    v158[7] = v31;
    if ((v30 & 1) == 0)
    {
      [*(*(*(a1 + 96) + 8) + 40) addObject:v16];
      v159 = *(*(*(a1 + 104) + 8) + 40);
      v160 = [MEMORY[0x1E696B098] valueWithCGRect:{v45, v157, v178, v31}];
      [v159 addObject:v160];
    }

    v184.origin.x = v45;
    v184.origin.y = v157;
    v184.size.width = v178;
    v184.size.height = v31;
    MinY = CGRectGetMinY(v184);
    v162 = *(*(a1 + 80) + 8);
    if (v91)
    {
      *(v162 + 24) = MinY;
      v163 = *(*(a1 + 88) + 8);
      v164 = v31;
    }

    else
    {
      if (MinY >= *(v162 + 24))
      {
        MinY = *(v162 + 24);
      }

      *(v162 + 24) = MinY;
      v163 = *(*(a1 + 88) + 8);
      v164 = *(v163 + 24);
      if (v164 < v31)
      {
        v164 = v31;
      }
    }

    *(v163 + 24) = v164;
    if (*(*(*(a1 + 72) + 8) + 40) == v16)
    {
      v165 = *(*(a1 + 120) + 8);
      v165[4] = v45;
      v165[5] = v157;
      v165[6] = v178;
      v165[7] = v31;
      if (!v91)
      {
LABEL_132:
        [*(*(*(a1 + 128) + 8) + 40) addObject:v16];
        goto LABEL_133;
      }
    }

    else if (!v91)
    {
      goto LABEL_132;
    }

    if ([*(*(*(a1 + 128) + 8) + 40) count])
    {
      v166 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v167 = *(*(a1 + 128) + 8);
      v168 = *(v167 + 40);
      *(v167 + 40) = v166;

      [*(*(*(a1 + 136) + 8) + 40) addObject:*(*(*(a1 + 128) + 8) + 40)];
    }

    goto LABEL_132;
  }

  v45 = *MEMORY[0x1E695F058];
LABEL_133:
  VUIRoundValue();
  VUICeilValue();

  return v45;
}

double __59__VUIMediaTagsView__layoutSubviewsForSize_computationOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && ([*(*(*(a1 + 32) + 8) + 40) objectForKey:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    [v4 CGRectValue];
    v7 = v6;
  }

  else
  {
    v7 = *MEMORY[0x1E695F058];
  }

  return v7;
}

- (id)pinnedBrandLinkButtonView
{
  v3 = [(VUIMediaTagsView *)self traitCollection];
  v4 = [v3 isAXEnabled];

  if (v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v6 = [(VUIMediaTagsView *)self tagsViewLayout];
  v7 = [v6 type];

  v8 = [(VUIMediaTagsView *)self tagsViewLayout];
  if ([v8 isWrappingAllowed])
  {
    goto LABEL_4;
  }

  v10 = [(VUIMediaTagsView *)self tagsViewLayout];
  v11 = [v10 centerAlign];

  v5 = 0;
  if ((v11 & 1) == 0 && (v7 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v12 = [(VUIMediaTagsView *)self groupedSubviews];
    v13 = [v12 lastObject];
    v8 = [v13 lastObject];

    if ([v8 tag] == 108)
    {
      v8 = v8;
      v5 = v8;
      goto LABEL_5;
    }

LABEL_4:
    v5 = 0;
LABEL_5:
  }

LABEL_6:

  return v5;
}

- (void)_adjustViewsPositionFor:(id)a3 preferredSize:(CGSize)a4
{
  width = a4.width;
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VUIMediaTagsView *)self tagsViewLayout];
  v8 = [v7 centerAlign];

  if (v8 && [v6 count])
  {
    v9 = [(VUIMediaTagsView *)self vuiTraitCollection];
    if ([v9 isAXEnabled])
    {
      v10 = [(VUIMediaTagsView *)self tagsViewLayout];
      v11 = [v10 centerAlignOnAX];

      if (!v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v12 = [(VUIMediaTagsView *)self vuiIsRTL];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v40 = v6;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v46;
      v17 = *MEMORY[0x1E695F058];
      v18 = *(MEMORY[0x1E695F058] + 16);
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v46 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          v21 = v18;
          v22 = v17;
          if ([v20 count])
          {
            v23 = [v20 count];
            v21 = v18;
            v22 = v17;
            if (v23 - 1 >= 0)
            {
              v24 = v23;
              while (1)
              {
                v25 = [v20 objectAtIndexedSubscript:--v24];
                if (([v25 isHidden] & 1) == 0)
                {
                  v26 = [v25 superview];

                  if (v26)
                  {
                    break;
                  }
                }

                if (v24 <= 0)
                {
                  v21 = v18;
                  v22 = v17;
                  goto LABEL_20;
                }
              }

              [v25 frame];
              v22 = v27;
              v21 = v28;
            }
          }

LABEL_20:
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v29 = v20;
          v30 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = width - (v21 + v22);
            if (v12)
            {
              v32 = v22;
            }

            v33 = v32 * 0.5;
            v34 = *v42;
            v35 = -(v32 * 0.5);
            if (v12)
            {
              v36 = v35;
            }

            else
            {
              v36 = v33;
            }

            do
            {
              for (j = 0; j != v31; ++j)
              {
                if (*v42 != v34)
                {
                  objc_enumerationMutation(v29);
                }

                v38 = *(*(&v41 + 1) + 8 * j);
                [v38 frame];
                [v38 setFrame:v36 + v39];
              }

              v31 = [v29 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v31);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v15);
    }

    v6 = v40;
  }

LABEL_34:
}

- (void)_adjustViewsPositionVerticallyCenteredFor:(id)a3 preferredSize:(CGSize)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] == 1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * i);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v18;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v18 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v17 + 1) + 8 * j);
                [v16 frame];
                [v16 setFrame:?];
              }

              v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }
  }
}

- (void)_adjustViewsPositionFor:(id)a3 topPadding:(double)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 count];
  if (a4 > 0.0 && v6 != 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v21;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v21 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v20 + 1) + 8 * j);
                [v19 frame];
                [v19 setFrame:?];
              }

              v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v16);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }
  }
}

- (double)topMarginWithBaselineMargin:(double)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(VUIMediaTagsView *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 topMarginWithBaselineMargin:a3];
          goto LABEL_19;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  v5 = [(VUIMediaTagsView *)self subviews:0];
  v11 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = [(VUIMediaTagsView *)self tagsViewLayout];
          [v18 badgeMaxHeight];
          v20 = v19;

          v21 = MEMORY[0x1E69DF6D0];
          v22 = [(VUIMediaTagsView *)self vuiTraitCollection];
          v23 = [(VUIMediaTagsView *)self tagsViewLayout];
          [v21 scaleContentSizeValue:v22 forTraitCollection:objc_msgSend(v23 maximumContentSizeCategory:{"badgeMaxContentSizeCategory"), v20}];
          v25 = v24;

          v17 = a3 - v25;
          goto LABEL_21;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v15 = MEMORY[0x1E69DF6D0];
  v5 = [(VUIMediaTagsView *)self vuiTraitCollection];
  [v15 scaleContentSizeValue:v5 forTraitCollection:a3];
LABEL_19:
  v17 = v16;
LABEL_21:

  return v17;
}

- (double)topMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VUIMediaTagsView *)self _firstLabelSubview];
  v8 = v7;
  if (v7)
  {
    [v7 topMarginToLabel:v6 withBaselineMargin:a4];
    v10 = v9;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v11 = [(VUIMediaTagsView *)self subviews:0];
    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [(VUIMediaTagsView *)self tagsViewLayout];
            [v19 badgeMaxHeight];
            v21 = v20;

            v22 = MEMORY[0x1E69DF6D0];
            v23 = [(VUIMediaTagsView *)self vuiTraitCollection];
            v24 = [(VUIMediaTagsView *)self tagsViewLayout];
            [v22 scaleContentSizeValue:v23 forTraitCollection:objc_msgSend(v24 maximumContentSizeCategory:{"badgeMaxContentSizeCategory"), v21}];
            v26 = v25;

            [v6 bottomMarginWithBaselineMargin:a4];
            v10 = v27 - v26;

            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = MEMORY[0x1E69DF6D0];
    v17 = [(VUIMediaTagsView *)self vuiTraitCollection];
    [v16 scaleContentSizeValue:v17 forTraitCollection:a4];
    v10 = v18;
  }

LABEL_13:

  return v10;
}

- (double)firstBaselineOffsetFromTop
{
  v2 = [(VUIMediaTagsView *)self _firstLabelSubview];
  v3 = v2;
  if (v2)
  {
    [v2 vuiBaselineHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)vui_baselineOffsetFromBottom
{
  v2 = [(VUIMediaTagsView *)self _firstLabelSubview];
  v3 = v2;
  if (v2)
  {
    [v2 vui_baselineOffsetFromBottom];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (double)bottomMarginToLabel:(id)a3 withBaselineMargin:(double)a4
{
  v6 = a3;
  v7 = [(VUIMediaTagsView *)self _firstLabelSubview];
  [v6 topMarginToLabel:v7 withBaselineMargin:a4];
  v9 = v8;

  return v9;
}

- (double)bottomMarginWithBaselineMargin:(double)a3
{
  v5 = [(VUIMediaTagsView *)self _firstLabelSubview];
  v6 = v5;
  if (v5)
  {
    [v5 bottomMarginWithBaselineMargin:a3];
    v8 = v7;
  }

  else
  {
    v9 = MEMORY[0x1E69DF6D0];
    v10 = [(VUIMediaTagsView *)self vuiTraitCollection];
    [v9 scaleContentSizeValue:v10 forTraitCollection:a3];
    v8 = v11;
  }

  return v8;
}

- (void)updateWithMetadata:(id)a3
{
  v103 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v74 = v4;
  val = self;
  if (![v4 count])
  {
    v42 = [(VUIMediaTagsView *)self viewsMap];
    v43 = [v42 allValues];
    [v43 makeObjectsPerformSelector:sel_removeFromSuperview];

    [(VUIMediaTagsView *)self setViewsMap:MEMORY[0x1E695E0F8]];
    [(VUIMediaTagsView *)self setGroupedSubviews:MEMORY[0x1E695E0F0]];
    v44 = [(VUIMediaTagsView *)self vuiTraitCollection];
    v45 = [v44 userInterfaceStyle];

    v46 = self;
    [(VUIMediaTagsView *)self _updateImageAppearanceWithUserInterfaceStyle:v45];
    goto LABEL_125;
  }

  v69 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v5 = [(VUIMediaTagsView *)self viewsMap];
  v6 = [v5 allKeys];
  v68 = [v6 mutableCopy];

  v7 = [(VUIMediaTagsView *)self viewsMap];
  v8 = [v7 mutableCopy];

  v71 = v8;
  [v8 removeObjectForKey:VUIMediaTagKeySeparator];
  [(VUIMediaTagsView *)self _removeSeparatorsFromGroupsIfNeeded:1];
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x3032000000;
  v99[3] = __Block_byref_object_copy__15;
  v99[4] = __Block_byref_object_dispose__15;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__15;
  v97 = __Block_byref_object_dispose__15;
  v98 = 0;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v9 = [(VUIMediaTagsView *)self tagsViewLayout];
  obj = [v9 groupedKeys];

  v61 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
  if (!v61)
  {
    v64 = 0;
    goto LABEL_116;
  }

  v64 = 0;
  v60 = *v90;
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v90 != v60)
      {
        objc_enumerationMutation(obj);
      }

      v76 = *(*(&v89 + 1) + 8 * i);
      v67 = objc_opt_new();
      for (j = 0; j < [v76 count]; ++j)
      {
        v11 = [v76 objectAtIndexedSubscript:j];
        v12 = [v71 objectForKeyedSubscript:v11];
        v13 = [v74 objectForKeyedSubscript:v11];
        if (v13)
        {
          [v68 removeObject:v11];
          objc_initWeak(&location, val);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __39__VUIMediaTagsView_updateWithMetadata___block_invoke;
          aBlock[3] = &unk_1E8732F30;
          objc_copyWeak(v87, &location);
          v14 = v11;
          v82 = v14;
          v15 = v74;
          v87[1] = j;
          v72 = v15;
          v83 = v15;
          v84 = v76;
          v85 = &v93;
          v86 = v99;
          v16 = _Block_copy(aBlock);
          if ([v14 isEqualToString:VUIMediaTagKeySeparator])
          {
            v17 = [(VUIMediaTagsView *)val tagsViewLayout];
            v18 = [v17 textLayout];

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && v16[2](v16))
            {
              v19 = [(VUIMediaTagsView *)val _newLabelAsSubview:0 textLayout:v18];
              goto LABEL_32;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && v16[2](v16))
            {
              v19 = [(VUIMediaTagsView *)val _newLabelAsSubview:0 withAttributedString:v13 textLayout:v18];
              goto LABEL_32;
            }

            v21 = v12;
LABEL_33:

LABEL_34:
            v12 = v21;
            if (v21)
            {
LABEL_35:
              v70 = [v14 stringByReplacingOccurrencesOfString:@"VUIMediaTagKey" withString:&stru_1F5DB25C0];
              v73 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:@"Badge" additionalString:?];
              [v12 setVuiAccessibilityIdentifier:v73];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = v12;
                v23 = v13;
                v24 = [v22 expirationDate];
                v25 = [v23 isEqual:v24];

                if ((v25 & 1) == 0)
                {
                  [v22 setExpirationDate:v23];
                  [v22 setHidden:0];
                  goto LABEL_38;
                }

                goto LABEL_59;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = v12;
                v23 = v13;
                v27 = [v72 objectForKeyedSubscript:VUIMediaTagKeyGenreSeparator];
                if (!v27)
                {
                  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@ ", @"·"];
                }

                [v26 setGenres:v23];
                [v26 setGenreSeparator:v27];
                [v26 update];
                [v26 setLabelName:v14];
LABEL_58:

                goto LABEL_59;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v66 = v12;
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                v65 = v13;
                if (isKindOfClass)
                {
                  v29 = [v66 vuiAttributedText];
                  v27 = [v29 string];

                  v30 = [(VUIMediaTagsView *)val _textLayoutForKey:v14];
                  v31 = [v30 attributedStringWithAttributedString:v65 view:val updateTextColor:0];
                  v23 = [v65 string];
                }

                else
                {
                  v27 = [v66 vuiText];
                  v62 = v16;
                  v30 = [(VUIMediaTagsView *)val _textLayoutForKey:v14];
                  v37 = [v30 attributedStringWithString:v65 view:val];
                  v23 = v65;
                  v31 = v37;
                  v16 = v62;
                }

                if (([v23 isEqual:v27] & 1) == 0)
                {
                  [v66 setVuiAttributedText:v31];
                  v64 = 1;
                }

                [v66 setLabelName:v14];

                goto LABEL_58;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v32 = v12;
                  v23 = v13;
                  v33 = [v32 image];
                  v34 = [v23 isEqual:v33];

                  if ((v34 & 1) == 0)
                  {
                    [v32 setImage:v23];
                    v35 = [v23 vuiAccessibilityLabel];
                    [v32 vui_setAccessibilityText:v35];

                    [v32 vui_isAccessibilityElement:1];
                    [v32 setHidden:0];
LABEL_38:
                    v64 = 1;
                  }

LABEL_59:
                }
              }

              if (([v14 isEqualToString:VUIMediaTagKeyCommonSenseRating] & 1) == 0 && !objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyCommonSenseImage))
              {
                if ([v14 isEqualToString:VUIMediaTagKeyTomatoFreshnessImage] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyTomatoPercentage))
                {
                  v40 = 102;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyImmersiveImage] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyImmersiveText))
                {
                  v40 = 109;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyHighMotionImage] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyHighMotionText))
                {
                  v40 = 110;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyComingSoonText])
                {
                  v40 = 105;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyContentUnavailabilityText])
                {
                  v40 = 107;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyBrandLinkButton])
                {
                  v40 = 108;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyAvailabilityText] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyAvailabilityImage))
                {
                  v40 = 103;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyEpisodeNumberTitle])
                {
                  v40 = 104;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeySeparator])
                {
                  v40 = 100;
                }

                else if ([v14 isEqualToString:VUIMediaTagKeyGroupActivityImage])
                {
                  v40 = 106;
                }

                else
                {
                  if (![v14 isEqualToString:VUIMediaTagKeyEntitlementCue])
                  {
                    goto LABEL_68;
                  }

                  v40 = 111;
                }

                [v12 setTag:v40];
                goto LABEL_68;
              }

              [v12 setTag:101];
              if ([v14 isEqualToString:VUIMediaTagKeyCommonSenseImage])
              {
                v38 = [v72 objectForKeyedSubscript:VUIMediaTagKeyCommonSenseImage];
                [(VUIMediaTagsView *)val setCommonSenseLightImage:v38];

                v39 = [v72 objectForKeyedSubscript:VUIMediaTagKeyCommonSenseDarkImage];
                [(VUIMediaTagsView *)val setCommonSenseDarkImage:v39];
              }

LABEL_68:
              [v69 setObject:v12 forKeyedSubscript:v14];
              [v67 addObject:v12];
            }

LABEL_69:

            objc_destroyWeak(v87);
            objc_destroyWeak(&location);
            goto LABEL_70;
          }

          if (([v14 isEqualToString:VUIMediaTagKeyTimeTextBadge] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyLiveTextBadge))
          {
            if (v16[2](v16))
            {
              if ([v14 isEqualToString:VUIMediaTagKeyLiveTextBadge])
              {
                v20 = [(VUIMediaTagsView *)val tagsViewLayout];
                [v20 liveTextBadgeLayout];
              }

              else
              {
                v20 = [(VUIMediaTagsView *)val tagsViewLayout];
                [v20 timeTextBadgeLayout];
              }
              v18 = ;

              v19 = [(VUIMediaTagsView *)val _newTextBadgeViewAsSubview:v12 layout:v18 withString:v13];
              goto LABEL_32;
            }
          }

          else
          {
            if (![v14 isEqualToString:VUIMediaTagKeyGenres])
            {
              if (v12)
              {
                goto LABEL_35;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && v16[2](v16))
              {
                v18 = [(VUIMediaTagsView *)val _textLayoutForKey:v14];
                v36 = [(VUIMediaTagsView *)val _newLabelAsSubview:0 textLayout:v18];
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || !v16[2](v16))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && v16[2](v16))
                  {
                    v41 = [(VUIMediaTagsView *)val _newImageViewAsSubview:[(VUIMediaTagsView *)val _shouldApplyTintColor:v14 forImage:v13]];
                  }

                  else
                  {
                    if (![v14 isEqualToString:VUIMediaTagKeyRentalExpiration] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      if (([v14 isEqualToString:VUIMediaTagKeyBrandLinkButton] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", VUIMediaTagKeyEntitlementCue))
                      {
                        v12 = v13;
                        [(VUIMediaTagsView *)val vui_addSubview:v12 oldView:0];
                        goto LABEL_35;
                      }

                      v12 = 0;
                      goto LABEL_69;
                    }

                    v41 = [(VUIMediaTagsView *)val _newRentalExpirationlabel:v13 exisitingLabel:0];
                  }

                  v21 = v41;
                  goto LABEL_34;
                }

                v18 = [(VUIMediaTagsView *)val _textLayoutForKey:v14];
                v36 = [(VUIMediaTagsView *)val _newLabelAsSubview:0 withAttributedString:v13 textLayout:v18];
              }

              v21 = v36;
              goto LABEL_33;
            }

            if (v16[2](v16))
            {
              v18 = [(VUIMediaTagsView *)val _textLayoutForKey:v14];
              v19 = [(VUIMediaTagsView *)val _newGenresLabel:v12 textLayout:v18];
LABEL_32:
              v21 = v19;

              goto LABEL_33;
            }
          }

          v21 = v12;
          goto LABEL_34;
        }

        if (v12)
        {
          [v12 removeFromSuperview];
        }

        [v69 setObject:0 forKeyedSubscript:v11];
LABEL_70:
      }

      if ([v67 count])
      {
        [v59 addObject:v67];
        objc_storeStrong(v94 + 5, v67);
      }
    }

    v61 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
  }

  while (v61);
LABEL_116:

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v47 = v68;
  v48 = [v47 countByEnumeratingWithState:&v77 objects:v101 count:16];
  if (v48)
  {
    v49 = *v78;
    do
    {
      for (k = 0; k != v48; ++k)
      {
        if (*v78 != v49)
        {
          objc_enumerationMutation(v47);
        }

        v51 = *(*(&v77 + 1) + 8 * k);
        v52 = [(VUIMediaTagsView *)val viewsMap];
        v53 = [v52 objectForKeyedSubscript:v51];
        [v53 removeFromSuperview];
      }

      v48 = [v47 countByEnumeratingWithState:&v77 objects:v101 count:16];
    }

    while (v48);
  }

  v54 = [v69 copy];
  [(VUIMediaTagsView *)val setViewsMap:v54];

  [(VUIMediaTagsView *)val setGroupedSubviews:v59];
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(v99, 8);
  v55 = [(VUIMediaTagsView *)val vuiTraitCollection];
  v56 = [v55 userInterfaceStyle];

  [(VUIMediaTagsView *)val _updateImageAppearanceWithUserInterfaceStyle:v56];
  v46 = val;
  if ((v64 & 1) == 0)
  {
LABEL_125:
    [(VUIMediaTagsView *)v46 totalSubviewsWidth];
    if (v57 == 0.0)
    {
      goto LABEL_126;
    }

    goto LABEL_128;
  }

  [(VUIMediaTagsView *)val invalidateIntrinsicContentSize];
  [(VUIMediaTagsView *)val vui_setNeedsLayout];
LABEL_126:
  if (_os_feature_enabled_impl())
  {
    [(VUIMediaTagsView *)val _totalSubviewsWidth];
    [(VUIMediaTagsView *)val setTotalSubviewsWidth:?];
  }

LABEL_128:
}

uint64_t __39__VUIMediaTagsView_updateWithMetadata___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = &VUIMediaTagKeyCommonSenseRating;
  v4 = [*(a1 + 32) isEqualToString:VUIMediaTagKeyCommonSenseRating];
  v5 = &VUIMediaTagKeyCommonSenseImage;
  if (!v4)
  {
    if ([*(a1 + 32) isEqualToString:VUIMediaTagKeyCommonSenseImage])
    {
      goto LABEL_5;
    }

    v3 = &VUIMediaTagKeyTomatoPercentage;
    if ([*(a1 + 32) isEqualToString:VUIMediaTagKeyTomatoPercentage])
    {
      v6 = *(a1 + 40);
      v5 = &VUIMediaTagKeyTomatoFreshnessImage;
      goto LABEL_3;
    }

    if ([*(a1 + 32) isEqualToString:VUIMediaTagKeyTomatoFreshnessImage] || (v3 = &VUIMediaTagKeyImmersiveImage, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyImmersiveImage)) || (v3 = &VUIMediaTagKeyImmersiveText, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyImmersiveText)) || (v3 = &VUIMediaTagKeyHighMotionImage, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyHighMotionImage)) || (v3 = &VUIMediaTagKeyHighMotionText, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyHighMotionText)) || (v3 = &VUIMediaTagKeyLiveTextBadge, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyLiveTextBadge)) || (v3 = &VUIMediaTagKeyTimeTextBadge, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyTimeTextBadge)) || (v3 = &VUIMediaTagKeyGenres, objc_msgSend(*(a1 + 32), "isEqualToString:", VUIMediaTagKeyGenres)))
    {
LABEL_5:
      v6 = *(a1 + 40);
      v7 = *v3;
      goto LABEL_6;
    }

    if (![*(a1 + 32) isEqualToString:VUIMediaTagKeySeparator])
    {
      v9 = 1;
      goto LABEL_8;
    }

    v11 = *(a1 + 80);
    if (v11)
    {
      v12 = [*(a1 + 48) objectAtIndexedSubscript:v11 - 1];
      v8 = [*(a1 + 40) objectForKeyedSubscript:v12];
    }

    else
    {
      v13 = *(*(*(a1 + 56) + 8) + 40);
      if (!v13)
      {
        goto LABEL_27;
      }

      v8 = [v13 lastObject];
    }

    if (v8)
    {
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
      goto LABEL_28;
    }

LABEL_27:
    v8 = 0;
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v9 = 0;
      goto LABEL_7;
    }

LABEL_28:
    if (v11 + 1 >= [*(a1 + 48) count] || (objc_msgSend(*(a1 + 48), "objectAtIndexedSubscript:", v11 + 1), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", v14), v9 = objc_claimAutoreleasedReturnValue(), v9, v14, v9))
    {
      v9 = [WeakRetained elementsArePlacedOnIndividualLines] ^ 1;
    }

    goto LABEL_7;
  }

  v6 = *(a1 + 40);
LABEL_3:
  v7 = *v5;
LABEL_6:
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = v8 != 0;
LABEL_7:

LABEL_8:
  return v9;
}

- (CGSize)intrinsicContentSize
{
  v3 = [MEMORY[0x1E69DCEB0] vui_main];
  [v3 vui_bounds];
  v5 = v4;

  v6 = [(VUIMediaTagsView *)self tagsViewLayout];
  [v6 maxWidth];
  v8 = v7;

  v9 = [(VUIMediaTagsView *)self tagsViewLayout];
  if ([v9 isWrappingAllowed] && v8 > 0.0)
  {

    if (v5 > v8)
    {
      v5 = v8;
    }
  }

  else
  {
  }

  [(UIView *)self vui_sizeThatFits:v5, 0.0];
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)_firstLabelSubview
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__15;
  v10 = __Block_byref_object_dispose__15;
  v11 = 0;
  v2 = [(VUIMediaTagsView *)self subviews];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__VUIMediaTagsView__firstLabelSubview__block_invoke;
  v5[3] = &unk_1E8732150;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __38__VUIMediaTagsView__firstLabelSubview__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_textLayoutForKey:(id)a3
{
  v4 = a3;
  v5 = [(VUIMediaTagsView *)self tagsViewLayout];
  v6 = [v5 textLayout];
  if ([v4 isEqualToString:VUIMediaTagKeyImmersiveText])
  {
    v7 = [v5 immersiveTextLayout];
  }

  else
  {
    if (![v4 isEqualToString:VUIMediaTagKeyHighMotionText])
    {
      goto LABEL_6;
    }

    v7 = [v5 highMotionTextLayout];
  }

  v8 = v7;

  v6 = v8;
LABEL_6:

  return v6;
}

- (id)_newLabelAsSubview:(id)a3 textLayout:(id)a4
{
  v5 = [VUILabel labelWithString:&stru_1F5DB25C0 textLayout:a4 existingLabel:a3];
  [(VUIMediaTagsView *)self vui_addSubview:v5 oldView:0];
  return v5;
}

- (id)_newLabelAsSubview:(id)a3 withAttributedString:(id)a4 textLayout:(id)a5
{
  v6 = [VUILabel labelWithAttributedString:a4 textLayout:a5 existingLabel:a3];
  [(VUIMediaTagsView *)self vui_addSubview:v6 oldView:0];
  return v6;
}

- (id)_newGenresLabel:(id)a3 textLayout:(id)a4
{
  v5 = [(VUILabel *)VUIGenresLabel labelWithString:&stru_1F5DB25C0 textLayout:a4 existingLabel:a3];
  [(VUIMediaTagsView *)self vui_addSubview:v5 oldView:0];
  return v5;
}

- (BOOL)_shouldApplyTintColor:(id)a3 forImage:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:VUIMediaTagKeyRatingImage])
  {
    LOBYTE(v7) = [v6 renderingMode] == 2;
  }

  else if ([v5 isEqualToString:VUIMediaTagKeyCommonSenseImage] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", VUIMediaTagKeyCommonSenseDarkImage) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", VUIMediaTagKeyTomatoFreshnessImage) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", VUIMediaTagKeyItunesExtras))
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = [v5 isEqualToString:VUIMediaTagKeyEntitlementCue] ^ 1;
  }

  return v7;
}

- (void)vui_setSelected:(BOOL)a3 animated:(BOOL)a4 withAnimationCoordinator:(id)a5
{
  v5 = a4;
  v6 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v8 = a5;
  self->_isSelected = v6;
  v9 = [(VUIMediaTagsView *)self vuiTraitCollection];
  -[VUIMediaTagsView _updateImageAppearanceWithUserInterfaceStyle:](self, "_updateImageAppearanceWithUserInterfaceStyle:", [v9 vuiUserInterfaceStyle]);
  if (_os_feature_enabled_impl())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(VUIMediaTagsView *)self subviews];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v16 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 vui_setSelected:v6 animated:v5 withAnimationCoordinator:v8];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

- (id)_newImageViewAsSubview:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  if (v3)
  {
    v6 = [(VUIMediaTagsView *)self tagsViewLayout];
    v7 = [v6 badgeTintColor];
    [v5 _setTintColor:v7];
  }

  [v5 setVuiContentMode:1];
  [(VUIMediaTagsView *)self vui_addSubview:v5 oldView:0];
  return v5;
}

- (id)_newTextBadgeViewAsSubview:(id)a3 layout:(id)a4 withString:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [VUITextBadgeView badgeWithLayout:v8 existing:a3];
  v11 = [v8 textLayout];

  if (v11)
  {
    v12 = [v8 textLayout];
    v13 = [v12 attributedStringWithString:v9];

    [v10 setAttributedTitle:v13];
  }

  [(VUIMediaTagsView *)self vui_addSubview:v10 oldView:0];

  return v10;
}

- (id)_newRentalExpirationlabel:(id)a3 exisitingLabel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 conformsToProtocol:&unk_1F5EA1998])
  {
    [v8 setDelegate:0];
  }

  if (v6)
  {
    v9 = [(VUIMediaTagsView *)self tagsViewLayout];
    v10 = [v9 rentalExpirationTextLayout];
    v11 = [VUIRentalExpirationLabel labelWithExpirationDate:v6 textLayout:v10 existingLabel:v8 locStringPrefix:@"EXPIRATION_IN"];

    [v11 setDelegate:self];
    [(VUIMediaTagsView *)self vui_addSubview:v11 oldView:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)elementsArePlacedOnIndividualLines
{
  v3 = [(VUIMediaTagsView *)self tagsViewLayout];
  if ([v3 type] != 4)
  {

LABEL_5:
    v7 = [(VUIMediaTagsView *)self tagsViewLayout];
    if ([v7 type] != 21)
    {
      v8 = [(VUIMediaTagsView *)self tagsViewLayout];
      if ([v8 type] != 20)
      {
        v9 = [(VUIMediaTagsView *)self tagsViewLayout];
        if ([v9 type] != 19)
        {
          v10 = [(VUIMediaTagsView *)self tagsViewLayout];
          if ([v10 type] != 18)
          {
            v12 = [(VUIMediaTagsView *)self tagsViewLayout];
            v13 = [v12 type];

            if (v13 == 3)
            {
              return 0;
            }

            v14 = [(VUIMediaTagsView *)self tagsViewLayout];
            v15 = [v14 type];

            if (v15 == 24)
            {
              return 0;
            }

            v7 = [(VUIMediaTagsView *)self traitCollection];
            v6 = [v7 isAXEnabled];
LABEL_13:

            return v6;
          }
        }
      }
    }

    v6 = 0;
    goto LABEL_13;
  }

  v4 = [(VUIMediaTagsView *)self traitCollection];
  v5 = [v4 isAXSmallEnabled];

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 0;
}

- (void)_updateImageAppearanceWithUserInterfaceStyle:(unint64_t)a3
{
  v4 = self;
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(VUIMediaTagsViewLayout *)self->_tagsViewLayout badgeTintColor];
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v6 = [(VUIMediaTagsViewLayout *)v4->_tagsViewLayout highContrastBadgeTintColor];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(VUIMediaTagsView *)v4 _accessibilityHigherContrastTintColorForColor:v5];
    }

    v9 = v8;

    v5 = v9;
  }

  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v10 = [v5 colorByRemovingTransparency];

    v5 = v10;
  }

  if (v4->_isSelected)
  {
    v11 = [(VUIMediaTagsViewLayout *)v4->_tagsViewLayout highlightColor];

    v24 = v11;
  }

  else
  {
    v24 = v5;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(VUIMediaTagsView *)v4 subviews];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v25 = v4;
    v26 = a3;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          if ([v18 tag] == 101)
          {
            if (a3 == 2)
            {
              [(VUIMediaTagsView *)v4 commonSenseLightImage];
            }

            else
            {
              [(VUIMediaTagsView *)v4 commonSenseDarkImage];
            }
            v20 = ;
            [v18 setImage:v20];
            goto LABEL_28;
          }

          if ([v18 tag] != 102)
          {
            v19 = [(VUIMediaTagsView *)v4 viewsMap];
            v20 = [v19 allKeysForObject:v18];

            if (v20 && [v20 count])
            {
              v21 = [v20 firstObject];
              v22 = [v18 image];
              v23 = [(VUIMediaTagsView *)v4 _shouldApplyTintColor:v21 forImage:v22];

              if (v23)
              {
                [v18 _setTintColor:v24];
              }

              v4 = v25;
              a3 = v26;
            }

LABEL_28:
          }

          continue;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)_updateAppearanceWithUserInterfaceStyle:(unint64_t)a3
{
  [(VUIMediaTagsView *)self _updateImageAppearanceWithUserInterfaceStyle:a3];

  [(VUIMediaTagsView *)self _removeSeparatorsFromGroupsIfNeeded:0];
}

- (void)_removeSeparatorsFromGroupsIfNeeded:(BOOL)a3
{
  v3 = a3;
  if ([(VUIMediaTagsView *)self elementsArePlacedOnIndividualLines]|| v3)
  {
    v5 = [(VUIMediaTagsView *)self viewsMap];
    v31 = [v5 mutableCopy];

    v30 = [v31 objectForKeyedSubscript:VUIMediaTagKeySeparator];
    [v30 removeFromSuperview];
    [v31 setObject:0 forKeyedSubscript:VUIMediaTagKeySeparator];
    v6 = [v31 copy];
    [(VUIMediaTagsView *)self setViewsMap:v6];

    v7 = [(VUIMediaTagsView *)self groupedSubviews];
    v8 = [v7 mutableCopy];

    v9 = [(VUIMediaTagsView *)self groupedSubviews];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [(VUIMediaTagsView *)self groupedSubviews];
        v13 = [v12 objectAtIndexedSubscript:v11];
        v14 = [v13 mutableCopy];

        v15 = objc_opt_new();
        v16 = [(VUIMediaTagsView *)self groupedSubviews];
        v17 = [v16 objectAtIndexedSubscript:v11];
        v18 = [v17 count];

        if (v18)
        {
          v19 = 0;
          do
          {
            v20 = [(VUIMediaTagsView *)self groupedSubviews];
            v21 = [v20 objectAtIndexedSubscript:v11];
            v22 = [v21 objectAtIndexedSubscript:v19];

            if ([v22 tag] == 100)
            {
              [v22 removeFromSuperview];
              [v15 addIndex:v19];
            }

            ++v19;
            v23 = [(VUIMediaTagsView *)self groupedSubviews];
            v24 = [v23 objectAtIndexedSubscript:v11];
            v25 = [v24 count];
          }

          while (v19 < v25);
        }

        v26 = [v15 count];
        if (v26 <= [v14 count])
        {
          [v14 removeObjectsAtIndexes:v15];
        }

        [v8 setObject:v14 atIndexedSubscript:v11];

        ++v11;
        v27 = [(VUIMediaTagsView *)self groupedSubviews];
        v28 = [v27 count];
      }

      while (v11 < v28);
    }

    v29 = [v8 copy];
    [(VUIMediaTagsView *)self setGroupedSubviews:v29];

    [(VUIMediaTagsView *)self vui_setNeedsLayout];
  }
}

- (double)_totalSubviewsWidth
{
  v72 = *MEMORY[0x1E69E9840];
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__VUIMediaTagsView__totalSubviewsWidth__block_invoke;
  aBlock[3] = &unk_1E8732F58;
  aBlock[4] = self;
  aBlock[5] = &v67;
  v3 = _Block_copy(aBlock);
  v4 = 0;
  v5 = *(MEMORY[0x1E695F058] + 8);
  v59 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v8 = 0.0;
  while (1)
  {
    v9 = [(VUIMediaTagsView *)self groupedSubviews];
    v58 = v4;
    v10 = v4 < [v9 count];

    if (!v10)
    {
      break;
    }

    v11 = [(VUIMediaTagsView *)self groupedSubviews];
    v12 = [v11 objectAtIndexedSubscript:v58];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (!v13)
    {
      goto LABEL_29;
    }

    v61 = *v63;
    do
    {
      v14 = 0;
      do
      {
        if (*v63 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v62 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(VUIMediaTagsView *)self _rightMarginForView:v15];
          v17 = v16;
          v18 = v3[2](v3, v15, 0.0, 0.0);
LABEL_10:
          v22 = v18;
          v23 = v19;
          v24 = v20;
          v25 = v21;
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(VUIMediaTagsView *)self _rightMarginForView:v15];
          v17 = v26;
          v27 = MEMORY[0x1E69DF6D0];
          v28 = [(VUIMediaTagsView *)self tagsViewLayout];
          [v28 badgeMaxHeight];
          v30 = v29;
          v31 = [(VUIMediaTagsView *)self vuiTraitCollection];
          v32 = [(VUIMediaTagsView *)self tagsViewLayout];
          [v27 scaleContentSizeValue:v31 forTraitCollection:objc_msgSend(v32 maximumContentSizeCategory:{"badgeMaxContentSizeCategory"), v30}];
          v34 = v33;

          v35 = [v15 image];
          [v35 size];
          v36 = 0.0;
          if (v37 > 0.0)
          {
            [v35 size];
            if (v38 > 0.0)
            {
              [v35 size];
              v40 = v39;
              [v35 size];
              v36 = v40 / v41;
            }
          }

          v22 = v3[2](v3, v15, v34, v36);
          v23 = v42;
          v24 = v43;
          v25 = v44;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v3[2](v3, v15, 0.0, 0.0);
            v23 = v45;
            v24 = v46;
            v25 = v47;
            v48 = [(VUIMediaTagsView *)self tagsViewLayout];
            [v48 textBadgeMargin];
            v17 = v49;
          }

          else
          {
            v17 = 0.0;
            v25 = v6;
            v24 = v7;
            v23 = v5;
            v22 = v59;
            if (_os_feature_enabled_impl())
            {
              v50 = [v15 tag];
              if (v50 == 108)
              {
                v51 = [(VUIMediaTagsView *)self tagsViewLayout];
                [v51 badgeMargin];
LABEL_25:
                v17 = v52;
              }

              else
              {
                v17 = 5.0;
                if (v50 == 111)
                {
                  v51 = [(VUIMediaTagsView *)self tagsViewLayout];
                  [v51 entitlementCueMargin];
                  goto LABEL_25;
                }
              }

              v3[2](v3, v15, 0.0, 0.0);
              goto LABEL_10;
            }
          }
        }

LABEL_22:
        v73.origin.x = v22;
        v73.origin.y = v23;
        v73.size.width = v24;
        v73.size.height = v25;
        MaxX = CGRectGetMaxX(v73);
        v68[3] = v17 + v24 + v68[3];
        ++v14;
      }

      while (v13 != v14);
      v54 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
      v13 = v54;
    }

    while (v54);
    v8 = v17 + MaxX;
LABEL_29:

    v55 = [(VUIMediaTagsView *)self tagsViewLayout];
    [v55 groupMargin];
    v68[3] = v56 + v68[3];

    v4 = v58 + 1;
  }

  _Block_object_dispose(&v67, 8);
  return v8;
}

double __39__VUIMediaTagsView__totalSubviewsWidth__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) bounds];
  v5 = v4;
  v7 = v6;
  if ([v3 tag] == 110)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [*(a1 + 32) tagsViewLayout];
      [v8 badgeMaxHeight];
      v7 = v9;
      v5 = 0.0;
    }
  }

  [v3 vui_sizeThatFits:{v5, v7}];
  if (v11 == *MEMORY[0x1E695F060] && v10 == *(MEMORY[0x1E695F060] + 8))
  {
    v13 = MEMORY[0x1E695F058];
  }

  else
  {
    v13 = (*(*(a1 + 40) + 8) + 24);
  }

  v14 = *v13;

  return v14;
}

- (double)_rightMarginForView:(id)a3
{
  v4 = a3;
  v5 = [v4 tag];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [(VUIMediaTagsView *)self tagsViewLayout];
      [v15 badgeMargin];
      v9 = v16;

      if (v5 <= 108)
      {
        if (v5 == 101)
        {
          v17 = [(VUIMediaTagsView *)self tagsViewLayout];
          [v17 commonSenseMargin];
        }

        else
        {
          if (v5 != 102)
          {
            goto LABEL_25;
          }

          v17 = [(VUIMediaTagsView *)self tagsViewLayout];
          [v17 tomatoMeterMargin];
        }
      }

      else
      {
        switch(v5)
        {
          case 'm':
            v17 = [(VUIMediaTagsView *)self tagsViewLayout];
            [v17 immersiveMargin];
            break;
          case 'n':
            v17 = [(VUIMediaTagsView *)self tagsViewLayout];
            [v17 highMotionMargin];
            break;
          case 'o':
            v17 = [(VUIMediaTagsView *)self tagsViewLayout];
            [v17 entitlementCueMargin];
            break;
          default:
            goto LABEL_25;
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [(VUIMediaTagsView *)self tagsViewLayout];
        [v17 textBadgeMargin];
      }

      else
      {
        v9 = 0.0;
        if (v5 != 108)
        {
          goto LABEL_25;
        }

        v17 = [(VUIMediaTagsView *)self tagsViewLayout];
        [v17 badgeMargin];
      }
    }

    v9 = v18;

    goto LABEL_25;
  }

  v6 = [(VUIMediaTagsView *)self tagsViewLayout];
  v7 = [v6 textLayout];
  [v7 margin];
  v9 = v8;

  v10 = [(VUIMediaTagsView *)self tagsViewLayout];
  [v10 separatorMargin];
  v12 = v11;

  v13 = _os_feature_enabled_impl();
  if (v5 == 100)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if ((v14 & (v12 > 0.0)) != 0)
  {
    v9 = v12;
  }

LABEL_25:

  return v9;
}

- (void)_removeGenreLabelAndSeparator
{
  v3 = [(VUIMediaTagsView *)self subviews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(VUIMediaTagsView *)self subviews];
      v15 = [v6 objectAtIndexedSubscript:v5];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v15 labelName];
        v8 = [v7 isEqualToString:VUIMediaTagKeyGenre];

        if (v8)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        return;
      }
    }

    [(VUIMediaTagsView *)self totalSubviewsWidth];
    v10 = v9;
    [(VUIMediaTagsView *)self bounds];
    [v15 vui_sizeThatFits:{v11, v12}];
    v14 = v10 - v13;
    [v15 setHidden:1];
    [(VUIMediaTagsView *)self setTotalSubviewsWidth:v14];
  }
}

- (void)_addGenreLabelAndSeparator
{
  v3 = [(VUIMediaTagsView *)self subviews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(VUIMediaTagsView *)self subviews];
      v9 = [v6 objectAtIndexedSubscript:v5];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v9 labelName];
        v8 = [v7 isEqualToString:VUIMediaTagKeyGenre];

        if (v8)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        return;
      }
    }

    [v9 setHidden:0];
    [(VUIMediaTagsView *)self _totalSubviewsWidth];
    [(VUIMediaTagsView *)self setTotalSubviewsWidth:?];
  }
}

- (void)_adjustGenresLabelWidthIfNeeded
{
  v3 = [(VUIMediaTagsView *)self subviews];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(VUIMediaTagsView *)self subviews];
      v21 = [v6 objectAtIndexedSubscript:v5];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v21 labelName];
        v8 = [v7 isEqualToString:VUIMediaTagKeyGenres];

        if (v8)
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v21 = 0;
  }

  [(VUIMediaTagsView *)self bounds];
  v10 = v9;
  [(VUIMediaTagsView *)self totalSubviewsWidth];
  v12 = v21;
  if (v10 > 0.0 && v11 > v10)
  {
    if (v21)
    {
      [v21 vui_sizeThatFits:{1.79769313e308, 0.0}];
      v14 = v13;
      [(VUIMediaTagsView *)self totalSubviewsWidth];
      [v21 setMaxWidth:v14 - (v15 - v10)];
      [v21 vui_sizeThatFits:{1.79769313e308, 0.0}];
      v17 = v16;
      [(VUIMediaTagsView *)self totalSubviewsWidth];
      v19 = v17 + v18 - v14;
      [(VUIMediaTagsView *)self totalSubviewsWidth];
      v12 = v21;
      if (v19 != v20)
      {
        [(VUIMediaTagsView *)self setTotalSubviewsWidth:v19];
        [(VUIMediaTagsView *)self invalidateIntrinsicContentSize];
        v12 = v21;
      }
    }
  }
}

- (void)contrastSettingsDidChange
{
  v3 = [(VUIMediaTagsView *)self vuiTraitCollection];
  -[VUIMediaTagsView _updateImageAppearanceWithUserInterfaceStyle:](self, "_updateImageAppearanceWithUserInterfaceStyle:", [v3 vuiUserInterfaceStyle]);
}

- (void)transparencySettingsDidChange
{
  v3 = [(VUIMediaTagsView *)self vuiTraitCollection];
  -[VUIMediaTagsView _updateImageAppearanceWithUserInterfaceStyle:](self, "_updateImageAppearanceWithUserInterfaceStyle:", [v3 vuiUserInterfaceStyle]);
}

@end