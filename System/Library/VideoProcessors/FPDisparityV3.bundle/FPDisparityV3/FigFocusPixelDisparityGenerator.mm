@interface FigFocusPixelDisparityGenerator
- (CGRect)focusPixelValidArea;
- (FigFocusPixelDisparityGenerator)initWithCommandQueue:(id)queue;
- (id)_createTextureOfWidth:(unsigned int)width andHeight:(unsigned int)height withFormat:(unint64_t)format textureUsage:(unint64_t)usage;
- (int)_allocateResources;
- (int)_allocateTextures;
- (int)_computeDisparityQuality:(int *)quality;
- (int)_downscale2X420fTBGRAEqualWithCommandBuffer:(id)buffer in_Ytex:(id)ytex in_UVtex:(id)vtex out_tex:(id)out_tex cropRect:(CGRect)rect;
- (int)_extractFocusPixelMetadata;
- (int)_initShaders;
- (int)_populateImagePyramidFrom420fPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect;
- (int)_populateImagePyramidFrom:(id)from;
- (int)_populateRawGreenChannelPyramid;
- (int)_setupImagePyramid;
- (int)getFPBuffersSizeFromOptions:(id)options;
- (int)getFrameSizesFromOptions:(id)options;
- (int)getPatternDetailsFrom:(id)from outTypeName:(id *)name outCountX:(unsigned int *)x outCountY:(unsigned int *)y outStartX:(unsigned int *)startX outStartY:(unsigned int *)startY outStepX:(unsigned int *)stepX outStepY:(unsigned int *)self0;
- (int)getSequenceDetailsFrom:(id)from withName:(id)name outCount:(unsigned int *)count outStart:(unsigned int *)start outStep:(unsigned int *)step;
- (int)mapPixelTypeNameToDirection:(id)direction;
- (int)prepareToProcess:(unsigned int)process;
- (int)process;
- (int)purgeResources;
- (int)readSizeFromDictionary:(id)dictionary toWidth:(unsigned int *)width toHeight:(unsigned int *)height;
- (void)_overrideTuningParametersForFactory;
- (void)dealloc;
- (void)setOptions:(id)options;
@end

@implementation FigFocusPixelDisparityGenerator

- (int)_allocateResources
{
  v4 = objc_msgSend__setupImagePyramid(self, a2, v2);
  if (v4)
  {
    v32 = v4;
    sub_29579CD00();
    return v32;
  }

  v35 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v34 = *&self->_gTopLevelDisparityWidth;
  LODWORD(v35) = self->gNumViews;
  v6 = *&self->gVxFocusPixelViewWidth;
  *(&v35 + 1) = *&self->gHxFocusPixelViewWidth;
  *&v36 = *(&v35 + 1);
  *(&v36 + 1) = v6;
  *&v37[0] = v6;
  objc_msgSend_setImagePyramid_(self->_fpDisparityEstimator, v5, self->_pyr_image);
  BYTE8(v37[5]) = 0;
  if (self->_correctionBasisCoefficientsPresent)
  {
    BYTE8(v37[5]) = 1;
    v8 = *&self->_correctionBasisCoefficients[4];
    v9 = *&self->_correctionBasisCoefficients[12];
    *(&v37[2] + 8) = *&self->_correctionBasisCoefficients[8];
    *(&v37[3] + 8) = v9;
    *(&v37[4] + 8) = *&self->_correctionBasisCoefficients[16];
    v10 = *self->_correctionBasisCoefficients;
    *(&v37[1] + 8) = v8;
    *(v37 + 8) = v10;
  }

  if (self->_processingType == 1)
  {
    BYTE8(v37[5]) = 0;
  }

  Resources = objc_msgSend_allocateResources_(self->_fpDisparityEstimator, v7, &v34);
  if (Resources)
  {
    v32 = Resources;
    sub_29579CD78();
    return v32;
  }

  Textures = objc_msgSend__allocateTextures(self, v12, v13);
  if (Textures)
  {
    v32 = Textures;
    sub_29579CDF8();
    return v32;
  }

  v17 = objc_msgSend_allocateResources(self->_fpdDemosaic, v15, v16);
  if (v17)
  {
    v32 = v17;
    sub_29579CE78();
    return v32;
  }

  if (self->_qualityEstimationEnabled)
  {
    v20 = objc_msgSend_device(self->_metalContext, v18, v19);
    v22 = objc_msgSend_newBufferWithLength_options_(v20, v21, 8, 0);
    disparitySumBuffer = self->_disparitySumBuffer;
    self->_disparitySumBuffer = v22;

    if (self->_disparitySumBuffer)
    {
      v26 = objc_msgSend_device(self->_metalContext, v24, v25);
      v28 = objc_msgSend_newBufferWithLength_options_(v26, v27, 8, 0);
      disparityCountBuffer = self->_disparityCountBuffer;
      self->_disparityCountBuffer = v28;

      if (self->_disparityCountBuffer)
      {
        goto LABEL_12;
      }

      sub_29579CEF8();
    }

    else
    {
      sub_29579CF70();
    }

    return -12786;
  }

LABEL_12:
  if (self->_processingType != 2)
  {
    return 0;
  }

  gTopLevelDisparityWidth = self->_gTopLevelDisparityWidth;
  gTopLevelDisparityHeight = self->_gTopLevelDisparityHeight;
  v32 = 0;
  self->_disparityPixelBufferForCalibration = CreatePixelBuffer();
  return v32;
}

- (int)_allocateTextures
{
  if (self->_processingType == 1)
  {
    goto LABEL_8;
  }

  gHxFocusPixelViewWidth = self->gHxFocusPixelViewWidth;
  gVxFocusPixelViewWidth = self->gVxFocusPixelViewWidth;
  gVxFocusPixelViewHeight = self->gVxFocusPixelViewHeight;
  if (gHxFocusPixelViewWidth)
  {
    gHxFocusPixelViewHeight = self->gHxFocusPixelViewHeight;
    v7 = objc_msgSend__createTextureOfWidth_andHeight_withFormat_(self, a2, self->gHxFocusPixelViewWidth, gHxFocusPixelViewHeight, 25);
    v8 = self->_focusPixelViews[0];
    self->_focusPixelViews[0] = v7;

    if (!self->_focusPixelViews[0])
    {
      sub_29579D094(&v55);
      goto LABEL_21;
    }

    v10 = objc_msgSend__createTextureOfWidth_andHeight_withFormat_(self, v9, gHxFocusPixelViewWidth, gHxFocusPixelViewHeight, 25);
    v11 = self->_focusPixelViews[1];
    self->_focusPixelViews[1] = v10;

    if (!self->_focusPixelViews[1])
    {
      sub_29579CFE8(&v55);
      goto LABEL_21;
    }
  }

  if (!gVxFocusPixelViewWidth)
  {
    goto LABEL_8;
  }

  v12 = objc_msgSend__createTextureOfWidth_andHeight_withFormat_(self, a2, gVxFocusPixelViewWidth, gVxFocusPixelViewHeight, 25);
  v13 = self->_focusPixelViews[2];
  self->_focusPixelViews[2] = v12;

  if (!self->_focusPixelViews[2])
  {
    sub_29579D1EC(&v55);
    goto LABEL_21;
  }

  v15 = objc_msgSend__createTextureOfWidth_andHeight_withFormat_(self, v14, gVxFocusPixelViewWidth, gVxFocusPixelViewHeight, 25);
  v16 = self->_focusPixelViews[3];
  self->_focusPixelViews[3] = v15;

  if (self->_focusPixelViews[3])
  {
LABEL_8:
    gRawImageWidth = self->_gRawImageWidth;
    gRawImageHeight = self->_gRawImageHeight;
    PixelBuffer = CreatePixelBuffer();
    self->_greenChannelPyramidCVP[0] = PixelBuffer;
    if (PixelBuffer)
    {
      v21 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v20, PixelBuffer, 25, 23, 0);
      gChannelTexture = self->_gChannelTexture;
      self->_gChannelTexture = v21;

      if (self->_gChannelTexture)
      {
        v23 = objc_alloc(MEMORY[0x29EDB8DE8]);
        v25 = objc_msgSend_initWithCapacity_(v23, v24, 8);
        greenChannelPyramid = self->_greenChannelPyramid;
        self->_greenChannelPyramid = v25;

        v28 = self->_greenChannelPyramid;
        if (v28)
        {
          objc_msgSend_setObject_atIndexedSubscript_(v28, v27, self->_gChannelTexture, 0);
          p_gTopLevelImageWidth = &self->_gTopLevelImageWidth;
          v30 = 1;
          v31 = vdup_n_s32(0x3F4CCCCDu);
          while (1)
          {
            v32 = *&vadd_s32(vcvt_u32_f32(vrnda_f32(vmul_f32(vcvt_f32_u32(*p_gTopLevelImageWidth), v31))), 0x100000001) & 0xFFFFFFFEFFFFFFFELL;
            *p_gTopLevelImageWidth = v32;
            if (v30 == 1)
            {
              v33 = CreatePixelBuffer();
              self->_greenChannelPyramidCVP[1] = v33;
              v35 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v34, v33, 25, 23, 0);
              objc_msgSend_setObject_atIndexedSubscript_(self->_greenChannelPyramid, v36, v35, 1);

              v38 = objc_msgSend_objectAtIndexedSubscript_(self->_greenChannelPyramid, v37, 1);

              if (!v38)
              {
                sub_29579D35C(&v55);
                goto LABEL_21;
              }
            }

            else
            {
              v39 = objc_msgSend__createTextureOfWidth_andHeight_withFormat_textureUsage_(self, HIDWORD(v32), v32, HIDWORD(v32), 25, 7);
              objc_msgSend_setObject_atIndexedSubscript_(self->_greenChannelPyramid, v40, v39, v30);

              v42 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v41, @"_greenChannelPyramid[%d] is nil", v30);
              v44 = objc_msgSend_objectAtIndexedSubscript_(self->_greenChannelPyramid, v43, v30);

              if (!v44)
              {
                sub_29579D298(v42, &v55);
                goto LABEL_21;
              }
            }

            if (++v30 == 8)
            {
              return 0;
            }
          }
        }

        sub_29579D408(&v55);
      }

      else
      {
        sub_29579D4B4(&v55);
      }
    }

    else
    {
      sub_29579D560(&v55);
    }
  }

  else
  {
    sub_29579D140(&v55);
  }

