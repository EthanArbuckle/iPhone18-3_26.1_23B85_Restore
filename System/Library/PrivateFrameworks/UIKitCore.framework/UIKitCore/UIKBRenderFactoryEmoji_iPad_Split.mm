@interface UIKBRenderFactoryEmoji_iPad_Split
- (CGPoint)emojiInternationalKeyOffset;
- (CGPoint)emojiPopupTextOffset;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)backgroundTraitsForKeyplane:(id)keyplane;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
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

- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName
{
  traitsCopy = traits;
  keyCopy = key;
  contextCopy = context;
  v13 = [UIKBTextStyle styleWithFontName:name withFontSize:22.0];
  [traitsCopy setSymbolStyle:v13];

  renderConfig = [contextCopy renderConfig];

  lightKeyboard = [renderConfig lightKeyboard];
  v16 = UIKBColorBlack;
  if (!lightKeyboard)
  {
    v16 = UIKBColorWhite;
  }

  v17 = *v16;
  symbolStyle = [traitsCopy symbolStyle];
  [symbolStyle setTextColor:v17];

  [(UIKBRenderFactory *)self translucentGapWidth];
  v20 = v19;
  if ([keyCopy displayType] == 13)
  {
    lightKeycapsFontName = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiInternationalKeySize];
    v22 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName withFontSize:?];
    [traitsCopy setSymbolStyle:v22];

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    whiteText = [renderConfig2 whiteText];
    v25 = UIKBColorWhite_Alpha85;
    if (!whiteText)
    {
      v25 = UIKBEmojiLightControlSymbolColor;
    }

    v26 = *v25;
    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setTextColor:v26];

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

    geometry = [traitsCopy geometry];
    [geometry paddedFrame];
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
    geometry2 = [traitsCopy geometry];
    [geometry2 setPaddedFrame:{v39, v41, v40, v42}];

    geometry3 = [traitsCopy geometry];
    [geometry3 paddedFrame];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    geometry4 = [traitsCopy geometry];
    [geometry4 setDisplayFrame:{v46, v48, v50, v52}];

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

    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setTextOffset:{v56, v55}];
    v58 = 1;
    goto LABEL_23;
  }

  if ([keyCopy displayType] == 5)
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

    geometry5 = [traitsCopy geometry];
    [geometry5 paddedFrame];
    v63 = v62;
    v65 = v64 + 0.0;
    v67 = v66 + 0.0;
    v69 = v68 - v60;
    geometry6 = [traitsCopy geometry];
    [geometry6 setPaddedFrame:{v65, v67, v63, v69}];

    geometry7 = [traitsCopy geometry];
    [geometry7 paddedFrame];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    geometry8 = [traitsCopy geometry];
    [geometry8 setDisplayFrame:{v73, v75, v77, v79}];

    symbolStyle4 = [traitsCopy symbolStyle];
    [symbolStyle4 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPad_Split *)self symbolImageControlKeyFontSize];
    v83 = v82;
    symbolStyle5 = [traitsCopy symbolStyle];
    [symbolStyle5 setFontSizeForSymbolImage:v83];

    v85 = *off_1E70ECD18;
    symbolStyle6 = [traitsCopy symbolStyle];
    [symbolStyle6 setFontWeightForSymbolImage:v85];

    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setTextOffset:{0.0, 5.0}];
    v58 = 3;
LABEL_23:

    goto LABEL_25;
  }

  v58 = 0;
LABEL_25:
  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig3 colorAdaptiveBackground])
  {

    goto LABEL_30;
  }

  if ([keyCopy displayType] == 13)
  {
LABEL_31:

    goto LABEL_32;
  }

  displayType = [keyCopy displayType];

  if (displayType != 5)
  {
LABEL_30:
    renderConfig3 = [(UIKBRenderFactory_Emoji *)self defaultKeyBackgroundColorName];
    v89 = [UIKBGradient gradientWithFlatColor:renderConfig3];
    [traitsCopy setBackgroundGradient:v89];

    goto LABEL_31;
  }

