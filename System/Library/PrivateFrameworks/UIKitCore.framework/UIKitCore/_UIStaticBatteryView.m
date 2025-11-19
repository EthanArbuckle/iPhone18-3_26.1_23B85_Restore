@interface _UIStaticBatteryView
+ (id)_batteryBodyImageWithSize:(CGSize)a3 forScale:(double)a4 batteryRect:(CGRect)a5 cornerRadius:(double)a6 lineWidth:(double)a7 filled:(BOOL)a8;
+ (id)_batteryBodyImageWithSize:(double)a3 forScale:(double)a4 batteryRect:(double)a5 cornerRadius:(double)a6 lineWidth:(double)a7 withBoltCutOutOfSize:(double)a8 inRect:(double)a9 boltFlipped:(uint64_t)a10;
+ (id)_batteryBoltImageWithSize:(CGSize)a3 boltSize:(CGSize)a4 forScale:(double)a5;
+ (id)_batteryBoltMaskImageWithSize:(CGSize)a3 boltSize:(CGSize)a4 forScale:(double)a5;
+ (id)_batteryFillImageWithSize:(CGSize)a3 forScale:(double)a4 cornerRadius:(double)a5;
+ (id)_batteryFillImageWithSize:(CGSize)a3 forScale:(double)a4 cornerRadius:(double)a5 withBoltCutOutOfSize:(CGSize)a6 inRect:(CGRect)a7 boltFlipped:(BOOL)a8;
+ (id)_batteryPinImageWithSize:(CGSize)a3 forScale:(double)a4 complexPinPath:(BOOL)a5;
+ (id)_imageByPunchingImage:(id)a3 inRect:(CGRect)a4 flippedHorizontally:(BOOL)a5 outOfImage:(id)a6 inRect:(CGRect)a7 size:(CGSize)a8 scale:(double)a9;
+ (id)_imageWithRenderedBezierPath:(id)a3 size:(CGSize)a4 scale:(double)a5 pathScaleFactor:(double)a6 stroke:(BOOL)a7 fill:(BOOL)a8;
+ (id)_percentFillImageWithSize:(CGSize)a3 forScale:(double)a4 batteryRect:(CGRect)a5 cornerRadius:(double)a6 lineWidth:(double)a7;
+ (id)_renderedImageOfSize:(CGSize)a3 scale:(double)a4 withActions:(id)a5;
- (BOOL)_useImagesWithCutoutsForBolt;
- (CGRect)_boltRectForTraitCollection:(id)a3 boltSize:(CGSize)a4;
- (CGRect)_updateBodyLayers;
- (CGSize)_boltPathSize;
- (double)_batteryPathScaleFactor;
- (void)_createBodyLayers;
- (void)_createBoltLayersWithSize:(CGSize)a3;
- (void)_createFillLayer;
- (void)_didFinishAnimatingBoltToVisible:(BOOL)a3;
- (void)_updateBatteryFillColor;
- (void)_updateBodyColors;
- (void)_updateFillLayer;
- (void)_willBeginAnimatingBoltToVisible:(BOOL)a3;
- (void)setLowBatteryMode:(int64_t)a3;
- (void)setShowsPercentage:(BOOL)a3;
@end

@implementation _UIStaticBatteryView

- (void)_createBodyLayers
{
  v7 = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setBodyLayer:v7];
  v3 = +[UIColor clearColor];
  [v7 setContentsMultiplyColor:{objc_msgSend(v3, "CGColor")}];

  v4 = [(UIView *)self layer];
  [v4 addSublayer:v7];

  v5 = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setPinLayer:v5];
  v6 = [(UIView *)self layer];
  [v6 addSublayer:v5];
}

- (void)_createFillLayer
{
  v5 = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setFillLayer:v5];
  v3 = +[UIColor clearColor];
  [v5 setContentsMultiplyColor:{objc_msgSend(v3, "CGColor")}];

  v4 = [(_UIBatteryView *)self bodyLayer];
  [v4 addSublayer:v5];

  [(_UIBatteryView *)self setPercentFillLayer:v5];
}