LABEL_21:
  v45 = v55;
  if (v55)
  {
    v47 = self->_focusPixelViews[0];
    self->_focusPixelViews[0] = 0;

    v48 = self->_focusPixelViews[1];
    self->_focusPixelViews[1] = 0;

    v49 = self->_focusPixelViews[2];
    self->_focusPixelViews[2] = 0;

    v50 = self->_focusPixelViews[3];
    self->_focusPixelViews[3] = 0;

    v51 = self->_gChannelTexture;
    self->_gChannelTexture = 0;

    v52 = self->_greenChannelPyramid;
    self->_greenChannelPyramid = 0;

    v53 = self->_greenChannelPyramidCVP[0];
    if (v53)
    {
      CFRelease(v53);
      self->_greenChannelPyramidCVP[0] = 0;
    }

    v54 = self->_greenChannelPyramidCVP[1];
    if (v54)
    {
      CFRelease(v54);
      self->_greenChannelPyramidCVP[1] = 0;
    }
  }

  return v45;
}

- (id)_createTextureOfWidth:(unsigned int)width andHeight:(unsigned int)height withFormat:(unint64_t)format textureUsage:(unint64_t)usage
{
  v8 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x29EDBB670], a2, format, width, height, 0);
  objc_msgSend_setUsage_(v8, v9, usage);
  v12 = objc_msgSend_device(self->_metalContext, v10, v11);
  v14 = objc_msgSend_newTextureWithDescriptor_(v12, v13, v8);

  return v14;
}

- (int)_setupImagePyramid
{
  gTopLevelDisparityHeight = self->_gTopLevelDisparityHeight;
  p_gGuideImageWidth = &self->_gGuideImageWidth;
  v5 = (logf(self->_gTopLevelDisparityWidth / self->_gGuideImageWidth) / -0.69315);
  v7 = (logf(gTopLevelDisparityHeight / self->_gGuideImageHeight) / -0.69315);
  if (v5 < v7)
  {
    LOBYTE(v7) = v5;
  }

  *&v8 = (1 << v7);
  objc_msgSend_setUseAntialiasingForDownsamplingToFinestResolution_(self->_pyr_image, v6, 0, v8, v9);
  v10 = vcvtq_f64_f32(vrndm_f32(vdiv_f32(vcvt_f32_u32(*p_gGuideImageWidth), vdup_lane_s32(v18, 0))));
  v11 = v10.f64[1];
  v19 = v10.f64[0];
  v13 = objc_msgSend_populatePyramidSchemeFromResolution_toResolution_scalingFactor_scales_allowSuccessiveDownscale2x_(self->_pyr_image, v12, 8, 0);
  if (v13)
  {
    ResourcesWithMaxInputResolution = v13;
    sub_29579D60C();
  }

  else
  {
    ResourcesWithMaxInputResolution = objc_msgSend_allocateResourcesWithMaxInputResolution_(self->_pyr_image, v14, v15, v19, v11);
    if (ResourcesWithMaxInputResolution)
    {
      sub_29579D688();
    }
  }

  return ResourcesWithMaxInputResolution;
}

- (FigFocusPixelDisparityGenerator)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v30.receiver = self;
  v30.super_class = FigFocusPixelDisparityGenerator;
  v5 = [(FigFocusPixelDisparityGenerator *)&v30 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = MEMORY[0x29EDB9F48];
  v7 = objc_opt_class();
  v9 = objc_msgSend_bundleForClass_(v6, v8, v7);
  v10 = objc_alloc(MEMORY[0x29EDC0A40]);
  inited = objc_msgSend_initWithbundle_andOptionalCommandQueue_(v10, v11, v9, queueCopy);
  v13 = *(v5 + 47);
  *(v5 + 47) = inited;

  if (!*(v5 + 47))
  {
    sub_29579D8E4();
LABEL_15:

    v28 = 0;
    goto LABEL_9;
  }

  if (objc_msgSend__initShaders(v5, v14, v15))
  {
    sub_29579D704();
    goto LABEL_15;
  }

  v16 = [FocusPixelDisparityDemosaic alloc];
  v18 = objc_msgSend_initWithMetalContext_(v16, v17, *(v5 + 47));
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  if (!*(v5 + 8))
  {
    sub_29579D86C();
    goto LABEL_15;
  }

  v20 = [PyrGPU alloc];
  v22 = objc_msgSend_initWithMetalContext_(v20, v21, *(v5 + 47));
  v23 = *(v5 + 9);
  *(v5 + 9) = v22;

  if (!*(v5 + 9))
  {
    sub_29579D7F4();
    goto LABEL_15;
  }

  v24 = [FPDisparityEstimator alloc];
  v26 = objc_msgSend_initWithMetalContext_(v24, v25, *(v5 + 47));
  v27 = *(v5 + 10);
  *(v5 + 10) = v26;

  if (!*(v5 + 10))
  {
    sub_29579D77C();
    goto LABEL_15;
  }

  *(v5 + 6) = 0;
  *(v5 + 7) = 0;

LABEL_8:
  v28 = v5;
LABEL_9:

  return v28;
}

- (void)setOptions:(id)options
{
  optionsCopy = options;
  objc_storeStrong(&self->_options, options);
  v6 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v5, *MEMORY[0x29EDC0288]);
  v7 = *MEMORY[0x29EDBFF48];
  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v8, *MEMORY[0x29EDBFF48]);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, *MEMORY[0x29EDC07A0]);
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x29EDBFF60]);
  moduleSerialNumber = self->_moduleSerialNumber;
  self->_moduleSerialNumber = v13;

  v15 = *MEMORY[0x29EDC0298];
  v17 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v16, *MEMORY[0x29EDC0298]);
  v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"FPDisparity");

  if (v19 || (objc_msgSend_objectForKeyedSubscript_(optionsCopy, v20, v15), (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = [FocusPixelDisparityTuningParameters alloc];
    v23 = objc_msgSend_initWithTuningDictionary_cameraInfoByPortType_(v21, v22, v19, v6);
    fpDisparityTuningParameters = self->_fpDisparityTuningParameters;
    self->_fpDisparityTuningParameters = v23;

    v27 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v25, v26);
    objc_msgSend_setFpDisparityEstimatorParams_(self->_fpDisparityEstimator, v28, v27);
  }

  else
  {
    v27 = self->_fpDisparityTuningParameters;
    self->_fpDisparityTuningParameters = 0;
  }

  self->_correctionBasisCoefficientsPresent = 0;
  v30 = objc_msgSend_objectForKeyedSubscript_(v19, v29, @"use_correction");
  v33 = objc_msgSend_BOOLValue(v30, v31, v32);

  if (v33)
  {
    v35 = objc_msgSend_objectForKeyedSubscript_(v6, v34, v7);
    v37 = objc_msgSend_objectForKeyedSubscript_(v35, v36, *MEMORY[0x29EDBFEF0]);

    if (v37)
    {
      v38 = v37;
      v41 = objc_msgSend_bytes(v38, v39, v40);
      for (i = 0; i != 20; ++i)
      {
        self->_correctionBasisCoefficients[i] = *(v41 + 4 + i * 4);
      }

      self->_correctionBasisCoefficientsPresent = 1;
    }
  }
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_metalContext, a2, v2);
  objc_msgSend_purgeResources(self, v4, v5);
  v6.receiver = self;
  v6.super_class = FigFocusPixelDisparityGenerator;
  [(FigFocusPixelDisparityGenerator *)&v6 dealloc];
}