LABEL_32:
  geometry9 = [traitsCopy geometry];
  [geometry9 paddedFrame];
  v92 = v20 + v91;
  v94 = v93 - (v20 + 0.0);
  v96 = v20 + v95;
  v98 = v97 - (v20 + 0.0);
  geometry10 = [traitsCopy geometry];
  [geometry10 setPaddedFrame:{v92, v96, v94, v98}];

  _emojiBorderColor = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
  v101 = [UIKBEdgeEffect effectWithColor:_emojiBorderColor edges:v58 inset:-v20 weight:v20];
  [traitsCopy addRenderEffect:v101];

  [(UIKBRenderFactory *)self modifyTraitsForDetachedInputSwitcher:traitsCopy withKey:keyCopy];
}

- (id)backgroundTraitsForKeyplane:(id)keyplane
{
  v21.receiver = self;
  v21.super_class = UIKBRenderFactoryEmoji_iPad_Split;
  keyplaneCopy = keyplane;
  v4 = [(UIKBRenderFactory_Emoji *)&v21 backgroundTraitsForKeyplane:keyplaneCopy];
  geometry = [v4 geometry];
  [geometry setRoundRectCorners:-1];

  v6 = MEMORY[0x1E696B098];
  [keyplaneCopy frameForKeylayoutName:@"split-left"];
  v7 = [v6 valueWithCGRect:?];
  geometry2 = [v4 geometry];
  [geometry2 setSplitLeftRect:v7];

  v9 = MEMORY[0x1E696B098];
  [keyplaneCopy frameForKeylayoutName:@"split-right"];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [v9 valueWithCGRect:{v11, v13, v15, v17}];
  geometry3 = [v4 geometry];
  [geometry3 setSplitRightRect:v18];

  return v4;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v286 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v284.receiver = self;
  v284.super_class = UIKBRenderFactoryEmoji_iPad_Split;
  v8 = [(UIKBRenderFactory *)&v284 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if (([keyCopy state] & 0x10) != 0 && (objc_msgSend(keyCopy, "displayType") == 13 || objc_msgSend(keyCopy, "displayType") == 5))
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    lightKeycapsFontName = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    lightKeycapsFontFallbackName = [(UIKBRenderFactory *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self _customizeTraits:v8 forPopupForKey:keyCopy withRenderingContext:renderingContext keycapsFontName:lightKeycapsFontName fallbackFontName:lightKeycapsFontFallbackName];

LABEL_25:
    goto LABEL_26;
  }

  [(UIKBRenderFactory *)self translucentGapWidth];
  v10 = v9;
  geometry = [v8 geometry];
  [geometry frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  geometry2 = [v8 geometry];
  [geometry2 setDisplayFrame:{v13, v15, v17, v19}];

  geometry3 = [v8 geometry];
  [geometry3 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  geometry4 = [v8 geometry];
  [geometry4 setPaddedFrame:{v23, v25, v27, v29}];

  [(UIKBRenderFactoryEmoji_iPad_Split *)self symbolImageControlKeyFontSize];
  v32 = v31;
  if ([keyCopy displayType] == 37 || objc_msgSend(keyCopy, "displayType") == 36)
  {
    if ([keyCopy displayType] == 37)
    {
      [(UIKBRenderFactory *)self RivenFactor:1.0];
      v34 = v33;
      geometry5 = [v8 geometry];
      [geometry5 paddedFrame];
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
      geometry6 = [v8 geometry];
      [geometry6 setPaddedFrame:{v46, v44, v43, v45}];

      geometry7 = [v8 geometry];
      [geometry7 paddedFrame];
      v50 = v49;
      v52 = v51 + -1.0;
      v54 = v53 + 1.0;
      v56 = v55 + 0.0;
      geometry8 = [v8 geometry];
      [geometry8 setDisplayFrame:{v52, v56, v54, v50}];

      _emojiBorderColor = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
      geometry15 = [UIKBEdgeEffect effectWithColor:_emojiBorderColor edges:2 inset:v10 + -1.0 weight:v10];
      [v8 addRenderEffect:geometry15];
    }

    else
    {
      if ([keyCopy displayType] != 36)
      {
LABEL_22:
        geometry9 = [v8 geometry];
        [geometry9 paddedFrame];
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;
        geometry10 = [v8 geometry];
        [geometry10 setFrame:{v88, v90, v92, v94}];

        clipCorners = [keyCopy clipCorners];
        geometry11 = [v8 geometry];
        [geometry11 setRoundRectCorners:clipCorners];

        geometry12 = [v8 geometry];
        [geometry12 setRoundRectRadius:10.0];
        goto LABEL_23;
      }

      [(UIKBRenderFactory *)self RivenFactor:1.0];
      v64 = v63;
      geometry13 = [v8 geometry];
      [geometry13 paddedFrame];
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
      geometry14 = [v8 geometry];
      [geometry14 setPaddedFrame:{v73, v75, v74, v76}];

      _emojiBorderColor = [v8 geometry];
      [_emojiBorderColor paddedFrame];
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v85 = v84;
      geometry15 = [v8 geometry];
      [geometry15 setDisplayFrame:{v79, v81, v83, v85}];
    }

    goto LABEL_22;
  }

  name = [keyCopy name];
  v106 = [name isEqualToString:@"EmojiPopupKey"];

  if (v106)
  {
    visualStyling = [keyplaneCopy visualStyling];
    lightweightFactory = [(UIKBRenderFactory *)self lightweightFactory];
    renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
    v110 = visualStyling & 0xFFFFFFFFFF00FFFFLL;
    if (lightweightFactory)
    {
      [UIKBRenderFactory lightweightFactoryForVisualStyle:v110 renderingContext:renderingContext2];
    }

    else
    {
      [UIKBRenderFactory factoryForVisualStyle:v110 renderingContext:renderingContext2];
    }
    geometry12 = ;

    [(UIKBRenderFactory *)self scale];
    [geometry12 setScale:?];
    v168 = [geometry12 traitsForKey:keyCopy onKeyplane:keyplaneCopy];

    geometry16 = [v168 geometry];
    [geometry16 frame];
    v171 = v170 + 0.0;
    v173 = v172 + -1.0;
    v175 = v174 + 0.0;
    v177 = v176 + -2.0;
    geometry17 = [v168 geometry];
    [geometry17 setPaddedFrame:{v171, v175, v173, v177}];

    geometry18 = [v168 geometry];
    [geometry18 frame];
    v181 = v180 + -2.0;
    v183 = v182 + 4.0;
    v185 = v184 + -2.0;
    v187 = v186 + 4.0;
    geometry19 = [v168 geometry];
    [geometry19 setSymbolFrame:{v181, v185, v183, v187}];

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
    controlKeyBackgroundColorName = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
    v193 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
    [v168 setLayeredBackgroundGradient:v193];

    [v168 removeAllRenderEffects];
    variantTraits = [v168 variantTraits];

    if (variantTraits)
    {
      v195 = [v191 copy];
      [v195 setTextOffset:{0.5, 2.0}];
      variantTraits2 = [v168 variantTraits];
      v279 = v195;
      [variantTraits2 setSymbolStyle:v195];

      [(UIKBRenderFactory *)self scale];
      v198 = 1.0 / v197;
      variantTraits3 = [v168 variantTraits];
      symbolStyle = [variantTraits3 symbolStyle];
      [symbolStyle setPathWeight:v198];

      _emojiSkinToneDividerColor = [(UIKBRenderFactory_Emoji *)self _emojiSkinToneDividerColor];
      variantTraits4 = [v168 variantTraits];
      symbolStyle2 = [variantTraits4 symbolStyle];
      [symbolStyle2 setTextColor:_emojiSkinToneDividerColor];

      v282 = 0u;
      v283 = 0u;
      v280 = 0u;
      v281 = 0u;
      variantGeometries = [v168 variantGeometries];
      v205 = [variantGeometries countByEnumeratingWithState:&v280 objects:v285 count:16];
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
              objc_enumerationMutation(variantGeometries);
            }

            v209 = *(*(&v280 + 1) + 8 * i);
            [v209 symbolFrame];
            [v209 setSymbolFrame:{v210 + 0.0, v211 + 0.0}];
            [v209 paddedFrame];
            [v209 setPaddedFrame:{v212 + 2.0, v214 + 2.0, v213 + -4.0, v215 + -4.0}];
          }

          v206 = [variantGeometries countByEnumeratingWithState:&v280 objects:v285 count:16];
        }

        while (v206);
      }
    }

    v8 = v168;
    goto LABEL_23;
  }

  renderConfig = [(UIKBRenderFactory *)self renderConfig];
  whiteText = [renderConfig whiteText];
  v113 = UIKBColorWhite;
  if (!whiteText)
  {
    v113 = UIKBColorBlack;
  }

  v114 = [UIKBTextStyle styleWithTextColor:*v113];
  [v8 setSymbolStyle:v114];

  symbolStyle3 = [v8 symbolStyle];
  [symbolStyle3 setUsesSymbolImage:1];

  if (([keyCopy state] & 0x10) == 0 && objc_msgSend(keyCopy, "displayType") == 13)
  {
    geometry20 = [v8 geometry];
    [geometry20 paddedFrame];
    v118 = v117 + 0.0;
    v120 = v119 - (1.0 - v10);
    v122 = v121 + 5.0;
    v124 = v123 + -5.0;
    geometry21 = [v8 geometry];
    [geometry21 setPaddedFrame:{v118, v122, v120, v124}];

    geometry22 = [v8 geometry];
    [geometry22 paddedFrame];
    v128 = v127;
    v130 = v129 + 0.0;
    v132 = v131 - v10;
    v134 = v133 - (0.0 - v10);
    geometry23 = [v8 geometry];
    [geometry23 setDisplayFrame:{v130, v132, v128, v134}];

    lightKeycapsFontName2 = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiInternationalKeySize];
    v137 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName2 withFontSize:?];
    [v8 setSymbolStyle:v137];

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    whiteText2 = [renderConfig2 whiteText];
    v140 = UIKBColorWhite_Alpha85;
    if (!whiteText2)
    {
      v140 = UIKBEmojiLightControlSymbolColor;
    }

    v141 = *v140;
    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setTextColor:v141];

    [(UIKBRenderFactoryEmoji_iPad_Split *)self emojiInternationalKeyOffset];
    v144 = v143;
    v146 = v145;
    symbolStyle5 = [v8 symbolStyle];
    [symbolStyle5 setTextOffset:{v144, v146}];
    v148 = 1;
    goto LABEL_78;
  }

  if ([keyCopy displayType] == 3)
  {
    lightKeycapsFontName3 = [(UIKBRenderFactoryEmoji_iPad_Split *)self lightKeycapsFontName];
    symbolStyle6 = [v8 symbolStyle];
    [symbolStyle6 setFontName:lightKeycapsFontName3];

    symbolStyle7 = [v8 symbolStyle];
    [symbolStyle7 setFontSize:14.0];

    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 textOffset];
    v154 = v153;
    symbolStyle9 = [v8 symbolStyle];
    [symbolStyle9 textOffset];
    v157 = v156 - (2.0 - v10);
    symbolStyle10 = [v8 symbolStyle];
    [symbolStyle10 setTextOffset:{v154, v157}];

    symbolStyle5 = [v8 geometry];
    [symbolStyle5 paddedFrame];
    v160 = v159;
    v162 = v10 + v161;
    v164 = v163 - (v10 + 0.0);
    v166 = v165 + 0.0;
    geometry24 = [v8 geometry];
    [geometry24 setPaddedFrame:{v162, v166, v164, v160}];

    v148 = 2;
    goto LABEL_78;
  }

  if (([keyCopy state] & 0x10) == 0 && objc_msgSend(keyCopy, "displayType") == 5 || objc_msgSend(keyCopy, "displayType") == 25 || objc_msgSend(keyCopy, "displayType") == 21)
  {
    if (([keyCopy state] & 0x10) != 0 || objc_msgSend(keyCopy, "displayType") != 5)
    {
      lightTextFontName = [(UIKBRenderFactory *)self lightTextFontName];
      symbolStyle11 = [v8 symbolStyle];
      [symbolStyle11 setFontName:lightTextFontName];

      symbolStyle12 = [v8 symbolStyle];
      [symbolStyle12 setFontSize:14.0];

      if ([keyCopy displayType] == 21)
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

        symbolStyle13 = [v8 symbolStyle];
        [symbolStyle13 setTextOffset:{v227, v228}];
      }

      if ([keyCopy displayType] != 21)
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

      geometry25 = [v8 geometry];
      [geometry25 paddedFrame];
      v234 = v233;
      v236 = v235 + 0.0;
      v238 = v232 + v237;
      v240 = v239 - (v232 + 0.0);
      geometry26 = [v8 geometry];
      [geometry26 setPaddedFrame:{v236, v238, v234, v240}];
    }

    else
    {
      geometry25 = [v8 symbolStyle];
      [geometry25 textOffset];
      v218 = v217;
      geometry26 = [v8 symbolStyle];
      [geometry26 textOffset];
      v221 = v220 + 5.0;
      symbolStyle14 = [v8 symbolStyle];
      [symbolStyle14 setTextOffset:{v218, v221}];
    }