- (void)_updateBodyColors
{
  if ([(_UIBatteryView *)self showsPercentage])
  {
    v3 = [(_UIBatteryView *)self _batteryUnfilledColor];
    v4 = [v3 CGColor];

    v5 = [(_UIBatteryView *)self bodyLayer];
    [v5 setContentsMultiplyColor:v4];

    v6 = [(_UIBatteryView *)self pinLayer];
    [v6 setContentsMultiplyColor:v4];

    if ([(_UIBatteryView *)self _boltIsInactive])
    {
      [(_UIBatteryView *)self _textBoltInactiveColor];
    }

    else
    {
      [(_UIBatteryView *)self _batteryTextColor];
    }
  }

  else
  {
    v8 = [(_UIBatteryView *)self bodyColor];
    v9 = [v8 CGColor];
    v10 = [(_UIBatteryView *)self bodyLayer];
    [v10 setContentsMultiplyColor:v9];

    v11 = [(_UIBatteryView *)self pinColor];
    v12 = [v11 CGColor];
    v13 = [(_UIBatteryView *)self pinLayer];
    [v13 setContentsMultiplyColor:v12];

    if ([(_UIBatteryView *)self _boltIsInactive])
    {
      [(_UIBatteryView *)self boltInactiveColor];
    }

    else
    {
      [(_UIBatteryView *)self boltColor];
    }
  }
  v7 = ;
  v17 = v7;
  v14 = v7;
  v15 = [v17 CGColor];
  v16 = [(_UIBatteryView *)self boltLayer];
  [v16 setContentsMultiplyColor:v15];
}

- (void)_updateBatteryFillColor
{
  v3 = [(_UIBatteryView *)self _batteryFillColor];
  v4 = [v3 CGColor];
  v5 = [(_UIBatteryView *)self fillLayer];
  [v5 setContentsMultiplyColor:v4];

  v6 = [(_UIBatteryView *)self fillLayer];
  LODWORD(v7) = 1.0;
  [v6 setOpacity:v7];

  if ([(_UIBatteryView *)self showsPercentage])
  {

    [(_UIStaticBatteryView *)self _updateBodyColors];
  }
}

- (double)_batteryPathScaleFactor
{
  [(_UIStaticBatteryView *)self _batteryBoltLargeScaleFactor];
  v7.receiver = self;
  v7.super_class = _UIStaticBatteryView;
  v4 = 1.0 / v3;
  [(_UIBatteryView *)&v7 _batteryBoltLargeScaleFactor];
  return v4 / (1.0 / v5);
}

