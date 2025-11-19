@interface Texture2DWrapper
- (Texture2DWrapper)initWithFigMetalContext:(id)a3 copyingPixelBuffer:(__CVBuffer *)a4 usage:(unint64_t)a5;
- (Texture2DWrapper)initWithTexture:(id)a3 textureArray:(BOOL)a4;
- (unint64_t)textureFormatOfPixelBuffer:(__CVBuffer *)a3;
@end

@implementation Texture2DWrapper

- (Texture2DWrapper)initWithTexture:(id)a3 textureArray:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v26.receiver = self;
  v26.super_class = Texture2DWrapper;
  v7 = [(Texture2DWrapper *)&v26 init];
  v9 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    sub_2957E1744();
LABEL_7:
    v24 = 0;
    goto LABEL_8;
  }

  objc_msgSend_setTexture_(v7, v8, v6);
  if (!v4)
  {
    goto LABEL_5;
  }

  v12 = objc_msgSend_texture(v9, v10, v11);
  v15 = objc_msgSend_texture(v9, v13, v14);
  v18 = objc_msgSend_pixelFormat(v15, v16, v17);
  v20 = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(v12, v19, v18, 3, 0, 1, 0, 1);
  objc_msgSend_setTextureArray_(v9, v21, v20);

  v24 = objc_msgSend_textureArray(v9, v22, v23);

  if (!v24)
  {
    sub_2957E16E0();
  }

  else
  {
LABEL_5:
    v24 = v9;
  }

LABEL_8:

  return v24;
}

- (Texture2DWrapper)initWithFigMetalContext:(id)a3 copyingPixelBuffer:(__CVBuffer *)a4 usage:(unint64_t)a5
{
  v8 = a3;
  Width = CVPixelBufferGetWidth(a4);
  Height = CVPixelBufferGetHeight(a4);
  v12 = objc_msgSend_textureFormatOfPixelBuffer_(self, v11, a4);
  if (!v12)
  {
    sub_2957E193C();
LABEL_7:
    v20 = 0;
    goto LABEL_4;
  }

  self = objc_msgSend_initNewTextureWithFigMetalContext_size_withFormat_usage_textureArray_(self, v13, v8, v12, a5, 0, Width, Height);
  if (CVPixelBufferLockBaseAddress(a4, 1uLL))
  {
    sub_2957E18D4();
    goto LABEL_7;
  }

  v16 = objc_msgSend_texture(self, v14, v15);
  memset(v22, 0, 24);
  v22[3] = Width;
  v22[4] = Height;
  v22[5] = 1;
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  objc_msgSend_replaceRegion_mipmapLevel_withBytes_bytesPerRow_(v16, v19, v22, 0, BaseAddress, BytesPerRow);

  CVPixelBufferUnlockBaseAddress(a4, 1uLL);
  self = self;
  v20 = self;
LABEL_4:

  return v20;
}

- (unint64_t)textureFormatOfPixelBuffer:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType > 1278226487)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType == 1278226488)
      {
        return 10;
      }

      if (PixelFormatType == 1278226534)
      {
        return 55;
      }

      v4 = 1278226536;
      goto LABEL_14;
    }

    if (PixelFormatType == 1751410032)
    {
      return 25;
    }

    if (PixelFormatType != 2084070960)
    {
      v4 = 1751411059;
LABEL_14:
      if (PixelFormatType == v4)
      {
        return 25;
      }

      return 0;
    }

    return 500;
  }

  if (PixelFormatType <= 792225327)
  {
    if (PixelFormatType == 641230384 || PixelFormatType == 758670896)
    {
      return 500;
    }
  }

  else
  {
    if (PixelFormatType == 792225328 || PixelFormatType == 875704422)
    {
      return 500;
    }

    if (PixelFormatType == 1111970369)
    {
      return 80;
    }
  }

  return 0;
}

@end