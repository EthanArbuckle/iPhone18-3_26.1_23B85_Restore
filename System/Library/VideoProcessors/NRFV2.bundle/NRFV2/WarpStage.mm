@interface WarpStage
+ (int)prewarmShaders:(id)shaders;
- (id)initWarpStage:(id)stage;
- (uint64_t)runWarpUsingTransform:(__n128)transform inputLumaTex:(__n128)tex inputChromaTex:(uint64_t)chromaTex outputLumaTex:(void *)lumaTex outputChromaTex:(void *)outputChromaTex;
- (uint64_t)runWarpUsingTransform:(__n128)transform inputYCbCrTex:(__n128)tex inputCscParams:(uint64_t)params outputLinearLumaTex:(void *)lumaTex outputLinearChromaTex:(uint64_t)chromaTex;
@end

@implementation WarpStage

- (id)initWarpStage:(id)stage
{
  stageCopy = stage;
  v18.receiver = self;
  v18.super_class = WarpStage;
  v6 = [(WarpStage *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, stage);
    v11 = objc_msgSend_sharedInstance(WarpStageShared, v8, v9, v10);
    v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);

    v15 = v7;
    if (!v14)
    {
      sub_2958B0EE0();
      v15 = 0;
    }
  }

  else
  {
    sub_2958B0F44();
    v15 = 0;
    v14 = 0;
  }

  v16 = v15;

  return v16;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [WarpShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    sub_2958B0FA8();
    v8 = -12786;
  }

  return v8;
}

- (uint64_t)runWarpUsingTransform:(__n128)transform inputLumaTex:(__n128)tex inputChromaTex:(uint64_t)chromaTex outputLumaTex:(void *)lumaTex outputChromaTex:(void *)outputChromaTex
{
  v74[0] = a2;
  v74[1] = transform;
  v74[2] = tex;
  lumaTexCopy = lumaTex;
  outputChromaTexCopy = outputChromaTex;
  v15 = a8;
  v16 = a9;
  v20 = objc_msgSend_sharedInstance(WarpStageShared, v17, v18, v19);
  v23 = objc_msgSend_getShaders_(v20, v21, *(self + 8), v22);

  if (!v23)
  {
    sub_2958B10A8(&v71);
LABEL_7:
    v66 = v71;
    goto LABEL_4;
  }

  v27 = objc_msgSend_commandQueue(*(self + 8), v24, v25, v26);
  v31 = objc_msgSend_commandBuffer(v27, v28, v29, v30);

  if (!v31)
  {
    sub_2958B100C(&v71);
    goto LABEL_7;
  }

  v35 = objc_msgSend_computeCommandEncoder(v31, v32, v33, v34);
  objc_msgSend_setImageblockWidth_height_(v35, v36, 32, 32);
  objc_msgSend_setComputePipelineState_(v35, v37, v23[1], v38);
  objc_msgSend_setBytes_length_atIndex_(v35, v39, v74, 48, 0);
  objc_msgSend_setTexture_atIndex_(v35, v40, lumaTexCopy, 0);
  objc_msgSend_setTexture_atIndex_(v35, v41, v15, 1);
  v71 = objc_msgSend_width(v15, v42, v43, v44);
  v72 = objc_msgSend_height(v15, v45, v46, v47);
  v73 = 1;
  v68 = vdupq_n_s64(0x20uLL);
  v69 = v68;
  v70 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v35, v48, &v71, &v69);
  objc_msgSend_setTexture_atIndex_(v35, v49, outputChromaTexCopy, 0);
  objc_msgSend_setTexture_atIndex_(v35, v50, v16, 1);
  v54 = objc_msgSend_width(outputChromaTexCopy, v51, v52, v53);
  v58 = objc_msgSend_height(outputChromaTexCopy, v55, v56, v57);
  v71 = v54;
  v72 = v58;
  v73 = 1;
  v69 = v68;
  v70 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v35, v59, &v71, &v69);
  objc_msgSend_endEncoding(v35, v60, v61, v62);
  objc_msgSend_commit(v31, v63, v64, v65);

  v66 = 0;
LABEL_4:

  return v66;
}

- (uint64_t)runWarpUsingTransform:(__n128)transform inputYCbCrTex:(__n128)tex inputCscParams:(uint64_t)params outputLinearLumaTex:(void *)lumaTex outputLinearChromaTex:(uint64_t)chromaTex
{
  v67[0] = a2;
  v67[1] = transform;
  v67[2] = tex;
  lumaTexCopy = lumaTex;
  v14 = a8;
  v15 = a9;
  if (objc_msgSend_pixelFormat(v14, v16, v17, v18) != 25)
  {
    sub_2958B1144();
LABEL_10:
    v62 = 4294954516;
    goto LABEL_7;
  }

  if (objc_msgSend_pixelFormat(v15, v19, v20, v21) != 65)
  {
    sub_2958B11A8();
    goto LABEL_10;
  }

  v25 = objc_msgSend_sharedInstance(WarpStageShared, v22, v23, v24);
  v28 = objc_msgSend_getShaders_(v25, v26, *(self + 8), v27);

  if (!v28)
  {
    sub_2958B1374(v66);
LABEL_14:
    v62 = LODWORD(v66[0]);
    goto LABEL_7;
  }

  if (!chromaTex)
  {
    sub_2958B12C0(v28, v66);
    goto LABEL_14;
  }

  v32 = objc_msgSend_commandQueue(*(self + 8), v29, v30, v31);
  v36 = objc_msgSend_commandBuffer(v32, v33, v34, v35);

  if (!v36)
  {
    sub_2958B120C(v28, v66);
    goto LABEL_14;
  }

  v40 = objc_msgSend_computeCommandEncoder(v36, v37, v38, v39);
  objc_msgSend_setComputePipelineState_(v40, v41, v28[2], v42);
  objc_msgSend_setImageblockWidth_height_(v40, v43, 32, 32);
  objc_msgSend_setBytes_length_atIndex_(v40, v44, v67, 48, 0);
  objc_msgSend_setBytes_length_atIndex_(v40, v45, chromaTex, 208, 1);
  objc_msgSend_setTexture_atIndex_(v40, v46, lumaTexCopy, 0);
  objc_msgSend_setTexture_atIndex_(v40, v47, v14, 1);
  objc_msgSend_setTexture_atIndex_(v40, v48, v15, 2);
  v66[0] = objc_msgSend_width(v15, v49, v50, v51);
  v66[1] = objc_msgSend_height(v15, v52, v53, v54);
  v66[2] = 1;
  v64 = vdupq_n_s64(0x10uLL);
  v65 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v40, v55, v66, &v64);
  objc_msgSend_endEncoding(v40, v56, v57, v58);
  objc_msgSend_commit(v36, v59, v60, v61);

  v62 = 0;
LABEL_7:

  return v62;
}

@end