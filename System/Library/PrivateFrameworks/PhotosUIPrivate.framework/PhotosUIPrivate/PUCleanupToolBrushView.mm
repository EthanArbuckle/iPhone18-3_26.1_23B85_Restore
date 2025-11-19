@interface PUCleanupToolBrushView
- (NUMediaView)mediaView;
- (PUCleanupToolBrushView)initWithMediaView:(id)a3 isHDR:(BOOL)a4;
- (void)addPointToStroke:(CGPoint)a3;
- (void)drawCursorAtPoint:(CGPoint)a3 withRadius:(double)a4;
- (void)removeStroke;
- (void)setBrushStrokeExclusionMask:(id)a3;
- (void)setShouldDrawCursor:(BOOL)a3;
- (void)startStrokeWithPoint:(CGPoint)a3 radius:(double)a4;
@end

@implementation PUCleanupToolBrushView

- (NUMediaView)mediaView
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaView);

  return WeakRetained;
}

- (void)drawCursorAtPoint:(CGPoint)a3 withRadius:(double)a4
{
  v48[5] = *MEMORY[0x1E69E9840];
  if (self->_shouldDrawCursor)
  {
    y = a3.y;
    x = a3.x;
    [(PUCleanupToolBrushView *)self lastCursorRadius];
    if (v8 != a4)
    {
      v9 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v9 removeFromSuperlayer];

      [(PUCleanupToolBrushView *)self setCursorLayer:0];
      [(PUCleanupToolBrushView *)self setLastCursorRadius:a4];
    }

    v10 = [(PUCleanupToolBrushView *)self cursorLayer];

    if (!v10)
    {
      v11 = [(PUCleanupToolBrushView *)self window];
      v12 = [v11 screen];

      [MEMORY[0x1E69B3DC0] currentEDRHeadroomForScreen:v12];
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
      v19 = a4 * 2.0 + 3.0;
      v49.origin.x = *MEMORY[0x1E695EFF8];
      v49.origin.y = v18;
      v49.size.width = v19;
      v49.size.height = v19;
      v50 = CGRectInset(v49, 2.0, 2.0);
      v45 = v50.origin.y;
      v46 = v50.origin.x;
      width = v50.size.width;
      height = v50.size.height;
      v22 = [MEMORY[0x1E69794A0] layer];
      [(PUCleanupToolBrushView *)self setCursorLayer:v22];

      v23 = [(PUCleanupToolBrushView *)self cursorLayer];
      v24 = [MEMORY[0x1E69DC888] colorWithWhite:v16 alpha:0.5];
      [v23 setStrokeColor:{objc_msgSend(v24, "CGColor")}];

      v25 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v25 setLineWidth:2.0];

      v26 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v26 setFillColor:0];

      v27 = [(PUCleanupToolBrushView *)self cursorLayer];
      v28 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v17, v18, v19, v19}];
      [v27 setPath:{objc_msgSend(v28, "CGPath")}];

      v29 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v29 setBounds:{v17, v18, v19, v19}];

      v30 = [(PUCleanupToolBrushView *)self cursorLayer];
      v47[0] = @"position";
      v31 = [MEMORY[0x1E695DFB0] null];
      v48[0] = v31;
      v47[1] = @"bounds";
      v32 = [MEMORY[0x1E695DFB0] null];
      v48[1] = v32;
      v47[2] = @"transform";
      v33 = [MEMORY[0x1E695DFB0] null];
      v48[2] = v33;
      v47[3] = @"frame";
      v34 = [MEMORY[0x1E695DFB0] null];
      v48[3] = v34;
      v47[4] = @"opacity";
      v35 = [MEMORY[0x1E695DFB0] null];
      v48[4] = v35;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:5];
      [v30 setActions:v36];

      v37 = [MEMORY[0x1E69794A0] layer];
      v38 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
      [v37 setStrokeColor:{objc_msgSend(v38, "CGColor")}];

      [v37 setLineWidth:2.0];
      [v37 setFillColor:0];
      v39 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v46, v45, width, height}];
      [v37 setPath:{objc_msgSend(v39, "CGPath")}];

      v40 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v40 addSublayer:v37];

      v41 = [(PUCleanupToolBrushView *)self layer];
      v42 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v41 addSublayer:v42];

      v43 = [(PUCleanupToolBrushView *)self cursorLayer];
      [v43 setZPosition:2.0];
    }

    v44 = [(PUCleanupToolBrushView *)self cursorLayer];
    [v44 setPosition:{x, y}];
  }
}