- (CGSize)_boltPathSize
{
  v3 = [(_UIBatteryView *)self boltMaskLayer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  [(_UIStaticBatteryView *)self _batteryPathScaleFactor];
  v9 = v7 / v8;
  v10 = v5 / v8;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)_updateFillLayer
{
  v3 = [(UIView *)self traitCollection];
  v4 = [(UIView *)self _shouldReverseLayoutDirection];
  [(_UIBatteryView *)self _bodyRectForTraitCollection:v3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 displayScale];
  v14 = v13;
  v15 = *(MEMORY[0x1E695F058] + 16);
  v41 = *MEMORY[0x1E695F058];
  v42 = v15;
  v40 = 0.0;
  [(_UIBatteryView *)self _fillLayerFrame:&v41 cornerRadius:&v40];
  if ([(_UIStaticBatteryView *)self _useImagesWithCutoutsForBolt])
  {
    v16 = [(_UIBatteryView *)self boltMaskLayer];
    [v16 bounds];
    v18 = v17;
    v20 = v19;

    [(_UIStaticBatteryView *)self _boltPathSize];
    v22 = v21;
    v24 = v23;
    [(_UIStaticBatteryView *)self _boltRectForTraitCollection:v3 boltSize:v18, v20];
    v29 = [objc_opt_class() _batteryFillImageWithSize:v4 forScale:v42 cornerRadius:v14 withBoltCutOutOfSize:v40 inRect:v22 boltFlipped:{v24, v25 - *&v41, v26 - *(&v41 + 1), v27, v28}];
  }

  else if ([(_UIBatteryView *)self showsPercentage])
  {
    [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v3];
    v31 = v30;
    if ([(_UIBatteryView *)self rounded])
    {
      v32 = v12 / 3.125;
    }

    else
    {
      [(_UIBatteryView *)self _outsideCornerRadiusForTraitCollection:v3];
      v32 = v33 + v31 * -0.5;
    }

    v29 = [objc_opt_class() _percentFillImageWithSize:v42 forScale:v14 batteryRect:v6 cornerRadius:v8 lineWidth:{v10, v12, v32, 0}];
  }

  else
  {
    v29 = [objc_opt_class() _batteryFillImageWithSize:v42 forScale:v14 cornerRadius:v40];
  }

  v34 = v29;
  v35 = [v29 CGImage];
  v36 = [(_UIBatteryView *)self fillLayer];
  [v36 setContents:v35];

  v37 = v41;
  v38 = v42;
  v39 = [(_UIBatteryView *)self fillLayer];
  [v39 setFrame:{v37, v38}];
}

- (CGRect)_updateBodyLayers
{
  v3 = [(UIView *)self traitCollection];
  v4 = [(_UIStaticBatteryView *)self _useImagesWithCutoutsForBolt];
  v5 = [(UIView *)self _shouldReverseLayoutDirection];
  v6 = [(_UIBatteryView *)self showsPercentage];
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:v3];
  v8 = v7;
  [v3 displayScale];
  v10 = v9;
  [(_UIBatteryView *)self _batterySizeForTraitCollection:v3];
  v65 = v11;
  [(_UIBatteryView *)self _pinSizeForTraitCollection:v3];
  v13 = v12;
  v67 = v14;
  [(_UIBatteryView *)self _bodyRectForTraitCollection:v3];
  v16 = v15;
  v68 = v18;
  v69 = v17;
  v70 = v19;
  [(UIView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v66 = v26;
  if ([(_UIBatteryView *)self rounded])
  {
    v27 = v70 / 3.125;
  }

  else
  {
    [(_UIBatteryView *)self _outsideCornerRadiusForTraitCollection:v3];
    v27 = v28 + v8 * -0.5;
  }

  v64 = v27;
  if (v4)
  {
    v29 = [(_UIBatteryView *)self boltMaskLayer];
    [v29 bounds];
    v63 = v16;
    v31 = v30;
    v62 = v21;
    v32 = v8;
    v34 = v33;

    [(_UIStaticBatteryView *)self _boltPathSize];
    v36 = v35;
    v61 = v37;
    [(_UIStaticBatteryView *)self _boltRectForTraitCollection:v3 boltSize:v31, v34];
    v8 = v32;
    v21 = v62;
    v16 = v63;
    v60 = v36;
    v38 = v66;
    v43 = [objc_opt_class() _batteryBodyImageWithSize:v5 forScale:v25 batteryRect:v66 cornerRadius:v10 lineWidth:v63 withBoltCutOutOfSize:v69 inRect:v68 boltFlipped:{v70, v64, *&v8, v60, v61, v39, v40, v41, v42}];
  }

  else
  {
    v44 = objc_opt_class();
    v45 = 0.0;
    if (!v6)
    {
      v45 = v8;
    }

    v38 = v66;
    v43 = [v44 _batteryBodyImageWithSize:v6 forScale:v25 batteryRect:v66 cornerRadius:v10 lineWidth:v16 filled:{v69, v68, v70, v64, *&v45}];
  }

  v46 = v43;
  v47 = [v43 CGImage];
  v48 = [(_UIBatteryView *)self bodyLayer];
  [v48 setContents:v47];

  v49 = [(_UIBatteryView *)self bodyLayer];
  [v49 setFrame:{v21, v23, v25, v38}];

  v50 = [(_UIBatteryView *)self boltMaskLayer];
  [v50 setHidden:v4];

  v71.origin.x = v21;
  v71.origin.y = v23;
  v71.size.width = v25;
  v71.size.height = v38;
  v51 = CGRectGetMidY(v71) + v67 * -0.5;
  v52 = [(_UIBatteryView *)self pinLayer];
  [v52 setFrame:{v8 + v65, v51, v13, v67}];

  v53 = [objc_opt_class() _batteryPinImageWithSize:-[_UIBatteryView internalSizeCategory](self forScale:"internalSizeCategory") == 2 complexPinPath:{v13, v67, v10}];
  v54 = [v53 CGImage];
  v55 = [(_UIBatteryView *)self pinLayer];
  [v55 setContents:v54];

  v56 = v16;
  v58 = v68;
  v57 = v69;
  v59 = v70;
  result.size.height = v59;
  result.size.width = v58;
  result.origin.y = v57;
  result.origin.x = v56;
  return result;
}

- (BOOL)_useImagesWithCutoutsForBolt
{
  if ([(_UIBatteryView *)self showsPercentage]|| self->_inflightBoltAnimationCount)
  {
    return 0;
  }

  return [(_UIBatteryView *)self _shouldShowBolt];
}

- (void)_createBoltLayersWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIView *)self traitCollection];
  [v6 displayScale];
  v8 = v7;

  [(_UIStaticBatteryView *)self _batteryPathScaleFactor];
  v10 = width * v9;
  v11 = height * v9;
  v12 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  v19 = [objc_opt_class() _batteryBoltMaskImageWithSize:width * v9 boltSize:height * v9 forScale:{width, height, v8}];
  v14 = [MEMORY[0x1E6979398] layer];
  v15 = v19;
  [v14 setContents:{objc_msgSend(v19, "CGImage")}];
  v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [v14 setCompositingFilter:v16];

  [v14 setBounds:{v12, v13, v10, v11}];
  [(_UIBatteryView *)self setBoltMaskLayer:v14];
  v17 = [objc_opt_class() _batteryBoltImageWithSize:v10 boltSize:v11 forScale:{width, height, v8}];
  v18 = [MEMORY[0x1E6979398] layer];
  [v18 setContents:{objc_msgSend(v17, "CGImage")}];
  [v18 setBounds:{v12, v13, v10, v11}];
  [(_UIBatteryView *)self setBoltLayer:v18];
}

