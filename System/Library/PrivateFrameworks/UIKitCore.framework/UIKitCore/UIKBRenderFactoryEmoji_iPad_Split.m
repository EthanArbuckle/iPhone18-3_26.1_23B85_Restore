@interface UIKBRenderFactoryEmoji_iPad_Split
- (CGPoint)emojiInternationalKeyOffset;
- (CGPoint)emojiPopupTextOffset;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)backgroundTraitsForKeyplane:(id)a3;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
@end

@implementation UIKBRenderFactoryEmoji_iPad_Split

- (CGPoint)emojiPopupTextOffset
{
  v2 = -0.5;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)emojiInternationalKeyOffset
{
  v2 = -0.5;
  v3 = 5.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v102 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [UIKBTextStyle styleWithFontName:a6 withFontSize:22.0];
  [v102 setSymbolStyle:v13];

  v14 = [v12 renderConfig];

  v15 = [v14 lightKeyboard];
  v16 = UIKBColorBlack;
  if (!v15)
  {
    v16 = UIKBColorWhite;
  }

  v17 = *v16;
  v18 = [v102 symbolStyle];
  [v18 setTextColor:v17];

  [(UIKBRenderFactory *)self translucentGapWidth];
  v20 = v19;
  if ([v11 displayType] == 13)
  {
    v21 = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiInternationalKeySize];
    v22 = [UIKBTextStyle styleWithFontName:v21 withFontSize:?];
    [v102 setSymbolStyle:v22];

    v23 = [(UIKBRenderFactory *)self renderConfig];
    v24 = [v23 whiteText];
    v25 = UIKBColorWhite_Alpha85;
    if (!v24)
    {
      v25 = UIKBEmojiLightControlSymbolColor;
    }

    v26 = *v25;
    v27 = [v102 symbolStyle];
    [v27 setTextColor:v26];

    [(UIKBRenderFactory *)self RivenFactor:1.0];
    v29 = v28;
    [(UIKBRenderFactory *)self scale];
    if (v30 == 2.0)
    {
      v31 = 0.5;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = [v102 geometry];
    [v32 paddedFrame];
    v37 = 5.0 - v20;
    v38 = -5.0;
    if (v29 > 1.0)
    {
      v38 = -6.0;
    }

    v39 = v33 - v20;
    v40 = v35 - (v31 - v20);
    v41 = v37 + v34;
    v42 = v36 - (v37 + v38);
    v43 = [v102 geometry];
    [v43 setPaddedFrame:{v39, v41, v40, v42}];

    v44 = [v102 geometry];
    [v44 paddedFrame];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v53 = [v102 geometry];
    [v53 setDisplayFrame:{v46, v48, v50, v52}];

    [(UIKBRenderFactory *)self scale];
    if (v54 == 2.0)
    {
      v55 = 5.5;
    }

    else
    {
      v55 = 6.0;
    }

    if (v54 == 2.0)
    {
      v56 = -0.5;
    }

    else
    {
      v56 = -1.0;
    }

    v57 = [v102 symbolStyle];
    [v57 setTextOffset:{v56, v55}];
    v58 = 1;
    goto LABEL_23;
  }

  if ([v11 displayType] == 5)
  {
    [(UIKBRenderFactory *)self RivenFactor:1.0];
    if (v59 <= 1.0)
    {
      v60 = -5.0;
    }

    else
    {
      v60 = -6.0;
    }

    v61 = [v102 geometry];
    [v61 paddedFrame];
    v63 = v62;
    v65 = v64 + 0.0;
    v67 = v66 + 0.0;
    v69 = v68 - v60;
    v70 = [v102 geometry];
    [v70 setPaddedFrame:{v65, v67, v63, v69}];

    v71 = [v102 geometry];
    [v71 paddedFrame];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [v102 geometry];
    [v80 setDisplayFrame:{v73, v75, v77, v79}];

    v81 = [v102 symbolStyle];
    [v81 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPad_Split *)self symbolImageControlKeyFontSize];
    v83 = v82;
    v84 = [v102 symbolStyle];
    [v84 setFontSizeForSymbolImage:v83];

    v85 = *off_1E70ECD18;
    v86 = [v102 symbolStyle];
    [v86 setFontWeightForSymbolImage:v85];

    v57 = [v102 symbolStyle];
    [v57 setTextOffset:{0.0, 5.0}];
    v58 = 3;
LABEL_23:

    goto LABEL_25;
  }

  v58 = 0;
