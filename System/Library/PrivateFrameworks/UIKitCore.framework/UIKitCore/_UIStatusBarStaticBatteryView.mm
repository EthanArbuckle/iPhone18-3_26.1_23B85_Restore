@interface _UIStatusBarStaticBatteryView
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

@implementation _UIStatusBarStaticBatteryView

- (void)_createBodyLayers
{
  layer = [MEMORY[0x1E6979398] layer];
  [(_UIStatusBarBatteryView *)self setBodyLayer:layer];
  v3 = +[UIColor clearColor];
  [layer setContentsMultiplyColor:{objc_msgSend(v3, "CGColor")}];

  layer2 = [(UIView *)self layer];
  [layer2 addSublayer:layer];

  layer3 = [MEMORY[0x1E6979398] layer];
  [(_UIStatusBarBatteryView *)self setPinLayer:layer3];
  layer4 = [(UIView *)self layer];
  [layer4 addSublayer:layer3];
}

- (void)_createFillLayer
{
  layer = [MEMORY[0x1E6979398] layer];
  [(_UIStatusBarBatteryView *)self setFillLayer:layer];
  v3 = +[UIColor clearColor];
  [layer setContentsMultiplyColor:{objc_msgSend(v3, "CGColor")}];

  bodyLayer = [(_UIStatusBarBatteryView *)self bodyLayer];
  [bodyLayer addSublayer:layer];

  [(_UIStatusBarBatteryView *)self setPercentFillLayer:layer];
}

- (void)_createBoltLayersWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(UIView *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  [(_UIStatusBarStaticBatteryView *)self _batteryPathScaleFactor];
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
  [(_UIStatusBarBatteryView *)self setBoltMaskLayer:layer];
  v17 = [objc_opt_class() _batteryBoltImageWithSize:v10 boltSize:v11 forScale:{width, height, v8}];
  layer2 = [MEMORY[0x1E6979398] layer];
  [layer2 setContents:{objc_msgSend(v17, "CGImage")}];
  [layer2 setBounds:{v12, v13, v10, v11}];
  [(_UIStatusBarBatteryView *)self setBoltLayer:layer2];
}

- (CGSize)_boltPathSize
{
  boltMaskLayer = [(_UIStatusBarBatteryView *)self boltMaskLayer];
  [boltMaskLayer bounds];
  v5 = v4;
  v7 = v6;

  [(_UIStatusBarStaticBatteryView *)self _batteryPathScaleFactor];
  v9 = v7 / v8;
  v10 = v5 / v8;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGRect)_boltRectForTraitCollection:(id)collection boltSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_UIStatusBarBatteryView *)self _bodyRectForTraitCollection:collection];
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
  [(_UIStatusBarStaticBatteryView *)self _batteryBoltLargeScaleFactor];
  v14 = v13;
  [(_UIStatusBarBatteryView *)self _batteryBoltScaleFactorMultiplier];
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

