@interface GGMMetalToolBoxHWSim
- (GGMMetalToolBoxHWSim)initWithMetalContext:(id)a3 tuningParamDict:(id)a4;
- (__CVBuffer)convertInputYUVToRGB:(__CVBuffer *)a3;
- (int)_compileHWSimShaders;
- (void)backWarpYUV:(double)a3 warped:(double)a4 withHomography:(uint64_t)a5 waitForComplete:(__CVBuffer *)a6;
- (void)convertRGBToYuv:(__CVBuffer *)a3 outputBuf:(__CVBuffer *)a4;
- (void)dealloc;
- (void)encodeBackWarpYUVToCommandBuffer:(__n128)a3 reference:(__n128)a4 ToOutput:(uint64_t)a5 withHomography:(void *)a6;
- (void)encodeCopyYUV:(id)a3 input:(id)a4 output:(id)a5;
- (void)encodeHwSimFuseYUVToCommandEncoder:(id)a3 input:(id)a4 temporalMit:(id)a5 output:(id)a6 metaBuf:(id)a7;
- (void)encodeHwSimTemporalRepairAndCopyInputYUVToCommandEncoder:(__n128)a3 input:(__n128)a4 frRef0:(__n128)a5 frRef1:(__n128)a6 hmgrphy0:(__n128)a7 hmgrphy1:(uint64_t)a8 temporalOutput:(void *)a9 inputCopy:(void *)a10 metaBuf:(void *)a11;
- (void)encodeYCbCrToRGBToCommandBuffer:(id)a3 inputTexture:(id)a4 toOutTexture:(id)a5;
- (void)encodeYUV2GrayToCommandBuffer:(id)a3 InputYUV:(id)a4 ToOutput:(id)a5;
- (void)encodeloadRGBAsYuvToCommandBuffer:(id)a3 inputBuf:(id)a4 toOutLuma:(id)a5 toOutCbCr:(id)a6;
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
  v3 = [(GGMMetalToolBox *)self metalContext];
  v4 = [v3 computePipelineStateFor:@"VideoDeghostingV3HWSim::copyYUV" constants:0];
  copyYUV = self->_copyYUV;
  self->_copyYUV = v4;

  v6 = [(GGMMetalToolBox *)self metalContext];
  v7 = [v6 computePipelineStateFor:@"VideoDeghostingV3HWSim::hwSimTemporalRepairAndCopyInputYUV" constants:0];
  hwSimTemporalRepairAndCopyInputYUV = self->_hwSimTemporalRepairAndCopyInputYUV;
  self->_hwSimTemporalRepairAndCopyInputYUV = v7;

  v9 = [(GGMMetalToolBox *)self metalContext];
  v10 = [v9 computePipelineStateFor:@"VideoDeghostingV3HWSim::YCbCrToRGB" constants:0];
  YCbCrToRGB = self->_YCbCrToRGB;
  self->_YCbCrToRGB = v10;

  v12 = [(GGMMetalToolBox *)self metalContext];
  v13 = [v12 computePipelineStateFor:@"VideoDeghostingV3HWSim::convertRGBToYuv" constants:0];
  convertRGBToYuv = self->_convertRGBToYuv;
  self->_convertRGBToYuv = v13;

  v15 = [(GGMMetalToolBox *)self metalContext];
  v16 = [v15 computePipelineStateFor:@"VideoDeghostingV3HWSim::backwarpWithHomographyYUV" constants:0];
  backwarpWithHomographyYUV = self->_backwarpWithHomographyYUV;
  self->_backwarpWithHomographyYUV = v16;

  v18 = [(GGMMetalToolBox *)self metalContext];
  v19 = [v18 computePipelineStateFor:@"VideoDeghostingV3HWSim::YUV2Gray" constants:0];
  YUV2Gray = self->_YUV2Gray;
  self->_YUV2Gray = v19;

  v21 = [(GGMMetalToolBox *)self metalContext];
  v22 = [v21 computePipelineStateFor:@"VideoDeghostingV3HWSim::hwSimFuseYUV" constants:0];
  hwSimFuseYUV = self->_hwSimFuseYUV;
  self->_hwSimFuseYUV = v22;

  return 0;
}

- (void)encodeCopyYUV:(id)a3 input:(id)a4 output:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = ([v8 width] + 15) >> 4;
  v12 = ([v8 height] + 15) >> 4;
  [v10 setComputePipelineState:self->_copyYUV];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  [v10 setImageblockWidth:16 height:16];
  v15[0] = v11;
  v15[1] = v12;
  v15[2] = 1;
  v13 = vdupq_n_s64(0x10uLL);
  v14 = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:&v13];
}

