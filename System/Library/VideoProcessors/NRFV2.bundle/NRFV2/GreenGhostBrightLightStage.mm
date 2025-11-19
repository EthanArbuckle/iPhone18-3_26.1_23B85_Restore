@interface GreenGhostBrightLightStage
+ (int)prewarmShaders:(id)a3;
- (GreenGhostBrightLightStage)initWithMetalContext:(id)a3;
- (SidecarWriter)sidecarWriter;
- (float)computeMaxMaskSizeWithWidth:(unint64_t)a3 height:(unint64_t)a4 params:(BrightLightRepairTuning *)a5;
- (id)functionNameForProgram:(int)a3;
- (int)GhostMitigationWithPyr:(id)a3 outputImage:(id)a4 tuning:(id)a5 faceLandMarks:(id)a6 ev0FrameMetadata:(const frameMetadata *)a7 roi:(id)a8 gainMap:;
- (int)applyRepairWithLuma:(id)a3 chroma:(id)a4 lumaBase:(id)a5 chromaBase:(id)a6 mask:(id)a7 output:(id)a8 params:(BrightLightRepairTuning *)a9 gainMap:(id)a10;
- (int)compileShaders;
- (int)computeRepairValuesWithLuma:(id)a3 chroma:(id)a4 mask:(id)a5 maskBinary:(id)a6 params:(BrightLightRepairTuning *)a7;
- (int)cropLuma:(id)a3 chroma:(id)a4 outputLuma:(id)a5 outputChroma:(id)a6;
- (int)detectionWithLuma:(id)a3 chroma:(id)a4 outputMask:(id)a5 outputMaskBinary:(id)a6 params:(BrightLightDetectionTuning *)a7;
- (int)processRepairValues;
- (int)refineMask:(id)a3 outputMask:(id)a4 outputMaskBinary:(id)a5 params:(BrightLightRefinementTuning)a6;
- (int)repairPyr:(id)a3 chroma:(id)a4 mask:(id)a5 maskBinary:(id)a6 output:(id)a7 params:(BrightLightRepairTuning *)a8 gainMap:(id)a9;
- (int)scaleROI:(GreenGhostBrightLightStage *)self fullResolutionSize:(SEL)a2 downScaledSize:;
- (int)unCropMaskCropped1:(id)a3 maskCropped2:(id)a4 maskOutput1:(id)a5 maskOutput2:(id)a6;
- (void)dealloc;
@end

@implementation GreenGhostBrightLightStage

- (id)functionNameForProgram:(int)a3
{
  if (a3 < 6)
  {
    return *(&off_29EDDC408 + a3);
  }

  FigDebugAssert3();
  return 0;
}

- (int)compileShaders
{
  metal = self->_metal;
  v5 = objc_msgSend_functionNameForProgram_(self, a2, 0, v2);
  v7 = objc_msgSend_computePipelineStateFor_constants_(metal, v6, v5, 0);
  v8 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v7;

  if (!self->_pipelineStates[0])
  {
    sub_2958BA530(&v45);
    return v45;
  }

  v11 = self->_metal;
  v12 = objc_msgSend_functionNameForProgram_(self, v9, 1, v10);
  v14 = objc_msgSend_computePipelineStateFor_constants_(v11, v13, v12, 0);
  v15 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v14;

  if (!self->_pipelineStates[1])
  {
    sub_2958BA494(&v45);
    return v45;
  }

  v18 = self->_metal;
  v19 = objc_msgSend_functionNameForProgram_(self, v16, 2, v17);
  v21 = objc_msgSend_computePipelineStateFor_constants_(v18, v20, v19, 0);
  v22 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v21;

  if (!self->_pipelineStates[2])
  {
    sub_2958BA3F8(&v45);
    return v45;
  }

  v25 = self->_metal;
  v26 = objc_msgSend_functionNameForProgram_(self, v23, 3, v24);
  v28 = objc_msgSend_computePipelineStateFor_constants_(v25, v27, v26, 0);
  v29 = self->_pipelineStates[3];
  self->_pipelineStates[3] = v28;

  if (!self->_pipelineStates[3])
  {
    sub_2958BA35C(&v45);
    return v45;
  }

  v32 = self->_metal;
  v33 = objc_msgSend_functionNameForProgram_(self, v30, 4, v31);
  v35 = objc_msgSend_computePipelineStateFor_constants_(v32, v34, v33, 0);
  v36 = self->_pipelineStates[4];
  self->_pipelineStates[4] = v35;

  if (!self->_pipelineStates[4])
  {
    sub_2958BA2C0(&v45);
    return v45;
  }

  v39 = self->_metal;
  v40 = objc_msgSend_functionNameForProgram_(self, v37, 5, v38);
  v42 = objc_msgSend_computePipelineStateFor_constants_(v39, v41, v40, 0);
  v43 = self->_pipelineStates[5];
  self->_pipelineStates[5] = v42;

  if (!self->_pipelineStates[5])
  {
    sub_2958BA224(&v45);
    return v45;
  }

  return 0;
}

