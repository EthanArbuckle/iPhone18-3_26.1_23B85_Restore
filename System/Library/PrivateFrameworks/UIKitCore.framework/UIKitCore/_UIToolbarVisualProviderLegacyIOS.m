@interface _UIToolbarVisualProviderLegacyIOS
- (BOOL)toolbarIsSmall;
- (CGRect)backgroundFrame;
- (CGSize)defaultSizeForOrientation:(int64_t)a3;
- (double)_edgeMarginForBorderedItem:(BOOL)a3 isText:(BOOL)a4;
- (id)_currentCustomBackground;
- (id)_positionToolbarButtons:(id)a3 ignoringItem:(id)a4 resetFontScaleAdjustment:(BOOL)a5 actuallyRepositionButtons:(BOOL)a6;
- (id)_repositionedItemsFromItems:(id)a3 withBarButtonFrames:(id *)a4 withHitRects:(id *)a5 buttonIndexes:(id *)a6 textButtonIndexes:(id *)a7;
- (id)currentBackgroundView;
- (void)_createViewsForItems:(id)a3;
- (void)customViewChangedForButtonItem:(id)a3;
- (void)drawBackgroundViewInRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCustomBackgroundView:(id)a3;
- (void)updateBackgroundGroupName;
- (void)updateBarBackground;
- (void)updateBarBackgroundSize;
- (void)updateBarForStyle:(int64_t)a3;
- (void)updateItemsForNewFrame:(id)a3;
- (void)updateWithItems:(id)a3 fromOldItems:(id)a4 animate:(BOOL)a5;
@end

@implementation _UIToolbarVisualProviderLegacyIOS

- (void)_createViewsForItems:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 view];
        if (v10)
        {
LABEL_7:

          goto LABEL_12;
        }

        if (![v9 isSystemItem])
        {
          goto LABEL_11;
        }

        if ([v9 systemItem] == 5)
        {
          goto LABEL_7;
        }

        if ([v9 systemItem] != 6)
        {
LABEL_11:
          v11 = [v9 createViewForToolbar:self->super._toolbar];
          [v9 setView:v11];

          [v9 setIsMinibarView:{-[UIToolbar isMinibar](self->super._toolbar, "isMinibar")}];
        }

LABEL_12:
        v12 = [v9 view];

        if (v12)
        {
          toolbar = self->super._toolbar;
          v14 = [v9 view];
          [(UIView *)toolbar addSubview:v14];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }
}

