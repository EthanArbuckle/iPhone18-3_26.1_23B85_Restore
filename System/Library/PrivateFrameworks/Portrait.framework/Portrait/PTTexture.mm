@interface PTTexture
+ (id)createFromPixelbuffer:(__CVBuffer *)pixelbuffer device:(id)device textureCache:(__CVMetalTextureCache *)cache metalYCBCRConversion:(BOOL)conversion read:(BOOL)read write:(BOOL)write;
+ (id)createRGBA:(id)a;
+ (id)createYUV420:(id)v420 chroma:(id)chroma;
- (BOOL)isRGB;
- (unint64_t)height;
- (unint64_t)imageBlockSize;
- (unint64_t)width;
- (unsigned)copyMetadataTo:(id)to;
@end

@implementation PTTexture

+ (id)createRGBA:(id)a
{
  aCopy = a;
  v4 = [[PTTextureRGBA alloc] initWithTexture:aCopy];

  [(PTTexture *)v4 setColorPrimaries:*MEMORY[0x277CC4C30]];
  [(PTTexture *)v4 setTransferFunction:*MEMORY[0x277CC4CD8]];
  [(PTTexture *)v4 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
  [(PTTexture *)v4 setYCbCrColorDepth:0];
  [(PTTexture *)v4 setYCbCrFullRange:1];

  return v4;
}

+ (id)createYUV420:(id)v420 chroma:(id)chroma
{
  chromaCopy = chroma;
  v420Copy = v420;
  v7 = [[PTTextureYUV alloc] initWithLumaTexture:v420Copy chromaTexture:chromaCopy];

  [(PTTexture *)v7 setColorPrimaries:*MEMORY[0x277CC4C30]];
  [(PTTexture *)v7 setTransferFunction:*MEMORY[0x277CC4CD8]];
  [(PTTexture *)v7 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
  [(PTTexture *)v7 setYCbCrColorDepth:0];
  [(PTTexture *)v7 setYCbCrFullRange:1];

  return v7;
}

+ (id)createFromPixelbuffer:(__CVBuffer *)pixelbuffer device:(id)device textureCache:(__CVMetalTextureCache *)cache metalYCBCRConversion:(BOOL)conversion read:(BOOL)read write:(BOOL)write
{
  writeCopy = write;
  readCopy = read;
  conversionCopy = conversion;
  deviceCopy = device;
  if (conversionCopy)
  {
    v14 = [PTPixelBufferUtil supportsMetalYCBCRConversion:pixelbuffer];
    if (![PTPixelBufferUtil isRGB:pixelbuffer])
    {
      if (v14)
      {
        v15 = [PTTextureRGBAFromYUV alloc];
        v16 = [PTPixelBufferUtil createTextureFromPixelBuffer:pixelbuffer device:deviceCopy textureCache:cache sRGB:0 metalYCBCRConversion:1];
        v17 = [(PTTextureRGBAFromYUV *)v15 initWithTexture:v16];

        v18 = [PTTexture createFromPixelbuffer:pixelbuffer device:deviceCopy textureCache:cache metalYCBCRConversion:0 read:readCopy write:writeCopy];
        [(PTTextureRGBAFromYUV *)v17 setTextureAsYUV:v18];

        v19 = v17;
        v20 = [PTPixelBufferUtil getAttachmentString:pixelbuffer forKey:*MEMORY[0x277CC4D10]];
        [(PTTexture *)v19 setYCbCrMatrix:v20];

        yCbCrMatrix = [(PTTexture *)v19 YCbCrMatrix];

        if (!yCbCrMatrix)
        {
          if (createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write__onceToken != -1)
          {
            +[PTTexture createFromPixelbuffer:device:textureCache:metalYCBCRConversion:read:write:];
          }

          [(PTTexture *)v19 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
        }

        [(PTTexture *)v19 setYCbCrFullRange:[PTPixelBufferUtil isPixelBufferFullRange:pixelbuffer]];
        if ([PTPixelBufferUtil isPixelBuffer10Bit:pixelbuffer])
        {
          v22 = 10;
        }

        else
        {
          v22 = 8;
        }

        [(PTTexture *)v19 setYCbCrColorDepth:v22];

LABEL_24:
        v24 = 0;
        goto LABEL_25;
      }

LABEL_14:
      v38 = 0;
      v39 = 0;
      LOBYTE(v35) = writeCopy;
      if ([PTPixelBufferUtil createTexturesFromPixelBuffer:pixelbuffer device:deviceCopy textureCache:cache outLuma:&v39 outChroma:&v38 read:readCopy write:v35])
      {

        v19 = 0;
        goto LABEL_33;
      }

      v19 = [PTTexture createYUV420:v39 chroma:v38];
      v25 = [PTPixelBufferUtil getAttachmentString:pixelbuffer forKey:*MEMORY[0x277CC4D10]];
      [(PTTexture *)v19 setYCbCrMatrix:v25];

      yCbCrMatrix2 = [(PTTexture *)v19 YCbCrMatrix];

      if (!yCbCrMatrix2)
      {
        if (createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write__onceToken_33 != -1)
        {
          +[PTTexture createFromPixelbuffer:device:textureCache:metalYCBCRConversion:read:write:];
        }

        [(PTTexture *)v19 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
      }

      [(PTTexture *)v19 setYCbCrFullRange:[PTPixelBufferUtil isPixelBufferFullRange:pixelbuffer]];
      if ([PTPixelBufferUtil isPixelBuffer10Bit:pixelbuffer])
      {
        v27 = 10;
      }

      else
      {
        v27 = 8;
      }

      [(PTTexture *)v19 setYCbCrColorDepth:v27];

      goto LABEL_24;
    }
  }

  else if (![PTPixelBufferUtil isRGB:pixelbuffer])
  {
    goto LABEL_14;
  }

  v23 = [PTPixelBufferUtil createTextureFromPixelBuffer:pixelbuffer device:deviceCopy textureCache:cache sRGB:0 metalYCBCRConversion:0];
  v19 = [PTTexture createRGBA:v23];

  v24 = 1;
LABEL_25:
  v28 = [PTPixelBufferUtil getAttachmentString:pixelbuffer forKey:*MEMORY[0x277CC4C00]];
  [(PTTexture *)v19 setColorPrimaries:v28];

  v29 = [PTPixelBufferUtil getAttachmentString:pixelbuffer forKey:*MEMORY[0x277CC4CC0]];
  [(PTTexture *)v19 setTransferFunction:v29];

  transferFunction = [(PTTexture *)v19 transferFunction];

  if (!transferFunction)
  {
    v31 = [PTPixelBufferUtil getAttachmentString:pixelbuffer forKey:*MEMORY[0x277CC4C90]];
    [(PTTexture *)v19 setTransferFunction:v31];
  }

  transferFunction2 = [(PTTexture *)v19 transferFunction];

  if (!transferFunction2)
  {
    v33 = MEMORY[0x277CC4CE0];
    if (!v24)
    {
      v33 = MEMORY[0x277CC4CD8];
    }

    [(PTTexture *)v19 setTransferFunction:*v33];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_38;
    block[3] = &unk_278522E90;
    v19 = v19;
    v37 = v19;
    if (createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write__onceToken_37 != -1)
    {
      dispatch_once(&createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write__onceToken_37, block);
    }
  }

LABEL_33:

  return v19;
}

void __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke()
{
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_cold_1();
  }
}

void __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_34()
{
  v0 = _PTLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_cold_1();
  }
}

void __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_38(uint64_t a1)
{
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_38_cold_1(a1, v2);
  }
}

- (unsigned)copyMetadataTo:(id)to
{
  colorPrimaries = self->_colorPrimaries;
  toCopy = to;
  [toCopy setColorPrimaries:colorPrimaries];
  [toCopy setTransferFunction:self->_transferFunction];
  [toCopy setYCbCrMatrix:self->_YCbCrMatrix];
  [toCopy setYCbCrColorDepth:self->_YCbCrColorDepth];
  [toCopy setYCbCrFullRange:self->_YCbCrFullRange];

  return 0;
}

- (unint64_t)width
{
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [PTTexture width];
  }

  return 0;
}

- (unint64_t)height
{
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [PTTexture width];
  }

  return 0;
}

- (unint64_t)imageBlockSize
{
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [PTTexture width];
  }

  return 0;
}

- (BOOL)isRGB
{
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [(PTTexture(PTTextureAdditions) *)v2 isRGB];
  }

  return 0;
}

void __87__PTTexture_createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write___block_invoke_38_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) transferFunction];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "createFromPixelbuffer: TransferFunctionKey not found. Using %@", &v4, 0xCu);
}

@end