- (CGRect)_updateBodyLayers
{
  traitCollection = [(UIView *)self traitCollection];
  _useImagesWithCutoutsForBolt = [(_UIStatusBarStaticBatteryView *)self _useImagesWithCutoutsForBolt];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  showsPercentage = [(_UIStatusBarBatteryView *)self showsPercentage];
  [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
  v8 = v7;
  [traitCollection displayScale];
  v10 = v9;
  [(_UIStatusBarBatteryView *)self _batterySizeForTraitCollection:traitCollection];
  v62 = v11;
  [(_UIStatusBarBatteryView *)self _pinSizeForTraitCollection:traitCollection];
  v13 = v12;
  v64 = v14;
  [(_UIStatusBarBatteryView *)self _bodyRectForTraitCollection:traitCollection];
  v16 = v15;
  v65 = v18;
  v66 = v17;
  v67 = v19;
  [(UIView *)self bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v63 = v26;
  if ([(_UIStatusBarBatteryView *)self rounded])
  {
    v27 = v67 / 3.125;
  }

  else
  {
    [(_UIStatusBarBatteryView *)self _outsideCornerRadiusForTraitCollection:traitCollection];
    v27 = v28 + v8 * -0.5;
  }

  v61 = v27;
  if (_useImagesWithCutoutsForBolt)
  {
    boltMaskLayer = [(_UIStatusBarBatteryView *)self boltMaskLayer];
    [boltMaskLayer bounds];
    v60 = v16;
    v31 = v30;
    v59 = v21;
    v32 = v8;
    v34 = v33;

    [(_UIStatusBarStaticBatteryView *)self _boltPathSize];
    v36 = v35;
    v58 = v37;
    [(_UIStatusBarStaticBatteryView *)self _boltRectForTraitCollection:traitCollection boltSize:v31, v34];
    v8 = v32;
    v21 = v59;
    v16 = v60;
    v57 = v36;
    v38 = v63;
    [objc_opt_class() _batteryBodyImageWithSize:_shouldReverseLayoutDirection forScale:v25 batteryRect:v63 cornerRadius:v10 lineWidth:v60 withBoltCutOutOfSize:v66 inRect:v65 boltFlipped:{v67, v61, *&v8, v57, v58, v39, v40, v41, v42}];
  }

  else
  {
    v38 = v63;
    [objc_opt_class() _batteryBodyImageWithSize:showsPercentage forScale:v25 batteryRect:v63 cornerRadius:v10 lineWidth:v16 filled:{v66, v65, v67, v27, *&v8}];
  }
  v43 = ;
  cGImage = [v43 CGImage];
  bodyLayer = [(_UIStatusBarBatteryView *)self bodyLayer];
  [bodyLayer setContents:cGImage];

  bodyLayer2 = [(_UIStatusBarBatteryView *)self bodyLayer];
  [bodyLayer2 setFrame:{v21, v23, v25, v38}];

  boltMaskLayer2 = [(_UIStatusBarBatteryView *)self boltMaskLayer];
  [boltMaskLayer2 setHidden:_useImagesWithCutoutsForBolt];

  v68.origin.x = v21;
  v68.origin.y = v23;
  v68.size.width = v25;
  v68.size.height = v38;
  v48 = CGRectGetMidY(v68) + v64 * -0.5;
  pinLayer = [(_UIStatusBarBatteryView *)self pinLayer];
  [pinLayer setFrame:{v8 + v62, v48, v13, v64}];

  v50 = [objc_opt_class() _batteryPinImageWithSize:-[_UIStatusBarBatteryView internalSizeCategory](self forScale:"internalSizeCategory") == 2 complexPinPath:{v13, v64, v10}];
  cGImage2 = [v50 CGImage];
  pinLayer2 = [(_UIStatusBarBatteryView *)self pinLayer];
  [pinLayer2 setContents:cGImage2];

  v53 = v16;
  v55 = v65;
  v54 = v66;
  v56 = v67;
  result.size.height = v56;
  result.size.width = v55;
  result.origin.y = v54;
  result.origin.x = v53;
  return result;
}

- (void)_updateFillLayer
{
  traitCollection = [(UIView *)self traitCollection];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  [(UIView *)self bounds];
  [(_UIStatusBarBatteryView *)self _bodyRectForTraitCollection:traitCollection];
  [traitCollection displayScale];
  v6 = v5;
  v7 = *(MEMORY[0x1E695F058] + 16);
  v41 = *MEMORY[0x1E695F058];
  v42 = v7;
  v40 = 0.0;
  [(_UIStatusBarBatteryView *)self _fillLayerFrame:&v41 cornerRadius:&v40];
  if ([(_UIStatusBarStaticBatteryView *)self _useImagesWithCutoutsForBolt])
  {
    boltMaskLayer = [(_UIStatusBarBatteryView *)self boltMaskLayer];
    [boltMaskLayer bounds];
    v10 = v9;
    v12 = v11;

    [(_UIStatusBarStaticBatteryView *)self _boltPathSize];
    v14 = v13;
    v16 = v15;
    [(_UIStatusBarStaticBatteryView *)self _boltRectForTraitCollection:traitCollection boltSize:v10, v12];
    v21 = [objc_opt_class() _batteryFillImageWithSize:_shouldReverseLayoutDirection forScale:v42 cornerRadius:v6 withBoltCutOutOfSize:v40 inRect:v14 boltFlipped:{v16, v17 - *&v41, v18 - *(&v41 + 1), v19, v20}];
  }

  else if ([(_UIStatusBarBatteryView *)self showsPercentage])
  {
    [(_UIStatusBarBatteryView *)self _lineWidthAndInterspaceForTraitCollection:traitCollection];
    v23 = v22;
    [(_UIStatusBarBatteryView *)self _bodyRectForTraitCollection:traitCollection];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if ([(_UIStatusBarBatteryView *)self rounded])
    {
      v32 = v31 / 3.125;
    }

    else
    {
      [(_UIStatusBarBatteryView *)self _outsideCornerRadiusForTraitCollection:traitCollection];
      v32 = v33 + v23 * -0.5;
    }

    v21 = [objc_opt_class() _percentFillImageWithSize:v42 forScale:v6 batteryRect:v25 cornerRadius:v27 lineWidth:{v29, v31, v32, *&v23}];
  }

  else
  {
    v21 = [objc_opt_class() _batteryFillImageWithSize:v42 forScale:v6 cornerRadius:v40];
  }

  v34 = v21;
  cGImage = [v21 CGImage];
  fillLayer = [(_UIStatusBarBatteryView *)self fillLayer];
  [fillLayer setContents:cGImage];

  v37 = v41;
  v38 = v42;
  fillLayer2 = [(_UIStatusBarBatteryView *)self fillLayer];
  [fillLayer2 setFrame:{v37, v38}];
}

- (void)_updateBodyColors
{
  if ([(_UIStatusBarBatteryView *)self showsPercentage])
  {
    _batteryUnfilledColor = [(_UIStatusBarBatteryView *)self _batteryUnfilledColor];
    cGColor = [_batteryUnfilledColor CGColor];

    bodyLayer = [(_UIStatusBarBatteryView *)self bodyLayer];
    [bodyLayer setContentsMultiplyColor:cGColor];

    pinLayer = [(_UIStatusBarBatteryView *)self pinLayer];
    [pinLayer setContentsMultiplyColor:cGColor];

    [(_UIStatusBarBatteryView *)self _batteryTextColor];
  }

  else
  {
    bodyColor = [(_UIStatusBarBatteryView *)self bodyColor];
    cGColor2 = [bodyColor CGColor];
    bodyLayer2 = [(_UIStatusBarBatteryView *)self bodyLayer];
    [bodyLayer2 setContentsMultiplyColor:cGColor2];

    pinColor = [(_UIStatusBarBatteryView *)self pinColor];
    cGColor3 = [pinColor CGColor];
    pinLayer2 = [(_UIStatusBarBatteryView *)self pinLayer];
    [pinLayer2 setContentsMultiplyColor:cGColor3];

    [(_UIStatusBarBatteryView *)self boltColor];
  }
  v16 = ;
  v13 = v16;
  cGColor4 = [v16 CGColor];
  boltLayer = [(_UIStatusBarBatteryView *)self boltLayer];
  [boltLayer setContentsMultiplyColor:cGColor4];
}

- (void)_updateBatteryFillColor
{
  _batteryFillColor = [(_UIStatusBarBatteryView *)self _batteryFillColor];
  cGColor = [_batteryFillColor CGColor];
  fillLayer = [(_UIStatusBarBatteryView *)self fillLayer];
  [fillLayer setContentsMultiplyColor:cGColor];

  fillLayer2 = [(_UIStatusBarBatteryView *)self fillLayer];
  LODWORD(v7) = 1.0;
  [fillLayer2 setOpacity:v7];

  if ([(_UIStatusBarBatteryView *)self showsPercentage])
  {

    [(_UIStatusBarStaticBatteryView *)self _updateBodyColors];
  }
}

- (double)_batteryPathScaleFactor
{
  [(_UIStatusBarStaticBatteryView *)self _batteryBoltLargeScaleFactor];
  v7.receiver = self;
  v7.super_class = _UIStatusBarStaticBatteryView;
  v4 = 1.0 / v3;
  [(_UIStatusBarBatteryView *)&v7 _batteryBoltLargeScaleFactor];
  return v4 / (1.0 / v5);
}

- (BOOL)_useImagesWithCutoutsForBolt
{
  if ([(_UIStatusBarBatteryView *)self showsPercentage]|| self->_inflightBoltAnimationCount)
  {
    return 0;
  }

  return [(_UIStatusBarBatteryView *)self _shouldShowBolt];
}

- (void)_willBeginAnimatingBoltToVisible:(BOOL)visible
{
  ++self->_inflightBoltAnimationCount;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStatusBarStaticBatteryView *)self _updateBodyLayers];
  [(_UIStatusBarStaticBatteryView *)self _updateFillLayer];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)_didFinishAnimatingBoltToVisible:(BOOL)visible
{
  --self->_inflightBoltAnimationCount;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(_UIStatusBarStaticBatteryView *)self _updateBodyLayers];
  [(_UIStatusBarStaticBatteryView *)self _updateFillLayer];
  v4 = MEMORY[0x1E6979518];

  [v4 commit];
}

