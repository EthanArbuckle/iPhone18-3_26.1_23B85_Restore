@interface PXGCornerRadiusMask
+ (id)_loadQueue;
+ (id)cornerRadiusMaskForDevice:(id)device maxCornerRadius:(double)radius screenScale:(double)scale;
- (MTLTexture)texture;
- (PXGCornerRadiusMask)init;
- (PXGCornerRadiusMask)initWithDevice:(id)device maxCornerRadius:(double)radius screenScale:(double)scale;
- (void)_loadCornerRadiusTexture;
@end

@implementation PXGCornerRadiusMask

- (MTLTexture)texture
{
  atomicTexture = [(PXGCornerRadiusMask *)self atomicTexture];
  if (!atomicTexture)
  {
    v4 = +[PXGCornerRadiusMask _loadQueue];
    dispatch_sync(v4, &__block_literal_global_17);

    atomicTexture = [(PXGCornerRadiusMask *)self atomicTexture];
  }

  return atomicTexture;
}

- (void)_loadCornerRadiusTexture
{
  v3 = self->_maxCornerRadius * 1.528665;
  v4 = llround(vcvtd_n_f64_s64(llround(self->_screenScale * ceil(v3 + v3)), 1uLL));
  v5 = self->_screenScale * self->_maxCornerRadius + 1;
  self->_texturePixelSide = v4;
  self->_numberOfSlices = v5;
  self->_byteSize = 2 * v4 * v5;
  v6 = +[PXGCornerRadiusMask _loadQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PXGCornerRadiusMask__loadCornerRadiusTexture__block_invoke;
  block[3] = &unk_2782AB7C0;
  block[4] = self;
  block[5] = v4;
  block[6] = v5;
  block[7] = v4;
  block[8] = (2 * v4);
  dispatch_async(v6, block);
}

void __47__PXGCornerRadiusMask__loadCornerRadiusTexture__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:1 width:*(a1 + 40) height:*(a1 + 40) mipmapped:0];
  [v2 setTextureType:3];
  [v2 setArrayLength:*(a1 + 48)];
  v3 = [*(*(a1 + 32) + 8) newTextureWithDescriptor:v2];
  v4 = CGBitmapContextCreate(0, *(a1 + 40), *(a1 + 40), 8uLL, *(a1 + 56), 0, 7u);
  v5 = *(a1 + 40);
  v12.b = 0.0;
  v12.c = 0.0;
  v12.a = 1.0;
  *&v12.d = xmmword_21AE2D460;
  v12.ty = v5;
  CGContextConcatCTM(v4, &v12);
  if (*(a1 + 48) >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 64);
    v8 = *(a1 + 40);
    do
    {
      CGContextSaveGState(v4);
      CGContextSetBlendMode(v4, kCGBlendModeCopy);
      CGContextSetRGBFillColor(v4, 0.0, 0.0, 0.0, 0.0);
      v13.origin.x = 0.0;
      v13.origin.y = 0.0;
      v13.size.width = v8;
      v13.size.height = v8;
      CGContextFillRect(v4, v13);
      v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v7, v7, v6}];
      CGContextAddPath(v4, [v9 CGPath]);
      CGContextClip(v4);
      CGContextSetRGBFillColor(v4, 1.0, 1.0, 1.0, 1.0);
      v14.origin.x = 0.0;
      v14.origin.y = 0.0;
      v14.size.width = v7;
      v14.size.height = v7;
      CGContextFillRect(v4, v14);
      Data = CGBitmapContextGetData(v4);
      v11 = *(a1 + 40);
      memset(&v12, 0, 24);
      v12.d = v11;
      v12.tx = v11;
      *&v12.ty = 1;
      [v3 replaceRegion:&v12 mipmapLevel:0 slice:v6 withBytes:Data bytesPerRow:*(a1 + 56) bytesPerImage:*(a1 + 56) * *&v11];
      CGContextRestoreGState(v4);

      ++v6;
    }

    while (v6 < *(a1 + 48));
  }

  CGContextRelease(v4);
  [*(a1 + 32) setAtomicTexture:v3];
}

- (PXGCornerRadiusMask)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGCornerRadiusMask.m" lineNumber:62 description:{@"%s is not available as initializer", "-[PXGCornerRadiusMask init]"}];

  abort();
}

- (PXGCornerRadiusMask)initWithDevice:(id)device maxCornerRadius:(double)radius screenScale:(double)scale
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = PXGCornerRadiusMask;
  v10 = [(PXGCornerRadiusMask *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v11->_screenScale = scale;
    v11->_maxCornerRadius = radius;
    [(PXGCornerRadiusMask *)v11 _loadCornerRadiusTexture];
  }

  return v11;
}

+ (id)cornerRadiusMaskForDevice:(id)device maxCornerRadius:(double)radius screenScale:(double)scale
{
  deviceCopy = device;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"device:%p maxCornerRadius:%.5f screenScale:%.5f", deviceCopy, *&radius, *&scale];
  if (cornerRadiusMaskForDevice_maxCornerRadius_screenScale__onceToken[0] != -1)
  {
    dispatch_once(cornerRadiusMaskForDevice_maxCornerRadius_screenScale__onceToken, &__block_literal_global_4);
  }

  v9 = [cornerRadiusMaskForDevice_maxCornerRadius_screenScale__cache objectForKey:v8];
  if (!v9)
  {
    v9 = [[PXGCornerRadiusMask alloc] initWithDevice:deviceCopy maxCornerRadius:radius screenScale:scale];
    [cornerRadiusMaskForDevice_maxCornerRadius_screenScale__cache setObject:v9 forKey:v8];
  }

  return v9;
}

uint64_t __77__PXGCornerRadiusMask_cornerRadiusMaskForDevice_maxCornerRadius_screenScale___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = cornerRadiusMaskForDevice_maxCornerRadius_screenScale__cache;
  cornerRadiusMaskForDevice_maxCornerRadius_screenScale__cache = v0;

  v2 = cornerRadiusMaskForDevice_maxCornerRadius_screenScale__cache;

  return [v2 setCountLimit:2];
}

+ (id)_loadQueue
{
  if (_loadQueue_onceToken != -1)
  {
    dispatch_once(&_loadQueue_onceToken, &__block_literal_global_9687);
  }

  v3 = _loadQueue_queue;

  return v3;
}

void __33__PXGCornerRadiusMask__loadQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.photos.PXGCornerRadiusMask-loadQueue", attr);
  v2 = _loadQueue_queue;
  _loadQueue_queue = v1;
}

@end