- (void)updateItemsForNewFrame:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIToolbar *)self->super._toolbar isMinibar];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v11 view];
        if (v12 && ([v11 isCustomViewItem] & 1) == 0)
        {
          v19 = [v11 isMinibarView];

          if (v5 != v19)
          {
            v20 = [v11 view];
            v18 = [v20 superview];

            if (v18)
            {
              v21 = [v11 view];
              [v21 removeFromSuperview];

              v22 = [v11 createViewForToolbar:self->super._toolbar];
              [v11 setView:v22];

              [v11 setIsMinibarView:v5];
              v23 = [v11 view];
              [v18 addSubview:v23];
            }

            else
            {
              v24 = [v11 createViewForToolbar:self->super._toolbar];
              [v11 setView:v24];

              [v11 setIsMinibarView:v5];
              v18 = 0;
            }

            goto LABEL_17;
          }
        }

        else
        {
        }

        v13 = [v11 view];
        if (v13)
        {
          v14 = v13;
          v15 = [v11 isCustomViewItem];

          if (v15)
          {
            v16 = [v11 view];
            v17 = objc_opt_respondsToSelector();

            if (v17)
            {
              v18 = [v11 view];
              [v18 updateForMiniBarState:v5];
LABEL_17:

              continue;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }
}

- (id)_repositionedItemsFromItems:(id)a3 withBarButtonFrames:(id *)a4 withHitRects:(id *)a5 buttonIndexes:(id *)a6 textButtonIndexes:(id *)a7
{
  v251 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [MEMORY[0x1E695DF70] array];
  v12 = [MEMORY[0x1E695DF70] array];
  v206 = [MEMORY[0x1E695DF70] array];
  v223 = self;
  [(UIView *)self->super._toolbar bounds];
  v211 = v13;
  v224 = v14;
  v15 = [v10 count];
  if (!v15)
  {
    v197 = [MEMORY[0x1E696AAA8] currentHandler];
    [v197 handleFailureInMethod:a2 object:self file:@"_UIToolbarVisualProviderLegacyIOS.m" lineNumber:141 description:@"Can't get button frames when there are no items"];
  }

  v198 = a4;
  v214 = v12;
  v204 = [MEMORY[0x1E696AD50] indexSet];
  v209 = [MEMORY[0x1E696AD50] indexSet];
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v240 = 0u;
  obj = v10;
  v16 = [obj countByEnumeratingWithState:&v237 objects:v250 count:16];
  if (v16)
  {
    v17 = v16;
    v215 = v15;
    v218 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *v238;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v238 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v237 + 1) + 8 * i);
        if ([v23 isSystemItem] && objc_msgSend(v23, "systemItem") == 5)
        {
          ++v20;
        }

        else if ([v23 _flexible])
        {
          v24 = MEMORY[0x1E696B098];
          v25 = [v23 view];
          [v25 frame];
          v26 = [v24 valueWithCGRect:?];
          [v11 addObject:v26];

          [v209 addIndex:v18];
          ++v19;
        }

        else if ([v23 isSystemItem] && objc_msgSend(v23, "systemItem") == 6)
        {
          ++v218;
        }

        else
        {
          v27 = [v23 view];
          [v27 frame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;
          [v23 width];
          if (v36 <= 0.0 && ([v23 _minimumWidth], v37 <= 0.0) && (objc_msgSend(v23, "_maximumWidth"), v38 <= 0.0))
          {
            if (([v23 isCustomViewItem] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v44 = v33;
            }

            else
            {
              [v204 addIndex:v18];
              [v27 sizeThatFits:{v33, v35}];
              UICeilToViewScale(v223->super._toolbar);
              v44 = v47;
            }
          }

          else
          {
            [v23 _minimumWidth];
            v40 = v39;
            [v23 _maximumWidth];
            v42 = v41;
            [v23 width];
            v44 = v43;
            if (v43 <= 0.0)
            {
              v45 = v40 > 0.0 && v33 < v40;
              v44 = v40;
              if (!v45)
              {
                if (v33 <= v42 || v42 <= 0.0)
                {
                  v44 = v33;
                }

                else
                {
                  v44 = v42;
                }
              }
            }
          }

          [v209 addIndex:v18];
          v48 = [MEMORY[0x1E696B098] valueWithCGRect:{v29, v31, v44, v35}];
          [v11 addObject:v48];
        }

        ++v18;
      }

      v17 = [obj countByEnumeratingWithState:&v237 objects:v250 count:16];
    }

    while (v17);
    v15 = v215;
    v49 = (v218 + 2);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v49 = 2;
  }

  v50 = [obj firstObject];
  v203 = [v50 view];

  v51 = [obj lastObject];
  v202 = [v51 view];

  v52 = [obj firstObject];
  v53 = [v52 view];
  v54 = (objc_opt_respondsToSelector() & 1) != 0 && ([v53 _isBordered] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v52, "style") == 1;

  v55 = [obj lastObject];
  v56 = [v55 view];
  v57 = (objc_opt_respondsToSelector() & 1) != 0 && ([v56 _isBordered] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || objc_msgSend(v55, "style") == 1;

  v58 = [v204 containsIndex:0];
  v59 = [v204 containsIndex:v15 - 1];
  [(_UIToolbarVisualProviderLegacyIOS *)v223 _edgeMarginForBorderedItem:v54 isText:v58];
  v61 = v60;
  [(_UIToolbarVisualProviderLegacyIOS *)v223 _edgeMarginForBorderedItem:v57 isText:v59];
  v63 = v62;
  v64 = 0.0;
  v65 = 0.0;
  if (v203)
  {
    [v203 alignmentRectInsets];
    v65 = v66;
  }

  if (v202)
  {
    [v202 alignmentRectInsets];
    v64 = v67;
  }

  v213 = 0;
  if (v20 == 2 && !v19)
  {
    v213 = [v204 count] + v49 != v15;
  }

  v68 = v61 - v65;
  v249 = 0.0;
  v248 = 0.0;
  v247 = 0;
  v246 = 0;
  v245 = 0.0;
  v244 = 0.0;
  if (v20 + v19)
  {
    v208 = v20 + v19;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v219 = obj;
    v69 = [v219 countByEnumeratingWithState:&v233 objects:v243 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = 0;
      v216 = 0;
      v72 = 0;
      v73 = *v234;
      v74 = 0.0;
      do
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v234 != v73)
          {
            objc_enumerationMutation(v219);
          }

          v76 = *(*(&v233 + 1) + 8 * j);
          if (v213 && [*(*(&v233 + 1) + 8 * j) isSystemItem] && objc_msgSend(v76, "systemItem") == 5)
          {
            *(&v248 + v216) = v74;
            *(&v246 + v216++) = v72;
            v74 = 0.0;
            v72 = 0;
          }

          else if (![v76 isSystemItem] || objc_msgSend(v76, "systemItem") != 5)
          {
            if ([v76 isSystemItem] && ((objc_msgSend(v76, "width"), v77 > 0.0) || objc_msgSend(v76, "systemItem") == 6))
            {
              [v76 width];
              v74 = v74 + v78;
              if ([v76 systemItem] != 6)
              {
                ++v71;
                ++v72;
              }
            }

            else
            {
              v79 = [v76 view];
              v80 = 0.0;
              if (objc_opt_respondsToSelector())
              {
                v81 = 0.0;
                if ([v79 _canGetPadding])
                {
                  [v79 _paddingForLeft:1];
                  v81 = v82;
                  [v79 _paddingForLeft:0];
                  v80 = v83;
                }
              }

              else
              {
                v81 = 0.0;
              }

              v84 = [v11 objectAtIndexedSubscript:v71];
              [v84 CGRectValue];
              v86 = v85;
              v88 = v87;

              if ([v76 _flexible])
              {
                v89 = [v79 isMemberOfClass:objc_opt_class()];
                v90 = 0.0;
                if ((v89 & 1) == 0)
                {
                  [v79 sizeThatFits:{v86, v88}];
                }
              }

              else
              {
                v90 = v86;
              }

              v74 = v74 + v90 - v81 - v80;
              ++v72;
              ++v71;
            }
          }
        }

        v70 = [v219 countByEnumeratingWithState:&v233 objects:v243 count:16];
      }

      while (v70);
    }

    else
    {
      v72 = 0;
      v74 = 0.0;
    }

    v92 = v63 - v64;

    if (v72 <= 1)
    {
      v93 = 1;
    }

    else
    {
      v93 = v72;
    }

    v94 = v93 - 1;
    if (v213)
    {
      v95 = v249;
      v96 = v247;
      v97 = (v211 - v249 + v247 * -10.0) * 0.5;
      v98 = floor(v97);
      v99 = ceil(v97);
      v100 = 0.0;
      v210 = 0.0;
      v91 = v214;
      if (v247 >= 1)
      {
        UICeilToViewScale(v223->super._toolbar);
      }

      v101 = v98 - (v68 + v248 + v246 * 10.0 - v100);
      v102 = v99 - (v92 + v74 + v94 * 10.0 + v100);
      v244 = v101;
      v245 = v102;
      if (v101 >= 0.0 && v102 >= 0.0)
      {
        v213 = 1;
        goto LABEL_102;
      }

      v103 = fmax((v246 + v96) + -1.0, 0.0);
      if (v74 > 0.0)
      {
        v94 += v246 + v96;
      }

      else
      {
        v94 = v103;
      }

      v74 = v74 + v95 + v248;
    }

    else
    {
      v91 = v214;
    }

    v213 = 0;
    v210 = (v211 - v74 - (v68 + v92) + v94 * -10.0) / v208;
    goto LABEL_102;
  }

  v210 = 0.0;
  v91 = v214;
