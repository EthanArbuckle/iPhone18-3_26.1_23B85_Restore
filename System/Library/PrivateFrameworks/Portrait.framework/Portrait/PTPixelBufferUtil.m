@interface PTPixelBufferUtil
+ (BOOL)is420YpCbCr8:(unsigned int)a3;
+ (BOOL)isCompressed:(__CVBuffer *)a3;
+ (BOOL)isPixelBuffer10Bit:(__CVBuffer *)a3;
+ (BOOL)isPixelBufferFullRange:(__CVBuffer *)a3;
+ (BOOL)isRGB:(__CVBuffer *)a3;
+ (BOOL)supportsMetalYCBCRConversion;
+ (BOOL)supportsMetalYCBCRConversion:(__CVBuffer *)a3;
+ (YUVPixelFormats)_getPixelFormatsForType:(unsigned int)a3;
+ (YUVPixelFormats)getPixelFormatsForPixelBuffer:(__CVBuffer *)a3;
+ (id)createTextureFromCache:(__CVMetalTextureCache *)a3 pixelBuffer:(__CVBuffer *)a4 descriptor:(id)a5 plane:(unint64_t)a6;
+ (id)createTextureFromPixelBuffer:(__CVBuffer *)a3 device:(id)a4 textureCache:(__CVMetalTextureCache *)a5 sRGB:(BOOL)a6 metalYCBCRConversion:(BOOL)a7;
+ (id)getAttachmentString:(__CVBuffer *)a3 forKey:(__CFString *)a4;
+ (id)getMTLTextureDescriptor:(__CVBuffer *)a3 device:(id)a4 metalYCBCRConversion:(BOOL)a5;
+ (int)readRawPixelBufferFromFile:(id)a3 pixelBuffer:(__CVBuffer *)a4;
+ (unint64_t)getNoConcurrentAccessHint:(__CVBuffer *)a3;
+ (unsigned)compressedPixelFormat:(unsigned int)a3 compression:(int)a4;
+ (unsigned)createTexturesFromPixelBuffer:(__CVBuffer *)a3 device:(id)a4 textureCache:(__CVMetalTextureCache *)a5 outLuma:(id *)a6 outChroma:(id *)a7 read:(BOOL)a8 write:(BOOL)a9;
+ (unsigned)getCVPixelBufferGetPixelFormatType:(unint64_t)a3;
+ (void)logPixelbufferMetadataForPixelBuffer:(__CVBuffer *)a3 name:(id)a4;
- (__CVBuffer)createPixelbufferFromCIImage:(id)a3 pixelFormat:(unsigned int)a4;
- (__CVBuffer)readPixelBufferFromFile:(id)a3 pixelFormat:(unsigned int)a4 ciOptions:(id)a5;
- (void)dealloc;
@end

@implementation PTPixelBufferUtil

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    CFRelease(pixelTransferSession);
  }

  v4.receiver = self;
  v4.super_class = PTPixelBufferUtil;
  [(PTPixelBufferUtil *)&v4 dealloc];
}

