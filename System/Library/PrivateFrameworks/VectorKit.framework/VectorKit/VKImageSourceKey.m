@interface VKImageSourceKey
- ($C28CD4A45FD07A4F97CC9D5F91F25271)transitLineColor;
- (CGPoint)imageCenter;
- (VKImageSourceKey)initWithDataType:(unsigned __int8)a3;
- (VKImageSourceKey)initWithIconAttributeKey:(unsigned int)a3 attributeValue:(unsigned int)a4;
- (VKImageSourceKey)initWithIconName:(const char *)a3;
- (VKImageSourceKey)initWithLabelImageKey:(const void *)a3;
- (VKImageSourceKey)initWithShieldName:(const char *)a3 text:(const char *)a4 locale:(const char *)a5 color:(Color<unsigned)char;
- (VKImageSourceKey)initWithShieldText:(const char *)a3 locale:(const char *)a4 type:(unsigned int)a5 color:(Color<unsigned)char;
- (id).cxx_construct;
- (id)_initWithKeyType:(unsigned int)a3;
@end

@implementation VKImageSourceKey

- (id).cxx_construct
{
  *(self + 29) = 0;
  *(self + 30) = 0;
  return self;
}

- (CGPoint)imageCenter
{
  x = self->_imageCenter.x;
  y = self->_imageCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)transitLineColor
{
  v2.i32[0] = self->_shieldColor;
  v7 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v2))), vdupq_n_s32(0x3B808081u));
  geo::Color<float,4,(geo::ColorSpace)2>::Color<(geo::ColorSpace)0,int,void>(v8, &v7);
  v3 = *v8;
  v4 = *&v8[1];
  v5 = *&v8[2];
  v6 = *&v8[3];
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (VKImageSourceKey)initWithLabelImageKey:(const void *)a3
{
  v4 = self;
  v5 = 0;
  self->_sizeGroup = [VKInternalIconManager convertGrlSizeGroup:*(*a3 + 168)];
  v6 = *a3;
  v4->_contentScale = *(*a3 + 56);
  v4->_iconVariant = *(v6 + 172);
  v7 = *a3;
  v4->_countryCode = *(*a3 + 192);
  v8 = *(v7 + 113);
  if (v8 > 7)
  {
    if (v8 == 8)
    {
      v11 = [(VKImageSourceKey *)v4 initWithIconAttributeKey:*(v7 + 60) attributeValue:*(v7 + 64)];
LABEL_18:
      v4 = v11;
      v5 = v4;
      goto LABEL_19;
    }

    if (v8 == 9)
    {
      v12 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v12 = *v12;
      }

      v11 = [(VKImageSourceKey *)v4 initWithIconName:v12];
      goto LABEL_18;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v13 = (v7 + 120);
      if (*(v7 + 143) < 0)
      {
        v13 = *v13;
      }

      v14 = *(v7 + 152);
      v17 = *(v7 + 160);
      v11 = [(VKImageSourceKey *)v4 initWithShieldText:v13 locale:0 type:v14 color:&v17];
      goto LABEL_18;
    }

    if (v8 == 2)
    {
      v9 = (v7 + 16);
      if (*(v7 + 39) < 0)
      {
        v9 = *v9;
      }

      v10 = (v7 + 120);
      if (*(v7 + 143) < 0)
      {
        v10 = *v10;
      }

      v16 = *(v7 + 160);
      v11 = [(VKImageSourceKey *)v4 initWithShieldName:v9 text:v10 locale:0 color:&v16];
      goto LABEL_18;
    }
  }

LABEL_19:

  return v5;
}

- (VKImageSourceKey)initWithIconName:(const char *)a3
{
  v4 = [(VKImageSourceKey *)self _initWithKeyType:5];
  if (v4)
  {
    if (a3 && *a3)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
      imageName = v4->_imageName;
      v4->_imageName = v5;
    }

    v7 = v4;
  }

  return v4;
}

- (VKImageSourceKey)initWithIconAttributeKey:(unsigned int)a3 attributeValue:(unsigned int)a4
{
  v6 = [(VKImageSourceKey *)self _initWithKeyType:2];
  v7 = v6;
  if (v6)
  {
    v6->_iconAttributeKey = a3;
    v6->_iconAttributeValue = a4;
    v8 = v6;
  }

  return v7;
}

- (VKImageSourceKey)initWithShieldName:(const char *)a3 text:(const char *)a4 locale:(const char *)a5 color:(Color<unsigned)char
{
  v6 = *a6._backing._e;
  v10 = [(VKImageSourceKey *)self _initWithKeyType:4];
  if (v10)
  {
    if (a3 && *a3)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
      imageName = v10->_imageName;
      v10->_imageName = v11;
    }

    if (a4 && *a4)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a4];
      shieldText = v10->_shieldText;
      v10->_shieldText = v13;
    }

    if (a5 && *a5)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a5];
      shieldTextLocale = v10->_shieldTextLocale;
      v10->_shieldTextLocale = v15;
    }

    for (i = 0; i != 4; ++i)
    {
      v10->_shieldColor._backing._e[i] = *(v6 + i);
    }

    v18 = v10;
  }

  return v10;
}

- (VKImageSourceKey)initWithShieldText:(const char *)a3 locale:(const char *)a4 type:(unsigned int)a5 color:(Color<unsigned)char
{
  v6 = *a6._backing._e;
  v10 = [(VKImageSourceKey *)self _initWithKeyType:1];
  if (v10)
  {
    if (a3 && *a3)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a3];
      shieldText = v10->_shieldText;
      v10->_shieldText = v11;
    }

    if (a4 && *a4)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a4];
      shieldTextLocale = v10->_shieldTextLocale;
      v10->_shieldTextLocale = v13;
    }

    v15 = 0;
    v10->_shieldType = a5;
    do
    {
      v10->_shieldColor._backing._e[v15] = *(v6 + v15);
      ++v15;
    }

    while (v15 != 4);
    v16 = v10;
  }

  return v10;
}

- (VKImageSourceKey)initWithDataType:(unsigned __int8)a3
{
  result = [(VKImageSourceKey *)self _initWithKeyType:3];
  if (result)
  {
    result->_dataType = a3;
  }

  return result;
}

- (id)_initWithKeyType:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = VKImageSourceKey;
  result = [(VKImageSourceKey *)&v5 init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

@end