LABEL_102:
  _UIControlMostlyInsideEdgeInsets();
  v105 = v104;
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v207 = obj;
  v106 = [v207 countByEnumeratingWithState:&v229 objects:v242 count:16];
  if (!v106)
  {
    v108 = 0;
    goto LABEL_161;
  }

  v107 = v106;
  v108 = 0;
  v109 = 0;
  v205 = 0;
  v110 = *MEMORY[0x1E695F058];
  v111 = *(MEMORY[0x1E695F058] + 16);
  v212 = -v105;
  v112 = *v230;
  do
  {
    for (k = 0; k != v107; ++k)
    {
      if (*v230 != v112)
      {
        objc_enumerationMutation(v207);
      }

      v114 = *(*(&v229 + 1) + 8 * k);
      if ([v114 isSystemItem] && objc_msgSend(v114, "systemItem") == 5)
      {
        if (v213)
        {
          v68 = v68 + *(&v244 + v205++);
        }

        else
        {
          v68 = v210 + v68;
        }

        goto LABEL_156;
      }

      if ([v114 isSystemItem] && objc_msgSend(v114, "systemItem") == 6)
      {
        [v114 width];
        v68 = v68 + v115;
LABEL_156:
        v91 = v214;
        continue;
      }

      v116 = [v114 view];
      v117 = [v11 objectAtIndexedSubscript:v109];
      [v117 CGRectValue];
      v119 = v118;
      v121 = v120;

      if ([v114 _flexible])
      {
        v122 = 0.0;
        if (([v116 isMemberOfClass:objc_opt_class()] & 1) == 0)
        {
          [v116 sizeThatFits:{v119, v121}];
          v122 = v123;
        }
      }

      else
      {
        v122 = v119;
      }

      v124 = 0.0;
      if (objc_opt_respondsToSelector())
      {
        v125 = [v116 _canGetPadding];
        v126 = 0.0;
        if (v125)
        {
          [v116 _paddingForLeft:{1, 0.0}];
          v124 = v127;
          [v116 _paddingForLeft:0];
        }
      }

      else
      {
        v126 = 0.0;
      }

      v220 = v126;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v116 _useBarHeight])
      {
        v121 = v224;
      }

      UIRoundToViewScale(v223->super._toolbar);
      v129 = v128;
      v130 = [(UIToolbar *)v223->super._toolbar barPosition];
      v132 = v130 != 1 && v130 != 4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v116 _backgroundVerticalPositionAdjustmentForBarMetrics:{-[UIToolbar isMinibar](v223->super._toolbar, "isMinibar")}];
        v129 = v129 + v133;
      }

      if (objc_opt_respondsToSelector())
      {
        [v116 _setInTopBar:v132];
      }

      [v114 width];
      if (v134 <= 0.0)
      {
        [v114 _minimumWidth];
        if (v136 <= 0.0 || ([v114 _minimumWidth], v122 >= v137))
        {
          [v114 _maximumWidth];
          if (v138 <= 0.0)
          {
            goto LABEL_144;
          }

          [v114 _maximumWidth];
          if (v122 <= v139)
          {
            goto LABEL_144;
          }

          [v114 _maximumWidth];
        }

        else
        {
          [v114 _minimumWidth];
        }
      }

      else
      {
        [v114 width];
      }

      v122 = v135;
LABEL_144:
      v140 = v68 - v124;
      v141 = round(v68 - v124);
      if ([v114 _flexible])
      {
        v122 = v210 + v122;
      }

      [v116 frame];
      v256.origin.x = v142;
      v256.origin.y = v143;
      v256.size.width = v144;
      v256.size.height = v145;
      v253.origin.x = v141;
      v253.origin.y = v129;
      v253.size.width = v122;
      v253.size.height = v121;
      if (!CGRectEqualToRect(v253, v256))
      {
        [v206 addObject:v114];
      }

      obja = v121;
      v217 = v141;
      if (v108)
      {
        v146 = fmin((v141 - (v110 + v111)) * 0.5, v212);
        v91 = v214;
        v147 = [v214 lastObject];
        [v147 CGRectValue];
        v149 = v148;
        v151 = v150;
        v153 = v152;
        v154 = v140;
        v155 = v129;
        v157 = v156;

        [v214 removeLastObject];
        v158 = v157;
        v129 = v155;
        v140 = v154;
        v159 = [MEMORY[0x1E696B098] valueWithCGRect:{v149, v151, v146 + v153, v158}];
        [v214 addObject:v159];
      }

      else
      {
        v146 = fmin(v141, v212);
        v91 = v214;
      }

      v160 = v122 + v146;
      if (v109 == [v11 count] - 1)
      {
        [(UIView *)v223->super._toolbar bounds];
        MaxX = CGRectGetMaxX(v254);
        v162 = v217;
        v255.origin.x = v217;
        v255.origin.y = v129;
        v255.size.width = v122;
        v163 = v129;
        v164 = obja;
        v255.size.height = obja;
        v160 = v160 + fmin(MaxX - CGRectGetMaxX(v255), v212);
        v165 = v220;
      }

      else
      {
        v163 = v129;
        v165 = v220;
        v164 = obja;
        v162 = v217;
      }

      v68 = v140 + v122 - v165 + 10.0;
      v166 = [MEMORY[0x1E696B098] valueWithCGRect:{-v146, -v163, v160, v224}];
      [v91 addObject:v166];

      v167 = [MEMORY[0x1E696B098] valueWithCGRect:{v162, v163, v122, v164}];
      [v11 replaceObjectAtIndex:v109 withObject:v167];

      v168 = v116;
      ++v109;

      v108 = v168;
      v110 = v162;
      v111 = v122;
    }

    v107 = [v207 countByEnumeratingWithState:&v229 objects:v242 count:16];
  }

  while (v107);
LABEL_161:

  v169 = a5;
  if (v198)
  {
    if ((*(&v223->super._toolbar->super._viewFlags + 18) & 0x40) != 0 && v11 && [v11 count])
    {
      [(UIView *)v223->super._toolbar bounds];
      _UIRTLConvertAllLTRFramesToRTL(v11, v170, v171, v172, v173);
    }

    v174 = v11;
    *v198 = v11;
  }

  if (a7)
  {
    *a7 = v204;
  }

  if (a6)
  {
    *a6 = v209;
  }

  if (a5)
  {
    if ((*(&v223->super._toolbar->super._viewFlags + 18) & 0x40) != 0 && v91 && [v91 count])
    {
      v225 = 0u;
      v226 = 0u;
      v227 = 0u;
      v228 = 0u;
      v175 = [v91 copy];
      v176 = [v175 countByEnumeratingWithState:&v225 objects:v241 count:16];
      if (v176)
      {
        v177 = v176;
        v178 = 0;
        v179 = *v226;
        do
        {
          for (m = 0; m != v177; ++m)
          {
            if (*v226 != v179)
            {
              objc_enumerationMutation(v175);
            }

            [*(*(&v225 + 1) + 8 * m) CGRectValue];
            v182 = v181;
            v184 = v183;
            v186 = v185;
            v188 = v187;
            v189 = [v11 objectAtIndexedSubscript:v178];
            [v189 CGRectValue];
            v191 = v182 + v186 - v190;

            v192 = -v191;
            if (v191 < -0.0)
            {
              v192 = 0.0;
            }

            v193 = [MEMORY[0x1E696B098] valueWithCGRect:{v192, v184, v186, v188}];
            [v91 replaceObjectAtIndex:v178 withObject:v193];

            ++v178;
          }

          v177 = [v175 countByEnumeratingWithState:&v225 objects:v241 count:16];
        }

        while (v177);
      }

      v169 = a5;
    }

    v194 = v91;
    *v169 = v91;
  }

  v195 = v206;

  return v195;
}

