@interface UIKBRenderFactory_CarTenKey
- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4;
@end

@implementation UIKBRenderFactory_CarTenKey

- (id)_traitsForKey:(id)a3 onKeyplane:(id)a4
{
  v97[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v96.receiver = self;
  v96.super_class = UIKBRenderFactory_CarTenKey;
  v7 = a4;
  v8 = [(UIKBRenderFactory_Car *)&v96 _traitsForKey:v6 onKeyplane:v7];
  v9 = [(UIKBRenderFactory_Car *)self lightKeycapsFontName:v96.receiver];
  v10 = [v8 symbolStyle];
  [v10 setFontName:v9];

  v11 = [(UIKBRenderFactory_Car *)self displayContentsForKey:v6];
  v12 = [v11 displayString];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 secondaryDisplayStrings];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [v8 symbolStyle];
      v17 = [v16 copy];

      v97[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];
      [v8 setSecondarySymbolStyles:v18];

      if ([v6 displayType] == 34)
      {
        v19 = [(UIKBRenderFactory_Car *)self lightKeycapsFontName];
        [v17 setFontName:v19];

        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        [v17 setFontSize:v20 * 0.6];
        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        v22 = v21 * 0.3;
        [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
        [v17 setTextOffset:{v22, v23 * 0.5}];
      }

      else
      {
        if ([v6 displayType] == 31)
        {
          v24 = [v11 displayString];
          if (!v24)
          {
            goto LABEL_11;
          }

          v25 = v24;
          v26 = [v11 secondaryDisplayStrings];
          v27 = [v26 count];

          if (!v27)
          {
            goto LABEL_11;
          }

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v29 = v28 * 0.8;
          v30 = [v8 symbolStyle];
          [v30 setFontSize:v29];

          [(UIKBRenderFactory_Car *)self defaultKeyFontSize];
          v32 = v31 * 0.2;
          v33 = [v8 symbolStyle];
          [v33 setTextOffset:{0.0, v32}];

          v34 = [v8 symbolStyle];
          [v34 setKerning:0.0];

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
          v42 = [v8 symbolStyle];
          [v42 setTextOffset:{0.0, v41}];

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

  v45 = [v11 displayString];
  v46 = [v45 length];

  if (v46 >= 2)
  {
    v47 = [v8 symbolStyle];
    [v47 fontSize];
    v49 = v48 * 0.8;
    v50 = [v8 symbolStyle];
    [v50 setFontSize:v49];
  }

  v51 = [v6 name];
  if ([v51 hasPrefix:@"TenKey-Chinese-Pinyin-"])
  {
  }

  else
  {
    v52 = [v6 name];
    v53 = [v52 hasPrefix:@"TenKey-Latin-"];

    if (!v53)
    {
      goto LABEL_18;
    }
  }

  v54 = [v8 symbolStyle];
  [v54 setFontName:@"UIKBRenderFactorySystemFontName"];

LABEL_18:
  [v6 frame];
  MaxX = CGRectGetMaxX(v99);
  [v7 frame];
  if (MaxX >= CGRectGetMaxX(v100))
  {
    v56 = 0.0;
  }

  else
  {
    v56 = 0.5;
  }

  [v6 frame];
  [v7 frame];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;

  v102.origin.x = v58;
  v102.origin.y = v60;
  v102.size.width = v62;
  v102.size.height = v64;
  v65 = [v8 geometry];
  [v65 paddedFrame];
  v67 = v66 + 0.0;
  v69 = v68 - v56;
  v71 = v70 + 0.0;
  v73 = v72 + -0.5;
  v74 = [v8 geometry];
  [v74 setFrame:{v67, v71, v69, v73}];

  v75 = [v8 geometry];
  [v75 frame];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = [v8 geometry];
  [v84 setPaddedFrame:{v77, v79, v81, v83}];

  v85 = [v8 geometry];
  [v85 frame];
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v94 = [v8 geometry];
  [v94 setDisplayFrame:{v87, v89, v91, v93}];

  return v8;
}

@end