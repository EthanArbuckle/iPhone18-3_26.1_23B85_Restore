@interface FigIntelligentDistortionCorrectionProcessorV1
- (CGPoint)opticalCenterOffset;
- (CGRect)inputImageCropRect;
- (CGRect)outputValidBufferRect;
- (FigIntelligentDistortionCorrectionProcessorV1)init;
- (NSString)description;
- (__n128)globalTransform;
- (__n128)setStereoRectificationInverseHomography:(__n128)homography;
- (__n128)stereoRectificationInverseHomography;
- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset inputCrop:(CGRect)crop primaryImageDimensions:(id)dimensions inputHorizontalSecondaryToPrimaryScaleFactor:(float)factor inputVerticalSecondaryToPrimaryScaleFactor:(float)scaleFactor inputHorizontalSecondaryToPrimaryShift:(float)shift inputVerticalSecondaryToPrimaryShift:(float)primaryShift outputPixelBuffer:(__CVBuffer *)self0 outputHorizontalAdditionalScaleFactor:(float)self1 outputVerticalAdditionalScaleFactor:(float)self2;
- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset outputPixelBuffer:(__CVBuffer *)buffer primaryImageDimensions:(id)dimensions;
- (int)compilerShaders;
- (int)computeCorrectionType;
- (int)determineWorkingBufferRequirements:(id *)requirements maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight;
- (int)getAdjustedGDCInformation:(id *)information;
- (int)mapPixelFormat:(__CVBuffer *)format format:(unint64_t *)a4;
- (int)memoryAllocationHandler:(id *)handler memoryAllocationParameters:(id *)parameters sharedMetalBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size;
- (int)prepareInputImagePixelBuffer:(id *)buffer;
- (int)prepareOutputImagePixelBuffer:(id *)buffer;
- (int)prepareSegmentationMaskPixelBuffer:(id *)buffer;
- (int)prepareToProcess:(unsigned int)process;
- (int)process;
- (int)purgeResources;
- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size;
- (int)setup;
- (int)subProcessIntelligentDistortion:(id)distortion cpwProcessingErrors:(id *)errors;
- (int)translateError:(int)error;
- (int)undistortSegmentationMask;
- (void)buildMakernoteEntry:(int)entry cpwProcessingErrors:(id *)errors idcApplied:(BOOL)applied;
- (void)dealloc;
@end

@implementation FigIntelligentDistortionCorrectionProcessorV1

- (FigIntelligentDistortionCorrectionProcessorV1)init
{
  v3.receiver = self;
  v3.super_class = FigIntelligentDistortionCorrectionProcessorV1;
  return [(FigIntelligentDistortionCorrectionProcessorV1 *)&v3 init];
}

- (int)setup
{
  self->_defaultWrites.disableStationaryDeviceDetection = FigGetCFPreferenceNumberWithDefault() != 0;
  self->_defaultWrites.disableGating = FigGetCFPreferenceNumberWithDefault() != 0;
  v3 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC0A40]) initWithbundle:v3 andOptionalCommandQueue:self->_metalCommandQueue];
    metalContext = self->_metalContext;
    self->_metalContext = v4;

    if (self->_metalContext)
    {
      self->_areAllShadersCompiled = 0;
      v6 = [[IntelligentDistortionCorrection_Utilities alloc] initWithMetalContext:self->_metalContext];
      processor = self->_idcUtilities.processor;
      self->_idcUtilities.processor = v6;

      if (self->_idcUtilities.processor)
      {
        v8 = [[EdgeDrawingLineDetector alloc] initWithFigMetalContext:self->_metalContext idcUtilities:self->_idcUtilities.processor];
        v9 = self->_edgeDrawingLineDetector.processor;
        self->_edgeDrawingLineDetector.processor = v8;

        if (self->_edgeDrawingLineDetector.processor)
        {
          v10 = [[IdcContentPreservingWarping alloc] initWithMetalContext:self->_metalContext idcUtilities:self->_idcUtilities.processor];
          v11 = self->_contentPreservingWarping.processor;
          self->_contentPreservingWarping.processor = v10;

          if (self->_contentPreservingWarping.processor)
          {
            device = [(FigMetalContext *)self->_metalContext device];
            v13 = [device newBufferWithLength:16 options:0];
            buffer = self->_contentPreservingWarping.executionErrorInformation.buffer;
            self->_contentPreservingWarping.executionErrorInformation.buffer = v13;

            if (!self->_contentPreservingWarping.executionErrorInformation.buffer)
            {
              sub_2957C47F4();
            }
          }

          else
          {
            sub_2957C486C();
          }
        }

        else
        {
          sub_2957C48E4();
        }
      }

      else
      {
        sub_2957C495C();
      }
    }

    else
    {
      sub_2957C49D4();
    }
  }

  else
  {
    sub_2957C4A4C();
  }

  return 0;
}

