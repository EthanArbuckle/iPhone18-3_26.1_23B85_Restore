@interface FigCalibration
- ($91EEB31E22C960290E85DB462FB2FE46)calibrationConfig;
- (BOOL)_extractAndRunSanityChecks;
- (BOOL)allocateResources;
- (BOOL)allocateResources:(id *)resources;
- (BOOL)isImageFullResolution:(__CVBuffer *)resolution;
- (BOOL)isImageScalerOutputResolution:(__CVBuffer *)resolution;
- (FigCalibration)initWithCommandQueue:(id)queue;
- (id)selectTuningParametersForCapture;
- (int)_detectKeypoints:(float)keypoints;
- (int)prewarmWithTuningParameters:(id)parameters;
- (int)process;
- (void)dealloc;
- (void)fillShiftMapMetadataWithCalModel:(CalModel *)model referenceGDC:(id *)c auxiliaryGDC:(id *)dC;
- (void)releaseResources;
- (void)setCalibrationConfig:(id *)config;
- (void)setOptions:(id)options;
@end

@implementation FigCalibration

- (FigCalibration)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v44.receiver = self;
  v44.super_class = FigCalibration;
  v5 = [(FigCalibration *)&v44 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = MEMORY[0x29EDB9F48];
  v7 = objc_opt_class();
  v12 = objc_msgSend_bundleForClass_(v6, v8, v7, v9, v10, v11);
  v13 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v13, v14, v12, queueCopy, v15, v16);
  v18 = *(v5 + 16);
  *(v5 + 16) = inited;

  if (!*(v5 + 16))
  {
    sub_295709008();
LABEL_11:

    v42 = 0;
    goto LABEL_7;
  }

  v19 = [DupDownscaleHalfConvert alloc];
  v24 = objc_msgSend_initWithMetalContext_(v19, v20, *(v5 + 16), v21, v22, v23);
  v25 = *(v5 + 1);
  *(v5 + 1) = v24;

  if (!*(v5 + 1))
  {
    sub_295708F90();
    goto LABEL_11;
  }

  v26 = objc_alloc(MEMORY[0x29EDC0A58]);
  v32 = objc_msgSend_commandQueue(*(v5 + 16), v27, v28, v29, v30, v31);
  v37 = objc_msgSend_initWithCommandQueue_(v26, v33, v32, v34, v35, v36);
  v38 = *(v5 + 5);
  *(v5 + 5) = v37;

  if (!*(v5 + 5))
  {
    sub_295708F18();
    goto LABEL_11;
  }

  v39 = *(v5 + 22);
  *(v5 + 22) = 0;

  v40 = objc_opt_new();
  v41 = *(v5 + 2);
  *(v5 + 2) = v40;

LABEL_6:
  v42 = v5;
LABEL_7:

  return v42;
}

- (int)prewarmWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = parametersCopy;
  self->_isPrewarming = 1;
  if (parametersCopy)
  {
    v19 = *MEMORY[0x29EDC0298];
    v20 = parametersCopy;
    v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v5, &v20, &v19, 1, v6);
    objc_msgSend_setOptions_(self, v9, v8, v10, v11, v12);
    *&self->_calibrationConfig.inputImageWidth = vdupq_n_s64(0x400uLL);
    self->_calibrationConfig.maxPaddingFactor = 1.2;
    *&self->_calibrationConfig.keypointGridWidth = 0x1800000020;
    *(&self->_calibrationConfig.keypointGridHeight + 1) = 0;
    if (objc_msgSend_prepareToProcess_(self, v13, 0, v14, v15, v16))
    {
      v17 = 0;
    }

    else
    {
      v17 = -12786;
    }
  }

  else
  {
    sub_295709080(&v21);
    v17 = v21;
  }

  self->_isPrewarming = 0;

  return v17;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  objc_storeStrong(&self->_options, options);
  v10 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v6, *MEMORY[0x29EDC0298], v7, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v11, *MEMORY[0x29EDC0288], v12, v13, v14);
  v20 = objc_msgSend_objectForKeyedSubscript_(v10, v16, @"ADC", v17, v18, v19);

  if (v20)
  {
    v21 = objc_opt_new();
    calibrationTuningParameters = self->_calibrationTuningParameters;
    self->_calibrationTuningParameters = v21;

    v23 = [CalibrationTuningParameters alloc];
    v27 = objc_msgSend_initWithTuningDictionary_cameraInfoByPortType_(v23, v24, v10, v15, v25, v26);
    objc_msgSend_setObject_forKeyedSubscript_(self->_calibrationTuningParameters, v28, v27, @"config", v29, v30);
  }

  else
  {
    if (v10)
    {
      v31 = v15 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (v31)
    {
      v32 = self->_calibrationTuningParameters;
      self->_calibrationTuningParameters = 0;
    }

    else
    {
      v84 = optionsCopy;
      v33 = objc_opt_new();
      v34 = self->_calibrationTuningParameters;
      self->_calibrationTuningParameters = v33;

      v39 = objc_msgSend_objectForKeyedSubscript_(v10, v35, @"portsToConfig", v36, v37, v38);
      portsToConfig = self->_portsToConfig;
      self->_portsToConfig = v39;

      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      selfCopy = self;
      obj = self->_portsToConfig;
      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v41, &v88, v87, 16, v42);
      if (v43)
      {
        v48 = v43;
        v49 = *v89;
        while (2)
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v89 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v51 = *(*(&v88 + 1) + 8 * i);
            v52 = objc_msgSend_objectForKeyedSubscript_(v51, v44, @"DisparityVersion", v45, v46, v47);
            v58 = objc_msgSend_intValue(v52, v53, v54, v55, v56, v57);

            if (v58 >= 4)
            {
              v59 = objc_msgSend_objectForKeyedSubscript_(v51, v44, @"Config", v45, v46, v47);
              v60 = [CalibrationTuningParameters alloc];
              v65 = objc_msgSend_objectForKeyedSubscript_(v10, v61, @"BaseConfiguration", v62, v63, v64);
              v66 = v15;
              v70 = objc_msgSend_initWithTuningDictionary_cameraInfoByPortType_(v60, v67, v65, v15, v68, v69);

              v75 = objc_msgSend_objectForKeyedSubscript_(v10, v71, v59, v72, v73, v74);
              updated = objc_msgSend_updateTuningParametersWith_(v70, v76, v75, v77, v78, v79);

              if (updated)
              {
                sub_295709148(updated, v70, v59);
                v15 = v66;
                goto LABEL_21;
              }

              objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_calibrationTuningParameters, v81, v70, v59, v82, v83);

              v15 = v66;
            }
          }

          v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v44, &v88, v87, 16, v47);
          if (v48)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:

      optionsCopy = v84;
    }
  }
}