- (void)layoutSubviews
{
  [(_UIToolbarVisualProviderLegacyIOS *)self updateBarBackground];
  v3 = [(UIView *)self->super._toolbar subviews];
  v4 = +[UIDevice currentDevice];
  _UINavigationButtonUpdateAccessibilityBackgrounds(v3, [v4 _graphicsQuality] == 100, 0);

  [(_UIToolbarVisualProviderLegacyIOS *)self positionToolbarButtonsAndResetFontScaleAdjustment:0];
}

- (id)_positionToolbarButtons:(id)a3 ignoringItem:(id)a4 resetFontScaleAdjustment:(BOOL)a5 actuallyRepositionButtons:(BOOL)a6
{
  v131 = a6;
  v6 = a5;
  v187 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v9 = [(UIToolbar *)self->super._toolbar items];
  }

  if (![v9 count])
  {
    v25 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_115;
  }

  if (v6)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v11 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v172 objects:v185 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v173;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v173 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v172 + 1) + 8 * i) view];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v17 _info];
            [v18 _setFontScaleAdjustment:1.0];

            if ([v17 _wantsAccessibilityButtonShapes])
            {
              v19 = [v17 _info];
              [v19 sizeToFit];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v172 objects:v185 count:16];
      }

      while (v14);
    }

    v9 = v11;
  }

  v171 = 0;
  v170 = 0;
  v169 = 0;
  v168 = 0;
  v129 = [(_UIToolbarVisualProviderLegacyIOS *)self _repositionedItemsFromItems:v9 withBarButtonFrames:&v171 withHitRects:&v170 buttonIndexes:&v169 textButtonIndexes:&v168];
  v20 = v171;
  v132 = v170;
  v127 = v169;
  v137 = v168;
  v21 = [v137 count];
  v125 = v21 != 0;
  if (v21)
  {
    v22 = *(&self->super._toolbar->super._viewFlags + 2);
    v23 = v20;
    v24 = v23;
    if ((v22 & 0x400000) != 0)
    {
      [v23 reverseObjectEnumerator];
    }

    else
    {
      [v23 objectEnumerator];
    }
    v26 = ;
    v27 = [v26 nextObject];
    [v27 CGRectValue];
    MinX = CGRectGetMinX(v189);

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v29 = v26;
    v30 = [v29 countByEnumeratingWithState:&v176 objects:v186 count:16];
    if (v30)
    {
      v31 = v30;
      y = *(MEMORY[0x1E695F058] + 8);
      width = *(MEMORY[0x1E695F058] + 16);
      height = *(MEMORY[0x1E695F058] + 24);
      x = MinX + -10.0;
      v36 = *v177;
      while (2)
      {
        v37 = 0;
        v38 = height;
        v39 = width;
        v40 = y;
        v41 = x;
        do
        {
          rect = v38;
          if (*v177 != v36)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v176 + 1) + 8 * v37) CGRectValue];
          x = v190.origin.x;
          y = v190.origin.y;
          width = v190.size.width;
          height = v190.size.height;
          v42 = CGRectGetMinX(v190) + -10.0;
          v191.origin.x = v41;
          v191.origin.y = v40;
          v191.size.width = v39;
          v191.size.height = rect;
          if (v42 < CGRectGetMaxX(v191))
          {

            [(UIView *)self->super._toolbar bounds];
            v43 = !CGRectIsEmpty(v192);
            goto LABEL_32;
          }

          ++v37;
          v38 = height;
          v39 = width;
          v40 = y;
          v41 = x;
        }

        while (v31 != v37);
        v31 = [v29 countByEnumeratingWithState:&v176 objects:v186 count:{16, height}];
        if (v31)
        {
          continue;
        }

        break;
      }
    }
  }

  v43 = 0;
