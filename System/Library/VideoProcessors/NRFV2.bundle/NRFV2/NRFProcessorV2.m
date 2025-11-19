@interface NRFProcessorV2
- (BOOL)_isGainMapSupported;
- (BOOL)_isMetadataConsistentWithFirstFrame;
- (BOOL)_isSemanticStylesSupported;
- (BOOL)sanityCheckHomographyForBracketIndex:(int)a3;
- (BOOL)shouldDownsampleRWPPInputWithPixelFormat:(unsigned int)a3 processingType:(unsigned int)a4;
- (CGRect)_downscaleRoiForRegistration:(CGRect)a3;
- (NRFProcessorDelegate)delegate;
- (NRFProcessorV2)initWithCommandQueue:(id)a3;
- (id)getProcessingTypeKey:(frameProperties_t *)a3;
- (id)newMTLBufferWithLength:(unint64_t)a3;
- (int)_appendFrames:(opaqueCMSampleBuffer *)a3 cfp:(frameProperties_t *)a4;
- (int)_computeBlurryFrameWeight:(int)a3;
- (int)_computeCornersStrengthWithBracketIndex:(unsigned int)a3 totalCornerStrength:(float *)a4;
- (int)_computeReferenceFrameIndex;
- (int)_deepFusion;
- (int)_doDeepFusionSytheticRefererenceAndProxy;
- (int)_downsampleImageForRegistration:(__CVBuffer *)a3 outputImage:(__CVBuffer *)a4;
- (int)_getSharpestBracket:(int)a3 normGyroScores:(float *)a4 normCornerScores:(float *)a5 normFocusScores:(float *)a6 normBlinkScores:(float *)a7 useLongWeights:(unsigned __int8)a8 sharpFrameIndex:(int *)a9;
- (int)_lowLightGreenGhostPerFrameProcessing;
- (int)_lowLightMotionDetection;
- (int)_nrfFuseImages:(BOOL)a3;
- (int)_perFrameProcessing:(id)a3 input:(opaqueCMSampleBuffer *)a4 cfp:(frameProperties_t *)a5;
- (int)_perFrameProcessingComputeReferenceFrameIndexIfReady;
- (int)_populateDeepFusionMetadata:(id)a3;
- (int)_setupFusionConfig;
- (int)addFrame:(opaqueCMSampleBuffer *)a3;
- (int)allocateResources:(id *)a3;
- (int)determineWorkingBufferRequirementsWithOptions:(id)a3 memoryAllocationInfo:(id *)a4;
- (int)determineWorkingBufferRequirementsWithOptions:(id)a3 nrfConfig:(id)a4 memoryAllocationInfo:(id *)a5;
- (int)fusionMode;
- (int)getOptions:(id)a3;
- (int)initFrameProperties:(frameProperties_t *)a3 metadata:(id)a4 pixelBuffer:(__CVBuffer *)a5;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (int)resetInternalState;
- (int)resetState;
- (int)setupWithOptions:(id)a3;
- (int)updateEV0ReferenceFrameIfNecessary;
- (int)verifyIOSurfaceCompression:(__IOSurface *)a3;
- (void)_deepFusionResetWarpTransforms;
- (void)_prepareOutputMetadata;
- (void)addToSidecar:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)injectReferenceIfNeeded;
- (void)releaseStoredReference;
- (void)setFusionMode:(int)a3;
- (void)setLinearOutputMetadata:(id)a3;
- (void)setOutput:(id)a3;
- (void)setProgressiveBatchSize:(int)a3;
- (void)setReferenceFrameIndex:(int)a3;
- (void)setSharedMetalBuffer:(id)a3;
- (void)setSharedRegWarpBuffer:(id)a3;
- (void)storeReferenceIfNeeded;
@end

@implementation NRFProcessorV2

- (void)setProgressiveBatchSize:(int)a3
{
  if (a3 <= 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3;
  }

  if (v3 >= 4)
  {
    v3 = 4;
  }

  self->_batchCount = v3;
}

- (void)setOutput:(id)a3
{
  p_fusionOptions = &self->_fusionOptions;
  v40 = a3;
  objc_storeStrong(&self->_delegate, a3);
  v6 = *(p_fusionOptions + 8);
  *(p_fusionOptions + 8) = 0;

  v7 = *(p_fusionOptions + 9);
  *(p_fusionOptions + 9) = 0;

  v8 = *&self->_referenceFrameHasEVMinus;
  *&self->_referenceFrameHasEVMinus = 0;

  v12 = objc_msgSend_allocator(*p_fusionOptions, v9, v10, v11);
  objc_msgSend_purgeResources_(v12, v13, 0, v14);

  v17 = v40;
  if (v40)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(p_fusionOptions + 8, a3);
      v21 = objc_msgSend_pixelBuffer(*(p_fusionOptions + 8), v18, v19, v20);
      IOSurface = CVPixelBufferGetIOSurface(v21);
      v26 = objc_msgSend_device(*p_fusionOptions, v23, v24, v25);
      v29 = objc_msgSend_newBufferWithIOSurface_(v26, v27, IOSurface, v28);
      v30 = *&self->_referenceFrameHasEVMinus;
      *&self->_referenceFrameHasEVMinus = v29;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = v40;
      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_7;
      }

      v32 = v40;
      v26 = *(p_fusionOptions + 9);
      *(p_fusionOptions + 9) = v32;
    }

    v17 = v40;
  }

LABEL_7:
  v33 = objc_msgSend_completionStatus(v17, v17, v15, v16);
  v37 = objc_msgSend_metalExecutionStatus(v33, v34, v35, v36);
  objc_msgSend_setExecutionStatus_(*p_fusionOptions, v38, v37, v39);
}

- (BOOL)shouldDownsampleRWPPInputWithPixelFormat:(unsigned int)a3 processingType:(unsigned int)a4
{
  if (!*&self->_registrationPipelineRWPPConfig.numThreads && !self->_regWarpM2M)
  {
    return 0;
  }

  result = 0;
  if (a4 && a4 != 7)
  {
    result = 0;
    if (a3 <= 1751527983)
    {
      if (a3 == 645424688 || a3 == 762865200)
      {
        return 1;
      }

      v5 = 796419632;
    }

    else
    {
      if (a3 <= 2019963439)
      {
        if (a3 != 1751527984)
        {
          v5 = 1885745712;
          goto LABEL_15;
        }

        return 1;
      }

      if (a3 == 2088265264)
      {
        return 1;
      }

      v5 = 2019963440;
    }

LABEL_15:
    if (a3 != v5)
    {
      return result;
    }

    return 1;
  }

  return result;
}

- (int)initFrameProperties:(frameProperties_t *)a3 metadata:(id)a4 pixelBuffer:(__CVBuffer *)a5
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  v9 = a4;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a5);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a5, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a5, 0);
  v13 = *p_referenceFrameCandidatesCount;
  v14 = p_referenceFrameCandidatesCount[4];
  if (v14)
  {
    v15 = v14 == 7;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  v17 = sub_29582075C(v9, a3, WidthOfPlane, HeightOfPlane, v16);
  if (v17)
  {
    v68 = v17;
    sub_2958B34DC();
    goto LABEL_50;
  }

  v18 = 0;
  v19 = &a3->meta.ltmCurves.ccmLut.ccmV1.lutsData[2044];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].BB.mid = xmmword_2958D59C0;
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].RB.shadows = xmmword_2958D59D0;
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].GG.highlights = 0x3F80000000000000;
  v84 = xmmword_2958D59E0;
  v85 = xmmword_2958D59F0;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = xmmword_2958D5A00;
  do
  {
    *(&v87 + v18) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(*(&v84 + v18))), xmmword_2958D5A20, *(&v84 + v18), 1), xmmword_2958D5A30, *(&v84 + v18), 2);
    v18 += 16;
  }

  while (v18 != 48);
  v90.columns[0] = v87;
  v90.columns[1] = v88;
  v90.columns[2] = v89;
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].RG.mid = v87;
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].GG.shadows = v90.columns[1];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[0].BR.highlights = v90.columns[2];
  v90.columns[3] = xmmword_2958D5A40;
  v91 = __invert_f4(v90);
  *&a3[1].meta.ROI.size.height = v91.columns[0];
  *&a3[1].meta.ltmCurves.ltmLut.version = v91.columns[1];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.rightPadding = v91.columns[2];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BR.shadows = 1.0 / *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BR.highlights;
  p_mid = &a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid;
  v21 = MEMORY[0x29EDCA928];
  v82 = *(MEMORY[0x29EDCA928] + 16);
  v83 = *MEMORY[0x29EDCA928];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].RR.mid = *MEMORY[0x29EDCA928];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GR.shadows = v82;
  v81 = v21[2];
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[1].GB.highlights = v81;
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BR.highlights = 1065353216;
  *&a3[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[2].BG.mid = 65792;
  v22 = *MEMORY[0x29EDC0740];
  v25 = objc_msgSend_objectForKeyedSubscript_(v9, v23, *MEMORY[0x29EDC0740], v24);
  if (v25)
  {
    v28 = v25;
    v80 = v22;
    v29 = &a3[1].meta.ltmCurves.ltmLut.bytes[80];
    v30 = a3;
    v31 = p_referenceFrameCandidatesCount;
    v34 = objc_msgSend_objectForKeyedSubscript_(v9, v26, *MEMORY[0x29EDC0460], v27);
    if (v34)
    {
      v78 = v13;
      v79 = self;
      v35 = *MEMORY[0x29EDC03F8];
      v36 = objc_msgSend_objectForKeyedSubscript_(v9, v32, *MEMORY[0x29EDC03F8], v33);

      p_referenceFrameCandidatesCount = v31;
      a3 = v30;
      p_mid = v29;
      v22 = v80;
      if (PixelFormatType != 1751527984)
      {
        if (v36)
        {
          *&v19[50].BB.highlights = 2;
          v39 = objc_msgSend_objectForKeyedSubscript_(v9, v37, v35, v38);
          v43 = objc_msgSend_intValue(v39, v40, v41, v42);

          v46 = objc_msgSend_objectForKeyedSubscript_(v9, v44, v80, v45);
          v50 = objc_msgSend_intValue(v46, v47, v48, v49);

          if (v50 > 1)
          {
            v51 = v79;
            v52 = v78;
            if (v50 == 2)
            {
              v72 = 0;
              *&v19[53].BB.mid = xmmword_2958D5AA0;
              *&v19[54].RB.shadows = xmmword_2958D5AB0;
              *&v19[54].GG.highlights = 0x400E38E43DCAC083;
              v73 = v43 / 65535.0;
              v74.i32[1] = 0;
              v74.i32[2] = 0;
              v74.f32[0] = 1.0 / (1.0 - v73);
              v84 = xmmword_2958D59E0;
              v85 = xmmword_2958D59F0;
              v86 = xmmword_2958D5A00;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              do
              {
                v74.f32[3] = -(v73 * v74.f32[0]);
                *(&v87 + v72) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, COERCE_FLOAT(*(&v84 + v72))), xmmword_2958D5A20, *(&v84 + v72), 1), xmmword_2958D5A30, *(&v84 + v72), 2);
                v72 += 16;
              }

              while (v72 != 48);
              goto LABEL_42;
            }

            if (v50 == 3)
            {
              *&v19[53].BB.mid = xmmword_2958D5A50;
              *&v19[54].RB.shadows = xmmword_2958D5A60;
              *&v19[54].GG.highlights = 0x4019999A3D6147AELL;
              *&v19[52].RG.mid = xmmword_2958D5A70;
              *&v19[52].GG.shadows = xmmword_2958D5A80;
              *&v19[52].BR.highlights = xmmword_2958D5A90;
              *&v19[54].BR.highlights = 1065204301;
              v96 = __invert_f4(*zmmword_2959D6170);
              *&v19[51].RB.mid = v96.columns[0];
              *&v19[51].GB.shadows = v96.columns[1];
              *&v19[51].BG.highlights = v96.columns[2];
              *&v19[54].BR.shadows = 1.0 / *&v19[54].BR.highlights;
              HIBYTE(v19[54].BG.highlights) = 1;
              goto LABEL_43;
            }
          }

          else
          {
            v51 = v79;
            v52 = v78;
            if (!v50)
            {
              v69 = 0;
              *&v19[53].BB.mid = xmmword_2958D59C0;
              *&v19[54].RB.shadows = xmmword_2958D59D0;
              *&v19[54].GG.highlights = 0x3F80000000000000;
              v70 = v43 / 65535.0;
              v71.i32[1] = 0;
              v71.i32[2] = 0;
              v71.f32[0] = 1.0 / (1.0 - v70);
              v84 = xmmword_2958D59E0;
              v85 = xmmword_2958D59F0;
              v86 = xmmword_2958D5A00;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              do
              {
                v71.f32[3] = -(v70 * v71.f32[0]);
                *(&v87 + v69) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*(&v84 + v69))), xmmword_2958D5A20, *(&v84 + v69), 1), xmmword_2958D5A30, *(&v84 + v69), 2);
                v69 += 16;
              }

              while (v69 != 48);
              goto LABEL_42;
            }

            if (v50 == 1)
            {
              v53 = 0;
              *&v19[53].BB.mid = xmmword_2958D59C0;
              *&v19[54].RB.shadows = xmmword_2959D5EE0;
              *&v19[54].GG.highlights = 0x4000000000000000;
              v54 = v43 / 65535.0;
              v55.i32[1] = 0;
              v55.i32[2] = 0;
              v55.f32[0] = 1.0 / (1.0 - v54);
              v84 = xmmword_2958D59E0;
              v85 = xmmword_2958D59F0;
              v86 = xmmword_2958D5A00;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              do
              {
                v55.f32[3] = -(v54 * v55.f32[0]);
                *(&v87 + v53) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(*(&v84 + v53))), xmmword_2958D5A20, *(&v84 + v53), 1), xmmword_2958D5A30, *(&v84 + v53), 2);
                v53 += 16;
              }

              while (v53 != 48);
LABEL_42:
              v97.columns[0] = v87;
              v97.columns[1] = v88;
              v97.columns[2] = v89;
              *&v19[52].RG.mid = v87;
              *&v19[52].GG.shadows = v97.columns[1];
              *&v19[52].BR.highlights = v97.columns[2];
              v97.columns[3] = xmmword_2958D5A40;
              v98 = __invert_f4(v97);
              *&v19[51].RB.mid = v98.columns[0];
              *&v19[51].GB.shadows = v98.columns[1];
              *&v19[51].BG.highlights = v98.columns[2];
              *&v19[54].BR.shadows = 1.0 / *&v19[54].BR.highlights;
LABEL_43:
              *&v19[55].RG.shadows = v50;
              if (v52 >= 1 && v50 != *&v51->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RG.shadows)
              {
                sub_2958B353C(&v87);
                v68 = v87.i32[0];
                goto LABEL_50;
              }

              size = a3->meta.faces[0].rect.size;
              *p_mid = a3->meta.faces[0].rect.origin;
              p_mid[1] = size;
              p_mid[2] = *&a3->meta.faces[0].confidence;
              goto LABEL_46;
            }
          }

LABEL_36:
          FigDebugAssert3();
          v68 = FigSignalErrorAtGM();
          goto LABEL_50;
        }

        goto LABEL_25;
      }

LABEL_21:
      v56 = 0;
      *&v19[50].BB.highlights = 2;
      *&v19[53].BB.mid = xmmword_2958D59C0;
      *&v19[54].RB.shadows = xmmword_2958D59D0;
      *&v19[54].GG.highlights = 0x3F80000000000000;
      v84 = xmmword_2958D59E0;
      v85 = xmmword_2958D59F0;
      v86 = xmmword_2958D5A00;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      do
      {
        *(&v87 + v56) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2959D5EF0, COERCE_FLOAT(*(&v84 + v56))), xmmword_2959D6140, *(&v84 + v56), 1), xmmword_2959D5E40, *(&v84 + v56), 2);
        v56 += 16;
      }

      while (v56 != 48);
      v92.columns[0] = v87;
      v92.columns[1] = v88;
      v92.columns[2] = v89;
      *&v19[52].RG.mid = v87;
      *&v19[52].GG.shadows = v92.columns[1];
      *&v19[52].BR.highlights = v92.columns[2];
      v92.columns[3] = xmmword_2958D5A40;
      v93 = __invert_f4(v92);
      *&v19[51].RB.mid = v93.columns[0];
      *&v19[51].GB.shadows = v93.columns[1];
      *&v19[51].BG.highlights = v93.columns[2];
      *&v19[54].BR.shadows = 1.0 / *&v19[54].BR.highlights;
      *&v19[55].RG.shadows = -1;
      v93.columns[1] = a3->meta.faces[0].rect.size;
      *p_mid = a3->meta.faces[0].rect.origin;
      p_mid[1] = v93.columns[1];
      p_mid[2] = *&a3->meta.faces[0].confidence;
      goto LABEL_46;
    }

    p_referenceFrameCandidatesCount = v31;
    a3 = v30;
    p_mid = v29;
    v22 = v80;
    if (PixelFormatType == 1751527984)
    {
      goto LABEL_21;
    }
  }

  else if (PixelFormatType == 1751527984)
  {
    goto LABEL_21;
  }

