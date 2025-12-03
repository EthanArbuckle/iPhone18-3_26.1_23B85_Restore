@interface _PXScoreLabGraphView
- (_PXScoreLabGraphView)initWithFrame:(CGRect)frame;
- (_PXScoreLabGraphViewDelegate)delegate;
- (void)cancelGesture;
- (void)drawAxisInContext:(CGContext *)context minXValue:(double)value maxXValue:(double)xValue minYValue:(double)yValue maxYValue:(double)maxYValue;
- (void)drawCorrelationInContext:(CGContext *)context;
- (void)drawDistributionInContext:(CGContext *)context;
- (void)drawRect:(CGRect)rect;
- (void)drawTextPanelWithNumberOfAssets:(int64_t)assets numberOfIgnoredAssets:(unint64_t)ignoredAssets rho:(double)rho inContext:(CGContext *)context;
- (void)drawXMean:(double)mean andStddev:(double)stddev inContext:(CGContext *)context;
- (void)drawYMean:(double)mean andStddev:(double)stddev inContext:(CGContext *)context;
- (void)enumerateAssetsUsingBlock:(id)block;
- (void)loadCorrelationData;
- (void)loadDistributionData;
- (void)panned:(id)panned;
- (void)pinched:(id)pinched;
- (void)reloadData;
- (void)startGestureAtLocation:(CGPoint)location;
- (void)updateGestureWithLocation:(CGPoint)location scale:(double)scale;
@end

@implementation _PXScoreLabGraphView