- (void)setShowsPercentage:(BOOL)percentage
{
  v4.receiver = self;
  v4.super_class = _UIStatusBarStaticBatteryView;
  [(_UIStatusBarBatteryView *)&v4 setShowsPercentage:percentage];
  [(UIView *)self frame];
  if (!CGRectIsEmpty(v5))
  {
    [(_UIStatusBarStaticBatteryView *)self _updateBodyLayers];
    [(_UIStatusBarStaticBatteryView *)self _updateFillLayer];
  }
}

- (void)setLowBatteryMode:(int64_t)mode
{
  isLowBattery = [(_UIStatusBarBatteryView *)self isLowBattery];
  v6.receiver = self;
  v6.super_class = _UIStatusBarStaticBatteryView;
  [(_UIStatusBarBatteryView *)&v6 setLowBatteryMode:mode];
  if (isLowBattery != [(_UIStatusBarBatteryView *)self isLowBattery])
  {
    [(_UIStatusBarStaticBatteryView *)self _updateBatteryFillColor];
  }
}

+ (id)_imageWithRenderedBezierPath:(id)path size:(CGSize)size scale:(double)scale pathScaleFactor:(double)factor stroke:(BOOL)stroke fill:(BOOL)fill
{
  height = size.height;
  width = size.width;
  pathCopy = path;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __101___UIStatusBarStaticBatteryView__imageWithRenderedBezierPath_size_scale_pathScaleFactor_stroke_fill___block_invoke;
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
  v27[2] = __111___UIStatusBarStaticBatteryView__imageByPunchingImage_inRect_flippedHorizontally_outOfImage_inRect_size_scale___block_invoke;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarStaticBatteryView.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"actions"}];
  }

  v11 = +[UIGraphicsImageRendererFormat defaultFormat];
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
  if (qword_1ED49E028 != -1)
  {
    dispatch_once(&qword_1ED49E028, &__block_literal_global_255);
  }

  v17 = [[_UIStatusBarSignalViewCacheKey alloc] initWithClass:self size:filledCopy rect:v15 radius:v14 lineWidth:x alternate:y scale:width, height, radius, width, *&scale];
  v18 = [_MergedGlobals_1109 objectForKey:v17];
  if (!v18)
  {
    radius = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, height, radius];
    [radius setLineWidth:width];
    v18 = [self _imageWithRenderedBezierPath:radius size:1 scale:filledCopy pathScaleFactor:v15 stroke:v14 fill:{scale, 1.0}];
    [_MergedGlobals_1109 setObject:v18 forKey:v17];
  }

  return v18;
}