LABEL_25:
  v57 = 0;
  *&v19[53].BB.mid = xmmword_2958D59C0;
  *&v19[54].RB.shadows = xmmword_2958D59D0;
  *&v19[54].GG.highlights = 0x3F80000000000000;
  v84 = xmmword_2958D59E0;
  v85 = xmmword_2958D59F0;
  v86 = xmmword_2958D5A00;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  do
  {
    *(&v87 + v57) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2958D5A10, COERCE_FLOAT(*(&v84 + v57))), xmmword_2958D5A20, *(&v84 + v57), 1), xmmword_2958D5A30, *(&v84 + v57), 2);
    v57 += 16;
  }

  while (v57 != 48);
  v94.columns[0] = v87;
  v94.columns[1] = v88;
  v94.columns[2] = v89;
  *&v19[52].RG.mid = v87;
  *&v19[52].GG.shadows = v94.columns[1];
  *&v19[52].BR.highlights = v94.columns[2];
  v94.columns[3] = xmmword_2958D5A40;
  v95 = __invert_f4(v94);
  *&v19[51].RB.mid = v95.columns[0];
  *&v19[51].GB.shadows = v95.columns[1];
  *&v19[51].BG.highlights = v95.columns[2];
  *&v19[54].BR.shadows = 1.0 / *&v19[54].BR.highlights;
  *p_mid = v83;
  p_mid[1] = v82;
  p_mid[2] = v81;
  *&v19[54].BR.highlights = 1065353216;
  *&v19[54].BG.mid = 65792;
  v60 = objc_msgSend_objectForKeyedSubscript_(v9, v58, v22, v59);

  if (!v60)
  {
LABEL_31:
    *&v19[50].BB.highlights = 0;
    LOBYTE(v19[54].BG.mid) = 1;
    goto LABEL_46;
  }

  v63 = objc_msgSend_objectForKeyedSubscript_(v9, v61, v22, v62);
  v67 = objc_msgSend_intValue(v63, v64, v65, v66);

  if (v67 == 2)
  {
    goto LABEL_36;
  }

  if (v67 != 1)
  {
    if (v67)
    {
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  *&v19[50].BB.highlights = 1;
LABEL_46:
  v76 = p_referenceFrameCandidatesCount[4];
  if (v76 == 2)
  {
    v68 = 0;
    v19[54].BG.mid = 1;
    HIBYTE(v19[54].BG.highlights) = 0;
  }

  else
  {
    v68 = 0;
    if (v76 == 3)
    {
      LOBYTE(v19[54].BG.highlights) = 0;
      v19[54].BG.mid = 1;
    }
  }

LABEL_50:

  return v68;
}

- (void)storeReferenceIfNeeded
{
  v2 = &self->_anon_17f858[80];
  if (!self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing)
  {
    cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
    v5 = self->_bracketSampleBuffers[cntBracketSampleBuffers];
    if (v5)
    {
      v5 = CFRetain(v5);
      LODWORD(cntBracketSampleBuffers) = *(v2 + 108);
    }

    *&self->_referenceFrameProperties.meta.sensorID = v5;
    memcpy(&self->_referenceFrameProperties.meta.averageFocusScore, self->_bracketProperties + 224224 * cntBracketSampleBuffers, 0x36BE0uLL);
    *v2 = 0;
  }
}

- (void)injectReferenceIfNeeded
{
  if (!self->_referenceFrameCandidatesCount && self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing >= 1)
  {
    v24[11] = v2;
    v24[12] = v3;
    p_regWarpInput = &self->_regWarpInput;
    v6 = MEMORY[0x29EDB9270];
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    appended = objc_msgSend__appendFrames_cfp_(self, a2, p_regWarpInput[24], &self->_referenceFrameProperties.meta.averageFocusScore);
    if (!self->_aggregateErr && appended)
    {
      self->_aggregateErr = 2;
    }

    objc_msgSend__perFrameProcessing_input_cfp_(self, v8, *p_regWarpInput, p_regWarpInput[24], &self->_referenceFrameProperties.meta.averageFocusScore);
    if (*v6)
    {
      v12 = objc_msgSend_commandQueue(p_regWarpInput[11], v9, v10, v11);
      v16 = objc_msgSend_commandBuffer(v12, v13, v14, v15);

      objc_msgSend_setLabel_(v16, v17, @"KTRACE_END_MTL", v18);
      v24[0] = MEMORY[0x29EDCA5F8];
      v24[1] = 3221225472;
      v24[2] = sub_29584AF9C;
      v24[3] = &unk_29EDDBE78;
      memset(&v24[4], 0, 24);
      objc_msgSend_addCompletedHandler_(v16, v19, v24, v20);
      objc_msgSend_commit(v16, v21, v22, v23);
    }
  }
}

- (void)releaseStoredReference
{
  v3 = *&self->_referenceFrameProperties.meta.sensorID;
  if (v3)
  {
    CFRelease(v3);
    *&self->_referenceFrameProperties.meta.sensorID = 0;
  }

  bzero(&self->_referenceFrameProperties.meta.averageFocusScore, 0x36BE0uLL);
}

- (int)process
{
  objc_msgSend_injectReferenceIfNeeded(self, a2, v2, v3);

  return objc_msgSend__process_(self, v5, 1, v6);
}

- (id)getProcessingTypeKey:(frameProperties_t *)a3
{
  v4 = 0;
  output = self->_output;
  if (output <= 1)
  {
    if (output)
    {
      if (output != 1)
      {
        goto LABEL_18;
      }

      if (LODWORD(a3[1].meta.ROI.origin.y))
      {
        v6 = off_29EDDC288;
      }

      else
      {
        v6 = off_29EDDC2A0;
      }
    }

    else
    {
      v6 = off_29EDDC280;
      if (!HIBYTE(self->_referenceFrameIndex))
      {
        v6 = off_29EDDC278;
      }
    }

    goto LABEL_17;
  }

  if (output != 2)
  {
    if (output == 3)
    {
      v6 = off_29EDDC288;
    }

    else
    {
      if (output != 7)
      {
        goto LABEL_18;
      }

      v6 = off_29EDDC280;
    }

LABEL_17:
    v4 = *v6;
    goto LABEL_18;
  }

  v7 = objc_msgSend_progressiveBracketingParameters(self, a2, a3, v3);
  v11 = objc_msgSend_mode(v7, v8, v9, v10);
  v12 = off_29EDDC298;
  if (v11 != 1)
  {
    v12 = off_29EDDC290;
  }

  v4 = *v12;

LABEL_18:

  return v4;
}

- (int)verifyIOSurfaceCompression:(__IOSurface *)a3
{
  if (IOSurfaceGetCompressionTypeOfPlane() != 4 || SHIDWORD(self->_nrfFusionOutput->_pixelBuffer) >= IOSurfaceGetCompressionFootprintOfPlane())
  {
    return 0;
  }

  sub_2958B3908();
  return -1;
}

- (int)addFrame:(opaqueCMSampleBuffer *)a3
{
  v5 = &self->_referenceFrameIndex + 2;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  v7 = CMGetAttachment(a3, *MEMORY[0x29EDBFF98], 0);
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, *MEMORY[0x29EDC06E0], v9);
  v13 = objc_msgSend_objectForKeyedSubscript_(v7, v11, *MEMORY[0x29EDC0630], v12);
  v16 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 94), v14, v10, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(*(v5 + 102), v17, v10, v18);
  obj = objc_msgSend_objectForKeyedSubscript_(*(v5 + 110), v20, v13, v21);
  IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
  v25 = objc_msgSend_verifyIOSurfaceCompression_(self, v23, IOSurface, v24);
  v216 = v19;
  if (v25)
  {
    value = v25;
    sub_2958B3968();
    v27 = 0;
    goto LABEL_75;
  }

  if (!a3)
  {
    sub_2958B42C0(&v226);
    v27 = 0;
LABEL_100:
    value = v226.value;
    goto LABEL_75;
  }

  if (v16)
  {
    v26 = v19 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = 0;
    value = -1;
    goto LABEL_75;
  }

  v29 = malloc_type_calloc(1uLL, 0x36BE0uLL, 0x1020040DF6BF6F3uLL);
  v27 = v29;
  if (!v29)
  {
    sub_2958B4260();
    value = -12786;
    goto LABEL_75;
  }

  if (objc_msgSend_initFrameProperties_metadata_pixelBuffer_(self, v30, v29, v7, ImageBuffer))
  {
    sub_2958B39C8(&v226);
    goto LABEL_100;
  }

  objc_msgSend_injectReferenceIfNeeded(self, v31, v32, v33);
  CMSampleBufferGetPresentationTimeStamp(&v226, a3);
  objc_msgSend_StartKTraceEventForAddFrame_timestamp_(self, v34, v27, &v226);
  if (self->_aggregateErr)
  {
    sub_2958B3A18(&v226);
    goto LABEL_100;
  }

  v35 = *(v5 + 30);
  if (v35 == 2)
  {
    if (v27[5] == 1)
    {
      sub_2958B3A68(&v226);
      goto LABEL_100;
    }
  }

  else if (v35 == 3 && (v27[4] & 1) != 0)
  {
    goto LABEL_74;
  }

  if (v27[6] == 1 && v27[5] == 1)
  {
    sub_2958B41C4(&v226);
    goto LABEL_100;
  }

  v215 = v7;
  if (LOBYTE(self->_nrfPlist) != 1)
  {
    goto LABEL_58;
  }

  v36 = objc_opt_new();
  v40 = objc_msgSend_device(*&self->_fusionOptions, v37, v38, v39);
  objc_msgSend_setCaptureObject_(v36, v41, v40, v42);

  objc_msgSend_setDestination_(v36, v43, 1, v44);
  v48 = objc_msgSend_sharedCaptureManager(MEMORY[0x29EDBB540], v45, v46, v47);
  v213 = v36;
  objc_msgSend_startCaptureWithDescriptor_error_(v48, v49, v36, 0);

  v52 = objc_msgSend_getProcessingTypeKey_(self, v50, v27, v51);
  v55 = objc_msgSend_objectForKeyedSubscript_(v16, v53, @"DenoiseAndSharpening", v54);
  v58 = objc_msgSend_objectForKeyedSubscript_(v55, v56, v52, v57);
  regWarpInput = self->_regWarpInput;
  v60 = *(regWarpInput + 2);
  *(regWarpInput + 2) = v58;

  v63 = objc_msgSend_objectForKeyedSubscript_(v16, v61, @"NoiseModel", v62);
  v66 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v52, v65);
  v67 = self->_regWarpInput;
  v68 = *(v67 + 4);
  *(v67 + 4) = v66;

  v71 = objc_msgSend_objectForKeyedSubscript_(v16, v69, @"Fusion", v70);
  v74 = objc_msgSend_objectForKeyedSubscript_(v71, v72, v52, v73);
  v75 = self->_regWarpInput;
  v76 = *(v75 + 3);
  *(v75 + 3) = v74;

  v79 = objc_msgSend_objectForKeyedSubscript_(v16, v77, @"ToneMapping", v78);
  v214 = v52;
  v82 = objc_msgSend_objectForKeyedSubscript_(v79, v80, v52, v81);
  v83 = self->_regWarpInput;
  v84 = *(v83 + 5);
  *(v83 + 5) = v82;

  v87 = *(v5 + 30);
  if (v87 == 2)
  {
    v88 = objc_msgSend_objectForKeyedSubscript_(v16, v85, @"FrameSelection", v86);
    v91 = objc_msgSend_objectForKeyedSubscript_(v88, v89, v52, v90);
    v92 = self->_regWarpInput;
    v93 = *(v92 + 10);
    *(v92 + 10) = v91;

    v87 = *(v5 + 30);
  }

  if (v87 == 3)
  {
    v94 = objc_msgSend_objectForKeyedSubscript_(v16, v85, @"SyntheticLong", v86);
    v95 = self->_regWarpInput;
    v96 = *(v95 + 6);
    *(v95 + 6) = v94;

    v99 = objc_msgSend_objectForKeyedSubscript_(v16, v97, @"SyntheticReference", v98);
    v102 = objc_msgSend_objectForKeyedSubscript_(v99, v100, @"Default", v101);
    v103 = self->_regWarpInput;
    v104 = *(v103 + 7);
    *(v103 + 7) = v102;

    v107 = objc_msgSend_objectForKeyedSubscript_(v16, v105, @"DenoiseAndSharpening", v106);
    v110 = objc_msgSend_objectForKeyedSubscript_(v107, v108, @"ProxyAssetEV0RefParameters", v109);
    v111 = self->_regWarpInput;
    v112 = *(v111 + 8);
    *(v111 + 8) = v110;

    v115 = objc_msgSend_objectForKeyedSubscript_(v16, v113, @"DenoiseAndSharpening", v114);
    v118 = objc_msgSend_objectForKeyedSubscript_(v115, v116, @"ProxyAssetEVMRefParameters", v117);
    v119 = self->_regWarpInput;
    v120 = *(v119 + 9);
    *(v119 + 9) = v118;
  }

  objc_storeStrong(self->_regWarpInput + 12, obj);
  v123 = objc_msgSend_objectForKeyedSubscript_(v16, v121, @"GainMap", v122);
  v126 = objc_msgSend_objectForKeyedSubscript_(v123, v124, @"Default", v125);
  v127 = self->_regWarpInput;
  v128 = *(v127 + 11);
  *(v127 + 11) = v126;

  v131 = objc_msgSend_objectForKeyedSubscript_(v16, v129, @"SemanticStyles", v130);
  v134 = objc_msgSend_objectForKeyedSubscript_(v131, v132, @"Default", v133);
  v135 = self->_regWarpInput;
  v136 = *(v135 + 13);
  *(v135 + 13) = v134;

  v139 = objc_msgSend_objectForKeyedSubscript_(v16, v137, @"BrightLightGreenGhost", v138);
  v142 = objc_msgSend_objectForKeyedSubscript_(v139, v140, @"Default", v141);
  v143 = self->_regWarpInput;
  v144 = *(v143 + 14);
  *(v143 + 14) = v142;

  v147 = objc_msgSend_objectForKeyedSubscript_(v16, v145, @"LowLightGreenGhost", v146);
  v150 = objc_msgSend_objectForKeyedSubscript_(v147, v148, @"Default", v149);
  v151 = self->_regWarpInput;
  v152 = *(v151 + 15);
  *(v151 + 15) = v150;

  v155 = objc_msgSend_getTextureForPortType_(self->_globalDistortionCorrectionByPortType, v153, v13, v154);
  referenceFrame = self->_referenceFrame;
  self->_referenceFrame = v155;

  v159 = objc_msgSend_getParamsForPortType_(self->_globalDistortionCorrectionPlist, v157, v13, v158);
  v160 = *&self->_saveInputFramesToDisk;
  *&self->_saveInputFramesToDisk = v159;

  v164 = self->_regWarpInput;
  if (!*(v164 + 2))
  {
    sub_2958B4128(&v226);
    goto LABEL_108;
  }

  if (!*(v164 + 4))
  {
    sub_2958B408C(&v226);
    goto LABEL_108;
  }

  v165 = *(v5 + 30);
  if (!v165 || v165 == 7)
  {
    goto LABEL_34;
  }

  if (!*(v164 + 3))
  {
    sub_2958B3FF0(&v226);
    goto LABEL_108;
  }

  if (v165 == 3)
  {
    if (*(v164 + 6))
    {
      if (*(v164 + 7))
      {
        if (*(v164 + 8))
        {
          if (*(v164 + 9))
          {
            goto LABEL_34;
          }

          sub_2958B3D80(&v226);
        }

        else
        {
          sub_2958B3E1C(&v226);
        }
      }

      else
      {
        sub_2958B3EB8(&v226);
      }
    }

    else
    {
      sub_2958B3F54(&v226);
    }

LABEL_108:
    value = v226.value;
    v7 = v215;

    goto LABEL_75;
  }

LABEL_34:
  isa = self->_nrfFusionOutput[1].super.super.isa;
  if ((isa & 4) != 0)
  {
    if (v165 == 2)
    {
      v168 = *(v164 + 15);
      if (v168)
      {
        objc_msgSend_tuningParams(v168, v161, v162, v163);
        LOBYTE(v167) = v240;
      }

      else
      {
        LOBYTE(v167) = 0;
        v256 = 0;
        v254 = 0u;
        v255 = 0u;
        v252 = 0u;
        v253 = 0u;
        v250 = 0u;
        v251 = 0u;
        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        v244 = 0u;
        v245 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
      }
    }

    else if (v165 == 1)
    {
      v169 = *(v164 + 14);
      if (v169)
      {
        objc_msgSend_tuningParams(v169, v161, v162, v163);
        LOBYTE(v167) = v229;
      }

      else
      {
        LOBYTE(v167) = 0;
        v239 = 0;
        v237 = 0u;
        v238 = 0u;
        v235 = 0u;
        v236 = 0u;
        v233 = 0u;
        v234 = 0u;
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
      }
    }

    else
    {
      LOBYTE(v167) = 0;
    }
  }

  else
  {
    v167 = (isa >> 1) & 1;
    if (v165 != 2)
    {
      LOBYTE(v167) = 0;
    }

    if (v165 == 1)
    {
      LOBYTE(v167) = isa | v167;
    }
  }

  objc_msgSend_setDoGreenGhostMitigation_(self->_denoiseFusePipeline, v161, *v5 & v167 & 1, v163);
  if (dword_2A18C2398)
  {
    v228 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v170 = DenoiseAndSharpeningTuning;
    v171 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v172 = v228;
    if (!os_log_type_enabled(v171, type))
    {
      v172 &= ~1u;
    }

    if (v172)
    {
      v179 = v13;
      v180 = v10;
      if (objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, v173, v174, v175))
      {
        v181 = "enabled";
      }

      else
      {
        v181 = "disabled";
      }

      v182 = objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, v176, v177, v178);
      v183 = *(v5 + 30);
      v218 = 136316163;
      v219 = "[NRFProcessorV2 addFrame:]";
      v220 = 2081;
      v221 = v181;
      v10 = v180;
      v13 = v179;
      v170 = DenoiseAndSharpeningTuning;
      v222 = 1026;
      *v223 = v182;
      *&v223[4] = 2114;
      *&v223[6] = v13;
      v224 = 1026;
      v225 = v183;
      v212 = 44;
      v211 = &v218;
      _os_log_send_and_compose_impl();
    }

    info = v170[22].info;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  LOBYTE(self->_nrfPlist) = 0;

LABEL_58:
  denoiseFusePipeline = self->_denoiseFusePipeline;
  v186 = CMSampleBufferGetImageBuffer(a3);
  v188 = objc_msgSend_fillPaddedAreaInFrame_cfp_(denoiseFusePipeline, v187, v186, v27);
  if (v188)
  {
    value = v188;
    sub_2958B3B04();
    goto LABEL_102;
  }

  nrfFusionOutput = self->_nrfFusionOutput;
  v7 = v215;
  if (BYTE5(nrfFusionOutput->_gainMapOutputPixelBuffer) == 1)
  {
    if (BYTE4(nrfFusionOutput->_gainMapOutputMetadata) & 1) != 0 || (BYTE4(nrfFusionOutput->_inferenceInputPixelBuffer))
    {
      v191 = self->_denoiseFusePipeline;
      v192 = CMSampleBufferGetImageBuffer(a3);
      LODWORD(v193) = self->_nrfFusionOutput->_gainMapOutputMetadata;
      v195 = objc_msgSend_applyGlobalDistortionCorrectionInplaceWithPixelBuffer_amount_gdcPlist_cscParams_(v191, v194, v192, *&self->_saveInputFramesToDisk, v27 + 223952, v193);
      if (!v195)
      {
        objc_msgSend_waitForSchedule(*&self->_fusionOptions, v196, v197, v198);
        v7 = v215;
        goto LABEL_64;
      }

      value = v195;
      sub_2958B3C00();
    }

    else
    {
      sub_2958B3B64(&v226);
      value = v226.value;
    }

LABEL_102:
    v7 = v215;
    goto LABEL_75;
  }

LABEL_64:
  appended = objc_msgSend__appendFrames_cfp_(self, v189, a3, v27, v211, v212);
  value = appended;
  if (!self->_aggregateErr && appended)
  {
    self->_aggregateErr = 2;
    goto LABEL_86;
  }

  if (appended)
  {
LABEL_86:
    sub_2958B3D20();
    goto LABEL_75;
  }

  ++self->_nInputBrackets;
  v201 = objc_msgSend__perFrameProcessing_input_cfp_(self, v200, self->_regWarpInput, a3, v27);
  value = v201;
  if (!self->_aggregateErr && v201)
  {
    self->_aggregateErr = 2;
    goto LABEL_88;
  }

  if (v201)
  {
LABEL_88:
    sub_2958B3CC0();
    goto LABEL_75;
  }

  if (*(v5 + 30) != 2 || *(v5 + 14) != *(v5 + 10))
  {
LABEL_74:
    value = 0;
    goto LABEL_75;
  }

  value = objc_msgSend__process_(self, v202, 0, v203);
  if (value)
  {
    sub_2958B3C60();
  }

LABEL_75:
  CMSampleBufferGetPresentationTimeStamp(&v226, a3);
  objc_msgSend_EndKTraceEventForAddFrame_timestamp_(self, v204, v27, &v226);
  free(v27);
  if (dword_2A18C2398)
  {
    v205 = v10;
    v228 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v206 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v207 = v228;
    if (os_log_type_enabled(v206, type))
    {
      v208 = v207;
    }

    else
    {
      v208 = v207 & 0xFFFFFFFE;
    }

    if (v208)
    {
      v209 = "failed";
      v218 = 136315907;
      v219 = "[NRFProcessorV2 addFrame:]";
      v220 = 2113;
      v221 = @"NRF";
      if (!value)
      {
        v209 = "succeeded";
      }

      v222 = 2081;
      *v223 = v209;
      *&v223[8] = 1026;
      *&v223[10] = value == 0;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v10 = v205;
  }

  return value;
}

- (int)updateEV0ReferenceFrameIfNecessary
{
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  if (self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing >= 1)
  {
    result = 0;
    *p_cntBracketSampleBuffers = 0;
    return result;
  }

  p_preBracketFrameIndex = &self->_preBracketFrameIndex;
  if (self->_ev0SampleBuffer)
  {
    return 0;
  }

  v5 = *p_cntBracketSampleBuffers;
  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *p_preBracketFrameIndex;
  if (*p_preBracketFrameIndex == v5)
  {
    sub_2958B43AC(&v12);
    return v12;
  }

  v7 = v6 != -1 && v6 < v5;
  v8 = v7;
  v9 = v5 - v8;
  if (v5 - v8 >= self->_referenceFrameCandidatesCount)
  {
    return 0;
  }

  if (*(&self->_bracketProperties[0].meta.isEVMFrame + 224224 * v9))
  {
    sub_2958B4310(&v11);
    return v11;
  }

  else
  {
    v10 = self->_bracketSampleBuffers[v9];
    *(p_preBracketFrameIndex + 1) = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    result = 0;
    *p_cntBracketSampleBuffers = v9;
  }

  return result;
}

- (int)_appendFrames:(opaqueCMSampleBuffer *)a3 cfp:(frameProperties_t *)a4
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  p_preBracketFrameIndex = &self->_preBracketFrameIndex;
  if (LODWORD(self->_output) == 2 && !*p_referenceFrameCandidatesCount)
  {
    objc_msgSend_waitForIdle(*&self->_fusionOptions, a2, a3, a4);
  }

  if (a4->meta.isPreBracketedFrame)
  {
    *p_preBracketFrameIndex = *p_referenceFrameCandidatesCount;
    memcpy(&self->_prebracketedProperties, a4, 0x36BE0uLL);
    return 0;
  }

  else
  {
    v10 = *p_referenceFrameCandidatesCount;
    if (a4->meta.isEVMFrame)
    {
      p_preBracketFrameIndex[4] = v10;
    }

    if (p_referenceFrameCandidatesCount[4] == 3)
    {
      v11 = 5;
    }

    else
    {
      v11 = 4;
    }

    if (v10 >= v11)
    {
      return -1;
    }

    else
    {
      if (a3)
      {
        v12 = CFRetain(a3);
        v10 = *p_referenceFrameCandidatesCount;
      }

      else
      {
        v12 = 0;
      }

      self->_bracketSampleBuffers[v10] = v12;
      memcpy(self->_bracketProperties + 224224 * v10, a4, 0x36BE0uLL);
      updated = 0;
      ++*p_referenceFrameCandidatesCount;
      v16 = p_referenceFrameCandidatesCount[4];
      if (v16)
      {
        if (v16 != 7)
        {
          updated = objc_msgSend_updateEV0ReferenceFrameIfNecessary(self, v13, v14, v15);
          if (updated)
          {
            sub_2958B4448();
          }
        }
      }
    }
  }

  return updated;
}

- (int)_perFrameProcessing:(id)a3 input:(opaqueCMSampleBuffer *)a4 cfp:(frameProperties_t *)a5
{
  v8 = a3;
  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  v196 = CMGetAttachment(a4, *MEMORY[0x29EDBFF98], 0);
  if (!v196)
  {
    sub_2958B4F74(v197);
    goto LABEL_191;
  }

  v14 = &self->_anon_17fa15[3];
  if (LODWORD(self->_output) == 3)
  {
    if (!*&self->_outputGainMapHeadroom)
    {
      sub_2958B4ED8(v197);
      goto LABEL_191;
    }
  }

  else if (!self->_deepFusionOutput)
  {
    sub_2958B44A8(v197);
    goto LABEL_191;
  }

  if (a5->meta.isPreBracketedFrame)
  {
    fixed = 0;
    goto LABEL_8;
  }

  isMetadataConsistentWithFirstFrame = objc_msgSend__isMetadataConsistentWithFirstFrame(self, v11, v12, v13);
  fixed = isMetadataConsistentWithFirstFrame - 1;
  aggregateErr = self->_aggregateErr;
  if (!aggregateErr && (isMetadataConsistentWithFirstFrame & 1) == 0)
  {
    self->_aggregateErr = 20;
    goto LABEL_101;
  }

  if (aggregateErr)
  {
LABEL_101:
    sub_2958B4544();
    goto LABEL_8;
  }

  shouldDownsampleRWPPInputWithPixelFormat_processingType = objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, v17, PixelFormatType, LODWORD(self->_output));
  v24 = shouldDownsampleRWPPInputWithPixelFormat_processingType;
  v25 = PixelFormatType == 1751527984 || *&self->_registrationPipelineRWPPConfig.numThreads == 0;
  p_curRegWarpTempIndex = &self->_curRegWarpTempIndex;
  if (v25)
  {
    if (shouldDownsampleRWPPInputWithPixelFormat_processingType)
    {
      referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
      if (referenceFrameCandidatesCount > self->_cntBracketSampleBuffers)
      {
        v27 = referenceFrameCandidatesCount - 1;
        if (self->_curRegWarpTempIndex != referenceFrameCandidatesCount - 1)
        {
          v191 = shouldDownsampleRWPPInputWithPixelFormat_processingType;
          v185 = PixelFormatType;
          v28 = v8;
          regWarpM2M = self->_regWarpM2M;
          v30 = ImageBuffer;
          regWarpHelper = self->_regWarpHelper;
          v32 = objc_msgSend_commandBuffer(*&self->_fusionOptions, v21, v22, v23);
          v182 = v30;
          fixed = objc_msgSend_convertInput10BitPixBuf_downsampledOutput8BitPixBuf_mtlCommandBuffer_(regWarpM2M, v33, v30, regWarpHelper, v32);

          if (!self->_aggregateErr && fixed)
          {
            self->_aggregateErr = 1;
            v8 = v28;
          }

          else
          {
            v8 = v28;
            if (!fixed)
            {
              objc_msgSend_waitForSchedule(*&self->_fusionOptions, v34, v35, v36);
              *p_curRegWarpTempIndex = v27;
              ImageBuffer = v182;
              LODWORD(PixelFormatType) = v185;
              v24 = v191;
              goto LABEL_24;
            }
          }

          sub_2958B45A4();
          goto LABEL_8;
        }
      }
    }
  }

LABEL_24:
  output = self->_output;
  if (output > 3)
  {
    if (output > 8)
    {
      if (output == 9)
      {
        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v21, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
      }

      else
      {
        if (output != 10)
        {
          goto LABEL_128;
        }

        objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v21, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
      }
    }

    else
    {
      if ((output - 6) < 3)
      {
        goto LABEL_44;
      }

      if ((output - 4) >= 2)
      {
        goto LABEL_128;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v21, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }
    v175 = ;
    objc_exception_throw(v175);
  }

  if (output <= 1)
  {
    if (output)
    {
      if (output != 1)
      {
        goto LABEL_128;
      }

      v192 = v24;
      v186 = PixelFormatType;
      v189 = v8;
      v38 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v21, v22, v23);
      y_low = LODWORD(a5[1].meta.ROI.origin.y);
      referenceFrameIndex = self->_referenceFrameIndex;
      v41 = ImageBuffer;
      cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
      v43 = self->_referenceFrameCandidatesCount;
      v183 = v41;
      fixed = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v44, v41, a5, LODWORD(self->_output), self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
      v46 = self->_aggregateErr;
      if (!v46 && fixed)
      {
        self->_aggregateErr = 3;
      }

      else if (!v46)
      {
        if (!v38 || (referenceFrameIndex & 1) != 0 || !y_low || v43 - 1 != cntBracketSampleBuffers || (v47 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v21, v45, v23), v48 = self->_cntBracketSampleBuffers, v52 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v49, v50, v51), WidthOfPlane = CVPixelBufferGetWidthOfPlane(v52, 0), v57 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v54, v55, v56), HeightOfPlane = CVPixelBufferGetHeightOfPlane(v57, 0), (v60 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v59, v47, 0, v48, v48, v48, WidthOfPlane, HeightOfPlane)) == 0))
        {
          v8 = v189;
          ImageBuffer = v183;
          LODWORD(PixelFormatType) = v186;
          v24 = v192;
          if (*(v189[5] + 56) == 1 && a5->meta.isEVMFrame)
          {
            denoiseFusePipeline = self->_denoiseFusePipeline;
            v62 = CMSampleBufferGetImageBuffer(a4);
            fixed = objc_msgSend_baseLayer_(denoiseFusePipeline, v63, v62, v64);
            v65 = self->_aggregateErr;
            if (!v65 && fixed)
            {
              self->_aggregateErr = 19;
LABEL_186:
              sub_2958B48E0();
              goto LABEL_8;
            }

            v24 = v192;
            if (v65)
            {
              goto LABEL_186;
            }
          }

          goto LABEL_128;
        }

        fixed = v60;
        sub_2958B4880();
