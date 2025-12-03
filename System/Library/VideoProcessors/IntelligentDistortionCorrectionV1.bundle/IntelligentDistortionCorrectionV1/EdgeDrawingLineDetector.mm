@interface EdgeDrawingLineDetector
+ (void)getDefaultConfigurationParameters:(id *)parameters;
- (BOOL)linesAreCollinearWithSortedPoints:(EdgeDrawingLineDetector *)self;
- (EdgeDrawingLineDetector)initWithFigMetalContext:(id)context idcUtilities:(id)utilities;
- (int)compileShaders:(BOOL)shaders;
- (int)detectLinesPart1:(id *)part1 inputImageTexture:(id)texture inputSegmentationMaskTexture:(id)maskTexture;
- (int)detectLinesPart2:(id *)part2 results:(id *)results;
- (int)determineWorkingBufferRequirements:(id *)requirements bundleConfiguration:(id *)configuration maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight;
- (int)doEdgeDrawing:(EdgeDrawingLineDetector *)self outputLineData:(SEL)data sharedMemoryPtr:(id *)ptr;
- (int)doLineFitting:(id *)fitting outputLineData:;
- (int)memoryAllocationHandler:(id *)handler memoryAllocationParameters:(id *)parameters sharedMemoryBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size;
- (int)processImage:(id *)image inputImageTexture:(id)texture inputSegmentationMaskTexture:(id)maskTexture;
- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size;
- (unsigned)runFullLsr:(EdgeDrawingLineDetector *)self lsr:(SEL)lsr points:(id *)points numPointsLeft:(id *)left;
- (void)dealloc;
- (void)doLineMerging:(id *)merging outputLineData:;
- (void)findCollinearLinesWithOutputLineData:(EdgeDrawingLineDetector *)self;
- (void)rebuildLsr:(EdgeDrawingLineDetector *)self points:(SEL)points numPoints:(id *)numPoints;
- (void)releaseResources;
- (void)runTraceBackward:(unsigned int)backward anchorPoint:(unsigned int)point initialGradDir:(char *)dir sharedMemoryPtr:;
- (void)runTraceForward:(unsigned int)forward anchorPoint:(unsigned int)point initialGradDir:(char *)dir sharedMemoryPtr:;
- (void)sort4Points:(EdgeDrawingLineDetector *)self onAxis:(SEL)axis;
@end

@implementation EdgeDrawingLineDetector

+ (void)getDefaultConfigurationParameters:(id *)parameters
{
  *&parameters->var21[0].var0[5] = 0x3E4CCCCD00000004;
  LODWORD(parameters->var21[1].var0[0]) = 1;
  *&parameters->var21[1].var0[5] = 0x1440400000;
  *&parameters->var21[1].var0[1] = 0xA00000002;
  *&parameters->var21[1].var0[3] = 0x3D23D70A40400000;
  LODWORD(parameters->var21[2].var0[0]) = 3;
}

- (EdgeDrawingLineDetector)initWithFigMetalContext:(id)context idcUtilities:(id)utilities
{
  contextCopy = context;
  utilitiesCopy = utilities;
  v9 = utilitiesCopy;
  if (!contextCopy)
  {
    sub_2957C112C();
LABEL_9:
    selfCopy = 0;
    goto LABEL_6;
  }

  if (!utilitiesCopy)
  {
    sub_2957C10B4();
    goto LABEL_9;
  }

  v14.receiver = self;
  v14.super_class = EdgeDrawingLineDetector;
  v10 = [(EdgeDrawingLineDetector *)&v14 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, context);
    objc_storeStrong(p_isa + 2, utilities);
    [p_isa compileShaders:0];
  }

  self = p_isa;
  selfCopy = self;
LABEL_6:

  return selfCopy;
}

- (int)compileShaders:(BOOL)shaders
{
  if (self->_haveShadersBeenCompiled)
  {
    return 0;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::convertToRgba" constants:0];
  convertToRgba = self->_kernels.convertToRgba;
  self->_kernels.convertToRgba = v5;

  if (self->_kernels.convertToRgba)
  {
    v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::convertToRgbaAndDownscale2To1" constants:0];
    convertToRgbaAndDownscale2To1 = self->_kernels.convertToRgbaAndDownscale2To1;
    self->_kernels.convertToRgbaAndDownscale2To1 = v7;

    if (self->_kernels.convertToRgbaAndDownscale2To1)
    {
      v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::convertToRgbaAndDownscale4To1" constants:0];
      convertToRgbaAndDownscale4To1 = self->_kernels.convertToRgbaAndDownscale4To1;
      self->_kernels.convertToRgbaAndDownscale4To1 = v9;

      if (self->_kernels.convertToRgbaAndDownscale4To1)
      {
        v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::computeGradients" constants:0];
        computeGradients = self->_kernels.computeGradients;
        self->_kernels.computeGradients = v11;

        if (self->_kernels.computeGradients)
        {
          v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::computeGradientsWithMask" constants:0];
          computeGradientsWithMask = self->_kernels.computeGradientsWithMask;
          self->_kernels.computeGradientsWithMask = v13;

          if (self->_kernels.computeGradientsWithMask)
          {
            v15 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::sparseAnchors" constants:0];
            sparseAnchors = self->_kernels.sparseAnchors;
            self->_kernels.sparseAnchors = v15;

            if (self->_kernels.sparseAnchors)
            {
              v17 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::findMaxOfAreaPass1" constants:0];
              findMaxOfAreaPass1 = self->_kernels.findMaxOfAreaPass1;
              self->_kernels.findMaxOfAreaPass1 = v17;

              if (self->_kernels.findMaxOfAreaPass1)
              {
                v19 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"edld_kernels::gradientNormalize" constants:0];
                gradientNormalize = self->_kernels.gradientNormalize;
                self->_kernels.gradientNormalize = v19;

                if (self->_kernels.gradientNormalize)
                {
                  result = 0;
                  self->_haveShadersBeenCompiled = 1;
                  return result;
                }

                sub_2957C11A4();
              }

              else
              {
                sub_2957C121C();
              }
            }

            else
            {
              sub_2957C1294();
            }
          }

          else
          {
            sub_2957C130C();
          }
        }

        else
        {
          sub_2957C1384();
        }
      }

      else
      {
        sub_2957C13FC();
      }
    }

    else
    {
      sub_2957C1474();
    }
  }

  else
  {
    sub_2957C14EC();
  }

  return -12786;
}

- (void)releaseResources
{
  p_output = &self->_output;
  *&self->_maximumMemoryAllocationParameters.segmentationMaskHeight = 0u;
  *&self->_maximumMemoryAllocationParameters.downscaledImageWidth = 0u;
  *&self->_currentMemoryAllocationParameters.downscaledImageWidth = 0u;
  *&self->_currentMemoryAllocationParameters.segmentationMaskHeight = 0u;
  buffer = self->_sharedMetalBuffer.buffer;
  self->_sharedMetalBuffer.buffer = 0;

  self->_sharedMetalBuffer.offset = 0;
  self->_sharedMetalBuffer.size = 0;
  self->_sharedMetalBuffer.resourcesAssigned = 0;
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  *self->_anon_11c = 0;
  *&self->_anchorArray.backwardIndex = 0;
  *&self->_offsets.anchors = 0u;
  *&self->_offsets.gradientMagnitude = 0u;
  v5 = p_output->buffer;
  p_output->buffer = 0;

  *&p_output->curNum = 0;
  p_output->offset = 0;
}

- (void)dealloc
{
  [(EdgeDrawingLineDetector *)self releaseResources];
  v3.receiver = self;
  v3.super_class = EdgeDrawingLineDetector;
  [(EdgeDrawingLineDetector *)&v3 dealloc];
}

