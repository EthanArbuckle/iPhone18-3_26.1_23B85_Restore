@interface GGMMetalToolBoxHWSim
- (GGMMetalToolBoxHWSim)initWithMetalContext:(id)context tuningParamDict:(id)dict;
- (__CVBuffer)convertInputYUVToRGB:(__CVBuffer *)b;
- (int)_compileHWSimShaders;
- (void)backWarpYUV:(double)v warped:(double)warped withHomography:(uint64_t)homography waitForComplete:(__CVBuffer *)complete;
- (void)convertRGBToYuv:(__CVBuffer *)yuv outputBuf:(__CVBuffer *)buf;
- (void)dealloc;
- (void)encodeBackWarpYUVToCommandBuffer:(__n128)buffer reference:(__n128)reference ToOutput:(uint64_t)output withHomography:(void *)homography;
- (void)encodeCopyYUV:(id)v input:(id)input output:(id)output;
- (void)encodeHwSimFuseYUVToCommandEncoder:(id)encoder input:(id)input temporalMit:(id)mit output:(id)output metaBuf:(id)buf;
- (void)encodeHwSimTemporalRepairAndCopyInputYUVToCommandEncoder:(__n128)encoder input:(__n128)input frRef0:(__n128)ref0 frRef1:(__n128)ref1 hmgrphy0:(__n128)hmgrphy0 hmgrphy1:(uint64_t)hmgrphy1 temporalOutput:(void *)output inputCopy:(void *)self0 metaBuf:(void *)self1;
- (void)encodeYCbCrToRGBToCommandBuffer:(id)buffer inputTexture:(id)texture toOutTexture:(id)outTexture;
- (void)encodeYUV2GrayToCommandBuffer:(id)buffer InputYUV:(id)v ToOutput:(id)output;
- (void)encodeloadRGBAsYuvToCommandBuffer:(id)buffer inputBuf:(id)buf toOutLuma:(id)luma toOutCbCr:(id)cr;
@end

@implementation GGMMetalToolBoxHWSim

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = GGMMetalToolBoxHWSim;
  [(GGMMetalToolBox *)&v2 dealloc];
}

- (int)_compileHWSimShaders
{
  metalContext = [(GGMMetalToolBox *)self metalContext];
  v4 = [metalContext computePipelineStateFor:@"VideoDeghostingV3HWSim::copyYUV" constants:0];
  copyYUV = self->_copyYUV;
  self->_copyYUV = v4;

  metalContext2 = [(GGMMetalToolBox *)self metalContext];
  v7 = [metalContext2 computePipelineStateFor:@"VideoDeghostingV3HWSim::hwSimTemporalRepairAndCopyInputYUV" constants:0];
  hwSimTemporalRepairAndCopyInputYUV = self->_hwSimTemporalRepairAndCopyInputYUV;
  self->_hwSimTemporalRepairAndCopyInputYUV = v7;

  metalContext3 = [(GGMMetalToolBox *)self metalContext];
  v10 = [metalContext3 computePipelineStateFor:@"VideoDeghostingV3HWSim::YCbCrToRGB" constants:0];
  YCbCrToRGB = self->_YCbCrToRGB;
  self->_YCbCrToRGB = v10;

  metalContext4 = [(GGMMetalToolBox *)self metalContext];
  v13 = [metalContext4 computePipelineStateFor:@"VideoDeghostingV3HWSim::convertRGBToYuv" constants:0];
  convertRGBToYuv = self->_convertRGBToYuv;
  self->_convertRGBToYuv = v13;

  metalContext5 = [(GGMMetalToolBox *)self metalContext];
  v16 = [metalContext5 computePipelineStateFor:@"VideoDeghostingV3HWSim::backwarpWithHomographyYUV" constants:0];
  backwarpWithHomographyYUV = self->_backwarpWithHomographyYUV;
  self->_backwarpWithHomographyYUV = v16;

  metalContext6 = [(GGMMetalToolBox *)self metalContext];
  v19 = [metalContext6 computePipelineStateFor:@"VideoDeghostingV3HWSim::YUV2Gray" constants:0];
  YUV2Gray = self->_YUV2Gray;
  self->_YUV2Gray = v19;

  metalContext7 = [(GGMMetalToolBox *)self metalContext];
  v22 = [metalContext7 computePipelineStateFor:@"VideoDeghostingV3HWSim::hwSimFuseYUV" constants:0];
  hwSimFuseYUV = self->_hwSimFuseYUV;
  self->_hwSimFuseYUV = v22;

  return 0;
}

