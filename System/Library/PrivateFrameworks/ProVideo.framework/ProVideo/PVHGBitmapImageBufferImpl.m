@interface PVHGBitmapImageBufferImpl
- (CGImage)cgImage;
- (CGSize)size;
- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3;
- (PVHGBitmapImageBufferImpl)initWithHGBitmap:(HGRef<HGBitmap>)a3;
- (void)dealloc;
@end

@implementation PVHGBitmapImageBufferImpl

- (PVHGBitmapImageBufferImpl)initWithHGBitmap:(HGRef<HGBitmap>)a3
{
  v9.receiver = self;
  v9.super_class = PVHGBitmapImageBufferImpl;
  v4 = [(PVHGBitmapImageBufferImpl *)&v9 init];
  v5 = v4;
  if (v4)
  {
    m_Obj = v4->_bitmap.m_Obj;
    v7 = *a3.m_Obj;
    if (m_Obj != *a3.m_Obj)
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v5->_bitmap.m_Obj);
        v7 = *a3.m_Obj;
      }

      v5->_bitmap.m_Obj = v7;
      if (v7)
      {
        (*(*v7 + 16))(v7);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  generatedCGImage = self->_generatedCGImage;
  if (generatedCGImage)
  {
    CGImageRelease(generatedCGImage);
  }

  self->_generatedCGImage = 0;
  v4.receiver = self;
  v4.super_class = PVHGBitmapImageBufferImpl;
  [(PVHGBitmapImageBufferImpl *)&v4 dealloc];
}

- (CGImage)cgImage
{
  generatedCGImage = self->_generatedCGImage;
  if (!generatedCGImage)
  {
    v4 = +[PVColorSpace sRGBColorSpace];
    Storage = HGBitmap::GetStorage(self->_bitmap.m_Obj);
    if (Storage)
    {
      if (v6)
      {
        if (v6[3])
        {
          v7 = v6[3];

          v4 = v7;
        }
      }
    }

    v12 = 0;
    v13 = 0;
    space = 0;
    PVImagePropertiesForColorSpace(v4, 0, &v12);
    m_Obj = self->_bitmap.m_Obj;
    if (m_Obj)
    {
      (*(*m_Obj + 16))(m_Obj);
      v9 = self->_bitmap.m_Obj;
    }

    else
    {
      v9 = 0;
    }

    v10 = CGDataProviderCreateWithData(v9, *(v9 + 10), *(v9 + 8) * (*(v9 + 8) - *(v9 + 6)), freeUnderlyingHGBitmap);
    generatedCGImage = CGImageCreate((*(v9 + 7) - *(v9 + 5)), (*(v9 + 8) - *(v9 + 6)), SHIDWORD(v12), 4 * SHIDWORD(v12), *(v9 + 8), space, v13, v10, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v10);
    self->_generatedCGImage = generatedCGImage;
  }

  return generatedCGImage;
}

- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3
{
  m_Obj = self->_bitmap.m_Obj;
  *v3 = m_Obj;
  if (m_Obj)
  {
    return (*(*m_Obj + 16))();
  }

  return m_Obj;
}

- (CGSize)size
{
  v2 = (*(self->_bitmap.m_Obj + 7) - *(self->_bitmap.m_Obj + 5));
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

@end