LABEL_116:
        v8 = v189;
        goto LABEL_8;
      }

      sub_2958B4940();
      goto LABEL_116;
    }

LABEL_44:
    v193 = v24;
    v187 = PixelFormatType;
    v66 = objc_msgSend_objectForKeyedSubscript_(v196, v21, *MEMORY[0x29EDC0630], v23);
    if (objc_msgSend_defringingEnabled(v8[12], v67, v68, v69))
    {
      v72 = objc_msgSend_isEqualToString_(v66, v70, *MEMORY[0x29EDBFF48], v71) ^ 1;
    }

    else
    {
      LOBYTE(v72) = 0;
    }

    v75 = *(self->_regWarpInput + 5);
    if (!v75)
    {
      goto LABEL_60;
    }

    v76 = *(v75 + 120);
    v77 = *(v75 + 121);
    if (v77 == 1 && v76 != 0)
    {
      sub_2958B49A0(v66);
      goto LABEL_8;
    }

    if ((v77 & 1) == 0 && (v76 & 1) == 0)
    {
LABEL_60:
      v79 = -(BYTE1(self->_referenceFrameIndex) ^ 1);
    }

    v179 = v72;
    v190 = v8;
    WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
    v84 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v81, v82, v83);
    v181 = WeakRetained;
    v88 = objc_opt_respondsToSelector();
    v184 = ImageBuffer;
    v180 = v66;
    if (v84 || objc_msgSend_providesInferencesWithoutInferenceInputPixelBuffer(self->_deepFusionOutput, v85, v86, v87))
    {
      if (v88)
      {
        v92 = v201;
        v201[0] = MEMORY[0x29EDCA5F8];
        v201[1] = 3221225472;
        v201[2] = sub_29584DB3C;
        v201[3] = &unk_29EDDC3A8;
        v178 = v202;
        v202[0] = v181;
        v202[1] = self;
      }

      else
      {
        v92 = 0;
      }

      v93 = MEMORY[0x29C253310](v92);
      if (v84)
      {
        v94 = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v89, ImageBuffer, a5, LODWORD(self->_output), self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
        if (v94)
        {
          fixed = v94;
          if ((sub_2958B4A1C(v94, v93, v88 & 1) & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else
        {
          v98 = objc_msgSend_inferenceInputPixelBuffer(self->_deepFusionOutput, v95, v96, v97);
          v102 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v99, v100, v101);
          v103 = CVPixelBufferGetWidthOfPlane(v102, 0);
          v107 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v104, v105, v106);
          v108 = CVPixelBufferGetHeightOfPlane(v107, 0);
          v110 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v109, v98, 0, 0, 0, 0, v103, v108);
          if (!v110)
          {
            v114 = objc_msgSend_freeInputBandPyramids(self->_denoiseFusePipeline, v111, v112, v113);
            if (v114)
            {
              fixed = v114;
              if ((sub_2958B4B0C(v114, v93, v88 & 1) & 1) == 0)
              {
                goto LABEL_196;
              }

              goto LABEL_194;
            }

            goto LABEL_91;
          }

          fixed = v110;
          if ((sub_2958B4A94(v110, v93, v88 & 1) & 1) == 0)
          {
            goto LABEL_196;
          }
        }

LABEL_194:
        v140 = 0;
        v8 = v190;
        ImageBuffer = v184;
LABEL_97:

        v24 = v193;
        if ((v140 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_128;
      }
    }

    else
    {
      v93 = 0;
      v88 = 0;
    }

LABEL_91:
    v131 = self->_denoiseFusePipeline;
    v132 = objc_msgSend_pixelBuffer(self->_deepFusionOutput, v89, v90, v91);
    v136 = objc_msgSend_linearOutputPixelBuffer(self->_deepFusionOutput, v133, v134, v135);
    v137 = CMSampleBufferGetImageBuffer(a4);
    fixed = objc_msgSend_denoiseSingleImage_linearOutput_input_cfp_nrfPlist_style_inferenceProvider_defringeEnabled_colorCubeFixType_(v131, v138, v132, v136, v137, a5, v190, self->_tuningParameters, v93, v179);
    v139 = self->_aggregateErr;
    if (!v139 && fixed)
    {
      v139 = 3;
      self->_aggregateErr = 3;
      LODWORD(PixelFormatType) = v187;
    }

    else
    {
      LODWORD(PixelFormatType) = v187;
      if (!v139)
      {

        ImageBuffer = v184;
        if ((v88 & 1) == 0)
        {

          v8 = v190;
          v24 = v193;
          goto LABEL_128;
        }

        v140 = 1;
        goto LABEL_96;
      }
    }

    ImageBuffer = v184;
    if (sub_2958B4B84(v139, v93, v88 & 1))
    {
      v140 = 0;
LABEL_96:
      v8 = v190;
      goto LABEL_97;
    }

LABEL_196:
    v8 = v190;

    goto LABEL_8;
  }

  if (output != 2)
  {
    v73 = v24;
    fixed = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v21, ImageBuffer, a5, 3, self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
    v74 = self->_aggregateErr;
    if (!v74 && fixed)
    {
      self->_aggregateErr = 5;
    }

    else
    {
      v24 = v73;
      if (!v74)
      {
        goto LABEL_128;
      }
    }

    sub_2958B4604();
    goto LABEL_8;
  }

  v194 = v24;
  v188 = PixelFormatType;
  v115 = ImageBuffer;
  v116 = self->_referenceFrameCandidatesCount;
  v117 = self + 224224 * v116;
  v118 = v117[224388];
  fixed = objc_msgSend__computeMetricsForReferenceFrameSelection_(self, v21, (v116 - 1), v23);
  v120 = self->_aggregateErr;
  if (!v120 && fixed)
  {
    self->_aggregateErr = 24;
    goto LABEL_113;
  }

  if (v120)
  {
LABEL_113:
    sub_2958B4820();
    goto LABEL_8;
  }

  fixed = objc_msgSend_addFrame_cfp_processingType_batchCount_(self->_denoiseFusePipeline, v119, v115, a5, LODWORD(self->_output), self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing);
  v122 = self->_aggregateErr;
  if (!v122 && fixed)
  {
    self->_aggregateErr = 3;
    goto LABEL_120;
  }

  if (v122)
  {
LABEL_120:
    sub_2958B47C0();
    goto LABEL_8;
  }

  if (v116 <= 3 && !self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing)
  {
    regWarpInput = self->_regWarpInput;
    v124 = *(regWarpInput + 10);
    if (v124)
    {
      v125 = *(v124 + 184);
      if (v125)
      {
        if ((v118 & 1) == 0)
        {
          v126 = (v117 + 192);
          v200 = 0.0;
          if (v116 == 1)
          {
            *v14 = 0;
            v125 = *(*(regWarpInput + 10) + 184);
          }

          v127 = objc_msgSend_blinkDetectionOnFrameIdx_imgMeta_plist_resultScore_frameIdx_(self->_denoiseFusePipeline, v21, (v116 - 1), v126, v125, &v200, (v116 - 1));
          v128 = v200;
          v129 = *v14;
          if (v200 > *v14)
          {
            v129 = v200;
          }

          *v14 = v129;
          if (v127)
          {
            fixed = v127;
            sub_2958B4664();
            goto LABEL_8;
          }

          if (dword_2A18C2398)
          {
            v199 = 0;
            v198 = 0;
            v130 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();

            v128 = v200;
          }

          *(v126 + 224208) = v128;
        }
      }
    }
  }

  v141 = *(self->_regWarpInput + 10);
  if (!v141)
  {
    sub_2958B4724(v197);
LABEL_191:
    fixed = v197[0];
    goto LABEL_8;
  }

  ImageBuffer = v115;
  LODWORD(PixelFormatType) = v188;
  v24 = v194;
  if (self->_cntBracketSampleBuffers < 0 && *(v141 + 8) == 1)
  {
    fixed = objc_msgSend__perFrameProcessingComputeReferenceFrameIndexIfReady(self, v21, v121, v23);
    v142 = self->_aggregateErr;
    if (!v142 && fixed)
    {
      self->_aggregateErr = 24;
    }

    else
    {
      v24 = v194;
      if (!v142)
      {
        goto LABEL_128;
      }
    }

    sub_2958B46C4();
    goto LABEL_8;
  }

LABEL_128:
  if (*&self->_registrationPipelineRWPPConfig.numThreads)
  {
    v143 = PixelFormatType == 1751527984;
  }

  else
  {
    v143 = 1;
  }

  v144 = v143;
  if (((v144 | v24 ^ 1) & 1) == 0)
  {
    v145 = self->_referenceFrameCandidatesCount;
    if (v145 > self->_cntBracketSampleBuffers)
    {
      v146 = v145 - 1;
      if (*p_curRegWarpTempIndex != v145 - 1)
      {
        v147 = objc_msgSend__downsampleImageForRegistration_outputImage_(self, v21, ImageBuffer, self->_regWarpHelper);
        fixed = v147;
        if (!self->_aggregateErr && v147)
        {
          self->_aggregateErr = 1;
        }

        else if (!v147)
        {
          *p_curRegWarpTempIndex = v146;
          goto LABEL_141;
        }

        sub_2958B4BFC();
        goto LABEL_8;
      }
    }
  }

LABEL_141:
  fixed = objc_msgSend__registerImages_(self, v21, 0, v23, v176, v177);
  v151 = self->_aggregateErr;
  if (!v151 && fixed)
  {
    self->_aggregateErr = 1;
    goto LABEL_176;
  }

  if (v151)
  {
LABEL_176:
    sub_2958B4E78();
    goto LABEL_8;
  }

  if (LODWORD(self->_output) == 2)
  {
    fixed = objc_msgSend__lowLightMotionDetection(self, v148, v149, v150);
    v152 = self->_aggregateErr;
    if (!v152 && fixed)
    {
      self->_aggregateErr = 21;
    }

    else if (!v152)
    {
      goto LABEL_148;
    }

    sub_2958B4E18();
    goto LABEL_8;
  }

LABEL_148:
  fixed = objc_msgSend__computeBlurryFrameWeight_(self, v148, (self->_referenceFrameCandidatesCount - 1), v150);
  v155 = self->_aggregateErr;
  if (!v155 && fixed)
  {
    self->_aggregateErr = 21;
    goto LABEL_178;
  }

  if (v155)
  {
LABEL_178:
    sub_2958B4DB8();
    goto LABEL_8;
  }

  fixed = objc_msgSend__processSIFRandRefEV0IfPossible_(self, v153, 0, v154);
  v159 = self->_aggregateErr;
  if (!v159 && fixed)
  {
    self->_aggregateErr = 4;
    goto LABEL_180;
  }

  if (v159)
  {
LABEL_180:
    sub_2958B4D58();
    goto LABEL_8;
  }

  if (LODWORD(self->_output) == 2 && (fixed = objc_msgSend__lowLightGreenGhostPerFrameProcessing(self, v156, v157, v158)) != 0)
  {
    sub_2958B4C5C();
  }

  else
  {
    v160 = objc_msgSend_statistics(self->_semanticStyleProperties, v156, v157, v158);
    if (objc_msgSend_stationary(v160, v161, v162, v163) && (v164 = *(self->_regWarpInput + 3)) != 0)
    {
      v165 = *(v164 + 140);
    }

    else
    {
      v165 = 0;
    }

    if (v8)
    {
      v167 = v8[3];
      if (v167)
      {
        if (!((v167[24] != 2) | v165 & 1))
        {
          v168 = self->_cntBracketSampleBuffers;
          if ((v168 & 0x80000000) == 0)
          {
            v169 = self->_referenceFrameCandidatesCount;
            if (v169 > v168 && LODWORD(self->_output) == 2)
            {
              v170 = 0;
              v171 = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[245];
              bracketProperties = self->_bracketProperties;
              do
              {
                v173 = self->_cntBracketSampleBuffers;
                if (v170 != v173 && (*v171 & 1) == 0)
                {
                  canCopyBack_nrfPlist = objc_msgSend_lowLightHybridRegister_refFrameIdx_nonRefFrameProps_refFrameProps_canCopyBack_nrfPlist_(self->_denoiseFusePipeline, v166, v170, v173, bracketProperties, self->_bracketProperties + 224224 * v173, BYTE4(self->_nrfFusionOutput->_inferenceInputPixelBuffer), self->_regWarpInput);
                  if (canCopyBack_nrfPlist)
                  {
                    sub_2958B4CBC(canCopyBack_nrfPlist, v197);
                    goto LABEL_191;
                  }

                  if ((*(v171 - 340) & 1) == 0)
                  {
                    *(v171 - 340) = 1;
                  }

                  fixed = 0;
                  *v171 = 1;
                  v169 = self->_referenceFrameCandidatesCount;
                }

                ++v170;
                v171 += 224224;
                bracketProperties = (bracketProperties + 224224);
              }

              while (v170 < v169);
            }
          }
        }
      }
    }
  }

LABEL_8:

  return fixed;
}

- (BOOL)_isMetadataConsistentWithFirstFrame
{
  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if (referenceFrameCandidatesCount < 2)
  {
    return 1;
  }

  v3 = self->_bracketProperties + 224224 * referenceFrameCandidatesCount;
  v4 = v3 - 224224;
  if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain) == *(v3 - 368))
  {
    if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain))
    {
      v5 = vceq_s32(*&self->_bracketProperties[1].meta.exposureParams.exposure_time, *(v3 - 360));
      if ((v5.i32[0] & v5.i32[1] & 1) == 0)
      {
        sub_2958B5024();
        return 0;
      }
    }
  }

  else
  {
    if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain))
    {
      bracketProperties = self->_bracketProperties;
    }

    else
    {
      bracketProperties = (v3 - 224224);
    }

    if (LOBYTE(self->_bracketProperties[1].meta.exposureParams.ltm_soft_gain))
    {
      v8 = (v3 - 224224);
    }

    else
    {
      v8 = self->_bracketProperties;
    }

    v9 = vceq_s32(*&bracketProperties[1].meta.exposureParams.exposure_time, vmovn_s64(vcvtq_u64_f64(v8->meta.ROI.size)));
    if ((vpmin_u32(v9, v9).u32[0] & 0x80000000) == 0)
    {
      sub_2958B4FC4();
      return 0;
    }
  }

  if (self->_bracketProperties[0].meta.sensorID != *v4)
  {
    sub_2958B50BC();
    return 0;
  }

  return 1;
}

- (void)dealloc
{
  objc_msgSend_resetState(self, a2, v2, v3);
  objc_msgSend_purgeResources(self, v5, v6, v7);
  v11 = objc_msgSend_sharedInstance(NRFMonitor, v8, v9, v10);
  objc_msgSend_removeInstance(v11, v12, v13, v14);

  v15.receiver = self;
  v15.super_class = NRFProcessorV2;
  [(NRFProcessorV2 *)&v15 dealloc];
}

- (NRFProcessorV2)initWithCommandQueue:(id)a3
{
  v5 = a3;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v30.receiver = self;
  v30.super_class = NRFProcessorV2;
  v9 = [(NRFProcessorV2 *)&v30 init];
  if (v9)
  {
    v31[0] = 0;
    if (!qword_2A18C2238)
    {
      v31[1] = MEMORY[0x29EDCA5F8];
      v31[2] = 3221225472;
      v31[3] = sub_295856998;
      v31[4] = &unk_29EDDBF20;
      v31[5] = v31;
      v32 = xmmword_29EDDC3F0;
      v33 = 0;
      qword_2A18C2238 = _sl_dlopen();
    }

    if (!qword_2A18C2238)
    {
      sub_2958B5154(v31, v6, v7, v8);
    }

    p_regWarpInput = &v9->_regWarpInput;
    if (v31[0])
    {
      free(v31[0]);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    else if (!v5)
    {
LABEL_8:
      objc_msgSend_resetState(v9, v6, v7, v8);
      LOBYTE(v9->_sidecar) = 0;
      v9->_regwarpHasBeenSetup = 0;
      sharedMetalBuffer = v9->_sharedMetalBuffer;
      v9->_sharedMetalBuffer = 0;

      v9->_usingExternalSharedMetalBuffer = 0;
      sharedRegWarpBuffer = v9->_sharedRegWarpBuffer;
      v9->_sharedRegWarpBuffer = 0;

      v9->_usingExternalSharedRegWarpBuffer = 0;
      v13 = objc_opt_new();
      v14 = *p_regWarpInput;
      *p_regWarpInput = v13;

      v15 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      nrfConfig = v9->_nrfConfig;
      v9->_nrfConfig = v15;

      v9->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing = 0;
      BYTE2(v9->_referenceFrameIndex) = 0;
      *&v9->_referenceFrameProperties.meta.sensorID = 0;
      bzero(&v9->_referenceFrameProperties.meta.averageFocusScore, 0x36BE0uLL);
      objc_msgSend_setProgressiveBatchSize_(v9, v17, 4, v18);
      objc_msgSend_getDefaults_(MEMORY[0x29EDC0A80], v19, &v9->_registrationPipelineRWPPConfig.numVerticalBlocks, v20);
      v24 = objc_msgSend_sharedInstance(NRFMonitor, v21, v22, v23);
      objc_msgSend_addInstance(v24, v25, v26, v27);

      v28 = v9;
      goto LABEL_9;
    }

    objc_storeStrong(&v9->_cameraInfoByPortType, a3);
    goto LABEL_8;
  }

LABEL_9:

  return v9;
}

- (int)prewarm
{
  p_metalCommandQueue = &self->_metalCommandQueue;
  if (!self->_cameraInfoByPortType)
  {
    sub_2958B5234();
    return -1;
  }

  v6 = *&self->_fusionOptions;
  if (!v6)
  {
    v16 = objc_alloc(MEMORY[0x29EDC0A40]);
    v17 = MEMORY[0x29EDB9F48];
    v18 = objc_opt_class();
    v21 = objc_msgSend_bundleForClass_(v17, v19, v18, v20);
    inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v16, v22, v21, p_metalCommandQueue[1]);
    v24 = *&self->_fusionOptions;
    *&self->_fusionOptions = inited;

    v10 = *&self->_fusionOptions;
    if (v10)
    {
      goto LABEL_6;
    }

    sub_2958B51D4();
    return -1;
  }

  v7 = objc_msgSend_commandQueue(v6, a2, v2, v3);

  v10 = *&self->_fusionOptions;
  if (v7)
  {
LABEL_6:
    v13 = objc_msgSend_prewarmShaders_(DenoiseFusePipeline, v8, v10, v9);
    goto LABEL_7;
  }

  objc_msgSend_setCommandQueue_(*&self->_fusionOptions, v8, p_metalCommandQueue[1], v9);
  v13 = objc_msgSend_prewarmShaders_(DenoiseFusePipeline, v11, *&self->_fusionOptions, v12);
LABEL_7:
  v25 = v13;
  v26 = objc_msgSend_prewarmShaders_(TextureUtils, v14, *&self->_fusionOptions, v15);
  if (v26)
  {
    v25 = v26;
  }

  v29 = objc_msgSend_prewarmShaders_(GlobalDistortionCorrectionStage, v27, *&self->_fusionOptions, v28);
  if (v29)
  {
    v25 = v29;
  }

  v32 = objc_msgSend_prewarmShaders_(MotionDetection, v30, *&self->_fusionOptions, v31);
  if (v32)
  {
    v25 = v32;
  }

  v35 = objc_msgSend_prewarmShaders_(GrayGhostDetection, v33, *&self->_fusionOptions, v34);
  if (v35)
  {
    v25 = v35;
  }

  v38 = objc_msgSend_prewarmShaders_(RegPyrFusion, v36, *&self->_fusionOptions, v37);
  if (v38)
  {
    v25 = v38;
  }

  v41 = objc_msgSend_prewarmShaders_(RegDense, v39, *&self->_fusionOptions, v40);
  if (v41)
  {
    v25 = v41;
  }

  v44 = objc_msgSend_prewarmShaders_(BilateralGrid, v42, *&self->_fusionOptions, v43);
  if (v44)
  {
    v25 = v44;
  }

  v47 = objc_msgSend_prewarmShaders_(PyramidStage_NRF, v45, *&self->_fusionOptions, v46);
  if (v47)
  {
    v25 = v47;
  }

  v49 = objc_msgSend_prewarmShaders_tuningParameters_plistEntryName_(DenoiseRemixStage, v48, *&self->_fusionOptions, *p_metalCommandQueue, @"NRFParameters");
  if (v49)
  {
    v25 = v49;
  }

  v52 = objc_msgSend_prewarmShaders_(FusionRemixStage, v50, *&self->_fusionOptions, v51);
  if (v52)
  {
    v25 = v52;
  }

  v55 = objc_msgSend_prewarmShaders_(ToneMappingStage, v53, *&self->_fusionOptions, v54);
  if (v55)
  {
    v25 = v55;
  }

  v58 = objc_msgSend_prewarmShaders_(SubjectRelightingStage, v56, *&self->_fusionOptions, v57);
  if (v58)
  {
    v25 = v58;
  }

  v61 = objc_msgSend_prewarmShaders_(BlinkDetectionStage, v59, *&self->_fusionOptions, v60);
  if (v61)
  {
    v65 = v61;
  }

  else
  {
    v65 = v25;
  }

  v66 = objc_msgSend_device(*&self->_fusionOptions, v62, v63, v64);
  v69 = objc_msgSend_supportsFamily_(v66, v67, 1006, v68);

  if (v69)
  {
    v73 = objc_msgSend_prewarmShaders_(SyntheticLongStage, v70, *&self->_fusionOptions, v72);
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      v76 = v65;
    }

    v77 = objc_msgSend_prewarmShaders_(SyntheticReferenceStage, v74, *&self->_fusionOptions, v75);
    if (v77)
    {
      v65 = v77;
    }

    else
    {
      v65 = v76;
    }
  }

  if (objc_msgSend__isGainMapSupported(self, v70, v71, v72))
  {
    v81 = objc_msgSend_prewarmShaders_(GainMapStage, v78, *&self->_fusionOptions, v80);
    if (v81)
    {
      v65 = v81;
    }
  }

  if (objc_msgSend__isSemanticStylesSupported(self, v78, v79, v80))
  {
    v84 = objc_msgSend_prewarmShaders_(SemanticStylesStage, v82, *&self->_fusionOptions, v83);
    if (v84)
    {
      v65 = v84;
    }
  }

  v85 = objc_msgSend_prewarmShaders_(OutliersRemovalStage, v82, *&self->_fusionOptions, v83);
  if (v85)
  {
    v88 = v85;
  }

  else
  {
    v88 = v65;
  }

  v89 = objc_msgSend_prewarmShaders_(RegWarpHelper, v86, *&self->_fusionOptions, v87);
  if (v89)
  {
    v88 = v89;
  }

  v91 = objc_msgSend_prewarmShaders_tuningParameters_(DefringeStage, v90, *&self->_fusionOptions, *p_metalCommandQueue);
  if (v91)
  {
    v88 = v91;
  }

  v94 = objc_msgSend_prewarmShaders_(GreenGhostBrightLightStage, v92, *&self->_fusionOptions, v93);
  if (v94)
  {
    v88 = v94;
  }

  v97 = objc_msgSend_prewarmShaders_(GreenGhostLowLightStage, v95, *&self->_fusionOptions, v96);
  if (v97)
  {
    v101 = v97;
  }

  else
  {
    v101 = v88;
  }

  v102 = objc_msgSend_commandQueue(*&self->_fusionOptions, v98, v99, v100);
  v105 = objc_msgSend_prewarmShadersWithCommandQueue_(LearnedNRMetalStage, v103, v102, v104);

  if (v105)
  {
    return v105;
  }

  else
  {
    return v101;
  }
}

