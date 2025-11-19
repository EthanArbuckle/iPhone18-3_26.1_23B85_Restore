@interface PUCleanupToolMaskView
- (PUCleanupMaskTransformerDelegate)maskTransformerDelegate;
- (PUCleanupToolMaskView)initWithMediaView:(id)a3 isHDR:(BOOL)a4;
- (id)_debugColorForIndex:(int64_t)a3;
- (id)_debugColors;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)drawMask:(CGContext *)a3 mask:(id)a4 fillColor:(CGColor *)a5 strokeColor:(CGColor *)a6 lineScale:(double)a7;
- (void)drawSampledPoints:(id)a3 toContext:(CGContext *)a4;
- (void)layoutSubviews;
- (void)setNeedsDisplay;
- (void)setUpEDRGainLayer;
@end

@implementation PUCleanupToolMaskView

- (PUCleanupMaskTransformerDelegate)maskTransformerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_maskTransformerDelegate);

  return WeakRetained;
}

- (id)_debugColorForIndex:(int64_t)a3
{
  v4 = [(PUCleanupToolMaskView *)self _debugColors];
  v5 = [v4 objectAtIndexedSubscript:{a3 % objc_msgSend(v4, "count")}];

  return v5;
}

- (id)_debugColors
{
  if (_debugColors_onceToken != -1)
  {
    dispatch_once(&_debugColors_onceToken, &__block_literal_global_50903);
  }

  v3 = _debugColors_colors;

  return v3;
}

void __37__PUCleanupToolMaskView__debugColors__block_invoke()
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
  for (i = 0; i != 10; ++i)
  {
    v1 = [MEMORY[0x1E69DC888] colorWithHue:i / 10.0 saturation:0.8 brightness:0.8 alpha:0.6];
    [v4 addObject:v1];
  }

  v2 = [v4 copy];
  v3 = _debugColors_colors;
  _debugColors_colors = v2;
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [v6 bounds];
  v63 = a4;
  CGContextClearRect(a4, v85);
  v62 = v6;
  v7 = [v6 sublayers];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v76 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v77;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v77 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v76 + 1) + 8 * i) removeFromSuperlayer];
      }

      v9 = [v7 countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v9);
  }

  v61 = v7;
  v12 = [(PUCleanupToolMaskView *)self mediaView];
  [v12 zoomScale];
  v14 = v13;

  v15 = fmax(v14, 1.0);
  v16 = [(PUCleanupToolMaskView *)self backgroundMasks];

  v17 = &unk_1B3D00000;
  if (v16)
  {
    v18 = [MEMORY[0x1E69DC888] colorWithRed:0.3 green:1.0 blue:0.3 alpha:1.0];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v19 = [(PUCleanupToolMaskView *)self backgroundMasks];
    v20 = [v19 countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v73;
      do
      {
        v24 = 0;
        v25 = v22;
        do
        {
          if (*v73 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v72 + 1) + 8 * v24);
          v22 = v25 + 1;
          v27 = [(PUCleanupToolMaskView *)self _debugColorForIndex:v25];
          -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", v63, v26, [v27 CGColor], objc_msgSend(v18, "CGColor"), v15);

          ++v24;
          v25 = v22;
        }

        while (v21 != v24);
        v21 = [v19 countByEnumeratingWithState:&v72 objects:v82 count:16];
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    v17 = &unk_1B3D00000;
  }

  else
  {
    v22 = 0;
  }

  v28 = [(PUCleanupToolMaskView *)self foregroundMasks];

  if (v28)
  {
    v29 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.3 blue:0.3 alpha:1.0];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v30 = [(PUCleanupToolMaskView *)self foregroundMasks];
    v31 = [v30 countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v69;
      do
      {
        v34 = 0;
        v35 = v22;
        do
        {
          if (*v69 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v68 + 1) + 8 * v34);
          v22 = v35 + 1;
          v37 = [(PUCleanupToolMaskView *)self _debugColorForIndex:v35];
          -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", v63, v36, [v37 CGColor], objc_msgSend(v29, "CGColor"), v15);

          ++v34;
          v35 = v22;
        }

        while (v32 != v34);
        v32 = [v30 countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v32);
    }

    v17 = &unk_1B3D00000;
  }

  v38 = [(PUCleanupToolMaskView *)self foundIntersectionMasks];

  if (v38)
  {
    v39 = +[PUPhotoEditProtoSettings sharedInstance];
    v40 = [v39 retouchShowsIntersectedMasks];

    if (v40)
    {
      v41 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
      v42 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.8];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v43 = [(PUCleanupToolMaskView *)self foundIntersectionMasks];
      v44 = [v43 countByEnumeratingWithState:&v64 objects:v80 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v65;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v65 != v46)
            {
              objc_enumerationMutation(v43);
            }

            -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", v63, *(*(&v64 + 1) + 8 * j), [v42 CGColor], objc_msgSend(v41, "CGColor"), v15 + v15);
          }

          v45 = [v43 countByEnumeratingWithState:&v64 objects:v80 count:16];
        }

        while (v45);
      }

      v17 = &unk_1B3D00000;
    }
  }

  v48 = [(PUCleanupToolMaskView *)self mask];

  if (v48)
  {
    v49 = [MEMORY[0x1E69DC888] colorWithRed:v17[47] green:1.0 blue:v17[47] alpha:1.0];
    v50 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    v51 = [(PUCleanupToolMaskView *)self mask];
    -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", v63, v51, [v50 CGColor], objc_msgSend(v49, "CGColor"), v15);
  }

  v52 = [(PUCleanupToolMaskView *)self selectedMask];

  if (v52)
  {
    v53 = [MEMORY[0x1E69DC888] colorWithRed:v17[47] green:1.0 blue:v17[47] alpha:1.0];
    v54 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.647058824 blue:0.0 alpha:0.5];
    v55 = [(PUCleanupToolMaskView *)self selectedMask];
    -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", v63, v55, [v54 CGColor], objc_msgSend(v53, "CGColor"), v15);
  }

  v56 = [(PUCleanupToolMaskView *)self sampledPoints];
  if (v56)
  {
    v57 = v56;
    v58 = +[PUPhotoEditProtoSettings sharedInstance];
    v59 = [v58 retouchShowsTargetPointBrushPoints];

    if (v59)
    {
      v60 = [(PUCleanupToolMaskView *)self sampledPoints];
      [(PUCleanupToolMaskView *)self drawSampledPoints:v60 toContext:v63];
    }
  }
}