+ (id)_batteryBodyImageWithSize:(double)size forScale:(double)scale batteryRect:(double)rect cornerRadius:(double)radius lineWidth:(double)width withBoltCutOutOfSize:(double)ofSize inRect:(double)inRect boltFlipped:(uint64_t)self0
{
  if (qword_1ED49E038 != -1)
  {
    dispatch_once(&qword_1ED49E038, &__block_literal_global_23_1);
  }

  v28 = [_UIStatusBarSignalViewCacheKey alloc];
  v29 = [(_UIStatusBarSignalViewCacheKey *)v28 initWithClass:self size:a11 rect:a2 radius:size lineWidth:rect secondarySize:radius secondaryRect:width alternate:ofSize scale:inRect, a12, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *&a15, *&a16, *&a17, *&a18, *&scale];
  v30 = [qword_1ED49E030 objectForKey:v29];
  if (!v30)
  {
    v31 = [self _batteryBodyImageWithSize:0 forScale:a2 batteryRect:size cornerRadius:scale lineWidth:rect filled:{radius, width, ofSize, inRect, *&a12}];
    v32 = [self _batteryBoltMaskImageWithSize:a13 boltSize:a14 forScale:{a13, a14, scale}];
    v30 = [objc_opt_class() _imageByPunchingImage:v32 inRect:a11 flippedHorizontally:v31 outOfImage:a15 inRect:a16 size:a17 scale:{a18, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a2, size, *&a2, *&size, *&scale}];
    [qword_1ED49E030 setObject:v30 forKey:v29];
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
  if (qword_1ED49E048 != -1)
  {
    dispatch_once(&qword_1ED49E048, &__block_literal_global_25_3);
  }

  v15 = [[_UIStatusBarSignalViewCacheKey alloc] initWithClass:self size:0 rect:v13 radius:v12 lineWidth:x alternate:y scale:width, height, radius, width, *&scale];
  v16 = [qword_1ED49E040 objectForKey:v15];
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
    [qword_1ED49E040 setObject:v16 forKey:v15];
  }

  return v16;
}

