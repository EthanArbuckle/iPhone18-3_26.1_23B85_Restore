@interface _UIStaticBatteryView
+ (id)_batteryBodyImageWithSize:(CGSize)size forScale:(double)scale batteryRect:(CGRect)rect cornerRadius:(double)radius lineWidth:(double)width filled:(BOOL)filled;
+ (id)_batteryBodyImageWithSize:(double)size forScale:(double)scale batteryRect:(double)rect cornerRadius:(double)radius lineWidth:(double)width withBoltCutOutOfSize:(double)ofSize inRect:(double)inRect boltFlipped:(uint64_t)self0;
+ (id)_batteryBoltImageWithSize:(CGSize)size boltSize:(CGSize)boltSize forScale:(double)scale;
+ (id)_batteryBoltMaskImageWithSize:(CGSize)size boltSize:(CGSize)boltSize forScale:(double)scale;
+ (id)_batteryFillImageWithSize:(CGSize)size forScale:(double)scale cornerRadius:(double)radius;
+ (id)_batteryFillImageWithSize:(CGSize)size forScale:(double)scale cornerRadius:(double)radius withBoltCutOutOfSize:(CGSize)ofSize inRect:(CGRect)rect boltFlipped:(BOOL)flipped;
+ (id)_batteryPinImageWithSize:(CGSize)size forScale:(double)scale complexPinPath:(BOOL)path;
+ (id)_imageByPunchingImage:(id)image inRect:(CGRect)rect flippedHorizontally:(BOOL)horizontally outOfImage:(id)ofImage inRect:(CGRect)inRect size:(CGSize)size scale:(double)scale;
+ (id)_imageWithRenderedBezierPath:(id)path size:(CGSize)size scale:(double)scale pathScaleFactor:(double)factor stroke:(BOOL)stroke fill:(BOOL)fill;
+ (id)_percentFillImageWithSize:(CGSize)size forScale:(double)scale batteryRect:(CGRect)rect cornerRadius:(double)radius lineWidth:(double)width;
+ (id)_renderedImageOfSize:(CGSize)size scale:(double)scale withActions:(id)actions;
- (BOOL)_useImagesWithCutoutsForBolt;
- (CGRect)_boltRectForTraitCollection:(id)collection boltSize:(CGSize)size;
- (CGRect)_updateBodyLayers;
- (CGSize)_boltPathSize;
- (double)_batteryPathScaleFactor;
- (void)_createBodyLayers;
- (void)_createBoltLayersWithSize:(CGSize)size;
- (void)_createFillLayer;
- (void)_didFinishAnimatingBoltToVisible:(BOOL)visible;
- (void)_updateBatteryFillColor;
- (void)_updateBodyColors;
- (void)_updateFillLayer;
- (void)_willBeginAnimatingBoltToVisible:(BOOL)visible;
- (void)setLowBatteryMode:(int64_t)mode;
- (void)setShowsPercentage:(BOOL)percentage;
@end

@implementation _UIStaticBatteryView

- (void)_createBodyLayers
{
  layer = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setBodyLayer:layer];
  v3 = +[UIColor clearColor];
  [layer setContentsMultiplyColor:{objc_msgSend(v3, "CGColor")}];

  layer2 = [(UIView *)self layer];
  [layer2 addSublayer:layer];

  layer3 = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setPinLayer:layer3];
  layer4 = [(UIView *)self layer];
  [layer4 addSublayer:layer3];
}

- (void)_createFillLayer
{
  layer = [MEMORY[0x1E6979398] layer];
  [(_UIBatteryView *)self setFillLayer:layer];
  v3 = +[UIColor clearColor];
  [layer setContentsMultiplyColor:{objc_msgSend(v3, "CGColor")}];

  bodyLayer = [(_UIBatteryView *)self bodyLayer];
  [bodyLayer addSublayer:layer];

  [(_UIBatteryView *)self setPercentFillLayer:layer];
}

