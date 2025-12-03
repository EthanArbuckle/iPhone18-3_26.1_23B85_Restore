@interface UIKBRenderFactoryEmoji_iPad
- (CGPoint)emojiInternationalKeyOffset;
- (CGPoint)emojiPopupTextOffset;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (void)_customizeTraits:(id)traits forPopupForKey:(id)key withRenderingContext:(id)context keycapsFontName:(id)name fallbackFontName:(id)fontName;
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

  if ([keyCopy interactionType] == 9)
  {
    symbolStyle2 = [traitsCopy symbolStyle];
    [symbolStyle2 setTextOffset:{-1.0, 0.0}];

    [(UIKBRenderFactoryEmoji_iPad *)self emojiInternationalKeySize];
    v21 = v20;
    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setFontSize:v21];
  }

  else
  {
    if ([keyCopy displayType] != 5)
    {
      goto LABEL_8;
    }

    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle3 setTextOffset:{0.0, 2.0}];
  }

LABEL_8:
  renderConfig2 = [(UIKBRenderFactory *)self renderConfig];
  if (![renderConfig2 colorAdaptiveBackground])
  {

    goto LABEL_13;
  }

  if ([keyCopy displayType] == 13)
  {
LABEL_14:

    goto LABEL_15;
  }

  displayType = [keyCopy displayType];

  if (displayType != 5)
  {
LABEL_13:
    renderConfig2 = [(UIKBRenderFactory_Emoji *)self defaultKeyBackgroundColorName];
    v25 = [UIKBGradient gradientWithFlatColor:renderConfig2];
    [traitsCopy setBackgroundGradient:v25];

    goto LABEL_14;
  }

LABEL_15:
  [(UIKBRenderFactory *)self modifyTraitsForDetachedInputSwitcher:traitsCopy withKey:keyCopy];
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v122 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v120.receiver = self;
  v120.super_class = UIKBRenderFactoryEmoji_iPad;
  v8 = [(UIKBRenderFactoryEmoji_iPhone *)&v120 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if (([keyCopy state] & 0x10) == 0 && objc_msgSend(keyCopy, "displayType") == 5)
  {
    geometry = [v8 geometry];
    [geometry frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    geometry2 = [v8 geometry];
    [geometry2 setPaddedFrame:{v11, v13, v15, v17}];

    geometry3 = [v8 geometry];
    [geometry3 paddedFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    geometry4 = [v8 geometry];
    [geometry4 setFrame:{v21, v23, v25, v27}];

    lightKeycapsFontName = [(UIKBRenderFactoryEmoji_iPad *)self lightKeycapsFontName];
    v30 = [UIKBTextStyle styleWithFontName:lightKeycapsFontName withFontSize:40.0];
    [v8 setSymbolStyle:v30];

    symbolStyle = [v8 symbolStyle];
    [symbolStyle setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPad *)self symbolImageControlKeyFontSize];
    v33 = v32;
    symbolStyle2 = [v8 symbolStyle];
    [symbolStyle2 setFontSizeForSymbolImage:v33];

    v35 = *off_1E70ECD18;
    symbolStyle3 = [v8 symbolStyle];
    [symbolStyle3 setFontWeightForSymbolImage:v35];

    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setFontWeight:v35];

    symbolStyle5 = [v8 symbolStyle];
    [symbolStyle5 textOffset];
    v40 = v39;
    symbolStyle6 = [v8 symbolStyle];
    [symbolStyle6 textOffset];
    v43 = v42 + 2.0;
    symbolStyle7 = [v8 symbolStyle];
    [symbolStyle7 setTextOffset:{v40, v43}];

LABEL_8:
    renderConfig = [(UIKBRenderFactory *)self renderConfig];
    whiteText = [renderConfig whiteText];

    if (whiteText)
    {
      v76 = UIKBColorWhite;
    }

    else
    {
      state = [keyCopy state];
      v76 = UIKBEmojiLightControlSymbolActiveColor;
      if ((state & 4) == 0)
      {
        v76 = UIKBEmojiLightControlSymbolColor;
      }
    }

    v78 = *v76;
    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setTextColor:v78];
    goto LABEL_13;
  }

  if ([keyCopy displayType] == 5)
  {
    symbolStyle9 = [v8 symbolStyle];
    [symbolStyle9 setUsesSymbolImage:1];

    [(UIKBRenderFactoryEmoji_iPad *)self symbolImageControlKeyFontSize];
    v47 = v46;
    symbolStyle10 = [v8 symbolStyle];
    [symbolStyle10 setFontSizeForSymbolImage:v47];

    v49 = *off_1E70ECD18;
    symbolStyle11 = [v8 symbolStyle];
    [symbolStyle11 setFontWeightForSymbolImage:v49];

    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setFontWeight:v49];