- (CGRect)_boltRectForTraitCollection:(id)a3 boltSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  [(_UIBatteryView *)self _bodyRectForTraitCollection:a3];
  x = v21.origin.x;
  y = v21.origin.y;
  v9 = v21.size.width;
  v10 = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = v9;
  v22.size.height = v10;
  MidY = CGRectGetMidY(v22);
  [(_UIStaticBatteryView *)self _batteryBoltLargeScaleFactor];
  v14 = v13;
  [(_UIBatteryView *)self _batteryBoltScaleFactorMultiplier];
  v16 = v14 * v15;
  v17 = width * v16;
  v18 = height * v16;
  v19 = MidX - width * v16 * 0.5;
  v20 = MidY - v18 * 0.5;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)_willBeginAnimatingBoltToVisible:(BOOL)a3
{
  ++self->_inflightBoltAnimationCount;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStaticBatteryView *)self _updateBodyLayers];
  [(_UIStaticBatteryView *)self _updateFillLayer];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)_didFinishAnimatingBoltToVisible:(BOOL)a3
{
  --self->_inflightBoltAnimationCount;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStaticBatteryView *)self _updateBodyLayers];
  [(_UIStaticBatteryView *)self _updateFillLayer];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)setShowsPercentage:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIStaticBatteryView;
  [(_UIBatteryView *)&v4 setShowsPercentage:a3];
  [(UIView *)self frame];
  if (!CGRectIsEmpty(v5))
  {
    [(_UIStaticBatteryView *)self _updateBodyLayers];
    [(_UIStaticBatteryView *)self _updateFillLayer];
  }
}

- (void)setLowBatteryMode:(int64_t)a3
{
  v5 = [(_UIBatteryView *)self isLowBattery];
  v6.receiver = self;
  v6.super_class = _UIStaticBatteryView;
  [(_UIBatteryView *)&v6 setLowBatteryMode:a3];
  if (v5 != [(_UIBatteryView *)self isLowBattery])
  {
    [(_UIStaticBatteryView *)self _updateBatteryFillColor];
  }
}

