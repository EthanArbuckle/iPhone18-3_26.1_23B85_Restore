@interface FigStillDepthProcessorGPU
- (BOOL)allocateResources;
- (FigStillDepthProcessorGPU)init;
- (FigStillDepthProcessorGPU)initWithParameters:(depthProcessorParameters *)a3 commandQueue:(id)a4;
- (id)createTextureOfSize:(CGSize)a3 withFormat:(unint64_t)a4;
- (int)confidenceFalloff;
- (int)erosionOnGpu;
- (int)estimateDisparityQualityScore;
- (int)fastBilateralSolver;
- (int)fastBilateralSolver_PrepareHashTable;
- (int)initF16CVPixelBuffer:(__CVBuffer *)a3 withValue:;
- (int)initSubmodules;
- (int)prewarmWithTuningParameters:(id)a3;
- (int)processDepthBuffer:(__CVBuffer *)a3 yuvBuffer:(__CVBuffer *)a4 parametersDictionary:(id)a5 outputDisparityBuffer:(__CVBuffer *)a6;
- (int)processDepthBuffer:(__CVBuffer *)a3 yuvBuffer:(__CVBuffer *)a4 personSegmentationMaskBuffer:(__CVBuffer *)a5 instanceSegmentationMaskBufferArray:(id)a6 instanceSegmentationConfidences:(id)a7 parametersDictionary:(id)a8 outputDisparityBuffer:(__CVBuffer *)a9;
- (int)processDisparityPipeline;
- (int)sanityCheckParameters;
- (int)setFarDistanceOnGpu;
- (int)setTuningParameters:(id)a3;
- (int)superPixelHoleFilling;
- (void)dealloc;
- (void)releaseResources;
- (void)setInstanceLayerUsage;
@end

@implementation FigStillDepthProcessorGPU

- (int)prewarmWithTuningParameters:(id)a3
{
  v8 = a3;
  if (v8)
  {
    v9 = objc_msgSend_setTuningParameters_(self, v4, v8, v5, v6, v7);
    if (v9)
    {
      sub_2957363C0();
    }
  }

  else
  {
    sub_295736438(&v11);
    v9 = v11;
  }

  return v9;
}

- (int)initSubmodules
{
  if (self->_submodulesInitialized)
  {
    return 0;
  }

  v128 = v5;
  v129 = v4;
  v130 = v2;
  v131 = v3;
  v8 = objc_alloc_init(slicMetalParameters);
  slicMetalParameters = self->_slicMetalParameters;
  self->_slicMetalParameters = v8;

  v17 = self->_slicMetalParameters;
  if (v17)
  {
    LODWORD(v15) = self->_width;
    LODWORD(v16) = self->_height;
    objc_msgSend_setInputImageSize_(v17, v10, v11, v12, v13, v14, v15, v16);
    *&v18 = self->_configuration.slicSuperPixelsSize;
    objc_msgSend_setSuperPixelSize_(self->_slicMetalParameters, v19, v20, v21, v22, v23, v18);
    objc_msgSend_inputImageSize(self->_slicMetalParameters, v24, v25, v26, v27, v28);
    v30 = v29;
    objc_msgSend_superPixelSize(self->_slicMetalParameters, v31, v32, v33, v34, v35);
    v37 = vcvtpd_u64_f64(v30 / v36);
    objc_msgSend_inputImageSize(self->_slicMetalParameters, v38, v39, v40, v41, v42);
    v44 = v43;
    objc_msgSend_superPixelSize(self->_slicMetalParameters, v45, v46, v47, v48, v49);
    v51 = vcvtpd_u64_f64(v44 / v50);
    objc_msgSend_setMapSize_(self->_slicMetalParameters, v52, v53, v54, v55, v56, v37, v51);
    objc_msgSend_setNo_iters_(self->_slicMetalParameters, v57, self->_configuration.slicMaxIters, v58, v59, v60);
    objc_msgSend_superPixelSize(self->_slicMetalParameters, v61, v62, v63, v64, v65);
    LODWORD(v44) = v66;
    objc_msgSend_superPixelSize(self->_slicMetalParameters, v67, v68, v69, v70, v71);
    *&v73 = 1.0 / (*&v44 * v72);
    objc_msgSend_setSlicoInverseWeight_(self->_slicMetalParameters, v74, v75, v76, v77, v78, v73);
    *&v79 = self->_configuration.slicSpatialBias;
    objc_msgSend_setDefaultsSlicoSpatialBias_(self->_slicMetalParameters, v80, v81, v82, v83, v84, v79);
    self->_slicMaxNumSuperPixels = v51 * v37;
    v85 = [SLICMetal alloc];
    v89 = objc_msgSend_initWithParameters_andMetalContext_(v85, v86, self->_slicMetalParameters, self->_metalContext, v87, v88);
    slicMetal = self->_slicMetal;
    self->_slicMetal = v89;

    if (self->_slicMetal)
    {
      v91 = [FFCFiltersMetal alloc];
      v96 = objc_msgSend_initWithMetalContext_(v91, v92, self->_metalContext, v93, v94, v95);
      FFCFilters = self->_FFCFilters;
      self->_FFCFilters = v96;

      if (self->_FFCFilters)
      {
        v98 = [DistanceTransformGpu alloc];
        v102 = objc_msgSend_initWithParameters_metalContext_(v98, v99, &self->_configuration, self->_metalContext, v100, v101);
        distanceTransformProcessing = self->_distanceTransformProcessing;
        self->_distanceTransformProcessing = v102;

        if (self->_distanceTransformProcessing)
        {
          v104 = [SuperPixelHoleFillMetal alloc];
          v109 = objc_msgSend_initWithMetalContext_(v104, v105, self->_metalContext, v106, v107, v108);
          superPixelHoleFillMetal = self->_superPixelHoleFillMetal;
          self->_superPixelHoleFillMetal = v109;

          if (self->_superPixelHoleFillMetal)
          {
            v111 = [BilateralGridHash alloc];
            v114 = objc_msgSend_initWithWidth_height_maxHashTableSize_(v111, v112, self->_width, self->_height, self->_configuration.bilateralSolverMaxHashTableSize, v113);
            bilateralGridProcessing = self->_bilateralGridProcessing;
            self->_bilateralGridProcessing = v114;

            if (self->_bilateralGridProcessing)
            {
              v116 = [BilateralSolverGPU alloc];
              v118 = objc_msgSend_initWithWidth_height_maxVertices_metalContext_(v116, v117, self->_width, self->_height, self->_configuration.bilateralSolverMaxHashTableSize, self->_metalContext);
              bilateralSolverGPUProcessing = self->_bilateralSolverGPUProcessing;
              self->_bilateralSolverGPUProcessing = v118;

              if (self->_bilateralSolverGPUProcessing)
              {
                v120 = [DepthProcUtilitiesMetal alloc];
                v125 = objc_msgSend_initWithMetalContext_(v120, v121, self->_metalContext, v122, v123, v124);
                DepthProcUtilMetal = self->_DepthProcUtilMetal;
                self->_DepthProcUtilMetal = v125;

                if (self->_DepthProcUtilMetal)
                {
                  result = 0;
                  self->_submodulesInitialized = 1;
                  return result;
                }

                sub_2957364E4(&v127);
              }

              else
              {
                sub_295736590(&v127);
              }
            }

            else
            {
              sub_29573663C(&v127);
            }
          }

          else
          {
            sub_2957366E8(&v127);
          }
        }

        else
        {
          sub_295736794(&v127);
        }
      }

      else
      {
        sub_295736840(&v127);
      }
    }

    else
    {
      sub_2957368EC(&v127);
    }
  }

  else
  {
    sub_295736998(&v127);
  }

  return v127;
}