- (int)setupWithOptions:(id)a3
{
  p_cameraInfoByPortType = &self->_cameraInfoByPortType;
  p_regWarpInput = &self->_regWarpInput;
  v6 = a3;
  v256 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x29EDC0838], v8);
  v9 = MEMORY[0x29EDB9F48];
  v10 = objc_opt_class();
  v13 = objc_msgSend_bundleForClass_(v9, v11, v10, v12);
  v14 = objc_alloc(MEMORY[0x29EDC0A40]);
  v268 = p_cameraInfoByPortType;
  v253 = v13;
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v14, v15, v13, *p_cameraInfoByPortType);
  v17 = p_regWarpInput[11];
  p_regWarpInput[11] = inited;

  if (!p_regWarpInput[11])
  {
    sub_2958B5924(v350);
LABEL_129:
    v252 = 0;
    goto LABEL_141;
  }

  v18 = objc_alloc_init(MEMORY[0x29EDC0A18]);
  v19 = p_regWarpInput[3];
  p_regWarpInput[3] = v18;

  v20 = [RegWarpHelper alloc];
  v23 = objc_msgSend_initWithMetal_(v20, v21, p_regWarpInput[11], v22);
  v24 = p_regWarpInput[2];
  p_regWarpInput[2] = v23;

  v25 = [NRFConfig alloc];
  v28 = objc_msgSend_initWithDefaults_(v25, v26, v6, v27);
  v29 = p_regWarpInput[18];
  p_regWarpInput[18] = v28;

  if (!p_regWarpInput[18])
  {
    sub_2958B5888(v350);
    goto LABEL_129;
  }

  v348 = 0u;
  v349 = 0u;
  v346 = 0u;
  v347 = 0u;
  v30 = v256;
  v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v346, v345, 16);
  if (v32)
  {
    v36 = v32;
    v37 = *v347;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v347 != v37)
        {
          objc_enumerationMutation(v30);
        }

        if (objc_msgSend_intValue(*(*(&v346 + 1) + 8 * i), v33, v34, v35))
        {
          *(p_regWarpInput[18] + 61) = 0;
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v346, v345, 16);
    }

    while (v36);
  }

  v39 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v40 = v268[2];
  v268[2] = v39;

  v41 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v42 = v268[3];
  v268[3] = v41;

  v43 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v44 = v268[4];
  v268[4] = v43;

  v47 = objc_msgSend_objectForKeyedSubscript_(v6, v45, *MEMORY[0x29EDC0298], v46);
  Options = objc_msgSend_getOptions_(self, v48, v47, v49);

  if (Options)
  {
    sub_2958B5294();
    v252 = 0;
    goto LABEL_135;
  }

  v53 = objc_msgSend_objectForKeyedSubscript_(v6, v51, *MEMORY[0x29EDC0288], v52);
  v252 = v53;
  if (v53)
  {
    v54 = v53;
    v55 = [LSCGainsPlist alloc];
    v57 = objc_msgSend_initWithDictionary_metal_(v55, v56, v54, p_regWarpInput[11], v252);
    v58 = p_regWarpInput[13];
    p_regWarpInput[13] = v57;

    if (!p_regWarpInput[13])
    {
      sub_2958B5390();
      goto LABEL_134;
    }

    v59 = [GlobalDistortionCorrectionByPortType alloc];
    v62 = objc_msgSend_initWithDictionary_(v59, v60, v54, v61);
    v63 = p_regWarpInput[14];
    p_regWarpInput[14] = v62;

    if (!p_regWarpInput[14])
    {
      sub_2958B52F4(v350);
      goto LABEL_141;
    }
  }

  v254 = v30;
  v255 = v6;
  *(p_regWarpInput[18] + 72) = 0;
  v341 = 0u;
  v342 = 0u;
  v343 = 0u;
  v344 = 0u;
  v64 = v268[4];
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v65, &v341, v340, 16);
  if (v66)
  {
    v69 = v66;
    v70 = *v342;
    do
    {
      for (j = 0; j != v69; ++j)
      {
        if (*v342 != v70)
        {
          objc_enumerationMutation(v64);
        }

        v72 = objc_msgSend_objectForKeyedSubscript_(v268[4], v67, *(*(&v341 + 1) + 8 * j), v68, v252);
        *(p_regWarpInput[18] + 72) |= objc_msgSend_defringingEnabled(v72, v73, v74, v75);
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v64, v67, &v341, v340, 16);
    }

    while (v69);
  }

  *(p_regWarpInput[18] + 75) = 0;
  *(p_regWarpInput[18] + 77) = 0;
  *(p_regWarpInput[18] + 78) = 0;
  *(p_regWarpInput[18] + 79) = 0;
  v269 = p_regWarpInput;
  *(p_regWarpInput[18] + 101) = 0;
  v257 = self;
  objc_msgSend_applyOverrides(self, v76, v77, v78);
  v263 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v262 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v336 = 0u;
  v337 = 0u;
  v338 = 0u;
  v339 = 0u;
  obj = v268[2];
  v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v79, &v336, v335, 16);
  if (v264)
  {
    v260 = *v337;
    do
    {
      v82 = 0;
      do
      {
        if (*v337 != v260)
        {
          objc_enumerationMutation(obj);
        }

        v266 = v82;
        v83 = objc_msgSend_objectForKeyedSubscript_(v268[2], v80, *(*(&v336 + 1) + 8 * v82), v81, v252);
        v84 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v331 = 0u;
        v332 = 0u;
        v333 = 0u;
        v334 = 0u;
        v87 = objc_msgSend_objectForKeyedSubscript_(v83, v85, @"DenoiseAndSharpening", v86);
        v89 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v88, &v331, v330, 16);
        if (v89)
        {
          v92 = v89;
          v93 = *v332;
          do
          {
            for (k = 0; k != v92; ++k)
            {
              if (*v332 != v93)
              {
                objc_enumerationMutation(v87);
              }

              v95 = *(*(&v331 + 1) + 8 * k);
              v96 = objc_msgSend_objectForKeyedSubscript_(v83, v90, @"DenoiseAndSharpening", v91);
              v99 = objc_msgSend_objectForKeyedSubscript_(v96, v97, v95, v98);
              objc_msgSend_setObject_forKeyedSubscript_(v84, v100, v99, v95);
            }

            v92 = objc_msgSend_countByEnumeratingWithState_objects_count_(v87, v90, &v331, v330, 16);
          }

          while (v92);
        }

        objc_msgSend_addObject_(v263, v101, v84, v102);
        v103 = objc_alloc_init(MEMORY[0x29EDB8E00]);

        v329 = 0u;
        v328 = 0u;
        v327 = 0u;
        v326 = 0u;
        v106 = objc_msgSend_objectForKeyedSubscript_(v83, v104, @"ToneMapping", v105);
        v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, &v326, v325, 16);
        if (v108)
        {
          v111 = v108;
          v112 = *v327;
          do
          {
            for (m = 0; m != v111; ++m)
            {
              if (*v327 != v112)
              {
                objc_enumerationMutation(v106);
              }

              v114 = *(*(&v326 + 1) + 8 * m);
              v115 = objc_msgSend_objectForKeyedSubscript_(v83, v109, @"ToneMapping", v110);
              v118 = objc_msgSend_objectForKeyedSubscript_(v115, v116, v114, v117);

              objc_msgSend_setObject_forKeyedSubscript_(v103, v119, v118, v114);
              if (v118[79] == 1)
              {
                *(v269[18] + 100) = 1;
              }
            }

            v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v109, &v326, v325, 16);
          }

          while (v111);
        }

        objc_msgSend_addObject_(v262, v120, v103, v121);
        v324 = 0u;
        v323 = 0u;
        v322 = 0u;
        v321 = 0u;
        v124 = objc_msgSend_objectForKeyedSubscript_(v83, v122, @"Fusion", v123);
        v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v321, v320, 16);
        if (v126)
        {
          v129 = v126;
          v130 = *v322;
          do
          {
            for (n = 0; n != v129; ++n)
            {
              if (*v322 != v130)
              {
                objc_enumerationMutation(v124);
              }

              v132 = *(*(&v321 + 1) + 8 * n);
              v133 = objc_msgSend_objectForKeyedSubscript_(v83, v127, @"Fusion", v128);
              v136 = objc_msgSend_objectForKeyedSubscript_(v133, v134, v132, v135);

              if (v136)
              {
                v137 = objc_msgSend_objectForKeyedSubscript_(v83, v127, @"Fusion", v128);
                v140 = objc_msgSend_objectForKeyedSubscript_(v137, v138, v132, v139);

                if (v140[24] == 2)
                {
                  *(v269[18] + 75) = 1;
                  *(v269[18] + 77) = 1;
                }
              }
            }

            v129 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v127, &v321, v320, 16);
          }

          while (v129);
        }

        v143 = objc_msgSend_objectForKeyedSubscript_(v83, v141, @"GainMap", v142);

        if (v143)
        {
          *(v269[18] + 78) = 1;
        }

        v146 = objc_msgSend_objectForKeyedSubscript_(v83, v144, @"SemanticStyles", v145);

        if (v146)
        {
          *(v269[18] + 79) = 1;
        }

        v82 = v266 + 1;
      }

      while (v266 + 1 != v264);
      v264 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v336, v335, 16);
    }

    while (v264);
  }

  v147 = v269;
  v6 = v255;
  v148 = v257;
  v150 = v262;
  v149 = v263;
  if (*(v269[18] + 96) == 4)
  {
    v319 = 0u;
    v318 = 0u;
    v317 = 0u;
    v316 = 0u;
    v151 = v268[2];
    v265 = objc_msgSend_countByEnumeratingWithState_objects_count_(v151, v152, &v316, v315, 16);
    if (v265)
    {
      v271 = 0;
      v270 = 0;
      v259 = *v317;
      v261 = v151;
      do
      {
        v155 = 0;
        do
        {
          if (*v317 != v259)
          {
            objc_enumerationMutation(v151);
          }

          v267 = v155;
          v156 = objc_msgSend_objectForKeyedSubscript_(v268[2], v153, *(*(&v316 + 1) + 8 * v155), v154, v252);
          v311 = 0u;
          v312 = 0u;
          v313 = 0u;
          v314 = 0u;
          v159 = objc_msgSend_objectForKeyedSubscript_(v156, v157, @"BrightLightGreenGhost", v158);
          v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v160, &v311, v310, 16);
          if (v161)
          {
            v164 = v161;
            v165 = *v312;
            do
            {
              for (ii = 0; ii != v164; ++ii)
              {
                if (*v312 != v165)
                {
                  objc_enumerationMutation(v159);
                }

                v167 = *(*(&v311 + 1) + 8 * ii);
                v168 = objc_msgSend_objectForKeyedSubscript_(v156, v162, @"BrightLightGreenGhost", v163);
                v171 = objc_msgSend_objectForKeyedSubscript_(v168, v169, v167, v170);

                if (v171)
                {
                  v172 = objc_msgSend_objectForKeyedSubscript_(v156, v162, @"BrightLightGreenGhost", v163);
                  v175 = objc_msgSend_objectForKeyedSubscript_(v172, v173, v167, v174);

                  if (v175)
                  {
                    objc_msgSend_tuningParams(v175, v176, v177, v178);
                    v179 = v299;
                  }

                  else
                  {
                    v179 = 0;
                    v309 = 0;
                    v307 = 0u;
                    v308 = 0u;
                    v305 = 0u;
                    v306 = 0u;
                    v303 = 0u;
                    v304 = 0u;
                    v301 = 0u;
                    v302 = 0u;
                    v299 = 0u;
                    v300 = 0u;
                  }

                  v270 = (v179 | v270) != 0;
                }
              }

              v164 = objc_msgSend_countByEnumeratingWithState_objects_count_(v159, v162, &v311, v310, 16);
            }

            while (v164);
          }

          v297 = 0u;
          v298 = 0u;
          v295 = 0u;
          v296 = 0u;
          v182 = objc_msgSend_objectForKeyedSubscript_(v156, v180, @"LowLightGreenGhost", v181);
          v184 = objc_msgSend_countByEnumeratingWithState_objects_count_(v182, v183, &v295, v294, 16);
          if (v184)
          {
            v187 = v184;
            v188 = *v296;
            do
            {
              for (jj = 0; jj != v187; ++jj)
              {
                if (*v296 != v188)
                {
                  objc_enumerationMutation(v182);
                }

                v190 = *(*(&v295 + 1) + 8 * jj);
                v191 = objc_msgSend_objectForKeyedSubscript_(v156, v185, @"LowLightGreenGhost", v186);
                v194 = objc_msgSend_objectForKeyedSubscript_(v191, v192, v190, v193);

                if (v194)
                {
                  v195 = objc_msgSend_objectForKeyedSubscript_(v156, v185, @"LowLightGreenGhost", v186);
                  v198 = objc_msgSend_objectForKeyedSubscript_(v195, v196, v190, v197);

                  if (v198)
                  {
                    objc_msgSend_tuningParams(v198, v199, v200, v201);
                    v202 = v277;
                  }

                  else
                  {
                    v202 = 0;
                    v293 = 0;
                    v291 = 0u;
                    v292 = 0u;
                    v289 = 0u;
                    v290 = 0u;
                    v287 = 0u;
                    v288 = 0u;
                    v285 = 0u;
                    v286 = 0u;
                    v283 = 0u;
                    v284 = 0u;
                    v281 = 0u;
                    v282 = 0u;
                    v279 = 0u;
                    v280 = 0u;
                    v277 = 0u;
                    v278 = 0u;
                  }

                  v271 = (v202 | v271) != 0;
                }
              }

              v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v182, v185, &v295, v294, 16);
            }

            while (v187);
          }

          v155 = v267 + 1;
          v151 = v261;
        }

        while (v267 + 1 != v265);
        v265 = objc_msgSend_countByEnumeratingWithState_objects_count_(v261, v153, &v316, v315, 16);
      }

      while (v265);

      if (v270)
      {
        v147 = v269;
        *(v269[18] + 96) |= 1u;
        v6 = v255;
        v148 = v257;
      }

      else
      {
        v6 = v255;
        v148 = v257;
        v147 = v269;
      }

      v150 = v262;
      v149 = v263;
      if (v271)
      {
        *(v147[18] + 96) |= 2u;
      }
    }

    else
    {
    }
  }

  v203 = [DenoiseFusePipeline alloc];
  v205 = objc_msgSend_initWithContext_nrfConfig_dasTuningOptions_toneMappingOptions_(v203, v204, v147[11], v147[18], v149, v150);
  v206 = *(v148 + 112);
  *(v148 + 112) = v205;

  if (!*(v148 + 112))
  {
    sub_2958B580C(v150, v149);
    Options = -12780;
    goto LABEL_135;
  }

  *(v147[18] + 24) = *(*(*v147 + 8) + 16) != 0;
  v209 = v147[18];
  if (!*(v209 + 20))
  {
    *(v209 + 20) = *(*(*v147 + 8) + 12);
    v209 = v147[18];
  }

  v210 = *(v209 + 28);
  if (v210 == -3)
  {
    *(v209 + 28) = *(*(*v147 + 8) + 20);
    v209 = v147[18];
    v210 = *(v209 + 28);
    if (v210 == -3)
    {
      goto LABEL_106;
    }
  }

  v211 = *(v209 + 20);
  if (v211 == 1)
  {
    if ((v210 & 0x80000000) == 0)
    {
      sub_2958B53F0(v350);
      goto LABEL_141;
    }
  }

  else if (!v211)
  {
LABEL_106:
    sub_2958B5770(v350);
LABEL_141:
    Options = v350[0];
    goto LABEL_135;
  }

  objc_msgSend_setFusionReferenceFrame_(*(v148 + 112), v207, 0, v208, v252);
  objc_msgSend_setSidecarWriter_(*(v148 + 112), v212, v148, v213);
  v214 = objc_alloc(MEMORY[0x29EDC0A20]);
  v218 = objc_msgSend_device(v147[11], v215, v216, v217);
  v220 = objc_msgSend_initWithDevice_allocatorType_(v214, v219, v218, *(v147[18] + 20));
  objc_msgSend_setAllocator_(v147[11], v221, v220, v222);

  v226 = objc_msgSend_allocator(v147[11], v223, v224, v225);

  if (!v226)
  {
    sub_2958B56D4(v350);
    goto LABEL_141;
  }

  *(v148 + 8) = 0;
  if (!objc_msgSend_count(v254, v227, v228, v229))
  {
    goto LABEL_134;
  }

  v231 = objc_msgSend_determineWorkingBufferRequirementsWithOptions_nrfConfig_memoryAllocationInfo_(v148, v230, v6, v147[18], v148 + 16);
  if (v231)
  {
    sub_2958B548C(v231, v350);
    goto LABEL_141;
  }

  if (!*(v148 + 16))
  {
    sub_2958B5638(v350);
    goto LABEL_141;
  }

  if (*(v147[18] + 32) != 1)
  {
LABEL_134:
    Options = 0;
    goto LABEL_135;
  }

  Resources = objc_msgSend_allocateResources_(v148, v232, v148 + 16, v233);
  if (Resources)
  {
    sub_2958B552C(Resources, v350);
    goto LABEL_141;
  }

  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v235 = v254;
  v237 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v236, &v273, v272, 16);
  if (v237)
  {
    v241 = v237;
    v242 = *v274;
    while (2)
    {
      for (kk = 0; kk != v241; ++kk)
      {
        if (*v274 != v242)
        {
          objc_enumerationMutation(v235);
        }

        v244 = *(*(&v273 + 1) + 8 * kk);
        v245 = objc_msgSend_intValue(v244, v238, v239, v240);
        v248 = objc_msgSend_objectForKeyedSubscript_(v235, v246, v244, v247);
        v250 = objc_msgSend_prepareToProcess_prepareDescriptor_(v257, v249, v245, v248);
        if (v250)
        {
          Options = v250;
          sub_2958B55C8(v250, v248);
          goto LABEL_125;
        }
      }

      v241 = objc_msgSend_countByEnumeratingWithState_objects_count_(v235, v238, &v273, v272, 16);
      if (v241)
      {
        continue;
      }

      break;
    }

    Options = 0;
LABEL_125:
    v6 = v255;
  }

  else
  {
    Options = 0;
  }

LABEL_135:
  return Options;
}

- (int)getOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_21;
  }

  p_tuningParamsPlist = &self->_tuningParamsPlist;
  if (!self->_tuningParamsPlist || !self->_defringingTuningByPortType)
  {
    goto LABEL_21;
  }

  v6 = objc_opt_new();
  v7 = *(self->_regWarpInput + 1);
  *(self->_regWarpInput + 1) = v6;

  p_regWarpInput = &self->_regWarpInput;
  v8 = *(self->_regWarpInput + 1);
  v11 = objc_msgSend_objectForKeyedSubscript_(v4, v9, @"Common", v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"NRFParameters", v13);
  LODWORD(v8) = objc_msgSend_readPlist_(v8, v15, v14, v16);

  if (v8)
  {
    sub_2958B59C0();
    goto LABEL_21;
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(v4, v17, @"DefaultSensorIDs", v18);
  if (!v19)
  {
LABEL_21:
    v59 = -1;
    goto LABEL_22;
  }

  v21 = v19;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v68, v67, 16);
  if (v63)
  {
    v62 = *v69;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v69 != v62)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v68 + 1) + 8 * i);
        v26 = objc_msgSend_objectForKeyedSubscript_(v4, v22, v25, v23);
        v65 = v25;
        v29 = objc_msgSend_objectForKeyedSubscript_(v21, v27, v25, v28);
        v33 = objc_msgSend_allKeys(v26, v30, v31, v32);
        v66 = v33;
        if ((objc_msgSend_containsObject_(v33, v34, v29, v35) & 1) == 0)
        {
          v39 = objc_msgSend_firstObject(v33, v36, v37, v38);

          v29 = v39;
        }

        v40 = objc_msgSend_objectForKeyedSubscript_(v26, v36, v29, v38);
        v43 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"NRFParameters", v42);
        v48 = objc_msgSend_objectForKeyedSubscript_(v43, v44, @"NRFParameters", v45);
        if (v48)
        {
          sub_295843084(v29, v48, *p_tuningParamsPlist, p_tuningParamsPlist[1], *(p_regWarpInput[18] + 62));
        }

        v49 = objc_msgSend_objectForKeyedSubscript_(v40, v46, @"ChromaticDefringing", v47);
        if (v49)
        {
          v50 = [VideoDefringingTuningParameters alloc];
          v64 = v26;
          v53 = v21;
          v54 = v4;
          v55 = objc_msgSend_initWithTuningParameters_(v50, v51, v49, v52);
          objc_msgSend_selectParametersForTuningMode_(v55, v56, 0, v57);
          objc_msgSend_setObject_forKeyedSubscript_(p_tuningParamsPlist[2], v58, v55, v65);

          v4 = v54;
          v21 = v53;
          v26 = v64;
        }
      }

      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v68, v67, 16);
    }

    while (v63);
  }

  v59 = 0;
LABEL_22:

  return v59;
}

- (int)determineWorkingBufferRequirementsWithOptions:(id)a3 memoryAllocationInfo:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    sub_2958B5D14();
LABEL_9:
    v13 = -1;
    goto LABEL_5;
  }

  if (!a4)
  {
    sub_2958B5CB4();
    goto LABEL_9;
  }

  v7 = [NRFConfig alloc];
  v10 = objc_msgSend_initWithDefaults_(v7, v8, v6, v9);
  if (!v10)
  {
    sub_2958B5C54();
    goto LABEL_9;
  }

  v12 = v10;
  v13 = objc_msgSend_determineWorkingBufferRequirementsWithOptions_nrfConfig_memoryAllocationInfo_(self, v11, v6, v10, a4);

LABEL_5:
  return v13;
}