- (void)dealloc
{
  [(FigIntelligentDistortionCorrectionProcessorV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = FigIntelligentDistortionCorrectionProcessorV1;
  [(FigIntelligentDistortionCorrectionProcessorV1 *)&v3 dealloc];
}

- (int)determineWorkingBufferRequirements:(id *)requirements maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight
{
  if (!requirements)
  {
    sub_2957C4CAC();
    LODWORD(v16) = -2;
    goto LABEL_19;
  }

  requirements->var0 = 0;
  *self->_anon_48 = __PAIR64__(height, width);
  *&self->_anon_48[8] = __PAIR64__(maskHeight, maskWidth);
  v9 = vcltz_s32(vshl_n_s32(vdup_n_s32(width > height), 0x1FuLL));
  v22 = 0;
  *&self->_anon_48[16] = vbsl_s8(v9, 0x90000000CLL, 0xC00000009);
  *&self->_anon_48[24] = vbsl_s8(v9, 0x4800000060, 0x6000000048);
  *&self->_anon_48[32] = vbsl_s8(v9, 0xA0000000DLL, 0xD0000000ALL);
  bzero(self->_anon_e0, 0x360uLL);
  [EdgeDrawingLineDetector getDefaultConfigurationParameters:self->_anon_e0];
  [IdcContentPreservingWarping getDefaultConfigurationParameters:self->_anon_e0];
  v10 = *&self->_anon_48[8];
  v20 = *&self->_anon_48[16];
  v21 = v10;
  v11 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self memoryAllocationHandler:requirements memoryAllocationParameters:&v20 sharedMetalBuffer:0 sharedMetalBufferOffset:0 sharedMetalBufferSize:0];
  if (v11)
  {
    LODWORD(v16) = v11;
    sub_2957C4AC4();
    goto LABEL_19;
  }

  self->_sharedMetalBuffer.subModuleOffset = (LODWORD(requirements->var0) + 63) & 0xFFFFFFC0;
  v22 = 0;
  v12 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor determineWorkingBufferRequirements:&v22];
  if (v12)
  {
    v16 = v12;
    sub_2957C4B38();
    goto LABEL_18;
  }

  v13 = v22;
  v22 = 0;
  v14 = [(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor determineWorkingBufferRequirements:&v22 bundleConfiguration:self->_anon_e0 maximumInputImageWidth:*self->_anon_48 maximumInputImageHeight:HIDWORD(*self->_anon_48) maximumSegmentationMaskWidth:*&self->_anon_48[8] maximumSegmentationMaskHeight:HIDWORD(*&self->_anon_48[8])];
  if (v14)
  {
    v16 = v14;
    sub_2957C4BB4();
    goto LABEL_18;
  }

  v15 = v22;
  v22 = 0;
  LODWORD(v19) = HIDWORD(*&self->_anon_48[32]);
  v16 = [(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor computeSizeOfSharedMetalBuffer:&v22 maximumInputImageWidth:*self->_anon_48 maximumInputImageHeight:HIDWORD(*self->_anon_48) maximumSegmentationMaskWidth:*&self->_anon_48[8] maximumSegmentationMaskHeight:HIDWORD(*&self->_anon_48[8]) meshWidth:*&self->_anon_48[16] meshHeight:vext_s8(*&self->_anon_48[16] paddedMeshWidth:*&self->_anon_48[32] paddedMeshHeight:4uLL), v19];
  if (v16)
  {
    sub_2957C4C30();
LABEL_18:
    LODWORD(v16) = [(FigIntelligentDistortionCorrectionProcessorV1 *)self translateError:v16];
    if (!v16)
    {
      return v16;
    }

LABEL_19:
    *&self->_anon_48[8] = 0;
    return v16;
  }

  if (v13 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  if (v17 <= v22)
  {
    v17 = v22;
  }

  self->_sharedMetalBuffer.subModuleSize = v17;
  requirements->var0 += v17;
  return v16;
}

- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size
{
  bufferCopy = buffer;
  if (bufferCopy)
  {
    objc_storeStrong(&self->_sharedMetalBuffer.buffer, buffer);
    self->_sharedMetalBuffer.offset = offset;
    self->_sharedMetalBuffer.size = size;
    subModuleOffset = self->_sharedMetalBuffer.subModuleOffset;
    if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setSharedMetalBuffer:bufferCopy offset:subModuleOffset + offset size:self->_sharedMetalBuffer.subModuleSize])
    {
      sub_2957C4D24();
      v11 = v13;
    }

    else if ([(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor setSharedMetalBuffer:bufferCopy offset:subModuleOffset + offset size:self->_sharedMetalBuffer.subModuleSize])
    {
      sub_2957C4DB0();
      v11 = v14;
    }

    else if ([(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor setSharedMetalBuffer:bufferCopy offset:subModuleOffset + offset size:self->_sharedMetalBuffer.subModuleSize])
    {
      sub_2957C4E3C();
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_2957C4EC8();
    v11 = -2;
  }

  return v11;
}

- (int)purgeResources
{
  v3 = MEMORY[0x29EDCA928];
  v4 = *(MEMORY[0x29EDCA928] + 16);
  *&self[1].super.isa = *MEMORY[0x29EDCA928];
  *&self[1]._sharedMetalBuffer.buffer = v4;
  *&self[1]._sharedMetalBuffer.size = *(v3 + 32);
  self->_globalTransformIsValid = 0;
  buffer = self->_sharedMetalBuffer.buffer;
  self->_sharedMetalBuffer.buffer = 0;

  *&self->_anon_48[8] = 0;
  *&self->_sharedMetalBuffer.offset = 0u;
  *&self->_sharedMetalBuffer.subModuleOffset = 0u;
  processor = self->_idcUtilities.processor;
  self->_idcUtilities.processor = 0;

  v7 = self->_edgeDrawingLineDetector.results.buffer;
  self->_edgeDrawingLineDetector.results.buffer = 0;

  *&self->_edgeDrawingLineDetector.results.capacity = 0;
  self->_edgeDrawingLineDetector.results.offset = 0;
  v8 = self->_edgeDrawingLineDetector.processor;
  self->_edgeDrawingLineDetector.processor = 0;

  v9 = self->_contentPreservingWarping.processor;
  self->_contentPreservingWarping.processor = 0;

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  return 0;
}

- (int)prepareToProcess:(unsigned int)process
{
  if (process)
  {
    sub_2957C4F40();
    return -2;
  }

  else
  {

    return MEMORY[0x2A1C70FE8](self, sel_compilerShaders);
  }
}

- (int)process
{
  v3 = &self->_anon_e0[364];
  v4 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  *self->_contentPreservingWarping.executionErrorInformation.commandStatus = 0;
  *&self->_contentPreservingWarping.executionErrorInformation.commandStatus[2] = 0;
  memset(v63, 0, 24);
  *&self->_rt.cpwDataValid = 0;
  processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  self->_rt.processedSegmentationMaskTexture = 0;

  *&self->_rt.subProcessIntelligentDistortionErrorCode = 0;
  self->_globalTransformIsValid = 0;
  v6 = MEMORY[0x29EDCA928];
  v7 = *(MEMORY[0x29EDCA928] + 16);
  *&self[1].super.isa = *MEMORY[0x29EDCA928];
  *&self[1]._sharedMetalBuffer.buffer = v7;
  *&self[1]._sharedMetalBuffer.size = *(v6 + 32);
  v8 = *(MEMORY[0x29EDB90D8] + 16);
  self->_outputValidBufferRect.origin = *MEMORY[0x29EDB90D8];
  self->_outputValidBufferRect.size = v8;
  self->_zoomWasApplied = self->_applyZoom;
  *(v3 + 73) = 0;
  self->_minDistanceToEdge = 3.4028e38;
  v9 = *&self->_anon_48[16];
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v11 = *&self->_anon_48[20];
  *self->_transformCenterMeshDimensions = CFPreferenceNumberWithDefault;
  v12 = FigGetCFPreferenceNumberWithDefault();
  v13 = *self->_transformCenterMeshDimensions;
  v13.i32[1] = v12;
  v14 = *&self->_anon_48[16];
  v15 = vmax_u32(vmin_u32(v13, v14), 0x200000002);
  *self->_transformCenterMeshDimensions = v15;
  if (vsub_s32(v14, v15).u8[0])
  {
    sub_2957C4FB8(self, &self->_anon_48[20], v56, &v57);
    v16 = v56[0];
    v17 = v57;
  }

  else
  {
    v16 = v14.i32[1];
    v17 = v15.i32[1];
  }

  if ((v16 - v17))
  {
    sub_2957C505C();
  }

  if (!self->_sharedMetalBuffer.buffer)
  {
    sub_2957C57DC();
    v39 = 0;
    v54 = 4294967292;
    goto LABEL_45;
  }

  if (self->_inputImage)
  {
    if (self->_outputImage)
    {
      if (self->_applyZoom)
      {
        bzero(self->_anon_e0, 0x360uLL);
        [EdgeDrawingLineDetector getDefaultConfigurationParameters:self->_anon_e0];
        [IdcContentPreservingWarping getDefaultConfigurationParameters:self->_anon_e0];
        self->_anon_e0[856] = self->_useDeepTransferAccommodations;
        *self->_anon_e0 = self->_finalImageDimensions;
        self->_anon_e0[8] = self->_replicatePixelsOutsideOfFinalImageDimensions;
        *&self->_anon_e0[176] = *&self->_applyStereoRectificationHomography;
        v18 = *&self->_anon_560[16];
        *&self->_anon_e0[128] = *self->_anon_560;
        *&self->_anon_e0[144] = v18;
        *&self->_anon_e0[160] = *&self->_anon_560[32];
        *&v18 = *self->_inputImageAppliedOffsets;
        *&self->_anon_e0[16] = *self->_inputImageAppliedScalingFactors;
        *&self->_anon_e0[24] = v18;
        if (!self->_usePrecomputedPolynomialsAndOpticalCenterOffset)
        {
          goto LABEL_16;
        }

        gdcForwardPolynomial = self->_gdcForwardPolynomial;
        if (gdcForwardPolynomial)
        {
          if (self->_gdcInversePolynomial)
          {
            bytes = [(NSData *)gdcForwardPolynomial bytes];
            if (bytes)
            {
              *&self->_anon_e0[56] = *bytes;
              *&self->_anon_e0[60] = bytes[1];
              *&self->_anon_e0[64] = bytes[2];
              *&self->_anon_e0[68] = bytes[3];
              *&self->_anon_e0[72] = bytes[4];
              *&self->_anon_e0[76] = bytes[5];
              *&self->_anon_e0[80] = bytes[6];
              *&self->_anon_e0[84] = bytes[7];
              bytes2 = [(NSData *)self->_gdcInversePolynomial bytes];
              *&self->_anon_e0[88] = *bytes2;
              *&self->_anon_e0[92] = bytes2[1];
              *&self->_anon_e0[96] = bytes2[2];
              *&self->_anon_e0[100] = bytes2[3];
              *&self->_anon_e0[104] = bytes2[4];
              *&self->_anon_e0[108] = bytes2[5];
              *&self->_anon_e0[112] = bytes2[6];
              *&self->_anon_e0[116] = bytes2[7];
              *&self->_anon_e0[40] = vcvt_f32_f64(*(v3 + 700));
              self->_anon_e0[178] = 1;
LABEL_16:
              if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor extractBundleConfigurationParameters:self->_anon_e0 cameraInfo:self->_cameraInfoByPortType tuningParameters:self->_tuningParameters imageInfo:self->_inputImageMetadataDictionary])
              {
                sub_2957C5148();
                goto LABEL_61;
              }

              self->_rt.bundleConfigurationParametersValid = 1;
              if (!self->_processGeometricDistortionCorrection)
              {
                self->_anon_e0[120] = 0;
              }

              v22 = [(NSDictionary *)self->_inputImageMetadataDictionary objectForKeyedSubscript:*MEMORY[0x29EDC00D8]];
              intValue = [v22 intValue];

              v24 = self->_anon_e0[120];
              if (intValue)
              {
                if (self->_anon_e0[120])
                {
                  sub_2957C51D4();
                  v39 = 0;
LABEL_44:
                  v54 = 0;
                  goto LABEL_45;
                }

                if (intValue == 3)
                {
                  v25 = 3;
                }

                else
                {
                  if (intValue != 1)
                  {
                    goto LABEL_29;
                  }

                  v25 = 1;
                }
              }

              else
              {
                if (!self->_anon_e0[120])
                {
                  self->_gdcSource = 0;
LABEL_29:
                  if ([(FigIntelligentDistortionCorrectionProcessorV1 *)self prepareInputImagePixelBuffer:&self->_anon_e0[228]])
                  {
                    sub_2957C524C();
                  }

                  else if (self->_lowResSegmentationMask && [(FigIntelligentDistortionCorrectionProcessorV1 *)self prepareSegmentationMaskPixelBuffer:&self->_anon_e0[348]])
                  {
                    sub_2957C52D8();
                  }

                  else
                  {
                    if (![(FigIntelligentDistortionCorrectionProcessorV1 *)self prepareOutputImagePixelBuffer:&self->_anon_e0[324]])
                    {
                      v26 = [IDC_RegionOfInterestTracker alloc];
                      buffer = self->_sharedMetalBuffer.buffer;
                      roiDataOffset = self->_sharedMetalBuffer.roiDataOffset;
                      v57 = *&self->_anon_e0[300];
                      *&v58 = *&self->_anon_e0[316];
                      v29 = [(IDC_RegionOfInterestTracker *)v26 init:buffer metalBufferOffset:roiDataOffset initialIdcRoi:&v57];
                      if (!v29)
                      {
                        sub_2957C5518();
                        v39 = 0;
                        v54 = 0xFFFFFFFFLL;
                        goto LABEL_45;
                      }

                      v30 = v29;
                      v31 = self->_sharedMetalBuffer.buffer;
                      offset = self->_sharedMetalBuffer.offset;
                      size = self->_sharedMetalBuffer.size;
                      v57 = *&self->_anon_48[16];
                      *&v58 = *v3;
                      v34 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self memoryAllocationHandler:0 memoryAllocationParameters:&v57 sharedMetalBuffer:v31 sharedMetalBufferOffset:offset sharedMetalBufferSize:size];
                      if (v34)
                      {
                        v54 = v34;
                        sub_2957C53F0(v30);
                        v39 = 0;
                        goto LABEL_45;
                      }

                      computeCorrectionType = [(FigIntelligentDistortionCorrectionProcessorV1 *)self computeCorrectionType];
                      self->_correctionType = computeCorrectionType;
                      if (computeCorrectionType)
                      {
                        v36 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self subProcessIntelligentDistortion:v30 cpwProcessingErrors:v63];
                        processor = self->_idcUtilities.processor;
                        inputImageTexture = self->_rt.inputImageTexture;
                        if (v36)
                        {
                          v39 = 0;
                          invertedMesh = 0;
                        }

                        else
                        {
                          invertedMesh = self->_textures.invertedMesh;
                          v39 = 1;
                        }
                      }

                      else
                      {
                        v39 = 0;
                        invertedMesh = 0;
                        processor = self->_idcUtilities.processor;
                        inputImageTexture = self->_rt.inputImageTexture;
                      }

                      v41 = [(IntelligentDistortionCorrection_Utilities *)processor warpAndOrUndistortPrimaryAsset:self->_anon_e0 inputImageTexture:inputImageTexture inputMeshTexture:invertedMesh outputImageTexture:self->_rt.outputImageTexture roiTracker:v30 inputImageMetadataDictionary:self->_inputImageMetadataDictionary];
                      if (!v41)
                      {
                        self->_outputValidBufferRect.origin.x = 0.0;
                        self->_outputValidBufferRect.origin.y = 0.0;
                        finalImageDimensions = self->_finalImageDimensions;
                        v43.i64[0] = finalImageDimensions.width;
                        v43.i64[1] = finalImageDimensions.height;
                        *(v3 + 764) = vcvtq_f64_s64(v43);
                        if (v39)
                        {
                          [v30 idcRoi];
                          v44 = *(&v57 + 1);
                          v45 = vand_s8(*&v57, 0x100000001);
                          v46 = vadd_s32(v45, *&v57);
                          v47 = *&vsub_s32(*&v58, v45) & 0xFFFFFFFEFFFFFFFELL;
                          extendedMesh = self->_textures.extendedMesh;
                          v49 = *&self->_anon_48[16];
                          v50 = *self->_transformCenterMeshDimensions;
                          v51 = *&self->_anon_e0[276];
                          v59 = *&self->_anon_e0[260];
                          v60 = v51;
                          v52 = *&self->_anon_e0[308];
                          v61 = *&self->_anon_e0[292];
                          v62 = v52;
                          v53 = *&self->_anon_e0[244];
                          v57 = *&self->_anon_e0[228];
                          v58 = v53;
                          v56[0] = v46;
                          v56[1] = v44;
                          v56[2] = v47;
                          self->_globalTransformIsValid = idcComputeGlobalTransform(&v57, v56, extendedMesh, &self[1], v49, v50) == 0;

                          v54 = 0;
                          v39 = 1;
                          goto LABEL_45;
                        }

                        self->_globalTransformIsValid = 1;

                        goto LABEL_44;
                      }

                      sub_2957C546C(v41, self, v30, &v57);
                      goto LABEL_62;
                    }

                    sub_2957C5364();
                  }

LABEL_61:
                  v39 = 0;
LABEL_62:
                  v54 = v57;
                  goto LABEL_45;
                }

                v25 = 2;
              }

              self->_gdcSource = v25;
              goto LABEL_29;
            }

            sub_2957C5590();
          }

          else
          {
            sub_2957C5604();
          }
        }

        else
        {
          sub_2957C5678();
        }
      }

      else
      {
        sub_2957C50D0();
      }
    }

    else
    {
      sub_2957C56EC();
    }
  }

  else
  {
    sub_2957C5764();
  }

  v39 = 0;
  v54 = 4294967294;
LABEL_45:
  [(FigIntelligentDistortionCorrectionProcessorV1 *)self buildMakernoteEntry:v54 cpwProcessingErrors:v63 idcApplied:v39];
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  return v54;
}

- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset outputPixelBuffer:(__CVBuffer *)buffer primaryImageDimensions:(id)dimensions
{
  LODWORD(v5) = 1.0;
  LODWORD(v6) = 1.0;
  return [(FigIntelligentDistortionCorrectionProcessorV1 *)self applyExistingCorrectionToSecondaryAsset:asset inputCrop:dimensions primaryImageDimensions:buffer inputHorizontalSecondaryToPrimaryScaleFactor:*MEMORY[0x29EDB90D8] inputVerticalSecondaryToPrimaryScaleFactor:*(MEMORY[0x29EDB90D8] + 8) inputHorizontalSecondaryToPrimaryShift:*(MEMORY[0x29EDB90D8] + 16) inputVerticalSecondaryToPrimaryShift:*(MEMORY[0x29EDB90D8] + 24) outputPixelBuffer:v5 outputHorizontalAdditionalScaleFactor:v6 outputVerticalAdditionalScaleFactor:0.0, 0.0, 0x3F8000003F800000];
}

- (int)applyExistingCorrectionToSecondaryAsset:(__CVBuffer *)asset inputCrop:(CGRect)crop primaryImageDimensions:(id)dimensions inputHorizontalSecondaryToPrimaryScaleFactor:(float)factor inputVerticalSecondaryToPrimaryScaleFactor:(float)scaleFactor inputHorizontalSecondaryToPrimaryShift:(float)shift inputVerticalSecondaryToPrimaryShift:(float)primaryShift outputPixelBuffer:(__CVBuffer *)self0 outputHorizontalAdditionalScaleFactor:(float)self1 outputVerticalAdditionalScaleFactor:(float)self2
{
  height = crop.size.height;
  width = crop.size.width;
  y = crop.origin.y;
  x = crop.origin.x;
  memcpy(__dst, self->_anon_e0, 0x360uLL);
  if (!self->_sharedMetalBuffer.buffer)
  {
    sub_2957C5E1C();
LABEL_52:
    commandBuffer = 0;
    buffer = 0;
    v32 = 0;
    v55 = -4;
    goto LABEL_49;
  }

  if (!self->_rt.bundleConfigurationParametersValid)
  {
    sub_2957C5854();
    goto LABEL_52;
  }

  if (!asset)
  {
    sub_2957C5DA4();
    goto LABEL_47;
  }

  if (!buffer)
  {
    sub_2957C5D2C();
    commandBuffer = 0;
    goto LABEL_48;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(asset);
  v24 = CVPixelBufferGetPixelFormatType(buffer);
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType != 1278226536 && PixelFormatType != 1751411059)
    {
      v25 = 1751527984;
      goto LABEL_12;
    }
  }

  else if (PixelFormatType != 825306677 && PixelFormatType != 825437747)
  {
    v25 = 1278226488;
LABEL_12:
    if (PixelFormatType == v25)
    {
      goto LABEL_13;
    }

    fig_log_get_emitter();
    v58 = v12;
    LODWORD(v57) = 0;
    FigDebugAssert3();
LABEL_47:
    commandBuffer = 0;
    buffer = 0;
LABEL_48:
    v32 = 0;
    v55 = -2;
    goto LABEL_49;
  }