+ (unsigned)createTexturesFromPixelBuffer:(__CVBuffer *)a3 device:(id)a4 textureCache:(__CVMetalTextureCache *)a5 outLuma:(id *)a6 outChroma:(id *)a7 read:(BOOL)a8 write:(BOOL)a9
{
  v9 = a8;
  v15 = a4;
  v16 = v9;
  if (a9)
  {
    v16 = [PTPixelBufferUtil getNoConcurrentAccessHint:a3]| v9 | 2;
  }

  v17 = [a1 getPixelFormatsForPixelBuffer:a3];
  if (v17)
  {
    v19 = v18;
    if (v18)
    {
      v20 = v17;
      v42 = a6;
      v43 = a7;
      v21 = MEMORY[0x277CD7058];
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
      v23 = [v21 texture2DDescriptorWithPixelFormat:v20 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a3 mipmapped:0), 0];
      [v23 setUsage:v16];
      v24 = MEMORY[0x277CD7058];
      v25 = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
      v26 = [v24 texture2DDescriptorWithPixelFormat:v19 width:v25 height:CVPixelBufferGetHeightOfPlane(a3 mipmapped:1uLL), 0];
      [v26 setUsage:v16];
      if (v23 && v26)
      {
        v27 = v15;
        v28 = v15;
        if (a5)
        {
          v29 = [a1 createTextureFromCache:a5 pixelBuffer:a3 descriptor:v23 plane:0];
          v30 = v42;
          v31 = *v42;
          *v42 = v29;

          v32 = [a1 createTextureFromCache:a5 pixelBuffer:a3 descriptor:v26 plane:1];
        }

        else
        {
          IOSurface = CVPixelBufferGetIOSurface(a3);
          v36 = [v28 newTextureWithDescriptor:v23 iosurface:IOSurface plane:0];
          v30 = v42;
          v37 = *v42;
          *v42 = v36;

          v32 = [v28 newTextureWithDescriptor:v26 iosurface:IOSurface plane:1];
        }

        v38 = *v43;
        *v43 = v32;

        if (*v30 && *v43)
        {
          v34 = 0;
LABEL_22:

          goto LABEL_23;
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
        v40 = _PTLogSystem();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          [PTPixelBufferUtil createTexturesFromPixelBuffer:? device:? textureCache:? outLuma:? outChroma:? read:? write:?];
        }
      }

      else
      {
        v28 = _PTLogSystem();
        v27 = v15;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          +[PTPixelBufferUtil createTexturesFromPixelBuffer:device:textureCache:outLuma:outChroma:read:write:];
        }
      }

      v34 = -1;
      goto LABEL_22;
    }
  }

  v33 = CVPixelBufferGetPixelFormatType(a3);
  v23 = _PTLogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [PTPixelBufferUtil createTexturesFromPixelBuffer:v33 device:? textureCache:? outLuma:? outChroma:? read:? write:?];
  }

  v34 = -10;
  v27 = v15;
LABEL_23:

  return v34;
}

+ (id)createTextureFromPixelBuffer:(__CVBuffer *)a3 device:(id)a4 textureCache:(__CVMetalTextureCache *)a5 sRGB:(BOOL)a6 metalYCBCRConversion:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a4;
  v13 = [a1 getMTLTextureDescriptor:a3 device:v12 metalYCBCRConversion:v7];
  v14 = v13;
  if (!v8)
  {
LABEL_7:
    if (a5)
    {
      v17 = [a1 createTextureFromCache:a5 pixelBuffer:a3 descriptor:v14 plane:0];
    }

    else
    {
      v17 = [v12 newTextureWithDescriptor:v14 iosurface:CVPixelBufferGetIOSurface(a3) plane:0];
    }

    v18 = v17;
    goto LABEL_11;
  }

  v15 = [v13 pixelFormat];
  if (v15 == 80)
  {
    v16 = 81;
    goto LABEL_6;
  }

  if (v15 == 10)
  {
    v16 = 11;
LABEL_6:
    [v14 setPixelFormat:v16];
    goto LABEL_7;
  }

  v20 = _PTLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [PTPixelBufferUtil createTextureFromPixelBuffer:v14 device:? textureCache:? sRGB:? metalYCBCRConversion:?];
  }

  v18 = 0;
LABEL_11:

  return v18;
}

