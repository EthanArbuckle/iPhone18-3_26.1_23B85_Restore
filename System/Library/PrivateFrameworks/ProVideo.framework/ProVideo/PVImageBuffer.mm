@interface PVImageBuffer
+ (id)imageWithCGImage:(CGImage *)a3;
+ (id)imageWithCGImage:(CGImage *)a3 withGainMap:(CGImage *)a4;
+ (id)imageWithCGImage:(CGImage *)a3 withSourceColorSpace:(id)a4 withDestColorSpace:(id)a5;
+ (id)imageWithCVPixelBuffer:(__CVBuffer *)a3;
+ (id)imageWithHGBitmap:(HGRef<HGBitmap>)a3;
+ (id)imageWithHGCVPixelBuffer:(HGRef<HGCVPixelBuffer>)a3;
+ (id)imageWithMTLTexture:(id)a3;
+ (id)imageWithProResLogCGImage:(CGImage *)a3 forColorSpace:(int)a4;
+ (id)imageWithProResLogCVPixelBuffer:(__CVBuffer *)a3 forColorSpace:(int)a4;
+ (id)imageWithProResLogUIImage:(id)a3 forColorSpace:(int)a4;
+ (id)imageWithUIImage:(id)a3;
- (BOOL)canCreateCVPixelBuffer;
- (BOOL)canCreateHGBitmap;
- (BOOL)cvPixelBufferRequiresCopy;
- (BOOL)cvPixelBufferRequiresRender;
- (CGImage)cgImage;
- (CGSize)size;
- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3;
- (PVImageBuffer)initWithImageBufferImpl:(id)a3;
- (__CVBuffer)cvPixelBufferWithColorSpace:(id)a3;
- (id)description;
- (id)uiImage;
- (void)dealloc;
@end

@implementation PVImageBuffer

+ (id)imageWithUIImage:(id)a3
{
  v3 = a3;
  v4 = -[PVCGImageBufferImpl initWithCGImage:]([PVCGImageBufferImpl alloc], "initWithCGImage:", [v3 CGImage]);
  v5 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v4];

  return v5;
}

+ (id)imageWithCGImage:(CGImage *)a3
{
  v3 = [[PVCGImageBufferImpl alloc] initWithCGImage:a3];
  v4 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v3];

  return v4;
}

+ (id)imageWithCGImage:(CGImage *)a3 withGainMap:(CGImage *)a4
{
  v4 = [[PVCGImageBufferImpl alloc] initWithCGImage:a3 withGainMap:a4];
  v5 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v4];

  return v5;
}

+ (id)imageWithCGImage:(CGImage *)a3 withSourceColorSpace:(id)a4 withDestColorSpace:(id)a5
{
  v6 = a4;
  v7 = [[PVCGImageBufferImpl alloc] initWithCGImage:a3 withSourceColorSpace:v6];
  v8 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v7];

  return v8;
}

+ (id)imageWithCVPixelBuffer:(__CVBuffer *)a3
{
  v3 = [[PVCVPixelBufferImageBufferImpl alloc] initWithCVPixelBuffer:a3];
  v4 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v3];

  return v4;
}

+ (id)imageWithHGCVPixelBuffer:(HGRef<HGCVPixelBuffer>)a3
{
  v4 = [PVCVPixelBufferImageBufferImpl alloc];
  v5 = *a3.m_Obj;
  v9 = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = [(PVCVPixelBufferImageBufferImpl *)v4 initWithHGCVPixelBuffer:&v9];
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v7 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v6];

  return v7;
}

+ (id)imageWithHGBitmap:(HGRef<HGBitmap>)a3
{
  CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(*a3.m_Obj, a2);
  if (CVBitmapStorage)
  {
    v5 = CVBitmapStorage[16];
    if (v5)
    {
      (*(*v5 + 16))(CVBitmapStorage[16]);
    }

    v6 = objc_opt_class();
    v13 = v5;
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }

    v7 = [v6 imageWithHGCVPixelBuffer:&v13];
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }

    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  else
  {
    v8 = [PVHGBitmapImageBufferImpl alloc];
    v9 = *a3.m_Obj;
    v12 = v9;
    if (v9)
    {
      (*(*v9 + 16))(v9);
    }

    v10 = [(PVHGBitmapImageBufferImpl *)v8 initWithHGBitmap:&v12];
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }

    v7 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v10];
  }

  return v7;
}

