@interface MREffectOrigami
+ (id)customTimingWithEffectID:(id)d effectAttributes:(id)attributes slideInformation:(id)information textInformation:(id)textInformation inAspectRatio:(double)ratio;
+ (void)initialize;
- (BOOL)_checkPanoramaAbsoluteSizeForImage:(id)image inRect:(CGRect *)rect;
- (BOOL)_needsRenderingAtTime:(double)time remainingStillDurationAfter:(double *)after;
- (BOOL)getVerticesCoordinates:(MREffectOrigami *)self withMatrix:(SEL)matrix forElement:(CGPoint *)(a3;
- (BOOL)hasMoreSlidesFromTime:(double)time backwards:(BOOL)backwards startTime:(double *)startTime duration:(double *)duration;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (MREffectOrigami)initWithEffectID:(id)d;
- (double)interestingTimeForElement:(id)element;
- (double)interestingTimeForTime:(double)time;
- (id)_retainedByUserBackColorImageInContext:(id)context;
- (id)elementHitAtPoint:(CGPoint)point withInverseMatrix:(float)matrix[16] localPoint:(CGPoint *)localPoint;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)_cleanup;
- (void)_cleanupSwingTimings;
- (void)_renderFallBreakImage:(id)image atProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes :(CGPoint *)a9 :(CGPoint)self0;
- (void)_renderFallImage:(id)image atProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes :(CGPoint *)a9 :(CGPoint)self0;
- (void)_setTargetSizeOfImageProviders;
- (void)_setupBreakInfos:(double)infos inContext:(id)context withArguments:(id)arguments;
- (void)_setupSwingTimings;
- (void)_unload;
- (void)getLazyDuration:(double *)duration lazyFactor:(double *)factor animationDuration:(double *)animationDuration fromInterestingTime:(double)time;
- (void)render1To3DownAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)render1To3LeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)renderBreakAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFall2AtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFallAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFallBreakAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFlipDiagonalAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFlipDownAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFlipLeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFold4LeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFoldDownAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderFoldLeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderStillAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)renderUnfoldingFlowerAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes;
- (void)setPhaseInDuration:(double)duration mainDuration:(double)mainDuration phaseOutDuration:(double)outDuration;
- (void)setPixelSize:(CGSize)size;
- (void)updateSizes;
@end

@implementation MREffectOrigami

+ (void)initialize
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___MREffectOrigami;
  objc_msgSendSuper2(&v2, "initialize");
  if (!qword_1EF3C0)
  {
    qword_1EF3C0 = [[NSDictionary alloc] initWithContentsOfFile:{objc_msgSend(objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager, "sharedManager"), "resourcePathForStyleID:", @"Origami", "stringByAppendingPathComponent:", @"MREffectOrigami.plist"}];
  }
}