- (BOOL)allocateResources:(id *)resources
{
  v6 = *&resources->var2;
  *&self->_calibrationConfig.inputImageWidth = *&resources->var0;
  *&self->_calibrationConfig.maxPaddingFactor = v6;
  return objc_msgSend_allocateResources(self, a2, resources, v3, v4, v5);
}

- (BOOL)allocateResources
{
  inputImageWidth = self->_calibrationConfig.inputImageWidth;
  if ((inputImageWidth & 3) != 0)
  {
    sub_2957091E0();
  }

  else
  {
    inputImageHeight = self->_calibrationConfig.inputImageHeight;
    if ((inputImageHeight & 3) != 0)
    {
      sub_295709258();
    }

    else if (self->_downscaler)
    {
      self->_inputImageWidth = inputImageWidth;
      self->_inputImageHeight = inputImageHeight;
      v8 = inputImageWidth >> 1;
      v9 = inputImageHeight >> 1;
      maxPaddingFactor = self->_calibrationConfig.maxPaddingFactor;
      self->_scalerOutputWidth = v8;
      self->_scalerOutputHeight = v9;
      self->_auxiliaryPaddedWidthMax = (((v8 * maxPaddingFactor) + 0.5) & 1) + ((v8 * maxPaddingFactor) + 0.5);
      self->_auxiliaryPaddedHeightMax = (((v9 * maxPaddingFactor) + 0.5) & 1) + ((v9 * maxPaddingFactor) + 0.5);
      keypointGridWidth = self->_calibrationConfig.keypointGridWidth;
      keypointGridHeight = self->_calibrationConfig.keypointGridHeight;
      self->_keypointGridWidth = keypointGridWidth;
      self->_keypointGridHeight = keypointGridHeight;
      objc_msgSend_allocateResourcesForMaxNumPoints_(self->_calibration, a2, keypointGridHeight * keypointGridWidth, v2, v3, v4);
      if (objc_msgSend_AllocateResources(self->_downscaler, v13, v14, v15, v16, v17))
      {
        sub_2957092D0();
      }

      else
      {
        v18 = malloc_type_malloc(24 * self->_keypointGridHeight * self->_keypointGridWidth, 0x1000040504FFAC1uLL);
        self->_keypointListRtb = v18;
        if (v18)
        {
          v19 = 16 * self->_keypointGridWidth * self->_keypointGridHeight;
          v20 = malloc_type_malloc(v19, 0x100004000313F17uLL);
          self->_adaptiveCorrectionKeypointsReferenceDistorted = v20;
          if (v20)
          {
            v21 = malloc_type_malloc(v19, 0x100004000313F17uLL);
            self->_adaptiveCorrectionKeypointsAuxiliaryDistorted = v21;
            if (v21)
            {
              LODWORD(v23) = 1061997773;
              if (objc_msgSend_allocateResources_imageWidth_imageHeight_gridWidth_gridHeight_templateRadius_searchRadius_minNCCThreshold_(self->_keypointDetRtb, v22, 4, self->_inputImageWidth >> 1, self->_inputImageHeight >> 1, self->_keypointGridWidth, self->_keypointGridHeight, 7, v23, 3))
              {
                sub_29570934C();
              }

              else if (sub_2956FF790(&self->_auxiliaryImageLow, self->_scalerOutputWidth, self->_scalerOutputHeight, 1111970369))
              {
                if (sub_2956FF790(&self->_referenceImageLow, self->_auxiliaryPaddedWidthMax, self->_auxiliaryPaddedHeightMax, 1111970369))
                {
                  if (sub_2956FF790(&self->_referenceImageLowLumaOnly, self->_scalerOutputWidth, self->_scalerOutputHeight, 1278226488))
                  {
                    if (sub_2956FF790(&self->_auxiliaryImageCropped, self->_scalerOutputWidth, self->_scalerOutputHeight, 1111970369))
                    {
                      return 1;
                    }

                    sub_295709534();
                  }

                  else
                  {
                    sub_2957094BC();
                  }
                }

                else
                {
                  sub_295709444();
                }
              }

              else
              {
                sub_2957093CC();
              }
            }

            else
            {
              sub_2957095AC();
            }
          }

          else
          {
            sub_295709624();
          }
        }

        else
        {
          sub_29570969C();
        }
      }
    }

    else
    {
      sub_295709714();
    }
  }

  objc_msgSend_releaseResources(self, v25, v26, v27, v28, v29);
  return 0;
}