- (GreenGhostBrightLightStage)initWithMetalContext:(id)a3
{
  v5 = a3;
  v40.receiver = self;
  v40.super_class = GreenGhostBrightLightStage;
  v6 = [(GreenGhostBrightLightStage *)&v40 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metal, a3);
    v7->_detectionLvl = 2;
    if (objc_msgSend_compileShaders(v7, v8, v9, v10))
    {
      sub_2958BA5CC();
LABEL_16:
      v37 = 0;
      goto LABEL_9;
    }

    v14 = objc_msgSend_device(v7->_metal, v11, v12, v13);
    v16 = objc_msgSend_newBufferWithLength_options_(v14, v15, 20, 0);
    sumLumaChromaMask = v7->_sumLumaChromaMask;
    v7->_sumLumaChromaMask = v16;

    if (v7->_sumLumaChromaMask)
    {
      v21 = objc_msgSend_device(v7->_metal, v18, v19, v20);
      v23 = objc_msgSend_newBufferWithLength_options_(v21, v22, 64, 0);
      patchDistances = v7->_patchDistances;
      v7->_patchDistances = v23;

      if (v7->_patchDistances)
      {
        v28 = objc_msgSend_device(v7->_metal, v25, v26, v27);
        v30 = objc_msgSend_newBufferWithLength_options_(v28, v29, 32, 0);
        repairValues = v7->_repairValues;
        v7->_repairValues = v30;

        if (v7->_repairValues)
        {
          *&v7->_processingROIInfo.var0 = xmmword_2959D61B0;
          *&v7->_anon_1d4[12] = 1065353216;
          v32 = [GreenGhostCommon alloc];
          v35 = objc_msgSend_initWithMetalContext_(v32, v33, v5, v34);
          greenGhostCommon = v7->_greenGhostCommon;
          v7->_greenGhostCommon = v35;

          if (v7->_greenGhostCommon)
          {
            v7->_syncComputeMaskSize = 0;
          }

          else
          {
            sub_2958BA638();
          }

          goto LABEL_8;
        }

        sub_2958BA6A4(&v41);
      }

      else
      {
        sub_2958BA740(&v41);
      }
    }

    else
    {
      sub_2958BA7DC(&v41);
    }
  }

  else
  {
    sub_2958BA878(&v41);
  }

  if (v41)
  {
    goto LABEL_16;
  }

LABEL_8:
  v37 = v7;
LABEL_9:
  v38 = v37;

  return v38;
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [GreenGhostBrightLightStage alloc];
  v7 = objc_msgSend_initWithMetalContext_(v4, v5, v3, v6);

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

- (void)dealloc
{
  sumLumaChromaMask = self->_sumLumaChromaMask;
  self->_sumLumaChromaMask = 0;

  patchDistances = self->_patchDistances;
  self->_patchDistances = 0;

  repairValues = self->_repairValues;
  self->_repairValues = 0;

  v6.receiver = self;
  v6.super_class = GreenGhostBrightLightStage;
  [(GreenGhostBrightLightStage *)&v6 dealloc];
}

- (int)scaleROI:(GreenGhostBrightLightStage *)self fullResolutionSize:(SEL)a2 downScaledSize:
{
  v5 = vdiv_f32(vcvt_f32_u32(v4), vcvt_f32_u32(v3));
  v6 = vmul_f32(v5, vcvt_f32_u32(*v2.i8));
  v7 = vcvt_u32_f32(vmul_f32(v5, vcvt_f32_u32(*&vextq_s8(v2, v2, 8uLL))));
  v8 = vadd_s32(vand_s8(v7, 0x100000001), v7);
  v9 = vcvt_f32_u32(vmax_u32(vzip1_s32(v4, v8), vzip2_s32(v4, v8)));
  *&v10 = vcvt_u32_f32(v6);
  *(&v10 + 1) = v8;
  *&self->_processingROIInfo.var0 = v10;
  *&self->_anon_1d4[12] = vdiv_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
  return 0;
}

- (int)cropLuma:(id)a3 chroma:(id)a4 outputLuma:(id)a5 outputChroma:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = *&self->_processingROIInfo.var0;
  v60 = *&self->_processingROIInfo.var0;
  v18 = objc_msgSend_commandQueue(self->_metal, v15, v16, v17);
  v22 = objc_msgSend_commandBuffer(v18, v19, v20, v21);

  if (!v22)
  {
    sub_2958BA9B0(v59);
LABEL_7:
    v56 = v59[0];
    goto LABEL_4;
  }

  v26 = objc_msgSend_computeCommandEncoder(v22, v23, v24, v25);
  if (!v26)
  {
    sub_2958BA914(v59);
    goto LABEL_7;
  }

  v29 = v26;
  objc_msgSend_setComputePipelineState_(v26, v27, self->_pipelineStates[0], v28);
  objc_msgSend_setTexture_atIndex_(v29, v30, v10, 0);
  objc_msgSend_setTexture_atIndex_(v29, v31, v11, 1);
  objc_msgSend_setTexture_atIndex_(v29, v32, v12, 2);
  objc_msgSend_setTexture_atIndex_(v29, v33, v13, 3);
  objc_msgSend_setBytes_length_atIndex_(v29, v34, &v60, 8, 0);
  v38 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[0], v35, v36, v37);
  v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[0], v39, v40, v41) / v38;
  v59[0] = objc_msgSend_width(v12, v43, v44, v45);
  v59[1] = objc_msgSend_height(v12, v46, v47, v48);
  v59[2] = 1;
  v58[0] = v38;
  v58[1] = v42;
  v58[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v29, v49, v59, v58);
  objc_msgSend_endEncoding(v29, v50, v51, v52);
  objc_msgSend_commit(v22, v53, v54, v55);

  v56 = 0;
LABEL_4:

  return v56;
}

- (int)unCropMaskCropped1:(id)a3 maskCropped2:(id)a4 maskOutput1:(id)a5 maskOutput2:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v65 = *&self->_processingROIInfo.var0;
  if (objc_msgSend_width(v12, v14, v15, v16) & 1) != 0 || (objc_msgSend_height(v12, v17, v18, v19))
  {
    sub_2958BAA4C(v64);
LABEL_10:
    v61 = v64[0];
    goto LABEL_6;
  }

  v23 = objc_msgSend_commandQueue(self->_metal, v20, v21, v22);
  v27 = objc_msgSend_commandBuffer(v23, v24, v25, v26);

  if (!v27)
  {
    sub_2958BAB94(v64);
    goto LABEL_10;
  }

  v31 = objc_msgSend_computeCommandEncoder(v27, v28, v29, v30);
  if (!v31)
  {
    sub_2958BAAE8();
    goto LABEL_10;
  }

  v34 = v31;
  objc_msgSend_setComputePipelineState_(v31, v32, self->_pipelineStates[1], v33);
  objc_msgSend_setTexture_atIndex_(v34, v35, v10, 0);
  objc_msgSend_setTexture_atIndex_(v34, v36, v11, 1);
  objc_msgSend_setTexture_atIndex_(v34, v37, v12, 2);
  objc_msgSend_setTexture_atIndex_(v34, v38, v13, 3);
  objc_msgSend_setBytes_length_atIndex_(v34, v39, &v65, 16, 0);
  v43 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[1], v40, v41, v42);
  v47 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[1], v44, v45, v46) / v43;
  v64[0] = objc_msgSend_width(v12, v48, v49, v50) >> 1;
  v64[1] = objc_msgSend_height(v12, v51, v52, v53) >> 1;
  v64[2] = 1;
  v63[0] = v43;
  v63[1] = v47;
  v63[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v34, v54, v64, v63);
  objc_msgSend_endEncoding(v34, v55, v56, v57);
  objc_msgSend_commit(v27, v58, v59, v60);

  v61 = 0;
