@interface LumaChromaImage
+ (int)bindYCbCrMetalTextureWithMetalContext:(id)context pixelBuffer:(__CVBuffer *)buffer pixelFormat:(unint64_t)format textureToBind:(id *)bind alignmentFactor:(unint64_t)factor;
+ (unint64_t)getMetalChromaFormat:(__CVBuffer *)format;
+ (unint64_t)getMetalLumaFormat:(__CVBuffer *)format;
+ (unint64_t)getMetalYCbCrFormat:(__CVBuffer *)format;
- (LumaChromaImage)initWithContext:(id)context pixelBuffer:(__CVBuffer *)buffer lumaAlignmentFactor:(unint64_t)factor chromaAlignmentFactor:(unint64_t)alignmentFactor;
- (int)bindYCbCrTexture:(id)texture alignmentFactor:(unint64_t)factor;
@end

@implementation LumaChromaImage

- (LumaChromaImage)initWithContext:(id)context pixelBuffer:(__CVBuffer *)buffer lumaAlignmentFactor:(unint64_t)factor chromaAlignmentFactor:(unint64_t)alignmentFactor
{
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = LumaChromaImage;
  v13 = [(LumaChromaImage *)&v27 init];
  if (v13)
  {
    MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v11, buffer, v12);
    MetalChromaFormat = objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v15, buffer, v16);
    v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(contextCopy, v18, buffer, MetalLumaFormat, 7, 0, factor);
    lumaTex = v13->lumaTex;
    v13->lumaTex = v19;

    if (v13->lumaTex)
    {
      v22 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(contextCopy, v21, buffer, MetalChromaFormat, 7, 1, alignmentFactor);
      chromaTex = v13->chromaTex;
      v13->chromaTex = v22;

      if (v13->chromaTex)
      {
        v13->pixelBuffer = buffer;
        goto LABEL_5;
      }

      sub_2958CD0C4(&v28);
    }

    else
    {
      sub_2958CD14C(&v28);
    }
  }

  else
  {
    sub_2958CD1D4(&v28);
  }

  if (v28)
  {
    v24 = 0;
    goto LABEL_6;
  }

LABEL_5:
  v24 = v13;
LABEL_6:
  v25 = v24;

  return v25;
}

+ (int)bindYCbCrMetalTextureWithMetalContext:(id)context pixelBuffer:(__CVBuffer *)buffer pixelFormat:(unint64_t)format textureToBind:(id *)bind alignmentFactor:(unint64_t)factor
{
  contextCopy = context;
  if (!format)
  {
    sub_2958CD404(v18);
LABEL_12:
    v14 = 0;
LABEL_14:
    v16 = v18[0];
    goto LABEL_8;
  }

  if (!CVPixelBufferGetIOSurface(buffer))
  {
    sub_2958CD37C(v18);
    goto LABEL_12;
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 132;
  BulkAttachments = IOSurfaceGetBulkAttachments();
  if (BulkAttachments)
  {
    sub_2958CD260(BulkAttachments, v18);
    goto LABEL_12;
  }

  v22 = v32;
  v23 = v33;
  v24 = v34;
  v18[2] = v28;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  v18[0] = v26;
  v18[1] = v27;
  BYTE10(v19) = -6;
  HIBYTE(v19) = 1;
  *(&v19 + 13) = 771;
  IOSurfaceSetBulkAttachments2();
  v14 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(contextCopy, v13, buffer, format, 1, 0, factor);
  if (!v14)
  {
    sub_2958CD2F4(v18);
    goto LABEL_14;
  }

  IOSurfaceSetBulkAttachments2();
  if (bind)
  {
    v15 = v14;
    v16 = 0;
    *bind = v14;
  }

  else
  {
    v16 = 0;
  }

LABEL_8:

  return v16;
}

- (int)bindYCbCrTexture:(id)texture alignmentFactor:(unint64_t)factor
{
  textureCopy = texture;
  pixelBuffer = self->pixelBuffer;
  if (!pixelBuffer)
  {
    sub_2958CD578(&v18);
    v15 = 0;
LABEL_9:
    v13 = v18;
    goto LABEL_5;
  }

  MetalYCbCrFormat = objc_msgSend_getMetalYCbCrFormat_(LumaChromaImage, v6, pixelBuffer, v7);
  v11 = self->pixelBuffer;
  v17 = 0;
  v13 = objc_msgSend_bindYCbCrMetalTextureWithMetalContext_pixelBuffer_pixelFormat_textureToBind_alignmentFactor_(LumaChromaImage, v12, textureCopy, v11, MetalYCbCrFormat, &v17, factor);
  v14 = v17;
  v15 = v17;
  if (v13)
  {
    sub_2958CD490();
    goto LABEL_5;
  }

  objc_storeStrong(&self->yCbCrTex, v14);
  if (!self->yCbCrTex)
  {
    sub_2958CD4F0(&v18);
    goto LABEL_9;
  }

  v13 = 0;
LABEL_5:

  return v13;
}

+ (unint64_t)getMetalYCbCrFormat:(__CVBuffer *)format
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(format);
  if (PixelFormatType > 1885745711)
  {
    if (PixelFormatType != 2088265264)
    {
      if (PixelFormatType == 2019963440)
      {
        return 591;
      }

      v4 = 1885745712;
      goto LABEL_8;
    }
  }

  else if (PixelFormatType != 645424688 && PixelFormatType != 762865200)
  {
    v4 = 796419632;
LABEL_8:
    if (PixelFormatType != v4)
    {
      return 0;
    }
  }

  return 594;
}