- (_PXScoreLabGraphViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)drawCorrelationInContext:(CGContext *)context
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = vcvtmd_u64_f64(self->_graphWidth);
  v5 = vcvtmd_u64_f64(self->_graphHeight);
  v69 = malloc_type_calloc(v5 * v4, 8uLL, 0x100004000313F17uLL);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v6 = self->_allXValues;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v75 objects:v79 count:16];
  v66 = v4;
  v67 = v5;
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = (v5 - 1);
    v11 = *v76;
    v12 = v4;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v76 != v11)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v75 + 1) + 8 * i) doubleValue];
        minXValue = self->_minXValue;
        if (v15 >= minXValue)
        {
          v17 = v15;
          maxXValue = self->_maxXValue;
          if (v15 <= maxXValue)
          {
            v19 = [(NSArray *)self->_allYValues objectAtIndexedSubscript:v9];
            [v19 doubleValue];
            minYValue = self->_minYValue;
            if (v20 >= minYValue)
            {
              maxYValue = self->_maxYValue;
              if (v20 <= maxYValue)
              {
                v23 = (v17 - minXValue) / (maxXValue - minXValue) * (v4 - 1);
                v24 = floor(v23);
                v25 = v23 - v24;
                v26 = (v20 - minYValue) / (maxYValue - minYValue) * v10;
                v27 = floor(v26);
                v28 = v26 - v27;
                v29 = (v24 + v27 * v12);
                v30 = v69[v29] + (1.0 - v25) * (1.0 - v28);
                v69[v29] = v30;
                if (v30 > v13)
                {
                  v13 = v30;
                }

                if (v25 > 0.0)
                {
                  v31 = (v24 + 1.0 + v27 * v12);
                  v32 = v69[v31] + v25 * (1.0 - v28);
                  v69[v31] = v32;
                  if (v32 > v13)
                  {
                    v13 = v32;
                  }
                }

                if (v28 > 0.0)
                {
                  v33 = v27 + 1.0;
                  v34 = (v24 + v33 * v12);
                  v35 = v69[v34] + (1.0 - v25) * v28;
                  v69[v34] = v35;
                  if (v35 > v13)
                  {
                    v13 = v35;
                  }

                  if (v25 > 0.0)
                  {
                    v36 = (v24 + 1.0 + v33 * v12);
                    v37 = v69[v36] + v25 * v28;
                    v69[v36] = v37;
                    if (v37 > v13)
                    {
                      v13 = v37;
                    }
                  }
                }
              }
            }
          }
        }

        ++v9;
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v8);
  }

  else
  {
    v13 = 0.0;
  }

  [(_PXScoreLabGraphView *)self drawAxisInContext:context minXValue:self->_minXValue maxXValue:self->_maxXValue minYValue:self->_minYValue maxYValue:self->_maxYValue];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v39 = v4;
  v40 = CGBitmapContextCreate(0, v4, v67, 8uLL, 0, DeviceRGB, 1u);
  CGColorSpaceRelease(DeviceRGB);
  Data = CGBitmapContextGetData(v40);
  context = v40;
  BytesPerRow = CGBitmapContextGetBytesPerRow(v40);
  if (v66)
  {
    v43 = 0;
    v44 = 4 * (BytesPerRow >> 2);
    v45 = v69;
    do
    {
      v46 = v45;
      v68 = Data;
      for (j = v67; j; --j)
      {
        v48 = *v46 / v13;
        v73 = 0.0;
        v74 = 0.0;
        v71 = 1.0;
        v72 = 0.0;
        if (v48 <= 0.0)
        {
          v50 = -16777216;
        }

        else
        {
          v49 = [MEMORY[0x1E69DC888] colorWithHue:(1.0 - v48) * 0.5 saturation:1.0 brightness:(v48 + 1.0) * 0.5 alpha:1.0];
          [v49 getRed:&v74 green:&v72 blue:&v73 alpha:&v71];

          v50 = ((v73 * 255.0) << 16) | ((v71 * 255.0) << 24) | ((v72 * 255.0) << 8) | (v74 * 255.0);
        }

        *Data = v50;
        Data = (Data + v44);
        v46 += v66;
      }

      ++v43;
      Data = v68 + 1;
      ++v45;
      v39 = v66;
    }

    while (v43 != v66);
  }

  Image = CGBitmapContextCreateImage(context);
  v81.origin.x = self->_leftMargin;
  v81.origin.y = self->_topMargin;
  v81.size.width = v39;
  v81.size.height = v67;
  CGContextDrawImage(context, v81, Image);
  CGImageRelease(Image);
  CGContextRelease(context);
  free(v69);
  [(_PXScoreLabGraphView *)self drawXMean:context andStddev:self->_Ex inContext:sqrt(self->_Ex2 - self->_Ex * self->_Ex)];
  [(_PXScoreLabGraphView *)self drawYMean:context andStddev:self->_Ey inContext:sqrt(self->_Ey2 - self->_Ey * self->_Ey)];
  v70 = [MEMORY[0x1E69DC888] colorWithHue:0.6 saturation:1.0 brightness:1.0 alpha:1.0];
  Components = CGColorGetComponents([v70 CGColor]);
  CGContextSetStrokeColor(context, Components);
  Ex = self->_Ex;
  Ey = self->_Ey;
  v55 = sqrt(self->_Ex2 - Ex * Ex);
  v56 = sqrt(self->_Ey2 - Ey * Ey);
  v57 = (self->_Exy - Ex * Ey) / (v55 * v56);
  [(_PXScoreLabGraphView *)self drawTextPanelWithNumberOfAssets:[(NSArray *)self->_allXValues count] numberOfIgnoredAssets:self->_numberOfIgnoredAssets rho:context inContext:v57];
  CGContextBeginPath(context);
  v58 = v56 * v57 / v55;
  v59 = self->_minXValue;
  CGContextMoveToPoint(context, self->_leftMargin + (v59 - v59) * self->_graphWidth / (self->_maxXValue - v59), self->_topMargin + self->_graphHeight * (1.0 - (self->_Ey + v58 * (v59 - self->_Ex) - self->_minYValue) / (self->_maxYValue - self->_minYValue)));
  v60 = self->_maxXValue;
  CGContextAddLineToPoint(context, self->_leftMargin + self->_graphWidth * (v60 - self->_minXValue) / (v60 - self->_minXValue), self->_topMargin + self->_graphHeight * (1.0 - (self->_Ey + v58 * (v60 - self->_Ex) - self->_minYValue) / (self->_maxYValue - self->_minYValue)));
  CGContextClosePath(context);
  CGContextDrawPath(context, kCGPathStroke);
  CGContextBeginPath(context);
  v61 = v55 * v57 / v56;
  v62 = self->_minYValue;
  CGContextMoveToPoint(context, self->_leftMargin + self->_graphWidth * (self->_Ex + v61 * (v62 - self->_Ey) - self->_minXValue) / (self->_maxXValue - self->_minXValue), self->_topMargin + self->_graphHeight * (1.0 - (v62 - v62) / (self->_maxYValue - v62)));
  v63 = self->_maxYValue;
  CGContextAddLineToPoint(context, self->_leftMargin + self->_graphWidth * (self->_Ex + v61 * (v63 - self->_Ey) - self->_minXValue) / (self->_maxXValue - self->_minXValue), self->_topMargin + self->_graphHeight * (1.0 - (v63 - self->_minYValue) / (v63 - self->_minYValue)));
  CGContextClosePath(context);
  CGContextDrawPath(context, kCGPathStroke);
}

