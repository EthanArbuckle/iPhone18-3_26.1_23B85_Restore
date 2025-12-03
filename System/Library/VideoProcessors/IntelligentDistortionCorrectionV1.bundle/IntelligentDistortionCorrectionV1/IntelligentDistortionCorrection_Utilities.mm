@interface IntelligentDistortionCorrection_Utilities
- (CGAffineTransform)getTransformFromRect:(SEL)rect toRect:(CGRect)toRect;
- (IntelligentDistortionCorrection_Utilities)initWithMetalContext:(id)context;
- (id)textureFromBuffer:(id)buffer bufferOffset:(unint64_t)offset textureDescriptor:(id *)descriptor;
- (int)compileShaders:(BOOL)shaders;
- (int)computeMeshROI:(id *)i invertedMeshTexture:(id)texture roiTracker:(id)tracker;
- (int)determineWorkingBufferRequirements:(id *)requirements;
- (int)dilateSegmentationMask:(id)mask to:(id)to radius:(int)radius commandEncoder:(id)encoder;
- (int)erodeSegmentationMask:(id)mask to:(id)to radius:(int)radius commandEncoder:(id)encoder;
- (int)extractBundleConfigurationParameters:(id *)parameters cameraInfo:(id)info tuningParameters:(id)tuningParameters imageInfo:(id)imageInfo;
- (int)extractFloat:(id)float name:(id)name value:(float *)value mandatory:(BOOL)mandatory cumulativeError:(int *)error;
- (int)extractImageOptions:(id *)options imageInfo:(id)info portType:(id *)type cumulativeError:(int *)error;
- (int)lumaCropAndDownscale4to1:(id)downscale4to1 outputLumaTexture:(id)texture region:(id *)region;
- (int)setSharedMetalBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size;
- (int)testArrayObject:(id)object withName:(id)name cumulativeError:(int *)error;
- (int)testDataObject:(id)object withName:(id)name cumulativeError:(int *)error;
- (int)testDictionaryObject:(id)object withName:(id)name cumulativeError:(int *)error;
- (int)testGenericObject:(id)object withName:(id)name classType:(Class)type className:(id)className cumulativeError:(int *)error;
- (int)testNumberObject:(id)object withName:(id)name cumulativeError:(int *)error;
- (int)testStringObject:(id)object withName:(id)name cumulativeError:(int *)error;
- (int)undistortBGRATexture:(id *)texture inputBGRATexture:(id)aTexture intoOutputBGRA:(id)a encoder:(id)encoder crop:(id *)crop;
- (int)undistortSingleChannelTexture:(id *)texture inputTexture:(id)inputTexture outputTexture:(id)outputTexture;
- (int)warpAndOrUndistortPrimaryAsset:(id *)asset inputImageTexture:(id)texture inputMeshTexture:(id)meshTexture outputImageTexture:(id)imageTexture roiTracker:(id)tracker inputImageMetadataDictionary:(id)dictionary;
- (int)zeroMetalBuffer:(id)buffer range:(_NSRange)range commandEncoder:(id)encoder;
- (void)buildParameters:(id *)parameters bundleConfiguration:(id *)configuration;
- (void)computeTextureStrideForBufferAllocation:(id *)allocation;
- (void)dealloc;
- (void)extractCameraDictionaryOptions:(id *)options topEntry:(id)entry cumulativeError:(int *)error;
- (void)extractClassifierOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error;
- (void)extractContentPreservingWarpingOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error;
- (void)extractDistortionOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error;
- (void)extractLineDetectorOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error;
- (void)extractUint:(id)uint name:(id)name value:(unsigned int *)value mandatory:(BOOL)mandatory cumulativeError:(int *)error;
- (void)setBoundingRect:(id *)rect x0:(int)x0 y0:(int)y0 width:(int)width height:(int)height;
@end

@implementation IntelligentDistortionCorrection_Utilities

- (IntelligentDistortionCorrection_Utilities)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_2957BEB54(self);
LABEL_8:
    v7 = 0;
    goto LABEL_4;
  }

  v12.receiver = self;
  v12.super_class = IntelligentDistortionCorrection_Utilities;
  v6 = [(IntelligentDistortionCorrection_Utilities *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    sub_2957BEADC();
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metalContext, context);
  device = [(FigMetalContext *)v7->_metalContext device];
  v9 = [device newBufferWithLength:16 options:0];
  undistortBGRA = v7[2]._kernels.undistortBGRA;
  v7[2]._kernels.undistortBGRA = v9;

  if (!v7[2]._kernels.undistortBGRA)
  {
    sub_2957BEA5C(v7);
    goto LABEL_8;
  }

LABEL_4:

  return v7;
}

