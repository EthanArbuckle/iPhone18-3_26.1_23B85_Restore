@interface FxImage
+ (id)alloc;
- ($FB0B61818339023072F3326201ECEE09)imageInfo;
- (BOOL)_verifyImage;
- (BOOL)containsPointX:(int)x Y:(int)y;
- (CGColorSpace)colorSpace;
- (CGRect)bounds;
- (FxImage)init;
- (FxImage)initWithInfo:(id *)info;
- (FxRect)dod;
- (id)copyWithZone:(_NSZone *)zone;
- (id)inversePixelTransform;
- (unint64_t)fxColorPrimaries;
- (void)dealloc;
- (void)setColorInfo:(unint64_t)info;
- (void)setColorSpace:(CGColorSpace *)space;
- (void)setFxColorPrimaries:(unint64_t)primaries;
- (void)setPixelTransform:(id)transform;
- (void)setWidth:(unint64_t)width andHeight:(unint64_t)height;
@end

@implementation FxImage

+ (id)alloc
{
  if (objc_opt_class() == self)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = NSStringFromSelector(a2);
    [v5 raise:v6 format:{@"*** %@ sent to abstract class %@. Use a subclass instead.", v7, objc_opt_class()}];
    return 0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___FxImage;
    return objc_msgSendSuper2(&v8, sel_alloc);
  }
}