- (int)determineWorkingBufferRequirementsWithOptions:(id)a3 nrfConfig:(id)a4 memoryAllocationInfo:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v11 = v8;
  if (!v7)
  {
    sub_2958B61DC(&v54);
LABEL_46:
    v42 = v54;
    goto LABEL_41;
  }

  if (!v8)
  {
    sub_2958B6140(&v54);
    goto LABEL_46;
  }

  if (!a5)
  {
    sub_2958B60A4(&v54);
    goto LABEL_46;
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v9, *MEMORY[0x29EDC0838], v10);
  if (!v12)
  {
    sub_2958B6008(&v54);
    goto LABEL_46;
  }

  v44 = a5;
  v45 = v7;
  v48 = v11;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v12;
  v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v56, v55, 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v49)
  {
    v46 = *v57;
    do
    {
      v24 = 0;
      do
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * v24);
        v53 = 0;
        v54 = 0;
        v51 = 0;
        v52 = 0;
        v26 = objc_msgSend_intValue(v25, v14, v15, v16);
        v29 = objc_msgSend_objectForKeyedSubscript_(obj, v27, v25, v28);
        v31 = objc_msgSend_determineWorkingBufferRequirementsToProcess_prepareDescriptor_nrfConfig_denoiseFusePipelineSize_rwppSize_rwppInputWidth_rwppInputHeight_(self, v30, v26, v29, v48, &v54, &v53, &v52, &v51);
        if (v31)
        {
          v42 = v31;
          sub_2958B5D74();
LABEL_39:

          goto LABEL_40;
        }

        if (!v54)
        {
          sub_2958B5FA8();
          v42 = -4;
          goto LABEL_39;
        }

        if (v23 <= v54)
        {
          v23 = v54;
        }

        if (v17 <= v53)
        {
          v17 = v53;
        }

        if (v18 <= v52)
        {
          v18 = v52;
        }

        if (v19 <= v51)
        {
          v19 = v51;
        }

        if (v22)
        {
          if (!v20)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v22 = objc_msgSend_pixelFormat(v29, v32, v33, v34);
          if (!v20)
          {
LABEL_29:
            v20 = objc_msgSend_width(v29, v32, v33, v34);
            if (v21)
            {
              goto LABEL_23;
            }

            goto LABEL_30;
          }
        }

        if (v21)
        {
          goto LABEL_23;
        }

LABEL_30:
        v21 = objc_msgSend_height(v29, v32, v33, v34);
LABEL_23:
        if (v22 != objc_msgSend_pixelFormat(v29, v32, v33, v34))
        {
          sub_2958B5DD4(v60);
LABEL_38:
          v42 = v60[0];
          goto LABEL_39;
        }

        if (v20 != objc_msgSend_width(v29, v35, v36, v37))
        {
          sub_2958B5E70(v60);
          goto LABEL_38;
        }

        if (v21 != objc_msgSend_height(v29, v38, v39, v40))
        {
          sub_2958B5F0C(v60);
          goto LABEL_38;
        }

        ++v24;
      }

      while (v49 != v24);
      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v56, v55, 16);
      v49 = v41;
    }

    while (v41);
  }

  v44->var0 = v23;
  v44->var1 = v17;
  v44->var2 = v20;
  v44->var3 = v21;
  v44->var4 = v22;
  v44->var5 = v18;
  v44->var6 = v19;

  v42 = 0;
LABEL_40:
  v7 = v45;
  v11 = v48;
LABEL_41:

  return v42;
}

- (id)newMTLBufferWithLength:(unint64_t)a3
{
  v5 = &self->_anon_147fb8[72];
  if (BYTE1(self->_nrfFusionOutput->_metadata) == 1)
  {
    v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], a2, a3, v3, *MEMORY[0x29EDBB128]);
    v7 = *MEMORY[0x29EDBB140];
    v25[0] = v6;
    v25[1] = &unk_2A1CC40F0;
    v8 = *MEMORY[0x29EDBB170];
    v24[1] = v7;
    v24[2] = v8;
    v25[2] = MEMORY[0x29EDB8EB0];
    v25[3] = MEMORY[0x29EDB8EA8];
    v9 = *MEMORY[0x29EDBB1B0];
    v24[3] = *MEMORY[0x29EDBB1A0];
    v24[4] = v9;
    v24[5] = *MEMORY[0x29EDBB1A8];
    v25[4] = MEMORY[0x29EDB8EB0];
    v25[5] = MEMORY[0x29EDB8EB0];
    v11 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v10, v25, v24, 6);

    v12 = IOSurfaceCreate(v11);
    if (v12)
    {
      v16 = v12;
      v17 = objc_msgSend_device(*(v5 + 438), v13, v14, v15);
      v20 = objc_msgSend_newBufferWithIOSurface_(v17, v18, v16, v19);

      if (v20)
      {

        CFRelease(v16);
        return v20;
      }

      sub_2958B6278(v11, v16);
    }

    else
    {
      sub_2958B62F8(v11);
    }
  }

  v21 = objc_msgSend_device(*(v5 + 438), a2, a3, v3);
  v20 = objc_msgSend_newBufferWithLength_options_(v21, v22, a3, 0);

  if (!v20)
  {
    sub_29584FD68();
  }

  return v20;
}

- (int)allocateResources:(id *)a3
{
  if (a3)
  {
    v6 = &self->_anon_147fb8[72];
    regWarpHelper = self->_regWarpHelper;
    if (regWarpHelper)
    {
      Width = CVPixelBufferGetWidth(regWarpHelper);
      regWarpHelper = *(v6 + 428);
      if (regWarpHelper)
      {
        regWarpHelper = CVPixelBufferGetHeight(regWarpHelper);
      }
    }

    else
    {
      Width = 0;
    }

    v9 = Width >= a3->var5 && regWarpHelper >= a3->var6;
    if (v9 || (CVPixelBufferRelease(*(v6 + 428)), PixelBufferWithWiringAssertion = CreatePixelBufferWithWiringAssertion(), (*(v6 + 428) = PixelBufferWithWiringAssertion) != 0))
    {
      v14 = objc_msgSend_length(self->_sharedRegWarpBuffer, a2, a3, v3);
      result = 0;
      if (!self->_usingExternalSharedRegWarpBuffer)
      {
        var1 = a3->var1;
        if (var1 > v14)
        {
          v17 = MEMORY[0x29EDB9270];
          if (*MEMORY[0x29EDB9270] == 1)
          {
            kdebug_trace();
          }

          objc_msgSend_releaseResources(*(v6 + 437), v11, v12, v13);
          self->_regwarpHasBeenSetup = 0;
          sharedRegWarpBuffer = self->_sharedRegWarpBuffer;
          self->_sharedRegWarpBuffer = 0;

          if (*v17 == 1)
          {
            kdebug_trace();
            if (*v17 == 1)
            {
              kdebug_trace();
            }
          }

          v19 = objc_alloc(MEMORY[0x29EDBFE58]);
          v22 = objc_msgSend_initWithLength_(v19, v20, var1, v21);
          v23 = self->_sharedRegWarpBuffer;
          self->_sharedRegWarpBuffer = v22;

          if (self->_sharedRegWarpBuffer)
          {
            if (*v17 == 1)
            {
              kdebug_trace();
            }

            return 0;
          }

          else
          {
            sub_2958B65CC(&v24);
            return v24;
          }
        }
      }
    }

    else
    {
      sub_2958B6678(&v25);
      return v25;
    }
  }

  else
  {
    sub_2958B6724(&v26);
    return v26;
  }

  return result;
}

- (int)fusionMode
{
  v4 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, a2, v2, v3);
  if (v4 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v4 == 2);
  }
}

- (void)setFusionMode:(int)a3
{
  denoiseFusePipeline = self->_denoiseFusePipeline;
  if (a3 == 1)
  {
    objc_msgSend_setFusionReferenceFrame_(denoiseFusePipeline, a2, 1, v3);
  }

  else
  {
    objc_msgSend_setFusionReferenceFrame_(denoiseFusePipeline, a2, 2 * (a3 == 2), v3);
  }
}

- (void)setReferenceFrameIndex:(int)a3
{
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  self->_cntBracketSampleBuffers = a3;
  v8 = objc_msgSend__registerImages_(self, a2, 0, v3);
  aggregateErr = self->_aggregateErr;
  if (aggregateErr)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (!v10)
  {
    self->_aggregateErr = 1;
LABEL_13:
    sub_2958B6CD0();
    return;
  }

  if (aggregateErr)
  {
    goto LABEL_13;
  }

  v11 = objc_msgSend__processSIFRandRefEV0IfPossible_(self, v6, 0, v7);
  v12 = self->_aggregateErr;
  if (!v12 && v11)
  {
    self->_aggregateErr = 4;
    goto LABEL_15;
  }

  if (v12)
  {
LABEL_15:
    sub_2958B6C70();
  }
}

- (int)purgeResources
{
  v5 = &self->_anon_147fb8[72];
  objc_msgSend_releaseResources(self->_denoiseFusePipeline, a2, v2, v3);
  CVPixelBufferRelease(*(v5 + 428));
  *(v5 + 428) = 0;
  v9 = *(v5 + 445);
  if (v9 && (*(v9 + 36) == 2 || *(v9 + 66) == 1))
  {
    objc_msgSend_releaseResources(*(v5 + 437), v6, v7, v8);
    self->_regwarpHasBeenSetup = 0;
  }

  sharedMetalBuffer = self->_sharedMetalBuffer;
  self->_sharedMetalBuffer = 0;

  self->_usingExternalSharedMetalBuffer = 0;
  sharedRegWarpBuffer = self->_sharedRegWarpBuffer;
  self->_sharedRegWarpBuffer = 0;

  self->_usingExternalSharedRegWarpBuffer = 0;
  self->_allocatorSetupComplete = 0;
  return 0;
}

- (int)resetState
{
  p_referenceFrameIndex = &self->_referenceFrameIndex;
  p_nInputBrackets = &self->_nInputBrackets;
  objc_msgSend_waitForSchedule(*&self->_fusionOptions, a2, v2, v3);
  objc_msgSend_resetInternalState(self, v7, v8, v9);
  objc_msgSend_releaseAllBindings(self->_denoiseFusePipeline, v10, v11, v12);
  objc_msgSend_setDoGreenGhostMitigation_(self->_denoiseFusePipeline, v13, 0, v14);
  objc_msgSend_releaseStoredReference(self, v15, v16, v17);
  *&self->_processedSIFRandRefEV0 = 0;
  p_referenceFrameIndex[5] = 0;
  *&self->_processedSyntheticReference = 0;
  *&self->_deepFusionPyramidBuilt[5] = 0;
  p_referenceFrameIndex[2] = -1;
  objc_msgSend_setFusionReferenceFrame_(self->_denoiseFusePipeline, v18, 0, v19);
  *p_nInputBrackets = 0;
  *(p_referenceFrameIndex + 2) = 0;
  *p_referenceFrameIndex = 1;
  objc_storeWeak(&self->_progressiveBracketingParameters, 0);
  v20 = *(p_referenceFrameIndex + 7);
  *(p_referenceFrameIndex + 7) = 0;

  *(p_referenceFrameIndex + 3) = 0;
  v24 = objc_msgSend_allocator(*(p_nInputBrackets + 182), v21, v22, v23);
  objc_msgSend_reset(v24, v25, v26, v27);

  v31 = objc_msgSend_allocator(*(p_nInputBrackets + 182), v28, v29, v30);
  objc_msgSend_purgeResources_(v31, v32, 0, v33);

  objc_msgSend_setExecutionStatus_(*(p_nInputBrackets + 182), v34, 0, v35);
  return 0;
}

- (int)resetInternalState
{
  v5 = &self->_anon_17fa15[7];
  p_curRegWarpTempIndex = &self->_curRegWarpTempIndex;
  p_preBracketFrameIndex = &self->_preBracketFrameIndex;
  objc_msgSend_reset(self->_denoiseFusePipeline, a2, v2, v3);
  self->_aggregateErr = 0;
  v8 = *(p_preBracketFrameIndex + 1);
  if (v8)
  {
    CFRelease(v8);
    *(p_preBracketFrameIndex + 1) = 0;
  }

  v9 = *(p_curRegWarpTempIndex + 193);
  *(p_curRegWarpTempIndex + 193) = 0;

  if (*(v5 + 17) >= 1)
  {
    v10 = 0;
    bracketSampleBuffers = self->_bracketSampleBuffers;
    bracketProperties = self->_bracketProperties;
    do
    {
      v13 = bracketSampleBuffers[v10];
      if (v13)
      {
        CFRelease(v13);
        bracketSampleBuffers[v10] = 0;
      }

      bzero(bracketProperties, 0x36BE0uLL);
      ++v10;
      bracketProperties = (bracketProperties + 224224);
    }

    while (v10 < *(v5 + 17));
  }

  bzero(&self->_prebracketedProperties, 0x36BE0uLL);
  *(p_curRegWarpTempIndex + 1352) = 1;
  *(v5 + 17) = 0;
  *p_curRegWarpTempIndex = -1;
  *p_preBracketFrameIndex = -1;
  bzero(self->_fusionConf.colorSpaceConversionParameters, 0x540uLL);
  p_preBracketFrameIndex[4] = -1;
  ++*(v5 + 18);
  *v5 = 0;
  objc_msgSend_setSrlEnabled_(self->_denoiseFusePipeline, v14, 1, v15);
  return 0;
}

- (void)addToSidecar:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_objectForKeyedSubscript_(self->_nrfConfig, v7, v6, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(self->_nrfConfig, v7, v6, v10);
    objc_msgSend_addEntriesFromDictionary_(v11, v12, v14, v13);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(self->_nrfConfig, v7, v14, v6);
  }
}

- (BOOL)_isGainMapSupported
{
  objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, a2, @"DefaultSensorIDs", v2);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = v35 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v32, v31, 16);
  if (v5)
  {
    v8 = v5;
    v29 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKeyedSubscript_(v3, v6, v10, v7);
        v14 = objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, v12, v10, v13);
        v17 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v11, v16);
        v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"NRFParameters", v19);
        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"NRFParameters", v22);
        v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"GainMap", v25);

        if (v26)
        {
          v27 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v32, v31, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_11:

  return v27;
}

- (BOOL)_isSemanticStylesSupported
{
  objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, a2, @"DefaultSensorIDs", v2);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = v35 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v32, v31, 16);
  if (v5)
  {
    v8 = v5;
    v29 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = objc_msgSend_objectForKeyedSubscript_(v3, v6, v10, v7);
        v14 = objc_msgSend_objectForKeyedSubscript_(self->_metalCommandQueue, v12, v10, v13);
        v17 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v11, v16);
        v20 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"NRFParameters", v19);
        v23 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"NRFParameters", v22);
        v26 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"SemanticStyles", v25);

        if (v26)
        {
          v27 = 1;
          goto LABEL_11;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v32, v31, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_11:

  return v27;
}

- (void)setLinearOutputMetadata:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self->_bracketProperties + 224224 * *&self->_anon_14893c[1004];
    v6 = (self->_bracketProperties + 224224 * *&self->_anon_14893c[1012]);
    v41 = v4;
    v7 = sub_295820670((v5 + 16), (v6 + 8), 2);
    v8 = *(v5 + 14);
    v9 = *(v5 + 10);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v10, *MEMORY[0x29EDB9670], *MEMORY[0x29EDB9658]);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v11, *MEMORY[0x29EDB9628], *MEMORY[0x29EDB9608]);
    v15 = *(self->_regWarpInput + 5);
    if (v15 && *(v15 + 79) == 1 && (LODWORD(self->_output) - 1) <= 1)
    {
      v16 = objc_msgSend_getSTFLTM_asNSData(self->_denoiseFusePipeline, v12, v13, v14);
    }

    else
    {
      v16 = sub_2958378A4(v5 + 84);
    }

    v18 = v16;
    objc_msgSend_setObject_forKeyedSubscript_(v41, v17, v16, *MEMORY[0x29EDC0590]);

    v19 = sub_29583794C(v6 + 110700);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v20, v19, *MEMORY[0x29EDC0528]);

    v21 = sub_29583794C(v6 + 110958);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v22, v21, *MEMORY[0x29EDC0538]);

    LODWORD(v23) = v8;
    v27 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v24, v25, v26, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v28, v27, *MEMORY[0x29EDC0170]);

    *&v29 = v7;
    v33 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v30, v31, v32, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v34, v33, *MEMORY[0x29EDC0168]);

    LODWORD(v35) = v9;
    v39 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v36, v37, v38, v35);
    objc_msgSend_setObject_forKeyedSubscript_(v41, v40, v39, *MEMORY[0x29EDC0148]);
  }

  MEMORY[0x2A1C71098]();
}

- (void)_prepareOutputMetadata
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  p_nInputBrackets = &self->_nInputBrackets;
  if (dword_2A18C2398)
  {
    v179 = 0;
    v178 = 0;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (self->_aggregateErr >= 255)
  {
    aggregateErr = 255;
  }

  else
  {
    aggregateErr = self->_aggregateErr;
  }

  v9 = p_referenceFrameCandidatesCount[4];
  if (v9 <= 0xF)
  {
    v10 = v9 << 12;
  }

  else
  {
    v10 = 61440;
  }

  SRLStatus = objc_msgSend_getSRLStatus(self->_denoiseFusePipeline, a2, v2, v3);
  v177[0] = 0;
  v12 = p_referenceFrameCandidatesCount[4];
  if (v12 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2 * (v12 == 2);
  }

  sub_295822CA4(v13, v177, *(p_nInputBrackets + 188));
  v16 = MEMORY[0x29EDC00C0];
  if (*(p_nInputBrackets + 190))
  {
    v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v14, v177[0], v15);
    v21 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v18, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v21, v22, v17, *MEMORY[0x29EDC0128]);

    v25 = objc_msgSend_objectForKeyedSubscript_(*(p_nInputBrackets + 188), v23, @"GreenGhostLowLight", v24);
    v28 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"maskAverage", v27);

    if (v28)
    {
      v32 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v29, v30, v31);
      objc_msgSend_setObject_forKeyedSubscript_(v32, v33, v28, *MEMORY[0x29EDC0120]);

      v36 = objc_msgSend_objectForKeyedSubscript_(*(p_nInputBrackets + 188), v34, @"GreenGhostLowLight", v35);
      objc_msgSend_setObject_forKeyedSubscript_(v36, v37, 0, @"maskAverage");
    }

    v38 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v29, v10 | aggregateErr, v31);
    v42 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v39, v40, v41);
    objc_msgSend_setObject_forKeyedSubscript_(v42, v43, v38, *MEMORY[0x29EDC01A8]);

    v46 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v44, *p_nInputBrackets, v45);
    v50 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v47, v48, v49);
    objc_msgSend_setObject_forKeyedSubscript_(v50, v51, v46, *MEMORY[0x29EDC0190]);

    v54 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v52, p_nInputBrackets[1], v53);
    v58 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v55, v56, v57);
    objc_msgSend_setObject_forKeyedSubscript_(v58, v59, v54, *MEMORY[0x29EDC0198]);

    v62 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v60, SRLStatus, v61);
    v66 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v63, v64, v65);
    objc_msgSend_setObject_forKeyedSubscript_(v66, v67, v62, *MEMORY[0x29EDC01A0]);

    LODWORD(v68) = p_nInputBrackets[384];
    v72 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v69, v70, v71, v68);
    v76 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v73, v74, v75);
    objc_msgSend_setObject_forKeyedSubscript_(v76, v77, v72, *v16);

    v81 = objc_msgSend_linearOutputMetadata(*(p_nInputBrackets + 190), v78, v79, v80);
    objc_msgSend_setLinearOutputMetadata_(self, v82, v81, v83);

    v87 = *(*(p_nInputBrackets + 171) + 40);
    if (v87 && *(v87 + 79) == 1)
    {
      v88 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v84, v85, v86);
      objc_msgSend_setObject_forKeyedSubscript_(v88, v89, MEMORY[0x29EDB8EB0], *MEMORY[0x29EDC0230]);

      v90 = MEMORY[0x29EDBA070];
      STFStillApplied = objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v91, v92, v93);
      v97 = objc_msgSend_numberWithBool_(v90, v95, STFStillApplied, v96);
      v101 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v98, v99, v100);
      objc_msgSend_setObject_forKeyedSubscript_(v101, v102, v97, *MEMORY[0x29EDC0220]);

      if (!objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v103, v104, v105))
      {
LABEL_21:

        goto LABEL_22;
      }

      v109 = MEMORY[0x29EDBA070];
      denoiseFusePipeline = self->_denoiseFusePipeline;
      v111 = objc_msgSend_linearOutputMetadata(*(p_nInputBrackets + 190), v106, v107, v108);
      STFStillCorrectionStrength = objc_msgSend_getSTFStillCorrectionStrength_(denoiseFusePipeline, v112, v111 != 0, v113);
      v117 = objc_msgSend_numberWithInt_(v109, v115, STFStillCorrectionStrength, v116);
      v121 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v118, v119, v120);
      objc_msgSend_setObject_forKeyedSubscript_(v121, v122, v117, *MEMORY[0x29EDC0228]);

      v16 = MEMORY[0x29EDC00C0];
      v123 = MEMORY[0x29EDBA070];
      STFStillAnalyticsVersion = objc_msgSend_getSTFStillAnalyticsVersion(self->_denoiseFusePipeline, v124, v125, v126);
      v130 = objc_msgSend_numberWithUnsignedInt_(v123, v128, STFStillAnalyticsVersion, v129);
      v134 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v131, v132, v133);
      objc_msgSend_setObject_forKeyedSubscript_(v134, v135, v130, *MEMORY[0x29EDC0218]);
    }

    else
    {
      v130 = objc_msgSend_metadata(*(p_nInputBrackets + 190), v84, v85, v86);
      objc_msgSend_setObject_forKeyedSubscript_(v130, v136, MEMORY[0x29EDB8EA8], *MEMORY[0x29EDC0230]);
    }

    goto LABEL_21;
  }

LABEL_22:
  if (*(p_nInputBrackets + 191))
  {
    v137 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v14, v10 | aggregateErr, v15);
    v141 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v138, v139, v140);
    objc_msgSend_setObject_forKeyedSubscript_(v141, v142, v137, *MEMORY[0x29EDC01A8]);

    v145 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v143, *p_nInputBrackets, v144);
    v149 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v146, v147, v148);
    objc_msgSend_setObject_forKeyedSubscript_(v149, v150, v145, *MEMORY[0x29EDC0190]);

    v153 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v151, p_nInputBrackets[1], v152);
    v157 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v154, v155, v156);
    objc_msgSend_setObject_forKeyedSubscript_(v157, v158, v153, *MEMORY[0x29EDC0198]);

    v161 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v159, SRLStatus, v160);
    v165 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v162, v163, v164);
    objc_msgSend_setObject_forKeyedSubscript_(v165, v166, v161, *MEMORY[0x29EDC01A0]);

    LODWORD(v167) = p_nInputBrackets[384];
    v171 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v168, v169, v170, v167);
    v175 = objc_msgSend_syntheticReferenceMetadata(*(p_nInputBrackets + 191), v172, v173, v174);
    objc_msgSend_setObject_forKeyedSubscript_(v175, v176, v171, *v16);
  }
}

