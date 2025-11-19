@interface _PXScoreLabGraphView
- (_PXScoreLabGraphView)initWithFrame:(CGRect)a3;
- (_PXScoreLabGraphViewDelegate)delegate;
- (void)cancelGesture;
- (void)drawAxisInContext:(CGContext *)a3 minXValue:(double)a4 maxXValue:(double)a5 minYValue:(double)a6 maxYValue:(double)a7;
- (void)drawCorrelationInContext:(CGContext *)a3;
- (void)drawDistributionInContext:(CGContext *)a3;
- (void)drawRect:(CGRect)a3;
- (void)drawTextPanelWithNumberOfAssets:(int64_t)a3 numberOfIgnoredAssets:(unint64_t)a4 rho:(double)a5 inContext:(CGContext *)a6;
- (void)drawXMean:(double)a3 andStddev:(double)a4 inContext:(CGContext *)a5;
- (void)drawYMean:(double)a3 andStddev:(double)a4 inContext:(CGContext *)a5;
- (void)enumerateAssetsUsingBlock:(id)a3;
- (void)loadCorrelationData;
- (void)loadDistributionData;
- (void)panned:(id)a3;
- (void)pinched:(id)a3;
- (void)reloadData;
- (void)startGestureAtLocation:(CGPoint)a3;
- (void)updateGestureWithLocation:(CGPoint)a3 scale:(double)a4;
@end

@implementation _PXScoreLabGraphView

- (_PXScoreLabGraphViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)drawCorrelationInContext:(CGContext *)a3
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

  [(_PXScoreLabGraphView *)self drawAxisInContext:a3 minXValue:self->_minXValue maxXValue:self->_maxXValue minYValue:self->_minYValue maxYValue:self->_maxYValue];
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
  CGContextDrawImage(a3, v81, Image);
  CGImageRelease(Image);
  CGContextRelease(context);
  free(v69);
  [(_PXScoreLabGraphView *)self drawXMean:a3 andStddev:self->_Ex inContext:sqrt(self->_Ex2 - self->_Ex * self->_Ex)];
  [(_PXScoreLabGraphView *)self drawYMean:a3 andStddev:self->_Ey inContext:sqrt(self->_Ey2 - self->_Ey * self->_Ey)];
  v70 = [MEMORY[0x1E69DC888] colorWithHue:0.6 saturation:1.0 brightness:1.0 alpha:1.0];
  Components = CGColorGetComponents([v70 CGColor]);
  CGContextSetStrokeColor(a3, Components);
  Ex = self->_Ex;
  Ey = self->_Ey;
  v55 = sqrt(self->_Ex2 - Ex * Ex);
  v56 = sqrt(self->_Ey2 - Ey * Ey);
  v57 = (self->_Exy - Ex * Ey) / (v55 * v56);
  [(_PXScoreLabGraphView *)self drawTextPanelWithNumberOfAssets:[(NSArray *)self->_allXValues count] numberOfIgnoredAssets:self->_numberOfIgnoredAssets rho:a3 inContext:v57];
  CGContextBeginPath(a3);
  v58 = v56 * v57 / v55;
  v59 = self->_minXValue;
  CGContextMoveToPoint(a3, self->_leftMargin + (v59 - v59) * self->_graphWidth / (self->_maxXValue - v59), self->_topMargin + self->_graphHeight * (1.0 - (self->_Ey + v58 * (v59 - self->_Ex) - self->_minYValue) / (self->_maxYValue - self->_minYValue)));
  v60 = self->_maxXValue;
  CGContextAddLineToPoint(a3, self->_leftMargin + self->_graphWidth * (v60 - self->_minXValue) / (v60 - self->_minXValue), self->_topMargin + self->_graphHeight * (1.0 - (self->_Ey + v58 * (v60 - self->_Ex) - self->_minYValue) / (self->_maxYValue - self->_minYValue)));
  CGContextClosePath(a3);
  CGContextDrawPath(a3, kCGPathStroke);
  CGContextBeginPath(a3);
  v61 = v55 * v57 / v56;
  v62 = self->_minYValue;
  CGContextMoveToPoint(a3, self->_leftMargin + self->_graphWidth * (self->_Ex + v61 * (v62 - self->_Ey) - self->_minXValue) / (self->_maxXValue - self->_minXValue), self->_topMargin + self->_graphHeight * (1.0 - (v62 - v62) / (self->_maxYValue - v62)));
  v63 = self->_maxYValue;
  CGContextAddLineToPoint(a3, self->_leftMargin + self->_graphWidth * (self->_Ex + v61 * (v63 - self->_Ey) - self->_minXValue) / (self->_maxXValue - self->_minXValue), self->_topMargin + self->_graphHeight * (1.0 - (v63 - self->_minYValue) / (v63 - self->_minYValue)));
  CGContextClosePath(a3);
  CGContextDrawPath(a3, kCGPathStroke);
}