LABEL_13:
    v79 = v8;
LABEL_14:

    v8 = v79;
    goto LABEL_15;
  }

  if ([keyCopy displayType] == 25)
  {
    geometry5 = [v8 geometry];
    [geometry5 paddedFrame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    geometry6 = [v8 geometry];
    [geometry6 setFrame:{v54, v56, v58, v60}];

    geometry7 = [v8 geometry];
    [geometry7 displayFrame];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    geometry8 = [v8 geometry];
    [geometry8 setSymbolFrame:{v64, v66, v68, v70}];

    lightTextFontName = [(UIKBRenderFactory *)self lightTextFontName];
    v73 = [UIKBTextStyle styleWithFontName:lightTextFontName withFontSize:18.0];
    [v8 setSymbolStyle:v73];

    goto LABEL_8;
  }

  name = [keyCopy name];
  v82 = [name isEqualToString:@"EmojiPopupKey"];

  if (v82)
  {
    visualStyling = [keyplaneCopy visualStyling];
    lightweightFactory = [(UIKBRenderFactory *)self lightweightFactory];
    renderingContext = [(UIKBRenderFactory *)self renderingContext];
    v86 = visualStyling & 0xFFFFFFFFFF00FFFFLL;
    if (lightweightFactory)
    {
      [UIKBRenderFactory lightweightFactoryForVisualStyle:v86 renderingContext:renderingContext];
    }

    else
    {
      [UIKBRenderFactory factoryForVisualStyle:v86 renderingContext:renderingContext];
    }
    symbolStyle8 = ;

    [(UIKBRenderFactory *)self scale];
    [symbolStyle8 setScale:?];
    [(UIKBRenderFactory *)self stretchFactor];
    [symbolStyle8 setStretchFactor:?];
    [symbolStyle8 setAllowsPaddles:{-[UIKBRenderFactory allowsPaddleForKey:](self, "allowsPaddleForKey:", keyCopy)}];
    v79 = [symbolStyle8 traitsForKey:keyCopy onKeyplane:keyplaneCopy];

    v87 = [UIKBTextStyle styleWithFontName:@"AppleColorEmoji" withFontSize:48.0];
    [v87 setTextColor:@"UIKBColorBlack"];
    [(UIKBRenderFactoryEmoji_iPad *)self emojiPopupTextOffset];
    [v87 setTextOffset:?];
    [v79 setSymbolStyle:v87];
    controlKeyBackgroundColorName = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
    v89 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName];
    [v79 setLayeredBackgroundGradient:v89];

    [v79 removeAllRenderEffects];
    variantTraits = [v79 variantTraits];

    if (variantTraits)
    {
      v91 = [v87 copy];
      [v91 setTextOffset:{0.0, 2.0}];
      variantTraits2 = [v79 variantTraits];
      v115 = v91;
      [variantTraits2 setSymbolStyle:v91];

      [(UIKBRenderFactory *)self scale];
      v94 = 1.0 / v93;
      variantTraits3 = [v79 variantTraits];
      symbolStyle12 = [variantTraits3 symbolStyle];
      [symbolStyle12 setPathWeight:v94];

      _emojiSkinToneDividerColor = [(UIKBRenderFactory_Emoji *)self _emojiSkinToneDividerColor];
      variantTraits4 = [v79 variantTraits];
      symbolStyle13 = [variantTraits4 symbolStyle];
      [symbolStyle13 setTextColor:_emojiSkinToneDividerColor];

      controlKeyBackgroundColorName2 = [(UIKBRenderFactory_Emoji *)self controlKeyBackgroundColorName];
      v101 = [UIKBGradient gradientWithFlatColor:controlKeyBackgroundColorName2];
      [v79 setLayeredBackgroundGradient:v101];

      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      variantGeometries = [v79 variantGeometries];
      v103 = [variantGeometries countByEnumeratingWithState:&v116 objects:v121 count:16];
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
              objc_enumerationMutation(variantGeometries);
            }

            v107 = *(*(&v116 + 1) + 8 * i);
            [v107 symbolFrame];
            [v107 setSymbolFrame:{v108 + 0.0, v109 + 0.0}];
            [v107 paddedFrame];
            [v107 setPaddedFrame:{v110 + 1.0, v112 + 1.0, v111 + -2.0, v113 + -3.0}];
          }

          v104 = [variantGeometries countByEnumeratingWithState:&v116 objects:v121 count:16];
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