- (void)dealloc
{
  objc_msgSend_releaseResources(self, a2, v2, v3, v4, v5);
  v7.receiver = self;
  v7.super_class = FigCalibration;
  [(FigCalibration *)&v7 dealloc];
}

- (void)releaseResources
{
  calibrationMetadata = self->_calibrationMetadata;
  self->_calibrationMetadata = 0;

  referenceImageLow = self->_referenceImageLow;
  if (referenceImageLow)
  {
    CFRelease(referenceImageLow);
    self->_referenceImageLow = 0;
  }

  referenceImageLowLumaOnly = self->_referenceImageLowLumaOnly;
  if (referenceImageLowLumaOnly)
  {
    CFRelease(referenceImageLowLumaOnly);
    self->_referenceImageLowLumaOnly = 0;
  }

  auxiliaryImageLow = self->_auxiliaryImageLow;
  if (auxiliaryImageLow)
  {
    CFRelease(auxiliaryImageLow);
    self->_auxiliaryImageLow = 0;
  }

  auxiliaryImageCropped = self->_auxiliaryImageCropped;
  if (auxiliaryImageCropped)
  {
    CFRelease(auxiliaryImageCropped);
    self->_auxiliaryImageCropped = 0;
  }

  objc_msgSend_ReleaseResources(self->_downscaler, v4, v5, v6, v7, v8);
  objc_msgSend_releaseResources(self->_keypointDetRtb, v13, v14, v15, v16, v17);
  adaptiveCorrectionKeypointsReferenceDistorted = self->_adaptiveCorrectionKeypointsReferenceDistorted;
  if (adaptiveCorrectionKeypointsReferenceDistorted)
  {
    self->_adaptiveCorrectionKeypointsReferenceDistorted = 0;
    free(adaptiveCorrectionKeypointsReferenceDistorted);
  }

  adaptiveCorrectionKeypointsAuxiliaryDistorted = self->_adaptiveCorrectionKeypointsAuxiliaryDistorted;
  if (adaptiveCorrectionKeypointsAuxiliaryDistorted)
  {
    self->_adaptiveCorrectionKeypointsAuxiliaryDistorted = 0;
    free(adaptiveCorrectionKeypointsAuxiliaryDistorted);
  }

  keypointListRtb = self->_keypointListRtb;
  if (keypointListRtb)
  {
    self->_keypointListRtb = 0;

    free(keypointListRtb);
  }
}

- (BOOL)_extractAndRunSanityChecks
{
  referenceSampleBuffer = self->_referenceSampleBuffer;
  if (referenceSampleBuffer)
  {
    if (self->_auxiliarySampleBuffer)
    {
      if (self->_options)
      {
        v4 = *MEMORY[0x29EDBFF98];
        v5 = CMGetAttachment(referenceSampleBuffer, *MEMORY[0x29EDBFF98], 0);
        referenceMeta = self->_referenceMeta;
        self->_referenceMeta = v5;

        if (self->_referenceMeta)
        {
          v7 = CMGetAttachment(self->_auxiliarySampleBuffer, v4, 0);
          auxiliaryMeta = self->_auxiliaryMeta;
          self->_auxiliaryMeta = v7;

          if (self->_auxiliaryMeta)
          {
            ImageBuffer = CMSampleBufferGetImageBuffer(self->_auxiliarySampleBuffer);
            self->_auxiliaryImageFull = ImageBuffer;
            if (ImageBuffer)
            {
              v10 = CMSampleBufferGetImageBuffer(self->_referenceSampleBuffer);
              self->_referenceImageFull = v10;
              if (v10)
              {
                if (objc_msgSend_isImageFullResolution_(self, v11, v10, v12, v13, v14))
                {
                  if (objc_msgSend_isImageFullResolution_(self, v15, self->_auxiliaryImageFull, v16, v17, v18))
                  {
                    referenceImageLow = self->_referenceImageLow;
                    auxiliaryPaddedWidthMax = self->_auxiliaryPaddedWidthMax;
                    auxiliaryPaddedHeightMax = self->_auxiliaryPaddedHeightMax;
                    if (auxiliaryPaddedWidthMax == CVPixelBufferGetWidth(referenceImageLow) && auxiliaryPaddedHeightMax == CVPixelBufferGetHeight(referenceImageLow))
                    {
                      if (objc_msgSend_isImageScalerOutputResolution_(self, v22, self->_auxiliaryImageLow, v23, v24, v25))
                      {
                        if (CVPixelBufferGetPixelFormatType(self->_referenceImageFull) == 875704422)
                        {
                          if (CVPixelBufferGetPixelFormatType(self->_auxiliaryImageFull) == 875704422)
                          {
                            if (CVPixelBufferGetPixelFormatType(self->_referenceImageLow) == 1111970369)
                            {
                              if (CVPixelBufferGetPixelFormatType(self->_auxiliaryImageLow) == 1111970369)
                              {
                                return 1;
                              }

                              sub_295709BC4();
                            }

                            else
                            {
                              sub_295709B4C();
                            }
                          }

                          else
                          {
                            sub_295709AD4();
                          }
                        }

                        else
                        {
                          sub_295709A5C();
                        }
                      }

                      else
                      {
                        sub_2957099E4();
                      }
                    }

                    else
                    {
                      sub_29570996C();
                    }
                  }

                  else
                  {
                    sub_2957098F4();
                  }
                }

                else
                {
                  sub_29570987C();
                }
              }

              else
              {
                sub_295709C3C();
              }
            }

            else
            {
              sub_295709CB4();
            }
          }

          else
          {
            sub_295709D2C();
          }
        }

        else
        {
          sub_295709DA4();
        }
      }

      else
      {
        sub_295709E1C();
      }
    }

    else
    {
      sub_295709E94();
    }
  }

  else
  {
    sub_295709F0C();
  }

  return 0;
}

