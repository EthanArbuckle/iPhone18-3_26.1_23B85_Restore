@interface UIKBRenderFactoryiPadSansHomeButton
- (BOOL)_displaysAsControlKeyStyle:(id)a3;
- (CGPoint)dualStringKeyBottomTextOffset;
- (CGPoint)dualStringKeyTopTextOffset;
- (CGPoint)iPadFudgeControlKeyOffset;
- (CGPoint)symbolImageControlKeyOffset;
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
- (id)displayContentsForKey:(id)a3;
- (id)shortClassNameForCaching;
- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5;
@end

@implementation UIKBRenderFactoryiPadSansHomeButton

- (id)shortClassNameForCaching
{
  v5.receiver = self;
  v5.super_class = UIKBRenderFactoryiPadSansHomeButton;
  v2 = [(UIKBRenderFactory *)&v5 shortClassNameForCaching];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"SansHomeButton" withString:@"SHB"];

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

- (BOOL)_displaysAsControlKeyStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 displayType];
  v5 = (v4 < 0x34) & (0x8000004A42038uLL >> v4);
  v6 = [v3 interactionType];

  v7 = (0x80000109 >> (v6 - 9)) | v5;
  if ((v6 - 9) > 0x1F)
  {
    LOBYTE(v7) = v5;
  }

  return v7 & 1;
}

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v49.receiver = self;
  v49.super_class = UIKBRenderFactoryiPadSansHomeButton;
  v8 = [(UIKBRenderFactoryiPad *)&v49 _traitsForKey:v6 onKeyplane:v7];
  if ([(UIKBRenderFactoryiPadSansHomeButton *)self _displaysAsControlKeyStyle:v6])
  {
    [(UIKBRenderFactoryiPadSansHomeButton *)self iPadFudgeControlKeyOffset];
    v10 = v9;
    v12 = v11;
    [(UIKBRenderFactoryiPadSansHomeButton *)self controlKeyFontSize];
    v14 = v13;
    v15 = [v8 symbolStyle];
    v16 = [v15 usesSymbolImage];

    if (v16)
    {
      [(UIKBRenderFactoryiPadSansHomeButton *)self symbolImageControlKeyOffset];
      v10 = v17;
      v12 = v18;
      [(UIKBRenderFactoryiPadSansHomeButton *)self symbolImageControlKeyFontSize];
      [(UIKBRenderFactory *)self RivenFactor:?];
      v20 = v19;
      v21 = [v8 symbolStyle];
      [v21 setFontSizeForSymbolImage:v20];

      v22 = *off_1E70ECD18;
      v23 = [v8 symbolStyle];
      [v23 setFontWeightForSymbolImage:v22];
    }

    [(UIKBRenderFactory *)self RivenPointFactor:v10, v12];
    v25 = v24;
    v27 = v26;
    v28 = [v8 symbolStyle];
    [v28 setTextOffset:{v25, v27}];

    [(UIKBRenderFactory *)self RivenFactor:v14];
    v30 = v29;
    v31 = [v8 symbolStyle];
    [v31 setFontSize:v30];

    if ([(UIKBRenderFactoryiPad *)self _onLeftSide:v6 onKeyplane:v7])
    {
      v32 = 4;
    }

    else
    {
      v32 = 8;
    }

    v33 = [v8 symbolStyle];
    [v33 setAnchorCorner:v32];
  }

  else
  {
    if ([v6 displayType] != 7)
    {
      goto LABEL_15;
    }

    v34 = [v8 symbolStyle];
    v33 = [v34 copy];

    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyBottomFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    v36 = v35;
    v37 = [v8 symbolStyle];
    [v37 setFontSize:v36];

    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyBottomTextOffset];
    [(UIKBRenderFactory *)self RivenPointFactor:?];
    v39 = v38;
    v41 = v40;
    v42 = [v8 symbolStyle];
    [v42 setTextOffset:{v39, v41}];

    [v33 setFontWeight:*off_1E70ECD18];
    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyTopFontSize];
    [(UIKBRenderFactory *)self RivenFactor:?];
    [v33 setFontSize:?];
    [(UIKBRenderFactoryiPadSansHomeButton *)self dualStringKeyTopTextOffset];
    [(UIKBRenderFactory *)self RivenPointFactor:?];
    [v33 setTextOffset:?];
    if ([v6 displayTypeHint] == 10 && objc_msgSend(v6, "state") == 4)
    {
      v43 = [v8 symbolStyle];
      [v43 textOffset];
      v45 = v44;
      v46 = [v8 symbolStyle];
      [v46 setTextOffset:{v45, 3.0}];

      [v33 textOffset];
      [v33 setTextOffset:?];
    }

    if (v33)
    {
      v50[0] = v33;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
      [v8 setSecondarySymbolStyles:v47];
    }
  }

LABEL_15:

  return v8;
}

- (void)_customizeGeometry:(id)a3 forKey:(id)a4 contents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10.receiver = self;
  v10.super_class = UIKBRenderFactoryiPadSansHomeButton;
  [(UIKBRenderFactoryiPad *)&v10 _customizeGeometry:v8 forKey:v9 contents:a5];
  if ([(UIKBRenderFactoryiPadSansHomeButton *)self _displaysAsControlKeyStyle:v9])
  {
    [v9 paddedFrame];
    [v8 setSymbolFrame:?];
  }
}

- (id)displayContentsForKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIKBRenderFactoryiPadSansHomeButton;
  v5 = [(UIKBRenderFactoryiPad *)&v9 displayContentsForKey:v4];
  if ([(UIKBRenderFactory *)self preferStringKeycapOverImage])
  {
    [v5 setStringKeycapOverImage:{objc_msgSend(v5, "forceImageKeycap") ^ 1}];
  }

  if ([v4 displayType] == 23 || objc_msgSend(v4, "interactionType") == 14)
  {
    v6 = [v4 overrideDisplayString];
    if (v6)
    {
      [v5 setDisplayString:v6];
    }

    else
    {
      v7 = [v4 displayString];
      [v5 setDisplayString:v7];
    }

    if ([(UIKBRenderFactory *)self preferStringKeycapOverImage])
    {
      if ([v4 state] == 8)
      {
        [v5 setDisplayString:@"caps lock"];
      }
    }
  }

  return v5;
}

@end