- (void)drawDistributionInContext:(CGContext *)a3
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
  [(_PXScoreLabGraphView *)self drawAxisInContext:a3 minXValue:self->_minXValue maxXValue:self->_maxXValue minYValue:0.0 maxYValue:0.0];
  if (v5)
  {
    for (j = 0; j != v5; ++j)
    {
      CGContextBeginPath(a3);
      v22 = self->_leftMargin + j;
      CGContextMoveToPoint(a3, v22, self->_topMargin + self->_graphHeight);
      CGContextAddLineToPoint(a3, v22, self->_topMargin + self->_graphHeight * (1.0 - (v6[j] - self->_minYValue) / (self->_maxYValue - self->_minYValue)));
      CGContextClosePath(a3);
      v23 = [MEMORY[0x1E69DC888] colorWithHue:(1.0 - v6[j] / v11) * 0.5 saturation:1.0 brightness:(v6[j] / v11 + 1.0) * 0.5 alpha:1.0];
      Components = CGColorGetComponents([v23 CGColor]);
      CGContextSetStrokeColor(a3, Components);
      CGContextDrawPath(a3, kCGPathStroke);
    }
  }

  free(v6);
  [(_PXScoreLabGraphView *)self drawXMean:a3 andStddev:self->_Ex inContext:sqrt(self->_Ex2 - self->_Ex * self->_Ex)];
  [(_PXScoreLabGraphView *)self drawTextPanelWithNumberOfAssets:[(NSArray *)self->_allXValues count] numberOfIgnoredAssets:self->_numberOfIgnoredAssets rho:a3 inContext:-1.79769313e308];
}

- (void)drawTextPanelWithNumberOfAssets:(int64_t)a3 numberOfIgnoredAssets:(unint64_t)a4 rho:(double)a5 inContext:(CGContext *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  *components = xmmword_1A5381E18;
  v31 = unk_1A5381E28;
  CGContextSetStrokeColor(a6, components);
  CGContextSetLineWidth(a6, 1.0);
  CGContextSetTextDrawingMode(a6, kCGTextStroke);
  CGAffineTransformMakeScale(&v27, 1.0, -1.0);
  CGContextSetTextMatrix(a6, &v27);
  v11 = self->_leftMargin + 20.0;
  v12 = self->_topMargin + 20.0;
  v28 = *MEMORY[0x1E69DB648];
  v13 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB988]];
  v29 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = objc_alloc(MEMORY[0x1E696AAB0]);
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"N=%lu", a3];
    v17 = [v15 initWithString:v16 attributes:v14];
    v18 = CTLineCreateWithAttributedString(v17);

    CGContextSetTextPosition(a6, v11, v12);
    CTLineDraw(v18, a6);
    CFRelease(v18);
    v12 = v12 + 12.0;
  }

  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Ñ=%lu", a4];
  v21 = [v19 initWithString:v20 attributes:v14];
  v22 = CTLineCreateWithAttributedString(v21);

  CGContextSetTextPosition(a6, v11, v12);
  CTLineDraw(v22, a6);
  CFRelease(v22);
  if (a5 > -1.79769313e308)
  {
    v23 = objc_alloc(MEMORY[0x1E696AAB0]);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"R²=%.3f", a5 * a5];
    v25 = [v23 initWithString:v24 attributes:v14];
    v26 = CTLineCreateWithAttributedString(v25);

    CGContextSetTextPosition(a6, v11, v12 + 12.0);
    CTLineDraw(v26, a6);
    CFRelease(v26);
  }
}

