@interface VKImage
- (CGImage)image;
- (CGPoint)anchorPoint;
- (CGPoint)labelingPoint;
- (CGRect)collisionRect;
- (CGSize)size;
- (TextureHandle)texture;
- (VKImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a5;
- (VKImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 usedAsTextureAndImage:(BOOL)a5 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a6;
- (VKImage)initWithData:(id)a3 scale:(double)a4 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a5;
- (VKImage)initWithData:(id)a3 scale:(double)a4 usedAsTextureAndImage:(BOOL)a5 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a6;
- (VKImage)initWithName:(id)a3 scale:(double)a4 resourceManager:(id)a5 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a6;
- (const)textureCoordinates;
- (id).cxx_construct;
- (int)compareTo:(id)a3;
- (void)_prepareImage;
- (void)_prepareTextureWithAtlas:(TextureAtlas *)a3;
- (void)dealloc;
- (void)prepareTextureWithAtlas:(TextureAtlas *)a3;
@end

@implementation VKImage

- (TextureHandle)texture
{
  v3 = atomic_load(&self->_isTextureReady);
  if ((v3 & 1) == 0)
  {
    [(VKImage *)self prepareTextureWithAtlas:0];
  }

  ptr = self->_textureAtlasRegion.__ptr_;
  if (ptr)
  {
    value = (*(*ptr + 32))(ptr, a2);
    v6 = v6;
  }

  else
  {
    value = self->_texture.var0.value;
    v6 = *&self->_texture.isInternal;
  }

  result.isInternal = v6;
  result.var0 = value;
  return result;
}

- (const)textureCoordinates
{
  ptr = self->_textureAtlasRegion.__ptr_;
  if (ptr)
  {
    return (*(*ptr + 40))();
  }

  else
  {
    return &self->_textureCoordinates;
  }
}

- (void)dealloc
{
  p_textureAtlasRegion = &self->_textureAtlasRegion;
  ptr = self->_textureAtlasRegion.__ptr_;
  if (ptr)
  {
    (*(*ptr + 16))(ptr, p_textureAtlasRegion);
    cntrl = self->_textureAtlasRegion.__cntrl_;
    self->_textureAtlasRegion.__ptr_ = 0;
    self->_textureAtlasRegion.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }

  imageRef = self->_imageRef;
  if (imageRef)
  {
    CGImageRelease(imageRef);
  }

  v7 = self->_resourceStore.__cntrl_;
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = self->_resourceStore.__ptr_;
      if (v10)
      {
        (*(*v10 + 56))(v10, self->_texture.var0.value, *&self->_texture.isInternal);
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  v11.receiver = self;
  v11.super_class = VKImage;
  [(VKImage *)&v11 dealloc];
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 94) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 56) = 0;
  return self;
}

- (int)compareTo:(id)a3
{
  v4 = a3;
  if (self == v4 || (-[VKImage prepareTextureWithAtlas:](self, "prepareTextureWithAtlas:", 0), [v4 prepareTextureWithAtlas:0], v5 = bswap64(*self->_imageHash), v6 = bswap64(v4[25]), v5 == v6) && (v5 = bswap64(*&self->_imageHash[8]), v6 = bswap64(v4[26]), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (CGRect)collisionRect
{
  if (self->_hasCollisionRect)
  {
    x = self->_collisionRect.origin.x;
    y = self->_collisionRect.origin.y;
    width = self->_collisionRect.size.width;
    height = self->_collisionRect.size.height;
  }

  else
  {
    [(VKImage *)self size:v2];
    width = v8;
    height = v9;
    y = 0.0;
    x = 0.0;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)labelingPoint
{
  if (self->_hasLabelingPoint)
  {
    x = self->_labelingPoint.x;
    y = self->_labelingPoint.y;
  }

  else
  {
    [(VKImage *)self size:v2];
    x = v6 * 0.5;
    y = v7 * 0.5;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)anchorPoint
{
  if (self->_hasAnchorPoint)
  {
    x = self->_anchorPoint.x;
    y = self->_anchorPoint.y;
  }

  else
  {
    [(VKImage *)self size:v2];
    x = v6 * 0.5;
    y = v7 * 0.5;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  [(VKImage *)self image];
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_prepareImage
{
  data = self->_data;
  if (data && [(NSData *)data length])
  {
    v4 = self->_data;
    if (_imageSourceOptions(void)::onceToken != -1)
    {
      dispatch_once(&_imageSourceOptions(void)::onceToken, &__block_literal_global_23499);
    }

    v5 = CGImageSourceCreateWithData(v4, _imageSourceOptions(void)::options);
    v6 = self->_data;
    self->_data = 0;

    if (v5)
    {
      if (CGImageSourceGetCount(v5))
      {
        if (_imageSourceOptions(void)::onceToken != -1)
        {
          dispatch_once(&_imageSourceOptions(void)::onceToken, &__block_literal_global_23499);
        }

        self->_imageRef = CGImageSourceCreateImageAtIndex(v5, 0, _imageSourceOptions(void)::options);
        CFRelease(v5);
        imageRef = self->_imageRef;
        if (imageRef)
        {
          Width = CGImageGetWidth(imageRef);
          Height = CGImageGetHeight(self->_imageRef);
          self->_size.width = Width;
          self->_size.height = Height;
        }
      }

      else
      {

        CFRelease(v5);
      }
    }

    return;
  }

  name = self->_name;
  if (!name || ![(NSString *)name length])
  {
    return;
  }

  v11 = vcvtpd_u64_f64(self->_scale);
  if (v11)
  {
    v12 = *MEMORY[0x1E695E480];
    while (1)
    {
      v13 = self->_name;
      v14 = v13;
      if (v11 != 1)
      {
        v15 = [(NSString *)v13 stringByAppendingFormat:@"@%lux", v11];

        v14 = v15;
      }

      v16 = [v14 stringByAppendingPathExtension:@"png"];

      v17 = [(VKResourceManager *)self->_resourceManager pathForResourceWithName:v16];
      v18 = [MEMORY[0x1E696AC08] defaultManager];
      v19 = [v18 fileExistsAtPath:v17];

      if (v19)
      {
        ImageAtIndex = CFURLCreateWithFileSystemPath(v12, v17, kCFURLPOSIXPathStyle, 0);
        if (!ImageAtIndex)
        {
          goto LABEL_29;
        }

        if (_imageSourceOptions(void)::onceToken != -1)
        {
          dispatch_once(&_imageSourceOptions(void)::onceToken, &__block_literal_global_23499);
        }

        v21 = CGImageSourceCreateWithURL(ImageAtIndex, _imageSourceOptions(void)::options);
        CFRelease(ImageAtIndex);
        if (v21)
        {
          if (CGImageSourceGetCount(v21))
          {
            if (_imageSourceOptions(void)::onceToken != -1)
            {
              dispatch_once(&_imageSourceOptions(void)::onceToken, &__block_literal_global_23499);
            }

            ImageAtIndex = CGImageSourceCreateImageAtIndex(v21, 0, _imageSourceOptions(void)::options);
          }

          else
          {
            ImageAtIndex = 0;
          }

          CFRelease(v21);
          goto LABEL_29;
        }
      }

      ImageAtIndex = 0;
LABEL_29:

      self->_imageRef = ImageAtIndex;
      if (!ImageAtIndex)
      {
        if (--v11)
        {
          continue;
        }
      }

      break;
    }
  }

  v22 = self->_imageRef;
  if (v22)
  {
    v23 = CGImageGetWidth(v22);
    v24 = CGImageGetHeight(self->_imageRef);
    self->_size.width = v23;
    self->_size.height = v24;
    resourceManager = self->_resourceManager;
    self->_resourceManager = 0;
  }
}

- (CGImage)image
{
  p_isImageReady = &self->_isImageReady;
  v4 = atomic_load(&self->_isImageReady);
  if ((v4 & 1) == 0)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = atomic_load(p_isImageReady);
    if ((v6 & 1) == 0)
    {
      [(VKImage *)v5 _prepareImage];
      atomic_store(1u, &self->_isImageReady);
    }

    objc_sync_exit(v5);
  }

  return self->_imageRef;
}

- (void)_prepareTextureWithAtlas:(TextureAtlas *)a3
{
  [(VKImage *)self image];
  v5 = atomic_load(&self->_isImageReady);
  if ((v5 & 1) == 0)
  {
    return;
  }

  imageRef = self->_imageRef;
  if (!imageRef)
  {
    return;
  }

  Width = CGImageGetWidth(imageRef);
  Height = CGImageGetHeight(self->_imageRef);
  v9 = Height;
  v25 = __PAIR64__(Height, Width);
  if (!a3)
  {
    v25 = vshl_u32(0x100000001, vand_s8(vneg_s32(vclz_s32(vadd_s32(__PAIR64__(Height, Width), -1))), 0x1F0000001FLL));
  }

  v24 = __PAIR64__(Height, Width);
  v10 = mdm::zone_mallocator::instance(Height);
  v11 = pthread_rwlock_rdlock((v10 + 32));
  if (v11)
  {
    geo::read_write_lock::logFailure(v11, "read lock", v12);
  }

  v13 = malloc_type_zone_malloc(*v10, 0x68uLL, 0x1081040DC16D540uLL);
  atomic_fetch_add((v10 + 24), 1u);
  geo::read_write_lock::unlock((v10 + 32));
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = &unk_1F2A27948;
  v27.__ptr_ = ggl::TextureData2D::TextureData2D(v13 + 32, v25.u32[0], v25.u32[1], 1, 12, 1);
  v27.__cntrl_ = v13;
  v14 = (*(*(v13 + 4) + 16))(v27.__ptr_, 0);
  if (v14)
  {
    v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    v16 = CGBitmapContextCreate(v14, Width, v9, 8uLL, (4 * v25.i32[0]), v15, 1u);
    CGColorSpaceRelease(v15);
    CGContextTranslateCTM(v16, 0.0, v9);
    CGContextScaleCTM(v16, 1.0, -1.0);
    v28.size.width = Width;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.height = v9;
    CGContextDrawImage(v16, v28, self->_imageRef);
    CGContextRelease(v16);
    MEMORY[0x1B8C61850](v14, *(v27.__ptr_ + 16), 3, self->_imageHash);
  }

  if (a3)
  {
    (*(a3->var0 + 4))(&v26, a3, &v27, 1);
    v17 = v26;
    v26 = 0;
    cntrl = self->_textureAtlasRegion.__cntrl_;
    self->_textureAtlasRegion = v17;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
      if (v26.__cntrl_)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v26.__cntrl_);
      }
    }
  }

  if (!self->_textureAtlasRegion.__ptr_)
  {
    v19 = self->_resourceStore.__cntrl_;
    if (v19)
    {
      v20 = std::__shared_weak_count::lock(v19);
      if (v20)
      {
        ptr = self->_resourceStore.__ptr_;
LABEL_19:
        value = self->_texture.var0.value;
        if (value)
        {
          (*(*ptr + 56))(ptr, value, *&self->_texture.isInternal);
        }

        v26 = v27;
        if (v27.__cntrl_)
        {
          atomic_fetch_add_explicit(v27.__cntrl_ + 1, 1uLL, memory_order_relaxed);
        }

        self->_texture.var0.value = (*(*ptr + 8))(ptr, &v26);
        self->_texture.isInternal = v23;
        if (v26.__cntrl_)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v26.__cntrl_);
        }

        self->_textureCoordinates._minimum = 0;
        self->_textureCoordinates._maximum = vdiv_f32(vcvt_f32_u32(v24), vcvt_f32_u32(v25));
        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
    }

    ptr = 0;
    goto LABEL_19;
  }

LABEL_27:
  if (!self->_usedAsTextureAndImage)
  {
    CGImageRelease(self->_imageRef);
    self->_imageRef = 0;
  }

  if (v27.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27.__cntrl_);
  }
}

- (void)prepareTextureWithAtlas:(TextureAtlas *)a3
{
  p_isTextureReady = &self->_isTextureReady;
  v4 = atomic_load(&self->_isTextureReady);
  if ((v4 & 1) == 0)
  {
    obj = self;
    objc_sync_enter(obj);
    v7 = atomic_load(p_isTextureReady);
    if ((v7 & 1) == 0)
    {
      [(VKImage *)obj _prepareTextureWithAtlas:a3];
      atomic_store(1u, &self->_isTextureReady);
    }

    objc_sync_exit(obj);
  }
}

- (VKImage)initWithName:(id)a3 scale:(double)a4 resourceManager:(id)a5 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a6
{
  ptr = a6.__ptr_;
  v10 = a3;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = VKImage;
  v12 = [(VKImage *)&v20 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_scale = a4;
    objc_storeStrong(&v12->_resourceManager, a5);
    v16 = *ptr;
    v15 = *(ptr + 1);
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v12->_resourceStore.__cntrl_;
    v12->_resourceStore.__ptr_ = v16;
    v12->_resourceStore.__cntrl_ = v15;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v18 = v12;
  }

  return v12;
}

- (VKImage)initWithData:(id)a3 scale:(double)a4 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a5
{
  ptr = a5.__ptr_;
  v8 = a3;
  v9 = *(ptr + 1);
  v12 = *ptr;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = [(VKImage *)self initWithData:v8 scale:0 usedAsTextureAndImage:&v12 resourceStore:a4];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  return v10;
}

- (VKImage)initWithData:(id)a3 scale:(double)a4 usedAsTextureAndImage:(BOOL)a5 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a6
{
  ptr = a6.__ptr_;
  v11 = a3;
  v19.receiver = self;
  v19.super_class = VKImage;
  v12 = [(VKImage *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_data, a3);
    v13->_usedAsTextureAndImage = a5;
    v13->_scale = a4;
    v15 = *ptr;
    v14 = *(ptr + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v13->_resourceStore.__cntrl_;
    v13->_resourceStore.__ptr_ = v15;
    v13->_resourceStore.__cntrl_ = v14;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v17 = v13;
  }

  return v13;
}

- (VKImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a5
{
  v5 = *(a5.__ptr_ + 1);
  v8 = *a5.__ptr_;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = [(VKImage *)self initWithCGImage:a3 scale:0 usedAsTextureAndImage:&v8 resourceStore:a4];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v6;
}

- (VKImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 usedAsTextureAndImage:(BOOL)a5 resourceStore:(weak_ptr<mre::GraphicsResourceStore>)a6
{
  ptr = a6.__ptr_;
  v19.receiver = self;
  v19.super_class = VKImage;
  v10 = [(VKImage *)&v19 init:a3];
  if (v10)
  {
    v11 = CGImageRetain(a3);
    v10->_imageRef = v11;
    atomic_store(1u, &v10->_isImageReady);
    Width = CGImageGetWidth(v11);
    Height = CGImageGetHeight(v10->_imageRef);
    v10->_size.width = Width;
    v10->_size.height = Height;
    v10->_scale = a4;
    v10->_usedAsTextureAndImage = a5;
    v15 = *ptr;
    v14 = *(ptr + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
    }

    cntrl = v10->_resourceStore.__cntrl_;
    v10->_resourceStore.__ptr_ = v15;
    v10->_resourceStore.__cntrl_ = v14;
    if (cntrl)
    {
      std::__shared_weak_count::__release_weak(cntrl);
    }

    v17 = v10;
  }

  return v10;
}

@end