- (void)setShouldDrawCursor:(BOOL)a3
{
  v3 = a3;
  self->_shouldDrawCursor = a3;
  v4 = [(PUCleanupToolBrushView *)self cursorLayer];
  v6 = v4;
  v5 = 0.0;
  if (v3)
  {
    *&v5 = 1.0;
  }

  [v4 setOpacity:v5];
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

- (void)addPointToStroke:(CGPoint)a3
{
  [(UIBezierPath *)self->_brushPath addLineToPoint:a3.x, a3.y];
  brushPathLayer = self->_brushPathLayer;
  v5 = [(UIBezierPath *)self->_brushPath CGPath];

  [(CAShapeLayer *)brushPathLayer setPath:v5];
}

- (void)startStrokeWithPoint:(CGPoint)a3 radius:(double)a4
{
  y = a3.y;
  x = a3.x;
  v51[5] = *MEMORY[0x1E69E9840];
  [(PUCleanupToolBrushView *)self removeStroke];
  [(PUCleanupToolBrushView *)self setNeedsClearing:1];
  v8 = [MEMORY[0x1E69794A0] layer];
  brushPathLayer = self->_brushPathLayer;
  self->_brushPathLayer = v8;

  v10 = self->_brushPathLayer;
  v50[0] = @"position";
  v11 = [MEMORY[0x1E695DFB0] null];
  v51[0] = v11;
  v50[1] = @"bounds";
  v12 = [MEMORY[0x1E695DFB0] null];
  v51[1] = v12;
  v50[2] = @"transform";
  v13 = [MEMORY[0x1E695DFB0] null];
  v51[2] = v13;
  v50[3] = @"frame";
  v14 = [MEMORY[0x1E695DFB0] null];
  v51[3] = v14;
  v50[4] = @"opacity";
  v15 = [MEMORY[0x1E695DFB0] null];
  v51[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:5];
  [(CAShapeLayer *)v10 setActions:v16];

  [(CAShapeLayer *)self->_brushPathLayer setLineCap:*MEMORY[0x1E6979E78]];
  [(CAShapeLayer *)self->_brushPathLayer setLineJoin:*MEMORY[0x1E6979E98]];
  [(CAShapeLayer *)self->_brushPathLayer setLineWidth:8.0];
  [(CAShapeLayer *)self->_brushPathLayer setFillColor:0];
  v17 = self->_brushPathLayer;
  v18 = [MEMORY[0x1E69DC888] whiteColor];
  -[CAShapeLayer setStrokeColor:](v17, "setStrokeColor:", [v18 CGColor]);

  v19 = [MEMORY[0x1E69DC728] bezierPath];
  brushPath = self->_brushPath;
  self->_brushPath = v19;

  v21 = [(PUCleanupToolBrushView *)self layer];
  [v21 addSublayer:self->_brushPathLayer];

  [(CAShapeLayer *)self->_brushPathLayer setZPosition:1.0];
  v22 = [(PUCleanupToolBrushView *)self bridgedExclusionMaskCGImage];

  if (v22)
  {
    v23 = [(PUCleanupToolBrushView *)self mediaView];
    [v23 imageFrame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [(PUCleanupToolBrushView *)self mediaView];
    [v32 convertRect:self toView:{v25, v27, v29, v31}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v41 = [(PUCleanupToolBrushView *)self exclusionMaskLayer];
    if (v41)
    {
      [(PUCleanupToolBrushView *)self exclusionMaskLayer];
    }

    else
    {
      [MEMORY[0x1E6979398] layer];
    }
    v42 = ;

    [v42 setFrame:{v34, v36, v38, v40}];
    [v42 setContents:v22];
    [(CAShapeLayer *)self->_brushPathLayer setMask:v42];
  }

  else
  {
    [(CAShapeLayer *)self->_brushPathLayer setMask:0];
  }

  v43 = [(PUCleanupToolBrushView *)self window];
  v44 = [v43 screen];

  [MEMORY[0x1E69B3DC0] currentEDRHeadroomForScreen:v44];
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
  [(CAShapeLayer *)self->_brushPathLayer setLineWidth:a4 + a4];
  [(UIBezierPath *)self->_brushPath moveToPoint:x, y];
  [(CAShapeLayer *)self->_brushPathLayer setPath:[(UIBezierPath *)self->_brushPath CGPath]];
}

- (void)setBrushStrokeExclusionMask:(id)a3
{
  v8 = a3;
  if (v8)
  {
    objc_storeStrong(&self->_brushStrokeExclusionMask, a3);
    v5 = [v8 imageByApplyingFilter:@"CIMaskToAlpha"];
    v6 = [MEMORY[0x1E695F620] context];
    [v5 extent];
    v7 = [v6 createCGImage:v5 fromRect:?];

    [(PUCleanupToolBrushView *)self setBridgedExclusionMaskCGImage:v7];
  }

  else
  {
    [(PUCleanupToolBrushView *)self setBridgedExclusionMaskCGImage:0];
    [(CAShapeLayer *)self->_brushPathLayer setMask:0];
  }
}

- (PUCleanupToolBrushView)initWithMediaView:(id)a3 isHDR:(BOOL)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUCleanupToolBrushView.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"mediaView != nil"}];
  }

  v14.receiver = self;
  v14.super_class = PUCleanupToolBrushView;
  v8 = [(PUCleanupToolBrushView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mediaView, v7);
    v9->_isHDR = a4;
    v9->_lastCursorRadius = 0.0;
    v10 = *MEMORY[0x1E69792A0];
    v11 = [(PUCleanupToolBrushView *)v9 layer];
    [v11 setPreferredDynamicRange:v10];
  }

  return v9;
}

@end