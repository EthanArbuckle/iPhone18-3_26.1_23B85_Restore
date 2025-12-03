@interface GrayGhostDetection
+ (int)prewarmShaders:(id)shaders;
- (GrayGhostDetection)initWithMetalContext:(id)context;
- (float)getGrayGhostResultSync;
- (int)runGrayGhostDetection:(id)detection ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties hasChromaBias:(BOOL)bias atBand:(int)band params:(const GrayGhostParams *)params;
@end

@implementation GrayGhostDetection

- (GrayGhostDetection)initWithMetalContext:(id)context
{
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = GrayGhostDetection;
  v6 = [(GrayGhostDetection *)&v30 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_metal, context);
  v11 = objc_msgSend_sharedInstance(GrayGhostDetectionShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7[1], v13);
  v15 = v7[2];
  v7[2] = v14;

  if (v7[2])
  {
    v19 = objc_msgSend_device(v7[1], v16, v17, v18);
    v21 = objc_msgSend_newBufferWithLength_options_(v19, v20, 4, 0);
    v22 = v7[4];
    v7[4] = v21;

    v26 = v7[4];
    if (v26)
    {
      *objc_msgSend_contents(v26, v23, v24, v25) = 0;
      goto LABEL_5;
    }

    sub_29589CED8(&v31);
  }

  else
  {
    sub_29589CF74(&v31);
  }

  if (v31)
  {
    v27 = 0;
    goto LABEL_6;
  }

LABEL_5:
  v27 = v7;
LABEL_6:
  v28 = v27;

  return v28;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [GrayGhostDetectionShaders alloc];
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

- (int)runGrayGhostDetection:(id)detection ev0Bands:(id)bands evmProperties:(const frameProperties_t *)properties ev0Properties:(const frameProperties_t *)ev0Properties hasChromaBias:(BOOL)bias atBand:(int)band params:(const GrayGhostParams *)params
{
  detectionCopy = detection;
  bandsCopy = bands;
  if (self->_pendingResultCommandBuffer)
  {
    sub_29589D010(v102);
LABEL_17:
    v91 = v102[0];
    goto LABEL_9;
  }

  *objc_msgSend_contents(self->_grayGhostCountBuffer, v15, v16, v17) = 0;
  if (!params)
  {
    sub_29589D430(v102);
    goto LABEL_17;
  }

  v22 = objc_msgSend_commandQueue(self->_metal, v19, v20, v21);
  v26 = objc_msgSend_commandBuffer(v22, v23, v24, v25);

  if (!v26)
  {
    sub_29589D394(v102);
    goto LABEL_17;
  }

  v30 = objc_msgSend_computeCommandEncoder(v26, v27, v28, v29);
  if (!v30)
  {
    sub_29589D2E0(v26, v102);
    goto LABEL_17;
  }

  v33 = v30;
  objc_msgSend_setComputePipelineState_(v30, v31, self->_shaders->_computeGrayGhostCount, v32);
  if (!properties->meta.isEVMFrame)
  {
    sub_29589D0AC(v33, v26, v102);
    goto LABEL_17;
  }

  if (ev0Properties->meta.isEVMFrame)
  {
    sub_29589D224(v33, v26, v102);
    goto LABEL_17;
  }

  if (!band)
  {
    sub_29589D168(v33, v26, v102);
    goto LABEL_17;
  }

  v96 = v26;
  v34 = detectionCopy[band + 42];
  biasCopy = bias;
  v35 = detectionCopy[band + 62];
  v98 = bandsCopy;
  v36 = bandsCopy[band + 42];
  v97 = detectionCopy;
  v37 = v98[band + 62];
  v38 = v36;
  v94 = v35;
  v95 = v34;
  objc_msgSend_setTexture_atIndex_(v33, v39, v95, 0);
  objc_msgSend_setTexture_atIndex_(v33, v40, v94, 1);
  objc_msgSend_setTexture_atIndex_(v33, v41, v38, 2);
  objc_msgSend_setTexture_atIndex_(v33, v42, v37, 3);
  v43 = sub_295820728(&properties->meta.exposureParams, &ev0Properties->meta.exposureParams, properties);
  v47 = objc_msgSend_width(v37, v44, v45, v46);
  v51 = objc_msgSend_width(v37, v48, v49, v50);
  v55 = objc_msgSend_height(v37, v52, v53, v54);
  v59 = objc_msgSend_height(v37, v56, v57, v58);
  v60.i64[0] = v55;
  v60.i64[1] = v59;
  v61.i64[0] = v47;
  v61.i64[1] = v51;
  v62 = *&properties[1].meta.exposureParams.luxLevel;
  v103[0] = *&properties[1].meta.exposureParams.conversion_gain;
  v103[1] = v62;
  v63 = vcvtq_u32_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v61)), vcvtq_f64_u64(v60)), xmmword_2959D5F10));
  v64 = *&ev0Properties[1].meta.exposureParams.conversion_gain;
  v65 = *&ev0Properties[1].meta.exposureParams.luxLevel;
  v103[2] = *&properties[1].meta.exposureParams.CCT;
  v103[3] = v64;
  v66 = *&ev0Properties[1].meta.exposureParams.CCT;
  v103[4] = v65;
  v103[5] = v66;
  v104 = 0u;
  v105 = v63;
  *&v104 = v43;
  v106 = xmmword_2959D5F20;
  v107 = 0u;
  LOBYTE(v107) = biasCopy;
  *(&v107 + 4) = *params;
  objc_msgSend_setBytes_length_atIndex_(v33, v67, v103, 160, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v33, v68, self->_grayGhostCountBuffer, 0, 1);
  v102[0] = (objc_msgSend_width(v37, v69, v70, v71) + 7) >> 3;
  v102[1] = (objc_msgSend_height(v37, v72, v73, v74) + 7) >> 3;
  v102[2] = 1;
  v100 = vdupq_n_s64(8uLL);
  v101 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v33, v75, v102, &v100);
  objc_msgSend_endEncoding(v33, v76, v77, v78);
  objc_msgSend_commit(v96, v79, v80, v81);
  pendingResultCommandBuffer = self->_pendingResultCommandBuffer;
  self->_pendingResultCommandBuffer = v96;
  v83 = v96;

  v87 = objc_msgSend_width(v38, v84, v85, v86);
  self->_totalPixels = objc_msgSend_height(v38, v88, v89, v90) * v87;

  detectionCopy = v97;
  bandsCopy = v98;

  v91 = 0;
LABEL_9:

  return v91;
}

- (float)getGrayGhostResultSync
{
  pendingResultCommandBuffer = self->_pendingResultCommandBuffer;
  if (pendingResultCommandBuffer)
  {
    objc_msgSend_waitUntilCompleted(pendingResultCommandBuffer, a2, v2, v3);
    v6 = self->_pendingResultCommandBuffer;
    self->_pendingResultCommandBuffer = 0;
  }

  return *objc_msgSend_contents(self->_grayGhostCountBuffer, a2, v2, v3) / self->_totalPixels;
}

@end