- (int)compileShaders:(BOOL)shaders
{
  v4 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::lumaCropAndDownscale4to1" constants:0];
  lumaCropAndDownscale4to1 = self->_kernels.lumaCropAndDownscale4to1;
  self->_kernels.lumaCropAndDownscale4to1 = v4;

  if (self->_kernels.lumaCropAndDownscale4to1)
  {
    v6 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::zeroBuffer1" constants:0];
    zeroBuffer1 = self->_kernels.zeroBuffer1;
    self->_kernels.zeroBuffer1 = v6;

    if (self->_kernels.zeroBuffer1)
    {
      v8 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::zeroBuffer16" constants:0];
      zeroBuffer16 = self->_kernels.zeroBuffer16;
      self->_kernels.zeroBuffer16 = v8;

      if (self->_kernels.zeroBuffer16)
      {
        v10 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::warpAndOrUndistortPrimaryAsset2_YCbCr420" constants:0];
        warpAndOrUndistortPrimaryAsset2_YCbCr420 = self->_kernels.warpAndOrUndistortPrimaryAsset2_YCbCr420;
        self->_kernels.warpAndOrUndistortPrimaryAsset2_YCbCr420 = v10;

        if (self->_kernels.warpAndOrUndistortPrimaryAsset2_YCbCr420)
        {
          v12 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::warpAndOrUndistortSecondaryAsset_R8Unorm" constants:0];
          warpAndOrUndistortSecondaryAsset_R8Unorm = self->_kernels.warpAndOrUndistortSecondaryAsset_R8Unorm;
          self->_kernels.warpAndOrUndistortSecondaryAsset_R8Unorm = v12;

          if (self->_kernels.warpAndOrUndistortSecondaryAsset_R8Unorm)
          {
            v14 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::warpAndOrUndistortSecondaryAsset_RG8Unorm" constants:0];
            warpAndOrUndistortSecondaryAsset_RG8Unorm = self->_kernels.warpAndOrUndistortSecondaryAsset_RG8Unorm;
            self->_kernels.warpAndOrUndistortSecondaryAsset_RG8Unorm = v14;

            if (self->_kernels.warpAndOrUndistortSecondaryAsset_RG8Unorm)
            {
              v16 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::undistortSingleChannel" constants:0];
              undistortSingleChannel = self->_kernels.undistortSingleChannel;
              self->_kernels.undistortSingleChannel = v16;

              if (self->_kernels.undistortSingleChannel)
              {
                v18 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::undistortBGRA" constants:0];
                undistortBGRA = self->_kernels.undistortBGRA;
                self->_kernels.undistortBGRA = v18;

                if (self->_kernels.undistortBGRA)
                {
                  v20 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::warpLinesAndMeasureDistance" constants:0];
                  warpLinesAndMeasureDistance = self->_kernels.warpLinesAndMeasureDistance;
                  self->_kernels.warpLinesAndMeasureDistance = v20;

                  if (self->_kernels.warpLinesAndMeasureDistance)
                  {
                    v22 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::gatherGatingStatistics" constants:0];
                    gatherGatingStatistics = self->_kernels.gatherGatingStatistics;
                    self->_kernels.gatherGatingStatistics = v22;

                    if (self->_kernels.gatherGatingStatistics)
                    {
                      v24 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::erodeSegmentationMask" constants:0];
                      erodeSegmentationMask = self->_kernels.erodeSegmentationMask;
                      self->_kernels.erodeSegmentationMask = v24;

                      if (self->_kernels.erodeSegmentationMask)
                      {
                        v26 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::dilateSegmentationMask" constants:0];
                        dilateSegmentationMask = self->_kernels.dilateSegmentationMask;
                        self->_kernels.dilateSegmentationMask = v26;

                        if (self->_kernels.dilateSegmentationMask)
                        {
                          v28 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::computeMeshROI" constants:0];
                          computeMeshROI = self->_kernels.computeMeshROI;
                          self->_kernels.computeMeshROI = v28;

                          if (self->_kernels.computeMeshROI)
                          {
                            v30 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::adjustROI" constants:0];
                            adjustROI = self->_kernels.adjustROI;
                            self->_kernels.adjustROI = v30;

                            if (self->_kernels.adjustROI)
                            {
                              v32 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::fillROICollectionRecord" constants:0];
                              fillROICollectionRecord = self->_kernels.fillROICollectionRecord;
                              self->_kernels.fillROICollectionRecord = v32;

                              if (self->_kernels.fillROICollectionRecord)
                              {
                                v34 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"idc_utilitiesKernels::fillRoiData" constants:0];
                                fillRoiData = self->_kernels.fillRoiData;
                                self->_kernels.fillRoiData = v34;

                                if (self->_kernels.fillRoiData)
                                {
                                  return 0;
                                }

                                sub_2957BEBE4();
                              }

                              else
                              {
                                sub_2957BEC5C();
                              }
                            }

                            else
                            {
                              sub_2957BECD4();
                            }
                          }

                          else
                          {
                            sub_2957BED4C();
                          }
                        }

                        else
                        {
                          sub_2957BEDC4();
                        }
                      }

                      else
                      {
                        sub_2957BEE3C();
                      }
                    }

                    else
                    {
                      sub_2957BEEB4();
                    }
                  }

                  else
                  {
                    sub_2957BEF2C();
                  }
                }

                else
                {
                  sub_2957BEFA4();
                }
              }

              else
              {
                sub_2957BF01C();
              }
            }

            else
            {
              sub_2957BF094();
            }
          }

          else
          {
            sub_2957BF10C();
          }
        }

        else
        {
          sub_2957BF184();
        }
      }

      else
      {
        sub_2957BF1FC();
      }
    }

    else
    {
      sub_2957BF274();
    }
  }

  else
  {
    sub_2957BF2EC();
  }

  return -12786;
}

- (void)dealloc
{
  [(IntelligentDistortionCorrection_Utilities *)self releaseResources];
  v3.receiver = self;
  v3.super_class = IntelligentDistortionCorrection_Utilities;
  [(IntelligentDistortionCorrection_Utilities *)&v3 dealloc];
}

- (int)determineWorkingBufferRequirements:(id *)requirements
{
  if (requirements)
  {
    result = 0;
    requirements->var0 = 0;
  }

  else
  {
    sub_2957BF364();
    return -12780;
  }

  return result;
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
  }

  else
  {
    sub_2957BF3DC();
    v10 = -12780;
  }

  return v10;
}

- (int)lumaCropAndDownscale4to1:(id)downscale4to1 outputLumaTexture:(id)texture region:(id *)region
{
  downscale4to1Copy = downscale4to1;
  textureCopy = texture;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.lumaCropAndDownscale4to1 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.lumaCropAndDownscale4to1 maxTotalThreadsPerThreadgroup];
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2957BF4CC();
LABEL_7:
    v17 = -12786;
    goto LABEL_4;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_2957BF454();
    goto LABEL_7;
  }

  v15 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_kernels.lumaCropAndDownscale4to1];
  [v15 setTexture:downscale4to1Copy atIndex:0];
  [v15 setTexture:textureCopy atIndex:1];
  v16 = vmovn_s64(*&region->var0.var0);
  v21[1] = v16.i16[2];
  v21[0] = v16.i16[0];
  [v15 setBytes:v21 length:4 atIndex:0];
  v20[0] = [textureCopy width];
  v20[1] = [textureCopy height];
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v19[2] = 1;
  [v15 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v15 endEncoding];
  [commandBuffer commit];

  v17 = 0;
LABEL_4:

  return v17;
}

- (id)textureFromBuffer:(id)buffer bufferOffset:(unint64_t)offset textureDescriptor:(id *)descriptor
{
  bufferCopy = buffer;
  v8 = bufferCopy;
  if (!bufferCopy)
  {
    sub_2957BF724();
LABEL_13:
    v12 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  if (!descriptor)
  {
    sub_2957BF6AC();
    goto LABEL_13;
  }

  v9 = offset + descriptor->var1 * descriptor->var4;
  if (v9 > [bufferCopy length])
  {
    sub_2957BF634();
    goto LABEL_13;
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setWidth:descriptor->var0];
    [v11 setHeight:descriptor->var1];
    [v11 setPixelFormat:descriptor->var2];
    [v11 setUsage:descriptor->var3];
    [v11 setResourceOptions:{objc_msgSend(v8, "resourceOptions")}];
    v12 = [v8 newLinearTextureWithDescriptor:v11 offset:offset bytesPerRow:descriptor->var4 bytesPerImage:descriptor->var1 * descriptor->var4];
    if (!v12)
    {
      sub_2957BF544();
    }
  }

  else
  {
    sub_2957BF5BC();
    v12 = 0;
  }

LABEL_7:

  return v12;
}

- (void)computeTextureStrideForBufferAllocation:(id *)allocation
{
  device = [(FigMetalContext *)self->_metalContext device];
  deviceLinearTextureAlignmentBytes = [device deviceLinearTextureAlignmentBytes];

  v7 = (deviceLinearTextureAlignmentBytes + allocation->var0 * [(FigMetalContext *)self->_metalContext getPixelSizeInBytes:allocation->var2]- 1) / deviceLinearTextureAlignmentBytes * deviceLinearTextureAlignmentBytes;
  v8 = v7 * allocation->var1;
  allocation->var4 = v7;
  allocation->var5 = v8;
}