LABEL_32:
  [(UIView *)self->super._toolbar bounds];
  v45 = v44;
  v128 = v9;
  v124 = v10;
  if (v44 > 0.0)
  {
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v46 = v20;
    v47 = v20;
    v48 = [v47 countByEnumeratingWithState:&v164 objects:v184 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = 0;
      v51 = *v165;
      do
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v165 != v51)
          {
            objc_enumerationMutation(v47);
          }

          [*(*(&v164 + 1) + 8 * j) CGRectValue];
          MaxX = CGRectGetMaxX(v193);
          [(UIView *)self->super._toolbar bounds];
          if (MaxX > v54)
          {
            v43 |= [v137 containsIndex:v50];
          }

          ++v50;
        }

        v49 = [v47 countByEnumeratingWithState:&v164 objects:v184 count:16];
      }

      while (v49);
    }

    v20 = v46;
    v9 = v128;
  }

  if (v43)
  {
    [v9 objectsAtIndexes:v137];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    recta = v163 = 0u;
    v55 = [recta countByEnumeratingWithState:&v160 objects:v183 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v161;
      v58 = *off_1E70EC918;
      while (2)
      {
        v59 = v20;
        for (k = 0; k != v56; ++k)
        {
          if (*v161 != v57)
          {
            objc_enumerationMutation(recta);
          }

          v61 = *(*(&v160 + 1) + 8 * k);
          v62 = [v61 _appearanceStorage];
          v63 = [v61 view];
          v64 = [v63 _info];
          v65 = [v64 _appearanceStorage];

          v66 = [v62 textAttributeForKey:v58 state:0];
          if (v66)
          {

LABEL_59:
            v68 = 0;
            v10 = v124;
            v20 = v59;
            v9 = v128;
            goto LABEL_60;
          }

          v67 = [v65 textAttributeForKey:v58 state:0];

          if (v67)
          {
            goto LABEL_59;
          }
        }

        v56 = [recta countByEnumeratingWithState:&v160 objects:v183 count:16];
        v68 = 1;
        v10 = v124;
        v20 = v59;
        v9 = v128;
        if (v56)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v68 = 1;
    }

LABEL_60:
    v69 = recta;

    goto LABEL_61;
  }

  v68 = 0;
  v69 = 0;
  if (!v21)
  {
LABEL_61:
    v70 = v131;
    goto LABEL_62;
  }

  v70 = v131;
  if (v131)
  {
    v69 = [v9 objectsAtIndexes:v137];
    v68 = 0;
  }

LABEL_62:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __125___UIToolbarVisualProviderLegacyIOS__positionToolbarButtons_ignoringItem_resetFontScaleAdjustment_actuallyRepositionButtons___block_invoke;
  aBlock[3] = &unk_1E70F8A10;
  v158 = v70;
  v159 = v125;
  v126 = v69;
  v157 = v126;
  v71 = _Block_copy(aBlock);
  v123 = v71;
  if (v68)
  {
    if ((*(&self->super._toolbar->super._viewFlags + 18) & 0x40) != 0)
    {
      v72 = [v20 lastObject];
      [v20 firstObject];
    }

    else
    {
      v72 = [v20 firstObject];
      [v20 lastObject];
    }
    v122 = ;
    [v122 CGRectValue];
    v74 = CGRectGetMaxX(v194);
    if (v74 <= v45)
    {
      v75 = v74;
    }

    else
    {
      v75 = v45;
    }

    rectb = v72;
    [v72 CGRectValue];
    v76 = CGRectGetMinX(v195);
    v121 = [v20 count];
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v77 = v9;
    v78 = [v77 countByEnumeratingWithState:&v152 objects:v182 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = v20;
      v81 = 0;
      v82 = 0;
      v83 = *v153;
      v84 = 0.0;
      v85 = 0.0;
      do
      {
        for (m = 0; m != v79; ++m)
        {
          if (*v153 != v83)
          {
            objc_enumerationMutation(v77);
          }

          v87 = *(*(&v152 + 1) + 8 * m);
          if (![v87 isSystemItem] || objc_msgSend(v87, "systemItem") != 5 && objc_msgSend(v87, "systemItem") != 6)
          {
            v88 = [v80 objectAtIndexedSubscript:v81];
            [v88 CGRectValue];
            v90 = v89;

            if ([v137 containsIndex:v82])
            {
              v91 = [v87 view];
              v92 = [v91 _isBorderedOtherThanAccessibility];

              if ((v92 & 1) == 0)
              {
                v85 = v85 + v90;
              }
            }

            v84 = v84 + v90;
            ++v81;
          }

          ++v82;
        }

        v79 = [v77 countByEnumeratingWithState:&v152 objects:v182 count:16];
      }

      while (v79);
    }

    else
    {
      v80 = v20;
      v84 = 0.0;
      v85 = 0.0;
    }

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v93 = v126;
    v94 = [v93 countByEnumeratingWithState:&v148 objects:v181 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = (v75 - v76 + (v121 - 1) * -10.0 - (v84 - v85)) / v85;
      v97 = *v149;
      do
      {
        for (n = 0; n != v95; ++n)
        {
          if (*v149 != v97)
          {
            objc_enumerationMutation(v93);
          }

          v99 = *(*(&v148 + 1) + 8 * n);
          v100 = [v99 view];
          if (([v100 _isBorderedOtherThanAccessibility] & 1) == 0)
          {
            v101 = [v99 view];
            v102 = [v101 _info];
            [v102 _fontScaleAdjustment];
            v104 = v103;

            v105 = v104 == 0.0 ? 1.0 : v104;
            v106 = fmin(fmax(v96 * v105, 0.5), 1.0);
            v107 = [v100 _info];
            [v107 _setFontScaleAdjustment:v106];

            if ([v100 _wantsAccessibilityButtonShapes])
            {
              v108 = [v100 _info];
              [v108 sizeToFit];
            }
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v148 objects:v181 count:16];
      }

      while (v95);
    }

    v73 = v123;
    v123[2](v123);
    v146 = v132;
    v147 = v80;
    v25 = [(_UIToolbarVisualProviderLegacyIOS *)self _repositionedItemsFromItems:v77 withBarButtonFrames:&v147 withHitRects:&v146 buttonIndexes:0 textButtonIndexes:0];
    v20 = v147;

    v109 = v146;
    v132 = v109;
    v10 = v124;
    v9 = v128;
    if (!v131)
    {
      goto LABEL_114;
    }

    goto LABEL_101;
  }

  v73 = v71;
  v25 = v129;
  if (v70)
  {
LABEL_101:
    v110 = v20;
    v130 = v25;
    v73[2](v73);
    [v9 objectsAtIndexes:v127];
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    rectc = v145 = 0u;
    v111 = [rectc countByEnumeratingWithState:&v142 objects:v180 count:16];
    if (v111)
    {
      v112 = v111;
      v113 = 0;
      v114 = *v143;
      do
      {
        for (ii = 0; ii != v112; ++ii)
        {
          if (*v143 != v114)
          {
            objc_enumerationMutation(rectc);
          }

          v116 = [*(*(&v142 + 1) + 8 * ii) view];
          [v116 alpha];
          if (v117 == 0.0)
          {
            v138[0] = MEMORY[0x1E69E9820];
            v138[1] = 3221225472;
            v138[2] = __125___UIToolbarVisualProviderLegacyIOS__positionToolbarButtons_ignoringItem_resetFontScaleAdjustment_actuallyRepositionButtons___block_invoke_2;
            v138[3] = &unk_1E70F36D0;
            v139 = v116;
            v140 = v110;
            v141 = v113;
            [UIView performWithoutAnimation:v138];

            v118 = v139;
          }

          else
          {
            v118 = [v110 objectAtIndexedSubscript:v113];
            [v118 CGRectValue];
            [v116 setFrame:?];
          }

          if (objc_opt_respondsToSelector())
          {
            v119 = [v132 objectAtIndexedSubscript:v113];
            [v119 CGRectValue];
            [v116 _setButtonBarHitRect:?];
          }

          ++v113;
        }

        v112 = [rectc countByEnumeratingWithState:&v142 objects:v180 count:16];
      }

      while (v112);
    }

    v9 = v128;
    v25 = v130;
    v73 = v123;
    v10 = v124;
    v20 = v110;
  }

LABEL_114:

LABEL_115:

  return v25;
}

- (void)updateWithItems:(id)a3 fromOldItems:(id)a4 animate:(BOOL)a5
{
  v37 = a5;
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [(_UIToolbarVisualProviderLegacyIOS *)self _createViewsForItems:v7];
  v9 = [v8 mutableCopy];
  v42 = self;
  v38 = [(_UIToolbarVisualProviderLegacyIOS *)self _positionToolbarButtons:0 ignoringItem:0 resetFontScaleAdjustment:0 actuallyRepositionButtons:0];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v55;
    do
    {
      v13 = 0;
      do
      {
        if (*v55 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v54 + 1) + 8 * v13);
        v15 = [v14 view];
        if (v15)
        {
          v16 = v15;
          if (!v9 || [v9 indexOfObjectIdenticalTo:v14] == 0x7FFFFFFFFFFFFFFFLL)
          {

LABEL_10:
            v17 = [v14 view];
            [v17 setAlpha:0.0];

            goto LABEL_11;
          }

          v18 = [v38 indexOfObjectIdenticalTo:v14];

          if (v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_10;
          }
        }

LABEL_11:
        ++v13;
      }

      while (v11 != v13);
      v19 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
      v11 = v19;
    }

    while (v19);
  }

  [v9 removeObjectsInArray:obj];
  v39 = [MEMORY[0x1E695DF70] array];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v40 = v8;
  v20 = [v40 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v40);
        }

        v24 = *(*(&v50 + 1) + 8 * i);
        v25 = [v24 view];
        v26 = [v25 superview];
        if (v26)
        {
          v27 = v26;
          v28 = [v24 view];
          v29 = [v28 superview];
          toolbar = v42->super._toolbar;

          if (v29 != toolbar)
          {
            [v39 addObject:v24];
          }
        }

        else
        {
        }
      }

      v21 = [v40 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v21);
  }

  [v9 removeObjectsInArray:v39];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___UIToolbarVisualProviderLegacyIOS_updateWithItems_fromOldItems_animate___block_invoke;
  aBlock[3] = &unk_1E70F6228;
  v31 = v9;
  v47 = v31;
  v48 = v42;
  v32 = obj;
  v49 = v32;
  v33 = _Block_copy(aBlock);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __74___UIToolbarVisualProviderLegacyIOS_updateWithItems_fromOldItems_animate___block_invoke_2;
  v43[3] = &unk_1E70F3C60;
  v34 = v31;
  v44 = v34;
  v35 = v32;
  v45 = v35;
  v36 = _Block_copy(v43);
  if (v37)
  {
    [UIView animateWithDuration:v33 animations:v36 completion:0.2];
  }

  else
  {
    v33[2](v33);
    v36[2](v36, 1);
  }
}