- (int)setTuningParameters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ((sub_29572C214(v4, &self->_configuration, self->_height, self->_width) & 1) == 0)
    {
      sub_295736A44(v18);
      inited = v18[0];
      goto LABEL_7;
    }
  }

  else
  {
    sub_29571779C(self->_width, self->_height, v18);
    v12 = v18[9];
    *&self->_configuration.setFarDistance.furthestDisparity = v18[8];
    *&self->_configuration.confidenceFalloffMaxDist = v12;
    *&self->_configuration.bilateralSolverSigmaChromaRange = v18[10];
    v13 = v18[5];
    *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[3] = v18[4];
    *&self->_configuration.superPixelHoleFillParameters.holeFill.fractionValidThreshold = v13;
    v14 = v18[7];
    *&self->_configuration.superPixelHoleFillParameters.confidence.sigmaDepth = v18[6];
    *&self->_configuration.slicSuperPixelsSize = v14;
    v15 = v18[1];
    self->_configuration.distanceTransformParameters = v18[0];
    self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams = v15;
    v16 = v18[3];
    *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.colorSigma = v18[2];
    *&self->_configuration.disparityQualityThreshold = v19;
    *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers = v16;
  }

  inited = objc_msgSend_initSubmodules(self, v6, v7, v8, v9, v10);
  if (inited)
  {
    sub_295736AF0();
  }

LABEL_7:

  return inited;
}

- (FigStillDepthProcessorGPU)init
{
  v10 = 0;
  v9 = xmmword_295743050;
  v3 = [FigStillDepthProcessorGPU alloc];
  v7 = objc_msgSend_initWithParameters_commandQueue_(v3, v4, &v9, 0, v5, v6);

  return v7;
}

- (FigStillDepthProcessorGPU)initWithParameters:(depthProcessorParameters *)a3 commandQueue:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    sub_295736CE8();
    goto LABEL_7;
  }

  if (!a3->var0)
  {
    sub_295736C6C();
LABEL_14:
    a3 = 0;
    goto LABEL_7;
  }

  if (!a3->var1)
  {
    sub_295736BF0();
    goto LABEL_14;
  }

  v35.receiver = self;
  v35.super_class = FigStillDepthProcessorGPU;
  v7 = [(FigStillDepthProcessorGPU *)&v35 init];
  if (!v7)
  {
    a3 = 0;
    goto LABEL_9;
  }

  self = v7;
  v8 = MEMORY[0x29EDB9F48];
  v9 = objc_opt_class();
  v14 = objc_msgSend_bundleForClass_(v8, v10, v9, v11, v12, v13);
  v15 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v15, v16, v14, v6, v17, v18);
  metalContext = self->_metalContext;
  self->_metalContext = inited;

  if (!self->_metalContext)
  {
    sub_295736B6C(v14);
    goto LABEL_14;
  }

  var0 = a3->var0;
  self->_width = a3->var0;
  var1 = a3->var1;
  self->_height = var1;
  sub_29571779C(var0, var1, v33);
  v23 = v33[8];
  v24 = v33[9];
  v25 = v33[10];
  *&self->_configuration.disparityQualityThreshold = v34;
  v26 = v33[0];
  v27 = v33[1];
  v28 = v33[2];
  *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers = v33[3];
  *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.colorSigma = v28;
  self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams = v27;
  self->_configuration.distanceTransformParameters = v26;
  v29 = v33[4];
  v30 = v33[5];
  v31 = v33[6];
  *&self->_configuration.slicSuperPixelsSize = v33[7];
  *&self->_configuration.superPixelHoleFillParameters.confidence.sigmaDepth = v31;
  *&self->_configuration.superPixelHoleFillParameters.holeFill.fractionValidThreshold = v30;
  *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[3] = v29;
  *&self->_configuration.bilateralSolverSigmaChromaRange = v25;
  *&self->_configuration.confidenceFalloffMaxDist = v24;
  *&self->_configuration.setFarDistance.furthestDisparity = v23;
  self = self;

  a3 = self;
LABEL_7:

LABEL_9:
  return a3;
}

