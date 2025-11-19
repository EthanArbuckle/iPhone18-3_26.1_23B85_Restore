@interface UIKBRenderFactory_Candidates
- (UIKBRenderFactory_Candidates)initWithRenderingContext:(id)a3;
- (id)traitsForHWRCellSize:(CGSize)a3 highlighted:(BOOL)a4;
@end

@implementation UIKBRenderFactory_Candidates

- (UIKBRenderFactory_Candidates)initWithRenderingContext:(id)a3
{
  v4.receiver = self;
  v4.super_class = UIKBRenderFactory_Candidates;
  return [(UIKBRenderFactory *)&v4 initWithRenderingContext:a3 skipLayoutSegments:1];
}

- (id)traitsForHWRCellSize:(CGSize)a3 highlighted:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v47[3] = *MEMORY[0x1E69E9840];
  v8 = +[UIKBRenderTraits emptyTraits];
  v9 = [UIKBRenderGeometry geometryWithFrame:*MEMORY[0x1E695EFF8] paddedFrame:*(MEMORY[0x1E695EFF8] + 8), width, height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
  [v8 setGeometry:v9];

  [(UIKBRenderFactory *)self translucentGapWidth];
  v11 = v10;
  v12 = [v8 geometry];
  [v12 paddedFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19 - v11;
  v21 = [v8 geometry];
  [v21 setPaddedFrame:{v14, v16, v20, v18}];

  if ([(UIKBRenderFactory *)self assetIdiom]!= 1 && [(UIKBRenderFactory *)self assetIdiom]!= 24 && [(UIKBRenderFactory *)self assetIdiom]!= 25 && [(UIKBRenderFactory *)self assetIdiom]!= 26 && [(UIKBRenderFactory *)self assetIdiom]!= 23)
  {
    v22 = [(UIKBRenderFactory *)self renderConfig];
    v23 = [v22 whiteText];
    v24 = UIKBColorWhite_Alpha10;
    if (!v23)
    {
      v24 = UIKBColorBlack_Alpha10;
    }

    v25 = *v24;

    v26 = [(UIKBRenderFactory *)self renderConfig];
    v27 = [v26 whiteText];
    v28 = UIKBColorWhite_Alpha0;
    if (!v27)
    {
      v28 = UIKBColorClear;
    }

    v29 = *v28;

    v47[0] = v25;
    v47[1] = v25;
    v47[2] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    v31 = [UIKBGradient gradientWith3Colors:v30 middleLocation:0.5];
    v32 = [UIKBEdgeEffect effectWithColor:0 edges:8 inset:-v11 weight:v11];

    [v32 setGradient:v31];
    [v8 addRenderEffect:v32];
  }

  if (v4)
  {
    v33 = +[UIKBRenderFactory _graphicsQuality];
    v34 = [(UIKBRenderFactory *)self renderConfig];
    v35 = [v34 lightKeyboard];
    v36 = UIKBColorHWRCellLightBackground;
    v37 = UIKBDarkLowQualityHWRCandidateCellHighlightedBackgroundGradientStart;
    if (v33 == 10)
    {
      v38 = UIKBDarkLowQualityHWRCandidateCellHighlightedBackgroundGradientEnd;
    }

    else
    {
      v37 = UIKBColorHWRCellDarkBackground;
      v38 = UIKBColorHWRCellDarkBackgroundClear;
    }

    if (!v35)
    {
      v36 = v37;
    }

    v39 = *v36;

    v40 = [(UIKBRenderFactory *)self renderConfig];
    if ([v40 lightKeyboard])
    {
      v41 = UIKBColorHWRCellLightBackgroundClear;
    }

    else
    {
      v41 = v38;
    }

    v42 = *v41;

    v46[0] = v39;
    v46[1] = v39;
    v46[2] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    v44 = [UIKBGradient gradientWith3Colors:v43 middleLocation:0.5];
    [v8 setBackgroundGradient:v44];
  }

  return v8;
}

@end