- (int)zeroMetalBuffer:(id)buffer range:(_NSRange)range commandEncoder:(id)encoder
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  encoderCopy = encoder;
  v11 = encoderCopy;
  if (!bufferCopy)
  {
    sub_2957BF814();
LABEL_17:
    LODWORD(length) = -12780;
    goto LABEL_14;
  }

  if (!encoderCopy)
  {
    sub_2957BF79C();
    goto LABEL_17;
  }

  if ((location & 0xF) == 0 && length > 0x20)
  {
    goto LABEL_9;
  }

  v12 = length >= 0x21 ? 16 - (location & 0xF) : length;
  [encoderCopy setComputePipelineState:self->_kernels.zeroBuffer1];
  [v11 setBuffer:bufferCopy offset:location atIndex:0];
  v18 = v12;
  v19 = vdupq_n_s64(1uLL);
  v16 = v12;
  v17 = v19;
  [v11 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
  length -= v12;
  location += v12;
  if (length >= 0x10)
  {
LABEL_9:
    maxTotalThreadsPerThreadgroup = length >> 4;
    if ([(MTLComputePipelineState *)self->_kernels.zeroBuffer16 maxTotalThreadsPerThreadgroup]< length >> 4)
    {
      maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.zeroBuffer16 maxTotalThreadsPerThreadgroup];
    }

    [v11 setComputePipelineState:self->_kernels.zeroBuffer16];
    [v11 setBuffer:bufferCopy offset:location atIndex:0];
    v18 = length >> 4;
    v19 = vdupq_n_s64(1uLL);
    v16 = maxTotalThreadsPerThreadgroup;
    v17 = v19;
    [v11 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
    v14 = length & 0xFFFFFFFFFFFFFFF0;
    length &= 0xFu;
    location += v14;
  }

  if (length)
  {
    [v11 setComputePipelineState:self->_kernels.zeroBuffer1];
    [v11 setBuffer:bufferCopy offset:location atIndex:0];
    v18 = length;
    v19 = vdupq_n_s64(1uLL);
    v16 = length;
    v17 = v19;
    [v11 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
    LODWORD(length) = 0;
  }

LABEL_14:

  return length;
}

- (void)setBoundingRect:(id *)rect x0:(int)x0 y0:(int)y0 width:(int)width height:(int)height
{
  rect->var0 = x0;
  rect->var1 = y0;
  rect->var2 = width - 1;
  rect->var3 = height - 1;
  rect->var4 = width;
  rect->var5 = height;
}

- (int)testGenericObject:(id)object withName:(id)name classType:(Class)type className:(id)className cumulativeError:(int *)error
{
  objectCopy = object;
  nameCopy = name;
  classNameCopy = className;
  if (!objectCopy)
  {
    v13 = -12780;
    if (!error)
    {
      goto LABEL_6;
    }

LABEL_5:
    *error = v13;
    goto LABEL_6;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = -12784;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (int)testDictionaryObject:(id)object withName:(id)name cumulativeError:(int *)error
{
  nameCopy = name;
  objectCopy = object;
  LODWORD(error) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:objectCopy withName:nameCopy classType:objc_opt_class() className:@"NSDictionary" cumulativeError:error];

  return error;
}

- (int)testArrayObject:(id)object withName:(id)name cumulativeError:(int *)error
{
  nameCopy = name;
  objectCopy = object;
  LODWORD(error) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:objectCopy withName:nameCopy classType:objc_opt_class() className:@"NSArray" cumulativeError:error];

  return error;
}

- (int)testStringObject:(id)object withName:(id)name cumulativeError:(int *)error
{
  nameCopy = name;
  objectCopy = object;
  LODWORD(error) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:objectCopy withName:nameCopy classType:objc_opt_class() className:@"NSString" cumulativeError:error];

  return error;
}

- (int)testNumberObject:(id)object withName:(id)name cumulativeError:(int *)error
{
  nameCopy = name;
  objectCopy = object;
  LODWORD(error) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:objectCopy withName:nameCopy classType:objc_opt_class() className:@"NSNumber" cumulativeError:error];

  return error;
}

- (int)testDataObject:(id)object withName:(id)name cumulativeError:(int *)error
{
  nameCopy = name;
  objectCopy = object;
  LODWORD(error) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:objectCopy withName:nameCopy classType:objc_opt_class() className:@"NSData" cumulativeError:error];

  return error;
}

- (int)extractBundleConfigurationParameters:(id *)parameters cameraInfo:(id)info tuningParameters:(id)tuningParameters imageInfo:(id)imageInfo
{
  infoCopy = info;
  tuningParametersCopy = tuningParameters;
  imageInfoCopy = imageInfo;
  v24 = 0;
  parameters->var5.var3 = 0.001;
  if ((parameters->var14.var1.var4 & 0x10000) == 0)
  {
    *&parameters->var5.var5 = 0;
    *&parameters->var6.var1 = 0u;
    *&parameters->var6.var5 = 0u;
    *&parameters->var12.var0 = 0u;
    *&parameters->var12.var4 = 0u;
  }

  LOBYTE(parameters->var13[2]) = 1;
  LOBYTE(parameters->var21[3].var0[0]) = 1;
  *&parameters->var14.var1.var5 = xmmword_2957C7D20;
  *&parameters->var14.var2.var3 = 0x323F266666;
  parameters->var21[3].var0[1] = 0.0;
  parameters->var23[7].var1 = 0;
  *&parameters[1].var6.var7 = 0x43AF000043B68000;
  v13 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:infoCopy withName:@"cameraInfo" cumulativeError:&v24];
  if (v24 | v13)
  {
    sub_2957BF88C();
    v18 = 0;
    v15 = 0;
LABEL_26:
    v21 = -12784;
    goto LABEL_19;
  }

  v23 = 0;
  v14 = [(IntelligentDistortionCorrection_Utilities *)self extractImageOptions:parameters imageInfo:imageInfoCopy portType:&v23 cumulativeError:&v24];
  v15 = v23;
  if (v24 | v14)
  {
    sub_2957BF904();
LABEL_24:
    v18 = 0;
    goto LABEL_26;
  }

  v16 = [infoCopy objectForKeyedSubscript:v15];
  [(IntelligentDistortionCorrection_Utilities *)self extractCameraDictionaryOptions:parameters topEntry:v16 cumulativeError:&v24];

  if (v24)
  {
    sub_2957BF97C();
    goto LABEL_24;
  }

  v17 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:tuningParametersCopy withName:@"tuningParameters" cumulativeError:&v24];
  if (v24 | v17)
  {
    sub_2957BF9F4();
    goto LABEL_24;
  }

  v18 = [tuningParametersCopy objectForKeyedSubscript:v15];
  v19 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v18 withName:@"cameraOptionsDictionary" cumulativeError:&v24];
  if (v24 | v19)
  {
    sub_2957BFA6C();
    goto LABEL_26;
  }

  v18 = v18;
  [(IntelligentDistortionCorrection_Utilities *)self extractDistortionOptions:parameters parentEntry:v18 cumulativeError:&v24];
  if (v24)
  {
    sub_2957BFAE4();
  }

  else
  {
    [(IntelligentDistortionCorrection_Utilities *)self extractLineDetectorOptions:parameters parentEntry:v18 cumulativeError:&v24];
    if (v24)
    {
      sub_2957BFB5C();
    }

    else
    {
      [(IntelligentDistortionCorrection_Utilities *)self extractClassifierOptions:parameters parentEntry:v18 cumulativeError:&v24];
      if (v24)
      {
        sub_2957BFBD4();
      }

      else
      {
        [(IntelligentDistortionCorrection_Utilities *)self extractContentPreservingWarpingOptions:parameters parentEntry:v18 cumulativeError:&v24];
        if (v24)
        {
          sub_2957BFC4C();
        }
      }
    }
  }

  if (v24)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19 == 0;
  }

  if (v20)
  {
    v21 = v24;
  }

  else
  {
    v21 = -12780;
  }

LABEL_19:

  return v21;
}