LABEL_13:
  if (v24 != PixelFormatType)
  {
    sub_2957C58CC();
    goto LABEL_47;
  }

  v26 = 0;
  v27 = 0;
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType == 1278226536 || PixelFormatType == 1751411059 || PixelFormatType == 1751527984)
    {
      v27 = 0;
      v26 = 25;
    }
  }

  else if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
  {
    v27 = 1;
    v26 = 20;
  }

  else if (PixelFormatType == 1278226488)
  {
    v27 = 0;
    v26 = 10;
  }

  v28 = CVPixelBufferGetWidth(asset);
  if (!v28)
  {
    sub_2957C5CB4();
    goto LABEL_47;
  }

  v29 = v28;
  v30 = CVPixelBufferGetHeight(asset);
  if (!v30)
  {
    sub_2957C5C3C();
    goto LABEL_47;
  }

  v31 = v30;
  v32 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:asset pixelFormat:v26 usage:17 plane:0];
  if (!v32)
  {
    sub_2957C5BC4();
    commandBuffer = 0;
    buffer = 0;
LABEL_62:
    v55 = -1;
    goto LABEL_49;
  }

  bufferCopy = buffer;
  buffer = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:buffer pixelFormat:v26 usage:23 plane:0];
  if (!buffer)
  {
    sub_2957C5B4C();
    commandBuffer = 0;
    goto LABEL_62;
  }

  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  if (CGRectIsNull(v67))
  {
    v34 = *MEMORY[0x29EDB90D8];
    v33 = *(MEMORY[0x29EDB90D8] + 8);
    v36 = *(MEMORY[0x29EDB90D8] + 16);
    v35 = *(MEMORY[0x29EDB90D8] + 24);
  }

  else
  {
    v34 = x / v29;
    v33 = y / v31;
    v36 = width / v29;
    v35 = height / v31;
  }

  dimensionsCopy = dimensions;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  v64 = *&self->_anon_e0[300];
  v65 = *&self->_anon_e0[316];
  processor = self->_idcUtilities.processor;
  if (self->_rt.cpwDataValid)
  {
    invertedMesh = self->_textures.invertedMesh;
  }

  else
  {
    invertedMesh = 0;
  }

  v46 = v27;
  v62 = *&self->_anon_e0[300];
  v63 = *&self->_anon_e0[316];
  LOBYTE(v58) = v27;
  *&v40 = factor;
  *&v41 = scaleFactor;
  *&v42 = shift;
  *&v43 = primaryShift;
  if ([(IntelligentDistortionCorrection_Utilities *)processor warpAndOrUndistortSecondaryAsset:__dst inputImageTexture:v32 inputMeshTexture:invertedMesh normalizedInputCrop:dimensionsCopy primaryImageDimensions:buffer inputHorizontalSecondaryToPrimaryScaleFactor:0 inputVerticalSecondaryToPrimaryScaleFactor:v34 inputHorizontalSecondaryToPrimaryShift:v33 inputVerticalSecondaryToPrimaryShift:v36 outputImageTexture:v35 outputHorizontalAdditionalScaleFactor:v40 outputVerticalAdditionalScaleFactor:v41 roiTracker:v42 isDepthData:v43 commandBuffer:__PAIR64__(LODWORD(verticalAdditionalScaleFactor) sensorInputCropRect:LODWORD(additionalScaleFactor)), v58, commandBuffer, &v62])
  {
    sub_2957C5944();
    v55 = v62;
    goto LABEL_49;
  }

  if (PixelFormatType != 1751527984)
  {
    v55 = 0;
    goto LABEL_49;
  }

  v47 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:asset pixelFormat:65 usage:17 plane:1];

  if (!v47)
  {
    sub_2957C5AD4();
    v32 = 0;
    goto LABEL_62;
  }

  v48 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:bufferCopy pixelFormat:65 usage:23 plane:1];

  if (v48)
  {
    v53 = self->_idcUtilities.processor;
    if (self->_rt.cpwDataValid)
    {
      v54 = self->_textures.invertedMesh;
    }

    else
    {
      v54 = 0;
    }

    v62 = v64;
    v63 = v65;
    LOBYTE(v58) = v46;
    *&v49 = factor;
    *&v50 = scaleFactor;
    *&v51 = shift;
    *&v52 = primaryShift;
    if ([(IntelligentDistortionCorrection_Utilities *)v53 warpAndOrUndistortSecondaryAsset:__dst inputImageTexture:v47 inputMeshTexture:v54 normalizedInputCrop:dimensionsCopy primaryImageDimensions:v48 inputHorizontalSecondaryToPrimaryScaleFactor:0 inputVerticalSecondaryToPrimaryScaleFactor:v34 inputHorizontalSecondaryToPrimaryShift:v33 inputVerticalSecondaryToPrimaryShift:v36 outputImageTexture:v35 outputHorizontalAdditionalScaleFactor:v49 outputVerticalAdditionalScaleFactor:v50 roiTracker:v51 isDepthData:v52 commandBuffer:__PAIR64__(LODWORD(verticalAdditionalScaleFactor) sensorInputCropRect:LODWORD(additionalScaleFactor)), v58, commandBuffer, &v62])
    {
      sub_2957C59D0();
      v55 = v62;
    }

    else
    {
      v55 = 0;
    }

    buffer = v48;
  }

  else
  {
    sub_2957C5A5C();
    buffer = 0;
    v55 = -1;
  }

  v32 = v47;
LABEL_49:
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return v55;
}

- (NSString)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p>", v5, self];

  return v6;
}

- (int)subProcessIntelligentDistortion:(id)distortion cpwProcessingErrors:(id *)errors
{
  distortionCopy = distortion;
  processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  if (!processedSegmentationMaskTexture)
  {
    undistortSegmentationMask = [(FigIntelligentDistortionCorrectionProcessorV1 *)self undistortSegmentationMask];
    if (undistortSegmentationMask)
    {
      v26 = undistortSegmentationMask;
      self->_rt.subProcessIntelligentDistortionErrorCode = 256;
      fig_log_get_emitter();
      v40 = v4;
      LODWORD(v38) = v26;
      goto LABEL_18;
    }

    processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  }

  v10 = [(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor detectLinesPart1:self->_anon_e0 inputImageTexture:self->_rt.inputImageTexture inputSegmentationMaskTexture:processedSegmentationMaskTexture];
  if (v10)
  {
    v26 = v10;
    self->_rt.subProcessIntelligentDistortionErrorCode = 512;
    fig_log_get_emitter();
    v40 = v4;
    LODWORD(v38) = v26;
LABEL_18:
    FigDebugAssert3();
    [(FigMetalContext *)self->_metalContext waitForIdle:v38];
    goto LABEL_19;
  }

  v11 = self + 12 * self->_correctionType;
  v12 = *(v11 + 239);
  v13 = *(v11 + 240);
  v43[0] = *&self->_anon_e0[28 * v12 + 444];
  *(v43 + 12) = *&self->_anon_e0[28 * v12 + 456];
  v14 = [(NSDictionary *)self->_inputImageMetadataDictionary objectForKeyedSubscript:@"PortType"];
  v15 = [v14 isEqualToString:*MEMORY[0x29EDBFF50]];

  if (v15)
  {
    v16 = fmaxf(fminf(*&self->_anon_e0[848], self->_minDistanceToEdge), 0.0) - *&self->_anon_e0[848];
    v13 = roundf(fminf(v13 * expf(-((v16 / *&self->_anon_e0[852]) * (v16 / *&self->_anon_e0[852]))), v13 / 3.0));
  }

  v17 = *&self->_anon_e0[32];
  v41 = *&self->_anon_e0[252];
  v42 = *&self->_anon_e0[268];
  v18 = idcComputeInverseDistortionPolynomial(v43, &v41, &self->_anon_e0[204], v13, v17);
  if (v18)
  {
    v26 = v18;
    self->_rt.subProcessIntelligentDistortionErrorCode = 768;
    fig_log_get_emitter();
    v40 = v4;
    LODWORD(v38) = v26;
    goto LABEL_18;
  }

  [(FigMetalContext *)self->_metalContext waitForIdle];
  v19 = [(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor detectLinesPart2:self->_anon_e0 results:&self->_edgeDrawingLineDetector.results];
  if (v19)
  {
    v26 = v19;
    self->_rt.subProcessIntelligentDistortionErrorCode = 1024;
    fig_log_get_emitter();
    v40 = v4;
    LODWORD(v38) = v26;
    goto LABEL_18;
  }

  self->_anon_e0[436] = 1;
  v20 = *self->_anon_48;
  v21 = HIDWORD(v20);
  v22 = v20;
  v23 = *&self->_anon_48[16];
  v24 = v23.u32[0];
  LODWORD(v39) = HIDWORD(*&self->_anon_48[32]);
  v23.i32[0] = vdup_lane_s32(v23, 1).u32[0];
  v23.i32[1] = *&self->_anon_48[32];
  v25 = [(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor process:self->_anon_e0 maximumInputImageWidth:v22 maximumInputImageHeight:v21 maximumSegmentationMaskWidth:*&self->_anon_48[8] maximumSegmentationMaskHeight:HIDWORD(*&self->_anon_48[8]) meshWidth:v24 meshHeight:*&v23 paddedMeshWidth:v39 paddedMeshHeight:self->_rt.processedSegmentationMaskTexture segmentationMaskTex:self->_textures.extendedMesh extendedMeshTex:self->_textures.invertedMesh invertedMeshTex:&self->_edgeDrawingLineDetector.results detectedLines:&self->_contentPreservingWarping.executionErrorInformation executionErrorInformation:?];
  if (v25)
  {
    v26 = v25;
    self->_rt.subProcessIntelligentDistortionErrorCode = 1280;
    fig_log_get_emitter();
    v40 = v4;
    LODWORD(v38) = v26;
    goto LABEL_18;
  }

  v26 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeMeshROI:self->_anon_e0 invertedMeshTexture:self->_textures.invertedMesh roiTracker:distortionCopy];
  if (v26)
  {
    self->_rt.subProcessIntelligentDistortionErrorCode = 1536;
    fig_log_get_emitter();
    v40 = v4;
    LODWORD(v38) = v26;
    goto LABEL_18;
  }

  [(FigMetalContext *)self->_metalContext waitForIdle];
  self->_rt.cpwDataValid = 1;
  [distortionCopy synchronizeData];
LABEL_19:
  for (i = 0; i != 4; ++i)
  {
    if (self->_contentPreservingWarping.executionErrorInformation.commandStatus[i] != 4)
    {
      ++errors->var5;
      v26 = -12782;
    }
  }

  contents = [(MTLBuffer *)self->_contentPreservingWarping.executionErrorInformation.buffer contents];
  v29 = -12782;
  if (contents)
  {
    v30 = *contents;
    errors->var0 = *contents;
    v31 = contents[1];
    errors->var3 = v31;
    errors->var1 = HIWORD(v31);
    v32 = v31 >= 0x10000;
    v33 = contents[3];
    errors->var4 = v33;
    v34 = contents[2];
    errors->var2 = v34;
    v35 = v34 | v33 | v30;
    if (!v32 && v35 == 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = -12782;
    }
  }

  return v29;
}

- (int)undistortSegmentationMask
{
  objc_storeStrong(&self->_rt.processedSegmentationMaskTexture, self->_rt.inputSegmentationMaskTexture);
  if (self->_anon_e0[120] == 1)
  {
    if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor undistortSingleChannelTexture:self->_anon_e0 inputTexture:self->_rt.inputSegmentationMaskTexture outputTexture:self->_textures.undistortedSegmentationMask])
    {
      return -12782;
    }

    objc_storeStrong(&self->_rt.processedSegmentationMaskTexture, self->_textures.undistortedSegmentationMask);
  }

  return 0;
}