- (FxImage)init
{
  v11.receiver = self;
  v11.super_class = FxImage;
  result = [(FxImage *)&v11 init];
  if (result)
  {
    v3 = result;
    result = operator new(0xD0uLL, MEMORY[0x277D826F0]);
    v4 = result;
    if (result)
    {
      result->super.isa = 0;
      result->_imagePriv = 0;
      result[1] = xmmword_260847290;
      result[2].super.isa = 0;
      result[2]._imagePriv = 0;
      result[3].super.isa = 2;
      LOBYTE(result[3]._imagePriv) = 1;
      result[4]._imagePriv = 0;
      result[5].super.isa = 0;
      result[4].super.isa = 0x3FF0000000000000;
      __asm { FMOV            V0.2D, #1.0 }

      *&result[5]._imagePriv = _Q0;
      result[7].super.isa = 0;
      result[7]._imagePriv = 0;
      result[6]._imagePriv = 65792;
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      result[8] = *MEMORY[0x277CBF3A0];
      result[9] = v10;
      result[10].super.isa = 0;
      result[10]._imagePriv = 0;
      result[11].super.isa = objc_alloc_init(FxMatrix44);
      v4[11]._imagePriv = 0;
      LODWORD(v4[12].super.isa) = 0;
      result = v3;
      v4[12]._imagePriv = 0;
    }

    v3->_imagePriv = v4;
  }

  return result;
}

- (FxImage)initWithInfo:(id *)info
{
  result = [(FxImage *)self init];
  if (result)
  {
    imagePriv = result->_imagePriv;
    if (imagePriv)
    {
      *&imagePriv->var0.var0 = *&info->var0;
      v6 = *&info->var2;
      v7 = *&info->var4;
      v8 = *&info->var6;
      imagePriv->var0.var8 = info->var8;
      *&imagePriv->var0.var4 = v7;
      *&imagePriv->var0.var6 = v8;
      *&imagePriv->var0.var2 = v6;
      var0 = info->var0;
      var1 = info->var1;
      v11 = result->_imagePriv;
      v11->var9.var0 = SLODWORD(info->var0) / -2;
      v11->var9.var1 = var1 / -2;
      v11->var9.var2 = var0 - var0 / 2;
      v11->var9.var3 = var1 - var1 / 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FxImage allocWithZone:zone];
  if (self)
  {
    [(FxImage *)self imageInfo];
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
  }

  v5 = [(FxImage *)v4 initWithInfo:v12];
  imagePriv = self->_imagePriv;
  v7 = v5->_imagePriv;
  *&v7->var1 = *&imagePriv->var1;
  *&v7->var3 = *&imagePriv->var3;
  v7->var5 = imagePriv->var5;
  v7->var11 = imagePriv->var11;
  CGColorSpaceRetain(self->_imagePriv->var11);
  v5->_imagePriv->var6 = self->_imagePriv->var6;
  v5->_imagePriv->var7 = self->_imagePriv->var7;
  v8 = self->_imagePriv;
  v9 = v5->_imagePriv;
  size = v8->var8.size;
  v9->var8.origin = v8->var8.origin;
  v9->var8.size = size;
  v5->_imagePriv->var9 = self->_imagePriv->var9;
  v5->_imagePriv->var10 = [[FxMatrix44 alloc] initWithFxMatrix:self->_imagePriv->var10];
  return v5;
}

- (void)dealloc
{
  imagePriv = self->_imagePriv;
  if (imagePriv)
  {
    var6 = imagePriv->var6;
    if (!var6 || (var6(imagePriv->var7, a2), (imagePriv = self->_imagePriv) != 0))
    {

      CGColorSpaceRelease(self->_imagePriv->var11);
      v5 = self->_imagePriv;
      if (v5)
      {
        MEMORY[0x2666E9F00](v5, 0x10A0C4053556ED8);
      }
    }
  }

  v6.receiver = self;
  v6.super_class = FxImage;
  [(FxImage *)&v6 dealloc];
}

- ($FB0B61818339023072F3326201ECEE09)imageInfo
{
  var1 = self->var1;
  v4 = *(var1 + 48);
  *&retstr->var4 = *(var1 + 32);
  *&retstr->var6 = v4;
  retstr->var8 = *(var1 + 64);
  v5 = *(var1 + 16);
  *&retstr->var0 = *var1;
  *&retstr->var2 = v5;
  return self;
}

- (BOOL)containsPointX:(int)x Y:(int)y
{
  if (x < 0)
  {
    return 0;
  }

  result = 0;
  if ((y & 0x80000000) == 0)
  {
    imagePriv = self->_imagePriv;
    if (SLODWORD(imagePriv->var0.var0) > x)
    {
      return SLODWORD(imagePriv->var0.var1) > y;
    }
  }

  return result;
}

- (CGRect)bounds
{
  imagePriv = self->_imagePriv;
  x = imagePriv->var8.origin.x;
  y = imagePriv->var8.origin.y;
  width = imagePriv->var8.size.width;
  height = imagePriv->var8.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (FxRect)dod
{
  imagePriv = self->_imagePriv;
  v3 = *&imagePriv->var9.var0;
  v4 = *&imagePriv->var9.var2;
  result.var2 = v4;
  result.var3 = HIDWORD(v4);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (id)inversePixelTransform
{
  v2 = [[FxMatrix44 alloc] initWithInverseOfFxMatrix:self->_imagePriv->var10];

  return v2;
}

- (void)setWidth:(unint64_t)width andHeight:(unint64_t)height
{
  imagePriv = self->_imagePriv;
  imagePriv->var0.var0 = width;
  imagePriv->var0.var1 = height;
}

- (void)setColorInfo:(unint64_t)info
{
  if (info == 2)
  {
    imagePriv = self->_imagePriv;
    v4 = BYTE2(imagePriv->var5);
    v5 = 256;
    goto LABEL_5;
  }

  if (!info)
  {
    imagePriv = self->_imagePriv;
    v4 = BYTE2(imagePriv->var5);
    v5 = 2048;
LABEL_5:
    imagePriv->var5 = v5 | (v4 << 16);
    return;
  }

  NSLog(&cfstr_FximageSetcolo.isa, a2);
}

- (CGColorSpace)colorSpace
{
  imagePriv = self->_imagePriv;
  if (sColorSpaceVendor)
  {
    return sColorSpaceVendor(imagePriv->var5);
  }

  else
  {
    return imagePriv->var11;
  }
}

- (void)setColorSpace:(CGColorSpace *)space
{
  CGColorSpaceRetain(space);
  CGColorSpaceRelease(self->_imagePriv->var11);
  self->_imagePriv->var11 = space;
}

- (unint64_t)fxColorPrimaries
{
  v2 = BYTE2(self->_imagePriv->var5);
  if (v2 == 1)
  {
    return 0;
  }

  if (v2 != 9)
  {
    [FxImage fxColorPrimaries];
  }

  return 1;
}

- (void)setFxColorPrimaries:(unint64_t)primaries
{
  if (primaries == 1)
  {
    imagePriv = self->_imagePriv;
    v4 = BYTE1(imagePriv->var5);
    v5 = 589824;
    goto LABEL_5;
  }

  if (!primaries)
  {
    imagePriv = self->_imagePriv;
    v4 = BYTE1(imagePriv->var5);
    v5 = 0x10000;
LABEL_5:
    imagePriv->var5 = v5 | (v4 << 8);
    return;
  }

  NSLog(&cfstr_FximageSetfxco.isa, a2);
}

- (void)setPixelTransform:(id)transform
{
  var10 = self->_imagePriv->var10;
  if (var10 != transform)
  {

    self->_imagePriv->var10 = transform;

    transformCopy = transform;
  }
}

- (BOOL)_verifyImage
{
  imagePriv = self->_imagePriv;
  if (!imagePriv)
  {
    NSLog(&cfstr_FximageVerifyi.isa);
    return 0;
  }

  if (imagePriv->var0.var0 && imagePriv->var0.var1 && imagePriv->var0.var3 == 4 && imagePriv->var0.var7)
  {
    v4 = 1;
  }

  else
  {
    NSLog(&cfstr_FximageVerifyi_0.isa, a2);
    v4 = 0;
  }

  var2 = imagePriv->var0.var2;
  v13 = var2 > 0x20;
  v6 = (1 << var2) & 0x100010100;
  if (v13 || v6 == 0)
  {
    NSLog(&cfstr_FximageVerifyi_1.isa, a2);
    v4 = 0;
  }

  if (imagePriv->var0.var4 - 1 >= 3)
  {
    NSLog(&cfstr_FximageVerifyi_2.isa, a2);
    v4 = 0;
  }

  if ((imagePriv->var0.var5 | 2) != 2)
  {
    NSLog(&cfstr_FximageVerifyi_3.isa);
    v4 = 0;
  }

  if ((imagePriv->var0.var6 | 2) != 2)
  {
    NSLog(&cfstr_FximageVerifyi_4.isa);
    v4 = 0;
  }

  if (imagePriv->var0.var8 <= 0.0)
  {
    NSLog(&cfstr_FximageVerifyi_5.isa);
    v4 = 0;
  }

  v8 = self->_imagePriv;
  if (v8->var1 >= 3)
  {
    NSLog(&cfstr_FximageVerifyi_6.isa);
    v4 = 0;
    v8 = self->_imagePriv;
  }

  if (v8->var2 >= 3)
  {
    NSLog(&cfstr_FximageVerifyi_7.isa);
    v4 = 0;
    v8 = self->_imagePriv;
  }

  v9 = *&v8->var3;
  v10 = (v9 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v11 = ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v9 >= 0)
  {
    v11 = 0;
    v10 = 0;
  }

  v12 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  if (!v12)
  {
    v10 = 1;
  }

  v13 = v12 <= 0x7FF0000000000000;
  v14 = v12 == 0x7FF0000000000000 || v10;
  if (!v13)
  {
    v14 = 1;
  }

  if ((v14 | v11) == 1)
  {
    NSLog(&cfstr_FximageVerifyi_8.isa);
    v4 = 0;
    v8 = self->_imagePriv;
  }

  v15 = *&v8->var4;
  v16 = (v15 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v17 = ((v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v15 >= 0)
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = v15 & 0x7FFFFFFFFFFFFFFFLL;
  if (!v18)
  {
    v16 = 1;
  }

  v19 = v18 <= 0x7FF0000000000000;
  v20 = v18 == 0x7FF0000000000000 || v16;
  if (!v19)
  {
    v20 = 1;
  }

  if ((v20 | v17) == 1)
  {
    NSLog(&cfstr_FximageVerifyi_9.isa);
    v4 = 0;
    v8 = self->_imagePriv;
  }

  var5 = v8->var5;
  if (BYTE2(var5) > 0xCu || ((1 << SBYTE2(var5)) & 0x1202) == 0 || BYTE1(var5) > 0x12u || ((1 << SBYTE1(var5)) & 0x52102) == 0 || v8->var5)
  {
    NSLog(&cfstr_FximageVerifyi_10.isa);
    v4 = 0;
    v8 = self->_imagePriv;
  }

  if (CGRectIsEmpty(v8->var8))
  {
    NSLog(&cfstr_FximageVerifyi_11.isa);
    v4 = 0;
  }

  v22 = self->_imagePriv;
  if (!v22->var10)
  {
    NSLog(&cfstr_FximageVerifyi_12.isa);
    v4 = 0;
    v22 = self->_imagePriv;
  }

  if (!v22->var11)
  {
    NSLog(&cfstr_FximageVerifyi_13.isa);
    return 0;
  }

  return v4;
}

@end