- (void)_updateBodyColors
{
  if ([(_UIBatteryView *)self showsPercentage])
  {
    _batteryUnfilledColor = [(_UIBatteryView *)self _batteryUnfilledColor];
    cGColor = [_batteryUnfilledColor CGColor];

    bodyLayer = [(_UIBatteryView *)self bodyLayer];
    [bodyLayer setContentsMultiplyColor:cGColor];

    pinLayer = [(_UIBatteryView *)self pinLayer];
    [pinLayer setContentsMultiplyColor:cGColor];

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
    bodyColor = [(_UIBatteryView *)self bodyColor];
    cGColor2 = [bodyColor CGColor];
    bodyLayer2 = [(_UIBatteryView *)self bodyLayer];
    [bodyLayer2 setContentsMultiplyColor:cGColor2];

    pinColor = [(_UIBatteryView *)self pinColor];
    cGColor3 = [pinColor CGColor];
    pinLayer2 = [(_UIBatteryView *)self pinLayer];
    [pinLayer2 setContentsMultiplyColor:cGColor3];

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
  cGColor4 = [v17 CGColor];
  boltLayer = [(_UIBatteryView *)self boltLayer];
  [boltLayer setContentsMultiplyColor:cGColor4];
}

- (void)_updateBatteryFillColor
{
  _batteryFillColor = [(_UIBatteryView *)self _batteryFillColor];
  cGColor = [_batteryFillColor CGColor];
  fillLayer = [(_UIBatteryView *)self fillLayer];
  [fillLayer setContentsMultiplyColor:cGColor];

  fillLayer2 = [(_UIBatteryView *)self fillLayer];
  LODWORD(v7) = 1.0;
  [fillLayer2 setOpacity:v7];

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
  boltMaskLayer = [(_UIBatteryView *)self boltMaskLayer];
  [boltMaskLayer bounds];
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
  traitCollection = [(UIView *)self traitCollection];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  [(_UIBatteryView *)self _bodyRectForTraitCollection:traitCollection];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [traitCollection displayScale];
  v14 = v13;
  v15 = *(MEMORY[0x1E695F058] + 16);
  v41 = *MEMORY[0x1E695F058];
  v42 = v15;
  v40 = 0.0;
  [(_UIBatteryView *)self _fillLayerFrame:&v41 cornerRadius:&v40];
  if ([(_UIStaticBatteryView *)self _useImagesWithCutoutsForBolt])
  {
    boltMaskLayer = [(_UIBatteryView *)self boltMaskLayer];
    [boltMaskLayer bounds];
    v18 = v17;
    v20 = v19;

    [(_UIStaticBatteryView *)self _boltPathSize];
    v22 = v21;
    v24 = v23;
    [(_UIStaticBatteryView *)self _boltRectForTraitCollection:traitCollection boltSize:v18, v20];
    v29 = [objc_opt_class() _batteryFillImageWithSize:_shouldReverseLayoutDirection forScale:v42 cornerRadius:v14 withBoltCutOutOfSize:v40 inRect:v22 boltFlipped:{v24, v25 - *&v41, v26 - *(&v41 + 1), v27, v28}];
  }

  else if ([(_UIBatteryView *)self showsPercentage])
  {
    [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
    v31 = v30;
    if ([(_UIBatteryView *)self rounded])
    {
      v32 = v12 / 3.125;
    }

    else
    {
      [(_UIBatteryView *)self _outsideCornerRadiusForTraitCollection:traitCollection];
      v32 = v33 + v31 * -0.5;
    }

    v29 = [objc_opt_class() _percentFillImageWithSize:v42 forScale:v14 batteryRect:v6 cornerRadius:v8 lineWidth:{v10, v12, v32, 0}];
  }

  else
  {
    v29 = [objc_opt_class() _batteryFillImageWithSize:v42 forScale:v14 cornerRadius:v40];
  }

  v34 = v29;
  cGImage = [v29 CGImage];
  fillLayer = [(_UIBatteryView *)self fillLayer];
  [fillLayer setContents:cGImage];

  v37 = v41;
  v38 = v42;
  fillLayer2 = [(_UIBatteryView *)self fillLayer];
  [fillLayer2 setFrame:{v37, v38}];
}

- (CGRect)_updateBodyLayers
{
  traitCollection = [(UIView *)self traitCollection];
  _useImagesWithCutoutsForBolt = [(_UIStaticBatteryView *)self _useImagesWithCutoutsForBolt];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  showsPercentage = [(_UIBatteryView *)self showsPercentage];
  [(_UIBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
  v8 = v7;
  [traitCollection displayScale];
  v10 = v9;
  [(_UIBatteryView *)self _batterySizeForTraitCollection:traitCollection];
  v65 = v11;
  [(_UIBatteryView *)self _pinSizeForTraitCollection:traitCollection];
  v13 = v12;
  v67 = v14;
  [(_UIBatteryView *)self _bodyRectForTraitCollection:traitCollection];
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
    [(_UIBatteryView *)self _outsideCornerRadiusForTraitCollection:traitCollection];
    v27 = v28 + v8 * -0.5;
  }

  v64 = v27;
  if (_useImagesWithCutoutsForBolt)
  {
    boltMaskLayer = [(_UIBatteryView *)self boltMaskLayer];
    [boltMaskLayer bounds];
    v63 = v16;
    v31 = v30;
    v62 = v21;
    v32 = v8;
    v34 = v33;

    [(_UIStaticBatteryView *)self _boltPathSize];
    v36 = v35;
    v61 = v37;
    [(_UIStaticBatteryView *)self _boltRectForTraitCollection:traitCollection boltSize:v31, v34];
    v8 = v32;
    v21 = v62;
    v16 = v63;
    v60 = v36;
    v38 = v66;
    v43 = [objc_opt_class() _batteryBodyImageWithSize:_shouldReverseLayoutDirection forScale:v25 batteryRect:v66 cornerRadius:v10 lineWidth:v63 withBoltCutOutOfSize:v69 inRect:v68 boltFlipped:{v70, v64, *&v8, v60, v61, v39, v40, v41, v42}];
  }

  else
  {
    v44 = objc_opt_class();
    v45 = 0.0;
    if (!showsPercentage)
    {
      v45 = v8;
    }

    v38 = v66;
    v43 = [v44 _batteryBodyImageWithSize:showsPercentage forScale:v25 batteryRect:v66 cornerRadius:v10 lineWidth:v16 filled:{v69, v68, v70, v64, *&v45}];
  }

  v46 = v43;
  cGImage = [v43 CGImage];
  bodyLayer = [(_UIBatteryView *)self bodyLayer];
  [bodyLayer setContents:cGImage];

  bodyLayer2 = [(_UIBatteryView *)self bodyLayer];
  [bodyLayer2 setFrame:{v21, v23, v25, v38}];

  boltMaskLayer2 = [(_UIBatteryView *)self boltMaskLayer];
  [boltMaskLayer2 setHidden:_useImagesWithCutoutsForBolt];

  v71.origin.x = v21;
  v71.origin.y = v23;
  v71.size.width = v25;
  v71.size.height = v38;
  v51 = CGRectGetMidY(v71) + v67 * -0.5;
  pinLayer = [(_UIBatteryView *)self pinLayer];
  [pinLayer setFrame:{v8 + v65, v51, v13, v67}];

  v53 = [objc_opt_class() _batteryPinImageWithSize:-[_UIBatteryView internalSizeCategory](self forScale:"internalSizeCategory") == 2 complexPinPath:{v13, v67, v10}];
  cGImage2 = [v53 CGImage];
  pinLayer2 = [(_UIBatteryView *)self pinLayer];
  [pinLayer2 setContents:cGImage2];

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

- (void)_createBoltLayersWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  [(_UIStaticBatteryView *)self _batteryPathScaleFactor];
  v10 = width * v9;
  v11 = height * v9;
  v12 = *MEMORY[0x1E695EFF8];
  v13 = *(MEMORY[0x1E695EFF8] + 8);
  v19 = [objc_opt_class() _batteryBoltMaskImageWithSize:width * v9 boltSize:height * v9 forScale:{width, height, v8}];
  layer = [MEMORY[0x1E6979398] layer];
  v15 = v19;
  [layer setContents:{objc_msgSend(v19, "CGImage")}];
  v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E69798E8]];
  [layer setCompositingFilter:v16];

  [layer setBounds:{v12, v13, v10, v11}];
  [(_UIBatteryView *)self setBoltMaskLayer:layer];
  v17 = [objc_opt_class() _batteryBoltImageWithSize:v10 boltSize:v11 forScale:{width, height, v8}];
  layer2 = [MEMORY[0x1E6979398] layer];
  [layer2 setContents:{objc_msgSend(v17, "CGImage")}];
  [layer2 setBounds:{v12, v13, v10, v11}];
  [(_UIBatteryView *)self setBoltLayer:layer2];
}

- (CGRect)_boltRectForTraitCollection:(id)collection boltSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIBatteryView *)self _bodyRectForTraitCollection:collection];
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