- (int)memoryAllocationHandler:(id *)handler memoryAllocationParameters:(id *)parameters sharedMetalBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size
{
  bufferCopy = buffer;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  if (bufferCopy)
  {
    v14 = 1;
  }

  else
  {
    v14 = handler == 0;
  }

  if ((handler == 0) != (bufferCopy != 0))
  {
    v15 = -3;
    goto LABEL_35;
  }

  if (parameters->var4 && (var5 = parameters->var5, var5))
  {
    *&v37 = parameters->var4;
    *(&v37 + 1) = var5;
    v38 = xmmword_2957C7D90;
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeTextureStrideForBufferAllocation:&v37];
    if (v14)
    {
      if (*(&v39 + 1) > size)
      {
        sub_2957C5F0C();
        goto LABEL_44;
      }

      v17 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor textureFromBuffer:bufferCopy bufferOffset:offset textureDescriptor:&v37];
      undistortedSegmentationMask = self->_textures.undistortedSegmentationMask;
      self->_textures.undistortedSegmentationMask = v17;

      if (!self->_textures.undistortedSegmentationMask)
      {
        sub_2957C5E94();
        goto LABEL_46;
      }
    }

    v19 = *(&v39 + 1);
  }

  else
  {
    if (v14)
    {
      v20 = self->_textures.undistortedSegmentationMask;
      self->_textures.undistortedSegmentationMask = 0;
    }

    v19 = 0;
  }

  v21 = vadd_s32(*&parameters->var0, 0x200000002);
  *&v22 = v21.u32[0];
  *(&v22 + 1) = v21.u32[1];
  v37 = v22;
  v38 = xmmword_2957C7E10;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeTextureStrideForBufferAllocation:&v37, 105, 3];
  if (v14)
  {
    if (*(&v39 + 1) + v19 > size)
    {
      sub_2957C6254();
LABEL_44:
      v15 = -2;
      goto LABEL_35;
    }

    v23 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor textureFromBuffer:bufferCopy bufferOffset:v19 + offset textureDescriptor:&v37];
    extendedMesh = self->_textures.extendedMesh;
    self->_textures.extendedMesh = v23;

    if (!self->_textures.extendedMesh)
    {
      sub_2957C61DC();
LABEL_46:
      v15 = -1;
      goto LABEL_35;
    }
  }

  v25 = *(&v39 + 1) + v19;
  v26 = *&parameters->var2;
  *&v27 = v26;
  *(&v27 + 1) = HIDWORD(v26);
  v37 = v27;
  v38 = v36;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor computeTextureStrideForBufferAllocation:&v37];
  if (!v14)
  {
    goto LABEL_21;
  }

  if (*(&v39 + 1) + v25 > size)
  {
    sub_2957C6164();
    goto LABEL_44;
  }

  v28 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor textureFromBuffer:bufferCopy bufferOffset:v25 + offset textureDescriptor:&v37];
  invertedMesh = self->_textures.invertedMesh;
  self->_textures.invertedMesh = v28;

  if (!self->_textures.invertedMesh)
  {
    sub_2957C60EC();
    goto LABEL_46;
  }

LABEL_21:
  v30 = (v25 + DWORD2(v39) + 63) & 0xFFFFFFC0;
  self->_edgeDrawingLineDetector.results.capacity = 2048;
  objc_storeStrong(&self->_edgeDrawingLineDetector.results.buffer, buffer);
  self->_edgeDrawingLineDetector.results.offset = v30 + offset;
  if (v30 + 32772 > size && v14)
  {
    sub_2957C6074();
    goto LABEL_44;
  }

  v32 = (v30 + 32835) & 0xFFFFFFC0;
  self->_sharedMetalBuffer.roiDataOffset = v32 + offset;
  if ((v32 | 0x20uLL) > size && v14)
  {
    sub_2957C5FFC();
    goto LABEL_44;
  }

  self->_sharedMetalBuffer.gatingCounters = (v32 | 0x20) + offset;
  if ((v32 | 0x28uLL) > size && v14)
  {
    sub_2957C5F84();
    goto LABEL_44;
  }

  v15 = 0;
  if (handler)
  {
    handler->var0 = (v32 + 103) & 0xFFFFFFC0;
  }

LABEL_35:

  return v15;
}

