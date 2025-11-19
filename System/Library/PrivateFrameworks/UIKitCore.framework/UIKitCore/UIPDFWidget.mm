@interface UIPDFWidget
- (UIPDFWidget)initWithFrame:(CGRect)a3 withDocument:(id)a4;
- (void)addedPageView:(int)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)heartbeat;
- (void)removedPageView:(int)a3;
@end

@implementation UIPDFWidget

- (UIPDFWidget)initWithFrame:(CGRect)a3 withDocument:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIPDFWidget;
  v5 = [(UIView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, 380.0, 120.0];
  if (v5)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v5->queueCount = 0;
    v5->queueIndex = 0;
    queueData = v5->queueData;
    v7 = 60;
    do
    {
      *&queueData->byteCount = 0;
      queueData->memWarning = 0;
      ++queueData;
      --v7;
    }

    while (v7);
    v5->renderJobsCount = 0;
    v5->totalPageCount = 0;
    v5->currentPageCount = 0;
    v5->activeDocument = a4;
    v5->trackedPages = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5->heartbeatTimer = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v5 target:sel_heartbeat selector:0 userInfo:1 repeats:0.25];
    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [v8 addTimer:v5->heartbeatTimer forMode:*MEMORY[0x1E695DA28]];
    v9 = [[UILabel alloc] initWithFrame:10.0, 30.0, 380.0, 120.0];
    v5->infoLabel = v9;
    -[UILabel setFont:](v9, "setFont:", [off_1E70ECC18 boldSystemFontOfSize:11.0]);
    [(UILabel *)v5->infoLabel setLineBreakMode:0];
    [(UILabel *)v5->infoLabel setNumberOfLines:0];
    [(UILabel *)v5->infoLabel setText:@"Loading..."];
    [(UIView *)v5 addSubview:v5->infoLabel];
  }

  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->heartbeatTimer invalidate];

  v3.receiver = self;
  v3.super_class = UIPDFWidget;
  [(UIView *)&v3 dealloc];
}

