@interface PXGPolarBlurKernel
- (BOOL)_encodePolarBlur:(int)blur sourceTexture:(id)texture destinationTexture:(id)destinationTexture params:(const void *)params length:(unint64_t)length commandBuffer:(id)buffer;
- (PXGPolarBlurKernel)init;
- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale;
@end

@implementation PXGPolarBlurKernel

- (void)encodeToCommandBuffer:(id)buffer sourceTexture:(id)texture destinationTexture:(id)destinationTexture targetScale:(double)scale
{
  v75 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  width = [textureCopy width];
  height = [textureCopy height];
  v13 = [textureCopy width] >> 1;
  v66 = textureCopy;
  height2 = [textureCopy height];
  v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v13 height:height2 >> 1 mipmapped:0];
  [v15 setStorageMode:2];
  [v15 setUsage:3];
  v16 = sqrt((width * width + height * height)) * 0.5;
  v17 = log(fmax(self->_scaleFactor, 1.0 / self->_scaleFactor));
  v18 = v17 / log((2.0 / v16) + 1.0);
  v19 = self->_rotationAngle * v16 * 0.5;
  if (v19 >= v18)
  {
    v18 = self->_rotationAngle * v16 * 0.5;
  }

  v20 = fminf(fmaxf(v18, 1.0), 81.0);
  LODWORD(destinationTexture) = vcvtps_s32_f32(logf(fmaxf(v20, 3.0)) / 2.1972);
  if (destinationTexture <= 0)
  {
    __assert_rtn("[PXGPolarBlurKernel encodeToCommandBuffer:sourceTexture:destinationTexture:targetScale:]", "PXGPolarBlurKernel.m", 151, "n > 0");
  }

  v65 = v15;
  if (destinationTexture == 1)
  {
    v68 = 0;
    v22 = &v77;
LABEL_9:
    *(v22 - 32) = 0;
    goto LABEL_10;
  }

  v21 = [MEMORY[0x277CD72A8] temporaryImageWithCommandBuffer:bufferCopy textureDescriptor:v15];
  v69 = v21;
  if (destinationTexture < 3)
  {
    v22 = &v76;
    goto LABEL_9;
  }

  v21 = [MEMORY[0x277CD72A8] temporaryImageWithCommandBuffer:bufferCopy textureDescriptor:v15];
  v68 = v21;