+ (id)createTextureFromCache:(__CVMetalTextureCache *)a3 pixelBuffer:(__CVBuffer *)a4 descriptor:(id)a5 plane:(unint64_t)a6
{
  v20[2] = *MEMORY[0x277D85DE8];
  v9 = a5;
  image = 0;
  v10 = *MEMORY[0x277CBECE8];
  v19[0] = *MEMORY[0x277CC4D50];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "usage")}];
  v20[0] = v11;
  v19[1] = *MEMORY[0x277CC4D48];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "storageMode")}];
  v20[1] = v12;
  v13 = CVMetalTextureCacheCreateTextureFromImage(v10, a3, a4, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2], objc_msgSend(v9, "pixelFormat"), objc_msgSend(v9, "width"), objc_msgSend(v9, "height"), a6, &image);

  if (!image || v13)
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTPixelBufferUtil createTextureFromCache:v9 pixelBuffer:? descriptor:? plane:?];
    }
  }

  else
  {
    v14 = CVMetalTextureGetTexture(image);
    CFRelease(image);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  v16 = _PTLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [PTPixelBufferUtil createTextureFromCache:v9 pixelBuffer:? descriptor:? plane:?];
  }

  v14 = 0;
LABEL_11:

  return v14;
}

+ (YUVPixelFormats)_getPixelFormatsForType:(unsigned int)a3
{
  v3 = 0;
  if (a3 <= 875704421)
  {
    if (a3 <= 762865201)
    {
      if (a3 > 645428783)
      {
        if (a3 > 758670895)
        {
          if (a3 != 758670896 && a3 != 758674992)
          {
            v4 = 26160;
LABEL_33:
            v10 = v4 | 0x2D780000;
            goto LABEL_63;
          }

LABEL_49:
          v11 = 10;
          v3 = 30;
          goto LABEL_65;
        }

        if (a3 != 645428784)
        {
          v12 = 30258;
          goto LABEL_54;
        }

        goto LABEL_64;
      }

      if (a3 > 645424687)
      {
        if (a3 != 645424688)
        {
          v12 = 26162;
LABEL_54:
          v10 = v12 | 0x26780000;
          goto LABEL_63;
        }

LABEL_64:
        v11 = 588;
        v3 = 589;
        goto LABEL_65;
      }

      if (a3 == 641230384)
      {
        goto LABEL_49;
      }

      v8 = 641234480;
LABEL_48:
      v11 = 0;
      if (a3 != v8)
      {
        goto LABEL_65;
      }

      goto LABEL_49;
    }

    if (a3 <= 792229423)
    {
      if (a3 <= 762869297)
      {
        if (a3 != 762865202)
        {
          v4 = 30256;
          goto LABEL_33;
        }

        goto LABEL_64;
      }

      if (a3 == 762869298)
      {
        goto LABEL_64;
      }

      v8 = 792225328;
      goto LABEL_48;
    }

    if (a3 <= 796419633)
    {
      if (a3 == 792229424)
      {
        goto LABEL_49;
      }

      v6 = 26160;
    }

    else
    {
      if (a3 == 796419634 || a3 == 796423728)
      {
        goto LABEL_64;
      }

      v6 = 30258;
    }

    v10 = v6 | 0x2F780000;
LABEL_63:
    v11 = 0;
    if (a3 != v10)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (a3 <= 2016686641)
  {
    if (a3 <= 1882468911)
    {
      if (a3 > 875704933)
      {
        if (a3 == 875704934)
        {
          goto LABEL_49;
        }

        v9 = 12918;
      }

      else
      {
        if (a3 == 875704422)
        {
          goto LABEL_49;
        }

        v9 = 12406;
      }

      v8 = v9 | 0x34320000;
      goto LABEL_48;
    }

    if (a3 <= 1885745711)
    {
      if (a3 == 1882468912)
      {
        goto LABEL_64;
      }

      v10 = 1882468914;
      goto LABEL_63;
    }

    if (a3 == 1885745712 || a3 == 1885745714)
    {
      goto LABEL_64;
    }

    v5 = 2016686640;
    goto LABEL_37;
  }

  if (a3 > 2084075055)
  {
    if (a3 <= 2088265265)
    {
      if (a3 == 2084075056)
      {
        goto LABEL_49;
      }

      v7 = 26160;
    }

    else
    {
      if (a3 == 2088265266 || a3 == 2088269360)
      {
        goto LABEL_64;
      }

      v7 = 30258;
    }

    v10 = v7 | 0x7C780000;
    goto LABEL_63;
  }

  if (a3 > 2019963441)
  {
    if (a3 != 2019963442)
    {
      v8 = 2084070960;
      goto LABEL_48;
    }
  }

  else if (a3 != 2016686642)
  {
    v5 = 2019963440;
LABEL_37:
    v11 = 0;
    if (a3 != v5)
    {
      goto LABEL_65;
    }
  }

  v11 = 576;
  v3 = 578;
LABEL_65:
  result.var1 = v3;
  result.var0 = v11;
  return result;
}

+ (YUVPixelFormats)getPixelFormatsForPixelBuffer:(__CVBuffer *)a3
{
  if (a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v6 = [a1 _getPixelFormatsForType:PixelFormatType];
    v7 = v5;
    if (!v6 || !v5)
    {
      v8 = CVPixelBufferGetAttributes();
      v9 = v8;
      if (v8)
      {
        v10 = [v8 objectForKeyedSubscript:@"PixelFormatDescription"];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 objectForKeyedSubscript:@"PixelFormatDescription"];
          v13 = [v12 objectForKeyedSubscript:@"EquivalentUncompressedPixelFormat"];

          if (v13)
          {
            v14 = [v9 objectForKeyedSubscript:@"PixelFormatDescription"];
            v15 = [v14 objectForKeyedSubscript:@"EquivalentUncompressedPixelFormat"];
            v16 = [v15 unsignedIntValue];

            if (v16)
            {
              if (v16 != PixelFormatType)
              {
                v6 = [a1 _getPixelFormatsForType:v16];
                v7 = v17;
              }
            }
          }
        }
      }
    }

    if (!v6 || !v7)
    {
      v18 = _PTLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(PTPixelBufferUtil *)PixelFormatType getPixelFormatsForPixelBuffer:v18];
      }
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v19 = v6;
  v20 = v7;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

