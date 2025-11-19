@interface ToneMappingStage
+ (int)prewarmShaders:(id)a3;
- (SidecarWriter)sidecarWriter;
- (ToneMappingStage)initWithContext:(id)a3 mtlSuballocatorID:(unsigned int)a4;
- (__n64)getCcmRoi:(int)a3 chromaTexHeight:(int)a4 ccmLut:(unsigned __int16 *)a5 isHalfResolution:(int)a6;
- (__n64)getLtmRoi:(int)a3 chromaTexHeight:(int)a4 ltmLut:(unsigned __int16 *)a5 isHalfResolution:(int)a6;
- (float)getExposureBiasFactor:(const frameMetadata *)a3 inputIsLinear:(BOOL)a4;
- (id)getSTFLTM_asNSData;
- (int)fetchTuningParametersFromPlist:(id)a3 ev0FrameMetadata:(const frameMetadata *)a4 toneMap:(id)a5 destinationMTLBuffer:(id)a6;
- (int)mstmsApplyLumaGain:(id)a3 inputLuma:(id)a4 inputChroma:(id)a5 outputChroma:(id)a6 localGainMap:(id)a7 chromaGainAdjPower:(float)a8 inputIsLinear:(BOOL)a9 chromaBias:(float)a10;
- (int)performSmallFaceFix:(id)a3 faceLandmarks:(id)a4 faceLandmarkOrientation:(int)a5 tmPlist:(id)a6;
- (uint64_t)performLTM:(__n128)a3 bilateralGrid:(__n128)a4 bilateralGridHomography:(__n128)a5 detailEnhance:(float)a6 darkestFrameMetadata:(__n128)a7 scaleInput:(__n128)a8 colorCorrection:(__n128)a9 outputMode:(uint64_t)a10 chromaGainAdjPower:(void *)a11 inputIsLinear:(void *)a12 chromaBias:(uint64_t)a13 isHalfResolution:(unsigned int)a14;
- (uint64_t)runToneMapping:(double)a3 bilateralGrid:(double)a4 bilateralGridHomography:(float)a5 tmPlist:(double)a6 darkestFrameMetadata:(double)a7 ev0FrameMetadata:(double)a8 scaleInput:(uint64_t)a9 colorCorrection:(void *)a10 hasChromaBias:(void *)a11 quality:(void *)a12 inputIsLinear:(uint64_t)a13;
- (unsigned)getSRLStatus;
- (void)dealloc;
- (void)reset;
@end

@implementation ToneMappingStage

- (ToneMappingStage)initWithContext:(id)a3 mtlSuballocatorID:(unsigned int)a4
{
  v7 = a3;
  v26.receiver = self;
  v26.super_class = ToneMappingStage;
  v8 = [(ToneMappingStage *)&v26 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_metal, a3);
  v10 = [SubjectRelightingStage alloc];
  v13 = objc_msgSend_initWithMetalContext_(v10, v11, v9->_metal, v12);
  subjectRelightV2 = v9->_subjectRelightV2;
  v9->_subjectRelightV2 = v13;

  if (v9->_subjectRelightV2)
  {
    v9->_mtlSuballocatorID = a4;
    v18 = objc_msgSend_sharedInstance(ToneMappingShared, v15, v16, v17);
    v21 = objc_msgSend_getShaders_(v18, v19, v9->_metal, v20);
    shaders = v9->_shaders;
    v9->_shaders = v21;

    if (v9->_shaders)
    {
      goto LABEL_4;
    }

    sub_2958BF538(&v27);
  }

  else
  {
    sub_2958BF5D4(&v27);
  }

  if (v27)
  {
    v23 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v23 = v9;
LABEL_5:
  v24 = v23;

  return v24;
}

- (void)dealloc
{
  objc_msgSend_purgeResources(self->_stfProcessor, a2, v2, v3);
  toneMapSmoothingResources = self->_toneMapSmoothingResources;
  self->_toneMapSmoothingResources = 0;

  subjectRelightV2 = self->_subjectRelightV2;
  self->_subjectRelightV2 = 0;

  v7.receiver = self;
  v7.super_class = ToneMappingStage;
  [(ToneMappingStage *)&v7 dealloc];
}

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [ToneMappingShaders alloc];
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

- (int)mstmsApplyLumaGain:(id)a3 inputLuma:(id)a4 inputChroma:(id)a5 outputChroma:(id)a6 localGainMap:(id)a7 chromaGainAdjPower:(float)a8 inputIsLinear:(BOOL)a9 chromaBias:(float)a10
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v81 = a8;
  v80 = a9;
  v79 = a10;
  v26 = objc_msgSend_commandQueue(self->_metal, v23, v24, v25);
  v30 = objc_msgSend_commandBuffer(v26, v27, v28, v29);

  if (!v30)
  {
    sub_2958BFB80(v78);
LABEL_9:
    v74 = v78[0];
    goto LABEL_6;
  }

  v34 = objc_msgSend_computeCommandEncoder(v30, v31, v32, v33);
  if (!v34)
  {
    sub_2958BFAE4(v78);
    goto LABEL_9;
  }

  v37 = v34;
  objc_msgSend_setComputePipelineState_(v34, v35, self->_shaders->_mstmsApply, v36);
  objc_msgSend_setTexture_atIndex_(v37, v38, v18, 0);
  objc_msgSend_setTexture_atIndex_(v37, v39, v19, 1);
  objc_msgSend_setTexture_atIndex_(v37, v40, v20, 2);
  objc_msgSend_setTexture_atIndex_(v37, v41, v21, 3);
  objc_msgSend_setTexture_atIndex_(v37, v42, v22, 4);
  objc_msgSend_setBytes_length_atIndex_(v37, v43, &v81, 4, 0);
  objc_msgSend_setBytes_length_atIndex_(v37, v44, &v80, 1, 1);
  objc_msgSend_setBytes_length_atIndex_(v37, v45, &v79, 4, 2);
  objc_msgSend_setImageblockWidth_height_(v37, v46, 32, 32);
  v78[0] = ((objc_msgSend_width(v18, v47, v48, v49) >> 1) + 15) >> 4;
  v78[1] = ((objc_msgSend_height(v18, v50, v51, v52) >> 1) + 15) >> 4;
  v78[2] = 1;
  v76 = vdupq_n_s64(0x10uLL);
  v77 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v37, v53, v78, &v76);
  objc_msgSend_endEncoding(v37, v54, v55, v56);

  if (*MEMORY[0x29EDB9270])
  {
    v60 = objc_msgSend_commandQueue(v30, v57, v58, v59);
    v64 = objc_msgSend_commandBuffer(v60, v61, v62, v63);

    objc_msgSend_setLabel_(v64, v65, @"KTRACE_MTLCMDBUF", v66);
    objc_msgSend_addCompletedHandler_(v64, v67, &unk_2A1CA9720, v68);
    objc_msgSend_commit(v64, v69, v70, v71);
    objc_msgSend_addCompletedHandler_(v30, v72, &unk_2A1CA9740, v73);
  }

  objc_msgSend_commit(v30, v57, v58, v59);
  v74 = 0;