- (void)_willBeginAnimatingBoltToVisible:(BOOL)visible
{
  ++self->_inflightBoltAnimationCount;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStaticBatteryView *)self _updateBodyLayers];
  [(_UIStaticBatteryView *)self _updateFillLayer];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)_didFinishAnimatingBoltToVisible:(BOOL)visible
{
  --self->_inflightBoltAnimationCount;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStaticBatteryView *)self _updateBodyLayers];
  [(_UIStaticBatteryView *)self _updateFillLayer];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)setShowsPercentage:(BOOL)percentage
{
  v4.receiver = self;
  v4.super_class = _UIStaticBatteryView;
  [(_UIBatteryView *)&v4 setShowsPercentage:percentage];
  [(UIView *)self frame];
  if (!CGRectIsEmpty(v5))
  {
    [(_UIStaticBatteryView *)self _updateBodyLayers];
    [(_UIStaticBatteryView *)self _updateFillLayer];
  }
}

- (void)setLowBatteryMode:(int64_t)mode
{
  isLowBattery = [(_UIBatteryView *)self isLowBattery];
  v6.receiver = self;
  v6.super_class = _UIStaticBatteryView;
  [(_UIBatteryView *)&v6 setLowBatteryMode:mode];
  if (isLowBattery != [(_UIBatteryView *)self isLowBattery])
  {
    [(_UIStaticBatteryView *)self _updateBatteryFillColor];
  }
}