- (void)drawYMean:(double)a3 andStddev:(double)a4 inContext:(CGContext *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DC888] colorWithHue:0.6 saturation:1.0 brightness:1.0 alpha:1.0];
  v10 = CGColorGetComponents([v9 CGColor]);
  CGContextSetStrokeColor(a5, v10);
  CGContextBeginPath(a5);
  v11 = self->_leftMargin + self->_graphWidth + 6.0;
  v12 = self->_topMargin + self->_graphHeight * (1.0 - (a3 - self->_minYValue) / (self->_maxYValue - self->_minYValue));
  CGContextMoveToPoint(a5, v11 + -6.0, v12);
  CGContextAddLineToPoint(a5, v11 + 6.0, v12);
  v13 = self->_topMargin + self->_graphHeight * (1.0 - (a3 - a4 - self->_minYValue) / (self->_maxYValue - self->_minYValue));
  CGContextMoveToPoint(a5, v11 + 3.0, v13);
  CGContextAddLineToPoint(a5, v11 + -3.0, v13);
  v14 = self->_topMargin + self->_graphHeight * (1.0 - (a3 + a4 - self->_minYValue) / (self->_maxYValue - self->_minYValue));
  CGContextMoveToPoint(a5, v11 + 3.0, v14);
  CGContextAddLineToPoint(a5, v11 + -3.0, v14);
  CGContextMoveToPoint(a5, v11, v13);
  CGContextAddLineToPoint(a5, v11, v14);
  CGContextClosePath(a5);
  CGContextDrawPath(a5, kCGPathStroke);
  *components = xmmword_1A5381E18;
  v31 = unk_1A5381E28;
  CGContextSetStrokeColor(a5, components);
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetTextDrawingMode(a5, kCGTextStroke);
  CGAffineTransformMakeScale(&v27, 1.0, -1.0);
  CGContextSetTextMatrix(a5, &v27);
  memset(&v27, 0, sizeof(v27));
  CGContextGetCTM(&v27, a5);
  v25 = v27;
  CGAffineTransformRotate(&v26, &v25, 1.57079633);
  CGContextSetCTM();
  v28 = *MEMORY[0x1E69DB648];
  v15 = [MEMORY[0x1E69DB878] systemFontOfSize:8.0 weight:*MEMORY[0x1E69DB998]];
  v29 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&a3];
  v19 = [v17 initWithString:v18 attributes:v16];
  v20 = CTLineCreateWithAttributedString(v19);

  ImageBounds = CTLineGetImageBounds(v20, a5);
  CGContextSetTextPosition(a5, v12 + ImageBounds.size.width * -0.5, -(v11 - ImageBounds.size.height + -6.0));
  CTLineDraw(v20, a5);
  CFRelease(v20);
  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&a4];
  v23 = [v21 initWithString:v22 attributes:v16];
  v24 = CTLineCreateWithAttributedString(v23);

  v34 = CTLineGetImageBounds(v24, a5);
  CGContextSetTextPosition(a5, v34.size.width * -0.5 + (v12 + v13) * 0.5, -(v11 - v34.size.height + -6.0));
  CTLineDraw(v24, a5);
  CFRelease(v24);
  v26 = v27;
  CGContextSetCTM();
}