- (void)drawDistributionInContext:(CGContext *)context
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = vcvtmd_u64_f64(self->_graphWidth);
  v6 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_allXValues;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v25 + 1) + 8 * i) doubleValue];
        minXValue = self->_minXValue;
        if (v13 >= minXValue)
        {
          maxXValue = self->_maxXValue;
          if (v13 <= maxXValue)
          {
            v16 = (v13 - minXValue) / (maxXValue - minXValue) * (v5 - 1);
            v17 = v16 - floor(v16);
            v18 = &v6[v16];
            v19 = 1.0 - v17 + *v18;
            *v18 = v19;
            if (v19 > v11)
            {
              v11 = v19;
            }

            if (v17 > 0.0)
            {
              v20 = v17 + v18[1];
              v18[1] = v20;
              if (v20 > v11)
              {
                v11 = v20;
              }
            }
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  self->_minYValue = 0.0;
  self->_maxYValue = v11;
  [(_PXScoreLabGraphView *)self drawAxisInContext:context minXValue:self->_minXValue maxXValue:self->_maxXValue minYValue:0.0 maxYValue:0.0];
  if (v5)
  {
    for (j = 0; j != v5; ++j)
    {
      CGContextBeginPath(context);
      v22 = self->_leftMargin + j;
      CGContextMoveToPoint(context, v22, self->_topMargin + self->_graphHeight);
      CGContextAddLineToPoint(context, v22, self->_topMargin + self->_graphHeight * (1.0 - (v6[j] - self->_minYValue) / (self->_maxYValue - self->_minYValue)));
      CGContextClosePath(context);
      v23 = [MEMORY[0x1E69DC888] colorWithHue:(1.0 - v6[j] / v11) * 0.5 saturation:1.0 brightness:(v6[j] / v11 + 1.0) * 0.5 alpha:1.0];
      Components = CGColorGetComponents([v23 CGColor]);
      CGContextSetStrokeColor(context, Components);
      CGContextDrawPath(context, kCGPathStroke);
    }
  }

  free(v6);
  [(_PXScoreLabGraphView *)self drawXMean:context andStddev:self->_Ex inContext:sqrt(self->_Ex2 - self->_Ex * self->_Ex)];
  [(_PXScoreLabGraphView *)self drawTextPanelWithNumberOfAssets:[(NSArray *)self->_allXValues count] numberOfIgnoredAssets:self->_numberOfIgnoredAssets rho:context inContext:-1.79769313e308];
}

- (void)drawTextPanelWithNumberOfAssets:(int64_t)assets numberOfIgnoredAssets:(unint64_t)ignoredAssets rho:(double)rho inContext:(CGContext *)context
{
  v32 = *MEMORY[0x1E69E9840];
  *components = xmmword_1A5381E18;
  v31 = unk_1A5381E28;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 1.0);
  CGContextSetTextDrawingMode(context, kCGTextStroke);
  CGAffineTransformMakeScale(&v27, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v27);
  v11 = self->_leftMargin + 20.0;
  v12 = self->_topMargin + 20.0;
  v28 = *MEMORY[0x1E69DB648];
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB988]];
  v29 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  if ((assets & 0x8000000000000000) == 0)
  {
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    assets = [MEMORY[0x1E696AEC0] stringWithFormat:@"N=%lu", assets];
    v17 = [v15 initWithString:assets attributes:v14];
    v18 = CTLineCreateWithAttributedString(v17);

    CGContextSetTextPosition(context, v11, v12);
    CTLineDraw(v18, context);
    CFRelease(v18);
    v12 = v12 + 12.0;
  }

  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
  ignoredAssets = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ñ=%lu", ignoredAssets];
  v21 = [v19 initWithString:ignoredAssets attributes:v14];
  v22 = CTLineCreateWithAttributedString(v21);

  CGContextSetTextPosition(context, v11, v12);
  CTLineDraw(v22, context);
  CFRelease(v22);
  if (rho > -1.79769313e308)
  {
    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"R²=%.3f", rho * rho];
    v25 = [v23 initWithString:v24 attributes:v14];
    v26 = CTLineCreateWithAttributedString(v25);

    CGContextSetTextPosition(context, v11, v12 + 12.0);
    CTLineDraw(v26, context);
    CFRelease(v26);
  }
}