- (void)extractDistortionOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error
{
  v42 = [entry objectForKeyedSubscript:@"distortion"];
  if (*error | [IntelligentDistortionCorrection_Utilities testDictionaryObject:"testDictionaryObject:withName:cumulativeError:" withName:? cumulativeError:?])
  {
    sub_2957BFCC4();
    v8 = 0;
    goto LABEL_43;
  }

  v8 = v42;
  [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v8 name:@"curveFalloffMu" value:&options[1].var6.var7 mandatory:0 cumulativeError:error];
  if (*error)
  {
    sub_2957BFD40();
LABEL_49:
    v42 = v8;
    goto LABEL_43;
  }

  [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v8 name:@"curveFalloffSigma" value:&options[1].var7 mandatory:0 cumulativeError:error];
  if (*error)
  {
    sub_2957BFDB8();
    goto LABEL_49;
  }

  v9 = [v8 objectForKeyedSubscript:@"curves"];

  if (![(IntelligentDistortionCorrection_Utilities *)self testArrayObject:v9 withName:@"curves" cumulativeError:error])
  {
    v10 = v9;
    v11 = [v10 count];
    if (v11)
    {
      v36 = v8;
      if (v11 >= 0xB)
      {
        *error = -12780;
        v11 = 10;
      }

      v12 = 0;
      optionsCopy = options;
      v40 = *&v11;
      v13 = &options->var21[3].var0[2];
      v14 = v11;
      v9 = v10;
      v43 = v11;
      do
      {
        v15 = v9;
        v9 = [v10 objectAtIndexedSubscript:v12];

        if (![(IntelligentDistortionCorrection_Utilities *)self testArrayObject:v9 withName:@"coefficientSet" cumulativeError:error])
        {
          v16 = v10;
          v17 = v9;
          if ([v17 count] == 7)
          {
            for (i = 0; i != 7; ++i)
            {
              v19 = [v17 objectAtIndexedSubscript:i];
              if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v19 withName:@"coefficient" cumulativeError:error])
              {
                [v19 floatValue];
                v13[i] = v20;
              }
            }
          }

          else
          {
            *error = -12780;
          }

          v10 = v16;
          v14 = v43;
        }

        ++v12;
        v13 += 7;
      }

      while (v12 != v14);
      v8 = v36;
      options = optionsCopy;
      v21 = v40;
    }

    else
    {
      v21 = 0.0;
      *error = -12780;
      v9 = v10;
    }

    options->var21[3].var0[1] = v21;
  }

  v42 = [v8 objectForKeyedSubscript:@"classifications"];

  if (![(IntelligentDistortionCorrection_Utilities *)self testArrayObject:v42 withName:@"classifications" cumulativeError:error])
  {
    v22 = v42;
    v23 = [v22 count];
    if (v23)
    {
      v37 = v8;
      if (v23 >= 0xB)
      {
        *error = -12780;
        v23 = 10;
      }

      v24 = 0;
      v35 = v23;
      v25 = v23;
      optionsCopy2 = options;
      v41 = v22;
      p_var1 = &options->var23[8].var1;
      v27 = @"classificationHandling";
      v42 = v22;
      do
      {
        v28 = [v22 objectAtIndexedSubscript:v24];

        if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v28 withName:v27 cumulativeError:error])
        {
          v42 = v28;
        }

        else
        {
          v29 = v27;
          v30 = [v28 objectForKeyedSubscript:@"gated"];
          if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v30 withName:@"gated" cumulativeError:error])
          {
            *(p_var1 - 8) = [v30 BOOLValue];
          }

          v31 = [v28 objectForKeyedSubscript:@"curveOption"];

          if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v31 withName:@"curveOption" cumulativeError:error])
          {
            intValue = [v31 intValue];
            if (intValue < 0 || intValue >= SLODWORD(optionsCopy2->var21[3].var0[1]))
            {
              *error = -12780;
            }

            else
            {
              *(p_var1 - 1) = intValue;
            }
          }

          v42 = [v28 objectForKeyedSubscript:@"distortionTarget"];

          if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v42 withName:@"distortionTarget" cumulativeError:error])
          {
            [v42 floatValue];
            *p_var1 = v33;
          }

          v27 = v29;
          v22 = v41;
        }

        ++v24;
        p_var1 += 3;
      }

      while (v25 != v24);
      v8 = v37;
      options = optionsCopy2;
      v34 = v35;
    }

    else
    {
      v34 = 0;
      *error = -12780;
      v42 = v22;
    }

    options->var23[7].var1 = v34;
  }

LABEL_43:
}

- (int)extractImageOptions:(id *)options imageInfo:(id)info portType:(id *)type cumulativeError:(int *)error
{
  infoCopy = info;
  v11 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:infoCopy withName:@"imageInfo" cumulativeError:error];
  v12 = *error | v11;
  if (v12)
  {
    sub_2957BFE30(v12, error);
    v18 = 0;
    v13 = 0;
    goto LABEL_19;
  }

  v13 = [infoCopy objectForKeyedSubscript:*MEMORY[0x29EDC07A8]];
  v11 = [(IntelligentDistortionCorrection_Utilities *)self testStringObject:v13 withName:@"PortType" cumulativeError:error];
  v14 = *error | v11;
  if (v14)
  {
    sub_2957BFEC0(v14, error);
    v18 = 0;
    goto LABEL_19;
  }

  v15 = v13;
  *type = v13;
  v16 = [infoCopy objectForKeyedSubscript:@"ValidBufferRect"];

  if (v16)
  {
    v17 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v16 withName:@"ValidBufferRect" cumulativeError:error];
    if (!v17)
    {
      v18 = v16;
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"X" value:&options->var15.var0.var5 mandatory:1 cumulativeError:error];
      if (*error)
      {
        sub_2957BFF50();
      }

      else
      {
        [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"Y" value:&options->var16 mandatory:1 cumulativeError:error];
        if (*error)
        {
          sub_2957BFFC8();
        }

        else
        {
          [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"Width" value:&options->var16.var3 mandatory:1 cumulativeError:error];
          if (*error)
          {
            sub_2957C0040();
          }

          else
          {
            [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"Height" value:&options->var16.var4 mandatory:1 cumulativeError:error];
            if (!*error)
            {
              v11 = 0;
              *&options->var16.var1 = vadd_s32(vadd_s32(*&options->var15.var0.var5, -1), *&options->var16.var3);
              goto LABEL_12;
            }

            sub_2957C00B8();
          }
        }
      }

      v11 = 0;
      v13 = v18;
      goto LABEL_19;
    }

    v11 = v17;
  }

  v18 = 0;
LABEL_12:
  [(IntelligentDistortionCorrection_Utilities *)self extractUint:infoCopy name:@"RawSensorWidth" value:&options->var17.var3 mandatory:1 cumulativeError:error];
  if (*error)
  {
    sub_2957C0130();
  }

  else
  {
    [(IntelligentDistortionCorrection_Utilities *)self extractUint:infoCopy name:@"RawSensorHeight" value:&options->var17.var4 mandatory:1 cumulativeError:error];
    if (*error)
    {
      sub_2957C01A8();
    }

    else
    {
      options->var5.var7 = 0.0;
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:infoCopy name:*MEMORY[0x29EDC04C0] value:&options->var5.var7 mandatory:0 cumulativeError:error];
      if (*error)
      {
        sub_2957C0220();
      }

      else
      {
        options->var3 = 1.0;
        [(IntelligentDistortionCorrection_Utilities *)self extractFloat:infoCopy name:*MEMORY[0x29EDC04A8] value:&options->var3 mandatory:0 cumulativeError:error];
        if (*error)
        {
          sub_2957C0298();
        }

        else
        {
          LODWORD(options->var6.var0) = 1;
          p_var6 = &options->var6;
          p_var6[-2].var6 = fmaxf(p_var6[-2].var6, 1.0);
          [(IntelligentDistortionCorrection_Utilities *)self extractUint:infoCopy name:*MEMORY[0x29EDC0658] value:p_var6 mandatory:0 cumulativeError:error];
          if (*error)
          {
            sub_2957C0310();
          }
        }
      }
    }
  }

  v13 = v16;
