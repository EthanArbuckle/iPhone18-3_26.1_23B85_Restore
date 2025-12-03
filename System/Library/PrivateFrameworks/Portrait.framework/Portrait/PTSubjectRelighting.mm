@interface PTSubjectRelighting
- (PTSubjectRelighting)initWithMetalContext:(id)context effectUtil:(id)util prewarmOnly:(BOOL)only;
- (int)runSRLForLivePhotosWithInputBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture skinMaskTexture:(id)maskTexture personMaskTexture:(id)personMaskTexture skinToneClassification:(id)classification validROI:(CGRect)i expBias:(float)self0 faceExpRatio:(float)self1 transform:(CGAffineTransform *)self2;
@end

@implementation PTSubjectRelighting

- (PTSubjectRelighting)initWithMetalContext:(id)context effectUtil:(id)util prewarmOnly:(BOOL)only
{
  contextCopy = context;
  v82.receiver = self;
  v82.super_class = PTSubjectRelighting;
  v8 = [(PTSubjectRelighting *)&v82 init];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = [contextCopy computePipelineStateFor:@"srlV2GlobalSparseHistogramLivePhotos" withConstants:0];
  srlV2GlobalHistogramLivePhotos = v8->_srlV2GlobalHistogramLivePhotos;
  v8->_srlV2GlobalHistogramLivePhotos = v9;

  if (!v8->_srlV2GlobalHistogramLivePhotos)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v28 initWithMetalContext:v38 effectUtil:v39 prewarmOnly:v40, v41, v42, v43, v44];
    }

    goto LABEL_29;
  }

  v11 = [contextCopy computePipelineStateFor:@"srlV2FaceSparseHistogramLivePhotos" withConstants:0];
  srlV2FaceHistogramLivePhotos = v8->_srlV2FaceHistogramLivePhotos;
  v8->_srlV2FaceHistogramLivePhotos = v11;

  if (!v8->_srlV2FaceHistogramLivePhotos)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v28 initWithMetalContext:v45 effectUtil:v46 prewarmOnly:v47, v48, v49, v50, v51];
    }

    goto LABEL_29;
  }

  v13 = [contextCopy computePipelineStateFor:@"srlV2CalcCoefficientsLivePhotos" withConstants:0];
  srlV2CalcCoefficientsLivePhotos = v8->_srlV2CalcCoefficientsLivePhotos;
  v8->_srlV2CalcCoefficientsLivePhotos = v13;

  if (!v8->_srlV2CalcCoefficientsLivePhotos)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v28 initWithMetalContext:v52 effectUtil:v53 prewarmOnly:v54, v55, v56, v57, v58];
    }

    goto LABEL_29;
  }

  device = [contextCopy device];
  v16 = [device newBufferWithLength:8460 options:0];
  srlV2GlobalStatsBuffer = v8->_srlV2GlobalStatsBuffer;
  v8->_srlV2GlobalStatsBuffer = v16;

  if (!v8->_srlV2GlobalStatsBuffer)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v28 initWithMetalContext:v59 effectUtil:v60 prewarmOnly:v61, v62, v63, v64, v65];
    }

    goto LABEL_29;
  }

  device2 = [contextCopy device];
  v19 = [device2 newBufferWithLength:271680 options:0];
  srlV2FaceStatsBuffer = v8->_srlV2FaceStatsBuffer;
  v8->_srlV2FaceStatsBuffer = v19;

  if (!v8->_srlV2FaceStatsBuffer)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v28 initWithMetalContext:v66 effectUtil:v67 prewarmOnly:v68, v69, v70, v71, v72];
    }

    goto LABEL_29;
  }

  device3 = [contextCopy device];
  v22 = [device3 newBufferWithLength:100 options:0];
  srlV2CoeffsBuffer = v8->_srlV2CoeffsBuffer;
  v8->_srlV2CoeffsBuffer = v22;

  v24 = v8->_srlV2CoeffsBuffer;
  if (!v24)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PTSubjectRelighting *)v28 initWithMetalContext:v73 effectUtil:v74 prewarmOnly:v75, v76, v77, v78, v79];
    }

    goto LABEL_29;
  }

  if (!v8->_srlV2GlobalStatsBuffer || !v8->_srlV2FaceStatsBuffer)
  {
    v28 = _PTLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PTSubjectRelighting initWithMetalContext:v28 effectUtil:? prewarmOnly:?];
    }

    goto LABEL_29;
  }

  *([(MTLBuffer *)v24 contents]+ 96) = 1056964608;
  v25 = objc_opt_new();
  srlV2Plist = v8->_srlV2Plist;
  v8->_srlV2Plist = v25;

  if (only)
  {
LABEL_33:
    v80 = v8;
    goto LABEL_31;
  }

  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 pathForResource:@"BackWide-IQTuning" ofType:@"plist" inDirectory:&stru_2837D16E8];

  v29 = MEMORY[0x277CBEAC0];
  v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v28];
  v31 = [v29 dictionaryWithContentsOfURL:v30 error:0];

  v32 = [v31 objectForKeyedSubscript:@"DeepFusionParameters"];
  v33 = [v32 objectForKeyedSubscript:@"ToneMapping"];
  v34 = [v33 objectForKeyedSubscript:@"DefaultParameters"];
  v35 = [v34 objectForKeyedSubscript:@"SRLv2"];
  plistSRL = v8->_plistSRL;
  v8->_plistSRL = v35;

  if (![(PTSRLv2Plist *)v8->_srlV2Plist readPlist:v8->_plistSRL])
  {

    goto LABEL_33;
  }

  v37 = _PTLogSystem();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    [PTSubjectRelighting initWithMetalContext:v37 effectUtil:? prewarmOnly:?];
  }