+ (BOOL)isCompressed:(__CVBuffer *)a3
{
  v3 = CVPixelBufferGetPixelFormatType(a3) >> 24;
  result = 1;
  if (v3 > 0x2F || ((1 << v3) & 0xA04000000000) == 0)
  {
    return v3 == 124;
  }

  return result;
}

+ (unint64_t)getNoConcurrentAccessHint:(__CVBuffer *)a3
{
  if ([a1 isCompressed:a3])
  {
    return 0x4000;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)isPixelBufferFullRange:(__CVBuffer *)a3
{
  CVPixelBufferGetPixelFormatType(a3);
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x277CC4EF8]);
  return CFStringCompare(Value, *MEMORY[0x277CC4F00], 0) == kCFCompareEqualTo;
}

+ (BOOL)isPixelBuffer10Bit:(__CVBuffer *)a3
{
  CVPixelBufferGetPixelFormatType(a3);
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v4 = CFDictionaryGetValue(DescriptionWithPixelFormatType, *MEMORY[0x277CC4ED8]);
  v5 = [v4 integerValue] == 10;

  return v5;
}

+ (BOOL)isRGB:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v4 = PixelFormatType == 1380401729 || PixelFormatType == 1380411457;
  return PixelFormatType == 1111970369 || v4;
}

+ (BOOL)is420YpCbCr8:(unsigned int)a3
{
  result = 1;
  if (a3 > 792229423)
  {
    if (a3 <= 875704437)
    {
      if (a3 == 792229424)
      {
        return result;
      }

      v4 = 875704422;
      goto LABEL_14;
    }

    if (a3 != 875704438 && a3 != 2084070960)
    {
      v4 = 2084075056;
LABEL_14:
      if (a3 != v4)
      {
        return 0;
      }
    }
  }

  else
  {
    if (a3 <= 758670895)
    {
      if (a3 == 641230384)
      {
        return result;
      }

      v4 = 641234480;
      goto LABEL_14;
    }

    if (a3 != 758670896 && a3 != 758674992)
    {
      v4 = 792225328;
      goto LABEL_14;
    }
  }

  return result;
}