- (void)drawSampledPoints:(id)a3 toContext:(CGContext *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_maskTransformerDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_maskTransformerDelegate);
    [v8 imageSize];
    v10 = v9;
    v12 = v11;

    CGContextSaveGState(a4);
    v13 = [MEMORY[0x1E69DC888] orangeColor];
    CGContextSetFillColorWithColor(a4, [v13 CGColor]);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v28 + 1) + 8 * v18) nu_CGPoint];
          v20 = v10 * v19;
          v22 = v12 * v21;
          v23 = objc_loadWeakRetained(&self->_maskTransformerDelegate);
          [v23 transformedPoint:{v20, v22}];
          v25 = v24;
          v27 = v26;

          v34.origin.x = v25 + -1.0;
          v34.origin.y = v27 + -1.0;
          v34.size.width = 2.0;
          v34.size.height = 2.0;
          CGContextFillRect(a4, v34);
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    CGContextRestoreGState(a4);
  }
}

- (void)drawMask:(CGContext *)a3 mask:(id)a4 fillColor:(CGColor *)a5 strokeColor:(CGColor *)a6 lineScale:(double)a7
{
  v12 = a4;
  [v12 extent];
  if (!CGRectIsEmpty(v67))
  {
    [(PUCleanupToolMaskView *)self bounds];
    if (!CGRectIsEmpty(v68))
    {
      WeakRetained = objc_loadWeakRetained(&self->_maskTransformerDelegate);

      if (WeakRetained)
      {
        v14 = objc_loadWeakRetained(&self->_maskTransformerDelegate);
        [v14 imageSize];
        v16 = v15;
        v18 = v17;

        v19 = v16 / v18;
        [v12 extent];
        v21 = v20;
        [v12 extent];
        v23 = v19 / (v21 / v22);
        c = a3;
        if (fabs(v23 + -1.0) > 0.00000999999975)
        {
          CGAffineTransformMakeScale(&v66, 1.0, 1.0 / v23);
          v24 = [v12 imageByApplyingTransform:&v66];

          v12 = v24;
        }

        v25 = objc_loadWeakRetained(&self->_maskTransformerDelegate);
        v65 = 0;
        v26 = [v25 transformedImage:v12 error:&v65];

        v60 = [v26 imageByApplyingFilter:@"CIColorInvert"];
        v27 = [MEMORY[0x1E69BDF30] dilateMask:fmax(4.0 / a7 withRadius:1.0)];
        v28 = [MEMORY[0x1E695F648] multiplyCompositingFilter];
        v59 = v27;
        [v28 setInputImage:v27];
        [v28 setBackgroundImage:v26];
        v58 = v28;
        v57 = [v28 outputImage];
        v29 = [v57 imageByApplyingFilter:@"CIMaskToAlpha"];
        v30 = [MEMORY[0x1E69DC888] colorWithCGColor:a6];
        v66.a = 0.0;
        v63 = 0.0;
        v64 = 0.0;
        v62 = 0.0;
        v55 = v30;
        [v30 getRed:&v66 green:&v64 blue:&v63 alpha:&v62];
        v31 = [MEMORY[0x1E695F610] colorWithRed:v66.a green:v64 blue:v63 alpha:v62];
        v32 = MEMORY[0x1E69BDF30];
        [v29 extent];
        v54 = v31;
        v33 = [v32 imageWithColor:v31 extent:?];
        v34 = [MEMORY[0x1E695F648] multiplyCompositingFilter];
        [v34 setInputImage:v29];
        v53 = v33;
        [v34 setBackgroundImage:v33];
        v35 = [v34 outputImage];
        v61 = v26;
        v36 = [v26 imageByApplyingFilter:@"CIColorInvert"];
        v37 = [v36 imageByApplyingFilter:@"CIMaskToAlpha"];

        v51 = [MEMORY[0x1E69DC888] colorWithCGColor:a5];
        [v51 getRed:&v66 green:&v64 blue:&v63 alpha:&v62];
        v38 = [MEMORY[0x1E695F610] colorWithRed:v66.a green:v64 blue:v63 alpha:v62];
        v39 = MEMORY[0x1E69BDF30];
        v56 = v29;
        [v29 extent];
        v40 = [v39 imageWithColor:v38 extent:?];
        v41 = [MEMORY[0x1E695F648] multiplyCompositingFilter];
        v52 = v37;
        [v41 setInputImage:v37];
        [v41 setBackgroundImage:v40];
        v42 = [v41 outputImage];
        v43 = v35;
        v44 = [v42 imageByCompositingOverImage:v35];
        v45 = objc_opt_new();
        [v44 extent];
        v46 = [v45 createCGImage:v44 fromRect:?];
        if (v46)
        {
          v47 = v46;
          [(PUCleanupToolMaskView *)self bounds];
          v49 = v48;
          [(PUCleanupToolMaskView *)self bounds];
          v69.origin.x = 0.0;
          v69.origin.y = 0.0;
          v69.size.width = v49;
          CGContextDrawImage(c, v69, v47);
          CGImageRelease(v47);
        }

        v12 = v61;
      }
    }
  }
}