LABEL_19:

  return v11;
}

- (void)extractLineDetectorOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error
{
  v8 = [entry objectForKeyedSubscript:@"lineDetector"];
  if (v8)
  {
    v10 = v8;
    if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v8 withName:@"lineDetector" cumulativeError:error])
    {
      sub_2957C0388();
    }

    else
    {
      v9 = v10;
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"downscaleFactor" value:&options->var21[0].var0[5] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"gradientNormalizationRadius" value:&options->var21[1] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"anchorScanInterval" value:&options->var21[1].var0[1] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"lineFitInitialLength" value:&options->var21[1].var0[2] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"minimumLineLength" value:&options->var21[1].var0[6] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"gradientMagnitudeThreshold" value:&options->var21[0].var0[6] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"lineFitErrorThreshold" value:&options->var21[1].var0[3] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"lineMergeDeviationThreshold" value:&options->var21[1].var0[4] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"lineMergeDistanceThreshold" value:&options->var21[1].var0[5] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"segmentationMaskDilationRadius" value:&options->var21[2] mandatory:0 cumulativeError:error];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)extractClassifierOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error
{
  v8 = [entry objectForKeyedSubscript:@"classifier"];
  if (v8)
  {
    v10 = v8;
    if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v8 withName:@"classifier" cumulativeError:error])
    {
      sub_2957C0404();
    }

    else
    {
      v9 = v10;
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"maskGatingThreshold" value:&options->var14.var1.var5 mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"maximumFaceRectangleThreshold" value:&options->var14.var2 mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"minimumFaceRectangleThreshold" value:&options->var14.var2.var1 mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"centerRadiusThreshold" value:&options->var14.var2.var2 mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"centerRadiusScale" value:&options->var14.var2.var3 mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"centerMaskThreshold" value:&options->var14.var2.var4 mandatory:0 cumulativeError:error];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)extractContentPreservingWarpingOptions:(id *)options parentEntry:(id)entry cumulativeError:(int *)error
{
  v8 = [entry objectForKeyedSubscript:@"contentPreservingWarping"];
  if (v8)
  {
    v10 = v8;
    if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v8 withName:@"contentPreservingWarping" cumulativeError:error])
    {
      sub_2957C0480();
    }

    else
    {
      v9 = v10;
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"esWeight1" value:&options->var21[2].var0[1] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"esWeight2" value:&options->var21[2].var0[2] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"edWeight" value:&options->var21[2].var0[3] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"elWeight" value:&options->var21[2].var0[4] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"pareDownConstant" value:&options->var21[2].var0[5] mandatory:0 cumulativeError:error];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"segmentationMaskErosionRadius" value:&options->var21[2].var0[6] mandatory:0 cumulativeError:error];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)extractUint:(id)uint name:(id)name value:(unsigned int *)value mandatory:(BOOL)mandatory cumulativeError:(int *)error
{
  mandatoryCopy = mandatory;
  v10 = [uint objectForKeyedSubscript:name];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *value = [v11 unsignedIntValue];
    }

    else
    {
      *error = -12784;
    }

    v10 = v11;
  }

  else if (mandatoryCopy)
  {
    *error = -12784;
  }
}

- (int)extractFloat:(id)float name:(id)name value:(float *)value mandatory:(BOOL)mandatory cumulativeError:(int *)error
{
  mandatoryCopy = mandatory;
  v10 = [float objectForKeyedSubscript:name];
  if (!v10)
  {
    v11 = -12784;
    if (!mandatoryCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = -12784;
LABEL_7:
    *error = -12784;
    goto LABEL_8;
  }

  [v10 floatValue];
  v11 = 0;
  *value = v12;
LABEL_8:

  return v11;
}

- (int)warpAndOrUndistortPrimaryAsset:(id *)asset inputImageTexture:(id)texture inputMeshTexture:(id)meshTexture outputImageTexture:(id)imageTexture roiTracker:(id)tracker inputImageMetadataDictionary:(id)dictionary
{
  p_var5 = &asset->var16.var5;
  textureCopy = texture;
  meshTextureCopy = meshTexture;
  imageTextureCopy = imageTexture;
  trackerCopy = tracker;
  dictionaryCopy = dictionary;
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&self->_warpAndOrUndistortPrimaryAsset bundleConfiguration:asset];
  v20 = *(MEMORY[0x29EDB90D8] + 16);
  v47.origin = *MEMORY[0x29EDB90D8];
  v47.size = v20;
  v46.origin = v47.origin;
  v46.size = v20;
  v21 = *MEMORY[0x29EDC0008];
  FigCFDictionaryGetCGRectIfPresent();
  v22 = *MEMORY[0x29EDC0010];
  FigCFDictionaryGetCGRectIfPresent();
  if (!CGRectIsNull(v47) && !CGRectEqualToRect(v47, v46))
  {
    point.x = 0.0;
    point.y = 0.0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0;
    [(IntelligentDistortionCorrection_Utilities *)self getTransformFromRect:*&v46.origin toRect:*&v46.size, *&v47.origin, *&v47.size];
    v23 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x29EDC04B0]];

    CGPointMakeWithDictionaryRepresentation(v23, &point);
    width = [textureCopy width];
    point.x = point.x / (width / COERCE_FLOAT(*&asset->var4));
    height = [textureCopy height];
    point.y = point.y / (height / asset->var5.var0);
    v26 = *(&v45 + 1) + point.y * *(&v44 + 1) + v43.y * point.x;
    v27 = *&v45 + point.y * *&v44 + v43.x * point.x;
    *&self[1]._kernels.gatherGatingStatistics = v27 * [textureCopy width];
    *&v26 = v26;
    *(&self[1]._kernels.gatherGatingStatistics + 1) = *&v26 * [textureCopy height];
  }

  *&self->_warpAndOrUndistortPrimaryAsset.var0 = vdiv_f32(vcvt_f32_s32(*&asset->var15.var0.var3), vcvt_f32_s32(p_var5[2]));
  self[1]._metalContext = vcvt_f32_s32(*p_var5);
  self[1]._kernels.undistortBGRA = vmul_n_f32(*&asset->var4, asset->var3);
  if (meshTextureCopy)
  {
    v40 = ([meshTextureCopy width] - 1) / (asset->var17.var3 - 1);
    height2 = [meshTextureCopy height];
    *&v29 = v40;
    *(&v29 + 1) = (height2 - 1) / (asset->var17.var4 - 1);
    self[1]._kernels.lumaCropAndDownscale4to1 = v29;
    self[1]._anon_a8[1] = 1;
  }

  self[1]._kernels.zeroBuffer1 = vcvt_f32_u32(*&asset->var0);
  LOBYTE(self[1]._kernels.zeroBuffer16) = LOBYTE(asset->var2);
  LODWORD(self[2]._kernels.undistortSingleChannel) = [imageTextureCopy width];
  HIDWORD(self[2]._kernels.undistortSingleChannel) = [imageTextureCopy height];
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2957C0574();
LABEL_18:
    v38 = -12786;
    goto LABEL_15;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_2957C04FC();
    goto LABEL_18;
  }

  v33 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_kernels.fillRoiData];
  if (trackerCopy)
  {
    if (![trackerCopy isCpuMaster])
    {
      metalBuffer = [trackerCopy metalBuffer];
      [v33 setBuffer:metalBuffer offset:objc_msgSend(trackerCopy atIndex:{"metalBufferOffset"), 0}];

      goto LABEL_14;
    }

    *&v43.x = [trackerCopy getRoiData];
    v43.y = v34;
  }

  else
  {
    v43.x = 0.0;
    LODWORD(v43.y) = [textureCopy width] - 1;
    HIDWORD(v43.y) = [textureCopy height] - 1;
  }

  [v33 setBytes:&v43 length:16 atIndex:0];