- (int)determineWorkingBufferRequirements:(id *)requirements bundleConfiguration:(id *)configuration maximumInputImageWidth:(unsigned int)width maximumInputImageHeight:(unsigned int)height maximumSegmentationMaskWidth:(unsigned int)maskWidth maximumSegmentationMaskHeight:(unsigned int)maskHeight
{
  if (!requirements)
  {
    sub_2957C1658();
    return -12780;
  }

  if (!configuration)
  {
    sub_2957C15E0();
    return -12780;
  }

  v8 = configuration->var21[0].var0[5];
  if (LODWORD(v8) > 4 || ((1 << SLOBYTE(v8)) & 0x16) == 0)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    return -12780;
  }

  requirements->var0 = 0;
  *&self->_maximumMemoryAllocationParameters.segmentationMaskHeight = 0u;
  *&self->_maximumMemoryAllocationParameters.downscaledImageWidth = 0u;
  v13 = (LODWORD(v8) - 1 + width) / LODWORD(v8);
  v14 = (LODWORD(v8) - 1 + height) / LODWORD(v8);
  v15 = LODWORD(configuration->var21[1].var0[1]);
  v16 = [EdgeDrawingLineDetector memoryAllocationHandler:"memoryAllocationHandler:memoryAllocationParameters:sharedMemoryBuffer:sharedMetalBufferOffset:sharedMetalBufferSize:" memoryAllocationParameters:? sharedMemoryBuffer:? sharedMetalBufferOffset:? sharedMetalBufferSize:?];
  if (v16)
  {
    sub_2957C1564();
  }

  else
  {
    self->_maximumMemoryAllocationParameters.downscaledImageWidth = v13;
    self->_maximumMemoryAllocationParameters.downscaledImageHeight = v14;
    self->_maximumMemoryAllocationParameters.anchorScanInterval = v15;
    self->_maximumMemoryAllocationParameters.segmentationMaskWidth = maskWidth;
    self->_maximumMemoryAllocationParameters.segmentationMaskHeight = maskHeight;
    self->_maximumMemoryAllocationParameters.anchorGridWidth = v13 / v15;
    self->_maximumMemoryAllocationParameters.anchorGridHeight = v14 / v15;
    self->_maximumMemoryAllocationParameters.anchorMaxCount = v13 / v15 * v15 * (v14 / v15);
  }

  return v16;
}

- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size
{
  bufferCopy = buffer;
  if (bufferCopy)
  {
    objc_storeStrong(&self->_sharedMetalBuffer.buffer, buffer);
    v10 = 0;
    self->_sharedMetalBuffer.offset = offset;
    self->_sharedMetalBuffer.size = size;
    self->_sharedMetalBuffer.resourcesAssigned = 0;
    *&self->_currentMemoryAllocationParameters.downscaledImageWidth = 0u;
    *&self->_currentMemoryAllocationParameters.segmentationMaskHeight = 0u;
  }

  else
  {
    sub_2957C16D0();
    v10 = -12780;
  }

  return v10;
}

- (int)detectLinesPart1:(id *)part1 inputImageTexture:(id)texture inputSegmentationMaskTexture:(id)maskTexture
{
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  v10 = maskTextureCopy;
  self->_detectLinesPart1CompletedSuccessfully = 0;
  if (!textureCopy)
  {
    sub_2957C1CF0();
    goto LABEL_29;
  }

  if (!part1)
  {
    sub_2957C1C78();
    goto LABEL_29;
  }

  v11 = part1->var21[0].var0[5];
  if (LODWORD(v11) > 4 || ((1 << SLOBYTE(v11)) & 0x16) == 0)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_29:
    v28 = -12780;
    goto LABEL_30;
  }

  if (!self->_sharedMetalBuffer.buffer)
  {
    sub_2957C1C00();
    goto LABEL_29;
  }

  if (maskTextureCopy && [maskTextureCopy pixelFormat] != 25 && objc_msgSend(v10, "pixelFormat") != 10)
  {
    sub_2957C1748();
    goto LABEL_29;
  }

  width = [textureCopy width];
  height = [textureCopy height];
  part1Copy = part1;
  v15 = LODWORD(part1->var21[1].var0[1]);
  v16 = (LODWORD(v11) - 1 + width) / LODWORD(v11);
  width2 = [v10 width];
  v32 = v10;
  height2 = [v10 height];
  if (v16 <= 0xF)
  {
    sub_2957C1B88();
    v28 = -12780;
    goto LABEL_30;
  }

  v31 = textureCopy;
  v19 = (LODWORD(v11) - 1 + height) / LODWORD(v11);
  if (v19 <= 0xF)
  {
    sub_2957C1B10();
LABEL_41:
    v28 = -12780;
LABEL_42:
    textureCopy = v31;
    v10 = v32;
    goto LABEL_30;
  }

  if (v16 > self->_maximumMemoryAllocationParameters.downscaledImageWidth)
  {
    sub_2957C1A98();
    goto LABEL_41;
  }

  if (v19 > self->_maximumMemoryAllocationParameters.downscaledImageHeight)
  {
    sub_2957C1A20();
    goto LABEL_41;
  }

  v20 = v16 / v15;
  if (v16 / v15 > self->_maximumMemoryAllocationParameters.anchorGridWidth)
  {
    sub_2957C19A8();
    goto LABEL_41;
  }

  v21 = v19 / v15;
  if (v19 / v15 > self->_maximumMemoryAllocationParameters.anchorGridHeight)
  {
    sub_2957C1930();
    goto LABEL_41;
  }

  v22 = v20 * v15 * v21;
  if (v22 > self->_maximumMemoryAllocationParameters.anchorMaxCount)
  {
    sub_2957C18B8();
    goto LABEL_41;
  }

  v23 = height2;
  if (self->_sharedMetalBuffer.resourcesAssigned && v16 == self->_currentMemoryAllocationParameters.downscaledImageWidth && v19 == self->_currentMemoryAllocationParameters.downscaledImageHeight && v15 == self->_currentMemoryAllocationParameters.anchorScanInterval && self->_currentMemoryAllocationParameters.segmentationMaskWidth == width2 && self->_currentMemoryAllocationParameters.segmentationMaskHeight == height2)
  {
    goto LABEL_26;
  }

  self->_sharedMetalBuffer.resourcesAssigned = 0;
  buffer = self->_sharedMetalBuffer.buffer;
  offset = self->_sharedMetalBuffer.offset;
  size = self->_sharedMetalBuffer.size;
  v33[0] = v16;
  v33[1] = v19;
  v33[2] = v15;
  v33[3] = width2;
  v33[4] = height2;
  v33[5] = v16 / v15;
  v33[6] = v19 / v15;
  v33[7] = v20 * v15 * v21;
  v27 = [(EdgeDrawingLineDetector *)self memoryAllocationHandler:0 memoryAllocationParameters:v33 sharedMemoryBuffer:buffer sharedMetalBufferOffset:offset sharedMetalBufferSize:size];
  if (v27)
  {
    v28 = v27;
    sub_2957C17C0();
    goto LABEL_42;
  }

  self->_sharedMetalBuffer.resourcesAssigned = 1;
  self->_currentMemoryAllocationParameters.downscaledImageWidth = v16;
  self->_currentMemoryAllocationParameters.downscaledImageHeight = v19;
  self->_currentMemoryAllocationParameters.anchorScanInterval = v15;
  self->_currentMemoryAllocationParameters.segmentationMaskWidth = width2;
  self->_currentMemoryAllocationParameters.segmentationMaskHeight = v23;
  self->_currentMemoryAllocationParameters.anchorGridWidth = v20;
  self->_currentMemoryAllocationParameters.anchorGridHeight = v21;
  self->_currentMemoryAllocationParameters.anchorMaxCount = v22;
LABEL_26:
  textureCopy = v31;
  v10 = v32;
  v28 = [(EdgeDrawingLineDetector *)self processImage:part1Copy inputImageTexture:v31 inputSegmentationMaskTexture:v32];
  if (v28)
  {
    sub_2957C183C();
  }

  else
  {
    self->_detectLinesPart1CompletedSuccessfully = 1;
  }

LABEL_30:

  return v28;
}