+ (BOOL)supportsMetalYCBCRConversion
{
  if (supportsMetalYCBCRConversion_token != -1)
  {
    +[PTPixelBufferUtil supportsMetalYCBCRConversion];
  }

  return supportsMetalYCBCRConversion_hasHardwareSupport;
}

void __49__PTPixelBufferUtil_supportsMetalYCBCRConversion__block_invoke()
{
  v0 = FTGetChipIdentifier();
  supportsMetalYCBCRConversion_hasHardwareSupport = [v0 hasPrefix:@"H11"] ^ 1;
}

+ (BOOL)supportsMetalYCBCRConversion:(__CVBuffer *)a3
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v5 = [a1 supportsMetalYCBCRConversion];
  if (v5)
  {

    LOBYTE(v5) = [a1 is420YpCbCr8:PixelFormatType];
  }

  return v5;
}

+ (id)getAttachmentString:(__CVBuffer *)a3 forKey:(__CFString *)a4
{
  v4 = CVBufferCopyAttachment(a3, a4, 0);

  return v4;
}

+ (id)getMTLTextureDescriptor:(__CVBuffer *)a3 device:(id)a4 metalYCBCRConversion:(BOOL)a5
{
  v5 = a5;
  v8 = [PTPixelBufferUtil getNoConcurrentAccessHint:a3, a4];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if ([a1 is420YpCbCr8:PixelFormatType] && v5)
  {
    v10 = v8 | 0x10003;
    v11 = 500;
LABEL_33:
    v14 = MEMORY[0x277CD7058];
    Width = CVPixelBufferGetWidth(a3);
    v16 = [v14 texture2DDescriptorWithPixelFormat:v11 width:Width height:CVPixelBufferGetHeight(a3) mipmapped:0];
    [v16 setUsage:v10];
    [v16 setResourceOptions:0];
    goto LABEL_34;
  }

  v10 = v8 | 3;
  if (PixelFormatType > 1380410944)
  {
    if (PixelFormatType <= 1717856626)
    {
      if (PixelFormatType == 1380410945)
      {
        v11 = 125;
        goto LABEL_33;
      }

      if (PixelFormatType == 1380411457)
      {
        v11 = 115;
        goto LABEL_33;
      }

      if (PixelFormatType != 1717855600)
      {
        goto LABEL_37;
      }

      goto LABEL_25;
    }

    if (PixelFormatType <= 1751411058)
    {
      if (PixelFormatType != 1717856627)
      {
        v12 = 1751410032;
        goto LABEL_23;
      }

LABEL_25:
      v11 = 55;
      goto LABEL_33;
    }

    if (PixelFormatType == 1751411059)
    {
      goto LABEL_30;
    }

    v13 = 2084718401;
LABEL_28:
    if (PixelFormatType != v13)
    {
      goto LABEL_37;
    }

LABEL_29:
    v11 = 80;
    goto LABEL_33;
  }

  if (PixelFormatType <= 1111970368)
  {
    if (PixelFormatType == 641877825 || PixelFormatType == 759318337)
    {
      goto LABEL_29;
    }

    v13 = 792872769;
    goto LABEL_28;
  }

  if (PixelFormatType > 1278226533)
  {
    if (PixelFormatType != 1278226534)
    {
      v12 = 1278226536;
LABEL_23:
      if (PixelFormatType != v12)
      {
        goto LABEL_37;
      }

LABEL_30:
      v11 = 25;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (PixelFormatType == 1111970369)
  {
    goto LABEL_29;
  }

  if (PixelFormatType == 1278226488)
  {
    v11 = 10;
    goto LABEL_33;
  }

LABEL_37:
  v18 = _PTLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [PTPixelBufferUtil getMTLTextureDescriptor:a3 device:? metalYCBCRConversion:?];
  }

  v16 = 0;
LABEL_34:

  return v16;
}

+ (unsigned)getCVPixelBufferGetPixelFormatType:(unint64_t)a3
{
  if (a3 <= 54)
  {
    if (a3 == 10)
    {
      return 1278226488;
    }

    if (a3 == 25)
    {
      return 1278226536;
    }
  }

  else
  {
    switch(a3)
    {
      case '7':
        return 1278226534;
      case '}':
        return 1380410945;
      case 'P':
        return 1111970369;
    }
  }

  v4 = _PTLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[PTPixelBufferUtil getCVPixelBufferGetPixelFormatType:];
  }

  return 0;
}