LABEL_14:
  [v33 setBuffer:self[2]._kernels.undistortBGRA offset:0 atIndex:1];
  v43 = vdupq_n_s64(1uLL);
  *&v44 = 1;
  point = v43;
  v42 = 1;
  [v33 dispatchThreads:&v43 threadsPerThreadgroup:&point];
  [v33 setComputePipelineState:self->_kernels.warpAndOrUndistortPrimaryAsset2_YCbCr420];
  [v33 setImageblockWidth:32 height:32];
  [v33 setTexture:textureCopy atIndex:0];
  [v33 setTexture:meshTextureCopy atIndex:1];
  [v33 setTexture:imageTextureCopy atIndex:2];
  [v33 setBytes:&self->_warpAndOrUndistortPrimaryAsset length:256 atIndex:0];
  [v33 setBuffer:self[2]._kernels.undistortBGRA offset:0 atIndex:1];
  v36 = [imageTextureCopy width] >> 1;
  height3 = [imageTextureCopy height];
  *&v43.x = v36;
  *&v43.y = height3 >> 1;
  *&v44 = 1;
  point = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v33 dispatchThreads:&v43 threadsPerThreadgroup:&point];
  [v33 endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  v38 = 0;
LABEL_15:

  return v38;
}

- (int)undistortSingleChannelTexture:(id *)texture inputTexture:(id)inputTexture outputTexture:(id)outputTexture
{
  inputTextureCopy = inputTexture;
  outputTextureCopy = outputTexture;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&v33 bundleConfiguration:texture];
  var3 = texture->var15.var0.var3;
  v30 = var3 / [inputTextureCopy width];
  var4 = texture->var15.var0.var4;
  height = [inputTextureCopy height];
  *&v13 = v30;
  *(&v13 + 1) = var4 / height;
  v14 = vcvt_f32_s32(*&texture->var16.var5);
  *&v33 = v13;
  *&v34 = v14;
  if (LOBYTE(texture[1].var12.var0) == 1)
  {
    _D0 = vmul_n_f32(*&texture->var4, texture->var3);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }
  }

  *&v38 = _D0;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2957C09DC();
LABEL_10:
    v28 = -12786;
    goto LABEL_7;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_2957C0964();
    goto LABEL_10;
  }

  v23 = computeCommandEncoder;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.undistortSingleChannel threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.undistortSingleChannel maxTotalThreadsPerThreadgroup];
  undistortSingleChannel = self->_kernels.undistortSingleChannel;
  v27 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  [v23 setComputePipelineState:undistortSingleChannel];
  [v23 setTexture:inputTextureCopy atIndex:0];
  [v23 setTexture:outputTextureCopy atIndex:1];
  [v23 setBytes:&v33 length:256 atIndex:0];
  v32[0] = [outputTextureCopy width] >> 1;
  v32[1] = [outputTextureCopy height] >> 1;
  v32[2] = 1;
  v31[0] = threadExecutionWidth;
  v31[1] = v27;
  v31[2] = 1;
  [v23 dispatchThreads:v32 threadsPerThreadgroup:v31];
  [v23 endEncoding];
  [commandBuffer commit];

  v28 = 0;
LABEL_7:

  return v28;
}

- (int)undistortBGRATexture:(id *)texture inputBGRATexture:(id)aTexture intoOutputBGRA:(id)a encoder:(id)encoder crop:(id *)crop
{
  aTextureCopy = aTexture;
  aCopy = a;
  encoderCopy = encoder;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&v57 bundleConfiguration:texture];
  var3 = texture->var15.var0.var3;
  v54 = var3 / [aTextureCopy width];
  var4 = texture->var15.var0.var4;
  height = [aTextureCopy height];
  *&v18 = v54;
  *(&v18 + 1) = var4 / height;
  v19 = vcvt_f32_s32(*&texture->var16.var5);
  *&v57 = v18;
  *&v58 = v19;
  if (LOBYTE(texture[1].var12.var0) == 1)
  {
    _D0 = vmul_n_f32(*&texture->var4, texture->var3);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }
  }

  *&v62 = _D0;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.undistortBGRA threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.undistortBGRA maxTotalThreadsPerThreadgroup];
  undistortBGRA = self->_kernels.undistortBGRA;
  v28 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  [encoderCopy setComputePipelineState:undistortBGRA];
  [encoderCopy setTexture:aTextureCopy atIndex:0];
  [encoderCopy setTexture:aCopy atIndex:1];
  [encoderCopy setBytes:&v57 length:256 atIndex:0];
  v56[0] = [aCopy width] >> 1;
  v56[1] = [aCopy height] >> 1;
  v56[2] = 1;
  v55[0] = threadExecutionWidth;
  v55[1] = v28;
  v55[2] = 1;
  [encoderCopy dispatchThreads:v56 threadsPerThreadgroup:v55];
  var0 = crop->var0;
  var1 = crop->var1;
  var2 = crop->var2;
  v32 = crop->var3;
  v33 = forwardDistort(crop->var0, var1, &v57);
  v34 = fmaxf(var0, v33.f32[0]);
  v35 = fmaxf(var1, v33.f32[1]);
  v36 = forwardDistort(var0, v32, &v57);
  v37 = fmaxf(v34, v36.f32[0]);
  v38 = fminf(v32, v36.f32[1]);
  v39 = forwardDistort(var2, var1, &v57);
  v40 = fminf(var2, v39.f32[0]);
  v41 = v39.f32[1];
  v42 = forwardDistort(var2, v32, &v57);
  v43 = fminf(v40, v42.f32[0]);
  v44 = v42.f32[1];
  v45 = var1 + 1;
  if (var1 + 1 < v32)
  {
    do
    {
      v37 = fmaxf(v37, forwardDistort(var0, v45, &v57).f32[0]);
      v43 = fminf(v43, forwardDistort(var2, v45++, &v57).f32[0]);
    }

    while (v32 != v45);
  }

  v46 = fmaxf(v35, v41);
  v47 = fminf(v38, v44);
  v48 = var0 + 1;
  if (v48 < var2)
  {
    do
    {
      v46 = fmaxf(v46, COERCE_FLOAT(forwardDistort(v48, var1, &v57).i32[1]));
      v47 = fminf(v47, COERCE_FLOAT(forwardDistort(v48++, v32, &v57).i32[1]));
    }

    while (var2 != v48);
  }

  v49 = llroundf(v37);
  v50 = llroundf(v46);
  crop->var0 = v49;
  crop->var1 = v50;
  v51 = vcvtms_s32_f32(v43);
  v52 = vcvtms_s32_f32(v47);
  crop->var2 = v51;
  crop->var3 = v52;
  crop->var4 = v51 - v49 + 1;
  crop->var5 = v52 - v50 + 1;

  return 0;
}