LABEL_6:

  return v61;
}

- (int)refineMask:(id)a3 outputMask:(id)a4 outputMaskBinary:(id)a5 params:(BrightLightRefinementTuning)a6
{
  var2 = a6.var2;
  var1 = a6.var1;
  var0 = a6.var0;
  v147 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v146 = 0;
  v15 = *&self->_anon_1d4[12];
  if (objc_msgSend_width(v12, v16, v17, v18) & 1) != 0 || (objc_msgSend_height(v12, v19, v20, v21))
  {
    sub_2958BAC30(v145);
LABEL_20:
    LODWORD(v102) = v145[0];
    goto LABEL_11;
  }

  v25 = objc_msgSend_allocator(self->_metal, v22, v23, v24);
  v29 = objc_msgSend_newTextureDescriptor(v25, v26, v27, v28);

  if (!v29)
  {
    sub_2958BB050(v145);
    goto LABEL_20;
  }

  v33 = objc_msgSend_desc(v29, v30, v31, v32);
  objc_msgSend_setCompressionMode_(v33, v34, 2, v35);

  v39 = objc_msgSend_desc(v29, v36, v37, v38);
  objc_msgSend_setCompressionFootprint_(v39, v40, 0, v41);

  v45 = objc_msgSend_desc(v29, v42, v43, v44);
  objc_msgSend_setUsage_(v45, v46, 7, v47);

  v51 = objc_msgSend_pixelFormat(v12, v48, v49, v50);
  v55 = objc_msgSend_desc(v29, v52, v53, v54);
  objc_msgSend_setPixelFormat_(v55, v56, v51, v57);

  v61 = objc_msgSend_width(v12, v58, v59, v60);
  v65 = objc_msgSend_desc(v29, v62, v63, v64);
  objc_msgSend_setWidth_(v65, v66, v61, v67);

  v71 = objc_msgSend_height(v12, v68, v69, v70);
  v75 = objc_msgSend_desc(v29, v72, v73, v74);
  objc_msgSend_setHeight_(v75, v76, v71, v77);

  objc_msgSend_setLabel_(v29, v78, 0, v79);
  v83 = objc_msgSend_allocator(self->_metal, v80, v81, v82);
  v86 = objc_msgSend_newTextureWithDescriptor_(v83, v84, v29, v85);
  v146 = v86;

  if (!v86)
  {
    sub_2958BAFA4();
    goto LABEL_20;
  }

  v89 = v15 * var0;
  *&v88 = v89;
  v90 = objc_msgSend_erodeTexture_withNormalizedRadius_output_(self->_greenGhostCommon, v87, v12, v86, v88);
  if (v90)
  {
    LODWORD(v102) = v90;
    sub_2958BACCC(v90, v29);
    goto LABEL_11;
  }

  *&v92 = v89;
  v93 = objc_msgSend_dilateTexture_withNormalizedRadius_output_(self->_greenGhostCommon, v91, v86, v12, v92);
  if (v93)
  {
    LODWORD(v102) = v93;
    sub_2958BAD44(v93, v29);
    goto LABEL_11;
  }

  greenGhostCommon = self->_greenGhostCommon;
  *&v97 = var2;
  v99 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v94, v95, v96, v97);
  *&v100 = v15 * var1;
  v102 = objc_msgSend_dilateTexture_withNormalizedRadius_withThreshold_subtractTexture_output_(greenGhostCommon, v101, v12, v99, 0, v86, v100);

  if (v102)
  {
    sub_2958BADBC(v102, v29);
    goto LABEL_11;
  }

  v106 = objc_msgSend_commandQueue(self->_metal, v103, v104, v105);
  v102 = objc_msgSend_commandBuffer(v106, v107, v108, v109);

  if (!v102)
  {
    sub_2958BAEF8();
    goto LABEL_20;
  }

  v113 = objc_msgSend_computeCommandEncoder(v102, v110, v111, v112);
  if (!v113)
  {
    sub_2958BAE34(v29, v102, v145);
    goto LABEL_20;
  }

  v116 = v113;
  objc_msgSend_setComputePipelineState_(v113, v114, self->_pipelineStates[2], v115);
  objc_msgSend_setTexture_atIndex_(v116, v117, v86, 0);
  objc_msgSend_setTexture_atIndex_(v116, v118, v12, 1);
  objc_msgSend_setTexture_atIndex_(v116, v119, v13, 2);
  objc_msgSend_setTexture_atIndex_(v116, v120, v14, 3);
  objc_msgSend_setBytes_length_atIndex_(v116, v121, &v147.var3, 4, 0);
  v125 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[2], v122, v123, v124);
  v129 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[2], v126, v127, v128) / v125;
  v145[0] = objc_msgSend_width(v12, v130, v131, v132) >> 1;
  v145[1] = objc_msgSend_height(v12, v133, v134, v135) >> 1;
  v145[2] = 1;
  v144[0] = v125;
  v144[1] = v129;
  v144[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v116, v136, v145, v144);
  objc_msgSend_endEncoding(v116, v137, v138, v139);
  objc_msgSend_commit(v102, v140, v141, v142);
  FigMetalDecRef();

  LODWORD(v102) = 0;
LABEL_11:

  return v102;
}

