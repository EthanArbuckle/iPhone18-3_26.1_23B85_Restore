@interface GraphRenderOperation
- (CGSize)graphSize;
- (CGSize)lineGraphSize;
- (CGSize)volumeGraphSize;
- (GraphRenderOperationDelegate)delegate;
- (UIEdgeInsets)graphInsets;
- (void)render;
- (void)renderGraphLineInContext:(CGContext *)a3 withColor:(id)a4 offset:(CGPoint)a5;
- (void)renderLineGraph;
- (void)renderVolumeGraph;
@end

@implementation GraphRenderOperation

- (void)render
{
  v3 = objc_alloc_init(StockGraphImageSet);
  graphImageSet = self->_graphImageSet;
  self->_graphImageSet = v3;

  [(GraphRenderOperation *)self renderLineGraph];
  v5 = [(GraphRenderOperation *)self displayMode];
  if ([v5 showsVolume])
  {
    v6 = [(GraphRenderOperation *)self isCancelled];

    if (!v6)
    {
      [(GraphRenderOperation *)self renderVolumeGraph];
    }
  }

  else
  {
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__GraphRenderOperation_render__block_invoke;
  block[3] = &unk_279D15BF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __30__GraphRenderOperation_render__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained graphRenderOperationDidFinish:*(a1 + 32)];
}

- (CGSize)lineGraphSize
{
  v2 = vsubq_f64(vsubq_f64(vextq_s8(self->_graphSize, self->_graphSize, 8uLL), *&self->_graphInsets.top), *&self->_graphInsets.bottom);
  v3 = v2.f64[1];
  result.height = v2.f64[0];
  result.width = v3;
  return result;
}