+ (unint64_t)getMetalLumaFormat:(__CVBuffer *)format
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(format);
  if (PixelFormatType > 796419631)
  {
    if (PixelFormatType > 1885745711)
    {
      if (PixelFormatType <= 2084070959)
      {
        if (PixelFormatType != 1885745712)
        {
          if (PixelFormatType == 2019963440)
          {
            return 576;
          }

          return 0;
        }

        return 588;
      }

      if (PixelFormatType != 2084070960 && PixelFormatType != 2084075056)
      {
        v4 = 2088265264;
        goto LABEL_17;
      }

      return 10;
    }

    if (PixelFormatType > 875704437)
    {
      if (PixelFormatType != 875704438)
      {
        if (PixelFormatType == 1751527984)
        {
          return 25;
        }

        return 0;
      }

      return 10;
    }

    if (PixelFormatType == 796419632)
    {
      return 588;
    }

    v5 = 875704422;
LABEL_26:
    if (PixelFormatType != v5)
    {
      return 0;
    }

    return 10;
  }

  if (PixelFormatType <= 758674991)
  {
    if (PixelFormatType > 645424687)
    {
      if (PixelFormatType == 645424688)
      {
        return 588;
      }

      v5 = 758670896;
    }

    else
    {
      if (PixelFormatType == 641230384)
      {
        return 10;
      }

      v5 = 641234480;
    }

    goto LABEL_26;
  }

  if (PixelFormatType > 792225327)
  {
    if (PixelFormatType == 792225328)
    {
      return 10;
    }

    v5 = 792229424;
    goto LABEL_26;
  }

  if (PixelFormatType == 758674992)
  {
    return 10;
  }

  v4 = 762865200;
LABEL_17:
  if (PixelFormatType != v4)
  {
    return 0;
  }

  return 588;
}

+ (unint64_t)getMetalChromaFormat:(__CVBuffer *)format
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(format);
  if (PixelFormatType > 796419631)
  {
    if (PixelFormatType > 1885745711)
    {
      if (PixelFormatType <= 2084070959)
      {
        if (PixelFormatType != 1885745712)
        {
          if (PixelFormatType == 2019963440)
          {
            return 578;
          }

          return 0;
        }

        return 589;
      }

      if (PixelFormatType != 2084070960 && PixelFormatType != 2084075056)
      {
        v4 = 2088265264;
        goto LABEL_17;
      }

      return 30;
    }

    if (PixelFormatType > 875704437)
    {
      if (PixelFormatType != 875704438)
      {
        if (PixelFormatType == 1751527984)
        {
          return 65;
        }

        return 0;
      }

      return 30;
    }

    if (PixelFormatType == 796419632)
    {
      return 589;
    }

    v5 = 875704422;
LABEL_26:
    if (PixelFormatType != v5)
    {
      return 0;
    }

    return 30;
  }

  if (PixelFormatType <= 758674991)
  {
    if (PixelFormatType > 645424687)
    {
      if (PixelFormatType == 645424688)
      {
        return 589;
      }

      v5 = 758670896;
    }

    else
    {
      if (PixelFormatType == 641230384)
      {
        return 30;
      }

      v5 = 641234480;
    }

    goto LABEL_26;
  }

  if (PixelFormatType > 792225327)
  {
    if (PixelFormatType == 792225328)
    {
      return 30;
    }

    v5 = 792229424;
    goto LABEL_26;
  }

  if (PixelFormatType == 758674992)
  {
    return 30;
  }

  v4 = 762865200;
LABEL_17:
  if (PixelFormatType != v4)
  {
    return 0;
  }

  return 589;
}

@end