+ (void)logPixelbufferMetadataForPixelBuffer:(__CVBuffer *)a3 name:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"PixelBuffer %@: ", v5];
  v7 = v6;
  if (a3)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
    v9 = NSStringFromFourCharCode(PixelFormatType);
    Width = CVPixelBufferGetWidth(a3);
    [(__CFString *)v7 appendFormat:@" f: %@ s: %zu x %zu", v9, Width, CVPixelBufferGetHeight(a3)];

    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v7;
      _os_log_impl(&dword_2243FB000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    IOSurface = CVPixelBufferGetIOSurface(a3);
    if (IOSurface)
    {
      v13 = IOSurface;
      v14 = IOSurfaceCopyAllValues(IOSurface);
      v15 = IOSurfaceCopyValue(v13, *MEMORY[0x277CD29C0]);
      if (v15)
      {
        v16 = v15;
        v17 = CGColorSpaceCreateWithPropertyList(v15);
        if (v17)
        {
          v18 = v17;
          v19 = _PTLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            Name = CGColorSpaceGetName(v18);
            Model = CGColorSpaceGetModel(v18);
            NumberOfComponents = CGColorSpaceGetNumberOfComponents(v18);
            v21 = v14;
            v22 = CGColorSpaceUsesExtendedRange(v18);
            IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(v18);
            IsHLGBased = CGColorSpaceIsHLGBased(v18);
            IsPQBased = CGColorSpaceIsPQBased(v18);
            *buf = 138413826;
            v49 = Name;
            v50 = 1024;
            *v51 = Model;
            *&v51[4] = 1024;
            *&v51[6] = NumberOfComponents;
            v52 = 1024;
            v53 = v22;
            v14 = v21;
            v54 = 1024;
            v55 = IsWideGamutRGB;
            v56 = 1024;
            v57 = IsHLGBased;
            v58 = 1024;
            v59 = IsPQBased;
            _os_log_impl(&dword_2243FB000, v19, OS_LOG_TYPE_INFO, "colorSpaceName: %@ Model: %u NumberOfComponents: %i extendedRange: %i WideGamutRGB: %i HLG: %i PQ: %i", buf, 0x30u);
          }

          CGColorSpaceRelease(v18);
        }

        CFRelease(v16);
        if (v14)
        {
LABEL_11:
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v26 = [v14 allKeys];
          v27 = [v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v27)
          {
            v28 = v27;
            v39 = v7;
            v41 = v5;
            v29 = *v44;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v44 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v43 + 1) + 8 * i);
                v32 = _PTLogSystem();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                {
                  [v14 objectForKeyedSubscript:v31];
                  v34 = v33 = v14;
                  *buf = 138412546;
                  v49 = v31;
                  v50 = 2112;
                  *v51 = v34;
                  _os_log_impl(&dword_2243FB000, v32, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);

                  v14 = v33;
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v43 objects:v47 count:16];
            }

            while (v28);
            v7 = v39;
            v5 = v41;
          }