- (MREffectOrigami)initWithEffectID:(id)d
{
  v5.receiver = self;
  v5.super_class = MREffectOrigami;
  v3 = [(MREffect *)&v5 initWithEffectID:d];
  if (v3)
  {
    *(v3 + 185) = objc_alloc_init(NSMutableDictionary);
    *(v3 + 193) = 0;
    *(v3 + 201) = objc_alloc_init(NSMutableArray);
    v3[255] = [objc_msgSend(objc_msgSend(+[MREffectManager sharedManager](MREffectManager "sharedManager")];
    v3[253] = [*(v3 + 4) hasPrefix:@"Origami2"];
    *(v3 + 233) = -1082130432;
    v6[0] = xmmword_1638E0;
    v6[1] = xmmword_1638F0;
    *(v3 + 257) = [[MRCAMLBezierData alloc] initWithControlPoints:v6];
    [v3 _setupSwingTimings];
    *(v3 + 305) = malloc_type_malloc(0x80uLL, 0x1000040451B5BE8uLL);
    *(v3 + 313) = 0;
    *(v3 + 321) = objc_alloc_init(NSMutableDictionary);
  }

  return v3;
}

- (void)_cleanup
{
  *(&self->mTotalNumberOfFolds + 1) = 0;

  *(&self->super._isInInteractiveMode + 1) = 0;
  *(&self->mSpriteKeysWatcher + 1) = 0;

  *(&self->mAnimationTimeBounds + 1) = 0;
  *(&self->mPixelUnit + 1) = 0;
  v3 = *(&self->mThirdsSwingBottom + 1);
  if (v3)
  {
    free(v3);
    *(&self->mThirdsSwingBottom + 1) = 0;
  }

  [(MREffectOrigami *)self _cleanupSwingTimings];
}

- (void)_unload
{
  [*(&self->super._isInInteractiveMode + 1) removeAllObjects];
  v3 = *(&self->mDurationStretchFactor + 1);
  if (v3)
  {
    [v3 releaseByUser];
    *(&self->mDurationStretchFactor + 1) = 0.0;
  }

  *(&self->mBackColorImage + 1) = -1082130432;
}

- (void)_setupSwingTimings
{
  *(&self->mBreakCurve + 1) = [[MROrigamiAnimationPath alloc] initWithSwingType:0];
  *(&self->mLittleSwing + 1) = [[MROrigamiAnimationPath alloc] initWithSwingType:1];
  *(&self->mBigSwing + 1) = [[MROrigamiAnimationPath alloc] initWithSwingType:2];
  *(&self->mSideSwing + 1) = [[MROrigamiAnimationPath alloc] initWithSwingType:3];
  *(&self->mThirdsSwingTop + 1) = [[MROrigamiAnimationPath alloc] initWithSwingType:4];
}

- (void)_cleanupSwingTimings
{
  *(&self->mBreakCurve + 1) = 0;

  *(&self->mLittleSwing + 1) = 0;
  *(&self->mBigSwing + 1) = 0;

  *(&self->mSideSwing + 1) = 0;
  *(&self->mThirdsSwingTop + 1) = 0;
}

- (void)_setTargetSizeOfImageProviders
{
  if ([(NSString *)self->super.mEffectID hasPrefix:@"Origami-JustASlide"])
  {
    width = self->super.mPixelSize.width;
    height = self->super.mPixelSize.height;
LABEL_3:
    p_mEffectLayer = &self->super.mEffectLayer;
    v6 = @"image0";
    goto LABEL_29;
  }

  mEffectID = self->super.mEffectID;
  if (BYTE1(self->mDescriptionAspectRatio) != 1)
  {
    if ([(NSString *)mEffectID isEqualToString:@"Origami1"])
    {
      v8 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v9 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v10 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v11 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v12 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v13 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v14 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v15 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v16 = self->super.mPixelSize.width * 0.5;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v17 = self->super.mPixelSize.width * 0.5;
      width = v17 * 0.666666687;
      height = v17 * 0.444444448;
LABEL_12:
      v6 = @"image4";
      goto LABEL_29;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami3"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v24 = self->super.mPixelSize.height;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v25 = self->super.mPixelSize.height;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v26 = self->super.mPixelSize.height;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v27 = self->super.mPixelSize.height;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      width = self->super.mPixelSize.height;
LABEL_17:
      v6 = @"image7";
      height = width;
      goto LABEL_29;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami4"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      __asm { FMOV            V1.2D, #0.5 }

      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      width = self->super.mPixelSize.width * 0.25;
      height = self->super.mPixelSize.height * 0.5;
      goto LABEL_23;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V2"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      width = self->super.mPixelSize.width;
      height = self->super.mPixelSize.height * 0.5;
      goto LABEL_28;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V3"])
    {
      v35 = 0.5;
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      __asm { FMOV            V1.2D, #0.5 }

      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v36 = self->super.mPixelSize.height;
      width = self->super.mPixelSize.width * 0.5;
      goto LABEL_36;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V4"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      __asm { FMOV            V1.2D, #0.5 }

      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      width = self->super.mPixelSize.width * 0.5;
      height = self->super.mPixelSize.height * 0.25;
      goto LABEL_20;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V5"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v59 = vdupq_n_s64(0x3FD5555560000000uLL);
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      width = self->super.mPixelSize.width * 0.666666687;
      height = self->super.mPixelSize.height * 0.666666687;
      goto LABEL_12;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V6"])
    {
      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v43 = self->super.mPixelSize.height;
      width = self->super.mPixelSize.width * 0.5;
      v44 = 0.25;
    }

    else
    {
      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V7"])
      {
        p_mEffectLayer = &self->super.mEffectLayer;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        width = self->super.mPixelSize.width * 0.333333343;
        height = self->super.mPixelSize.height * 0.25;
        goto LABEL_23;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V8"])
      {
        p_mEffectLayer = &self->super.mEffectLayer;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        width = self->super.mPixelSize.width * 0.333333343;
        height = self->super.mPixelSize.height - self->super.mPixelSize.width;
        v6 = @"image7";
        goto LABEL_29;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H4"])
      {
        p_mEffectLayer = &self->super.mEffectLayer;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        __asm { FMOV            V1.2D, #0.5 }

        v61 = _Q1;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        width = self->super.mPixelSize.width * 0.5;
        height = self->super.mPixelSize.height * 0.5;
        goto LABEL_52;
      }

      if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami-H6"])
      {
        if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami-H7"])
        {
          if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami-H8"])
          {
            return;
          }

          p_mEffectLayer = &self->super.mEffectLayer;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          width = self->super.mPixelSize.height * 0.5;
          goto LABEL_17;
        }

        v50 = self->super.mPixelSize.height;
        p_mEffectLayer = &self->super.mEffectLayer;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        v51 = self->super.mPixelSize.height;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        v52 = self->super.mPixelSize.height;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        v53 = self->super.mPixelSize.height;
        width = self->super.mPixelSize.width - v53;
        height = v53 * 0.5;
LABEL_23:
        v6 = @"image6";
        goto LABEL_29;
      }

      p_mEffectLayer = &self->super.mEffectLayer;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v43 = self->super.mPixelSize.height;
      width = self->super.mPixelSize.width * 0.25;
      v44 = 0.5;
    }

    height = v43 * v44;
LABEL_52:
    v6 = @"image5";
    goto LABEL_29;
  }

  if ([(NSString *)mEffectID isEqualToString:@"Origami2-LS1"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width - height;
LABEL_7:
    v6 = @"image2";
    goto LABEL_29;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS2"])
  {
    p_mPixelSize = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v19 = self->super.mPixelSize.height;
    v20 = self->super.mPixelSize.width - v19;
    v21 = v19 * 0.5;
    slideProvidersForElementIDs = [(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs];
    v6 = @"image2";
    [-[NSDictionary objectForKey:](slideProvidersForElementIDs objectForKey:{@"image2", "setDefaultSize:", v20, v21}];
    v23 = p_mPixelSize->height;
    width = p_mPixelSize->width - v23 * 0.5;
    height = v23 * 0.5;
    goto LABEL_29;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS3"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width - height;
LABEL_20:
    v6 = @"image3";
    goto LABEL_29;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS4"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width - height;
LABEL_28:
    v6 = @"image1";
    goto LABEL_29;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS5"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v34 = self->super.mPixelSize.height;
    v35 = 0.5;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v36 = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width - v36;
LABEL_36:
    height = v36 * v35;
    goto LABEL_7;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT1"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width * 0.333333343;
    goto LABEL_7;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT2"])
  {
    v39 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v40 = 0.666666687;
LABEL_43:
    height = v39->height;
    width = v39->width * v40;
    goto LABEL_28;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT3"])
  {
    v41 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v42 = 0.666666687;
LABEL_48:
    height = v41->height;
    width = v41->width * v42;
    goto LABEL_7;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT4"])
  {
    v45 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v46 = 0.333333343;
LABEL_55:
    height = v45->height;
    width = v45->width * v46;
    goto LABEL_20;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT5"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width * 0.333333343;
    goto LABEL_20;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT6"])
  {
    v45 = &self->super.mPixelSize;
    v60 = vdupq_n_s64(0x3FD5555560000000uLL);
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v46 = 0.666666687;
    goto LABEL_55;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT7"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    width = self->super.mPixelSize.width * 0.666666687;
    height = self->super.mPixelSize.height * 0.5;
    goto LABEL_7;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT8"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v48 = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width * 0.333333343;
    v49 = 0.5;
LABEL_72:
    height = v48 * v49;
    goto LABEL_20;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ1"])
  {
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width * 0.5;
    goto LABEL_28;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ2"])
  {
    v41 = &self->super.mPixelSize;
    __asm { FMOV            V1.2D, #0.5 }

    v62 = _Q1;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v42 = 0.5;
    goto LABEL_48;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ3"])
  {
    v45 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    __asm { FMOV            V1.2D, #0.5 }

    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v46 = 0.5;
    goto LABEL_55;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ4"])
  {
    v41 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v42 = 0.75;
    goto LABEL_48;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ5"])
  {
    v45 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v46 = 0.75;
    goto LABEL_55;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ6"])
  {
    __asm { FMOV            V1.2D, #0.5 }

    v63 = _Q1;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v49 = 0.5;
    v48 = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width * 0.5;
    goto LABEL_72;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-P1"])
  {
    height = self->super.mPixelSize.height;
    width = self->super.mPixelSize.width * 0.333333343;
    goto LABEL_3;
  }

  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-LP1"])
  {
    v39 = &self->super.mPixelSize;
    p_mEffectLayer = &self->super.mEffectLayer;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v40 = 0.333333343;
    goto LABEL_43;
  }

  if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-L3"])
  {
    return;
  }

  v57 = &self->super.mPixelSize;
  p_mEffectLayer = &self->super.mEffectLayer;
  [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v64 = vmulq_f64(self->super.mPixelSize, xmmword_163DB0);
  slideProvidersForElementIDs2 = [(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs];
  v6 = @"image1";
  [-[NSDictionary objectForKey:](slideProvidersForElementIDs2 objectForKey:{@"image1", "setDefaultSize:", *&v64}];
  width = v57->width * 0.333333343;
  height = v57->height * 0.5;
LABEL_29:
  v33 = [(NSDictionary *)[(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs] objectForKey:v6];

  [v33 setDefaultSize:{width, height}];
}

- (void)setPixelSize:(CGSize)size
{
  v4.receiver = self;
  v4.super_class = MREffectOrigami;
  [(MREffect *)&v4 setPixelSize:size.width, size.height];
  BYTE2(self->mDescriptionAspectRatio) = self->super.mPixelSize.width >= self->super.mPixelSize.height;
  BYTE2(self->mDescriptionAspectRatio) = HIBYTE(self->mDescriptionAspectRatio);
  BYTE1(self->_offsetsForTransitions) = 1;
}

- (void)updateSizes
{
  BYTE1(self->_offsetsForTransitions) = 0;
  [(MREffectOrigami *)self setPhaseInDuration:self->super.mPhaseInDuration mainDuration:self->super.mMainDuration phaseOutDuration:self->super.mPhaseOutDuration];
  v3 = BYTE2(self->mDescriptionAspectRatio);
  mDescriptionAspectRatio_high = HIBYTE(self->mDescriptionAspectRatio);
  p_mEffectLayer = &self->super.mEffectLayer;
  v6 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v7 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] count];
  v8 = 0;
  if (v7 <= 2)
  {
    v8 = ![(NSString *)self->super.mEffectID hasPrefix:@"Origami2"];
  }

  if ((v3 == mDescriptionAspectRatio_high) == (v6 == 0) && (v8 & 1) == 0)
  {
    if (HIBYTE(self->mDescriptionAspectRatio) == BYTE2(self->mDescriptionAspectRatio))
    {
      v9 = [+[MREffectManager sharedManager](MREffectManager "sharedManager")];
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v116 objects:v121 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v117;
        do
        {
          v14 = 0;
          v15 = v12;
          do
          {
            if (*v117 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v12 = v15 + 1;
            [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
            v14 = v14 + 1;
            ++v15;
          }

          while (v11 != v14);
          v11 = [v9 countByEnumeratingWithState:&v116 objects:v121 count:16];
        }

        while (v11);
      }

      return;
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    objectEnumerator = [(NSDictionary *)[(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs] objectEnumerator];
    v17 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v113;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v113 != v19)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v112 + 1) + 8 * i) setImageSizeScript:0];
        }

        v18 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v112 objects:v120 count:16];
      }

      while (v18);
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V3"])
    {
      p_mPixelSize = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v22 = *p_mPixelSize;
      _Q1 = xmmword_163D60;
LABEL_23:
      v101 = _Q1;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v24 = *p_mPixelSize;
      _Q1 = v101;
LABEL_24:
      v26 = vmulq_f64(v24, _Q1);
LABEL_25:
      v102 = v26;
LABEL_26:
      v27 = @"image2";
LABEL_47:
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      return;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V4"])
    {
      v28 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      __asm { FMOV            V1.2D, #0.25 }

      v103 = _Q1;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v34 = *v28;
LABEL_29:
      _Q1 = v103;
LABEL_30:
      v36 = vmulq_f64(v34, _Q1);
LABEL_31:
      v102 = v36;
LABEL_32:
      v27 = @"image3";
      goto LABEL_47;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V5"])
    {
      v37 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v38.f64[0] = v37->width * 0.333333343;
      v38.f64[1] = v37->height;
LABEL_35:
      v102 = v38;
      v27 = @"image4";
      goto LABEL_47;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V6"])
    {
      v39 = &self->super.mPixelSize;
      height = v39->height;
      v41 = v39->width * 0.5;
      v42 = [(NSDictionary *)[(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs] objectForKey:@"image3"];
      v43 = v41;
      v44 = height;
LABEL_38:
      [v42 setDefaultSize:{v43, v44}];
      v45 = *v39;
      __asm { FMOV            V1.2D, #0.5 }

LABEL_39:
      v104 = _Q1;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v102 = vmulq_f64(*v39, v104);
LABEL_40:
      v27 = @"image5";
      goto LABEL_47;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V7"])
    {
      v47 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v105 = xmmword_163DB0;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v48 = *v47;
      _Q1 = xmmword_163DB0;
LABEL_43:
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v102 = vmulq_f64(*v47, v105);
      v27 = @"image6";
      goto LABEL_47;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-V8"])
    {
      v50 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v51 = *v50;
      v52 = xmmword_163DC0;
LABEL_46:
      v106 = v52;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v102 = vmulq_f64(*v50, v106);
      v27 = @"image7";
      goto LABEL_47;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H3"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami-H3b"])
    {
      p_mPixelSize = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v22 = *p_mPixelSize;
      _Q1 = xmmword_163D90;
      goto LABEL_23;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H3c"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami-H3d"])
    {
      p_mPixelSize = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v22 = *p_mPixelSize;
      __asm { FMOV            V1.2D, #0.5 }

      goto LABEL_23;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H4"])
    {
      v53 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v54.f64[0] = v53->width;
      v54.f64[1] = v53->height * 0.5;
      v102 = v54;
      goto LABEL_40;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H4a"])
    {
      v55 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v57.f64[0] = v55->f64[0];
      v56 = v55->f64[1];
      v58 = 0.666666687;
LABEL_59:
      v57.f64[1] = v56 * v58;
      v102 = v57;
      goto LABEL_32;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H5"])
    {
      v59 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v38 = vmulq_f64(*v59, xmmword_163D80);
      goto LABEL_35;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H6"])
    {
      v39 = &self->super.mPixelSize;
      width = v39->width;
      v61 = v39->height * 0.5;
      v42 = [(NSDictionary *)[(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs] objectForKey:@"image3"];
      v43 = width;
      v44 = v61;
      goto LABEL_38;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H6a"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami-H6b"])
    {
      v39 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v45 = *v39;
      _Q1 = xmmword_163DD0;
      goto LABEL_39;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H7"])
    {
      v47 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v48 = *v47;
      __asm { FMOV            V1.2D, #0.5 }

      v105 = _Q1;
      goto LABEL_43;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami-H8"])
    {
      v50 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v51 = *v50;
      v52 = xmmword_163D80;
      goto LABEL_46;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-L1"])
    {
      goto LABEL_72;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-P1"])
    {
      mPixelSize.width = self->super.mPixelSize.width * 0.333333343;
      mPixelSize.height = self->super.mPixelSize.height;
LABEL_78:
      v102 = mPixelSize;
      goto LABEL_79;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-L2"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami2-P2"])
    {
LABEL_77:
      mPixelSize = self->super.mPixelSize;
      goto LABEL_78;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS1"])
    {
      v64 = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v65.f64[0] = v64->f64[0];
      v65.f64[1] = v64->f64[1] * 0.666666687;
      v102 = v65;
      goto LABEL_26;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS2"])
    {
      goto LABEL_83;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS3"])
    {
      goto LABEL_86;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS4"])
    {
      goto LABEL_89;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS5"])
    {
      goto LABEL_83;
    }

    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT1"])
    {
LABEL_93:
      p_mPixelSize = &self->super.mPixelSize;
      [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
      v22 = *p_mPixelSize;
      _Q1 = xmmword_163DD0;
      goto LABEL_23;
    }

    if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT2"])
    {
      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT3"])
      {
        goto LABEL_83;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT4"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT5"])
      {
        v75 = &self->super.mPixelSize;
        v108 = xmmword_163D90;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
        v76 = v75->f64[0];
        v77 = v75->f64[1] * 0.5;
        v78 = [(NSDictionary *)[(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs] objectForKey:@"image1"];
        v79 = v76;
        v80 = v77;
LABEL_99:
        [v78 setDefaultSize:{v79, v80}];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
        v34 = *v75;
        __asm { FMOV            V1.2D, #0.5 }

        goto LABEL_30;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT6"])
      {
        goto LABEL_86;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT7"])
      {
        goto LABEL_93;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT8"])
      {
LABEL_86:
        v70 = &self->super.mPixelSize;
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
        [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
        v107 = vmulq_f64(*v70, xmmword_163D90);
        slideProvidersForElementIDs = [(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs];
        v72 = @"image2";
LABEL_87:
        [-[NSDictionary objectForKey:](slideProvidersForElementIDs objectForKey:{v72), "setDefaultSize:", *&v107}];
        v57.f64[0] = v70->f64[0];
        v56 = v70->f64[1];
        v58 = 0.5;
        goto LABEL_59;
      }

      if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LT9"])
      {
        goto LABEL_83;
      }

      if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ1"])
      {
        if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ2"])
        {
          goto LABEL_93;
        }

        if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ3"])
        {
          v70 = &self->super.mPixelSize;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          v107 = vmulq_f64(*v70, xmmword_163D90);
          slideProvidersForElementIDs = [(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs];
          v72 = @"image1";
          goto LABEL_87;
        }

        if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ4"])
        {
          v81 = &self->super.mPixelSize;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          __asm { FMOV            V1.2D, #0.5 }

          v109 = _Q1;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          v83 = vmulq_f64(*v81, v109);
LABEL_110:
          v102 = v83;
          goto LABEL_90;
        }

        if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ5"])
        {
          v84 = &self->super.mPixelSize;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          v110 = vmulq_f64(self->super.mPixelSize, xmmword_163D90);
          v27 = @"image2";
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          __asm { FMOV            V1.2D, #0.5 }

          v102 = vmulq_f64(*v84, _Q1);
          goto LABEL_47;
        }

        if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LQ6"])
        {
          v75 = &self->super.mPixelSize;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          v100 = vmulq_f64(*v75, xmmword_163D90);
          v108 = xmmword_163D90;
          v78 = [(NSDictionary *)[(MRLayerEffect *)*p_mEffectLayer slideProvidersForElementIDs] objectForKey:@"image1"];
          v80 = v100.f64[1];
          v79 = v100.f64[0];
          goto LABEL_99;
        }

        if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LS1S4"]&& ![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LP1"])
        {
          if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LP2"])
          {
            if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LP3"])
            {
              v86 = &self->super.mPixelSize;
              [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
              [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
              [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
              v24 = *v86;
              __asm { FMOV            V1.2D, #0.5 }

              goto LABEL_24;
            }

            if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-LP4"])
            {
              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PS1"])
              {
                goto LABEL_77;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PS2"])
              {
                v87 = &self->super.mPixelSize;
                p_height = &v87->height;
                __asm { FMOV            V1.2D, #0.5 }

                v111 = _Q1;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v90 = v87->width;
                v91 = 0.5;
LABEL_128:
                v26.f64[0] = v90 * v91;
LABEL_139:
                v26.f64[1] = *p_height;
                goto LABEL_25;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PS3"])
              {
                v103 = xmmword_163DB0;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v34 = self->super.mPixelSize;
                goto LABEL_29;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PT1"])
              {
                v92 = &self->super.mPixelSize;
                p_height = &v92->height;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v90 = v92->width;
                v91 = 0.666666687;
                goto LABEL_128;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PT2"])
              {
                goto LABEL_136;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PT3"])
              {
                goto LABEL_138;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PQ1"])
              {
                goto LABEL_136;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PQ2"])
              {
                goto LABEL_138;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PQ3"])
              {
                v93 = &self->super.mPixelSize;
                v94 = &self->super.mPixelSize.height;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v36.f64[0] = v93->f64[0] * 0.333333343;
LABEL_142:
                v36.f64[1] = *v94;
                goto LABEL_31;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PP1"])
              {
LABEL_136:
                v95 = &self->super.mPixelSize;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v83.f64[0] = v95->width * 0.5;
                v83.f64[1] = v95->height;
                goto LABEL_110;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PP2"])
              {
LABEL_138:
                v96 = &self->super.mPixelSize;
                p_height = &v96->height;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v26.f64[0] = v96->width * 0.333333343;
                goto LABEL_139;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-PP3"])
              {
                v97 = &self->super.mPixelSize;
                v94 = &self->super.mPixelSize.height;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v36.f64[0] = v97->f64[0] * 0.333333343;
                goto LABEL_142;
              }

              if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-L1"])
              {
LABEL_72:
                v62.f64[0] = self->super.mPixelSize.width;
                v62.f64[1] = self->super.mPixelSize.height * 0.333333343;
                v102 = v62;
LABEL_79:
                v27 = @"image0";
                goto LABEL_47;
              }

              if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-LP1"])
              {
                if (![(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-L3"])
                {
                  return;
                }

                v66 = &self->super.mPixelSize;
                [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
                v68 = v66->width;
                v67 = v66->height;
                goto LABEL_84;
              }
            }

            v98 = &self->super.mPixelSize;
            [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
            v99.f64[0] = v98->width;
            v99.f64[1] = v98->height * 0.333333343;
            v102 = v99;
            goto LABEL_90;
          }

LABEL_83:
          v66 = &self->super.mPixelSize;
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          v68 = v66->width;
          v67 = v66->height;
LABEL_84:
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
          v69.f64[0] = v66->width;
          v69.f64[1] = v66->height * 0.333333343;
          v102 = v69;
          goto LABEL_26;
        }
      }
    }

LABEL_89:
    v73 = &self->super.mPixelSize;
    [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](*p_mEffectLayer "slideProvidersForElementIDs")];
    v74.f64[0] = v73->width;
    v74.f64[1] = v73->height * 0.5;
    v102 = v74;
LABEL_90:
    v27 = @"image1";
    goto LABEL_47;
  }
}

+ (id)customTimingWithEffectID:(id)d effectAttributes:(id)attributes slideInformation:(id)information textInformation:(id)textInformation inAspectRatio:(double)ratio
{
  v8 = [[MREffectOrigamiTiming alloc] initWithEffectID:d];
  v9 = +[MREffectManager sharedManager];
  [v9 defaultPhaseInDurationForEffectID:d];
  v11 = v10;
  [v9 defaultMainDurationForEffectID:d];
  v13 = v12;
  [v9 defaultPhaseOutDurationForEffectID:d];
  [(MREffectOrigamiTiming *)v8 setPhaseInDuration:v11 mainDuration:v13 phaseOutDuration:v14];

  return v8;
}

- (id)_retainedByUserBackColorImageInContext:(id)context
{
  backColor = [context backColor];
  v7 = *(&self->mDurationStretchFactor + 1);
  if (v7)
  {
    LODWORD(v6) = *backColor;
    if (*backColor == *(&self->mBackColorImage + 1))
    {
      LODWORD(v6) = backColor[1];
      if (*&v6 == *(&self->mBackColorImage + 5))
      {
        LODWORD(v6) = backColor[2];
        if (*&v6 == *(self->mBackColorForImage + 1))
        {
          goto LABEL_11;
        }
      }
    }

    [v7 releaseByUser];
  }

  LODWORD(v6) = *backColor;
  if (*backColor <= 0.0 && (LODWORD(v6) = backColor[1], *&v6 <= 0.0) && (LODWORD(v6) = backColor[2], *&v6 <= 0.0))
  {
    *(&self->mDurationStretchFactor + 1) = [context retainedByUserBlackImage];
  }

  else
  {
    imageManager = [objc_msgSend(context imageManager];
    *(&self->mDurationStretchFactor + 1) = imageManager;
    [imageManager setLabel:@"Marimba Origami Background"];
    [*(&self->mDurationStretchFactor + 1) setClampMode:2];
  }

  *(&self->mBackColorImage + 1) = *backColor;
  *(&self->mBackColorImage + 5) = backColor[1];
  *(self->mBackColorForImage + 1) = backColor[2];
  v7 = *(&self->mDurationStretchFactor + 1);
LABEL_11:

  return [v7 retainByUser];
}

- (void)_setupBreakInfos:(double)infos inContext:(id)context withArguments:(id)arguments
{
  [context localAspectRatio];
  v8 = v7;
  v9 = [qword_1EF3C0 objectForKey:self->super.mEffectID];
  v10 = v9;
  if (HIBYTE(self->mDescriptionAspectRatio) != BYTE2(self->mDescriptionAspectRatio))
  {
    v11 = [objc_msgSend(v9 objectAtIndex:{0), "objectForKey:", @"fallback"}];
    if (v11)
    {
      v10 = v11;
    }
  }

  v12 = 0;
  v13 = v8;
  v14 = 1.77777778;
  if (!BYTE2(self->mDescriptionAspectRatio))
  {
    v14 = 0.5625;
  }

  v15 = 1.33333333;
  if (!BYTE2(self->mDescriptionAspectRatio))
  {
    v15 = 0.75;
  }

  if (!BYTE1(self->mDescriptionAspectRatio))
  {
    v14 = v15;
  }

  v16 = v14;
  *(&self->mBackColorForImage[1] + 1) = v16;
  *(&self->mBreakInfos + 1) = 0;
  do
  {
    v17 = (&(*(&self->mThirdsSwingBottom + 1))->super.isa + v12);
    *v17 = -1;
    v17[1] = -1;
    v12 += 16;
  }

  while (v12 != 128);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v18 = [v10 countByEnumeratingWithState:&v77 objects:v83 count:16];
  if (!v18)
  {
    goto LABEL_56;
  }

  v19 = v18;
  v20 = *v78;
  v69 = 1;
  v72 = vdupq_n_s64(0xC07B000000000000);
  v71 = vdupq_lane_s64(0x3F62F684BDA12F68, 0).u64[0];
  v21 = 0.5;
  v22 = 2.0;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v78 != v20)
      {
        objc_enumerationMutation(v10);
      }

      v24 = *(*(&v77 + 1) + 8 * i);
      if ([objc_msgSend(v24 objectForKey:{@"subEffectID", "isEqualToString:", @"pstill"}])
      {
        v25 = v10;
        if ([v24 objectForKey:@"aspectRatio"])
        {
          [objc_msgSend(v24 objectForKey:{@"aspectRatio", "floatValue"}];
          *(&self->mBackColorForImage[1] + 1) = v26;
        }

        v27 = [v24 objectForKey:@"attributes"];
        v75 = 0u;
        v76 = 0u;
        v28 = [v24 objectForKey:@"rectangle"];
        v81 = 0u;
        v82 = 0u;
        sscanf([v28 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v81, &v81.f64[1], &v82, &v82 + 8);
        v75 = v81;
        v76 = v82;
        if (BYTE1(self->mDescriptionAspectRatio) == 1)
        {
          if (BYTE2(self->mDescriptionAspectRatio))
          {
            v29 = 0.00130208333;
          }

          else
          {
            v29 = 0.00411522637;
          }

          *&v30.f64[0] = v71;
          v30.f64[1] = v29;
          v75 = vmulq_f64(vaddq_f64(v81, v72), v30);
          *&v76 = *&v82 * 0.00231481481;
          *(&v76 + 1) = *(&v82 + 1) * v29;
        }

        v31 = [objc_msgSend(v27 objectForKey:{@"slideIndex", StretchRectangle(v75.f64, objc_msgSend(objc_msgSend(v24, "objectForKey:", @"stretchFlags", "intValue"), *(&self->mBackColorForImage[1] + 1), v13)), "intValue"}];
        v32 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
        if (v32)
        {
          v33 = v32;
          [v32 aspectRatio];
          if (v34 < v21 || v34 > v22)
          {
            v36 = *&v76 / *(&v76 + 1);
            if (v34 >= 1.0 || v36 <= 1.0)
            {
              v38 = v34 > 1.0 && v36 < 1.0;
              if (!v38)
              {
                v38 = v34 < 1.0;
                v39 = v34 / v36;
                v40 = v36 / v34;
                if (!v38)
                {
                  v40 = v39;
                }

                if (v40 >= 1.1)
                {
                  [v33 width];
                  v42 = v41;
                  [v33 height];
                  v44 = v43;
                  [(MREffectOrigami *)self _checkPanoramaAbsoluteSizeForImage:v33 inRect:&v75];
                  v45 = *&v76;
                  v46 = *(&v76 + 1);
                  if (v45 >= v46)
                  {
                    v47 = *(&v76 + 1);
                  }

                  else
                  {
                    v47 = *&v76;
                  }

                  v70 = v47;
                  v69 = v42 <= v44;
                  if (v42 <= v44)
                  {
                    [v33 height];
                    v49 = v48;
                    [v33 width];
                    v54 = v49 * v45 - v50 * v46;
                    [v33 width];
                  }

                  else
                  {
                    [v33 width];
                    v52 = v51;
                    [v33 height];
                    v54 = v52 * v46 - v53 * v45;
                    [v33 height];
                  }

                  v56 = v54 / (v55 * v70);
                  v57 = v56;
                  v58 = vcvtps_u32_f32(v57);
                  if (v56 <= 0.0)
                  {
                    v58 = 0;
                  }

                  v59 = (*(&self->mThirdsSwingBottom + 1) + 16 * v31);
                  *v59 = v58;
                  v59[1] = 0;
                  *(&self->mBreakInfos + 1) = (*(&self->mBreakInfos + 1) + v58);
                  v21 = 0.5;
                  v22 = 2.0;
                }
              }
            }
          }

          [v33 releaseByUser];
        }

        v10 = v25;
      }
    }

    v19 = [v10 countByEnumeratingWithState:&v77 objects:v83 count:16];
  }

  while (v19);
  if (!v69)
  {
    v64 = 0;
    p_values = &(*(&self->mThirdsSwingBottom + 1))[2]._values;
    v66 = -8;
    do
    {
      v67 = *(p_values - 1);
      if ((v67 & 0x8000000000000000) == 0)
      {
        *p_values = v64;
        v64 = (v64 + v67);
      }

      p_values -= 2;
    }

    while (!__CFADD__(v66++, 1));
  }

  else
  {
LABEL_56:
    v60 = 0;
    p_curves = &(*(&self->mThirdsSwingBottom + 1))->_curves;
    v62 = 8;
    do
    {
      v63 = *(p_curves - 1);
      if ((v63 & 0x8000000000000000) == 0)
      {
        *p_curves = v60;
        v60 = (v60 + v63);
      }

      p_curves += 2;
      --v62;
    }

    while (v62);
  }
}

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  v9.receiver = self;
  v9.super_class = MREffectOrigami;
  v10 = 0;
  v7 = [(MREffect *)&v9 prerenderForTime:context inContext:arguments withArguments:?]| BYTE1(self->_offsetsForTransitions);
  if (BYTE1(self->_offsetsForTransitions))
  {
    [(MREffectOrigami *)self updateSizes];
  }

  if ([(MRLayer *)self->super.mEffectLayer isActivated])
  {
    if (time >= 0.0)
    {
      v7 |= [(MREffectOrigami *)self _needsRenderingAtTime:&v10 remainingStillDurationAfter:time];
    }
  }

  else
  {
    [*(&self->mTotalNumberOfFolds + 1) removeAllObjects];
  }

  return v7 & 1;
}

- (void)renderAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (time >= 0.0 && self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration > time && [(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs])
  {
    v8 = self->super.mPixelSize.width * 0.5;
    *(&self->mBackColorForImage[2] + 1) = v8;
    *(&self->mSprites + 1) = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [*(&self->super._isInInteractiveMode + 1) allKeys]);
    [context localAspectRatio];
    v10 = v9;
    v11 = 2.0 / v9;
    if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami4"])
    {
      [(MREffectOrigami *)self renderFold4LeftAtTime:context andProgress:arguments inContext:0 withArguments:time inRect:time / (self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration) withAttributes:-1.0, v11 * -0.5, 2.0, v11];
    }

    else if ([(NSString *)self->super.mEffectID hasPrefix:@"Origami-JustASlide"])
    {
      [(MREffectOrigami *)self renderStillAtTime:context andProgress:arguments inContext:0 withArguments:time inRect:time / (self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration) withAttributes:-1.0, v11 * -0.5, 2.0, v11];
    }

    else
    {
      [(MREffectOrigami *)self _setupBreakInfos:context inContext:arguments withArguments:time];
      v12 = [qword_1EF3C0 objectForKey:self->super.mEffectID];
      v13 = v12;
      if (HIBYTE(self->mDescriptionAspectRatio) != BYTE2(self->mDescriptionAspectRatio))
      {
        v14 = [objc_msgSend(v12 objectAtIndex:{0), "objectForKey:", @"fallback"}];
        if (v14)
        {
          v13 = v14;
        }
      }

      v15 = 1.77777778;
      if (!BYTE2(self->mDescriptionAspectRatio))
      {
        v15 = 0.5625;
      }

      v16 = 1.33333333;
      if (!BYTE2(self->mDescriptionAspectRatio))
      {
        v16 = 0.75;
      }

      if (!BYTE1(self->mDescriptionAspectRatio))
      {
        v15 = v16;
      }

      v17 = v15;
      *(&self->mBackColorForImage[1] + 1) = v17;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v18 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        v21 = *v48;
        v44 = vdupq_n_s64(0xC07B000000000000);
        v43 = vdupq_lane_s64(0x3F62F684BDA12F68, 0).u64[0];
        do
        {
          v22 = 0;
          v45 = v19;
          do
          {
            if (*v48 != v21)
            {
              objc_enumerationMutation(v13);
            }

            v23 = *(*(&v47 + 1) + 8 * v22);
            v24 = [*(&self->mAnimationTimeBounds + 1) objectAtIndex:v20];
            [objc_msgSend(v24 objectForKey:{@"startTime", "doubleValue"}];
            v26 = v25;
            [objc_msgSend(v24 objectForKey:{@"endTime", "doubleValue"}];
            v28 = v27 - v26;
            v29 = v26 + v27 - v26;
            if (v26 <= time && v29 > time)
            {
              v31 = v13;
              if ([v23 objectForKey:{@"aspectRatio", v29}])
              {
                [objc_msgSend(v23 objectForKey:{@"aspectRatio", "floatValue"}];
                *(&self->mBackColorForImage[1] + 1) = v32;
              }

              v33 = [v23 objectForKey:@"subEffectID"];
              v34 = [v23 objectForKey:@"attributes"];
              v35 = [v23 objectForKey:@"rectangle"];
              v51 = 0u;
              v52 = 0u;
              sscanf([v35 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v51, &v51.f64[1], &v52, &v52 + 8);
              if (BYTE1(self->mDescriptionAspectRatio) == 1)
              {
                if (BYTE2(self->mDescriptionAspectRatio))
                {
                  v36 = 0.00130208333;
                }

                else
                {
                  v36 = 0.00411522637;
                }

                *&v37.f64[0] = v43;
                v37.f64[1] = v36;
                v51 = vmulq_f64(vaddq_f64(v51, v44), v37);
                *&v52 = *&v52 * 0.00231481481;
                *(&v52 + 1) = *(&v52 + 1) * v36;
              }

              if ([v33 isEqualToString:{@"fall", StretchRectangle(v51.f64, objc_msgSend(objc_msgSend(v23, "objectForKey:", @"stretchFlags", "intValue"), *(&self->mBackColorForImage[1] + 1), v10)}])
              {
                [(MREffectOrigami *)self renderFallAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              else if ([v33 isEqualToString:@"pfall"])
              {
                [(MREffectOrigami *)self renderFallBreakAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              else if ([v33 isEqualToString:@"fall2"])
              {
                [(MREffectOrigami *)self renderFall2AtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              else if ([objc_msgSend(v24 objectForKey:{@"isStill", "BOOLValue"}])
              {
                [(MREffectOrigami *)self renderStillAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              else if ([v33 isEqualToString:@"pstill"])
              {
                [(MREffectOrigami *)self renderBreakAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              else if ([v33 isEqualToString:@"flip"])
              {
                v38 = [objc_msgSend(v23 objectForKey:{@"attributes", "objectForKey:", @"direction"}];
                if ([v38 isEqualToString:@"left"])
                {
                  [(MREffectOrigami *)self renderFlipLeftAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }

                else if ([v38 isEqualToString:@"down"])
                {
                  [(MREffectOrigami *)self renderFlipDownAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }

                else if ([v38 isEqualToString:@"right"])
                {
                  v41 = [[NSMutableDictionary alloc] initWithDictionary:v34];
                  [v41 setObject:objc_msgSend(v34 forKey:{"objectForKey:", @"recto", @"verso"}];
                  [v41 setObject:objc_msgSend(v34 forKey:{"objectForKey:", @"verso", @"recto"}];
                  [v41 setObject:&__kCFBooleanTrue forKey:@"invert"];
                  [(MREffectOrigami *)self renderFlipLeftAtTime:context andProgress:arguments inContext:v41 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }
              }

              else if ([v33 isEqualToString:@"fold"])
              {
                v39 = [objc_msgSend(v23 objectForKey:{@"attributes", "objectForKey:", @"direction"}];
                if ([v39 isEqualToString:@"left"])
                {
                  [(MREffectOrigami *)self renderFoldLeftAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }

                else if ([v39 isEqualToString:@"down"])
                {
                  [(MREffectOrigami *)self renderFoldDownAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }
              }

              else if ([v33 isEqualToString:@"1To3"])
              {
                v40 = [objc_msgSend(v23 objectForKey:{@"attributes", "objectForKey:", @"direction"}];
                if ([v40 isEqualToString:@"left"])
                {
                  [(MREffectOrigami *)self render1To3LeftAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }

                else if ([v40 isEqualToString:@"down"])
                {
                  [(MREffectOrigami *)self render1To3DownAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
                }
              }

              else if ([v33 isEqualToString:@"flipDiagonal"])
              {
                [(MREffectOrigami *)self renderFlipDiagonalAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              else if ([v33 isEqualToString:@"flower"])
              {
                [(MREffectOrigami *)self renderUnfoldingFlowerAtTime:context andProgress:arguments inContext:v34 withArguments:time inRect:(time - v26) / v28 withAttributes:*&v51, v52];
              }

              v13 = v31;
              v19 = v45;
            }

            v22 = v22 + 1;
            ++v20;
          }

          while (v19 != v22);
          v42 = [v13 countByEnumeratingWithState:&v47 objects:v53 count:{16, v29}];
          v19 = v42;
        }

        while (v42);
      }
    }

    [*(&self->super._isInInteractiveMode + 1) removeObjectsForKeys:*(&self->mSprites + 1)];
    *(&self->mSprites + 1) = 0;
  }
}

- (id)elementHitAtPoint:(CGPoint)point withInverseMatrix:(float)matrix[16] localPoint:(CGPoint *)localPoint
{
  y = point.y;
  x = point.x;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = *(&self->super._isInInteractiveMode + 1);
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v22;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [*(&self->super._isInInteractiveMode + 1) objectForKey:{v16, v20}];
        v20 = 0;
        if (v17 && [v17 hitAtPoint:matrix withInverseMatrix:&v20 localPoint:{x, y}])
        {
          if (!v13)
          {
            if (localPoint)
            {
LABEL_16:
              *localPoint = v20;
            }

            v13 = v16;
            continue;
          }

          if ([v16 compare:v13] == &dword_0 + 1)
          {
            v13 = v16;
            v18 = localPoint == 0;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            goto LABEL_16;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (!v12)
      {
        return v13;
      }
    }
  }

  return 0;
}

- (BOOL)getVerticesCoordinates:(MREffectOrigami *)self withMatrix:(SEL)matrix forElement:(CGPoint *)(a3
{
  v7 = [*(&self->super._isInInteractiveMode + 1) objectForKey:a5];
  if (v7)
  {

    LOBYTE(v7) = [v7 getVerticesCoordinates:a3 withMatrix:a4];
  }

  return v7;
}

- (void)setPhaseInDuration:(double)duration mainDuration:(double)mainDuration phaseOutDuration:(double)outDuration
{
  v69.receiver = self;
  v69.super_class = MREffectOrigami;
  [(MREffect *)&v69 setPhaseInDuration:duration mainDuration:mainDuration phaseOutDuration:outDuration];

  v6 = [qword_1EF3C0 objectForKey:self->super.mEffectID];
  v7 = v6;
  if (HIBYTE(self->mDescriptionAspectRatio) != BYTE2(self->mDescriptionAspectRatio))
  {
    v8 = [objc_msgSend(v6 objectAtIndex:{0), "objectForKey:", @"fallback"}];
    if (v8)
    {
      v7 = v8;
    }
  }

  v68 = 0.0;
  *(&self->mSpriteKeysWatcher + 1) = ComputeAnimationTimeBounds(v7, &v68);
  *(&self->mItemInfos + 1) = (self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration - v68) / (self->super.mDefaultPhaseInDuration + self->super.mDefaultMainDuration + self->super.mDefaultPhaseOutDuration - v68);
  if ([(NSString *)self->super.mEffectID hasPrefix:@"Origami-JustASlide"])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    objectEnumerator = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectEnumerator];
    v10 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v65;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v65 != v12)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v14 = *(*(&v64 + 1) + 8 * i);
          [v14 setShowTime:0.0];
          [v14 setShowDuration:self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration];
        }

        v11 = [(NSEnumerator *)objectEnumerator countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v11);
    }

    goto LABEL_34;
  }

  if (HIBYTE(self->mDescriptionAspectRatio) == BYTE2(self->mDescriptionAspectRatio))
  {
    v62 = 0uLL;
    v63 = 0uLL;
    v60 = 0uLL;
    v61 = 0uLL;
    obj = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectEnumerator];
    v15 = [(NSEnumerator *)obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (!v15)
    {
      goto LABEL_34;
    }

    v16 = v15;
    v17 = *v61;
    while (1)
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v61 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v60 + 1) + 8 * j);
        v20 = +[MRUtilities executeScript:withHeader:andAttributes:](MRUtilities, "executeScript:withHeader:andAttributes:", [v19 showTimeScript], 0, 0);
        if (!v20)
        {
          width = 0.0;
LABEL_23:
          height = self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration - width;
          goto LABEL_24;
        }

        v21 = CGSizeFromString(v20);
        width = v21.width;
        height = v21.height;
        if (v21.height < 0.0)
        {
          goto LABEL_23;
        }

LABEL_24:
        StretchTime(*(&self->mSpriteKeysWatcher + 1), width, *(&self->mItemInfos + 1));
        v25 = v24;
        [v19 setShowTime:?];
        StretchTime(*(&self->mSpriteKeysWatcher + 1), width + height, *(&self->mItemInfos + 1));
        [v19 setShowDuration:v26 - v25];
      }

      v16 = [(NSEnumerator *)obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      if (!v16)
      {
        goto LABEL_34;
      }
    }
  }

  v58 = 0uLL;
  v59 = 0uLL;
  v56 = 0uLL;
  v57 = 0uLL;
  objectEnumerator2 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectEnumerator];
  v28 = [(NSEnumerator *)objectEnumerator2 countByEnumeratingWithState:&v56 objects:v71 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v57;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v57 != v30)
        {
          objc_enumerationMutation(objectEnumerator2);
        }

        v32 = *(*(&v56 + 1) + 8 * k);
        [v32 setShowTime:0.0];
        [v32 setShowDuration:self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration];
      }

      v29 = [(NSEnumerator *)objectEnumerator2 countByEnumeratingWithState:&v56 objects:v71 count:16];
    }

    while (v29);
  }

LABEL_34:
  v33 = *(&self->mAnimationTimeBounds + 1);
  if (v33)
  {
    [v33 removeAllObjects];
  }

  else
  {
    *(&self->mAnimationTimeBounds + 1) = objc_alloc_init(NSMutableArray);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obja = [v7 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (obja)
  {
    v49 = *v53;
    do
    {
      for (m = 0; m != obja; m = m + 1)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(v7);
        }

        v35 = *(*(&v52 + 1) + 8 * m);
        [objc_msgSend(v35 objectForKey:{@"startTime", "doubleValue"}];
        v37 = v36;
        [objc_msgSend(v35 objectForKey:{@"duration", "doubleValue"}];
        v39 = v37 + v38;
        StretchTime(*(&self->mSpriteKeysWatcher + 1), v37, *(&self->mItemInfos + 1));
        v41 = v40;
        StretchTime(*(&self->mSpriteKeysWatcher + 1), v39, *(&self->mItemInfos + 1));
        v43 = v42;
        v44 = [v35 objectForKey:@"subEffectID"];
        v45 = [v44 isEqualToString:@"still"];
        if ([v44 isEqualToString:@"pstill"])
        {
          [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
          v47 = v46 <= 0.5 || v46 >= 2.0;
          v45 = (v47 ^ 1);
        }

        else
        {
          v47 = 0;
        }

        v48 = [[NSDictionary alloc] initWithObjectsAndKeys:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v41), @"startTime", +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v43), @"endTime", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v45), @"isStill", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v47), @"isBreak", 0}];
        [*(&self->mAnimationTimeBounds + 1) addObject:v48];
      }

      obja = [v7 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (obja);
  }
}

- (void)_renderFallImage:(id)image atProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes :(CGPoint *)a9 :(CGPoint)self0
{
  y = a10.y;
  x = a10.x;
  v16 = rect.origin.x;
  v17 = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  *&progress = progress;
  [*(&self->mLittleSwing + 1) valueAtTime:{image, context, arguments, progress}];
  v21 = 3.1416 - v20;
  if (y != 0.0)
  {
    v21 = fmax(v21 * 2.5, -3.14159265);
    if (v21 > 3.14159265)
    {
      v21 = 3.1416;
    }
  }

  v24 = __sincosf_stret(v21);
  cosval = v24.__cosval;
  LODWORD(v22) = *&v24;
  v25 = [objc_msgSend(attributes objectForKey:{@"direction", "isEqualToString:", @"back"}];
  v26 = x + (v17 + ((1.0 - cosval) * height));
  v36[0] = v16;
  v36[1] = v26;
  v27 = -height;
  if (!v25)
  {
    v27 = height;
  }

  v28 = (v22 * v27);
  v29 = y + v28;
  v36[2] = v29;
  v36[3] = v16;
  v30 = x + (v17 + height);
  v31 = y;
  v36[4] = v30;
  v36[5] = v31;
  v36[6] = v16 + width;
  v36[7] = x + (v17 + ((1.0 - cosval) * height));
  v36[8] = v29;
  v36[9] = v16 + width;
  v36[10] = v30;
  v36[11] = v31;
  if (a9)
  {
    a9->x = ((1.0 - cosval) * height);
    a9->y = v28;
  }

  HIDWORD(v32) = -1082130432;
  v35[0] = xmmword_163FC4;
  v35[1] = unk_163FD4;
  v33 = 0;
  *&v32 = width / height;
  [image setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v33 state:v32];
  [context cull:2];
  SetLightingColors(v34, v36, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:v36];
  [context setTextureCoordinatesPointer:v35 onTextureUnit:0];
  [context setColorsPointer:v34];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [context cull:0];
  [image unsetOnContext:context onTextureUnit:0 state:&v33];
}

- (void)_renderFallBreakImage:(id)image atProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes :(CGPoint *)a9 :(CGPoint)self0
{
  y = a10.y;
  x = a10.x;
  height = rect.size.height;
  width = rect.size.width;
  v18 = rect.origin.y;
  v19 = rect.origin.x;
  rectCopy = rect;
  v23 = [objc_msgSend(attributes objectForKey:{@"slideIndex", "intValue"}];
  v24 = ImageKey(v23);
  v25 = *(&(*(&self->mThirdsSwingBottom + 1))->super.isa + 2 * v23);
  if ((v25 & 0x8000000000000000) != 0)
  {

    [(MREffectOrigami *)self _renderFallImage:image atProgress:context inContext:arguments withArguments:attributes inRect:a9 withAttributes:progress];
  }

  else
  {
    v26 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", v24), "objectForKey:", @"panEndDirection", "intValue"}];
    v27 = [(MREffectOrigami *)self _checkPanoramaAbsoluteSizeForImage:image inRect:&rectCopy];
    if (v25)
    {
      v72 = y;
      v28 = rectCopy.origin.x;
      v29 = rectCopy.origin.y;
      v68 = v29;
      v30 = rectCopy.size.width;
      v31 = rectCopy.size.height;
      [image aspectRatio];
      v33 = v32;
      [image scale];
      v71 = v34;
      [image centerX];
      v70 = v35;
      [image centerY];
      v69 = v36;
      [image setScale:1.0];
      [image setCenterX:0.0];
      [image setCenterY:0.0];
      v37 = v25;
      if (v33 <= 1.0)
      {
        v53 = v30 / v33;
        v54 = 1.0 / v53;
        v55 = (v53 - v31) / (v53 * v37) + (v53 - v31) / (v53 * v37);
        if (v26 != -1)
        {
          v37 = 0.0;
        }

        v43 = v55 * v37 + -1.0;
        v44 = v43;
        *&v43 = v43 + (v31 + v31) * v54;
        v77[0] = -1.0;
        v42 = v54 * v30;
        v41 = 1.0;
        v40 = -1.0;
      }

      else
      {
        v38 = v33 * v31;
        v39 = (v38 - v30) / (v38 * v37);
        if (v26 != -1)
        {
          v37 = 0.0;
        }

        v43 = v37 * v39 * 2.0 + -1.0;
        v40 = v43;
        v41 = v43 + (v30 + v30) * (1.0 / v38);
        v77[0] = v40;
        v42 = v38 / v31;
        LODWORD(v43) = 1.0;
        v44 = -1.0;
      }

      v77[1] = v44;
      v77[2] = v40;
      v77[3] = *&v43;
      v77[4] = v41;
      v77[5] = v44;
      v78 = __PAIR64__(LODWORD(v43), LODWORD(v41));
      *&v43 = progress;
      [*(&self->mLittleSwing + 1) valueAtTime:v43];
      v59 = __sincosf_stret(3.1416 - v56);
      cosval = v59.__cosval;
      LODWORD(v57) = *&v59;
      v60 = [objc_msgSend(attributes objectForKey:{@"direction", "isEqualToString:", @"back"}];
      v62 = x + (v68 + ((1.0 - cosval) * v31));
      v76[0] = v28;
      v76[1] = v62;
      v63 = -v31;
      if (!v60)
      {
        v63 = v31;
      }

      v64 = (v57 * v63);
      v65 = v72 + v64;
      v76[2] = v65;
      v76[3] = v28;
      v66 = x + (v68 + v31);
      v67 = v72;
      v76[4] = v66;
      v76[5] = v67;
      v76[6] = v28 + v30;
      v76[7] = x + (v68 + ((1.0 - cosval) * v31));
      v76[8] = v65;
      v76[9] = v28 + v30;
      v76[10] = v66;
      v76[11] = v67;
      if (a9)
      {
        v61 = ((1.0 - cosval) * v31);
        a9->x = v61;
        a9->y = v64;
      }

      v73 = 0;
      *&v61 = v42;
      [image setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v73 state:v61];
      [context cull:2];
      SetLightingColors(v75, v76, *[context foreColor]);
      [context setShader:@"ColoredTexture"];
      [context setVertex3DPointer:v76];
      [context setTextureCoordinatesPointer:v77 onTextureUnit:0];
      [context setColorsPointer:v75];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      [context cull:0];
      [image unsetOnContext:context onTextureUnit:0 state:&v73];
      [image setScale:v71];
      [image setCenterX:v70];
      imageCopy2 = image;
      v52 = v69;
      goto LABEL_20;
    }

    if (v27)
    {
      [image scale];
      v46 = v45;
      [image centerX];
      v48 = v47;
      [image centerY];
      v50 = v49;
      [image setScale:1.0];
      [image setCenterX:0.0];
      [image setCenterY:0.0];
      [(MREffectOrigami *)self _renderFallImage:image atProgress:context inContext:arguments withArguments:attributes inRect:a9 withAttributes:progress];
      [image setScale:v46];
      [image setCenterX:v48];
      imageCopy2 = image;
      v52 = v50;
LABEL_20:
      [imageCopy2 setCenterY:v52];
      return;
    }

    [(MREffectOrigami *)self _renderFallImage:image atProgress:context inContext:arguments withArguments:attributes inRect:a9 withAttributes:progress];
  }
}

- (void)renderFallAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  [(MREffectOrigami *)self _renderFallImage:v17 atProgress:context inContext:arguments withArguments:attributes inRect:0 withAttributes:progress];

  [v17 releaseByUser];
}

- (void)renderFall2AtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v19 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v22 = 0.0;
  v23 = 0.0;
  v20 = y + height * 0.5;
  v21 = height * 0.5;
  [(MREffectOrigami *)self _renderFallImage:v18 atProgress:context inContext:arguments withArguments:attributes inRect:&v22 withAttributes:progress];
  [(MREffectOrigami *)self _renderFallImage:v19 atProgress:context inContext:arguments withArguments:attributes inRect:0 withAttributes:progress];
  [v18 releaseByUser];
  [v19 releaseByUser];
}

- (void)renderFallBreakAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  [(MREffectOrigami *)self _renderFallBreakImage:v17 atProgress:context inContext:arguments withArguments:attributes inRect:0 withAttributes:progress];

  [v17 releaseByUser];
}

- (void)renderStillAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  v60.i64[0] = __PAIR64__(LODWORD(y), LODWORD(x));
  v60.f32[2] = x;
  v60.f32[3] = y + height;
  v61.f32[0] = x + width;
  v61.f32[1] = y;
  v61.f32[2] = x + width;
  v61.f32[3] = y + height;
  v17 = [attributes objectForKey:@"slideRect"];
  v58 = xmmword_163FC4;
  v59 = unk_163FD4;
  if (v17)
  {
    MyGLRectFromString(v17, &v58);
  }

  v18 = [attributes objectForKey:@"slideIndex"];
  if ((v18 || -[NSString hasPrefix:](self->super.mEffectID, "hasPrefix:", @"Origami-JustASlide")) && (v19 = ImageKey([v18 intValue])) != 0)
  {
    v20 = v19;
    v21 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:v19];
    v22 = [v21 retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
    v23 = 0;
  }

  else
  {
    v22 = [(MREffectOrigami *)self _retainedByUserBackColorImageInContext:context];
    v21 = 0;
    v20 = 0;
    v23 = 1;
  }

  if ([v21 defaultKenBurnsType] == 1)
  {
    LOBYTE(v56[0]) = 0;
    *&v24 = width / height;
    [v22 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:v56 state:v24];
    *&v25 = SetLightingColors2D(v57, v60.f32, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v25}];
    [context setVertex2DPointer:&v60];
    [context setTextureCoordinatesPointer:&v58 onTextureUnit:0];
    [context setColorsPointer:v57];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v22 unsetOnContext:context onTextureUnit:0 state:v56];
  }

  else
  {
    [v22 width];
    v27 = v26;
    [v22 height];
    *&v28 = v28;
    v29 = (v27 / *&v28);
    [v22 scale];
    v31 = v30;
    *&v30 = v30;
    v53 = *&v30;
    [context localAspectRatio];
    v33 = v31 * v32 / v29;
    v34 = fminf(v53, v33);
    v35 = v34 < 1.0;
    v36 = 0.0;
    v37 = 0.0;
    if (v34 < 1.0)
    {
      v52 = v33;
      [v22 centerX];
      v37 = v38;
      [v22 centerY];
      v36 = v39;
      [v22 setCenterX:0.0];
      [v22 setCenterY:0.0];
      v33 = v52;
    }

    v40.i64[0] = __PAIR64__(LODWORD(v33), LODWORD(v53));
    v40.i64[1] = __PAIR64__(LODWORD(v33), LODWORD(v53));
    v56[0] = vmulq_f32(v60, v40);
    v56[1] = vmulq_f32(v61, v40);
    v41 = vmulq_f32(v58, v40);
    v42 = vmulq_f32(v59, v40);
    v55[0] = v41;
    v55[1] = v42;
    v54 = 0;
    v42.f32[0] = width / height;
    [v22 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v54 state:*v42.i64];
    *&v43 = SetLightingColors2D(v57, v56, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v43}];
    [context setVertex2DPointer:v56];
    [context setTextureCoordinatesPointer:v55 onTextureUnit:0];
    [context setColorsPointer:v57];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v22 unsetOnContext:context onTextureUnit:0 state:&v54];
    if (v35)
    {
      [v22 setCenterX:v37];
      [v22 setCenterY:v36];
    }
  }

  [v22 releaseByUser];
  if ((v23 & 1) == 0)
  {
    v44 = *(&self->super._isInInteractiveMode + 1);
    v45 = [v44 objectForKey:v20];
    if (!v45)
    {
      v45 = objc_alloc_init(MRCroppingSprite);
      [v44 setObject:v45 forKey:v20];
    }

    v46 = x + width * 0.5;
    v47 = y + height * 0.5;
    v48 = v46;
    [context localAspectRatio];
    v50 = (v49 * v47);
    [context localAspectRatio];
    [(MRCroppingSprite *)v45 fakeRenderInContext:context atPosition:v48 andSize:v50 zRotation:width, (v51 * height), 0.0];
    [*(&self->mSprites + 1) removeObject:v20];
  }
}

- (BOOL)_checkPanoramaAbsoluteSizeForImage:(id)image inRect:(CGRect *)rect
{
  if ([(NSString *)self->super.mEffectID isEqualToString:@"Origami2-L1"]|| [(NSString *)self->super.mEffectID isEqualToString:@"Origami2-P1"]|| (v7 = [(NSString *)self->super.mEffectID isEqualToString:@"Origami2-Intro-L1"]))
  {
    [image width];
    v9 = v8;
    [image height];
    v11 = v9 / v10;
    v12 = self->super.mPixelSize.width * 0.5;
    if (v11 <= 1.0)
    {
      v19 = v12 * rect->size.width / v11;
      [image height];
      v21 = v20 * 1.20000005;
      height = rect->size.height;
      if (v21 < self->super.mPixelSize.width * 0.5 * height)
      {
        v21 = self->super.mPixelSize.width * 0.5 * height;
      }

      if (v19 > v21)
      {
        v23 = v21 / v19;
        if (v23 < 0.5)
        {
          v23 = 0.5;
        }

        width = rect->size.width;
        rect->origin.x = rect->origin.x + width * 0.5 * (1.0 - v23);
        rect->size.width = v23 * width;
        goto LABEL_17;
      }
    }

    else
    {
      v13 = v11 * (v12 * rect->size.height);
      [image width];
      v15 = v14 * 1.20000005;
      v16 = rect->size.width;
      if (v15 < self->super.mPixelSize.width * 0.5 * v16)
      {
        v15 = self->super.mPixelSize.width * 0.5 * v16;
      }

      if (v13 > v15)
      {
        v17 = v15 / v13;
        if (v17 < 0.5)
        {
          v17 = 0.5;
        }

        v18 = rect->size.height;
        rect->origin.y = rect->origin.y + v18 * 0.5 * (1.0 - v17);
        rect->size.height = v17 * v18;
LABEL_17:
        LOBYTE(v7) = 1;
        return v7;
      }
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)renderBreakAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rectCopy = rect;
  v18 = [objc_msgSend(attributes objectForKey:{@"slideIndex", "intValue"}];
  v19 = ImageKey(v18);
  v20 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  if (v20)
  {
    v21 = v20;
    v22 = (*(&self->mThirdsSwingBottom + 1) + 16 * v18);
    v23 = *v22;
    if ((*v22 & 0x8000000000000000) == 0)
    {
      v24 = v22[1];
      v25 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", v19), "objectForKey:", @"panEndDirection", "intValue"}];
      v26 = [(MREffectOrigami *)self _checkPanoramaAbsoluteSizeForImage:v21 inRect:&rectCopy];
      v28 = rectCopy.origin.x;
      v27 = rectCopy.origin.y;
      if (!v23)
      {
        if (!v26)
        {
          [(MREffectOrigami *)self renderStillAtTime:context andProgress:arguments inContext:attributes withArguments:time inRect:progress withAttributes:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
LABEL_82:
          [v21 releaseByUser];
          return;
        }

        [v21 scale];
        v32 = v31;
        [v21 centerX];
        v34 = v33;
        [v21 centerY];
        v36 = v35;
        [v21 setScale:1.0];
        [v21 setCenterX:0.0];
        [v21 setCenterY:0.0];
        [(MREffectOrigami *)self renderStillAtTime:context andProgress:arguments inContext:attributes withArguments:time inRect:progress withAttributes:rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height];
        [v21 setScale:v32];
        [v21 setCenterX:v34];
        v37 = v21;
        v38 = v36;
LABEL_81:
        [v37 setCenterY:v38];
        goto LABEL_82;
      }

      v29 = self->super.mMainDuration + -2.0;
      if (time <= 1.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = (time + -1.0) / v29;
      }

      v185 = rectCopy.size.height;
      v187 = rectCopy.size.width;
      v39 = 1.0;
      if (v30 <= 1.0)
      {
        v40 = v30;
      }

      else
      {
        v40 = 1.0;
      }

      v41 = *(&self->mBreakInfos + 1);
      v42 = 0.6 / v29;
      if (v41)
      {
        v39 = (v29 + v41 * -0.6) / (v29 * (v41 + 1));
      }

      v43 = (v42 + v39) * v24;
      v44 = v23;
      v45 = v43 + (v42 + v39) * v23;
      v46 = vcvtmd_u64_f64(v40 / (v42 + v39));
      v47 = v46 >= v24;
      v48 = v46 - v24;
      if (v47)
      {
        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v50 = fmod(v40, v42 + v39);
      if (self->super._panoramaPanningOffsets)
      {
        if (v50 <= v39)
        {
          v51 = 0.0;
        }

        else
        {
          v51 = v50 - v39;
        }

        [(MREffect *)self valueForPanoramaPanningForElementID:v19 value:(v51 + v49 * v42) / (v42 * v44) minValue:0.0 maxValue:1.0];
        *v53.i64 = v52 * v44;
        v49 = vcvtmd_u64_f64(*v53.i64);
        *v54.i64 = *v53.i64 - trunc(*v53.i64);
        v55.f64[0] = NAN;
        v55.f64[1] = NAN;
        v50 = v39 + *vbslq_s8(vnegq_f64(v55), v54, v53).i64 * v42;
        if (v23 <= v49)
        {
          v50 = 0.0;
        }

        v40 = (v43 + v45) * 0.5;
      }

      v56 = v28;
      v57 = v27;
      v180 = v57;
      v181 = v56;
      v58 = v187;
      v188 = v58;
      v59 = v185;
      v186 = v59;
      if (v49 <= v23)
      {
        v60 = v50;
      }

      else
      {
        v60 = 0.0;
      }

      if (v49 >= v23)
      {
        v49 = v23;
      }

      [v21 scale];
      v184 = v61;
      [v21 centerX];
      v183 = v62;
      [v21 centerY];
      v182 = v63;
      [v21 setScale:1.0];
      [v21 setCenterX:0.0];
      [v21 setCenterY:0.0];
      [v21 width];
      v65 = v64;
      [v21 height];
      v67 = v60 > v39;
      if (v40 < v43)
      {
        v67 = 0;
      }

      v68 = v40 < v45 && v67;
      if (v65 <= v66)
      {
        [v21 height];
        v112 = v188;
        v114 = v113 * v188;
        [v21 width];
        v116 = v114 / v115;
        v117 = (v114 / v115 - v186) / (v114 / v115 * v44);
        v118 = 1.0 / (v114 / v115);
        if (v68)
        {
          v119 = (v60 - v39) / v42;
          v120 = v186;
          [*(&self->mPixelUnit + 1) evaluatAtTime:v119];
          v122 = v121;
          v123 = 0.5;
          v124 = v116 * 0.5 * v117;
          *&v121 = v121 * 1.57079633;
          v125 = __sincosf_stret(*&v121);
          v126 = v124 * v125.__cosval;
          v101 = v180;
          v127 = v126 + v180;
          v128 = v126 + v127;
          v129 = (v117 + v117) * v49 + -1.0;
          v130 = v117 + v129;
          v131 = v117 + v117 + v129;
          v132 = 2.0;
          v133 = (v180 + v186) - v126;
          v134 = v133 - v126;
          v135 = (v118 * v186 + v117 * (v23 - v49)) * 2.0 + -1.0;
          v136 = v135 - v117;
          v137 = v135 - v117 - v117;
          if (v25 == -1)
          {
            v132 = -2.0;
            v129 = (v118 * v120 + v117 * (v23 - v49)) * 2.0 + -1.0;
            v123 = -0.5;
            v138 = v180 + v186;
          }

          else
          {
            v138 = v180;
          }

          if (v25 == -1)
          {
            v127 = v133;
            v139 = v180;
          }

          else
          {
            v134 = v128;
            v139 = v180 + v186;
          }

          if (v25 == -1)
          {
            v140 = v136;
          }

          else
          {
            v140 = v130;
          }

          if (v25 == -1)
          {
            v141 = v137;
          }

          else
          {
            v141 = v131;
          }

          v216 = v138;
          v142 = v120 + (v124 + v124) * v122;
          v217 = 0;
          v84 = v181;
          v218 = v181 + v188;
          v219 = v138;
          v220 = 0;
          v143 = v127;
          v221 = v181;
          v222 = v143;
          v144 = -(v124 * v125.__sinval);
          v223 = v144;
          v224 = v181 + v188;
          v225 = v143;
          v226 = v144;
          v145 = v134;
          v227 = v181;
          v228 = v145;
          v229 = 0;
          v230 = v181 + v188;
          v231 = v145;
          v232 = 0;
          v233 = v181;
          v234 = v139;
          v235 = 0;
          v236 = v181 + v188;
          v237 = v139;
          v238 = 0;
          v146 = v129 + v142 * v132 * v118;
          v199 = -1.0;
          v147 = v129;
          v200 = v147;
          v201 = 1.0;
          v202 = v147;
          v203 = -1.0;
          v148 = v140;
          v204 = v148;
          v205 = 1.0;
          v206 = v148;
          v207 = -1.0;
          v149 = v141;
          v208 = v149;
          v209 = 1.0;
          v210 = v149;
          v211 = -1.0;
          v150 = v146;
          v212 = v150;
          v213 = 1.0;
          v214 = v150;
          v215 = v181;
          v189 = 0;
          v151 = v118 * v112;
          *&v151 = v118 * v112;
          [v21 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v189 state:v151];
          SetLightingColors(&v191, &v215, *[context foreColor]);
          [context setShader:@"ColoredTexture"];
          [context setVertex3DPointer:&v215];
          [context setTextureCoordinatesPointer:&v199 onTextureUnit:0];
          [context setColorsPointer:&v191];
          [context drawTriangleStripFromOffset:0 count:4];
          [context unsetColorsPointer];
          [context unsetTextureCoordinatesPointerOnTextureUnit:0];
          [context unsetVertexPointer];
          [context unsetShader];
          SetLightingColors(&v191, &v221, *[context foreColor]);
          [context setShader:@"ColoredTexture"];
          [context setVertex3DPointer:&v221];
          [context setTextureCoordinatesPointer:&v203 onTextureUnit:0];
          [context setColorsPointer:&v191];
          [context drawTriangleStripFromOffset:0 count:4];
          [context unsetColorsPointer];
          [context unsetTextureCoordinatesPointerOnTextureUnit:0];
          [context unsetVertexPointer];
          [context unsetShader];
          SetLightingColors(&v191, &v227, *[context foreColor]);
          [context setShader:@"ColoredTexture"];
          [context setVertex3DPointer:&v227];
          [context setTextureCoordinatesPointer:&v207 onTextureUnit:0];
          [context setColorsPointer:&v191];
          [context drawTriangleStripFromOffset:0 count:4];
          [context unsetColorsPointer];
          [context unsetTextureCoordinatesPointerOnTextureUnit:0];
          [context unsetVertexPointer];
          [context unsetShader];
          [v21 unsetOnContext:context onTextureUnit:0 state:&v189];
          v152 = *(&self->mTotalNumberOfFolds + 1);
          v153 = v146 / ((v186 + v186) * v118) - v123;
          [v21 aspectRatio];
          v102 = v186;
          [v152 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v153 * v154 / (v188 / v186)), v19}];
          v111 = v188;
          goto LABEL_78;
        }

        v101 = v180;
        v84 = v181;
        v199 = v181;
        v200 = v180;
        v155 = v186;
        v201 = v181;
        v202 = v180 + v186;
        v156 = v188;
        v203 = v181 + v188;
        v204 = v180;
        v205 = v181 + v188;
        v206 = v180 + v186;
        v166 = v23 - v49;
        if (v25 != -1)
        {
          v166 = v49;
        }

        v167 = (v117 + v117) * v166 + -1.0;
        v168 = v167 + (v186 + v186) * v118;
        v191 = -1.0;
        v169 = v167;
        v192 = v169;
        v193 = -1.0;
        v170 = v168;
        v194 = v170;
        v195 = 1.0;
        v196 = v169;
        v197 = 1.0;
        v198 = v170;
        v189 = 0;
        v171 = v118 * v112;
        *&v171 = v118 * v112;
        [v21 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v189 state:v171];
        *&v172 = SetLightingColors2D(&v215, &v199, *[context foreColor]);
        [context setShader:{@"ColoredTexture", v172}];
        [context setVertex2DPointer:&v199];
        [context setTextureCoordinatesPointer:&v191 onTextureUnit:0];
        [context setColorsPointer:&v215];
        [context drawTriangleStripFromOffset:0 count:4];
        [context unsetColorsPointer];
        [context unsetTextureCoordinatesPointerOnTextureUnit:0];
        [context unsetVertexPointer];
        [context unsetShader];
        [v21 unsetOnContext:context onTextureUnit:0 state:&v189];
        v164 = *(&self->mTotalNumberOfFolds + 1);
        [v21 aspectRatio];
        v165 = (v167 + v168) / (v168 - v167) * v173 / (v188 / v186);
      }

      else
      {
        [v21 width];
        v69 = v186;
        v71 = v70 * v186;
        [v21 height];
        v73 = v71 / v72;
        v74 = (v71 / v72 - v188) / (v71 / v72 * v44);
        v75 = 1.0 / (v71 / v72);
        if (v68)
        {
          v76 = (v60 - v39) / v42;
          v77 = 1.0 / v73;
          v78 = v188;
          [*(&self->mPixelUnit + 1) evaluatAtTime:v76];
          v80 = v79;
          v81 = v73 * 0.5 * v74;
          *&v79 = v79 * 1.57079633;
          v82 = __sincosf_stret(*&v79);
          v83 = v81 * v82.__cosval;
          v84 = v181;
          v85 = v83 + v181;
          v86 = v83 + v85;
          v87 = (v74 + v74) * v49 + -1.0;
          v88 = v74 + v87;
          v89 = v74 + v74 + v87;
          v90 = 2.0;
          v91 = (v181 + v188) - v83;
          v92 = v91 - v83;
          v93 = (1.0 / v73 * v188 + v74 * (v23 - v49)) * 2.0 + -1.0;
          v94 = v93 - v74;
          v95 = v93 - v74 - v74;
          if (v25 == -1)
          {
            v90 = -2.0;
            v87 = (v77 * v78 + v74 * (v23 - v49)) * 2.0 + -1.0;
          }

          v96 = 0.5;
          if (v25 == -1)
          {
            v96 = -0.5;
          }

          v179 = v96;
          if (v25 == -1)
          {
            v88 = v94;
            v97 = v95;
          }

          else
          {
            v97 = v89;
          }

          if (v25 == -1)
          {
            v98 = v181;
          }

          else
          {
            v98 = v181 + v188;
          }

          if (v25 == -1)
          {
            v85 = v91;
          }

          else
          {
            v92 = v86;
          }

          if (v25 == -1)
          {
            v99 = v181 + v188;
          }

          else
          {
            v99 = v181;
          }

          v100 = v87 + (v78 + (v81 + v81) * v80) * v90 * v77;
          v101 = v180;
          v215 = v99;
          v216 = v180;
          v217 = 0;
          v102 = v186;
          v218 = v99;
          v219 = v180 + v186;
          v220 = 0;
          v103 = v85;
          v221 = v103;
          v222 = v180;
          v104 = -(v81 * v82.__sinval);
          v223 = v104;
          v224 = v103;
          v225 = v180 + v186;
          v226 = v104;
          v105 = v92;
          v227 = v105;
          v228 = v180;
          v229 = 0;
          v230 = v105;
          v231 = v180 + v186;
          v232 = 0;
          v233 = v98;
          v234 = v180;
          v235 = 0;
          v236 = v98;
          v237 = v180 + v186;
          v238 = 0;
          v106 = v87;
          v199 = v106;
          v200 = -1.0;
          v201 = v106;
          v202 = 1.0;
          v107 = v88;
          v203 = v107;
          v204 = -1.0;
          v205 = v107;
          v206 = 1.0;
          v108 = v97;
          v207 = v108;
          v208 = -1.0;
          v209 = v108;
          v210 = 1.0;
          v109 = v100;
          v211 = v109;
          v212 = -1.0;
          v213 = v109;
          v214 = 1.0;
          v189 = 0;
          v110 = v73 / v69;
          *&v110 = v73 / v69;
          [v21 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v189 state:v110];
          SetLightingColors(&v191, &v215, *[context foreColor]);
          [context setShader:@"ColoredTexture"];
          [context setVertex3DPointer:&v215];
          [context setTextureCoordinatesPointer:&v199 onTextureUnit:0];
          [context setColorsPointer:&v191];
          [context drawTriangleStripFromOffset:0 count:4];
          [context unsetColorsPointer];
          [context unsetTextureCoordinatesPointerOnTextureUnit:0];
          [context unsetVertexPointer];
          [context unsetShader];
          SetLightingColors(&v191, &v221, *[context foreColor]);
          [context setShader:@"ColoredTexture"];
          [context setVertex3DPointer:&v221];
          [context setTextureCoordinatesPointer:&v203 onTextureUnit:0];
          [context setColorsPointer:&v191];
          [context drawTriangleStripFromOffset:0 count:4];
          [context unsetColorsPointer];
          [context unsetTextureCoordinatesPointerOnTextureUnit:0];
          [context unsetVertexPointer];
          [context unsetShader];
          SetLightingColors(&v191, &v227, *[context foreColor]);
          [context setShader:@"ColoredTexture"];
          [context setVertex3DPointer:&v227];
          [context setTextureCoordinatesPointer:&v207 onTextureUnit:0];
          [context setColorsPointer:&v191];
          [context drawTriangleStripFromOffset:0 count:4];
          [context unsetColorsPointer];
          [context unsetTextureCoordinatesPointerOnTextureUnit:0];
          [context unsetVertexPointer];
          [context unsetShader];
          [v21 unsetOnContext:context onTextureUnit:0 state:&v189];
          [*(&self->mTotalNumberOfFolds + 1) setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v100 / ((v188 + v188) * (1.0 / v73)) - v179), v19}];
          v111 = v188;
          goto LABEL_78;
        }

        v101 = v180;
        v84 = v181;
        v199 = v181;
        v200 = v180;
        v155 = v186;
        v201 = v181;
        v202 = v180 + v186;
        v156 = v188;
        v203 = v181 + v188;
        v204 = v180;
        v205 = v181 + v188;
        v206 = v180 + v186;
        v157 = v23 - v49;
        if (v25 != -1)
        {
          v157 = v49;
        }

        v158 = v74 * v157 * 2.0 + -1.0;
        v159 = v158 + (v188 + v188) * v75;
        v160 = v158;
        v191 = v160;
        v192 = -1.0;
        v193 = v160;
        v194 = 1.0;
        v161 = v159;
        v195 = v161;
        v196 = -1.0;
        v197 = v161;
        v198 = 1.0;
        v189 = 0;
        v162 = v73 / v69;
        *&v162 = v73 / v69;
        [v21 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v189 state:v162];
        *&v163 = SetLightingColors2D(&v215, &v199, *[context foreColor]);
        [context setShader:{@"ColoredTexture", v163}];
        [context setVertex2DPointer:&v199];
        [context setTextureCoordinatesPointer:&v191 onTextureUnit:0];
        [context setColorsPointer:&v215];
        [context drawTriangleStripFromOffset:0 count:4];
        [context unsetColorsPointer];
        [context unsetTextureCoordinatesPointerOnTextureUnit:0];
        [context unsetVertexPointer];
        [context unsetShader];
        [v21 unsetOnContext:context onTextureUnit:0 state:&v189];
        v164 = *(&self->mTotalNumberOfFolds + 1);
        v165 = (v158 + v159) / (v159 - v158);
      }

      [v164 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", v165), v19}];
      v102 = v155;
      v111 = v156;
LABEL_78:
      v174 = *(&self->super._isInInteractiveMode + 1);
      v175 = [v174 objectForKey:v19];
      if (!v175)
      {
        v175 = objc_alloc_init(MRCroppingSprite);
        [v174 setObject:v175 forKey:v19];
      }

      [context localAspectRatio];
      v177 = ((v101 + (v102 * 0.5)) * v176);
      [context localAspectRatio];
      [(MRCroppingSprite *)v175 fakeRenderInContext:context atPosition:(v84 + (v111 * 0.5)) andSize:v177 zRotation:v111, (v178 * v102), 0.0];
      [*(&self->mSprites + 1) removeObject:v19];
      [v21 setScale:v184];
      [v21 setCenterX:v183];
      v37 = v21;
      v38 = v182;
      goto LABEL_81;
    }

    [(MREffectOrigami *)self renderStillAtTime:context andProgress:arguments inContext:attributes withArguments:time inRect:progress withAttributes:x, y, width, height];

    [v21 releaseByUser];
  }
}

- (void)renderFlipLeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14 = [attributes objectForKey:@"recto"];
  v15 = [attributes objectForKey:@"verso"];
  [objc_msgSend(attributes objectForKey:{@"ratio", "floatValue"}];
  v143 = v16;
  v17 = [v14 objectForKey:@"ratio01"];
  v18 = [v14 objectForKey:@"ratio23"];
  v19 = [v15 objectForKey:@"ratio01"];
  v20 = [v15 objectForKey:@"ratio23"];
  v21 = 0.0;
  v22 = 0.0;
  if (v17)
  {
    [v17 floatValue];
    *&v22 = 1.0 - *&v22;
  }

  v117 = *&v22;
  if (v18)
  {
    [v18 floatValue];
    v21 = 1.0 - *&v22;
  }

  v23 = 0.0;
  v24 = 0.0;
  if (v19)
  {
    [v19 floatValue];
    v24 = 1.0 - *&v22;
  }

  if (v20)
  {
    [v20 floatValue];
    v23 = 1.0 - *&v22;
  }

  v118 = v23;
  *&v22 = progress;
  [*(&self->mBigSwing + 1) valueAtTime:v22];
  v26 = v25;
  v27 = [attributes objectForKey:@"invert"];
  v28 = 3.1416 - v26;
  v131 = v27;
  if (v27)
  {
    v28 = v26;
  }

  v29 = __sincosf_stret(v28);
  v30 = [objc_msgSend(v14 objectForKey:{@"slide0", "intValue"}];
  v31 = v30;
  if ([v14 objectForKey:@"slide1"])
  {
    v31 = [objc_msgSend(v14 objectForKey:{@"slide1", "intValue"}];
  }

  v32 = v30;
  if ([v14 objectForKey:@"slide2"])
  {
    v32 = [objc_msgSend(v14 objectForKey:{@"slide2", "intValue"}];
  }

  v33 = width;
  v144 = v33;
  v135 = v32;
  if ([v14 objectForKey:@"slide3"])
  {
    v32 = [objc_msgSend(v14 objectForKey:{@"slide3", "intValue"}];
  }

  v34 = height;
  v35 = [objc_msgSend(v15 objectForKey:{@"slide0", "intValue"}];
  v36 = [v15 objectForKey:@"slide1"];
  v37 = v35;
  if (v36)
  {
    v37 = [objc_msgSend(v15 objectForKey:{@"slide1", "intValue"}];
  }

  v119 = v37;
  v38 = v24 * v34;
  v39 = v34;
  v40 = v35;
  if ([v15 objectForKey:@"slide2"])
  {
    v40 = [objc_msgSend(v15 objectForKey:{@"slide2", "intValue"}];
  }

  v120 = v32;
  v121 = v31;
  v127 = v34;
  v41 = v21 * v34;
  v42 = v38;
  v43 = y + v39;
  v44 = y;
  v45 = v40;
  if ([v15 objectForKey:@"slide3"])
  {
    v45 = [objc_msgSend(v15 objectForKey:{@"slide3", "intValue"}];
  }

  v124 = v41;
  v125 = v143 * v29.__sinval;
  v122 = y + v42;
  v123 = x + v144;
  v46 = x + ((v143 - (v143 * v29.__cosval)) * v144);
  v47 = x;
  v48 = x + (v143 * v144);
  v49 = y;
  v50 = v43;
  v141 = v50;
  [*(&self->mBigSwing + 1) timeFirstAtRestValue];
  timeCopy3 = time;
  if (v51 > progress || v131)
  {
    v116 = v45;
    v53 = y + (v117 * v127);
    v54 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v55 = v54;
    v145 = 0;
    *&v56 = v144;
    if (v135 != v30)
    {
      *&v56 = v48 - v47;
    }

    *&v56 = *&v56 / (v141 - v53);
    if (v135 == v30)
    {
      v57 = (v143 * 2.0) + -1.0;
    }

    else
    {
      v57 = 1.0;
    }

    [v54 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v56];
    v152 = x;
    v153 = y + (v117 * v127);
    v154 = x;
    v155 = v141;
    v156 = x + (v143 * v144);
    v157 = v153;
    v158 = v156;
    v159 = v141;
    *v146 = xmmword_163DE0;
    *&v146[16] = v57;
    *&v146[20] = -1082130432;
    *&v146[24] = v57;
    v147 = 1.0;
    *&v58 = SetLightingColors2D(v170, &v152, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v58}];
    [context setVertex2DPointer:&v152];
    [context setTextureCoordinatesPointer:v146 onTextureUnit:0];
    [context setColorsPointer:v170];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    if (v53 <= v49)
    {
      v44 = y;
    }

    else
    {
      v59 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v60 = v59;
      if (v59 == v55)
      {
        [v59 releaseByUser];
        v61 = v32;
      }

      else
      {
        [v55 unsetOnContext:context onTextureUnit:0 state:&v145];
        [v55 releaseByUser];
        v61 = v32;
        *&v62 = v144;
        if (v32 != v121)
        {
          *&v62 = v48 - v47;
        }

        *&v62 = *&v62 / (v53 - v49);
        [v60 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v62];
        v55 = v60;
      }

      v44 = y;
      *v166 = x;
      *&v166[4] = y;
      *&v166[8] = x;
      *&v167 = y + (v117 * v127);
      *(&v167 + 1) = x + (v143 * v144);
      *&v168 = y;
      *(&v168 + 1) = *(&v167 + 1);
      v169 = *&v167;
      v63 = 1.0;
      if (v61 == v121)
      {
        v63 = (v143 * 2.0) + -1.0;
      }

      *v164 = xmmword_163DE0;
      *&v164[16] = v63;
      *&v164[20] = -1082130432;
      *&v164[24] = v63;
      v165 = 1065353216;
      *&v64 = SetLightingColors2D(v170, v166, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v64}];
      [context setVertex2DPointer:v166];
      [context setTextureCoordinatesPointer:v164 onTextureUnit:0];
      [context setColorsPointer:v170];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
    }

    [v55 unsetOnContext:context onTextureUnit:0 state:&v145];
    [v55 releaseByUser];
    v45 = v116;
  }

  v142 = y;
  v126 = v44 + v124;
  v139 = x + ((v143 - ((1.0 - v143) * v29.__cosval)) * v144);
  v65 = v123;
  v136 = v65;
  v66 = v122;
  v67 = v46;
  v133 = v67;
  [*(&self->mBigSwing + 1) timeFirstAtRestValue];
  if (v68 > progress || !v131)
  {
    v132 = v47;
    v69 = v44 + (v118 * v127);
    v70 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v71 = v70;
    v145 = 0;
    *&v72 = v144;
    if (v40 != v35)
    {
      *&v72 = v136 - v48;
    }

    *&v72 = *&v72 / (v141 - v69);
    if (v40 == v35)
    {
      v73 = (v143 * -2.0) + 1.0;
    }

    else
    {
      v73 = -1.0;
    }

    [v70 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v72];
    v152 = v48;
    v153 = v69;
    v154 = v48;
    v155 = v141;
    v156 = v136;
    v157 = v69;
    v158 = v136;
    v159 = v141;
    *v146 = v73;
    *&v146[4] = -1082130432;
    *&v146[8] = v73;
    *&v146[12] = xmmword_163DF0;
    v147 = 1.0;
    *&v74 = SetLightingColors2D(v170, &v152, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v74}];
    [context setVertex2DPointer:&v152];
    [context setTextureCoordinatesPointer:v146 onTextureUnit:0];
    [context setColorsPointer:v170];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    if (v69 <= v142)
    {
      timeCopy3 = time;
    }

    else
    {
      v75 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v76 = v75;
      timeCopy3 = time;
      if (v75 == v71)
      {
        [v75 releaseByUser];
        v79 = y;
        v77 = v119;
      }

      else
      {
        [v71 unsetOnContext:context onTextureUnit:0 state:&v145];
        [v71 releaseByUser];
        v77 = v119;
        *&v78 = v144;
        if (v45 != v119)
        {
          *&v78 = v136 - v48;
        }

        v79 = y;
        *&v78 = *&v78 / (v69 - v142);
        [v76 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v78];
        v71 = v76;
      }

      *v166 = v48;
      *&v166[4] = v79;
      *&v166[8] = v48;
      v167 = __PAIR64__(LODWORD(v136), LODWORD(v69));
      v168 = __PAIR64__(LODWORD(v136), LODWORD(v79));
      v169 = v69;
      v80 = -1.0;
      if (v45 == v77)
      {
        v80 = (v143 * -2.0) + 1.0;
      }

      *v164 = v80;
      *&v164[4] = -1082130432;
      *&v164[8] = v80;
      *&v164[12] = xmmword_163DF0;
      v165 = 1065353216;
      *&v81 = SetLightingColors2D(v170, v166, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v81}];
      [context setVertex2DPointer:v166];
      [context setTextureCoordinatesPointer:v164 onTextureUnit:0];
      [context setColorsPointer:v170];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
    }

    [v71 unsetOnContext:context onTextureUnit:0 state:&v145];
    [v71 releaseByUser];
    v47 = v132;
  }

  v82 = v126;
  v83 = v139;
  v128 = v82;
  v130 = v83;
  v140 = v48;
  [context cull:1];
  v145 = 0;
  argumentsCopy2 = arguments;
  v85 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v87 = v85;
  v88 = v48 - v47;
  if (v40 == v35)
  {
    v89 = v144;
  }

  else
  {
    v89 = v48 - v47;
  }

  *&v86 = v89 / (v141 - v66);
  v90 = timeCopy3;
  if (v40 == v35)
  {
    v91 = (v143 * 2.0) + -1.0;
  }

  else
  {
    v91 = 1.0;
  }

  [v85 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v86];
  v152 = v133;
  v153 = v122;
  v154 = v125 * v144;
  v155 = v48;
  v156 = v122;
  v157 = 0.0;
  v158 = v133;
  v159 = v141;
  v160 = v125 * v144;
  v161 = v48;
  v162 = v141;
  v163 = 0.0;
  __asm { FMOV            V14.2S, #-1.0 }

  *v166 = _D14;
  *&v166[8] = v91;
  v167 = *&_D14;
  LODWORD(v168) = 1065353216;
  *(&v168 + 1) = v91;
  v169 = 1.0;
  SetLightingColors(v170, &v152, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v152];
  [context setTextureCoordinatesPointer:v166 onTextureUnit:0];
  [context setColorsPointer:v170];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  if (v66 <= v142)
  {
    v99 = v90;
  }

  else
  {
    v97 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v98 = v97;
    v99 = v90;
    if (v97 == v87)
    {
      [v97 releaseByUser];
      v101 = y;
    }

    else
    {
      [v87 unsetOnContext:context onTextureUnit:0 state:&v145];
      [v87 releaseByUser];
      *&v100 = v144;
      if (v45 != v119)
      {
        *&v100 = v88;
      }

      v101 = y;
      *&v100 = *&v100 / (v66 - v142);
      [v98 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v100];
      v87 = v98;
    }

    *v146 = v133;
    *&v146[4] = v101;
    *&v146[8] = v125 * v144;
    *&v146[12] = v48;
    *&v146[16] = v101;
    *&v146[20] = 0;
    *&v146[24] = v133;
    v147 = v122;
    v148 = v125 * v144;
    v149 = v48;
    v150 = v122;
    v151 = 0.0;
    v102 = 1.0;
    if (v45 == v119)
    {
      v102 = (v143 * 2.0) + -1.0;
    }

    *v164 = _D14;
    *&v164[8] = v102;
    *&v164[12] = _D14;
    *&v164[20] = 1065353216;
    *&v164[24] = v102;
    v165 = 1065353216;
    SetLightingColors(v170, v146, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:v146];
    [context setTextureCoordinatesPointer:v164 onTextureUnit:0];
    [context setColorsPointer:v170];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    argumentsCopy2 = arguments;
  }

  [v87 unsetOnContext:context onTextureUnit:0 state:&v145];
  [v87 releaseByUser];
  v103 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v104 = v103;
  *&v105 = v144;
  if (v135 != v30)
  {
    *&v105 = v136 - v48;
  }

  *&v105 = *&v105 / (v141 - v128);
  v106 = v99;
  if (v135 == v30)
  {
    v107 = (v143 * -2.0) + 1.0;
  }

  else
  {
    v107 = -1.0;
  }

  [v103 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v105];
  v152 = v140;
  v153 = v128;
  v154 = 0.0;
  v155 = v130;
  v156 = v128;
  v157 = ((1.0 - v143) * v29.__sinval) * v144;
  v158 = v140;
  v159 = v141;
  v160 = 0.0;
  v161 = v130;
  v162 = v141;
  v163 = v157;
  *v166 = v107;
  *&v166[4] = -_D14;
  LODWORD(v167) = -1082130432;
  *(&v167 + 1) = v107;
  __asm { FMOV            V13.2S, #1.0 }

  v168 = _D13;
  v169 = 1.0;
  SetLightingColors(v170, &v152, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v152];
  [context setTextureCoordinatesPointer:v166 onTextureUnit:0];
  [context setColorsPointer:v170];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  if (v128 > v142)
  {
    v109 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v110 = v109;
    if (v109 == v104)
    {
      [v109 releaseByUser];
      v111 = v121;
      v114 = v140;
      v113 = y;
    }

    else
    {
      [v104 unsetOnContext:context onTextureUnit:0 state:&v145];
      [v104 releaseByUser];
      v111 = v121;
      *&v112 = v144;
      if (v120 != v121)
      {
        *&v112 = v136 - v140;
      }

      v113 = y;
      *&v112 = *&v112 / (v128 - v142);
      [v110 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v145 state:v112];
      v104 = v110;
      v114 = v140;
    }

    *v146 = v114;
    *&v146[4] = LODWORD(v113);
    *&v146[12] = v130;
    *&v146[16] = v113;
    *&v146[20] = ((1.0 - v143) * v29.__sinval) * v144;
    *&v146[24] = v114;
    v147 = v128;
    v148 = 0.0;
    v149 = v130;
    v150 = v128;
    v151 = *&v146[20];
    v115 = -1.0;
    if (v120 == v111)
    {
      v115 = (v143 * -2.0) + 1.0;
    }

    *v164 = v115;
    *&v164[4] = -_D14;
    *&v164[12] = -1082130432;
    *&v164[16] = v115;
    *&v164[20] = _D13;
    v165 = 1065353216;
    SetLightingColors(v170, v146, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:v146];
    [context setTextureCoordinatesPointer:v164 onTextureUnit:0];
    [context setColorsPointer:v170];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
  }

  [v104 unsetOnContext:context onTextureUnit:0 state:&v145];
  [v104 releaseByUser];
  [context cull:0];
}

- (void)renderFlipDownAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = [attributes objectForKey:@"recto"];
  v16 = [attributes objectForKey:@"verso"];
  [objc_msgSend(attributes objectForKey:{@"ratio", "floatValue"}];
  v171 = v17;
  v18 = [v15 objectForKey:@"ratio01"];
  v19 = [v15 objectForKey:@"ratio23"];
  v20 = [v16 objectForKey:@"ratio01"];
  v21 = [v16 objectForKey:@"ratio23"];
  v23 = 1.0;
  v24 = 1.0;
  if (v18)
  {
    [v18 floatValue];
    v24 = *&v22;
  }

  timeCopy = time;
  if (v19)
  {
    [v19 floatValue];
    v23 = *&v22;
  }

  v25 = 1.0;
  v26 = 1.0;
  if (v20)
  {
    [v20 floatValue];
    v26 = *&v22;
  }

  if (v21)
  {
    [v21 floatValue];
    v25 = *&v22;
  }

  *&v22 = progress;
  [*(&self->mBreakCurve + 1) valueAtTime:v22];
  v28 = __sincosf_stret(3.1416 - v27);
  v29 = width;
  v30 = height;
  v177 = v30;
  v31 = v171 * v30;
  v32 = [objc_msgSend(v15 objectForKey:{@"slide0", "intValue"}];
  v33 = v32;
  if ([v15 objectForKey:@"slide1"])
  {
    v33 = [objc_msgSend(v15 objectForKey:{@"slide1", "intValue"}];
  }

  v34 = v32;
  if ([v15 objectForKey:@"slide2"])
  {
    v34 = [objc_msgSend(v15 objectForKey:{@"slide2", "intValue"}];
  }

  v161 = v32;
  v35 = v34;
  if ([v15 objectForKey:@"slide3"])
  {
    v35 = [objc_msgSend(v15 objectForKey:{@"slide3", "intValue"}];
  }

  v160 = v34;
  v162 = 1.0 - v171;
  v36 = v24 * v29;
  v37 = [objc_msgSend(v16 objectForKey:{@"slide0", "intValue"}];
  v38 = v37;
  if ([v16 objectForKey:@"slide1"])
  {
    v38 = [objc_msgSend(v16 objectForKey:{@"slide1", "intValue"}];
  }

  v39 = v26 * v29;
  v40.f64[0] = x;
  v41.f64[0] = x;
  v41.f64[1] = y;
  v164 = vcvtq_f64_f32(__PAIR64__(LODWORD(v177), v23 * v29));
  v166 = v41;
  v42 = v29;
  v40.f64[1] = y + v31;
  v175 = v40;
  v43 = v37;
  if ([v16 objectForKey:@"slide2"])
  {
    v43 = [objc_msgSend(v16 objectForKey:{@"slide2", "intValue"}];
  }

  v44 = v39;
  v165 = vaddq_f64(v166, v164);
  v45 = x + (v25 * v29);
  v46 = x + v42;
  v176 = vcvt_f32_f64(v175);
  v47 = [v16 objectForKey:@"slide3"];
  v48 = v43;
  if (v47)
  {
    v48 = [objc_msgSend(v16 objectForKey:{@"slide3", "intValue"}];
  }

  v153 = v48;
  v49 = v171;
  HIDWORD(v50) = HIDWORD(y);
  v51 = x + v44;
  v52 = y;
  v168 = v52;
  *&v50 = x + v36;
  v167 = v50;
  *&v174 = vcvt_f32_f64(v165);
  v53 = v45;
  v54 = v46;
  [*(&self->mBreakCurve + 1) timeFirstAtRestValue];
  __asm
  {
    FMOV            V9.2S, #-1.0
    FMOV            V0.2S, #1.0
  }

  v170 = _D0;
  v158 = vrev64_s32(v176);
  v155 = v38;
  argumentsCopy2 = arguments;
  if (!(_NF ^ _VF | _ZF))
  {
    v62 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v186 = __PAIR64__(LODWORD(v168), v176.u32[0]);
    *v187 = v176;
    *&v187[8] = LODWORD(v167);
    v188 = v168;
    v189 = *&v167;
    v190 = v176.i32[1];
    v63 = 1.0;
    if (v160 == v161)
    {
      v63 = (v171 * 2.0) + -1.0;
    }

    v179 = _D9;
    v180 = -1.0;
    *v181 = v63;
    *&v181[4] = -v170;
    *&v181[12] = 1065353216;
    *&v181[16] = v63;
    v64 = [v15 objectForKey:@"slide0RefRect"];
    if (v64)
    {
      v200 = 0u;
      v201 = 0u;
      sscanf([v64 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v200, &v200.f64[1], &v201, &v201.f64[1]);
      v201.f64[1] = v201.f64[1] * 0.5;
      v200.f64[1] = v200.f64[1] + v201.f64[1];
      v65 = [objc_msgSend(v15 objectForKey:{@"slide0RefRectStretchFlags", "intValue"}];
      v66 = *(&self->mBackColorForImage[1] + 1);
      [context localAspectRatio];
      StretchRectangle(v200.f64, v65, v66, v67);
      _D4 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vsub_f32(*&v174, v176)), v201));
      __asm
      {
        FMOV            V3.2D, #2.0
        FMOV            V2.2D, #-1.0
      }

      v71 = vcvt_f32_f64(vaddq_f64(vmlaq_f64(vcvtq_f64_f32(_D4), _Q3, vdivq_f64(vsubq_f64(vcvtq_f64_f32(v176), v200), v201)), _Q2));
      *_Q3.f64 = v71.f32[0] + (_D4.f32[0] * v180);
      v72 = v71;
      v73 = v71;
      v74 = vmla_f32(v71, v179, _D4);
      v179 = v74;
      v180 = *_Q3.f64;
      v75 = vmla_f32(v72, vrev64_s32(*v181), _D4);
      *v181 = vrev64_s32(v75);
      *&v181[8] = vrev64_s32(vmla_f32(v73, vrev64_s32(*&v181[8]), _D4));
      LODWORD(_Q2.f64[0]) = *&v181[16];
      __asm { FMLA            S6, S2, V4.S[1] }

      *&v181[16] = _S6;
    }

    else
    {
      MyGLRectFromString([v15 objectForKey:@"slide0Rect"], &v179);
      v75 = vrev64_s32(*v181);
      v74 = v179;
    }

    v178 = 0;
    v77 = vsub_f32(v75, v74);
    v78 = vsub_f32(__PAIR64__(LODWORD(v167), v158.u32[0]), __PAIR64__(v158.u32[1], LODWORD(v168)));
    v151 = v78.f32[0];
    v79 = vmul_f32(v77, v78);
    [v62 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:{COERCE_DOUBLE(vdiv_f32(vdup_lane_s32(v79, 1), v79))}];
    *&v80 = SetLightingColors2D(&v200, &v186, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v80}];
    [context setVertex2DPointer:&v186];
    [context setTextureCoordinatesPointer:&v179 onTextureUnit:0];
    [context setColorsPointer:&v200];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v81 = v167;
    if (*&v167 < v54)
    {
      v82 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      v83 = v82;
      if (v82 == v62)
      {
        [v82 releaseByUser];
        v85 = v35;
        v87 = LODWORD(v167);
      }

      else
      {
        [v62 unsetOnContext:context onTextureUnit:0 state:&v178];
        [v62 releaseByUser];
        HIDWORD(v84) = HIDWORD(v167);
        v85 = v35;
        v86 = v177;
        if (v35 != v33)
        {
          v86 = v151;
        }

        *&v84 = (v54 - *&v167) / v86;
        [v83 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:v84];
        v87 = LODWORD(v167);
        v62 = v83;
      }

      v198 = __PAIR64__(LODWORD(v168), v87);
      v199[0] = __PAIR64__(v176.u32[1], v87);
      v199[1] = __PAIR64__(LODWORD(v168), LODWORD(v54));
      v199[2] = __PAIR64__(v176.u32[1], LODWORD(v54));
      v88 = 1.0;
      if (v85 == v33)
      {
        v88 = (v171 * 2.0) + -1.0;
      }

      v195 = _D9;
      LODWORD(v196) = -1082130432;
      *(&v196 + 1) = v88;
      *&v197 = -v170;
      DWORD2(v197) = 1065353216;
      *(&v197 + 3) = v88;
      *&v89 = SetLightingColors2D(&v200, &v198, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v89}];
      [context setVertex2DPointer:&v198];
      [context setTextureCoordinatesPointer:&v195 onTextureUnit:0];
      [context setColorsPointer:&v200];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      argumentsCopy2 = arguments;
    }

    [v62 unsetOnContext:context onTextureUnit:0 state:{&v178, v81}];
    [v62 releaseByUser];
    v49 = v171;
  }

  v152 = v162 * v28.__sinval;
  v90 = v49;
  v91 = v51;
  *&v92 = y + ((v171 - (v171 * v28.__cosval)) * v177);
  v157 = v92;
  v93 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v95 = v93;
  v178 = 0;
  v96 = *(&v174 + 1) - v176.f32[1];
  if (v43 == v37)
  {
    v96 = v177;
  }

  v163 = (v90 * -2.0) + 1.0;
  if (v43 == v37)
  {
    v97 = (v90 * -2.0) + 1.0;
  }

  else
  {
    v97 = -1.0;
  }

  *&v94 = (v53 - v176.f32[0]) / v96;
  [v93 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:v94];
  v186 = v176;
  *v187 = v53;
  *&v187[4] = v158;
  v188 = *(&v174 + 1);
  v189 = v53;
  v190 = HIDWORD(v174);
  LODWORD(v179) = -1082130432;
  *(&v179 + 1) = v97;
  v180 = 1.0;
  *v181 = v97;
  *&v181[4] = xmmword_163E00;
  *&v98 = SetLightingColors2D(&v200, &v186, *[context foreColor]);
  [context setShader:{@"ColoredTexture", v98}];
  [context setVertex2DPointer:&v186];
  [context setTextureCoordinatesPointer:&v179 onTextureUnit:0];
  [context setColorsPointer:&v200];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  selfCopy = self;
  if (v53 < v54)
  {
    v99 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v100 = v99;
    if (v99 == v95)
    {
      [v99 releaseByUser];
      v102 = v155;
    }

    else
    {
      [v95 unsetOnContext:context onTextureUnit:0 state:&v178];
      [v95 releaseByUser];
      v102 = v155;
      v103 = v177;
      if (v153 != v155)
      {
        v103 = *(&v174 + 1) - v176.f32[1];
      }

      *&v101 = (v54 - v53) / v103;
      [v100 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:v101];
      v95 = v100;
    }

    v198 = __PAIR64__(v176.u32[1], LODWORD(v53));
    v199[0] = __PAIR64__(v176.u32[1], LODWORD(v54));
    v199[1] = __PAIR64__(HIDWORD(v174), LODWORD(v53));
    v199[2] = __PAIR64__(HIDWORD(v174), LODWORD(v54));
    v104 = -1.0;
    if (v153 == v102)
    {
      v104 = (v90 * -2.0) + 1.0;
    }

    v195.i32[0] = -1082130432;
    v195.f32[1] = v104;
    LODWORD(v196) = 1065353216;
    *(&v196 + 1) = v104;
    v197 = xmmword_163E00;
    *&v105 = SetLightingColors2D(&v200, &v198, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v105}];
    [context setVertex2DPointer:&v198];
    [context setTextureCoordinatesPointer:&v195 onTextureUnit:0];
    [context setColorsPointer:&v200];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    self = selfCopy;
  }

  v106 = y + ((v171 - (v162 * v28.__cosval)) * v177);
  v159 = v106;
  [v95 unsetOnContext:context onTextureUnit:0 state:&v178];
  [v95 releaseByUser];
  [context cull:2];
  v178 = 0;
  v107 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v108 = v107;
  HIDWORD(v109) = v176.i32[1];
  v110 = v177;
  if (v43 == v37)
  {
    v111 = (v171 * 2.0) + -1.0;
  }

  else
  {
    v110 = v176.f32[1] - v168;
    v111 = 1.0;
  }

  *&v109 = (v91 - v176.f32[0]) / v110;
  [v107 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:v109];
  v186 = __PAIR64__(v157, v176.u32[0]);
  *v187 = (v171 * v28.__sinval) * v177;
  *&v187[4] = v176;
  v188 = 0.0;
  v189 = v51;
  v190 = v157;
  v191 = *v187;
  v192 = v51;
  v193 = v176.f32[1];
  v194 = 0.0;
  v198 = _D9;
  LODWORD(v199[0]) = -1082130432;
  *(v199 + 1) = v111;
  *&v199[1] = -v170;
  LODWORD(v199[2]) = 1065353216;
  *(&v199[2] + 1) = v111;
  SetLightingColors(&v200, &v186, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v186];
  [context setTextureCoordinatesPointer:&v198 onTextureUnit:0];
  [context setColorsPointer:&v200];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  if (v91 >= v54)
  {
    v114 = timeCopy;
    v115 = v160;
    v120 = v161;
  }

  else
  {
    v112 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v113 = v112;
    v114 = timeCopy;
    v115 = v160;
    if (v112 == v108)
    {
      [v112 releaseByUser];
      v116 = v54;
      v118 = v153;
    }

    else
    {
      [v108 unsetOnContext:context onTextureUnit:0 state:&v178];
      [v108 releaseByUser];
      v116 = v54;
      HIDWORD(v117) = HIDWORD(v167);
      v118 = v153;
      v119 = v177;
      if (v153 != v155)
      {
        v119 = v176.f32[1] - v168;
      }

      *&v117 = ((v54 - *&v167) * 1.3333) / v119;
      [v113 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:v117];
      v108 = v113;
    }

    *&v179 = v51;
    HIDWORD(v179) = v157;
    v180 = (v171 * v28.__sinval) * v177;
    *v181 = v51;
    *&v181[4] = v176.u32[1];
    *&v181[12] = v116;
    *&v181[16] = v157;
    v182 = v180;
    v183 = v116;
    v184 = v176.f32[1];
    v185 = 0.0;
    v121 = 1.0;
    if (v118 == v155)
    {
      v121 = (v171 * 2.0) + -1.0;
    }

    v195 = _D9;
    LODWORD(v196) = -1082130432;
    *(&v196 + 1) = v121;
    *&v197 = -v170;
    DWORD2(v197) = 1065353216;
    *(&v197 + 3) = v121;
    SetLightingColors(&v200, &v179, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v179];
    [context setTextureCoordinatesPointer:&v195 onTextureUnit:0];
    [context setColorsPointer:&v200];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v120 = v161;
    self = selfCopy;
  }

  [v108 unsetOnContext:context onTextureUnit:0 state:&v178];
  [v108 releaseByUser];
  v122 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v186 = v176;
  *v187 = 0;
  *&v187[4] = v176.i32[0];
  *&v187[8] = v159;
  v188 = v152 * v177;
  v189 = *&v174;
  v190 = v176.i32[1];
  v191 = 0.0;
  v192 = *&v174;
  v193 = v159;
  v194 = v152 * v177;
  v123 = -1.0;
  if (v115 == v120)
  {
    v123 = v163;
  }

  LODWORD(v198) = -1082130432;
  *(&v198 + 1) = v123;
  v124 = -*&_D9;
  *v199 = v124;
  LODWORD(v199[1]) = 1065353216;
  *(&v199[1] + 1) = v123;
  if (v115 == v120)
  {
    v125 = @"slide0RefRect";
  }

  else
  {
    v125 = @"slide2RefRect";
  }

  *&v199[2] = v170;
  v126 = [v15 objectForKey:v125];
  if (v126)
  {
    v200 = 0u;
    v201 = 0u;
    sscanf([v126 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v200, &v200.f64[1], &v201, &v201.f64[1]);
    if (v115 == v120)
    {
      v201.f64[1] = v201.f64[1] * 0.5;
      v200.f64[1] = (v200.f64[1] + v201.f64[1]) * 0.5;
      v127 = @"slide0RefRectStretchFlags";
    }

    else
    {
      v127 = @"slide2RefRectStretchFlags";
    }

    v132 = [objc_msgSend(v15 objectForKey:{v127), "intValue"}];
    v133 = *(&self->mBackColorForImage[1] + 1);
    [context localAspectRatio];
    StretchRectangle(v200.f64, v132, v133, v134);
    v130 = vsub_f32(*&v174, v176).u32[0];
    v131 = *(&v174 + 1) - v176.f32[1];
    _D6 = vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(*(&v174 + 1) - v176.f32[1], v130)), v201));
    __asm
    {
      FMOV            V4.2D, #2.0
      FMOV            V1.2D, #-1.0
    }

    v138 = vcvt_f32_f64(vaddq_f64(vmlaq_f64(vcvtq_f64_f32(_D6), _Q4, vdivq_f64(vsubq_f64(vcvtq_f64_f32(v176), v200), v201)), _Q1));
    v139 = v138.f32[0] + (_D6.f32[0] * *v199);
    *&_Q1.f64[0] = v138;
    v140 = v138;
    v129 = vmla_f32(v138, v198, _D6);
    v198 = v129;
    *v199 = v139;
    v128 = vmla_f32(*&_Q1.f64[0], vrev64_s32(*(v199 + 4)), _D6);
    *(v199 + 4) = vrev64_s32(v128);
    *(&v199[1] + 4) = vrev64_s32(vmla_f32(v140, vrev64_s32(*(&v199[1] + 4)), _D6));
    _S3 = HIDWORD(v199[2]);
    __asm { FMLA            S7, S3, V6.S[1] }

    HIDWORD(v199[2]) = _S7;
  }

  else
  {
    MyGLRectFromString([v15 objectForKey:@"slide0Rect"], &v198);
    v128 = vrev64_s32(*(v199 + 4));
    v129 = v198;
    v130 = vsub_f32(*&v174, v176).u32[0];
    v131 = *(&v174 + 1) - v176.f32[1];
  }

  v143 = vmul_f32(__PAIR64__(v130, LODWORD(v131)), vsub_f32(v128, v129));
  [v122 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:{COERCE_DOUBLE(vdiv_f32(vdup_lane_s32(v143, 1), v143))}];
  SetLightingColors(&v200, &v186, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v186];
  [context setTextureCoordinatesPointer:&v198 onTextureUnit:0];
  [context setColorsPointer:&v200];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  v144 = v174;
  if (*&v174 < v54)
  {
    slideProvidersForElementIDs = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer slideProvidersForElementIDs];
    v146 = slideProvidersForElementIDs;
    if (slideProvidersForElementIDs == v122)
    {
      [slideProvidersForElementIDs releaseByUser];
      v149 = LODWORD(v174);
    }

    else
    {
      [v122 unsetOnContext:context onTextureUnit:0 state:&v178];
      [v122 releaseByUser];
      HIDWORD(v147) = HIDWORD(v174);
      v148 = v177;
      if (v35 != v33)
      {
        v148 = *(&v174 + 1) - v176.f32[1];
      }

      *&v147 = (v54 - *&v174) / v148;
      [v146 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v178 state:v147];
      v149 = LODWORD(v174);
      v122 = v146;
    }

    v179 = __PAIR64__(v176.u32[1], v149);
    v180 = 0.0;
    *v181 = v149;
    *&v181[4] = v159;
    *&v181[8] = v152 * v177;
    *&v181[12] = v54;
    *&v181[16] = v176.i32[1];
    v182 = 0.0;
    v183 = v54;
    v184 = v159;
    v185 = v152 * v177;
    v150 = -1.0;
    if (v35 == v33)
    {
      v150 = v163;
    }

    v195.i32[0] = -1082130432;
    v195.f32[1] = v150;
    v196 = v124;
    LODWORD(v197) = 1065353216;
    *(&v197 + 1) = v150;
    *(&v197 + 1) = v170;
    SetLightingColors(&v200, &v179, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v179];
    [context setTextureCoordinatesPointer:&v195 onTextureUnit:0];
    [context setColorsPointer:&v200];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
  }

  [v122 unsetOnContext:context onTextureUnit:0 state:{&v178, v144}];
  [v122 releaseByUser];
  [context cull:0];
}

- (void)renderFoldLeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  v47 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = [attributes objectForKey:@"recto"];
  v18 = [attributes objectForKey:@"verso"];
  *&v19 = progress;
  [*(&self->mBigSwing + 1) valueAtTime:v19];
  v23 = __sincosf_stret(3.1416 - v20);
  cosval = v23.__cosval;
  LODWORD(v21) = *&v23;
  v24 = x;
  v25 = y;
  v26 = width;
  *&width = height;
  v27 = [objc_msgSend(v17 objectForKey:{@"slide0", "intValue"}];
  v28 = [objc_msgSend(v17 objectForKey:{@"slide4", "intValue"}];
  v45 = [objc_msgSend(v17 objectForKey:{@"slide5", "intValue"}];
  v46 = v24 + ((v26 * 0.33333) * (1.0 - cosval));
  v29 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v50 = 0;
  v30 = v47 * 0.666666687 / height;
  v31 = v30;
  *&v30 = v31;
  [v29 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v50 state:v30];
  v72[0] = v24 + (v26 * 0.33333);
  v72[1] = v25;
  v32 = *&width;
  v33 = v25 + *&width;
  v72[2] = v72[0];
  v72[3] = v33;
  v72[4] = v24 + v26;
  v72[5] = v25;
  v72[6] = v24 + v26;
  v72[7] = v33;
  v71[0] = xmmword_163FC4;
  v71[1] = unk_163FD4;
  *&v34 = SetLightingColors2D(v70, v72, *[context foreColor]);
  [context setShader:{@"ColoredTexture", v34}];
  [context setVertex2DPointer:v72];
  [context setTextureCoordinatesPointer:v71 onTextureUnit:0];
  [context setColorsPointer:v70];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v29 unsetOnContext:context onTextureUnit:0 state:&v50];
  [v29 releaseByUser];
  v35 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  *&v36 = v31;
  [v35 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v50 state:v36];
  [*(&self->mBigSwing + 1) timeFirstAtRestValue];
  if (v37 > progress)
  {
    v58 = v24;
    v59 = v25;
    v60 = v24;
    v61 = v33;
    v62 = v24 + (v26 * 0.33333);
    v63 = v25;
    v64 = v62;
    v65 = v33;
    v51 = xmmword_163F24;
    v52 = *algn_163F34;
    *&v38 = SetLightingColors2D(v70, &v58, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v38}];
    [context setVertex2DPointer:&v58];
    [context setTextureCoordinatesPointer:&v51 onTextureUnit:0];
    [context setColorsPointer:v70];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
  }

  [context cull:1];
  v58 = v24 + (v26 * 0.33333);
  v59 = v25;
  v60 = 0.0;
  v61 = v24 + ((v26 * 0.33333) * (1.0 - cosval));
  v62 = v25;
  v63 = (v26 * 0.33333) * v21;
  v64 = v58;
  v65 = v33;
  v66 = 0;
  v67 = v61;
  v68 = v33;
  v69 = v63;
  v57[0] = xmmword_163E84;
  v57[1] = *algn_163E94;
  SetLightingColors(v70, &v58, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v58];
  [context setTextureCoordinatesPointer:v57 onTextureUnit:0];
  [context setColorsPointer:v70];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v35 unsetOnContext:context onTextureUnit:0 state:&v50];
  [v35 releaseByUser];
  [context cull:0];
  v39 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  *&v40 = v31;
  [v39 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v50 state:v40];
  [*(&self->mBigSwing + 1) timeFirstAtRestValue];
  *&v51 = v24 + ((v26 * 0.33333) * (1.0 - cosval));
  *(&v51 + 1) = v25;
  *(&v51 + 2) = (v26 * 0.33333) * v21;
  *(&v51 + 3) = *&v51;
  *&v52 = v25 + (v32 * 0.5);
  *(&v52 + 1) = *(&v51 + 2);
  if (v41 <= progress)
  {
    *(&v52 + 2) = v24 + (v26 * 0.33333);
    *(&v52 + 3) = v25;
    v53 = 0.0;
    v54 = *(&v52 + 2);
    v55 = v25 + (v32 * 0.5);
    v56 = 0.0;
  }

  else
  {
    *(&v52 + 2) = v46 + (v26 * 0.33333);
    *(&v52 + 3) = v25;
    v53 = (v26 * 0.33333) * v21;
    v54 = *(&v52 + 2);
    v55 = v25 + (v32 * 0.5);
    v56 = v53;
  }

  SetLightingColors(v70, &v51, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v51];
  [context setTextureCoordinatesPointer:v71 onTextureUnit:0];
  [context setColorsPointer:v70];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v39 unsetOnContext:context onTextureUnit:0 state:&v50];
  [v39 releaseByUser];
  v42 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  *&v43 = v31;
  [v42 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v50 state:v43];
  [*(&self->mBigSwing + 1) timeFirstAtRestValue];
  *&v51 = v24 + ((v26 * 0.33333) * (1.0 - cosval));
  *(&v51 + 1) = v25 + (v32 * 0.5);
  *(&v51 + 2) = (v26 * 0.33333) * v21;
  *(&v51 + 3) = *&v51;
  *&v52 = v33;
  *(&v52 + 1) = *(&v51 + 2);
  if (v44 <= progress)
  {
    *(&v52 + 2) = v24 + (v26 * 0.33333);
    *(&v52 + 3) = v25 + (v32 * 0.5);
    v53 = 0.0;
    v54 = *(&v52 + 2);
    v55 = v33;
    v56 = 0.0;
  }

  else
  {
    *(&v52 + 2) = v46 + (v26 * 0.33333);
    *(&v52 + 3) = v25 + (v32 * 0.5);
    v53 = (v26 * 0.33333) * v21;
    v54 = *(&v52 + 2);
    v55 = v33;
    v56 = v53;
  }

  SetLightingColors(v70, &v51, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v51];
  [context setTextureCoordinatesPointer:v71 onTextureUnit:0];
  [context setColorsPointer:v70];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v42 unsetOnContext:context onTextureUnit:0 state:&v50];
  [v42 releaseByUser];
}

- (void)renderFoldDownAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  timeCopy = time;
  *&time = progress;
  [*(&self->mBreakCurve + 1) valueAtTime:time];
  v18 = __sincosf_stret(3.1416 - v17);
  v19 = x;
  v39 = v19;
  v20 = y;
  v21 = width;
  v37 = v21;
  *&y = height;
  v22 = [objc_msgSend(attributes objectForKey:{@"slide0Index", "intValue"}];
  v23 = [objc_msgSend(attributes objectForKey:{@"slide1Index", "intValue"}];
  v38 = height;
  v24 = v20 + ((*&y * 0.33333) * (1.0 - v18.__cosval));
  v25 = (*&y * 0.33333) * v18.__sinval;
  v26 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v44 = 0;
  v40 = height;
  v41 = width;
  v27 = width / (height * 0.666666687);
  *&v27 = v27;
  [v26 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v44 state:v27];
  [*(&self->mBreakCurve + 1) timeFirstAtRestValue];
  progressCopy = progress;
  if (v28 <= progress)
  {
    v29 = height;
    v30 = v39;
    v31 = v20 + (v38 * 0.33333);
    v32 = v39 + v37;
  }

  else
  {
    v29 = height;
    v30 = v39;
    v53 = v39;
    v54 = v20;
    v31 = v20 + (v38 * 0.33333);
    v55 = v39;
    v56 = v31;
    v32 = v39 + v37;
    v57 = v39 + v37;
    v58 = v20;
    v59 = v39 + v37;
    v60 = v31;
    v45 = xmmword_163EA4;
    v46 = unk_163EB4;
    *&v33 = SetLightingColors2D(v65, &v53, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v33}];
    [context setVertex2DPointer:&v53];
    [context setTextureCoordinatesPointer:&v45 onTextureUnit:0];
    [context setColorsPointer:v65];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
  }

  [context cull:2];
  v53 = v30;
  v54 = v31;
  v55 = 0.0;
  v56 = v30;
  v57 = v24;
  v58 = v25;
  v59 = v32;
  v60 = v31;
  v61 = 0;
  v62 = v32;
  v63 = v24;
  v64 = v25;
  v52[0] = xmmword_163EC4;
  v52[1] = unk_163ED4;
  SetLightingColors(v65, &v53, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v53];
  [context setTextureCoordinatesPointer:v52 onTextureUnit:0];
  [context setColorsPointer:v65];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v26 unsetOnContext:context onTextureUnit:0 state:&v44];
  [v26 releaseByUser];
  [context cull:0];
  v34 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v35 = v41 / (v40 * 0.333333343);
  *&v35 = v35;
  [v34 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v44 state:v35];
  v51[0] = xmmword_163FC4;
  v51[1] = unk_163FD4;
  [*(&self->mBreakCurve + 1) timeFirstAtRestValue];
  *&v45 = __PAIR64__(LODWORD(v24), LODWORD(v30));
  *(&v45 + 1) = __PAIR64__(LODWORD(v30), LODWORD(v25));
  if (v36 <= progressCopy)
  {
    *&v46 = LODWORD(v31);
    *(&v46 + 1) = __PAIR64__(LODWORD(v24), LODWORD(v32));
    v47 = v25;
    v48 = v32;
    v49 = v31;
    v50 = 0.0;
  }

  else
  {
    *&v46 = v24 + (v29 * 0.33333);
    *(&v46 + 4) = __PAIR64__(LODWORD(v32), LODWORD(v25));
    *(&v46 + 3) = v24;
    v47 = v25;
    v48 = v32;
    v49 = *&v46;
    v50 = v25;
  }

  SetLightingColors(v65, &v45, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:&v45];
  [context setTextureCoordinatesPointer:v51 onTextureUnit:0];
  [context setColorsPointer:v65];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v34 unsetOnContext:context onTextureUnit:0 state:&v44];
  [v34 releaseByUser];
}

- (void)render1To3DownAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  height = rect.size.height;
  v90 = [objc_msgSend(attributes objectForKey:{@"slide0Index", "intValue"}];
  v17 = v90;
  v91 = v90;
  if ([attributes objectForKey:@"slide1Index"])
  {
    v91 = [objc_msgSend(attributes objectForKey:{@"slide1Index", "intValue"}];
  }

  v18 = width;
  v19 = x;
  v20 = y;
  if ([attributes objectForKey:@"slide2Index"])
  {
    v17 = [objc_msgSend(attributes objectForKey:{@"slide2Index", "intValue"}];
  }

  progressCopy = progress;
  v89 = height * 0.33333;
  v22 = v18 / (height * 0.33333);
  v23 = [objc_msgSend(attributes objectForKey:{@"slide3Index", "intValue"}];
  v24 = [objc_msgSend(attributes objectForKey:{@"slide4Index", "intValue"}];
  v87 = [objc_msgSend(attributes objectForKey:{@"slide5Index", "intValue"}];
  v25 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v26 = v20 + (height * 0.66667);
  v129[0] = v19;
  v129[1] = v26;
  v129[2] = v19;
  v129[3] = v20 + height;
  v27 = v19 + v18;
  v129[4] = v19 + v18;
  v129[5] = v26;
  v129[6] = v19 + v18;
  v129[7] = v20 + height;
  v127 = xmmword_163FC4;
  v128 = unk_163FD4;
  v28 = [attributes objectForKey:@"slide3Rect"];
  if (v28)
  {
    v29 = MyGLRectFromString(v28, &v127);
    v29.f32[0] = *(&v127 + 3) - *(&v127 + 1);
    v30 = *&v128 - *&v127;
  }

  else
  {
    v29.i32[0] = 2.0;
    v30 = 2.0;
  }

  v93 = 0;
  v29.f32[0] = (v22 * v29.f32[0]) / v30;
  [v25 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:*v29.i64];
  *&v31 = SetLightingColors2D(v126, v129, *[context foreColor]);
  [context setShader:{@"ColoredTexture", v31}];
  [context setVertex2DPointer:v129];
  [context setTextureCoordinatesPointer:&v127 onTextureUnit:0];
  [context setColorsPointer:v126];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v25 unsetOnContext:context onTextureUnit:0 state:&v93];
  [v25 releaseByUser];
  if (progressCopy >= 0.33333)
  {
    v47 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v48 = v20 + (height * 0.33333);
    v118 = v19;
    v119 = v48;
    v120 = v19;
    v121 = v26;
    v122 = v19 + v18;
    v123 = v48;
    v124 = v19 + v18;
    v125 = v26;
    v116 = xmmword_163FC4;
    v117 = unk_163FD4;
    v49 = [attributes objectForKey:@"slide4Rect"];
    if (v49)
    {
      v50 = MyGLRectFromString(v49, &v116);
      v50.f32[0] = *(&v116 + 3) - *(&v116 + 1);
      v51 = *&v117 - *&v116;
    }

    else
    {
      v50.i32[0] = 2.0;
      v51 = 2.0;
    }

    v50.f32[0] = (v22 * v50.f32[0]) / v51;
    [v47 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:*v50.i64];
    *&v65 = SetLightingColors2D(v126, &v118, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v65}];
    [context setVertex2DPointer:&v118];
    [context setTextureCoordinatesPointer:&v116 onTextureUnit:0];
    [context setColorsPointer:v126];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v47 unsetOnContext:context onTextureUnit:0 state:&v93];
    [v47 releaseByUser];
    v66 = progressCopy * 1.5 + -0.5;
    v67 = v66;
    *&v66 = v67;
    [*(&self->mThirdsSwingTop + 1) valueAtTime:v66];
    v69 = __sincosf_stret(3.1416 - v68);
    v70 = 1.0;
    v98 = v19;
    v99 = v20 + (v89 * (1.0 - v69.__cosval));
    v100 = v89 * v69.__sinval;
    v101 = v19;
    v102 = v48;
    v103 = 0.0;
    v104 = v19 + v18;
    v105 = v99;
    v106 = v89 * v69.__sinval;
    v107 = v19 + v18;
    v108 = v48;
    v109 = 0.0;
    [*(&self->mThirdsSwingTop + 1) timeFirstAtRestValue];
    if (v71 > v67)
    {
      v72 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      *&v114 = __PAIR64__(LODWORD(v20), LODWORD(v19));
      *(&v114 + 1) = __PAIR64__(LODWORD(v48), LODWORD(v19));
      *&v115 = v19 + v18;
      *(&v115 + 1) = v20;
      *(&v115 + 2) = v19 + v18;
      *(&v115 + 3) = v48;
      __asm { FMOV            V8.2S, #-1.0 }

      *v110.i64 = _D8;
      v110.i32[2] = -1082130432;
      if (v91 == v90)
      {
        v70 = -0.33333;
      }

      v110.f32[3] = v70;
      __asm { FMOV            V9.2S, #1.0 }

      v111 = -_D9;
      v112 = 1065353216;
      v113 = v70;
      v75 = [attributes objectForKey:@"slide2Rect"];
      if (v75)
      {
        v76 = MyGLRectFromString(v75, &v110);
        v70 = v110.f32[3];
        v77 = v110.f32[1];
        v76.f32[0] = *&v111 - v110.f32[0];
      }

      else
      {
        v76.i32[0] = 2.0;
        v77 = -1.0;
      }

      v76.f32[0] = (v22 * (v70 - v77)) / v76.f32[0];
      [v72 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:*v76.i64];
      *&v78 = SetLightingColors2D(v126, &v114, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v78}];
      [context setVertex2DPointer:&v114];
      [context setTextureCoordinatesPointer:&v110 onTextureUnit:0];
      [context setColorsPointer:v126];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      v94.i32[0] = -1082130432;
      if (v91 == v90)
      {
        v79 = 0.33333;
      }

      else
      {
        v79 = -1.0;
      }

      v94.f32[1] = v79;
      *&v94.i64[1] = -_D8;
      v95 = 1.0;
      v96 = v79;
      v97 = _D9;
      v80 = [attributes objectForKey:@"slide0Rect"];
      if (v80)
      {
        *&v81 = MyGLRectFromString(v80, &v94).u64[0];
      }

      slideProvidersForElementIDs = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer slideProvidersForElementIDs];
      if (slideProvidersForElementIDs != v72)
      {
        [v72 unsetOnContext:context onTextureUnit:0 state:&v93];
        *&v83 = (v22 * (v94.f32[3] - v94.f32[1])) / (v95 - v94.f32[0]);
        [slideProvidersForElementIDs setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:v83];
      }

      [v72 releaseByUser];
      [context cull:1];
      SetLightingColors(v126, &v98, *[context foreColor]);
      [context setShader:@"ColoredTexture"];
      [context setVertex3DPointer:&v98];
      [context setTextureCoordinatesPointer:&v94 onTextureUnit:0];
      [context setColorsPointer:v126];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      [slideProvidersForElementIDs unsetOnContext:context onTextureUnit:0 state:&v93];
      [slideProvidersForElementIDs releaseByUser];
    }

    v84 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    HIDWORD(v85) = unk_163FD8;
    v114 = xmmword_163FC4;
    v115 = unk_163FD4;
    *&v85 = (v22 + v22) * 0.5;
    [v84 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:v85];
    [context cull:2];
    SetLightingColors(v126, &v98, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v98];
    [context setTextureCoordinatesPointer:&v114 onTextureUnit:0];
    [context setColorsPointer:v126];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v84 unsetOnContext:context onTextureUnit:0 state:&v93];
    [v84 releaseByUser];
    [context cull:0];
  }

  else
  {
    *&v32 = progressCopy * 3.0;
    [*(&self->mSideSwing + 1) valueAtTime:v32];
    v34 = __sincosf_stret(v33);
    v35 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v119 = v20;
    v120 = v19;
    v36 = v20 + (height * 0.33333);
    v121 = v36;
    v122 = v19 + v18;
    v123 = v20;
    v124 = v19 + v18;
    v125 = v36;
    __asm { FMOV            V0.2S, #-1.0 }

    v88 = *&_D0;
    *&v116 = _D0;
    DWORD2(v116) = -1082130432;
    if (v91 == v90)
    {
      v42 = -0.33333;
    }

    else
    {
      v42 = 1.0;
    }

    *(&v116 + 3) = v42;
    __asm { FMOV            V0.2S, #1.0 }

    *&v117 = -_D0;
    DWORD2(v117) = 1065353216;
    *(&v117 + 3) = v42;
    v118 = v19;
    v44 = [attributes objectForKey:{@"slide2Rect", *&_D0}];
    if (v44)
    {
      v45 = MyGLRectFromString(v44, &v116);
      v42 = *(&v116 + 3);
      v46 = *(&v116 + 1);
      v45.f32[0] = *&v117 - *&v116;
    }

    else
    {
      v45.i32[0] = 2.0;
      v46 = -1.0;
    }

    v45.f32[0] = (v22 * (v42 - v46)) / v45.f32[0];
    [v35 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:*v45.i64];
    *&v52 = SetLightingColors2D(v126, &v118, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v52}];
    [context setVertex2DPointer:&v118];
    [context setTextureCoordinatesPointer:&v116 onTextureUnit:0];
    [context setColorsPointer:v126];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v53 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    *&v114 = __PAIR64__(LODWORD(v36), LODWORD(v19));
    *(&v114 + 1) = __PAIR64__(LODWORD(v26), LODWORD(v19));
    *&v115 = __PAIR64__(LODWORD(v36), LODWORD(v27));
    *(&v115 + 1) = __PAIR64__(LODWORD(v26), LODWORD(v27));
    v110.i32[0] = -1082130432;
    v54 = -1.0;
    if (v91 == v90)
    {
      v54 = -0.33333;
    }

    *(v110.i64 + 4) = LODWORD(v54) | 0xBF80000000000000;
    v55 = 1.0;
    if (v91 == v90)
    {
      v55 = 0.33333;
    }

    v110.f32[3] = v55;
    LODWORD(v111) = 1065353216;
    *(&v111 + 1) = v54;
    v112 = 1065353216;
    v113 = v55;
    v56 = [attributes objectForKey:@"slide1Rect"];
    if (v56)
    {
      *&v57 = MyGLRectFromString(v56, &v110).u64[0];
    }

    if (v53 != v35)
    {
      [v35 unsetOnContext:context onTextureUnit:0 state:{&v93, v57}];
      *&v58 = (v22 * (v110.f32[3] - v110.f32[1])) / (*&v111 - v110.f32[0]);
      [v53 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:v58];
    }

    [v35 releaseByUser];
    *&v59 = SetLightingColors2D(v126, &v114, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v59}];
    [context setVertex2DPointer:&v114];
    [context setTextureCoordinatesPointer:&v110 onTextureUnit:0];
    [context setColorsPointer:v126];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v60 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v98 = v19;
    v99 = v26;
    v100 = 0.0;
    v101 = v19;
    v102 = v20 + (v89 * (v34.__cosval + 2.0));
    v103 = v89 * v34.__sinval;
    v104 = v27;
    v105 = v26;
    v106 = 0.0;
    v107 = v27;
    v108 = v102;
    v109 = v89 * v34.__sinval;
    v94.i32[0] = -1082130432;
    v61 = -1.0;
    if (v91 == v90)
    {
      v61 = 0.33333;
    }

    v94.f32[1] = v61;
    *&v94.i64[1] = -v88;
    v95 = 1.0;
    v96 = v61;
    v97 = v86;
    v62 = [attributes objectForKey:@"slide0Rect"];
    if (v62)
    {
      *&v63 = MyGLRectFromString(v62, &v94).u64[0];
    }

    if (v60 != v53)
    {
      [v53 unsetOnContext:context onTextureUnit:0 state:{&v93, v63}];
      *&v64 = (v22 * (v94.f32[3] - v94.f32[1])) / (v95 - v94.f32[0]);
      [v60 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v93 state:v64];
    }

    [v53 releaseByUser];
    SetLightingColors(v126, &v98, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v98];
    [context setTextureCoordinatesPointer:&v94 onTextureUnit:0];
    [context setColorsPointer:v126];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v60 unsetOnContext:context onTextureUnit:0 state:&v93];
    [v60 releaseByUser];
  }
}

- (void)render1To3LeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  progressCopy = progress;
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  v74 = width * 0.33333;
  v18 = (width * 0.33333) / height;
  v73 = [objc_msgSend(attributes objectForKey:{@"slide0Index", "intValue"}];
  v69 = [objc_msgSend(attributes objectForKey:{@"slide1Index", "intValue"}];
  v72 = [objc_msgSend(attributes objectForKey:{@"slide2Index", "intValue"}];
  v19 = [objc_msgSend(attributes objectForKey:{@"slide3Index", "intValue"}];
  v20 = [objc_msgSend(attributes objectForKey:{@"slide4Index", "intValue"}];
  v70 = [objc_msgSend(attributes objectForKey:{@"slide5Index", "intValue"}];
  timeCopy = time;
  v21 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v108[0] = x;
  v108[1] = y;
  v22 = y + height;
  v108[2] = x;
  v108[3] = y + height;
  v109 = x + (width * 0.33333);
  v110 = y;
  v111 = v109;
  v112 = y + height;
  v106 = xmmword_163FC4;
  *v107 = unk_163FD4;
  v23 = [attributes objectForKey:@"slide3Rect"];
  if (v23)
  {
    v24 = MyGLRectFromString(v23, &v106);
    v24.f32[0] = *(&v106 + 3) - *(&v106 + 1);
    v25 = v107[0] - *&v106;
  }

  else
  {
    v24.i32[0] = 2.0;
    v25 = 2.0;
  }

  v76 = 0;
  v24.f32[0] = (v18 * v24.f32[0]) / v25;
  [v21 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:*v24.i64];
  *&v26 = SetLightingColors2D(v105, v108, *[context foreColor]);
  [context setShader:{@"ColoredTexture", v26}];
  [context setVertex2DPointer:v108];
  [context setTextureCoordinatesPointer:&v106 onTextureUnit:0];
  [context setColorsPointer:v105];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [v21 unsetOnContext:context onTextureUnit:0 state:&v76];
  [v21 releaseByUser];
  if (progressCopy >= 0.33333)
  {
    argumentsCopy = arguments;
    v35 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v97 = x + (width * 0.33333);
    v98 = y;
    v99 = v97;
    v100 = y + height;
    v101 = x + (width * 0.66667);
    v102 = y;
    v103 = v101;
    v104 = y + height;
    v95 = xmmword_163FC4;
    v96 = unk_163FD4;
    v36 = [attributes objectForKey:@"slide4Rect"];
    v37.i32[0] = 2.0;
    v38 = 2.0;
    if (v36)
    {
      v37 = MyGLRectFromString(v36, &v95);
      v37.f32[0] = *(&v95 + 3) - *(&v95 + 1);
      v38 = *&v96 - *&v95;
    }

    v37.f32[0] = (v18 * v37.f32[0]) / v38;
    [v35 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:*v37.i64];
    *&v39 = SetLightingColors2D(v105, &v97, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v39}];
    [context setVertex2DPointer:&v97];
    [context setTextureCoordinatesPointer:&v95 onTextureUnit:0];
    [context setColorsPointer:v105];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v35 unsetOnContext:context onTextureUnit:0 state:&v76];
    [v35 releaseByUser];
    v40 = progressCopy * 1.5 + -0.5;
    v41 = v40;
    *&v40 = v41;
    [*(&self->mThirdsSwingTop + 1) valueAtTime:v40];
    v43 = __sincosf_stret(3.1416 - v42);
    v79 = x + (width * 0.66667);
    v80 = y;
    v81 = 0.0;
    v82 = x + (v74 * (v43.__cosval + 2.0));
    v83 = y;
    v84 = v74 * v43.__sinval;
    v85 = v79;
    v86 = v22;
    v87 = 0.0;
    v88 = v82;
    v89 = v22;
    v90 = v74 * v43.__sinval;
    [*(&self->mThirdsSwingTop + 1) timeFirstAtRestValue];
    if (v44 > v41)
    {
      v45 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      *&v93 = x + (width * 0.66667);
      *(&v93 + 1) = y;
      *(&v93 + 2) = *&v93;
      *(&v93 + 3) = v22;
      *&v94 = x + width;
      *(&v94 + 1) = y;
      *(&v94 + 2) = x + width;
      *(&v94 + 3) = v22;
      v91 = xmmword_163FC4;
      v92 = unk_163FD4;
      v46 = [attributes objectForKey:@"slide2Rect"];
      if (v46)
      {
        v47 = MyGLRectFromString(v46, &v91);
        v47.f32[0] = *(&v91 + 3) - *(&v91 + 1);
        v48 = *&v92 - *&v91;
      }

      else
      {
        v47.i32[0] = 2.0;
        v48 = 2.0;
      }

      v47.f32[0] = (v18 * v47.f32[0]) / v48;
      [v45 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:*v47.i64];
      *&v59 = SetLightingColors2D(v105, &v93, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v59}];
      [context setVertex2DPointer:&v93];
      [context setTextureCoordinatesPointer:&v91 onTextureUnit:0];
      [context setColorsPointer:v105];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      v77 = xmmword_163EE4;
      v78 = unk_163EF4;
      v60 = [attributes objectForKey:@"slide0Rect"];
      if (v60)
      {
        *&v61 = MyGLRectFromString(v60, &v77).u64[0];
      }

      slideProvidersForElementIDs = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer slideProvidersForElementIDs];
      if (slideProvidersForElementIDs != v45)
      {
        [v45 unsetOnContext:context onTextureUnit:0 state:&v76];
        *&v63 = (v18 * (*(&v78 + 1) - *(&v77 + 1))) / (*(&v77 + 2) - *&v77);
        [slideProvidersForElementIDs setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:v63];
      }

      [v45 releaseByUser];
      [context cull:2];
      SetLightingColors(v105, &v79, *[context foreColor]);
      [context setShader:@"ColoredTexture"];
      [context setVertex3DPointer:&v79];
      [context setTextureCoordinatesPointer:&v77 onTextureUnit:0];
      [context setColorsPointer:v105];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      [slideProvidersForElementIDs unsetOnContext:context onTextureUnit:0 state:&v76];
      [slideProvidersForElementIDs releaseByUser];
    }

    v64 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v93 = xmmword_163EE4;
    v94 = unk_163EF4;
    v65 = [attributes objectForKey:@"slide5Rect"];
    if (v65)
    {
      v66 = MyGLRectFromString(v65, &v93);
      v66.f32[0] = *(&v94 + 1) - *(&v93 + 1);
      v67 = *(&v93 + 2) - *&v93;
    }

    else
    {
      v66.i32[0] = 2.0;
      v67 = 2.0;
    }

    v66.f32[0] = (v18 * v66.f32[0]) / v67;
    [v64 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:*v66.i64];
    [context cull:1];
    SetLightingColors(v105, &v79, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v79];
    [context setTextureCoordinatesPointer:&v93 onTextureUnit:0];
    [context setColorsPointer:v105];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v64 unsetOnContext:context onTextureUnit:0 state:&v76];
    [v64 releaseByUser];
    [context cull:0];
  }

  else
  {
    *&v27 = progressCopy * 3.0;
    [*(&self->mSideSwing + 1) valueAtTime:v27];
    v29 = __sincosf_stret(v28);
    cosval = v29.__cosval;
    LODWORD(v71) = *&v29;
    v30 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v97 = x + (width * 0.66667);
    v98 = y;
    v99 = v97;
    v100 = y + height;
    v101 = x + width;
    v102 = y;
    v103 = x + width;
    v104 = y + height;
    v95 = xmmword_163FC4;
    v96 = unk_163FD4;
    v31 = [attributes objectForKey:@"slide2Rect"];
    if (v31)
    {
      v32 = MyGLRectFromString(v31, &v95);
      v32.f32[0] = *(&v95 + 3) - *(&v95 + 1);
      v33 = *&v96 - *&v95;
    }

    else
    {
      v32.i32[0] = 2.0;
      v33 = 2.0;
    }

    v32.f32[0] = (v18 * v32.f32[0]) / v33;
    [v30 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:*v32.i64];
    *&v49 = SetLightingColors2D(v105, &v97, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v49}];
    [context setVertex2DPointer:&v97];
    [context setTextureCoordinatesPointer:&v95 onTextureUnit:0];
    [context setColorsPointer:v105];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v50 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    *&v93 = x + (width * 0.33333);
    *(&v93 + 1) = y;
    *(&v93 + 2) = *&v93;
    *(&v93 + 3) = y + height;
    *&v94 = x + (width * 0.66667);
    *(&v94 + 1) = y;
    *(&v94 + 2) = *&v94;
    *(&v94 + 3) = y + height;
    v91 = xmmword_163FC4;
    v92 = unk_163FD4;
    v51 = [attributes objectForKey:@"slide1Rect"];
    if (v51)
    {
      *&v52 = MyGLRectFromString(v51, &v91).u64[0];
    }

    if (v50 != v30)
    {
      [v30 unsetOnContext:context onTextureUnit:0 state:{&v76, v52}];
      *&v53 = (v18 * (*(&v91 + 3) - *(&v91 + 1))) / (*&v92 - *&v91);
      [v50 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:v53];
    }

    [v30 releaseByUser];
    *&v54 = SetLightingColors2D(v105, &v93, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v54}];
    [context setVertex2DPointer:&v93];
    [context setTextureCoordinatesPointer:&v91 onTextureUnit:0];
    [context setColorsPointer:v105];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v55 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v79 = x + (v74 * (1.0 - cosval));
    v80 = y;
    v81 = v74 * v71;
    v82 = x + (width * 0.33333);
    v83 = y;
    v84 = 0.0;
    v85 = v79;
    v86 = y + height;
    v87 = v74 * v71;
    v88 = v82;
    v89 = y + height;
    v90 = 0.0;
    v77 = xmmword_163EE4;
    v78 = unk_163EF4;
    v56 = [attributes objectForKey:@"slide0Rect"];
    if (v56)
    {
      *&v57 = MyGLRectFromString(v56, &v77).u64[0];
    }

    if (v55 != v50)
    {
      [v50 unsetOnContext:context onTextureUnit:0 state:{&v76, v57}];
      *&v58 = (v18 * (*(&v78 + 1) - *(&v77 + 1))) / (*(&v77 + 2) - *&v77);
      [v55 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v76 state:v58];
    }

    [v50 releaseByUser];
    SetLightingColors(v105, &v79, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v79];
    [context setTextureCoordinatesPointer:&v77 onTextureUnit:0];
    [context setColorsPointer:v105];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v55 unsetOnContext:context onTextureUnit:0 state:&v76];
    [v55 releaseByUser];
  }
}

- (void)renderFold4LeftAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  progressCopy = progress;
  x = rect.origin.x;
  y = rect.origin.y;
  width = rect.size.width;
  height = rect.size.height;
  v82[0] = xmmword_163FC4;
  v82[1] = unk_163FD4;
  if (progressCopy >= 0.25)
  {
    slideProvidersForElementIDs = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer slideProvidersForElementIDs];
    LOBYTE(v58[0]) = 0;
    [slideProvidersForElementIDs setOnContext:context onTextureUnit:0 withReferenceAspectRatio:v58 state:?];
    v46 = x;
    v47 = y + (height * 0.33333);
    v48 = x;
    v49 = y + (height * 0.66667);
    v50 = x + width;
    v51 = v47;
    v52 = x + width;
    v53 = v49;
    v80 = xmmword_163FC4;
    v81 = unk_163FD4;
    *&v36 = SetLightingColors2D(v77, &v46, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v36}];
    [context setVertex2DPointer:&v46];
    [context setTextureCoordinatesPointer:&v80 onTextureUnit:0];
    [context setColorsPointer:v77];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [slideProvidersForElementIDs unsetOnContext:context onTextureUnit:0 state:v58];
    [slideProvidersForElementIDs releaseByUser];
    if (progressCopy >= 0.66667)
    {
      v32 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      *&v42 = (width * 3.0) / height;
      [v32 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:v58 state:v42];
      v61 = x;
      v62 = y;
      v63 = x;
      v64 = y + (height * 0.33333);
      v65 = x + width;
      v66 = y;
      v67 = x + width;
      v68 = v64;
      v78 = xmmword_163FC4;
      v79 = unk_163FD4;
      *&v43 = SetLightingColors2D(v77, &v61, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v43}];
      [context setVertex2DPointer:&v61];
      [context setTextureCoordinatesPointer:&v78 onTextureUnit:0];
      [context setColorsPointer:v77];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
    }

    else
    {
      v37 = __sincosf_stret(((progressCopy * 3.0) + -1.0) * 3.1416);
      v38 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      *&v39 = width / height;
      [v38 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:v58 state:v39];
      *&v78 = __PAIR64__(LODWORD(y), LODWORD(x));
      *(&v78 + 2) = x;
      *(&v78 + 3) = y + (height * 0.33333);
      *&v79 = x + width;
      *(&v79 + 1) = y;
      *(&v79 + 2) = x + width;
      *(&v79 + 3) = *(&v78 + 3);
      v75 = xmmword_163F64;
      v76 = unk_163F74;
      *&v40 = SetLightingColors2D(v77, &v78, *[context foreColor]);
      [context setShader:{@"ColoredTexture", v40}];
      [context setVertex2DPointer:&v78];
      [context setTextureCoordinatesPointer:&v75 onTextureUnit:0];
      [context setColorsPointer:v77];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      v61 = x;
      v62 = y + (height * 0.33333);
      v63 = 0.0;
      v64 = x;
      v65 = y + ((height * 0.33333) * (v37.__cosval + 1.0));
      v66 = v37.__sinval * (height * 0.33333);
      v67 = x + width;
      v68 = v62;
      v69 = 0;
      v70 = x + width;
      v71 = v65;
      v72 = v66;
      v73 = xmmword_163F84;
      v74 = unk_163F94;
      [context cull:2];
      SetLightingColors(v77, &v61, *[context foreColor]);
      [context setShader:@"ColoredTexture"];
      [context setVertex3DPointer:&v61];
      [context setTextureCoordinatesPointer:&v73 onTextureUnit:0];
      [context setColorsPointer:v77];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      [v38 unsetOnContext:context onTextureUnit:0 state:v58];
      [v38 releaseByUser];
      v32 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
      *&v41 = (width * 3.0) / height;
      [v32 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:v58 state:v41];
      [context cull:1];
      v59 = xmmword_163FA4;
      v60 = unk_163FB4;
      SetLightingColors(v77, &v61, *[context foreColor]);
      [context setShader:@"ColoredTexture"];
      [context setVertex3DPointer:&v61];
      [context setTextureCoordinatesPointer:&v59 onTextureUnit:0];
      [context setColorsPointer:v77];
      [context drawTriangleStripFromOffset:0 count:4];
      [context unsetColorsPointer];
      [context unsetTextureCoordinatesPointerOnTextureUnit:0];
      [context unsetVertexPointer];
      [context unsetShader];
      [context cull:0];
    }

    v34 = v58;
  }

  else
  {
    v17 = __sincosf_stret((progressCopy * 4.0) * 3.1416);
    v18 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v45 = 0;
    *&v19 = (width * 0.75) / height;
    [v18 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v45 state:v19];
    v20 = x + (width * 0.75);
    *&v80 = v20;
    *(&v80 + 1) = y;
    *(&v80 + 2) = v20;
    *(&v80 + 3) = y + height;
    *&v81 = x + width;
    *(&v81 + 1) = y;
    *(&v81 + 2) = x + width;
    *(&v81 + 3) = y + height;
    v78 = xmmword_163F04;
    v79 = unk_163F14;
    *&v21 = SetLightingColors2D(v77, &v80, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v21}];
    [context setVertex2DPointer:&v80];
    [context setTextureCoordinatesPointer:&v78 onTextureUnit:0];
    [context setColorsPointer:v77];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v18 unsetOnContext:context onTextureUnit:0 state:&v45];
    [v18 releaseByUser];
    v22 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    *&v23 = width / height;
    [v22 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v45 state:v23];
    v24 = x + (width * 0.5);
    v25 = y + (height * 0.5);
    *&v75 = v24;
    *(&v75 + 1) = v25;
    *(&v75 + 2) = v24;
    *(&v75 + 3) = y + height;
    *&v76 = v20;
    *(&v76 + 1) = v25;
    *(&v76 + 2) = v20;
    *(&v76 + 3) = y + height;
    v73 = xmmword_163F24;
    v74 = *algn_163F34;
    *&v26 = SetLightingColors2D(v77, &v75, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v26}];
    [context setVertex2DPointer:&v75];
    [context setTextureCoordinatesPointer:&v73 onTextureUnit:0];
    [context setColorsPointer:v77];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v61 = v20;
    v62 = v25;
    v63 = 0.0;
    v64 = v20;
    v65 = y + height;
    v66 = v17.__sinval * (width * 0.25);
    v27 = x + ((width * 0.25) * (v17.__cosval + 3.0));
    v67 = v27;
    v68 = v25;
    v69 = 0;
    v70 = v27;
    v71 = y + height;
    v72 = v17.__sinval * (width * 0.33333);
    v59 = xmmword_163F44;
    v60 = unk_163F54;
    SetLightingColors(v77, &v61, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v61];
    [context setTextureCoordinatesPointer:&v59 onTextureUnit:0];
    [context setColorsPointer:v77];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v22 unsetOnContext:context onTextureUnit:0 state:&v45];
    [v22 releaseByUser];
    v28 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    v29 = (width * 0.5) / height;
    *&v30 = v29;
    [v28 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v45 state:v30];
    v58[0] = v24;
    v58[1] = y;
    v58[2] = v24;
    v58[3] = v25;
    v58[4] = v20;
    v58[5] = y;
    v58[6] = v20;
    v58[7] = v25;
    *&v31 = SetLightingColors2D(v77, v58, *[context foreColor]);
    [context setShader:{@"ColoredTexture", v31}];
    [context setVertex2DPointer:v58];
    [context setTextureCoordinatesPointer:v82 onTextureUnit:0];
    [context setColorsPointer:v77];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    [v28 unsetOnContext:context onTextureUnit:0 state:&v45];
    [v28 releaseByUser];
    v32 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
    *&v33 = v29;
    [v32 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v45 state:v33];
    v46 = v20;
    v47 = y;
    v48 = 0.0;
    v49 = v20;
    v50 = v25;
    v51 = v17.__sinval * (width * 0.25);
    v52 = v27;
    v53 = y;
    v54 = 0;
    v55 = v27;
    v56 = v25;
    v57 = v17.__sinval * (width * 0.33333);
    SetLightingColors(v77, &v46, *[context foreColor]);
    [context setShader:@"ColoredTexture"];
    [context setVertex3DPointer:&v46];
    [context setTextureCoordinatesPointer:v82 onTextureUnit:0];
    [context setColorsPointer:v77];
    [context drawTriangleStripFromOffset:0 count:4];
    [context unsetColorsPointer];
    [context unsetTextureCoordinatesPointerOnTextureUnit:0];
    [context unsetVertexPointer];
    [context unsetShader];
    v34 = &v45;
  }

  [v32 unsetOnContext:context onTextureUnit:0 state:v34];
  [v32 releaseByUser];
}

- (void)renderFlipDiagonalAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  attributesCopy = attributes;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = [attributes objectForKey:@"recto"];
  v19 = [attributesCopy objectForKey:@"verso"];
  *&v20 = progress;
  [*(&self->mLittleSwing + 1) valueAtTime:v20];
  v22 = __sincosf_stret(3.1416 - v21);
  LODWORD(attributesCopy) = [objc_msgSend(v18 objectForKey:{@"slide0", "intValue"}];
  LODWORD(v18) = [objc_msgSend(v19 objectForKey:{@"slide0", "intValue"}];
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  v43[0] = v23;
  v43[1] = v24;
  v43[2] = 0.0;
  v27 = v24 + v26;
  v44[0] = v23;
  v44[1] = v24 + v26;
  v44[2] = 0.0;
  v44[3] = v23 + v25;
  v44[4] = v24;
  v44[5] = 0.0;
  v45 = v23 + ((v25 * 0.5) * (1.0 - v22.__cosval));
  v46 = v24 + ((v26 * 0.5) * (1.0 - v22.__cosval));
  v28 = v22.__sinval * 1.41421356 * v26 * 0.5;
  v47 = v28;
  v49 = 0;
  v48 = 0;
  v39[0] = v45;
  v39[1] = v46;
  v39[2] = v28;
  v40[0] = v23;
  v40[1] = v27;
  v40[2] = 0.0;
  v40[3] = v23 + v25;
  v40[4] = v24;
  v40[5] = 0.0;
  v40[6] = v23 + v25;
  v40[7] = v27;
  v42 = 0;
  v41 = 0;
  v38[0] = xmmword_163FC4;
  v38[1] = unk_163FD4;
  v29 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v30 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v35 = 0;
  LODWORD(v31) = 1.0;
  [v30 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v35 state:v31];
  [context setTextureCoordinatesPointer:v38 onTextureUnit:0];
  SetLightingColors(v37, v40, *[context foreColor]);
  [context setColorsPointer:v36];
  [context setVertex3DPointer:v39];
  [context drawTriangleStripFromOffset:1 count:3];
  [*(&self->mLittleSwing + 1) timeFirstAtRestValue];
  if (v32 > progress)
  {
    if (v29 != v30)
    {
      [v30 unsetOnContext:context onTextureUnit:0 state:&v35];
      LODWORD(v33) = 1.0;
      [v29 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v35 state:v33];
    }

    SetLightingColors(v36, v43, *[context foreColor]);
    [context setColorsPointer:v36];
    [context setVertex3DPointer:v43];
    [context drawTriangleStripFromOffset:0 count:3];
    [context cull:1];
    SetLightingColors(v37, v44, *[context foreColor]);
    [context setColorsPointer:v36];
    [context drawTriangleStripFromOffset:1 count:3];
    if (v29 != v30)
    {
      [v29 unsetOnContext:context onTextureUnit:0 state:&v35];
      LODWORD(v34) = 1.0;
      [v30 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v35 state:v34];
    }
  }

  [context cull:2];
  SetLightingColors(v36, v39, *[context foreColor]);
  [context setColorsPointer:v36];
  [context setVertex3DPointer:v39];
  [context drawTriangleStripFromOffset:0 count:3];
  [context unsetVertexPointer];
  [context unsetColorsPointer];
  [context cull:0];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [v29 releaseByUser];
  [v30 unsetOnContext:context onTextureUnit:0 state:&v35];
  [v30 releaseByUser];
}

- (void)renderUnfoldingFlowerAtTime:(double)time andProgress:(double)progress inContext:(id)context withArguments:(id)arguments inRect:(CGRect)rect withAttributes:(id)attributes
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = (progress + -0.5) * 3.14159274;
  v17 = sinf(v16);
  v18 = __sincosf_stret((v17 + 1.0) * 1.5708);
  v19 = -1.0;
  if (v18.__cosval > 0.0)
  {
    v19 = 1.0;
  }

  if (v18.__sinval >= 0.0)
  {
    sinval = v18.__sinval;
  }

  else
  {
    sinval = 0.0;
  }

  if (v18.__sinval >= 0.0)
  {
    cosval = v18.__cosval;
  }

  else
  {
    cosval = v19;
  }

  v22 = [objc_msgSend(attributes objectForKey:{@"rectoSlideIndex", "intValue"}];
  v56 = [objc_msgSend(attributes objectForKey:{@"versoSlideIndex", "intValue"}];
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  v27 = v23 + (v25 * 0.5);
  v28 = v24 + (v26 * 0.5);
  if (v25 >= v26)
  {
    v29 = height;
  }

  else
  {
    v29 = width;
  }

  v30 = v29 * 0.5;
  v31 = cosval + 1.0;
  v54 = cosval;
  v32 = -cosval;
  if (sinval > 0.0)
  {
    v32 = (1.0 - ((v31 * (v31 + v31)) / (sinval * sinval))) / (((v31 * (v31 + v31)) / (sinval * sinval)) + 1.0);
  }

  v52 = sinval;
  v33 = sqrt((1.0 - (v32 * v32))) * v30;
  v50 = v30 * v32;
  v51 = v33;
  v34 = [attributes objectForKey:@"direction"];
  if ([v34 hasSuffix:@"Left"])
  {
    v35 = -v30;
  }

  else
  {
    v35 = v30;
  }

  v55 = v35;
  if ([v34 hasPrefix:@"up"])
  {
    v36 = -v30;
  }

  else
  {
    v36 = v30;
  }

  v53 = v36;
  if ([v34 hasSuffix:@"Left"])
  {
    v37 = -1.0;
  }

  else
  {
    v37 = 1.0;
  }

  if ([v34 hasPrefix:@"up"])
  {
    v38 = -1.0;
  }

  else
  {
    v38 = 1.0;
  }

  v105.i64[0] = __PAIR64__(LODWORD(v38), LODWORD(v37));
  v105.f32[2] = v37;
  v105.f32[3] = -v38;
  v106 = -v37;
  v107 = v38;
  v108 = -v37;
  v109 = -v38;
  v39 = [attributes objectForKey:@"rectoSlideRect"];
  if (v39)
  {
    MyGLRectFromString(v39, &v105);
  }

  v104[1] = v28;
  v104[2] = v27;
  v104[3] = v28;
  v104[4] = v27 - v55;
  v104[5] = v28 + v53;
  v104[6] = v27;
  v104[7] = v28 + v53;
  v97 = -v37;
  v98 = 0;
  v99 = 0;
  v100 = -v37;
  v101 = v38;
  v102 = 0;
  v103 = v38;
  v104[0] = v27 - v55;
  v90[0] = v27;
  v90[1] = v28 + v53;
  v90[2] = 0.0;
  v91[0] = v27;
  v91[1] = v28;
  v91[2] = 0.0;
  v91[3] = v27 + (v50 * v37);
  v91[4] = v28 + v53;
  v91[5] = v51;
  v92 = v27 + ((v55 * -0.5) * (v54 + -1.0));
  v40 = (v30 * 0.5) * 1.41421356 * v52;
  v93 = v28 + ((v53 * 0.5) * v31);
  v94 = v40;
  v95 = 0;
  v96 = 0;
  v84 = v38;
  v85 = 0;
  v86 = v37;
  v87 = v38;
  v88 = v37;
  v89 = 0;
  v77[1] = v28;
  v77[2] = 0.0;
  v78[0] = v27;
  v78[1] = v28;
  v78[2] = 0.0;
  v78[3] = v27 - v55;
  v78[4] = v28 - (v50 * v38);
  v78[5] = v51;
  v79 = v27 + ((v55 * -0.5) * v31);
  v80 = v28 + ((v53 * 0.5) * (v54 + -1.0));
  v81 = v40;
  v82 = 0;
  v83 = 0;
  v70 = -v37;
  v71 = 0;
  v72 = 0;
  v73 = -v37;
  v74 = -v38;
  v75 = 0;
  v76 = -v38;
  v77[0] = v27 - v55;
  v69[1] = v93;
  v69[2] = v40;
  v69[3] = v27;
  v69[4] = v28;
  v69[5] = 0.0;
  v69[6] = v27 - (v55 * v54);
  v69[7] = v28 + (v53 * v54);
  v41 = v30 * 1.41421356 * v52;
  v69[8] = v41;
  v69[9] = v79;
  v69[10] = v80;
  v69[11] = v40;
  v62 = v37;
  v63 = 0;
  v64 = 0;
  v65 = v37;
  v66 = -v38;
  v67 = 0;
  v68 = -v38;
  v69[0] = v92;
  v42 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  v43 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
  if ((v55 * v53) > 0.0)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  if ((v55 * v53) <= 0.0)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  *&v44 = v55 * v53;
  [context cull:{v45, v44}];
  v58 = 0;
  LODWORD(v47) = 1.0;
  [v43 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v58 state:v47];
  *&v48 = SetLightingColors2D(v60, v104, *[context foreColor]);
  [context setShader:{@"ColoredTexture", v48}];
  [context setVertex2DPointer:v104];
  [context setTextureCoordinatesPointer:&v97 onTextureUnit:0];
  [context setColorsPointer:v60];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [context setTextureCoordinatesPointer:&v83 + 4 onTextureUnit:0];
  [context setShader:@"ColoredTexture"];
  SetLightingColors(v60, v90, *[context foreColor]);
  [context setColorsPointer:v60];
  [context setVertex3DPointer:v90];
  [context drawTriangleStripFromOffset:0 count:3];
  SetLightingColors(v61, v91, *[context foreColor]);
  [context setColorsPointer:v60];
  [context cull:v46];
  [context drawTriangleStripFromOffset:1 count:3];
  [context cull:v45];
  [context setTextureCoordinatesPointer:&v70 onTextureUnit:0];
  SetLightingColors(v60, v77, *[context foreColor]);
  [context setColorsPointer:v60];
  [context setVertex3DPointer:v77];
  [context cull:v46];
  [context drawTriangleStripFromOffset:0 count:3];
  [context cull:v45];
  SetLightingColors(v61, v78, *[context foreColor]);
  [context setColorsPointer:v60];
  [context drawTriangleStripFromOffset:1 count:3];
  [context unsetShader];
  SetLightingColors(v59, v69, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:v69];
  [context setTextureCoordinatesPointer:&v62 onTextureUnit:0];
  [context setColorsPointer:v59];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  if (v42 != v43)
  {
    [v43 unsetOnContext:context onTextureUnit:0 state:&v58];
    LODWORD(v49) = 1.0;
    [v42 setOnContext:context onTextureUnit:0 withReferenceAspectRatio:&v58 state:v49];
  }

  [context cull:v46];
  SetLightingColors(v59, v69, *[context foreColor]);
  [context setShader:@"ColoredTexture"];
  [context setVertex3DPointer:v69];
  [context setTextureCoordinatesPointer:&v105 onTextureUnit:0];
  [context setColorsPointer:v59];
  [context drawTriangleStripFromOffset:0 count:4];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [context unsetVertexPointer];
  [context unsetShader];
  [context unsetVertexPointer];
  [context unsetColorsPointer];
  [context unsetTextureCoordinatesPointerOnTextureUnit:0];
  [v42 unsetOnContext:context onTextureUnit:0 state:&v58];
  [v42 releaseByUser];
  [v43 releaseByUser];
  [context cull:0];
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  [context localAspectRatio];
  v9 = v8;
  v10 = 2.0 / v8;
  v11 = (self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration) * 0.5;
  v12 = objc_alloc_init(NSMutableArray);
  selfCopy = self;
  v13 = [(NSString *)self->super.mEffectID hasPrefix:@"Origami-JustASlide"];
  v227 = v12;
  timeCopy = time;
  if (v11 > time)
  {
    if (v13)
    {
      v14 = v10 * -0.5;
      v15 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:ImageKey(0)];
      v16 = [v15 retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
      if ([v15 defaultKenBurnsType] == 1 || (objc_msgSend(v16, "width"), v18 = v17, objc_msgSend(v16, "height"), *&v19 = v19, v20 = (v18 / *&v19), objc_msgSend(v16, "scale"), v22 = v21, objc_msgSend(context, "localAspectRatio"), v24 = v22 * v23 / v20, v25 = 1.0, v22 >= 1.0) && v24 >= 1.0)
      {
        v26 = [NSDictionary alloc];
        insertingInCollection = [v16 insertingInCollection];
        v28 = [NSValue valueWithCGRect:-1.0, v10 * -0.5, 2.0, v10];
        v29 = 2.0 / v10;
        *&v29 = 2.0 / v10;
        v30 = [v26 initWithObjectsAndKeys:{insertingInCollection, @"image", v28, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v29), @"referenceAspectRatio", 0}];
LABEL_12:
        v38 = v30;
        [v12 addObject:v30];

LABEL_190:
        [v16 releaseByUser];
        goto LABEL_191;
      }

      goto LABEL_186;
    }

    v39 = [qword_1EF3C0 objectForKey:self->super.mEffectID];
    v40 = v39;
    contextCopy = context;
    if (HIBYTE(self->mDescriptionAspectRatio) != BYTE2(self->mDescriptionAspectRatio))
    {
      v41 = [objc_msgSend(v39 objectAtIndex:{0), "objectForKey:", @"fallback"}];
      if (v41)
      {
        v40 = v41;
      }
    }

    v42 = BYTE1(self->mDescriptionAspectRatio);
    v43 = BYTE2(self->mDescriptionAspectRatio);
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v44 = [v40 countByEnumeratingWithState:&v237 objects:v244 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = 1.7778;
      if (!v43)
      {
        v46 = 0.5625;
      }

      v47 = 1.3333;
      if (!v43)
      {
        v47 = 0.75;
      }

      if (!v42)
      {
        v46 = v47;
      }

      v48 = v46;
      v49 = *v238;
      v50 = 2.0;
      v51 = 2.0 / v10;
      v202 = v51;
      v224 = vdupq_n_s64(0xC07B000000000000);
      v222 = vdupq_lane_s64(0x3F62F684BDA12F68, 0).u64[0];
      v52 = 0.5;
      do
      {
        v53 = 0;
        do
        {
          if (*v238 != v49)
          {
            objc_enumerationMutation(v40);
          }

          v54 = *(*(&v237 + 1) + 8 * v53);
          [objc_msgSend(v54 objectForKey:{@"startTime", "doubleValue"}];
          if (v55 == 0.0 && [objc_msgSend(v54 objectForKey:{@"subEffectID", "hasSuffix:", @"still"}])
          {
            v56 = objc_alloc_init(NSMutableDictionary);
            v57 = [objc_msgSend(v54 objectForKey:{@"attributes", "objectForKey:", @"slideIndex"}];
            if (v57 && (v58 = ImageKey([v57 intValue])) != 0)
            {
              v59 = v58;
              v60 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](self->super.mEffectLayer "slideProvidersForElementIDs")];
            }

            else
            {
              v60 = [(MREffectOrigami *)self _retainedByUserBackColorImageInContext:contextCopy];
              v59 = 0;
            }

            if (v60)
            {
              if ([v54 objectForKey:@"aspectRatio"])
              {
                [objc_msgSend(v54 objectForKey:{@"aspectRatio", "floatValue"}];
                v48 = v61;
              }

              v235 = 0u;
              v236 = 0u;
              v62 = [v54 objectForKey:@"rectangle"];
              v241 = 0u;
              v242 = 0u;
              sscanf([v62 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v241, &v241.f64[1], &v242, &v242 + 8);
              v235 = v241;
              v236 = v242;
              if (BYTE1(self->mDescriptionAspectRatio) == 1)
              {
                if (BYTE2(self->mDescriptionAspectRatio))
                {
                  v63 = 0.00130208333;
                }

                else
                {
                  v63 = 0.00411522637;
                }

                *&v64.f64[0] = v222;
                v64.f64[1] = v63;
                v235 = vmulq_f64(vaddq_f64(v241, v224), v64);
                *&v236 = *&v242 * 0.00231481481;
                *(&v236 + 1) = *(&v242 + 1) * v63;
              }

              if ([objc_msgSend(v54 objectForKey:{@"subEffectID", StretchRectangle(v235.f64, objc_msgSend(objc_msgSend(v54, "objectForKey:", @"stretchFlags", "intValue"), v48, v9)), "isEqualToString:", @"pstill"}] && ((objc_msgSend(v60, "aspectRatio"), v66 = v65, v65 < v52) || v65 > v50))
              {
                v68 = *&v236 / *(&v236 + 1);
                if ((v65 >= 1.0 || v68 <= 1.0) && (v65 <= 1.0 || v68 >= 1.0))
                {
                  v69 = v68 / v65;
                  if (v66 >= 1.0)
                  {
                    v69 = v66 / v68;
                  }

                  if (v69 >= 1.1)
                  {
                    v203 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](self->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", v59), "objectForKey:", @"panEndDirection", "intValue"}];
                    v213 = v235.f64[1];
                    v214 = v235.f64[0];
                    v70 = v236;
                    v71 = [(MREffectOrigami *)self _checkPanoramaAbsoluteSizeForImage:v60 inRect:&v235];
                    if (v66 < 1.0)
                    {
                      [v60 height];
                      v79 = v78;
                      v80 = *&v236;
                      [v60 width];
                      v76 = v79 * v80 - v81 * *(&v236 + 1);
                      [v60 width];
                    }

                    else
                    {
                      [v60 width];
                      v73 = v72;
                      v74 = *(&v236 + 1);
                      [v60 height];
                      v76 = v73 * v74 - v75 * *&v236;
                      [v60 height];
                    }

                    if (*&v236 >= *(&v236 + 1))
                    {
                      v82 = *(&v236 + 1);
                    }

                    else
                    {
                      v82 = *&v236;
                    }

                    v83 = v76 / (v77 * v82);
                    v84 = v83;
                    v85 = vcvtps_u32_f32(v84);
                    v87 = v83 <= 0.0 || v85 == 0;
                    v217 = v71;
                    if (v71)
                    {
                      v88 = *&v236 / *(&v236 + 1);
                    }

                    else
                    {
                      v88 = v68;
                    }

                    v205 = v87;
                    if (v87)
                    {
                      retainedByUserImage = v60;
                      v50 = 2.0;
                      time = timeCopy;
                      v52 = 0.5;
                    }

                    else
                    {
                      [v60 setScale:{fmax(v66 / v68, 1.0)}];
                      [v60 setCenterX:0.0];
                      [v60 setCenterY:0.0];
                      retainedByUserImage = [v60 retainedByUserImage];
                      [v60 releaseByUser];
                      v89 = [*(&self->mTotalNumberOfFolds + 1) objectForKeyedSubscript:v59];
                      time = timeCopy;
                      v52 = 0.5;
                      if (v89)
                      {
                        [v89 doubleValue];
                        v50 = 2.0;
                        if (v66 < 1.0)
                        {
                          [retainedByUserImage setCenterY:?];
                        }

                        else
                        {
                          [retainedByUserImage setCenterX:?];
                        }
                      }

                      else
                      {
                        v90 = v66 / v88 + -1.0;
                        if (v66 < 1.0)
                        {
                          if (v203 == -1)
                          {
                            v90 = 1.0 - v66 / v88;
                          }

                          [retainedByUserImage setCenterY:v90];
                        }

                        else
                        {
                          if (v203 != -1)
                          {
                            v90 = 1.0 - v66 / v88;
                          }

                          [retainedByUserImage setCenterX:v90];
                        }

                        v50 = 2.0;
                      }
                    }

                    if (v217)
                    {
                      v91 = [(MREffectOrigami *)self _retainedByUserBackColorImageInContext:contextCopy];
                      if (v66 < 1.0)
                      {
                        if (v205)
                        {
                          [retainedByUserImage setScale:?];
                          [retainedByUserImage setCenterX:0.0];
                          [retainedByUserImage setCenterY:0.0];
                        }

                        v218 = [NSDictionary alloc];
                        insertingInCollection2 = [v91 insertingInCollection];
                        v92 = [NSValue valueWithCGRect:v214, v213, v235.f64[0] - v214, *(&v70 + 1)];
                        *&v93 = v202;
                        v94 = [v218 initWithObjectsAndKeys:{insertingInCollection2, @"image", v92, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v93), @"referenceAspectRatio", 0}];
                        [v12 addObject:v94];

                        v219 = [NSDictionary alloc];
                        v95 = v91;
                        insertingInCollection3 = [v91 insertingInCollection];
                        v97 = [v219 initWithObjectsAndKeys:{insertingInCollection3, @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v235.f64[0] + *&v236, v213, v214 + *&v70 - (v235.f64[0] + *&v236), *(&v70 + 1)), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
                      }

                      else
                      {
                        if (v205)
                        {
                          [retainedByUserImage setScale:?];
                          [retainedByUserImage setCenterX:0.0];
                          [retainedByUserImage setCenterY:0.0];
                        }

                        else
                        {
                          [retainedByUserImage setScale:*(&v236 + 1) / *(&v70 + 1)];
                          v98 = *(&v70 + 1) / *(&v236 + 1);
                          [retainedByUserImage centerX];
                          v100 = v99 * v98;
                          v50 = 2.0;
                          [retainedByUserImage setCenterX:v100];
                        }

                        v207 = [NSDictionary alloc];
                        v220 = v91;
                        insertingInCollection4 = [v91 insertingInCollection];
                        v213 = [NSValue valueWithCGRect:v214, v213, *&v70, v235.f64[1] - v213];
                        *&v103 = v202;
                        v104 = [v207 initWithObjectsAndKeys:{insertingInCollection4, @"image", v213, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v103), @"referenceAspectRatio", 0}];
                        [v12 addObject:v104];

                        v208 = [NSDictionary alloc];
                        v95 = v220;
                        insertingInCollection5 = [v220 insertingInCollection];
                        v97 = [v208 initWithObjectsAndKeys:{insertingInCollection5, @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v214, v235.f64[1] + *(&v236 + 1), *&v70, v213 + *(&v70 + 1) - (v235.f64[1] + *(&v236 + 1))), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
                      }

                      v106 = v97;
                      [v12 addObject:v97];

                      [v95 releaseByUser];
                    }
                  }

                  else
                  {
                    retainedByUserImage = v60;
                    v52 = 0.5;
                    v50 = 2.0;
                  }
                }

                else
                {
                  retainedByUserImage = v60;
                  v52 = 0.5;
                }
              }

              else
              {
                retainedByUserImage = v60;
              }

              [v56 setObject:objc_msgSend(retainedByUserImage forKey:{"insertingInCollection"), @"image"}];
              [v56 setObject:+[NSValue valueWithCGRect:](NSValue forKey:{"valueWithCGRect:", *&v235, v236), @"rectangle"}];
              [v12 addObject:v56];
              [retainedByUserImage releaseByUser];
            }
          }

          v53 = v53 + 1;
        }

        while (v45 != v53);
        v107 = [v40 countByEnumeratingWithState:&v237 objects:v244 count:16];
        v45 = v107;
      }

      while (v107);
    }

    goto LABEL_191;
  }

  if (v13)
  {
    v14 = v10 * -0.5;
    v31 = [(NSDictionary *)[(MRLayerEffect *)self->super.mEffectLayer slideProvidersForElementIDs] objectForKey:ImageKey(0)];
    v16 = [v31 retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
    if ([v31 defaultKenBurnsType] == 1 || (objc_msgSend(v16, "width"), v33 = v32, objc_msgSend(v16, "height"), *&v34 = v34, v35 = (v33 / *&v34), objc_msgSend(v16, "scale"), v22 = v36, objc_msgSend(context, "localAspectRatio"), v24 = v22 * v37 / v35, v25 = 1.0, v22 >= 1.0) && v24 >= 1.0)
    {
      v30 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v16, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v10 * -0.5, 2.0, v10), @"rectangle", 0, v200, v201}];
      goto LABEL_12;
    }

LABEL_186:
    v179 = [(MREffectOrigami *)self _retainedByUserBackColorImageInContext:context];
    [v16 setCenterX:0.0];
    [v16 setCenterY:0.0];
    v180 = [NSDictionary alloc];
    insertingInCollection6 = [v16 insertingInCollection];
    if (v22 >= v25)
    {
      v193 = [NSValue valueWithCGRect:-1.0, v14 * v24, 2.0, v10 * v24];
      v194 = 2.0 / v10;
      *&v194 = 2.0 / v10;
      v195 = [v180 initWithObjectsAndKeys:{insertingInCollection6, @"image", v193, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v194), @"referenceAspectRatio", 0}];
      v185 = v227;
      [v227 addObject:v195];

      v196 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v179, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v14, 2.0, v14 * (v24 + -1.0)), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
      [v227 addObject:v196];

      v187 = [NSDictionary alloc];
      insertingInCollection7 = [v179 insertingInCollection];
      v191 = (v10 + v14) * v24;
      v192 = (v10 + v14) * (1.0 - v24);
      v190 = -1.0;
      v189 = 2.0;
    }

    else
    {
      v182 = [NSValue valueWithCGRect:-v22, v14, v22 + v22, v10];
      v183 = 2.0 / v10;
      *&v183 = 2.0 / v10;
      v184 = [v180 initWithObjectsAndKeys:{insertingInCollection6, @"image", v182, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v183), @"referenceAspectRatio", 0}];
      v185 = v227;
      [v227 addObject:v184];

      v186 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v179, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, v14, -(v22 + -1.0), v10), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
      [v227 addObject:v186];

      v187 = [NSDictionary alloc];
      insertingInCollection7 = [v179 insertingInCollection];
      v189 = 1.0 - v22;
      v190 = v22;
      v191 = v14;
      v192 = v10;
    }

    v197 = [v187 initWithObjectsAndKeys:{insertingInCollection7, @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v190, v191, v189, v192), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
    [v185 addObject:v197];

    [v179 releaseByUser];
    goto LABEL_190;
  }

  v108 = [qword_1EF3C0 objectForKey:self->super.mEffectID];
  v109 = v108;
  contextCopy2 = context;
  if (HIBYTE(self->mDescriptionAspectRatio) != BYTE2(self->mDescriptionAspectRatio))
  {
    v110 = [objc_msgSend(v108 objectAtIndex:{0), "objectForKey:", @"fallback"}];
    if (v110)
    {
      v109 = v110;
    }
  }

  v111 = BYTE1(self->mDescriptionAspectRatio);
  v112 = BYTE2(self->mDescriptionAspectRatio);
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v113 = [v109 countByEnumeratingWithState:&v231 objects:v243 count:16];
  if (v113)
  {
    v114 = v113;
    v115 = 1.7778;
    if (!v112)
    {
      v115 = 0.5625;
    }

    v116 = 1.3333;
    if (!v112)
    {
      v116 = 0.75;
    }

    if (!v111)
    {
      v115 = v116;
    }

    v117 = v115;
    v118 = *v232;
    v119 = 2.0;
    v120 = 2.0 / v10;
    v204 = v120;
    v225 = vdupq_n_s64(0xC07B000000000000);
    v223 = vdupq_lane_s64(0x3F62F684BDA12F68, 0).u64[0];
    v121 = 0.5;
    do
    {
      v122 = 0;
      do
      {
        if (*v232 != v118)
        {
          objc_enumerationMutation(v109);
        }

        v123 = *(*(&v231 + 1) + 8 * v122);
        if ([objc_msgSend(v123 objectForKey:{@"isVisibleAtEnd", "BOOLValue"}])
        {
          v124 = objc_alloc_init(NSMutableDictionary);
          v125 = [objc_msgSend(v123 objectForKey:{@"attributes", "objectForKey:", @"slideIndex"}];
          if (v125 && (v126 = ImageKey([v125 intValue])) != 0)
          {
            v127 = v126;
            v128 = [-[NSDictionary objectForKey:](-[MRLayerEffect slideProvidersForElementIDs](selfCopy->super.mEffectLayer "slideProvidersForElementIDs")];
          }

          else
          {
            v128 = [(MREffectOrigami *)selfCopy _retainedByUserBackColorImageInContext:contextCopy2];
            v127 = 0;
          }

          if (v128)
          {
            if ([v123 objectForKey:@"aspectRatio"])
            {
              [objc_msgSend(v123 objectForKey:{@"aspectRatio", "floatValue"}];
              v117 = v129;
            }

            v235 = 0u;
            v236 = 0u;
            v130 = [v123 objectForKey:@"rectangle"];
            v241 = 0u;
            v242 = 0u;
            sscanf([v130 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v241, &v241.f64[1], &v242, &v242 + 8);
            v235 = v241;
            v236 = v242;
            if (BYTE1(selfCopy->mDescriptionAspectRatio) == 1)
            {
              if (BYTE2(selfCopy->mDescriptionAspectRatio))
              {
                v131 = 0.00130208333;
              }

              else
              {
                v131 = 0.00411522637;
              }

              *&v132.f64[0] = v223;
              v132.f64[1] = v131;
              v235 = vmulq_f64(vaddq_f64(v241, v225), v132);
              *&v236 = *&v242 * 0.00231481481;
              *(&v236 + 1) = *(&v242 + 1) * v131;
            }

            if (![objc_msgSend(v123 objectForKey:{@"subEffectID", StretchRectangle(v235.f64, objc_msgSend(objc_msgSend(v123, "objectForKey:", @"stretchFlags", "intValue"), v117, v9)), "isEqualToString:", @"pstill"}] || (objc_msgSend(v128, "aspectRatio"), v134 = v133, v133 >= v121) && v133 <= v119)
            {
              retainedByUserImage2 = v128;
              goto LABEL_130;
            }

            v136 = *&v236 / *(&v236 + 1);
            if (v133 < 1.0 && v136 > 1.0 || v133 > 1.0 && v136 < 1.0)
            {
              retainedByUserImage2 = v128;
              v121 = 0.5;
              goto LABEL_130;
            }

            v137 = v136 / v133;
            if (v134 >= 1.0)
            {
              v137 = v134 / v136;
            }

            if (v137 < 1.1)
            {
              retainedByUserImage2 = v128;
              v121 = 0.5;
              v119 = 2.0;
              goto LABEL_130;
            }

            v138 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKey:](selfCopy->super.mFlattenedAttributes objectForKey:{@"breakInformation", "objectForKey:", v127), "objectForKey:", @"panEndDirection", "intValue"}];
            v215 = v235.f64[1];
            v216 = v235.f64[0];
            v139 = v236;
            v140 = [(MREffectOrigami *)selfCopy _checkPanoramaAbsoluteSizeForImage:v128 inRect:&v235];
            if (v134 < 1.0)
            {
              [v128 height];
              v148 = v147;
              v149 = *&v236;
              [v128 width];
              v145 = v148 * v149 - v150 * *(&v236 + 1);
              [v128 width];
            }

            else
            {
              [v128 width];
              v142 = v141;
              v143 = *(&v236 + 1);
              [v128 height];
              v145 = v142 * v143 - v144 * *&v236;
              [v128 height];
            }

            if (*&v236 >= *(&v236 + 1))
            {
              v151 = *(&v236 + 1);
            }

            else
            {
              v151 = *&v236;
            }

            v152 = v145 / (v146 * v151);
            v153 = v152;
            v154 = vcvtps_u32_f32(v153);
            v156 = v152 <= 0.0 || v154 == 0;
            if (v140)
            {
              v157 = *&v236 / *(&v236 + 1);
            }

            else
            {
              v157 = v136;
            }

            v210 = v156;
            if (!v156)
            {
              v209 = v138;
              [v128 setScale:{fmax(v134 / v136, 1.0)}];
              [v128 setCenterX:0.0];
              [v128 setCenterY:0.0];
              retainedByUserImage2 = [v128 retainedByUserImage];
              [v128 releaseByUser];
              v158 = [*(&selfCopy->mTotalNumberOfFolds + 1) objectForKeyedSubscript:v127];
              v119 = 2.0;
              v121 = 0.5;
              if (v158)
              {
                [v158 doubleValue];
                time = timeCopy;
                if (v134 < 1.0)
                {
                  [retainedByUserImage2 setCenterY:?];
                  if (!v140)
                  {
                    goto LABEL_130;
                  }
                }

                else
                {
                  [retainedByUserImage2 setCenterX:?];
                  if (!v140)
                  {
                    goto LABEL_130;
                  }
                }
              }

              else
              {
                v159 = v134 / v157 + -1.0;
                if (v134 < 1.0)
                {
                  if (v209 == -1)
                  {
                    v159 = 1.0 - v134 / v157;
                  }

                  [retainedByUserImage2 setCenterY:v159];
                }

                else
                {
                  if (v209 != -1)
                  {
                    v159 = 1.0 - v134 / v157;
                  }

                  [retainedByUserImage2 setCenterX:v159];
                }

                time = timeCopy;
                if (!v140)
                {
                  goto LABEL_130;
                }
              }

LABEL_175:
              v160 = [(MREffectOrigami *)selfCopy _retainedByUserBackColorImageInContext:contextCopy2];
              if (v134 < 1.0)
              {
                if (v210)
                {
                  [retainedByUserImage2 setScale:?];
                  [retainedByUserImage2 setCenterX:0.0];
                  [retainedByUserImage2 setCenterY:0.0];
                }

                v211 = [NSDictionary alloc];
                insertingInCollection8 = [v160 insertingInCollection];
                v162 = [NSValue valueWithCGRect:v216, v215, v235.f64[0] - v216, *(&v139 + 1)];
                *&v163 = v204;
                v164 = [v211 initWithObjectsAndKeys:{insertingInCollection8, @"image", v162, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v163), @"referenceAspectRatio", 0}];
                [v227 addObject:v164];

                v165 = [NSDictionary alloc];
                insertingInCollection9 = [v160 insertingInCollection];
                v167 = v235.f64[0] + *&v236;
                v168 = v216 + *&v139 - (v235.f64[0] + *&v236);
                v169 = v215;
                v170 = *(&v139 + 1);
              }

              else
              {
                if (v210)
                {
                  [retainedByUserImage2 setScale:?];
                  [retainedByUserImage2 setCenterX:0.0];
                  [retainedByUserImage2 setCenterY:0.0];
                }

                else
                {
                  [retainedByUserImage2 setScale:*(&v236 + 1) / *(&v139 + 1)];
                  v171 = *(&v139 + 1) / *(&v236 + 1);
                  [retainedByUserImage2 centerX];
                  [retainedByUserImage2 setCenterX:v172 * v171];
                }

                v212 = [NSDictionary alloc];
                insertingInCollection10 = [v160 insertingInCollection];
                v215 = [NSValue valueWithCGRect:v216, v215, *&v139, v235.f64[1] - v215];
                *&v175 = v204;
                v176 = [v212 initWithObjectsAndKeys:{insertingInCollection10, @"image", v215, @"rectangle", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v175), @"referenceAspectRatio", 0}];
                [v227 addObject:v176];

                v165 = [NSDictionary alloc];
                insertingInCollection9 = [v160 insertingInCollection];
                v169 = v235.f64[1] + *(&v236 + 1);
                v170 = v215 + *(&v139 + 1) - (v235.f64[1] + *(&v236 + 1));
                v167 = v216;
                v168 = *&v139;
              }

              v177 = [v165 initWithObjectsAndKeys:{insertingInCollection9, @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v167, v169, v168, v170), @"rectangle", &__kCFBooleanTrue, @"onTop", 0}];
              [v227 addObject:v177];

              [v160 releaseByUser];
              goto LABEL_130;
            }

            retainedByUserImage2 = v128;
            time = timeCopy;
            v119 = 2.0;
            v121 = 0.5;
            if (v140)
            {
              goto LABEL_175;
            }

LABEL_130:
            [v124 setObject:objc_msgSend(retainedByUserImage2 forKey:{"insertingInCollection"), @"image"}];
            [v124 setObject:+[NSValue valueWithCGRect:](NSValue forKey:{"valueWithCGRect:", *&v235, v236), @"rectangle"}];
            [v227 addObject:v124];
            [retainedByUserImage2 releaseByUser];
          }
        }

        v122 = v122 + 1;
      }

      while (v114 != v122);
      v178 = [v109 countByEnumeratingWithState:&v231 objects:v243 count:16];
      v114 = v178;
    }

    while (v178);
  }

LABEL_191:
  v198 = [[NSArray alloc] initWithArray:v227];

  return v198;
}

- (BOOL)_needsRenderingAtTime:(double)time remainingStillDurationAfter:(double *)after
{
  v5 = self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration;
  if (time < 1.35)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5 + -1.35 - time;
  }

  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(&self->mAnimationTimeBounds + 1);
  v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:{16, after}];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v32;
    v29 = v5 + -1.35;
    if (v5 + -1.35 <= time)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v5 + -1.35 - time;
    }

    v28 = v5 + -1.85;
    if (v5 + -1.85 > time)
    {
      v12 = 0.0;
    }

    if (time < 2.35)
    {
      v12 = 1.85 - time;
    }

    v27 = v12;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        [objc_msgSend(v14 objectForKey:{@"startTime", "doubleValue"}];
        v16 = v15;
        [objc_msgSend(v14 objectForKey:{@"endTime", "doubleValue"}];
        v18 = v17;
        v19 = [objc_msgSend(v14 objectForKey:{@"isStill", "BOOLValue"}];
        v20 = [objc_msgSend(v14 objectForKey:{@"isBreak", "BOOLValue"}];
        v21 = 10.0;
        if ((v19 & 1) == 0 && (v20 & 1) == 0)
        {
          if (v18 > time)
          {
            v21 = 0.0;
          }

          if (v16 >= time)
          {
            v21 = v16 - time;
          }
        }

        if (v20)
        {
          v21 = 0.0;
        }

        v22 = v20 ^ 1;
        if (time < 1.35)
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0)
        {
          v23 = (v29 > time) | v19;
          if (v28 > time)
          {
            v23 = v19;
          }

          v19 = (time < 2.35) | v23;
          v21 = v27;
        }

        if (v21 < v7)
        {
          v7 = v21;
        }

        v24 = v16 + -0.25 <= time;
        if (v18 + 0.100000001 < time)
        {
          v24 = 0;
        }

        v10 |= v24 & (v19 ^ 1);
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:{16, v18 + 0.100000001}];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    *v26 = v7;
  }

  return v10 & 1;
}

- (BOOL)hasMoreSlidesFromTime:(double)time backwards:(BOOL)backwards startTime:(double *)startTime duration:(double *)duration
{
  backwardsCopy = backwards;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = *(&self->mAnimationTimeBounds + 1);
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v30 = backwardsCopy;
    startTimeCopy = startTime;
    durationCopy = duration;
    v13 = *v32;
    v14 = 1.35;
    v15 = 1.35;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        [objc_msgSend(v17 objectForKey:{@"startTime", "doubleValue"}];
        v19 = v18;
        [objc_msgSend(v17 objectForKey:{@"endTime", "doubleValue"}];
        v21 = v20;
        v22 = [objc_msgSend(v17 objectForKey:{@"isStill", "BOOLValue"}];
        v23 = [objc_msgSend(v17 objectForKey:{@"isBreak", "BOOLValue"}];
        if ((v22 & 1) == 0 && (v23 & 1) == 0)
        {
          if (v15 >= v19 || v15 <= 1.35)
          {
            v15 = v19;
          }

          if (v14 >= v21)
          {
            v25 = v14;
          }

          else
          {
            v25 = v21;
          }

          if (v14 <= 1.35)
          {
            v14 = v21;
          }

          else
          {
            v14 = v25;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
    if (v15 <= 1.35)
    {
      goto LABEL_26;
    }

    v26 = v15 >= time;
    if (!v30)
    {
      v26 = v14 <= time;
    }

    if (v26)
    {
LABEL_26:
      LOBYTE(v11) = 0;
    }

    else
    {
      if (startTimeCopy)
      {
        *startTimeCopy = v15;
      }

      if (durationCopy)
      {
        *durationCopy = v14 - v15;
      }

      LOBYTE(v11) = 1;
    }
  }

  return v11;
}

- (double)interestingTimeForTime:(double)time
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = *(&self->mAnimationTimeBounds + 1);
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v6 = 1.35;
  if (v5)
  {
    v7 = v5;
    v8 = *v18;
    v6 = 1.35;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        [objc_msgSend(v10 objectForKey:{@"startTime", "doubleValue"}];
        [objc_msgSend(v10 objectForKey:{@"endTime", "doubleValue"}];
        v12 = v11;
        v13 = [objc_msgSend(v10 objectForKey:{@"isStill", "BOOLValue"}];
        v14 = v13 | [objc_msgSend(v10 objectForKey:{@"isBreak", "BOOLValue"}];
        if (v6 >= v12)
        {
          v15 = v6;
        }

        else
        {
          v15 = v12;
        }

        if (v6 <= 1.35)
        {
          v15 = v12;
        }

        if ((v14 & 1) == 0)
        {
          v6 = v15;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  if (v6 > time)
  {
    return 1.35;
  }

  else
  {
    return v6;
  }
}

- (double)interestingTimeForElement:(id)element
{
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = *(&self->mAnimationTimeBounds + 1);
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v5)
  {
    return 1.35;
  }

  v6 = v5;
  v7 = *v34;
  v8 = 1.35;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v33 + 1) + 8 * i);
      [objc_msgSend(v10 objectForKey:{@"startTime", "doubleValue"}];
      v12 = v11;
      v13 = [objc_msgSend(v10 objectForKey:{@"isStill", "BOOLValue"}];
      v14 = v13 | [objc_msgSend(v10 objectForKey:{@"isBreak", "BOOLValue"}];
      if (v8 >= v12 || v8 <= 1.35)
      {
        v16 = v12;
      }

      else
      {
        v16 = v8;
      }

      if (v14)
      {
        v8 = v16;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v6);
  v17 = 1.35;
  if (v8 != 1.35)
  {
    v18 = [qword_1EF3C0 objectForKey:self->super.mEffectID];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * j);
          v24 = [objc_msgSend(v23 objectForKey:{@"attributes", "objectForKey:", @"slideIndex"}];
          [objc_msgSend(v23 objectForKey:{@"startTime", "doubleValue"}];
          if (v25 != 0.0)
          {
            if ([objc_msgSend(v23 objectForKey:{@"isVisibleAtEnd", "BOOLValue"}])
            {
              intValue = [v24 intValue];
              if (intValue == [objc_msgSend(element substringFromIndex:{5), "intValue"}])
              {
                return v8;
              }
            }
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  return v17;
}

- (void)getLazyDuration:(double *)duration lazyFactor:(double *)factor animationDuration:(double *)animationDuration fromInterestingTime:(double)time
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = *(&self->mAnimationTimeBounds + 1);
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    v11 = 1.35;
    v12 = 1.35;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        [objc_msgSend(v14 objectForKey:{@"startTime", "doubleValue"}];
        v16 = v15;
        [objc_msgSend(v14 objectForKey:{@"endTime", "doubleValue"}];
        v18 = v17;
        v19 = [objc_msgSend(v14 objectForKey:{@"isStill", "BOOLValue"}];
        v20 = [objc_msgSend(v14 objectForKey:{@"isBreak", "BOOLValue"}];
        if ((v19 & 1) == 0 && (v20 & 1) == 0)
        {
          if (v12 >= v16 || v12 <= 1.35)
          {
            v12 = v16;
          }

          if (v11 >= v18)
          {
            v22 = v11;
          }

          else
          {
            v22 = v18;
          }

          if (v11 <= 1.35)
          {
            v11 = v18;
          }

          else
          {
            v11 = v22;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1.35;
    v12 = 1.35;
  }

  if (factor)
  {
    *factor = 0.0;
  }

  if (v11 <= time)
  {
    if (duration)
    {
      *duration = self->super.mPhaseInDuration + self->super.mMainDuration + self->super.mPhaseOutDuration - v11;
    }

    v23 = 0.0;
    if (animationDuration)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (duration)
    {
      *duration = v12 - time;
    }

    if (animationDuration)
    {
      v23 = v11 - v12;
LABEL_34:
      *animationDuration = v23;
    }
  }
}

@end