- (int)detectLinesPart2:(id *)part2 results:(id *)results
{
  if (!results)
  {
    sub_2957C1FC4();
    return -12780;
  }

  if (!self->_sharedMetalBuffer.buffer)
  {
    sub_2957C1F4C();
    return -12780;
  }

  if (!self->_detectLinesPart1CompletedSuccessfully)
  {
    sub_2957C1D68();
    return -12782;
  }

  self->_output.curNum = 0;
  self->_output.maxNum = results->var0;
  objc_storeStrong(&self->_output.buffer, results->var3);
  self->_output.offset = results->var2;
  contents = [(MTLBuffer *)self->_output.buffer contents];
  contents2 = [(MTLBuffer *)self->_sharedMetalBuffer.buffer contents];
  if (!contents)
  {
    sub_2957C1ED4();
    return -12786;
  }

  if (!contents2)
  {
    sub_2957C1E5C();
    return -12786;
  }

  offset = self->_output.offset;
  v10 = [(EdgeDrawingLineDetector *)self doEdgeDrawing:part2 outputLineData:contents + offset sharedMemoryPtr:contents2];
  if (v10)
  {
    sub_2957C1DE0();
  }

  else
  {
    [(EdgeDrawingLineDetector *)self findCollinearLinesWithOutputLineData:contents + offset];
    results->var1 = self->_output.curNum;
  }

  return v10;
}

- (int)memoryAllocationHandler:(id *)handler memoryAllocationParameters:(id *)parameters sharedMemoryBuffer:(id)buffer sharedMetalBufferOffset:(unint64_t)offset sharedMetalBufferSize:(unint64_t)size
{
  bufferCopy = buffer;
  if (bufferCopy | size | offset)
  {
    v13 = 1;
  }

  else
  {
    v13 = handler == 0;
  }

  v52 = 0;
  v53 = 0;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  if (handler)
  {
    v14 = (bufferCopy | size | offset) == 0;
  }

  else
  {
    v14 = bufferCopy != 0;
  }

  if (!v14)
  {
    goto LABEL_44;
  }

  *&v15 = *&parameters->var0;
  *(&v15 + 1) = HIDWORD(*&parameters->var0);
  v50 = v15;
  v51 = xmmword_2957C7D60;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:&v50];
  v16 = v53;
  *&v15 = *&parameters->var0;
  *(&v15 + 1) = HIDWORD(*&parameters->var0);
  v47 = v15;
  v48 = xmmword_2957C7D70;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:&v47];
  v17 = *(&v49 + 1);
  if (v16 > *(&v49 + 1))
  {
    v17 = v16;
  }

  if (v17 <= ((4 * parameters->var7 + 255) & 0x7FFFFFF00uLL))
  {
    v18 = (4 * parameters->var7 + 255) & 0x7FFFFFF00;
  }

  else
  {
    v18 = v17;
  }

  if (v13)
  {
    v19 = size >= v18;
    size -= v18;
    if (!v19)
    {
      sub_2957C24EC();
LABEL_44:
      v45 = -12780;
      goto LABEL_45;
    }

    self->_offsets.anchors = offset;
    v20 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:offset textureDescriptor:&v50];
    scaledImage = self->_textures.scaledImage;
    self->_textures.scaledImage = v20;

    if (self->_textures.scaledImage)
    {
      v22 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:offset textureDescriptor:&v47];
      localMaxPass1 = self->_textures.localMaxPass1;
      self->_textures.localMaxPass1 = v22;

      if (self->_textures.localMaxPass1)
      {
        goto LABEL_18;
      }

      sub_2957C23FC();
    }

    else
    {
      sub_2957C2474();
    }

LABEL_48:
    v45 = -12786;
    goto LABEL_45;
  }

LABEL_18:
  *&v24 = *&parameters->var0;
  *(&v24 + 1) = HIDWORD(*&parameters->var0);
  v50 = v24;
  v51 = xmmword_2957C7D80;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:&v50];
  v25 = v53;
  if (!v13)
  {
    goto LABEL_22;
  }

  if (v53 > size)
  {
    sub_2957C2384();
    goto LABEL_44;
  }

  v26 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:v18 + offset textureDescriptor:&v50];
  gradientFlags = self->_textures.gradientFlags;
  self->_textures.gradientFlags = v26;

  if (!self->_textures.gradientFlags)
  {
    sub_2957C230C();
    goto LABEL_48;
  }

  v28 = v52;
  v25 = v53;
  size -= v53;
  self->_offsets.gradientFlags = v18 + offset;
  self->_elemStride.gradientFlags = v28;
LABEL_22:
  v29 = v25 + v18;
  *&v30 = *&parameters->var0;
  *(&v30 + 1) = HIDWORD(*&parameters->var0);
  v50 = v30;
  v51 = xmmword_2957C7D70;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:&v50];
  v31 = v53;
  if (!v13)
  {
    goto LABEL_26;
  }

  if (v53 > size)
  {
    sub_2957C2294();
    goto LABEL_44;
  }

  v32 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:v29 + offset textureDescriptor:&v50];
  gradientMagnitude = self->_textures.gradientMagnitude;
  self->_textures.gradientMagnitude = v32;

  if (!self->_textures.gradientMagnitude)
  {
    sub_2957C221C();
    goto LABEL_48;
  }

  v34 = v52;
  v31 = v53;
  size -= v53;
  self->_offsets.gradientMagnitude = v29 + offset;
  self->_elemStride.gradientMagnitude = v34 >> 1;
LABEL_26:
  v35 = v31 + v29;
  v36 = *&parameters->var3;
  *&v37 = v36;
  *(&v37 + 1) = HIDWORD(v36);
  v50 = v37;
  v51 = xmmword_2957C7D90;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:&v50];
  v38 = v53;
  if (!v13)
  {
    goto LABEL_30;
  }

  if (v53 > size)
  {
    sub_2957C21A4();
    goto LABEL_44;
  }

  v39 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:v35 + offset textureDescriptor:&v50];
  dilatedSegmentationMask = self->_textures.dilatedSegmentationMask;
  self->_textures.dilatedSegmentationMask = v39;

  if (!self->_textures.dilatedSegmentationMask)
  {
    sub_2957C212C();
    goto LABEL_48;
  }

  v38 = v53;
  size -= v53;
LABEL_30:
  v41 = v38 + v35;
  *&v42 = *&parameters->var0;
  *(&v42 + 1) = HIDWORD(*&parameters->var0);
  v50 = v42;
  v51 = xmmword_2957C7D60;
  [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities computeTextureStrideForBufferAllocation:&v50];
  if (!v13)
  {
    goto LABEL_34;
  }

  if (v53 > size)
  {
    sub_2957C20B4();
    goto LABEL_44;
  }

  v43 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities textureFromBuffer:bufferCopy bufferOffset:v41 + offset textureDescriptor:&v50];
  scaledUndistortedImage = self->_textures.scaledUndistortedImage;
  self->_textures.scaledUndistortedImage = v43;

  if (!self->_textures.scaledUndistortedImage)
  {
    sub_2957C203C();
    goto LABEL_48;
  }

  if (!handler)
  {
    v45 = 0;
    goto LABEL_45;
  }

LABEL_34:
  v45 = 0;
  handler->var0 = v53 + v41;
LABEL_45:

  return v45;
}

- (int)processImage:(id *)image inputImageTexture:(id)texture inputSegmentationMaskTexture:(id)maskTexture
{
  textureCopy = texture;
  maskTextureCopy = maskTexture;
  downscaledImageWidth = self->_currentMemoryAllocationParameters.downscaledImageWidth;
  downscaledImageHeight = self->_currentMemoryAllocationParameters.downscaledImageHeight;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2957C2714();
LABEL_26:
    v26 = -12786;
    goto LABEL_23;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_2957C269C();
    goto LABEL_26;
  }

  v15 = computeCommandEncoder;
  v45 = downscaledImageHeight;
  v46 = commandBuffer;
  v16 = image->var21[0].var0[5];
  v17 = maskTextureCopy;
  if (LODWORD(v16) == 2)
  {
    convertToRgbaAndDownscale2To1 = self->_kernels.convertToRgbaAndDownscale2To1;
    goto LABEL_7;
  }

  if (LODWORD(v16) == 4)
  {
    convertToRgbaAndDownscale2To1 = self->_kernels.convertToRgbaAndDownscale4To1;
LABEL_7:
    v19 = convertToRgbaAndDownscale2To1;
    v20 = downscaledImageWidth;
    goto LABEL_9;
  }

  v19 = self->_kernels.convertToRgba;
  v20 = self->_currentMemoryAllocationParameters.downscaledImageWidth >> 1;
  downscaledImageHeight = self->_currentMemoryAllocationParameters.downscaledImageHeight >> 1;