- (void)drawXMean:(double)a3 andStddev:(double)a4 inContext:(CGContext *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E69DC888] colorWithHue:0.6 saturation:1.0 brightness:1.0 alpha:1.0];
  v10 = CGColorGetComponents([v9 CGColor]);
  CGContextSetStrokeColor(a5, v10);
  CGContextBeginPath(a5);
  v11 = self->_leftMargin + self->_graphWidth * (a3 - self->_minXValue) / (self->_maxXValue - self->_minXValue);
  v12 = self->_topMargin + -6.0;
  CGContextMoveToPoint(a5, v11, v12 + -6.0);
  CGContextAddLineToPoint(a5, v11, v12 + 6.0);
  v13 = self->_leftMargin + self->_graphWidth * (a3 - a4 - self->_minXValue) / (self->_maxXValue - self->_minXValue);
  CGContextMoveToPoint(a5, v13, v12 + -3.0);
  CGContextAddLineToPoint(a5, v13, v12 + 3.0);
  v14 = self->_leftMargin + self->_graphWidth * (a3 + a4 - self->_minXValue) / (self->_maxXValue - self->_minXValue);
  CGContextMoveToPoint(a5, v14, v12 + -3.0);
  CGContextAddLineToPoint(a5, v14, v12 + 3.0);
  CGContextMoveToPoint(a5, v13, v12);
  CGContextAddLineToPoint(a5, v14, v12);
  CGContextClosePath(a5);
  CGContextDrawPath(a5, kCGPathStroke);
  *components = xmmword_1A5381E18;
  v29 = unk_1A5381E28;
  CGContextSetStrokeColor(a5, components);
  CGContextSetLineWidth(a5, 1.0);
  CGContextSetTextDrawingMode(a5, kCGTextStroke);
  CGAffineTransformMakeScale(&v25, 1.0, -1.0);
  CGContextSetTextMatrix(a5, &v25);
  v26 = *MEMORY[0x1E69DB648];
  v15 = [MEMORY[0x1E69DB878] systemFontOfSize:8.0 weight:*MEMORY[0x1E69DB998]];
  v27 = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

  v17 = objc_alloc(MEMORY[0x1E696AAB0]);
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&a3];
  v19 = [v17 initWithString:v18 attributes:v16];
  v20 = CTLineCreateWithAttributedString(v19);

  ImageBounds = CTLineGetImageBounds(v20, a5);
  CGContextSetTextPosition(a5, v11 + ImageBounds.size.width * -0.5, v12 + ImageBounds.size.height + 6.0);
  CTLineDraw(v20, a5);
  CFRelease(v20);
  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&a4];
  v23 = [v21 initWithString:v22 attributes:v16];
  v24 = CTLineCreateWithAttributedString(v23);

  v32 = CTLineGetImageBounds(v24, a5);
  CGContextSetTextPosition(a5, v14, v12 + v32.size.height + 6.0);
  CTLineDraw(v24, a5);
  CFRelease(v24);
}