+ (id)_imageWithRenderedBezierPath:(id)path size:(CGSize)size scale:(double)scale pathScaleFactor:(double)factor stroke:(BOOL)stroke fill:(BOOL)fill
{
  height = size.height;
  width = size.width;
  pathCopy = path;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92___UIStaticBatteryView__imageWithRenderedBezierPath_size_scale_pathScaleFactor_stroke_fill___block_invoke;
  v19[3] = &unk_1E7109C88;
  factorCopy = factor;
  strokeCopy = stroke;
  v20 = pathCopy;
  fillCopy = fill;
  v16 = pathCopy;
  v17 = [self _renderedImageOfSize:v19 scale:width withActions:{height, scale}];

  return v17;
}

+ (id)_imageByPunchingImage:(id)image inRect:(CGRect)rect flippedHorizontally:(BOOL)horizontally outOfImage:(id)ofImage inRect:(CGRect)inRect size:(CGSize)size scale:(double)scale
{
  height = inRect.size.height;
  width = inRect.size.width;
  y = inRect.origin.y;
  x = inRect.origin.x;
  v15 = rect.size.height;
  v16 = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  imageCopy = image;
  ofImageCopy = ofImage;
  if (horizontally)
  {
    imageWithHorizontallyFlippedOrientation = [imageCopy imageWithHorizontallyFlippedOrientation];
  }

  else
  {
    imageWithHorizontallyFlippedOrientation = imageCopy;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __102___UIStaticBatteryView__imageByPunchingImage_inRect_flippedHorizontally_outOfImage_inRect_size_scale___block_invoke;
  v27[3] = &unk_1E7109CB0;
  v30 = x;
  v31 = y;
  v32 = width;
  v33 = height;
  v28 = ofImageCopy;
  v29 = imageWithHorizontallyFlippedOrientation;
  v34 = v18;
  v35 = v17;
  v36 = v16;
  v37 = v15;
  v23 = imageWithHorizontallyFlippedOrientation;
  v24 = ofImageCopy;
  v25 = [self _renderedImageOfSize:v27 scale:scale withActions:{v39, v40}];

  return v25;
}

+ (id)_renderedImageOfSize:(CGSize)size scale:(double)scale withActions:(id)actions
{
  height = size.height;
  width = size.width;
  actionsCopy = actions;
  if (!actionsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStaticBatteryView.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v11 = +[UIGraphicsImageRendererFormat preferredFormat];
  [v11 setScale:scale];
  [v11 setOpaque:0];
  [v11 setPreferredRange:0x7FFFLL];
  height = [[UIGraphicsImageRenderer alloc] initWithSize:v11 format:width, height];
  v13 = [(UIGraphicsImageRenderer *)height imageWithActions:actionsCopy];

  return v13;
}

+ (id)_batteryBodyImageWithSize:(CGSize)size forScale:(double)scale batteryRect:(CGRect)rect cornerRadius:(double)radius lineWidth:(double)width filled:(BOOL)filled
{
  filledCopy = filled;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = size.height;
  v15 = size.width;
  if (qword_1ED4A2CE8 != -1)
  {
    dispatch_once(&qword_1ED4A2CE8, &__block_literal_global_715);
  }

  v17 = [[_UISignalViewCacheKey alloc] initWithClass:self size:filledCopy rect:v15 radius:v14 lineWidth:x alternate:y scale:width, height, radius, width, *&scale];
  v18 = [_MergedGlobals_1395 objectForKey:v17];
  if (!v18)
  {
    radius = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, radius];
    [radius setLineWidth:width];
    v18 = [self _imageWithRenderedBezierPath:radius size:1 scale:filledCopy pathScaleFactor:v15 stroke:v14 fill:{scale, 1.0}];
    [_MergedGlobals_1395 setObject:v18 forKey:v17];
  }

  return v18;
}

+ (id)_batteryBodyImageWithSize:(double)size forScale:(double)scale batteryRect:(double)rect cornerRadius:(double)radius lineWidth:(double)width withBoltCutOutOfSize:(double)ofSize inRect:(double)inRect boltFlipped:(uint64_t)self0
{
  if (qword_1ED4A2CF8 != -1)
  {
    dispatch_once(&qword_1ED4A2CF8, &__block_literal_global_23_4);
  }

  v28 = [_UISignalViewCacheKey alloc];
  v29 = [(_UISignalViewCacheKey *)v28 initWithClass:self size:a11 rect:a2 radius:size lineWidth:rect secondarySize:radius secondaryRect:width alternate:ofSize scale:inRect, a12, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *&a15, *&a16, *&a17, *&a18, *&scale];
  v30 = [qword_1ED4A2CF0 objectForKey:v29];
  if (!v30)
  {
    v31 = [self _batteryBodyImageWithSize:0 forScale:a2 batteryRect:size cornerRadius:scale lineWidth:rect filled:{radius, width, ofSize, inRect, *&a12}];
    v32 = [self _batteryBoltMaskImageWithSize:a13 boltSize:a14 forScale:{a13, a14, scale}];
    v30 = [objc_opt_class() _imageByPunchingImage:v32 inRect:a11 flippedHorizontally:v31 outOfImage:a15 inRect:a16 size:a17 scale:{a18, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a2, size, *&a2, *&size, *&scale}];
    [qword_1ED4A2CF0 setObject:v30 forKey:v29];
  }

  return v30;
}

+ (id)_percentFillImageWithSize:(CGSize)size forScale:(double)scale batteryRect:(CGRect)rect cornerRadius:(double)radius lineWidth:(double)width
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v12 = size.height;
  v13 = size.width;
  if (qword_1ED4A2D08 != -1)
  {
    dispatch_once(&qword_1ED4A2D08, &__block_literal_global_25_9);
  }

  v15 = [[_UISignalViewCacheKey alloc] initWithClass:self size:0 rect:v13 radius:v12 lineWidth:x alternate:y scale:width, height, radius, width, *&scale];
  v16 = [qword_1ED4A2D00 objectForKey:v15];
  if (!v16)
  {
    if (width >= radius + radius)
    {
      widthCopy = width;
    }

    else
    {
      widthCopy = radius + radius;
    }

    radius = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, widthCopy, height, radius];
    [radius setLineWidth:width];
    v16 = [self _imageWithRenderedBezierPath:radius size:1 scale:1 pathScaleFactor:v13 stroke:v12 fill:{scale, 1.0}];
    [qword_1ED4A2D00 setObject:v16 forKey:v15];
  }

  return v16;
}