LABEL_9:
  [v15 setComputePipelineState:v19];
  [v15 setTexture:textureCopy atIndex:0];
  p_textures = &self->_textures;
  [v15 setTexture:self->_textures.scaledImage atIndex:2];
  *v50 = [(MTLComputePipelineState *)v19 threadExecutionWidth];
  *&v50[8] = [(MTLComputePipelineState *)v19 maxTotalThreadsPerThreadgroup]/ *v50;
  *&v50[16] = 1;
  v58 = v20;
  v59 = downscaledImageHeight;
  v60 = 1;
  [v15 dispatchThreads:&v58 threadsPerThreadgroup:v50];
  v22 = image->var21[0].var0[5];
  v23 = (image->var16.var0 + LODWORD(v22) - 1) / SLODWORD(v22);
  LODWORD(v55) = (image->var15.var0.var5 + LODWORD(v22) - 1) / SLODWORD(v22);
  DWORD1(v55) = v23;
  var2 = image->var16.var2;
  DWORD2(v55) = image->var16.var1 / SLODWORD(v22);
  HIDWORD(v55) = var2 / SLODWORD(v22);
  v56 = DWORD2(v55) - v55 + 1;
  v57 = var2 / SLODWORD(v22) - v23 + 1;
  if (LOBYTE(image->var13[2]) == 1)
  {
    p_textures = &self->_textures.scaledUndistortedImage;
    v25 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities undistortBGRATexture:image inputBGRATexture:self->_textures.scaledImage intoOutputBGRA:self->_textures.scaledUndistortedImage encoder:v15 crop:&v55];
    maskTextureCopy = v17;
    if (v25)
    {
      v26 = v25;
      sub_2957C2564(v25, v15, v19);
      commandBuffer = v46;
      goto LABEL_23;
    }
  }

  else
  {
    maskTextureCopy = v17;
  }

  v27 = p_textures->scaledImage;
  commandBuffer = v46;
  if (maskTextureCopy)
  {
    v28 = [(IntelligentDistortionCorrection_Utilities *)self->_idcUtilities dilateSegmentationMask:maskTextureCopy to:self->_textures.dilatedSegmentationMask radius:LODWORD(image->var21[2].var0[0]) commandEncoder:v15];
    if (v28)
    {
      v26 = v28;
      sub_2957C25F8(v28, v27, v15, v19);
      goto LABEL_23;
    }

    v29 = 160;
  }

  else
  {
    v29 = 152;
  }

  *&v50[16] = 0;
  *v50 = image->var21[0].var0[6];
  *&v50[4] = v55;
  v30 = *&image->var5.var1;
  v51 = *&image->var4;
  v52 = v30;
  v53 = LODWORD(image->var21[0].var0[5]);
  if (LOBYTE(image[1].var12.var0))
  {
    v31 = 6;
  }

  else
  {
    v31 = 0;
  }

  v54 = v31;
  v32 = *(&self->super.isa + v29);

  [v15 setComputePipelineState:v32];
  [v15 setTexture:v27 atIndex:0];
  [v15 setTexture:self->_textures.gradientFlags atIndex:1];
  [v15 setTexture:self->_textures.gradientMagnitude atIndex:2];
  if (maskTextureCopy)
  {
    [v15 setTexture:self->_textures.dilatedSegmentationMask atIndex:3];
  }

  [v15 setBytes:v50 length:48 atIndex:0];
  threadExecutionWidth = [v32 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v32 maxTotalThreadsPerThreadgroup];
  v58 = threadExecutionWidth;
  v59 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v60 = 1;
  v47 = downscaledImageWidth;
  v48 = v45;
  v49 = 1;
  [v15 dispatchThreads:&v47 threadsPerThreadgroup:&v58];
  v47 = *&image->var21[0].var0[6];
  [v15 setComputePipelineState:self->_kernels.findMaxOfAreaPass1];
  [v15 setTexture:self->_textures.gradientMagnitude atIndex:0];
  [v15 setTexture:self->_textures.localMaxPass1 atIndex:1];
  [v15 setBytes:&v47 length:8 atIndex:0];
  threadExecutionWidth2 = [(MTLComputePipelineState *)self->_kernels.findMaxOfAreaPass1 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_kernels.findMaxOfAreaPass1 maxTotalThreadsPerThreadgroup];
  *v50 = threadExecutionWidth2;
  *&v50[8] = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2;
  *&v50[16] = 1;
  v58 = downscaledImageWidth;
  v59 = v45;
  v60 = 1;
  [v15 dispatchThreads:&v58 threadsPerThreadgroup:v50];
  [v15 setComputePipelineState:self->_kernels.gradientNormalize];
  [v15 setTexture:self->_textures.gradientMagnitude atIndex:0];
  [v15 setTexture:self->_textures.localMaxPass1 atIndex:1];
  [v15 setTexture:self->_textures.gradientFlags atIndex:2];
  [v15 setBytes:&v47 length:8 atIndex:0];
  threadExecutionWidth3 = [(MTLComputePipelineState *)self->_kernels.gradientNormalize threadExecutionWidth];
  maxTotalThreadsPerThreadgroup3 = [(MTLComputePipelineState *)self->_kernels.gradientNormalize maxTotalThreadsPerThreadgroup];
  *v50 = threadExecutionWidth3;
  *&v50[8] = maxTotalThreadsPerThreadgroup3 / threadExecutionWidth3;
  *&v50[16] = 1;
  v58 = downscaledImageWidth;
  v59 = v45;
  v60 = 1;
  [v15 dispatchThreads:&v58 threadsPerThreadgroup:v50];
  v39 = *&self->_currentMemoryAllocationParameters.anchorGridWidth;
  v47 = vdiv_f32(vcvt_f32_u32(*&self->_currentMemoryAllocationParameters.downscaledImageWidth), vcvt_f32_u32(v39));
  *&v48 = image->var21[1].var0[1];
  HIDWORD(v48) = v39.i32[0];
  [v15 setComputePipelineState:self->_kernels.sparseAnchors];
  [v15 setTexture:self->_textures.gradientMagnitude atIndex:0];
  [v15 setBuffer:self->_sharedMetalBuffer.buffer offset:self->_offsets.anchors atIndex:0];
  [v15 setBytes:&v47 length:16 atIndex:1];
  threadExecutionWidth4 = [(MTLComputePipelineState *)self->_kernels.sparseAnchors threadExecutionWidth];
  maxTotalThreadsPerThreadgroup4 = [(MTLComputePipelineState *)self->_kernels.sparseAnchors maxTotalThreadsPerThreadgroup];
  v42 = *&self->_currentMemoryAllocationParameters.anchorGridWidth;
  *&v43 = v42;
  *(&v43 + 1) = HIDWORD(v42);
  *v50 = v43;
  *&v50[16] = 1;
  v58 = threadExecutionWidth4;
  v59 = maxTotalThreadsPerThreadgroup4 / threadExecutionWidth4;
  v60 = 1;
  [v15 dispatchThreads:v50 threadsPerThreadgroup:&v58];
  [v15 endEncoding];
  [v46 commit];

  v26 = 0;
LABEL_23:

  return v26;
}