- (int)purgeResources
{
  v3 = self->_greenChannelPyramidCVP[0];
  if (v3)
  {
    CFRelease(v3);
    self->_greenChannelPyramidCVP[0] = 0;
  }

  v4 = self->_greenChannelPyramidCVP[1];
  if (v4)
  {
    CFRelease(v4);
    self->_greenChannelPyramidCVP[1] = 0;
  }

  disparityPixelBufferForCalibration = self->_disparityPixelBufferForCalibration;
  if (disparityPixelBufferForCalibration)
  {
    CFRelease(disparityPixelBufferForCalibration);
    self->_disparityPixelBufferForCalibration = 0;
  }

  greenChannelPyramid = self->_greenChannelPyramid;
  self->_greenChannelPyramid = 0;

  v7 = self->_focusPixelViews[0];
  self->_focusPixelViews[0] = 0;

  v8 = self->_focusPixelViews[1];
  self->_focusPixelViews[1] = 0;

  v9 = self->_focusPixelViews[2];
  self->_focusPixelViews[2] = 0;

  v10 = self->_focusPixelViews[3];
  self->_focusPixelViews[3] = 0;

  gChannelTexture = self->_gChannelTexture;
  self->_gChannelTexture = 0;

  rawImageTexture = self->_rawImageTexture;
  self->_rawImageTexture = 0;

  segmentationTexture = self->_segmentationTexture;
  self->_segmentationTexture = 0;

  segmentationConfidenceTexture = self->_segmentationConfidenceTexture;
  self->_segmentationConfidenceTexture = 0;

  return 0;
}

- (int)getSequenceDetailsFrom:(id)from withName:(id)name outCount:(unsigned int *)count outStart:(unsigned int *)start outStep:(unsigned int *)step
{
  v18 = 0;
  v10 = objc_msgSend_objectForKeyedSubscript_(from, a2, name);
  v12 = v10;
  if (!v10)
  {
    sub_29579DB60(&v19);
LABEL_17:
    v16 = v19;
    goto LABEL_12;
  }

  if (!count)
  {
    goto LABEL_5;
  }

  v13 = objc_msgSend_cmi_unsignedIntValueForKey_defaultValue_found_(v10, v11, @"Count", 0, &v18);
  if (v18 != 1)
  {
    sub_29579D95C(&v19);
    goto LABEL_17;
  }

  *count = v13;
LABEL_5:
  if (!start)
  {
    goto LABEL_8;
  }

  v14 = objc_msgSend_cmi_unsignedIntValueForKey_defaultValue_found_(v12, v11, @"Start", 0, &v18);
  if (v18 != 1)
  {
    sub_29579DA08(&v19);
    goto LABEL_17;
  }

  *start = v14;
LABEL_8:
  if (!step)
  {
    v16 = 0;
    goto LABEL_12;
  }

  v15 = objc_msgSend_cmi_unsignedIntValueForKey_defaultValue_found_(v12, v11, @"Step", 0, &v18);
  if ((v18 & 1) == 0)
  {
    sub_29579DAB4(&v19);
    goto LABEL_17;
  }

  v16 = 0;
  *step = v15;
LABEL_12:

  return v16;
}

- (int)getPatternDetailsFrom:(id)from outTypeName:(id *)name outCountX:(unsigned int *)x outCountY:(unsigned int *)y outStartX:(unsigned int *)startX outStartY:(unsigned int *)startY outStepX:(unsigned int *)stepX outStepY:(unsigned int *)self0
{
  fromCopy = from;
  v18 = fromCopy;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  if (name)
  {
    v19 = objc_msgSend_objectForKeyedSubscript_(fromCopy, v17, @"PixelType");
    v20 = v19;
    if (!v19)
    {
      sub_29579DC0C(&v30);
      v24 = v30;
      goto LABEL_26;
    }

    v21 = v19;
    *name = v20;
  }

  else
  {
    v20 = 0;
  }

  if (x || startX || stepX)
  {
    SequenceDetailsFrom_withName_outCount_outStart_outStep = objc_msgSend_getSequenceDetailsFrom_withName_outCount_outStart_outStep_(self, v17, v18, @"X", &v29, &v28 + 4, &v28);
    if (SequenceDetailsFrom_withName_outCount_outStart_outStep)
    {
      v24 = SequenceDetailsFrom_withName_outCount_outStart_outStep;
      sub_29579DCB8();
      goto LABEL_26;
    }

    if (x)
    {
      *x = v29;
    }

    if (startX)
    {
      *startX = HIDWORD(v28);
    }

    if (stepX)
    {
      *stepX = v28;
    }
  }

  if (!y && !startY && !stepY)
  {
    goto LABEL_25;
  }

  v23 = objc_msgSend_getSequenceDetailsFrom_withName_outCount_outStart_outStep_(self, v17, v18, @"Y", &v27 + 4, &v27, &v26);
  if (v23)
  {
    v24 = v23;
    sub_29579DD34();
    goto LABEL_26;
  }

  if (y)
  {
    *y = HIDWORD(v27);
  }

  if (startY)
  {
    *startY = v27;
  }

  if (stepY)
  {
    v24 = 0;
    *stepY = v26;
  }

  else
  {
LABEL_25:
    v24 = 0;
  }

LABEL_26:

  return v24;
}

- (int)readSizeFromDictionary:(id)dictionary toWidth:(unsigned int *)width toHeight:(unsigned int *)height
{
  dictionaryCopy = dictionary;
  v9 = dictionaryCopy;
  v12 = 0;
  if (width)
  {
    *width = objc_msgSend_cmi_intValueForKey_defaultValue_found_(dictionaryCopy, v8, @"width", 0, &v12);
    if (v12 != 1)
    {
      v11 = 772;
      goto LABEL_9;
    }
  }

  if (height)
  {
    *height = objc_msgSend_cmi_intValueForKey_defaultValue_found_(v9, v8, @"height", 0, &v12);
    if (v12)
    {
      LODWORD(height) = 0;
      goto LABEL_6;
    }

    v11 = 778;
LABEL_9:
    sub_29579DDB0(v11, &v13);
    LODWORD(height) = v13;
  }

LABEL_6:

  return height;
}

