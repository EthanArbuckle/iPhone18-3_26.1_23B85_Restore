@interface PVCVPixelBufferImageBufferImpl
- (CGImage)cgImage;
- (CGSize)size;
- (HGRef<HGCVPixelBuffer>)cvPixelBufferWithColorSpace:(id)space;
- (PVCVPixelBufferImageBufferImpl)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (PVCVPixelBufferImageBufferImpl)initWithCVPixelBuffer:(__CVBuffer *)buffer withSourceColorSpace:(id)space;
- (PVCVPixelBufferImageBufferImpl)initWithHGCVPixelBuffer:(HGRef<HGCVPixelBuffer>)buffer;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation PVCVPixelBufferImageBufferImpl

- (PVCVPixelBufferImageBufferImpl)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  v9.receiver = self;
  v9.super_class = PVCVPixelBufferImageBufferImpl;
  v4 = [(PVCVPixelBufferImageBufferImpl *)&v9 init];
  if (v4)
  {
    HGCVPixelBuffer::create(buffer, &v8);
    m_Obj = v4->_pixelBuffer.m_Obj;
    v6 = v8;
    if (m_Obj == v8)
    {
      if (m_Obj)
      {
        (*(*v8 + 24))(v8);
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(m_Obj);
        v6 = v8;
      }

      v4->_pixelBuffer.m_Obj = v6;
    }
  }

  return v4;
}

- (PVCVPixelBufferImageBufferImpl)initWithHGCVPixelBuffer:(HGRef<HGCVPixelBuffer>)buffer
{
  v9.receiver = self;
  v9.super_class = PVCVPixelBufferImageBufferImpl;
  v4 = [(PVCVPixelBufferImageBufferImpl *)&v9 init];
  v5 = v4;
  if (v4)
  {
    m_Obj = v4->_pixelBuffer.m_Obj;
    v7 = *buffer.m_Obj;
    if (m_Obj != *buffer.m_Obj)
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(v5->_pixelBuffer.m_Obj);
        v7 = *buffer.m_Obj;
      }

      v5->_pixelBuffer.m_Obj = v7;
      if (v7)
      {
        (*(*v7 + 16))(v7);
      }
    }
  }

  return v5;
}

- (PVCVPixelBufferImageBufferImpl)initWithCVPixelBuffer:(__CVBuffer *)buffer withSourceColorSpace:(id)space
{
  spaceCopy = space;
  v13.receiver = self;
  v13.super_class = PVCVPixelBufferImageBufferImpl;
  v8 = [(PVCVPixelBufferImageBufferImpl *)&v13 init];
  if (v8)
  {
    HGCVPixelBuffer::create(buffer, &v12);
    m_Obj = v8->_pixelBuffer.m_Obj;
    v10 = v12;
    if (m_Obj == v12)
    {
      if (m_Obj)
      {
        (*(*v12 + 24))(v12);
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(m_Obj);
        v10 = v12;
      }

      v8->_pixelBuffer.m_Obj = v10;
    }

    objc_storeStrong(&v8->_sourceColorSpace, space);
  }

  return v8;
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
  v4.super_class = PVCVPixelBufferImageBufferImpl;
  [(PVCVPixelBufferImageBufferImpl *)&v4 dealloc];
}

- (CGImage)cgImage
{
  generatedCGImage = self->_generatedCGImage;
  if (generatedCGImage)
  {
    return generatedCGImage;
  }

  v4 = CVBufferCopyAttachment(*(self->_pixelBuffer.m_Obj + 3), *MEMORY[0x277CC4C00], 0);
  v5 = CVBufferCopyAttachment(*(self->_pixelBuffer.m_Obj + 3), *MEMORY[0x277CC4CC0], 0);
  if (!v4)
  {
    goto LABEL_11;
  }

  if (CFEqual(v4, *MEMORY[0x277CC4C30]))
  {
    v6 = +[PVColorSpace p3d65GammaColorSpace];
    goto LABEL_12;
  }

  if (CFEqual(v4, *MEMORY[0x277CC4C20]))
  {
LABEL_11:
    v6 = +[PVColorSpace sRGBColorSpace];
    goto LABEL_12;
  }

  if (!v5 || !CFEqual(v4, *MEMORY[0x277CC4C18]))
  {
    v7 = objc_opt_class();
    NSLog(&cfstr_PUnknownColorP.isa, v7, self, v4);
    goto LABEL_11;
  }

  if (CFEqual(v5, *MEMORY[0x277CC4CD0]))
  {
    v6 = +[PVColorSpace rec2100HLGColorSpace];
  }

  else
  {
    if (!CFEqual(v5, *MEMORY[0x277CC4CE0]))
    {
      v8 = 0;
      goto LABEL_13;
    }

    v6 = +[PVColorSpace rec2020LinearColorSpace];
  }

LABEL_12:
  v8 = v6;
LABEL_13:
  v14 = 0uLL;
  v15 = 0;
  PVImagePropertiesForColorSpace(v8, 0, &v14);
  m_Obj = self->_pixelBuffer.m_Obj;
  v13 = m_Obj;
  if (m_Obj)
  {
    (*(*m_Obj + 16))(m_Obj);
  }

  v11 = v14;
  v12 = v15;
  self->_generatedCGImage = PVCreateCGImageRefFromCVPixelBuffer(&v13, &v11);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  generatedCGImage = self->_generatedCGImage;

  return generatedCGImage;
}

- (HGRef<HGCVPixelBuffer>)cvPixelBufferWithColorSpace:(id)space
{
  v5 = v3;
  spaceCopy = space;
  v7 = spaceCopy;
  if (self->_pixelBuffer.m_Obj)
  {
    if ([spaceCopy isProResLogColorSpace])
    {
      NSLog(&cfstr_ProResLogAsAnO.isa);
    }

    if (v7 && self->_sourceColorSpace && ([v7 isProResLogColorSpace] & 1) == 0)
    {
      m_Obj = self->_generatedPixelBuffer.m_Obj;
      if (m_Obj)
      {
        *v5 = m_Obj;
LABEL_13:
        (*(*m_Obj + 16))();
        goto LABEL_14;
      }

      v10 = *(self->_pixelBuffer.m_Obj + 3);
      sourceColorSpace = self->_sourceColorSpace;
      v14 = 0;
      PVCreateCVPixelBufferFromCVPixelBufferWithColorSpaces(v10, sourceColorSpace, v7, &v14, &v15);
      v12 = self->_generatedPixelBuffer.m_Obj;
      v13 = v15;
      if (v12 == v15)
      {
        if (v12)
        {
          (*(*v15 + 3))(v15);
        }
      }

      else
      {
        if (v12)
        {
          (*(*v12 + 3))(v12);
          v13 = v15;
        }

        self->_generatedPixelBuffer.m_Obj = v13;
        v15 = 0;
      }

      if (v14)
      {
        (*(*v14 + 24))(v14);
      }

      m_Obj = self->_generatedPixelBuffer.m_Obj;
    }

    else
    {
      m_Obj = self->_pixelBuffer.m_Obj;
    }

    *v5 = m_Obj;
    if (!m_Obj)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v5 = 0;
LABEL_14:

  return v9;
}

- (CGSize)size
{
  v3 = HGCVPixelBuffer::w(self->_pixelBuffer.m_Obj, 0);
  v4 = HGCVPixelBuffer::h(self->_pixelBuffer.m_Obj, 0);
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end