- (int)computeMeshROI:(id *)i invertedMeshTexture:(id)texture roiTracker:(id)tracker
{
  p_var5 = &i->var16.var5;
  textureCopy = texture;
  trackerCopy = tracker;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&v48 bundleConfiguration:i];
  v11 = (i->var17.var3 - 1);
  v38 = v11 / ([textureCopy width] - 1);
  v12 = (i->var17.var4 - 1);
  height = [textureCopy height];
  *&v14 = v38;
  *(&v14 + 1) = v12 / (height - 1);
  v15 = *p_var5;
  v16.i64[0] = *p_var5;
  v16.i64[1] = *p_var5;
  v17 = vcvt_f32_s32(*p_var5);
  *&v48 = v14;
  *&v49 = v17;
  if (LOBYTE(i[1].var12.var0) == 1)
  {
    _D2 = vmul_n_f32(*&i->var4, i->var3);
  }

  else
  {
    __asm { FMOV            V2.2S, #1.0 }
  }

  *&v53 = _D2;
  v23 = vsubq_s32(*&i->var15.var0.var5, v16);
  v24 = vsubq_s32(*(p_var5 + 6), v16);
  v47[0] = v23;
  v47[1] = v24;
  v44 = v15;
  v24.i64[0] = *(p_var5 + 1);
  v24.i64[1] = v24.i64[0];
  v45 = v24;
  v46 = v15;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2957C0ACC();
LABEL_10:
    v36 = -12786;
    goto LABEL_7;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_2957C0A54();
    goto LABEL_10;
  }

  v28 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_kernels.fillROICollectionRecord];
  [v28 setBytes:&v44 length:32 atIndex:0];
  metalBuffer = [trackerCopy metalBuffer];
  [v28 setBuffer:metalBuffer offset:objc_msgSend(trackerCopy atIndex:{"metalBufferOffset"), 1}];

  v39 = vdupq_n_s64(1uLL);
  v40 = v39;
  v42 = v39;
  v43 = 1;
  v41 = 1;
  [v28 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.computeMeshROI threadExecutionWidth];
  v31 = [(MTLComputePipelineState *)self->_kernels.computeMeshROI maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  [v28 setComputePipelineState:self->_kernels.computeMeshROI];
  [v28 setTexture:textureCopy atIndex:0];
  [v28 setBytes:&v48 length:256 atIndex:0];
  [v28 setBytes:v47 length:32 atIndex:1];
  metalBuffer2 = [trackerCopy metalBuffer];
  [v28 setBuffer:metalBuffer2 offset:objc_msgSend(trackerCopy atIndex:{"metalBufferOffset"), 2}];

  v33 = [textureCopy width] - 1;
  height2 = [textureCopy height];
  v42.i64[0] = v33;
  v42.i64[1] = height2 - 1;
  v43 = 1;
  v40.i64[0] = threadExecutionWidth;
  v40.i64[1] = v31;
  v41 = 1;
  [v28 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  [v28 setComputePipelineState:self->_kernels.adjustROI];
  [v28 setBytes:&v48 length:256 atIndex:0];
  metalBuffer3 = [trackerCopy metalBuffer];
  [v28 setBuffer:metalBuffer3 offset:objc_msgSend(trackerCopy atIndex:{"metalBufferOffset"), 1}];

  v42 = v39;
  v43 = 1;
  v40 = v39;
  v41 = 1;
  [v28 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  [v28 endEncoding];
  [commandBuffer commit];
  [trackerCopy setIsCpuMaster:0];

  v36 = 0;
LABEL_7:

  return v36;
}

- (void)buildParameters:(id *)parameters bundleConfiguration:(id *)configuration
{
  v4 = vcvt_f32_s32(*&configuration->var17.var3);
  __asm { FMOV            V1.2S, #1.0 }

  *&parameters->var3.var4 = _D1;
  *&parameters[1].var3.var1 = vmla_f32(*&configuration->var5.var5, 0x3F0000003F000000, v4);
  parameters[1].var3.var3 = configuration->var5.var3 * configuration->var5.var3;
  *&parameters[1].var3.var5 = *&configuration->var12.var0;
  *&parameters[1].var4.var1 = *&configuration->var12.var4;
  *&parameters[1].var4.var5 = *&configuration->var6.var1;
  *&parameters[1].var7 = *&configuration->var6.var5;
  LOBYTE(parameters[2].var3.var0) = LOBYTE(configuration->var13[2]);
  BYTE1(parameters[2].var3.var0) = 0;
  parameters[2].var3.var1 = configuration->var17.var9 / SLODWORD(configuration->var18.var0);
  parameters[2].var5 = configuration->var14.var1.var4;
  v11 = *&configuration->var14.var0.var2;
  v10 = *&configuration->var14.var1.var0;
  *&parameters[2].var3.var4 = *&configuration->var13[4];
  *&parameters[2].var4.var0 = v11;
  *&parameters[2].var4.var4 = v10;
  parameters[2].var6 = BYTE1(configuration->var14.var1.var4);
  *(&parameters[2].var6 + 1) = configuration[1].var12.var0;
}

- (int)erodeSegmentationMask:(id)mask to:(id)to radius:(int)radius commandEncoder:(id)encoder
{
  maskCopy = mask;
  toCopy = to;
  encoderCopy = encoder;
  if (!maskCopy)
  {
    sub_2957C0F4C();
LABEL_7:
    v19 = -12780;
    goto LABEL_4;
  }

  if (!toCopy)
  {
    sub_2957C0ED4();
    goto LABEL_7;
  }

  width = [maskCopy width];
  height = [maskCopy height];
  radiusCopy = radius;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.erodeSegmentationMask threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.erodeSegmentationMask maxTotalThreadsPerThreadgroup];
  erodeSegmentationMask = self->_kernels.erodeSegmentationMask;
  v18 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  [encoderCopy setComputePipelineState:erodeSegmentationMask];
  [encoderCopy setTexture:maskCopy atIndex:0];
  [encoderCopy setTexture:toCopy atIndex:1];
  [encoderCopy setBytes:&radiusCopy length:4 atIndex:0];
  v22[0] = width;
  v22[1] = height;
  v22[2] = 1;
  v21[0] = threadExecutionWidth;
  v21[1] = v18;
  v21[2] = 1;
  [encoderCopy dispatchThreads:v22 threadsPerThreadgroup:v21];
  v19 = 0;
LABEL_4:

  return v19;
}

- (int)dilateSegmentationMask:(id)mask to:(id)to radius:(int)radius commandEncoder:(id)encoder
{
  maskCopy = mask;
  toCopy = to;
  encoderCopy = encoder;
  if (!maskCopy)
  {
    sub_2957C103C();
LABEL_7:
    v19 = -12780;
    goto LABEL_4;
  }

  if (!toCopy)
  {
    sub_2957C0FC4();
    goto LABEL_7;
  }

  width = [maskCopy width];
  height = [maskCopy height];
  radiusCopy = radius;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_kernels.dilateSegmentationMask threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_kernels.dilateSegmentationMask maxTotalThreadsPerThreadgroup];
  dilateSegmentationMask = self->_kernels.dilateSegmentationMask;
  v18 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  [encoderCopy setComputePipelineState:dilateSegmentationMask];
  [encoderCopy setTexture:maskCopy atIndex:0];
  [encoderCopy setTexture:toCopy atIndex:1];
  [encoderCopy setBytes:&radiusCopy length:4 atIndex:0];
  v22[0] = width;
  v22[1] = height;
  v22[2] = 1;
  v21[0] = threadExecutionWidth;
  v21[1] = v18;
  v21[2] = 1;
  [encoderCopy dispatchThreads:v22 threadsPerThreadgroup:v21];
  v19 = 0;
LABEL_4:

  return v19;
}

- (CGAffineTransform)getTransformFromRect:(SEL)rect toRect:(CGRect)toRect
{
  *&v6 = toRect.origin.x;
  *&v7 = toRect.origin.y;
  *&v8 = toRect.size.width;
  height = toRect.size.height;
  *&v10 = a5.origin.x;
  *&v11 = a5.origin.y;
  width = a5.size.width;
  v13 = a5.size.height;
  v32.columns[0] = v8;
  v32.columns[1].i32[0] = 0;
  v32.columns[1].i64[1] = 0;
  v32.columns[1].f32[1] = height;
  __asm { FMOV            V7.4S, #1.0 }

  v32.columns[2].i64[1] = _Q7.i64[1];
  v32.columns[2].i64[0] = __PAIR64__(v7, v6);
  v19 = width;
  LODWORD(v20) = 0;
  *(&v20 + 1) = v13;
  v25 = v20;
  _Q7.i64[0] = __PAIR64__(v11, v10);
  v26 = _Q7;
  v27 = LODWORD(v19);
  v33 = __invert_f3(v32);
  v22 = 0;
  v28 = v33;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  do
  {
    *(&v29 + v22 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v28.columns[v22])), v25, *v28.columns[v22].f32, 1), v26, v28.columns[v22], 2);
    ++v22;
  }

  while (v22 != 3);
  v23 = v31;
  v24 = vcvtq_f64_f32(*&v30);
  *&retstr->a = vcvtq_f64_f32(*&v29);
  *&retstr->c = v24;
  *&retstr->tx = vcvtq_f64_f32(v23);
  return result;
}