- (int)getFrameSizesFromOptions:(id)options
{
  v4 = objc_msgSend_objectForKeyedSubscript_(options, a2, *MEMORY[0x29EDC0298]);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"sizes");

  if (!v6)
  {
    sub_29579E25C(&v21);
    v12 = 0;
    v15 = 0;
    v17 = 0;
    v9 = 0;
LABEL_21:
    v19 = v21;
    goto LABEL_11;
  }

  v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"green_size");
  if (!v9)
  {
    sub_29579E1B0(&v21);
    v12 = 0;
LABEL_16:
    v15 = 0;
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  if (objc_msgSend_readSizeFromDictionary_toWidth_toHeight_(self, v8, v9, &self->_gTopLevelImageWidth, &self->_gTopLevelImageHeight))
  {
    sub_29579DE68();
    v12 = 0;
LABEL_18:
    v15 = 0;
    goto LABEL_23;
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(v6, v10, @"disparity_size");
  if (!v12)
  {
    sub_29579E104(&v21);
    goto LABEL_16;
  }

  if (objc_msgSend_readSizeFromDictionary_toWidth_toHeight_(self, v11, v12, &self->_gTopLevelDisparityWidth, &self->_gTopLevelDisparityHeight))
  {
    sub_29579DEE4();
    goto LABEL_18;
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(v6, v13, @"raw_size");
  if (!v15)
  {
    sub_29579E058(&v21);
    goto LABEL_20;
  }

  if (!objc_msgSend_readSizeFromDictionary_toWidth_toHeight_(self, v14, v15, &self->_gRawImageWidth, &self->_gRawImageHeight))
  {
    v17 = objc_msgSend_objectForKeyedSubscript_(v6, v16, @"color_size");
    if (objc_msgSend_readSizeFromDictionary_toWidth_toHeight_(self, v18, v17, &self->_gGuideImageWidth, &self->_gGuideImageHeight))
    {
      sub_29579DFDC();
    }

    goto LABEL_10;
  }

  sub_29579DF60();
LABEL_23:
  v17 = 0;
LABEL_10:
  v19 = 0;
LABEL_11:

  return v19;
}

- (int)getFPBuffersSizeFromOptions:(id)options
{
  v4 = objc_msgSend_objectForKeyedSubscript_(options, a2, @"Patterns");
  v7 = v4;
  if (!v4)
  {
    sub_29579E67C(&v31);
    goto LABEL_36;
  }

  if (objc_msgSend_count(v4, v5, v6) > 0x10)
  {
    sub_29579E5D0(&v31);
LABEL_36:
    v16 = 0;
    v15 = 0;
LABEL_37:
    v25 = v31;
    goto LABEL_28;
  }

  if (objc_msgSend_count(v7, v8, v9))
  {
    v11 = 0;
    v27 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v16;
      v18 = v15;
      v16 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v11);

      if (!v16)
      {
        sub_29579E524(&v31);
        v25 = v31;
        goto LABEL_28;
      }

      v29 = 0;
      v30 = 0;
      v28 = v15;
      PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY = objc_msgSend_getPatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY_(self, v19, v16, &v28, &v30, &v29, 0, 0, 0, 0);
      v15 = v28;

      if (PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY)
      {
        sub_29579E308(PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY, &v31);
        goto LABEL_37;
      }

      if ((objc_msgSend_isEqualToString_(v15, v21, @"H0") & 1) != 0 || objc_msgSend_isEqualToString_(v15, v22, @"H1"))
      {
        if (v14)
        {
          if (v14 != v30 || (v14 = v30, v24 = v13 == v29, v13 = v29, !v24))
          {
            sub_29579E478(&v31);
            goto LABEL_37;
          }
        }

        else
        {
          v14 = v30;
          v13 = v29;
        }
      }

      else
      {
        if ((objc_msgSend_isEqualToString_(v15, v22, @"V0") & 1) == 0 && !objc_msgSend_isEqualToString_(v15, v22, @"V1"))
        {
          fig_log_get_emitter();
          FigDebugAssert3();
          fig_log_get_emitter();
          v25 = FigSignalErrorAtGM();
          goto LABEL_28;
        }

        if (v14)
        {
          if (v12 != v30 || (v12 = v30, v24 = v27 == v29, v27 = v29, !v24))
          {
            sub_29579E3CC(&v31);
            goto LABEL_37;
          }
        }

        else
        {
          v12 = v30;
          v27 = v29;
        }
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(v7, v22, v23));
    if (v14)
    {
      self->gHxFocusPixelViewWidth = v14;
      self->gHxFocusPixelViewHeight = v13;
      self->gNumViews = 2;
    }

    if (v12)
    {
      v25 = 0;
      self->gVxFocusPixelViewWidth = v12;
      self->gVxFocusPixelViewHeight = v27;
      self->gNumViews = 4;
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v25 = 0;
LABEL_28:

  return v25;
}

- (int)prepareToProcess:(unsigned int)process
{
  self->_processingType = process;
  objc_msgSend_getFPBuffersSizeFromOptions_(self, a2, self->_options);
  objc_msgSend_getFrameSizesFromOptions_(self, v5, self->_options);
  if (process - 1 > 1)
  {
    if (!process && (self->_gTopLevelDisparityWidth != 400 || self->_gTopLevelDisparityHeight != 300))
    {
      sub_29579E728();
      return 1;
    }
  }

  else if (self->_gTopLevelDisparityWidth != 208 || self->_gTopLevelDisparityHeight != 156)
  {
    sub_29579E7A0();
    return 1;
  }

  result = objc_msgSend__allocateResources(self, v6, v7);
  if (!result)
  {
    return result;
  }

  sub_29579E818();
  return 1;
}

- (int)process
{
  v120 = 1;
  outDisparity = self->_outDisparity;
  if (self->_processingType == 1)
  {
    objc_msgSend__overrideTuningParametersForFactory(self, a2, v2);
    __asm { FMOV            V0.2S, #-3.0 }
  }

  else
  {
    __asm { FMOV            V0.2S, #-20.0 }
  }

  v10 = -_D0;
  if (!self->_imageSampleBuffer)
  {
    sub_29579F054();
    return 8;
  }

  if (!self->_rawImagePixelBufferBuffer)
  {
    sub_29579EFDC();
    return 8;
  }

  if (!outDisparity)
  {
    sub_29579EF64();
    return 8;
  }

  FocusPixelMetadata = objc_msgSend__extractFocusPixelMetadata(self, a2, v2);
  if (FocusPixelMetadata)
  {
    v114 = FocusPixelMetadata;
    sub_29579E890();
    return v114;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(self->_imageSampleBuffer);
  if (!ImageBuffer)
  {
    sub_29579EEEC();
    return 8;
  }

  v14 = ImageBuffer;
  v15 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v13, self->_rawImagePixelBufferBuffer, 25, 23, 0);
  rawImageTexture = self->_rawImageTexture;
  self->_rawImageTexture = v15;

  if (!self->_rawImageTexture)
  {
    sub_29579EE74();
    return 1;
  }

  if (self->_processingType <= 2)
  {
    if (CVPixelBufferGetPixelFormatType(self->_H0) == 1278226742)
    {
      v18 = 23;
    }

    else
    {
      if (CVPixelBufferGetPixelFormatType(self->_H0) != 1278226536)
      {
        sub_29579E904();
        return 8;
      }

      v18 = 25;
    }

    H0 = self->_H0;
    if (H0)
    {
      v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v17, H0, v18, 17, 0);
      v21 = self->_focusPixelViews[0];
      self->_focusPixelViews[0] = v20;
    }

    H1 = self->_H1;
    if (H1)
    {
      v23 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v17, H1, v18, 17, 0);
      v24 = self->_focusPixelViews[1];
      self->_focusPixelViews[1] = v23;
    }

    V0 = self->_V0;
    if (V0)
    {
      v26 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v17, V0, v18, 17, 0);
      v27 = self->_focusPixelViews[2];
      self->_focusPixelViews[2] = v26;
    }

    V1 = self->_V1;
    if (V1)
    {
      v29 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v17, V1, v18, 17, 0);
      v30 = self->_focusPixelViews[3];
      self->_focusPixelViews[3] = v29;
    }
  }

  personSegmentationPixelBuffer = self->_personSegmentationPixelBuffer;
  if (personSegmentationPixelBuffer)
  {
    v32 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v17, personSegmentationPixelBuffer, 55, 17, 0);
    segmentationTexture = self->_segmentationTexture;
    self->_segmentationTexture = v32;

    personSegmentationConfidencePixelBuffer = self->_personSegmentationConfidencePixelBuffer;
    if (personSegmentationConfidencePixelBuffer)
    {
      v36 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v34, personSegmentationConfidencePixelBuffer, 55, 17, 0);
      segmentationConfidenceTexture = self->_segmentationConfidenceTexture;
      self->_segmentationConfidenceTexture = v36;
    }
  }

  v38 = CMGetAttachment(self->_imageSampleBuffer, *MEMORY[0x29EDBFF98], 0);
  v40 = v38;
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size = xmmword_2957A35F0;
  v118.origin.x = 0.0;
  v118.origin.y = 0.0;
  v118.size = xmmword_2957A35F0;
  v117.origin.x = 0.0;
  v117.origin.y = 0.0;
  __asm { FMOV            V1.2D, #1.0 }

  v117.size = _Q1;
  v116.origin.x = 0.0;
  v116.origin.y = 0.0;
  v116.size = xmmword_2957A35F0;
  if (self->_processingType)
  {
    objc_msgSend_setImageAGC_(self->_fpDisparityEstimator, v39, 0);
    v42 = 0;
    objc_msgSend_setQuadraBinningFactor_(self->_fpDisparityEstimator, v43, 0, *&v116.origin.x, *&v116.origin.y, *&v116.size);
  }

  else
  {
    if (!v38)
    {
      sub_29579EDFC();
      return 8;
    }

    v46 = objc_msgSend_objectForKeyedSubscript_(v38, v39, @"AGC");
    v49 = objc_msgSend_intValue(v46, v47, v48);
    objc_msgSend_setImageAGC_(self->_fpDisparityEstimator, v50, v49);

    v52 = objc_msgSend_objectForKeyedSubscript_(v40, v51, *MEMORY[0x29EDC0658]);
    v42 = objc_msgSend_intValue(v52, v53, v54);

    v56 = objc_msgSend_objectForKeyedSubscript_(v40, v55, *MEMORY[0x29EDC06D8]);
    v57 = CGRectMakeWithDictionaryRepresentation(v56, &rect);

    if (!v57)
    {
      sub_29579E97C(v40);
      return 8;
    }

    v59 = objc_msgSend_objectForKeyedSubscript_(v40, v58, *MEMORY[0x29EDC06F8]);
    v60 = CGRectMakeWithDictionaryRepresentation(v59, &v118);

    if (!v60)
    {
      sub_29579E9FC(v40);
      return 8;
    }

    v62 = objc_msgSend_objectForKeyedSubscript_(v40, v61, *MEMORY[0x29EDC0008]);
    CGRectMakeWithDictionaryRepresentation(v62, &v117);

    v64 = objc_msgSend_objectForKeyedSubscript_(v40, v63, *MEMORY[0x29EDC0748]);
    v65 = CGRectMakeWithDictionaryRepresentation(v64, &v116);

    if (!v65)
    {
      sub_29579EA7C(v40);
      return 8;
    }

    objc_msgSend_setQuadraBinningFactor_(self->_fpDisparityEstimator, v66, v42, *&v116.origin.x, *&v116.origin.y, *&v116.size);
  }

  objc_msgSend_setSensorCropRect_(self->_fpDisparityEstimator, v44, v45, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  objc_msgSend_setSensorReadoutRect_(self->_fpDisparityEstimator, v67, v68, v118.origin.x, v118.origin.y, v118.size.width, v118.size.height);
  objc_msgSend_setTotalSensorCropRect_(self->_fpDisparityEstimator, v69, v70, v116.origin.x, v116.origin.y, *&v116.size);
  if (objc_msgSend__populateImagePyramidFrom420fPixelBuffer_cropRect_(self, v71, v14, v117.origin.x, v117.origin.y, v117.size.width, v117.size.height))
  {
    sub_29579EAFC(v40);
    return 3;
  }

  if (v42 == 2)
  {
    v73 = 2;
  }

  else
  {
    v73 = 1;
  }

  v74 = vdup_n_s32(v73);
  v75 = vmla_s32(vmovn_s64(vcvtq_s64_f64(rect.origin)), v74, vmovn_s64(vcvtq_s64_f64(v118.origin)));
  v76 = vmul_s32(v74, vmovn_s64(vcvtq_s64_f64(v118.size)));
  if (objc_msgSend_demosaicGreenOnly_fromL00h_validRect_waitForCompletion_(self->_fpdDemosaic, v72, self->_gChannelTexture, self->_rawImageTexture, 0, (v75.u16[0] >> (v42 != 0)), (v75.u16[2] >> (v42 != 0)), (v76.u16[0] >> (v42 != 0)), (v76.u16[2] >> (v42 != 0))))
  {
    sub_29579EB7C(v40);
    return 5;
  }

  if (objc_msgSend__populateRawGreenChannelPyramid(self, v77, v78))
  {
    sub_29579EBFC(v40);
    return 6;
  }

  objc_msgSend_setH0ImTexture_(self->_fpDisparityEstimator, v79, self->_focusPixelViews[0]);
  objc_msgSend_setH1ImTexture_(self->_fpDisparityEstimator, v80, self->_focusPixelViews[1]);
  objc_msgSend_setV0ImTexture_(self->_fpDisparityEstimator, v81, self->_focusPixelViews[2]);
  objc_msgSend_setV1ImTexture_(self->_fpDisparityEstimator, v82, self->_focusPixelViews[3]);
  objc_msgSend_setImagePyramid_(self->_fpDisparityEstimator, v83, self->_pyr_image);
  objc_msgSend_setGChannelPyramid_(self->_fpDisparityEstimator, v84, self->_greenChannelPyramid);
  objc_msgSend_setSegmentationTexture_(self->_fpDisparityEstimator, v85, self->_segmentationTexture);
  objc_msgSend_setSegmentationConfidenceTexture_(self->_fpDisparityEstimator, v86, self->_segmentationConfidenceTexture);
  objc_msgSend_setBinaryLambdaTexture_(self->_fpDisparityEstimator, v87, 0);
  binaryLambdaPixelBuffer = self->_binaryLambdaPixelBuffer;
  if (binaryLambdaPixelBuffer)
  {
    v90 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v88, binaryLambdaPixelBuffer, 10, 17, 0);
    binaryLambdaTexture = self->_binaryLambdaTexture;
    self->_binaryLambdaTexture = v90;

    v93 = self->_binaryLambdaTexture;
    if (v93)
    {
      objc_msgSend_setBinaryLambdaTexture_(self->_fpDisparityEstimator, v92, v93);
      goto LABEL_42;
    }

    sub_29579EC7C(v40);
    return 1;
  }

LABEL_42:
  if (objc_msgSend_setOutputDisparity_(self->_fpDisparityEstimator, v88, outDisparity))
  {
    sub_29579ECFC(v40);
    return 8;
  }

  v96 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v94, v95);
  objc_msgSend_setFpDisparityEstimatorParams_(self->_fpDisparityEstimator, v97, v96);

  v100 = objc_msgSend_fpDisparityEstimatorParams(self->_fpDisparityEstimator, v98, v99);
  v103 = objc_msgSend_FPpostprocessingParameters(v100, v101, v102);
  objc_msgSend_shiftToDisparityRatio(v103, v104, v105);
  v107 = v106;

  LODWORD(v108) = v107;
  if (objc_msgSend_estimateFocusPixelDisparityWithBox_cstr_range_disparity_scaling_factor_(self->_fpDisparityEstimator, v109, v110, v10, v108))
  {
    sub_29579ED7C(v40);
    return 7;
  }

  else
  {
    if (self->_qualityEstimationEnabled)
    {
      if (objc_msgSend__computeDisparityQuality_(self, v111, &v120))
      {
        v113 = 0;
        v120 = 0;
      }

      else
      {
        v113 = v120;
      }
    }

    else
    {
      objc_msgSend_waitForIdle(self->_metalContext, v111, v112);
      v113 = 1;
    }

    self->_disparityQuality = v113;

    return 0;
  }
}