LABEL_31:

          goto LABEL_32;
        }
      }

      else
      {
        v38 = _PTLogSystem();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2243FB000, v38, OS_LOG_TYPE_INFO, "No kIOSurfaceColorSpace available", buf, 2u);
        }

        if (v14)
        {
          goto LABEL_11;
        }
      }

      v26 = _PTLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2243FB000, v26, OS_LOG_TYPE_INFO, "metadata: nil", buf, 2u);
      }

      goto LABEL_31;
    }

    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v35 = "IOSurface is NULL";
      v36 = v14;
      v37 = 2;
      goto LABEL_25;
    }
  }

  else
  {
    [(__CFString *)v6 appendString:@"NULL"];
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v7;
      v35 = "%@";
      v36 = v14;
      v37 = 12;
LABEL_25:
      _os_log_impl(&dword_2243FB000, v36, OS_LOG_TYPE_INFO, v35, buf, v37);
    }
  }

LABEL_32:
}

+ (int)readRawPixelBufferFromFile:(id)a3 pixelBuffer:(__CVBuffer *)a4
{
  v5 = a3;
  Height = CVPixelBufferGetHeight(a4);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a4);
  CVPixelBufferLockBaseAddress(a4, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  if ([v5 hasSuffix:@"LZMA"])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5];
    v17 = 0;
    v10 = [v9 decompressedDataUsingAlgorithm:2 error:&v17];
    v11 = v17;

    if (v11)
    {
      v12 = _PTLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[PTPixelBufferUtil readRawPixelBufferFromFile:pixelBuffer:];
      }

      goto LABEL_13;
    }

    memcpy(BaseAddress, [v10 bytes], objc_msgSend(v10, "length"));
  }

  else
  {
    v13 = fopen([v5 UTF8String], "r");
    if (!v13)
    {
      fclose(0);
LABEL_13:
      v15 = -1;
      goto LABEL_14;
    }

    for (i = v13; Height; --Height)
    {
      fread(BaseAddress, 1uLL, BytesPerRow, i);
      BaseAddress += BytesPerRow;
    }

    fclose(i);
  }

  CVPixelBufferUnlockBaseAddress(a4, 0);
  v15 = 0;
LABEL_14:

  return v15;
}

- (__CVBuffer)readPixelBufferFromFile:(id)a3 pixelFormat:(unsigned int)a4 ciOptions:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTPixelBufferUtil readPixelBufferFromFile:pixelFormat:ciOptions:];
    }
  }

  v12 = [v8 stringByStandardizingPath];
  v13 = [v10 fileExistsAtPath:v12];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
    if (!v14)
    {
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTPixelBufferUtil readPixelBufferFromFile:pixelFormat:ciOptions:];
      }

      v24 = 0;
      goto LABEL_24;
    }

    v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
    v16 = MEMORY[0x277CE1CB8];
    v17 = [v8 pathExtension];
    v18 = [v16 typeWithFilenameExtension:v17];
    v19 = [v18 identifier];

    if (v19)
    {
      [v15 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD3668]];
    }

    v20 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v14 options:v15];
    v21 = v20;
    if (v20)
    {
      [v20 extent];
      if (v22 != 0.0)
      {
        [v21 extent];
        if (v23 != 0.0)
        {
          v24 = [(PTPixelBufferUtil *)self createPixelbufferFromCIImage:v21 pixelFormat:v6];
LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }
    }

    else
    {
      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PTPixelBufferUtil readPixelBufferFromFile:pixelFormat:ciOptions:];
      }
    }

    v24 = 0;
    goto LABEL_23;
  }

  v14 = _PTLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [PTPixelBufferUtil readPixelBufferFromFile:v8 pixelFormat:? ciOptions:?];
  }

  v24 = 0;
LABEL_25:

  return v24;
}