- (void)drawYMean:(double)mean andStddev:(double)stddev inContext:(CGContext *)context
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DC888] colorWithHue:0.6 saturation:1.0 brightness:1.0 alpha:1.0];
  v10 = CGColorGetComponents([v9 CGColor]);
  CGContextSetStrokeColor(context, v10);
  CGContextBeginPath(context);
  v11 = self->_leftMargin + self->_graphWidth + 6.0;
  v12 = self->_topMargin + self->_graphHeight * (1.0 - (mean - self->_minYValue) / (self->_maxYValue - self->_minYValue));
  CGContextMoveToPoint(context, v11 + -6.0, v12);
  CGContextAddLineToPoint(context, v11 + 6.0, v12);
  v13 = self->_topMargin + self->_graphHeight * (1.0 - (mean - stddev - self->_minYValue) / (self->_maxYValue - self->_minYValue));
  CGContextMoveToPoint(context, v11 + 3.0, v13);
  CGContextAddLineToPoint(context, v11 + -3.0, v13);
  v14 = self->_topMargin + self->_graphHeight * (1.0 - (mean + stddev - self->_minYValue) / (self->_maxYValue - self->_minYValue));
  CGContextMoveToPoint(context, v11 + 3.0, v14);
  CGContextAddLineToPoint(context, v11 + -3.0, v14);
  CGContextMoveToPoint(context, v11, v13);
  CGContextAddLineToPoint(context, v11, v14);
  CGContextClosePath(context);
  CGContextDrawPath(context, kCGPathStroke);
  *components = xmmword_1A5381E18;
  v31 = unk_1A5381E28;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 1.0);
  CGContextSetTextDrawingMode(context, kCGTextStroke);
  CGAffineTransformMakeScale(&v27, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v27);
  memset(&v27, 0, sizeof(v27));
  CGContextGetCTM(&v27, context);
  v25 = v27;
  CGAffineTransformRotate(&v26, &v25, 1.57079633);
  CGContextSetCTM();
  v28 = *MEMORY[0x1E69DB648];
  v15 = [MEMORY[0x1E69DB878] systemFontOfSize:8.0 weight:*MEMORY[0x1E69DB998]];
  v29 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&mean];
  v19 = [v17 initWithString:v18 attributes:v16];
  v20 = CTLineCreateWithAttributedString(v19);

  ImageBounds = CTLineGetImageBounds(v20, context);
  CGContextSetTextPosition(context, v12 + ImageBounds.size.width * -0.5, -(v11 - ImageBounds.size.height + -6.0));
  CTLineDraw(v20, context);
  CFRelease(v20);
  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&stddev];
  v23 = [v21 initWithString:v22 attributes:v16];
  v24 = CTLineCreateWithAttributedString(v23);

  v34 = CTLineGetImageBounds(v24, context);
  CGContextSetTextPosition(context, v34.size.width * -0.5 + (v12 + v13) * 0.5, -(v11 - v34.size.height + -6.0));
  CTLineDraw(v24, context);
  CFRelease(v24);
  v26 = v27;
  CGContextSetCTM();
}