- (int)detectionWithLuma:(id)a3 chroma:(id)a4 outputMask:(id)a5 outputMaskBinary:(id)a6 params:(BrightLightDetectionTuning *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v19 = objc_msgSend_allocator(self->_metal, v16, v17, v18);
  v23 = objc_msgSend_newTextureDescriptor(v19, v20, v21, v22);

  v133 = v13;
  if (!v23)
  {
    sub_2958BB3E0(v134);
LABEL_15:
    v131 = v134[0];
    goto LABEL_9;
  }

  v27 = objc_msgSend_desc(v23, v24, v25, v26);
  objc_msgSend_setCompressionMode_(v27, v28, 2, v29);

  v33 = objc_msgSend_desc(v23, v30, v31, v32);
  objc_msgSend_setCompressionFootprint_(v33, v34, 0, v35);

  v39 = objc_msgSend_desc(v23, v36, v37, v38);
  objc_msgSend_setUsage_(v39, v40, 7, v41);

  v45 = objc_msgSend_width(v14, v42, v43, v44);
  v49 = objc_msgSend_desc(v23, v46, v47, v48);
  objc_msgSend_setWidth_(v49, v50, v45, v51);

  v55 = objc_msgSend_height(v14, v52, v53, v54);
  v59 = objc_msgSend_desc(v23, v56, v57, v58);
  objc_msgSend_setHeight_(v59, v60, v55, v61);

  v65 = objc_msgSend_pixelFormat(v12, v62, v63, v64);
  v69 = objc_msgSend_desc(v23, v66, v67, v68);
  objc_msgSend_setPixelFormat_(v69, v70, v65, v71);

  objc_msgSend_setLabel_(v23, v72, 0, v73);
  v77 = objc_msgSend_allocator(self->_metal, v74, v75, v76);
  v80 = objc_msgSend_newTextureWithDescriptor_(v77, v78, v23, v79);
  v136 = v80;

  if (!v80)
  {
    sub_2958BB344(v134);
    goto LABEL_15;
  }

  v84 = objc_msgSend_pixelFormat(v13, v81, v82, v83);
  v88 = objc_msgSend_desc(v23, v85, v86, v87);
  objc_msgSend_setPixelFormat_(v88, v89, v84, v90);

  objc_msgSend_setLabel_(v23, v91, 0, v92);
  v96 = objc_msgSend_allocator(self->_metal, v93, v94, v95);
  v99 = objc_msgSend_newTextureWithDescriptor_(v96, v97, v23, v98);
  v135 = v99;

  if (!v99)
  {
    sub_2958BB2A8(v134);
    goto LABEL_15;
  }

  v101 = objc_msgSend_cropLuma_chroma_outputLuma_outputChroma_(self, v100, v12, v13, v80, v99);
  if (v101)
  {
    v131 = v101;
    sub_2958BB0EC();
    goto LABEL_9;
  }

  v105 = objc_msgSend_pixelFormat(v14, v102, v103, v104);
  v109 = objc_msgSend_desc(v23, v106, v107, v108);
  objc_msgSend_setPixelFormat_(v109, v110, v105, v111);

  objc_msgSend_setLabel_(v23, v112, 0, v113);
  v117 = objc_msgSend_allocator(self->_metal, v114, v115, v116);
  v120 = objc_msgSend_newTextureWithDescriptor_(v117, v118, v23, v119);
  v137 = v120;

  if (!v120)
  {
    sub_2958BB20C(v134);
    goto LABEL_15;
  }

  greenGhostCommon = self->_greenGhostCommon;
  v123 = *&a7[1].var0.var0.var1;
  v134[2] = *&a7->var1.var1;
  v134[3] = v123;
  v134[4] = *&a7[1].var0.var2.var1;
  v124 = *&a7->var0.var2.var0;
  v134[0] = *&a7->var0.var0.var0;
  v134[1] = v124;
  v125 = objc_msgSend_detectionWithLuma_croppedLuma_chroma_outputMask_params_processingROIInfo_(greenGhostCommon, v121, v12, v80, v99, v120, v134, &self->_processingROIInfo);
  if (v125)
  {
    v131 = v125;
    sub_2958BB14C();
  }

  else
  {
    *&v127 = a7[1].var1.var2;
    *&v128 = a7[1].var1.var3;
    *&v129 = a7[2].var0.var0.var0;
    *&v130 = a7[2].var0.var0.var1;
    v131 = objc_msgSend_refineMask_outputMask_outputMaskBinary_params_(self, v126, v120, v14, v15, v127, v128, v129, v130);
    if (v131)
    {
      sub_2958BB1AC();
    }

    else
    {
      FigMetalDecRef();
      FigMetalDecRef();
      FigMetalDecRef();
    }
  }

LABEL_9:

  return v131;
}

- (int)processRepairValues
{
  v5 = objc_msgSend_commandQueue(self->_metal, a2, v2, v3);
  v9 = objc_msgSend_commandBuffer(v5, v6, v7, v8);

  if (!v9)
  {
    sub_2958BB518(&v38);
LABEL_7:
    v35 = v38.i32[0];
    goto LABEL_4;
  }

  v13 = objc_msgSend_computeCommandEncoder(v9, v10, v11, v12);
  if (!v13)
  {
    sub_2958BB47C(&v38);
    goto LABEL_7;
  }

  v16 = v13;
  objc_msgSend_setComputePipelineState_(v13, v14, self->_pipelineStates[4], v15);
  objc_msgSend_setBuffer_offset_atIndex_(v16, v17, self->_sumLumaChromaMask, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v16, v18, self->_patchDistances, 0, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v16, v19, self->_repairValues, 0, 2);
  v23 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[4], v20, v21, v22);
  v27 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[4], v24, v25, v26);
  v38 = vdupq_n_s64(1uLL);
  v39 = 1;
  v37[0] = v23;
  v37[1] = v27 / v23;
  v37[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v16, v28, &v38, v37);
  objc_msgSend_endEncoding(v16, v29, v30, v31);
  objc_msgSend_commit(v9, v32, v33, v34);

  v35 = 0;