+ (id)_batteryPinImageWithSize:(CGSize)size forScale:(double)scale complexPinPath:(BOOL)path
{
  pathCopy = path;
  height = size.height;
  width = size.width;
  if (qword_1ED4A2D18 != -1)
  {
    dispatch_once(&qword_1ED4A2D18, &__block_literal_global_27_4);
  }

  v10 = [_UISignalViewCacheKey alloc];
  v11 = [(_UISignalViewCacheKey *)v10 initWithClass:self size:pathCopy rect:width radius:height lineWidth:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, 0.0, *&scale];
  v12 = [qword_1ED4A2D10 objectForKey:v11];
  if (!v12)
  {
    v13 = [self _pinBezierPathForSize:pathCopy isComplex:{width, height}];
    v12 = [self _imageWithRenderedBezierPath:v13 size:0 scale:1 pathScaleFactor:width stroke:height fill:{scale, 1.0}];
    [qword_1ED4A2D10 setObject:v12 forKey:v11];
  }

  return v12;
}

+ (id)_batteryBoltImageWithSize:(CGSize)size boltSize:(CGSize)boltSize forScale:(double)scale
{
  height = boltSize.height;
  width = boltSize.width;
  v8 = size.height;
  v9 = size.width;
  if (qword_1ED4A2D28 != -1)
  {
    dispatch_once(&qword_1ED4A2D28, &__block_literal_global_29_7);
  }

  v11 = [_UISignalViewCacheKey alloc];
  v12 = [(_UISignalViewCacheKey *)v11 initWithClass:self size:0 rect:v9 radius:v8 lineWidth:*&width secondarySize:*&height secondaryRect:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&scale];
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

    v15 = [self _boltBezierPathForSize:{width, height}];
    v13 = [self _imageWithRenderedBezierPath:v15 size:0 scale:1 pathScaleFactor:v9 stroke:v8 fill:{scale, v14}];
    [qword_1ED4A2D20 setObject:v13 forKey:v12];
  }

  return v13;
}