+ (id)_imageWithRenderedBezierPath:(id)a3 size:(CGSize)a4 scale:(double)a5 pathScaleFactor:(double)a6 stroke:(BOOL)a7 fill:(BOOL)a8
{
  height = a4.height;
  width = a4.width;
  v15 = a3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92___UIStaticBatteryView__imageWithRenderedBezierPath_size_scale_pathScaleFactor_stroke_fill___block_invoke;
  v19[3] = &unk_1E7109C88;
  v21 = a6;
  v22 = a7;
  v20 = v15;
  v23 = a8;
  v16 = v15;
  v17 = [a1 _renderedImageOfSize:v19 scale:width withActions:{height, a5}];

  return v17;
}

+ (id)_imageByPunchingImage:(id)a3 inRect:(CGRect)a4 flippedHorizontally:(BOOL)a5 outOfImage:(id)a6 inRect:(CGRect)a7 size:(CGSize)a8 scale:(double)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a4.size.height;
  v16 = a4.size.width;
  v17 = a4.origin.y;
  v18 = a4.origin.x;
  v20 = a3;
  v21 = a6;
  if (a5)
  {
    v22 = [v20 imageWithHorizontallyFlippedOrientation];
  }

  else
  {
    v22 = v20;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __102___UIStaticBatteryView__imageByPunchingImage_inRect_flippedHorizontally_outOfImage_inRect_size_scale___block_invoke;
  v27[3] = &unk_1E7109CB0;
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  v28 = v21;
  v29 = v22;
  v34 = v18;
  v35 = v17;
  v36 = v16;
  v37 = v15;
  v23 = v22;
  v24 = v21;
  v25 = [a1 _renderedImageOfSize:v27 scale:a9 withActions:{v39, v40}];

  return v25;
}

+ (id)_renderedImageOfSize:(CGSize)a3 scale:(double)a4 withActions:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  if (!v10)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"_UIStaticBatteryView.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v11 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v11 setScale:a4];
  [v11 setOpaque:0];
  [v11 setPreferredRange:0x7FFFLL];
  v12 = [[UIGraphicsImageRenderer alloc] initWithSize:v11 format:width, height];
  v13 = [(UIGraphicsImageRenderer *)v12 imageWithActions:v10];

  return v13;
}

+ (id)_batteryBodyImageWithSize:(CGSize)a3 forScale:(double)a4 batteryRect:(CGRect)a5 cornerRadius:(double)a6 lineWidth:(double)a7 filled:(BOOL)a8
{
  v8 = a8;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3.height;
  v15 = a3.width;
  if (qword_1ED4A2CE8 != -1)
  {
    dispatch_once(&qword_1ED4A2CE8, &__block_literal_global_715);
  }

  v17 = [[_UISignalViewCacheKey alloc] initWithClass:a1 size:v8 rect:v15 radius:v14 lineWidth:x alternate:y scale:width, height, a6, a7, *&a4];
  v18 = [_MergedGlobals_1395 objectForKey:v17];
  if (!v18)
  {
    v19 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, a6];
    [v19 setLineWidth:a7];
    v18 = [a1 _imageWithRenderedBezierPath:v19 size:1 scale:v8 pathScaleFactor:v15 stroke:v14 fill:{a4, 1.0}];
    [_MergedGlobals_1395 setObject:v18 forKey:v17];
  }

  return v18;
}