- (int)_populateRawGreenChannelPyramid
{
  objc_msgSend_setObject_atIndexedSubscript_(self->_greenChannelPyramid, a2, self->_gChannelTexture, 0);
  v5 = objc_msgSend_commandQueue(self->_metalContext, v3, v4);
  v8 = objc_msgSend_commandBuffer(v5, v6, v7);

  if (!v8)
  {
    sub_29579F23C(&v61);
    v57 = v61;
    goto LABEL_9;
  }

  v9 = 0;
  for (i = 1; i != 8; ++i)
  {
    v11 = objc_opt_new();
    v14 = v11;
    if (!v11)
    {
      sub_29579F178(v9, &v60);
      v57 = v60;
LABEL_12:

      goto LABEL_9;
    }

    v15 = objc_msgSend_colorAttachments(v11, v12, v13);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);
    objc_msgSend_setLoadAction_(v17, v18, 0);

    v21 = objc_msgSend_colorAttachments(v14, v19, v20);
    v23 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, 0);
    objc_msgSend_setStoreAction_(v23, v24, 1);

    v26 = objc_msgSend_objectAtIndexedSubscript_(self->_greenChannelPyramid, v25, i);
    v29 = objc_msgSend_colorAttachments(v14, v27, v28);
    v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0);
    objc_msgSend_setTexture_(v31, v32, v26);

    v34 = objc_msgSend_renderCommandEncoderWithDescriptor_(v8, v33, v14);

    if (!v34)
    {
      sub_29579F0CC(&v59);
      v57 = v59;
      goto LABEL_12;
    }

    objc_msgSend_setRenderPipelineState_(v34, v35, self->_gChannelRescale);
    v38 = objc_msgSend_fullRangeVertexBuf(self->_metalContext, v36, v37);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v34, v39, v38, 0, 0);

    v41 = objc_msgSend_objectAtIndexedSubscript_(self->_greenChannelPyramid, v40, i - 1);
    objc_msgSend_setFragmentTexture_atIndex_(v34, v42, v41, 0);

    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v34, v43, 4, 0, 4);
    objc_msgSend_endEncoding(v34, v44, v45);

    v9 = v34;
  }

  if (*MEMORY[0x29EDB9270])
  {
    v48 = objc_msgSend_commandQueue(v8, v46, v47);
    v51 = objc_msgSend_commandBuffer(v48, v49, v50);

    objc_msgSend_setLabel_(v51, v52, @"KTRACE_MTLCMDBUF");
    objc_msgSend_addCompletedHandler_(v51, v53, &unk_2A1C9F9D0);
    objc_msgSend_commit(v51, v54, v55);
    objc_msgSend_addCompletedHandler_(v8, v56, &unk_2A1C9F9F0);
  }

  objc_msgSend_commit(v8, v46, v47);

  v57 = 0;
LABEL_9:

  return v57;
}

- (int)_populateImagePyramidFrom:(id)from
{
  fromCopy = from;
  v7 = objc_msgSend_commandQueue(self->_metalContext, v5, v6);
  v10 = objc_msgSend_commandBuffer(v7, v8, v9);

  if (v10)
  {
    v12 = objc_msgSend_doImagePyramidWithCommandBuffer_in_tex_(self->_pyr_image, v11, v10, fromCopy);
    if (v12)
    {
      v26 = v12;
      sub_29579F2E8();
    }

    else
    {
      if (*MEMORY[0x29EDB9270])
      {
        v15 = objc_msgSend_commandQueue(v10, v13, v14);
        v18 = objc_msgSend_commandBuffer(v15, v16, v17);

        objc_msgSend_setLabel_(v18, v19, @"KTRACE_MTLCMDBUF");
        objc_msgSend_addCompletedHandler_(v18, v20, &unk_2A1C9FA10);
        objc_msgSend_commit(v18, v21, v22);
        objc_msgSend_addCompletedHandler_(v10, v23, &unk_2A1C9FA30);
      }

      objc_msgSend_commit(v10, v13, v14);
      objc_msgSend_countScales(self->_pyr_image, v24, v25);
      v26 = 0;
    }
  }

  else
  {
    sub_29579F364(&v28);
    v26 = v28;
  }

  return v26;
}