- (BOOL)allocateResources
{
  if (self->_submodulesInitialized)
  {
    if (self->_resourcesAllocated)
    {
      return 1;
    }

    width = self->_width;
    height = self->_height;
    PixelBuffer = CreatePixelBuffer();
    self->_preprocessedDisparity = PixelBuffer;
    if (PixelBuffer)
    {
      v7 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v6, PixelBuffer, 25, 23, 0);
      preprocessedDisparityTexture = self->_preprocessedDisparityTexture;
      self->_preprocessedDisparityTexture = v7;

      if (self->_preprocessedDisparityTexture)
      {
        v13 = objc_msgSend_createTextureOfSize_withFormat_(self, v9, 25, v10, v11, v12, width, height);
        validForegroundMaskTexture = self->_validForegroundMaskTexture;
        self->_validForegroundMaskTexture = v13;

        if (self->_validForegroundMaskTexture)
        {
          v19 = objc_msgSend_createTextureOfSize_withFormat_(self, v15, 25, v16, v17, v18, width, height);
          distanceTransformDisparityTexture = self->_distanceTransformDisparityTexture;
          self->_distanceTransformDisparityTexture = v19;

          if (self->_distanceTransformDisparityTexture)
          {
            v25 = objc_msgSend_createTextureOfSize_withFormat_(self, v21, 25, v22, v23, v24, width, height);
            distanceTransformMapTexture = self->_distanceTransformMapTexture;
            self->_distanceTransformMapTexture = v25;

            if (self->_distanceTransformMapTexture)
            {
              v27 = self->_width;
              v28 = self->_height;
              v29 = CreatePixelBuffer();
              self->_confidenceMap = v29;
              if (v29)
              {
                v31 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v30, v29, 25, 23, 0);
                confidenceMapTexture = self->_confidenceMapTexture;
                self->_confidenceMapTexture = v31;

                if (self->_confidenceMapTexture)
                {
                  v37 = objc_msgSend_createTextureOfSize_withFormat_(self, v33, 25, v34, v35, v36, width, height);
                  invalidConfidenceMaskTexture = self->_invalidConfidenceMaskTexture;
                  self->_invalidConfidenceMaskTexture = v37;

                  if (self->_invalidConfidenceMaskTexture)
                  {
                    v43 = objc_msgSend_createTextureOfSize_withFormat_(self, v39, 55, v40, v41, v42, width, height);
                    bilateralInvZBufferInTexture = self->_bilateralInvZBufferInTexture;
                    self->_bilateralInvZBufferInTexture = v43;

                    if (self->_bilateralInvZBufferInTexture)
                    {
                      v49 = objc_msgSend_createTextureOfSize_withFormat_(self, v45, 55, v46, v47, v48, width, height);
                      bilateralConfMapFloat32Texture = self->_bilateralConfMapFloat32Texture;
                      self->_bilateralConfMapFloat32Texture = v49;

                      if (self->_bilateralConfMapFloat32Texture)
                      {
                        v55 = objc_msgSend_createTextureOfSize_withFormat_(self, v51, 55, v52, v53, v54, width, height);
                        bilateralInvZBufferOutTexture = self->_bilateralInvZBufferOutTexture;
                        self->_bilateralInvZBufferOutTexture = v55;

                        if (self->_bilateralInvZBufferOutTexture)
                        {
                          v61 = objc_msgSend_createTextureOfSize_withFormat_(self, v57, 25, v58, v59, v60, width, height);
                          bilateralDisparityTexture = self->_bilateralDisparityTexture;
                          self->_bilateralDisparityTexture = v61;

                          if (self->_bilateralDisparityTexture)
                          {
                            v67 = objc_msgSend_createTextureOfSize_withFormat_(self, v63, 25, v64, v65, v66, width, height);
                            superPixelHoleFillDisparityTexture = self->_superPixelHoleFillDisparityTexture;
                            self->_superPixelHoleFillDisparityTexture = v67;

                            if (self->_superPixelHoleFillDisparityTexture)
                            {
                              v73 = objc_msgSend_createTextureOfSize_withFormat_(self, v69, 25, v70, v71, v72, width, height);
                              superPixelHoleFillConfidenceTexture = self->_superPixelHoleFillConfidenceTexture;
                              self->_superPixelHoleFillConfidenceTexture = v73;

                              if (self->_superPixelHoleFillConfidenceTexture)
                              {
                                v79 = objc_msgSend_createTextureOfSize_withFormat_(self, v75, 25, v76, v77, v78, width, height);
                                imerodeConfidenceMapTexture = self->_imerodeConfidenceMapTexture;
                                self->_imerodeConfidenceMapTexture = v79;

                                if (self->_imerodeConfidenceMapTexture)
                                {
                                  objc_msgSend_inputImageSize(self->_slicMetalParameters, v81, v82, v83, v84, v85);
                                  v90 = objc_msgSend_createTextureOfSize_withFormat_(self, v86, 70, v87, v88, v89);
                                  slicRgbaTexture = self->_slicRgbaTexture;
                                  self->_slicRgbaTexture = v90;

                                  if (self->_slicRgbaTexture)
                                  {
                                    objc_msgSend_mapSize(self->_slicMetalParameters, v92, v93, v94, v95, v96);
                                    v101 = objc_msgSend_createTextureOfSize_withFormat_(self, v97, 125, v98, v99, v100);
                                    slicSpixelCentersIdAndNPixelsTexture = self->_slicSpixelCentersIdAndNPixelsTexture;
                                    self->_slicSpixelCentersIdAndNPixelsTexture = v101;

                                    if (self->_slicSpixelCentersIdAndNPixelsTexture)
                                    {
                                      objc_msgSend_mapSize(self->_slicMetalParameters, v103, v104, v105, v106, v107);
                                      v112 = objc_msgSend_createTextureOfSize_withFormat_(self, v108, 70, v109, v110, v111);
                                      slicSpixelColorTexture = self->_slicSpixelColorTexture;
                                      self->_slicSpixelColorTexture = v112;

                                      if (self->_slicSpixelColorTexture)
                                      {
                                        objc_msgSend_inputImageSize(self->_slicMetalParameters, v114, v115, v116, v117, v118);
                                        v123 = objc_msgSend_createTextureOfSize_withFormat_(self, v119, 23, v120, v121, v122);
                                        slicIdxImgTexture = self->_slicIdxImgTexture;
                                        self->_slicIdxImgTexture = v123;

                                        if (self->_slicIdxImgTexture)
                                        {
                                          if (objc_msgSend_allocateResources(self->_distanceTransformProcessing, v125, v126, v127, v128, v129))
                                          {
                                            sub_295736E14();
                                          }

                                          else if (objc_msgSend_allocateResources(self->_slicMetal, v130, v131, v132, v133, v134))
                                          {
                                            sub_295736E90();
                                          }

                                          else if (objc_msgSend_allocateResources_(self->_superPixelHoleFillMetal, v135, self->_slicMaxNumSuperPixels, v136, v137, v138))
                                          {
                                            sub_295736F0C();
                                          }

                                          else if (objc_msgSend_allocateResources(self->_DepthProcUtilMetal, v139, v140, v141, v142, v143))
                                          {
                                            sub_295736F88();
                                          }

                                          else
                                          {
                                            self->_resourcesAllocated = 1;
                                          }
                                        }

                                        else
                                        {
                                          sub_295737004();
                                        }
                                      }

                                      else
                                      {
                                        sub_2957370B4();
                                      }
                                    }

                                    else
                                    {
                                      sub_295737164();
                                    }
                                  }

                                  else
                                  {
                                    sub_295737214();
                                  }
                                }

                                else
                                {
                                  sub_2957372C4();
                                }
                              }

                              else
                              {
                                sub_295737374();
                              }
                            }

                            else
                            {
                              sub_295737424();
                            }
                          }

                          else
                          {
                            sub_2957374D4();
                          }
                        }

                        else
                        {
                          sub_295737584();
                        }
                      }

                      else
                      {
                        sub_295737634();
                      }
                    }

                    else
                    {
                      sub_2957376E4();
                    }
                  }

                  else
                  {
                    sub_295737794();
                  }
                }

                else
                {
                  sub_295737844();
                }
              }

              else
              {
                sub_2957378F4();
              }
            }

            else
            {
              sub_2957379A4();
            }
          }

          else
          {
            sub_295737A54();
          }
        }

        else
        {
          sub_295737B04();
        }
      }

      else
      {
        sub_295737BB4();
      }
    }

    else
    {
      sub_295737C64();
    }
  }

  else
  {
    sub_295736D64();
  }

  if (!self->_resourcesAllocated)
  {
    objc_msgSend_releaseResources(self, v144, v145, v146, v147, v148);
    return self->_resourcesAllocated;
  }

  return 1;
}