- (void)encodeHwSimTemporalRepairAndCopyInputYUVToCommandEncoder:(__n128)a3 input:(__n128)a4 frRef0:(__n128)a5 frRef1:(__n128)a6 hmgrphy0:(__n128)a7 hmgrphy1:(uint64_t)a8 temporalOutput:(void *)a9 inputCopy:(void *)a10 metaBuf:(void *)a11
{
  v44[0] = a2;
  v44[1] = a3;
  v44[2] = a4;
  v43[0] = a5;
  v43[1] = a6;
  v43[2] = a7;
  v21 = *(a1 + 736);
  v22 = a15;
  v23 = a14;
  v24 = a13;
  v25 = a12;
  v26 = a11;
  v27 = a10;
  v28 = a9;
  [v28 setComputePipelineState:v21];
  [v28 setTexture:v27 atIndex:0];

  [v28 setTexture:v26 atIndex:1];
  [v28 setTexture:v25 atIndex:2];

  [v28 setTexture:v24 atIndex:3];
  [v28 setTexture:v23 atIndex:4];

  [v28 setBuffer:v22 offset:0 atIndex:0];
  [v28 setBytes:v44 length:48 atIndex:1];
  [v28 setBytes:v43 length:48 atIndex:2];
  [v28 setImageblockWidth:32 height:32];
  v29 = [v22 contents];

  v30 = v29[3];
  v31.i64[0] = v30;
  v31.i64[1] = HIDWORD(v30);
  __asm { FMOV            V1.2D, #4.0 }

  v37 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v31), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v41 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v37, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v42 = 1;
  v39 = vdupq_n_s64(0x20uLL);
  v40 = 1;
  [v28 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
}

- (void)encodeHwSimFuseYUVToCommandEncoder:(id)a3 input:(id)a4 temporalMit:(id)a5 output:(id)a6 metaBuf:(id)a7
{
  hwSimFuseYUV = self->_hwSimFuseYUV;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [v16 setComputePipelineState:hwSimFuseYUV];
  [v16 setBuffer:v12 offset:0 atIndex:0];
  [v16 setTexture:v15 atIndex:0];

  [v16 setTexture:v14 atIndex:1];
  [v16 setTexture:v13 atIndex:2];

  [v16 setImageblockWidth:32 height:32];
  v17 = [v12 contents];

  v18 = v17[3];
  v19.i64[0] = v18;
  v19.i64[1] = HIDWORD(v18);
  __asm { FMOV            V1.2D, #4.0 }

  v25 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v19), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v29 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v25, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v30 = 1;
  v27 = vdupq_n_s64(0x20uLL);
  v28 = 1;
  [v16 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
}

- (void)encodeYCbCrToRGBToCommandBuffer:(id)a3 inputTexture:(id)a4 toOutTexture:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  v11 = v10;
  if (v10)
  {
    [v10 setComputePipelineState:self->_YCbCrToRGB];
    [v11 setTexture:v8 atIndex:0];
    [v11 setTexture:v9 atIndex:1];
    v14[0] = ([v8 width] + 15) >> 4;
    v14[1] = ([v8 height] + 15) >> 4;
    v14[2] = 1;
    v12 = vdupq_n_s64(0x10uLL);
    v13 = 1;
    [v11 dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
    [v11 endEncoding];
  }
}

- (void)encodeloadRGBAsYuvToCommandBuffer:(id)a3 inputBuf:(id)a4 toOutLuma:(id)a5 toOutCbCr:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [a3 computeCommandEncoder];
  v14 = v13;
  if (v13)
  {
    [v13 setComputePipelineState:self->_convertRGBToYuv];
    [v14 setTexture:v10 atIndex:0];
    [v14 setTexture:v11 atIndex:1];
    [v14 setTexture:v12 atIndex:2];
    v17[0] = ([v10 width] + 15) >> 4;
    v17[1] = ([v10 height] + 15) >> 4;
    v17[2] = 1;
    v15 = vdupq_n_s64(0x10uLL);
    v16 = 1;
    [v14 dispatchThreadgroups:v17 threadsPerThreadgroup:&v15];
    [v14 endEncoding];
  }
}

- (void)encodeBackWarpYUVToCommandBuffer:(__n128)a3 reference:(__n128)a4 ToOutput:(uint64_t)a5 withHomography:(void *)a6
{
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v11 = a8;
  v12 = a7;
  v13 = a6;
  v14 = ([v12 width] + 31) >> 5;
  v15 = ([v12 height] + 31) >> 5;
  v16 = [v13 computeCommandEncoder];

  [v16 setComputePipelineState:*(a1 + 760)];
  [v16 setTexture:v12 atIndex:0];

  [v16 setTexture:v11 atIndex:1];
  [v16 setBytes:v20 length:48 atIndex:0];
  [v16 setImageblockWidth:32 height:32];
  v19[0] = v14;
  v19[1] = v15;
  v19[2] = 1;
  v17 = vdupq_n_s64(0x20uLL);
  v18 = 1;
  [v16 dispatchThreadgroups:v19 threadsPerThreadgroup:&v17];
  [v16 endEncoding];
}

- (void)encodeYUV2GrayToCommandBuffer:(id)a3 InputYUV:(id)a4 ToOutput:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 computeCommandEncoder];
  v11 = v10;
  if (v10)
  {
    [v10 setComputePipelineState:self->_YUV2Gray];
    [v11 setTexture:v8 atIndex:0];
    [v11 setTexture:v9 atIndex:1];
    v14[0] = ([v9 width] + 15) >> 4;
    v14[1] = ([v9 height] + 15) >> 4;
    v14[2] = 1;
    v12 = vdupq_n_s64(0x10uLL);
    v13 = 1;
    [v11 dispatchThreadgroups:v14 threadsPerThreadgroup:&v12];
    [v11 endEncoding];
  }
}

