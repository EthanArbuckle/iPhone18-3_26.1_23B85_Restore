@interface SXColumnCalculator
- (id)columnLayoutWithConstrainedViewportSize:(CGSize)size scaledConstrainedViewportSize:(CGSize)viewportSize viewportSize:(CGSize)a5 documentLayout:(id)layout contentScaleFactor:(double)factor safeAreaInsets:(UIEdgeInsets)insets;
- (id)columnLayoutWithViewportSize:(CGSize)size constrainedToWidth:(double)width documentLayout:(id)layout contentScaleFactor:(double)factor safeAreaInsets:(UIEdgeInsets)insets;
@end

@implementation SXColumnCalculator

- (id)columnLayoutWithViewportSize:(CGSize)size constrainedToWidth:(double)width documentLayout:(id)layout contentScaleFactor:(double)factor safeAreaInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  layoutCopy = layout;
  width = [layoutCopy width];
  margin = [layoutCopy margin];
  gutter = [layoutCopy gutter];
  widthCopy = width;
  v19 = widthCopy * factor;
  if (widthCopy < width)
  {
    widthCopy = width;
  }

  if (v19 >= widthCopy)
  {
    v20 = widthCopy;
  }

  else
  {
    v20 = v19;
  }

  v21 = -[SXDocumentLayout initWithWidth:margin:gutter:columns:]([SXDocumentLayout alloc], "initWithWidth:margin:gutter:columns:", v20, (margin * factor), (gutter * factor), [layoutCopy columns]);
  v22 = v20 + 2 * (margin * factor);
  if (v22 >= width)
  {
    widthCopy2 = width;
  }

  else
  {
    widthCopy2 = v22;
  }

  if (width >= widthCopy2)
  {
    widthCopy3 = widthCopy2;
  }

  else
  {
    widthCopy3 = width;
  }

  width2 = [layoutCopy width];

  v26 = 1.0 / fmax(factor - v20 / width2 + 1.0, 1.0);
  CGAffineTransformMakeScale(&v32, v26, v26);
  if (height * v32.c + v32.a * width >= widthCopy2)
  {
    v27 = widthCopy2;
  }

  else
  {
    v27 = height * v32.c + v32.a * width;
  }

  v28 = [(SXColumnCalculator *)self columnLayoutWithConstrainedViewportSize:v21 scaledConstrainedViewportSize:widthCopy3 viewportSize:height documentLayout:v27 contentScaleFactor:height * v32.d + v32.b * width safeAreaInsets:width, height, factor, *&top, *&left, *&bottom, *&right];

  return v28;
}

- (id)columnLayoutWithConstrainedViewportSize:(CGSize)size scaledConstrainedViewportSize:(CGSize)viewportSize viewportSize:(CGSize)a5 documentLayout:(id)layout contentScaleFactor:(double)factor safeAreaInsets:(UIEdgeInsets)insets
{
  height = a5.height;
  width = a5.width;
  v9 = viewportSize.width;
  v45 = size.height;
  v10 = size.width;
  layoutCopy = layout;
  columns = [layoutCopy columns];
  width = [layoutCopy width];
  margin = [layoutCopy margin];
  gutter = [layoutCopy gutter];
  v16 = width + margin * 2.0;
  if (v10 <= width)
  {
    v17 = width;
  }

  else
  {
    v17 = v10;
  }

  if (v16 >= v17)
  {
    v16 = v17;
  }

  v18 = (v16 - margin * 2.0 - (gutter * columns + -1.0)) / columns;
  v19 = floorf(v18);
  v20 = v9 / v16 * margin;
  v21 = -1;
  do
  {
    v22 = v21 + 1;
    v23 = (v9 - v20 * 2.0 - (v21 + 1) * gutter) / (v21 + 2);
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
  v28 = (v10 - v26 * 2.0 - v27 * gutter) / v25;
  v29 = floorf(v28);
  v30 = width - (gutter * v27 + v25 * v29 + v26 * 2.0);
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

  v38 = -[SXColumnLayout initWithConstrainedViewportSize:viewportSize:layoutWidth:documentLayout:numberOfLayoutColumns:leftMargin:rightMargin:numberOfColumns:columnWidth:leftScreenMargin:rightScreenMargin:contentScaleFactor:safeAreaInsets:]([SXColumnLayout alloc], "initWithConstrainedViewportSize:viewportSize:layoutWidth:documentLayout:numberOfLayoutColumns:leftMargin:rightMargin:numberOfColumns:columnWidth:leftScreenMargin:rightScreenMargin:contentScaleFactor:safeAreaInsets:", layoutCopy, [layoutCopy columns], v25, v10, v45, width, height, objc_msgSend(layoutCopy, "width"), v33, v26, v29, *&v34, *&v35, *&factor, *&insets.top, *&insets.left, *&insets.bottom, *&insets.right);
  [(SXColumnLayout *)v38 setMinimumViewportWidthForLooseLayout:440.0];
  if (NFInternalBuild())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults floatForKey:@"loose_layouting_threshold_override_enabled"];
    v41 = v40;

    if (v41 != 0.0)
    {
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults2 floatForKey:@"loose_layouting_threshold_override"];
      [(SXColumnLayout *)v38 setMinimumViewportWidthForLooseLayout:v43];
    }
  }

  return v38;
}

@end