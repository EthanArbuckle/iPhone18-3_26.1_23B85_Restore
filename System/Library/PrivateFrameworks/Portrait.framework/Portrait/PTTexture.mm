@interface PTTexture
+ (id)createFromPixelbuffer:(__CVBuffer *)a3 device:(id)a4 textureCache:(__CVMetalTextureCache *)a5 metalYCBCRConversion:(BOOL)a6 read:(BOOL)a7 write:(BOOL)a8;
+ (id)createRGBA:(id)a3;
+ (id)createYUV420:(id)a3 chroma:(id)a4;
- (BOOL)isRGB;
- (unint64_t)height;
- (unint64_t)imageBlockSize;
- (unint64_t)width;
- (unsigned)copyMetadataTo:(id)a3;
@end

@implementation PTTexture

+ (id)createRGBA:(id)a3
{
  v3 = a3;
  v4 = [[PTTextureRGBA alloc] initWithTexture:v3];

  [(PTTexture *)v4 setColorPrimaries:*MEMORY[0x277CC4C30]];
  [(PTTexture *)v4 setTransferFunction:*MEMORY[0x277CC4CD8]];
  [(PTTexture *)v4 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
  [(PTTexture *)v4 setYCbCrColorDepth:0];
  [(PTTexture *)v4 setYCbCrFullRange:1];

  return v4;
}

+ (id)createYUV420:(id)a3 chroma:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PTTextureYUV alloc] initWithLumaTexture:v6 chromaTexture:v5];

  [(PTTexture *)v7 setColorPrimaries:*MEMORY[0x277CC4C30]];
  [(PTTexture *)v7 setTransferFunction:*MEMORY[0x277CC4CD8]];
  [(PTTexture *)v7 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
  [(PTTexture *)v7 setYCbCrColorDepth:0];
  [(PTTexture *)v7 setYCbCrFullRange:1];

  return v7;
}

+ (id)createFromPixelbuffer:(__CVBuffer *)a3 device:(id)a4 textureCache:(__CVMetalTextureCache *)a5 metalYCBCRConversion:(BOOL)a6 read:(BOOL)a7 write:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v13 = a4;
  if (v10)
  {
    v14 = [PTPixelBufferUtil supportsMetalYCBCRConversion:a3];
    if (![PTPixelBufferUtil isRGB:a3])
    {
      if (v14)
      {
        v15 = [PTTextureRGBAFromYUV alloc];
        v16 = [PTPixelBufferUtil createTextureFromPixelBuffer:a3 device:v13 textureCache:a5 sRGB:0 metalYCBCRConversion:1];
        v17 = [(PTTextureRGBAFromYUV *)v15 initWithTexture:v16];

        v18 = [PTTexture createFromPixelbuffer:a3 device:v13 textureCache:a5 metalYCBCRConversion:0 read:v9 write:v8];
        [(PTTextureRGBAFromYUV *)v17 setTextureAsYUV:v18];

        v19 = v17;
        v20 = [PTPixelBufferUtil getAttachmentString:a3 forKey:*MEMORY[0x277CC4D10]];
        [(PTTexture *)v19 setYCbCrMatrix:v20];

        v21 = [(PTTexture *)v19 YCbCrMatrix];

        if (!v21)
        {
          if (createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write__onceToken != -1)
          {
            +[PTTexture createFromPixelbuffer:device:textureCache:metalYCBCRConversion:read:write:];
          }

          [(PTTexture *)v19 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
        }

        [(PTTexture *)v19 setYCbCrFullRange:[PTPixelBufferUtil isPixelBufferFullRange:a3]];
        if ([PTPixelBufferUtil isPixelBuffer10Bit:a3])
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
      LOBYTE(v35) = v8;
      if ([PTPixelBufferUtil createTexturesFromPixelBuffer:a3 device:v13 textureCache:a5 outLuma:&v39 outChroma:&v38 read:v9 write:v35])
      {

        v19 = 0;
        goto LABEL_33;
      }

      v19 = [PTTexture createYUV420:v39 chroma:v38];
      v25 = [PTPixelBufferUtil getAttachmentString:a3 forKey:*MEMORY[0x277CC4D10]];
      [(PTTexture *)v19 setYCbCrMatrix:v25];

      v26 = [(PTTexture *)v19 YCbCrMatrix];

      if (!v26)
      {
        if (createFromPixelbuffer_device_textureCache_metalYCBCRConversion_read_write__onceToken_33 != -1)
        {
          +[PTTexture createFromPixelbuffer:device:textureCache:metalYCBCRConversion:read:write:];
        }

        [(PTTexture *)v19 setYCbCrMatrix:*MEMORY[0x277CC4D28]];
      }

      [(PTTexture *)v19 setYCbCrFullRange:[PTPixelBufferUtil isPixelBufferFullRange:a3]];
      if ([PTPixelBufferUtil isPixelBuffer10Bit:a3])
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

  else if (![PTPixelBufferUtil isRGB:a3])
  {
    goto LABEL_14;
  }

  v23 = [PTPixelBufferUtil createTextureFromPixelBuffer:a3 device:v13 textureCache:a5 sRGB:0 metalYCBCRConversion:0];
  v19 = [PTTexture createRGBA:v23];

  v24 = 1;
LABEL_25:
  v28 = [PTPixelBufferUtil getAttachmentString:a3 forKey:*MEMORY[0x277CC4C00]];
  [(PTTexture *)v19 setColorPrimaries:v28];

  v29 = [PTPixelBufferUtil getAttachmentString:a3 forKey:*MEMORY[0x277CC4CC0]];
  [(PTTexture *)v19 setTransferFunction:v29];

  v30 = [(PTTexture *)v19 transferFunction];

  if (!v30)
  {
    v31 = [PTPixelBufferUtil getAttachmentString:a3 forKey:*MEMORY[0x277CC4C90]];
    [(PTTexture *)v19 setTransferFunction:v31];
  }

  v32 = [(PTTexture *)v19 transferFunction];

  if (!v32)
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

- (unsigned)copyMetadataTo:(id)a3
{
  colorPrimaries = self->_colorPrimaries;
  v5 = a3;
  [v5 setColorPrimaries:colorPrimaries];
  [v5 setTransferFunction:self->_transferFunction];
  [v5 setYCbCrMatrix:self->_YCbCrMatrix];
  [v5 setYCbCrColorDepth:self->_YCbCrColorDepth];
  [v5 setYCbCrFullRange:self->_YCbCrFullRange];

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