- (void)renderGraphLineInContext:(CGContext *)a3 withColor:(id)a4 offset:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  [(GraphRenderOperation *)self lineGraphSize];
  v11 = v10;
  CGContextSetStrokeColorWithColor(a3, [v9 CGColor]);
  [(StockChartDisplayMode *)self->_displayMode lineWidth];
  CGContextSetLineWidth(a3, v12);
  CGContextSetLineJoin(a3, kCGLineJoinRound);
  CGContextSetLineCap(a3, self->_roundLineCaps);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = self->_linePointCounts;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v26;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [*(*(&v25 + 1) + 8 * v18) intValue];
        CGContextBeginPath(a3);
        v20 = &self->_points[v16];
        CGContextMoveToPoint(a3, x + v20->x, y + self->_graphInsets.bottom + v20->y * v11);
        v21 = v19 + v16;
        if (v16 < v21)
        {
          v22 = v16;
          v23 = v16;
          v24 = v21 - v22;
          do
          {
            CGContextAddLineToPoint(a3, x + self->_points[v23].x, y + self->_graphInsets.bottom + self->_points[v23].y * v11);
            ++v23;
            --v24;
          }

          while (v24);
          v16 = v21;
        }

        CGContextStrokePath(a3);
        ++v18;
      }

      while (v18 != v15);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)renderLineGraph
{
  v109 = *MEMORY[0x277D85DE8];
  [(GraphRenderOperation *)self lineGraphSize];
  v4 = v3;
  width = self->_graphSize.width;
  height = self->_graphSize.height;
  top = self->_graphInsets.top;
  left = self->_graphInsets.left;
  bottom = self->_graphInsets.bottom;
  right = self->_graphInsets.right;
  v11 = [(GraphRenderOperation *)self displayMode];
  [v11 gutterHeight];
  v13 = v12;

  if (self->_points && [(NSArray *)self->_linePointCounts count])
  {
    v14 = *(MEMORY[0x277CBF3A8] + 8);
    v15 = *MEMORY[0x277CBF3A8] == self->_graphSize.width && v14 == self->_graphSize.height;
    if (!v15 && ![(GraphRenderOperation *)self isCancelled:*MEMORY[0x277CBF3A8]])
    {
      UIGraphicsBeginImageContextWithOptions(self->_graphSize, 0, 0.0);
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextSaveGState(CurrentContext);
      CGContextScaleCTM(CurrentContext, 1.0, -1.0);
      CGContextTranslateCTM(CurrentContext, 0.0, -self->_graphSize.height);
      CGContextBeginPath(CurrentContext);
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v18 = self->_linePointCounts;
      v19 = [(NSArray *)v18 countByEnumeratingWithState:&v96 objects:v102 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v97;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v97 != v22)
            {
              objc_enumerationMutation(v18);
            }

            v24 = [*(*(&v96 + 1) + 8 * i) intValue];
            if (v24)
            {
              v25 = v24;
              v26 = &self->_points[v21];
              CGContextMoveToPoint(CurrentContext, v26->x, self->_graphInsets.bottom + v26->y * v4);
              v27 = v25 + v21;
              if (v21 < v27)
              {
                v28 = v21;
                v29 = v21;
                v30 = v27 - v28;
                do
                {
                  CGContextAddLineToPoint(CurrentContext, self->_points[v29].x, self->_graphInsets.bottom + self->_points[v29].y * v4);
                  ++v29;
                  --v30;
                }

                while (v30);
                v21 = v27;
              }

              CGContextAddLineToPoint(CurrentContext, self->_points[v21 - 1].x, 0.0);
              CGContextAddLineToPoint(CurrentContext, self->_points[v21 - v25].x, 0.0);
              CGContextClosePath(CurrentContext);
            }
          }

          v20 = [(NSArray *)v18 countByEnumeratingWithState:&v96 objects:v102 count:16];
        }

        while (v20);
      }

      v31 = [(StockChartDisplayMode *)self->_displayMode HUDEnabled];
      if (v31)
      {
        v32 = CGContextCopyPath(CurrentContext);
      }

      else
      {
        v32 = 0;
      }

      CGContextClip(CurrentContext);
      CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
      v33 = [(StockChartDisplayMode *)self->_displayMode backgroundGradient];
      v34 = MEMORY[0x277CBF348];
      if (v33)
      {
        v35 = [(StockChartDisplayMode *)self->_displayMode backgroundGradient];
        v112.y = self->_graphSize.height;
        v112.x = 0.0;
        CGContextDrawLinearGradient(CurrentContext, v35, *v34, v112, 0);
      }

      v36 = height - top;
      if (v31)
      {
        v37 = width - left;
        v38 = [(GraphRenderOperation *)self displayMode];
        [v38 gutterHeight];
        v40 = v39;

        v110.width = 2.5;
        v110.height = 2.5;
        UIGraphicsBeginImageContextWithOptions(v110, 0, 0.0);
        v41 = UIGraphicsGetCurrentContext();
        v42 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.258823529 blue:0.439215686 alpha:1.0];
        CGContextSetStrokeColorWithColor(v41, [v42 CGColor]);

        v43 = [MEMORY[0x277D759A0] mainScreen];
        [v43 scale];
        CGContextSetLineWidth(v41, 1.0 / v44);

        CGContextSetShouldAntialias(v41, 0);
        CGContextMoveToPoint(v41, 0.0, 2.5);
        CGContextAddLineToPoint(v41, 2.5, 0.0);
        CGContextStrokePath(v41);
        v45 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        UIGraphicsBeginImageContextWithOptions(self->_graphSize, 0, 0.0);
        v46 = UIGraphicsGetCurrentContext();
        CGContextScaleCTM(v46, 1.0, -1.0);
        CGContextTranslateCTM(v46, 0.0, -self->_graphSize.height);
        v47 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.584313725 blue:1.0 alpha:1.0];
        [(GraphRenderOperation *)self renderGraphLineInContext:v46 withColor:v47 offset:v34->x, v34->y];

        if (v32)
        {
          CGContextAddPath(v46, v32);
          CGContextClip(v46);
          CFRelease(v32);
        }

        v48 = v37 - right;
        v49 = v36 - v13;
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v51 = MEMORY[0x277CBEA60];
        v52 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.258823529 blue:0.447058824 alpha:0.5];
        v53 = [v52 CGColor];
        v54 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.57254902 blue:0.980392157 alpha:0.5];
        v55 = [v51 arrayWithObjects:{v53, objc_msgSend(v54, "CGColor"), 0}];

        v56 = CGGradientCreateWithColors(DeviceRGB, v55, 0);
        CGColorSpaceRelease(DeviceRGB);
        if (v56)
        {
          v113.y = v49 + v40;
          v111.x = 0.0;
          v113.x = 0.0;
          v111.y = v40;
          CGContextDrawLinearGradient(v46, v56, v111, v113, 0);
          CFRelease(v56);
        }

        CGContextSetBlendMode(v46, kCGBlendModePlusLighter);
        v57 = [MEMORY[0x277D75348] colorWithPatternImage:v45];
        CGContextSetFillColorWithColor(v46, [v57 CGColor]);

        v114.origin.x = -v49;
        v114.size.width = v48 + v49;
        v114.origin.y = v40;
        v114.size.height = v49;
        CGContextFillRect(v46, v114);
        v16 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();

        v34 = MEMORY[0x277CBF348];
      }

      else
      {
        v16 = 0;
      }

      CGContextRestoreGState(CurrentContext);
      if ([(GraphRenderOperation *)self isCancelled])
      {
        goto LABEL_60;
      }

      if (![(NSArray *)self->_dottedLinePositions count]&& ![(NSArray *)self->_dottedLinePositionsForStyleOnly count])
      {
LABEL_55:
        v86 = CurrentContext;
        if ([(StockChartDisplayMode *)self->_displayMode HUDEnabled])
        {
          UIGraphicsBeginImageContextWithOptions(self->_graphSize, 0, 0.0);
          v86 = UIGraphicsGetCurrentContext();
        }

        CGContextSaveGState(v86);
        CGContextScaleCTM(v86, 1.0, -1.0);
        [(StockChartDisplayMode *)self->_displayMode lineWidth];
        CGContextTranslateCTM(v86, 0.0, v87 * 0.5 - self->_graphSize.height);
        [(StockChartDisplayMode *)self->_displayMode lineWidth];
        self->_graphSize.height = self->_graphSize.height - v88;
        v89 = [(StockChartDisplayMode *)self->_displayMode lineColor];
        [(GraphRenderOperation *)self renderGraphLineInContext:v86 withColor:v89 offset:v34->x, v34->y];

        CGContextRestoreGState(v86);
        if ([(StockChartDisplayMode *)self->_displayMode HUDEnabled])
        {
          v90 = UIGraphicsGetImageFromCurrentImageContext();
          UIGraphicsEndImageContext();
          [(StockGraphImageSet *)self->_graphImageSet setHighlightOverlayImage:v16];
          ClipBoundingBox = CGContextGetClipBoundingBox(CurrentContext);
          [v90 drawInRect:{ClipBoundingBox.origin.x, ClipBoundingBox.origin.y, ClipBoundingBox.size.width, ClipBoundingBox.size.height}];
        }

        v91 = UIGraphicsGetImageFromCurrentImageContext();
        [(StockGraphImageSet *)self->_graphImageSet setLineGraphImage:v91];

LABEL_60:
        UIGraphicsEndImageContext();
        goto LABEL_11;
      }

      CGContextSaveGState(CurrentContext);
      v58 = [MEMORY[0x277D759A0] mainScreen];
      [v58 scale];
      CGContextSetLineWidth(CurrentContext, 1.0 / v59);

      v60 = [MEMORY[0x277D759A0] mainScreen];
      [v60 scale];
      lengths[0] = 1.0 / v61;
      v62 = [MEMORY[0x277D759A0] mainScreen];
      [v62 scale];
      lengths[1] = 1.0 / v63;
      CGContextSetLineDash(CurrentContext, 0.0, lengths, 2uLL);

      v64 = [(GraphRenderOperation *)self displayMode];
      v65 = [v64 backgroundLinesColor];
      CGContextSetStrokeColorWithColor(CurrentContext, [v65 CGColor]);

      dottedLinePositions = self->_dottedLinePositions;
      if (!dottedLinePositions)
      {
        dottedLinePositions = self->_dottedLinePositionsForStyleOnly;
      }

      v67 = dottedLinePositions;
      if (self->_dottedLinePositions)
      {
        v68 = v36 - bottom;
      }

      else
      {
        v72 = self->_graphSize.height;
        v73 = [(GraphRenderOperation *)self displayMode];
        [v73 gutterHeight];
        v68 = v72 - v74;

        if (!self->_dottedLinePositions)
        {
          v75 = 0.0;
          goto LABEL_47;
        }
      }

      v75 = self->_graphInsets.top;
