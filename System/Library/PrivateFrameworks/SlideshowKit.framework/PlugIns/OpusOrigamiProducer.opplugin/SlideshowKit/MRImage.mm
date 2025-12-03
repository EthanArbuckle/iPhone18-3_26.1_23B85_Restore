@interface MRImage
- (BOOL)isOpaque;
- (BOOL)usesMipmap;
- (CGSize)relativeSizeInContextPixelSize:(CGSize)size;
- (CGSize)size;
- (EAGLContext)updateGLContext;
- (MRImage)init;
- (MRImage)initWithImage:(id)image;
- (MRImage)initWithTextureSource:(id)source andSize:(CGSize)size;
- (MRTexture)texture;
- (NSMutableDictionary)userData;
- (NSString)filterID;
- (id)retainedByUserImage;
- (id)retainedByUserImageWithShader:(id)shader;
- (void)cleanup;
- (void)dealloc;
- (void)getMatrix:(float)matrix[16] forReferenceAspectRatio:(float)ratio;
- (void)kenburnsMatrix:(float)matrix[16] forReferenceAspectRatio:(float)ratio;
- (void)releaseByUser;
- (void)removingFromCollection;
- (void)setFiltersNearest:(BOOL)nearest;
- (void)setHasKenBurns:(BOOL)burns;
- (void)setLabel:(id)label;
- (void)setMipmapFiltersNearest:(BOOL)nearest;
- (void)setPreservesAspectRatio:(BOOL)ratio;
- (void)setScaleWasFixedForTargetAspectRatio:(BOOL)ratio;
- (void)setUsesBackgroundColorAsBorderColor:(BOOL)color;
- (void)setUsesMipmap:(BOOL)mipmap;
- (void)uploadCGImage:(CGImage *)image toTextureRect:(CGRect)rect;
@end

@implementation MRImage

