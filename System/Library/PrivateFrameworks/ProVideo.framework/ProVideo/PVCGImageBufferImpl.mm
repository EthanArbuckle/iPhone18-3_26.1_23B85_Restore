@interface PVCGImageBufferImpl
- (BOOL)canCreateCVPixelBuffer;
- (CGSize)size;
- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3;
- (HGRef<HGCVPixelBuffer>)cvPixelBufferWithColorSpace:(id)a3;
- (PVCGImageBufferImpl)initWithCGImage:(CGImage *)a3;
- (PVCGImageBufferImpl)initWithCGImage:(CGImage *)a3 withGainMap:(CGImage *)a4;
- (PVCGImageBufferImpl)initWithCGImage:(CGImage *)a3 withSourceColorSpace:(id)a4;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation PVCGImageBufferImpl

- (PVCGImageBufferImpl)initWithCGImage:(CGImage *)a3
{
  v7.receiver = self;
  v7.super_class = PVCGImageBufferImpl;
  v4 = [(PVCGImageBufferImpl *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_image = a3;
    CGImageRetain(a3);
  }

  return v5;
}

- (PVCGImageBufferImpl)initWithCGImage:(CGImage *)a3 withGainMap:(CGImage *)a4
{
  v5 = [(PVCGImageBufferImpl *)self initWithCGImage:a3];
  v6 = v5;
  if (v5)
  {
    v5->_gainMap = a4;
    CGImageRetain(a4);
  }

  return v6;
}

- (PVCGImageBufferImpl)initWithCGImage:(CGImage *)a3 withSourceColorSpace:(id)a4
{
  v7 = a4;
  v8 = [(PVCGImageBufferImpl *)self initWithCGImage:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceColorSpace, a4);
  }

  return v9;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  self->_image = 0;
  CGImageRelease(self->_gainMap);
  self->_gainMap = 0;
  v3.receiver = self;
  v3.super_class = PVCGImageBufferImpl;
  [(PVCGImageBufferImpl *)&v3 dealloc];
}

- (BOOL)canCreateCVPixelBuffer
{
  Width = CGImageGetWidth(self->_image);
  Height = CGImageGetHeight(self->_image);
  v5 = Width;

  return PVCanCreateCVPixelBuffer(*&v5);
}

- (HGRef<HGCVPixelBuffer>)cvPixelBufferWithColorSpace:(id)a3
{
  v5 = v3;
  v6 = a3;
  m_Obj = self->_generatedPixelBuffer.m_Obj;
  if (m_Obj)
  {
    *v5 = m_Obj;
    (*(*m_Obj + 16))(m_Obj);
    goto LABEL_44;
  }

  image = self->_image;
  if (!image)
  {
    *v5 = 0;
    goto LABEL_44;
  }

  if (v6)
  {
    v9 = v6;
LABEL_6:
    v10 = v9;
    goto LABEL_9;
  }

  v10 = [PVColorSpace pvColorSpaceFromCGColorSpace:CGImageGetColorSpace(image)];
  if (!v10)
  {
    v9 = +[PVColorSpace sRGBColorSpace];
    goto LABEL_6;
  }

LABEL_9:
  v30 = 0uLL;
  v31 = 0;
  PVImagePropertiesForColorSpace(v10, 0, &v30);
  v11 = 0;
  if (v6 && self->_sourceColorSpace)
  {
    v11 = [v6 isProResLogColorSpace] ^ 1;
  }

  if ([v6 isProResLogColorSpace])
  {
    NSLog(&cfstr_ProResLogAsAnO.isa);
  }

  if (v11)
  {
    v12 = self->_image;
    sourceColorSpace = self->_sourceColorSpace;
    v29 = 0;
    PVCreateCVPixelBufferFromCGImageRefWithColorSpaces(v12, sourceColorSpace, v10, &v29, &v27);
    v14 = self->_generatedPixelBuffer.m_Obj;
    v15 = v27;
    if (v14 == v27)
    {
      if (v14)
      {
        (*(*v27 + 24))(v27);
      }
    }

    else
    {
      if (v14)
      {
        (*(*v14 + 24))(v14);
        v15 = v27;
      }

      self->_generatedPixelBuffer.m_Obj = v15;
      *&v27 = 0;
    }

    if (v29)
    {
      ((*v29)[3])(v29);
    }
  }

  else
  {
    gainMap = self->_gainMap;
    if (gainMap)
    {
      v17 = self->_image;
      v27 = v30;
      v28 = v31;
      v26 = 0;
      PVCreateCVPixelBufferFromCGImageRefAndGainMap(v17, gainMap, &v27, &v26, &v29);
      v18 = self->_generatedPixelBuffer.m_Obj;
      v19 = v29;
      if (v18 == v29)
      {
        if (v18)
        {
          ((*v29)[3])(v29);
        }
      }

      else
      {
        if (v18)
        {
          ((*v18)[3])(v18);
          v19 = v29;
        }

        self->_generatedPixelBuffer.m_Obj = v19;
        v29 = 0;
      }

      if (v26)
      {
        (*(*v26 + 24))(v26);
      }
    }

    else
    {
      v20 = self->_image;
      v27 = v30;
      v28 = v31;
      v25 = 0;
      PVCreateCVPixelBufferFromCGImageRef(v20, &v27, &v25, &v29);
      v21 = self->_generatedPixelBuffer.m_Obj;
      v22 = v29;
      if (v21 == v29)
      {
        if (v21)
        {
          ((*v29)[3])(v29);
        }
      }

      else
      {
        if (v21)
        {
          ((*v21)[3])(v21);
          v22 = v29;
        }

        self->_generatedPixelBuffer.m_Obj = v22;
        v29 = 0;
      }

      if (v25)
      {
        (*(*v25 + 24))(v25);
      }
    }
  }

  v23 = self->_generatedPixelBuffer.m_Obj;
  *v5 = v23;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

LABEL_44:
  return v24;
}

- (HGRef<HGBitmap>)hgBitmapWithColorSpace:(id)a3
{
  v5 = v3;
  v6 = a3;
  m_Obj = self->_generatedBitmap.m_Obj;
  if (!m_Obj)
  {
    image = self->_image;
    if (!image)
    {
      *v5 = 0;
      goto LABEL_19;
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v10 = [PVColorSpace pvColorSpaceFromCGColorSpace:CGImageGetColorSpace(image)];
      if (v10)
      {
LABEL_9:
        PVCreateHGBitmapFromCGImageRefWithStorage(self->_image, v10, &v14);
        v11 = self->_generatedBitmap.m_Obj;
        v12 = v14;
        if (v11 == v14)
        {
          if (!v11)
          {
            *v5 = 0;
LABEL_18:

            goto LABEL_19;
          }

          (*(*v14 + 24))();
          v12 = self->_generatedBitmap.m_Obj;
        }

        else
        {
          if (v11)
          {
            (*(*v11 + 24))(self->_generatedBitmap.m_Obj);
            v12 = v14;
          }

          self->_generatedBitmap.m_Obj = v12;
        }

        *v5 = v12;
        if (v12)
        {
          (*(*v12 + 16))(v12);
        }

        goto LABEL_18;
      }

      v9 = +[PVColorSpace sRGBColorSpace];
    }

    v10 = v9;
    goto LABEL_9;
  }

  *v5 = m_Obj;
  (*(*m_Obj + 16))(m_Obj);
LABEL_19:

  return v13;
}

- (CGSize)size
{
  Width = CGImageGetWidth(self->_image);
  Height = CGImageGetHeight(self->_image);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end