LABEL_25:
  v87 = [(UIKBRenderFactory *)self renderConfig];
  if (![v87 colorAdaptiveBackground])
  {

    goto LABEL_30;
  }

  if ([v11 displayType] == 13)
  {
LABEL_31:

    goto LABEL_32;
  }

  v88 = [v11 displayType];

  if (v88 != 5)
  {
LABEL_30:
    v87 = [(UIKBRenderFactory_Emoji *)self defaultKeyBackgroundColorName];
    v89 = [UIKBGradient gradientWithFlatColor:v87];
    [v102 setBackgroundGradient:v89];

    goto LABEL_31;
  }

LABEL_32:
  v90 = [v102 geometry];
  [v90 paddedFrame];
  v92 = v20 + v91;
  v94 = v93 - (v20 + 0.0);
  v96 = v20 + v95;
  v98 = v97 - (v20 + 0.0);
  v99 = [v102 geometry];
  [v99 setPaddedFrame:{v92, v96, v94, v98}];

  v100 = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
  v101 = [UIKBEdgeEffect effectWithColor:v100 edges:v58 inset:-v20 weight:v20];
  [v102 addRenderEffect:v101];

  [(UIKBRenderFactory *)self modifyTraitsForDetachedInputSwitcher:v102 withKey:v11];
}