- (int)doEdgeDrawing:(EdgeDrawingLineDetector *)self outputLineData:(SEL)data sharedMemoryPtr:(id *)ptr
{
  v33 = v3;
  v5 = self->_currentMemoryAllocationParameters.anchorGridHeight * self->_currentMemoryAllocationParameters.anchorGridWidth;
  if (v5)
  {
    v6 = v4;
    v9 = &self->_anon_1f928[16132];
    p_backwardIndex = &self->_anchorArray.backwardIndex;
    v11 = v4 + self->_offsets.gradientFlags;
    v12 = ptr->var21[1].var0[1];
    v13 = (v4 + self->_offsets.anchors);
    v36 = &self->_anon_1f928[4];
    v34 = LODWORD(v12);
    do
    {
      v35 = v5;
      if (v12 != 0.0)
      {
        v14 = v34;
        v15 = v13;
        do
        {
          v16 = *v15;
          if (*v15 < 0)
          {
            break;
          }

          v17 = v15[1];
          v18 = *v15 + self->_elemStride.gradientFlags * v17;
          v19 = *(v11 + v18);
          if ((v19 & 2) == 0)
          {
            *(v11 + v18) = v19 | 2;
            *p_backwardIndex = 0xFC000000FC1;
            *(v9 + 1) = v17;
            *v9 = v16;
            HIWORD(v37) = v17;
            LOWORD(v37) = v16;
            if (v19)
            {
              [(EdgeDrawingLineDetector *)self runTraceForward:2 anchorPoint:v37 initialGradDir:1 sharedMemoryPtr:v6];
              selfCopy2 = self;
              v21 = 1;
              v22 = v37;
              v23 = 1;
            }

            else
            {
              [(EdgeDrawingLineDetector *)self runTraceForward:8 anchorPoint:v37 initialGradDir:0 sharedMemoryPtr:v6];
              selfCopy2 = self;
              v21 = 4;
              v22 = v37;
              v23 = 0;
            }

            [(EdgeDrawingLineDetector *)selfCopy2 runTraceBackward:v21 anchorPoint:v22 initialGradDir:v23 sharedMemoryPtr:v6];
            v24 = p_backwardIndex[1];
            v25 = *p_backwardIndex - v24;
            if (v25 >= LODWORD(ptr->var21[1].var0[6]) && v25 >= LODWORD(ptr->var21[1].var0[2]))
            {
              v30 = [(EdgeDrawingLineDetector *)self doLineFitting:ptr outputLineData:v33];
              if (v30)
              {
                v31 = v30;
                sub_2957C278C();
                return v31;
              }
            }

            else if (v25)
            {
              v26 = &v36[4 * v24];
              v27 = v24 - *p_backwardIndex;
              do
              {
                v28 = *v26 + self->_elemStride.gradientFlags * *(v26 + 1);
                *(v11 + v28) &= ~2u;
                v26 += 4;
              }

              while (!__CFADD__(v27++, 1));
            }
          }

          v15 += 2;
          --v14;
        }

        while (v14);
      }

      v12 = *&v34;
      v13 += 2 * v34;
      v5 = v35 - 1;
    }

    while (v35 != 1);
  }

  return 0;
}

- (int)doLineFitting:(id *)fitting outputLineData:
{
  v4 = LODWORD(fitting->var21[1].var0[2]);
  v5 = *self->_anon_1f928;
  v6 = (self->_anchorArray.backwardIndex - v5);
  *self->_anon_11c = 0;
  if (v6 >= v4)
  {
    v7 = v3;
    v10 = &self->_anon_1f928[4 * v5 + 4];
    v11 = &self->_anon_11c[8];
    do
    {
      v12 = *self->_anon_11c;
      if (v12 >= 0xFC0)
      {
        sub_2957C2808();
        return -12786;
      }

      *self->_anon_11c = v12 + 1;
      v13 = [(EdgeDrawingLineDetector *)self runFullLsr:fitting lsr:&v11[32 * v12] points:v10 numPointsLeft:v6];
      v10 += 4 * v13;
      v6 = v6 - v13;
    }

    while (v6 >= v4);
    if (*self->_anon_11c)
    {
      [(EdgeDrawingLineDetector *)self doLineMerging:fitting outputLineData:v7];
    }
  }

  return 0;
}

- (void)doLineMerging:(id *)merging outputLineData:
{
  v5 = v3;
  v7 = &self->_anon_1f928[30428];
  v8 = LODWORD(merging->var21[1].var0[6]) * LODWORD(merging->var21[1].var0[6]);
  *v4.i32 = LODWORD(merging->var21[0].var0[5]);
  *v9.f32 = vcvt_f32_s32(*&merging->var15.var0.var5);
  v9.i64[1] = v9.i64[0];
  v41 = vnegq_f32(v9);
  v10 = *self->_anon_11c;
  if (v10 >= 2)
  {
    v14 = 0;
    v15 = merging->var21[1].var0[4];
    v16 = merging->var21[1].var0[5];
    memset(v42, 0, sizeof(v42));
    v17 = &self->_anon_11c[8];
    v40 = vdupq_lane_s32(v4, 0);
    do
    {
      v18 = &v17[32 * v14];
      v19 = v14 + 1;
      if (v14 + 1 >= v10)
      {
        ++v14;
      }

      else
      {
        v20 = 0;
        v21 = 32 * v14;
        while (1)
        {
          v22 = &v17[32 * v14];
          v23 = v22[1];
          v24 = *&self->_anon_11c[v21 + 40];
          v25 = vsub_f32(v23, v24);
          if (sqrtf(vaddv_f32(vmul_f32(v25, v25))) > v16)
          {
            v14 = (v14 + 1);
            if (!v20)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }

          v26 = vsub_f32(v23, *v22);
          v27 = vmul_f32(v26, v26);
          v27.i32[0] = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
          v28 = vrsqrte_f32(v27.u32[0]);
          v29 = vmul_f32(v28, vrsqrts_f32(v27.u32[0], vmul_f32(v28, v28)));
          v30 = vmul_n_f32(v26, vmul_f32(v29, vrsqrts_f32(v27.u32[0], vmul_f32(v29, v29))).f32[0]);
          v31 = vsub_f32(*&self->_anon_11c[v21 + 48], v24);
          v32 = vmul_f32(v31, v31);
          v32.i32[0] = vadd_f32(v32, vdup_lane_s32(v32, 1)).u32[0];
          v33 = vrsqrte_f32(v32.u32[0]);
          v34 = vmul_f32(v33, vrsqrts_f32(v32.u32[0], vmul_f32(v33, v33)));
          v35 = vmul_n_f32(v31, vmul_f32(v34, vrsqrts_f32(v32.u32[0], vmul_f32(v34, v34))).f32[0]);
          if (fabsf((-v30.f32[1] * v35.f32[0]) + (v30.f32[0] * v35.f32[1])) > v15)
          {
            break;
          }

          v20 += *&self->_anon_11c[v21 + 64];
          ++v19;
          ++v14;
          v21 += 32;
          if (v10 - 1 == v14)
          {
            v14 = v10;
            if (!v20)
            {
              goto LABEL_18;
            }

            goto LABEL_17;
          }
        }

        v14 = v19;
        if (v20)
        {
LABEL_17:
          v36 = v18[2];
          v37 = v18[3].i32[0];
          v18 = v42;
          [(EdgeDrawingLineDetector *)self rebuildLsr:v42 points:*&v36 numPoints:(v37 + v20), *&v40];
        }
      }

LABEL_18:
      v38 = vsub_f32(*v18, v18[1]);
      if (vaddv_f32(vmul_f32(v38, v38)) > v8)
      {
        v39 = *(v7 + 458);
        if (v39 < *(v7 + 459))
        {
          *(v5 + 16 * v39) = vmlaq_f32(v41, v40, *v18->f32);
          v39 = *(v7 + 458);
        }

        *(v7 + 458) = v39 + 1;
      }

      v10 = *self->_anon_11c;
    }

    while (v14 < v10);
  }

  else
  {
    v11.i64[0] = *&self->_anon_11c[8];
    v12 = vsub_f32(*v11.f32, *&self->_anon_11c[16]);
    if (vaddv_f32(vmul_f32(v12, v12)) > v8)
    {
      curNum = self->_output.curNum;
      if (curNum < self->_output.maxNum)
      {
        v11.i64[1] = *&self->_anon_11c[16];
        *(v3 + 16 * curNum) = vmlaq_n_f32(v41, v11, *v4.i32);
        curNum = self->_output.curNum;
      }

      self->_output.curNum = curNum + 1;
    }
  }
}