- (int)prepareInputImagePixelBuffer:(id *)buffer
{
  v5 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self mapPixelFormat:self->_inputImage format:&self->_rt.inputImagePixelFormat];
  if (v5)
  {
    v25 = v5;
    sub_2957C62CC();
    return v25;
  }

  v6 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_inputImage pixelFormat:self->_rt.inputImagePixelFormat usage:23 plane:0];
  inputImageTexture = self->_rt.inputImageTexture;
  self->_rt.inputImageTexture = v6;

  if (!self->_rt.inputImageTexture)
  {
    sub_2957C6438();
    return -12786;
  }

  Width = CVPixelBufferGetWidth(self->_inputImage);
  Height = CVPixelBufferGetHeight(self->_inputImage);
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:[(MTLTexture *)self->_rt.inputImageTexture width] height:[(MTLTexture *)self->_rt.inputImageTexture height]];
  if (!buffer->var1.var4 || !buffer->var1.var5 || self->_gdcSource == 1 && buffer->var2.var4 == Width && buffer->var2.var5 == Height)
  {
    *&buffer->var1.var0 = *&buffer->var0.var0;
    *&buffer->var1.var4 = *&buffer->var0.var4;
  }

  var4 = buffer->var2.var4;
  if (var4 && (var5 = buffer->var2.var5) != 0 && var4 != var5)
  {
    v12 = llroundf(var4 * COERCE_FLOAT(*&self->_anon_e0[16]));
    buffer->var2.var4 = v12;
    v13 = llroundf(*&self->_anon_e0[20] * var5);
    buffer->var2.var5 = v13;
    v14 = buffer->var0.var4 - v12;
    v15 = buffer->var0.var5 - v13;
    buffer->var2.var0 = v14 / 2;
    buffer->var2.var1 = v15 / 2;
    buffer->var2.var2 = v12 + v14 / 2 - 1;
    buffer->var2.var3 = v13 + v15 / 2 - 1;
  }

  else
  {
    *&buffer->var2.var0 = *&buffer->var1.var0;
    *&buffer->var2.var4 = *&buffer->var1.var4;
  }

  if (CGRectEqualToRect(self->_inputImageCropRect, *MEMORY[0x29EDB90D8]) || CGRectEqualToRect(self->_inputImageCropRect, *MEMORY[0x29EDB90E0]))
  {
    *&buffer->var3.var0 = 0;
    v16 = *&buffer->var0.var4;
    *&buffer->var3.var2 = vadd_s32(v16, -1);
    buffer->var3.var4 = v16.i32[0];
    v17 = v16.i32[1];
  }

  else
  {
    v18 = self->_inputImageCropRect.size.width;
    if (v18 <= 0.0)
    {
      sub_2957C63C0();
      return -12780;
    }

    v19 = self->_inputImageCropRect.size.height;
    if (v19 <= 0.0)
    {
      sub_2957C6348();
      return -12780;
    }

    __asm { FMOV            V4.2D, #-1.0 }

    *&buffer->var3.var0 = vuzp1q_s32(vcvtq_s64_f64(self->_inputImageCropRect.origin), vcvtq_s64_f64(vaddq_f64(vaddq_f64(self->_inputImageCropRect.size, self->_inputImageCropRect.origin), _Q4)));
    buffer->var3.var4 = v18;
    v17 = v19;
  }

  buffer->var3.var5 = v17;
  if (buffer->var1.var0 >= buffer->var0.var0 && buffer->var1.var1 >= buffer->var0.var1 && buffer->var1.var2 <= buffer->var0.var2 && buffer->var1.var3 <= buffer->var0.var3)
  {
    return 0;
  }

  return -12780;
}

- (int)prepareSegmentationMaskPixelBuffer:(id *)buffer
{
  if (!self->_processIntelligentDistortionCorrection)
  {
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:0 height:0];
    return 0;
  }

  lowResSegmentationMask = self->_lowResSegmentationMask;
  if (!lowResSegmentationMask)
  {
    sub_2957C6610();
    return -12780;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(lowResSegmentationMask);
  if (PixelFormatType != 642527336 && PixelFormatType != 1278226536)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return -12780;
  }

  v8 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_lowResSegmentationMask pixelFormat:25 usage:23 plane:0];
  inputSegmentationMaskTexture = self->_rt.inputSegmentationMaskTexture;
  self->_rt.inputSegmentationMaskTexture = v8;

  v10 = self->_rt.inputSegmentationMaskTexture;
  if (v10)
  {
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:[(MTLTexture *)v10 width] height:[(MTLTexture *)self->_rt.inputSegmentationMaskTexture height]];
    if ([(MTLTexture *)self->_rt.inputSegmentationMaskTexture width]< 0x10 || [(MTLTexture *)self->_rt.inputSegmentationMaskTexture height]<= 0xF)
    {
      sub_2957C6524();
      return -12780;
    }

    if ([(MTLTexture *)self->_rt.inputSegmentationMaskTexture width]> *&self->_anon_48[8] || [(MTLTexture *)self->_rt.inputSegmentationMaskTexture height]> *&self->_anon_48[12])
    {
      sub_2957C64B0();
      return -12780;
    }

    return 0;
  }

  sub_2957C6598();
  return -1;
}

- (int)prepareOutputImagePixelBuffer:(id *)buffer
{
  v5 = [(FigIntelligentDistortionCorrectionProcessorV1 *)self mapPixelFormat:self->_outputImage format:&self->_rt.outputImagePixelFormat];
  if (v5)
  {
    v9 = v5;
    sub_2957C6688();
  }

  else
  {
    v6 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_outputImage pixelFormat:self->_rt.outputImagePixelFormat usage:23 plane:0];
    outputImageTexture = self->_rt.outputImageTexture;
    self->_rt.outputImageTexture = v6;

    v8 = self->_rt.outputImageTexture;
    if (v8)
    {
      [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor setBoundingRect:buffer x0:0 y0:0 width:[(MTLTexture *)v8 width] height:[(MTLTexture *)self->_rt.outputImageTexture height]];
      return 0;
    }

    else
    {
      sub_2957C6704();
      return -12786;
    }
  }

  return v9;
}

- (int)mapPixelFormat:(__CVBuffer *)format format:(unint64_t *)a4
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(format);
  if (PixelFormatType <= 796419631)
  {
    if (PixelFormatType <= 758674991)
    {
      if (PixelFormatType > 645424687)
      {
        if (PixelFormatType != 645424688 && PixelFormatType != 645428784)
        {
          v6 = 758670896;
          goto LABEL_31;
        }

LABEL_33:
        result = 0;
        v10 = 546;
        goto LABEL_34;
      }

      if (PixelFormatType != 641230384)
      {
        v6 = 641234480;
        goto LABEL_31;
      }

LABEL_32:
      result = 0;
      v10 = 540;
LABEL_34:
      *a4 = v10;
      return result;
    }

    if (PixelFormatType > 762869295)
    {
      if (PixelFormatType == 762869296)
      {
        goto LABEL_33;
      }

      if (PixelFormatType != 792225328)
      {
        v6 = 792229424;
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    if (PixelFormatType == 758674992)
    {
      goto LABEL_32;
    }

    v7 = 762865200;
LABEL_26:
    if (PixelFormatType != v7)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (PixelFormatType <= 1885745711)
  {
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType == 796419632)
      {
        goto LABEL_33;
      }

      v7 = 796423728;
    }

    else
    {
      if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
      {
        goto LABEL_32;
      }

      v7 = 1882468912;
    }

    goto LABEL_26;
  }

  if (PixelFormatType <= 2084075055)
  {
    if (PixelFormatType == 1885745712)
    {
      goto LABEL_33;
    }

    v8 = 26160;
  }

  else
  {
    if (PixelFormatType == 2088269360 || PixelFormatType == 2088265264)
    {
      goto LABEL_33;
    }

    v8 = 30256;
  }

  v6 = v8 | 0x7C380000;
LABEL_31:
  if (PixelFormatType == v6)
  {
    goto LABEL_32;
  }

LABEL_35:
  fig_log_get_emitter();
  FigDebugAssert3();
  return -12780;
}

- (void)buildMakernoteEntry:(int)entry cpwProcessingErrors:(id *)errors idcApplied:(BOOL)applied
{
  v5 = -entry & 0xF | (16 * (self->_correctionType & 0xF)) | ((self->_gdcSource & 3) << 15);
  if (applied)
  {
    v5 |= 0x200000u;
  }

  if (self->_processIntelligentDistortionCorrection)
  {
    v5 |= 0x400000u;
  }

  if (self->_processGeometricDistortionCorrection)
  {
    v5 |= 0x800000u;
  }

  if (self->_deviceWasStationaryDuringCapture)
  {
    v5 |= 0x1000000u;
  }

  if (self->_globalTransformIsValid)
  {
    v5 |= 0x2000000u;
  }

  if (errors->var0)
  {
    v5 |= 0x4000000u;
  }

  if (errors->var1)
  {
    v5 |= 0x8000000u;
  }

  if (errors->var3)
  {
    v5 |= 0x10000000u;
  }

  if (errors->var4)
  {
    v5 |= 0x20000000u;
  }

  if (errors->var2)
  {
    v5 |= 0x40000000u;
  }

  if (errors->var5)
  {
    v5 |= 0x80000000;
  }

  self->_makernoteEntry = self->_rt.correctionTypeSelectionCode | self->_rt.subProcessIntelligentDistortionErrorCode | v5;
}