- (int)_deepFusion
{
  v4 = &self->_anon_14893c[1012];
  v5 = MEMORY[0x29EDB9270];
  if (!self->_referenceFrame)
  {
    sub_2958B78E4(v119);
LABEL_65:
    v98 = 0;
    __dst = 0;
    v117 = 0;
    v83 = 0;
    v42 = 0;
    v35 = 0;
    goto LABEL_66;
  }

  if ((self->_lscGainsTex & 1) == 0)
  {
    v7 = objc_msgSend__doDeepFusionSytheticRefererenceAndProxy(self, a2, v2, v3);
    if (v7)
    {
      sub_2958B7410(v7, v119);
      goto LABEL_65;
    }
  }

  v8 = *v5;
  if (*v5 == 1)
  {
    kdebug_trace();
    v8 = *v5;
  }

  if (v8)
  {
    v9 = objc_msgSend_commandQueue(*(v4 + 132), a2, v2, v3);
    v13 = objc_msgSend_commandBuffer(v9, v10, v11, v12);

    objc_msgSend_setLabel_(v13, v14, @"KTRACE_START_MTL", v15);
    objc_msgSend_addCompletedHandler_(v13, v16, &unk_2A1CA9600, v17);
    objc_msgSend_commit(v13, v18, v19, v20);
  }

  v21 = objc_msgSend_syntheticReferenceMetadata(*(v4 + 204), a2, v2, v3);
  v24 = objc_msgSend__populateDeepFusionMetadata_(self, v22, v21, v23);

  if (v24)
  {
    sub_2958B74AC();
    v98 = 0;
    __dst = 0;
    v117 = 0;
    v83 = 0;
    v42 = 0;
    v35 = 0;
    goto LABEL_50;
  }

  v25 = [LumaChromaImage alloc];
  v26 = *(v4 + 132);
  v30 = objc_msgSend_syntheticLongPixelBuffer(*(v4 + 204), v27, v28, v29);
  v35 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v25, v31, v26, v30, 16, 8);
  if (!v35)
  {
    sub_2958B7884();
    v98 = 0;
    __dst = 0;
    v117 = 0;
    v83 = 0;
    v42 = 0;
LABEL_60:
    v24 = 0;
    goto LABEL_50;
  }

  v36 = *(v4 + 132);
  v37 = objc_msgSend_syntheticLongFusionMapPixelBuffer(*(v4 + 204), v32, v33, v34);
  v42 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v36, v38, v37, 10, 7, 0);
  if (!v42)
  {
    sub_2958B7824();
    goto LABEL_59;
  }

  if (objc_msgSend_longFusionMapPixelBuffer(*(v4 + 204), v39, v40, v41))
  {
    v46 = v42;
    v47 = *(v4 + 132);
    v48 = objc_msgSend_longFusionMapPixelBuffer(*(v4 + 204), v43, v44, v45);
    v49 = v47;
    v42 = v46;
    v117 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v49, v50, v48, 10, 7, 0);
    if (!v117)
    {
      sub_2958B750C();
LABEL_59:
      v98 = 0;
      __dst = 0;
      v117 = 0;
      v83 = 0;
      goto LABEL_60;
    }
  }

  else
  {
    v117 = 0;
  }

  bracketProperties = self->_bracketProperties;
  v55 = &self->_lscGainsTex + 2;
  HasBeenBuiltArray = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, v43, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, 0, &self->_lscGainsTex + 2);
  if (HasBeenBuiltArray)
  {
    sub_2958B756C(HasBeenBuiltArray, v119);
    v98 = 0;
    __dst = 0;
    v83 = 0;
LABEL_66:
    v24 = v119[0];
    goto LABEL_50;
  }

  if (self->_sifrFrameIndex < 0)
  {
    v114 = v35;
    p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
    v122[0] = 0;
    referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
    if (referenceFrameCandidatesCount >= 1)
    {
      v59 = 0;
      v60 = 0;
      v61 = *p_cntBracketSampleBuffers;
      v62 = *(&bracketProperties->meta.exposureParams.hr_enabled + 224224 * *p_cntBracketSampleBuffers);
      p_isEVMFrame = &self->_bracketProperties[0].meta.isEVMFrame;
      v64 = 0xFFFFFFFFLL;
      do
      {
        if (!*p_isEVMFrame && !p_isEVMFrame[1])
        {
          v65 = p_isEVMFrame[97];
          v66 = v59 - v61;
          if (v59 - v61 < 0)
          {
            v66 = v61 - v59;
          }

          if (v66 > v60)
          {
            v67 = v59;
          }

          else
          {
            v66 = v60;
            v67 = v64;
          }

          v68 = v65 == v62;
          if (v65 == v62)
          {
            v69 = v66;
          }

          else
          {
            v69 = v60;
          }

          if (v68)
          {
            v70 = v67;
          }

          else
          {
            v70 = v64;
          }

          if (v61 == v59)
          {
            v64 = v64;
          }

          else
          {
            v60 = v69;
            v64 = v70;
          }
        }

        ++v59;
        p_isEVMFrame += 224224;
      }

      while (referenceFrameCandidatesCount != v59);
      if ((v64 & 0x80000000) == 0)
      {
        __dst = malloc_type_malloc(0x36BE0uLL, 0x1020040DF6BF6F3uLL);
        if (__dst)
        {
          v113 = v42;
          v71 = malloc_type_malloc(0x36BE0uLL, 0x1020040DF6BF6F3uLL);
          if (v71)
          {
            v72 = v71;
            memcpy(__dst, bracketProperties + 224224 * v64, 0x36BE0uLL);
            memcpy(v72, bracketProperties + 224224 * *p_cntBracketSampleBuffers, 0x36BE0uLL);
            v73 = MEMORY[0x29EDCA928];
            v74 = *MEMORY[0x29EDCA928];
            v75 = *(MEMORY[0x29EDCA928] + 16);
            __dst[13993] = *MEMORY[0x29EDCA928];
            __dst[13994] = v75;
            v76 = *(v73 + 32);
            __dst[13995] = v76;
            v72[13993] = v74;
            v72[13994] = v75;
            v72[13995] = v76;
            v115 = v72;
            v78 = objc_msgSend_computeMotionScore_ev0FrameIndex_evmProperties_ev0Properties_motionScore_nrfPlist_(self->_denoiseFusePipeline, v77, v64, *p_cntBracketSampleBuffers, __dst, v72, v122, *(v4 + 44));
            if (!v78)
            {
              v42 = v113;
              if (dword_2A18C2398)
              {
                v121 = 0;
                v120 = 0;
                v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT);
                v35 = v114;
                fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_45:
                *(v4 + 54) = v122[0];
                goto LABEL_46;
              }

LABEL_44:
              v35 = v114;
              goto LABEL_45;
            }

            v24 = v78;
            sub_2958B7608();
            v5 = MEMORY[0x29EDB9270];
            v35 = v114;
            v98 = v72;
          }

          else
          {
            sub_2958B7764();
            v98 = 0;
            v24 = -12786;
            v5 = MEMORY[0x29EDB9270];
            v35 = v114;
          }

          v42 = v113;
        }

        else
        {
          sub_2958B77C4();
          v98 = 0;
          v24 = -12786;
          v5 = MEMORY[0x29EDB9270];
          v35 = v114;
        }

        v83 = 0;
        goto LABEL_50;
      }
    }

    v115 = 0;
    __dst = 0;
    goto LABEL_44;
  }

  v115 = 0;
  __dst = 0;
LABEL_46:
  v83 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (v83)
  {
    LODWORD(v84) = *(v4 + 54);
    v85 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v80, v81, v82, v84);
    v89 = objc_msgSend_syntheticReferenceMetadata(*(v4 + 204), v86, v87, v88);
    objc_msgSend_setObject_forKeyedSubscript_(v89, v90, v85, @"MotionScores");

    LODWORD(v91) = *(v4 + 54);
    v24 = objc_msgSend_doSyntheticLong_noiseDivisorTex_realLongNoiseDivisorTex_lscGainsTex_config_properties_motionScore_nrfPlist_intermediateMetadata_(self->_denoiseFusePipeline, v92, v35, v42, v117, *(v4 + 228), self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, v91, *(v4 + 44), v83);
    if (v24)
    {
      sub_2958B7668();
    }

    else
    {
      v96 = objc_msgSend_syntheticReferenceMetadata(*(v4 + 204), v93, v94, v95);
      objc_msgSend_setObject_forKeyedSubscript_(v96, v97, v83, @"SyntheticLong");

      v55[*v4] = 0;
    }
  }

  else
  {
    sub_2958B76C8(v119);
    v24 = v119[0];
  }

  v5 = MEMORY[0x29EDB9270];
  v98 = v115;
LABEL_50:
  v99 = *v5;
  if (*v5 == 1)
  {
    kdebug_trace();
    v99 = *v5;
  }

  if (v99)
  {
    v100 = objc_msgSend_commandQueue(*(v4 + 132), v51, v52, v53);
    v104 = objc_msgSend_commandBuffer(v100, v101, v102, v103);

    objc_msgSend_setLabel_(v104, v105, @"KTRACE_END_MTL", v106);
    v118[0] = MEMORY[0x29EDCA5F8];
    v118[1] = 3221225472;
    v118[2] = sub_295852830;
    v118[3] = &unk_29EDDBE78;
    memset(&v118[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v104, v107, v118, v108);
    objc_msgSend_commit(v104, v109, v110, v111);
  }

  free(__dst);
  free(v98);

  return v24;
}

- (int)_setupFusionConfig
{
  p_nonLinearBias = &self->_fusionConf.colorSpaceConversionParameters[4].transferFunctionInv.nonLinearBias;
  if (!*(self->_regWarpInput + 3))
  {
    sub_2958B7EFC(&v84);
    return v84;
  }

  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  if (LODWORD(self->_output) != 3)
  {
    LODWORD(v7) = self->_referenceFrameCandidatesCount;
    if (v7 >= 1)
    {
      v8 = 0;
      bracketProperties = self->_bracketProperties;
      bracketSampleBuffers = self->_bracketSampleBuffers;
      do
      {
        v11 = bracketProperties + 224224 * v8;
        if (v11[223873])
        {
          v8 = (v8 + 1);
        }

        else
        {
          if (v11[5] == 1)
          {
            sub_2958B7A1C(&v84);
            return v84;
          }

          if (v8 == *p_cntBracketSampleBuffers)
          {
            sub_2958B7980(&v84);
            return v84;
          }

          v12 = bracketSampleBuffers[v8];
          if (v12)
          {
            CFRelease(v12);
            bracketSampleBuffers[v8] = 0;
            LODWORD(v7) = p_cntBracketSampleBuffers[2];
          }

          v7 = v7 - 1;
          if (v8 < v7)
          {
            memcpy(bracketProperties + 224224 * v8, bracketProperties + 224224 * v7, 0x36BE0uLL);
            v13 = p_cntBracketSampleBuffers[2] - 1;
            bracketSampleBuffers[v8] = bracketSampleBuffers[v13];
            bracketSampleBuffers[v13] = 0;
            objc_msgSend_swapInputFrame_withFrame_(self->_denoiseFusePipeline, v14, v8, v13);
            LODWORD(v7) = p_cntBracketSampleBuffers[2] - 1;
            if (*p_cntBracketSampleBuffers == v7)
            {
              *p_cntBracketSampleBuffers = v8;
            }
          }

          p_cntBracketSampleBuffers[2] = v7;
        }
      }

      while (v8 < v7);
    }
  }

  p_nonLinearBias[268] = NAN;
  *(p_nonLinearBias + 133) = -1;
  y_low = LODWORD(self->_bracketProperties[1].meta.ROI.origin.y);
  *(p_nonLinearBias + 1080) = y_low == 0;
  *(p_nonLinearBias + 1081) = y_low == 1;
  *(p_nonLinearBias + 1082) = y_low == 2;
  v16 = objc_msgSend_statistics(*(p_cntBracketSampleBuffers + 6), a2, v2, v3);
  if (objc_msgSend_stationary(v16, v17, v18, v19))
  {
    v20 = *(*(*(p_nonLinearBias + 139) + 24) + 140);
  }

  else
  {
    v20 = 0;
  }

  colorSpaceConversionParameters = self->_fusionConf.colorSpaceConversionParameters;
  *(p_nonLinearBias + 1089) = v20 & 1;

  *(p_nonLinearBias + 1090) = *(*(*(p_nonLinearBias + 139) + 24) + 96) == 2;
  *(p_nonLinearBias + 1088) = p_cntBracketSampleBuffers[6] == 2;
  p_outputToLinearYCbCr = &self->_fusionConf.colorSpaceConversionParameters[4].outputToLinearYCbCr;
  bzero(&self->_fusionConf.colorSpaceConversionParameters[4].outputToLinearYCbCr, 0x410uLL);
  if (p_cntBracketSampleBuffers[2] >= 1)
  {
    v26 = 0;
    p_isEVMFrame = &self->_bracketProperties[0].meta.isEVMFrame;
    p_height = &self->_bracketProperties[1].meta.ROI.size.height;
    do
    {
      if (y_low != *(p_height - 4))
      {
        sub_2958B7AB8(&v84);
        return v84;
      }

      *p_outputToLinearYCbCr = *p_height;
      v29 = *(p_height + 1);
      v30 = *(p_height + 2);
      v31 = *(p_height + 4);
      *(p_outputToLinearYCbCr + 3) = *(p_height + 3);
      *(p_outputToLinearYCbCr + 4) = v31;
      *(p_outputToLinearYCbCr + 1) = v29;
      *(p_outputToLinearYCbCr + 2) = v30;
      v32 = *(p_height + 5);
      v33 = *(p_height + 6);
      v34 = *(p_height + 8);
      *(p_outputToLinearYCbCr + 7) = *(p_height + 7);
      *(p_outputToLinearYCbCr + 8) = v34;
      *(p_outputToLinearYCbCr + 5) = v32;
      *(p_outputToLinearYCbCr + 6) = v33;
      v35 = *(p_height + 9);
      v36 = *(p_height + 10);
      v37 = *(p_height + 12);
      *(p_outputToLinearYCbCr + 11) = *(p_height + 11);
      *(p_outputToLinearYCbCr + 12) = v37;
      *(p_outputToLinearYCbCr + 9) = v35;
      *(p_outputToLinearYCbCr + 10) = v36;
      ++v26;
      v38 = p_cntBracketSampleBuffers[2];
      p_outputToLinearYCbCr += 208;
      p_height += 28028;
    }

    while (v26 < v38);
    if (v38 < 1)
    {
      goto LABEL_37;
    }

    v39 = 0;
    v40 = MEMORY[0x29EDCA928];
    p_y = &self->_bracketProperties[1].meta.ROI.origin.y;
    v42 = self->_fusionConf.colorSpaceConversionParameters;
    while (1)
    {
      if (v39 == *p_cntBracketSampleBuffers)
      {
        *(p_nonLinearBias + 267) = v39;
      }

      else if (*p_isEVMFrame)
      {
        *(p_nonLinearBias + 266) = v39;
      }

      else if (p_isEVMFrame[1])
      {
        *(p_nonLinearBias + 268) = v39;
      }

      if (*(p_y - 63))
      {
        v43 = p_y - 6;
      }

      else
      {
        v43 = v40;
      }

      v44 = *v43;
      v45 = *(v43 + 2);
      *&v42->transferFunctionFwd.nonLinearPower = *(v43 + 1);
      *&v42->transferFunctionInv.nonLinearBias = v45;
      *&v42->transferFunctionFwd.linearScale = v44;
      v46 = *(*(p_nonLinearBias + 139) + 24);
      if (!v46)
      {
        sub_2958B7E60(&v84);
        return v84;
      }

      *p_nonLinearBias = *(v46 + 24);
      if (LODWORD(self->_bracketProperties[1].meta.ROI.origin.y) != *p_y)
      {
        break;
      }

      p_isEVMFrame += 224224;
      ++v39;
      v42 = (v42 + 48);
      p_y += 28028;
      if (v39 >= p_cntBracketSampleBuffers[2])
      {
        goto LABEL_37;
      }
    }

    sub_2958B7B54(&v84);
    return v84;
  }

LABEL_37:
  if ((p_nonLinearBias[267] & 0x80000000) != 0)
  {
    sub_2958B7DC4(&v84);
    return v84;
  }

  if ((p_nonLinearBias[266] & 0x80000000) != 0)
  {
    objc_msgSend_setFusionReferenceFrame_(self->_denoiseFusePipeline, v23, 1, v25);
  }

  *(p_nonLinearBias + 271) = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v23, v24, v25);
  v50 = p_cntBracketSampleBuffers[6];
  if (v50 == 3)
  {
    p_nonLinearBias[269] = NAN;
LABEL_58:
    v58 = *(p_nonLinearBias + 266);
    goto LABEL_59;
  }

  if (v50 == 2)
  {
    if (p_cntBracketSampleBuffers[3])
    {
      v51 = 0;
    }

    else
    {
      v51 = *(p_nonLinearBias + 267);
    }

    *(p_nonLinearBias + 269) = v51;
    objc_msgSend_setFusionReferenceFrame_(self->_denoiseFusePipeline, v47, 1, v49);
    *(p_nonLinearBias + 1083) = 0;
    goto LABEL_58;
  }

  v52 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v47, v48, v49);
  v56 = 267;
  if (v52 == 2)
  {
    v56 = 266;
  }

  p_nonLinearBias[269] = p_nonLinearBias[v56];
  v57 = objc_msgSend_fusionReferenceFrame(self->_denoiseFusePipeline, v53, v54, v55);
  v58 = *(p_nonLinearBias + 266);
  v60 = v57 == 1 && v58 >= 0;
  *(p_nonLinearBias + 1083) = v60;
  if (v58 < 0 && dword_2A18C2398)
  {
    v88 = 0;
    v87 = 0;
    v61 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_58;
  }

LABEL_59:
  v62 = self->_bracketProperties;
  *(p_nonLinearBias + 264) = p_cntBracketSampleBuffers[2];
  if ((v58 & 0x80000000) == 0)
  {
    v63 = *(&v62->meta.metadataHasLtmCurves + 224224 * v58);
    v64 = *(p_nonLinearBias + 267);
    if ((v64 & 0x80000000) != 0)
    {
      if (!*(&v62->meta.metadataHasLtmCurves + 224224 * v58))
      {
        p_nonLinearBias[265] = NAN;
        if (p_nonLinearBias[270])
        {
LABEL_99:
          *(p_nonLinearBias + 265) = v58;
          goto LABEL_100;
        }

        LOBYTE(v65) = 0;
        v67 = 0;
        v66 = 1;
        if ((v58 & 0x80000000) == 0)
        {
LABEL_100:
          sub_2958B7C8C(&v84);
          return v84;
        }

LABEL_76:
        if (!v66)
        {
LABEL_77:
          if (v67 & 1) != 0 || (v65)
          {
            goto LABEL_79;
          }

          sub_2958B7D28(&v84);
          return v84;
        }

LABEL_98:
        sub_2958B7BF0(&v84);
        return v84;
      }

      LOBYTE(v65) = 0;
    }

    else
    {
      v65 = *(&v62->meta.metadataHasLtmCurves + 224224 * v64);
      if ((v63 & 1) == 0)
      {
        if (!v65)
        {
          p_nonLinearBias[265] = NAN;
          if (p_nonLinearBias[270])
          {
            goto LABEL_99;
          }

          goto LABEL_100;
        }

LABEL_67:
        v66 = 0;
        *(p_nonLinearBias + 265) = v64;
        v67 = *(p_nonLinearBias + 1080);
        LOBYTE(v65) = 1;
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_76;
      }
    }

    *(p_nonLinearBias + 265) = v58;
    v67 = *(p_nonLinearBias + 1080);
    goto LABEL_77;
  }

  v64 = *(p_nonLinearBias + 267);
  if ((v64 & 0x80000000) != 0)
  {
    if (*(p_nonLinearBias + 1080))
    {
      v83 = *(p_nonLinearBias + 267);
    }

    else
    {
      v83 = -1;
    }

    *(p_nonLinearBias + 265) = v83;
    goto LABEL_98;
  }

  if (*(&v62->meta.metadataHasLtmCurves + 224224 * v64))
  {
    goto LABEL_67;
  }

  p_nonLinearBias[265] = NAN;
  if (*(p_nonLinearBias + 1080) != 1)
  {
    goto LABEL_98;
  }

  *(p_nonLinearBias + 265) = v64;
LABEL_79:
  v68 = p_cntBracketSampleBuffers[6];
  if ((v68 - 1) >= 2)
  {
    if (v68 == 3 && *(p_nonLinearBias + 1289) == 1)
    {
      objc_msgSend__deepFusionSetWarpReferenceSIFR(self, v47, v48, v49);
    }
  }

  else if (*(p_nonLinearBias + 271) == 2)
  {
    v70 = __invert_f3(*(&colorSpaceConversionParameters->transferFunctionFwd.linearScale + 12 * v58));
    v69 = 0;
    v70.columns[0].i32[3] = 0;
    v70.columns[1].i32[3] = 0;
    v70.columns[2].i32[3] = 0;
    v71 = MEMORY[0x29EDCA928];
    do
    {
      if (v69 == *(p_nonLinearBias + 266) || v69 == *(p_nonLinearBias + 267))
      {
        v72 = (&colorSpaceConversionParameters->transferFunctionFwd.linearScale + 12 * v69);
        v73 = v71[1];
        *v72 = *v71;
        v72[1] = v73;
        v72[2] = v71[2];
      }

      else
      {
        v74 = 0;
        v75 = (colorSpaceConversionParameters + 48 * v69);
        v76 = *v75;
        v77 = v75[1];
        v78 = v75[2];
        v89 = v70;
        v84 = 0uLL;
        v85 = 0uLL;
        v86 = 0uLL;
        do
        {
          *(&v84 + v74 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v76, COERCE_FLOAT(*&v89.columns[v74])), v77, *v89.columns[v74].f32, 1), v78, v89.columns[v74], 2);
          ++v74;
        }

        while (v74 != 3);
        v79 = v84;
        v80 = v85;
        v81 = v86;
        v75->i32[2] = DWORD2(v84);
        v75[1].i32[2] = DWORD2(v80);
        v75->i64[0] = v79;
        v75[1].i64[0] = v80;
        v75[2].i32[2] = DWORD2(v81);
        v75[2].i64[0] = v81;
      }

      ++v69;
    }

    while (v69 != 4);
  }

  return 0;
}

- (int)_downsampleImageForRegistration:(__CVBuffer *)a3 outputImage:(__CVBuffer *)a4
{
  v7 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  if (!a3)
  {
    sub_2958B805C();
LABEL_13:
    v11 = -12780;
    goto LABEL_8;
  }

  if (!a4)
  {
    sub_2958B7FFC();
    goto LABEL_13;
  }

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (CVPixelBufferGetPixelFormatType(a3) == 1751527984)
  {
    sub_2958B7FAC(&v13);
    v11 = v13;
  }

  else
  {
    v11 = objc_msgSend_transform_srcRect_dst_dstRect_rotate_sync_m2m_(*&self->_registrationPipelineRWPPConfig.numThreads, v10, a3, a4, 1, 1, 0.0, 0.0, Width, Height, 0.0, 0.0, (Width >> 1), (Height >> 1));
    if (v11)
    {
      sub_2958B7F4C();
    }
  }

LABEL_8:
  if (*v7 == 1)
  {
    kdebug_trace();
  }

  return v11;
}

- (CGRect)_downscaleRoiForRegistration:(CGRect)a3
{
  v3 = llround(a3.origin.x);
  v4 = llround(a3.origin.y);
  v5 = (((v3 & 1) + v3) / 2);
  v6 = (((v4 & 1) + v4) / 2);
  v7 = ((vcvtmd_s64_f64(a3.size.width) - (v3 & 1)) >> 1);
  v8 = ((vcvtmd_s64_f64(a3.size.height) - (v4 & 1)) >> 1);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)sanityCheckHomographyForBracketIndex:(int)a3
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CC4468, a2, &v32, v31, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v33;
    v10 = (&self->_bracketProperties[1].meta.exposureParams.conversion_gain + 56056 * a3);
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(&unk_2A1CC4468);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = objc_msgSend_objectAtIndexedSubscript_(v12, v6, 0, v7, v28, v29);
        objc_msgSend_floatValue(v13, v14, v15, v16);
        v30 = v17;
        v20 = objc_msgSend_objectAtIndexedSubscript_(v12, v18, 1, v19);
        objc_msgSend_floatValue(v20, v21, v22, v23);
        v24 = v30;
        DWORD1(v24) = v25;
        v28 = v25;
        v29 = v24;

        v26 = vaddq_f32(v10[2], vmlaq_n_f32(vmulq_n_f32(*v10, *&v30), v10[1], *&v28));
        *v26.i8 = vsub_f32(*&v29, vdiv_f32(*v26.i8, vdup_laneq_s32(v26, 2)));
        if (sqrtf(vaddv_f32(vmul_f32(*v26.i8, *v26.i8))) > 1.0)
        {
          return 0;
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_2A1CC4468, v6, &v32, v31, 16);
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (int)_populateDeepFusionMetadata:(id)a3
{
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  v5 = a3;
  v6 = *p_cntBracketSampleBuffers;
  if ((v6 & 0x80000000) != 0 || v6 >= p_cntBracketSampleBuffers[2])
  {
    sub_2958B8950(&v23);
    v10 = 0;
    goto LABEL_23;
  }

  bracketSampleBuffers = self->_bracketSampleBuffers;
  v8 = *MEMORY[0x29EDBFF98];
  v10 = CMGetAttachment(self->_bracketSampleBuffers[v6], *MEMORY[0x29EDBFF98], 0);
  if (!v10)
  {
    sub_2958B8B24(&v23);
    goto LABEL_23;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v5, v9, v10, @"ReferenceMetadata");
  v11 = p_cntBracketSampleBuffers[2];
  if (v11 < 1)
  {
LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  v12 = 0;
  p_isLongFrame = &self->_bracketProperties[0].meta.isLongFrame;
  v14 = -1;
  v15 = -1;
  do
  {
    if (*(p_isLongFrame - 1) && v15 < 0)
    {
      v15 = v12;
    }

    if (*p_isLongFrame && v14 < 0)
    {
      v14 = v12;
    }

    ++v12;
    p_isLongFrame += 224224;
  }

  while (v11 != v12);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = CMGetAttachment(bracketSampleBuffers[v15], v8, 0);
    if (v16)
    {
      v18 = v16;
      objc_msgSend_setObject_forKeyedSubscript_(v5, v17, v16, @"SifrMetadata");

      goto LABEL_14;
    }

    sub_2958B8A88(&v23);
LABEL_23:
    v21 = v23;
    goto LABEL_19;
  }

LABEL_14:
  if (v14 < 0)
  {
    goto LABEL_18;
  }

  v20 = CMGetAttachment(bracketSampleBuffers[v14], v8, 0);
  if (v20)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v5, v19, v20, @"LongMetadata");
    v21 = 0;
  }

  else
  {
    sub_2958B89EC(&v23);
    v21 = v23;
  }

