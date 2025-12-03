@interface UIKBRenderFactoryEmoji_iPhone
- (BOOL)shouldClearBaseDisplayStringForVariants:(id)variants;
- (CGPoint)defaultEmojiTextOffset;
- (CGPoint)emojiInternationalKeyOffset;
- (CGPoint)emojiPopupTextOffset;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)traitsHashStringForKey:(id)key withGeometry:(id)geometry withSymbolStyle:(id)style controlOpacities:(BOOL)opacities blendForm:(int64_t)form blurBlending:(BOOL)blending renderConfig:(id)config;
@end

@implementation UIKBRenderFactoryEmoji_iPhone

- (CGPoint)emojiPopupTextOffset
{
  v2 = 0.0;
  v3 = -4.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)defaultEmojiTextOffset
{
  v2 = 0.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)emojiInternationalKeyOffset
{
  v2 = 2.5;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)shouldClearBaseDisplayStringForVariants:(id)variants
{
  variantsCopy = variants;
  if ([variantsCopy displayType] == 37 || objc_msgSend(variantsCopy, "displayType") == 55)
  {
    v4 = 1;
  }

  else
  {
    name = [variantsCopy name];
    v4 = [name isEqual:@"EmojiPopupKey"];
  }

  return v4;
}

- (id)traitsHashStringForKey:(id)key withGeometry:(id)geometry withSymbolStyle:(id)style controlOpacities:(BOOL)opacities blendForm:(int64_t)form blurBlending:(BOOL)blending renderConfig:(id)config
{
  blendingCopy = blending;
  opacitiesCopy = opacities;
  keyCopy = key;
  geometryCopy = geometry;
  styleCopy = style;
  if ([keyCopy displayType] == 37 || objc_msgSend(keyCopy, "displayType") == 55 || objc_msgSend(keyCopy, "displayType") == 36)
  {
    v18 = 0;
  }

  else
  {
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    v21.receiver = self;
    v21.super_class = UIKBRenderFactoryEmoji_iPhone;
    v18 = [(UIKBRenderFactory *)&v21 traitsHashStringForKey:keyCopy withGeometry:geometryCopy withSymbolStyle:styleCopy controlOpacities:opacitiesCopy blendForm:form blurBlending:blendingCopy renderConfig:renderConfig];
  }

  return v18;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v197 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v194.receiver = self;
  v194.super_class = UIKBRenderFactoryEmoji_iPhone;
  v8 = [(UIKBRenderFactory *)&v194 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if (([keyCopy state] & 0x10) != 0 && (objc_msgSend(keyCopy, "displayType") == 13 || objc_msgSend(keyCopy, "displayType") == 5))
  {
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    lightKeycapsFontName = [(UIKBRenderFactory *)self lightKeycapsFontName];
    lightKeycapsFontFallbackName = [(UIKBRenderFactory *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactory *)self _customizeTraits:v8 forPopupForKey:keyCopy withRenderingContext:renderingContext keycapsFontName:lightKeycapsFontName fallbackFontName:lightKeycapsFontFallbackName];

LABEL_8:
    goto LABEL_21;
  }

  geometry = [v8 geometry];
  [geometry paddedFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  geometry2 = [v8 geometry];
  [geometry2 setDisplayFrame:{v11, v13, v15, v17}];

  [(UIKBRenderFactory *)self translucentGapWidth];
  v20 = v19;
  if ([keyCopy displayType] == 13)
  {
    lightKeycapsFontName2 = [(UIKBRenderFactory *)self lightKeycapsFontName];
    [(UIKBRenderFactoryEmoji_iPhone *)self emojiInternationalKeySize];
    v22 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName2 withFontSize:?];
    [v8 setSymbolStyle:v22];

    symbolStyle = [v8 symbolStyle];
    [symbolStyle setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPhone *)self symbolImageControlKeyFontSize];
    v25 = v24;
    symbolStyle2 = [v8 symbolStyle];
    [symbolStyle2 setFontSizeForSymbolImage:v25];

    v27 = *off_1E70ECD18;
    symbolStyle3 = [v8 symbolStyle];
    [symbolStyle3 setFontWeight:v27];

    [(UIKBRenderFactoryEmoji_iPhone *)self emojiInternationalKeyOffset];
    v30 = v29;
    v32 = v31;
    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setTextOffset:{v30, v32}];

    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(symbolStyle4) = [renderConfig whiteText];

    state = [keyCopy state];
    if (symbolStyle4)
    {
      v36 = UIKBColorWhite;
      v37 = UIKBColorWhite_Alpha85;
    }

    else
    {
      v36 = UIKBEmojiLightControlSymbolActiveColor;
      v37 = UIKBColorBlack_Alpha90;
    }

    if ((state & 4) == 0)
    {
      v36 = v37;
    }

    v57 = *v36;
    renderingContext = [v8 symbolStyle];
    [renderingContext setTextColor:v57];
  }

  else if ([keyCopy displayType] == 3)
  {
    lightKeycapsFontName3 = [(UIKBRenderFactory *)self lightKeycapsFontName];
    v42 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName3 withFontSize:15.0];
    [v8 setSymbolStyle:v42];

    symbolStyle5 = [v8 symbolStyle];
    [symbolStyle5 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPhone *)self symbolImageControlKeyFontSize];
    v45 = v44;
    symbolStyle6 = [v8 symbolStyle];
    [symbolStyle6 setFontSizeForSymbolImage:v45];

    v47 = *off_1E70ECD18;
    symbolStyle7 = [v8 symbolStyle];
    [symbolStyle7 setFontWeight:v47];

    renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
    whiteText = [renderConfig2 whiteText];

    state2 = [keyCopy state];
    v52 = UIKBColorWhite;
    if (!whiteText)
    {
      v52 = UIKBEmojiLightControlSymbolActiveColor;
    }

    v53 = UIKBColorWhite_Alpha85;
    if (!whiteText)
    {
      v53 = UIKBColorBlack_Alpha90;
    }

    if ((state2 & 4) == 0)
    {
      v52 = v53;
    }

    v54 = *v52;
    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setTextColor:v54];

    renderingContext = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
    v56 = [UIKBEdgeEffect effectWithColor:renderingContext edges:3 inset:-v20 weight:v20];
    [v8 addRenderEffect:v56];
  }

  else
  {
    if ([keyCopy displayType] == 25)
    {
      lightTextFontName = [(UIKBRenderFactory *)self lightTextFontName];
      v61 = [UIKBTextStyle styleWithFontName:lightTextFontName withFontSize:13.0];
      [v8 setSymbolStyle:v61];

      renderingContext = [(UIKBRenderFactory *)self renderConfig];
      whiteText2 = [renderingContext whiteText];
      v63 = UIKBColorWhite;
      if (!whiteText2)
      {
        v63 = UIKBColorBlack;
      }

      v64 = *v63;
      lightKeycapsFontName = [v8 symbolStyle];
      [lightKeycapsFontName setTextColor:v64];
      goto LABEL_8;
    }

    if ([keyCopy displayType] == 37)
    {
      geometry3 = [v8 geometry];
      [geometry3 setPopupBias:2];

      lightKeycapsFontName4 = [(UIKBRenderFactory *)self lightKeycapsFontName];
      [(UIKBRenderFactoryEmoji_iPhone *)self emojiCategoryControlIconSize];
      v67 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName4 withFontSize:?];
      [v8 setSymbolStyle:v67];

      increasedContrastEnabled = [(UIKBRenderFactory *)self increasedContrastEnabled];
      v69 = UIKBColorBlack_Alpha65;
      if (!increasedContrastEnabled)
      {
        v69 = UIKBColorBlack_Alpha50;
      }

      v70 = *v69;
      renderConfig3 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard = [renderConfig3 lightKeyboard];
      emojiCategoryControlDarkModeTextColor = v70;
      if ((lightKeyboard & 1) == 0)
      {
        emojiCategoryControlDarkModeTextColor = [(UIKBRenderFactoryEmoji_iPhone *)self emojiCategoryControlDarkModeTextColor];
      }

      v181 = v70;
      v183 = keyplaneCopy;
      symbolStyle9 = [v8 symbolStyle];
      [symbolStyle9 setTextColor:emojiCategoryControlDarkModeTextColor];

      if ((lightKeyboard & 1) == 0)
      {
      }

      v75 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
      v76 = [v75 count];

      array = [MEMORY[0x1E695DF70] array];
      geometry4 = [v8 geometry];
      [geometry4 paddedFrame];
      v80 = v79;

      if (v76)
      {
        v81 = 0;
        v82 = v80 / v76;
        do
        {
          geometry5 = [v8 geometry];
          [geometry5 paddedFrame];
          v85 = v82 * v81 + v84;
          geometry6 = [v8 geometry];
          [geometry6 paddedFrame];
          v88 = v87;
          geometry7 = [v8 geometry];
          [geometry7 paddedFrame];
          v91 = v90;

          v92 = [UIKBRenderGeometry geometryWithFrame:v85 paddedFrame:v88, v82, v91, v85, v88, v82, v91];
          [v92 setDisplayFrame:{v85, v88, v82, v91}];
          [v92 displayFrame];
          [v92 setSymbolFrame:?];
          [array addObject:v92];

          ++v81;
        }

        while (v76 != v81);
      }

      v180 = array;
      if (+[UIKeyboardEmojiCategory isRTLMode])
      {
        v93 = [UIKBRenderGeometry sortedGeometries:array leftToRight:0];
        [v8 setVariantGeometries:v93];
      }

      else
      {
        [v8 setVariantGeometries:array];
      }

      renderingContext = v181;
      v103 = +[UIKBRenderTraits emptyTraits];
      symbolStyle10 = [v8 symbolStyle];
      v105 = [symbolStyle10 copy];
      [v103 setSymbolStyle:v105];

      v182 = v103;
      [v8 setVariantTraits:v103];
      v106 = +[UIKBRenderTraits emptyTraits];
      symbolStyle11 = [v8 symbolStyle];
      v108 = [symbolStyle11 copy];
      [v106 setSymbolStyle:v108];

      renderConfig4 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard2 = [renderConfig4 lightKeyboard];
      emojiCategoryControlDarkModeTextColor2 = renderingContext;
      if ((lightKeyboard2 & 1) == 0)
      {
        emojiCategoryControlDarkModeTextColor2 = [(UIKBRenderFactoryEmoji_iPhone *)self emojiCategoryControlDarkModeTextColor];
      }

      v112 = v106;
      symbolStyle12 = [v106 symbolStyle];
      [symbolStyle12 setTextColor:emojiCategoryControlDarkModeTextColor2];

      keyplaneCopy = v183;
      if ((lightKeyboard2 & 1) == 0)
      {
      }

      [v8 setHighlightedVariantTraits:v112];
      renderConfig5 = [(UIKBRenderFactory *)self renderConfig];
      if ([renderConfig5 lightKeyboard])
      {
        v115 = 0;
      }

      else
      {
        v115 = 5;
      }

      [v8 setBlendForm:v115];

      if (_UIApplicationIsFirstPartyStickers())
      {
        _emojiBorderColor = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
        v117 = [UIKBEdgeEffect effectWithColor:_emojiBorderColor edges:1 inset:v20 weight:v20];
        [v8 addRenderEffect:v117];

        geometry8 = [v8 geometry];
        [geometry8 paddedFrame];
        v199 = CGRectInset(v198, -15.0, 0.0);
        x = v199.origin.x;
        y = v199.origin.y;
        width = v199.size.width;
        height = v199.size.height;

        geometry9 = [v8 geometry];
        [geometry9 setPaddedFrame:{x, y, width, height}];

        geometry10 = [v8 geometry];
        [geometry10 setDisplayFrame:{x, y, width, height}];
      }
    }

    else if ([keyCopy displayType] == 55)
    {
      lightKeycapsFontName5 = [(UIKBRenderFactory *)self lightKeycapsFontName];
      v95 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName5 withFontSize:21.0];
      [v8 setSymbolStyle:v95];

      symbolStyle13 = [v8 symbolStyle];
      [symbolStyle13 setUsesSymbolImage:1];

      renderConfig6 = [(UIKBRenderFactory *)self renderConfig];
      lightKeyboard3 = [renderConfig6 lightKeyboard];
      v99 = UIKBColorBlack_Alpha95;
      if (!lightKeyboard3)
      {
        v99 = UIKBColorWhite_Alpha87;
      }

      v100 = *v99;
      symbolStyle14 = [v8 symbolStyle];
      [symbolStyle14 setTextColor:v100];

      renderingContext = [(UIKBRenderFactory *)self renderConfig];
      if ([renderingContext lightKeyboard])
      {
        v102 = 0;
      }

      else
      {
        v102 = 5;
      }

      [v8 setBlendForm:v102];
    }

    else
    {
      name = [keyCopy name];
      v126 = [name isEqualToString:@"EmojiPopupKey"];

      if (v126)
      {
        visualStyling = [keyplaneCopy visualStyling];
        lightweightFactory = [(UIKBRenderFactory *)self lightweightFactory];
        renderingContext2 = [(UIKBRenderFactory *)self renderingContext];
        v130 = visualStyling & 0xFFFFFFFFFF00FFFFLL;
        if (lightweightFactory)
        {
          [UIKBRenderFactory lightweightFactoryForVisualStyle:v130 renderingContext:renderingContext2];
        }

        else
        {
          [UIKBRenderFactory factoryForVisualStyle:v130 renderingContext:renderingContext2 skipLayoutSegments:1];
        }
        renderingContext = ;

        [(UIKBRenderFactory *)self scale];
        [renderingContext setScale:?];
        [(UIKBRenderFactory *)self stretchFactor];
        [renderingContext setStretchFactor:?];
        [renderingContext setAllowsPaddles:{-[UIKBRenderFactory allowsPaddleForKey:](self, "allowsPaddleForKey:", keyCopy)}];
        v136 = [renderingContext traitsForKey:keyCopy onKeyplane:keyplaneCopy];

        if (_UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService])
        {
          v184 = keyplaneCopy;
          [v136 renderEffects];
          v190 = 0u;
          v191 = 0u;
          v192 = 0u;
          v138 = v193 = 0u;
          v139 = [v138 countByEnumeratingWithState:&v190 objects:v196 count:16];
          if (v139)
          {
            v140 = v139;
            v141 = *v191;
            while (2)
            {
              for (i = 0; i != v140; ++i)
              {
                if (*v191 != v141)
                {
                  objc_enumerationMutation(v138);
                }

                v143 = *(*(&v190 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v144 = v143;
                  [v144 insets];
                  if (v145 >= 22.0)
                  {
                    [v144 setInsets:?];

                    goto LABEL_76;
                  }
                }
              }

              v140 = [v138 countByEnumeratingWithState:&v190 objects:v196 count:16];
              if (v140)
              {
                continue;
              }

              break;
            }
          }

LABEL_76:

          v137 = 38.0;
          keyplaneCopy = v184;
        }

        else
        {
          v137 = 32.0;
        }

        v146 = [UIKBTextStyle styleWithFontName:@"AppleColorEmoji" withFontSize:v137];
        [v146 setIgnoreTextMarginOnKey:1];
        [v146 setTextColor:@"UIKBColorBlack"];
        [v136 setSymbolStyle:v146];
        if ([renderingContext allowsPaddles])
        {
          [(UIKBRenderFactoryEmoji_iPhone *)self emojiPopupTextOffset];
          [v146 setTextOffset:?];
          [v136 setControlOpacities:0];
        }

        else
        {
          assetIdiom = [(UIKBRenderFactoryEmoji_iPhone *)self assetIdiom];
          v148 = 0.0;
          v149 = 0.0;
          if (assetIdiom != 1)
          {
            v150 = [(UIKBRenderFactoryEmoji_iPhone *)self assetIdiom:0.0];
            v148 = 0.0;
            v149 = 0.0;
            if (v150 != 24)
            {
              v151 = [(UIKBRenderFactoryEmoji_iPhone *)self assetIdiom:0.0];
              v148 = 0.0;
              v149 = 0.0;
              if (v151 != 25)
              {
                v152 = [(UIKBRenderFactoryEmoji_iPhone *)self assetIdiom:0.0];
                v148 = 0.0;
                v149 = 0.0;
                if (v152 != 26)
                {
                  v153 = [(UIKBRenderFactoryEmoji_iPhone *)self assetIdiom:0.0];
                  v148 = 0.0;
                  v149 = 0.0;
                  if (v153 != 23)
                  {
                    [(UIKBRenderFactoryEmoji_iPhone *)self defaultEmojiTextOffset:0.0];
                  }
                }
              }
            }
          }

          [v146 setTextOffset:{v148, v149}];
          controlKeyBackgroundColorName = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
          v155 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
          [v136 setLayeredBackgroundGradient:v155];

          [v136 removeAllRenderEffects];
        }

        variantTraits = [v136 variantTraits];

        if (variantTraits)
        {
          v185 = keyplaneCopy;
          v157 = [v146 copy];
          [v157 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          variantTraits2 = [v136 variantTraits];
          [variantTraits2 setSymbolStyle:v157];

          [(UIKBRenderFactory *)self scale];
          v160 = 1.0 / v159;
          variantTraits3 = [v136 variantTraits];
          symbolStyle15 = [variantTraits3 symbolStyle];
          [symbolStyle15 setPathWeight:v160];

          _emojiSkinToneDividerColor = [(UIKBRenderFactory_Emoji *)self _emojiSkinToneDividerColor];
          variantTraits4 = [v136 variantTraits];
          symbolStyle16 = [variantTraits4 symbolStyle];
          [symbolStyle16 setTextColor:_emojiSkinToneDividerColor];

          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          variantGeometries = [v136 variantGeometries];
          v167 = [variantGeometries countByEnumeratingWithState:&v186 objects:v195 count:16];
          if (v167)
          {
            v168 = v167;
            v169 = *v187;
            do
            {
              for (j = 0; j != v168; ++j)
              {
                if (*v187 != v169)
                {
                  objc_enumerationMutation(variantGeometries);
                }

                v171 = *(*(&v186 + 1) + 8 * j);
                [v171 symbolFrame];
                [v171 setSymbolFrame:{v172 + -2.0, v174 + -2.0, v173 + 4.0, v175 + 2.0}];
                [v171 paddedFrame];
                [v171 setPaddedFrame:{v176 + 0.0, v177 + -2.0}];
                [v171 displayFrame];
                [v171 setDisplayFrame:{v178 + 0.0, v179 + -2.0}];
              }

              v168 = [variantGeometries countByEnumeratingWithState:&v186 objects:v195 count:16];
            }

            while (v168);
          }

          keyplaneCopy = v185;
        }

        v8 = v136;
      }

      else
      {
        symbolStyle17 = [v8 symbolStyle];
        [symbolStyle17 setUsesSymbolImage:1];

        [(UIKBRenderFactoryEmoji_iPhone *)self symbolImageControlKeyFontSize];
        v133 = v132;
        symbolStyle18 = [v8 symbolStyle];
        [symbolStyle18 setFontSizeForSymbolImage:v133];

        v135 = *off_1E70ECD18;
        renderingContext = [v8 symbolStyle];
        [renderingContext setFontWeight:v135];
      }
    }
  }

LABEL_21:

  v58 = v8;
  return v8;
}

@end