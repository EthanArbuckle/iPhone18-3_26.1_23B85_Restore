@interface PUCleanupToolBrushView
- (NUMediaView)mediaView;
- (PUCleanupToolBrushView)initWithMediaView:(id)view isHDR:(BOOL)r;
- (void)addPointToStroke:(CGPoint)stroke;
- (void)drawCursorAtPoint:(CGPoint)point withRadius:(double)radius;
- (void)removeStroke;
- (void)setBrushStrokeExclusionMask:(id)mask;
- (void)setShouldDrawCursor:(BOOL)cursor;
- (void)startStrokeWithPoint:(CGPoint)point radius:(double)radius;
@end

@implementation PUCleanupToolBrushView

- (NUMediaView)mediaView
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);

  return WeakRetained;
}

- (void)drawCursorAtPoint:(CGPoint)point withRadius:(double)radius
{
  v48[5] = *MEMORY[0x1E69E9840];
  if (self->_shouldDrawCursor)
  {
    y = point.y;
    x = point.x;
    [(PUCleanupToolBrushView *)self lastCursorRadius];
    if (v8 != radius)
    {
      cursorLayer = [(PUCleanupToolBrushView *)self cursorLayer];
      [cursorLayer removeFromSuperlayer];

      [(PUCleanupToolBrushView *)self setCursorLayer:0];
      [(PUCleanupToolBrushView *)self setLastCursorRadius:radius];
    }

    cursorLayer2 = [(PUCleanupToolBrushView *)self cursorLayer];

    if (!cursorLayer2)
    {
      window = [(PUCleanupToolBrushView *)self window];
      screen = [window screen];

      [MEMORY[0x1E69B3DC0] currentEDRHeadroomForScreen:screen];
      v14 = v13;
      [MEMORY[0x1E69B3AB0] thresholdDisplayHeadroom];
      if ([(PUCleanupToolBrushView *)self isHDR]&& v14 >= v15)
      {
        v16 = 2.0;
      }

      else
      {
        v16 = 1.0;
      }

      v17 = *MEMORY[0x1E695EFF8];
      v18 = *(MEMORY[0x1E695EFF8] + 8);
      v19 = radius * 2.0 + 3.0;
      v49.origin.x = *MEMORY[0x1E695EFF8];
      v49.origin.y = v18;
      v49.size.width = v19;
      v49.size.height = v19;
      v50 = CGRectInset(v49, 2.0, 2.0);
      v45 = v50.origin.y;
      v46 = v50.origin.x;
      width = v50.size.width;
      height = v50.size.height;
      layer = [MEMORY[0x1E69794A0] layer];
      [(PUCleanupToolBrushView *)self setCursorLayer:layer];

      cursorLayer3 = [(PUCleanupToolBrushView *)self cursorLayer];
      v24 = [MEMORY[0x1E69DC888] colorWithWhite:v16 alpha:0.5];
      [cursorLayer3 setStrokeColor:{objc_msgSend(v24, "CGColor")}];

      cursorLayer4 = [(PUCleanupToolBrushView *)self cursorLayer];
      [cursorLayer4 setLineWidth:2.0];

      cursorLayer5 = [(PUCleanupToolBrushView *)self cursorLayer];
      [cursorLayer5 setFillColor:0];

      cursorLayer6 = [(PUCleanupToolBrushView *)self cursorLayer];
      v28 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v17, v18, v19, v19}];
      [cursorLayer6 setPath:{objc_msgSend(v28, "CGPath")}];

      cursorLayer7 = [(PUCleanupToolBrushView *)self cursorLayer];
      [cursorLayer7 setBounds:{v17, v18, v19, v19}];

      cursorLayer8 = [(PUCleanupToolBrushView *)self cursorLayer];
      v47[0] = @"position";
      null = [MEMORY[0x1E695DFB0] null];
      v48[0] = null;
      v47[1] = @"bounds";
      null2 = [MEMORY[0x1E695DFB0] null];
      v48[1] = null2;
      v47[2] = @"transform";
      null3 = [MEMORY[0x1E695DFB0] null];
      v48[2] = null3;
      v47[3] = @"frame";
      null4 = [MEMORY[0x1E695DFB0] null];
      v48[3] = null4;
      v47[4] = @"opacity";
      null5 = [MEMORY[0x1E695DFB0] null];
      v48[4] = null5;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:5];
      [cursorLayer8 setActions:v36];

      layer2 = [MEMORY[0x1E69794A0] layer];
      v38 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
      [layer2 setStrokeColor:{objc_msgSend(v38, "CGColor")}];

      [layer2 setLineWidth:2.0];
      [layer2 setFillColor:0];
      v39 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v46, v45, width, height}];
      [layer2 setPath:{objc_msgSend(v39, "CGPath")}];

      cursorLayer9 = [(PUCleanupToolBrushView *)self cursorLayer];
      [cursorLayer9 addSublayer:layer2];

      layer3 = [(PUCleanupToolBrushView *)self layer];
      cursorLayer10 = [(PUCleanupToolBrushView *)self cursorLayer];
      [layer3 addSublayer:cursorLayer10];

      cursorLayer11 = [(PUCleanupToolBrushView *)self cursorLayer];
      [cursorLayer11 setZPosition:2.0];
    }

    cursorLayer12 = [(PUCleanupToolBrushView *)self cursorLayer];
    [cursorLayer12 setPosition:{x, y}];
  }
}