- (id)backgroundTraitsForKeyplane:(id)a3
{
  v21.receiver = self;
  v21.super_class = UIKBRenderFactoryEmoji_iPad_Split;
  v3 = a3;
  v4 = [(UIKBRenderFactory_Emoji *)&v21 backgroundTraitsForKeyplane:v3];
  v5 = [v4 geometry];
  [v5 setRoundRectCorners:-1];

  v6 = MEMORY[0x1E696B098];
  [v3 frameForKeylayoutName:@"split-left"];
  v7 = [v6 valueWithCGRect:?];
  v8 = [v4 geometry];
  [v8 setSplitLeftRect:v7];

  v9 = MEMORY[0x1E696B098];
  [v3 frameForKeylayoutName:@"split-right"];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v9 valueWithCGRect:{v11, v13, v15, v17}];
  v19 = [v4 geometry];
  [v19 setSplitRightRect:v18];

  return v4;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v286 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v284.receiver = self;
  v284.super_class = UIKBRenderFactoryEmoji_iPad_Split;
  v8 = [(UIKBRenderFactory *)&v284 _traitsForKey:v6 onKeyplane:v7];
  if (([v6 state] & 0x10) != 0 && (objc_msgSend(v6, "displayType") == 13 || objc_msgSend(v6, "displayType") == 5))
  {
    v60 = [(UIKBRenderFactory *)self renderingContext];
    v61 = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    v62 = [(UIKBRenderFactory *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self _customizeTraits:v8 forPopupForKey:v6 withRenderingContext:v60 keycapsFontName:v61 fallbackFontName:v62];

LABEL_25:
    goto LABEL_26;
  }

  [(UIKBRenderFactory *)self translucentGapWidth];
  v10 = v9;
  v11 = [v8 geometry];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v8 geometry];
  [v20 setDisplayFrame:{v13, v15, v17, v19}];

  v21 = [v8 geometry];
  [v21 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v8 geometry];
  [v30 setPaddedFrame:{v23, v25, v27, v29}];

  [(UIKBRenderFactoryEmoji_iPad_Split *)self symbolImageControlKeyFontSize];
  v32 = v31;
  if ([v6 displayType] == 37 || objc_msgSend(v6, "displayType") == 36)
  {
    if ([v6 displayType] == 37)
    {
      [(UIKBRenderFactory *)self RivenFactor:1.0];
      v34 = v33;
      v35 = [v8 geometry];
      [v35 paddedFrame];
      v40 = 8.0;
      if (v34 > 1.0)
      {
        v40 = 9.0;
      }

      v41 = -5.0;
      if (v34 > 1.0)
      {
        v41 = -6.0;
      }

      v42 = 10.0;
      if (v34 > 1.0)
      {
        v42 = 12.0;
      }

      v43 = v38 + v40;
      v44 = v37 + v41;
      v45 = v39 + v42;
      v46 = v36 + -3.0;
      v47 = [v8 geometry];
      [v47 setPaddedFrame:{v46, v44, v43, v45}];

      v48 = [v8 geometry];
      [v48 paddedFrame];
      v50 = v49;
      v52 = v51 + -1.0;
      v54 = v53 + 1.0;
      v56 = v55 + 0.0;
      v57 = [v8 geometry];
      [v57 setDisplayFrame:{v52, v56, v54, v50}];

      v58 = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
      v59 = [UIKBEdgeEffect effectWithColor:v58 edges:2 inset:v10 + -1.0 weight:v10];
      [v8 addRenderEffect:v59];
    }

    else
    {
      if ([v6 displayType] != 36)
      {
LABEL_22:
        v86 = [v8 geometry];
        [v86 paddedFrame];
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;
        v95 = [v8 geometry];
        [v95 setFrame:{v88, v90, v92, v94}];

        v96 = [v6 clipCorners];
        v97 = [v8 geometry];
        [v97 setRoundRectCorners:v96];

        v98 = [v8 geometry];
        [v98 setRoundRectRadius:10.0];
        goto LABEL_23;
      }

      [(UIKBRenderFactory *)self RivenFactor:1.0];
      v64 = v63;
      v65 = [v8 geometry];
      [v65 paddedFrame];
      v70 = -5.0;
      if (v64 > 1.0)
      {
        v70 = -6.0;
      }

      v71 = 8.0;
      v72 = 10.0;
      if (v64 > 1.0)
      {
        v71 = 10.0;
        v72 = 12.0;
      }

      v73 = v66 + v70;
      v74 = v68 + v71;
      v75 = v67 + v70;
      v76 = v69 + v72;
      v77 = [v8 geometry];
      [v77 setPaddedFrame:{v73, v75, v74, v76}];

      v58 = [v8 geometry];
      [v58 paddedFrame];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v59 = [v8 geometry];
      [v59 setDisplayFrame:{v79, v81, v83, v85}];
    }

    goto LABEL_22;
  }

  v105 = [v6 name];
  v106 = [v105 isEqualToString:@"EmojiPopupKey"];

  if (v106)
  {
    v107 = [v7 visualStyling];
    v108 = [(UIKBRenderFactory *)self lightweightFactory];
    v109 = [(UIKBRenderFactory *)self renderingContext];
    v110 = v107 & 0xFFFFFFFFFF00FFFFLL;
    if (v108)
    {
      [UIKBRenderFactory lightweightFactoryForVisualStyle:v110 renderingContext:v109];
    }

    else
    {
      [UIKBRenderFactory factoryForVisualStyle:v110 renderingContext:v109];
    }
    v98 = ;

    [(UIKBRenderFactory *)self scale];
    [v98 setScale:?];
    v168 = [v98 traitsForKey:v6 onKeyplane:v7];

    v169 = [v168 geometry];
    [v169 frame];
    v171 = v170 + 0.0;
    v173 = v172 + -1.0;
    v175 = v174 + 0.0;
    v177 = v176 + -2.0;
    v178 = [v168 geometry];
    [v178 setPaddedFrame:{v171, v175, v173, v177}];

    v179 = [v168 geometry];
    [v179 frame];
    v181 = v180 + -2.0;
    v183 = v182 + 4.0;
    v185 = v184 + -2.0;
    v187 = v186 + 4.0;
    v188 = [v168 geometry];
    [v188 setSymbolFrame:{v181, v185, v183, v187}];

    if (_UIApplicationIsStickerPickerService())
    {
      v189 = +[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService];
      v190 = 38.0;
      if (v189)
      {
        v190 = 32.0;
      }
    }

    else
    {
      v190 = 32.0;
    }

    v191 = [UIKBTextStyle styleWithFontName:@"AppleColorEmoji" withFontSize:v190];
    [v191 setTextColor:@"UIKBColorBlack"];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiPopupTextOffset];
    [v191 setTextOffset:?];
    [v168 setSymbolStyle:v191];
    v192 = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
    v193 = [UIKBGradient gradientWithFlatColor:v192];
    [v168 setLayeredBackgroundGradient:v193];

    [v168 removeAllRenderEffects];
    v194 = [v168 variantTraits];

    if (v194)
    {
      v195 = [v191 copy];
      [v195 setTextOffset:{0.5, 2.0}];
      v196 = [v168 variantTraits];
      v279 = v195;
      [v196 setSymbolStyle:v195];

      [(UIKBRenderFactory *)self scale];
      v198 = 1.0 / v197;
      v199 = [v168 variantTraits];
      v200 = [v199 symbolStyle];
      [v200 setPathWeight:v198];

      v201 = [(UIKBRenderFactory_Emoji *)self _emojiSkinToneDividerColor];
      v202 = [v168 variantTraits];
      v203 = [v202 symbolStyle];
      [v203 setTextColor:v201];

      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      v204 = [v168 variantGeometries];
      v205 = [v204 countByEnumeratingWithState:&v280 objects:v285 count:16];
      if (v205)
      {
        v206 = v205;
        v207 = *v281;
        do
        {
          for (i = 0; i != v206; ++i)
          {
            if (*v281 != v207)
            {
              objc_enumerationMutation(v204);
            }

            v209 = *(*(&v280 + 1) + 8 * i);
            [v209 symbolFrame];
            [v209 setSymbolFrame:{v210 + 0.0, v211 + 0.0}];
            [v209 paddedFrame];
            [v209 setPaddedFrame:{v212 + 2.0, v214 + 2.0, v213 + -4.0, v215 + -4.0}];
          }

          v206 = [v204 countByEnumeratingWithState:&v280 objects:v285 count:16];
        }

        while (v206);
      }
    }

    v8 = v168;
    goto LABEL_23;
  }

  v111 = [(UIKBRenderFactory *)self renderConfig];
  v112 = [v111 whiteText];
  v113 = UIKBColorWhite;
  if (!v112)
  {
    v113 = UIKBColorBlack;
  }

  v114 = [UIKBTextStyle styleWithTextColor:*v113];
  [v8 setSymbolStyle:v114];

  v115 = [v8 symbolStyle];
  [v115 setUsesSymbolImage:1];

  if (([v6 state] & 0x10) == 0 && objc_msgSend(v6, "displayType") == 13)
  {
    v116 = [v8 geometry];
    [v116 paddedFrame];
    v118 = v117 + 0.0;
    v120 = v119 - (1.0 - v10);
    v122 = v121 + 5.0;
    v124 = v123 + -5.0;
    v125 = [v8 geometry];
    [v125 setPaddedFrame:{v118, v122, v120, v124}];

    v126 = [v8 geometry];
    [v126 paddedFrame];
    v128 = v127;
    v130 = v129 + 0.0;
    v132 = v131 - v10;
    v134 = v133 - (0.0 - v10);
    v135 = [v8 geometry];
    [v135 setDisplayFrame:{v130, v132, v128, v134}];

    v136 = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiInternationalKeySize];
    v137 = [UIKBTextStyle styleWithFontName:v136 withFontSize:?];
    [v8 setSymbolStyle:v137];

    v138 = [(UIKBRenderFactory *)self renderConfig];
    v139 = [v138 whiteText];
    v140 = UIKBColorWhite_Alpha85;
    if (!v139)
    {
      v140 = UIKBEmojiLightControlSymbolColor;
    }

    v141 = *v140;
    v142 = [v8 symbolStyle];
    [v142 setTextColor:v141];

    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiInternationalKeyOffset];
    v144 = v143;
    v146 = v145;
    v147 = [v8 symbolStyle];
    [v147 setTextOffset:{v144, v146}];
    v148 = 1;
    goto LABEL_78;
  }

  if ([v6 displayType] == 3)
  {
    v149 = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    v150 = [v8 symbolStyle];
    [v150 setFontName:v149];

    v151 = [v8 symbolStyle];
    [v151 setFontSize:14.0];

    v152 = [v8 symbolStyle];
    [v152 textOffset];
    v154 = v153;
    v155 = [v8 symbolStyle];
    [v155 textOffset];
    v157 = v156 - (2.0 - v10);
    v158 = [v8 symbolStyle];
    [v158 setTextOffset:{v154, v157}];

    v147 = [v8 geometry];
    [v147 paddedFrame];
    v160 = v159;
    v162 = v10 + v161;
    v164 = v163 - (v10 + 0.0);
    v166 = v165 + 0.0;
    v167 = [v8 geometry];
    [v167 setPaddedFrame:{v162, v166, v164, v160}];

    v148 = 2;
    goto LABEL_78;
  }

  if (([v6 state] & 0x10) == 0 && objc_msgSend(v6, "displayType") == 5 || objc_msgSend(v6, "displayType") == 25 || objc_msgSend(v6, "displayType") == 21)
  {
    if (([v6 state] & 0x10) != 0 || objc_msgSend(v6, "displayType") != 5)
    {
      v223 = [(UIKBRenderFactory *)self lightTextFontName];
      v224 = [v8 symbolStyle];
      [v224 setFontName:v223];

      v225 = [v8 symbolStyle];
      [v225 setFontSize:14.0];

      if ([v6 displayType] == 21)
      {
        [(UIKBRenderFactory *)self scale];
        if (v226 == 2.0)
        {
          v227 = 0.5;
        }

        else
        {
          v227 = *MEMORY[0x1E695EFF8];
        }

        if (v226 == 2.0)
        {
          v228 = 0.0;
        }

        else
        {
          v228 = *(MEMORY[0x1E695EFF8] + 8);
        }

        v229 = [v8 symbolStyle];
        [v229 setTextOffset:{v227, v228}];
      }

      if ([v6 displayType] != 21)
      {
        goto LABEL_77;
      }

      [(UIKBRenderFactory *)self RivenFactor:1.0];
      if (v230 <= 1.0)
      {
        goto LABEL_77;
      }

      [(UIKBRenderFactory *)self stretchFactor];
      if (v231 == 1.0)
      {
        v232 = 1.0;
      }

      else
      {
        v232 = -v10;
      }

      v216 = [v8 geometry];
      [v216 paddedFrame];
      v234 = v233;
      v236 = v235 + 0.0;
      v238 = v232 + v237;
      v240 = v239 - (v232 + 0.0);
      v219 = [v8 geometry];
      [v219 setPaddedFrame:{v236, v238, v234, v240}];
    }

    else
    {
      v216 = [v8 symbolStyle];
      [v216 textOffset];
      v218 = v217;
      v219 = [v8 symbolStyle];
      [v219 textOffset];
      v221 = v220 + 5.0;
      v222 = [v8 symbolStyle];
      [v222 setTextOffset:{v218, v221}];
    }

LABEL_77:
    v147 = [v8 geometry];
    [v147 paddedFrame];
    v242 = v10 + v241;
    v244 = v243 - (v10 + 0.0);
    v246 = v10 + v245;
    v248 = v247 - (v10 + 0.0);
    v249 = [v8 geometry];
    [v249 setPaddedFrame:{v242, v246, v244, v248}];

    v148 = 3;
    goto LABEL_78;
  }

  v147 = [v6 displayString];
  if (![v147 length])
  {
    v255 = [v6 interactionType];

    if (v255)
    {
      v148 = 0;
      goto LABEL_79;
    }

    [(UIKBRenderFactory *)self scale];
    if (v256 == 2.0)
    {
      v257 = -4.5;
    }

    else
    {
      v257 = -4.0;
    }

    [(UIKBRenderFactory *)self scale];
    if (v258 == 2.0)
    {
      v259 = 0.5;
    }

    else
    {
      v259 = 0.0;
    }

    v260 = [v8 geometry];
    [v260 paddedFrame];
    v262 = v261 + 0.0;
    v264 = v263 - v259;
    v266 = v265 + 0.0;
    v268 = v267 - v257;
    v269 = [v8 geometry];
    [v269 setPaddedFrame:{v262, v266, v264, v268}];

    v147 = [v8 geometry];
    [v147 paddedFrame];
    v271 = v270;
    v273 = v272;
    v275 = v274;
    v277 = v276;
    v278 = [v8 geometry];
    [v278 setDisplayFrame:{v271, v273, v275, v277}];
  }

  v148 = 0;
