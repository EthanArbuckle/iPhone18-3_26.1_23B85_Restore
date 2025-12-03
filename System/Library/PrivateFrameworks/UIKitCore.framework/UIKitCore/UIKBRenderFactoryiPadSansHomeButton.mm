@interface UIKBRenderFactoryiPadSansHomeButton
- (BOOL)_displaysAsControlKeyStyle:(id)style;
- (CGPoint)dualStringKeyBottomTextOffset;
- (CGPoint)dualStringKeyTopTextOffset;
- (CGPoint)iPadFudgeControlKeyOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
- (id)displayContentsForKey:(id)key;
- (id)shortClassNameForCaching;
- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents;
@end

@implementation UIKBRenderFactoryiPadSansHomeButton

- (id)shortClassNameForCaching
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactoryiPadSansHomeButton;
  shortClassNameForCaching = [(UIKBRenderFactory *)&v5 shortClassNameForCaching];
  v3 = [shortClassNameForCaching stringByReplacingOccurrencesOfString:@"SansHomeButton" withString:@"SHB"];

  return v3;
}

- (CGPoint)iPadFudgeControlKeyOffset
{
  v2 = 10.0;
  v3 = 9.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)symbolImageControlKeyOffset
{
  v2 = 10.0;
  v3 = 9.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dualStringKeyBottomTextOffset
{
  v2 = 0.0;
  v3 = 9.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)dualStringKeyTopTextOffset
{
  v2 = 0.0;
  v3 = -9.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)_displaysAsControlKeyStyle:(id)style
{
  styleCopy = style;
  displayType = [styleCopy displayType];
  v5 = (displayType < 0x34) & (0x8000004A42038uLL >> displayType);
  interactionType = [styleCopy interactionType];

  v7 = (0x80000109 >> (interactionType - 9)) | v5;
  if ((interactionType - 9) > 0x1F)
  {
    LOBYTE(v7) = v5;
  }

  return v7 & 1;
}

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v50[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  keyplaneCopy = keyplane;
  v49.receiver = self;
  v49.super_class = UIKBRenderFactoryiPadSansHomeButton;
  v8 = [(UIKBRenderFactoryiPad *)&v49 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  if ([(UIKBRenderFactoryiPadSansHomeButton *)self _displaysAsControlKeyStyle:keyCopy])
  {
    [(UIKBRenderFactoryiPadSansHomeButton *)self iPadFudgeControlKeyOffset];
    v10 = v9;
    v12 = v11;
    [(UIKBRenderFactoryiPadSansHomeButton *)self controlKeyFontSize];
    v14 = v13;
    symbolStyle = [v8 symbolStyle];
    usesSymbolImage = [symbolStyle usesSymbolImage];

    if (usesSymbolImage)
    {
      [(UIKBRenderFactoryiPadSansHomeButton *)self symbolImageControlKeyOffset];
      v10 = v17;
      v12 = v18;
      [(UIKBRenderFactoryiPadSansHomeButton *)self symbolImageControlKeyFontSize];
      [(UIKBRenderFactory *)self RivenFactor:?];
      v20 = v19;
      symbolStyle2 = [v8 symbolStyle];
      [symbolStyle2 setFontSizeForSymbolImage:v20];

      v22 = *off_1E70ECD18;
      symbolStyle3 = [v8 symbolStyle];
      [symbolStyle3 setFontWeightForSymbolImage:v22];
    }

    [(UIKBRenderFactory *)self RivenPointFactor:v10, v12];
    v25 = v24;
    v27 = v26;
    symbolStyle4 = [v8 symbolStyle];
    [symbolStyle4 setTextOffset:{v25, v27}];

    [(UIKBRenderFactory *)self RivenFactor:v14];
    v30 = v29;
    symbolStyle5 = [v8 symbolStyle];
    [symbolStyle5 setFontSize:v30];

    if ([(UIKBRenderFactoryiPad *)self _onLeftSide:keyCopy onKeyplane:keyplaneCopy])
    {
      v32 = 4;
    }

    else
    {
      v32 = 8;
    }

    symbolStyle6 = [v8 symbolStyle];
    [symbolStyle6 setAnchorCorner:v32];
  }

  else
  {
    if ([keyCopy displayType] != 7)
    {
      goto LABEL_15;
    }

    symbolStyle7 = [v8 symbolStyle];
    symbolStyle6 = [symbolStyle7 copy];

    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyBottomFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v36 = v35;
    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setFontSize:v36];

    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyBottomTextOffset];
    [(UIKBRenderFactory *)self RivenPointFactor:?];
    v39 = v38;
    v41 = v40;
    symbolStyle9 = [v8 symbolStyle];
    [symbolStyle9 setTextOffset:{v39, v41}];

    [symbolStyle6 setFontWeight:*off_1E70ECD18];
    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyTopFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    [symbolStyle6 setFontSize:?];
    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyTopTextOffset];
    [(UIKBRenderFactory *)self RivenPointFactor:?];
    [symbolStyle6 setTextOffset:?];
    if ([keyCopy displayTypeHint] == 10 && objc_msgSend(keyCopy, "state") == 4)
    {
      symbolStyle10 = [v8 symbolStyle];
      [symbolStyle10 textOffset];
      v45 = v44;
      symbolStyle11 = [v8 symbolStyle];
      [symbolStyle11 setTextOffset:{v45, 3.0}];

      [symbolStyle6 textOffset];
      [symbolStyle6 setTextOffset:?];
    }

    if (symbolStyle6)
    {
      v50[0] = symbolStyle6;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      [v8 setSecondarySymbolStyles:v47];
    }
  }

LABEL_15:

  return v8;
}

- (void)_customizeGeometry:(id)geometry forKey:(id)key contents:(id)contents
{
  geometryCopy = geometry;
  keyCopy = key;
  v10.receiver = self;
  v10.super_class = UIKBRenderFactoryiPadSansHomeButton;
  [(UIKBRenderFactoryiPad *)&v10 _customizeGeometry:geometryCopy forKey:keyCopy contents:contents];
  if ([(UIKBRenderFactoryiPadSansHomeButton *)self _displaysAsControlKeyStyle:keyCopy])
  {
    [keyCopy paddedFrame];
    [geometryCopy setSymbolFrame:?];
  }
}

- (id)displayContentsForKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactoryiPadSansHomeButton;
  v5 = [(UIKBRenderFactoryiPad *)&v9 displayContentsForKey:keyCopy];
  if ([(UIKBRenderFactory *)self preferStringKeycapOverImage])
  {
    [v5 setStringKeycapOverImage:{objc_msgSend(v5, "forceImageKeycap") ^ 1}];
  }

  if ([keyCopy displayType] == 23 || objc_msgSend(keyCopy, "interactionType") == 14)
  {
    overrideDisplayString = [keyCopy overrideDisplayString];
    if (overrideDisplayString)
    {
      [v5 setDisplayString:overrideDisplayString];
    }

    else
    {
      displayString = [keyCopy displayString];
      [v5 setDisplayString:displayString];
    }

    if ([(UIKBRenderFactory *)self preferStringKeycapOverImage])
    {
      if ([keyCopy state] == 8)
      {
        [v5 setDisplayString:@"caps lock"];
      }
    }
  }

  return v5;
}

@end