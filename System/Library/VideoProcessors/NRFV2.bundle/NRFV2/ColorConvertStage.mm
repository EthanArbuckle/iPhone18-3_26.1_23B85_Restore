@interface ColorConvertStage
+ (int)prewarmShaders:(id)shaders;
- (ColorConvertStage)initWithMetalContext:(id)context;
- (int)_convertColor:(const ColorSpaceConversionParameters *)color lumaPedestal:(float)pedestal inputLuma:(id)luma inputChroma:(id)chroma outputLuma:(id)outputLuma outputChroma:(id)outputChroma;
- (int)convertColor:(const ColorSpaceConversionParameters *)color inputYCbCr:(id)cr outputLuma:(id)luma outputChroma:(id)chroma;
- (uint64_t)extractLinearBufferWithLumaInput:(__n128)input chromaInput:(__n128)chromaInput inputIsLinear:(__n128)linear removeChromaBias:(uint64_t)bias lumaPedestal:(void *)pedestal exposureParams:(void *)params ccm:(char)ccm output:(int)self0;
@end

@implementation ColorConvertStage

- (ColorConvertStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ColorConvertStage;
  v6 = [(ColorConvertStage *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, context);
    v11 = objc_msgSend_sharedInstance(ColorConvertStageShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);
    v15 = v7[2];
    v7[2] = v14;

    v16 = v7;
    if (!v7[2])
    {
      sub_29589C268(v7, &v20);
      v16 = v20;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  return v17;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [ColorConvertStageShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (int)_convertColor:(const ColorSpaceConversionParameters *)color lumaPedestal:(float)pedestal inputLuma:(id)luma inputChroma:(id)chroma outputLuma:(id)outputLuma outputChroma:(id)outputChroma
{
  pedestalCopy = pedestal;
  lumaCopy = luma;
  chromaCopy = chroma;
  outputLumaCopy = outputLuma;
  outputChromaCopy = outputChroma;
  v20 = outputChromaCopy;
  if (!color)
  {
    sub_29589C774(v56);
LABEL_19:
    v52 = v56[0];
    goto LABEL_10;
  }

  if (!lumaCopy)
  {
    sub_29589C6D8(v56);
    goto LABEL_19;
  }

  if (!chromaCopy)
  {
    sub_29589C63C(v56);
    goto LABEL_19;
  }

  if (!outputLumaCopy)
  {
    sub_29589C5A0(v56);
    goto LABEL_19;
  }

  if (!outputChromaCopy)
  {
    sub_29589C504(v56);
    goto LABEL_19;
  }

  if (!self->_shaders)
  {
    sub_29589C468(v56);
    goto LABEL_19;
  }

  v21 = objc_msgSend_commandQueue(self->_metal, v17, v18, v19);
  v25 = objc_msgSend_commandBuffer(v21, v22, v23, v24);

  if (!v25)
  {
    sub_29589C3CC(v56);
    goto LABEL_19;
  }

  v29 = objc_msgSend_computeCommandEncoder(v25, v26, v27, v28);
  if (!v29)
  {
    sub_29589C318(v25, v56);
    goto LABEL_19;
  }

  v31 = v29;
  objc_msgSend_setBytes_length_atIndex_(v29, v30, color, 208, 0);
  objc_msgSend_setBytes_length_atIndex_(v31, v32, &pedestalCopy, 4, 1);
  objc_msgSend_setTexture_atIndex_(v31, v33, lumaCopy, 0);
  objc_msgSend_setTexture_atIndex_(v31, v34, chromaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v31, v35, outputLumaCopy, 2);
  objc_msgSend_setTexture_atIndex_(v31, v36, v20, 3);
  objc_msgSend_setComputePipelineState_(v31, v37, self->_shaders->_convertColor, v38);
  v56[0] = objc_msgSend_width(chromaCopy, v39, v40, v41);
  v56[1] = objc_msgSend_height(chromaCopy, v42, v43, v44);
  v56[2] = 1;
  v54 = xmmword_2959D5ED0;
  v55 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v31, v45, v56, &v54);
  objc_msgSend_endEncoding(v31, v46, v47, v48);
  objc_msgSend_commit(v25, v49, v50, v51);

  v52 = 0;
LABEL_10:

  return v52;
}

- (int)convertColor:(const ColorSpaceConversionParameters *)color inputYCbCr:(id)cr outputLuma:(id)luma outputChroma:(id)chroma
{
  crCopy = cr;
  lumaCopy = luma;
  chromaCopy = chroma;
  v16 = chromaCopy;
  if (!color)
  {
    sub_29589CBD0(v50);
LABEL_17:
    v46 = v50[0];
    goto LABEL_9;
  }

  if (!crCopy)
  {
    sub_29589CB34(v50);
    goto LABEL_17;
  }

  if (!lumaCopy)
  {
    sub_29589CA98(v50);
    goto LABEL_17;
  }

  if (!chromaCopy)
  {
    sub_29589C9FC(v50);
    goto LABEL_17;
  }

  if (!self->_shaders)
  {
    sub_29589C960(v50);
    goto LABEL_17;
  }

  v17 = objc_msgSend_commandQueue(self->_metal, v13, v14, v15);
  v21 = objc_msgSend_commandBuffer(v17, v18, v19, v20);

  if (!v21)
  {
    sub_29589C8C4(v50);
    goto LABEL_17;
  }

  v25 = objc_msgSend_computeCommandEncoder(v21, v22, v23, v24);
  if (!v25)
  {
    sub_29589C810(v21, v50);
    goto LABEL_17;
  }

  v27 = v25;
  objc_msgSend_setBytes_length_atIndex_(v25, v26, color, 208, 0);
  objc_msgSend_setTexture_atIndex_(v27, v28, crCopy, 0);
  objc_msgSend_setTexture_atIndex_(v27, v29, lumaCopy, 1);
  objc_msgSend_setTexture_atIndex_(v27, v30, v16, 2);
  objc_msgSend_setComputePipelineState_(v27, v31, self->_shaders->_convertColorYCbCr, v32);
  v50[0] = objc_msgSend_width(crCopy, v33, v34, v35) >> 1;
  v50[1] = objc_msgSend_height(crCopy, v36, v37, v38) >> 1;
  v50[2] = 1;
  v48 = xmmword_2959D5ED0;
  v49 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v27, v39, v50, &v48);
  objc_msgSend_endEncoding(v27, v40, v41, v42);
  objc_msgSend_commit(v21, v43, v44, v45);

  v46 = 0;
LABEL_9:

  return v46;
}

- (uint64_t)extractLinearBufferWithLumaInput:(__n128)input chromaInput:(__n128)chromaInput inputIsLinear:(__n128)linear removeChromaBias:(uint64_t)bias lumaPedestal:(void *)pedestal exposureParams:(void *)params ccm:(char)ccm output:(int)self0
{
  *&v37[16] = chromaInput;
  *&v37[32] = linear;
  *v37 = input;
  pedestalCopy = pedestal;
  paramsCopy = params;
  v22 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(self[1], v20, a12, 25, 7, 0, 16);
  if (!v22)
  {
    sub_29589CD08(&v54);
LABEL_16:
    v35 = v54.u32[0];
    goto LABEL_13;
  }

  v23 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(self[1], v21, a12, 65, 7, 1, 8);
  if (!v23)
  {
    sub_29589CC6C(&v54);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = 0;
  *(&v48 + 1) = 0x3F80000000000000;
  v49 = 0u;
  v50 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  LODWORD(v47) = 1065353216;
  DWORD2(v47) = 1065353216;
  __asm { FMOV            V1.2S, #1.0 }

  *&v48 = _D1;
  DWORD1(v49) = 1065353216;
  v51 = xmmword_2958D59E0;
  v52 = xmmword_2958D59F0;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = xmmword_2958D5A00;
  do
  {
    *(&v54 + v25) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(*(&v51 + v25))), xmmword_2958D5A20, *(&v51 + v25), 1), xmmword_2958D5A30, *(&v51 + v25), 2);
    v25 += 16;
  }

  while (v25 != 48);
  v57.columns[0] = v54;
  v57.columns[1] = v55;
  v57.columns[2] = v56;
  v41 = v54;
  v42 = v55;
  v43 = v56;
  v57.columns[3] = xmmword_2958D5A40;
  v58 = __invert_f4(v57);
  v38 = v58.columns[0];
  v39 = v58.columns[1];
  v40 = v58.columns[2];
  *(&v49 + 1) = 0x3F8000007F800000;
  LOBYTE(v50) = 0;
  BYTE3(v50) = 0;
  if ((ccm & 1) == 0)
  {
    v47 = xmmword_2958D59C0;
    v48 = xmmword_2959D5EE0;
    *&v49 = 0x4000000000000000;
  }

  *(&v50 + 1) = 256;
  v33 = __invert_f3(*v37);
  v32 = 0;
  *(&v44 + 1) = v33.columns[0].u32[2];
  *(&v45 + 1) = v33.columns[1].u32[2];
  *&v44 = v33.columns[0].i64[0];
  *&v45 = v33.columns[1].i64[0];
  DWORD2(v46) = v33.columns[2].i32[2];
  *&v46 = v33.columns[2].i64[0];
  v33.columns[0].i32[0] = 0;
  if (output)
  {
    v34 = -0.5;
  }

  else
  {
    v34 = 0.0;
  }

  v33.columns[1].i32[0] = 0;
  v33.columns[1].i32[1] = 1.0;
  v33.columns[1].i32[2] = 0;
  *&v33.columns[1].i32[3] = v34;
  v33.columns[0].i32[1] = 0;
  v33.columns[0].i64[1] = __PAIR64__(LODWORD(v34), 1.0);
  HIDWORD(v46) = 0;
  v51 = xmmword_2958D59E0;
  v52 = xmmword_2958D59F0;
  v53 = xmmword_2958D5A00;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  do
  {
    *(&v54 + v32) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2959D5EF0, COERCE_FLOAT(*(&v51 + v32))), v33.columns[1], *(&v51 + v32), 1), v33.columns[0], *(&v51 + v32), 2);
    v32 += 16;
  }

  while (v32 != 48);
  v41 = v54;
  v42 = v55;
  v43 = v56;
  v35 = objc_msgSend__convertColor_lumaPedestal_inputLuma_inputChroma_outputLuma_outputChroma_(self, v31, &v38, pedestalCopy, paramsCopy, v22, v24, COERCE_DOUBLE(__PAIR64__(v54.u32[1], LODWORD(a2))));

LABEL_13:
  return v35;
}

@end