+ (id)_batteryBoltMaskImageWithSize:(CGSize)size boltSize:(CGSize)boltSize forScale:(double)scale
{
  height = boltSize.height;
  width = boltSize.width;
  v8 = size.height;
  v9 = size.width;
  if (qword_1ED4A2D38 != -1)
  {
    dispatch_once(&qword_1ED4A2D38, &__block_literal_global_31_5);
  }

  v11 = [_UISignalViewCacheKey alloc];
  v12 = [(_UISignalViewCacheKey *)v11 initWithClass:self size:0 rect:v9 radius:v8 lineWidth:*&width secondarySize:*&height secondaryRect:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&scale];
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

    _boltMaskBezierPath = [self _boltMaskBezierPath];
    v13 = [self _imageWithRenderedBezierPath:_boltMaskBezierPath size:0 scale:1 pathScaleFactor:v9 stroke:v8 fill:{scale, v14}];
    [qword_1ED4A2D30 setObject:v13 forKey:v12];
  }

  return v13;
}

+ (id)_batteryFillImageWithSize:(CGSize)size forScale:(double)scale cornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  if (qword_1ED4A2D48 != -1)
  {
    dispatch_once(&qword_1ED4A2D48, &__block_literal_global_33_12);
  }

  v10 = [_UISignalViewCacheKey alloc];
  v11 = [(_UISignalViewCacheKey *)v10 initWithClass:self size:0 rect:width radius:height lineWidth:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), radius, 0.0, *&scale];
  v12 = [qword_1ED4A2D40 objectForKey:v11];
  if (!v12)
  {
    radius = [UIBezierPath _continuousRoundedCARectBezierPath:-1 withRoundedCorners:16 cornerRadius:*MEMORY[0x1E695EFF8] segments:*(MEMORY[0x1E695EFF8] + 8), width, height, radius, radius];
    v12 = [self _imageWithRenderedBezierPath:radius size:0 scale:1 pathScaleFactor:width stroke:height fill:{scale, 1.0}];
    [qword_1ED4A2D40 setObject:v12 forKey:v11];
  }

  return v12;
}

+ (id)_batteryFillImageWithSize:(CGSize)size forScale:(double)scale cornerRadius:(double)radius withBoltCutOutOfSize:(CGSize)ofSize inRect:(CGRect)rect boltFlipped:(BOOL)flipped
{
  flippedCopy = flipped;
  height = ofSize.height;
  width = ofSize.width;
  v21 = size.height;
  v12 = size.width;
  if (qword_1ED4A2D58 != -1)
  {
    dispatch_once(&qword_1ED4A2D58, &__block_literal_global_35_3);
  }

  v14 = [_UISignalViewCacheKey alloc];
  v15 = [(_UISignalViewCacheKey *)v14 initWithClass:self size:flippedCopy rect:v12 radius:v21 lineWidth:*MEMORY[0x1E695F050] secondarySize:*(MEMORY[0x1E695F050] + 8) secondaryRect:*(MEMORY[0x1E695F050] + 16) alternate:*(MEMORY[0x1E695F050] + 24) scale:radius, 0.0, *&width, *&height, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, *&scale];
  v16 = [qword_1ED4A2D50 objectForKey:v15];
  if (!v16)
  {
    v17 = [self _batteryFillImageWithSize:v12 forScale:v21 cornerRadius:{scale, radius}];
    v18 = [self _batteryBoltMaskImageWithSize:width boltSize:height forScale:{width, height, scale}];
    v16 = [objc_opt_class() _imageByPunchingImage:v18 inRect:flippedCopy flippedHorizontally:v17 outOfImage:rect.origin.x inRect:rect.origin.y size:rect.size.width scale:{rect.size.height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v21, *&v12, *&v21, *&scale}];
    [qword_1ED4A2D50 setObject:v16 forKey:v15];
  }

  return v16;
}

@end