LABEL_4:

  return v35;
}

- (int)computeRepairValuesWithLuma:(id)a3 chroma:(id)a4 mask:(id)a5 maskBinary:(id)a6 params:(BrightLightRepairTuning *)a7
{
  v12 = a3;
  v188 = a4;
  v13 = a5;
  v14 = a6;
  var2 = a7->var2;
  v19 = objc_msgSend_width(v12, v16, v17, v18);
  if (v19 <= objc_msgSend_height(v12, v20, v21, v22))
  {
    v26 = objc_msgSend_height(v12, v23, v24, v25);
  }

  else
  {
    v26 = objc_msgSend_width(v12, v23, v24, v25);
  }

  v193 = var2 * v26;
  v191 = 0;
  v192 = 0;
  v30 = objc_msgSend_allocator(self->_metal, v27, v28, v29);
  v34 = objc_msgSend_newTextureDescriptor(v30, v31, v32, v33);

  if (!v34)
  {
    sub_2958BBAEC(v190);
LABEL_24:
    v185 = v190[0];
    goto LABEL_16;
  }

  v38 = objc_msgSend_desc(v34, v35, v36, v37);
  objc_msgSend_setCompressionMode_(v38, v39, 2, v40);

  v44 = objc_msgSend_desc(v34, v41, v42, v43);
  objc_msgSend_setCompressionFootprint_(v44, v45, 0, v46);

  v50 = objc_msgSend_desc(v34, v47, v48, v49);
  objc_msgSend_setUsage_(v50, v51, 7, v52);

  v56 = objc_msgSend_pixelFormat(v13, v53, v54, v55);
  v60 = objc_msgSend_desc(v34, v57, v58, v59);
  objc_msgSend_setPixelFormat_(v60, v61, v56, v62);

  v66 = objc_msgSend_width(v13, v63, v64, v65);
  v70 = objc_msgSend_desc(v34, v67, v68, v69);
  objc_msgSend_setWidth_(v70, v71, v66, v72);

  v76 = objc_msgSend_height(v13, v73, v74, v75);
  v80 = objc_msgSend_desc(v34, v77, v78, v79);
  objc_msgSend_setHeight_(v80, v81, v76, v82);

  objc_msgSend_setLabel_(v34, v83, 0, v84);
  v88 = objc_msgSend_allocator(self->_metal, v85, v86, v87);
  v91 = objc_msgSend_newTextureWithDescriptor_(v88, v89, v34, v90);
  v192 = v91;

  if (!v91)
  {
    sub_2958BBA50(v190);
    goto LABEL_24;
  }

  *&v93 = a7->var0;
  v94 = objc_msgSend_dilateTexture_withNormalizedRadius_withThreshold_subtractTexture_output_(self->_greenGhostCommon, v92, v14, 0, v14, v91, v93);
  if (v94)
  {
    v185 = v94;
    sub_2958BB5B4();
    goto LABEL_16;
  }

  objc_msgSend_setLabel_(v34, v95, 0, v96);
  v100 = objc_msgSend_allocator(self->_metal, v97, v98, v99);
  v103 = objc_msgSend_newTextureWithDescriptor_(v100, v101, v34, v102);
  v191 = v103;

  if (!v103)
  {
    sub_2958BB9B4(v190);
    goto LABEL_24;
  }

  *&v105 = a7->var1;
  v106 = objc_msgSend_dilateTexture_withNormalizedRadius_withThreshold_subtractTexture_output_(self->_greenGhostCommon, v104, v13, 0, v13, v103, v105);
  if (v106)
  {
    v185 = v106;
    sub_2958BB614();
    goto LABEL_16;
  }

  v110 = objc_msgSend_commandQueue(self->_metal, v107, v108, v109);
  v114 = objc_msgSend_commandBuffer(v110, v111, v112, v113);

  if (!v114)
  {
    sub_2958BB918(v190);
    goto LABEL_24;
  }

  v118 = objc_msgSend_blitCommandEncoder(v114, v115, v116, v117);
  if (!v118)
  {
    sub_2958BB86C();
    goto LABEL_24;
  }

  v122 = v118;
  v187 = v14;
  sumLumaChromaMask = self->_sumLumaChromaMask;
  v124 = objc_msgSend_length(sumLumaChromaMask, v119, v120, v121);
  objc_msgSend_fillBuffer_range_value_(v122, v125, sumLumaChromaMask, 0, v124, 0);
  patchDistances = self->_patchDistances;
  v130 = objc_msgSend_length(patchDistances, v127, v128, v129);
  objc_msgSend_fillBuffer_range_value_(v122, v131, patchDistances, 0, v130, 0);
  objc_msgSend_endEncoding(v122, v132, v133, v134);
  objc_msgSend_commit(v114, v135, v136, v137);
  v141 = objc_msgSend_commandQueue(self->_metal, v138, v139, v140);
  v145 = objc_msgSend_commandBuffer(v141, v142, v143, v144);

  if (v145)
  {
    v149 = objc_msgSend_computeCommandEncoder(v145, v146, v147, v148);
    if (v149)
    {
      v152 = v149;
      objc_msgSend_setComputePipelineState_(v149, v150, self->_pipelineStates[3], v151);
      objc_msgSend_setTexture_atIndex_(v152, v153, v12, 0);
      objc_msgSend_setTexture_atIndex_(v152, v154, v188, 1);
      objc_msgSend_setTexture_atIndex_(v152, v155, v91, 2);
      objc_msgSend_setTexture_atIndex_(v152, v156, v103, 3);
      objc_msgSend_setBuffer_offset_atIndex_(v152, v157, self->_sumLumaChromaMask, 0, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v152, v158, self->_patchDistances, 0, 1);
      objc_msgSend_setBytes_length_atIndex_(v152, v159, &v193, 4, 2);
      v163 = objc_msgSend_threadExecutionWidth(self->_pipelineStates[3], v160, v161, v162);
      v167 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_pipelineStates[3], v164, v165, v166) / v163;
      v190[0] = objc_msgSend_width(v12, v168, v169, v170);
      v190[1] = objc_msgSend_height(v12, v171, v172, v173);
      v190[2] = 1;
      v189[0] = v163;
      v189[1] = v167;
      v189[2] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v152, v174, v190, v189);
      objc_msgSend_endEncoding(v152, v175, v176, v177);
      objc_msgSend_commit(v145, v178, v179, v180);
      v184 = objc_msgSend_processRepairValues(self, v181, v182, v183);
      v185 = v184;
      if (v184)
      {
        sub_2958BB674(v184, v122, v152, v145);
      }

      else
      {
        FigMetalDecRef();
        FigMetalDecRef();
      }

      goto LABEL_15;
    }

    sub_2958BB6FC(v122, v145, v190);
  }

  else
  {
    sub_2958BB7C0();
  }

  v185 = v190[0];
