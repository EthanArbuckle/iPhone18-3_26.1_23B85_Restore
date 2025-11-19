@interface PTMSRResizeAdditionalOutput
- (PTMSRResizeAdditionalOutput)initWithSize:(id *)a3 colorSpace:(CGColorSpace *)a4 pixelFormat:(unsigned int)a5 allowCompressed:(BOOL)a6 metalDevice:(id)a7;
- (void)dealloc;
@end

@implementation PTMSRResizeAdditionalOutput

- (PTMSRResizeAdditionalOutput)initWithSize:(id *)a3 colorSpace:(CGColorSpace *)a4 pixelFormat:(unsigned int)a5 allowCompressed:(BOOL)a6 metalDevice:(id)a7
{
  v7 = a6;
  v8 = *&a5;
  v30[2] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v28.receiver = self;
  v28.super_class = PTMSRResizeAdditionalOutput;
  v13 = [(PTMSRResizeAdditionalOutput *)&v28 init];
  if (!v13)
  {
LABEL_8:
    v19 = 0;
    goto LABEL_16;
  }

  v14 = *MEMORY[0x277CBECE8];
  var0 = a3->var0;
  var1 = a3->var1;
  if (v7)
  {
    LODWORD(v8) = [PTPixelBufferUtil compressedPixelFormat:v8];
  }

  v17 = *MEMORY[0x277CC4D60];
  v29[0] = *MEMORY[0x277CC4DE8];
  v29[1] = v17;
  v30[0] = MEMORY[0x277CBEC10];
  v30[1] = &unk_2837F3100;
  if (CVPixelBufferCreate(v14, var0, var1, v8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2], &v13->_pixelbuffer))
  {
    v18 = _PTLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PTMSRResizeAdditionalOutput initWithSize:colorSpace:pixelFormat:allowCompressed:metalDevice:];
    }

    goto LABEL_8;
  }

  v13->_ioSurface = CVPixelBufferGetIOSurface(v13->_pixelbuffer);
  v20 = [PTPixelBufferUtil isRGB:v13->_pixelbuffer];
  pixelbuffer = v13->_pixelbuffer;
  if (v20)
  {
    [PTPixelBufferUtil getMTLTextureFromPixelBuffer:pixelbuffer device:v12];
  }

  else
  {
    [PTPixelBufferUtil createTextureFromPixelBuffer:pixelbuffer device:v12 textureCache:0 sRGB:0 metalYCBCRConversion:1];
  }
  v22 = ;
  texture = v13->_texture;
  v13->_texture = v22;

  if (a4)
  {
    ioSurface = v13->_ioSurface;
    v25 = CGColorSpaceCopyPropertyList(a4);
    if (v25)
    {
      v26 = v25;
      IOSurfaceSetValue(ioSurface, *MEMORY[0x277CD29C0], v25);
      CFRelease(v26);
    }
  }

  v13->_allowCompressed = v7;
  v13->_enabled = 1;
  v19 = v13;
LABEL_16:

  return v19;
}

- (void)dealloc
{
  pixelbuffer = self->_pixelbuffer;
  if (pixelbuffer)
  {
    CVPixelBufferRelease(pixelbuffer);
  }

  v4.receiver = self;
  v4.super_class = PTMSRResizeAdditionalOutput;
  [(PTMSRResizeAdditionalOutput *)&v4 dealloc];
}

- (void)initWithSize:colorSpace:pixelFormat:allowCompressed:metalDevice:.cold.1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

@end