- (void)runTraceForward:(unsigned int)forward anchorPoint:(unsigned int)point initialGradDir:(char *)dir sharedMemoryPtr:
{
  pointCopy = point;
  if (point >= 1)
  {
    v7 = v5 + self->_offsets.gradientFlags;
    v8 = v5 + self->_offsets.gradientMagnitude;
    v9 = point >> 16;
    downscaledImageWidth = self->_currentMemoryAllocationParameters.downscaledImageWidth;
    downscaledImageHeight = self->_currentMemoryAllocationParameters.downscaledImageHeight;
    v12 = ~downscaledImageWidth;
    v13 = 1 - downscaledImageWidth;
    do
    {
      if (v9 < 1)
      {
        break;
      }

      if (pointCopy + 1 >= downscaledImageWidth)
      {
        break;
      }

      if (v9 + 1 >= downscaledImageHeight)
      {
        break;
      }

      if (!forward)
      {
        break;
      }

      v14 = (v8 + 2 * pointCopy + 2 * self->_elemStride.gradientMagnitude * v9);
      v15 = *v14;
      __asm { FCMP            H1, #0 }

      if (_ZF)
      {
        break;
      }

      if (forward)
      {
        v22 = v14[-downscaledImageWidth];
        __asm { FCMP            H1, #0 }

        if (_NF ^ _VF | _ZF)
        {
          v18 = 0;
        }

        else
        {
          v18 = 12;
        }

        if (_NF ^ _VF | _ZF)
        {
          _H1 = COERCE_SHORT_FLOAT(0);
        }

        v20 = _NF ^ _VF | _ZF ? 0 : -1;
        if (_H1 >= *&v14[v12])
        {
          v19 = 0;
        }

        else
        {
          v19 = -1;
          v18 = 4;
          _H1 = *&v14[v12];
          v20 = -1;
        }

        _H2 = *&v14[v13];
        if (_H1 >= _H2)
        {
          __asm { FCVT            S1, H1 }
        }

        else
        {
          __asm { FCVT            S1, H2 }

          v20 = -1;
          v19 = 1;
          v18 = 8;
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        _S1 = 0.0;
      }

      v28 = &v14[downscaledImageWidth];
      if ((forward & 2) != 0)
      {
        _H2 = *v28;
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v19 = 0;
          v20 = 1;
          v18 = 12;
          _S1 = _S2;
        }

        _H2 = *(v28 - 1);
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v20 = 1;
          v19 = -1;
          v18 = 4;
          _S1 = _S2;
        }

        _H2 = v28[1];
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v19 = 1;
          v18 = 8;
          _S1 = _S2;
          v20 = 1;
        }
      }

      if ((forward & 4) != 0)
      {
        _H2 = *(v14 - 1);
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v20 = 0;
          v19 = -1;
          v18 = 3;
          _S1 = _S2;
        }

        _H2 = v14[v12];
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v19 = -1;
          v18 = 1;
          _S1 = _S2;
          v20 = -1;
        }

        _H2 = *(v28 - 1);
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v20 = 1;
          v19 = -1;
          v18 = 2;
          _S1 = _S2;
        }
      }

      if ((forward & 8) == 0)
      {
        goto LABEL_46;
      }

      _H2 = v14[1];
      __asm { FCVT            S2, H2 }

      if (_S1 < _S2)
      {
        v18 = 3;
        _S1 = _S2;
        v19 = 1;
        v20 = 0;
      }

      _H2 = v14[v13];
      __asm { FCVT            S2, H2 }

      if (_S1 < _S2)
      {
        v18 = 1;
        _S1 = _S2;
        v19 = 1;
        v20 = -1;
      }

      _H2 = v28[1];
      __asm { FCVT            S2, H2 }

      if (_S1 < _S2)
      {
        v18 = 2;
        ++v9;
        ++pointCopy;
      }

      else
      {
LABEL_46:
        if (!v18)
        {
          return;
        }

        pointCopy += v19;
        v9 += v20;
      }

      v47 = pointCopy + self->_elemStride.gradientFlags * v9;
      v48 = *(v7 + v47);
      if (v48 > 1)
      {
        break;
      }

      *(v7 + v47) = v48 | 2;
      backwardIndex = self->_anchorArray.backwardIndex;
      if (backwardIndex >> 7 > 0x3E)
      {
        break;
      }

      if (dir != v48)
      {
        forward = v18;
      }

      dir = &self->_anon_1f928[4 * backwardIndex + 4];
      *(dir + 1) = v9;
      *dir = pointCopy;
      self->_anchorArray.backwardIndex = backwardIndex + 1;
      LODWORD(dir) = v48;
    }

    while (pointCopy > 0);
  }
}

- (void)runTraceBackward:(unsigned int)backward anchorPoint:(unsigned int)point initialGradDir:(char *)dir sharedMemoryPtr:
{
  pointCopy = point;
  if (point >= 1)
  {
    v7 = v5 + self->_offsets.gradientFlags;
    v8 = v5 + self->_offsets.gradientMagnitude;
    v9 = point >> 16;
    downscaledImageWidth = self->_currentMemoryAllocationParameters.downscaledImageWidth;
    downscaledImageHeight = self->_currentMemoryAllocationParameters.downscaledImageHeight;
    v12 = ~downscaledImageWidth;
    v13 = 1 - downscaledImageWidth;
    do
    {
      if (v9 < 1)
      {
        break;
      }

      if (pointCopy + 1 >= downscaledImageWidth)
      {
        break;
      }

      if (v9 + 1 >= downscaledImageHeight)
      {
        break;
      }

      if (!backward)
      {
        break;
      }

      v14 = (v8 + 2 * pointCopy + 2 * self->_elemStride.gradientMagnitude * v9);
      v15 = *v14;
      __asm { FCMP            H1, #0 }

      if (_ZF)
      {
        break;
      }

      if (backward)
      {
        v22 = v14[-downscaledImageWidth];
        __asm { FCMP            H1, #0 }

        if (_NF ^ _VF | _ZF)
        {
          v18 = 0;
        }

        else
        {
          v18 = 12;
        }

        if (_NF ^ _VF | _ZF)
        {
          _H1 = COERCE_SHORT_FLOAT(0);
        }

        v20 = _NF ^ _VF | _ZF ? 0 : -1;
        if (_H1 >= *&v14[v12])
        {
          v19 = 0;
        }

        else
        {
          v19 = -1;
          v18 = 4;
          _H1 = *&v14[v12];
          v20 = -1;
        }

        _H2 = *&v14[v13];
        if (_H1 >= _H2)
        {
          __asm { FCVT            S1, H1 }
        }

        else
        {
          __asm { FCVT            S1, H2 }

          v20 = -1;
          v19 = 1;
          v18 = 8;
        }
      }

      else
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        _S1 = 0.0;
      }

      v28 = &v14[downscaledImageWidth];
      if ((backward & 2) != 0)
      {
        _H2 = *v28;
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v19 = 0;
          v20 = 1;
          v18 = 12;
          _S1 = _S2;
        }

        _H2 = *(v28 - 1);
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v20 = 1;
          v19 = -1;
          v18 = 4;
          _S1 = _S2;
        }

        _H2 = v28[1];
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v19 = 1;
          v18 = 8;
          _S1 = _S2;
          v20 = 1;
        }
      }

      if ((backward & 4) != 0)
      {
        _H2 = *(v14 - 1);
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v20 = 0;
          v19 = -1;
          v18 = 3;
          _S1 = _S2;
        }

        _H2 = v14[v12];
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v19 = -1;
          v18 = 1;
          _S1 = _S2;
          v20 = -1;
        }

        _H2 = *(v28 - 1);
        __asm { FCVT            S2, H2 }

        if (_S1 < _S2)
        {
          v20 = 1;
          v19 = -1;
          v18 = 2;
          _S1 = _S2;
        }
      }

      if ((backward & 8) == 0)
      {
        goto LABEL_46;
      }

      _H2 = v14[1];
      __asm { FCVT            S2, H2 }

      if (_S1 < _S2)
      {
        v18 = 3;
        _S1 = _S2;
        v19 = 1;
        v20 = 0;
      }

      _H2 = v14[v13];
      __asm { FCVT            S2, H2 }

      if (_S1 < _S2)
      {
        v18 = 1;
        _S1 = _S2;
        v19 = 1;
        v20 = -1;
      }

      _H2 = v28[1];
      __asm { FCVT            S2, H2 }

      if (_S1 < _S2)
      {
        v18 = 2;
        ++v9;
        ++pointCopy;
      }

      else
      {
LABEL_46:
        if (!v18)
        {
          return;
        }

        pointCopy += v19;
        v9 += v20;
      }

      v47 = pointCopy + self->_elemStride.gradientFlags * v9;
      v48 = *(v7 + v47);
      if (v48 > 1)
      {
        break;
      }

      *(v7 + v47) = v48 | 2;
      v49 = *self->_anon_1f928;
      if (!v49)
      {
        break;
      }

      *self->_anon_1f928 = v49 - 1;
      if (dir != v48)
      {
        backward = v18;
      }

      dir = &self->_anon_1f928[4 * (v49 - 1) + 4];
      *(dir + 1) = v9;
      *dir = pointCopy;
      LODWORD(dir) = v48;
    }

    while (pointCopy > 0);
  }
}