- (int)compilerShaders
{
  if (self->_areAllShadersCompiled)
  {
    return 0;
  }

  if ([(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor compileShaders:self->_isShaderHarvesting])
  {
    sub_2957C677C();
    return v4;
  }

  else if ([(EdgeDrawingLineDetector *)self->_edgeDrawingLineDetector.processor compileShaders:self->_isShaderHarvesting])
  {
    sub_2957C6808();
    return v5;
  }

  else
  {
    result = [(IdcContentPreservingWarping *)self->_contentPreservingWarping.processor compileShaders:self->_isShaderHarvesting];
    if (result)
    {
      sub_2957C6894();
      return v6;
    }

    else
    {
      self->_areAllShadersCompiled = 1;
    }
  }

  return result;
}

- (int)computeCorrectionType
{
  v3 = [(NSArray *)self->_faceObservations count];
  if (self->_defaultWrites.disableGating && self->_processIntelligentDistortionCorrection && self->_lowResSegmentationMask && self->_faceObservations && v3)
  {
    v4 = 0;
    self->_rt.correctionTypeSelectionCode = 0;
LABEL_7:
    v5 = 1;
    goto LABEL_48;
  }

  if (!self->_processIntelligentDistortionCorrection)
  {
    v4 = 0;
    v5 = 0;
    v79 = 4096;
LABEL_47:
    self->_rt.correctionTypeSelectionCode = v79;
    goto LABEL_48;
  }

  if (self->_deviceWasStationaryDuringCapture && !self->_defaultWrites.disableStationaryDeviceDetection)
  {
    v4 = 0;
    v5 = 0;
    v79 = 6144;
    goto LABEL_47;
  }

  if (!self->_lowResSegmentationMask)
  {
    v4 = 0;
    v5 = 0;
    v79 = 0x2000;
    goto LABEL_47;
  }

  if (!self->_faceObservations || !v3)
  {
    v4 = 0;
    v5 = 0;
    v79 = 10240;
    goto LABEL_47;
  }

  v6 = [(NSDictionary *)self->_inputImageMetadataDictionary objectForKeyedSubscript:*MEMORY[0x29EDC0000]];
  v4 = v6;
  if (!v6)
  {
    sub_2957C6A14();
    goto LABEL_7;
  }

  v104[0] = 1;
  if ((utlIntToOrientation([v6 intValue], v104) & 1) == 0)
  {
    sub_2957C6920();
    goto LABEL_7;
  }

  v7 = *&self->_anon_e0[268];
  v8 = *&self->_anon_e0[272];
  v9 = *&self->_anon_e0[252];
  v10 = *&self->_anon_e0[256];
  v84 = *&self->_anon_e0[244];
  [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[192]];
  v12 = v11;
  v13 = *&self->_anon_e0[196];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v14 = self->_faceObservations;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v100 objects:v99 count:16];
  if (!v15)
  {

LABEL_46:
    v5 = 0;
    v79 = 20480;
    goto LABEL_47;
  }

  v16 = v15;
  v82 = &self->_anon_e0[244];
  v17 = 0;
  v86 = 0;
  v18 = vcvt_f32_s32(v84);
  v83 = v12;
  v88 = fmaxf(v18.f32[0], v18.f32[1]) * v12;
  v85 = v88 * v13;
  v91 = v7;
  v92 = v8;
  v87 = vmul_f32(v18, 0x3F0000003F000000);
  v90 = v10;
  v19 = *v101;
  v20 = v18.f32[0];
  v21 = v18.f32[1];
  v89 = v7 * v8;
  v5 = 1;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v101 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v23 = v104[0];
      [*(*(&v100 + 1) + 8 * i) boundingBox];
      v28 = rectangleC1toC0(v23, v24, v25, v26, v27);
      v105.size.width = v29 * v20;
      v105.size.height = v30 * v21;
      v32 = vmul_f32(*&self->_anon_e0[24], *&self->_anon_e0[16]);
      v105.origin.x = v28 * v20 + v32.f32[0];
      v105.origin.y = v31 * v21 + v32.f32[1];
      v107.origin.x = v9;
      v107.origin.y = v90;
      v107.size.width = v91;
      v107.size.height = v92;
      v106 = CGRectIntersection(v105, v107);
      x = v106.origin.x;
      y = v106.origin.y;
      width = v106.size.width;
      height = v106.size.height;
      *&v106.origin.x = v106.size.width * v106.size.height;
      v37 = *&v106.origin.x / v89;
      [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[184]];
      v39 = v38;
      [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[188]];
      if (v37 > v39)
      {
        self->_rt.correctionTypeSelectionCode = 12288;

        v5 = 0;
        goto LABEL_48;
      }

      if (v37 > v40)
      {
        v41.f32[0] = x + width * 0.5;
        v42 = y + height * 0.5;
        v41.f32[1] = v42;
        v43 = vsub_f32(v41, v87);
        v44 = sqrtf(vaddv_f32(vmul_f32(v43, v43)));
        ++v17;
        if (v44 < v88)
        {
          self->_rt.correctionTypeSelectionCode = 14336;
          if (v44 < v85)
          {
            ++v86;
          }

          v5 = 3;
        }
      }

      v45 = 0;
      *&v46 = x;
      *&v47 = y;
      v48 = width;
      *&v49 = *&v46 + v48;
      v95 = __PAIR64__(v47, v46);
      v96 = __PAIR64__(v47, v49);
      v50 = height;
      *(&v46 + 1) = *&v47 + v50;
      *(&v49 + 1) = *&v47 + v50;
      v97 = v46;
      v98 = v49;
      v51 = *&self->_anon_e0[276];
      v52 = v51 + *&self->_anon_e0[292];
      v53 = *&self->_anon_e0[280];
      v54 = v53 + *&self->_anon_e0[296];
      minDistanceToEdge = self->_minDistanceToEdge;
      do
      {
        v56 = *(&v95 + v45);
        v57 = vsub_f32(v56, __PAIR64__(v56.u32[1], LODWORD(v51)));
        v58 = vsub_f32(v56, __PAIR64__(v56.u32[1], LODWORD(v52)));
        v57.f32[0] = fminf(sqrtf(vaddv_f32(vmul_f32(v57, v57))), sqrtf(vaddv_f32(vmul_f32(v58, v58))));
        v59 = vsub_f32(v56, __PAIR64__(LODWORD(v53), v56.u32[0]));
        v60 = vsub_f32(v56, __PAIR64__(LODWORD(v54), v56.u32[0]));
        v61 = fminf(fminf(v57.f32[0], sqrtf(vaddv_f32(vmul_f32(v59, v59)))), sqrtf(vaddv_f32(vmul_f32(v60, v60))));
        if (v61 < minDistanceToEdge)
        {
          self->_minDistanceToEdge = v61;
          minDistanceToEdge = v61;
        }

        v45 += 8;
      }

      while (v45 != 32);
    }

    v16 = [(NSArray *)v14 countByEnumeratingWithState:&v100 objects:v99 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  if (!v17 || v86 == v17)
  {
    goto LABEL_46;
  }

  v94 = 0;
  v62 = *(v82 + 120);
  v63 = vcvt_f32_s32(v62);
  v64 = *&self->_anon_e0[252] * v62.i32[0] / v84.i32[0];
  v65 = *&self->_anon_e0[256] * v62.i32[1] / v84.i32[1];
  v66 = *&self->_anon_e0[260] * v62.i32[0] / v84.i32[0];
  v67 = v66 - v64 + 1;
  v68 = *&self->_anon_e0[264] * v62.i32[1] / v84.i32[1];
  v69 = v68 - v65 + 1;
  v93 = 0;
  v70 = v83 * fmaxf(v67, v69);
  v71 = COERCE_DOUBLE(vmul_f32(v63, 0x3F0000003F000000));
  processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  if (!processedSegmentationMaskTexture)
  {
    [(FigIntelligentDistortionCorrectionProcessorV1 *)self undistortSegmentationMask];
    processedSegmentationMaskTexture = self->_rt.processedSegmentationMaskTexture;
  }

  processor = self->_idcUtilities.processor;
  buffer = self->_sharedMetalBuffer.buffer;
  gatingCounters = self->_sharedMetalBuffer.gatingCounters;
  v95 = __PAIR64__(v65, v64);
  v96 = __PAIR64__(v68, v66);
  LODWORD(v97) = v66 - v64 + 1;
  HIDWORD(v97) = v68 - v65 + 1;
  v63.f32[0] = v70;
  if ([(IntelligentDistortionCorrection_Utilities *)processor gatherGatingStatistics:processedSegmentationMaskTexture area:&v95 center:buffer radiusFromCenter:gatingCounters sharedMetalBuffer:&v94 sharedMetalBufferoffset:&v93 activePixelCount:v71 centerPixelCount:*&v63])
  {
    sub_2957C6998();
  }

  else
  {
    v76 = v93;
    v77 = v94 / (v69 * v67);
    [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[180]];
    if (v77 < v78)
    {
      v5 = 0;
      v79 = 0x4000;
      goto LABEL_47;
    }

    [(FigIntelligentDistortionCorrectionProcessorV1 *)self convertPercentageParameter:*&self->_anon_e0[200]];
    if (v5 != 3 && (v76 / (v70 * (v70 * 3.1416))) >= v81)
    {
      self->_rt.correctionTypeSelectionCode = 18432;
      v5 = 3;
    }
  }

LABEL_48:

  return v5;
}

- (int)translateError:(int)error
{
  if ((error + 12786) > 6)
  {
    return -15;
  }

  else
  {
    return dword_2957C7E24[error + 12786];
  }
}