- (MRImage)init
{
  v3.receiver = self;
  v3.super_class = MRImage;
  result = [(MRImage *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
    result->_flags |= 2u;
    result->_clampMode = 2;
  }

  return result;
}

- (MRImage)initWithImage:(id)image
{
  v4 = [(MRImage *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_imageManager = *(image + 5);
    v4->_referenceImage = [image retainByUser];
    v5->_size = *(image + 136);
    v5->_flags = *(image + 6) & 0x4B;
  }

  return v5;
}

- (MRImage)initWithTextureSource:(id)source andSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = [(MRImage *)self init];
  if (v7)
  {
    v7->_imageManager = [source imageManager];
    v7->_textureSource = source;
    v7->_size.width = width;
    v7->_size.height = height;
    if (*([source textureOptions] + 4) == 1)
    {
      v7->_flags |= 8u;
    }
  }

  return v7;
}

- (void)dealloc
{
  [(MRImage *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRImage;
  [(MRImage *)&v3 dealloc];
}

- (void)cleanup
{
  if (self->_imageManager)
  {
    objc_sync_enter(self);
    referenceImage = self->_referenceImage;
    if (referenceImage)
    {
      [(MRImage *)referenceImage releaseByUser];
      self->_referenceImage = 0;
    }

    textureSource = self->_textureSource;
    if (textureSource)
    {

      self->_textureSource = 0;
    }

    texture = self->_texture;
    if (texture)
    {
      if ([(MRTexture *)texture isShared])
      {
        [(MRImageManager *)self->_imageManager recycleTexture:self->_texture];
      }

      self->_texture = 0;
    }

    self->_imageManager = 0;
    self->_size.width = 0.0;
    self->_size.height = 0.0;
    userData = self->_userData;
    if (userData)
    {

      self->_userData = 0;
    }

    shader = self->_shader;
    if (shader)
    {

      self->_shader = 0;
    }

    filterID = self->_filterID;
    if (filterID)
    {

      self->_filterID = 0;
    }

    label = self->_label;
    if (label)
    {

      self->_label = 0;
    }

    objc_sync_exit(self);
  }
}

- (void)releaseByUser
{
  if (atomic_fetch_add(&self->_retainByUserCount, 0xFFFFFFFF) == 1)
  {
    selfCopy = self;
    [(MRImage *)self cleanup];
    self = selfCopy;
  }
}

- (void)removingFromCollection
{
  selfCopy = self;

  [(MRImage *)selfCopy releaseByUser];
}

- (id)retainedByUserImage
{
  v2 = [[MRImage alloc] initWithImage:self];

  return v2;
}

- (id)retainedByUserImageWithShader:(id)shader
{
  v4 = [[MRImage alloc] initWithImage:self];

  [(MRImage *)v4 setShader:shader];
  return v4;
}

- (void)setUsesBackgroundColorAsBorderColor:(BOOL)color
{
  flags = self->_flags;
  if (color)
  {
    self->_flags = flags | 1;
    self->_clampMode = 1;
  }

  else
  {
    self->_flags = flags & 0xFFFFFFFE;
  }
}

- (void)setFiltersNearest:(BOOL)nearest
{
  if (nearest)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFEF | v3;
}

- (BOOL)isOpaque
{
  texture = [(MRImage *)self texture];

  return [(MRTexture *)texture isOpaque];
}

- (BOOL)usesMipmap
{
  referenceImage = self->_referenceImage;
  if (referenceImage)
  {
    LOBYTE(v4) = [(MRImage *)referenceImage usesMipmap];
  }

  else
  {
    return (LOBYTE(self->_flags) >> 3) & 1;
  }

  return v4;
}

- (void)setUsesMipmap:(BOOL)mipmap
{
  if (mipmap)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFF7 | v3;
}

- (void)setMipmapFiltersNearest:(BOOL)nearest
{
  if (nearest)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFDF | v3;
}

- (void)setPreservesAspectRatio:(BOOL)ratio
{
  if (ratio)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFD | v3;
}

- (void)setHasKenBurns:(BOOL)burns
{
  if (burns)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFB | v3;
}

- (void)setScaleWasFixedForTargetAspectRatio:(BOOL)ratio
{
  if (ratio)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFBF | v3;
}

- (void)setLabel:(id)label
{
  label = self->_label;
  if (label != label)
  {

    v7 = [label copy];
    self->_label = v7;
    texture = self->_texture;
    if (texture)
    {

      [(MRTexture *)texture setLabel:v7];
    }
  }
}

- (NSMutableDictionary)userData
{
  objc_sync_enter(self);
  userData = self->_userData;
  if (!userData)
  {
    userData = objc_alloc_init(NSMutableDictionary);
    self->_userData = userData;
  }

  v4 = userData;
  objc_sync_exit(self);
  return v4;
}

- (void)kenburnsMatrix:(float)matrix[16] forReferenceAspectRatio:(float)ratio
{
  *v4.i32 = ratio;
  scale = self->_scale;
  if (scale > 0.0)
  {
    v8 = 1.0 / scale;
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = self->_size.width / self->_size.height;
  if (self->_rotationAngle == 0.0)
  {
    MRMatrix_SetDiagonal(matrix, v9, (v9 * v10) / *v4.i32, 1.0);
  }

  else
  {
    v13 = v4;
    MRMatrix_SetDiagonal(matrix, 1.0, 1.0 / *v4.i32, 1.0);
    v11 = self->_rotationAngle * 57.2957764;
    MRMatrix_SetRotationFromAnglesYXZDeg(matrix, 0.0, 0.0, v11);
    v12 = vdiv_f32(*(matrix + 4), vdup_lane_s32(v13, 0));
    *(matrix + 2) = v12;
    v12.f32[0] = v9;
    MRMatrix_Scale(matrix, v12, v9 * v10, 1.0);
  }

  *(matrix + 6) = vcvt_f32_f64(vaddq_f64(*&self->_centerX, vcvtq_f64_f32(*(matrix + 12))));
}

- (void)getMatrix:(float)matrix[16] forReferenceAspectRatio:(float)ratio
{
  referenceImage = self->_referenceImage;
  if (!referenceImage)
  {
    textureTarget = [(MRTexture *)[(MRImage *)self texture] textureTarget];
    if (ratio <= 0.0)
    {
      if (textureTarget == 3553)
      {
        var1 = 1.0;
        var0 = 1.0;
        v13 = -1.0;
      }

      else
      {
        v17 = [(MRTexture *)self->_texture size];
        var0 = v17.var0;
        var1 = v17.var1;
        v13 = -v17.var1;
      }

      MRMatrix_SetDiagonal(matrix, var0, v13, 1.0);
    }

    else
    {
      if (textureTarget == 3553)
      {
        var1 = 0.5;
        MRMatrix_SetDiagonal(matrix, 0.5, -0.5, 1.0);
        matrix[13] = 0.5;
        v11 = 12;
        goto LABEL_14;
      }

      v14 = [(MRTexture *)self->_texture size];
      v15 = HIDWORD(*&v14);
      v16 = vcvts_n_f32_u32(v14.var0, 1uLL);
      MRMatrix_SetDiagonal(matrix, v16, v14.var1 * -0.5, 1.0);
      matrix[12] = v16;
      var1 = vcvts_n_f32_u32(v15, 1uLL);
    }

    v11 = 13;
LABEL_14:
    matrix[v11] = var1;
    orientation = [(MRTexture *)[(MRImage *)self texture] orientation];
    if ((orientation & 0xFE) == 0)
    {
      goto LABEL_35;
    }

    v19 = orientation;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    MRMatrix_Clear(&v26);
    if (v19 <= 4u)
    {
      if (v19 != 2)
      {
        if (v19 != 3)
        {
          if (v19 == 4)
          {
            DWORD1(v27) = -1082130432;
          }

          goto LABEL_34;
        }

        DWORD1(v27) = -1082130432;
      }

      LODWORD(v26) = -1082130432;
      goto LABEL_34;
    }

    if (v19 > 6u)
    {
      if (v19 != 7)
      {
        if (v19 == 8)
        {
          v20 = 0xBF80000000000000;
          v21 = 1065353216;
          goto LABEL_27;
        }

LABEL_34:
        MRMatrix_PreMultiply(&v26, matrix);
        goto LABEL_35;
      }

      v22 = 1065353216;
      v23 = 0x3F80000000000000;
    }

    else
    {
      if (v19 != 5)
      {
        if (v19 == 6)
        {
          v20 = 0x3F80000000000000;
          v21 = 3212836864;
LABEL_27:
          *&v26 = v20;
          *&v27 = v21;
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      v22 = 3212836864;
      v23 = 0xBF80000000000000;
    }

    *&v27 = v22;
    *&v26 = v23;
    goto LABEL_34;
  }

  v8 = 0.0;
  if (ratio > 0.0)
  {
    [(MRImage *)self aspectRatio];
    *&v8 = v8;
  }

  [(MRImage *)referenceImage getMatrix:matrix forReferenceAspectRatio:v8];
LABEL_35:
  if (ratio > 0.0 && (self->_flags & 2) != 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    [(MRImage *)self kenburnsMatrix:&v26 forReferenceAspectRatio:COERCE_DOUBLE(LODWORD(ratio))];
    MRMatrix_PreMultiply(&v26, matrix);
  }

  else
  {
    scale = self->_scale;
    v25 = 1.0;
    if (scale > 0.0)
    {
      v25 = 1.0 / scale;
    }

    *matrix = v25 * *matrix;
    matrix[5] = v25 * matrix[5];
    *(matrix + 6) = vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*(matrix + 12)), *&self->_centerX));
  }
}

- (CGSize)relativeSizeInContextPixelSize:(CGSize)size
{
  height = size.height;
  v4 = vdivq_f64(vaddq_f64(self->_size, self->_size), size);
  v5 = v4.f64[1];
  result.width = v4.f64[0];
  result.height = v5;
  return result;
}

- (NSString)filterID
{
  result = self->_filterID;
  if (!result)
  {
    result = &self->_referenceImage->super.isa;
    if (result)
    {
      return [(NSString *)result filterID];
    }
  }

  return result;
}

- (MRTexture)texture
{
  referenceImage = self->_referenceImage;
  if (referenceImage)
  {

    return [(MRImage *)referenceImage texture];
  }

  else
  {
    result = self->_texture;
    if (!result)
    {
      result = self->_textureSource;
      if (result)
      {
        result = [(MRTexture *)result texture];
        self->_texture = result;
      }
    }
  }

  return result;
}

- (EAGLContext)updateGLContext
{
  texture = [(MRImage *)self texture];

  return [(MRTexture *)texture glContext];
}

- (void)uploadCGImage:(CGImage *)image toTextureRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  texture = [(MRImage *)self texture];
  isMonochromatic = [(MRTexture *)texture isMonochromatic];
  v11 = 4.0;
  if (isMonochromatic)
  {
    v11 = 1.0;
  }

  v12 = (width * v11);
  if (isMonochromatic)
  {
    v13 = 0;
  }

  else
  {
    v13 = 8194;
  }

  v14 = malloc_type_malloc((height * (width * v11)), 0x9CC37918uLL);
  ColorSpace = CGImageGetColorSpace(image);
  v16 = CGBitmapContextCreate(v14, width, height, 8uLL, v12, ColorSpace, v13);
  CGContextSetBlendMode(v16, kCGBlendModeCopy);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = width;
  v18.size.height = height;
  CGContextDrawImage(v16, v18, image);
  CGContextRelease(v16);
  [(MRTexture *)texture uploadData:v14 rowBytes:v12 toRect:x, y, width, height];

  free(v14);
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end