- (void)drawXMean:(double)mean andStddev:(double)stddev inContext:(CGContext *)context
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DC888] colorWithHue:0.6 saturation:1.0 brightness:1.0 alpha:1.0];
  v10 = CGColorGetComponents([v9 CGColor]);
  CGContextSetStrokeColor(context, v10);
  CGContextBeginPath(context);
  v11 = self->_leftMargin + self->_graphWidth * (mean - self->_minXValue) / (self->_maxXValue - self->_minXValue);
  v12 = self->_topMargin + -6.0;
  CGContextMoveToPoint(context, v11, v12 + -6.0);
  CGContextAddLineToPoint(context, v11, v12 + 6.0);
  v13 = self->_leftMargin + self->_graphWidth * (mean - stddev - self->_minXValue) / (self->_maxXValue - self->_minXValue);
  CGContextMoveToPoint(context, v13, v12 + -3.0);
  CGContextAddLineToPoint(context, v13, v12 + 3.0);
  v14 = self->_leftMargin + self->_graphWidth * (mean + stddev - self->_minXValue) / (self->_maxXValue - self->_minXValue);
  CGContextMoveToPoint(context, v14, v12 + -3.0);
  CGContextAddLineToPoint(context, v14, v12 + 3.0);
  CGContextMoveToPoint(context, v13, v12);
  CGContextAddLineToPoint(context, v14, v12);
  CGContextClosePath(context);
  CGContextDrawPath(context, kCGPathStroke);
  *components = xmmword_1A5381E18;
  v29 = unk_1A5381E28;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 1.0);
  CGContextSetTextDrawingMode(context, kCGTextStroke);
  CGAffineTransformMakeScale(&v25, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v25);
  v26 = *MEMORY[0x1E69DB648];
  v15 = [MEMORY[0x1E69DB878] systemFontOfSize:8.0 weight:*MEMORY[0x1E69DB998]];
  v27 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&mean];
  v19 = [v17 initWithString:v18 attributes:v16];
  v20 = CTLineCreateWithAttributedString(v19);

  ImageBounds = CTLineGetImageBounds(v20, context);
  CGContextSetTextPosition(context, v11 + ImageBounds.size.width * -0.5, v12 + ImageBounds.size.height + 6.0);
  CTLineDraw(v20, context);
  CFRelease(v20);
  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&stddev];
  v23 = [v21 initWithString:v22 attributes:v16];
  v24 = CTLineCreateWithAttributedString(v23);

  v32 = CTLineGetImageBounds(v24, context);
  CGContextSetTextPosition(context, v14, v12 + v32.size.height + 6.0);
  CTLineDraw(v24, context);
  CFRelease(v24);
}

- (void)drawAxisInContext:(CGContext *)context minXValue:(double)value maxXValue:(double)xValue minYValue:(double)yValue maxYValue:(double)maxYValue
{
  v32 = *MEMORY[0x1E69E9840];
  *components = xmmword_1A5381E18;
  v31 = unk_1A5381E28;
  CGContextSetStrokeColor(context, components);
  CGContextSetLineWidth(context, 1.0);
  CGContextSetTextDrawingMode(context, kCGTextStroke);
  CGAffineTransformMakeScale(&v27, 1.0, -1.0);
  CGContextSetTextMatrix(context, &v27);
  v28 = *MEMORY[0x1E69DB648];
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:5.0 weight:*MEMORY[0x1E69DB998]];
  v29 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  if (value < xValue)
  {
    do
    {
      CGContextBeginPath(context);
      v14 = self->_leftMargin + self->_graphWidth * (value - self->_minXValue) / (self->_maxXValue - self->_minXValue);
      v15 = self->_topMargin + self->_graphHeight;
      CGContextMoveToPoint(context, v14, v15);
      CGContextAddLineToPoint(context, v14, v15 + 4.0);
      CGContextClosePath(context);
      CGContextDrawPath(context, kCGPathStroke);
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&value];
      v18 = [v16 initWithString:v17 attributes:v13];
      v19 = CTLineCreateWithAttributedString(v18);

      ImageBounds = CTLineGetImageBounds(v19, context);
      CGContextSetTextPosition(context, v14 + ImageBounds.size.width * -0.5, v15 + ImageBounds.size.height + 6.0);
      CTLineDraw(v19, context);
      CFRelease(v19);
      value = value + 0.25;
    }

    while (value <= xValue);
  }

  if (yValue < maxYValue)
  {
    do
    {
      CGContextBeginPath(context);
      leftMargin = self->_leftMargin;
      v21 = self->_topMargin + self->_graphHeight * (1.0 - (yValue - self->_minYValue) / (self->_maxYValue - self->_minYValue));
      CGContextMoveToPoint(context, leftMargin + -4.0, v21);
      CGContextAddLineToPoint(context, leftMargin, v21);
      CGContextClosePath(context);
      CGContextDrawPath(context, kCGPathStroke);
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&yValue];
      v24 = [v22 initWithString:v23 attributes:v13];
      v25 = CTLineCreateWithAttributedString(v24);

      v34 = CTLineGetImageBounds(v25, context);
      CGContextSetTextPosition(context, leftMargin + -6.0 - v34.size.width, v21 + v34.size.height * 0.5);
      CTLineDraw(v25, context);
      CFRelease(v25);
      yValue = yValue + 0.25;
    }

    while (yValue <= maxYValue);
  }
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *MEMORY[0x1E69E9840];
  CurrentContext = UIGraphicsGetCurrentContext();
  v12[0] = xmmword_1A5381DF8;
  v12[1] = unk_1A5381E08;
  CGContextSetFillColor(CurrentContext, v12);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  CGContextFillRect(CurrentContext, v14);
  [(_PXScoreLabGraphView *)self bounds];
  self->_graphWidth = v9 - self->_leftMargin - self->_rightMargin;
  [(_PXScoreLabGraphView *)self bounds];
  self->_graphHeight = v10 - self->_topMargin - self->_bottomMargin;
  graphType = self->_graphType;
  if (graphType >= 2)
  {
    if (graphType == 2)
    {
      [(_PXScoreLabGraphView *)self drawCorrelationInContext:CurrentContext];
    }
  }

  else
  {
    [(_PXScoreLabGraphView *)self drawDistributionInContext:CurrentContext];
  }
}