- (void)extractCameraDictionaryOptions:(id *)options topEntry:(id)entry cumulativeError:(int *)error
{
  v7 = v6;
  entryCopy = entry;
  if (*error | [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:entryCopy withName:@"cameraDictionary" cumulativeError:error])
  {
    fig_log_get_emitter();
    sub_2957B5BF0();
    FigDebugAssert3();
    v12 = 0;
LABEL_19:
    sub_2957B5C24();
    v24 = 0;
    sub_2957B5C18();
    goto LABEL_16;
  }

  v12 = entryCopy;
  v25 = 0.0;
  sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self extractFloat:v12 name:@"PixelSize" value:&v25 mandatory:1 cumulativeError:error]);
  if (v5)
  {
    fig_log_get_emitter();
    sub_2957B5BF0();
    FigDebugAssert3();
    goto LABEL_19;
  }

  options->var5.var3 = (v25 * LODWORD(options->var6.var0)) / 1000.0;
  if ((options->var14.var1.var4 & 0x10000) != 0)
  {
    sub_2957B5C24();
    v24 = 0;
  }

  else
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDBFF30]];
    if (v13)
    {
      v14 = v13;
      v15 = @"OpticalCenterOffsetInPhysicalSensorDimensions";
    }

    else
    {
      v14 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDBFF28]];
      v15 = @"OpticalCenterOffset";
    }

    sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v14 withName:v15 cumulativeError:error]);
    v5 = @"X";
    v16 = [v14 objectForKeyedSubscript:@"X"];
    sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v16 withName:@"X" cumulativeError:error]);
    if (@"X")
    {
      fig_log_get_emitter();
      sub_2957B5BF0();
      FigDebugAssert3();
      sub_2957B5C18();

      sub_2957B5C24();
      v24 = v16;
    }

    else
    {
      [v16 floatValue];
      options->var5.var5 = v17;
      v5 = @"Y";
      v18 = [v14 objectForKeyedSubscript:@"Y"];

      sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v18 withName:@"Y" cumulativeError:error]);
      if (@"Y")
      {
        fig_log_get_emitter();
        sub_2957B5BF0();
        FigDebugAssert3();
        sub_2957B5C18();

        sub_2957B5C24();
      }

      else
      {
        [v18 floatValue];
        options->var5.var6 = v19;
        v20 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDBFEF8]];

        sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v20 withName:@"GeometricDistortionCoefficients" cumulativeError:error]);
        v18 = v20;

        v5 = [v18 objectForKeyedSubscript:*MEMORY[0x29EDC0328]];
        if (*error | [(IntelligentDistortionCorrection_Utilities *)self testDataObject:v5 withName:@"BasePolynomial" cumulativeError:error]|| [(__CFString *)v5 length]!= 64)
        {
          fig_log_get_emitter();
          sub_2957B5BF0();
          FigDebugAssert3();
          sub_2957B5C18();

          v7 = 0;
        }

        else
        {
          v7 = [v18 objectForKeyedSubscript:*MEMORY[0x29EDC0330]];
          if (*error | -[IntelligentDistortionCorrection_Utilities testDataObject:withName:cumulativeError:](self, "testDataObject:withName:cumulativeError:", v7, @"DynamicPolynomial", error) || [v7 length] != 64)
          {
            fig_log_get_emitter();
            sub_2957B5C54();
            FigDebugAssert3();
            sub_2957B5C18();
          }

          else
          {
            var7 = options->var5.var7;
            bytes = [(__CFString *)v5 bytes];
            bytes2 = [v7 bytes];
            options->var6.var1 = *bytes + (var7 * *bytes2);
            options->var6.var2 = bytes[1] + (var7 * bytes2[1]);
            options->var6.var3 = bytes[2] + (var7 * bytes2[2]);
            options->var6.var4 = bytes[3] + (var7 * bytes2[3]);
            options->var6.var5 = bytes[4] + (var7 * bytes2[4]);
            options->var6.var6 = bytes[5] + (var7 * bytes2[5]);
            options->var6.var7 = bytes[6] + (var7 * bytes2[6]);
            *&options->var7 = bytes[7] + (var7 * bytes2[7]);
            *&options->var12.var0 = bytes[8] + (var7 * bytes2[8]);
            *&options->var12.var1 = bytes[9] + (var7 * bytes2[9]);
            *&options->var12.var2 = bytes[10] + (var7 * bytes2[10]);
            *&options->var12.var3 = bytes[11] + (var7 * bytes2[11]);
            options->var12.var4 = bytes[12] + (var7 * bytes2[12]);
            *&options->var12.var5 = bytes[13] + (var7 * bytes2[13]);
            options->var13[0] = bytes[14] + (var7 * bytes2[14]);
            options->var13[1] = bytes[15] + (var7 * bytes2[15]);
          }
        }
      }

      v24 = v18;
    }
  }

LABEL_16:
}

@end