LABEL_19:
  return v21;
}

- (void)_deepFusionResetWarpTransforms
{
  v2 = 0;
  p_conversion_gain = &self->_bracketProperties[1].meta.exposureParams.conversion_gain;
  v4 = MEMORY[0x29EDCA928];
  do
  {
    v5 = (self->_fusionConf.colorSpaceConversionParameters + v2);
    if (*(p_conversion_gain - 15))
    {
      v6 = p_conversion_gain;
    }

    else
    {
      v6 = v4;
    }

    v7 = *v6;
    v8 = *(v6 + 2);
    v5[1] = *(v6 + 1);
    v5[2] = v8;
    *v5 = v7;
    p_conversion_gain += 56056;
    v2 += 48;
  }

  while (v2 != 240);
}

- (int)_doDeepFusionSytheticRefererenceAndProxy
{
  v5 = &self->_anon_17fa20[8];
  v6 = &self->_anon_14893c[1008];
  p_sifrFrameIndex = &self->_sifrFrameIndex;
  v7 = MEMORY[0x29EDB9270];
  v8 = *MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
    v8 = *v7;
  }

  if (v8)
  {
    v9 = objc_msgSend_commandQueue(*(v6 + 17), a2, v2, v3);
    v13 = objc_msgSend_commandBuffer(v9, v10, v11, v12);

    objc_msgSend_setLabel_(v13, v14, @"KTRACE_START_MTL", v15);
    objc_msgSend_addCompletedHandler_(v13, v16, &unk_2A1CA9620, v17);
    objc_msgSend_commit(v13, v18, v19, v20);
  }

  v21 = *p_sifrFrameIndex;
  v256 = 0;
  *v5 = xmmword_2959D6150;
  *(v5 + 1) = unk_2959D6160;
  v254 = v21;
  if ((v21 & 0x80000000) == 0)
  {
    objc_msgSend__deepFusionSetWarpReferenceSIFR(self, a2, v2, v3);
    objc_msgSend__deepFusionInvalidatePyramids(self, v22, v23, v24);
  }

  v25 = &self->_lscGainsTex + 2;
  HasBeenBuiltArray = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, a2, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, 1, &self->_lscGainsTex + 2);
  if (HasBeenBuiltArray)
  {
    sub_2958B8C5C(HasBeenBuiltArray, v257);
    goto LABEL_115;
  }

  bracketProperties = self->_bracketProperties;
  if (v254 < 0)
  {
    v38 = 0;
    v40 = 0;
    *(v6 + 55) = 0;
  }

  else
  {
    started = objc_msgSend_startSyntheticReferenceDetectors_properties_nrfPlist_(self->_denoiseFusePipeline, v27, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, *(v6 + 6));
    if (started)
    {
      v40 = started;
      sub_2958B8CF8();
      goto LABEL_89;
    }

    *(v6 + 55) = 0;
    v32 = objc_msgSend_collectSyntheticReferenceDetectorsResultsSync_srMode_nrfPlist_(self->_denoiseFusePipeline, v31, (v6 + 220), &v256, *(v6 + 6));
    if (v32)
    {
      v40 = v32;
      sub_2958B8D58();
      goto LABEL_89;
    }

    objc_msgSend_setRefFrameTransformIsValid_(*(v6 + 26), v33, v256 == 2, v34);
    if (v256 == 1)
    {
      objc_msgSend__deepFusionRevertWarpToDefault(self, v27, v28, v29);
      objc_msgSend__deepFusionInvalidatePyramids(self, v35, v36, v37);
      v38 = 1;
      v25[*v6] = 1;
      v40 = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, v39, self->_fusionConf.colorSpaceConversionParameters, bracketProperties, 1, &self->_lscGainsTex + 2);
      v25[*v6] = 0;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }
  }

  if (objc_msgSend_gainMapOutputPixelBuffer(*(v6 + 26), v27, v28, v29))
  {
    v44 = *v6;
    if (v38)
    {
      *v6 = -1;
    }

    v45 = objc_msgSend_gainMapOutputPixelBuffer(*(v6 + 26), v41, v42, v43);
    if (CVPixelBufferGetPixelFormatType(v45) != 1278226488)
    {
      sub_2958B8DB8();
      v40 = -12780;
      goto LABEL_89;
    }

    v49 = *(v6 + 17);
    v50 = objc_msgSend_gainMapOutputPixelBuffer(*(v6 + 26), v46, v47, v48);
    v52 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v49, v51, v50, 10, 6, 0);
    if (!v52)
    {
      sub_2958B8EC0(v257);
      goto LABEL_115;
    }

    v54 = v52;
    v55 = objc_msgSend_doGainMap_properties_output_outputHeadroom_nrfPlist_useFusedFrame_(self->_denoiseFusePipeline, v53, self->_fusionConf.colorSpaceConversionParameters, bracketProperties, v52, &self->_processedSyntheticReference, *(v6 + 6), 0);
    if (v38)
    {
      *v6 = v44;
    }

    if (v55)
    {
      sub_2958B8E1C(v55, v54, v257);
      goto LABEL_115;
    }

    v249 = v54;
    v40 = 0;
  }

  else
  {
    v249 = 0;
  }

  if (objc_msgSend_inferenceInputPixelBuffer(*(v6 + 26), v41, v42, v43))
  {
    v59 = (v5 + 6);
    if (v254 >= 0)
    {
      v59 = p_sifrFrameIndex;
    }

    v60 = *v59;
    v64 = objc_msgSend_inferenceInputPixelBuffer(*(v6 + 26), v56, v57, v58);
    v65 = *(v5 + 12);
    if (v38)
    {
      v66 = v65;
    }

    else
    {
      v66 = v60;
    }

    v67 = objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v61, v62, v63);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v67, 0);
    v72 = objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v69, v70, v71);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v72, 0);
    v75 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v74, v64, 1, v66, v60, v65, WidthOfPlane, HeightOfPlane);
    if (v75)
    {
      sub_2958B8F5C(v75, v249, v257);
      goto LABEL_115;
    }

    v40 = 0;
  }

  if (v254 < 0)
  {
    v76 = 1;
  }

  else
  {
    v76 = v38;
  }

  if ((v76 & 1) == 0)
  {
    *&v77 = sub_295820670(&bracketProperties->meta.exposureParams + 224224 * *p_sifrFrameIndex, &bracketProperties->meta.exposureParams + 224224 * *(v5 + 12), 2);
    v79 = objc_msgSend_computeRansacColorMatchingCoefficients_scaleEv0brightness_applyToPyramid_andStoreTransform_(self->_denoiseFusePipeline, v78, self->_fusionConf.colorSpaceConversionParameters, *(*(v6 + 24) + 73), v5, v77);
    v40 = v79;
    if ((*(*(v6 + 24) + 73) & 1) == 0)
    {
      *v5 = xmmword_2959D6150;
      *(v5 + 1) = unk_2959D6160;
    }

    if (v79)
    {
      sub_2958B9000(v79, v249);
      goto LABEL_89;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
  if (!*(v6 + 29))
  {
    sub_2958B9658(v257);
LABEL_99:
    v40 = v257[0];
LABEL_106:
    v234 = MEMORY[0x29EDB9270];
    goto LABEL_107;
  }

  if (!objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v80, v81, v82))
  {
    sub_2958B95BC(v257);
    goto LABEL_99;
  }

  if (!objc_msgSend_syntheticReferenceFusionMapPixelBuffer(*(v6 + 26), v84, v85, v86))
  {
    sub_2958B9520(v257);
    goto LABEL_99;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    sub_2958B9070();
    v40 = -12784;
    goto LABEL_106;
  }

  v87 = [LumaChromaImage alloc];
  v88 = *(v6 + 17);
  v92 = objc_msgSend_syntheticReferencePixelBuffer(*(v6 + 26), v89, v90, v91);
  v94 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v87, v93, v88, v92, 16, 8);
  if (!v94)
  {
    sub_2958B94C0();
    goto LABEL_106;
  }

  v98 = v94;
  v99 = *(v6 + 17);
  v100 = objc_msgSend_syntheticReferenceFusionMapPixelBuffer(*(v6 + 26), v95, v96, v97);
  v251 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v99, v101, v100, 10, 7, 0);
  if (!v251)
  {
    sub_2958B9450(v98);
    goto LABEL_106;
  }

  v103 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  if (!v103)
  {
    sub_2958B93B4(v257);
    v40 = v257[0];
LABEL_105:

    goto LABEL_106;
  }

  denoiseFusePipeline = self->_denoiseFusePipeline;
  v105 = *(v6 + 29);
  v250 = WeakRetained;
  if (v254 < 0)
  {
    v106 = objc_msgSend_doSyntheticReference_noiseDivisorOutputTex_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_intermediateMetadata_(denoiseFusePipeline, v102, v98, v251, v105, self->_fusionConf.colorSpaceConversionParameters, 0, bracketProperties + 224224 * *(v5 + 12), *v5, v5[2], *(v6 + 6), v103);
  }

  else
  {
    v106 = objc_msgSend_doSyntheticReference_noiseDivisorOutputTex_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_intermediateMetadata_(denoiseFusePipeline, v102, v98, v251, v105, self->_fusionConf.colorSpaceConversionParameters, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *(v5 + 12), *v5, v5[2], *(v6 + 6), v103);
  }

  if (v106)
  {
    v40 = v106;
    sub_2958B90D4();
    goto LABEL_105;
  }

  v110 = objc_msgSend_syntheticReferenceMetadata(*(v6 + 26), v107, v108, v109);
  objc_msgSend_setObject_forKeyedSubscript_(v110, v111, v103, @"SyntheticReference");

  if (!objc_msgSend_proxyPixelBuffer(*(v6 + 26), v112, v113, v114))
  {
    goto LABEL_71;
  }

  v116 = self->_denoiseFusePipeline;
  v117 = *(v6 + 29);
  if (v254 < 0)
  {
    v118 = objc_msgSend_deepFusionBuildNoiseMap_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_(v116, v115, v251, v117, self->_fusionConf.colorSpaceConversionParameters, 0, bracketProperties + 224224 * *(v5 + 12), *(v6 + 6), *v5, v5[2]);
  }

  else
  {
    v118 = objc_msgSend_deepFusionBuildNoiseMap_lscGainsTex_config_evmProperties_evmGreenTintAdjustment_ev0Properties_nrfPlist_(v116, v115, v251, v117, self->_fusionConf.colorSpaceConversionParameters, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *(v5 + 12), *(v6 + 6), *v5, v5[2]);
  }

  if (v118)
  {
    v40 = v118;
    sub_2958B9134();
  }

  else
  {
    v119 = [LumaChromaImage alloc];
    v120 = *(v6 + 17);
    v124 = objc_msgSend_proxyPixelBuffer(*(v6 + 26), v121, v122, v123);
    v126 = objc_msgSend_initWithContext_pixelBuffer_lumaAlignmentFactor_chromaAlignmentFactor_(v119, v125, v120, v124, 16, 8);
    if (v126)
    {
      v130 = v126;
      if (!objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v127, v128, v129))
      {
LABEL_63:
        if (*(v5 + 13))
        {
          v150 = objc_msgSend_processorGetInferenceResults_(v250, v131, self, v132);
        }

        else
        {
          v150 = 0;
        }

        v151 = self->_denoiseFusePipeline;
        if (v254 < 0)
        {
          v152 = objc_msgSend_doDeepFusionProxyAsset_syntheticReference_evmProperties_ev0Properties_inferenceResults_style_nrfPlist_(v151, v131, v130, v98, 0, bracketProperties + 224224 * *(v5 + 12), v150, *(v5 + 13), *(v6 + 6));
        }

        else
        {
          v152 = objc_msgSend_doDeepFusionProxyAsset_syntheticReference_evmProperties_ev0Properties_inferenceResults_style_nrfPlist_(v151, v131, v130, v98, bracketProperties + 224224 * *p_sifrFrameIndex, bracketProperties + 224224 * *(v5 + 12), v150, *(v5 + 13), *(v6 + 6));
        }

        if (v152)
        {
          v40 = v152;
          sub_2958B9240(v152, v150);
LABEL_62:

LABEL_89:
          v234 = MEMORY[0x29EDB9270];
          goto LABEL_90;
        }

LABEL_71:
        v153 = v250;
        if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend_waitForSchedule(*(v6 + 17), v154, v155, v156), !objc_msgSend_proxyPixelBuffer(*(v6 + 26), v157, v158, v159)))
        {
LABEL_83:

          v231 = 0;
          v232 = *p_sifrFrameIndex;
          do
          {
            if (v232 != v231)
            {
              v25[v231] = 0;
            }

            ++v231;
          }

          while (v231 != 5);
          v233 = objc_msgSend_doDeepFusionPyramidGeneration_properties_syntheticReferenceFramesOnly_pyramidHasBeenBuiltArray_(self->_denoiseFusePipeline, v230, self->_fusionConf.colorSpaceConversionParameters, bracketProperties, 0, &self->_lscGainsTex + 2);
          if (!v233)
          {
            v6[224] = 1;

            v40 = 0;
            goto LABEL_89;
          }

          sub_2958B9310(v233, v249, v257);
LABEL_115:
          v40 = v257[0];
          goto LABEL_89;
        }

        if (*MEMORY[0x29EDB9270] == 1)
        {
          kdebug_trace();
        }

        if (objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v160, v161, v162))
        {
          v166 = objc_msgSend_linearOutputMetadata(*(v6 + 26), v163, v164, v165);
          objc_msgSend_setLinearOutputMetadata_(self, v167, v166, v168);

          v172 = objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v169, v170, v171);
          v176 = objc_msgSend_linearOutputMetadata(*(v6 + 26), v173, v174, v175);
          objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(v250, v177, self, 8, v172, v176, 0);
        }

        v178 = *(*(*(v6 + 6) + 40) + 79);
        v179 = objc_msgSend_proxyMetadata(*(v6 + 26), v163, v164, v165);
        v181 = v179;
        v182 = *MEMORY[0x29EDC0230];
        if (v178 == 1)
        {
          objc_msgSend_setObject_forKeyedSubscript_(v179, v180, MEMORY[0x29EDB8EB0], v182);

          v183 = MEMORY[0x29EDBA070];
          STFStillApplied = objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v184, v185, v186);
          v190 = objc_msgSend_numberWithBool_(v183, v188, STFStillApplied, v189);
          v194 = objc_msgSend_proxyMetadata(*(v6 + 26), v191, v192, v193);
          objc_msgSend_setObject_forKeyedSubscript_(v194, v195, v190, *MEMORY[0x29EDC0220]);

          if (!objc_msgSend_getSTFStillApplied(self->_denoiseFusePipeline, v196, v197, v198))
          {
LABEL_82:
            v224 = objc_msgSend_proxyPixelBuffer(*(v6 + 26), v199, v200, v201);
            v228 = objc_msgSend_proxyMetadata(*(v6 + 26), v225, v226, v227);
            v153 = v250;
            objc_msgSend_processor_outputReadyWithFrameType_outputPixelBuffer_outputMetadata_error_(v250, v229, self, 1, v224, v228, 0);

            goto LABEL_83;
          }

          v202 = MEMORY[0x29EDBA070];
          STFStillCorrectionStrength = objc_msgSend_getSTFStillCorrectionStrength_(self->_denoiseFusePipeline, v199, 0, v201);
          v206 = objc_msgSend_numberWithInt_(v202, v204, STFStillCorrectionStrength, v205);
          v210 = objc_msgSend_proxyMetadata(*(v6 + 26), v207, v208, v209);
          objc_msgSend_setObject_forKeyedSubscript_(v210, v211, v206, *MEMORY[0x29EDC0228]);

          v212 = MEMORY[0x29EDBA070];
          STFStillAnalyticsVersion = objc_msgSend_getSTFStillAnalyticsVersion(self->_denoiseFusePipeline, v213, v214, v215);
          v181 = objc_msgSend_numberWithUnsignedInt_(v212, v217, STFStillAnalyticsVersion, v218);
          v222 = objc_msgSend_proxyMetadata(*(v6 + 26), v219, v220, v221);
          objc_msgSend_setObject_forKeyedSubscript_(v222, v223, v181, *MEMORY[0x29EDC0218]);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v179, v180, MEMORY[0x29EDB8EA8], v182);
        }

        goto LABEL_82;
      }

      v133 = *(*(v6 + 6) + 56);
      if (v133)
      {
        objc_msgSend_getLumaPedestalWithProperties_plistSource_(DeepFusionCommon, v131, &self->_referenceFrameProperties.meta.exposureParams.blue_gain, *(v133 + 56));
        v138 = v137;
        v139 = p_sifrFrameIndex;
        if (v254 < 0)
        {
          v139 = (v5 + 6);
        }

        v140 = self->_denoiseFusePipeline;
        v141 = v98[2];
        v142 = v98[3];
        v143 = bracketProperties + 224224 * *v139;
        v144 = objc_msgSend_linearOutputPixelBuffer(*(v6 + 26), v134, v135, v136);
        LODWORD(v145) = v138;
        v40 = objc_msgSend_extractLinearBufferWithLumaInput_chromaInput_inputIsLinear_removeChromaBias_lumaPedestal_exposureParams_ccm_output_(v140, v146, v141, v142, 0, 1, v143 + 16, v144, v145, *MEMORY[0x29EDCA928], *(MEMORY[0x29EDCA928] + 16), *(MEMORY[0x29EDCA928] + 32));
        if (v40)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      sub_2958B9194(v130, v257);
      v40 = v257[0];
    }

    else
    {
      sub_2958B92B0();
      v40 = 0;
    }
  }

  v234 = MEMORY[0x29EDB9270];
LABEL_107:

LABEL_90:
  v235 = *v234;
  if (*v234 == 1)
  {
    kdebug_trace();
    v235 = *v234;
  }

  if (v235)
  {
    v236 = objc_msgSend_commandQueue(*(v6 + 17), v147, v148, v149);
    v240 = objc_msgSend_commandBuffer(v236, v237, v238, v239);

    objc_msgSend_setLabel_(v240, v241, @"KTRACE_END_MTL", v242);
    v255[0] = MEMORY[0x29EDCA5F8];
    v255[1] = 3221225472;
    v255[2] = sub_29585521C;
    v255[3] = &unk_29EDDBE78;
    memset(&v255[4], 0, 24);
    objc_msgSend_addCompletedHandler_(v240, v243, v255, v244);
    objc_msgSend_commit(v240, v245, v246, v247);
  }

  return v40;
}

- (int)_lowLightMotionDetection
{
  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
  if ((cntBracketSampleBuffers & 0x80000000) != 0)
  {
    return 0;
  }

  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if (cntBracketSampleBuffers >= referenceFrameCandidatesCount)
  {
    return 0;
  }

  bracketProperties = self->_bracketProperties;
  if ((*(&self->_bracketProperties[1].meta.exposureParams.normalized_snr + 56056 * cntBracketSampleBuffers) & 1) == 0)
  {
    sub_2958B96F4(&v18);
    return v18;
  }

  v7 = bracketProperties + 224224 * (referenceFrameCandidatesCount - 1);
  if ((v7[224164] & 1) == 0)
  {
    *(v7 + 56042) = 0;
  }

  output = self->_output;
  if ((output - 1) >= 2)
  {
    if ((output - 4) < 2)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }

    else if (output == 9)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
    }

    else
    {
      if (output != 10)
      {
        return 0;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], a2, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
    }
    v17 = ;
    objc_exception_throw(v17);
  }

  v9 = bracketProperties + 224224 * cntBracketSampleBuffers;
  if (v9[224164])
  {
    goto LABEL_10;
  }

  v10 = objc_msgSend_runMotionDetectionLL_imgIndex_imgProperties_refProperties_(self->_denoiseFusePipeline, a2, 1, cntBracketSampleBuffers, v9, bracketProperties + 224224 * cntBracketSampleBuffers);
  if (v10)
  {
    v15 = v10;
    sub_2958B9790();
    return v15;
  }

  bracketProperties[1].meta.ltmCurves.ltmLut.bytes[224224 * *p_cntBracketSampleBuffers + 196] = 1;
  referenceFrameCandidatesCount = p_cntBracketSampleBuffers[2];
  if (referenceFrameCandidatesCount >= 1)
  {
LABEL_10:
    v11 = 0;
    p_highlights = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RG.highlights;
    v13 = bracketProperties;
    do
    {
      if ((*p_highlights & 1) == 0)
      {
        v14 = objc_msgSend_runMotionDetectionLL_imgIndex_imgProperties_refProperties_(self->_denoiseFusePipeline, a2, 0, v11, v13, bracketProperties + 224224 * *p_cntBracketSampleBuffers);
        if (v14)
        {
          v15 = v14;
          sub_2958B97F0();
          return v15;
        }

        *p_highlights = 1;
        referenceFrameCandidatesCount = p_cntBracketSampleBuffers[2];
      }

      ++v11;
      p_highlights += 112112;
      v13 = (v13 + 224224);
    }

    while (v11 < referenceFrameCandidatesCount);
  }

  return 0;
}

