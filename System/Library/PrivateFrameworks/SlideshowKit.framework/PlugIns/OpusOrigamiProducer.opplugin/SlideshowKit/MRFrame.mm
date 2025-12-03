@interface MRFrame
+ (id)retainedFrameWithFrameID:(id)d forSlideProvider:(id)provider;
- (BOOL)isAlphaFriendly;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (CGSize)pixelSize;
- (MRFrame)initWithFrameID:(id)d;
- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments;
- (void)cleanup;
- (void)dealloc;
- (void)releaseBySlideProvider:(id)provider;
- (void)setAttributes:(id)attributes;
- (void)setInputImage:(id)image;
- (void)setPixelSize:(CGSize)size;
- (void)unload;
@end

@implementation MRFrame

+ (id)retainedFrameWithFrameID:(id)d forSlideProvider:(id)provider
{
  v5 = [+[MRFrameManager sharedManager](MRFrameManager "sharedManager")];
  [v5 retainBySlideProvider:provider];
  return v5;
}

- (MRFrame)initWithFrameID:(id)d
{
  v4 = [(MRFrame *)self init];
  if (v4)
  {
    v4->mFrameID = [d copy];
    v4->mDescription = [+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
    v4->mAttributes = 0;
    v4->mInputImage = 0;
    v4->mOutputImage = 0;
    v4->mPixelSize = CGSizeZero;
  }

  return v4;
}

- (void)dealloc
{
  [(MRFrame *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRFrame;
  [(MRFrame *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->mSlideProvider)
  {
    [(MRFrame *)self releaseBySlideProvider:?];
  }

  self->mFrameID = 0;
  self->mDescription = 0;
}

- (void)releaseBySlideProvider:(id)provider
{
  self->mSlideProvider = 0;

  self->mAttributes = 0;
  self->mFlattenedAttributes = 0;
  [(MRFrame *)self unload];
  v4 = +[MRFrameManager sharedManager];

  [v4 recycleFrame:self];
}

- (void)setInputImage:(id)image
{
  mInputImage = self->mInputImage;
  if (mInputImage != image)
  {
    [(MRImage *)mInputImage releaseByUser];
    self->mInputImage = [image retainByUser];
    [(MRImage *)self->mOutputImage releaseByUser];
    self->mOutputImage = 0;
  }
}

- (void)setAttributes:(id)attributes
{
  if (self->mAttributes != attributes)
  {
    v16 = v5;
    v17 = v4;
    v18 = v3;

    v13 = objc_alloc_init(NSMutableDictionary);
    v14 = [+[MPFrameManager sharedManager](MPFrameManager "sharedManager")];
    if (v14)
    {
      [(NSDictionary *)v13 addEntriesFromDictionary:v14];
    }

    v15 = [attributes objectForKey:{@"specificAttributes", v8, v7, v6, v16, v17, v18, v9, v10}];
    if (v15)
    {
      [(NSDictionary *)v13 addEntriesFromDictionary:v15];
    }

    self->mFlattenedAttributes = v13;
  }
}

- (void)setPixelSize:(CGSize)size
{
  if (size.width != self->mPixelSize.width || size.height != self->mPixelSize.height)
  {
    self->mPixelSize = size;
    [(MRFrame *)self unload];
  }
}

- (void)unload
{
  [(MRImage *)self->mInputImage releaseByUser];
  self->mInputImage = 0;
  [(MRImage *)self->mOutputImage releaseByUser];
  self->mOutputImage = 0;
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

- (id)patchworkAtTime:(double)time inContext:(id)context withArguments:(id)arguments
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MRFrame *)self retainedByUserRenderedImageAtTime:context inContext:arguments withArguments:time];
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