- (void)customViewChangedForButtonItem:(id)a3
{
  v12 = a3;
  v4 = [v12 customView];
  if (v4)
  {
    v5 = [(UIToolbar *)self->super._toolbar items];
    v6 = [v5 indexOfObject:v12];

    v7 = [(UIView *)self->super._toolbar subviews];
    v8 = [v7 count];

    if (v6 >= v8)
    {
      [(UIView *)self->super._toolbar addSubview:v4];
    }

    else
    {
      v9 = [(UIView *)self->_backgroundView superview];
      toolbar = self->super._toolbar;

      if (v9 == toolbar)
      {
        v11 = v6 + 1;
      }

      else
      {
        v11 = v6;
      }

      [(UIView *)self->super._toolbar insertSubview:v4 atIndex:v11];
    }
  }
}

- (void)setCustomBackgroundView:(id)a3
{
  objc_storeStrong(&self->_customBackgroundView, a3);
  v5 = a3;
  [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:v5];
}

- (id)currentBackgroundView
{
  customBackgroundView = self->_customBackgroundView;
  if (!customBackgroundView)
  {
    customBackgroundView = self->_backgroundView;
  }

  return customBackgroundView;
}

- (CGRect)backgroundFrame
{
  [(UIView *)self->_backgroundView frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)updateBarBackgroundSize
{
  [(UIView *)self->super._toolbar bounds];
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setBounds:?];
}

- (void)updateBarForStyle:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(UIToolbar *)self->super._toolbar barTintColor];
  if (!v5)
  {
    v6 = +[UIDevice currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(UIToolbar *)self->super._toolbar items];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if (v7 == 1 || ([*(*(&v18 + 1) + 8 * i) image], (v14 = objc_claimAutoreleasedReturnValue()) != 0) && (v15 = v14, v16 = objc_msgSend(v13, "_imageHasEffects"), v15, (v16 & 1) == 0))
          {
            [v13 _updateView];
          }

          v17 = [v13 view];
          if (objc_opt_respondsToSelector())
          {
            [v17 setBarStyle:a3];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    v5 = 0;
  }
}