- (int)_lowLightGreenGhostPerFrameProcessing
{
  if (!objc_msgSend_doGreenGhostMitigation(self->_denoiseFusePipeline, a2, v2, v3))
  {
    return 0;
  }

  p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
  cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
  if ((cntBracketSampleBuffers & 0x80000000) != 0)
  {
    return 0;
  }

  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if (cntBracketSampleBuffers >= referenceFrameCandidatesCount)
  {
    return 0;
  }

  v9 = 0;
  output = self->_output;
  if (output > 3)
  {
    if ((output - 4) < 2)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v5, *MEMORY[0x29EDB8CC8], @"*** RawNightMode is unsupported in this version of NRF.", 0);
    }

    else if (output == 9)
    {
      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v5, *MEMORY[0x29EDB8CC8], @"*** LearnedHRNR is unsupported in this version of NRF.", 0);
    }

    else
    {
      if (output != 10)
      {
        return v9;
      }

      objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x29EDB8DD0], v5, *MEMORY[0x29EDB8CC8], @"*** LearnedFusion is unsupported in this version of NRF.", 0);
    }
    v19 = ;
    objc_exception_throw(v19);
  }

  if (output == 2)
  {
    bracketProperties = self->_bracketProperties;
    v12 = self->_bracketProperties + 224224 * cntBracketSampleBuffers;
    if (v12[224214])
    {
      goto LABEL_9;
    }

    v13 = objc_msgSend_greenGhostMitigationWithRefIndex_bracketIndex_refProperties_otherProperties_tuningParams_(self->_denoiseFusePipeline, v5, cntBracketSampleBuffers, self->_cntBracketSampleBuffers, v12, self->_bracketProperties + 224224 * cntBracketSampleBuffers, *(self->_regWarpInput + 15));
    if (v13)
    {
      v9 = v13;
      sub_2958B9850();
      return v9;
    }

    bracketProperties[1].meta.ltmCurves.ltmLut.bytes[224224 * *p_cntBracketSampleBuffers + 246] = 1;
    referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
    if (referenceFrameCandidatesCount >= 1)
    {
LABEL_9:
      v14 = 0;
      p_RG = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[4].RG;
      for (i = self->_bracketProperties; ; i = (i + 224224))
      {
        if ((p_RG->shadows & 1) == 0)
        {
          v17 = objc_msgSend_greenGhostMitigationWithRefIndex_bracketIndex_refProperties_otherProperties_tuningParams_(self->_denoiseFusePipeline, v5, *p_cntBracketSampleBuffers, v14, bracketProperties + 224224 * *p_cntBracketSampleBuffers, i, *(self->_regWarpInput + 15));
          if (v17)
          {
            v9 = v17;
            sub_2958B98B0();
            return v9;
          }

          LOBYTE(p_RG->shadows) = 1;
          referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
        }

        ++v14;
        p_RG = (p_RG + 224224);
        if (v14 >= referenceFrameCandidatesCount)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return v9;
}

- (int)_perFrameProcessingComputeReferenceFrameIndexIfReady
{
  if (self->_maximumNumberOfReferenceFrameCandidatesToHoldForProcessing <= 0 && self->_referenceFrameCandidatesCount == 3)
  {
    return objc_msgSend__computeReferenceFrameIndex(self, a2, v2, v3);
  }

  else
  {
    return 0;
  }
}

- (int)_computeReferenceFrameIndex
{
  referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
  if ((referenceFrameCandidatesCount - 4) <= 0xFFFFFFFC)
  {
    sub_2958B9B34(&v27);
    return v27;
  }

  else
  {
    v4 = 0;
    p_shadows = &self->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[4].RR.shadows;
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    memset(v23, 0, sizeof(v23));
    v24 = 0;
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v6 = *&self->_maxBlinkDetectScore;
    if (v6 <= 1.0e-10)
    {
      v6 = 1.0;
    }

    v8 = *&self->_maxFocusScore;
    v7 = *(&self->_maxFocusScore + 1);
    if (v7 <= 1.0e-10)
    {
      v7 = 1.0;
    }

    if (v8 <= 1.0e-10)
    {
      v8 = 1.0;
    }

    if (*&self->_anon_17fa15[3] <= 1.0e-10)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = *&self->_anon_17fa15[3];
    }

    do
    {
      v10 = *(p_shadows - 4) / v6;
      *(v23 + v4) = v10;
      *(v25 + v4) = *(p_shadows - 6) / v7;
      *(v21 + v4) = *(p_shadows - 4) / v8;
      *(v19 + v4) = *p_shadows / v9;
      v4 += 4;
      p_shadows += 56056;
    }

    while (4 * referenceFrameCandidatesCount != v4);
    p_cntBracketSampleBuffers = &self->_cntBracketSampleBuffers;
    SharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex = objc_msgSend__getSharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex_(self, a2, referenceFrameCandidatesCount, v25, v21, v23, v19, (self->_bracketProperties[0].meta.exposureParams.exposure_time * 1000.0) > 200.0, &self->_cntBracketSampleBuffers);
    if (SharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex)
    {
      v17 = SharpestBracket_normGyroScores_normCornerScores_normFocusScores_normBlinkScores_useLongWeights_sharpFrameIndex;
      sub_2958B9AA0();
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
        objc_msgSend_processor_didSelectProgressiveFusionReferenceFrameIndex_(v15, v16, self, *p_cntBracketSampleBuffers);
      }

      return 0;
    }
  }

  return v17;
}

- (int)_computeCornersStrengthWithBracketIndex:(unsigned int)a3 totalCornerStrength:(float *)a4
{
  p_referenceFrameCandidatesCount = &self->_referenceFrameCandidatesCount;
  if (self->_referenceFrameCandidatesCount <= a3)
  {
    sub_2958B9BD0(&v34);
    return v34;
  }

  if (!a4)
  {
    sub_2958B9D90(&v34);
    return v34;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(self->_bracketSampleBuffers[a3]);
  if (!ImageBuffer)
  {
    sub_2958B9D40(&v34);
    return v34;
  }

  v9 = ImageBuffer;
  v10 = *(&self->_bracketProperties[0].meta.ROI.size + 14014 * a3);
  p_curRegWarpTempIndex = &self->_curRegWarpTempIndex;
  v32 = *(&self->_bracketProperties[0].meta.ROI.origin + 14014 * a3);
  v33 = v10;
  PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
  if (objc_msgSend_shouldDownsampleRWPPInputWithPixelFormat_processingType_(self, v13, PixelFormatType, p_referenceFrameCandidatesCount[4]))
  {
    if (*p_curRegWarpTempIndex != a3)
    {
      if (PixelFormatType == 1751527984 || *&self->_registrationPipelineRWPPConfig.numThreads == 0)
      {
        regWarpM2M = self->_regWarpM2M;
        regWarpHelper = self->_regWarpHelper;
        v20 = objc_msgSend_commandBuffer(*&self->_fusionOptions, v14, v15, v16);
        v22 = objc_msgSend_convertInput10BitPixBuf_downsampledOutput8BitPixBuf_mtlCommandBuffer_(regWarpM2M, v21, v9, regWarpHelper, v20);

        if (v22)
        {
          sub_2958B9C80();
          return v22;
        }

        objc_msgSend_waitForSchedule(*&self->_fusionOptions, v23, v24, v25);
      }

      else
      {
        v26 = objc_msgSend__downsampleImageForRegistration_outputImage_(self, v14, v9, self->_regWarpHelper);
        if (v26)
        {
          v22 = v26;
          sub_2958B9C20();
          return v22;
        }
      }

      *p_curRegWarpTempIndex = a3;
    }

    v9 = self->_regWarpHelper;
    objc_msgSend__downscaleRoiForRegistration_(self, v14, v15, v16, v32, v33, v32, v33);
    *&v32 = v27;
    *(&v32 + 1) = v28;
    *&v33 = v29;
    *(&v33 + 1) = v30;
  }

  v22 = objc_msgSend_calculateTotalCornerStrength_regionOfInterest_mapping_outTotalCornerStrength_(self->_metal, v14, v9, &v32, 0, a4);
  if (v22)
  {
    sub_2958B9CE0();
  }

  return v22;
}

- (int)_getSharpestBracket:(int)a3 normGyroScores:(float *)a4 normCornerScores:(float *)a5 normFocusScores:(float *)a6 normBlinkScores:(float *)a7 useLongWeights:(unsigned __int8)a8 sharpFrameIndex:(int *)a9
{
  if (!a9)
  {
    sub_2958BA188(&v21);
    return v21;
  }

  if (!a4)
  {
    sub_2958BA0EC(&v21);
    return v21;
  }

  if (!a5)
  {
    sub_2958BA050(&v21);
    return v21;
  }

  if (!a6)
  {
    sub_2958B9FB4(&v21);
    return v21;
  }

  if (!a7)
  {
    sub_2958B9F18(&v21);
    return v21;
  }

  if (a3 >= 4)
  {
    sub_2958B9E7C(&v21);
    return v21;
  }

  v9 = *(self->_regWarpInput + 10);
  if (!v9)
  {
    sub_2958B9DE0(&v21);
    return v21;
  }

  if (a3 >= 1)
  {
    v10 = 0;
    v11 = &OBJC_IVAR___FrameSelectionPlist_referenceSelectionRegressionWeightLongFrame;
    if (!a8)
    {
      v11 = &OBJC_IVAR___FrameSelectionPlist_referenceSelectionRegressionWeightShortFrame;
    }

    v12 = (v9 + *v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = 3.4028e38;
    do
    {
      v18 = v13 + v14 * a4[v10] + v15 * a5[v10] + v16 * a6[v10];
      v19 = *(*(self->_regWarpInput + 10) + 184);
      if (v19 && *(v19 + 8))
      {
        v18 = (*(v19 + 72) * (1.0 - a7[v10])) + v18 * (1.0 - *(v19 + 72));
      }

      if (!v10 || v17 > v18)
      {
        *a9 = v10;
        v17 = v18;
      }

      ++v10;
    }

    while (a3 != v10);
  }

  return 0;
}

- (int)_computeBlurryFrameWeight:(int)a3
{
  p_maxFocusScore = &self->_maxFocusScore;
  v4 = self + 224224 * a3;
  *(v4 + 112154) = 1065353216;
  if (LODWORD(self->_output) != 2)
  {
    return 0;
  }

  v5 = self;
  regWarpInput = self->_regWarpInput;
  v7 = *(regWarpInput + 10);
  if (v7)
  {
    if (*(v7 + 10) == 1 && (v4[448620] & 1) == 0)
    {
      cntBracketSampleBuffers = self->_cntBracketSampleBuffers;
      if ((cntBracketSampleBuffers & 0x80000000) == 0)
      {
        referenceFrameCandidatesCount = self->_referenceFrameCandidatesCount;
        if (cntBracketSampleBuffers < referenceFrameCandidatesCount)
        {
          v10 = &OBJC_IVAR___FrameSelectionPlist_blurFrameRejectionRegressionWeightShortFrame;
          if (self->_bracketProperties[0].meta.exposureParams.exposure_time > 0.2)
          {
            v10 = &OBJC_IVAR___FrameSelectionPlist_blurFrameRejectionRegressionWeightLongFrame;
          }

          v11 = (v7 + *v10);
          do
          {
            _X8 = &v5->_bracketProperties[4].meta.ltmCurves.ltmLut.ccmV1.lutsData[27].GG.mid;
            __asm { PRFM            #0, [X8] }

            if ((v5->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[236] & 1) == 0)
            {
              if (cntBracketSampleBuffers)
              {
                v18 = *(regWarpInput + 10);
                v19 = *(v18 + 176);
                v20 = *(v18 + 180);
                v21 = 0.5;
                if (v19 < v20)
                {
                  v22 = *&v5->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].GR.highlights / p_maxFocusScore[1];
                  v23 = exp(*v11 + v11[1] * *&v5->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].GB.shadows + v11[2] * (*&v5->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].BR.mid / *p_maxFocusScore) + v11[4] * *&v5->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].RB.mid + v11[3] * v22);
                  *&v23 = v23 / (v23 + 1.0);
                  v24 = (*&v23 - v19) / (v20 - v19);
                  v25 = v24;
                  v26 = v24 >= 1.0;
                  v27 = v24 > 0.0 || v24 >= 1.0;
                  if (v24 <= 0.0)
                  {
                    v26 = 1;
                  }

                  if (v27)
                  {
                    v28 = 1.0;
                  }

                  else
                  {
                    v28 = 0.0;
                  }

                  if (!v26)
                  {
                    v28 = v25;
                  }

                  v21 = 1.0 - v28;
                }

                *&v5->_bracketProperties[1].meta.ltmCurves.ltmLut.ccmV1.lutsData[3].BG.highlights = v21;
              }

              v5->_bracketProperties[1].meta.ltmCurves.ltmLut.bytes[236] = 1;
            }

            v5 = (v5 + 224224);
            --cntBracketSampleBuffers;
            --referenceFrameCandidatesCount;
          }

          while (referenceFrameCandidatesCount);
        }
      }
    }

    return 0;
  }

  return FigSignalErrorAtGM();
}

- (void)setSharedMetalBuffer:(id)a3
{
  v4 = a3;
  objc_msgSend_releaseResources(self->_denoiseFusePipeline, v5, v6, v7);
  sharedMetalBuffer = self->_sharedMetalBuffer;
  self->_sharedMetalBuffer = v4;

  self->_usingExternalSharedMetalBuffer = 1;
}

- (void)setSharedRegWarpBuffer:(id)a3
{
  v5 = a3;
  if (self->_sharedRegWarpBuffer != v5)
  {
    v9 = v5;
    objc_msgSend_releaseResources(self->_metal, v6, v7, v8);
    objc_storeStrong(&self->_sharedRegWarpBuffer, a3);
    v5 = v9;
    self->_usingExternalSharedRegWarpBuffer = 1;
    self->_regwarpHasBeenSetup = 0;
  }
}

- (NRFProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);

  return WeakRetained;
}

- (int)_nrfFuseImages:(BOOL)a3
{
  v3 = a3;
  v5 = &self->_referenceFrameIndex + 1;
  v6 = &self->_anon_14893c[1004];
  WeakRetained = objc_loadWeakRetained(&self->_progressiveBracketingParameters);
  v8 = *(v5 + 31);
  v12 = objc_msgSend_inferenceInputPixelBuffer(*(v6 + 204), v9, v10, v11);
  v153 = WeakRetained;
  v16 = objc_opt_respondsToSelector();
  if (v12 || objc_msgSend_providesInferencesWithoutInferenceInputPixelBuffer(*(v6 + 204), v13, v14, v15)) && (v16)
  {
    v17 = v158;
    v158[0] = MEMORY[0x29EDCA5F8];
    v158[1] = 3221225472;
    v158[2] = sub_295851BDC;
    v158[3] = &unk_29EDDC3A8;
    v146 = v159;
    v159[0] = WeakRetained;
    v159[1] = self;
    v18 = 1;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  v148 = MEMORY[0x29C253310](v17);
  v22 = *(*(v6 + 52) + 24);
  if (!v22)
  {
    goto LABEL_74;
  }

  v147 = v18;
  v151 = v3;
  if (!v12 || !v3 || v8 == 2)
  {
    goto LABEL_13;
  }

  if (v6[20] == 1)
  {
LABEL_74:
    sub_2958569E0();
    FigDebugAssert3();
    isLowLight_gainMap = FigSignalErrorAtGM();
    goto LABEL_75;
  }

  v23 = v8;
  v24 = objc_msgSend_inferenceInputPixelBuffer(*(v6 + 204), v19, v20, v21);
  v25 = *(v6 + 4);
  v26 = *v6;
  v27 = *(v6 + 2);
  v31 = objc_msgSend_pixelBuffer(*(v6 + 204), v28, v29, v30);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(v31, 0);
  v36 = objc_msgSend_pixelBuffer(*(v6 + 204), v33, v34, v35);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(v36, 0);
  v39 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v38, v24, 0, v25, v26, v27, WidthOfPlane, HeightOfPlane);
  if (v39)
  {
    isLowLight_gainMap = v39;
    sub_295808C24();
    FigDebugAssert3();
    v91 = 0;
    LODWORD(v18) = v147;
    goto LABEL_37;
  }

  v22 = *(*(v6 + 52) + 24);
  v18 = v147;
  v8 = v23;
LABEL_13:
  v40 = *(v5 + 19);
  v41 = *(v22 + 120);
  LOBYTE(v144) = v8 == 2;
  bracketProperties = self->_bracketProperties;
  isLowLight = objc_msgSend_fuseFramesWithConfig_properties_nrfPlist_batchN_isLastBatch_usePatchBasedFusion_isLowLight_(self->_denoiseFusePipeline, v19, self->_fusionConf.colorSpaceConversionParameters, self->_bracketProperties, v144);
  if (isLowLight)
  {
    isLowLight_gainMap = isLowLight;
    sub_295808C24();
    FigDebugAssert3();
LABEL_75:
    v91 = 0;
    goto LABEL_37;
  }

  v150 = v8;
  v152 = v6;
  v43 = v153;
  v44 = objc_opt_respondsToSelector();
  v45 = objc_opt_respondsToSelector();
  v49 = v45;
  if (v44 & 1) != 0 || (v45)
  {
    v53 = objc_msgSend_array(MEMORY[0x29EDB8DE8], v46, v47, v48);
    if (*(v5 + 15) >= 1)
    {
      v54 = 0;
      v43 = 0x29EDBA000uLL;
      do
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(self->_bracketSampleBuffers[v54]);
        IOSurface = CVPixelBufferGetIOSurface(ImageBuffer);
        ID = IOSurfaceGetID(IOSurface);
        v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v58, ID, v59);
        objc_msgSend_addObject_(v53, v61, v60, v62);

        if (v44)
        {
          objc_msgSend_processor_didEnqueueProcessingForSurfaceID_(v153, v50, self, ID);
        }

        ++v54;
      }

      while (v54 < *(v5 + 15));
    }

    if (v49)
    {
      v63 = objc_msgSend_commandQueue(*(v152 + 140), v50, v51, v52);
      v67 = objc_msgSend_commandBuffer(v63, v64, v65, v66);

      v154[0] = MEMORY[0x29EDCA5F8];
      v154[1] = 3221225472;
      v154[2] = sub_295851BE8;
      v154[3] = &unk_29EDDC3D0;
      v155 = v53;
      v156 = v153;
      v157 = self;
      objc_msgSend_addCompletedHandler_(v67, v68, v154, v69);
      objc_msgSend_commit(v67, v70, v71, v72);
    }

    v18 = v147;
  }

  v73 = *(v5 + 15);
  v74 = v152;
  v75 = v150;
  if (v73 >= 1)
  {
    v43 = 0;
    bracketSampleBuffers = self->_bracketSampleBuffers;
    do
    {
      v77 = bracketSampleBuffers[v43];
      if (v77)
      {
        CFRelease(v77);
        bracketSampleBuffers[v43] = 0;
        v73 = *(v5 + 15);
      }

      ++v43;
    }

    while (v43 < v73);
  }

  objc_msgSend_releaseInputBindings(self->_denoiseFusePipeline, v46, v47, v48);
  if (!v151)
  {
    v91 = 0;
LABEL_36:
    isLowLight_gainMap = 0;
LABEL_37:
    v98 = v148;
    goto LABEL_69;
  }

  if (objc_msgSend_gainMapOutputPixelBuffer(*(v152 + 204), v78, v79, v80))
  {
    v84 = objc_msgSend_gainMapOutputPixelBuffer(*(v152 + 204), v81, v82, v83);
    if (CVPixelBufferGetPixelFormatType(v84) != 1278226488)
    {
      sub_2957F884C();
      FigDebugAssert3();
      v91 = 0;
      isLowLight_gainMap = -12780;
      goto LABEL_37;
    }

    v88 = *(v152 + 140);
    v89 = objc_msgSend_gainMapOutputPixelBuffer(*(v152 + 204), v85, v86, v87);
    v91 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(v88, v90, v89, 10, 7, 0);
    if (!v91)
    {
      sub_2958569E0();
      FigDebugAssert3();
      v142 = *(v43 + 912);
      sub_2957F8880();
LABEL_81:
      LinearBufferWithConfig_referenceFrameProperties_output = FigSignalErrorAtGM();
LABEL_82:
      isLowLight_gainMap = LinearBufferWithConfig_referenceFrameProperties_output;
      goto LABEL_37;
    }

    denoiseFusePipeline = self->_denoiseFusePipeline;
    v93 = *(v152 + 52);
    sub_2958569FC();
    if (objc_msgSend_doGainMap_properties_output_outputHeadroom_nrfPlist_useFusedFrame_(v94, v95, v96, bracketProperties, v91, &self->_processedSyntheticReference))
    {
LABEL_80:
      sub_2958569E0();
      FigDebugAssert3();
      v143 = *(v43 + 912);
      goto LABEL_81;
    }
  }

  else
  {
    v91 = 0;
  }

  if (v150 == 2)
  {
    v99 = v18;
  }

  else
  {
    v99 = 0;
  }

  if (v99 == 1)
  {
    if (v152[20] == 1)
    {
      goto LABEL_80;
    }

    v100 = objc_msgSend_inferenceInputPixelBuffer(*(v152 + 204), v81, v82, v83);
    v101 = *(v152 + 4);
    v102 = *v152;
    v103 = *(v152 + 2);
    v107 = objc_msgSend_pixelBuffer(*(v152 + 204), v104, v105, v106);
    v43 = v18;
    v18 = CVPixelBufferGetWidthOfPlane(v107, 0);
    v111 = objc_msgSend_pixelBuffer(*(v152 + 204), v108, v109, v110);
    v112 = CVPixelBufferGetHeightOfPlane(v111, 0);
    v75 = v150;
    v113 = v103;
    v74 = v152;
    v114 = v18;
    LODWORD(v18) = v43;
    v116 = objc_msgSend__processInferenceImage_sourceFrameType_sourceFrameIndex_ltcFrameIndex_gtcFrameIndex_originalWidth_originalHeight_(self, v115, v100, 2, v101, v102, v113, v114, v112);
    if (v116)
    {
      isLowLight_gainMap = v116;
      sub_295808C24();
      FigDebugAssert3();
      goto LABEL_37;
    }
  }

  if (objc_msgSend_linearOutputPixelBuffer(*(v74 + 204), v81, v82, v83))
  {
    v120 = self->_denoiseFusePipeline;
    v121 = bracketProperties + 224224 * *v74;
    objc_msgSend_linearOutputPixelBuffer(*(v74 + 204), v117, v118, v119);
    sub_2958569FC();
    LinearBufferWithConfig_referenceFrameProperties_output = objc_msgSend_extractLinearBufferWithConfig_referenceFrameProperties_output_(v120, v122, v123, v121);
    if (LinearBufferWithConfig_referenceFrameProperties_output)
    {
      goto LABEL_82;
    }
  }

  objc_msgSend_resetFusion_(self->_denoiseFusePipeline, v117, *(v5 + 31), v119);
  v128 = *(v74 + 52);
  v129 = *(v128 + 40);
  if (!v129)
  {
    goto LABEL_80;
  }

  v130 = v75 == 2 && *(v129 + 108) == 1 && *(v74 + 91) > *(v129 + 112) && *(v74 + 93) > *(v129 + 116);
  v131 = *(v129 + 120);
  v132 = *(v129 + 121);
  if (v132 == 1 && v131 != 0)
  {
    sub_2957F884C();
    FigDebugAssert3();
    goto LABEL_36;
  }

  v134 = v130 | v132;
  if (v132)
  {
    v135 = 3;
  }

  else
  {
    v135 = 2;
  }

  if (v130)
  {
    v136 = 1;
  }

  else
  {
    v136 = v135;
  }

  if ((v134 & 1) == 0 && (v131 & 1) == 0)
  {
    v136 = -(*v5 ^ 1);
  }

  v137 = self->_denoiseFusePipeline;
  v138 = *(v5 + 63);
  objc_msgSend_pixelBuffer(*(v74 + 204), v125, v126, v127);
  BYTE4(v145) = v75 == 2;
  sub_2958569FC();
  LODWORD(v145) = v136;
  v98 = v148;
  isLowLight_gainMap = objc_msgSend_toneMapAndDenoiseFusedFramesWithConfig_properties_nrfPlist_style_output_inferenceProvider_colorCubeFixType_isLowLight_gainMap_(v137, v139, v140, bracketProperties, v128, v138, v145, v91);
  if (isLowLight_gainMap)
  {
    FigDebugAssert3();
  }

LABEL_69:

  if (v18)
  {
  }

  return isLowLight_gainMap;
}

@end