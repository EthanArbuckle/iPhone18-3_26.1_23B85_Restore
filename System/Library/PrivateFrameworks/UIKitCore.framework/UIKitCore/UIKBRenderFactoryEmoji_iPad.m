@interface UIKBRenderFactoryEmoji_iPad
- (CGPoint)emojiInternationalKeyOffset;
- (CGPoint)emojiPopupTextOffset;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7;
@end

@implementation UIKBRenderFactoryEmoji_iPad

- (CGPoint)emojiPopupTextOffset
{
  v2 = -0.5;
  v3 = -0.5;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)emojiInternationalKeyOffset
{
  v2 = -1.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_customizeTraits:(id)a3 forPopupForKey:(id)a4 withRenderingContext:(id)a5 keycapsFontName:(id)a6 fallbackFontName:(id)a7
{
  v26 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [UIKBTextStyle styleWithFontName:a6 withFontSize:22.0];
  [v26 setSymbolStyle:v13];

  v14 = [v12 renderConfig];

  v15 = [v14 lightKeyboard];
  v16 = UIKBColorBlack;
  if (!v15)
  {
    v16 = UIKBColorWhite;
  }

  v17 = *v16;
  v18 = [v26 symbolStyle];
  [v18 setTextColor:v17];

  if ([v11 interactionType] == 9)
  {
    v19 = [v26 symbolStyle];
    [v19 setTextOffset:{-1.0, 0.0}];

    [(UIKBRenderFactoryEmoji_iPad *)self emojiInternationalKeySize];
    v21 = v20;
    v22 = [v26 symbolStyle];
    [v22 setFontSize:v21];
  }

  else
  {
    if ([v11 displayType] != 5)
    {
      goto LABEL_8;
    }

    v22 = [v26 symbolStyle];
    [v22 setTextOffset:{0.0, 2.0}];
  }

LABEL_8:
  v23 = [(UIKBRenderFactory *)self renderConfig];
  if (![v23 colorAdaptiveBackground])
  {

    goto LABEL_13;
  }

  if ([v11 displayType] == 13)
  {
LABEL_14:

    goto LABEL_15;
  }

  v24 = [v11 displayType];

  if (v24 != 5)
  {
LABEL_13:
    v23 = [(UIKBRenderFactory_Emoji *)self defaultKeyBackgroundColorName];
    v25 = [UIKBGradient gradientWithFlatColor:v23];
    [v26 setBackgroundGradient:v25];

    goto LABEL_14;
  }

LABEL_15:
  [(UIKBRenderFactory *)self modifyTraitsForDetachedInputSwitcher:v26 withKey:v11];
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v122 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v120.receiver = self;
  v120.super_class = UIKBRenderFactoryEmoji_iPad;
  v8 = [(UIKBRenderFactoryEmoji_iPhone *)&v120 _traitsForKey:v6 onKeyplane:v7];
  if (([v6 state] & 0x10) == 0 && objc_msgSend(v6, "displayType") == 5)
  {
    v9 = [v8 geometry];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [v8 geometry];
    [v18 setPaddedFrame:{v11, v13, v15, v17}];

    v19 = [v8 geometry];
    [v19 paddedFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v8 geometry];
    [v28 setFrame:{v21, v23, v25, v27}];

    v29 = [(UIKBRenderFactoryEmoji_iPad *)self lightKeycapsFontName];
    v30 = [UIKBTextStyle styleWithFontName:v29 withFontSize:40.0];
    [v8 setSymbolStyle:v30];

    v31 = [v8 symbolStyle];
    [v31 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPad *)self symbolImageControlKeyFontSize];
    v33 = v32;
    v34 = [v8 symbolStyle];
    [v34 setFontSizeForSymbolImage:v33];

    v35 = *off_1E70ECD18;
    v36 = [v8 symbolStyle];
    [v36 setFontWeightForSymbolImage:v35];

    v37 = [v8 symbolStyle];
    [v37 setFontWeight:v35];

    v38 = [v8 symbolStyle];
    [v38 textOffset];
    v40 = v39;
    v41 = [v8 symbolStyle];
    [v41 textOffset];
    v43 = v42 + 2.0;
    v44 = [v8 symbolStyle];
    [v44 setTextOffset:{v40, v43}];

LABEL_8:
    v74 = [(UIKBRenderFactory *)self renderConfig];
    v75 = [v74 whiteText];

    if (v75)
    {
      v76 = UIKBColorWhite;
    }

    else
    {
      v77 = [v6 state];
      v76 = UIKBEmojiLightControlSymbolActiveColor;
      if ((v77 & 4) == 0)
      {
        v76 = UIKBEmojiLightControlSymbolColor;
      }
    }

    v78 = *v76;
    v51 = [v8 symbolStyle];
    [v51 setTextColor:v78];
    goto LABEL_13;
  }

  if ([v6 displayType] == 5)
  {
    v45 = [v8 symbolStyle];
    [v45 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPad *)self symbolImageControlKeyFontSize];
    v47 = v46;
    v48 = [v8 symbolStyle];
    [v48 setFontSizeForSymbolImage:v47];

    v49 = *off_1E70ECD18;
    v50 = [v8 symbolStyle];
    [v50 setFontWeightForSymbolImage:v49];

    v51 = [v8 symbolStyle];
    [v51 setFontWeight:v49];
LABEL_13:
    v79 = v8;
LABEL_14:

    v8 = v79;
    goto LABEL_15;
  }

  if ([v6 displayType] == 25)
  {
    v52 = [v8 geometry];
    [v52 paddedFrame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v61 = [v8 geometry];
    [v61 setFrame:{v54, v56, v58, v60}];

    v62 = [v8 geometry];
    [v62 displayFrame];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = [v8 geometry];
    [v71 setSymbolFrame:{v64, v66, v68, v70}];

    v72 = [(UIKBRenderFactory *)self lightTextFontName];
    v73 = [UIKBTextStyle styleWithFontName:v72 withFontSize:18.0];
    [v8 setSymbolStyle:v73];

    goto LABEL_8;
  }

  v81 = [v6 name];
  v82 = [v81 isEqualToString:@"EmojiPopupKey"];

  if (v82)
  {
    v83 = [v7 visualStyling];
    v84 = [(UIKBRenderFactory *)self lightweightFactory];
    v85 = [(UIKBRenderFactory *)self renderingContext];
    v86 = v83 & 0xFFFFFFFFFF00FFFFLL;
    if (v84)
    {
      [UIKBRenderFactory lightweightFactoryForVisualStyle:v86 renderingContext:v85];
    }

    else
    {
      [UIKBRenderFactory factoryForVisualStyle:v86 renderingContext:v85];
    }
    v51 = ;

    [(UIKBRenderFactory *)self scale];
    [v51 setScale:?];
    [(UIKBRenderFactory *)self stretchFactor];
    [v51 setStretchFactor:?];
    [v51 setAllowsPaddles:{-[UIKBRenderFactory allowsPaddleForKey:](self, "allowsPaddleForKey:", v6)}];
    v79 = [v51 traitsForKey:v6 onKeyplane:v7];

    v87 = [UIKBTextStyle styleWithFontName:@"AppleColorEmoji" withFontSize:48.0];
    [v87 setTextColor:@"UIKBColorBlack"];
    [(UIKBRenderFactoryEmoji_iPad *)self emojiPopupTextOffset];
    [v87 setTextOffset:?];
    [v79 setSymbolStyle:v87];
    v88 = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
    v89 = [UIKBGradient gradientWithFlatColor:v88];
    [v79 setLayeredBackgroundGradient:v89];

    [v79 removeAllRenderEffects];
    v90 = [v79 variantTraits];

    if (v90)
    {
      v91 = [v87 copy];
      [v91 setTextOffset:{0.0, 2.0}];
      v92 = [v79 variantTraits];
      v115 = v91;
      [v92 setSymbolStyle:v91];

      [(UIKBRenderFactory *)self scale];
      v94 = 1.0 / v93;
      v95 = [v79 variantTraits];
      v96 = [v95 symbolStyle];
      [v96 setPathWeight:v94];

      v97 = [(UIKBRenderFactory_Emoji *)self _emojiSkinToneDividerColor];
      v98 = [v79 variantTraits];
      v99 = [v98 symbolStyle];
      [v99 setTextColor:v97];

      v100 = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
      v101 = [UIKBGradient gradientWithFlatColor:v100];
      [v79 setLayeredBackgroundGradient:v101];

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v102 = [v79 variantGeometries];
      v103 = [v102 countByEnumeratingWithState:&v116 objects:v121 count:16];
      if (v103)
      {
        v104 = v103;
        v105 = *v117;
        do
        {
          for (i = 0; i != v104; ++i)
          {
            if (*v117 != v105)
            {
              objc_enumerationMutation(v102);
            }

            v107 = *(*(&v116 + 1) + 8 * i);
            [v107 symbolFrame];
            [v107 setSymbolFrame:{v108 + 0.0, v109 + 0.0}];
            [v107 paddedFrame];
            [v107 setPaddedFrame:{v110 + 1.0, v112 + 1.0, v111 + -2.0, v113 + -3.0}];
          }

          v104 = [v102 countByEnumeratingWithState:&v116 objects:v121 count:16];
        }

        while (v104);
      }
    }

    v114 = [UIKBShadowEffect effectWithColor:@"UIKBColorBlack_Alpha35" offset:0.0 insets:2.0 weight:18.0, 6.0, 28.0, 6.0, 4.5];
    [v79 addRenderEffect:v114];

    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

@end