- (int)process
{
  v3 = objc_opt_new();
  calibrationMetadata = self->_calibrationMetadata;
  self->_calibrationMetadata = v3;

  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v148 = 0u;
  *self->_gdcParametersReference.distortPolynomCoefficients = 0u;
  *&self->_gdcParametersReference.distortPolynomCoefficients[4] = 0u;
  *self->_gdcParametersReference.undistortPolynomCoefficients = 0u;
  *&self->_gdcParametersReference.undistortPolynomCoefficients[4] = 0u;
  *&self->_gdcParametersReference.centerX = 0u;
  *&self->_gdcParametersReference.pixelSize = 0u;
  *&self->_gdcParametersReference.homography[3] = 0u;
  *&self->_gdcParametersReference.homography[7] = 0u;
  *&self->_gdcParametersReference.inverseHomography[2] = 0u;
  *&self->_gdcParametersReference.inverseHomography[6] = 0u;
  self->_gdcParametersReference.disparityScalingFactor = 0.0;
  self->_gdcParametersAuxiliary.disparityScalingFactor = 0.0;
  *&self->_gdcParametersAuxiliary.inverseHomography[2] = 0u;
  *&self->_gdcParametersAuxiliary.inverseHomography[6] = 0u;
  *&self->_gdcParametersAuxiliary.homography[3] = 0u;
  *&self->_gdcParametersAuxiliary.homography[7] = 0u;
  *&self->_gdcParametersAuxiliary.centerX = 0u;
  *&self->_gdcParametersAuxiliary.pixelSize = 0u;
  *self->_gdcParametersAuxiliary.undistortPolynomCoefficients = 0u;
  *&self->_gdcParametersAuxiliary.undistortPolynomCoefficients[4] = 0u;
  *self->_gdcParametersAuxiliary.distortPolynomCoefficients = 0u;
  *&self->_gdcParametersAuxiliary.distortPolynomCoefficients[4] = 0u;
  v10 = objc_msgSend__extractAndRunSanityChecks(self, v5, v6, v7, v8, v9);
  v16 = MEMORY[0x29EDB9270];
  if ((v10 & 1) == 0)
  {
    sub_295709F84();
LABEL_47:
    v111 = 0;
    v74 = 0;
    LOBYTE(v17) = 0;
    goto LABEL_48;
  }

  v17 = objc_msgSend_selectTuningParametersForCapture(self, v11, v12, v13, v14, v15);
  if (!v17)
  {
    sub_29570A41C();
    v111 = 0;
    v74 = 0;
LABEL_48:
    v112 = 4;
    goto LABEL_29;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(self->_auxiliarySampleBuffer);
  v19 = CMSampleBufferGetImageBuffer(self->_referenceSampleBuffer);
  calibration = self->_calibration;
  Width = CVPixelBufferGetWidth(v19);
  Height = CVPixelBufferGetHeight(v19);
  v23 = CVPixelBufferGetWidth(ImageBuffer);
  v24 = CVPixelBufferGetHeight(ImageBuffer);
  objc_msgSend_setReferenceBufferDimensions_auxillaryBufferDimensions_normalizedReferenceFinalCropRect_(calibration, v25, Width | (Height << 32), v23 | (v24 << 32), v26, v27, *MEMORY[0x29EDB90D8], *(MEMORY[0x29EDB90D8] + 8), *(MEMORY[0x29EDB90D8] + 16), *(MEMORY[0x29EDB90D8] + 24));
  v28 = self->_calibration;
  auxiliaryMeta = self->_auxiliaryMeta;
  referenceMeta = self->_referenceMeta;
  options = self->_options;
  objc_msgSend_adaptiveCorrectionConfig(v17, v32, v33, v34, v35, v36);
  ParametersFromReferenceMetadata_auxiliaryMetadata_options_adaptiveCorrectionConfig_useReferenceFrame = objc_msgSend_extractParametersFromReferenceMetadata_auxiliaryMetadata_options_adaptiveCorrectionConfig_useReferenceFrame_(v28, v37, referenceMeta, auxiliaryMeta, options, &v136, 1);
  if (ParametersFromReferenceMetadata_auxiliaryMetadata_options_adaptiveCorrectionConfig_useReferenceFrame)
  {
    sub_295709FFC(ParametersFromReferenceMetadata_auxiliaryMetadata_options_adaptiveCorrectionConfig_useReferenceFrame, v17);
LABEL_44:
    v111 = 0;
    v74 = 0;
    LOBYTE(v17) = 0;
    v112 = 4;
    v16 = MEMORY[0x29EDB9270];
    goto LABEL_29;
  }

  v44 = objc_msgSend_computeInitialCalibration(self->_calibration, v39, v40, v41, v42, v43);
  if (v44)
  {
    sub_29570A08C(v44, v17);
    goto LABEL_44;
  }

  objc_msgSend_referenceMagnification(self->_calibration, v45, v46, v47, v48, v49);
  v16 = MEMORY[0x29EDB9270];
  if (v53 <= 0.0)
  {
    sub_29570A39C(v17);
    goto LABEL_47;
  }

  v54 = v53;
  v55 = objc_msgSend__downscaleReference_auxiliary_referenceMagnification_gainToApplyToReference_(self, v50, v19, ImageBuffer, v51, v52);
  if (v55)
  {
    sub_29570A11C(v55, v17);
    goto LABEL_47;
  }

  self->_keypointsCount = 0;
  *&v61 = v54;
  if (objc_msgSend__detectKeypoints_(self, v56, v57, v58, v59, v60, v61))
  {
    sub_29570A1A8(v17);
    v111 = 0;
    v74 = 0;
    LOBYTE(v17) = 0;
    v112 = 1;
    goto LABEL_29;
  }

  if (*v16 == 1)
  {
    kdebug_trace();
  }

  objc_msgSend_setKeypointsForReference_auxiliary_keypointCount_(self->_calibration, v62, self->_adaptiveCorrectionKeypointsReferenceDistorted, self->_adaptiveCorrectionKeypointsAuxiliaryDistorted, self->_keypointsCount, v63);
  v74 = objc_msgSend_computeCalibration(self->_calibration, v64, v65, v66, v67, v68);
  v75 = self->_calibration;
  if (v75)
  {
    objc_msgSend_correctedCalibration(v75, v69, v70, v71, v72, v73);
    v75 = self->_calibration;
  }

  else
  {
    v147 = 0;
    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v136 = 0u;
  }

  v156 = v144;
  v157 = v145;
  v158 = v146;
  v159 = v147;
  v152 = v140;
  v153 = v141;
  v154 = v142;
  v155 = v143;
  v148 = v136;
  v149 = v137;
  v150 = v138;
  v151 = v139;
  if (v75)
  {
    objc_msgSend_distModelFor_(v75, v69, 0, v71, v72, v73);
    v80 = self->_calibration;
    v142 = v122;
    v143 = v123;
    v144 = v124;
    v145 = v125;
    v138 = v118;
    v139 = v119;
    v140 = v120;
    v141 = v121;
    v136 = v116;
    v137 = v117;
    if (v80)
    {
      objc_msgSend_undistModelFor_(v80, v76, 0, v77, v78, v79);
      goto LABEL_18;
    }
  }

  else
  {
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
LABEL_18:
  v132 = v122;
  v133 = v123;
  v134 = v124;
  v135 = v125;
  v128 = v118;
  v129 = v119;
  v130 = v120;
  v131 = v121;
  v126 = v116;
  v127 = v117;
  if (sub_2957000E0(&v136, v126.f64, &self->_gdcParametersReference, self->_inputImageWidth, self->_inputImageHeight))
  {
    sub_29570A228();
LABEL_53:

    LOBYTE(v17) = 0;
    v112 = 4;
    v111 = 1;
    goto LABEL_29;
  }

  v85 = self->_calibration;
  if (v85)
  {
    objc_msgSend_distModelFor_(v85, v81, 1, v82, v83, v84);
    v90 = self->_calibration;
    v142 = v122;
    v143 = v123;
    v144 = v124;
    v145 = v125;
    v138 = v118;
    v139 = v119;
    v140 = v120;
    v141 = v121;
    v136 = v116;
    v137 = v117;
    if (v90)
    {
      objc_msgSend_undistModelFor_(v90, v86, 1, v87, v88, v89);
      goto LABEL_24;
    }
  }

  else
  {
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
LABEL_24:
  v132 = v122;
  v133 = v123;
  v134 = v124;
  v135 = v125;
  v128 = v118;
  v129 = v119;
  v130 = v120;
  v131 = v121;
  v126 = v116;
  v127 = v117;
  if (sub_2957000E0(&v136, v126.f64, &self->_gdcParametersAuxiliary, self->_inputImageWidth, self->_inputImageHeight))
  {
    sub_29570A2A4();
    goto LABEL_53;
  }

  v96 = self->_calibration;
  objc_msgSend_nearLimitDistanceMM(v17, v91, v92, v93, v94, v95);
  v115 = v97;
  objc_msgSend_midLimitDistanceMM(v17, v98, v99, v100, v101, v102);
  if (objc_msgSend_computeStereoRectificationHomographies_(v96, v103, v104, v105, v106, v107, COERCE_DOUBLE(__PAIR64__(v108, v115))))
  {
    sub_29570A320();
    goto LABEL_53;
  }

  if (*v16 == 1)
  {
    kdebug_trace();
  }

  v111 = 0;
  v112 = 0;
  LOBYTE(v17) = 1;
LABEL_29:
  objc_msgSend_fillShiftMapMetadataWithCalModel_referenceGDC_auxiliaryGDC_(self, v109, &v148, &self->_gdcParametersReference, &self->_gdcParametersAuxiliary, v110);
  if (v111 && *v16 == 1)
  {
    kdebug_trace();
  }

  if (v74 == 1)
  {
    v113 = 2;
  }

  else
  {
    v113 = 4;
  }

  if (v74 == 2)
  {
    v113 = 3;
  }

  if ((v17 & (v74 != 0)) != 0)
  {
    return v113;
  }

  else
  {
    return v112;
  }
}

- (void)fillShiftMapMetadataWithCalModel:(CalModel *)model referenceGDC:(id *)c auxiliaryGDC:(id *)dC
{
  v189 = model->focalLengthPix[0];
  v183 = model->focalLengthPix[1];
  v185 = model->opticalCenterX[0];
  v181 = model->opticalCenterX[1];
  v187 = model->opticalCenterY[0];
  v179 = model->opticalCenterY[1];
  v8 = model->extrinRotRefefenceToAuxiliary[0];
  v9 = model->extrinRotRefefenceToAuxiliary[1];
  v10 = model->extrinRotRefefenceToAuxiliary[4];
  v11 = model->extrinRotRefefenceToAuxiliary[5];
  v12 = model->extrinRotRefefenceToAuxiliary[8];
  v13 = model->extrinRotRefefenceToAuxiliary[9];
  v14 = model->extrinRotRefefenceToAuxiliary[2];
  v177 = model->extrinRotRefefenceToAuxiliary[3];
  v15 = model->extrinRotRefefenceToAuxiliary[6];
  v175 = model->extrinRotRefefenceToAuxiliary[7];
  v171 = model->extrinRotRefefenceToAuxiliary[10];
  v173 = model->extrinRotRefefenceToAuxiliary[11];
  v192 = *MEMORY[0x29EDCA928];
  v193 = *(MEMORY[0x29EDCA928] + 16);
  v194 = *(MEMORY[0x29EDCA928] + 32);
  v16 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v195 = objc_msgSend_initWithCapacity_(v16, v17, 8, v18, v19, v20);
  v21 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v26 = objc_msgSend_initWithCapacity_(v21, v22, 8, v23, v24, v25);
  v27 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v32 = objc_msgSend_initWithCapacity_(v27, v28, 8, v29, v30, v31);
  v33 = objc_alloc(MEMORY[0x29EDB8DE8]);
  v43 = objc_msgSend_initWithCapacity_(v33, v34, 8, v35, v36, v37);
  v45 = 0;
  cCopy = c;
  var1 = c->var1;
  do
  {
    v44.f32[0] = *var1;
    v47 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v38, v39, v40, v41, v42, *v44.i64, *&v171);
    objc_msgSend_setObject_atIndexedSubscript_(v195, v48, v47, v45, v49, v50);

    *&v51 = *(var1 - 8);
    v57 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v52, v53, v54, v55, v56, v51);
    objc_msgSend_setObject_atIndexedSubscript_(v26, v58, v57, v45, v59, v60);

    v61 = &dC->var0[v45];
    LODWORD(v62) = v61[8];
    v68 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v63, v64, v65, v66, v67, v62);
    objc_msgSend_setObject_atIndexedSubscript_(v32, v69, v68, v45, v70, v71);

    LODWORD(v72) = *v61;
    v78 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v73, v74, v75, v76, v77, v72);
    objc_msgSend_setObject_atIndexedSubscript_(v43, v79, v78, v45, v80, v81);

    ++v45;
    ++var1;
  }

  while (v45 != 8);
  v84 = 0;
  v44.f32[0] = v8;
  v82.f32[0] = v9;
  v83.f32[0] = v14;
  v85 = v10;
  v86 = v11;
  v87 = v15;
  v88 = v12;
  v89 = v13;
  v44.f32[1] = v85;
  v44.f32[2] = v88;
  v82.f32[1] = v86;
  v82.f32[2] = v89;
  v83.f32[1] = v87;
  v90 = v171;
  v83.f32[2] = v90;
  v196 = xmmword_29570C970;
  v197 = xmmword_29570C980;
  v198 = xmmword_29570C8F0;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  do
  {
    *(&v199 + v84) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v196 + v84))), v82, *(&v196 + v84), 1), v83, *(&v196 + v84), 2);
    v84 += 16;
  }

  while (v84 != 48);
  v91 = 0;
  v196 = v199;
  v197 = v200;
  v198 = v201;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  do
  {
    *(&v199 + v91) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_29570C970, COERCE_FLOAT(*(&v196 + v91))), xmmword_29570C980, *(&v196 + v91), 1), xmmword_29570C8F0, *(&v196 + v91), 2);
    v91 += 16;
  }

  while (v91 != 48);
  v92 = vzip1q_s32(v199, v201);
  v93 = vzip1q_s32(v92, v200);
  v94 = vtrn2q_s32(v199, v200);
  v94.i32[2] = v201.i32[1];
  v95 = vzip1q_s32(vzip2q_s32(v199, v201), vdupq_laneq_s32(v200, 2));
  v96 = v177;
  v97 = v175;
  v98 = v173;
  v99 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_29570C970, v96), xmmword_29570C980, v97), xmmword_29570C8F0, v98);
  v176 = *v95.i64;
  *&v178 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v93, v99.f32[0]), v94, *v99.f32, 1), v95, v99, 2)).u64[0];
  v172 = *v93.i64;
  *&v174 = vzip2q_s32(v92, vdupq_lane_s32(*&v200, 1)).u64[0];
  *&v100 = v183;
  HIDWORD(v101) = HIDWORD(v181);
  *&v101 = v181;
  v94.i32[1] = HIDWORD(v179);
  v94.f32[0] = v179;
  __asm { FMOV            V4.4S, #1.0 }

  v92.i32[0] = 0;
  *&v184 = vzip1q_s32(vzip2q_s32(vdupq_lane_s32(*&v101, 0), _Q4), v94).u64[0];
  LODWORD(v101) = 0;
  HIDWORD(v101) = v100;
  *&v180 = v100;
  v182 = v101;
  *&v107 = v189;
  HIDWORD(v101) = HIDWORD(v185);
  *&v101 = v185;
  v94.i32[1] = HIDWORD(v187);
  v94.f32[0] = v187;
  v92.i32[1] = v107;
  v188 = *v92.i64;
  *&v190 = vzip1q_s32(vzip2q_s32(vdupq_lane_s32(*&v101, 0), _Q4), v94).u64[0];
  *&v186 = v107;
  v108 = vmulq_f32(v99, v99);
  v108.f32[0] = sqrtf(v108.f32[2] + vaddv_f32(*v108.f32));
  objc_msgSend_setBaseline_(self->_calibrationMetadata, v38, v39, v40, v41, v42, *v108.i64);
  objc_msgSend_setReferenceExtrinsicMatrix_(self->_calibrationMetadata, v109, v110, v111, v112, v113, *&v192, *&v193, *&v194, 0.0);
  objc_msgSend_setReferenceIntrinsicMatrix_(self->_calibrationMetadata, v114, v115, v116, v117, v118, v186, v188, v190);
  objc_msgSend_setReferenceInverseLensDistortionCoefficients_(self->_calibrationMetadata, v119, v26, v120, v121, v122);
  objc_msgSend_setReferenceLensDistortionCoefficients_(self->_calibrationMetadata, v123, v195, v124, v125, v126);
  objc_msgSend_setReferenceLensDistortionOpticalCenter_(self->_calibrationMetadata, v127, v128, v129, v130, v131, cCopy->var2, cCopy->var3);
  *&v132 = cCopy->var6;
  objc_msgSend_setReferencePixelSizeInMillimeters_(self->_calibrationMetadata, v133, v134, v135, v136, v137, v132);
  objc_msgSend_setAuxiliaryExtrinsicMatrix_(self->_calibrationMetadata, v138, v139, v140, v141, v142, v172, v174, v176, v178);
  objc_msgSend_setAuxiliaryIntrinsicMatrix_(self->_calibrationMetadata, v143, v144, v145, v146, v147, v180, v182, v184);
  objc_msgSend_setAuxiliaryInverseLensDistortionCoefficients_(self->_calibrationMetadata, v148, v43, v149, v150, v151);
  objc_msgSend_setAuxiliaryLensDistortionCoefficients_(self->_calibrationMetadata, v152, v32, v153, v154, v155);
  objc_msgSend_setAuxiliaryLensDistortionOpticalCenter_(self->_calibrationMetadata, v156, v157, v158, v159, v160, dC->var2, dC->var3);
  *&v161 = dC->var6;
  objc_msgSend_setAuxiliaryPixelSizeInMillimeters_(self->_calibrationMetadata, v162, v163, v164, v165, v166, v161);
  objc_msgSend_setVersion_(self->_calibrationMetadata, v167, 1, v168, v169, v170);
}

