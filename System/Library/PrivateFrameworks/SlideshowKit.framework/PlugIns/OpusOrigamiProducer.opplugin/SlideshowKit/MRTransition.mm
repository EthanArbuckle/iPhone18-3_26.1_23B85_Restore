@interface MRTransition
+ (id)retainedTransitionWithTransitionID:(id)d forTransitioner:(id)transitioner;
- (BOOL)isAlphaFriendly;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (BOOL)needsSourceLayerImageForPrecomputing;
- (BOOL)needsTargetLayerImageForPrecomputing;
- (BOOL)noContentsMotion;
- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (CGSize)pixelSize;
- (MRTransition)initWithTransitionID:(id)d;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)cleanup;
- (void)dealloc;
- (void)releaseByTransitioner:(id)transitioner;
- (void)setAttributes:(id)attributes;
- (void)setSourceLayerImage:(id)image;
- (void)setTargetLayerImage:(id)image;
- (void)unload;
@end

@implementation MRTransition

+ (id)retainedTransitionWithTransitionID:(id)d forTransitioner:(id)transitioner
{
  v5 = [+[MRTransitionManager sharedManager](MRTransitionManager "sharedManager")];
  [v5 retainByTransitioner:transitioner];
  return v5;
}

- (MRTransition)initWithTransitionID:(id)d
{
  v4 = [(MRTransition *)self init];
  if (v4)
  {
    v4->mTransitionID = [d copy];
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

- (void)releaseByTransitioner:(id)transitioner
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

- (void)setAttributes:(id)attributes
{
  if (attributes)
  {
    if (self->mAttributes == attributes)
    {
      return;
    }

    self->mAttributes = attributes;

    self->mPresetID = [attributes objectForKey:@"PresetID"];
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
    if (v6)
    {
      [(NSDictionary *)v5 addEntriesFromDictionary:v6];
    }

    [(NSDictionary *)v5 addEntriesFromDictionary:attributes];
    self->mFlattenedAttributes = v5;
  }

  else
  {

    self->mFlattenedAttributes = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
  }

  self->mNeedsToUpdateAttributes = 1;
}

- (void)setSourceLayerImage:(id)image
{
  mSourceLayerImage = self->mSourceLayerImage;
  if (mSourceLayerImage)
  {
    [(MRImage *)mSourceLayerImage releaseByUser];
  }

  self->mSourceLayerImage = [image retainByUser];
}

- (void)setTargetLayerImage:(id)image
{
  mTargetLayerImage = self->mTargetLayerImage;
  if (mTargetLayerImage)
  {
    [(MRImage *)mTargetLayerImage releaseByUser];
  }

  self->mTargetLayerImage = [image retainByUser];
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

- (BOOL)prerenderForTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  self->_progress = time;
  mSourceLayer = self->mSourceLayer;
  [(MRLayerClock *)[(MRLayer *)mSourceLayer clock] externalTime];
  [(MRLayer *)mSourceLayer prerenderForTime:context inContext:arguments withArguments:?];
  mTargetLayer = self->mTargetLayer;
  [(MRLayerClock *)[(MRLayer *)mTargetLayer clock] externalTime];
  [(MRLayer *)mTargetLayer prerenderForTime:context inContext:arguments withArguments:?];
  return 1;
}

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MRTransition *)self retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
  [context localAspectRatio];
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