LABEL_47:
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v76 = v67;
      v77 = [(NSArray *)v76 countByEnumeratingWithState:&v92 objects:v100 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v93;
        do
        {
          for (j = 0; j != v78; ++j)
          {
            if (*v93 != v79)
            {
              objc_enumerationMutation(v76);
            }

            [*(*(&v92 + 1) + 8 * j) doubleValue];
            v82 = RoundToPixel(v75 + v81 * v68);
            v83 = [MEMORY[0x277D759A0] mainScreen];
            [v83 scale];
            v85 = v82 + -1.0 / v84 * 0.5;

            CGContextBeginPath(CurrentContext);
            CGContextMoveToPoint(CurrentContext, 0.0, v85);
            CGContextAddLineToPoint(CurrentContext, width, v85);
            CGContextStrokePath(CurrentContext);
          }

          v78 = [(NSArray *)v76 countByEnumeratingWithState:&v92 objects:v100 count:16];
        }

        while (v78);
      }

      CGContextRestoreGState(CurrentContext);
      goto LABEL_55;
    }
  }

  if ([(GraphRenderOperation *)self isCancelled])
  {
    return;
  }

  v16 = StocksLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    points = self->_points;
    v70 = [(NSArray *)self->_linePointCounts count];
    v71 = NSStringFromCGSize(self->_graphSize);
    *buf = 134218498;
    v104 = points;
    v105 = 2048;
    v106 = v70;
    v107 = 2112;
    v108 = v71;
    _os_log_error_impl(&dword_26BAAD000, v16, OS_LOG_TYPE_ERROR, "Render early exit: _points = %p, _linePointCounts.count = %llu, _graphSize = %@", buf, 0x20u);
  }