- (void)setShouldDrawCursor:(BOOL)cursor
{
  cursorCopy = cursor;
  self->_shouldDrawCursor = cursor;
  cursorLayer = [(PUCleanupToolBrushView *)self cursorLayer];
  v6 = cursorLayer;
  v5 = 0.0;
  if (cursorCopy)
  {
    *&v5 = 1.0;
  }

  [cursorLayer setOpacity:v5];
}

- (void)removeStroke
{
  [(PUCleanupToolBrushView *)self setNeedsClearing:0];
  [(CAShapeLayer *)self->_brushPathLayer removeFromSuperlayer];
  [(CAShapeLayer *)self->_brushPathLayer setPath:0];
  [(UIBezierPath *)self->_brushPath removeAllPoints];
  [(CAShapeLayer *)self->_brushPathLayer setMask:0];
  brushPath = self->_brushPath;
  self->_brushPath = 0;

  brushPathLayer = self->_brushPathLayer;
  self->_brushPathLayer = 0;
}

- (void)addPointToStroke:(CGPoint)stroke
{
  [(UIBezierPath *)self->_brushPath addLineToPoint:stroke.x, stroke.y];
  brushPathLayer = self->_brushPathLayer;
  cGPath = [(UIBezierPath *)self->_brushPath CGPath];

  [(CAShapeLayer *)brushPathLayer setPath:cGPath];
}