+ (id)imageWithMTLTexture:(id)a3
{
  v3 = a3;
  v4 = [[PVMTLTextureImageBufferImpl alloc] initWithMTLTexture:v3];
  v5 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v4];

  return v5;
}

- (PVImageBuffer)initWithImageBufferImpl:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = PVImageBuffer;
  v6 = [(PVImageBuffer *)&v8 init];
  if (v6)
  {
    objc_storeStrong(&v6->_imageBufferImpl, a3);
    operator new();
  }

  return 0;
}

+ (id)imageWithProResLogUIImage:(id)a3 forColorSpace:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [a1 imageWithProResLogCGImage:objc_msgSend(v6 forColorSpace:{"CGImage"), v4}];

  return v7;
}

+ (id)imageWithProResLogCGImage:(CGImage *)a3 forColorSpace:(int)a4
{
  if (a4)
  {
    +[PVColorSpace rec2100HLGColorSpace];
  }

  else
  {
    +[PVColorSpace rec709GammaColorSpace];
  }
  v5 = ;
  v6 = [PVCGImageBufferImpl alloc];
  v7 = +[PVColorSpace ProResLogColorSpace];
  v8 = [(PVCGImageBufferImpl *)v6 initWithCGImage:a3 withSourceColorSpace:v7];

  if (v8)
  {
    [(PVCGImageBufferImpl *)v8 cvPixelBufferWithColorSpace:v5];
  }

  else
  {
    v14 = 0;
  }

  v9 = [PVCVPixelBufferImageBufferImpl alloc];
  v13 = v14;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  v10 = [(PVCVPixelBufferImageBufferImpl *)v9 initWithHGCVPixelBuffer:&v13];

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v11 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v10];
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  return v11;
}

+ (id)imageWithProResLogCVPixelBuffer:(__CVBuffer *)a3 forColorSpace:(int)a4
{
  if (a4)
  {
    +[PVColorSpace rec2100HLGColorSpace];
  }

  else
  {
    +[PVColorSpace rec709GammaColorSpace];
  }
  v5 = ;
  v6 = [PVCVPixelBufferImageBufferImpl alloc];
  v7 = +[PVColorSpace ProResLogColorSpace];
  v8 = [(PVCVPixelBufferImageBufferImpl *)v6 initWithCVPixelBuffer:a3 withSourceColorSpace:v7];

  if (v8)
  {
    [(PVCVPixelBufferImageBufferImpl *)v8 cvPixelBufferWithColorSpace:v5];
  }

  else
  {
    v14 = 0;
  }

  v9 = [PVCVPixelBufferImageBufferImpl alloc];
  v13 = v14;
  if (v14)
  {
    (*(*v14 + 16))(v14);
  }

  v10 = [(PVCVPixelBufferImageBufferImpl *)v9 initWithHGCVPixelBuffer:&v13];

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v11 = [objc_alloc(objc_opt_class()) initWithImageBufferImpl:v10];
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  return v11;
}

- (void)dealloc
{
  lock = self->_lock;
  if (lock)
  {
    (*(lock->var0 + 1))(lock, a2);
  }

  v4.receiver = self;
  v4.super_class = PVImageBuffer;
  [(PVImageBuffer *)&v4 dealloc];
}

- (id)uiImage
{
  lock = self->_lock;
  LOBYTE(v9) = 0;
  HGSynchronizable::Lock(lock);
  v4 = MEMORY[0x277D755B8];
  v5 = [(PVImageBufferImpl *)self->_imageBufferImpl cgImage:lock];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 nativeScale];
  v7 = [v4 imageWithCGImage:v5 scale:0 orientation:?];

  HGSynchronizable::Unlock(lock);

  return v7;
}