LABEL_6:

  return v74;
}

- (uint64_t)performLTM:(__n128)a3 bilateralGrid:(__n128)a4 bilateralGridHomography:(__n128)a5 detailEnhance:(float)a6 darkestFrameMetadata:(__n128)a7 scaleInput:(__n128)a8 colorCorrection:(__n128)a9 outputMode:(uint64_t)a10 chromaGainAdjPower:(void *)a11 inputIsLinear:(void *)a12 chromaBias:(uint64_t)a13 isHalfResolution:(unsigned int)a14
{
  v150[0] = a2;
  v150[1] = a3;
  v150[2] = a4;
  v149[0] = a7;
  v149[1] = a8;
  v149[2] = a9;
  v24 = a13 + 221184;
  v25 = a11;
  v26 = a12;
  v148 = a5;
  v147 = a6;
  v146 = a15;
  v30 = objc_msgSend_width(*(v25 + 2), v27, v28, v29);
  v34 = objc_msgSend_height(*(v25 + 2), v31, v32, v33);
  objc_msgSend_getLtmRoi_chromaTexHeight_ltmLut_isHalfResolution_(a1, v35, v30, v34, a13 + 168, a16);
  v145 = v36;
  v40 = objc_msgSend_width(*(v25 + 2), v37, v38, v39);
  v44 = objc_msgSend_height(*(v25 + 2), v41, v42, v43);
  objc_msgSend_getCcmRoi_chromaTexHeight_ccmLut_isHalfResolution_(a1, v45, v40, v44, a13 + 168, a16);
  v144 = v47;
  if (*(*(v25 + 16) + 56) == 1)
  {
    v48 = *(v24 + 1825);
  }

  else
  {
    v48 = 0;
  }

  v143 = *(v24 + 1248);
  objc_msgSend_getExposureBiasFactor_inputIsLinear_(a1, v46, a13, a15, *&a5);
  v142 = v49;
  v53 = objc_msgSend_commandQueue(*(a1 + 8), v50, v51, v52);
  v57 = objc_msgSend_commandBuffer(v53, v54, v55, v56);

  if (!v57)
  {
    sub_2958BFE00(v141);
    v136 = LODWORD(v141[0]);
    goto LABEL_22;
  }

  v64 = objc_msgSend_blitCommandEncoder(v57, v58, v59, v60);
  if (!v64)
  {
    sub_2958BFD64(v141);
    v136 = LODWORD(v141[0]);
    goto LABEL_21;
  }

  v65 = *(*(v25 + 16) + 32);
  v66 = objc_msgSend_length(v65, v61, v62, v63);
  objc_msgSend_fillBuffer_range_value_(v64, v67, v65, 0, v66, 0);
  objc_msgSend_endEncoding(v64, v68, v69, v70);
  v74 = objc_msgSend_computeCommandEncoder(v57, v71, v72, v73);
  if (v74)
  {
    v75 = 32;
    if (!v26)
    {
      v75 = 24;
    }

    v76 = *(*(a1 + 16) + v75);
    objc_msgSend_setComputePipelineState_(v74, v77, v76, v78);
    objc_msgSend_setTexture_atIndex_(v74, v79, *(v25 + 2), 1);
    objc_msgSend_setTexture_atIndex_(v74, v80, *(v25 + 3), 3);
    objc_msgSend_setTexture_atIndex_(v74, v81, *(*(v25 + 16) + 8), 4);
    objc_msgSend_setTexture_atIndex_(v74, v82, *(*(v25 + 16) + 16), 5);
    objc_msgSend_setTexture_atIndex_(v74, v83, *(*(v25 + 16) + 24), 6);
    objc_msgSend_setTexture_atIndex_(v74, v84, *(v25 + 1), 8);
    if (v48)
    {
      objc_msgSend_setTexture_atIndex_(v74, v85, *(*(v25 + 16) + 48), 12);
    }

    else
    {
      objc_msgSend_setTexture_atIndex_(v74, v85, 0, 12);
    }

    if (a14 <= 2)
    {
      v87 = qword_2959D6410[a14];
      v88 = qword_2959D6428[a14];
      objc_msgSend_setTexture_atIndex_(v74, v86, *(v25 + 4), v87);
      objc_msgSend_setTexture_atIndex_(v74, v89, *(v25 + 5), v88);
    }

    objc_msgSend_setBytes_length_atIndex_(v74, v86, &v145, 16, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v74, v90, *(*(v25 + 16) + 32), 0, 2);
    objc_msgSend_setBytes_length_atIndex_(v74, v91, &v143, 4, 3);
    if (v26)
    {
      objc_msgSend_setTexture_atIndex_(v74, v92, v26[1], 7);
      objc_msgSend_setBuffer_offset_atIndex_(v74, v93, v26[2], 0, 4);
      objc_msgSend_setBytes_length_atIndex_(v74, v94, &v148, 16, 5);
      objc_msgSend_setBytes_length_atIndex_(v74, v95, v150, 48, 6);
    }

    objc_msgSend_setBytes_length_atIndex_(v74, v92, &v142, 4, 7);
    objc_msgSend_setBytes_length_atIndex_(v74, v96, &v147, 4, 8);
    objc_msgSend_setBytes_length_atIndex_(v74, v97, &a17, 4, 9);
    objc_msgSend_setBytes_length_atIndex_(v74, v98, &v146, 1, 10);
    objc_msgSend_setBytes_length_atIndex_(v74, v99, v149, 48, 11);
    objc_msgSend_setBytes_length_atIndex_(v74, v100, &a17 + 4, 4, 12);
    objc_msgSend_setBytes_length_atIndex_(v74, v101, v25 + 136, 4, 13);
    objc_msgSend_setBytes_length_atIndex_(v74, v102, &v144, 16, 14);
    objc_msgSend_setImageblockWidth_height_(v74, v103, 32, 32);
    if (objc_msgSend_maxTotalThreadsPerThreadgroup(v76, v104, v105, v106) > 0xFF)
    {
      v110 = objc_msgSend_width(*(v25 + 2), v107, v108, v109);
      v114 = objc_msgSend_height(*(v25 + 2), v111, v112, v113);
      v141[0] = v110;
      v141[1] = v114;
      v141[2] = 1;
      v139 = vdupq_n_s64(0x10uLL);
      v140 = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v74, v115, v141, &v139);
      objc_msgSend_endEncoding(v74, v116, v117, v118);
      if (*MEMORY[0x29EDB9270])
      {
        v122 = objc_msgSend_commandQueue(v57, v119, v120, v121);
        v126 = objc_msgSend_commandBuffer(v122, v123, v124, v125);

        objc_msgSend_setLabel_(v126, v127, @"KTRACE_MTLCMDBUF", v128);
        objc_msgSend_addCompletedHandler_(v126, v129, &unk_2A1CA9760, v130);
        objc_msgSend_commit(v126, v131, v132, v133);
        objc_msgSend_addCompletedHandler_(v57, v134, &unk_2A1CA9780, v135);
      }

      objc_msgSend_commit(v57, v119, v120, v121);

      v136 = 0;
      goto LABEL_20;
    }

    sub_2958BFC1C(v76, v141);
  }

  else
  {
    sub_2958BFCC8(v141);
  }

  v136 = LODWORD(v141[0]);