- (int)processDepthBuffer:(__CVBuffer *)a3 yuvBuffer:(__CVBuffer *)a4 parametersDictionary:(id)a5 outputDisparityBuffer:(__CVBuffer *)a6
{
  v9 = a5;
  *&self->_disparityQualityScore = 0;
  self->_disparityQualityIsHigh = 0;
  if (!self->_submodulesInitialized)
  {
    sub_295737D14(&v28);
LABEL_35:
    v26 = v28;
    goto LABEL_30;
  }

  if (!self->_resourcesAllocated)
  {
    sub_295737DC0(&v28);
    goto LABEL_35;
  }

  self->_disparityInputBuffer = a3;
  self->_disparityOutputBuffer = a6;
  if (!a3)
  {
    sub_295738398(&v28);
    goto LABEL_40;
  }

  if (!a6)
  {
    sub_2957382EC(&v28);
    goto LABEL_40;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1751411059 && CVPixelBufferGetPixelFormatType(self->_disparityInputBuffer) != 1717856627 && CVPixelBufferGetPixelFormatType(self->_disparityInputBuffer) != 1751410032 && CVPixelBufferGetPixelFormatType(self->_disparityInputBuffer) != 1717855600)
  {
    sub_295737E6C(&v28);
    goto LABEL_40;
  }

  if (CVPixelBufferGetPixelFormatType(self->_disparityOutputBuffer) != 1751411059 && CVPixelBufferGetPixelFormatType(self->_disparityOutputBuffer) != 1717856627 && CVPixelBufferGetPixelFormatType(self->_disparityOutputBuffer) != 1751410032 && CVPixelBufferGetPixelFormatType(self->_disparityOutputBuffer) != 1717855600)
  {
    sub_295737F18(&v28);
LABEL_40:
    if (!v28)
    {
      goto LABEL_29;
    }

LABEL_41:
    v26 = 4;
    goto LABEL_30;
  }

  if (!CVPixelBufferGetWidth(self->_disparityInputBuffer) || !CVPixelBufferGetHeight(self->_disparityInputBuffer))
  {
    sub_295738240(&v28);
    goto LABEL_40;
  }

  if (!CVPixelBufferGetWidth(self->_disparityOutputBuffer) || !CVPixelBufferGetHeight(self->_disparityOutputBuffer))
  {
    sub_295738194(&v28);
    goto LABEL_40;
  }

  if (CVPixelBufferGetPixelFormatType(self->_disparityInputBuffer) == 1751411059 || CVPixelBufferGetPixelFormatType(self->_disparityInputBuffer) == 1751410032)
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v10, self->_disparityInputBuffer, 25, 17, 0);
  }

  else
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v10, self->_disparityInputBuffer, 55, 17, 0);
  }
  v11 = ;
  disparityInputTexture = self->_disparityInputTexture;
  self->_disparityInputTexture = v11;

  if (CVPixelBufferGetPixelFormatType(self->_disparityOutputBuffer) == 1751411059 || CVPixelBufferGetPixelFormatType(self->_disparityOutputBuffer) == 1751410032)
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v13, self->_disparityOutputBuffer, 25, 22, 0);
  }

  else
  {
    objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v13, self->_disparityOutputBuffer, 55, 22, 0);
  }
  v14 = ;
  disparityOutputTexture = self->_disparityOutputTexture;
  self->_disparityOutputTexture = v14;

  v19 = self->_disparityInputTexture;
  if (!v19)
  {
    sub_2957380E8(&v28);
    goto LABEL_40;
  }

  v20 = self->_disparityOutputTexture;
  if (!v20)
  {
    sub_29573803C(&v28);
    goto LABEL_40;
  }

  if (objc_msgSend_boxFilter11x11From_To_(self->_FFCFilters, v16, v19, v20, v17, v18))
  {
    sub_295737FC4();
    goto LABEL_41;
  }

  objc_msgSend_waitForSchedule(self->_metalContext, v21, v22, v23, v24, v25);
LABEL_29:
  v26 = 0;
LABEL_30:

  return v26;
}

- (int)processDepthBuffer:(__CVBuffer *)a3 yuvBuffer:(__CVBuffer *)a4 personSegmentationMaskBuffer:(__CVBuffer *)a5 instanceSegmentationMaskBufferArray:(id)a6 instanceSegmentationConfidences:(id)a7 parametersDictionary:(id)a8 outputDisparityBuffer:(__CVBuffer *)a9
{
  v16 = a6;
  v17 = a7;
  v18 = a8;
  *&self->_disparityQualityScore = 0;
  self->_disparityQualityIsHigh = 0;
  if (!self->_submodulesInitialized)
  {
    sub_295738444(&v78);
LABEL_28:
    v76 = v78;
    goto LABEL_21;
  }

  if (!self->_resourcesAllocated)
  {
    sub_2957384F0(&v78);
    goto LABEL_28;
  }

  objc_storeStrong(&self->_instanceSegmentationInputBufferArray, a6);
  self->_yuvInputBuffer = a4;
  self->_disparityInputBuffer = a3;
  self->_personSegmentationMaskInputBuffer = a5;
  self->_disparityOutputBuffer = a9;
  if (objc_msgSend_sanityCheckParameters(self, v19, v20, v21, v22, v23))
  {
    sub_29573859C();
LABEL_24:
    v76 = 4;
    goto LABEL_21;
  }

  if (!v17)
  {
    sub_295738C30(&v78);
    goto LABEL_23;
  }

  if (objc_msgSend_count(v17, v24, v25, v26, v27, v28) < 4)
  {
    sub_295738B84(&v78);
    goto LABEL_23;
  }

  for (i = 0; i != 4; ++i)
  {
    v34 = objc_msgSend_objectAtIndexedSubscript_(v17, v29, i, v30, v31, v32);

    if (!v34)
    {
      sub_295738AD8(&v78);
      goto LABEL_23;
    }
  }

  v35 = 280;
  v36 = 86;
  do
  {
    v37 = objc_msgSend_objectAtIndexedSubscript_(self->_instanceSegmentationInputBufferArray, v29, v36 - 86, v30, v31, v32);
    *(&self->super.isa + v35) = v37;

    v39 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v38, *(&self->super.isa + v35), 25, 17, 0);
    v40 = *(&self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams.k + v35);
    *(&self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams.k + v35) = v39;

    v45 = objc_msgSend_objectAtIndexedSubscript_(v17, v41, v36 - 86, v42, v43, v44);
    objc_msgSend_floatValue(v45, v46, v47, v48, v49, v50);
    *(&self->super.isa + v36) = v51;

    v35 += 8;
    ++v36;
  }

  while (v35 != 312);
  objc_msgSend_setInstanceLayerUsage(self, v29, v52, v30, v31, v32);
  metalContext = self->_metalContext;
  if (self->_configuration.setFarDistance.useBestInstanceForPersonSegmentation)
  {
    v55 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v53, self->_instanceSegmentationInputBuffer[self->_sortedInstanceLayerIndex[3]], 25, 17, 0);
    personSegmentationMaskInputTexture = self->_personSegmentationMaskInputTexture;
    self->_personSegmentationMaskInputTexture = v55;

    if (!self->_personSegmentationMaskInputTexture)
    {
      sub_295738654(&v78);
      goto LABEL_23;
    }
  }

  else
  {
    v58 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(metalContext, v53, self->_personSegmentationMaskInputBuffer, 25, 17, 0);
    v59 = self->_personSegmentationMaskInputTexture;
    self->_personSegmentationMaskInputTexture = v58;

    if (!self->_personSegmentationMaskInputTexture)
    {
      sub_295738A2C(&v78);
LABEL_23:
      if (!v78)
      {
        v76 = 0;
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  v60 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v57, self->_yuvInputBuffer, 10, 17, 0);
  yuvInputLumaTexture = self->_yuvInputLumaTexture;
  self->_yuvInputLumaTexture = v60;

  if (!self->_yuvInputLumaTexture)
  {
    sub_295738980(&v78);
    goto LABEL_23;
  }

  v63 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v62, self->_yuvInputBuffer, 30, 17, 1);
  yuvInputChromaTexture = self->_yuvInputChromaTexture;
  self->_yuvInputChromaTexture = v63;

  if (!self->_yuvInputChromaTexture)
  {
    sub_2957388D4(&v78);
    goto LABEL_23;
  }

  objc_storeStrong(&self->_metadataDictionary, a8);
  v66 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v65, self->_disparityOutputBuffer, 25, 22, 0);
  disparityOutputTexture = self->_disparityOutputTexture;
  self->_disparityOutputTexture = v66;

  if (!self->_disparityOutputTexture)
  {
    sub_295738828(&v78);
    goto LABEL_23;
  }

  v69 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v68, self->_disparityInputBuffer, 25, 17, 0);
  disparityInputTexture = self->_disparityInputTexture;
  self->_disparityInputTexture = v69;

  if (!self->_disparityInputTexture)
  {
    sub_29573877C(&v78);
    goto LABEL_23;
  }

  v76 = objc_msgSend_processDisparityPipeline(self, v71, v72, v73, v74, v75);
  if (v76)
  {
    sub_295738700();
  }