- (void)setNeedsDisplay
{
  v4.receiver = self;
  v4.super_class = PUCleanupToolMaskView;
  [(PUCleanupToolMaskView *)&v4 setNeedsDisplay];
  v3 = [(PUCleanupToolMaskView *)self layer];
  [v3 setNeedsDisplay];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUCleanupToolMaskView;
  [(PUCleanupToolMaskView *)&v13 layoutSubviews];
  v3 = [(PUCleanupToolMaskView *)self edrGainLayer];

  if (v3)
  {
    [(PUCleanupToolMaskView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(PUCleanupToolMaskView *)self edrGainLayer];
    [v12 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)setUpEDRGainLayer
{
  v4 = [MEMORY[0x1E69C34B0] layer];
  [(PUCleanupToolMaskView *)self setEdrGainLayer:v4];
  v3 = [(PUCleanupToolMaskView *)self layer];
  [v3 addSublayer:v4];
}

- (PUCleanupToolMaskView)initWithMediaView:(id)a3 isHDR:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = PUCleanupToolMaskView;
  v8 = [(PUCleanupToolMaskView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaView, a3);
    if (v4)
    {
      [(PUCleanupToolMaskView *)v9 setUpEDRGainLayer];
    }

    v10 = [(PUCleanupToolMaskView *)v9 layer];
    [v10 setGeometryFlipped:1];
  }

  return v9;
}

@end