- (__CVBuffer)createPixelbufferFromCIImage:(id)a3 pixelFormat:(unsigned int)a4
{
  v27[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_ciContext)
  {
    v7 = [MEMORY[0x277CBF740] context];
    ciContext = self->_ciContext;
    self->_ciContext = v7;
  }

  v9 = *MEMORY[0x277CC4DE8];
  v26[0] = *MEMORY[0x277CC4E08];
  v26[1] = v9;
  v27[0] = MEMORY[0x277CBEC38];
  v27[1] = MEMORY[0x277CBEC10];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  buffer = 0;
  [v6 extent];
  v12 = v11;
  [v6 extent];
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v12, v13, a4, v10, &buffer))
  {
    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PTPixelBufferUtil createPixelbufferFromCIImage:pixelFormat:];
    }

    v15 = 0;
  }

  else
  {
    if ([v6 colorSpace])
    {
      v16 = CGColorSpaceCopyICCData([v6 colorSpace]);
      if (v16)
      {
        v17 = v16;
        CVBufferSetAttachment(buffer, *MEMORY[0x277CC4C88], v16, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v17);
      }
    }

    v18 = self->_ciContext;
    v19 = buffer;
    [v6 extent];
    -[CIContext render:toCVPixelBuffer:bounds:colorSpace:](v18, "render:toCVPixelBuffer:bounds:colorSpace:", v6, v19, [v6 colorSpace], v20, v21, v22, v23);
    v15 = buffer;
  }

  return v15;
}

+ (unsigned)compressedPixelFormat:(unsigned int)a3 compression:(int)a4
{
  v5 = 1111970369;
  if (a3 == 1111970369)
  {
    v6 = a4 - 1;
    if (a4 == 5)
    {
      v6 = 0;
    }

    if (v6 < 4)
    {
      v5 = dword_2244A53F0[v6];
    }
  }

  else
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTPixelBufferUtil compressedPixelFormat:a3 compression:?];
    }

    v5 = a3;
  }

  if (CVIsCompressedPixelFormatAvailable(v5))
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

+ (void)createTexturesFromPixelBuffer:(unsigned int)a1 device:textureCache:outLuma:outChroma:read:write:.cold.1(unsigned int a1)
{
  v1 = NSStringFromFourCharCode(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

+ (void)createTexturesFromPixelBuffer:device:textureCache:outLuma:outChroma:read:write:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_2243FB000, v1, OS_LOG_TYPE_ERROR, "Error allocating texture desc %@ %@", v2, 0x16u);
}

+ (void)createTexturesFromPixelBuffer:(unsigned int)a1 device:textureCache:outLuma:outChroma:read:write:.cold.3(unsigned int a1)
{
  v1 = NSStringFromFourCharCode(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

+ (void)createTextureFromPixelBuffer:(void *)a1 device:textureCache:sRGB:metalYCBCRConversion:.cold.1(void *a1)
{
  [a1 pixelFormat];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)createTextureFromCache:(void *)a1 pixelBuffer:descriptor:plane:.cold.1(void *a1)
{
  [a1 pixelFormat];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)createTextureFromCache:(void *)a1 pixelBuffer:descriptor:plane:.cold.2(void *a1)
{
  [a1 pixelFormat];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)getPixelFormatsForPixelBuffer:(unsigned int)a1 .cold.1(unsigned int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromFourCharCode(a1);
  v5[0] = 67109378;
  v5[1] = a1;
  v6 = 2112;
  v7 = v4;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "getPixelFormatsForPixelBuffer: Unable to determine appropriate metal pixel format for CVPixelBuffer of pixel format type = %x %@\n", v5, 0x12u);
}

+ (void)getMTLTextureDescriptor:(__CVBuffer *)a1 device:metalYCBCRConversion:.cold.1(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = NSStringFromFourCharCode(PixelFormatType);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)getCVPixelBufferGetPixelFormatType:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)readRawPixelBufferFromFile:pixelBuffer:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)readPixelBufferFromFile:(void *)a1 pixelFormat:ciOptions:.cold.2(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)readPixelBufferFromFile:pixelFormat:ciOptions:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)compressedPixelFormat:(unsigned int)a1 compression:.cold.1(unsigned int a1)
{
  v1 = NSStringFromFourCharCode(a1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end