LABEL_77:
    symbolStyle5 = [v8 geometry];
    [symbolStyle5 paddedFrame];
    v242 = v10 + v241;
    v244 = v243 - (v10 + 0.0);
    v246 = v10 + v245;
    v248 = v247 - (v10 + 0.0);
    geometry27 = [v8 geometry];
    [geometry27 setPaddedFrame:{v242, v246, v244, v248}];

    v148 = 3;
    goto LABEL_78;
  }

  symbolStyle5 = [keyCopy displayString];
  if (![symbolStyle5 length])
  {
    interactionType = [keyCopy interactionType];

    if (interactionType)
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

    geometry28 = [v8 geometry];
    [geometry28 paddedFrame];
    v262 = v261 + 0.0;
    v264 = v263 - v259;
    v266 = v265 + 0.0;
    v268 = v267 - v257;
    geometry29 = [v8 geometry];
    [geometry29 setPaddedFrame:{v262, v266, v264, v268}];

    symbolStyle5 = [v8 geometry];
    [symbolStyle5 paddedFrame];
    v271 = v270;
    v273 = v272;
    v275 = v274;
    v277 = v276;
    geometry30 = [v8 geometry];
    [geometry30 setDisplayFrame:{v271, v273, v275, v277}];
  }

  v148 = 0;
