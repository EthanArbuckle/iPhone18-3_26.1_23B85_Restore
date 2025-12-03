@interface UIKBRenderFactory_CarTenKey
- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane;
@end

@implementation UIKBRenderFactory_CarTenKey

- (id)_traitsForKey:(id)key onKeyplane:(id)keyplane
{
  v97[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v96.receiver = self;
  v96.super_class = UIKBRenderFactory_CarTenKey;
  keyplaneCopy = keyplane;
  v8 = [(UIKBRenderFactory_Car *)&v96 _traitsForKey:keyCopy onKeyplane:keyplaneCopy];
  v9 = [(UIKBRenderFactory_Car *)self lightKeycapsFontName:v96.receiver];
  symbolStyle = [v8 symbolStyle];
  [symbolStyle setFontName:v9];

  v11 = [(UIKBRenderFactory_Car *)self displayContentsForKey:keyCopy];
  displayString = [v11 displayString];
  if (displayString)
  {
    v13 = displayString;
    secondaryDisplayStrings = [v11 secondaryDisplayStrings];
    v15 = [secondaryDisplayStrings count];

    if (v15)
    {
      symbolStyle2 = [v8 symbolStyle];
      v17 = [symbolStyle2 copy];

      v97[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];
      [v8 setSecondarySymbolStyles:v18];

      if ([keyCopy displayType] == 34)
      {
        lightKeycapsFontName = [(UIKBRenderFactory_Car *)self lightKeycapsFontName];
        [v17 setFontName:lightKeycapsFontName];

        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        [v17 setFontSize:v20 * 0.6];
        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        v22 = v21 * 0.3;
        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        [v17 setTextOffset:{v22, v23 * 0.5}];
      }

      else
      {
        if ([keyCopy displayType] == 31)
        {
          displayString2 = [v11 displayString];
          if (!displayString2)
          {
            goto LABEL_11;
          }

          v25 = displayString2;
          secondaryDisplayStrings2 = [v11 secondaryDisplayStrings];
          v27 = [secondaryDisplayStrings2 count];

          if (!v27)
          {
            goto LABEL_11;
          }

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v29 = v28 * 0.8;
          symbolStyle3 = [v8 symbolStyle];
          [symbolStyle3 setFontSize:v29];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v32 = v31 * 0.2;
          symbolStyle4 = [v8 symbolStyle];
          [symbolStyle4 setTextOffset:{0.0, v32}];

          symbolStyle5 = [v8 symbolStyle];
          [symbolStyle5 setKerning:0.0];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setFontSize:v35 * 0.8];
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v37 = v36 * 0.2;
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setTextOffset:{v37, v38 * -0.1}];
          v39 = -4.0;
        }

        else
        {
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v41 = v40 * -0.3;
          symbolStyle6 = [v8 symbolStyle];
          [symbolStyle6 setTextOffset:{0.0, v41}];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setFontSize:v43 * 0.5];
          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          [v17 setTextOffset:{0.0, v44 * 0.5}];
          v39 = 1.0;
        }

        [v17 setKerning:v39];
      }

LABEL_11:
    }
  }

  displayString3 = [v11 displayString];
  v46 = [displayString3 length];

  if (v46 >= 2)
  {
    symbolStyle7 = [v8 symbolStyle];
    [symbolStyle7 fontSize];
    v49 = v48 * 0.8;
    symbolStyle8 = [v8 symbolStyle];
    [symbolStyle8 setFontSize:v49];
  }

  name = [keyCopy name];
  if ([name hasPrefix:@"TenKey-Chinese-Pinyin-"])
  {
  }

  else
  {
    name2 = [keyCopy name];
    v53 = [name2 hasPrefix:@"TenKey-Latin-"];

    if (!v53)
    {
      goto LABEL_18;
    }
  }

  symbolStyle9 = [v8 symbolStyle];
  [symbolStyle9 setFontName:@"UIKBRenderFactorySystemFontName"];

LABEL_18:
  [keyCopy frame];
  MaxX = CGRectGetMaxX(v99);
  [keyplaneCopy frame];
  if (MaxX >= CGRectGetMaxX(v100))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = 0.5;
  }

  [keyCopy frame];
  [keyplaneCopy frame];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v102.origin.x = v58;
  v102.origin.y = v60;
  v102.size.width = v62;
  v102.size.height = v64;
  geometry = [v8 geometry];
  [geometry paddedFrame];
  v67 = v66 + 0.0;
  v69 = v68 - v56;
  v71 = v70 + 0.0;
  v73 = v72 + -0.5;
  geometry2 = [v8 geometry];
  [geometry2 setFrame:{v67, v71, v69, v73}];

  geometry3 = [v8 geometry];
  [geometry3 frame];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  geometry4 = [v8 geometry];
  [geometry4 setPaddedFrame:{v77, v79, v81, v83}];

  geometry5 = [v8 geometry];
  [geometry5 frame];
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  geometry6 = [v8 geometry];
  [geometry6 setDisplayFrame:{v87, v89, v91, v93}];

  return v8;
}

@end