- (void)heartbeat
{
  v10 = 0;
  *task_info_out = 0u;
  v9 = 0u;
  task_info_outCnt = 40;
  if (!task_info(*MEMORY[0x1E69E9A60], 0x12u, task_info_out, &task_info_outCnt))
  {
    v3 = task_info_out[3];
    self->renderJobsCount = [(UIPDFPageImageCache *)[(UIPDFDocument *)self->activeDocument pageImageCache] getRenderQueueJobsCount];
    queueData = self->queueData;
    queueData[self->queueIndex].byteCount = v3;
    self->queueData[self->queueIndex].currentPageCount = self->currentPageCount;
    queueData[self->queueIndex].renderJobsCount = self->renderJobsCount;
    queueIndex = self->queueIndex;
    queueData[queueIndex].memWarning = 0;
    self->queueIndex = (queueIndex + 1) % 60;
    queueCount = self->queueCount;
    if (queueCount >= 59)
    {
      queueCount = 59;
    }

    self->queueCount = queueCount + 1;
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v62 = *MEMORY[0x1E69E9840];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  CGContextClearRect(v9, v63);
  queueCount = self->queueCount;
  v11 = 12.0;
  if (queueCount < 1)
  {
    v14 = 0.0;
    v16 = 0.0;
  }

  else
  {
    queueData = self->queueData;
    v13 = self->queueIndex + 59;
    v14 = 0.0;
    v15 = self->queueCount;
    v16 = 0.0;
    do
    {
      byteCount = queueData[v13 % 60].byteCount;
      if (v14 <= byteCount)
      {
        v14 = queueData[v13 % 60].byteCount;
      }

      v16 = v16 + byteCount;
      --v13;
      --v15;
    }

    while (v15);
    if (v14 > 0.0)
    {
      v11 = 120.0 / (v14 * 1.5);
    }
  }

  CGContextSaveGState(v9);
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  CGContextAddRect(v9, v64);
  CGContextSetRGBFillColor(v9, 0.9, 0.9, 0.9, 1.0);
  CGContextFillPath(v9);
  CGContextSetLineWidth(v9, 1.0);
  CGContextSetRGBStrokeColor(v9, 0.8, 0.8, 0.8, 1.0);
  for (i = 380; i > 0x17; CGContextAddLineToPoint(v9, i, 120.0))
  {
    i -= 24;
    CGContextMoveToPoint(v9, i, 0.0);
  }

  for (j = 120; j > 0xB; CGContextAddLineToPoint(v9, 380.0, j))
  {
    j -= 12;
    CGContextMoveToPoint(v9, 0.0, j);
  }

  CGContextStrokePath(v9);
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  CGContextAddRect(v9, v65);
  CGContextSetLineWidth(v9, 3.0);
  CGContextSetRGBStrokeColor(v9, 0.1, 0.1, 0.1, 1.0);
  CGContextStrokePath(v9);
  CGContextRestoreGState(v9);
  if (self->queueCount >= 1)
  {
    CGContextSaveGState(v9);
    CGContextSetLineWidth(v9, 1.5);
    CGContextSetRGBStrokeColor(v9, 1.0, 0.1, 0.1, 1.0);
    if (self->queueCount >= 1)
    {
      v20 = 0;
      v21 = 59;
      do
      {
        v22 = (v20 + 1) * -6.2295082 + 380.0;
        v23 = 120.0 - v11 * self->queueData[(v21 + self->queueIndex) % 60].byteCount;
        v24 = v22;
        v25 = v23;
        if (v20)
        {
          CGContextAddLineToPoint(v9, v24, v25);
        }

        else
        {
          CGContextMoveToPoint(v9, v24, v25);
        }

        --v21;
        ++v20;
      }

      while (v20 < self->queueCount);
    }

    CGContextStrokePath(v9);
    CGContextSetLineWidth(v9, 1.5);
    CGContextSetRGBStrokeColor(v9, 0.1, 0.8, 0.1, 1.0);
    if (self->queueCount >= 1)
    {
      v26 = 0;
      v27 = 59;
      do
      {
        v28 = (v26 + 1) * -6.2295082 + 380.0;
        v29 = 120.0 - (12 * self->queueData[(v27 + self->queueIndex) % 60].currentPageCount);
        v30 = v28;
        v31 = v29;
        if (v26)
        {
          CGContextAddLineToPoint(v9, v30, v31);
        }

        else
        {
          CGContextMoveToPoint(v9, v30, v31);
        }

        --v27;
        ++v26;
      }

      while (v26 < self->queueCount);
    }

    rect = queueCount;
    CGContextStrokePath(v9);
    CGContextSetLineWidth(v9, 1.5);
    CGContextSetRGBStrokeColor(v9, 0.1, 0.1, 0.8, 1.0);
    if (self->queueCount >= 1)
    {
      v32 = 0;
      v33 = 59;
      do
      {
        renderJobsCount = self->queueData[(v33 + self->queueIndex) % 60].renderJobsCount;
        v35 = (v32 + 1) * -6.2295082 + 380.0;
        v36 = 120.0 - (12 * renderJobsCount);
        v37 = v36;
        v38 = v35;
        if (renderJobsCount < 1)
        {
          v37 = 118.0;
        }

        if (v32)
        {
          CGContextAddLineToPoint(v9, v38, v37);
        }

        else
        {
          CGContextMoveToPoint(v9, v38, v37);
        }

        --v33;
        ++v32;
      }

      while (v32 < self->queueCount);
    }

    recta = v16 / rect;
    CGContextStrokePath(v9);
    CGContextRestoreGState(v9);
    CGContextSaveGState(v9);
    CGContextSetLineWidth(v9, 2.0);
    CGContextSetRGBStrokeColor(v9, 1.0, 0.5, 0.1, 1.0);
    v39 = self->queueCount;
    if (v39 < 1)
    {
      v41 = 0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 59;
      do
      {
        ++v40;
        v43 = &self->queueData[(v42 + self->queueIndex) % 60];
        if (v43->memWarning)
        {
          v45 = 120.0 - v11 * v43->byteCount;
          CGContextSaveGState(v9);
          CGContextSetRGBStrokeColor(v9, 1.0, 0.1, 0.1, 1.0);
          v44 = v40 * -6.2295082 + 380.0;
          v66.origin.x = (v44 + -4.0);
          v66.origin.y = (v45 + -4.0);
          v66.size.width = 8.0;
          v66.size.height = 8.0;
          CGContextStrokeEllipseInRect(v9, v66);
          CGContextRestoreGState(v9);
          v41 = (v41 + 1);
          v39 = self->queueCount;
        }

        --v42;
      }

      while (v40 < v39);
    }

    CGContextRestoreGState(v9);
    v46 = [MEMORY[0x1E696AAF0] stringFromByteCount:v14 countStyle:0];
    v47 = [MEMORY[0x1E696AAF0] stringFromByteCount:recta countStyle:0];
    v48 = [MEMORY[0x1E696AD60] stringWithFormat:@"Peak: %@, Avg (Red): %@, Mem warnings (Circles): %d\nCurrent pages (Green): %d, Ever constructed: %d, Jobs (Blue): %d\nAllocated pages indices: ", v46, v47, v41, self->currentPageCount, self->totalPageCount, self->renderJobsCount];
    v49 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
    v50 = -[NSMutableSet sortedArrayUsingDescriptors:](self->trackedPages, "sortedArrayUsingDescriptors:", [MEMORY[0x1E695DEC8] arrayWithObject:v49]);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v51 = [v50 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v58;
      do
      {
        for (k = 0; k != v52; ++k)
        {
          if (*v58 != v53)
          {
            objc_enumerationMutation(v50);
          }

          [v48 appendFormat:@"%d ", objc_msgSend(*(*(&v57 + 1) + 8 * k), "intValue")];
        }

        v52 = [v50 countByEnumeratingWithState:&v57 objects:v61 count:16];
      }

      while (v52);
    }

    [(UILabel *)self->infoLabel setText:v48];
  }
}

- (void)addedPageView:(int)a3
{
  ++self->currentPageCount;
  ++self->totalPageCount;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  if (([(NSMutableSet *)self->trackedPages containsObject:v4]& 1) == 0)
  {
    trackedPages = self->trackedPages;

    [(NSMutableSet *)trackedPages addObject:v4];
  }
}

- (void)removedPageView:(int)a3
{
  --self->currentPageCount;
  v4 = [MEMORY[0x1E696AD98] numberWithInt:*&a3];
  if ([(NSMutableSet *)self->trackedPages containsObject:v4])
  {
    trackedPages = self->trackedPages;

    [(NSMutableSet *)trackedPages removeObject:v4];
  }
}

@end