LABEL_78:

LABEL_79:
  if (([v6 state] & 4) != 0)
  {
    [(UIKBRenderFactory_Emoji *)self _emojiDefaultControlKeyActiveBackgroundColorGradient];
  }

  else
  {
    [(UIKBRenderFactory_Emoji *)self _emojiDefaultControlKeyBackgroundColorGradient];
  }
  v250 = ;
  [v8 setBackgroundGradient:v250];

  v251 = [(UIKBRenderFactory *)self renderConfig];
  v252 = [v251 whiteText];

  if (v252)
  {
    v253 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha5"];
    [v8 setLayeredBackgroundGradient:v253];
  }

  v98 = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
  v254 = [UIKBEdgeEffect effectWithColor:v98 edges:v148 inset:-v10 weight:v10];
  [v8 addRenderEffect:v254];

LABEL_23:
  v99 = [v8 symbolStyle];
  v100 = [v99 usesSymbolImage];

  if (v100)
  {
    v101 = *off_1E70ECD18;
    v102 = [v8 symbolStyle];
    [v102 setFontSizeForSymbolImage:v32];

    v60 = [v8 symbolStyle];
    [v60 setFontWeightForSymbolImage:v101];
    goto LABEL_25;
  }

LABEL_26:
  v103 = v8;

  return v8;
}

@end