- (void)encodeCopyYUV:(id)v input:(id)input output:(id)output
{
  outputCopy = output;
  inputCopy = input;
  vCopy = v;
  v11 = ([outputCopy width] + 15) >> 4;
  v12 = ([outputCopy height] + 15) >> 4;
  [vCopy setComputePipelineState:self->_copyYUV];
  [vCopy setTexture:inputCopy atIndex:0];

  [vCopy setTexture:outputCopy atIndex:1];
  [vCopy setImageblockWidth:16 height:16];
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [vCopy dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
}

- (void)encodeHwSimTemporalRepairAndCopyInputYUVToCommandEncoder:(__n128)encoder input:(__n128)input frRef0:(__n128)ref0 frRef1:(__n128)ref1 hmgrphy0:(__n128)hmgrphy0 hmgrphy1:(uint64_t)hmgrphy1 temporalOutput:(void *)output inputCopy:(void *)self0 metaBuf:(void *)self1
{
  v44[0] = a2;
  v44[1] = encoder;
  v44[2] = input;
  v43[0] = ref0;
  v43[1] = ref1;
  v43[2] = hmgrphy0;
  v21 = *(self + 736);
  v22 = a15;
  v23 = a14;
  v24 = a13;
  v25 = a12;
  bufCopy = buf;
  copyCopy = copy;
  outputCopy = output;
  [outputCopy setComputePipelineState:v21];
  [outputCopy setTexture:copyCopy atIndex:0];

  [outputCopy setTexture:bufCopy atIndex:1];
  [outputCopy setTexture:v25 atIndex:2];

  [outputCopy setTexture:v24 atIndex:3];
  [outputCopy setTexture:v23 atIndex:4];

  [outputCopy setBuffer:v22 offset:0 atIndex:0];
  [outputCopy setBytes:v44 length:48 atIndex:1];
  [outputCopy setBytes:v43 length:48 atIndex:2];
  [outputCopy setImageblockWidth:32 height:32];
  contents = [v22 contents];

  v30 = contents[3];
  v31.i64[0] = v30;
  v31.i64[1] = HIDWORD(v30);
  __asm { FMOV            V1.2D, #4.0 }

  v37 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v31), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v41 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v37, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v42 = 1;
  v39 = vdupq_n_s64(0x20uLL);
  v40 = 1;
  [outputCopy dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
}

- (void)encodeHwSimFuseYUVToCommandEncoder:(id)encoder input:(id)input temporalMit:(id)mit output:(id)output metaBuf:(id)buf
{
  hwSimFuseYUV = self->_hwSimFuseYUV;
  bufCopy = buf;
  outputCopy = output;
  mitCopy = mit;
  inputCopy = input;
  encoderCopy = encoder;
  [encoderCopy setComputePipelineState:hwSimFuseYUV];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setTexture:inputCopy atIndex:0];

  [encoderCopy setTexture:mitCopy atIndex:1];
  [encoderCopy setTexture:outputCopy atIndex:2];

  [encoderCopy setImageblockWidth:32 height:32];
  contents = [bufCopy contents];

  v18 = contents[3];
  v19.i64[0] = v18;
  v19.i64[1] = HIDWORD(v18);
  __asm { FMOV            V1.2D, #4.0 }

  v25 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v19), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v29 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v25, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v30 = 1;
  v27 = vdupq_n_s64(0x20uLL);
  v28 = 1;
  [encoderCopy dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
}

- (void)encodeYCbCrToRGBToCommandBuffer:(id)buffer inputTexture:(id)texture toOutTexture:(id)outTexture
{
  textureCopy = texture;
  outTextureCopy = outTexture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v11 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_YCbCrToRGB];
    [v11 setTexture:textureCopy atIndex:0];
    [v11 setTexture:outTextureCopy atIndex:1];
    v14[0] = ([textureCopy width] + 15) >> 4;
    v14[1] = ([textureCopy height] + 15) >> 4;
    v14[2] = 1;
    v12 = vdupq_n_s64(0x10uLL);
    v13 = 1;
    [v11 dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
    [v11 endEncoding];
  }
}

- (void)encodeloadRGBAsYuvToCommandBuffer:(id)buffer inputBuf:(id)buf toOutLuma:(id)luma toOutCbCr:(id)cr
{
  bufCopy = buf;
  lumaCopy = luma;
  crCopy = cr;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v14 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_convertRGBToYuv];
    [v14 setTexture:bufCopy atIndex:0];
    [v14 setTexture:lumaCopy atIndex:1];
    [v14 setTexture:crCopy atIndex:2];
    v17[0] = ([bufCopy width] + 15) >> 4;
    v17[1] = ([bufCopy height] + 15) >> 4;
    v17[2] = 1;
    v15 = vdupq_n_s64(0x10uLL);
    v16 = 1;
    [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
    [v14 endEncoding];
  }
}