- (void)updateBarBackground
{
  v3 = [(UIView *)self->super._toolbar _canDrawContent];
  backgroundView = self->_backgroundView;
  if (v3)
  {
    v5 = self->_backgroundView;

    [(UIView *)v5 removeFromSuperview];
    return;
  }

  if (!backgroundView)
  {
    v6 = [_UIBarBackground alloc];
    [(UIView *)self->super._toolbar bounds];
    v7 = [(_UIBarBackground *)v6 initWithFrame:?];
    v8 = self->_backgroundView;
    self->_backgroundView = v7;

    v9 = objc_alloc_init(_UIBarBackgroundLayoutLegacy);
    backgroundViewLayout = self->_backgroundViewLayout;
    self->_backgroundViewLayout = v9;

    [(_UIBarBackground *)self->_backgroundView setLayout:self->_backgroundViewLayout];
    backgroundView = self->_backgroundView;
  }

  [(UIView *)self->super._toolbar insertSubview:backgroundView atIndex:0];
  [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:self->_customBackgroundView];
  [(_UIBarBackgroundLayout *)self->_backgroundViewLayout setDisableTinting:[(UIToolbar *)self->super._toolbar _disableBlurTinting]];
  [(UIView *)self->super._toolbar bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(UIToolbar *)self->super._toolbar barPosition];
  v20 = v19 == 3;
  v21 = v19 & 0xFFFFFFFFFFFFFFFELL;
  [(_UIBarBackground *)self->_backgroundView setTopAligned:(v19 & 0xFFFFFFFFFFFFFFFELL) == 2];
  if (!self->_customBackgroundView)
  {
    v26 = [(UIView *)self->super._toolbar traitCollection];
    -[_UIBarBackgroundLayout setInterfaceIdiom:](self->_backgroundViewLayout, "setInterfaceIdiom:", [v26 userInterfaceIdiom]);

    v27 = [(UIView *)self->super._toolbar traitCollection];
    -[_UIBarBackgroundLayout setInterfaceStyle:](self->_backgroundViewLayout, "setInterfaceStyle:", [v27 userInterfaceStyle]);

    v64 = [(UIToolbar *)self->super._toolbar isTranslucent];
    v28 = [(UIToolbar *)self->super._toolbar barTintColor];
    v29 = [(UIToolbar *)self->super._toolbar barStyle];
    if (v29 == 4)
    {
      v30 = [(UIToolbar *)self->super._toolbar _hidesShadow];
    }

    else
    {
      v31 = [(_UIToolbarVisualProviderLegacyIOS *)self _currentCustomBackground];
      v32 = [(UIToolbar *)self->super._toolbar _hidesShadow];
      v30 = v32;
      if (v31)
      {
        HIDWORD(v62) = v32;
        [v31 size];
        v34 = v33;
        [v31 capInsets];
        v37 = 0;
        if (v19 == 3 && v35 == 0.0 && v36 == 0.0)
        {
          v38 = [(UIView *)self->super._toolbar window];
          __UIStatusBarManagerForWindow(v38);
          v39 = v28;
          v41 = v40 = v20;
          LODWORD(v62) = [v41 isStatusBarHidden];

          v20 = v40;
          v28 = v39;

          v37 = (v34 == v18) & ~v62;
        }

        v65 = 0;
        [v31 _isInvisibleAndGetIsTranslucent:{&v65, v62}];
        if (v64)
        {
          [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureImage:v31 forceTranslucent:(v65 & 1) == 0];
        }

        else
        {
          v53 = self->_backgroundViewLayout;
          if (v28)
          {
            [(_UIBarBackgroundLayoutLegacy *)v53 configureImage:v31 forceOpaque:v65 backgroundTintColor:v28];
          }

          else
          {
            [(_UIBarBackgroundLayoutLegacy *)v53 configureImage:v31 forceOpaque:v65 barStyle:v29];
          }
        }

        if (v63)
        {
          [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
          v46 = 0;
          v47 = 0.0;
          if ((v37 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v54 = v28;
          v55 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
          v56 = v55;
          if (v21 == 2)
          {
            [v55 topShadowImage];
          }

          else
          {
            [v55 shadowImage];
          }
          v46 = ;

          v57 = self->_backgroundViewLayout;
          if (v46)
          {
            [(_UIBarBackgroundLayoutLegacy *)v57 configureShadowImage:v46];
            v47 = 0.0;
            v28 = v54;
            if (!v37)
            {
              goto LABEL_31;
            }
          }

          else
          {
            [(_UIBarBackgroundLayoutLegacy *)v57 configureShadowForBarStyle:v29];
            v47 = 0.0;
            v28 = v54;
            if ((v37 & 1) == 0)
            {
              goto LABEL_31;
            }
          }
        }

        v58 = [(UIView *)self->super._toolbar window];
        __UIStatusBarManagerForWindow(v58);
        v60 = v59 = v28;
        [v60 defaultStatusBarHeightInOrientation:1];
        v47 = v61;

        v28 = v59;
LABEL_31:
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout setTopInset:v47];

        if (v20)
        {
          goto LABEL_9;
        }

LABEL_32:
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout topInset];
        v25 = v48;
        goto LABEL_33;
      }
    }

    v42 = [(UIView *)self->super._toolbar _screen];
    v43 = [v42 _userInterfaceIdiom];

    if (v43 == 3)
    {
      [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureAsTransparent];
      v20 = 0;
    }

    else
    {
      if ([(UIToolbar *)self->super._toolbar _linkedBeforeWhitetailAndInitializedFromCoder]&& !v28 && ([(UIView *)self->super._toolbar backgroundColor], v44 = objc_claimAutoreleasedReturnValue(), v44, v44))
      {
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureAsTransparent];
      }

      else
      {
        [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureEffectForStyle:v29 backgroundTintColor:v28 forceOpaque:!v64];
      }

      [(_UIToolbarVisualProviderLegacyIOS *)self updateBackgroundGroupName];
    }

    v45 = self->_backgroundViewLayout;
    if (v30)
    {
      [(_UIBarBackgroundLayoutLegacy *)v45 configureWithoutShadow];
    }

    else
    {
      [(_UIBarBackgroundLayoutLegacy *)v45 configureShadowForBarStyle:v29];
    }

    v31 = 0;
    v46 = 0;
    v47 = 0.0;
    goto LABEL_31;
  }

  [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout configureWithoutShadow];
  [(_UIBarBackgroundLayoutLegacy *)self->_backgroundViewLayout setTopInset:0.0];
  if (v19 != 3)
  {
    goto LABEL_32;
  }

LABEL_9:
  v22 = [(UIView *)self->super._toolbar window];
  v23 = __UIStatusBarManagerForWindow(v22);
  [v23 statusBarHeight];
  v25 = v24;

LABEL_33:
  [(UIView *)self->_backgroundView frame];
  v68.origin.x = v49;
  v68.origin.y = v50;
  v68.size.width = v51;
  v68.size.height = v52;
  v67.origin.x = v12;
  v67.origin.y = v14 - v25;
  v67.size.width = v16;
  v67.size.height = v18 + v25;
  if (!CGRectEqualToRect(v67, v68))
  {
    [(UIView *)self->_backgroundView setFrame:v12, v14 - v25, v16, v18 + v25];
  }

  [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
}

- (void)updateBackgroundGroupName
{
  v5 = [(UIView *)self->super._toolbar traitCollection];
  v3 = objc_opt_self();
  v4 = [v5 objectForTrait:v3];
  [(_UIBarBackground *)self->_backgroundView setGroupName:v4];
}

- (id)_currentCustomBackground
{
  v3 = [(UIToolbar *)self->super._toolbar _barPosition];
  v4 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
  v5 = [v4 backgroundImageForBarPosition:v3 barMetrics:0];

  if (v3 == 3 && v5 == 0)
  {
    v3 = 2;
  }

  if (!v5)
  {
    if (v3 == [(UIToolbar *)self->super._toolbar _barPosition])
    {
      v5 = 0;
    }

    else
    {
      v7 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
      v5 = [v7 backgroundImageForBarPosition:v3 barMetrics:0];
    }
  }

  v8 = [(UIToolbar *)self->super._toolbar isMinibar];
  if (v5)
  {
    v9 = !v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
    v11 = [v10 backgroundImageForBarPosition:-[UIToolbar _barPosition](self->super._toolbar barMetrics:{"_barPosition"), 1}];

    if (v11)
    {
      v12 = v5;
      v5 = v11;
    }

    else
    {
      if (v3 == [(UIToolbar *)self->super._toolbar _barPosition])
      {
LABEL_19:

        goto LABEL_20;
      }

      v12 = [(UIToolbar *)self->super._toolbar __appearanceStorage];
      v13 = [v12 backgroundImageForBarPosition:v3 barMetrics:1];
    }

    goto LABEL_19;
  }

LABEL_20:

  return v5;
}

- (void)drawBackgroundViewInRect:(CGRect)a3
{
  [(UIView *)self->super._toolbar bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self->super._toolbar superview];
  [v12 safeAreaInsets];
  v14 = v11 + v13;

  v15 = [(UIToolbar *)self->super._toolbar _barPosition];
  if ([(UIToolbar *)self->super._toolbar barStyle]== (UIBarStyleBlackTranslucent|UIBarStyleBlackOpaque))
  {
    v16 = +[UIColor clearColor];
    [v16 set];

    UIRectFillUsingOperation(1, v5, v7, v9, v14);
    return;
  }

  v17 = [(UIToolbar *)self->super._toolbar barStyle];
  v41 = [(UIToolbar *)self->super._toolbar barTintColor];
  v18 = [(UIToolbar *)self->super._toolbar _barTranslucence];
  v19 = v18;
  if (!v41)
  {
    v40 = v7;
    if (v17 != UIBarStyleBlackTranslucent)
    {
      if (v17 == UIBarStyleBlack)
      {
        if (v18 == 1)
        {
          goto LABEL_13;
        }

        v23 = v5;
        v24 = v9;
        if (v15 == 1 || v15 == 4)
        {
          v25 = @"UIButtonBarMiniBlackOpaqueBackground.png";
          v26 = @"UIButtonBarBlackOpaqueBackground.png";
        }

        else
        {
          v25 = @"UIButtonBarMiniBlackOpaqueBackgroundTop.png";
          v26 = @"UIButtonBarBlackOpaqueBackgroundTop.png";
        }
      }

      else
      {
        v23 = v5;
        v24 = v9;
        if (v15 == 1 || v15 == 4)
        {
          v25 = @"UIButtonBarMiniDefaultBackground.png";
        }

        else
        {
          v25 = @"UIButtonBarMiniDefaultBackgroundTop.png";
        }

        v26 = @"UIButtonBarDefaultBackground.png";
      }

LABEL_25:
      if (v14 <= 32.0)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      v21 = _UIImageWithName(v27);
      [v21 size];
      v29 = v28;
      if (v14 <= v28)
      {
        v30 = v14;
      }

      else
      {
        v30 = v28;
      }

      v38 = v30;
      v31 = *MEMORY[0x1E695EFF8];
      v32 = *(MEMORY[0x1E695EFF8] + 8);
      [v21 size];
      v35 = v34;
      if (v19 == 1)
      {
        v36 = 0.909803922;
      }

      else
      {
        v36 = 1.0;
      }

      v37 = v38;
      v39 = v33;
      [v21 compositeToRect:1 fromRect:v23 operation:v40 fraction:{v24, v37, v31, v32, *&v36}];
      if (v14 > v29)
      {
        [v21 compositeToRect:1 fromRect:v23 operation:v40 + v29 fraction:{v24, v14 - v29, v31, v32 + v35 + -1.0, v39, 1.0, *&v36}];
      }

      goto LABEL_36;
    }

LABEL_13:
    v23 = v5;
    v24 = v9;
    if (v15 == 1 || v15 == 4)
    {
      v25 = @"UIButtonBarMiniBlackTranslucentBackground.png";
      v26 = @"UIButtonBarBlackTranslucentBackground.png";
    }

    else
    {
      v25 = @"UIButtonBarMiniBlackTranslucentBackgroundTop.png";
      v26 = @"UIButtonBarBlackTranslucentBackgroundTop.png";
    }

    goto LABEL_25;
  }

  v20 = GetTintedToolbarBackgroundImage(v14, v41);
  v21 = v20;
  if (v19 == 1)
  {
    v22 = 0.909803922;
  }

  else
  {
    v22 = 1.0;
  }

  [v20 drawInRect:0 blendMode:v5 alpha:{v7, v9, v14, v22}];
LABEL_36:
}

- (CGSize)defaultSizeForOrientation:(int64_t)a3
{
  v4 = a3 - 3;
  v5 = _UIUseMiniHeightInLandscape((a3 - 3) < 2);
  v6 = [(UIView *)self->super._toolbar _screen];
  [v6 bounds];
  if (v4 >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = 32.0;
  }

  else
  {
    v10 = 44.0;
  }

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)_edgeMarginForBorderedItem:(BOOL)a3 isText:(BOOL)a4
{
  toolbar = self->super._toolbar;
  if (a4)
  {
    [(UIView *)toolbar _textButtonMargin];
  }

  else
  {
    [(UIView *)toolbar _imageButtonMargin];
  }

  return result;
}

- (BOOL)toolbarIsSmall
{
  v3 = _UIUseMiniHeightInLandscape(1u);
  if (v3)
  {
    [(UIView *)self->super._toolbar bounds];
    LOBYTE(v3) = v4 < 44.0;
  }

  return v3;
}

@end