LABEL_21:

  return v76;
}

- (void)releaseResources
{
  objc_msgSend_waitForIdle(self->_metalContext, a2, v2, v3, v4, v5);
  yuvInputLumaTexture = self->_yuvInputLumaTexture;
  *&self->_yuvInputBuffer = 0u;

  yuvInputChromaTexture = self->_yuvInputChromaTexture;
  self->_yuvInputChromaTexture = 0;

  disparityInputTexture = self->_disparityInputTexture;
  *&self->_disparityInputBuffer = 0u;

  disparityOutputTexture = self->_disparityOutputTexture;
  *&self->_disparityOutputBuffer = 0u;

  personSegmentationMaskInputTexture = self->_personSegmentationMaskInputTexture;
  *&self->_personSegmentationMaskInputBuffer = 0u;

  instanceSegmentationInputTexture = self->_instanceSegmentationInputTexture;
  v13 = 4;
  do
  {
    *(instanceSegmentationInputTexture - 4) = 0;
    v14 = *instanceSegmentationInputTexture;
    *instanceSegmentationInputTexture++ = 0;

    --v13;
  }

  while (v13);
  preprocessedDisparity = self->_preprocessedDisparity;
  if (preprocessedDisparity)
  {
    CFRelease(preprocessedDisparity);
    self->_preprocessedDisparity = 0;
  }

  preprocessedDisparityTexture = self->_preprocessedDisparityTexture;
  self->_preprocessedDisparityTexture = 0;

  validForegroundMaskTexture = self->_validForegroundMaskTexture;
  self->_validForegroundMaskTexture = 0;

  distanceTransformDisparityTexture = self->_distanceTransformDisparityTexture;
  self->_distanceTransformDisparityTexture = 0;

  distanceTransformMapTexture = self->_distanceTransformMapTexture;
  self->_distanceTransformMapTexture = 0;

  confidenceMap = self->_confidenceMap;
  if (confidenceMap)
  {
    CFRelease(confidenceMap);
    self->_confidenceMap = 0;
  }

  confidenceMapTexture = self->_confidenceMapTexture;
  self->_confidenceMapTexture = 0;

  invalidConfidenceMaskTexture = self->_invalidConfidenceMaskTexture;
  self->_invalidConfidenceMaskTexture = 0;

  imerodeConfidenceMapTexture = self->_imerodeConfidenceMapTexture;
  self->_imerodeConfidenceMapTexture = 0;

  bilateralInvZBufferInTexture = self->_bilateralInvZBufferInTexture;
  self->_bilateralInvZBufferInTexture = 0;

  bilateralConfMapFloat32Texture = self->_bilateralConfMapFloat32Texture;
  self->_bilateralConfMapFloat32Texture = 0;

  bilateralInvZBufferOutTexture = self->_bilateralInvZBufferOutTexture;
  self->_bilateralInvZBufferOutTexture = 0;

  bilateralDisparityTexture = self->_bilateralDisparityTexture;
  self->_bilateralDisparityTexture = 0;

  slicRgbaTexture = self->_slicRgbaTexture;
  self->_slicRgbaTexture = 0;

  slicSpixelCentersIdAndNPixelsTexture = self->_slicSpixelCentersIdAndNPixelsTexture;
  self->_slicSpixelCentersIdAndNPixelsTexture = 0;

  slicSpixelColorTexture = self->_slicSpixelColorTexture;
  self->_slicSpixelColorTexture = 0;

  superPixelHoleFillDisparityTexture = self->_superPixelHoleFillDisparityTexture;
  self->_superPixelHoleFillDisparityTexture = 0;

  superPixelHoleFillConfidenceTexture = self->_superPixelHoleFillConfidenceTexture;
  self->_superPixelHoleFillConfidenceTexture = 0;

  distanceTransformProcessing = self->_distanceTransformProcessing;
  self->_distanceTransformProcessing = 0;

  slicMetalParameters = self->_slicMetalParameters;
  self->_slicMetalParameters = 0;

  slicMetal = self->_slicMetal;
  self->_slicMetal = 0;

  superPixelHoleFillMetal = self->_superPixelHoleFillMetal;
  self->_superPixelHoleFillMetal = 0;

  bilateralGridProcessing = self->_bilateralGridProcessing;
  self->_bilateralGridProcessing = 0;

  bilateralSolverGPUProcessing = self->_bilateralSolverGPUProcessing;
  self->_bilateralSolverGPUProcessing = 0;

  FFCFilters = self->_FFCFilters;
  self->_FFCFilters = 0;

  DepthProcUtilMetal = self->_DepthProcUtilMetal;
  self->_DepthProcUtilMetal = 0;

  *&self->_submodulesInitialized = 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = FigStillDepthProcessorGPU;
  [(FigStillDepthProcessorGPU *)&v7 dealloc];
}

