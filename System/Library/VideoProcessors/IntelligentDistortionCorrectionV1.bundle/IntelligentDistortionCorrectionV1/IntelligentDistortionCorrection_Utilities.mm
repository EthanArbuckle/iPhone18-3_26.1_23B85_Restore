@interface IntelligentDistortionCorrection_Utilities
- (CGAffineTransform)getTransformFromRect:(SEL)a3 toRect:(CGRect)a4;
- (IntelligentDistortionCorrection_Utilities)initWithMetalContext:(id)a3;
- (id)textureFromBuffer:(id)a3 bufferOffset:(unint64_t)a4 textureDescriptor:(id *)a5;
- (int)compileShaders:(BOOL)a3;
- (int)computeMeshROI:(id *)a3 invertedMeshTexture:(id)a4 roiTracker:(id)a5;
- (int)determineWorkingBufferRequirements:(id *)a3;
- (int)dilateSegmentationMask:(id)a3 to:(id)a4 radius:(int)a5 commandEncoder:(id)a6;
- (int)erodeSegmentationMask:(id)a3 to:(id)a4 radius:(int)a5 commandEncoder:(id)a6;
- (int)extractBundleConfigurationParameters:(id *)a3 cameraInfo:(id)a4 tuningParameters:(id)a5 imageInfo:(id)a6;
- (int)extractFloat:(id)a3 name:(id)a4 value:(float *)a5 mandatory:(BOOL)a6 cumulativeError:(int *)a7;
- (int)extractImageOptions:(id *)a3 imageInfo:(id)a4 portType:(id *)a5 cumulativeError:(int *)a6;
- (int)lumaCropAndDownscale4to1:(id)a3 outputLumaTexture:(id)a4 region:(id *)a5;
- (int)setSharedMetalBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5;
- (int)testArrayObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5;
- (int)testDataObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5;
- (int)testDictionaryObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5;
- (int)testGenericObject:(id)a3 withName:(id)a4 classType:(Class)a5 className:(id)a6 cumulativeError:(int *)a7;
- (int)testNumberObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5;
- (int)testStringObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5;
- (int)undistortBGRATexture:(id *)a3 inputBGRATexture:(id)a4 intoOutputBGRA:(id)a5 encoder:(id)a6 crop:(id *)a7;
- (int)undistortSingleChannelTexture:(id *)a3 inputTexture:(id)a4 outputTexture:(id)a5;
- (int)warpAndOrUndistortPrimaryAsset:(id *)a3 inputImageTexture:(id)a4 inputMeshTexture:(id)a5 outputImageTexture:(id)a6 roiTracker:(id)a7 inputImageMetadataDictionary:(id)a8;
- (int)zeroMetalBuffer:(id)a3 range:(_NSRange)a4 commandEncoder:(id)a5;
- (void)buildParameters:(id *)a3 bundleConfiguration:(id *)a4;
- (void)computeTextureStrideForBufferAllocation:(id *)a3;
- (void)dealloc;
- (void)extractCameraDictionaryOptions:(id *)a3 topEntry:(id)a4 cumulativeError:(int *)a5;
- (void)extractClassifierOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5;
- (void)extractContentPreservingWarpingOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5;
- (void)extractDistortionOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5;
- (void)extractLineDetectorOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5;
- (void)extractUint:(id)a3 name:(id)a4 value:(unsigned int *)a5 mandatory:(BOOL)a6 cumulativeError:(int *)a7;
- (void)setBoundingRect:(id *)a3 x0:(int)a4 y0:(int)a5 width:(int)a6 height:(int)a7;
@end

@implementation IntelligentDistortionCorrection_Utilities

- (IntelligentDistortionCorrection_Utilities)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
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

  objc_storeStrong(&v6->_metalContext, a3);
  v8 = [(FigMetalContext *)v7->_metalContext device];
  v9 = [v8 newBufferWithLength:16 options:0];
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

- (int)compileShaders:(BOOL)a3
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

- (int)determineWorkingBufferRequirements:(id *)a3
{
  if (a3)
  {
    result = 0;
    a3->var0 = 0;
  }

  else
  {
    sub_2957BF364();
    return -12780;
  }

  return result;
}

- (int)setSharedMetalBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5
{
  v9 = a3;
  if (v9)
  {
    objc_storeStrong(&self->_sharedMetalBuffer.buffer, a3);
    v10 = 0;
    self->_sharedMetalBuffer.offset = a4;
    self->_sharedMetalBuffer.size = a5;
  }

  else
  {
    sub_2957BF3DC();
    v10 = -12780;
  }

  return v10;
}

- (int)lumaCropAndDownscale4to1:(id)a3 outputLumaTexture:(id)a4 region:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(MTLComputePipelineState *)self->_kernels.lumaCropAndDownscale4to1 threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_kernels.lumaCropAndDownscale4to1 maxTotalThreadsPerThreadgroup];
  v12 = [(FigMetalContext *)self->_metalContext commandQueue];
  v13 = [v12 commandBuffer];

  if (!v13)
  {
    sub_2957BF4CC();
LABEL_7:
    v17 = -12786;
    goto LABEL_4;
  }

  v14 = [v13 computeCommandEncoder];
  if (!v14)
  {
    sub_2957BF454();
    goto LABEL_7;
  }

  v15 = v14;
  [v14 setComputePipelineState:self->_kernels.lumaCropAndDownscale4to1];
  [v15 setTexture:v8 atIndex:0];
  [v15 setTexture:v9 atIndex:1];
  v16 = vmovn_s64(*&a5->var0.var0);
  v21[1] = v16.i16[2];
  v21[0] = v16.i16[0];
  [v15 setBytes:v21 length:4 atIndex:0];
  v20[0] = [v9 width];
  v20[1] = [v9 height];
  v20[2] = 1;
  v19[0] = v10;
  v19[1] = v11 / v10;
  v19[2] = 1;
  [v15 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v15 endEncoding];
  [v13 commit];

  v17 = 0;