- (int)_populateImagePyramidFrom420fPixelBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_msgSend_commandQueue(self->_metalContext, a2, buffer);
  v13 = objc_msgSend_commandBuffer(v10, v11, v12);

  if (!v13)
  {
    sub_29579F84C(&v64);
    v45 = v64;
    goto LABEL_18;
  }

  v15 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v14, buffer, 10, 23, 0);
  if (!v15)
  {
    sub_29579F7D4();
LABEL_28:
    v45 = -12786;
    goto LABEL_18;
  }

  v17 = v15;
  v18 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v16, buffer, 30, 23, 1);
  if (!v18)
  {
    sub_29579F744(v17);
    goto LABEL_28;
  }

  v21 = v18;
  v24 = vcvts_n_f32_u64(objc_msgSend_width(v17, v19, v20), 1uLL);
  v25 = vcvts_n_f32_u64(objc_msgSend_height(v17, v22, v23), 1uLL);
  v27 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v26, self->_greenChannelPyramidCVP[0], 80, 23, 0, v24, v25);
  if (!v27)
  {
    sub_29579F6AC(v21, v17);
    goto LABEL_28;
  }

  v29 = v27;
  v30 = objc_msgSend__downscale2X420fTBGRAEqualWithCommandBuffer_in_Ytex_in_UVtex_out_tex_cropRect_(self, v28, v13, v17, v21, v27, x, y, width, height);
  if (v30)
  {
    v45 = v30;
    sub_29579F410(v30, v29, v21, v17);
  }

  else
  {
    v61 = v21;
    v62 = v17;
    v63 = v13;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    while (v24 * 0.5 > *objc_msgSend_pyramidDimensions(self->_pyr_image, v31, v32) && v25 * 0.5 > *(objc_msgSend_pyramidDimensions(self->_pyr_image, v36, v37) + 8))
    {
      v38 = objc_msgSend_newTextureViewWithPixelFormat_(v29, v36, 53);

      if (!v38)
      {
        sub_29579F608();
LABEL_22:
        v45 = -12786;
        goto LABEL_23;
      }

      v24 = v24 * 0.5;
      v25 = v25 * 0.5;
      v33 ^= 1u;
      v40 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_textureSize_plane_(self->_metalContext, v39, self->_greenChannelPyramidCVP[v33], 80, 23, 0, v24, v25);

      if (!v40)
      {
        sub_29579F564();
        goto LABEL_22;
      }

      v42 = objc_msgSend_newTextureViewWithPixelFormat_(v40, v41, 53);

      if (!v42)
      {
        sub_29579F4C0();
        goto LABEL_22;
      }

      v44 = objc_msgSend_downscale2XEqualWithCommandBuffer_in_u32_alias_tex_out_u32_alias_tex_(self->_pyr_image, v43, v63, v38, v42);
      v34 = v42;
      v35 = v38;
      v29 = v40;
      if (v44)
      {
        v45 = v44;
        fig_log_get_emitter();
        FigDebugAssert3();

LABEL_23:
        v13 = v63;
        goto LABEL_18;
      }
    }

    v13 = v63;
    v46 = objc_msgSend_doImagePyramidWithCommandBuffer_in_tex_(self->_pyr_image, v36, v63, v29);
    if (v46)
    {
      v45 = v46;
      fig_log_get_emitter();
      FigDebugAssert3();
    }

    else
    {
      if (*MEMORY[0x29EDB9270])
      {
        v49 = objc_msgSend_commandQueue(v63, v47, v48);
        v52 = objc_msgSend_commandBuffer(v49, v50, v51);

        objc_msgSend_setLabel_(v52, v53, @"KTRACE_MTLCMDBUF");
        objc_msgSend_addCompletedHandler_(v52, v54, &unk_2A1C9FA50);
        objc_msgSend_commit(v52, v55, v56);
        objc_msgSend_addCompletedHandler_(v63, v57, &unk_2A1C9FA70);
      }

      objc_msgSend_commit(v63, v47, v48);
      objc_msgSend_countScales(self->_pyr_image, v58, v59);

      v45 = 0;
    }
  }

LABEL_18:

  return v45;
}

- (int)_initShaders
{
  v3 = objc_opt_new();
  v6 = v3;
  if (!v3)
  {
    sub_29579FC54(&v47);
LABEL_15:
    v45 = v47;
    goto LABEL_8;
  }

  v7 = objc_msgSend_colorAttachments(v3, v4, v5);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
  objc_msgSend_setPixelFormat_(v9, v10, 25);

  v13 = objc_msgSend_library(self->_metalContext, v11, v12);
  v15 = objc_msgSend_newFunctionWithName_(v13, v14, @"VertexPassthrough");
  objc_msgSend_setVertexFunction_(v6, v16, v15);

  v19 = objc_msgSend_vertexFunction(v6, v17, v18);

  if (!v19)
  {
    sub_29579FBA8(&v47);
    goto LABEL_15;
  }

  v22 = objc_msgSend_library(self->_metalContext, v20, v21);
  v24 = objc_msgSend_newFunctionWithName_(v22, v23, @"FragmentRescale");
  objc_msgSend_setFragmentFunction_(v6, v25, v24);

  v28 = objc_msgSend_fragmentFunction(v6, v26, v27);

  if (!v28)
  {
    sub_29579FAFC(&v47);
    goto LABEL_15;
  }

  v31 = objc_msgSend_fullRangeVertexDesc(self->_metalContext, v29, v30);
  objc_msgSend_setVertexDescriptor_(v6, v32, v31);

  v35 = objc_msgSend_device(self->_metalContext, v33, v34);
  v37 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v35, v36, v6, 0);
  gChannelRescale = self->_gChannelRescale;
  self->_gChannelRescale = v37;

  if (!self->_gChannelRescale)
  {
    sub_29579FA50(&v47);
    goto LABEL_15;
  }

  v40 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v39, @"downscale_2x_equal_420ToRGB_kernel", 0);
  v41 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v40;

  if (!self->_pipelineStates[1])
  {
    sub_29579F9A4(&v47);
    goto LABEL_15;
  }

  v43 = objc_msgSend_computePipelineStateFor_constants_(self->_metalContext, v42, @"disparityPixelSum", 0);
  v44 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v43;

  if (!self->_pipelineStates[2])
  {
    sub_29579F8F8(&v47);
    goto LABEL_15;
  }

  v45 = 0;
LABEL_8:

  return v45;
}

- (int)mapPixelTypeNameToDirection:(id)direction
{
  directionCopy = direction;
  if (qword_2A1389908 != -1)
  {
    sub_29579FD00();
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(qword_2A1389900, v3, directionCopy);
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_intValue(v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int)_extractFocusPixelMetadata
{
  v3 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  objc_msgSend_objectForKeyedSubscript_(self->_options, a2, @"Patterns");
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v27 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v24, v23, 16);
  if (!v6)
  {
    PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY = 0;
    goto LABEL_25;
  }

  v8 = v6;
  v9 = *v25;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v24 + 1) + 8 * i);
      v21 = 0;
      v22 = 0;
      v19 = 0;
      v20 = 0;
      PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY = objc_msgSend_getPatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY_(self, v7, v11, &v19, &v22 + 4, &v22, &v21 + 4, &v21, &v20 + 4, &v20);
      v13 = v19;
      v15 = objc_msgSend_mapPixelTypeNameToDirection_(self, v14, v13);
      if (!v15)
      {
        sub_29579FD14();
        goto LABEL_22;
      }

      v17 = HIDWORD(v21) | (v21 << 32);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          objc_msgSend_setV0Metadata_(self->_fpDisparityEstimator, v16, HIDWORD(v20) | (v20 << 32), v17);
          goto LABEL_18;
        }

        if (v15 == 4)
        {
          objc_msgSend_setV1Metadata_(self->_fpDisparityEstimator, v16, HIDWORD(v20) | (v20 << 32), v17);
          goto LABEL_18;
        }

LABEL_21:
        PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY = 4;
LABEL_22:

        goto LABEL_25;
      }

      if (v15 == 1)
      {
        objc_msgSend_setH0Metadata_(self->_fpDisparityEstimator, v16, HIDWORD(v20) | (v20 << 32), v17);
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_21;
        }

        objc_msgSend_setH1Metadata_(self->_fpDisparityEstimator, v16, HIDWORD(v20) | (v20 << 32), v17);
      }

LABEL_18:
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v24, v23, 16);
    if (v8)
    {
      continue;
    }

    break;
  }

  PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY = 0;
LABEL_25:

  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return PatternDetailsFrom_outTypeName_outCountX_outCountY_outStartX_outStartY_outStepX_outStepY;
}