- (CGImage)cgImage
{
  lock = self->_lock;
  LOBYTE(v6) = 0;
  HGSynchronizable::Lock(lock);
  v4 = [(PVImageBufferImpl *)self->_imageBufferImpl cgImage:lock];
  HGSynchronizable::Unlock(lock);
  return v4;
}

- (BOOL)canCreateCVPixelBuffer
{
  v2 = self;
  lock = self->_lock;
  LOBYTE(v5) = 0;
  HGSynchronizable::Lock(lock);
  LOBYTE(v2) = [(PVImageBufferImpl *)v2->_imageBufferImpl canCreateCVPixelBuffer:lock];
  HGSynchronizable::Unlock(lock);
  return v2;
}

- (BOOL)canCreateHGBitmap
{
  v2 = self;
  lock = self->_lock;
  LOBYTE(v5) = 0;
  HGSynchronizable::Lock(lock);
  LOBYTE(v2) = [(PVImageBufferImpl *)v2->_imageBufferImpl canCreateHGBitmap:lock];
  HGSynchronizable::Unlock(lock);
  return v2;
}

- (BOOL)cvPixelBufferRequiresCopy
{
  v2 = self;
  lock = self->_lock;
  LOBYTE(v5) = 0;
  HGSynchronizable::Lock(lock);
  LOBYTE(v2) = [(PVImageBufferImpl *)v2->_imageBufferImpl cvPixelBufferRequiresCopy:lock];
  HGSynchronizable::Unlock(lock);
  return v2;
}

- (BOOL)cvPixelBufferRequiresRender
{
  v2 = self;
  lock = self->_lock;
  LOBYTE(v5) = 0;
  HGSynchronizable::Lock(lock);
  LOBYTE(v2) = [(PVImageBufferImpl *)v2->_imageBufferImpl cvPixelBufferRequiresRender:lock];
  HGSynchronizable::Unlock(lock);
  return v2;
}

- (__CVBuffer)cvPixelBufferWithColorSpace:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v14 = 0;
  HGSynchronizable::Lock(lock);
  imageBufferImpl = self->_imageBufferImpl;
  if (imageBufferImpl && ([(PVImageBufferImpl *)imageBufferImpl cvPixelBufferWithColorSpace:v4], v12))
  {
    if ([(PVImageBufferImpl *)self->_imageBufferImpl cvPixelBufferRequiresCopy])
    {
      v6 = [PVCVPixelBufferImageBufferImpl alloc];
      v11 = v12;
      (*(*v12 + 16))(v12);
      v7 = [(PVCVPixelBufferImageBufferImpl *)v6 initWithHGCVPixelBuffer:&v11];
      if (v11)
      {
        (*(*v11 + 24))(v11);
      }

      v8 = self->_imageBufferImpl;
      self->_imageBufferImpl = v7;
    }

    v9 = v12[3];
    (*(*v12 + 24))(v12);
  }

  else
  {
    v9 = 0;
  }

  HGSynchronizable::Unlock(lock);

  return v9;
}

- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3
{
  v5 = v3;
  v6 = a3;
  lock = self->_lock;
  v10 = v6;
  HGSynchronizable::Lock(lock);
  imageBufferImpl = self->_imageBufferImpl;
  if (imageBufferImpl)
  {
    [(PVImageBufferImpl *)imageBufferImpl hgBitmapWithColorSpace:v10];
  }

  else
  {
    *v5 = 0;
  }

  HGSynchronizable::Unlock(lock);

  return v9;
}

- (CGSize)size
{
  lock = self->_lock;
  LOBYTE(v10) = 0;
  HGSynchronizable::Lock(lock);
  [(PVImageBufferImpl *)self->_imageBufferImpl size:lock];
  v5 = v4;
  v7 = v6;
  HGSynchronizable::Unlock(lock);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (id)description
{
  lock = self->_lock;
  HGSynchronizable::Lock(lock);
  [(PVImageBufferImpl *)self->_imageBufferImpl size];
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v8 stringWithFormat:@"<%@ (%@): %p>, [%.1f x %.1f]", v10, v12, self, v5, v7];

  HGSynchronizable::Unlock(lock);

  return v13;
}

@end