LABEL_4:

  return v17;
}

- (id)textureFromBuffer:(id)a3 bufferOffset:(unint64_t)a4 textureDescriptor:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    sub_2957BF724();
LABEL_13:
    v12 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  if (!a5)
  {
    sub_2957BF6AC();
    goto LABEL_13;
  }

  v9 = a4 + a5->var1 * a5->var4;
  if (v9 > [v7 length])
  {
    sub_2957BF634();
    goto LABEL_13;
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [v10 setWidth:a5->var0];
    [v11 setHeight:a5->var1];
    [v11 setPixelFormat:a5->var2];
    [v11 setUsage:a5->var3];
    [v11 setResourceOptions:{objc_msgSend(v8, "resourceOptions")}];
    v12 = [v8 newLinearTextureWithDescriptor:v11 offset:a4 bytesPerRow:a5->var4 bytesPerImage:a5->var1 * a5->var4];
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

- (void)computeTextureStrideForBufferAllocation:(id *)a3
{
  v5 = [(FigMetalContext *)self->_metalContext device];
  v6 = [v5 deviceLinearTextureAlignmentBytes];

  v7 = (v6 + a3->var0 * [(FigMetalContext *)self->_metalContext getPixelSizeInBytes:a3->var2]- 1) / v6 * v6;
  v8 = v7 * a3->var1;
  a3->var4 = v7;
  a3->var5 = v8;
}

- (int)zeroMetalBuffer:(id)a3 range:(_NSRange)a4 commandEncoder:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    sub_2957BF814();
LABEL_17:
    LODWORD(length) = -12780;
    goto LABEL_14;
  }

  if (!v10)
  {
    sub_2957BF79C();
    goto LABEL_17;
  }

  if ((location & 0xF) == 0 && length > 0x20)
  {
    goto LABEL_9;
  }

  v12 = length >= 0x21 ? 16 - (location & 0xF) : length;
  [v10 setComputePipelineState:self->_kernels.zeroBuffer1];
  [v11 setBuffer:v9 offset:location atIndex:0];
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
    v13 = length >> 4;
    if ([(MTLComputePipelineState *)self->_kernels.zeroBuffer16 maxTotalThreadsPerThreadgroup]< length >> 4)
    {
      v13 = [(MTLComputePipelineState *)self->_kernels.zeroBuffer16 maxTotalThreadsPerThreadgroup];
    }

    [v11 setComputePipelineState:self->_kernels.zeroBuffer16];
    [v11 setBuffer:v9 offset:location atIndex:0];
    v18 = length >> 4;
    v19 = vdupq_n_s64(1uLL);
    v16 = v13;
    v17 = v19;
    [v11 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
    v14 = length & 0xFFFFFFFFFFFFFFF0;
    length &= 0xFu;
    location += v14;
  }

  if (length)
  {
    [v11 setComputePipelineState:self->_kernels.zeroBuffer1];
    [v11 setBuffer:v9 offset:location atIndex:0];
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

- (void)setBoundingRect:(id *)a3 x0:(int)a4 y0:(int)a5 width:(int)a6 height:(int)a7
{
  a3->var0 = a4;
  a3->var1 = a5;
  a3->var2 = a6 - 1;
  a3->var3 = a7 - 1;
  a3->var4 = a6;
  a3->var5 = a7;
}

- (int)testGenericObject:(id)a3 withName:(id)a4 classType:(Class)a5 className:(id)a6 cumulativeError:(int *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    v13 = -12780;
    if (!a7)
    {
      goto LABEL_6;
    }

LABEL_5:
    *a7 = v13;
    goto LABEL_6;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = -12784;
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (int)testDictionaryObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5
{
  v8 = a4;
  v9 = a3;
  LODWORD(a5) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:v9 withName:v8 classType:objc_opt_class() className:@"NSDictionary" cumulativeError:a5];

  return a5;
}

- (int)testArrayObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5
{
  v8 = a4;
  v9 = a3;
  LODWORD(a5) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:v9 withName:v8 classType:objc_opt_class() className:@"NSArray" cumulativeError:a5];

  return a5;
}

- (int)testStringObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5
{
  v8 = a4;
  v9 = a3;
  LODWORD(a5) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:v9 withName:v8 classType:objc_opt_class() className:@"NSString" cumulativeError:a5];

  return a5;
}

- (int)testNumberObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5
{
  v8 = a4;
  v9 = a3;
  LODWORD(a5) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:v9 withName:v8 classType:objc_opt_class() className:@"NSNumber" cumulativeError:a5];

  return a5;
}

- (int)testDataObject:(id)a3 withName:(id)a4 cumulativeError:(int *)a5
{
  v8 = a4;
  v9 = a3;
  LODWORD(a5) = [(IntelligentDistortionCorrection_Utilities *)self testGenericObject:v9 withName:v8 classType:objc_opt_class() className:@"NSData" cumulativeError:a5];

  return a5;
}