- (int)getAdjustedGDCInformation:(id *)information
{
  if (information)
  {
    v5 = &self->_anon_e0[228];
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v6 = *&self->_anon_e0[300];
    v7 = *&self->_anon_e0[304];
    information->var0.origin.x = v6;
    information->var0.origin.y = v7;
    v8 = *&self->_anon_e0[316];
    v9.i64[0] = v8;
    v9.i64[1] = SHIDWORD(v8);
    information->var0.size = vcvtq_f64_s64(v9);
    v10 = *&self->_anon_e0[308];
    v11 = *&self->_anon_e0[312];
    [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities.processor buildParameters:&v79 bundleConfiguration:self->_anon_e0];
    v69 = v5;
    v12 = vcvt_f32_s32(v5[6]);
    *&v79 = vdiv_f32(vcvt_f32_s32(v5[2]), vcvt_f32_s32(v5[8]));
    *&v80 = v12;
    v13 = &self->_anon_e0[12];
    v14 = vld1_dup_f32(v13);
    *&v84 = v14;
    *&v15 = inverseDistort(v6, v7, &v79);
    LODWORD(v15) = DWORD1(v15);
    v16 = v10 - v6;
    if (v10 <= v6)
    {
      v76 = *(&v15 + 1);
      LODWORD(v72) = inverseDistort(v6, v11, &v79).i32[1];
    }

    else
    {
      v17 = v6 + 1;
      v18 = v6 + 1;
      do
      {
        v75 = v15;
        v19 = inverseDistort(v18, v7, &v79);
        v20 = v75;
        *&v20 = fminf(*&v75, v19.f32[1]);
        LODWORD(v76) = v20;
        v15 = v20;
        ++v18;
        --v16;
      }

      while (v16);
      LODWORD(v21) = inverseDistort(v6, v11, &v79).i32[1];
      v22 = v10 - v6;
      if (v10 <= v6)
      {
        LODWORD(v72) = v21;
        v16 = v10 - v6;
      }

      else
      {
        v16 = v10 - v6;
        do
        {
          v71 = v21;
          v23 = inverseDistort(v17, v11, &v79);
          v21 = v71;
          *&v21 = fmaxf(*&v71, v23.f32[1]);
          ++v17;
          --v22;
        }

        while (v22);
        LODWORD(v72) = v21;
      }
    }

    *&v24 = inverseDistort(v6, v7, &v79);
    v25 = v11 - v7;
    if (v11 <= v7)
    {
      LODWORD(v74) = v24;
      LODWORD(v31) = inverseDistort(v10, v7, &v79).u32[0];
    }

    else
    {
      v68 = v16;
      v26 = v7 + 1;
      v27 = v11 - v7;
      v28 = v7 + 1;
      do
      {
        v73 = v24;
        LODWORD(v29) = inverseDistort(v6, v28, &v79).u32[0];
        v30 = v73;
        *&v30 = fminf(*&v73, v29);
        LODWORD(v74) = v30;
        v24 = v30;
        ++v28;
        --v27;
      }

      while (v27);
      *&v31 = inverseDistort(v10, v7, &v79);
      v32 = __OFSUB__(v11, v7);
      v33 = v11 - v7;
      v16 = v68;
      if (!((v33 < 0) ^ v32 | (v33 == 0)))
      {
        do
        {
          v70 = v31;
          LODWORD(v34) = inverseDistort(v10, v26, &v79).u32[0];
          v31 = v70;
          *&v31 = fmaxf(*&v70, v34);
          ++v26;
          --v33;
        }

        while (v33);
      }
    }

    v35 = v16 / v25;
    v36.f32[0] = v74;
    v37 = (*&v31 - v74) / (v72 - v76);
    if (v37 <= v35)
    {
      v40 = __PAIR64__(LODWORD(v72), v31);
      v41 = __PAIR64__(LODWORD(v76), LODWORD(v74));
      if (v37 < v35)
      {
        v42 = v35 * (v72 - v76);
        v43 = (v74 + *&v31) * 0.5;
        v40.f32[0] = v43 + (v42 * 0.5);
        v41.f32[0] = v43 - (v42 * 0.5);
      }
    }

    else
    {
      v38 = (*&v31 - v74) / v35;
      v39 = (v76 + v72) * 0.5;
      *(&v31 + 1) = v39 + (v38 * 0.5);
      v36.f32[1] = v39 - (v38 * 0.5);
      v40 = v31;
      v41 = v36;
    }

    v44 = 0;
    v45 = v69[2];
    v46 = vmax_s32(v69[3], vcvt_s32_f32(vrndp_f32(v41)));
    v47 = vmin_s32(v69[4], vcvt_s32_f32(vrndm_f32(v40)));
    v48 = v46.i32[1];
    v49 = vmvn_s8(v46);
    v50 = v46.i32[0];
    v51 = vadd_s32(vsub_s32(v47, v46), 0x100000001);
    v52.i64[0] = v51.i32[0];
    v52.i64[1] = v51.i32[1];
    information->var0.origin.x = v46.i32[0];
    information->var0.origin.y = v46.i32[1];
    information->var0.size = vcvtq_f64_s64(v52);
    v53 = *&self->_anon_e0[316] / v51.i32[0];
    v54 = vadd_f32(*&self->_anon_e0[40], vmla_f32(vcvt_f32_s32(*v69), 0x3F0000003F000000, vcvt_f32_s32(v45)));
    v55 = vcvt_f32_s32(vsub_s32(v47, v49));
    *v45.i32 = v50 - v54.f32[0];
    v49.i32[0] = v54.i32[1];
    v56 = v47.i32[0] - v54.f32[0];
    information->var4 = vcvtq_f64_f32(vmls_f32(v54, 0x3F0000003F000000, v55));
    v54.f32[0] = (v48 - *v49.i32) * (v48 - *v49.i32);
    *v47.i32 = (v47.i32[1] - *v49.i32) * (v47.i32[1] - *v49.i32);
    v77 = v53;
    v57 = v53 * fmaxf(fmaxf(fmaxf(sqrtf(v54.f32[0] + (*v45.i32 * *v45.i32)), sqrtf(v54.f32[0] + (v56 * v56))), sqrtf(*v47.i32 + (*v45.i32 * *v45.i32))), sqrtf(*v47.i32 + (v56 * v56)));
    v58 = *(&v85 + 2);
    v59 = v86;
    v60 = v87;
    do
    {
      v61 = v44 / 100.0;
      *&v78[v44 + 101] = v61 * v61;
      v62 = ((v57 * v61) * (v57 * v61)) * v58;
      v63 = v62 < 1.0;
      v64 = *&v59 + ((*(&v59 + 1) + ((*(&v59 + 2) + ((*(&v59 + 3) + ((*&v60 + ((*(&v60 + 1) + ((*(&v60 + 2) + (*(&v60 + 3) * v62)) * v62)) * v62)) * v62)) * v62)) * v62)) * v62);
      v65 = v62 * v62;
      v66 = ((((((*&v59 + (*(&v59 + 1) * v62)) + (*(&v59 + 2) * (v62 * v62))) + (*(&v59 + 3) * (v62 * (v62 * v62)))) + (*&v60 * (v65 * v65))) + (((v65 * v65) * *(&v60 + 1)) * v62)) + (((v65 * v65) * *(&v60 + 2)) * v65)) + (((v65 * v65) * *(&v60 + 3)) * (v62 * (v62 * v62)));
      if (v63)
      {
        v66 = v64;
      }

      *&v78[v44++] = 1.0 / ((v66 * 0.01) + 1.0);
    }

    while (v44 != 101);
    if (cubicRegression())
    {
      result = 0;
      *&information->var2 = v69[8];
      *information->var1 = vmulq_n_f32(*information->var1, v77);
    }

    else
    {
      sub_2957C6A8C();
      return -3;
    }
  }

  else
  {
    sub_2957C6B04();
    return -2;
  }

  return result;
}

- (__n128)stereoRectificationInverseHomography
{
  result = *(self + 1376);
  v2 = *(self + 1392);
  v3 = *(self + 1408);
  return result;
}

- (__n128)setStereoRectificationInverseHomography:(__n128)homography
{
  result[86] = a2;
  result[87] = homography;
  result[88] = a4;
  return result;
}

- (CGPoint)opticalCenterOffset
{
  x = self->_opticalCenterOffset.x;
  y = self->_opticalCenterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)inputImageCropRect
{
  x = self->_inputImageCropRect.origin.x;
  y = self->_inputImageCropRect.origin.y;
  width = self->_inputImageCropRect.size.width;
  height = self->_inputImageCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)outputValidBufferRect
{
  x = self->_outputValidBufferRect.origin.x;
  y = self->_outputValidBufferRect.origin.y;
  width = self->_outputValidBufferRect.size.width;
  height = self->_outputValidBufferRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__n128)globalTransform
{
  result = *(self + 1424);
  v2 = *(self + 1440);
  v3 = *(self + 1456);
  return result;
}

@end