- (int)_detectKeypoints:(float)keypoints
{
  v5 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, a2, self->_referenceImageLowLumaOnly, 10, 17, 0);
  if (!v5)
  {
    sub_29570A758();
    v8 = 0;
LABEL_17:
    v25 = -12782;
    goto LABEL_14;
  }

  v8 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v4, self->_auxiliaryImageCropped, 10, 17, 0);
  if (!v8)
  {
    sub_29570A6E0();
    goto LABEL_17;
  }

  v9 = objc_msgSend_processReferenceImage_histogram_doWaitForIdle_(self->_keypointDetRtb, v6, v5, 0, 0, v7);
  if (v9)
  {
    v25 = v9;
    sub_29570A5F0();
  }

  else
  {
    v11 = objc_msgSend_computeTransform_transform_outputCorners_solverSelector_histogram_roi_(self->_keypointDetRtb, v10, v8, 0, self->_keypointListRtb, 1, 0, 0);
    if (v11)
    {
      v25 = v11;
      sub_29570A668();
    }

    else
    {
      if (fabsf(keypoints + -2.0) <= 0.05)
      {
        v14 = vcvt_f32_u32(vshr_n_u32(*&self->_inputImageWidth, 2uLL));
        __asm { FMOV            V0.2S, #1.0 }
      }

      else
      {
        v12 = vcvt_f32_u32(*&self->_inputImageWidth);
        _D0 = vdiv_f32(v12, vmul_n_f32(vcvt_f32_u32(*&self->_scalerOutputWidth), keypoints));
        v14 = vmul_n_f32(v12, (1.0 - (1.0 / keypoints)) * 0.5);
      }

      v19 = self->_keypointGridHeight * self->_keypointGridWidth;
      if (v19)
      {
        p_var4 = &self->_keypointListRtb->var4;
        do
        {
          if (*p_var4 > 0.0)
          {
            keypointsCount = self->_keypointsCount;
            v22 = 2 * keypointsCount;
            v23 = *(p_var4 - 2);
            adaptiveCorrectionKeypointsAuxiliaryDistorted = self->_adaptiveCorrectionKeypointsAuxiliaryDistorted;
            *&self->_adaptiveCorrectionKeypointsReferenceDistorted[v22] = vcvtq_f64_f32(vadd_f32(*(p_var4 - 4), *(p_var4 - 4)));
            *&adaptiveCorrectionKeypointsAuxiliaryDistorted[v22] = vcvtq_f64_f32(vmla_f32(v14, _D0, v23));
            self->_keypointsCount = keypointsCount + 1;
          }

          p_var4 += 6;
          --v19;
        }

        while (v19);
      }

      v25 = 0;
    }
  }

LABEL_14:

  return v25;
}

