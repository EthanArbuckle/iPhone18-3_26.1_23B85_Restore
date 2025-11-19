@interface MRFrame
+ (id)retainedFrameWithFrameID:(id)a3 forSlideProvider:(id)a4;
- (BOOL)isAlphaFriendly;
- (BOOL)isNative3D;
- (BOOL)isOpaque;
- (CGSize)pixelSize;
- (MRFrame)initWithFrameID:(id)a3;
- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5;
- (void)cleanup;
- (void)dealloc;
- (void)releaseBySlideProvider:(id)a3;
- (void)setAttributes:(id)a3;
- (void)setInputImage:(id)a3;
- (void)setPixelSize:(CGSize)a3;
- (void)unload;
@end

@implementation MRFrame

+ (id)retainedFrameWithFrameID:(id)a3 forSlideProvider:(id)a4
{
  v5 = [+[MRFrameManager sharedManager](MRFrameManager "sharedManager")];
  [v5 retainBySlideProvider:a4];
  return v5;
}

- (MRFrame)initWithFrameID:(id)a3
{
  v4 = [(MRFrame *)self init];
  if (v4)
  {
    v4->mFrameID = [a3 copy];
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

- (void)releaseBySlideProvider:(id)a3
{
  self->mSlideProvider = 0;

  self->mAttributes = 0;
  self->mFlattenedAttributes = 0;
  [(MRFrame *)self unload];
  v4 = +[MRFrameManager sharedManager];

  [v4 recycleFrame:self];
}

- (void)setInputImage:(id)a3
{
  mInputImage = self->mInputImage;
  if (mInputImage != a3)
  {
    [(MRImage *)mInputImage releaseByUser];
    self->mInputImage = [a3 retainByUser];
    [(MRImage *)self->mOutputImage releaseByUser];
    self->mOutputImage = 0;
  }
}

- (void)setAttributes:(id)a3
{
  if (self->mAttributes != a3)
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

    v15 = [a3 objectForKey:{@"specificAttributes", v8, v7, v6, v16, v17, v18, v9, v10}];
    if (v15)
    {
      [(NSDictionary *)v13 addEntriesFromDictionary:v15];
    }

    self->mFlattenedAttributes = v13;
  }
}

- (void)setPixelSize:(CGSize)a3
{
  if (a3.width != self->mPixelSize.width || a3.height != self->mPixelSize.height)
  {
    self->mPixelSize = a3;
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

- (id)patchworkAtTime:(double)a3 inContext:(id)a4 withArguments:(id)a5
{
  if (self->mPixelSize.width <= 0.0 || self->mPixelSize.height <= 0.0)
  {
    return 0;
  }

  v6 = [(MRFrame *)self retainedByUserRenderedImageAtTime:a4 inContext:a5 withArguments:a3];
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