LABEL_78:

LABEL_79:
  if (([keyCopy state] & 4) != 0)
  {
    [(UIKBRenderFactory_Emoji *)self _emojiDefaultControlKeyActiveBackgroundColorGradient];
  }

  else
  {
    [(UIKBRenderFactory_Emoji *)self _emojiDefaultControlKeyBackgroundColorGradient];
  }
  v250 = ;
  [v8 setBackgroundGradient:v250];

  renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
  whiteText3 = [renderConfig3 whiteText];

  if (whiteText3)
  {
    v253 = [UIKBGradient gradientWithFlatColor:@"UIKBColorWhite_Alpha5"];
    [v8 setLayeredBackgroundGradient:v253];
  }

  geometry12 = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
  v254 = [UIKBEdgeEffect effectWithColor:geometry12 edges:v148 inset:-v10 weight:v10];
  [v8 addRenderEffect:v254];

LABEL_23:
  symbolStyle15 = [v8 symbolStyle];
  usesSymbolImage = [symbolStyle15 usesSymbolImage];

  if (usesSymbolImage)
  {
    v101 = *off_1E70ECD18;
    symbolStyle16 = [v8 symbolStyle];
    [symbolStyle16 setFontSizeForSymbolImage:v32];

    renderingContext = [v8 symbolStyle];
    [renderingContext setFontWeightForSymbolImage:v101];
    goto LABEL_25;
  }

LABEL_26:
  v103 = v8;

  return v8;
}

@end