- (int)extractBundleConfigurationParameters:(id *)a3 cameraInfo:(id)a4 tuningParameters:(id)a5 imageInfo:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24 = 0;
  a3->var5.var3 = 0.001;
  if ((a3->var14.var1.var4 & 0x10000) == 0)
  {
    *&a3->var5.var5 = 0;
    *&a3->var6.var1 = 0u;
    *&a3->var6.var5 = 0u;
    *&a3->var12.var0 = 0u;
    *&a3->var12.var4 = 0u;
  }

  LOBYTE(a3->var13[2]) = 1;
  LOBYTE(a3->var21[3].var0[0]) = 1;
  *&a3->var14.var1.var5 = xmmword_2957C7D20;
  *&a3->var14.var2.var3 = 0x323F266666;
  a3->var21[3].var0[1] = 0.0;
  a3->var23[7].var1 = 0;
  *&a3[1].var6.var7 = 0x43AF000043B68000;
  v13 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v10 withName:@"cameraInfo" cumulativeError:&v24];
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
  v14 = [(IntelligentDistortionCorrection_Utilities *)self extractImageOptions:a3 imageInfo:v12 portType:&v23 cumulativeError:&v24];
  v15 = v23;
  if (v24 | v14)
  {
    sub_2957BF904();
LABEL_24:
    v18 = 0;
    goto LABEL_26;
  }

  v16 = [v10 objectForKeyedSubscript:v15];
  [(IntelligentDistortionCorrection_Utilities *)self extractCameraDictionaryOptions:a3 topEntry:v16 cumulativeError:&v24];

  if (v24)
  {
    sub_2957BF97C();
    goto LABEL_24;
  }

  v17 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v11 withName:@"tuningParameters" cumulativeError:&v24];
  if (v24 | v17)
  {
    sub_2957BF9F4();
    goto LABEL_24;
  }

  v18 = [v11 objectForKeyedSubscript:v15];
  v19 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v18 withName:@"cameraOptionsDictionary" cumulativeError:&v24];
  if (v24 | v19)
  {
    sub_2957BFA6C();
    goto LABEL_26;
  }

  v18 = v18;
  [(IntelligentDistortionCorrection_Utilities *)self extractDistortionOptions:a3 parentEntry:v18 cumulativeError:&v24];
  if (v24)
  {
    sub_2957BFAE4();
  }

  else
  {
    [(IntelligentDistortionCorrection_Utilities *)self extractLineDetectorOptions:a3 parentEntry:v18 cumulativeError:&v24];
    if (v24)
    {
      sub_2957BFB5C();
    }

    else
    {
      [(IntelligentDistortionCorrection_Utilities *)self extractClassifierOptions:a3 parentEntry:v18 cumulativeError:&v24];
      if (v24)
      {
        sub_2957BFBD4();
      }

      else
      {
        [(IntelligentDistortionCorrection_Utilities *)self extractContentPreservingWarpingOptions:a3 parentEntry:v18 cumulativeError:&v24];
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

- (void)extractDistortionOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5
{
  v42 = [a4 objectForKeyedSubscript:@"distortion"];
  if (*a5 | [IntelligentDistortionCorrection_Utilities testDictionaryObject:"testDictionaryObject:withName:cumulativeError:" withName:? cumulativeError:?])
  {
    sub_2957BFCC4();
    v8 = 0;
    goto LABEL_43;
  }

  v8 = v42;
  [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v8 name:@"curveFalloffMu" value:&a3[1].var6.var7 mandatory:0 cumulativeError:a5];
  if (*a5)
  {
    sub_2957BFD40();
LABEL_49:
    v42 = v8;
    goto LABEL_43;
  }

  [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v8 name:@"curveFalloffSigma" value:&a3[1].var7 mandatory:0 cumulativeError:a5];
  if (*a5)
  {
    sub_2957BFDB8();
    goto LABEL_49;
  }

  v9 = [v8 objectForKeyedSubscript:@"curves"];

  if (![(IntelligentDistortionCorrection_Utilities *)self testArrayObject:v9 withName:@"curves" cumulativeError:a5])
  {
    v10 = v9;
    v11 = [v10 count];
    if (v11)
    {
      v36 = v8;
      if (v11 >= 0xB)
      {
        *a5 = -12780;
        v11 = 10;
      }

      v12 = 0;
      v38 = a3;
      v40 = *&v11;
      v13 = &a3->var21[3].var0[2];
      v14 = v11;
      v9 = v10;
      v43 = v11;
      do
      {
        v15 = v9;
        v9 = [v10 objectAtIndexedSubscript:v12];

        if (![(IntelligentDistortionCorrection_Utilities *)self testArrayObject:v9 withName:@"coefficientSet" cumulativeError:a5])
        {
          v16 = v10;
          v17 = v9;
          if ([v17 count] == 7)
          {
            for (i = 0; i != 7; ++i)
            {
              v19 = [v17 objectAtIndexedSubscript:i];
              if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v19 withName:@"coefficient" cumulativeError:a5])
              {
                [v19 floatValue];
                v13[i] = v20;
              }
            }
          }

          else
          {
            *a5 = -12780;
          }

          v10 = v16;
          v14 = v43;
        }

        ++v12;
        v13 += 7;
      }

      while (v12 != v14);
      v8 = v36;
      a3 = v38;
      v21 = v40;
    }

    else
    {
      v21 = 0.0;
      *a5 = -12780;
      v9 = v10;
    }

    a3->var21[3].var0[1] = v21;
  }

  v42 = [v8 objectForKeyedSubscript:@"classifications"];

  if (![(IntelligentDistortionCorrection_Utilities *)self testArrayObject:v42 withName:@"classifications" cumulativeError:a5])
  {
    v22 = v42;
    v23 = [v22 count];
    if (v23)
    {
      v37 = v8;
      if (v23 >= 0xB)
      {
        *a5 = -12780;
        v23 = 10;
      }

      v24 = 0;
      v35 = v23;
      v25 = v23;
      v39 = a3;
      v41 = v22;
      p_var1 = &a3->var23[8].var1;
      v27 = @"classificationHandling";
      v42 = v22;
      do
      {
        v28 = [v22 objectAtIndexedSubscript:v24];

        if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v28 withName:v27 cumulativeError:a5])
        {
          v42 = v28;
        }

        else
        {
          v29 = v27;
          v30 = [v28 objectForKeyedSubscript:@"gated"];
          if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v30 withName:@"gated" cumulativeError:a5])
          {
            *(p_var1 - 8) = [v30 BOOLValue];
          }

          v31 = [v28 objectForKeyedSubscript:@"curveOption"];

          if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v31 withName:@"curveOption" cumulativeError:a5])
          {
            v32 = [v31 intValue];
            if (v32 < 0 || v32 >= SLODWORD(v39->var21[3].var0[1]))
            {
              *a5 = -12780;
            }

            else
            {
              *(p_var1 - 1) = v32;
            }
          }

          v42 = [v28 objectForKeyedSubscript:@"distortionTarget"];

          if (![(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v42 withName:@"distortionTarget" cumulativeError:a5])
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
      a3 = v39;
      v34 = v35;
    }

    else
    {
      v34 = 0;
      *a5 = -12780;
      v42 = v22;
    }

    a3->var23[7].var1 = v34;
  }