- (void)rebuildLsr:(EdgeDrawingLineDetector *)self points:(SEL)points numPoints:(id *)numPoints
{
  numPoints[2].var0 = v3;
  LODWORD(numPoints[3].var0) = v4;
  v5 = *v3;
  *&v6 = v5;
  v7 = v3[1];
  v8 = v7;
  v9.f32[0] = v5;
  v9.f32[1] = v7;
  v10 = v5;
  v11 = v7;
  v12 = v10 * v10;
  v13 = v5 * v7;
  v14 = v11 * v11;
  _D0 = 0;
  if (v4 < 2)
  {
    v18 = v9;
  }

  else
  {
    v16 = v3 + 3;
    v17 = v4 - 1;
    v18 = v9;
    do
    {
      v19 = *(v16 - 1);
      *&_D0 = v19;
      v20 = *v16;
      *(&_D0 + 1) = v20;
      v10 = v10 + v19;
      v11 = v11 + v20;
      v12 = v12 + v19 * v19;
      v13 = v13 + v19 * v20;
      v14 = v14 + v20 * v20;
      v18 = vminnm_f32(v18, _D0);
      v9 = vmaxnm_f32(v9, _D0);
      v16 += 2;
      --v17;
    }

    while (v17);
  }

  v21 = 1.0 / v4;
  v22 = v21 * v10;
  v23 = v21 * v11;
  v24 = vsub_f32(v9, v18);
  v25 = v13 + -(v10 * v11) * v21;
  if (vmvn_s8(vcge_f32(v24, vdup_lane_s32(v24, 1))).u8[0])
  {
    v26 = v14 + -(v11 * v11) * v21;
    _S1 = 0.0;
    if (fabs(v26) >= 1.0e-10)
    {
      _S1 = v25 / v26;
    }

    *&v28 = (v22 - (_S1 * v23)) + (_S1 * v8);
    *(&v28 + 1) = v8;
    numPoints->var0 = v28;
    __asm { FMLA            S3, S1, V0.S[1] }

    LODWORD(_D0) = _S3;
  }

  else
  {
    v34 = v12 + v10 * -v10 * v21;
    v35 = 0.0;
    if (fabs(v34) >= 1.0e-10)
    {
      v35 = v25 / v34;
    }

    v36 = v23 - (v35 * v22);
    *(&v6 + 1) = v36 + (v35 * *&v6);
    numPoints->var0 = v6;
    *(&_D0 + 1) = v36 + (v35 * *&_D0);
  }

  numPoints[1].var0 = _D0;
}

- (unsigned)runFullLsr:(EdgeDrawingLineDetector *)self lsr:(SEL)lsr points:(id *)points numPointsLeft:(id *)left
{
  left[2].var0 = v4;
  v6 = *v4;
  *&v7 = v6;
  v8 = v4[1];
  v9 = v8;
  v10 = v6;
  v11 = LODWORD(points->var21[1].var0[2]);
  v12.f32[0] = v6;
  v12.f32[1] = v8;
  v13 = v8;
  v14 = points->var21[1].var0[3];
  v15 = v10 * v10;
  v16 = v6 * v8;
  v17 = v13 * v13;
  _D3 = 0;
  if (v11 < 2)
  {
    v21 = v12;
  }

  else
  {
    v19 = v4 + 3;
    v20 = v11 - 1;
    v21 = v12;
    do
    {
      v22 = *(v19 - 1);
      *&_D3 = v22;
      v23 = *v19;
      *(&_D3 + 1) = v23;
      v10 = v10 + v22;
      v13 = v13 + v23;
      v15 = v15 + v22 * v22;
      v16 = v16 + v22 * v23;
      v17 = v17 + v23 * v23;
      v21 = vminnm_f32(v21, _D3);
      v12 = vmaxnm_f32(v12, _D3);
      v19 += 2;
      --v20;
    }

    while (v20);
  }

  v24 = 1.0 / v11;
  v25 = v24 * v10;
  v26 = v24 * v13;
  v27 = vsub_f32(v12, v21);
  if (vmvn_s8(vcge_f32(v27, vdup_lane_s32(v27, 1))).u8[0])
  {
    v28 = v17 + -(v13 * v13) * v24;
    v29 = fabs(v28);
    v30 = 0.0;
    v31 = 0.0;
    if (v29 >= 1.0e-10)
    {
      v31 = (v16 + -(v10 * v13) * v24) / v28;
    }

    v32 = v25 - (v31 * v26);
    if (v11)
    {
      v33 = v4 + 1;
      v34 = LODWORD(points->var21[1].var0[2]);
      do
      {
        v35 = *(v33 - 1) - (v32 + (v31 * *v33));
        v30 = v30 + (v35 * v35);
        v33 += 2;
        --v34;
      }

      while (v34);
      v36 = LODWORD(points->var21[1].var0[2]);
    }

    else
    {
      v36 = 0;
    }

    if (v5 != v11)
    {
      if (v30 <= (v14 * v11))
      {
        v46 = &v4[2 * v36];
        v47 = v11 + 1;
        while (1)
        {
          v48 = *v46;
          v49 = v46[1];
          v10 = v10 + v48;
          v13 = v13 + v49;
          v16 = v16 + v48 * v49;
          v17 = v17 + v49 * v49;
          if (v5 == v47)
          {
            break;
          }

          v30 = v30 + ((v48 - (v32 + (v31 * v49))) * (v48 - (v32 + (v31 * v49))));
          v46 += 2;
          v50 = v14 * v47++;
          if (v30 > v50)
          {
            v5 = v47 - 1;
            break;
          }
        }

        *(&_D3 + 1) = v49;
        LODWORD(v11) = v5;
      }

      v24 = 1.0 / v11;
      v25 = v10 * v24;
      v26 = v13 * v24;
      v28 = v17 + -(v13 * v13) * v24;
      v29 = fabs(v28);
    }

    _S4 = 0.0;
    if (v29 >= 1.0e-10)
    {
      _S4 = (v16 + -(v10 * v13) * v24) / v28;
    }

    *&v52 = (v25 - (_S4 * v26)) + (_S4 * v9);
    *(&v52 + 1) = v9;
    left->var0 = v52;
    __asm { FMLA            S0, S4, V3.S[1] }

    LODWORD(_D3) = _S0;
  }

  else
  {
    v37 = v15 + -(v10 * v10) * v24;
    v38 = fabs(v37);
    v39 = 0.0;
    v40 = 0.0;
    if (v38 >= 1.0e-10)
    {
      v40 = (v16 + v13 * -v10 * v24) / v37;
    }

    v41 = v26 - (v40 * v25);
    if (v11)
    {
      v42 = v4 + 1;
      v43 = LODWORD(points->var21[1].var0[2]);
      do
      {
        v44 = *v42 - (v41 + (v40 * *(v42 - 1)));
        v39 = v39 + (v44 * v44);
        v42 += 2;
        --v43;
      }

      while (v43);
      v45 = LODWORD(points->var21[1].var0[2]);
    }

    else
    {
      v45 = 0;
    }

    if (v5 != v11)
    {
      if (v39 <= (v14 * v11))
      {
        v58 = &v4[2 * v45];
        v59 = v11 + 1;
        while (1)
        {
          v60 = *v58;
          *&_D3 = v60;
          v61 = v58[1];
          v10 = v10 + v60;
          v13 = v13 + v61;
          v15 = v15 + v60 * v60;
          v16 = v16 + v60 * v61;
          if (v5 == v59)
          {
            break;
          }

          v39 = v39 + ((v61 - (v41 + (v40 * *&_D3))) * (v61 - (v41 + (v40 * *&_D3))));
          v58 += 2;
          v62 = v14 * v59++;
          if (v39 > v62)
          {
            v5 = v59 - 1;
            break;
          }
        }

        LODWORD(v11) = v5;
      }

      v24 = 1.0 / v11;
      v25 = v10 * v24;
      v26 = v13 * v24;
      v37 = v15 + -(v10 * v10) * v24;
      v38 = fabs(v37);
    }

    v63 = 0.0;
    if (v38 >= 1.0e-10)
    {
      v63 = (v16 + -(v13 * v10) * v24) / v37;
    }

    v64 = v26 - (v63 * v25);
    *(&v7 + 1) = v64 + (v63 * *&v7);
    left->var0 = v7;
    *(&_D3 + 1) = v64 + (v63 * *&_D3);
  }

  left[1].var0 = _D3;
  LODWORD(left[3].var0) = v11;
  return v11;
}

