@interface LAUIHorizontalArrowView(PKAdditions)
+ (uint64_t)pkui_cameraEdgeForScreen:()PKAdditions;
- (uint64_t)pkui_updateFrame;
@end

@implementation LAUIHorizontalArrowView(PKAdditions)

+ (uint64_t)pkui_cameraEdgeForScreen:()PKAdditions
{
  v3 = a3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v17 = 0;
  v4 = PKUIFrontCameraCurrentPosition(v3, &v17);
  v6 = v5;
  [v17 bounds];
  if (v4 <= v7)
  {
    v15 = 0;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (v4 >= CGRectGetMaxX(*&v7))
    {
      v15 = 2;
    }

    else if (v6 <= v12)
    {
      v15 = 1;
    }

    else
    {
      v18.origin.x = v11;
      v18.origin.y = v12;
      v18.size.width = v13;
      v18.size.height = v14;
      if (v6 >= CGRectGetMaxY(v18))
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

- (uint64_t)pkui_updateFrame
{
  v2 = [a1 superview];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 window];
    v5 = [v4 screen];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = [MEMORY[0x1E69DCEB0] mainScreen];

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v8 = [objc_opt_class() pkui_cameraEdgeForScreen:v6];
    if ((v8 & 0xFFFFFFFD) != 1)
    {
      v9 = v8;
      [a1 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v6 coordinateSpace];
      [v18 bounds];
      [v3 convertRect:v18 fromCoordinateSpace:{0, 0, 0, 0}];
      remainder = v30;
      CGRectDivide(v30, &v28, &remainder, 80.0, v9);
      CGRectDivide(remainder, &v28, &remainder, v15, v9);
      [a1 setDirection:v9 != CGRectMinXEdge];
      PKFloatRoundToPixel();
      [a1 setDisplacement:?];
      PKSizeAlignedInRect();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v31.origin.x = v11;
      v31.origin.y = v13;
      v31.size.width = v15;
      v31.size.height = v17;
      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      if (!CGRectEqualToRect(v31, v32))
      {
        [a1 setFrame:{v20, v22, v24, v26}];
      }

      v7 = 1;
      goto LABEL_11;
    }

LABEL_7:
    v7 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end