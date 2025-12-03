@interface PUCleanupToolMaskView
- (PUCleanupMaskTransformerDelegate)maskTransformerDelegate;
- (PUCleanupToolMaskView)initWithMediaView:(id)view isHDR:(BOOL)r;
- (id)_debugColorForIndex:(int64_t)index;
- (id)_debugColors;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)drawMask:(CGContext *)mask mask:(id)a4 fillColor:(CGColor *)color strokeColor:(CGColor *)strokeColor lineScale:(double)scale;
- (void)drawSampledPoints:(id)points toContext:(CGContext *)context;
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

- (id)_debugColorForIndex:(int64_t)index
{
  _debugColors = [(PUCleanupToolMaskView *)self _debugColors];
  v5 = [_debugColors objectAtIndexedSubscript:{index % objc_msgSend(_debugColors, "count")}];

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

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v84 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  [layerCopy bounds];
  contextCopy = context;
  CGContextClearRect(context, v85);
  v62 = layerCopy;
  sublayers = [layerCopy sublayers];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v8 = [sublayers countByEnumeratingWithState:&v76 objects:v83 count:16];
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
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v76 + 1) + 8 * i) removeFromSuperlayer];
      }

      v9 = [sublayers countByEnumeratingWithState:&v76 objects:v83 count:16];
    }

    while (v9);
  }

  v61 = sublayers;
  mediaView = [(PUCleanupToolMaskView *)self mediaView];
  [mediaView zoomScale];
  v14 = v13;

  v15 = fmax(v14, 1.0);
  backgroundMasks = [(PUCleanupToolMaskView *)self backgroundMasks];

  v17 = &unk_1B3D00000;
  if (backgroundMasks)
  {
    v18 = [MEMORY[0x1E69DC888] colorWithRed:0.3 green:1.0 blue:0.3 alpha:1.0];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    backgroundMasks2 = [(PUCleanupToolMaskView *)self backgroundMasks];
    v20 = [backgroundMasks2 countByEnumeratingWithState:&v72 objects:v82 count:16];
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
            objc_enumerationMutation(backgroundMasks2);
          }

          v26 = *(*(&v72 + 1) + 8 * v24);
          v22 = v25 + 1;
          v27 = [(PUCleanupToolMaskView *)self _debugColorForIndex:v25];
          -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", contextCopy, v26, [v27 CGColor], objc_msgSend(v18, "CGColor"), v15);

          ++v24;
          v25 = v22;
        }

        while (v21 != v24);
        v21 = [backgroundMasks2 countByEnumeratingWithState:&v72 objects:v82 count:16];
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

  foregroundMasks = [(PUCleanupToolMaskView *)self foregroundMasks];

  if (foregroundMasks)
  {
    v29 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.3 blue:0.3 alpha:1.0];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    foregroundMasks2 = [(PUCleanupToolMaskView *)self foregroundMasks];
    v31 = [foregroundMasks2 countByEnumeratingWithState:&v68 objects:v81 count:16];
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
            objc_enumerationMutation(foregroundMasks2);
          }

          v36 = *(*(&v68 + 1) + 8 * v34);
          v22 = v35 + 1;
          v37 = [(PUCleanupToolMaskView *)self _debugColorForIndex:v35];
          -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", contextCopy, v36, [v37 CGColor], objc_msgSend(v29, "CGColor"), v15);

          ++v34;
          v35 = v22;
        }

        while (v32 != v34);
        v32 = [foregroundMasks2 countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v32);
    }

    v17 = &unk_1B3D00000;
  }

  foundIntersectionMasks = [(PUCleanupToolMaskView *)self foundIntersectionMasks];

  if (foundIntersectionMasks)
  {
    v39 = +[PUPhotoEditProtoSettings sharedInstance];
    retouchShowsIntersectedMasks = [v39 retouchShowsIntersectedMasks];

    if (retouchShowsIntersectedMasks)
    {
      v41 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
      v42 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.8];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      foundIntersectionMasks2 = [(PUCleanupToolMaskView *)self foundIntersectionMasks];
      v44 = [foundIntersectionMasks2 countByEnumeratingWithState:&v64 objects:v80 count:16];
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
              objc_enumerationMutation(foundIntersectionMasks2);
            }

            -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", contextCopy, *(*(&v64 + 1) + 8 * j), [v42 CGColor], objc_msgSend(v41, "CGColor"), v15 + v15);
          }

          v45 = [foundIntersectionMasks2 countByEnumeratingWithState:&v64 objects:v80 count:16];
        }

        while (v45);
      }

      v17 = &unk_1B3D00000;
    }
  }

  mask = [(PUCleanupToolMaskView *)self mask];

  if (mask)
  {
    v49 = [MEMORY[0x1E69DC888] colorWithRed:v17[47] green:1.0 blue:v17[47] alpha:1.0];
    v50 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    mask2 = [(PUCleanupToolMaskView *)self mask];
    -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", contextCopy, mask2, [v50 CGColor], objc_msgSend(v49, "CGColor"), v15);
  }

  selectedMask = [(PUCleanupToolMaskView *)self selectedMask];

  if (selectedMask)
  {
    v53 = [MEMORY[0x1E69DC888] colorWithRed:v17[47] green:1.0 blue:v17[47] alpha:1.0];
    v54 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.647058824 blue:0.0 alpha:0.5];
    selectedMask2 = [(PUCleanupToolMaskView *)self selectedMask];
    -[PUCleanupToolMaskView drawMask:mask:fillColor:strokeColor:lineScale:](self, "drawMask:mask:fillColor:strokeColor:lineScale:", contextCopy, selectedMask2, [v54 CGColor], objc_msgSend(v53, "CGColor"), v15);
  }

  sampledPoints = [(PUCleanupToolMaskView *)self sampledPoints];
  if (sampledPoints)
  {
    v57 = sampledPoints;
    v58 = +[PUPhotoEditProtoSettings sharedInstance];
    retouchShowsTargetPointBrushPoints = [v58 retouchShowsTargetPointBrushPoints];

    if (retouchShowsTargetPointBrushPoints)
    {
      sampledPoints2 = [(PUCleanupToolMaskView *)self sampledPoints];
      [(PUCleanupToolMaskView *)self drawSampledPoints:sampledPoints2 toContext:contextCopy];
    }
  }
}

