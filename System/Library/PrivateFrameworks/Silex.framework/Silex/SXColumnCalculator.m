@interface SXColumnCalculator
- (id)columnLayoutWithConstrainedViewportSize:(CGSize)a3 scaledConstrainedViewportSize:(CGSize)a4 viewportSize:(CGSize)a5 documentLayout:(id)a6 contentScaleFactor:(double)a7 safeAreaInsets:(UIEdgeInsets)a8;
- (id)columnLayoutWithViewportSize:(CGSize)a3 constrainedToWidth:(double)a4 documentLayout:(id)a5 contentScaleFactor:(double)a6 safeAreaInsets:(UIEdgeInsets)a7;
@end

@implementation SXColumnCalculator

- (id)columnLayoutWithViewportSize:(CGSize)a3 constrainedToWidth:(double)a4 documentLayout:(id)a5 contentScaleFactor:(double)a6 safeAreaInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  height = a3.height;
  width = a3.width;
  v14 = a5;
  v15 = [v14 width];
  v16 = [v14 margin];
  v17 = [v14 gutter];
  v18 = v15;
  v19 = v18 * a6;
  if (v18 < a4)
  {
    v18 = a4;
  }

  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = -[SXDocumentLayout initWithWidth:margin:gutter:columns:]([SXDocumentLayout alloc], "initWithWidth:margin:gutter:columns:", v20, (v16 * a6), (v17 * a6), [v14 columns]);
  v22 = v20 + 2 * (v16 * a6);
  if (v22 >= a4)
  {
    v23 = a4;
  }

  else
  {
    v23 = v22;
  }

  if (width >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = width;
  }

  v25 = [v14 width];

  v26 = 1.0 / fmax(a6 - v20 / v25 + 1.0, 1.0);
  CGAffineTransformMakeScale(&v32, v26, v26);
  if (height * v32.c + v32.a * width >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = height * v32.c + v32.a * width;
  }

  v28 = [(SXColumnCalculator *)self columnLayoutWithConstrainedViewportSize:v21 scaledConstrainedViewportSize:v24 viewportSize:height documentLayout:v27 contentScaleFactor:height * v32.d + v32.b * width safeAreaInsets:width, height, a6, *&top, *&left, *&bottom, *&right];

  return v28;
}

- (id)columnLayoutWithConstrainedViewportSize:(CGSize)a3 scaledConstrainedViewportSize:(CGSize)a4 viewportSize:(CGSize)a5 documentLayout:(id)a6 contentScaleFactor:(double)a7 safeAreaInsets:(UIEdgeInsets)a8
{
  height = a5.height;
  width = a5.width;
  v9 = a4.width;
  v45 = a3.height;
  v10 = a3.width;
  v11 = a6;
  v12 = [v11 columns];
  v13 = [v11 width];
  v14 = [v11 margin];
  v15 = [v11 gutter];
  v16 = v13 + v14 * 2.0;
  if (v10 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v10;
  }

  if (v16 >= v17)
  {
    v16 = v17;
  }

  v18 = (v16 - v14 * 2.0 - (v15 * v12 + -1.0)) / v12;
  v19 = floorf(v18);
  v20 = v9 / v16 * v14;
  v21 = -1;
  do
  {
    v22 = v21 + 1;
    v23 = (v9 - v20 * 2.0 - (v21 + 1) * v15) / (v21 + 2);
    v24 = floorf(v23);
    if (v24 < v19)
    {
      break;
    }

    ++v21;
  }

  while (v24 > 0.0);
  if (v22 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v22;
  }

  v26 = floor(v20);
  v27 = (v25 - 1);
  v28 = (v10 - v26 * 2.0 - v27 * v15) / v25;
  v29 = floorf(v28);
  v30 = width - (v15 * v27 + v25 * v29 + v26 * 2.0);
  if (width > v16 || v30 <= 0.0)
  {
    v34 = 0.0;
    if (v30 <= 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v36 = v30 * 0.5;
      v37 = floorf(v36);
      v34 = v37 + 0.0;
      v35 = v30 - v37;
    }

    v33 = v26;
  }

  else
  {
    v31 = v30 * 0.5;
    v32 = floorf(v31);
    v33 = v26 + v32;
    v26 = v26 + v30 - v32;
    v34 = 0.0;
    v35 = 0.0;
  }

  v38 = -[SXColumnLayout initWithConstrainedViewportSize:viewportSize:layoutWidth:documentLayout:numberOfLayoutColumns:leftMargin:rightMargin:numberOfColumns:columnWidth:leftScreenMargin:rightScreenMargin:contentScaleFactor:safeAreaInsets:]([SXColumnLayout alloc], "initWithConstrainedViewportSize:viewportSize:layoutWidth:documentLayout:numberOfLayoutColumns:leftMargin:rightMargin:numberOfColumns:columnWidth:leftScreenMargin:rightScreenMargin:contentScaleFactor:safeAreaInsets:", v11, [v11 columns], v25, v10, v45, width, height, objc_msgSend(v11, "width"), v33, v26, v29, *&v34, *&v35, *&a7, *&a8.top, *&a8.left, *&a8.bottom, *&a8.right);
  [(SXColumnLayout *)v38 setMinimumViewportWidthForLooseLayout:440.0];
  if (NFInternalBuild())
  {
    v39 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v39 floatForKey:@"loose_layouting_threshold_override_enabled"];
    v41 = v40;

    if (v41 != 0.0)
    {
      v42 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v42 floatForKey:@"loose_layouting_threshold_override"];
      [(SXColumnLayout *)v38 setMinimumViewportWidthForLooseLayout:v43];
    }
  }

  return v38;
}

@end