- (int)processDisparityPipeline
{
  *&v3 = self->_configuration.confidenceSeedValue;
  if (objc_msgSend_preprocessData_inputDisparity_outputDisparity_outputConfidence_(self->_DepthProcUtilMetal, a2, self->_disparityInputTexture, self->_preprocessedDisparityTexture, self->_confidenceMapTexture, v2, v3))
  {
    sub_295738CDC();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  objc_msgSend_waitForSchedule(self->_metalContext, v5, v6, v7, v8, v9);
  if (objc_msgSend_estimateDisparityQualityScore(self, v10, v11, v12, v13, v14))
  {
    sub_295738D88();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  if (self->_disparityQualityScore <= 0.03)
  {
    sub_2957394EC(&brightnessCorrectionParams);
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  if (objc_msgSend_erosionOnGpu(self, v15, v16, v17, v18, v19))
  {
    sub_295738E34();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  superPixelHoleFillMetal = self->_superPixelHoleFillMetal;
  yuvInputLumaTexture = self->_yuvInputLumaTexture;
  yuvInputChromaTexture = self->_yuvInputChromaTexture;
  slicRgbaTexture = self->_slicRgbaTexture;
  v25 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[3];
  v112 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers;
  v113 = v25;
  v26 = *&self->_configuration.superPixelHoleFillParameters.confidence.sigmaDepth;
  v114 = *&self->_configuration.superPixelHoleFillParameters.holeFill.fractionValidThreshold;
  v115 = v26;
  v27 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.colorSigma;
  brightnessCorrectionParams = self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams;
  v111 = v27;
  if (objc_msgSend_convertFrom420fPixelBuffer_lumaTexture_chromaTexture_toSlicRgbaTexture_(superPixelHoleFillMetal, v20, &brightnessCorrectionParams, yuvInputLumaTexture, yuvInputChromaTexture, slicRgbaTexture))
  {
    sub_295738EE0();
    return 0;
  }

  objc_msgSend_defaultsSlicoSpatialBias(self->_slicMetalParameters, v28, v29, v30, v31, v32);
  brightnessCorrectionParams.doBrightnessCorrection = v33;
  if (objc_msgSend_processSLICToOutputSPixelCentersIdsAndCounts_outputSPixelColor_outputIndexes_inputImage_parameters_(self->_slicMetal, v34, self->_slicSpixelCentersIdAndNPixelsTexture, self->_slicSpixelColorTexture, self->_slicIdxImgTexture, self->_slicRgbaTexture, &brightnessCorrectionParams))
  {
    sub_295738F8C();
    return 0;
  }

  objc_msgSend_fastBilateralSolver_PrepareHashTable(self, v35, v36, v37, v38, v39);
  objc_msgSend_waitForSchedule(self->_metalContext, v40, v41, v42, v43, v44);
  v45 = self->_superPixelHoleFillMetal;
  v46 = self->_slicRgbaTexture;
  slicIdxImgTexture = self->_slicIdxImgTexture;
  personSegmentationMaskInputTexture = self->_personSegmentationMaskInputTexture;
  v49 = self->_instanceSegmentationInputTexture[0];
  v50 = self->_instanceSegmentationInputTexture[1];
  v51 = self->_instanceSegmentationInputTexture[2];
  v52 = self->_instanceSegmentationInputTexture[3];
  v53 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[3];
  v112 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers;
  v113 = v53;
  v54 = *&self->_configuration.superPixelHoleFillParameters.confidence.sigmaDepth;
  v114 = *&self->_configuration.superPixelHoleFillParameters.holeFill.fractionValidThreshold;
  v115 = v54;
  v55 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.colorSigma;
  brightnessCorrectionParams = self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams;
  v111 = v55;
  if (objc_msgSend_computeStage0_inImageTexture_inLabelTexture_inPersonMaskTexture_inInstanceSegmentationLayer0Texture_inInstanceSegmentationLayer1Texture_inInstanceSegmentationLayer2Texture_inInstanceSegmentationLayer3Texture_(v45, v56, &brightnessCorrectionParams, v46, slicIdxImgTexture, personSegmentationMaskInputTexture, v49, v50, v51, v52))
  {
    sub_295739038();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  v62 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  objc_msgSend_computeCoordIndices(self->_bilateralGridProcessing, v57, v58, v59, v60, v61);
  if (*v62 == 1)
  {
    kdebug_trace();
    if (*v62 == 1)
    {
      kdebug_trace();
    }
  }

  objc_msgSend_computeInterpIndices(self->_bilateralGridProcessing, v63, v64, v65, v66, v67);
  if (*v62 == 1)
  {
    kdebug_trace();
  }

  objc_msgSend_waitForSchedule(self->_metalContext, v68, v69, v70, v71, v72);
  *&v73 = self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.minPersonSegmentation;
  if (objc_msgSend_makeForegroundMask_personSegmentationMap_validForegroundMask_minSegmentationThreshold_(self->_DepthProcUtilMetal, v74, self->_confidenceMapTexture, self->_personSegmentationMaskInputTexture, self->_validForegroundMaskTexture, v75, v73))
  {
    sub_2957390E4();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  if (objc_msgSend_setFarDistanceOnGpu(self, v76, v77, v78, v79, v80))
  {
    sub_295739190();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  objc_msgSend_waitForSchedule(self->_metalContext, v81, v82, v83, v84, v85);
  if (objc_msgSend_confidenceFalloff(self, v86, v87, v88, v89, v90))
  {
    sub_29573923C();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  if (objc_msgSend_superPixelHoleFilling(self, v91, v92, v93, v94, v95))
  {
    sub_2957392E8();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  if (objc_msgSend_fastBilateralSolver(self, v96, v97, v98, v99, v100))
  {
    sub_295739394();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  if (objc_msgSend_boxFilterFrom_To_(self->_FFCFilters, v101, self->_bilateralDisparityTexture, self->_disparityOutputTexture, v102, v103))
  {
    sub_295739440();
    return brightnessCorrectionParams.doBrightnessCorrection;
  }

  objc_msgSend_waitForSchedule(self->_metalContext, v104, v105, v106, v107, v108);
  return 0;
}

- (int)erosionOnGpu
{
  v5 = objc_msgSend_erosionFilterFrom_To_(self->_FFCFilters, a2, self->_confidenceMapTexture, self->_imerodeConfidenceMapTexture, v2, v3);
  if (v5)
  {
    v8 = v5;
    sub_295739598();
  }

  else
  {
    v8 = objc_msgSend_postErosion_outputConfidence_outputDisparity_(self->_DepthProcUtilMetal, v6, self->_imerodeConfidenceMapTexture, self->_confidenceMapTexture, self->_preprocessedDisparityTexture, v7);
    if (v8)
    {
      sub_295739614();
    }
  }

  return v8;
}

- (int)setFarDistanceOnGpu
{
  if (objc_msgSend_computeDistanceWithTexture_distance_waitForScheduled_(self->_distanceTransformProcessing, a2, self->_validForegroundMaskTexture, self->_distanceTransformMapTexture, 0, v2))
  {
    sub_295739690();
    return v7;
  }

  else
  {
    v5 = objc_msgSend_setFarWithDistance_inputDistanceTransformMap_inputDisparity_inoutConfidenceMap_outputDistanceTransformDisparity_(self->_DepthProcUtilMetal, v4, *&self->_configuration.setFarDistance.maxDistance, *&self->_configuration.setFarDistance.confidence, self->_distanceTransformMapTexture, self->_preprocessedDisparityTexture, self->_confidenceMapTexture, self->_distanceTransformDisparityTexture);
    if (v5)
    {
      sub_29573973C();
    }
  }

  return v5;
}

- (int)confidenceFalloff
{
  v5 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  Mask_value_outputBuffer = objc_msgSend_buildFindMask_value_outputBuffer_(self->_DepthProcUtilMetal, a2, self->_confidenceMapTexture, self->_invalidConfidenceMaskTexture, v2, v3, 0.0);
  if (Mask_value_outputBuffer)
  {
    sub_2957397B8();
  }

  else
  {
    v9 = objc_msgSend_computeDistanceWithTexture_distance_waitForScheduled_(self->_distanceTransformProcessing, v6, self->_invalidConfidenceMaskTexture, self->_distanceTransformMapTexture, 0, v7);
    if (v9)
    {
      v11 = v9;
      sub_295739834();
      Mask_value_outputBuffer = v11;
    }
  }

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return Mask_value_outputBuffer;
}

- (void)setInstanceLayerUsage
{
  *self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer = 0;
  minInstanceLayerConfidence = self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.minInstanceLayerConfidence;
  maxNumberOfInstanceLayers = self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers;
  *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[2] = 0;
  *self->_sortedInstanceLayerIndex = xmmword_295743040;
  instanceSegmentationInputConfidence = self->_instanceSegmentationInputConfidence;
  v5 = 1;
  v6 = 3;
  do
  {
    v7 = self->_sortedInstanceLayerIndex[0];
    v8 = v6;
    v9 = &self->_sortedInstanceLayerIndex[1];
    do
    {
      v10 = *v9;
      if (instanceSegmentationInputConfidence[v7] >= instanceSegmentationInputConfidence[v10])
      {
        *(v9 - 1) = v10;
        *v9 = v7;
      }

      else
      {
        v7 = *v9;
      }

      ++v9;
      --v8;
    }

    while (v8);
    ++v5;
    --v6;
  }

  while (v5 != 4);
  if (maxNumberOfInstanceLayers >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = self->_sortedInstanceLayerIndex[v11 + 3];
      if (instanceSegmentationInputConfidence[v13] >= minInstanceLayerConfidence)
      {
        self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[v13] = 1;
        ++v12;
      }

      if (v11 == -3)
      {
        break;
      }

      --v11;
    }

    while (v12 < maxNumberOfInstanceLayers);
  }
}

- (int)superPixelHoleFilling
{
  *&v2 = self->_configuration.confidenceFalloffMaxDist;
  *&v3 = (*&v2 * self->_configuration.confidenceFalloffSigma) * ((*&v2 * self->_configuration.confidenceFalloffSigma) + (*&v2 * self->_configuration.confidenceFalloffSigma));
  superPixelHoleFillMetal = self->_superPixelHoleFillMetal;
  slicIdxImgTexture = self->_slicIdxImgTexture;
  confidenceMapTexture = self->_confidenceMapTexture;
  distanceTransformDisparityTexture = self->_distanceTransformDisparityTexture;
  distanceTransformMapTexture = self->_distanceTransformMapTexture;
  v10 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[3];
  v43 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers;
  v44 = v10;
  v11 = *&self->_configuration.superPixelHoleFillParameters.confidence.sigmaDepth;
  v45 = *&self->_configuration.superPixelHoleFillParameters.holeFill.fractionValidThreshold;
  v46 = v11;
  v12 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.colorSigma;
  brightnessCorrectionParams = self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams;
  v42 = v12;
  v13 = objc_msgSend_computeStage4_inLabelTexture_inDepthTex_inConfTex_inDistanceTransformMapTex_maxDist_sigma_den_(superPixelHoleFillMetal, a2, &brightnessCorrectionParams, slicIdxImgTexture, distanceTransformDisparityTexture, confidenceMapTexture, distanceTransformMapTexture, v2, v3);
  if (v13)
  {
    v39 = v13;
    sub_2957398B0();
  }

  else
  {
    v19 = MEMORY[0x29EDB9270];
    if (*MEMORY[0x29EDB9270] == 1)
    {
      kdebug_trace();
    }

    objc_msgSend_computeBlurIndices(self->_bilateralGridProcessing, v14, v15, v16, v17, v18);
    if (*v19 == 1)
    {
      kdebug_trace();
    }

    objc_msgSend_waitForIdle(self->_metalContext, v20, v21, v22, v23, v24);
    v25 = self->_superPixelHoleFillMetal;
    v26 = self->_slicIdxImgTexture;
    imerodeConfidenceMapTexture = self->_imerodeConfidenceMapTexture;
    slicRgbaTexture = self->_slicRgbaTexture;
    superPixelHoleFillDisparityTexture = self->_superPixelHoleFillDisparityTexture;
    superPixelHoleFillConfidenceTexture = self->_superPixelHoleFillConfidenceTexture;
    v31 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.useInstanceLayer[3];
    v43 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.maxNumberOfInstanceLayers;
    v44 = v31;
    v32 = *&self->_configuration.superPixelHoleFillParameters.confidence.sigmaDepth;
    v45 = *&self->_configuration.superPixelHoleFillParameters.holeFill.fractionValidThreshold;
    v46 = v32;
    v33 = *&self->_configuration.superPixelHoleFillParameters.holeFill.similarityParams.colorSigma;
    brightnessCorrectionParams = self->_configuration.superPixelHoleFillParameters.holeFill.brightnessCorrectionParams;
    v42 = v33;
    v35 = objc_msgSend_computeStageSolver_inLabelTexture_inConfTex_inImageTex_outDepthTex_outConfTex_(v25, v34, &brightnessCorrectionParams, v26, imerodeConfidenceMapTexture, slicRgbaTexture, superPixelHoleFillDisparityTexture, superPixelHoleFillConfidenceTexture);
    if (v35)
    {
      v39 = v35;
      sub_29573992C();
    }

    else if (self->_disparityQualityIsHigh)
    {
      v39 = objc_msgSend_disparityDataOverrideOnGpu_To_(self->_DepthProcUtilMetal, v36, self->_disparityInputTexture, self->_superPixelHoleFillDisparityTexture, v37, v38);
      if (v39)
      {
        sub_2957399A8();
      }
    }

    else
    {
      return 0;
    }
  }

  return v39;
}

- (int)fastBilateralSolver_PrepareHashTable
{
  v3 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  if (objc_msgSend_create_sigma_s_sigma_r_luma_sigma_r_chroma_(self->_bilateralGridProcessing, a2, self->_yuvInputBuffer, self->_configuration.bilateralSolverSigmaSpace, self->_configuration.bilateralSolverSigmaLumaRange, self->_configuration.bilateralSolverSigmaChromaRange) && objc_msgSend_create_sigma_s_sigma_r_luma_sigma_r_chroma_(self->_bilateralGridProcessing, v4, self->_yuvInputBuffer, self->_configuration.bilateralSolverSigmaSpace, self->_configuration.bilateralSolverSigmaLumaRange, 255))
  {
    sub_295739A24();
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v5;
}

- (int)fastBilateralSolver
{
  v4 = objc_msgSend_prepareForFbs_toF32_confidenceInF16_confidenceOutF32_(self->_DepthProcUtilMetal, a2, self->_superPixelHoleFillDisparityTexture, self->_bilateralInvZBufferInTexture, self->_superPixelHoleFillConfidenceTexture, self->_bilateralConfMapFloat32Texture);
  if (v4)
  {
    *&v5 = self->_configuration.bilateralSolverLambda;
    if (objc_msgSend_doSolveWithBilateralGridhash_reference_input_confidence_output_lambda_maxIterations_(self->_bilateralSolverGPUProcessing, v3, self->_bilateralGridProcessing, self->_yuvInputLumaTexture, self->_bilateralInvZBufferInTexture, self->_bilateralConfMapFloat32Texture, self->_bilateralInvZBufferOutTexture, self->_configuration.bilateralSolverPCGMaxIters, v5))
    {
      sub_295739AD0();
      v8 = v10;
    }

    else if (objc_msgSend_postFbs_toF16_prepareBuffer_(self->_DepthProcUtilMetal, v6, self->_bilateralInvZBufferOutTexture, self->_bilateralDisparityTexture, v4, v7))
    {
      sub_295739B7C();
      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_295739C28(&v12);
    v8 = v12;
  }

  return v8;
}

- (int)sanityCheckParameters
{
  yuvInputBuffer = self->_yuvInputBuffer;
  if (yuvInputBuffer)
  {
    if (self->_disparityInputBuffer)
    {
      if (self->_disparityOutputBuffer)
      {
        if (self->_personSegmentationMaskInputBuffer)
        {
          if (sub_29571B81C(yuvInputBuffer, 875704422))
          {
            if (sub_29571B81C(self->_disparityInputBuffer, 1751411059))
            {
              if (sub_29571B81C(self->_disparityOutputBuffer, 1751411059))
              {
                if (CVPixelBufferGetPixelFormatType(self->_personSegmentationMaskInputBuffer) == 1278226536)
                {
                  if (CVPixelBufferGetWidth(self->_personSegmentationMaskInputBuffer))
                  {
                    if (CVPixelBufferGetHeight(self->_personSegmentationMaskInputBuffer))
                    {
                      if (sub_29571B7C8(self->_yuvInputBuffer, self->_width, self->_height))
                      {
                        if (sub_29571B7C8(self->_disparityInputBuffer, self->_width, self->_height))
                        {
                          if (sub_29571B7C8(self->_disparityOutputBuffer, self->_width, self->_height))
                          {
                            instanceSegmentationInputBufferArray = self->_instanceSegmentationInputBufferArray;
                            if (instanceSegmentationInputBufferArray)
                            {
                              if (objc_msgSend_count(instanceSegmentationInputBufferArray, v4, v5, v6, v7, v8) < 4)
                              {
                                sub_29573A234(&v17);
                              }

                              else
                              {
                                v14 = 0;
                                while (1)
                                {
                                  v15 = objc_msgSend_objectAtIndexedSubscript_(self->_instanceSegmentationInputBufferArray, v10, v14, v11, v12, v13);

                                  if (!v15)
                                  {
                                    break;
                                  }

                                  if (++v14 == 4)
                                  {
                                    return 0;
                                  }
                                }

                                sub_29573A188(&v17);
                              }
                            }

                            else
                            {
                              sub_29573A2E0(&v17);
                            }
                          }

                          else
                          {
                            sub_29573A0DC(&v17);
                          }
                        }

                        else
                        {
                          sub_29573A030(&v17);
                        }
                      }

                      else
                      {
                        sub_295739F84(&v17);
                      }
                    }

                    else
                    {
                      sub_29573A38C(&v17);
                    }
                  }

                  else
                  {
                    sub_29573A438(&v17);
                  }
                }

                else
                {
                  sub_295739ED8(&v17);
                }
              }

              else
              {
                sub_295739E2C(&v17);
              }
            }

            else
            {
              sub_295739D80(&v17);
            }
          }

          else
          {
            sub_295739CD4(&v17);
          }
        }

        else
        {
          sub_29573A4E4(&v17);
        }
      }

      else
      {
        sub_29573A590(&v17);
      }
    }

    else
    {
      sub_29573A63C(&v17);
    }
  }

  else
  {
    sub_29573A6E8(&v17);
  }

  return v17;
}

- (int)initF16CVPixelBuffer:(__CVBuffer *)a3 withValue:
{
  if (a3)
  {
    v4 = v3;
    if (CVPixelBufferGetPixelFormatType(a3) == 1751411059 || CVPixelBufferGetPixelFormatType(a3) == 1751410032 || CVPixelBufferGetPixelFormatType(a3) == 1278226536)
    {
      v7 = sub_29571B778(a3, 0);
      if (v7)
      {
        v8 = v7;
        BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
        height = self->_height;
        if (!height)
        {
          goto LABEL_25;
        }

        v11 = 0;
        width = self->_width;
        v13 = vdupq_n_s64(width - 1);
        v14 = (v8 + 8);
        v15 = vdupq_n_s64(8uLL);
        do
        {
          v16 = v8;
          if (width)
          {
            v17 = v14;
            v18 = (width + 7) & 0x1FFFFFFF8;
            v19 = xmmword_295742DD0;
            v20 = xmmword_295742DC0;
            v21 = xmmword_295742DB0;
            v22 = xmmword_295742DA0;
            do
            {
              v23 = vmovn_s64(vcgeq_u64(v13, v19));
              if (vuzp1_s8(vuzp1_s16(v23, *v13.i8), *v13.i8).u8[0])
              {
                *(v17 - 4) = v4;
              }

              if (vuzp1_s8(vuzp1_s16(v23, *&v13), *&v13).i8[1])
              {
                *(v17 - 3) = v4;
              }

              if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v20))), *&v13).i8[2])
              {
                *(v17 - 2) = v4;
                *(v17 - 1) = v4;
              }

              v24 = vmovn_s64(vcgeq_u64(v13, v21));
              if (vuzp1_s8(*&v13, vuzp1_s16(v24, *&v13)).i32[1])
              {
                *v17 = v4;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(v24, *&v13)).i8[5])
              {
                v17[1] = v4;
              }

              if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v22)))).i8[6])
              {
                v17[2] = v4;
                v17[3] = v4;
              }

              v21 = vaddq_s64(v21, v15);
              v20 = vaddq_s64(v20, v15);
              v19 = vaddq_s64(v19, v15);
              v17 += 8;
              v22 = vaddq_s64(v22, v15);
              v18 -= 8;
            }

            while (v18);
          }

          v8 = (v8 + 2 * (BytesPerRow >> 1));
          ++v11;
          v14 += BytesPerRow >> 1;
        }

        while (v11 != height);
        if (v16)
        {
LABEL_25:
          CVPixelBufferUnlockBaseAddress(a3, 0);
        }

        return 0;
      }

      else
      {
        sub_29573A840(&v27);
        return v27;
      }
    }

    else
    {
      sub_29573A794(&v26);
      return v26;
    }
  }

  else
  {
    sub_29573A8EC(&v28);
    return v28;
  }
}