- (__CVBuffer)convertInputYUVToRGB:(__CVBuffer *)a3
{
  CVPixelBufferGetWidth(a3);
  CVPixelBufferGetHeight(a3);
  PixelBuffer = CreatePixelBuffer();
  v6 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
  if (v6)
  {
    v7 = v6;
    CVBufferSetAttachments(PixelBuffer, v6, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v7);
  }

  [(GGMMetalToolBoxHWSim *)self YCbCrToRGB:a3 outputImage:PixelBuffer waitForComplete:0];
  return PixelBuffer;
}

- (void)convertRGBToYuv:(__CVBuffer *)a3 outputBuf:(__CVBuffer *)a4
{
  v13 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v7 = [(GGMMetalToolBox *)self metalContext];
  v8 = createTextureFromCVPixelBuffer(a3, v7, 0);

  v9 = [(GGMMetalToolBox *)self metalContext];
  v10 = createTextureFromCVPixelBuffer(a4, v9, 0);

  v11 = [(GGMMetalToolBox *)self metalContext];
  v12 = createTextureFromCVPixelBuffer(a4, v11, 1u);

  [(GGMMetalToolBoxHWSim *)self encodeloadRGBAsYuvToCommandBuffer:v13 inputBuf:v8 toOutLuma:v10 toOutCbCr:v12];
  [v13 setLabel:@"VideoDeghostingV3MetalToolBoxHWSim_RGB2YUV"];
  [(GGMMetalToolBoxHWSim *)self commitCmdBuffer:v13 waitForComplete:0];
}

- (void)backWarpYUV:(double)a3 warped:(double)a4 withHomography:(uint64_t)a5 waitForComplete:(__CVBuffer *)a6
{
  v19 = [a1[89] commandBuffer];
  v12 = [a1 metalContext];
  v13 = createSingleTextureFromYuvBuffer(a6, v12, 0, 0);

  v14 = [a1 metalContext];
  v15 = createSingleTextureFromYuvBuffer(a7, v14, 0, 0);

  [a1 encodeBackWarpYUVToCommandBuffer:v19 reference:v13 ToOutput:v15 withHomography:{a2, a3, a4}];
  [v19 setLabel:@"VideoDeghostingV3MetalToolBoxHWSim_BackWarp"];
  [a1 commitCmdBuffer:v19 waitForComplete:a8];
}

- (GGMMetalToolBoxHWSim)initWithMetalContext:(id)a3 tuningParamDict:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_7:
    v12 = 0;
    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = GGMMetalToolBoxHWSim;
  self = [(GGMMetalToolBox *)&v14 initWithMetalContext:v6 tuningParamDict:v7];
  if (!self)
  {
    goto LABEL_7;
  }

  v8 = [v6 device];
  device = self->_device;
  self->_device = v8;

  v10 = [v6 commandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = v10;

  if ([(GGMMetalToolBoxHWSim *)self _compileHWSimShaders])
  {
    goto LABEL_7;
  }

  self->_forceGpuWaitForComplete = 1;
  self = self;
  v12 = self;
LABEL_5:

  return v12;
}

@end