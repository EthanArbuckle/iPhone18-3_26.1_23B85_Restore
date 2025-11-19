@interface UIForcePresentationHelper
+ (CGRect)sourceRectForView:(id)a3 proposedSourceRect:(CGRect)a4;
+ (id)snapshotViewForSourceView:(id)a3 sourceRect:(CGRect)a4;
+ (id)visualEffectForPresentationPhase:(unint64_t)a3 traitCollection:(id)a4 variant:(int64_t)a5;
+ (void)applyPhase:(unint64_t)a3 toSnapshotView:(id)a4;
@end

@implementation UIForcePresentationHelper

+ (id)visualEffectForPresentationPhase:(unint64_t)a3 traitCollection:(id)a4 variant:(int64_t)a5
{
  v51[4] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a3 <= 5 && ((1 << a3) & 0x31) != 0)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v9 = __UIStatusBarManagerForWindow(0);
  v10 = [v9 statusBarStyle];

  if (!v10)
  {
    v22 = [v7 userInterfaceStyle];
    v23 = v22 != 2;
    if (a3 == 1)
    {
      v24 = v22;
      v25 = _UIColorEffectPremultiplyGray(0.0, 0.1);
      v18 = 4.0;
      v19 = 0.015;
      v49 = v27;
      v50 = v28;
      if (v24 == 2)
      {
        v17 = v28;
        v15 = v27;
        v20 = v26;
        v13 = v26;
        v21 = v25;
        v11 = v25;
      }

      else
      {
        v21 = v25;
        v20 = v26;
        v11 = _UIColorEffectPremultiplyGray(1.0, 0.35);
        v13 = v29;
        v15 = v30;
        v17 = v31;
      }

      goto LABEL_17;
    }

LABEL_11:
    v19 = 0.0;
    v17 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
    v11 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v18 = 0.0;
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v21 = _UIColorEffectPremultiplyGray(0.0, dbl_18A680D70[a5 == 1]);
      v20 = v32;
      v49 = v33;
      v50 = v34;
      if (v23)
      {
        v35 = 0.35;
        v36 = 1.0;
      }

      else
      {
        v35 = 0.1;
        v36 = 0.0;
      }

      v11 = _UIColorEffectPremultiplyGray(v36, v35);
      v13 = v37;
      v15 = v38;
      v17 = v39;
      v18 = 8.0;
      v19 = 0.025;
    }

    goto LABEL_17;
  }

  if (a3 != 1)
  {
    v23 = 0;
    goto LABEL_11;
  }

  v11 = _UIColorEffectPremultiplyGray(0.0, 0.1);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = 4.0;
  v19 = 0.015;
  v49 = v14;
  v50 = v16;
  v20 = v12;
  v21 = v11;
LABEL_17:
  if (_AXSEnhanceBackgroundContrastEnabled())
  {
    v19 = 0.0;
    v11 = _UIColorEffectPremultiplyGray(0.0, 0.4);
    v13 = v40;
    v15 = v41;
    v17 = v42;
    v18 = 0.0;
  }

  v43 = [UIBlurEffect _effectWithBlurRadius:v18 scale:0.5];
  v51[0] = v43;
  v44 = [UIColorEffect _colorEffectSourceOver:v11, v13, v15, v17];
  v51[1] = v44;
  v45 = [UIColorEffect _colorEffectSourceOver:v21, v20, v49, v50];
  v51[2] = v45;
  v46 = [_UIZoomEffect zoomEffectWithMagnitude:v19];
  v51[3] = v46;
  v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
  v8 = [UIVisualEffect effectCombiningEffects:v47];

LABEL_20:

  return v8;
}

+ (CGRect)sourceRectForView:(id)a3 proposedSourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (CGRectIsEmpty(v27))
  {
    height = v16;
    width = v14;
    y = v12;
    x = v10;
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  if (CGRectEqualToRect(v28, v33))
  {
    v17 = [v8 window];
    v18 = v17;
    if (v17)
    {
      [v17 bounds];
      [v8 convertRect:v18 fromCoordinateSpace:?];
      v19 = v29.origin.x;
      v20 = v29.origin.y;
      v21 = v29.size.width;
      v22 = v29.size.height;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (CGRectIntersectsRect(v29, v34))
      {
        v30.origin.x = v19;
        v30.origin.y = v20;
        v30.size.width = v21;
        v30.size.height = v22;
        v35.origin.x = x;
        v35.origin.y = y;
        v35.size.width = width;
        v35.size.height = height;
        v31 = CGRectIntersection(v30, v35);
        x = v31.origin.x;
        y = v31.origin.y;
        width = v31.size.width;
        height = v31.size.height;
      }
    }
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

+ (id)snapshotViewForSourceView:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [a3 resizableSnapshotViewFromRect:0 afterScreenUpdates:a4.origin.x withCapInsets:{a4.origin.y, a4.size.width, a4.size.height, 0.0, 0.0, 0.0, 0.0}];
  [v8 setAutoresizingMask:18];
  v9 = [[_UIPreviewPresentationEffectView alloc] initWithFrame:x, y, width, height];
  [(UIView *)v9 addSubview:v8];

  return v9;
}

+ (void)applyPhase:(unint64_t)a3 toSnapshotView:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 2)
  {
    [v5 setBlurRadius:60.0];
    [v6 setAlpha:0.0];
  }

  else if (a3 == 1)
  {
    [v5 frame];
    if (v7 >= v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = fmax(60.0 / v9, 1.0175);
    if (v10 > 4.0)
    {
      v10 = 4.0;
    }

    v11 = *(MEMORY[0x1E695EFD0] + 16);
    *&v13.a = *MEMORY[0x1E695EFD0];
    *&v13.c = v11;
    *&v13.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v12.a = *&v13.a;
    *&v12.c = v11;
    *&v12.tx = *&v13.tx;
    CGAffineTransformScale(&v13, &v12, v10, v10);
    v12 = v13;
    [v6 setTransform:&v12];
  }
}

@end