LABEL_43:
}

- (int)extractImageOptions:(id *)a3 imageInfo:(id)a4 portType:(id *)a5 cumulativeError:(int *)a6
{
  v10 = a4;
  v11 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v10 withName:@"imageInfo" cumulativeError:a6];
  v12 = *a6 | v11;
  if (v12)
  {
    sub_2957BFE30(v12, a6);
    v18 = 0;
    v13 = 0;
    goto LABEL_19;
  }

  v13 = [v10 objectForKeyedSubscript:*MEMORY[0x29EDC07A8]];
  v11 = [(IntelligentDistortionCorrection_Utilities *)self testStringObject:v13 withName:@"PortType" cumulativeError:a6];
  v14 = *a6 | v11;
  if (v14)
  {
    sub_2957BFEC0(v14, a6);
    v18 = 0;
    goto LABEL_19;
  }

  v15 = v13;
  *a5 = v13;
  v16 = [v10 objectForKeyedSubscript:@"ValidBufferRect"];

  if (v16)
  {
    v17 = [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v16 withName:@"ValidBufferRect" cumulativeError:a6];
    if (!v17)
    {
      v18 = v16;
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"X" value:&a3->var15.var0.var5 mandatory:1 cumulativeError:a6];
      if (*a6)
      {
        sub_2957BFF50();
      }

      else
      {
        [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"Y" value:&a3->var16 mandatory:1 cumulativeError:a6];
        if (*a6)
        {
          sub_2957BFFC8();
        }

        else
        {
          [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"Width" value:&a3->var16.var3 mandatory:1 cumulativeError:a6];
          if (*a6)
          {
            sub_2957C0040();
          }

          else
          {
            [(IntelligentDistortionCorrection_Utilities *)self extractUint:v18 name:@"Height" value:&a3->var16.var4 mandatory:1 cumulativeError:a6];
            if (!*a6)
            {
              v11 = 0;
              *&a3->var16.var1 = vadd_s32(vadd_s32(*&a3->var15.var0.var5, -1), *&a3->var16.var3);
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
  [(IntelligentDistortionCorrection_Utilities *)self extractUint:v10 name:@"RawSensorWidth" value:&a3->var17.var3 mandatory:1 cumulativeError:a6];
  if (*a6)
  {
    sub_2957C0130();
  }

  else
  {
    [(IntelligentDistortionCorrection_Utilities *)self extractUint:v10 name:@"RawSensorHeight" value:&a3->var17.var4 mandatory:1 cumulativeError:a6];
    if (*a6)
    {
      sub_2957C01A8();
    }

    else
    {
      a3->var5.var7 = 0.0;
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v10 name:*MEMORY[0x29EDC04C0] value:&a3->var5.var7 mandatory:0 cumulativeError:a6];
      if (*a6)
      {
        sub_2957C0220();
      }

      else
      {
        a3->var3 = 1.0;
        [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v10 name:*MEMORY[0x29EDC04A8] value:&a3->var3 mandatory:0 cumulativeError:a6];
        if (*a6)
        {
          sub_2957C0298();
        }

        else
        {
          LODWORD(a3->var6.var0) = 1;
          p_var6 = &a3->var6;
          p_var6[-2].var6 = fmaxf(p_var6[-2].var6, 1.0);
          [(IntelligentDistortionCorrection_Utilities *)self extractUint:v10 name:*MEMORY[0x29EDC0658] value:p_var6 mandatory:0 cumulativeError:a6];
          if (*a6)
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

- (void)extractLineDetectorOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5
{
  v8 = [a4 objectForKeyedSubscript:@"lineDetector"];
  if (v8)
  {
    v10 = v8;
    if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v8 withName:@"lineDetector" cumulativeError:a5])
    {
      sub_2957C0388();
    }

    else
    {
      v9 = v10;
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"downscaleFactor" value:&a3->var21[0].var0[5] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"gradientNormalizationRadius" value:&a3->var21[1] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"anchorScanInterval" value:&a3->var21[1].var0[1] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"lineFitInitialLength" value:&a3->var21[1].var0[2] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"minimumLineLength" value:&a3->var21[1].var0[6] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"gradientMagnitudeThreshold" value:&a3->var21[0].var0[6] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"lineFitErrorThreshold" value:&a3->var21[1].var0[3] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"lineMergeDeviationThreshold" value:&a3->var21[1].var0[4] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"lineMergeDistanceThreshold" value:&a3->var21[1].var0[5] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"segmentationMaskDilationRadius" value:&a3->var21[2] mandatory:0 cumulativeError:a5];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)extractClassifierOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5
{
  v8 = [a4 objectForKeyedSubscript:@"classifier"];
  if (v8)
  {
    v10 = v8;
    if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v8 withName:@"classifier" cumulativeError:a5])
    {
      sub_2957C0404();
    }

    else
    {
      v9 = v10;
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"maskGatingThreshold" value:&a3->var14.var1.var5 mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"maximumFaceRectangleThreshold" value:&a3->var14.var2 mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"minimumFaceRectangleThreshold" value:&a3->var14.var2.var1 mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"centerRadiusThreshold" value:&a3->var14.var2.var2 mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"centerRadiusScale" value:&a3->var14.var2.var3 mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"centerMaskThreshold" value:&a3->var14.var2.var4 mandatory:0 cumulativeError:a5];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)extractContentPreservingWarpingOptions:(id *)a3 parentEntry:(id)a4 cumulativeError:(int *)a5
{
  v8 = [a4 objectForKeyedSubscript:@"contentPreservingWarping"];
  if (v8)
  {
    v10 = v8;
    if ([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v8 withName:@"contentPreservingWarping" cumulativeError:a5])
    {
      sub_2957C0480();
    }

    else
    {
      v9 = v10;
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"esWeight1" value:&a3->var21[2].var0[1] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"esWeight2" value:&a3->var21[2].var0[2] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"edWeight" value:&a3->var21[2].var0[3] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractFloat:v9 name:@"elWeight" value:&a3->var21[2].var0[4] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"pareDownConstant" value:&a3->var21[2].var0[5] mandatory:0 cumulativeError:a5];
      [(IntelligentDistortionCorrection_Utilities *)self extractUint:v9 name:@"segmentationMaskErosionRadius" value:&a3->var21[2].var0[6] mandatory:0 cumulativeError:a5];
    }
  }

  MEMORY[0x2A1C71028]();
}

- (void)extractUint:(id)a3 name:(id)a4 value:(unsigned int *)a5 mandatory:(BOOL)a6 cumulativeError:(int *)a7
{
  v8 = a6;
  v10 = [a3 objectForKeyedSubscript:a4];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *a5 = [v11 unsignedIntValue];
    }

    else
    {
      *a7 = -12784;
    }

    v10 = v11;
  }

  else if (v8)
  {
    *a7 = -12784;
  }
}

- (int)extractFloat:(id)a3 name:(id)a4 value:(float *)a5 mandatory:(BOOL)a6 cumulativeError:(int *)a7
{
  v8 = a6;
  v10 = [a3 objectForKeyedSubscript:a4];
  if (!v10)
  {
    v11 = -12784;
    if (!v8)
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
    *a7 = -12784;
    goto LABEL_8;
  }

  [v10 floatValue];
  v11 = 0;
  *a5 = v12;
LABEL_8:

  return v11;
}

- (int)warpAndOrUndistortPrimaryAsset:(id *)a3 inputImageTexture:(id)a4 inputMeshTexture:(id)a5 outputImageTexture:(id)a6 roiTracker:(id)a7 inputImageMetadataDictionary:(id)a8
{
  p_var5 = &a3->var16.var5;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&self->_warpAndOrUndistortPrimaryAsset bundleConfiguration:a3];
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
    v23 = [v19 objectForKeyedSubscript:*MEMORY[0x29EDC04B0]];

    CGPointMakeWithDictionaryRepresentation(v23, &point);
    v24 = [v15 width];
    point.x = point.x / (v24 / COERCE_FLOAT(*&a3->var4));
    v25 = [v15 height];
    point.y = point.y / (v25 / a3->var5.var0);
    v26 = *(&v45 + 1) + point.y * *(&v44 + 1) + v43.y * point.x;
    v27 = *&v45 + point.y * *&v44 + v43.x * point.x;
    *&self[1]._kernels.gatherGatingStatistics = v27 * [v15 width];
    *&v26 = v26;
    *(&self[1]._kernels.gatherGatingStatistics + 1) = *&v26 * [v15 height];
  }

  *&self->_warpAndOrUndistortPrimaryAsset.var0 = vdiv_f32(vcvt_f32_s32(*&a3->var15.var0.var3), vcvt_f32_s32(p_var5[2]));
  self[1]._metalContext = vcvt_f32_s32(*p_var5);
  self[1]._kernels.undistortBGRA = vmul_n_f32(*&a3->var4, a3->var3);
  if (v16)
  {
    v40 = ([v16 width] - 1) / (a3->var17.var3 - 1);
    v28 = [v16 height];
    *&v29 = v40;
    *(&v29 + 1) = (v28 - 1) / (a3->var17.var4 - 1);
    self[1]._kernels.lumaCropAndDownscale4to1 = v29;
    self[1]._anon_a8[1] = 1;
  }

  self[1]._kernels.zeroBuffer1 = vcvt_f32_u32(*&a3->var0);
  LOBYTE(self[1]._kernels.zeroBuffer16) = LOBYTE(a3->var2);
  LODWORD(self[2]._kernels.undistortSingleChannel) = [v17 width];
  HIDWORD(self[2]._kernels.undistortSingleChannel) = [v17 height];
  v30 = [(FigMetalContext *)self->_metalContext commandQueue];
  v31 = [v30 commandBuffer];

  if (!v31)
  {
    sub_2957C0574();
LABEL_18:
    v38 = -12786;
    goto LABEL_15;
  }

  v32 = [v31 computeCommandEncoder];
  if (!v32)
  {
    sub_2957C04FC();
    goto LABEL_18;
  }

  v33 = v32;
  [v32 setComputePipelineState:self->_kernels.fillRoiData];
  if (v18)
  {
    if (![v18 isCpuMaster])
    {
      v35 = [v18 metalBuffer];
      [v33 setBuffer:v35 offset:objc_msgSend(v18 atIndex:{"metalBufferOffset"), 0}];

      goto LABEL_14;
    }

    *&v43.x = [v18 getRoiData];
    v43.y = v34;
  }

  else
  {
    v43.x = 0.0;
    LODWORD(v43.y) = [v15 width] - 1;
    HIDWORD(v43.y) = [v15 height] - 1;
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
  [v33 setTexture:v15 atIndex:0];
  [v33 setTexture:v16 atIndex:1];
  [v33 setTexture:v17 atIndex:2];
  [v33 setBytes:&self->_warpAndOrUndistortPrimaryAsset length:256 atIndex:0];
  [v33 setBuffer:self[2]._kernels.undistortBGRA offset:0 atIndex:1];
  v36 = [v17 width] >> 1;
  v37 = [v17 height];
  *&v43.x = v36;
  *&v43.y = v37 >> 1;
  *&v44 = 1;
  point = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v33 dispatchThreads:&v43 threadsPerThreadgroup:&point];
  [v33 endEncoding];
  [v31 commit];
  [v31 waitUntilCompleted];

  v38 = 0;
LABEL_15:

  return v38;
}

- (int)undistortSingleChannelTexture:(id *)a3 inputTexture:(id)a4 outputTexture:(id)a5
{
  v8 = a4;
  v9 = a5;
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
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&v33 bundleConfiguration:a3];
  var3 = a3->var15.var0.var3;
  v30 = var3 / [v8 width];
  var4 = a3->var15.var0.var4;
  v12 = [v8 height];
  *&v13 = v30;
  *(&v13 + 1) = var4 / v12;
  v14 = vcvt_f32_s32(*&a3->var16.var5);
  *&v33 = v13;
  *&v34 = v14;
  if (LOBYTE(a3[1].var12.var0) == 1)
  {
    _D0 = vmul_n_f32(*&a3->var4, a3->var3);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }
  }

  *&v38 = _D0;
  v20 = [(FigMetalContext *)self->_metalContext commandQueue];
  v21 = [v20 commandBuffer];

  if (!v21)
  {
    sub_2957C09DC();
LABEL_10:
    v28 = -12786;
    goto LABEL_7;
  }

  v22 = [v21 computeCommandEncoder];
  if (!v22)
  {
    sub_2957C0964();
    goto LABEL_10;
  }

  v23 = v22;
  v24 = [(MTLComputePipelineState *)self->_kernels.undistortSingleChannel threadExecutionWidth];
  v25 = [(MTLComputePipelineState *)self->_kernels.undistortSingleChannel maxTotalThreadsPerThreadgroup];
  undistortSingleChannel = self->_kernels.undistortSingleChannel;
  v27 = v25 / v24;
  [v23 setComputePipelineState:undistortSingleChannel];
  [v23 setTexture:v8 atIndex:0];
  [v23 setTexture:v9 atIndex:1];
  [v23 setBytes:&v33 length:256 atIndex:0];
  v32[0] = [v9 width] >> 1;
  v32[1] = [v9 height] >> 1;
  v32[2] = 1;
  v31[0] = v24;
  v31[1] = v27;
  v31[2] = 1;
  [v23 dispatchThreads:v32 threadsPerThreadgroup:v31];
  [v23 endEncoding];
  [v21 commit];

  v28 = 0;