- (id)selectTuningParametersForCapture
{
  if (objc_msgSend_count(self->_calibrationTuningParameters, a2, v2, v3, v4, v5) == 1 && (objc_msgSend_objectForKeyedSubscript_(self->_calibrationTuningParameters, v7, @"config", v8, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(self->_calibrationTuningParameters, v7, @"config", v8, v9, v10);
  }

  else
  {
    v13 = objc_msgSend_objectForKeyedSubscript_(self->_referenceMeta, v7, @"PortType", v8, v9, v10);
    v53 = objc_msgSend_objectForKeyedSubscript_(self->_auxiliaryMeta, v14, @"PortType", v15, v16, v17);
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v18 = self->_portsToConfig;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v55, v54, 16, v20);
    if (v21)
    {
      v26 = v21;
      selfCopy = self;
      v27 = *v56;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v56 != v27)
          {
            objc_enumerationMutation(v18);
          }

          v29 = *(*(&v55 + 1) + 8 * i);
          v30 = objc_msgSend_objectForKeyedSubscript_(v29, v22, @"Reference", v23, v24, v25, selfCopy);
          if (objc_msgSend_isEqualToString_(v30, v31, v13, v32, v33, v34))
          {
            v39 = objc_msgSend_objectForKeyedSubscript_(v29, v35, @"Auxiliary", v36, v37, v38);
            isEqualToString = objc_msgSend_isEqualToString_(v39, v40, v53, v41, v42, v43);

            if (isEqualToString)
            {
              calibrationTuningParameters = selfCopy->_calibrationTuningParameters;
              v46 = objc_msgSend_objectForKeyedSubscript_(v29, v22, @"Config", v23, v24, v25);
              v12 = objc_msgSend_objectForKeyedSubscript_(calibrationTuningParameters, v47, v46, v48, v49, v50);

              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, &v55, v54, 16, v25);
      }

      while (v26);
    }

    v12 = 0;
LABEL_16:
  }

  return v12;
}

- (BOOL)isImageFullResolution:(__CVBuffer *)resolution
{
  inputImageWidth = self->_inputImageWidth;
  inputImageHeight = self->_inputImageHeight;
  return inputImageWidth == CVPixelBufferGetWidth(resolution) && inputImageHeight == CVPixelBufferGetHeight(resolution);
}

- (BOOL)isImageScalerOutputResolution:(__CVBuffer *)resolution
{
  scalerOutputWidth = self->_scalerOutputWidth;
  scalerOutputHeight = self->_scalerOutputHeight;
  return scalerOutputWidth == CVPixelBufferGetWidth(resolution) && scalerOutputHeight == CVPixelBufferGetHeight(resolution);
}

- ($91EEB31E22C960290E85DB462FB2FE46)calibrationConfig
{
  v3 = *&self[6].var2;
  *&retstr->var0 = *&self[6].var0;
  *&retstr->var2 = v3;
  return self;
}

- (void)setCalibrationConfig:(id *)config
{
  v3 = *&config->var2;
  *&self->_calibrationConfig.inputImageWidth = *&config->var0;
  *&self->_calibrationConfig.maxPaddingFactor = v3;
}

@end