- (void)loadCorrelationData
{
  self->_minXValue = 1.79769313e308;
  self->_maxXValue = -1.79769313e308;
  self->_minYValue = 1.79769313e308;
  self->_maxYValue = -1.79769313e308;
  self->_Ex = 0.0;
  self->_Ex2 = 0.0;
  self->_Ey = 0.0;
  self->_Ey2 = 0.0;
  self->_Exy = 0.0;
  self->_numberOfIgnoredAssets = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __43___PXScoreLabGraphView_loadCorrelationData__block_invoke;
  v14[3] = &unk_1E773B4F8;
  v14[4] = self;
  v5 = v3;
  v15 = v5;
  v6 = v4;
  v16 = v6;
  [(_PXScoreLabGraphView *)self enumerateAssetsUsingBlock:v14];
  objc_storeStrong(&self->_allXValues, v3);
  allYValues = self->_allYValues;
  self->_allYValues = v6;
  v8 = v6;

  self->_minXValue = floor(self->_minXValue * 4.0) * 0.25;
  v9 = ceil(self->_maxXValue * 4.0) * 0.25;
  self->_maxXValue = v9;
  minXValue = self->_minXValue;
  if (minXValue == v9)
  {
    self->_minXValue = minXValue + -0.1;
    self->_maxXValue = self->_maxXValue + 0.1;
  }

  self->_minYValue = floor(self->_minYValue * 4.0) * 0.25;
  v11 = ceil(self->_maxYValue * 4.0) * 0.25;
  self->_maxYValue = v11;
  minYValue = self->_minYValue;
  if (minYValue == v11)
  {
    self->_minYValue = minYValue + -0.1;
    self->_maxYValue = self->_maxYValue + 0.1;
  }

  self->_baseMinXValue = self->_minXValue;
  self->_baseMaxXValue = self->_maxXValue;
  self->_baseMinYValue = self->_minYValue;
  self->_baseMaxYValue = self->_maxYValue;
  self->_Ex = self->_Ex / [v5 count];
  self->_Ex2 = self->_Ex2 / [v5 count];
  *(&self->super.super.super.isa + v13) = *(&self->super.super.super.isa + v13) / [v5 count];
  self->_Ey2 = self->_Ey2 / [v5 count];
  self->_Exy = self->_Exy / [v5 count];
}