LABEL_7:

  return v28;
}

- (int)undistortBGRATexture:(id *)a3 inputBGRATexture:(id)a4 intoOutputBGRA:(id)a5 encoder:(id)a6 crop:(id *)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
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
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&v57 bundleConfiguration:a3];
  var3 = a3->var15.var0.var3;
  v54 = var3 / [v12 width];
  var4 = a3->var15.var0.var4;
  v17 = [v12 height];
  *&v18 = v54;
  *(&v18 + 1) = var4 / v17;
  v19 = vcvt_f32_s32(*&a3->var16.var5);
  *&v57 = v18;
  *&v58 = v19;
  if (LOBYTE(a3[1].var12.var0) == 1)
  {
    _D0 = vmul_n_f32(*&a3->var4, a3->var3);
  }

  else
  {
    __asm { FMOV            V0.2S, #1.0 }
  }

  *&v62 = _D0;
  v25 = [(MTLComputePipelineState *)self->_kernels.undistortBGRA threadExecutionWidth];
  v26 = [(MTLComputePipelineState *)self->_kernels.undistortBGRA maxTotalThreadsPerThreadgroup];
  undistortBGRA = self->_kernels.undistortBGRA;
  v28 = v26 / v25;
  [v14 setComputePipelineState:undistortBGRA];
  [v14 setTexture:v12 atIndex:0];
  [v14 setTexture:v13 atIndex:1];
  [v14 setBytes:&v57 length:256 atIndex:0];
  v56[0] = [v13 width] >> 1;
  v56[1] = [v13 height] >> 1;
  v56[2] = 1;
  v55[0] = v25;
  v55[1] = v28;
  v55[2] = 1;
  [v14 dispatchThreads:v56 threadsPerThreadgroup:v55];
  var0 = a7->var0;
  var1 = a7->var1;
  var2 = a7->var2;
  v32 = a7->var3;
  v33 = forwardDistort(a7->var0, var1, &v57);
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
  a7->var0 = v49;
  a7->var1 = v50;
  v51 = vcvtms_s32_f32(v43);
  v52 = vcvtms_s32_f32(v47);
  a7->var2 = v51;
  a7->var3 = v52;
  a7->var4 = v51 - v49 + 1;
  a7->var5 = v52 - v50 + 1;

  return 0;
}

