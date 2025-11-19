@interface UIKBRenderFactoryEmoji_iPhone
- (BOOL)shouldClearBaseDisplayStringForVariants:(id)a3;
- (CGPoint)defaultEmojiTextOffset;
- (CGPoint)emojiInternationalKeyOffset;
- (CGPoint)emojiPopupTextOffset;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)traitsHashStringForKey:(id)a3 withGeometry:(id)a4 withSymbolStyle:(id)a5 controlOpacities:(BOOL)a6 blendForm:(int64_t)a7 blurBlending:(BOOL)a8 renderConfig:(id)a9;
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

- (BOOL)shouldClearBaseDisplayStringForVariants:(id)a3
{
  v3 = a3;
  if ([v3 displayType] == 37 || objc_msgSend(v3, "displayType") == 55)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 name];
    v4 = [v5 isEqual:@"EmojiPopupKey"];
  }

  return v4;
}

- (id)traitsHashStringForKey:(id)a3 withGeometry:(id)a4 withSymbolStyle:(id)a5 controlOpacities:(BOOL)a6 blendForm:(int64_t)a7 blurBlending:(BOOL)a8 renderConfig:(id)a9
{
  v9 = a8;
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if ([v15 displayType] == 37 || objc_msgSend(v15, "displayType") == 55 || objc_msgSend(v15, "displayType") == 36)
  {
    v18 = 0;
  }

  else
  {
    v20 = [(UIKBRenderFactory *)self renderConfig];
    v21.receiver = self;
    v21.super_class = UIKBRenderFactoryEmoji_iPhone;
    v18 = [(UIKBRenderFactory *)&v21 traitsHashStringForKey:v15 withGeometry:v16 withSymbolStyle:v17 controlOpacities:v11 blendForm:a7 blurBlending:v9 renderConfig:v20];
  }

  return v18;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v197 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v194.receiver = self;
  v194.super_class = UIKBRenderFactoryEmoji_iPhone;
  v8 = [(UIKBRenderFactory *)&v194 _traitsForKey:v6 onKeyplane:v7];
  if (([v6 state] & 0x10) != 0 && (objc_msgSend(v6, "displayType") == 13 || objc_msgSend(v6, "displayType") == 5))
  {
    v38 = [(UIKBRenderFactory *)self renderingContext];
    v39 = [(UIKBRenderFactory *)self lightKeycapsFontName];
    v40 = [(UIKBRenderFactory *)self lightKeycapsFontFallbackName];
    [(UIKBRenderFactory *)self _customizeTraits:v8 forPopupForKey:v6 withRenderingContext:v38 keycapsFontName:v39 fallbackFontName:v40];

LABEL_8:
    goto LABEL_21;
  }

  v9 = [v8 geometry];
  [v9 paddedFrame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v8 geometry];
  [v18 setDisplayFrame:{v11, v13, v15, v17}];

  [(UIKBRenderFactory *)self translucentGapWidth];
  v20 = v19;
  if ([v6 displayType] == 13)
  {
    v21 = [(UIKBRenderFactory *)self lightKeycapsFontName];
    [(UIKBRenderFactoryEmoji_iPhone *)self emojiInternationalKeySize];
    v22 = [UIKBTextStyle styleWithFontName:v21 withFontSize:?];
    [v8 setSymbolStyle:v22];

    v23 = [v8 symbolStyle];
    [v23 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPhone *)self symbolImageControlKeyFontSize];
    v25 = v24;
    v26 = [v8 symbolStyle];
    [v26 setFontSizeForSymbolImage:v25];

    v27 = *off_1E70ECD18;
    v28 = [v8 symbolStyle];
    [v28 setFontWeight:v27];

    [(UIKBRenderFactoryEmoji_iPhone *)self emojiInternationalKeyOffset];
    v30 = v29;
    v32 = v31;
    v33 = [v8 symbolStyle];
    [v33 setTextOffset:{v30, v32}];

    v34 = [(UIKBRenderFactory *)self renderConfig];
    LODWORD(v33) = [v34 whiteText];

    v35 = [v6 state];
    if (v33)
    {
      v36 = UIKBColorWhite;
      v37 = UIKBColorWhite_Alpha85;
    }

    else
    {
      v36 = UIKBEmojiLightControlSymbolActiveColor;
      v37 = UIKBColorBlack_Alpha90;
    }

    if ((v35 & 4) == 0)
    {
      v36 = v37;
    }

    v57 = *v36;
    v38 = [v8 symbolStyle];
    [v38 setTextColor:v57];
  }

  else if ([v6 displayType] == 3)
  {
    v41 = [(UIKBRenderFactory *)self lightKeycapsFontName];
    v42 = [UIKBTextStyle styleWithFontName:v41 withFontSize:15.0];
    [v8 setSymbolStyle:v42];

    v43 = [v8 symbolStyle];
    [v43 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPhone *)self symbolImageControlKeyFontSize];
    v45 = v44;
    v46 = [v8 symbolStyle];
    [v46 setFontSizeForSymbolImage:v45];

    v47 = *off_1E70ECD18;
    v48 = [v8 symbolStyle];
    [v48 setFontWeight:v47];

    v49 = [(UIKBRenderFactory *)self renderConfig];
    v50 = [v49 whiteText];

    v51 = [v6 state];
    v52 = UIKBColorWhite;
    if (!v50)
    {
      v52 = UIKBEmojiLightControlSymbolActiveColor;
    }

    v53 = UIKBColorWhite_Alpha85;
    if (!v50)
    {
      v53 = UIKBColorBlack_Alpha90;
    }

    if ((v51 & 4) == 0)
    {
      v52 = v53;
    }

    v54 = *v52;
    v55 = [v8 symbolStyle];
    [v55 setTextColor:v54];

    v38 = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
    v56 = [UIKBEdgeEffect effectWithColor:v38 edges:3 inset:-v20 weight:v20];
    [v8 addRenderEffect:v56];
  }

  else
  {
    if ([v6 displayType] == 25)
    {
      v60 = [(UIKBRenderFactory *)self lightTextFontName];
      v61 = [UIKBTextStyle styleWithFontName:v60 withFontSize:13.0];
      [v8 setSymbolStyle:v61];

      v38 = [(UIKBRenderFactory *)self renderConfig];
      v62 = [v38 whiteText];
      v63 = UIKBColorWhite;
      if (!v62)
      {
        v63 = UIKBColorBlack;
      }

      v64 = *v63;
      v39 = [v8 symbolStyle];
      [v39 setTextColor:v64];
      goto LABEL_8;
    }

    if ([v6 displayType] == 37)
    {
      v65 = [v8 geometry];
      [v65 setPopupBias:2];

      v66 = [(UIKBRenderFactory *)self lightKeycapsFontName];
      [(UIKBRenderFactoryEmoji_iPhone *)self emojiCategoryControlIconSize];
      v67 = [UIKBTextStyle styleWithFontName:v66 withFontSize:?];
      [v8 setSymbolStyle:v67];

      v68 = [(UIKBRenderFactory *)self increasedContrastEnabled];
      v69 = UIKBColorBlack_Alpha65;
      if (!v68)
      {
        v69 = UIKBColorBlack_Alpha50;
      }

      v70 = *v69;
      v71 = [(UIKBRenderFactory *)self renderConfig];
      v72 = [v71 lightKeyboard];
      v73 = v70;
      if ((v72 & 1) == 0)
      {
        v73 = [(UIKBRenderFactoryEmoji_iPhone *)self emojiCategoryControlDarkModeTextColor];
      }

      v181 = v70;
      v183 = v7;
      v74 = [v8 symbolStyle];
      [v74 setTextColor:v73];

      if ((v72 & 1) == 0)
      {
      }

      v75 = +[UIKeyboardEmojiCategory enabledCategoryIndexes];
      v76 = [v75 count];

      v77 = [MEMORY[0x1E695DF70] array];
      v78 = [v8 geometry];
      [v78 paddedFrame];
      v80 = v79;

      if (v76)
      {
        v81 = 0;
        v82 = v80 / v76;
        do
        {
          v83 = [v8 geometry];
          [v83 paddedFrame];
          v85 = v82 * v81 + v84;
          v86 = [v8 geometry];
          [v86 paddedFrame];
          v88 = v87;
          v89 = [v8 geometry];
          [v89 paddedFrame];
          v91 = v90;

          v92 = [UIKBRenderGeometry geometryWithFrame:v85 paddedFrame:v88, v82, v91, v85, v88, v82, v91];
          [v92 setDisplayFrame:{v85, v88, v82, v91}];
          [v92 displayFrame];
          [v92 setSymbolFrame:?];
          [v77 addObject:v92];

          ++v81;
        }

        while (v76 != v81);
      }

      v180 = v77;
      if (+[UIKeyboardEmojiCategory isRTLMode])
      {
        v93 = [UIKBRenderGeometry sortedGeometries:v77 leftToRight:0];
        [v8 setVariantGeometries:v93];
      }

      else
      {
        [v8 setVariantGeometries:v77];
      }

      v38 = v181;
      v103 = +[UIKBRenderTraits emptyTraits];
      v104 = [v8 symbolStyle];
      v105 = [v104 copy];
      [v103 setSymbolStyle:v105];

      v182 = v103;
      [v8 setVariantTraits:v103];
      v106 = +[UIKBRenderTraits emptyTraits];
      v107 = [v8 symbolStyle];
      v108 = [v107 copy];
      [v106 setSymbolStyle:v108];

      v109 = [(UIKBRenderFactory *)self renderConfig];
      v110 = [v109 lightKeyboard];
      v111 = v38;
      if ((v110 & 1) == 0)
      {
        v111 = [(UIKBRenderFactoryEmoji_iPhone *)self emojiCategoryControlDarkModeTextColor];
      }

      v112 = v106;
      v113 = [v106 symbolStyle];
      [v113 setTextColor:v111];

      v7 = v183;
      if ((v110 & 1) == 0)
      {
      }

      [v8 setHighlightedVariantTraits:v112];
      v114 = [(UIKBRenderFactory *)self renderConfig];
      if ([v114 lightKeyboard])
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
        v116 = [(UIKBRenderFactory_Emoji *)self _emojiBorderColor];
        v117 = [UIKBEdgeEffect effectWithColor:v116 edges:1 inset:v20 weight:v20];
        [v8 addRenderEffect:v117];

        v118 = [v8 geometry];
        [v118 paddedFrame];
        v199 = CGRectInset(v198, -15.0, 0.0);
        x = v199.origin.x;
        y = v199.origin.y;
        width = v199.size.width;
        height = v199.size.height;

        v123 = [v8 geometry];
        [v123 setPaddedFrame:{x, y, width, height}];

        v124 = [v8 geometry];
        [v124 setDisplayFrame:{x, y, width, height}];
      }
    }

    else if ([v6 displayType] == 55)
    {
      v94 = [(UIKBRenderFactory *)self lightKeycapsFontName];
      v95 = [UIKBTextStyle styleWithFontName:v94 withFontSize:21.0];
      [v8 setSymbolStyle:v95];

      v96 = [v8 symbolStyle];
      [v96 setUsesSymbolImage:1];

      v97 = [(UIKBRenderFactory *)self renderConfig];
      v98 = [v97 lightKeyboard];
      v99 = UIKBColorBlack_Alpha95;
      if (!v98)
      {
        v99 = UIKBColorWhite_Alpha87;
      }

      v100 = *v99;
      v101 = [v8 symbolStyle];
      [v101 setTextColor:v100];

      v38 = [(UIKBRenderFactory *)self renderConfig];
      if ([v38 lightKeyboard])
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
      v125 = [v6 name];
      v126 = [v125 isEqualToString:@"EmojiPopupKey"];

      if (v126)
      {
        v127 = [v7 visualStyling];
        v128 = [(UIKBRenderFactory *)self lightweightFactory];
        v129 = [(UIKBRenderFactory *)self renderingContext];
        v130 = v127 & 0xFFFFFFFFFF00FFFFLL;
        if (v128)
        {
          [UIKBRenderFactory lightweightFactoryForVisualStyle:v130 renderingContext:v129];
        }

        else
        {
          [UIKBRenderFactory factoryForVisualStyle:v130 renderingContext:v129 skipLayoutSegments:1];
        }
        v38 = ;

        [(UIKBRenderFactory *)self scale];
        [v38 setScale:?];
        [(UIKBRenderFactory *)self stretchFactor];
        [v38 setStretchFactor:?];
        [v38 setAllowsPaddles:{-[UIKBRenderFactory allowsPaddleForKey:](self, "allowsPaddleForKey:", v6)}];
        v136 = [v38 traitsForKey:v6 onKeyplane:v7];

        if (_UIApplicationIsStickerPickerService() && !+[UIKeyboard canShowEmojiKeyboardInsideStickerPickerService])
        {
          v184 = v7;
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
          v7 = v184;
        }

        else
        {
          v137 = 32.0;
        }

        v146 = [UIKBTextStyle styleWithFontName:@"AppleColorEmoji" withFontSize:v137];
        [v146 setIgnoreTextMarginOnKey:1];
        [v146 setTextColor:@"UIKBColorBlack"];
        [v136 setSymbolStyle:v146];
        if ([v38 allowsPaddles])
        {
          [(UIKBRenderFactoryEmoji_iPhone *)self emojiPopupTextOffset];
          [v146 setTextOffset:?];
          [v136 setControlOpacities:0];
        }

        else
        {
          v147 = [(UIKBRenderFactoryEmoji_iPhone *)self assetIdiom];
          v148 = 0.0;
          v149 = 0.0;
          if (v147 != 1)
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
          v154 = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
          v155 = [UIKBGradient gradientWithFlatColor:v154];
          [v136 setLayeredBackgroundGradient:v155];

          [v136 removeAllRenderEffects];
        }

        v156 = [v136 variantTraits];

        if (v156)
        {
          v185 = v7;
          v157 = [v146 copy];
          [v157 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          v158 = [v136 variantTraits];
          [v158 setSymbolStyle:v157];

          [(UIKBRenderFactory *)self scale];
          v160 = 1.0 / v159;
          v161 = [v136 variantTraits];
          v162 = [v161 symbolStyle];
          [v162 setPathWeight:v160];

          v163 = [(UIKBRenderFactory_Emoji *)self _emojiSkinToneDividerColor];
          v164 = [v136 variantTraits];
          v165 = [v164 symbolStyle];
          [v165 setTextColor:v163];

          v188 = 0u;
          v189 = 0u;
          v186 = 0u;
          v187 = 0u;
          v166 = [v136 variantGeometries];
          v167 = [v166 countByEnumeratingWithState:&v186 objects:v195 count:16];
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
                  objc_enumerationMutation(v166);
                }

                v171 = *(*(&v186 + 1) + 8 * j);
                [v171 symbolFrame];
                [v171 setSymbolFrame:{v172 + -2.0, v174 + -2.0, v173 + 4.0, v175 + 2.0}];
                [v171 paddedFrame];
                [v171 setPaddedFrame:{v176 + 0.0, v177 + -2.0}];
                [v171 displayFrame];
                [v171 setDisplayFrame:{v178 + 0.0, v179 + -2.0}];
              }

              v168 = [v166 countByEnumeratingWithState:&v186 objects:v195 count:16];
            }

            while (v168);
          }

          v7 = v185;
        }

        v8 = v136;
      }

      else
      {
        v131 = [v8 symbolStyle];
        [v131 setUsesSymbolImage:1];

        [(UIKBRenderFactoryEmoji_iPhone *)self symbolImageControlKeyFontSize];
        v133 = v132;
        v134 = [v8 symbolStyle];
        [v134 setFontSizeForSymbolImage:v133];

        v135 = *off_1E70ECD18;
        v38 = [v8 symbolStyle];
        [v38 setFontWeight:v135];
      }
    }
  }

LABEL_21:

  v58 = v8;
  return v8;
}

@end