- (void)sort4Points:(EdgeDrawingLineDetector *)self onAxis:(SEL)axis
{
  if (v3 == 1)
  {
    v7 = *v2;
    v5 = v2[2];
    if (vcgt_f32(*v2, v5).i32[1])
    {
      *v2 = v5;
      v2[2] = v7;
      v8 = v7;
    }

    else
    {
      v8 = v2[2];
      v5 = *v2;
    }

    v13 = v2[1];
    v14 = v2[3];
    v15 = v14.f32[1];
    if (v13.f32[1] <= v14.f32[1])
    {
      LODWORD(v15) = HIDWORD(*&v2[1]);
      v16 = v2[3];
      v14 = v2[1];
    }

    else
    {
      v2[1] = v14;
      v2[3] = v13;
      v16 = v13;
    }

    if (v5.f32[1] <= v15)
    {
      v5 = v14;
    }

    else
    {
      *v2 = v14;
      v2[1] = v5;
    }

    v17 = v16.f32[1];
    if (v8.f32[1] <= v16.f32[1])
    {
      v17 = v8.f32[1];
      v16 = v8;
    }

    else
    {
      v2[2] = v16;
      v2[3] = v8;
    }

    if (v5.f32[1] > v17)
    {
      v2[1] = v16;
      goto LABEL_31;
    }
  }

  else if (!v3)
  {
    v4 = *v2;
    v5 = v2[2];
    if (vcgt_f32(*v2, v5).u8[0])
    {
      *v2 = v5;
      v2[2] = v4;
      v6 = v4;
    }

    else
    {
      v6 = v2[2];
      v5 = *v2;
    }

    v9 = v2[1];
    v10 = v2[3];
    if (vcgt_f32(v9, v10).u8[0])
    {
      v2[1] = v10;
      v2[3] = v9;
      v11 = v10.f32[0];
      v12 = v9;
      v9 = v10;
    }

    else
    {
      LODWORD(v11) = v2[1];
      v12 = v2[3];
    }

    if (v5.f32[0] <= v11)
    {
      v5 = v9;
    }

    else
    {
      *v2 = v9;
      v2[1] = v5;
    }

    if (vcgt_f32(v6, v12).u8[0])
    {
      v2[2] = v12;
      v2[3] = v6;
      v6 = v12;
    }

    else
    {
      v12.i32[0] = v6.i32[0];
    }

    if (v5.f32[0] > v12.f32[0])
    {
      v2[1] = v6;
LABEL_31:
      v2[2] = v5;
    }
  }
}

- (BOOL)linesAreCollinearWithSortedPoints:(EdgeDrawingLineDetector *)self
{
  v4 = *v2;
  v5 = v2[3];
  v6 = vsub_f32(v5, *v2);
  if (v6.f32[0] != 0.0 || (v3 = 0uLL, v6.f32[1] != 0.0))
  {
    v7 = vmul_f32(v6, v6);
    v7.i32[0] = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
    v8 = vrsqrte_f32(v7.u32[0]);
    v9 = vmul_f32(v8, vrsqrts_f32(v7.u32[0], vmul_f32(v8, v8)));
    v10 = vmul_n_f32(v6, vmul_f32(v9, vrsqrts_f32(v7.u32[0], vmul_f32(v9, v9))).f32[0]);
    *v3.i32 = -v10.f32[1];
    v3.i32[1] = v10.i32[0];
    *&v3.i32[2] = (-v4.f32[1] * v10.f32[0]) + (v4.f32[0] * v10.f32[1]);
  }

  v12 = v2[1];
  v11 = v2[2];
  __asm { FMOV            V5.2S, #10.0 }

  v17 = vcgt_f32(_D5, vabs_f32(vadd_f32(vdup_laneq_s32(v3, 2), vmla_n_f32(vmul_lane_f32(vzip2_s32(v11, v12), *v3.i8, 1), vzip1_s32(v11, v12), *v3.i32))));
  result = 0;
  if (v17.i32[1] & v17.i32[0])
  {
    v18 = vsub_f32(v4, v12);
    v19 = vsub_f32(v12, v11);
    v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    v21 = vsub_f32(v11, v5);
    v22 = sqrtf(vaddv_f32(vmul_f32(v21, v21))) * 8.0;
    if (v20 < (sqrtf(vaddv_f32(vmul_f32(v18, v18))) * 8.0) && v20 < v22)
    {
      return 1;
    }
  }

  return result;
}

- (void)findCollinearLinesWithOutputLineData:(EdgeDrawingLineDetector *)self
{
  v3 = &self->_anon_1f928[30428];
  curNum = self->_output.curNum;
  maxNum = self->_output.maxNum;
  if (curNum >= maxNum)
  {
    v6 = maxNum;
  }

  else
  {
    v6 = curNum;
  }

  if (v6)
  {
    v7 = v2;
    v9 = 0;
    v10 = 0;
    do
    {
      v16 = *&v7[2 * v9];
      v11 = vceq_f32(*&v7[2 * v9], *&vextq_s8(v16, v16, 8uLL));
      if ((v11.i32[0] & v11.i32[1] & 1) == 0)
      {
        if (v10)
        {
          v12 = v10;
          v13 = v10;
          v14 = v7;
          while (1)
          {
            [(EdgeDrawingLineDetector *)self computeSortedPointsWithLine:0xFFFFFFFFLL andLine:&v17 axis:*v16.i64 intoPointArray:*v14, *&v16];
            if ([(EdgeDrawingLineDetector *)self linesAreCollinearWithSortedPoints:&v17])
            {
              break;
            }

            v14 += 2;
            if (!--v13)
            {
              goto LABEL_13;
            }
          }

          *&v15 = v17;
          *(&v15 + 1) = v18;
          *v14 = v15;
        }

        else
        {
          v12 = 0;
LABEL_13:
          *&v7[2 * v12] = v16;
          ++v10;
        }
      }

      ++v9;
    }

    while (v9 != v6);
  }

  else
  {
    v10 = 0;
  }

  *(v3 + 458) = v10;
}

@end