LABEL_29:
LABEL_30:
  v80 = 0;
LABEL_31:

  return v80;
}

- (int)runSRLForLivePhotosWithInputBuffer:(id)buffer lumaTexture:(id)texture chromaTexture:(id)chromaTexture skinMaskTexture:(id)maskTexture personMaskTexture:(id)personMaskTexture skinToneClassification:(id)classification validROI:(CGRect)i expBias:(float)self0 faceExpRatio:(float)self1 transform:(CGAffineTransform *)self2
{
  bufferCopy = buffer;
  textureCopy = texture;
  chromaTextureCopy = chromaTexture;
  maskTextureCopy = maskTexture;
  personMaskTextureCopy = personMaskTexture;
  ratioCopy = ratio;
  v87[0] = bias;
  classificationCopy = classification;
  v20 = [classificationCopy count];
  v21 = 4;
  if (v20 < 4)
  {
    v21 = v20;
  }

  v77 = 0u;
  v78 = 0;
  v85 = 0;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v71 = v21;
  v76[0] = v21;
  v76[1] = 6;
  *(&v77 + 4) = 0x3F8000003F000000;
  __asm { FMOV            V0.2S, #1.0 }

  v79 = _D0;
  srlV2Plist = self->_srlV2Plist;
  *&v80 = srlV2Plist->maskThreshold;
  *(&v80 + 4) = *&srlV2Plist->targetMedian_I;
  HIDWORD(v80) = LODWORD(srlV2Plist->targetMedian_III);
  v81 = *&srlV2Plist->targetMedian_IV;
  v82 = *&srlV2Plist->maxBoost_II;
  *&v83 = srlV2Plist->maxBoost_VI;
  *(&v83 + 4) = *&srlV2Plist->minFaceSize;
  HIDWORD(v83) = LODWORD(srlV2Plist->minCurveBoost);
  v84 = *&srlV2Plist->maxTargetRatioDarkening;
  *&v85 = srlV2Plist->faceExpDifThreshold;
  BYTE4(v85) = srlV2Plist->relightOnlyPersonMask;
  BYTE5(v85) = 1;
  if (v20)
  {
    v28 = 0;
    p_srlV2FaceHistogramLivePhotos = &self[1]._srlV2FaceHistogramLivePhotos;
    do
    {
      v30 = [classificationCopy objectAtIndexedSubscript:v28];
      faceAttributes = [v30 faceAttributes];
      [v30 boundingBox];
      v33 = v32;
      facemaskCategory = [faceAttributes facemaskCategory];
      label = [facemaskCategory label];
      identifier = [label identifier];
      v37 = [identifier isEqualToString:@"UNKNOWN_17_unknown0"];

      [v30 boundingBox];
      v39 = v38;
      if (v37)
      {
        [v30 boundingBox];
        v40 = v39;
        v42 = v41;
        v39 = fminf((v42 / 2.5) + v40, 1.0);
      }

      [v30 boundingBox];
      [v30 boundingBox];
      v43 = *&transform->c;
      *v74 = *&transform->a;
      *&v74[16] = v43;
      v75 = *&transform->tx;
      [PTEffectUtil rotateNormalizedRect:v74 transform:1 inverse:v33, v39];
      v45.f64[1] = v44;
      v46 = (&self[1] + 48 * v28);
      v48.f64[1] = v47;
      *v46 = vcvt_f32_f64(v45);
      v46[1] = vcvt_f32_f64(v48);
      v49 = [v30 yaw];
      [v49 floatValue];
      v51 = (v50 * 3.0) / 1.57079633;
      v46[5].f32[0] = v51;

      vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = [faceAttributes VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
      allLabelsWithConfidences = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq allLabelsWithConfidences];

      for (i = 0; i < [allLabelsWithConfidences count]; ++i)
      {
        v55 = [allLabelsWithConfidences objectAtIndexedSubscript:i];
        [v55 confidence];
        *(p_srlV2FaceHistogramLivePhotos + i) = v56;
      }

      ++v28;
      p_srlV2FaceHistogramLivePhotos += 6;
    }

    while (v28 != v71);
  }

  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_srlV2GlobalHistogramLivePhotos maxTotalThreadsPerThreadgroup];
  maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_srlV2FaceHistogramLivePhotos maxTotalThreadsPerThreadgroup];
  if (maxTotalThreadsPerThreadgroup >= maxTotalThreadsPerThreadgroup2)
  {
    v60 = maxTotalThreadsPerThreadgroup2;
  }

  else
  {
    v60 = maxTotalThreadsPerThreadgroup;
  }

  v61 = log2f((v60 >> 6));
  v62 = exp2f(floorf(v61));
  if (v62 >= 0x40)
  {
    v63 = 64;
  }

  else
  {
    v63 = v62;
  }

  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [computeCommandEncoder setTexture:chromaTextureCopy atIndex:2];
  [computeCommandEncoder setTexture:maskTextureCopy atIndex:5];
  [computeCommandEncoder setTexture:personMaskTextureCopy atIndex:6];
  [computeCommandEncoder setBytes:v76 length:128 atIndex:0];
  [computeCommandEncoder setBytes:&self[1] length:48 * v71 atIndex:1];
  [computeCommandEncoder setBytes:v87 length:4 atIndex:7];
  [computeCommandEncoder setBytes:&ratioCopy length:4 atIndex:8];
  [computeCommandEncoder setBuffer:self->_srlV2GlobalStatsBuffer offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:self->_srlV2FaceStatsBuffer offset:0 atIndex:3];
  [computeCommandEncoder setBuffer:self->_srlV2CoeffsBuffer offset:0 atIndex:4];
  [computeCommandEncoder setComputePipelineState:self->_srlV2GlobalHistogramLivePhotos];
  *v74 = vdupq_n_s64(1uLL);
  *&v74[16] = 1;
  threadExecutionWidth = 64;
  v73.i64[0] = v63;
  v73.i64[1] = 1;
  [computeCommandEncoder dispatchThreadgroups:v74 threadsPerThreadgroup:&threadExecutionWidth];
  [computeCommandEncoder setComputePipelineState:self->_srlV2FaceHistogramLivePhotos];
  v73.i64[1] = 1;
  *v74 = v71;
  *&v74[8] = vdupq_n_s64(1uLL);
  threadExecutionWidth = 64;
  v73.i64[0] = v63;
  [computeCommandEncoder dispatchThreadgroups:v74 threadsPerThreadgroup:&threadExecutionWidth];
  [computeCommandEncoder setComputePipelineState:self->_srlV2CalcCoefficientsLivePhotos];
  *v74 = vdupq_n_s64(1uLL);
  *&v74[16] = 1;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_srlV2CalcCoefficientsLivePhotos threadExecutionWidth];
  v73 = vdupq_n_s64(1uLL);
  [computeCommandEncoder dispatchThreadgroups:v74 threadsPerThreadgroup:&threadExecutionWidth];
  [computeCommandEncoder endEncoding];

  return 0;
}

@end