LABEL_15:
  v14 = v187;
LABEL_16:

  return v185;
}

- (float)computeMaxMaskSizeWithWidth:(unint64_t)a3 height:(unint64_t)a4 params:(BrightLightRepairTuning *)a5
{
  var8 = a5->var8;
  v6 = sqrtf(var8);
  return ((((v6 + (a5->var0 * 2.0)) * (v6 + (a5->var0 * 2.0))) - var8) * a3) * a4;
}

- (int)applyRepairWithLuma:(id)a3 chroma:(id)a4 lumaBase:(id)a5 chromaBase:(id)a6 mask:(id)a7 output:(id)a8 params:(BrightLightRepairTuning *)a9 gainMap:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v90 = a8;
  v21 = a10;
  v25 = objc_msgSend_width(v16, v22, v23, v24);
  if (v25 <= objc_msgSend_height(v16, v26, v27, v28))
  {
    v32 = objc_msgSend_height(v16, v29, v30, v31);
  }

  else
  {
    v32 = objc_msgSend_width(v16, v29, v30, v31);
  }

  a9->var2 = a9->var2 * v32;
  v36 = objc_msgSend_width(v20, v33, v34, v35, v90);
  v40 = objc_msgSend_height(v20, v37, v38, v39);
  objc_msgSend_computeMaxMaskSizeWithWidth_height_params_(self, v41, v36, v40, a9);
  v96 = v45;
  if (v21 && objc_msgSend_isCompressed(v21, v42, v43, v44))
  {
    sub_2958BBB88(v95);
    v88 = v95[0];
    goto LABEL_14;
  }

  v46 = v19;
  v47 = v17;
  v48 = objc_msgSend_commandQueue(self->_metal, v42, v43, v44);
  v52 = objc_msgSend_commandBuffer(v48, v49, v50, v51);

  if (!v52)
  {
    sub_2958BBCD0(v95);
LABEL_12:
    v88 = v95[0];
    v17 = v47;
    v19 = v46;
LABEL_14:
    v67 = v91;
    goto LABEL_9;
  }

  v56 = objc_msgSend_computeCommandEncoder(v52, v53, v54, v55);
  if (!v56)
  {
    sub_2958BBC24();
    goto LABEL_12;
  }

  v59 = v56;
  objc_msgSend_setComputePipelineState_(v56, v57, self->_pipelineStates[5], v58);
  objc_msgSend_setTexture_atIndex_(v59, v60, v16, 0);
  v92 = v20;
  v61 = v21;
  v62 = v47;
  objc_msgSend_setTexture_atIndex_(v59, v63, v47, 1);
  objc_msgSend_setTexture_atIndex_(v59, v64, v18, 2);
  v19 = v46;
  objc_msgSend_setTexture_atIndex_(v59, v65, v46, 3);
  objc_msgSend_setTexture_atIndex_(v59, v66, v92, 4);
  v67 = v91;
  objc_msgSend_setTexture_atIndex_(v59, v68, v91[2], 5);
  objc_msgSend_setTexture_atIndex_(v59, v69, v91[3], 6);
  objc_msgSend_setTexture_atIndex_(v59, v70, v61, 7);
  objc_msgSend_setBuffer_offset_atIndex_(v59, v71, self->_repairValues, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v59, v72, a9, 36, 1);
  objc_msgSend_setBytes_length_atIndex_(v59, v73, &self->_faceBodyBoundaries, 352, 2);
  objc_msgSend_setBytes_length_atIndex_(v59, v74, &v96, 4, 3);
  v95[0] = objc_msgSend_width(v16, v75, v76, v77);
  v95[1] = objc_msgSend_height(v16, v78, v79, v80);
  v95[2] = 1;
  v93 = xmmword_2959D5ED0;
  v94 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v59, v81, v95, &v93);
  objc_msgSend_endEncoding(v59, v82, v83, v84);
  objc_msgSend_commit(v52, v85, v86, v87);

  v17 = v62;
  v21 = v61;
  v20 = v92;
  v88 = 0;
LABEL_9:

  return v88;
}