- (int)_downscale2X420fTBGRAEqualWithCommandBuffer:(id)buffer in_Ytex:(id)ytex in_UVtex:(id)vtex out_tex:(id)out_tex cropRect:(CGRect)rect
{
  width = rect.size.width;
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  ytexCopy = ytex;
  vtexCopy = vtex;
  out_texCopy = out_tex;
  v16 = self->_pipelineStates[1];
  bufferCopy = buffer;
  v20 = objc_msgSend_width(vtexCopy, v18, v19);
  v23 = objc_msgSend_height(vtexCopy, v21, v22);
  v24 = x;
  *v25.i32 = v24 * v20;
  v26 = y;
  *&v27 = v26 * v23;
  v28.f64[0] = width;
  v28.f64[1] = height;
  v25.i32[1] = v27;
  v56 = vcvt_hight_f32_f64(v25, v28);
  v31 = objc_msgSend_computeCommandEncoder(bufferCopy, v29, v30);

  if (v31)
  {
    objc_msgSend_setComputePipelineState_(v31, v32, v16);
    objc_msgSend_setTexture_atIndex_(v31, v33, ytexCopy, 0);
    objc_msgSend_setTexture_atIndex_(v31, v34, vtexCopy, 1);
    objc_msgSend_setTexture_atIndex_(v31, v35, out_texCopy, 2);
    objc_msgSend_setBytes_length_atIndex_(v31, v36, &v56, 16, 0);
    v39 = objc_msgSend_threadExecutionWidth(v16, v37, v38);
    v42 = objc_msgSend_maxTotalThreadsPerThreadgroup(v16, v40, v41) / v39;
    v55[0] = objc_msgSend_width(out_texCopy, v43, v44);
    v55[1] = objc_msgSend_height(out_texCopy, v45, v46);
    v55[2] = 1;
    v54[0] = v39;
    v54[1] = v42;
    v54[2] = 1;
    objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v31, v47, v55, v54);
    objc_msgSend_endEncoding(v31, v48, v49);
    v50 = 0;
  }

  else
  {
    sub_29579FD88(v55);
    v50 = v55[0];
  }

  return v50;
}

- (int)_computeDisparityQuality:(int *)quality
{
  if (!self->_segmentationTexture)
  {
    sub_2957A0204();
    return -12782;
  }

  v5 = objc_msgSend_commandQueue(self->_metalContext, a2, quality);
  v8 = objc_msgSend_commandBuffer(v5, v6, v7);

  if (!v8)
  {
    sub_2957A018C();
    return -12786;
  }

  v11 = objc_msgSend_computeCommandEncoder(v8, v9, v10);
  if (!v11)
  {
    sub_2957A00C8(v8, &v63);
    return v63.i32[0];
  }

  v12 = v11;
  v13 = self->_pipelineStates[2];
  v15 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v14, self->_outDisparity, 25, 17, 0);
  if (!v15)
  {
    sub_2957A0020(v13, v12, v8);
    return -12786;
  }

  v18 = v15;
  if (objc_msgSend_width(v15, v16, v17) >= 0x191)
  {
    sub_29579FF7C();
    return -12782;
  }

  v21 = objc_msgSend_device(self->_metalContext, v19, v20);
  v24 = objc_msgSend_maxThreadgroupMemoryLength(v21, v22, v23);

  if (v24 >> 8 <= 0x18)
  {
    sub_29579FED8();
    return -12782;
  }

  objc_msgSend_setComputePipelineState_(v12, v25, v13);
  objc_msgSend_setTexture_atIndex_(v12, v26, v18, 0);
  objc_msgSend_setTexture_atIndex_(v12, v27, self->_segmentationTexture, 1);
  objc_msgSend_setBuffer_offset_atIndex_(v12, v28, self->_disparitySumBuffer, 0, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v12, v29, self->_disparityCountBuffer, 0, 1);
  v32 = objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v30, v31);
  if (objc_msgSend_width(v18, v33, v34) > v32)
  {
    sub_29579FE34();
    return -12782;
  }

  v63 = vdupq_n_s64(1uLL);
  v64 = 1;
  v61 = objc_msgSend_width(v18, v35, v36);
  v62 = v63;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v12, v37, &v63, &v61);
  objc_msgSend_endEncoding(v12, v38, v39);
  objc_msgSend_commit(v8, v40, v41);
  objc_msgSend_waitForIdle(self->_metalContext, v42, v43);
  v46 = objc_msgSend_contents(self->_disparitySumBuffer, v44, v45);
  v49 = objc_msgSend_contents(self->_disparityCountBuffer, v47, v48);
  v52 = v49;
  v53 = 0.0;
  if (*v49 < 1)
  {
    v55 = 0.0;
  }

  else
  {
    v54 = v49[1];
    v55 = 0.0;
    if (v54 >= 1)
    {
      v53 = v46[1] / v54;
      v55 = *v46 / *v49;
    }
  }

  v56 = objc_msgSend_width(v18, v50, v51);
  v59 = ((objc_msgSend_height(v18, v57, v58) * v56) * 0.05);
  *quality = *v52 >= v59 && v52[1] >= v59 && vabds_f32(v53, v55) >= 0.1;

  return 0;
}