+ (id)_batteryBodyImageWithSize:(double)a3 forScale:(double)a4 batteryRect:(double)a5 cornerRadius:(double)a6 lineWidth:(double)a7 withBoltCutOutOfSize:(double)a8 inRect:(double)a9 boltFlipped:(uint64_t)a10
{
  if (qword_1ED4A2CF8 != -1)
  {
    dispatch_once(&qword_1ED4A2CF8, &__block_literal_global_23_4);
  }

  v28 = [_UISignalViewCacheKey alloc];
  v29 = [(_UISignalViewCacheKey *)v28 initWithClass:a1 size:a11 rect:a2 radius:a3 lineWidth:a5 secondarySize:a6 secondaryRect:a7 alternate:a8 scale:a9, a12, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *&a15, *&a16, *&a17, *&a18, *&a4];
  v30 = [qword_1ED4A2CF0 objectForKey:v29];
  if (!v30)
  {
    v31 = [a1 _batteryBodyImageWithSize:0 forScale:a2 batteryRect:a3 cornerRadius:a4 lineWidth:a5 filled:{a6, a7, a8, a9, *&a12}];
    v32 = [a1 _batteryBoltMaskImageWithSize:a13 boltSize:a14 forScale:{a13, a14, a4}];
    v30 = [objc_opt_class() _imageByPunchingImage:v32 inRect:a11 flippedHorizontally:v31 outOfImage:a15 inRect:a16 size:a17 scale:{a18, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a2, a3, *&a2, *&a3, *&a4}];
    [qword_1ED4A2CF0 setObject:v30 forKey:v29];
  }

  return v30;
}

+ (id)_percentFillImageWithSize:(CGSize)a3 forScale:(double)a4 batteryRect:(CGRect)a5 cornerRadius:(double)a6 lineWidth:(double)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3.height;
  v13 = a3.width;
  if (qword_1ED4A2D08 != -1)
  {
    dispatch_once(&qword_1ED4A2D08, &__block_literal_global_25_9);
  }

  v15 = [[_UISignalViewCacheKey alloc] initWithClass:a1 size:0 rect:v13 radius:v12 lineWidth:x alternate:y scale:width, height, a6, a7, *&a4];
  v16 = [qword_1ED4A2D00 objectForKey:v15];
  if (!v16)
  {
    if (width >= a6 + a6)
    {
      v17 = width;
    }

    else
    {
      v17 = a6 + a6;
    }

    v18 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, v17, height, a6];
    [v18 setLineWidth:a7];
    v16 = [a1 _imageWithRenderedBezierPath:v18 size:1 scale:1 pathScaleFactor:v13 stroke:v12 fill:{a4, 1.0}];
    [qword_1ED4A2D00 setObject:v16 forKey:v15];
  }

  return v16;
}

+ (id)_batteryPinImageWithSize:(CGSize)a3 forScale:(double)a4 complexPinPath:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  if (qword_1ED4A2D18 != -1)
  {
    dispatch_once(&qword_1ED4A2D18, &__block_literal_global_27_4);
  }

  v10 = [_UISignalViewCacheKey alloc];
  v11 = [(_UISignalViewCacheKey *)v10 initWithClass:a1 size:v5 rect:width radius:height lineWidth:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, 0.0, *&a4];
  v12 = [qword_1ED4A2D10 objectForKey:v11];
  if (!v12)
  {
    v13 = [a1 _pinBezierPathForSize:v5 isComplex:{width, height}];
    v12 = [a1 _imageWithRenderedBezierPath:v13 size:0 scale:1 pathScaleFactor:width stroke:height fill:{a4, 1.0}];
    [qword_1ED4A2D10 setObject:v12 forKey:v11];
  }

  return v12;
}

+ (id)_batteryBoltImageWithSize:(CGSize)a3 boltSize:(CGSize)a4 forScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  if (qword_1ED4A2D28 != -1)
  {
    dispatch_once(&qword_1ED4A2D28, &__block_literal_global_29_7);
  }

  v11 = [_UISignalViewCacheKey alloc];
  v12 = [(_UISignalViewCacheKey *)v11 initWithClass:a1 size:0 rect:v9 radius:v8 lineWidth:*&width secondarySize:*&height secondaryRect:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&a5];
  v13 = [qword_1ED4A2D20 objectForKey:v12];
  if (!v13)
  {
    if (v9 / width <= v8 / height)
    {
      v14 = v9 / width;
    }

    else
    {
      v14 = v8 / height;
    }

    v15 = [a1 _boltBezierPathForSize:{width, height}];
    v13 = [a1 _imageWithRenderedBezierPath:v15 size:0 scale:1 pathScaleFactor:v9 stroke:v8 fill:{a5, v14}];
    [qword_1ED4A2D20 setObject:v13 forKey:v12];
  }

  return v13;
}