LABEL_20:

LABEL_21:
LABEL_22:

  return v136;
}

- (int)fetchTuningParametersFromPlist:(id)a3 ev0FrameMetadata:(const frameMetadata *)a4 toneMap:(id)a5 destinationMTLBuffer:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v15 = objc_msgSend_count(*(v9 + 1), v12, v13, v14);
  if (objc_msgSend_length(v11, v16, v17, v18) < (v15 << 7))
  {
    sub_2958BFE9C();
    LODWORD(v15) = -12780;
  }

  else
  {
    v19 = v11;
    v23 = objc_msgSend_contents(v19, v20, v21, v22);
    gain = a4->exposureParams.gain;
    v25 = sub_29584472C(*(v9 + 4), gain);
    v26 = *(v9 + 5);
    v27 = sub_29584472C(*(v9 + 5), gain);
    v65 = *(v9 + 6);
    v28 = sub_29584472C(*(v9 + 6), gain);
    v29 = *(v9 + 7);
    v30 = sub_29584472C(*(v9 + 7), gain);
    v34 = objc_msgSend_width(v10, v31, v32, v33);
    v38 = objc_msgSend_height(v10, v35, v36, v37);
    v39.f64[0] = a4->ROI.origin.x;
    v40 = sub_295862268(v39, a4->ROI.origin.y);
    v41.f64[0] = a4->ROI.size.width;
    v44 = sub_295862268(v41, a4->ROI.size.height);
    if (v15)
    {
      v45 = 0;
      v46.f32[0] = v34;
      v46.f32[1] = v38;
      __asm { FMOV            V2.2S, #1.0 }

      v52 = vdiv_f32(_D2, vdiv_f32(*&v44, v46));
      v63 = vmul_f32(vdiv_f32(vneg_f32(*&v40), v46), v52);
      v64 = v52;
      v53 = (v23 + 120);
      v61 = v30;
      v62 = gain;
      do
      {
        v54 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 1), v42, v45, v43);
        v55 = powf(0.75, (v45 + 1));
        v66 = v25 * v55;
        v67 = v27 * v55;
        v68 = v28 * v55;
        v56 = powf(0.75, v45);
        v57 = sub_29584472C(v54[1], v62);
        v58 = sub_29584472C(v54[2], v62);
        v59 = sub_29584472C(v54[3], v62);
        *(v53 - 15) = v63;
        *(v53 - 14) = v64;
        *(v53 - 26) = v61;
        *(v53 - 25) = v66;
        *(v53 - 24) = v26;
        *(v53 - 23) = 1.0;
        *(v53 - 22) = v67;
        *(v53 - 21) = v65;
        *(v53 - 20) = 1.0;
        *(v53 - 19) = v68;
        *(v53 - 18) = v29;
        *(v53 - 17) = 1.0;
        *(v53 - 8) = 0;
        *(v53 - 7) = v63;
        *(v53 - 6) = v64;
        *(v53 - 10) = v61;
        *(v53 - 9) = v25 * v56;
        *(v53 - 8) = v26;
        *(v53 - 7) = v57;
        *(v53 - 6) = v27 * v56;
        *(v53 - 5) = v65;
        *(v53 - 4) = v58;
        *(v53 - 3) = v28 * v56;
        *(v53 - 2) = v29;
        *(v53 - 1) = v59;
        *v53 = 0;
        v53 += 32;

        ++v45;
      }

      while (v45 != v15);
      LODWORD(v15) = 0;
    }
  }

  return v15;
}