- (id)createTextureOfSize:(CGSize)a3 withFormat:(unint64_t)a4
{
  v5 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, a4, a3.width, a3.height, 0);
  objc_msgSend_setUsage_(v5, v6, 3, v7, v8, v9);
  v15 = objc_msgSend_device(self->_metalContext, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_newTextureWithDescriptor_(v15, v16, v5, v17, v18, v19);

  return v20;
}

- (int)estimateDisparityQualityScore
{
  disparityQualityThreshold = self->_configuration.disparityQualityThreshold;
  if (disparityQualityThreshold < 0.0 || disparityQualityThreshold > 1.0)
  {
    sub_29573AB9C(&v26);
    return v26;
  }

  preprocessedDisparity = self->_preprocessedDisparity;
  if (!preprocessedDisparity)
  {
    sub_29573AAF0(&v26);
    return v26;
  }

  if (CVPixelBufferGetPixelFormatType(preprocessedDisparity) != 1751411059)
  {
    sub_29573A998(&v26);
    return v26;
  }

  v6 = sub_29571B778(self->_preprocessedDisparity, 1uLL);
  if (!v6)
  {
    sub_29573AA44(&v26);
    return v26;
  }

  v7 = v6;
  BytesPerRow = CVPixelBufferGetBytesPerRow(self->_preprocessedDisparity);
  width = self->_width;
  height = self->_height;
  v11 = (height * width);
  if (height)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v7;
      if (width)
      {
        v15 = 0;
        do
        {
          v16 = *(v7 + v15);
          __asm { FCMP            H1, #0 }

          if (!(_NF ^ _VF | _ZF))
          {
            ++v13;
          }

          v15 += 2;
        }

        while (2 * width != v15);
      }

      v7 = (v7 + 2 * (BytesPerRow >> 1));
      ++v12;
    }

    while (v12 != height);
    v22 = v13;
    v23 = v14 == 0;
  }

  else
  {
    v23 = 0;
    v22 = 0.0;
  }

  v24 = v22 / v11;
  self->_disparityQualityScore = v24;
  self->_disparityQualityIsHigh = v24 >= disparityQualityThreshold;
  self->_figDepthQuality = v24 >= 0.3;
  if (!v23)
  {
    CVPixelBufferUnlockBaseAddress(self->_preprocessedDisparity, 1uLL);
  }

  return 0;
}

@end