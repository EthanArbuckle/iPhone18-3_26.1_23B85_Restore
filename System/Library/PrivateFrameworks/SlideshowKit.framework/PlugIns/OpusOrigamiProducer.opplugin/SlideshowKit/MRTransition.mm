@interface MRTransition
+ (id)retainedTransitionWithTransitionID:(id)a3 forTransitioner:(id)a4;
- (BOOL)isAlphaFriendly;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (BOOL)needsSourceLayerImageForPrecomputing;
- (BOOL)needsTargetLayerImageForPrecomputing;
- (BOOL)noContentsMotion;
- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (CGSize)pixelSize;
- (MRTransition)initWithTransitionID:(id)a3;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)cleanup;
- (void)dealloc;
- (void)releaseByTransitioner:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setSourceLayerImage:(id)a3;
- (void)setTargetLayerImage:(id)a3;
- (void)unload;
@end

@implementation MRTransition

+ (id)retainedTransitionWithTransitionID:(id)a3 forTransitioner:(id)a4
{
  v5 = [+[MRTransitionManager sharedManager](MRTransitionManager "sharedManager")];
  [v5 retainByTransitioner:a4];
  return v5;
}

- (MRTransition)initWithTransitionID:(id)a3
{
  v4 = [(MRTransition *)self init];
  if (v4)
  {
    v4->mTransitionID = [a3 copy];
    v4->mPresetID = 0;
    v4->mDescription = [+[MRTransitionManager sharedManager](MRTransitionManager "sharedManager")];
    *&v4->mTransitioner = 0u;
    *&v4->mTargetLayer = 0u;
    *&v4->mTargetLayerImage = 0u;
    v4->mAttributes = 0;
    v4->mFlattenedAttributes = 0;
    v4->mNeedsToUpdateAttributes = 0;
    v4->mPixelSize = CGSizeZero;
  }

  return v4;
}

- (void)dealloc
{
  [(MRTransition *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRTransition;
  [(MRTransition *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->mDescription)
  {

    self->mTransitionID = 0;
    self->mPresetID = 0;

    self->mDescription = 0;
  }
}

- (void)releaseByTransitioner:(id)a3
{
  self->mTransitioner = 0;

  self->mAttributes = 0;
  self->mFlattenedAttributes = 0;

  self->mSourceLayer = 0;
  self->mTargetLayer = 0;
  [(MRTransition *)self unload];
  v4 = +[MRTransitionManager sharedManager];

  [v4 recycleTransition:self];
}

- (BOOL)noContentsMotion
{
  v2 = [(NSDictionary *)self->mDescription objectForKey:@"noContentsMotion"];

  return [v2 BOOLValue];
}

- (BOOL)needsSourceLayerImageForPrecomputing
{
  v2 = [(NSDictionary *)self->mDescription objectForKey:@"needsSourceLayerImageForPrecomputing"];

  return [v2 BOOLValue];
}

- (BOOL)needsTargetLayerImageForPrecomputing
{
  v2 = [(NSDictionary *)self->mDescription objectForKey:@"needsTargetLayerImageForPrecomputing"];

  return [v2 BOOLValue];
}

- (void)setAttributes:(id)a3
{
  if (a3)
  {
    if (self->mAttributes == a3)
    {
      return;
    }

    self->mAttributes = a3;

    self->mPresetID = [a3 objectForKey:@"PresetID"];
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
    if (v6)
    {
      [(NSDictionary *)v5 addEntriesFromDictionary:v6];
    }

    [(NSDictionary *)v5 addEntriesFromDictionary:a3];
    self->mFlattenedAttributes = v5;
  }

  else
  {

    self->mFlattenedAttributes = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
  }

  self->mNeedsToUpdateAttributes = 1;
}

- (void)setSourceLayerImage:(id)a3
{
  mSourceLayerImage = self->mSourceLayerImage;
  if (mSourceLayerImage)
  {
    [(MRImage *)mSourceLayerImage releaseByUser];
  }

  self->mSourceLayerImage = [a3 retainByUser];
}

- (void)setTargetLayerImage:(id)a3
{
  mTargetLayerImage = self->mTargetLayerImage;
  if (mTargetLayerImage)
  {
    [(MRImage *)mTargetLayerImage releaseByUser];
  }

  self->mTargetLayerImage = [a3 retainByUser];
}

- (void)unload
{
  self->_progress = 0.0;

  self->mOutputImage = 0;
  mSourceLayerImage = self->mSourceLayerImage;
  if (mSourceLayerImage)
  {
    [(MRImage *)mSourceLayerImage releaseByUser];
    self->mSourceLayerImage = 0;
  }

  mTargetLayerImage = self->mTargetLayerImage;
  if (mTargetLayerImage)
  {
    [(MRImage *)mTargetLayerImage releaseByUser];
    self->mTargetLayerImage = 0;
  }
}

- (BOOL)isNative3D
{
  v2 = [(NSDictionary *)self->mDescription objectForKey:@"isNative3D"];

  return [v2 BOOLValue];
}

- (BOOL)isOpaque
{
  v2 = [(NSDictionary *)self->mDescription objectForKey:@"isOpaque"];

  return [v2 BOOLValue];
}

- (BOOL)isAlphaFriendly
{
  if (![(NSDictionary *)self->mDescription objectForKey:@"isAlphaFriendly"])
  {
    return 1;
  }

  v3 = [(NSDictionary *)self->mDescription objectForKey:@"isAlphaFriendly"];

  return [v3 BOOLValue];
}

- (BOOL)prerenderForTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  self->_progress = a3;
  mSourceLayer = self->mSourceLayer;
  [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
  [(MRLayer *)mSourceLayer prerenderForTime:a4 inContext:a5 withArguments:?];
  mTargetLayer = self->mTargetLayer;
  [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
  [(MRLayer *)mTargetLayer prerenderForTime:a4 inContext:a5 withArguments:?];
  return 1;
}

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MRTransition *)self retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:a3];
  [a4 localAspectRatio];
  v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{objc_msgSend(v6, "insertingInCollection"), @"image", +[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", -1.0, 2.0 / v7 * -0.5, 2.0, 2.0 / v7), @"rectangle", 0}];
  v9 = [NSArray arrayWithObject:v8];

  [v6 releaseByUser];
  return v9;
}

- (CGSize)pixelSize
{
  width = self->mPixelSize.width;
  height = self->mPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end