- (int)performSmallFaceFix:(id)a3 faceLandmarks:(id)a4 faceLandmarkOrientation:(int)a5 tmPlist:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (!v10)
  {
    sub_2958C04D0();
LABEL_47:
    v17 = 0;
LABEL_49:
    v149 = 0;
    v140 = 0;
    v193 = -12780;
    goto LABEL_43;
  }

  if (!v11)
  {
    sub_2958C046C();
    goto LABEL_47;
  }

  if (!v12)
  {
    sub_2958C0408();
    goto LABEL_47;
  }

  v17 = v12[4];
  if (!v17)
  {
    sub_2958C03A4();
    goto LABEL_49;
  }

  v198 = v13;
  v18 = objc_msgSend_width(v10, v14, v15, v16);
  v22 = objc_msgSend_height(v10, v19, v20, v21);
  memset(&v221, 0, sizeof(v221));
  sub_295816EA0(a5, &v221);
  memset(&v220, 0, sizeof(v220));
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  CGAffineTransformMakeScale(&t2, 1.0, -1.0);
  CGAffineTransformConcat(&v219, &t1, &t2);
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  CGAffineTransformConcat(&v220, &v219, &t1);
  memset(&v216, 0, sizeof(v216));
  v219 = v221;
  t1 = v220;
  CGAffineTransformConcat(&v216, &v219, &t1);
  v23 = v17[6];
  v24 = v17[5];
  v28 = objc_msgSend_count(v11, v25, v26, v27);
  v32 = objc_msgSend_sffDescriptorsBuffer(self->_toneMapSmoothingResources, v29, v30, v31);
  v33 = v32;
  v201 = objc_msgSend_contents(v33, v34, v35, v36);

  v40 = objc_msgSend_sffNThreadGroupsBuffer(self->_toneMapSmoothingResources, v37, v38, v39);
  v41 = v40;
  v45 = objc_msgSend_contents(v41, v42, v43, v44);

  if (!v28)
  {
    v149 = 0;
    v140 = 0;
    v193 = 0;
    v13 = v198;
    goto LABEL_43;
  }

  v195 = self;
  v197 = v10;
  v196 = 0;
  v48 = 0.0;
  v49 = 0;
  v50.f32[0] = v18;
  v50.f32[1] = v22;
  v203 = v50;
  v199 = (v23 / v24) * (v23 / v24);
  v200 = vneg_f32(0x80000000800000);
  do
  {
    if (*&v48 >= 0x20uLL)
    {
      sub_2958C0280();
      v66 = 0;
      v58 = 0;
    }

    else
    {
      v51 = objc_msgSend_objectAtIndexedSubscript_(v11, v46, v49, v47);
      sub_29585E9DC(v51, v52, v53, v54);
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v58 = objc_msgSend_objectAtIndexedSubscript_(v11, v56, v49, v57);
        v62 = objc_msgSend_landmarks(v58, v59, v60, v61);
        v66 = objc_msgSend_faceContour(v62, v63, v64, v65);

        if (v66)
        {
          v70 = objc_msgSend_pointCount(v66, v67, v68, v69);
          if (v70 <= 2)
          {
            sub_2958C01B8();
          }

          else
          {
            v74 = v70;
            objc_msgSend_boundingBox(v58, v71, v72, v73);
            v219 = v216;
            v223 = CGRectApplyAffineTransform(v222, &v219);
            x = v223.origin.x;
            y = v223.origin.y;
            if (fmax(v223.size.width, v223.size.height) <= v17[2])
            {
              width = v223.size.width;
              height = v223.size.height;
              v78 = v66;
              v82 = objc_msgSend_normalizedPoints(v78, v79, v80, v81);
              v83 = vaddq_f64(*&v216.tx, vmlaq_n_f64(vmulq_n_f64(*&v216.c, v82[1]), *&v216.a, *v82));
              v84 = sub_295862268(v83, v83.f64[1]);
              v85 = v66;
              v89 = objc_msgSend_normalizedPoints(v85, v86, v87, v88);
              v90 = vaddq_f64(*&v216.tx, vmlaq_n_f64(vmulq_n_f64(*&v216.c, *(v89 + 16 * v74 - 8)), *&v216.a, *(v89 + 16 * v74 - 16)));
              v91 = vmul_f32(vadd_f32(*&v84, COERCE_FLOAT32X2_T(sub_295862268(v90, v90.f64[1]))), 0x3F0000003F000000);
              v92.f64[0] = width;
              v93 = sub_295862268(v92, height);
              v94.f64[0] = x;
              v95 = 0;
              v202 = vmul_f32(v203, vmla_f32(COERCE_FLOAT32X2_T(sub_295862268(v94, y)), *&v93, v91));
              v96 = vneg_f32(v202);
              v100.columns[2].i64[0] = 0;
              v100.columns[2].i64[1] = 0;
              v97 = 0x80000000800000;
              v100.columns[1] = 0uLL;
              v98 = 0uLL;
              v99 = v200;
              v214 = 0u;
              v101.i32[3] = v211;
              v100.columns[0].i32[3] = v213;
              v102.i32[3] = v209;
              do
              {
                v208 = v98;
                v210 = v100.columns[1];
                v212 = v100.columns[2];
                v206 = v101.i32[3];
                v207 = v102.i32[3];
                v205 = v100.columns[0].i32[3];
                v103 = v66;
                v107 = objc_msgSend_normalizedPoints(v103, v104, v105, v106);
                v108 = vaddq_f64(*&v216.tx, vmlaq_n_f64(vmulq_n_f64(*&v216.c, *(v107 + v95 + 8)), *&v216.a, *(v107 + v95)));
                v109 = sub_295862268(v108, v108.f64[1]);
                v110.f64[0] = width;
                v111 = sub_295862268(v110, height);
                v112.f64[0] = x;
                v113 = vmla_f32(v96, vmla_f32(COERCE_FLOAT32X2_T(sub_295862268(v112, y)), *&v111, *&v109), v203);
                *v114.f32 = vmul_f32(v113, v113);
                v115 = v114;
                v115.i32[1] = vmuls_lane_f32(v113.f32[1], v113, 1);
                v115.i32[2] = vmuls_lane_f32(v113.f32[0], v113, 1);
                v100.columns[0] = vmulq_n_f32(v115, v114.f32[0]);
                v101 = vmulq_n_f32(v115, v115.f32[1]);
                v102 = vmulq_n_f32(v115, v115.f32[2]);
                v100.columns[0].i32[3] = v205;
                v101.i32[3] = v206;
                v102.i32[3] = v207;
                v98 = vaddq_f32(v208, v100.columns[0]);
                v100.columns[1] = vaddq_f32(v210, v101);
                v100.columns[2] = vaddq_f32(v212, v102);
                v214 = vaddq_f32(v214, v115);
                v99 = vminnm_f32(v99, v113);
                v97 = vmaxnm_f32(v97, v113);
                v95 += 16;
                --v74;
              }

              while (v74);
              v209 = v207;
              v211 = v206;
              v213 = v205;
              v100.columns[0] = v98;
              v116 = __invert_f3(v100);
              v116.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116.columns[0], v214.f32[0]), v116.columns[1], *v214.f32, 1), v116.columns[2], v214, 2);
              if (v116.columns[0].f32[0] <= 0.0)
              {
                sub_2958C0154();
              }

              else if (v116.columns[0].f32[1] <= 0.0)
              {
                sub_2958C00F0();
              }

              else
              {
                v116.columns[2].f32[0] = vmuls_lane_f32(-v116.columns[0].f32[2], v116.columns[0], 2) + ((v116.columns[0].f32[0] * 4.0) * v116.columns[0].f32[1]);
                __asm { FMOV            V4.2S, #4.0 }

                v122 = vmul_n_f32(vmul_n_f32(vmul_f32(vrev64_s32(*v116.columns[0].f32), _D4), v199), v116.columns[2].f32[0] * 4.0);
                if (v122.f32[0] <= 0.0)
                {
                  sub_2958C008C();
                }

                else if (v122.f32[1] <= 0.0)
                {
                  sub_2958C0028();
                }

                else
                {
                  v123 = vrsqrte_f32(v122);
                  v124 = vmul_f32(v123, vrsqrts_f32(v122, vmul_f32(v123, v123)));
                  v125 = vmul_f32(v124, vrsqrts_f32(v122, vmul_f32(v124, v124)));
                  v126 = vrecpe_f32(v125);
                  v127 = vmul_f32(v126, vrecps_f32(v125, v126));
                  v116.columns[2].f32[0] = v116.columns[2].f32[0] + v116.columns[2].f32[0];
                  v128 = vdiv_f32(vmul_f32(v127, vrecps_f32(v125, v127)), vdup_lane_s32(*v116.columns[2].f32, 0));
                  v129 = vrndm_f32(vsub_f32(v202, v128));
                  v130 = vsub_f32(v97, v99);
                  *v116.columns[2].f32 = vsub_f32(vrndp_f32(vadd_f32(v202, v128)), v129);
                  v131 = v17[3];
                  if (v116.columns[2].f32[0] > (v131 * v130.f32[0]))
                  {
                    sub_2958BFFC4();
                  }

                  else if (v116.columns[2].f32[1] > vmuls_lane_f32(v131, v130, 1))
                  {
                    sub_2958BFF60();
                  }

                  else
                  {
                    v132 = (v201 + 48 * *&v48);
                    v132[5].i32[0] = v116.columns[0].i32[2];
                    v132[3] = v202;
                    v132[4] = *v116.columns[0].f32;
                    v132->f32[1] = v17[5];
                    v132->f32[0] = v17[6];
                    v132[1] = v129;
                    v132[2] = *v116.columns[2].f32;
                    v132[5].i32[1] = vcvtd_n_u64_f64(v17[4] * 255.0 * 32.0, 5uLL);
                    v133 = (v45 + 12 * *&v48);
                    *v133 = vshr_n_u32(vadd_s32(vcvt_u32_f32(*v116.columns[2].f32), 0x1F0000001FLL), 5uLL);
                    v133[1].i32[0] = 1;
                    ++*&v48;
                  }
                }
              }
            }
          }
        }

        else
        {
          sub_2958C021C();
        }
      }

      else
      {
        sub_2958BFF00();
        v66 = 0;
        v58 = 0;
        v196 = -12780;
      }
    }

    ++v49;
  }

  while (v49 != v28);
  if (v48 != 0.0)
  {
    v135 = v195;
    v136 = objc_msgSend_commandQueue(v195->_metal, v46, v134, v47);
    v140 = objc_msgSend_commandBuffer(v136, v137, v138, v139);

    if (v140)
    {
      objc_msgSend_setLabel_(v140, v141, @"SFF", v142);
      v146 = objc_msgSend_computeCommandEncoder(v140, v143, v144, v145);
      v149 = v146;
      if (v146)
      {
        v215 = v140;
        objc_msgSend_setLabel_(v146, v147, @"SFF", v148);
        objc_msgSend_setComputePipelineState_(v149, v150, v195->_shaders->_sffTestFace, v151);
        v155 = objc_msgSend_sffDescriptorsBuffer(v195->_toneMapSmoothingResources, v152, v153, v154);
        objc_msgSend_setBuffer_offset_atIndex_(v149, v156, v155, 0, 0);

        v160 = objc_msgSend_sffNThreadGroupsBuffer(v195->_toneMapSmoothingResources, v157, v158, v159);
        objc_msgSend_setBuffer_offset_atIndex_(v149, v161, v160, 0, 1);

        objc_msgSend_setTexture_atIndex_(v149, v162, v197, 0);
        v219.a = v48;
        *&v219.b = vdupq_n_s64(1uLL);
        *&t1.a = vdupq_n_s64(0x20uLL);
        *&t1.c = 1;
        objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v149, v163, &v219, &t1);
        objc_msgSend_setComputePipelineState_(v149, v164, v195->_shaders->_sffFillFace, v165);
        v167 = 0;
        v168 = 0;
        do
        {
          objc_msgSend_setBufferOffset_atIndex_(v149, v166, v167, 0, v195);
          v172 = objc_msgSend_sffNThreadGroupsBuffer(v135->_toneMapSmoothingResources, v169, v170, v171);
          *&v219.a = vdupq_n_s64(0x20uLL);
          *&v219.c = 1;
          objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v149, v173, v172, v168, &v219);

          v168 += 12;
          v167 += 48;
          --*&v48;
        }

        while (v48 != 0.0);
        objc_msgSend_endEncoding(v149, v166, v174, v175);
        v140 = v215;
        if (*MEMORY[0x29EDB9270])
        {
          v179 = objc_msgSend_commandQueue(v215, v176, v177, v178);
          v183 = objc_msgSend_commandBuffer(v179, v180, v181, v182);

          objc_msgSend_setLabel_(v183, v184, @"KTRACE_MTLCMDBUF", v185);
          objc_msgSend_addCompletedHandler_(v183, v186, &unk_2A1CA97E0, v187);
          objc_msgSend_commit(v183, v188, v189, v190);
          objc_msgSend_addCompletedHandler_(v215, v191, &unk_2A1CA9800, v192);
        }

        objc_msgSend_commit(v215, v176, v177, v178);
        goto LABEL_41;
      }

      sub_2958C02E4();
    }

    else
    {
      sub_2958C0344();
      v149 = 0;
    }

    v193 = -12786;
    v10 = v197;
    v13 = v198;
    goto LABEL_43;
  }

  v149 = 0;
  v140 = 0;