- (void)_overrideTuningParametersForFactory
{
  v4 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, a2, v2);
  v7 = objc_msgSend_FPpreprocessingParameters(v4, v5, v6);
  objc_msgSend_setBlackLevelOffset_(v7, v8, v9, 0.0);

  v12 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v10, v11);
  v15 = objc_msgSend_FPpreprocessingParameters(v12, v13, v14);
  LODWORD(v16) = 1.0;
  objc_msgSend_setBlackLevelScaling_(v15, v17, v18, v16);

  v21 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v19, v20);
  v24 = objc_msgSend_levelsParameters(v21, v22, v23);
  v26 = objc_msgSend_objectAtIndexedSubscript_(v24, v25, 0);
  v29 = objc_msgSend_costParameters(v26, v27, v28);
  LODWORD(v30) = 1112014848;
  objc_msgSend_setLambda_(v29, v31, v32, v30);

  v35 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v33, v34);
  v38 = objc_msgSend_levelsParameters(v35, v36, v37);
  v40 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 1);
  v43 = objc_msgSend_costParameters(v40, v41, v42);
  LODWORD(v44) = 1112014848;
  objc_msgSend_setLambda_(v43, v45, v46, v44);

  v49 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v47, v48);
  v52 = objc_msgSend_levelsParameters(v49, v50, v51);
  v54 = objc_msgSend_objectAtIndexedSubscript_(v52, v53, 2);
  v57 = objc_msgSend_costParameters(v54, v55, v56);
  LODWORD(v58) = 1112014848;
  objc_msgSend_setLambda_(v57, v59, v60, v58);

  v63 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v61, v62);
  v66 = objc_msgSend_levelsParameters(v63, v64, v65);
  v68 = objc_msgSend_objectAtIndexedSubscript_(v66, v67, 3);
  v71 = objc_msgSend_costParameters(v68, v69, v70);
  LODWORD(v72) = 1121714176;
  objc_msgSend_setLambda_(v71, v73, v74, v72);

  v77 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v75, v76);
  v80 = objc_msgSend_levelsParameters(v77, v78, v79);
  v82 = objc_msgSend_objectAtIndexedSubscript_(v80, v81, 4);
  v85 = objc_msgSend_costParameters(v82, v83, v84);
  LODWORD(v86) = 1123024896;
  objc_msgSend_setLambda_(v85, v87, v88, v86);

  v91 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v89, v90);
  v94 = objc_msgSend_levelsParameters(v91, v92, v93);
  v96 = objc_msgSend_objectAtIndexedSubscript_(v94, v95, 5);
  v99 = objc_msgSend_costParameters(v96, v97, v98);
  LODWORD(v100) = 1123024896;
  objc_msgSend_setLambda_(v99, v101, v102, v100);

  v105 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v103, v104);
  v108 = objc_msgSend_levelsParameters(v105, v106, v107);
  v110 = objc_msgSend_objectAtIndexedSubscript_(v108, v109, 6);
  v113 = objc_msgSend_costParameters(v110, v111, v112);
  LODWORD(v114) = 1123024896;
  objc_msgSend_setLambda_(v113, v115, v116, v114);

  v119 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v117, v118);
  v122 = objc_msgSend_levelsParameters(v119, v120, v121);
  v124 = objc_msgSend_objectAtIndexedSubscript_(v122, v123, 7);
  v127 = objc_msgSend_costParameters(v124, v125, v126);
  LODWORD(v128) = 1123024896;
  objc_msgSend_setLambda_(v127, v129, v130, v128);

  v133 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v131, v132);
  v136 = objc_msgSend_levelsParameters(v133, v134, v135);
  v138 = objc_msgSend_objectAtIndexedSubscript_(v136, v137, 0);
  v141 = objc_msgSend_regularizationParameters(v138, v139, v140);
  LODWORD(v142) = 20.0;
  objc_msgSend_setAlpha_(v141, v143, v144, v142);

  v147 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v145, v146);
  v150 = objc_msgSend_levelsParameters(v147, v148, v149);
  v152 = objc_msgSend_objectAtIndexedSubscript_(v150, v151, 1);
  v155 = objc_msgSend_regularizationParameters(v152, v153, v154);
  LODWORD(v156) = 20.0;
  objc_msgSend_setAlpha_(v155, v157, v158, v156);

  v161 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v159, v160);
  v164 = objc_msgSend_levelsParameters(v161, v162, v163);
  v166 = objc_msgSend_objectAtIndexedSubscript_(v164, v165, 2);
  v169 = objc_msgSend_regularizationParameters(v166, v167, v168);
  LODWORD(v170) = 20.0;
  objc_msgSend_setAlpha_(v169, v171, v172, v170);

  v175 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v173, v174);
  v178 = objc_msgSend_levelsParameters(v175, v176, v177);
  v180 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, 3);
  v183 = objc_msgSend_regularizationParameters(v180, v181, v182);
  LODWORD(v184) = 20.0;
  objc_msgSend_setAlpha_(v183, v185, v186, v184);

  v189 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v187, v188);
  v192 = objc_msgSend_levelsParameters(v189, v190, v191);
  v194 = objc_msgSend_objectAtIndexedSubscript_(v192, v193, 4);
  v197 = objc_msgSend_regularizationParameters(v194, v195, v196);
  LODWORD(v198) = 20.0;
  objc_msgSend_setAlpha_(v197, v199, v200, v198);

  v203 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v201, v202);
  v206 = objc_msgSend_levelsParameters(v203, v204, v205);
  v208 = objc_msgSend_objectAtIndexedSubscript_(v206, v207, 5);
  v211 = objc_msgSend_regularizationParameters(v208, v209, v210);
  LODWORD(v212) = 20.0;
  objc_msgSend_setAlpha_(v211, v213, v214, v212);

  v217 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v215, v216);
  v220 = objc_msgSend_levelsParameters(v217, v218, v219);
  v222 = objc_msgSend_objectAtIndexedSubscript_(v220, v221, 6);
  v225 = objc_msgSend_regularizationParameters(v222, v223, v224);
  LODWORD(v226) = 20.0;
  objc_msgSend_setAlpha_(v225, v227, v228, v226);

  v231 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v229, v230);
  v234 = objc_msgSend_levelsParameters(v231, v232, v233);
  v236 = objc_msgSend_objectAtIndexedSubscript_(v234, v235, 7);
  v239 = objc_msgSend_regularizationParameters(v236, v237, v238);
  LODWORD(v240) = 20.0;
  objc_msgSend_setAlpha_(v239, v241, v242, v240);

  v245 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v243, v244);
  v248 = objc_msgSend_levelsParameters(v245, v246, v247);
  v250 = objc_msgSend_objectAtIndexedSubscript_(v248, v249, 0);
  v253 = objc_msgSend_hbfParameters(v250, v251, v252);
  objc_msgSend_setScales_(v253, v254, 0);

  v257 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v255, v256);
  v260 = objc_msgSend_levelsParameters(v257, v258, v259);
  v262 = objc_msgSend_objectAtIndexedSubscript_(v260, v261, 1);
  v265 = objc_msgSend_hbfParameters(v262, v263, v264);
  objc_msgSend_setScales_(v265, v266, 0);

  v269 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v267, v268);
  v272 = objc_msgSend_levelsParameters(v269, v270, v271);
  v274 = objc_msgSend_objectAtIndexedSubscript_(v272, v273, 2);
  v277 = objc_msgSend_hbfParameters(v274, v275, v276);
  objc_msgSend_setScales_(v277, v278, 0);

  v281 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v279, v280);
  v284 = objc_msgSend_levelsParameters(v281, v282, v283);
  v286 = objc_msgSend_objectAtIndexedSubscript_(v284, v285, 3);
  v289 = objc_msgSend_hbfParameters(v286, v287, v288);
  objc_msgSend_setScales_(v289, v290, 0);

  v293 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v291, v292);
  v296 = objc_msgSend_levelsParameters(v293, v294, v295);
  v298 = objc_msgSend_objectAtIndexedSubscript_(v296, v297, 4);
  v301 = objc_msgSend_hbfParameters(v298, v299, v300);
  objc_msgSend_setScales_(v301, v302, 0);

  v305 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v303, v304);
  v308 = objc_msgSend_levelsParameters(v305, v306, v307);
  v310 = objc_msgSend_objectAtIndexedSubscript_(v308, v309, 5);
  v313 = objc_msgSend_hbfParameters(v310, v311, v312);
  objc_msgSend_setScales_(v313, v314, 0);

  v317 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v315, v316);
  v320 = objc_msgSend_levelsParameters(v317, v318, v319);
  v322 = objc_msgSend_objectAtIndexedSubscript_(v320, v321, 6);
  v325 = objc_msgSend_hbfParameters(v322, v323, v324);
  objc_msgSend_setScales_(v325, v326, 0);

  v329 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v327, v328);
  v332 = objc_msgSend_levelsParameters(v329, v330, v331);
  v334 = objc_msgSend_objectAtIndexedSubscript_(v332, v333, 7);
  v337 = objc_msgSend_hbfParameters(v334, v335, v336);
  objc_msgSend_setScales_(v337, v338, 0);

  v341 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v339, v340);
  v344 = objc_msgSend_FPcostParameters(v341, v342, v343);
  objc_msgSend_setForegroundPush_(v344, v345, v346, 0.0);

  v349 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v347, v348);
  v352 = objc_msgSend_FPcostParameters(v349, v350, v351);
  objc_msgSend_setBackgroundPush_(v352, v353, v354, 0.0);

  v357 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v355, v356);
  v360 = objc_msgSend_FPcostParameters(v357, v358, v359);
  LODWORD(v361) = 1.0;
  objc_msgSend_setRadialExponent_(v360, v362, v363, v361);

  v366 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v364, v365);
  v369 = objc_msgSend_FPcostParameters(v366, v367, v368);
  objc_msgSend_setRadialGain_(v369, v370, v371, 0.0);

  v374 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v372, v373);
  v377 = objc_msgSend_FPcostParameters(v374, v375, v376);
  LODWORD(v378) = 1.0;
  objc_msgSend_setRadialMin_(v377, v379, v380, v378);

  v383 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v381, v382);
  v386 = objc_msgSend_FPpostprocessingParameters(v383, v384, v385);
  LODWORD(v387) = 1.0;
  objc_msgSend_setShiftToDisparityRatio_(v386, v388, v389, v387);

  for (i = 0; i != 8; ++i)
  {
    v393 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v390, v391);
    v396 = objc_msgSend_levelsParameters(v393, v394, v395);
    v398 = objc_msgSend_objectAtIndexedSubscript_(v396, v397, i);
    v401 = objc_msgSend_solverParameters(v398, v399, v400);
    LODWORD(v402) = 0.25;
    objc_msgSend_setTau_(v401, v403, v404, v402);

    v407 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v405, v406);
    v410 = objc_msgSend_levelsParameters(v407, v408, v409);
    v412 = objc_msgSend_objectAtIndexedSubscript_(v410, v411, i);
    v415 = objc_msgSend_solverParameters(v412, v413, v414);
    LODWORD(v416) = 0.5;
    objc_msgSend_setSigma_(v415, v417, v418, v416);

    v421 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v419, v420);
    v424 = objc_msgSend_levelsParameters(v421, v422, v423);
    v426 = objc_msgSend_objectAtIndexedSubscript_(v424, v425, i);
    v429 = objc_msgSend_solverParameters(v426, v427, v428);
    LODWORD(v430) = 1.0;
    objc_msgSend_setTheta_(v429, v431, v432, v430);

    v435 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v433, v434);
    v438 = objc_msgSend_levelsParameters(v435, v436, v437);
    v440 = objc_msgSend_objectAtIndexedSubscript_(v438, v439, i);
    v443 = objc_msgSend_solverParameters(v440, v441, v442);
    LODWORD(v444) = 1008981770;
    objc_msgSend_setHuber_eps_(v443, v445, v446, v444);

    v449 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v447, v448);
    v452 = objc_msgSend_levelsParameters(v449, v450, v451);
    v454 = objc_msgSend_objectAtIndexedSubscript_(v452, v453, i);
    v457 = objc_msgSend_solverParameters(v454, v455, v456);
    objc_msgSend_setIterations_(v457, v458, 120);

    v461 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v459, v460);
    v464 = objc_msgSend_levelsParameters(v461, v462, v463);
    v466 = objc_msgSend_objectAtIndexedSubscript_(v464, v465, i);
    v469 = objc_msgSend_regularizationParameters(v466, v467, v468);
    LODWORD(v470) = 1061997773;
    objc_msgSend_setSegmentation_bias_background_(v469, v471, v472, v470);

    v475 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v473, v474);
    v478 = objc_msgSend_levelsParameters(v475, v476, v477);
    v480 = objc_msgSend_objectAtIndexedSubscript_(v478, v479, i);
    v483 = objc_msgSend_regularizationParameters(v480, v481, v482);
    LODWORD(v484) = 1061997773;
    objc_msgSend_setSegmentation_bias_foreground_(v483, v485, v486, v484);
  }

  v493 = objc_msgSend_FPDisparityEstimator_Config(self->_fpDisparityTuningParameters, v390, v391);
  v489 = objc_msgSend_FPcostParameters(v493, v487, v488);
  LODWORD(v490) = 1047233823;
  objc_msgSend_setCircleOfConfusionGain_(v489, v491, v492, v490);
}

- (CGRect)focusPixelValidArea
{
  x = self->_notUsedFocusPixelValidArea.origin.x;
  y = self->_notUsedFocusPixelValidArea.origin.y;
  width = self->_notUsedFocusPixelValidArea.size.width;
  height = self->_notUsedFocusPixelValidArea.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end