LABEL_10:
  v64 = &v64;
  MEMORY[0x28223BE20](v21);
  v24 = (&v64 - ((v23 + 15) & 0x3FFFFFFF0));
  v25 = factorize(destinationTexture, 9, v24, v20);
  rotationAngle = self->_rotationAngle;
  v27 = -0.5 / destinationTexture;
  v28 = v27 * rotationAngle;
  v29 = v25;
  v30 = rotationAngle / v25;
  scaleFactor = self->_scaleFactor;
  v32 = pow(scaleFactor, v27);
  v33 = pow(scaleFactor, 1.0 / v29);
  v34 = __sincos_stret(v28);
  v35 = 0;
  *v36.i32 = v32 * v34.__cosval;
  *&v37 = v32 * v34.__sinval;
  *v38.i32 = -*&v37;
  v38.i32[1] = v36.i32[0];
  v36.i32[1] = v37;
  v73 = vzip1q_s32(v36, v38);
  __asm { FMOV            V0.2D, #0.5 }

  v71 = _Q0;
  v72 = vextq_s8(v73, v73, 8uLL);
  __asm { FMOV            V0.2D, #1.0 }

  v70 = _Q0;
  do
  {
    if (v35)
    {
      if ((v35 ^ destinationTexture))
      {
        v45 = &v77;
      }

      else
      {
        v45 = &v76;
      }

      texture = [*(v45 - 32) texture];
    }

    else
    {
      texture = v66;
    }

    v47 = texture;
    if ((destinationTexture - 1) == v35)
    {
      texture2 = destinationTextureCopy;
    }

    else
    {
      if ((v35 ^ destinationTexture))
      {
        v49 = &v76;
      }

      else
      {
        v49 = &v77;
      }

      texture2 = [*(v49 - 32) texture];
    }

    v50 = texture2;
    v51 = v24[v35];
    memset(v74, 0, sizeof(v74));
    width2 = [texture2 width];
    height3 = [v50 height];
    v54.i64[0] = width2;
    v54.i64[1] = height3;
    *&v74[0] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v54), v71));
    *(&v74[0] + 1) = v73.i64[0];
    *&v74[1] = v72.i64[0];
    v55 = __sincos_stret(v30);
    *v56.i32 = v55.__cosval * v33;
    *&v57 = v55.__sinval * v33;
    *v58.i32 = -*&v57;
    v58.i32[1] = v56.i32[0];
    v56.i32[1] = v57;
    *(&v74[1] + 8) = vzip1q_s32(v56, v58);
    width3 = [v50 width];
    height4 = [v50 height];
    v61.i64[0] = width3;
    v61.i64[1] = height4;
    *(&v74[2] + 1) = vcvt_f32_f64(vdivq_f64(v70, vcvtq_f64_u64(v61)));
    v33 = pow(v33, v51);
    v30 = v30 * v51;
    [(PXGPolarBlurKernel *)self _encodePolarBlur:v51 sourceTexture:v47 destinationTexture:v50 params:v74 length:48 commandBuffer:bufferCopy];

    v35 = v35 + 1;
  }

  while (destinationTexture != v35);
  v62 = v69;
  [v69 setReadCount:0];
  v63 = v68;
  [v68 setReadCount:0];
}

- (BOOL)_encodePolarBlur:(int)blur sourceTexture:(id)texture destinationTexture:(id)destinationTexture params:(const void *)params length:(unint64_t)length commandBuffer:(id)buffer
{
  v10 = *&blur;
  textureCopy = texture;
  destinationTextureCopy = destinationTexture;
  bufferCopy = buffer;
  v33 = v10;
  v14 = objc_alloc_init(MEMORY[0x277CD6D70]);
  [v14 setConstantValue:&v33 type:41 atIndex:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%d)", @"pxg::polar_blur", v10];
  device = [bufferCopy device];
  v17 = [PXGKernel pipelineStateForFunctionWithName:@"pxg::polar_blur" constants:v14 key:v15 device:device];

  v18 = textureCopy;
  if (v17)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder pushDebugGroup:@"pxg::polar_blur"];
    [computeCommandEncoder setComputePipelineState:v17];
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:destinationTextureCopy atIndex:1];
    [computeCommandEncoder setBytes:params length:length atIndex:0];
    width = [destinationTextureCopy width];
    height = [destinationTextureCopy height];
    v31 = 0uLL;
    v32 = 0;
    *&v29 = width;
    *(&v29 + 1) = height;
    v30 = 1;
    [PXGKernel groupSizeForImageSize:&v29 pipelineState:v17];
    v29 = 0uLL;
    v30 = 0;
    v27 = v31;
    v28 = v32;
    *&v25 = width;
    *(&v25 + 1) = height;
    v26 = 1;
    [PXGKernel gridSizeForThreadGroupSize:&v27 imageSize:&v25];
    v27 = v29;
    v28 = v30;
    v25 = v31;
    v26 = v32;
    [computeCommandEncoder dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
    [computeCommandEncoder popDebugGroup];
    [computeCommandEncoder endEncoding];
  }

  return v17 != 0;
}

- (PXGPolarBlurKernel)init
{
  v3.receiver = self;
  v3.super_class = PXGPolarBlurKernel;
  result = [(PXGPolarBlurKernel *)&v3 init];
  if (result)
  {
    result->_scaleFactor = 1.0;
    result->_rotationAngle = 0.0;
  }

  return result;
}

@end