LABEL_11:
}

- (void)renderVolumeGraph
{
  if (self->_volumeGraphSize.width * self->_volumeGraphSize.height != 0.0 && ![(GraphRenderOperation *)self isCancelled])
  {
    UIGraphicsBeginImageContextWithOptions(self->_volumeGraphSize, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    volumeBarWidth = self->_volumeBarWidth;
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.28627451 alpha:1.0];
    CGContextSetFillColorWithColor(CurrentContext, [v5 CGColor]);

    if (self->_volumeCount)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v10.origin.x = RoundRectToPixel(self->_volumeBars[v6].var0 - volumeBarWidth * 0.5);
        CGContextFillRect(CurrentContext, v10);
        ++v7;
        ++v6;
      }

      while (v7 < self->_volumeCount);
    }

    v8 = UIGraphicsGetImageFromCurrentImageContext();
    [(StockGraphImageSet *)self->_graphImageSet setVolumeGraphImage:v8];

    UIGraphicsEndImageContext();
  }
}

- (GraphRenderOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)graphSize
{
  width = self->_graphSize.width;
  height = self->_graphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)volumeGraphSize
{
  width = self->_volumeGraphSize.width;
  height = self->_volumeGraphSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)graphInsets
{
  top = self->_graphInsets.top;
  left = self->_graphInsets.left;
  bottom = self->_graphInsets.bottom;
  right = self->_graphInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end