@interface TextureUtilsShaders
- (TextureUtilsShaders)initWithMetal:(id)a3;
@end

@implementation TextureUtilsShaders

- (TextureUtilsShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = TextureUtilsShaders;
  v6 = [(TextureUtilsShaders *)&v26 init];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_(v4, v5, @"fillTexturePaddedArea", 0);
  fillTexturePaddedArea = v6->_fillTexturePaddedArea;
  v6->_fillTexturePaddedArea = v7;

  if (!v6->_fillTexturePaddedArea)
  {
    sub_2958C3E08();
LABEL_16:
    v24 = 0;
    goto LABEL_9;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_(v4, v9, @"fillTexturePaddedArea10BitPacked_Luma", 0);
  fillTexturePaddedArea10BitPacked_Luma = v6->_fillTexturePaddedArea10BitPacked_Luma;
  v6->_fillTexturePaddedArea10BitPacked_Luma = v10;

  if (!v6->_fillTexturePaddedArea10BitPacked_Luma)
  {
    sub_2958C3D7C();
    goto LABEL_16;
  }

  v13 = objc_msgSend_computePipelineStateFor_constants_(v4, v12, @"fillTexturePaddedArea10BitPacked_Chroma", 0);
  fillTexturePaddedArea10BitPacked_Chroma = v6->_fillTexturePaddedArea10BitPacked_Chroma;
  v6->_fillTexturePaddedArea10BitPacked_Chroma = v13;

  if (!v6->_fillTexturePaddedArea10BitPacked_Chroma)
  {
    sub_2958C3CF0();
    goto LABEL_16;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(v4, v15, @"kernelPack10BitY", 0);
  kernelPack10BitY = v6->_kernelPack10BitY;
  v6->_kernelPack10BitY = v16;

  if (!v6->_kernelPack10BitY)
  {
    sub_2958C3C64();
    goto LABEL_16;
  }

  v19 = objc_msgSend_computePipelineStateFor_constants_(v4, v18, @"kernelPack10BitCbCr", 0);
  kernelPack10BitCbCr = v6->_kernelPack10BitCbCr;
  v6->_kernelPack10BitCbCr = v19;

  if (!v6->_kernelPack10BitCbCr)
  {
    sub_2958C3BD8();
    goto LABEL_16;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(v4, v21, @"copyTexture", 0);
  copyTexture = v6->_copyTexture;
  v6->_copyTexture = v22;

  if (!v6->_copyTexture)
  {
    sub_2958C3B4C();
    goto LABEL_16;
  }

LABEL_8:
  v24 = v6;
LABEL_9:

  return v24;
}

@end