- (void)loadDistributionData
{
  self->_minXValue = 1.79769313e308;
  self->_maxXValue = -1.79769313e308;
  self->_Ex = 0.0;
  self->_Ex2 = 0.0;
  if (self->_graphType)
  {
    v3 = &OBJC_IVAR____PXScoreLabGraphView__yScoreValueGetter;
  }

  else
  {
    v3 = &OBJC_IVAR____PXScoreLabGraphView__xScoreValueGetter;
  }

  v4 = _Block_copy(*(&self->super.super.super.isa + *v3));
  self->_numberOfIgnoredAssets = 0;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44___PXScoreLabGraphView_loadDistributionData__block_invoke;
  v12[3] = &unk_1E773B4D0;
  v6 = v4;
  v14 = v6;
  v12[4] = self;
  v7 = v5;
  v13 = v7;
  [(_PXScoreLabGraphView *)self enumerateAssetsUsingBlock:v12];
  allXValues = self->_allXValues;
  self->_allXValues = v7;
  v9 = v7;

  self->_minXValue = floor(self->_minXValue * 4.0) * 0.25;
  v10 = ceil(self->_maxXValue * 4.0) * 0.25;
  self->_maxXValue = v10;
  minXValue = self->_minXValue;
  if (minXValue == v10)
  {
    self->_minXValue = minXValue + -0.1;
    self->_maxXValue = self->_maxXValue + 0.1;
    minXValue = self->_minXValue;
  }

  self->_baseMinXValue = minXValue;
  self->_baseMaxXValue = self->_maxXValue;
  self->_Ex = self->_Ex / [(NSArray *)v9 count];
  self->_Ex2 = self->_Ex2 / [(NSArray *)v9 count];
}

- (void)reloadData
{
  objc_initWeak(&location, self);
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34___PXScoreLabGraphView_reloadData__block_invoke;
  v4[3] = &unk_1E774C318;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)enumerateAssetsUsingBlock:(id)block
{
  v33[3] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setChunkSizeForFetch:1000];
  v7 = *MEMORY[0x1E6978C90];
  v33[0] = *MEMORY[0x1E6978BE0];
  v33[1] = v7;
  v33[2] = *MEMORY[0x1E6978CF0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v8];

  assetPredicate = [(_PXScoreLabGraphView *)self assetPredicate];
  [librarySpecificFetchOptions setPredicate:assetPredicate];

  v26 = librarySpecificFetchOptions;
  v10 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v11 = [v10 count];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v29;
    v17 = v11;
    v18 = 0.0;
    v19 = 0.0;
    do
    {
      v20 = 0;
      v21 = v15 + 1;
      do
      {
        v15 = v21;
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v28 + 1) + 8 * v20);
        v23 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v22);
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v19 > 1.0 || v15 / v17 - v18 >= 1.0 || v15 - v14 >= 0x64)
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          [WeakRetained scoreLabGraphView:self reloadProgressed:v15 / v17];

          v14 = v15;
          v18 = v15 / v17;
          v19 = Current;
        }

        objc_autoreleasePoolPop(v23);
        ++v20;
        v21 = v15 + 1;
      }

      while (v13 != v20);
      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }
}