- (void)encodeBackWarpYUVToCommandBuffer:(__n128)buffer reference:(__n128)reference ToOutput:(uint64_t)output withHomography:(void *)homography
{
  v20[0] = a2;
  v20[1] = buffer;
  v20[2] = reference;
  v11 = a8;
  v12 = a7;
  homographyCopy = homography;
  v14 = ([v12 width] + 31) >> 5;
  v15 = ([v12 height] + 31) >> 5;
  computeCommandEncoder = [homographyCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:*(self + 760)];
  [computeCommandEncoder setTexture:v12 atIndex:0];

  [computeCommandEncoder setTexture:v11 atIndex:1];
  [computeCommandEncoder setBytes:v20 length:48 atIndex:0];
  [computeCommandEncoder setImageblockWidth:32 height:32];
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 1;
  v17 = vdupq_n_s64(0x20uLL);
  v18 = 1;
  [computeCommandEncoder dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [computeCommandEncoder endEncoding];
}

- (void)encodeYUV2GrayToCommandBuffer:(id)buffer InputYUV:(id)v ToOutput:(id)output
{
  vCopy = v;
  outputCopy = output;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v11 = computeCommandEncoder;
  if (computeCommandEncoder)
  {
    [computeCommandEncoder setComputePipelineState:self->_YUV2Gray];
    [v11 setTexture:vCopy atIndex:0];
    [v11 setTexture:outputCopy atIndex:1];
    v14[0] = ([outputCopy width] + 15) >> 4;
    v14[1] = ([outputCopy height] + 15) >> 4;
    v14[2] = 1;
    v12 = vdupq_n_s64(0x10uLL);
    v13 = 1;
    [v11 dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
    [v11 endEncoding];
  }
}

- (__CVBuffer)convertInputYUVToRGB:(__CVBuffer *)b
{
  CVPixelBufferGetWidth(b);
  CVPixelBufferGetHeight(b);
  PixelBuffer = CreatePixelBuffer();
  v6 = CVBufferCopyAttachments(b, kCVAttachmentMode_ShouldPropagate);
  if (v6)
  {
    v7 = v6;
    CVBufferSetAttachments(PixelBuffer, v6, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v7);
  }

  [(GGMMetalToolBoxHWSim *)self YCbCrToRGB:b outputImage:PixelBuffer waitForComplete:0];
  return PixelBuffer;
}

- (void)convertRGBToYuv:(__CVBuffer *)yuv outputBuf:(__CVBuffer *)buf
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  metalContext = [(GGMMetalToolBox *)self metalContext];
  v8 = createTextureFromCVPixelBuffer(yuv, metalContext, 0);

  metalContext2 = [(GGMMetalToolBox *)self metalContext];
  v10 = createTextureFromCVPixelBuffer(buf, metalContext2, 0);

  metalContext3 = [(GGMMetalToolBox *)self metalContext];
  v12 = createTextureFromCVPixelBuffer(buf, metalContext3, 1u);

  [(GGMMetalToolBoxHWSim *)self encodeloadRGBAsYuvToCommandBuffer:commandBuffer inputBuf:v8 toOutLuma:v10 toOutCbCr:v12];
  [commandBuffer setLabel:@"VideoDeghostingV3MetalToolBoxHWSim_RGB2YUV"];
  [(GGMMetalToolBoxHWSim *)self commitCmdBuffer:commandBuffer waitForComplete:0];
}

- (void)backWarpYUV:(double)v warped:(double)warped withHomography:(uint64_t)homography waitForComplete:(__CVBuffer *)complete
{
  commandBuffer = [self[89] commandBuffer];
  metalContext = [self metalContext];
  v13 = createSingleTextureFromYuvBuffer(complete, metalContext, 0, 0);

  metalContext2 = [self metalContext];
  v15 = createSingleTextureFromYuvBuffer(a7, metalContext2, 0, 0);

  [self encodeBackWarpYUVToCommandBuffer:commandBuffer reference:v13 ToOutput:v15 withHomography:{a2, v, warped}];
  [commandBuffer setLabel:@"VideoDeghostingV3MetalToolBoxHWSim_BackWarp"];
  [self commitCmdBuffer:commandBuffer waitForComplete:a8];
}

- (GGMMetalToolBoxHWSim)initWithMetalContext:(id)context tuningParamDict:(id)dict
{
  contextCopy = context;
  dictCopy = dict;
  if (!contextCopy)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_7:
    selfCopy = 0;
    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = GGMMetalToolBoxHWSim;
  self = [(GGMMetalToolBox *)&v14 initWithMetalContext:contextCopy tuningParamDict:dictCopy];
  if (!self)
  {
    goto LABEL_7;
  }

  device = [contextCopy device];
  device = self->_device;
  self->_device = device;

  commandQueue = [contextCopy commandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = commandQueue;

  if ([(GGMMetalToolBoxHWSim *)self _compileHWSimShaders])
  {
    goto LABEL_7;
  }

  self->_forceGpuWaitForComplete = 1;
  self = self;
  selfCopy = self;
LABEL_5:

  return selfCopy;
}

@end