+ (id)_batteryPinImageWithSize:(CGSize)size forScale:(double)scale complexPinPath:(BOOL)path
{
  pathCopy = path;
  height = size.height;
  width = size.width;
  if (qword_1ED49E058 != -1)
  {
    dispatch_once(&qword_1ED49E058, &__block_literal_global_27);
  }

  v10 = [_UIStatusBarSignalViewCacheKey alloc];
  v11 = [(_UIStatusBarSignalViewCacheKey *)v10 initWithClass:self size:pathCopy rect:width radius:height lineWidth:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), 0.0, 0.0, *&scale];
  v12 = [qword_1ED49E050 objectForKey:v11];
  if (!v12)
  {
    v13 = [self _pinBezierPathForSize:pathCopy isComplex:{width, height}];
    v12 = [self _imageWithRenderedBezierPath:v13 size:0 scale:1 pathScaleFactor:width stroke:height fill:{scale, 1.0}];
    [qword_1ED49E050 setObject:v12 forKey:v11];
  }

  return v12;
}

+ (id)_batteryBoltImageWithSize:(CGSize)size boltSize:(CGSize)boltSize forScale:(double)scale
{
  height = boltSize.height;
  width = boltSize.width;
  v8 = size.height;
  v9 = size.width;
  if (qword_1ED49E068 != -1)
  {
    dispatch_once(&qword_1ED49E068, &__block_literal_global_29_1);
  }

  v11 = [_UIStatusBarSignalViewCacheKey alloc];
  v12 = [(_UIStatusBarSignalViewCacheKey *)v11 initWithClass:self size:0 rect:v9 radius:v8 lineWidth:*&width secondarySize:*&height secondaryRect:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&scale];
  v13 = [qword_1ED49E060 objectForKey:v12];
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
    [qword_1ED49E060 setObject:v13 forKey:v12];
  }

  return v13;
}