- (void)drawAxisInContext:(CGContext *)a3 minXValue:(double)a4 maxXValue:(double)a5 minYValue:(double)a6 maxYValue:(double)a7
{
  v32 = *MEMORY[0x1E69E9840];
  *components = xmmword_1A5381E18;
  v31 = unk_1A5381E28;
  CGContextSetStrokeColor(a3, components);
  CGContextSetLineWidth(a3, 1.0);
  CGContextSetTextDrawingMode(a3, kCGTextStroke);
  CGAffineTransformMakeScale(&v27, 1.0, -1.0);
  CGContextSetTextMatrix(a3, &v27);
  v28 = *MEMORY[0x1E69DB648];
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:5.0 weight:*MEMORY[0x1E69DB998]];
  v29 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

  if (a4 < a5)
  {
    do
    {
      CGContextBeginPath(a3);
      v14 = self->_leftMargin + self->_graphWidth * (a4 - self->_minXValue) / (self->_maxXValue - self->_minXValue);
      v15 = self->_topMargin + self->_graphHeight;
      CGContextMoveToPoint(a3, v14, v15);
      CGContextAddLineToPoint(a3, v14, v15 + 4.0);
      CGContextClosePath(a3);
      CGContextDrawPath(a3, kCGPathStroke);
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&a4];
      v18 = [v16 initWithString:v17 attributes:v13];
      v19 = CTLineCreateWithAttributedString(v18);

      ImageBounds = CTLineGetImageBounds(v19, a3);
      CGContextSetTextPosition(a3, v14 + ImageBounds.size.width * -0.5, v15 + ImageBounds.size.height + 6.0);
      CTLineDraw(v19, a3);
      CFRelease(v19);
      a4 = a4 + 0.25;
    }

    while (a4 <= a5);
  }

  if (a6 < a7)
  {
    do
    {
      CGContextBeginPath(a3);
      leftMargin = self->_leftMargin;
      v21 = self->_topMargin + self->_graphHeight * (1.0 - (a6 - self->_minYValue) / (self->_maxYValue - self->_minYValue));
      CGContextMoveToPoint(a3, leftMargin + -4.0, v21);
      CGContextAddLineToPoint(a3, leftMargin, v21);
      CGContextClosePath(a3);
      CGContextDrawPath(a3, kCGPathStroke);
      v22 = objc_alloc(MEMORY[0x1E696AAB0]);
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f", *&a6];
      v24 = [v22 initWithString:v23 attributes:v13];
      v25 = CTLineCreateWithAttributedString(v24);

      v34 = CTLineGetImageBounds(v25, a3);
      CGContextSetTextPosition(a3, leftMargin + -6.0 - v34.size.width, v21 + v34.size.height * 0.5);
      CTLineDraw(v25, a3);
      CFRelease(v25);
      a6 = a6 + 0.25;
    }

    while (a6 <= a7);
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)enumerateAssetsUsingBlock:(id)a3
{
  v33[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  [v6 setChunkSizeForFetch:1000];
  v7 = *MEMORY[0x1E6978C90];
  v33[0] = *MEMORY[0x1E6978BE0];
  v33[1] = v7;
  v33[2] = *MEMORY[0x1E6978CF0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v6 setFetchPropertySets:v8];

  v9 = [(_PXScoreLabGraphView *)self assetPredicate];
  [v6 setPredicate:v9];

  v26 = v6;
  v10 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v6];
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
        v4[2](v4, v22);
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

- (void)pinched:(id)a3
{
  v12 = a3;
  v4 = [v12 state];
  if (v4 == 4)
  {
    [(_PXScoreLabGraphView *)self cancelGesture];
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    [v12 locationInView:self];
    v8 = v7;
    v10 = v9;
    [v12 scale];
    [(_PXScoreLabGraphView *)self updateGestureWithLocation:v8 scale:v10, v11];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v12;
  if (v5)
  {
    [v12 locationInView:self];
    [(_PXScoreLabGraphView *)self startGestureAtLocation:?];
LABEL_8:
    v6 = v12;
  }
}

- (void)panned:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if (v4 == 4)
  {
    [(_PXScoreLabGraphView *)self cancelGesture];
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    [v7 locationInView:self];
    [_PXScoreLabGraphView updateGestureWithLocation:"updateGestureWithLocation:scale:" scale:?];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [v7 locationInView:self];
    [(_PXScoreLabGraphView *)self startGestureAtLocation:?];
LABEL_8:
    v6 = v7;
  }
}

- (void)updateGestureWithLocation:(CGPoint)a3 scale:(double)a4
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
  v14 = v5 / a4 <= v12;
  if (v5 / a4 <= v12)
  {
    v15 = v5 / a4;
  }

  else
  {
    v15 = self->_baseMaxXValue - self->_baseMinXValue;
  }

  if (v14)
  {
    v16 = a4;
  }

  else
  {
    v16 = v13;
  }

  v17 = v8 - (a3.x - leftMargin) * v15 / graphWidth;
  self->_minXValue = v17;
  baseMinXValue = self->_baseMinXValue;
  if (v17 < baseMinXValue)
  {
    self->_minXValue = baseMinXValue;
    v17 = baseMinXValue;
  }

  v19 = minYValueAtBeginningOfGesture + v10 * v11;
  v20 = v10 / v16;
  self->_maxXValue = v15 + v17;
  baseMaxXValue = self->_baseMaxXValue;
  if (v15 + v17 > baseMaxXValue)
  {
    self->_maxXValue = baseMaxXValue;
    self->_minXValue = baseMaxXValue - v15;
  }

  v22 = v19 - v20 * (1.0 - (a3.y - self->_topMargin) / self->_graphHeight);
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

- (void)startGestureAtLocation:(CGPoint)a3
{
  self->_locationAtBeginningOfGesture = a3;
  self->_minXValueAtBeginningOfGesture = self->_minXValue;
  self->_maxXValueAtBeginningOfGesture = self->_maxXValue;
  self->_minYValueAtBeginningOfGesture = self->_minYValue;
  self->_maxYValueAtBeginningOfGesture = self->_maxYValue;
}

- (_PXScoreLabGraphView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = _PXScoreLabGraphView;
  v3 = [(_PXScoreLabGraphView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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