- (void)startStrokeWithPoint:(CGPoint)point radius:(double)radius
{
  y = point.y;
  x = point.x;
  v51[5] = *MEMORY[0x1E69E9840];
  [(PUCleanupToolBrushView *)self removeStroke];
  [(PUCleanupToolBrushView *)self setNeedsClearing:1];
  layer = [MEMORY[0x1E69794A0] layer];
  brushPathLayer = self->_brushPathLayer;
  self->_brushPathLayer = layer;

  v10 = self->_brushPathLayer;
  v50[0] = @"position";
  null = [MEMORY[0x1E695DFB0] null];
  v51[0] = null;
  v50[1] = @"bounds";
  null2 = [MEMORY[0x1E695DFB0] null];
  v51[1] = null2;
  v50[2] = @"transform";
  null3 = [MEMORY[0x1E695DFB0] null];
  v51[2] = null3;
  v50[3] = @"frame";
  null4 = [MEMORY[0x1E695DFB0] null];
  v51[3] = null4;
  v50[4] = @"opacity";
  null5 = [MEMORY[0x1E695DFB0] null];
  v51[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:5];
  [(CAShapeLayer *)v10 setActions:v16];

  [(CAShapeLayer *)self->_brushPathLayer setLineCap:*MEMORY[0x1E6979E78]];
  [(CAShapeLayer *)self->_brushPathLayer setLineJoin:*MEMORY[0x1E6979E98]];
  [(CAShapeLayer *)self->_brushPathLayer setLineWidth:8.0];
  [(CAShapeLayer *)self->_brushPathLayer setFillColor:0];
  v17 = self->_brushPathLayer;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  -[CAShapeLayer setStrokeColor:](v17, "setStrokeColor:", [whiteColor CGColor]);

  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  brushPath = self->_brushPath;
  self->_brushPath = bezierPath;

  layer2 = [(PUCleanupToolBrushView *)self layer];
  [layer2 addSublayer:self->_brushPathLayer];

  [(CAShapeLayer *)self->_brushPathLayer setZPosition:1.0];
  bridgedExclusionMaskCGImage = [(PUCleanupToolBrushView *)self bridgedExclusionMaskCGImage];

  if (bridgedExclusionMaskCGImage)
  {
    mediaView = [(PUCleanupToolBrushView *)self mediaView];
    [mediaView imageFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    mediaView2 = [(PUCleanupToolBrushView *)self mediaView];
    [mediaView2 convertRect:self toView:{v25, v27, v29, v31}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    exclusionMaskLayer = [(PUCleanupToolBrushView *)self exclusionMaskLayer];
    if (exclusionMaskLayer)
    {
      [(PUCleanupToolBrushView *)self exclusionMaskLayer];
    }

    else
    {
      [MEMORY[0x1E6979398] layer];
    }
    v42 = ;

    [v42 setFrame:{v34, v36, v38, v40}];
    [v42 setContents:bridgedExclusionMaskCGImage];
    [(CAShapeLayer *)self->_brushPathLayer setMask:v42];
  }

  else
  {
    [(CAShapeLayer *)self->_brushPathLayer setMask:0];
  }

  window = [(PUCleanupToolBrushView *)self window];
  screen = [window screen];

  [MEMORY[0x1E69B3DC0] currentEDRHeadroomForScreen:screen];
  v46 = v45;
  [MEMORY[0x1E69B3AB0] thresholdDisplayHeadroom];
  if ([(PUCleanupToolBrushView *)self isHDR]&& v46 >= v47)
  {
    v48 = 2.0;
  }

  else
  {
    v48 = 1.0;
  }

  [(CAShapeLayer *)self->_brushPathLayer setFillColor:0];
  v49 = [MEMORY[0x1E69DC888] colorWithWhite:v48 alpha:0.5];
  -[CAShapeLayer setStrokeColor:](self->_brushPathLayer, "setStrokeColor:", [v49 CGColor]);
  [(CAShapeLayer *)self->_brushPathLayer setLineWidth:radius + radius];
  [(UIBezierPath *)self->_brushPath moveToPoint:x, y];
  [(CAShapeLayer *)self->_brushPathLayer setPath:[(UIBezierPath *)self->_brushPath CGPath]];
}

- (void)setBrushStrokeExclusionMask:(id)mask
{
  maskCopy = mask;
  if (maskCopy)
  {
    objc_storeStrong(&self->_brushStrokeExclusionMask, mask);
    v5 = [maskCopy imageByApplyingFilter:@"CIMaskToAlpha"];
    context = [MEMORY[0x1E695F620] context];
    [v5 extent];
    v7 = [context createCGImage:v5 fromRect:?];

    [(PUCleanupToolBrushView *)self setBridgedExclusionMaskCGImage:v7];
  }

  else
  {
    [(PUCleanupToolBrushView *)self setBridgedExclusionMaskCGImage:0];
    [(CAShapeLayer *)self->_brushPathLayer setMask:0];
  }
}

- (PUCleanupToolBrushView)initWithMediaView:(id)view isHDR:(BOOL)r
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCleanupToolBrushView.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v14.receiver = self;
  v14.super_class = PUCleanupToolBrushView;
  v8 = [(PUCleanupToolBrushView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mediaView, viewCopy);
    v9->_isHDR = r;
    v9->_lastCursorRadius = 0.0;
    v10 = *MEMORY[0x1E69792A0];
    layer = [(PUCleanupToolBrushView *)v9 layer];
    [layer setPreferredDynamicRange:v10];
  }

  return v9;
}

@end