- (int)computeMeshROI:(id *)a3 invertedMeshTexture:(id)a4 roiTracker:(id)a5
{
  p_var5 = &a3->var16.var5;
  v9 = a4;
  v10 = a5;
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
  [(IntelligentDistortionCorrection_Utilities *)self buildParameters:&v48 bundleConfiguration:a3];
  v11 = (a3->var17.var3 - 1);
  v38 = v11 / ([v9 width] - 1);
  v12 = (a3->var17.var4 - 1);
  v13 = [v9 height];
  *&v14 = v38;
  *(&v14 + 1) = v12 / (v13 - 1);
  v15 = *p_var5;
  v16.i64[0] = *p_var5;
  v16.i64[1] = *p_var5;
  v17 = vcvt_f32_s32(*p_var5);
  *&v48 = v14;
  *&v49 = v17;
  if (LOBYTE(a3[1].var12.var0) == 1)
  {
    _D2 = vmul_n_f32(*&a3->var4, a3->var3);
  }

  else
  {
    __asm { FMOV            V2.2S, #1.0 }
  }

  *&v53 = _D2;
  v23 = vsubq_s32(*&a3->var15.var0.var5, v16);
  v24 = vsubq_s32(*(p_var5 + 6), v16);
  v47[0] = v23;
  v47[1] = v24;
  v44 = v15;
  v24.i64[0] = *(p_var5 + 1);
  v24.i64[1] = v24.i64[0];
  v45 = v24;
  v46 = v15;
  v25 = [(FigMetalContext *)self->_metalContext commandQueue];
  v26 = [v25 commandBuffer];

  if (!v26)
  {
    sub_2957C0ACC();
LABEL_10:
    v36 = -12786;
    goto LABEL_7;
  }

  v27 = [v26 computeCommandEncoder];
  if (!v27)
  {
    sub_2957C0A54();
    goto LABEL_10;
  }

  v28 = v27;
  [v27 setComputePipelineState:self->_kernels.fillROICollectionRecord];
  [v28 setBytes:&v44 length:32 atIndex:0];
  v29 = [v10 metalBuffer];
  [v28 setBuffer:v29 offset:objc_msgSend(v10 atIndex:{"metalBufferOffset"), 1}];

  v39 = vdupq_n_s64(1uLL);
  v40 = v39;
  v42 = v39;
  v43 = 1;
  v41 = 1;
  [v28 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  v30 = [(MTLComputePipelineState *)self->_kernels.computeMeshROI threadExecutionWidth];
  v31 = [(MTLComputePipelineState *)self->_kernels.computeMeshROI maxTotalThreadsPerThreadgroup]/ v30;
  [v28 setComputePipelineState:self->_kernels.computeMeshROI];
  [v28 setTexture:v9 atIndex:0];
  [v28 setBytes:&v48 length:256 atIndex:0];
  [v28 setBytes:v47 length:32 atIndex:1];
  v32 = [v10 metalBuffer];
  [v28 setBuffer:v32 offset:objc_msgSend(v10 atIndex:{"metalBufferOffset"), 2}];

  v33 = [v9 width] - 1;
  v34 = [v9 height];
  v42.i64[0] = v33;
  v42.i64[1] = v34 - 1;
  v43 = 1;
  v40.i64[0] = v30;
  v40.i64[1] = v31;
  v41 = 1;
  [v28 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  [v28 setComputePipelineState:self->_kernels.adjustROI];
  [v28 setBytes:&v48 length:256 atIndex:0];
  v35 = [v10 metalBuffer];
  [v28 setBuffer:v35 offset:objc_msgSend(v10 atIndex:{"metalBufferOffset"), 1}];

  v42 = v39;
  v43 = 1;
  v40 = v39;
  v41 = 1;
  [v28 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  [v28 endEncoding];
  [v26 commit];
  [v10 setIsCpuMaster:0];

  v36 = 0;
LABEL_7:

  return v36;
}

- (void)buildParameters:(id *)a3 bundleConfiguration:(id *)a4
{
  v4 = vcvt_f32_s32(*&a4->var17.var3);
  __asm { FMOV            V1.2S, #1.0 }

  *&a3->var3.var4 = _D1;
  *&a3[1].var3.var1 = vmla_f32(*&a4->var5.var5, 0x3F0000003F000000, v4);
  a3[1].var3.var3 = a4->var5.var3 * a4->var5.var3;
  *&a3[1].var3.var5 = *&a4->var12.var0;
  *&a3[1].var4.var1 = *&a4->var12.var4;
  *&a3[1].var4.var5 = *&a4->var6.var1;
  *&a3[1].var7 = *&a4->var6.var5;
  LOBYTE(a3[2].var3.var0) = LOBYTE(a4->var13[2]);
  BYTE1(a3[2].var3.var0) = 0;
  a3[2].var3.var1 = a4->var17.var9 / SLODWORD(a4->var18.var0);
  a3[2].var5 = a4->var14.var1.var4;
  v11 = *&a4->var14.var0.var2;
  v10 = *&a4->var14.var1.var0;
  *&a3[2].var3.var4 = *&a4->var13[4];
  *&a3[2].var4.var0 = v11;
  *&a3[2].var4.var4 = v10;
  a3[2].var6 = BYTE1(a4->var14.var1.var4);
  *(&a3[2].var6 + 1) = a4[1].var12.var0;
}

- (int)erodeSegmentationMask:(id)a3 to:(id)a4 radius:(int)a5 commandEncoder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    sub_2957C0F4C();
LABEL_7:
    v19 = -12780;
    goto LABEL_4;
  }

  if (!v11)
  {
    sub_2957C0ED4();
    goto LABEL_7;
  }

  v13 = [v10 width];
  v14 = [v10 height];
  v23 = a5;
  v15 = [(MTLComputePipelineState *)self->_kernels.erodeSegmentationMask threadExecutionWidth];
  v16 = [(MTLComputePipelineState *)self->_kernels.erodeSegmentationMask maxTotalThreadsPerThreadgroup];
  erodeSegmentationMask = self->_kernels.erodeSegmentationMask;
  v18 = v16 / v15;
  [v12 setComputePipelineState:erodeSegmentationMask];
  [v12 setTexture:v10 atIndex:0];
  [v12 setTexture:v11 atIndex:1];
  [v12 setBytes:&v23 length:4 atIndex:0];
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = 1;
  v21[0] = v15;
  v21[1] = v18;
  v21[2] = 1;
  [v12 dispatchThreads:v22 threadsPerThreadgroup:v21];
  v19 = 0;
LABEL_4:

  return v19;
}

- (int)dilateSegmentationMask:(id)a3 to:(id)a4 radius:(int)a5 commandEncoder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    sub_2957C103C();
LABEL_7:
    v19 = -12780;
    goto LABEL_4;
  }

  if (!v11)
  {
    sub_2957C0FC4();
    goto LABEL_7;
  }

  v13 = [v10 width];
  v14 = [v10 height];
  v23 = a5;
  v15 = [(MTLComputePipelineState *)self->_kernels.dilateSegmentationMask threadExecutionWidth];
  v16 = [(MTLComputePipelineState *)self->_kernels.dilateSegmentationMask maxTotalThreadsPerThreadgroup];
  dilateSegmentationMask = self->_kernels.dilateSegmentationMask;
  v18 = v16 / v15;
  [v12 setComputePipelineState:dilateSegmentationMask];
  [v12 setTexture:v10 atIndex:0];
  [v12 setTexture:v11 atIndex:1];
  [v12 setBytes:&v23 length:4 atIndex:0];
  v22[0] = v13;
  v22[1] = v14;
  v22[2] = 1;
  v21[0] = v15;
  v21[1] = v18;
  v21[2] = 1;
  [v12 dispatchThreads:v22 threadsPerThreadgroup:v21];
  v19 = 0;
LABEL_4:

  return v19;
}

- (CGAffineTransform)getTransformFromRect:(SEL)a3 toRect:(CGRect)a4
{
  *&v6 = a4.origin.x;
  *&v7 = a4.origin.y;
  *&v8 = a4.size.width;
  height = a4.size.height;
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

- (void)extractCameraDictionaryOptions:(id *)a3 topEntry:(id)a4 cumulativeError:(int *)a5
{
  v7 = v6;
  v11 = a4;
  if (*a5 | [(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v11 withName:@"cameraDictionary" cumulativeError:a5])
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

  v12 = v11;
  v25 = 0.0;
  sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self extractFloat:v12 name:@"PixelSize" value:&v25 mandatory:1 cumulativeError:a5]);
  if (v5)
  {
    fig_log_get_emitter();
    sub_2957B5BF0();
    FigDebugAssert3();
    goto LABEL_19;
  }

  a3->var5.var3 = (v25 * LODWORD(a3->var6.var0)) / 1000.0;
  if ((a3->var14.var1.var4 & 0x10000) != 0)
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

    sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v14 withName:v15 cumulativeError:a5]);
    v5 = @"X";
    v16 = [v14 objectForKeyedSubscript:@"X"];
    sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v16 withName:@"X" cumulativeError:a5]);
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
      a3->var5.var5 = v17;
      v5 = @"Y";
      v18 = [v14 objectForKeyedSubscript:@"Y"];

      sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testNumberObject:v18 withName:@"Y" cumulativeError:a5]);
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
        a3->var5.var6 = v19;
        v20 = [v12 objectForKeyedSubscript:*MEMORY[0x29EDBFEF8]];

        sub_2957B5C30([(IntelligentDistortionCorrection_Utilities *)self testDictionaryObject:v20 withName:@"GeometricDistortionCoefficients" cumulativeError:a5]);
        v18 = v20;

        v5 = [v18 objectForKeyedSubscript:*MEMORY[0x29EDC0328]];
        if (*a5 | [(IntelligentDistortionCorrection_Utilities *)self testDataObject:v5 withName:@"BasePolynomial" cumulativeError:a5]|| [(__CFString *)v5 length]!= 64)
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
          if (*a5 | -[IntelligentDistortionCorrection_Utilities testDataObject:withName:cumulativeError:](self, "testDataObject:withName:cumulativeError:", v7, @"DynamicPolynomial", a5) || [v7 length] != 64)
          {
            fig_log_get_emitter();
            sub_2957B5C54();
            FigDebugAssert3();
            sub_2957B5C18();
          }

          else
          {
            var7 = a3->var5.var7;
            v22 = [(__CFString *)v5 bytes];
            v23 = [v7 bytes];
            a3->var6.var1 = *v22 + (var7 * *v23);
            a3->var6.var2 = v22[1] + (var7 * v23[1]);
            a3->var6.var3 = v22[2] + (var7 * v23[2]);
            a3->var6.var4 = v22[3] + (var7 * v23[3]);
            a3->var6.var5 = v22[4] + (var7 * v23[4]);
            a3->var6.var6 = v22[5] + (var7 * v23[5]);
            a3->var6.var7 = v22[6] + (var7 * v23[6]);
            *&a3->var7 = v22[7] + (var7 * v23[7]);
            *&a3->var12.var0 = v22[8] + (var7 * v23[8]);
            *&a3->var12.var1 = v22[9] + (var7 * v23[9]);
            *&a3->var12.var2 = v22[10] + (var7 * v23[10]);
            *&a3->var12.var3 = v22[11] + (var7 * v23[11]);
            a3->var12.var4 = v22[12] + (var7 * v23[12]);
            *&a3->var12.var5 = v22[13] + (var7 * v23[13]);
            a3->var13[0] = v22[14] + (var7 * v23[14]);
            a3->var13[1] = v22[15] + (var7 * v23[15]);
          }
        }
      }

      v24 = v18;
    }
  }

LABEL_16:
}

@end