+ (id)_batteryBoltMaskImageWithSize:(CGSize)size boltSize:(CGSize)boltSize forScale:(double)scale
{
  height = boltSize.height;
  width = boltSize.width;
  v8 = size.height;
  v9 = size.width;
  if (qword_1ED49E078 != -1)
  {
    dispatch_once(&qword_1ED49E078, &__block_literal_global_31);
  }

  v11 = [_UIStatusBarSignalViewCacheKey alloc];
  v12 = [(_UIStatusBarSignalViewCacheKey *)v11 initWithClass:self size:0 rect:v9 radius:v8 lineWidth:*&width secondarySize:*&height secondaryRect:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&scale];
  v13 = [qword_1ED49E070 objectForKey:v12];
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
    [qword_1ED49E070 setObject:v13 forKey:v12];
  }

  return v13;
}

+ (id)_batteryFillImageWithSize:(CGSize)size forScale:(double)scale cornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  if (qword_1ED49E088 != -1)
  {
    dispatch_once(&qword_1ED49E088, &__block_literal_global_33_4);
  }

  v10 = [_UIStatusBarSignalViewCacheKey alloc];
  v11 = [(_UIStatusBarSignalViewCacheKey *)v10 initWithClass:self size:0 rect:width radius:height lineWidth:*MEMORY[0x1E695F050] alternate:*(MEMORY[0x1E695F050] + 8) scale:*(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), radius, 0.0, *&scale];
  v12 = [qword_1ED49E080 objectForKey:v11];
  if (!v12)
  {
    radius = [UIBezierPath _bezierPathWithArcRoundedRect:*MEMORY[0x1E695EFF8] cornerRadius:*(MEMORY[0x1E695EFF8] + 8), width, height, radius];
    v12 = [self _imageWithRenderedBezierPath:radius size:0 scale:1 pathScaleFactor:width stroke:height fill:{scale, 1.0}];
    [qword_1ED49E080 setObject:v12 forKey:v11];
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
  if (qword_1ED49E098 != -1)
  {
    dispatch_once(&qword_1ED49E098, &__block_literal_global_35_0);
  }

  v14 = [_UIStatusBarSignalViewCacheKey alloc];
  v15 = [(_UIStatusBarSignalViewCacheKey *)v14 initWithClass:self size:flippedCopy rect:v12 radius:v21 lineWidth:*MEMORY[0x1E695F050] secondarySize:*(MEMORY[0x1E695F050] + 8) secondaryRect:*(MEMORY[0x1E695F050] + 16) alternate:*(MEMORY[0x1E695F050] + 24) scale:radius, 0.0, *&width, *&height, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, *&scale];
  v16 = [qword_1ED49E090 objectForKey:v15];
  if (!v16)
  {
    v17 = [self _batteryFillImageWithSize:v12 forScale:v21 cornerRadius:{scale, radius}];
    v18 = [self _batteryBoltMaskImageWithSize:width boltSize:height forScale:{width, height, scale}];
    v16 = [objc_opt_class() _imageByPunchingImage:v18 inRect:flippedCopy flippedHorizontally:v17 outOfImage:rect.origin.x inRect:rect.origin.y size:rect.size.width scale:{rect.size.height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v12, v21, *&v12, *&v21, *&scale}];
    [qword_1ED49E090 setObject:v16 forKey:v15];
  }

  return v16;
}

@end