LABEL_41:
  v10 = v197;
  v13 = v198;
  v193 = v196;
LABEL_43:

  return v193;
}

- (uint64_t)runToneMapping:(double)a3 bilateralGrid:(double)a4 bilateralGridHomography:(float)a5 tmPlist:(double)a6 darkestFrameMetadata:(double)a7 ev0FrameMetadata:(double)a8 scaleInput:(uint64_t)a9 colorCorrection:(void *)a10 hasChromaBias:(void *)a11 quality:(void *)a12 inputIsLinear:(uint64_t)a13
{
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = v25;
  LODWORD(v27) = 0;
  if (a15)
  {
    v28 = 0.5;
  }

  else
  {
    v28 = 0.0;
  }

  memset(__dst, 0, 400);
  v30 = a16 < 2 || a16 == 4;
  v31 = *(v25 + 76) == 1 && v30;
  if (!v31 || (a16 & 0xFFFFFFFB) != 0)
  {
    v33 = 0;
  }

  else
  {
    v32 = *(v25 + 18);
    v33 = 0;
    if (v32)
    {
      v27 = *(v23 + 6);
      if (v27 && (v27 = *(v23 + 7)) != 0 && (v27 = *(v23 + 15)) != 0)
      {
        v33 = v32 == 2 && *(v23 + 9) != 0;
        LODWORD(v27) = 1;
      }

      else
      {
        v33 = 0;
      }
    }
  }

  v323 = v27;
  if (*(v25 + 77) != 1)
  {
    goto LABEL_30;
  }

  v34 = 0;
  if (a16 > 4 || ((1 << a16) & 0x13) == 0)
  {
    goto LABEL_31;
  }

  if (*(v23 + 6))
  {
    v34 = *(v23 + 15) != 0;
  }

  else
  {
LABEL_30:
    v34 = 0;
  }

LABEL_31:
  v35 = v25[22];
  v39 = sub_2958170BC(*(v23 + 15));
  v306 = v31 && v35 > 0.0;
  v41 = *(v26 + 17);
  if (v306)
  {
    v42 = 2;
  }

  else
  {
    v42 = 1;
  }

  if (v31)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v322 = v24;
  v327 = a1;
  v326 = v31;
  v307 = v43;
  if (v26[79] == 1 && a16 != 3 && *(a1 + 64) && v31)
  {
    if (dword_2A18C2398)
    {
      v349 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v44 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v52 = objc_msgSend_commandQueue(*(a1 + 8), v36, v37, v38);
    v56 = objc_msgSend_commandBuffer(v52, v53, v54, v55);

    v63 = objc_msgSend_blitCommandEncoder(v56, v57, v58, v59);
    if (v63)
    {
      v64 = *(*(v23 + 16) + 32);
      v65 = objc_msgSend_length(v64, v60, v61, v62);
      objc_msgSend_fillBuffer_range_value_(v63, v66, v64, 0, v65, 0);
      objc_msgSend_endEncoding(v63, v67, v68, v69);
      objc_msgSend_commit(v56, v70, v71, v72);
      v76 = objc_msgSend_device(*(v327 + 8), v73, v74, v75);
      v78 = objc_msgSend_newBufferWithLength_options_(v76, v77, 399360, 0);
      v79 = *(v327 + 72);
      *(v327 + 72) = v78;

      if (*(v327 + 72))
      {
        v310 = v56;
        *(v327 + 80) = objc_msgSend_width(*(v23 + 1), v80, v81, v82);
        *(v327 + 82) = objc_msgSend_height(*(v23 + 1), v83, v84, v85);
        v89 = objc_msgSend_width(*(v23 + 2), v86, v87, v88);
        v93 = objc_msgSend_height(*(v23 + 2), v90, v91, v92);
        objc_msgSend_getLtmRoi_chromaTexHeight_ltmLut_isHalfResolution_(v327, v94, v89, v93, a13 + 168, 0);
        v301 = v95;
        v99 = objc_msgSend_width(*(v23 + 2), v96, v97, v98);
        v103 = objc_msgSend_height(*(v23 + 2), v100, v101, v102);
        objc_msgSend_getCcmRoi_chromaTexHeight_ccmLut_isHalfResolution_(v327, v104, v99, v103, a13 + 168, 0);
        v303 = v105;
        objc_msgSend_getExposureBiasFactor_inputIsLinear_(v327, v106, a13, a17);
        v108 = v107;
        v299 = a13 + 221184;
        v109 = *(a13 + 222432);
        v110 = *(v23 + 1);
        v114 = objc_msgSend_stfParams(*(v327 + 64), v111, v112, v113);
        objc_msgSend_setInLuma_(v114, v115, v110, v116);

        v117 = *(v23 + 2);
        v121 = objc_msgSend_stfParams(*(v327 + 64), v118, v119, v120);
        objc_msgSend_setInChroma_(v121, v122, v117, v123);

        v124 = *(v23 + 4);
        v128 = objc_msgSend_stfParams(*(v327 + 64), v125, v126, v127);
        objc_msgSend_setOutLuma_(v128, v129, v124, v130);

        v131 = *(v23 + 5);
        v135 = objc_msgSend_stfParams(*(v327 + 64), v132, v133, v134);
        objc_msgSend_setOutChroma_(v135, v136, v131, v137);

        v141 = objc_msgSend_stfParams(*(v327 + 64), v138, v139, v140);
        objc_msgSend_setInputIsLinear_(v141, v142, a17, v143);

        v147 = objc_msgSend_stfParams(*(v327 + 64), v144, v145, v146);
        LODWORD(v135) = objc_msgSend_conformsToProtocol_(v147, v148, &unk_2A1CD4460, v149);

        if (v135)
        {
          v153 = objc_msgSend_stfParams(*(v327 + 64), v150, v151, v152);
          objc_msgSend_setGtcRatioTex_(v153, v154, *(*(v23 + 16) + 16), v155);
          objc_msgSend_setGtcFinalTex_(v153, v156, *(*(v23 + 16) + 24), v157);
          objc_msgSend_setColorCorrection_(v153, v158, v159, v160, a6, a7, a8);
          if (*(*(v26 + 3) + 36))
          {
            v163 = &OBJC_IVAR___ToneMappingBuffers_skinMask;
          }

          else
          {
            v163 = &OBJC_IVAR___ToneMappingBuffers_skyMask;
          }

          objc_msgSend_setSkySkinMask_(v153, v161, *&v23[*v163], v162);
          objc_msgSend_setLtcLutData_(v153, v164, *(*(v23 + 16) + 64), v165);
          v168 = *(v23 + 16);
          if (*(v168 + 57) == 1)
          {
            objc_msgSend_setLtcTcrLutData_(v153, v166, *(v168 + 72), v167);
          }

          else
          {
            objc_msgSend_setLtcTcrLutData_(v153, v166, 0, v167);
          }

          objc_msgSend_setLtmRoi_(v153, v169, v170, v171, v301);
          v174 = *(v23 + 16);
          if (*(v174 + 56) == 1 && *(v299 + 1825) == 1)
          {
            objc_msgSend_setCcmLut_(v153, v172, *(v174 + 48), v173);
          }

          else
          {
            objc_msgSend_setCcmLut_(v153, v172, 0, v173);
          }

          objc_msgSend_setCcmRoi_(v153, v175, v176, v177, v303);
          objc_msgSend_setLumaHistogram_(v153, v178, *(*(v23 + 16) + 32), v179);
          LODWORD(v180) = v108;
          objc_msgSend_setExposureBiasFactor_(v153, v181, v182, v183, v180);
          *&v184 = a5;
          objc_msgSend_setScaleInput_(v153, v185, v186, v187, v184);
          *&v188 = v35;
          objc_msgSend_setChromaGainAdjPower_(v153, v189, v190, v191, v188);
          *&v192 = v28;
          objc_msgSend_setChromaBias_(v153, v193, v194, v195, v192);
          LODWORD(v196) = *(v23 + 34);
          objc_msgSend_setInputLumaPedestal_(v153, v197, v198, v199, v196);
          LODWORD(v200) = v109;
          objc_msgSend_setLtmHardGain_(v153, v201, v202, v203, v200);
          objc_msgSend_setOutputLTCs_(v153, v204, *(v327 + 72), v205);
          objc_msgSend_setCurrentTuning_(v153, v206, *(v26 + 10), v207);
        }

        v208 = objc_msgSend_process(*(v327 + 64), v150, v151, v152);
        if (!v208)
        {
          a1 = v327;
          *(v327 + 90) = 1;
          v212 = objc_msgSend_stfParams(*(v327 + 64), v209, v210, v211);
          *(v327 + 92) = objc_msgSend_analyticsVersion(v212, v213, v214, v215);

          v216 = *(v23 + 16);
          if (*(v216 + 57) == 1)
          {
            *(v216 + 57) = 0;
          }

          v51 = a14;
          v31 = v326;
          goto LABEL_63;
        }

        TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v208;
        v56 = v310;
      }

      else
      {
        sub_2958C091C(v328);
        TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v328[0];
      }
    }

    else
    {
      sub_2958C09B8(v328);
      TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v328[0];
    }

    goto LABEL_93;
  }

  *&v40 = a5;
  isHalfResolution = objc_msgSend_performLTM_bilateralGrid_bilateralGridHomography_detailEnhance_darkestFrameMetadata_scaleInput_colorCorrection_outputMode_chromaGainAdjPower_inputIsLinear_chromaBias_isHalfResolution_(a1, v36, v23, v24, a13, a2, a3, a4, *(v26 + 60), v40, a6, a7, a8, __PAIR64__(LODWORD(v28), LODWORD(v35)));
  v51 = a14;
  if (isHalfResolution)
  {
    sub_2958C0A54(isHalfResolution, v328);
    goto LABEL_102;
  }

LABEL_63:
  v321 = v34;
  v217 = *(v23 + 4);
  v218 = !v31;
  if (!v217)
  {
    v218 = 1;
  }

  if ((v218 & 1) == 0)
  {
    v219 = *(v26 + 5);
    v220 = objc_msgSend_mstmTuningParams(*(a1 + 24), v46, v47, v48);
    v221 = a1;
    v222 = v220;
    TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = objc_msgSend_fetchTuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer_(v221, v223, v219, v51, v217, v220);

    if (TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer)
    {
      sub_2958C0AF0();
      goto LABEL_93;
    }

    a1 = v327;
    v31 = v326;
    if ((v323 | v33))
    {
      v227 = *(v26 + 6);
      v228 = *(v23 + 4);
      v229 = objc_msgSend_srlOnMSTMTuningParams(*(v327 + 24), v46, v225, v226);
      TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = objc_msgSend_fetchTuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer_(v327, v230, v227, v51, v228, v229);

      if (TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer)
      {
        sub_2958C0B50();
        goto LABEL_93;
      }

      a1 = v327;
      v31 = v326;
    }
  }

  v231 = *(v23 + 4);
  if (v231 != 0 && (v323 & 1) != 0 && !v33)
  {
    if (dword_2A18C2398)
    {
      v349 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v232 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v231 = *(v23 + 4);
      a1 = v327;
      v31 = v326;
    }

    BYTE4(v279) = a17;
    LODWORD(v279) = v307;
    *&v50 = v28;
    IsLinear_chromaBias_tmPlist = objc_msgSend_performSubjectRelightingWithTonemap_luma_chroma_ltmChroma_validROI_skinMask_personMask_faceLandmarks_ev0FrameMetadata_ltmOutputMode_inputIsLinear_chromaBias_tmPlist_(a1, v46, v231, *(v23 + 1), *(v23 + 2), *(v23 + 5), *(v23 + 6), *(v23 + 7), *(v51 + 128), *(v51 + 136), *(v51 + 144), *(v51 + 152), v50, v39, v51, v279, v26);
    if (IsLinear_chromaBias_tmPlist)
    {
      sub_2958C0BB0(IsLinear_chromaBias_tmPlist, v328);
      goto LABEL_102;
    }

    v231 = *(v23 + 4);
  }

  if (v231 != 0 && v33)
  {
    v324 = v28;
    v313 = v39;
    if (dword_2A18C2398)
    {
      v234 = *(v51 + 76);
      v349 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v235 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      a1 = v327;
    }

    v281 = v35;
    memcpy(__dst, (v51 + 223016), 0x190uLL);
    v315 = v26;
    v236 = *(v26 + 2);
    v304 = *(v236 + 8);
    v302 = *(v236 + 12);
    v300 = *(v236 + 16);
    v298 = *(v236 + 20);
    v297 = *(v236 + 24);
    v296 = *(v236 + 28);
    v295 = *(v236 + 32);
    v294 = *(v236 + 36);
    v293 = *(v236 + 40);
    v291 = *(v236 + 44);
    v292 = *(v236 + 48);
    v289 = *(v236 + 52);
    v288 = *(v236 + 56);
    v285 = *(v236 + 60);
    v237 = *(v236 + 64);
    v238 = *(v236 + 68);
    v239 = *(v236 + 72);
    v240 = *(v236 + 76);
    v241 = *(v236 + 80);
    v242 = *(v236 + 84);
    v243 = *(v236 + 88);
    v244 = *(v236 + 92);
    v319 = *(v23 + 4);
    v317 = *(v23 + 1);
    v311 = *(v23 + 2);
    v308 = *(v23 + 5);
    v305 = *(v23 + 6);
    v290 = *(v23 + 7);
    v284 = *(v23 + 72);
    v282 = *(v23 + 14);
    v245 = *(v23 + 12);
    v283 = *(v23 + 11);
    v246 = *(v23 + 13);
    v247 = *(v51 + 116);
    v286 = v247;
    v287 = *(v51 + 76);
    v248 = *(v51 + 160);
    v249 = *(v51 + 223012);
    v250 = *(a1 + 32);
    v254 = objc_msgSend_mstmTuningParams(*(a1 + 24), v251, v252, v253);
    v258 = objc_msgSend_srlOnMSTMTuningParams(*(a1 + 24), v255, v256, v257);
    v259 = *(v51 + 128);
    v260 = *(v51 + 136);
    v261 = *(v51 + 144);
    v262 = *(v51 + 152);
    v328[0] = v304;
    v328[1] = v302;
    v328[2] = v300;
    v328[3] = v298;
    v328[4] = v297;
    v328[5] = v296;
    v328[6] = v295;
    v328[7] = v294;
    v328[8] = v293;
    v329 = v291;
    v330 = 0;
    v331 = 0;
    v332 = v292;
    v333 = v289;
    v334 = v288;
    v335 = v285;
    v336 = v237;
    v337 = v238;
    v338 = v239;
    v339 = v240;
    v340 = v241;
    v341 = v242;
    v342 = v243;
    v343 = v244;
    v345 = 0;
    v344 = 0;
    v347 = 0;
    v346 = 0;
    HIBYTE(v280) = a17;
    LOBYTE(v280) = v306;
    LODWORD(v263) = v286;
    v28 = v324;
    *&v264 = v324;
    IsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian = objc_msgSend_runSubjectRelightingVersion_toneMap_luma_chroma_ltmChroma_skinMask_personMask_glassesMask_instanceMask0_instanceMask1_instanceMask2_instanceMask3_gammaCurve_instanceMaskConfidences_skinToneClassification_validROI_expBias_faceExpRatio_exifOrientation_numFacesISPDetected_faceBoundingBoxesFromISP_isChromaGainAdjusted_inputIsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian_(v250, v265, @"v2", v319, v317, v311, v308, v305, v259, v260, v261, v262, COERCE_DOUBLE(__PAIR64__(DWORD1(v284), v287)), v263, v264, v290, 0, v284, v283, v245, 0, v282, v246, v248, v249, __dst, v280, v328, v254, v258, 0, 0, 0);

    if (IsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian)
    {
      sub_2958C0C4C(IsLinear_chromaBias_srlV2Plist_mstmParams_mstmSRLParams_blackPoint_playBackCurve_iptSkinMedian, v328);
      TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v328[0];
      v24 = v322;
      v26 = v315;
      v39 = v313;
      goto LABEL_93;
    }

    v231 = *(v23 + 4);
    v24 = v322;
    v26 = v315;
    a1 = v327;
    v39 = v313;
    v51 = a14;
    v31 = v326;
    v35 = v281;
  }

  if (!v231)
  {
    goto LABEL_92;
  }

  if (v321)
  {
    fixed = objc_msgSend_performSmallFaceFix_faceLandmarks_faceLandmarkOrientation_tmPlist_(a1, v46, *(v23 + 6), v39, *(v51 + 160), v26);
    if (fixed)
    {
      sub_2958C0CE8(fixed, v328);
      goto LABEL_102;
    }
  }

  if (v31)
  {
    v268 = objc_msgSend_performToneMapSmoothing_mask_skyMask_tmPlist_ev0FrameMetadata_useMaskPyramid_(a1, v46, *(v23 + 4), *(v23 + 6), *(v23 + 8), v26, v51, a16 != 4);
    if (v268)
    {
      sub_2958C0D84(v268, v328);
      goto LABEL_102;
    }

    if (v35 <= 0.0)
    {
      v272 = 0;
    }

    else
    {
      v272 = *(v23 + 5);
    }

    *&v270 = v35;
    *&v271 = v28;
    IsLinear_chromaBias = objc_msgSend_mstmsApplyLumaGain_inputLuma_inputChroma_outputChroma_localGainMap_chromaGainAdjPower_inputIsLinear_chromaBias_(a1, v269, *(v23 + 4), *(v23 + 1), *(v23 + 2), v272, *(v23 + 3), a17, v270, v271);
    if (IsLinear_chromaBias)
    {
      sub_2958C0E20(IsLinear_chromaBias, v328);
      goto LABEL_102;
    }
  }

  if (v26[92] == 1)
  {
    v274 = *(v23 + 4);
    if (v274)
    {
      LODWORD(v275) = *(v26 + 24);
      HIDWORD(v275) = 973279855;
      v276 = *(v26 + 25);
      LODWORD(v49) = *(v26 + 26);
      v277 = objc_msgSend_performBlackSubtractionWithBlackWhiteParams_maxContrastStrength_inOutTex_curves_(a1, v46, v274, *(v23 + 16), v275, v49);
      if (!v277)
      {
        goto LABEL_92;
      }

      sub_2958C0EBC(v277, v328);
    }

    else
    {
      sub_2958C0F58(v328);
    }

LABEL_102:
    TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = v328[0];
    goto LABEL_93;
  }

LABEL_92:
  TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer = 0;
LABEL_93:

  return TuningParametersFromPlist_ev0FrameMetadata_toneMap_destinationMTLBuffer;
}

- (void)reset
{
  objc_msgSend_reset(self->_subjectRelightV2, a2, v2, v3);
  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  self->_lastSRLCommandBuffer = 0;

  self->_lastSRLStatusValue = 0;
  v9 = objc_msgSend_stfParams(self->_stfProcessor, v6, v7, v8);
  objc_msgSend_reset(v9, v10, v11, v12);

  stfOutputLTCs = self->_stfOutputLTCs;
  self->_stfOutputLTCs = 0;

  self->_stfStillCorrectionStrength = 0;
  self->_stfStillApplied = 0;
  self->_stfStillAnalyticsVersion = 0;
  self->_SRLWaitCompleted = 0;
}

- (unsigned)getSRLStatus
{
  if (objc_msgSend_srlVersion(self->_toneMapSmoothingResources, a2, v2, v3) == 2)
  {
    self->_lastSRLStatusValue = objc_msgSend_getSRLStatus(self->_subjectRelightV2, v5, v6, v7);
  }

  lastSRLCommandBuffer = self->_lastSRLCommandBuffer;
  if (lastSRLCommandBuffer)
  {
    objc_msgSend_waitUntilCompleted(lastSRLCommandBuffer, v5, v6, v7);
    if (objc_msgSend_srlVersion(self->_toneMapSmoothingResources, v9, v10, v11) == 1)
    {
      v15 = objc_msgSend_srlCoeffsBuffer(self->_toneMapSmoothingResources, v12, v13, v14);
      v16 = v15;
      v20 = objc_msgSend_contents(v16, v17, v18, v19);

      self->_lastSRLStatusValue |= *v20 << 16;
    }

    v21 = self->_lastSRLCommandBuffer;
    self->_lastSRLCommandBuffer = 0;

    self->_SRLWaitCompleted = 1;
  }

  return self->_lastSRLStatusValue;
}

- (float)getExposureBiasFactor:(const frameMetadata *)a3 inputIsLinear:(BOOL)a4
{
  if (!a3->exposureParams.ltm_locked || !a3->exposureParams.ae_locked || a3->isEVMFrame || a4)
  {
    return 1.0;
  }

  else
  {
    return exp2f(-a3->exposureParams.exposure_bias);
  }
}

- (__n64)getCcmRoi:(int)a3 chromaTexHeight:(int)a4 ccmLut:(unsigned __int16 *)a5 isHalfResolution:(int)a6
{
  if (a6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_29583737C(a5) / v9;
  v11 = sub_2958373B8(a5) / v9;
  v12 = sub_29583725C(a5);
  v13 = sub_2958372C4(a5);
  result.n64_u32[0] = ((2 * a3 - v10 * v12) / 2 + v10 / 2) / 2;
  result.n64_u32[1] = ((2 * a4 - v11 * v13) / 2 + v11 / 2) / 2;
  return result;
}

- (__n64)getLtmRoi:(int)a3 chromaTexHeight:(int)a4 ltmLut:(unsigned __int16 *)a5 isHalfResolution:(int)a6
{
  if (a6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_29583737C(a5) / v9;
  v11 = sub_2958373B8(a5) / v9;
  v12 = sub_29583725C(a5);
  v13 = sub_2958372C4(a5);
  result.n64_u32[0] = ((2 * a3 - v10 * v12) / 2 + v10 / 2) / 2;
  result.n64_u32[1] = ((2 * a4 - v11 * v13) / 2 + v11 / 2) / 2;
  return result;
}

- (id)getSTFLTM_asNSData
{
  v5 = objc_msgSend_stfParams(self->_stfProcessor, a2, v2, v3);
  v9 = objc_msgSend_lastSTFCommandBuffer(v5, v6, v7, v8);

  if (v9)
  {
    v13 = objc_msgSend_lastSTFCommandBuffer(v5, v10, v11, v12);
    objc_msgSend_waitUntilCompleted(v13, v14, v15, v16);

    v17 = objc_alloc(MEMORY[0x29EDB8DF8]);
    v20 = objc_msgSend_initWithLength_(v17, v18, 399384, v19);
    v9 = v20;
    if (v20)
    {
      v21 = v20;
      v25 = objc_msgSend_mutableBytes(v21, v22, v23, v24);
      if (v25)
      {
        v29 = v25;
        *(v25 + 4) = 48;
        *(v25 + 22) = 65;
        *v25 = 4194308;
        *(v25 + 10) = 0;
        *(v25 + 6) = 8528000;
        *(v25 + 18) = self->_lastInputLumaTexWidth >> 6;
        *(v25 + 20) = self->_lastInputLumaTexHeight / 0x30u;
        if (objc_msgSend_contents(self->_stfOutputLTCs, v26, v27, v28))
        {
          v33 = objc_msgSend_contents(self->_stfOutputLTCs, v30, v31, v32);
          memcpy((v29 + 24), v33, 0x61800uLL);
          goto LABEL_6;
        }

        sub_2958C0FF4(&v37);
      }

      else
      {
        sub_2958C1090(&v37);
      }
    }

    else
    {
      sub_2958C112C(&v37);
    }
  }

  else
  {
    sub_2958C11C8(&v37);
  }

  if (v37)
  {
    v34 = 0;
    goto LABEL_7;
  }

LABEL_6:
  v34 = v9;
LABEL_7:
  v35 = v34;

  return v34;
}

- (SidecarWriter)sidecarWriter
{
  WeakRetained = objc_loadWeakRetained(&self->_sidecarWriter);

  return WeakRetained;
}

@end