- (int)repairPyr:(id)a3 chroma:(id)a4 mask:(id)a5 maskBinary:(id)a6 output:(id)a7 params:(BrightLightRepairTuning *)a8 gainMap:(id)a9
{
  v15 = a3;
  v101 = a4;
  v16 = a5;
  v102 = a6;
  v17 = a7;
  v100 = a9;
  v106 = 0;
  v21 = objc_msgSend_allocator(self->_metal, v18, v19, v20);
  v25 = objc_msgSend_newTextureDescriptor(v21, v22, v23, v24);

  if (!v25)
  {
    v84 = v15;
    sub_2958BBF28(&v103);
LABEL_10:
    v98 = v103;
LABEL_12:
    v89 = v101;
    v90 = v102;
LABEL_14:
    v96 = v100;
    goto LABEL_7;
  }

  v29 = objc_msgSend_desc(v25, v26, v27, v28);
  objc_msgSend_setCompressionMode_(v29, v30, 2, v31);

  v35 = objc_msgSend_desc(v25, v32, v33, v34);
  objc_msgSend_setCompressionFootprint_(v35, v36, 0, v37);

  v41 = objc_msgSend_desc(v25, v38, v39, v40);
  objc_msgSend_setUsage_(v41, v42, 7, v43);

  v47 = objc_msgSend_pixelFormat(v16, v44, v45, v46);
  v51 = objc_msgSend_desc(v25, v48, v49, v50);
  objc_msgSend_setPixelFormat_(v51, v52, v47, v53);

  v57 = objc_msgSend_width(v16, v54, v55, v56);
  v61 = objc_msgSend_desc(v25, v58, v59, v60);
  objc_msgSend_setWidth_(v61, v62, v57, v63);

  v67 = objc_msgSend_height(v16, v64, v65, v66);
  v71 = objc_msgSend_desc(v25, v68, v69, v70);
  objc_msgSend_setHeight_(v71, v72, v67, v73);

  objc_msgSend_setLabel_(v25, v74, 0, v75);
  v79 = objc_msgSend_allocator(self->_metal, v76, v77, v78);
  v82 = objc_msgSend_newTextureWithDescriptor_(v79, v80, v25, v81);
  v106 = v82;

  if (!v82)
  {
    v84 = v15;
    sub_2958BBE8C(&v103);
    goto LABEL_10;
  }

  v84 = v15;
  v85 = objc_msgSend_downscaleInput_output_(self->_greenGhostCommon, v83, v15[42], v82);
  if (v85)
  {
    v98 = v85;
    sub_2958BBD6C();
    goto LABEL_12;
  }

  v87 = *&a8->var4;
  v103 = *&a8->var0;
  v104 = v87;
  var8 = a8->var8;
  v88 = v82;
  v89 = v101;
  v90 = v102;
  v91 = objc_msgSend_computeRepairValuesWithLuma_chroma_mask_maskBinary_params_(self, v86, v88, v101, v16, v102, &v103);
  if (v91)
  {
    v98 = v91;
    sub_2958BBDCC();
    goto LABEL_14;
  }

  FigMetalDecRef();
  v92 = v84[42];
  v93 = v84[62];
  v94 = v84[self->_detectionLvl + 42];
  v95 = *&a8->var4;
  v103 = *&a8->var0;
  v104 = v95;
  var8 = a8->var8;
  v96 = v100;
  v98 = objc_msgSend_applyRepairWithLuma_chroma_lumaBase_chromaBase_mask_output_params_gainMap_(self, v97, v92, v93, v94, v101, v16, v17, &v103, v100);
  if (v98)
  {
    sub_2958BBE2C();
  }

LABEL_7:

  return v98;
}