- (void)pinched:(id)pinched
{
  pinchedCopy = pinched;
  state = [pinchedCopy state];
  if (state == 4)
  {
    [(_PXScoreLabGraphView *)self cancelGesture];
    goto LABEL_8;
  }

  if (state == 2)
  {
    [pinchedCopy locationInView:self];
    v8 = v7;
    v10 = v9;
    [pinchedCopy scale];
    [(_PXScoreLabGraphView *)self updateGestureWithLocation:v8 scale:v10, v11];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = pinchedCopy;
  if (v5)
  {
    [pinchedCopy locationInView:self];
    [(_PXScoreLabGraphView *)self startGestureAtLocation:?];
LABEL_8:
    v6 = pinchedCopy;
  }
}

- (void)panned:(id)panned
{
  pannedCopy = panned;
  state = [pannedCopy state];
  if (state == 4)
  {
    [(_PXScoreLabGraphView *)self cancelGesture];
    goto LABEL_8;
  }

  if (state == 2)
  {
    [pannedCopy locationInView:self];
    [_PXScoreLabGraphView updateGestureWithLocation:"updateGestureWithLocation:scale:" scale:?];
    goto LABEL_8;
  }

  v5 = state == 1;
  v6 = pannedCopy;
  if (v5)
  {
    [pannedCopy locationInView:self];
    [(_PXScoreLabGraphView *)self startGestureAtLocation:?];
LABEL_8:
    v6 = pannedCopy;
  }
}

- (void)updateGestureWithLocation:(CGPoint)location scale:(double)scale
{
  minXValueAtBeginningOfGesture = self->_minXValueAtBeginningOfGesture;
  v5 = self->_maxXValueAtBeginningOfGesture - minXValueAtBeginningOfGesture;
  leftMargin = self->_leftMargin;
  graphWidth = self->_graphWidth;
  v8 = minXValueAtBeginningOfGesture + v5 * (self->_locationAtBeginningOfGesture.x - leftMargin) / graphWidth;
  minYValueAtBeginningOfGesture = self->_minYValueAtBeginningOfGesture;
  v10 = self->_maxYValueAtBeginningOfGesture - minYValueAtBeginningOfGesture;
  v11 = 1.0 - (self->_locationAtBeginningOfGesture.y - self->_topMargin) / self->_graphHeight;
  v12 = self->_baseMaxXValue - self->_baseMinXValue;
  v13 = v5 / v12;
  v14 = v5 / scale <= v12;
  if (v5 / scale <= v12)
  {
    v15 = v5 / scale;
  }

  else
  {
    v15 = self->_baseMaxXValue - self->_baseMinXValue;
  }

  if (v14)
  {
    scaleCopy = scale;
  }

  else
  {
    scaleCopy = v13;
  }

  v17 = v8 - (location.x - leftMargin) * v15 / graphWidth;
  self->_minXValue = v17;
  baseMinXValue = self->_baseMinXValue;
  if (v17 < baseMinXValue)
  {
    self->_minXValue = baseMinXValue;
    v17 = baseMinXValue;
  }

  v19 = minYValueAtBeginningOfGesture + v10 * v11;
  v20 = v10 / scaleCopy;
  self->_maxXValue = v15 + v17;
  baseMaxXValue = self->_baseMaxXValue;
  if (v15 + v17 > baseMaxXValue)
  {
    self->_maxXValue = baseMaxXValue;
    self->_minXValue = baseMaxXValue - v15;
  }

  v22 = v19 - v20 * (1.0 - (location.y - self->_topMargin) / self->_graphHeight);
  self->_minYValue = v22;
  baseMinYValue = self->_baseMinYValue;
  if (v22 < baseMinYValue)
  {
    self->_minYValue = baseMinYValue;
    v22 = baseMinYValue;
  }

  v24 = v20 + v22;
  self->_maxYValue = v20 + v22;
  baseMaxYValue = self->_baseMaxYValue;
  if (v24 > baseMaxYValue)
  {
    self->_maxYValue = baseMaxYValue;
    self->_minYValue = baseMaxYValue - v20;
  }

  [(_PXScoreLabGraphView *)self setNeedsDisplay];
}

- (void)cancelGesture
{
  self->_minXValue = self->_minXValueAtBeginningOfGesture;
  self->_maxXValue = self->_maxXValueAtBeginningOfGesture;
  self->_minYValue = self->_minYValueAtBeginningOfGesture;
  self->_maxYValue = self->_maxYValueAtBeginningOfGesture;
}

- (void)startGestureAtLocation:(CGPoint)location
{
  self->_locationAtBeginningOfGesture = location;
  self->_minXValueAtBeginningOfGesture = self->_minXValue;
  self->_maxXValueAtBeginningOfGesture = self->_maxXValue;
  self->_minYValueAtBeginningOfGesture = self->_minYValue;
  self->_maxYValueAtBeginningOfGesture = self->_maxYValue;
}

- (_PXScoreLabGraphView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = _PXScoreLabGraphView;
  v3 = [(_PXScoreLabGraphView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_leftMargin = 20.0;
    v3->_rightMargin = 20.0;
    v3->_topMargin = 20.0;
    v3->_bottomMargin = 20.0;
    v5 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel_panned_];
    [(_PXScoreLabGraphView *)v4 addGestureRecognizer:v5];
    v6 = [objc_alloc(MEMORY[0x1E69DCD80]) initWithTarget:v4 action:sel_pinched_];
    [(_PXScoreLabGraphView *)v4 addGestureRecognizer:v6];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create("com.apple.scoreLabGraphViewReloadQueue", v8);
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v9;
  }

  return v4;
}

@end