+ (id)_batteryBoltMaskImageWithSize:(CGSize)a3 boltSize:(CGSize)a4 forScale:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  if (qword_1ED4A2D38 != -1)
  {
    dispatch_once(&qword_1ED4A2D38, &__block_literal_global_31_5);
  }

  v11 = [_UISignalViewCacheKey alloc];
  v12 = [(_UISignalViewCacheKey *)v11 initWithClass:a1 size:0 rect:v9 radius:v8 lineWidth:*&width secondarySize:*&height secondaryRect:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&a5];
  v13 = [qword_1ED4A2D30 objectForKey:v12];
  if (!v13)
  {
    if (v9 / width <= v8 / height)
    {
      v14 = v9 / width;
    }

    else
    {
      v14 = v8 / height;
    }

    v15 = [a1 _boltMaskBezierPath];
    v13 = [a1 _imageWithRenderedBezierPath:v15 size:0 scale:1 pathScaleFactor:v9 stroke:v8 fill:{a5, v14}];
    [qword_1ED4A2D30 setObject:v13 forKey:v12];
  }

  return v13;
}

+ (id)_batteryFillImageWithSize:(CGSize)a3 forScale:(double)a4 cornerRadius:(double)a5
{
  height = a3.height;
  width = a3.width;
  if (qword_1ED4A2D48 != -1)
  {
    dispatch_once(&qword_1ED4A2D48, &__block_literal_global_33_12);
  }

  v10 = [_UISignalViewCacheKey alloc];
  v11 = [(_UISignalViewCacheKey *)v10 initWithClass:a1 size:0 rect:width radius:height lineWidth:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), a5, 0.0, *&a4];
  v12 = [qword_1ED4A2D40 objectForKey:v11];
  if (!v12)
  {
    v13 = [UIBezierPath _continuousRoundedCARectBezierPath:-1 withRoundedCorners:16 cornerRadius:*MEMORY[0x1E695EFF8] segments:*(MEMORY[0x1E695EFF8] + 8), width, height, a5, a5];
    v12 = [a1 _imageWithRenderedBezierPath:v13 size:0 scale:1 pathScaleFactor:width stroke:height fill:{a4, 1.0}];
    [qword_1ED4A2D40 setObject:v12 forKey:v11];
  }

  return v12;
}

+ (id)_batteryFillImageWithSize:(CGSize)a3 forScale:(double)a4 cornerRadius:(double)a5 withBoltCutOutOfSize:(CGSize)a6 inRect:(CGRect)a7 boltFlipped:(BOOL)a8
{
  v8 = a8;
  height = a6.height;
  width = a6.width;
  v21 = a3.height;
  v12 = a3.width;
  if (qword_1ED4A2D58 != -1)
  {
    dispatch_once(&qword_1ED4A2D58, &__block_literal_global_35_3);
  }

  v14 = [_UISignalViewCacheKey alloc];
  v15 = [(_UISignalViewCacheKey *)v14 initWithClass:a1 size:v8 rect:v12 radius:v21 lineWidth:*MEMORY[0x1E695F050] secondarySize:*(MEMORY[0x1E695F050] + 8) secondaryRect:*(MEMORY[0x1E695F050] + 16) alternate:*(MEMORY[0x1E695F050] + 24) scale:a5, 0.0, *&width, *&height, *&a7.origin.x, *&a7.origin.y, *&a7.size.width, *&a7.size.height, *&a4];
  v16 = [qword_1ED4A2D50 objectForKey:v15];
  if (!v16)
  {
    v17 = [a1 _batteryFillImageWithSize:v12 forScale:v21 cornerRadius:{a4, a5}];
    v18 = [a1 _batteryBoltMaskImageWithSize:width boltSize:height forScale:{width, height, a4}];
    v16 = [objc_opt_class() _imageByPunchingImage:v18 inRect:v8 flippedHorizontally:v17 outOfImage:a7.origin.x inRect:a7.origin.y size:a7.size.width scale:{a7.size.height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v21, *&v12, *&v21, *&a4}];
    [qword_1ED4A2D50 setObject:v16 forKey:v15];
  }

  return v16;
}

@end