- (void)drawSampledPoints:(id)points toContext:(CGContext *)context
{
  v33 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  WeakRetained = objc_loadWeakRetained(&self->_maskTransformerDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_maskTransformerDelegate);
    [v8 imageSize];
    v10 = v9;
    v12 = v11;

    CGContextSaveGState(context);
    orangeColor = [MEMORY[0x1E69DC888] orangeColor];
    CGContextSetFillColorWithColor(context, [orangeColor CGColor]);

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = pointsCopy;
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
          CGContextFillRect(context, v34);
          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    CGContextRestoreGState(context);
  }
}

- (void)drawMask:(CGContext *)mask mask:(id)a4 fillColor:(CGColor *)color strokeColor:(CGColor *)strokeColor lineScale:(double)scale
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
        c = mask;
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
        v27 = [MEMORY[0x1E69BDF30] dilateMask:fmax(4.0 / scale withRadius:1.0)];
        multiplyCompositingFilter = [MEMORY[0x1E695F648] multiplyCompositingFilter];
        v59 = v27;
        [multiplyCompositingFilter setInputImage:v27];
        [multiplyCompositingFilter setBackgroundImage:v26];
        v58 = multiplyCompositingFilter;
        outputImage = [multiplyCompositingFilter outputImage];
        v29 = [outputImage imageByApplyingFilter:@"CIMaskToAlpha"];
        v30 = [MEMORY[0x1E69DC888] colorWithCGColor:strokeColor];
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
        multiplyCompositingFilter2 = [MEMORY[0x1E695F648] multiplyCompositingFilter];
        [multiplyCompositingFilter2 setInputImage:v29];
        v53 = v33;
        [multiplyCompositingFilter2 setBackgroundImage:v33];
        outputImage2 = [multiplyCompositingFilter2 outputImage];
        v61 = v26;
        v36 = [v26 imageByApplyingFilter:@"CIColorInvert"];
        v37 = [v36 imageByApplyingFilter:@"CIMaskToAlpha"];

        v51 = [MEMORY[0x1E69DC888] colorWithCGColor:color];
        [v51 getRed:&v66 green:&v64 blue:&v63 alpha:&v62];
        v38 = [MEMORY[0x1E695F610] colorWithRed:v66.a green:v64 blue:v63 alpha:v62];
        v39 = MEMORY[0x1E69BDF30];
        v56 = v29;
        [v29 extent];
        v40 = [v39 imageWithColor:v38 extent:?];
        multiplyCompositingFilter3 = [MEMORY[0x1E695F648] multiplyCompositingFilter];
        v52 = v37;
        [multiplyCompositingFilter3 setInputImage:v37];
        [multiplyCompositingFilter3 setBackgroundImage:v40];
        outputImage3 = [multiplyCompositingFilter3 outputImage];
        v43 = outputImage2;
        v44 = [outputImage3 imageByCompositingOverImage:outputImage2];
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
  layer = [(PUCleanupToolMaskView *)self layer];
  [layer setNeedsDisplay];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUCleanupToolMaskView;
  [(PUCleanupToolMaskView *)&v13 layoutSubviews];
  edrGainLayer = [(PUCleanupToolMaskView *)self edrGainLayer];

  if (edrGainLayer)
  {
    [(PUCleanupToolMaskView *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    edrGainLayer2 = [(PUCleanupToolMaskView *)self edrGainLayer];
    [edrGainLayer2 setFrame:{v5, v7, v9, v11}];
  }
}

- (void)setUpEDRGainLayer
{
  layer = [MEMORY[0x1E69C34B0] layer];
  [(PUCleanupToolMaskView *)self setEdrGainLayer:layer];
  layer2 = [(PUCleanupToolMaskView *)self layer];
  [layer2 addSublayer:layer];
}

- (PUCleanupToolMaskView)initWithMediaView:(id)view isHDR:(BOOL)r
{
  rCopy = r;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PUCleanupToolMaskView;
  v8 = [(PUCleanupToolMaskView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mediaView, view);
    if (rCopy)
    {
      [(PUCleanupToolMaskView *)v9 setUpEDRGainLayer];
    }

    layer = [(PUCleanupToolMaskView *)v9 layer];
    [layer setGeometryFlipped:1];
  }

  return v9;
}

@end