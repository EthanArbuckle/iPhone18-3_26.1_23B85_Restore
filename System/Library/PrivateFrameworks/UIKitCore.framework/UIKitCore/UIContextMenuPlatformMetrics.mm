@interface UIContextMenuPlatformMetrics
@end

@implementation UIContextMenuPlatformMetrics

id __37___UIContextMenuPlatformMetrics_init__block_invoke_6(uint64_t a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v2 = ;

  return v2;
}

double __37___UIContextMenuPlatformMetrics_init__block_invoke_5(double a1, double a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v11 = v9;
  v12 = [v10 layer];
  v13 = [v11 layer];
  v14 = [v12 presentationLayer];
  if (v14)
  {
    v15 = v14;
    v16 = [v13 presentationLayer];
    if (v16 && (_UILayerAncestorsHaveAllBeenCommitted_0(v12) & 1) != 0)
    {
      HaveAllBeenCommitted_0 = _UILayerAncestorsHaveAllBeenCommitted_0(v13);

      if (!HaveAllBeenCommitted_0)
      {
        goto LABEL_8;
      }

      v18 = [v12 presentationLayer];

      [v13 presentationLayer];
      v13 = v15 = v13;
      v12 = v18;
    }

    else
    {
    }
  }

LABEL_8:
  v19 = [v10 _window];
  v20 = [v11 _window];
  v21 = [v19 windowScene];
  v22 = [v20 windowScene];
  v23 = v22;
  if (v19 == v20)
  {
    [v12 convertPoint:v13 toLayer:{a1, a2}];
    v34 = v35;
  }

  else if (v22 && v21 && v21 != v22)
  {
    [v21 screen];
    v25 = v24 = v12;
    v26 = [v25 fixedCoordinateSpace];
    [v26 convertPoint:v10 fromCoordinateSpace:{a1, a2}];
    v28 = v27;
    v30 = v29;

    v31 = [v23 screen];
    v32 = [v31 fixedCoordinateSpace];
    [v11 convertPoint:v32 fromCoordinateSpace:{v28, v30}];
    v34 = v33;

    v12 = v24;
  }

  else
  {
    v46 = v13;
    v36 = [v19 layer];
    v37 = [v20 layer];
    v38 = [v36 presentationLayer];
    if (v38)
    {
      v39 = v38;
      v45 = v12;
      v40 = [v37 presentationLayer];

      if (v40)
      {
        v41 = [v36 presentationLayer];

        v42 = [v37 presentationLayer];

        v37 = v42;
        v36 = v41;
      }

      v12 = v45;
    }

    [v12 convertPoint:v36 toLayer:{a1, a2}];
    [v46 convertPoint:v37 fromLayer:?];
    v34 = v43;

    v13 = v46;
  }

  return v34;
}

UIColor *__43___UIContextMenuPlatformMetrics_Glass_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = 0.0;
  if (v2 == 2)
  {
    v3 = 1.0;
  }

  return [UIColor colorWithWhite:v3 alpha:0.08];
}

id __37___UIContextMenuPlatformMetrics_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [UIBlurEffect effectWithStyle:8];
  v5 = [UIVibrancyEffect effectForBlurEffect:v4 style:6];
  [v3 setEffect:v5];

  v6 = +[UIColor whiteColor];
  [v3 setContentBackgroundColor:v6];

  [v3 setBackgroundShape:v2];

  return v3;
}

id __37___UIContextMenuPlatformMetrics_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = MEMORY[0x1E6979CF8];
  if (v2 != 2)
  {
    v3 = MEMORY[0x1E6979CE8];
  }

  v4 = *v3;

  return v4;
}

UIColor *__37___UIContextMenuPlatformMetrics_init__block_invoke_3(uint64_t a1, void *a2)
{
  [a2 userInterfaceStyle];

  return [UIColor colorWithRed:"colorWithRed:green:blue:alpha:" green:? blue:? alpha:?];
}

UIColor *__37___UIContextMenuPlatformMetrics_init__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = dbl_18A683E70[[a2 userInterfaceStyle] == 2];

  return [UIColor colorWithWhite:0.0 alpha:v2];
}

double __37___UIContextMenuPlatformMetrics_init__block_invoke_8(double a1, double a2)
{
  result = (45.0 - a2) * 0.5;
  if (result < 4.0)
  {
    return 4.0;
  }

  return result;
}

@end