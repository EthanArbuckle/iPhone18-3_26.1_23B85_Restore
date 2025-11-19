@interface PTSubjectRelighting
- (PTSubjectRelighting)initWithMetalContext:(id)a3 effectUtil:(id)a4 prewarmOnly:(BOOL)a5;
- (int)runSRLForLivePhotosWithInputBuffer:(id)a3 lumaTexture:(id)a4 chromaTexture:(id)a5 skinMaskTexture:(id)a6 personMaskTexture:(id)a7 skinToneClassification:(id)a8 validROI:(CGRect)a9 expBias:(float)a10 faceExpRatio:(float)a11 transform:(CGAffineTransform *)a12;
@end

@implementation PTSubjectRelighting

- (PTSubjectRelighting)initWithMetalContext:(id)a3 effectUtil:(id)a4 prewarmOnly:(BOOL)a5
{
  v7 = a3;
  v82.receiver = self;
  v82.super_class = PTSubjectRelighting;
  v8 = [(PTSubjectRelighting *)&v82 init];
  if (!v8)
  {
    goto LABEL_30;
  }

  v9 = [v7 computePipelineStateFor:@"srlV2GlobalSparseHistogramLivePhotos" withConstants:0];
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

  v11 = [v7 computePipelineStateFor:@"srlV2FaceSparseHistogramLivePhotos" withConstants:0];
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

  v13 = [v7 computePipelineStateFor:@"srlV2CalcCoefficientsLivePhotos" withConstants:0];
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

  v15 = [v7 device];
  v16 = [v15 newBufferWithLength:8460 options:0];
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

  v18 = [v7 device];
  v19 = [v18 newBufferWithLength:271680 options:0];
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

  v21 = [v7 device];
  v22 = [v21 newBufferWithLength:100 options:0];
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

  if (a5)
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

- (int)runSRLForLivePhotosWithInputBuffer:(id)a3 lumaTexture:(id)a4 chromaTexture:(id)a5 skinMaskTexture:(id)a6 personMaskTexture:(id)a7 skinToneClassification:(id)a8 validROI:(CGRect)a9 expBias:(float)a10 faceExpRatio:(float)a11 transform:(CGAffineTransform *)a12
{
  v69 = a3;
  v68 = a4;
  v67 = a5;
  v66 = a6;
  v65 = a7;
  v86 = a11;
  v87[0] = a10;
  v70 = a8;
  v20 = [v70 count];
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
      v30 = [v70 objectAtIndexedSubscript:v28];
      v31 = [v30 faceAttributes];
      [v30 boundingBox];
      v33 = v32;
      v34 = [v31 facemaskCategory];
      v35 = [v34 label];
      v36 = [v35 identifier];
      v37 = [v36 isEqualToString:@"UNKNOWN_17_unknown0"];

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
      v43 = *&a12->c;
      *v74 = *&a12->a;
      *&v74[16] = v43;
      v75 = *&a12->tx;
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

      v52 = [v31 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
      v53 = [v52 allLabelsWithConfidences];

      for (i = 0; i < [v53 count]; ++i)
      {
        v55 = [v53 objectAtIndexedSubscript:i];
        [v55 confidence];
        *(p_srlV2FaceHistogramLivePhotos + i) = v56;
      }

      ++v28;
      p_srlV2FaceHistogramLivePhotos += 6;
    }

    while (v28 != v71);
  }

  v57 = [v69 computeCommandEncoder];
  v58 = [(MTLComputePipelineState *)self->_srlV2GlobalHistogramLivePhotos maxTotalThreadsPerThreadgroup];
  v59 = [(MTLComputePipelineState *)self->_srlV2FaceHistogramLivePhotos maxTotalThreadsPerThreadgroup];
  if (v58 >= v59)
  {
    v60 = v59;
  }

  else
  {
    v60 = v58;
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

  [v57 setTexture:v68 atIndex:1];
  [v57 setTexture:v67 atIndex:2];
  [v57 setTexture:v66 atIndex:5];
  [v57 setTexture:v65 atIndex:6];
  [v57 setBytes:v76 length:128 atIndex:0];
  [v57 setBytes:&self[1] length:48 * v71 atIndex:1];
  [v57 setBytes:v87 length:4 atIndex:7];
  [v57 setBytes:&v86 length:4 atIndex:8];
  [v57 setBuffer:self->_srlV2GlobalStatsBuffer offset:0 atIndex:2];
  [v57 setBuffer:self->_srlV2FaceStatsBuffer offset:0 atIndex:3];
  [v57 setBuffer:self->_srlV2CoeffsBuffer offset:0 atIndex:4];
  [v57 setComputePipelineState:self->_srlV2GlobalHistogramLivePhotos];
  *v74 = vdupq_n_s64(1uLL);
  *&v74[16] = 1;
  v72 = 64;
  v73.i64[0] = v63;
  v73.i64[1] = 1;
  [v57 dispatchThreadgroups:v74 threadsPerThreadgroup:&v72];
  [v57 setComputePipelineState:self->_srlV2FaceHistogramLivePhotos];
  v73.i64[1] = 1;
  *v74 = v71;
  *&v74[8] = vdupq_n_s64(1uLL);
  v72 = 64;
  v73.i64[0] = v63;
  [v57 dispatchThreadgroups:v74 threadsPerThreadgroup:&v72];
  [v57 setComputePipelineState:self->_srlV2CalcCoefficientsLivePhotos];
  *v74 = vdupq_n_s64(1uLL);
  *&v74[16] = 1;
  v72 = [(MTLComputePipelineState *)self->_srlV2CalcCoefficientsLivePhotos threadExecutionWidth];
  v73 = vdupq_n_s64(1uLL);
  [v57 dispatchThreadgroups:v74 threadsPerThreadgroup:&v72];
  [v57 endEncoding];

  return 0;
}

@end