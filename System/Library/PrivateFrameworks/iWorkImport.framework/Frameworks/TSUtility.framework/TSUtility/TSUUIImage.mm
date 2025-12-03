@interface TSUUIImage
+ (id)imageNamed:(id)named;
+ (void)i_performBlockWithUIImageLock:(id)lock;
- (CGImage)CGImage;
- (CGImage)CGImageForSize:(CGSize)size;
- (CGSize)size;
- (TSUUIImage)initWithContentsOfFile:(id)file;
- (double)scale;
- (id)UIImage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)p_initWithUIImage:(id)image needsGuard:(BOOL)guard;
- (int64_t)imageOrientation;
- (void)dealloc;
@end

@implementation TSUUIImage

+ (void)i_performBlockWithUIImageLock:(id)lock
{
  if (qword_280A63CA0 != -1)
  {
    sub_277113EF4();
  }

  dispatch_semaphore_wait(qword_280A63CA8, 0xFFFFFFFFFFFFFFFFLL);
  (*(lock + 2))(lock);
  v4 = qword_280A63CA8;

  dispatch_semaphore_signal(v4);
}

+ (id)imageNamed:(id)named
{
  v5 = [TSUQuicklookResource imagePathForQuicklookResource:?];
  if (!v5 || (v6 = [[self alloc] initWithContentsOfFile:v5]) == 0)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3052000000;
    v13 = sub_27708461C;
    v14 = sub_27708462C;
    v15 = 0;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_277084638;
    v9[3] = &unk_27A7022B0;
    v9[4] = named;
    v9[5] = &v10;
    [self i_performBlockWithUIImageLock:v9];
    if (v11[5])
    {
      v7 = [self alloc];
      v6 = [v7 p_initWithUIImage:v11[5] needsGuard:1];
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

- (id)p_initWithUIImage:(id)image needsGuard:(BOOL)guard
{
  guardCopy = guard;
  v11.receiver = self;
  v11.super_class = TSUUIImage;
  v6 = [(TSUImage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    if (image)
    {
      v6->mUIImage = image;
      if (guardCopy)
      {
        v8 = [[TSUUIImageAutoreleasePoolGuard alloc] initWithUIImage:v7->mUIImage];
        v7->mGuard = v8;
        if (v8)
        {
          v9 = v8;
        }
      }
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (TSUUIImage)initWithContentsOfFile:(id)file
{
  v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:file];

  return [(TSUUIImage *)self initWithUIImage:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  mUIImage = self->mUIImage;

  return [v4 initWithUIImage:mUIImage];
}

- (void)dealloc
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  else
  {
  }

  v5.receiver = self;
  v5.super_class = TSUUIImage;
  [(TSUImage *)&v5 dealloc];
}

- (id)UIImage
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  return self->mUIImage;
}

- (CGSize)size
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  [mUIImage size];
  result.height = v7;
  result.width = v6;
  return result;
}

- (double)scale
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  [mUIImage scale];
  return result;
}

- (CGImage)CGImage
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  return [mUIImage CGImage];
}

- (CGImage)CGImageForSize:(CGSize)size
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v5 = mGuard;
  }

  mUIImage = self->mUIImage;

  return [mUIImage CGImage:size.width];
}

- (int64_t)imageOrientation
{
  mGuard = self->mGuard;
  if (mGuard)
  {
    v4 = mGuard;
  }

  mUIImage = self->mUIImage;

  return [mUIImage imageOrientation];
}

@end