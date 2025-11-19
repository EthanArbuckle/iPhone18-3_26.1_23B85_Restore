@interface PXGPolarBlurKernel
- (BOOL)_encodePolarBlur:(int)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 params:(const void *)a6 length:(unint64_t)a7 commandBuffer:(id)a8;
- (PXGPolarBlurKernel)init;
- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6;
@end

@implementation PXGPolarBlurKernel

- (void)encodeToCommandBuffer:(id)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 targetScale:(double)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v67 = a5;
  v11 = [v10 width];
  v12 = [v10 height];
  v13 = [v10 width] >> 1;
  v66 = v10;
  v14 = [v10 height];
  v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v13 height:v14 >> 1 mipmapped:0];
  [v15 setStorageMode:2];
  [v15 setUsage:3];
  v16 = sqrt((v11 * v11 + v12 * v12)) * 0.5;
  v17 = log(fmax(self->_scaleFactor, 1.0 / self->_scaleFactor));
  v18 = v17 / log((2.0 / v16) + 1.0);
  v19 = self->_rotationAngle * v16 * 0.5;
  if (v19 >= v18)
  {
    v18 = self->_rotationAngle * v16 * 0.5;
  }

  v20 = fminf(fmaxf(v18, 1.0), 81.0);
  LODWORD(a5) = vcvtps_s32_f32(logf(fmaxf(v20, 3.0)) / 2.1972);
  if (a5 <= 0)
  {
    __assert_rtn("[PXGPolarBlurKernel encodeToCommandBuffer:sourceTexture:destinationTexture:targetScale:]", "PXGPolarBlurKernel.m", 151, "n > 0");
  }

  v65 = v15;
  if (a5 == 1)
  {
    v68 = 0;
    v22 = &v77;
LABEL_9:
    *(v22 - 32) = 0;
    goto LABEL_10;
  }

  v21 = [MEMORY[0x277CD72A8] temporaryImageWithCommandBuffer:v9 textureDescriptor:v15];
  v69 = v21;
  if (a5 < 3)
  {
    v22 = &v76;
    goto LABEL_9;
  }

  v21 = [MEMORY[0x277CD72A8] temporaryImageWithCommandBuffer:v9 textureDescriptor:v15];
  v68 = v21;
LABEL_10:
  v64 = &v64;
  MEMORY[0x28223BE20](v21);
  v24 = (&v64 - ((v23 + 15) & 0x3FFFFFFF0));
  v25 = factorize(a5, 9, v24, v20);
  rotationAngle = self->_rotationAngle;
  v27 = -0.5 / a5;
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
      if ((v35 ^ a5))
      {
        v45 = &v77;
      }

      else
      {
        v45 = &v76;
      }

      v46 = [*(v45 - 32) texture];
    }

    else
    {
      v46 = v66;
    }

    v47 = v46;
    if ((a5 - 1) == v35)
    {
      v48 = v67;
    }

    else
    {
      if ((v35 ^ a5))
      {
        v49 = &v76;
      }

      else
      {
        v49 = &v77;
      }

      v48 = [*(v49 - 32) texture];
    }

    v50 = v48;
    v51 = v24[v35];
    memset(v74, 0, sizeof(v74));
    v52 = [v48 width];
    v53 = [v50 height];
    v54.i64[0] = v52;
    v54.i64[1] = v53;
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
    v59 = [v50 width];
    v60 = [v50 height];
    v61.i64[0] = v59;
    v61.i64[1] = v60;
    *(&v74[2] + 1) = vcvt_f32_f64(vdivq_f64(v70, vcvtq_f64_u64(v61)));
    v33 = pow(v33, v51);
    v30 = v30 * v51;
    [(PXGPolarBlurKernel *)self _encodePolarBlur:v51 sourceTexture:v47 destinationTexture:v50 params:v74 length:48 commandBuffer:v9];

    v35 = v35 + 1;
  }

  while (a5 != v35);
  v62 = v69;
  [v69 setReadCount:0];
  v63 = v68;
  [v68 setReadCount:0];
}

- (BOOL)_encodePolarBlur:(int)a3 sourceTexture:(id)a4 destinationTexture:(id)a5 params:(const void *)a6 length:(unint64_t)a7 commandBuffer:(id)a8
{
  v10 = *&a3;
  v11 = a4;
  v12 = a5;
  v13 = a8;
  v33 = v10;
  v14 = objc_alloc_init(MEMORY[0x277CD6D70]);
  [v14 setConstantValue:&v33 type:41 atIndex:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@(%d)", @"pxg::polar_blur", v10];
  v16 = [v13 device];
  v17 = [PXGKernel pipelineStateForFunctionWithName:@"pxg::polar_blur" constants:v14 key:v15 device:v16];

  v18 = v11;
  if (v17)
  {
    v19 = [v13 computeCommandEncoder];
    [v19 pushDebugGroup:@"pxg::polar_blur"];
    [v19 setComputePipelineState:v17];
    [v19 setTexture:v11 atIndex:0];
    [v19 setTexture:v12 atIndex:1];
    [v19 setBytes:a6 length:a7 atIndex:0];
    v20 = [v12 width];
    v21 = [v12 height];
    v31 = 0uLL;
    v32 = 0;
    *&v29 = v20;
    *(&v29 + 1) = v21;
    v30 = 1;
    [PXGKernel groupSizeForImageSize:&v29 pipelineState:v17];
    v29 = 0uLL;
    v30 = 0;
    v27 = v31;
    v28 = v32;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v26 = 1;
    [PXGKernel gridSizeForThreadGroupSize:&v27 imageSize:&v25];
    v27 = v29;
    v28 = v30;
    v25 = v31;
    v26 = v32;
    [v19 dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
    [v19 popDebugGroup];
    [v19 endEncoding];
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