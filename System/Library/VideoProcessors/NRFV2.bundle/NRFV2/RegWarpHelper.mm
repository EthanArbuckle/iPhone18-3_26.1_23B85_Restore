@interface RegWarpHelper
+ (int)prewarmShaders:(id)a3;
- (RegWarpHelper)initWithMetal:(id)a3;
- (int)convertInput10BitPixBuf:(__CVBuffer *)a3 downsampledOutput8BitPixBuf:(__CVBuffer *)a4 mtlCommandBuffer:(id)a5;
- (int)downsampleInputRGB:(id)a3 toLuma:(id)a4;
@end

@implementation RegWarpHelper

- (RegWarpHelper)initWithMetal:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_295893CFC();
    goto LABEL_6;
  }

  v18.receiver = self;
  v18.super_class = RegWarpHelper;
  v6 = [(RegWarpHelper *)&v18 init];
  self = v6;
  if (!v6)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  objc_storeStrong(&v6->_metal, a3);
  v10 = objc_msgSend_sharedInstance(RegWarpHelperShared, v7, v8, v9);
  v13 = objc_msgSend_getShaders_(v10, v11, self->_metal, v12);
  shaders = self->_shaders;
  self->_shaders = v13;

  if (self->_shaders)
  {
    v15 = self;
  }

  else
  {
    sub_295893C4C(self, &v19);
    v15 = v19;
  }

LABEL_7:
  v16 = v15;

  return v16;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [RegWarpHelper alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, v3, v6);

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

- (int)convertInput10BitPixBuf:(__CVBuffer *)a3 downsampledOutput8BitPixBuf:(__CVBuffer *)a4 mtlCommandBuffer:(id)a5
{
  v8 = a5;
  metal = self->_metal;
  MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v10, a3, v11);
  v16 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metal, v13, a3, MetalLumaFormat, 1, 0);
  if (!v16)
  {
    sub_295893F4C(v49);
LABEL_13:
    v45 = v49[0];
    goto LABEL_8;
  }

  v17 = self->_metal;
  v18 = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v14, a4, v15);
  v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v17, v19, a4, v18, 2, 0);
  if (!v20)
  {
    sub_295893EB0(v49);
    goto LABEL_13;
  }

  v24 = v20;
  if (objc_msgSend_pixelFormat(v16, v21, v22, v23) == 25 && objc_msgSend_pixelFormat(v24, v25, v26, v27) == 10)
  {
    v28 = objc_msgSend_newTextureViewWithPixelFormat_(v24, v25, 11, v27);

    v24 = v28;
    if (!v28)
    {
      sub_295893E14(v49);
      goto LABEL_13;
    }
  }

  v29 = objc_msgSend_computeCommandEncoder(v8, v25, v26, v27);
  if (!v29)
  {
    sub_295893D60(v24, v49);
    goto LABEL_13;
  }

  v32 = v29;
  objc_msgSend_setComputePipelineState_(v29, v30, self->_shaders->_downsampleAndConvert10To8, v31);
  objc_msgSend_setTexture_atIndex_(v32, v33, v16, 0);
  objc_msgSend_setTexture_atIndex_(v32, v34, v24, 1);
  v49[0] = objc_msgSend_width(v16, v35, v36, v37) >> 2;
  v49[1] = objc_msgSend_height(v16, v38, v39, v40) >> 2;
  v49[2] = 1;
  v47 = vdupq_n_s64(0x10uLL);
  v48 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v32, v41, v49, &v47);
  objc_msgSend_endEncoding(v32, v42, v43, v44);

  v45 = 0;
LABEL_8:

  return v45;
}

- (int)downsampleInputRGB:(id)a3 toLuma:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_pixelFormat(v6, v8, v9, v10);
  v15 = objc_msgSend_pixelFormat(v7, v12, v13, v14);
  if (v11 != 70 && v11 != 115 || v15 != 10 && v15 != 25 || (v19 = objc_msgSend_width(v7, v16, v17, v18), objc_msgSend_width(v6, v20, v21, v22) != 2 * v19) || (v26 = objc_msgSend_height(v7, v23, v24, v25), objc_msgSend_height(v6, v27, v28, v29) != 2 * v26))
  {
    v65 = 0;
    v64 = 0;
    v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v58 = -1;
    goto LABEL_11;
  }

  v33 = objc_msgSend_commandBuffer(self->_metal, v30, v31, v32);
  if (!v33)
  {
    sub_29589409C(v63);
LABEL_15:
    v58 = v63[0];
    goto LABEL_11;
  }

  v37 = v33;
  v38 = objc_msgSend_computeCommandEncoder(v33, v34, v35, v36);
  if (!v38)
  {
    sub_295893FE8(v37, v63);
    goto LABEL_15;
  }

  v41 = v38;
  objc_msgSend_setComputePipelineState_(v38, v39, self->_shaders->_downsampleRGBToLuma, v40);
  objc_msgSend_setTexture_atIndex_(v41, v42, v6, 0);
  objc_msgSend_setTexture_atIndex_(v41, v43, v7, 1);
  objc_msgSend_setImageblockWidth_height_(v41, v44, 32, 32);
  v63[0] = objc_msgSend_width(v7, v45, v46, v47);
  v63[1] = objc_msgSend_height(v7, v48, v49, v50);
  v63[2] = 1;
  v61 = vdupq_n_s64(0x20uLL);
  v62 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v41, v51, v63, &v61);
  objc_msgSend_endEncoding(v41, v52, v53, v54);
  objc_msgSend_commit(self->_metal, v55, v56, v57);

  v58 = 0;
LABEL_11:

  return v58;
}

@end