- (int)GhostMitigationWithPyr:(id)a3 outputImage:(id)a4 tuning:(id)a5 faceLandMarks:(id)a6 ev0FrameMetadata:(const frameMetadata *)a7 roi:(id)a8 gainMap:
{
  v194 = v8;
  v15 = a3;
  v195 = a4;
  v198 = a5;
  v197 = a6;
  v196 = a8;
  v218 = 0;
  v219 = 0;
  v216 = 0;
  v217 = 0;
  v215 = 0;
  v19 = objc_msgSend_width(v15[self->_detectionLvl + 61], v16, v17, v18);
  v23 = objc_msgSend_height(v15[self->_detectionLvl + 61], v20, v21, v22);
  v27 = objc_msgSend_width(v15[42], v24, v25, v26);
  v31 = objc_msgSend_height(v15[42], v28, v29, v30);
  v35 = objc_msgSend_allocator(self->_metal, v32, v33, v34);
  v39 = objc_msgSend_newTextureDescriptor(v35, v36, v37, v38);

  if (!v39)
  {
    sub_2958BC510(&v209);
LABEL_29:
    v184 = v209;
LABEL_31:
    v94 = v195;
    goto LABEL_23;
  }

  v193 = a7;
  v43 = objc_msgSend_desc(v39, v40, v41, v42);
  objc_msgSend_setCompressionMode_(v43, v44, 2, v45);

  v49 = objc_msgSend_desc(v39, v46, v47, v48);
  objc_msgSend_setCompressionFootprint_(v49, v50, 0, v51);

  v55 = objc_msgSend_desc(v39, v52, v53, v54);
  objc_msgSend_setUsage_(v55, v56, 7, v57);

  v61 = objc_msgSend_desc(v39, v58, v59, v60);
  objc_msgSend_setPixelFormat_(v61, v62, 65, v63);

  v67 = objc_msgSend_desc(v39, v64, v65, v66);
  objc_msgSend_setWidth_(v67, v68, v19, v69);

  v73 = objc_msgSend_desc(v39, v70, v71, v72);
  objc_msgSend_setHeight_(v73, v74, v23, v75);

  objc_msgSend_setLabel_(v39, v76, 0, v77);
  v81 = objc_msgSend_allocator(self->_metal, v78, v79, v80);
  v84 = objc_msgSend_newTextureWithDescriptor_(v81, v82, v39, v83);
  v219 = v84;

  if (!v84)
  {
    sub_2958BC474(&v209);
    goto LABEL_29;
  }

  v86 = objc_msgSend_downscaleInput_output_(self->_greenGhostCommon, v85, v15[self->_detectionLvl + 60], v84);
  if (v86)
  {
    v184 = v86;
    sub_2958BBFC4();
    goto LABEL_31;
  }

  v90 = objc_msgSend_scaleROI_fullResolutionSize_downScaledSize_(self, v87, v88, v89, v194, COERCE_DOUBLE(__PAIR64__(v31, v27)), COERCE_DOUBLE(__PAIR64__(v23, v19)));
  v94 = v195;
  if (v90)
  {
    v184 = v90;
    sub_2958BC024();
    goto LABEL_23;
  }

  v95 = *&self->_anon_1d4[4];
  v96 = objc_msgSend_desc(v39, v91, v92, v93);
  objc_msgSend_setWidth_(v96, v97, v95, v98);

  v99 = *&self->_anon_1d4[8];
  v103 = objc_msgSend_desc(v39, v100, v101, v102);
  objc_msgSend_setHeight_(v103, v104, v99, v105);

  v109 = objc_msgSend_desc(v39, v106, v107, v108);
  objc_msgSend_setPixelFormat_(v109, v110, 25, v111);

  objc_msgSend_setLabel_(v39, v112, 0, v113);
  v117 = objc_msgSend_allocator(self->_metal, v114, v115, v116);
  v120 = objc_msgSend_newTextureWithDescriptor_(v117, v118, v39, v119);
  v216 = v120;

  if (!v120)
  {
    sub_2958BC3D8(&v209);
LABEL_38:
    v184 = v209;
    goto LABEL_23;
  }

  objc_msgSend_setLabel_(v39, v121, 0, v122);
  v126 = objc_msgSend_allocator(self->_metal, v123, v124, v125);
  v129 = objc_msgSend_newTextureWithDescriptor_(v126, v127, v39, v128);
  v215 = v129;

  if (!v129)
  {
    sub_2958BC33C(&v209);
    goto LABEL_38;
  }

  v133 = v15[self->_detectionLvl + 42];
  if (v198)
  {
    objc_msgSend_tuningParams(v198, v130, v131, v132);
  }

  else
  {
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
  }

  v211 = v205;
  v212 = v206;
  v213 = v207;
  v214 = v208;
  v209 = v203;
  v210 = v204;
  v134 = objc_msgSend_detectionWithLuma_chroma_outputMask_outputMaskBinary_params_(self, v130, v133, v84, v120, v129, &v209);
  if (v134)
  {
    v184 = v134;
    sub_2958BC084();
    goto LABEL_23;
  }

  v138 = objc_msgSend_desc(v39, v135, v136, v137);
  objc_msgSend_setWidth_(v138, v139, v19, v140);

  v144 = objc_msgSend_desc(v39, v141, v142, v143);
  objc_msgSend_setHeight_(v144, v145, v23, v146);

  objc_msgSend_setLabel_(v39, v147, 0, v148);
  v152 = objc_msgSend_allocator(self->_metal, v149, v150, v151);
  v155 = objc_msgSend_newTextureWithDescriptor_(v152, v153, v39, v154);
  v218 = v155;

  if (!v155)
  {
    sub_2958BC2A0(&v209);
    goto LABEL_38;
  }

  objc_msgSend_setLabel_(v39, v156, 0, v157);
  v161 = objc_msgSend_allocator(self->_metal, v158, v159, v160);
  v164 = objc_msgSend_newTextureWithDescriptor_(v161, v162, v39, v163);
  v217 = v164;

  if (!v164)
  {
    sub_2958BC204(&v209);
    goto LABEL_38;
  }

  v166 = objc_msgSend_unCropMaskCropped1_maskCropped2_maskOutput1_maskOutput2_(self, v165, v120, v129, v155, v164);
  if (v166)
  {
    v184 = v166;
    sub_2958BC0E4();
  }

  else
  {
    FigMetalDecRef();
    FigMetalDecRef();
    v170 = objc_msgSend_width(v195[2], v167, v168, v169);
    v177 = objc_msgSend_height(v195[2], v171, v172, v173);
    greenGhostCommon = self->_greenGhostCommon;
    if (v198)
    {
      objc_msgSend_tuningParams(v198, v174, v175, v176);
      FaceBodyBoundariesFromFaceLandMarks_ev0FrameMetadata_imgSize_faceBoundaryPaddingRatio_bodyBoundaryPaddingRatio_output = objc_msgSend_extractFaceBodyBoundariesFromFaceLandMarks_ev0FrameMetadata_imgSize_faceBoundaryPaddingRatio_bodyBoundaryPaddingRatio_output_(greenGhostCommon, v179, v197, v193, &self->_faceBodyBoundaries, v170, v177, v202, COERCE_DOUBLE(1036831949));
    }

    else
    {
      FaceBodyBoundariesFromFaceLandMarks_ev0FrameMetadata_imgSize_faceBoundaryPaddingRatio_bodyBoundaryPaddingRatio_output = objc_msgSend_extractFaceBodyBoundariesFromFaceLandMarks_ev0FrameMetadata_imgSize_faceBoundaryPaddingRatio_bodyBoundaryPaddingRatio_output_(greenGhostCommon, v174, v197, v193, &self->_faceBodyBoundaries, v170, v177, 0.0, COERCE_DOUBLE(1036831949));
    }

    if (FaceBodyBoundariesFromFaceLandMarks_ev0FrameMetadata_imgSize_faceBoundaryPaddingRatio_bodyBoundaryPaddingRatio_output)
    {
      v184 = FaceBodyBoundariesFromFaceLandMarks_ev0FrameMetadata_imgSize_faceBoundaryPaddingRatio_bodyBoundaryPaddingRatio_output;
      sub_2958BC144();
    }

    else
    {
      if (v198)
      {
        objc_msgSend_tuningParams(v198, v181, v182, v183);
      }

      else
      {
        v201 = 0;
        v199 = 0u;
        v200 = 0u;
      }

      v209 = v199;
      v210 = v200;
      LODWORD(v211) = v201;
      v184 = objc_msgSend_repairPyr_chroma_mask_maskBinary_output_params_gainMap_(self, v181, v15, v84, v155, v164, v195, &v209, v196);
      if (v184)
      {
        sub_2958BC1A4();
      }

      else
      {
        FigMetalDecRef();
        FigMetalDecRef();
        FigMetalDecRef();
      }
    }
  }

LABEL_23:
  v187 = objc_opt_new();
  if (self->_faceBodyBoundaries.nFaces)
  {
    objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v185, 1, v186);
  }

  else
  {
    objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v185, *&self->_anon_74[172] != 0, v186);
  }
  v188 = ;
  objc_msgSend_setObject_forKeyedSubscript_(v187, v189, v188, @"foundFacesOrBodies");

  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);
  objc_msgSend_addToSidecar_forKey_(WeakRetained, v191, v187, @"GreenGhostBrightLight");

  return v184;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end