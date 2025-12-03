@interface VisionCoreLKTSparseGPU
- (CGSize)ref_size;
- (CGSize)tgt_size;
- (VisionCoreLKTSparseGPU)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales;
- (int)_enqueueFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueImagePyramidWithCommandBuffer:(id)buffer inputTexture:(id)texture index:(int)index;
- (int)_enqueueMatchingBidirectionalWithCommandBuffer:(id)buffer in_f0_tex:(id)in_f0_tex in_f1_tex:(id)in_f1_tex in_f0_dxdy_tex:(id)in_f0_dxdy_tex in_f1_dxdy_tex:(id)in_f1_dxdy_tex in_kpts_buf:(id)in_kpts_buf in_kptd_buf:(id)in_kptd_buf out_kptd_buf:(id)self0 out_status_buf:(id)self1 bidirectional_error:(float)self2 num_keypoints:(unsigned __int16)self3 scale_kpts:(float)self4 scale_kptd:(float)self5;
- (int)_enqueueMatchingWithCommandBuffer:(id)buffer in_f0_tex:(id)in_f0_tex in_f1_tex:(id)in_f1_tex in_f0_dxdy_tex:(id)in_f0_dxdy_tex in_kpts_buf:(id)in_kpts_buf in_kptd_buf:(id)in_kptd_buf out_kptd_buf:(id)out_kptd_buf out_status_buf:(id)self0 num_keypoints:(unsigned __int16)self1 scale_kpts:(float)self2 scale_kptd:(float)self3;
- (int)_setupBuffer;
- (int)computeMatchingBidirectionalFromReferenceTexture:(id)texture targetTexture:(id)targetTexture kptsBuffer:(id)buffer bidirectionalError:(float)error numKeypoints:(unsigned __int16)keypoints;
- (int)computeMatchingFromReferenceTexture:(id)texture targetTexture:(id)targetTexture kptsBuffer:(id)buffer numKeypoints:(unsigned __int16)keypoints;
- (void)_initMemory:(int)memory height:(int)height nscales:(int)nscales;
- (void)_setupPipelines;
- (void)dealloc;
- (void)waitUntilCompleted;
@end

@implementation VisionCoreLKTSparseGPU

- (CGSize)tgt_size
{
  width = self->_tgt_size.width;
  height = self->_tgt_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)ref_size
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int)_enqueueMatchingBidirectionalWithCommandBuffer:(id)buffer in_f0_tex:(id)in_f0_tex in_f1_tex:(id)in_f1_tex in_f0_dxdy_tex:(id)in_f0_dxdy_tex in_f1_dxdy_tex:(id)in_f1_dxdy_tex in_kpts_buf:(id)in_kpts_buf in_kptd_buf:(id)in_kptd_buf out_kptd_buf:(id)self0 out_status_buf:(id)self1 bidirectional_error:(float)self2 num_keypoints:(unsigned __int16)self3 scale_kpts:(float)self4 scale_kptd:(float)self5
{
  v39[0] = num_keypoints;
  *&v39[1] = bidirectional_error;
  *&v39[2] = scale_kpts;
  *&v39[3] = scale_kptd;
  v21 = self->_computePipelines[5];
  out_status_bufCopy = out_status_buf;
  out_kptd_bufCopy = out_kptd_buf;
  in_kptd_bufCopy = in_kptd_buf;
  in_kpts_bufCopy = in_kpts_buf;
  in_f1_dxdy_texCopy = in_f1_dxdy_tex;
  in_f0_dxdy_texCopy = in_f0_dxdy_tex;
  in_f1_texCopy = in_f1_tex;
  in_f0_texCopy = in_f0_tex;
  bufferCopy = buffer;
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v21 maxTotalThreadsPerThreadgroup];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computePipelines[5]];
  [computeCommandEncoder setTexture:in_f0_texCopy atIndex:0];

  [computeCommandEncoder setTexture:in_f1_texCopy atIndex:1];
  [computeCommandEncoder setTexture:in_f0_dxdy_texCopy atIndex:2];

  [computeCommandEncoder setTexture:in_f1_dxdy_texCopy atIndex:3];
  [computeCommandEncoder setBuffer:in_kpts_bufCopy offset:0 atIndex:0];

  [computeCommandEncoder setBuffer:in_kptd_bufCopy offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:out_kptd_bufCopy offset:0 atIndex:2];

  [computeCommandEncoder setBuffer:out_status_bufCopy offset:0 atIndex:3];
  [computeCommandEncoder setBytes:v39 length:16 atIndex:4];
  v37 = (maxTotalThreadsPerThreadgroup + num_keypoints - 1) / maxTotalThreadsPerThreadgroup;
  v38 = vdupq_n_s64(1uLL);
  v35 = maxTotalThreadsPerThreadgroup;
  v36 = v38;
  [computeCommandEncoder dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_enqueueMatchingWithCommandBuffer:(id)buffer in_f0_tex:(id)in_f0_tex in_f1_tex:(id)in_f1_tex in_f0_dxdy_tex:(id)in_f0_dxdy_tex in_kpts_buf:(id)in_kpts_buf in_kptd_buf:(id)in_kptd_buf out_kptd_buf:(id)out_kptd_buf out_status_buf:(id)self0 num_keypoints:(unsigned __int16)self1 scale_kpts:(float)self2 scale_kptd:(float)self3
{
  num_keypointsCopy = num_keypoints;
  scale_kptsCopy = scale_kpts;
  scale_kptdCopy = scale_kptd;
  v20 = self->_computePipelines[4];
  out_status_bufCopy = out_status_buf;
  out_kptd_bufCopy = out_kptd_buf;
  in_kptd_bufCopy = in_kptd_buf;
  in_kpts_bufCopy = in_kpts_buf;
  in_f0_dxdy_texCopy = in_f0_dxdy_tex;
  in_f1_texCopy = in_f1_tex;
  in_f0_texCopy = in_f0_tex;
  bufferCopy = buffer;
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v20 maxTotalThreadsPerThreadgroup];
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computePipelines[4]];
  [computeCommandEncoder setTexture:in_f0_texCopy atIndex:0];

  [computeCommandEncoder setTexture:in_f1_texCopy atIndex:1];
  [computeCommandEncoder setTexture:in_f0_dxdy_texCopy atIndex:2];

  [computeCommandEncoder setBuffer:in_kpts_bufCopy offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:in_kptd_bufCopy offset:0 atIndex:1];

  [computeCommandEncoder setBuffer:out_kptd_bufCopy offset:0 atIndex:2];
  [computeCommandEncoder setBuffer:out_status_bufCopy offset:0 atIndex:3];

  [computeCommandEncoder setBytes:&num_keypointsCopy length:16 atIndex:4];
  v34 = (maxTotalThreadsPerThreadgroup + num_keypoints - 1) / maxTotalThreadsPerThreadgroup;
  v35 = vdupq_n_s64(1uLL);
  v32 = maxTotalThreadsPerThreadgroup;
  v33 = v35;
  [computeCommandEncoder dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_enqueueFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[3]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];

  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[3] threadExecutionWidth];
  LODWORD(out_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[3] maxTotalThreadsPerThreadgroup]/ buffer;
  v11 = (buffer + [in_texCopy width] - 1) / buffer;
  LODWORD(self) = [in_texCopy height];

  v14[0] = v11;
  v14[1] = (out_texCopy + self - 1) / out_texCopy;
  v14[2] = 1;
  v13[0] = buffer;
  v13[1] = out_texCopy;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_enqueueFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[2]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];

  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  LODWORD(out_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[2] maxTotalThreadsPerThreadgroup]/ buffer;
  v11 = (buffer + [in_texCopy width] - 1) / buffer;
  LODWORD(self) = [in_texCopy height];

  v14[0] = v11;
  v14[1] = (out_texCopy + self - 1) / out_texCopy;
  v14[2] = 1;
  v13[0] = buffer;
  v13[1] = out_texCopy;
  v13[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_enqueueImagePyramidWithCommandBuffer:(id)buffer inputTexture:(id)texture index:(int)index
{
  bufferCopy = buffer;
  textureCopy = texture;
  v24 = textureCopy;
  if ([textureCopy pixelFormat] == 10)
  {
    blitCommandEncoder = [bufferCopy blitCommandEncoder];
    [blitCommandEncoder copyFromTexture:textureCopy toTexture:self->_I_tex[index][0]];
  }

  else
  {
    blitCommandEncoder = [bufferCopy computeCommandEncoder];
    [blitCommandEncoder setComputePipelineState:self->_computePipelines[0]];
    [blitCommandEncoder setTexture:textureCopy atIndex:0];
    [blitCommandEncoder setTexture:self->_I_tex[index][0] atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
    v11 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v30 = (threadExecutionWidth + [textureCopy width] - 1) / threadExecutionWidth;
    v31 = (v11 + [textureCopy height] - 1) / v11;
    v32 = 1;
    v27 = threadExecutionWidth;
    v28 = v11;
    v29 = 1;
    [blitCommandEncoder dispatchThreadgroups:&v30 threadsPerThreadgroup:&v27];
  }

  [blitCommandEncoder endEncoding];

  if (self->_nscales >= 2)
  {
    v12 = &self->_I_tex[index][1];
    v13 = 1;
    do
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v26 = v14;
      computeCommandEncoder = [bufferCopy computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:self->_computePipelines[1]];
      [computeCommandEncoder setTexture:v26 atIndex:0];
      [computeCommandEncoder setTexture:v15 atIndex:1];
      threadExecutionWidth2 = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
      v18 = bufferCopy;
      v19 = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
      v20 = (threadExecutionWidth2 + [v15 width] - 1) / threadExecutionWidth2;
      height = [v15 height];

      v30 = v20;
      v31 = (v19 + height - 1) / v19;
      v32 = 1;
      v22 = v19;
      bufferCopy = v18;
      v27 = threadExecutionWidth2;
      v28 = v22;
      v29 = 1;
      [computeCommandEncoder dispatchThreadgroups:&v30 threadsPerThreadgroup:&v27];
      [computeCommandEncoder endEncoding];

      ++v13;
      ++v12;
    }

    while (v13 < self->_nscales);
  }

  return 0;
}

- (int)_setupBuffer
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  v5 = self->_tgt_size.width;
  v6 = self->_tgt_size.height;
  PixelBuffer = CreatePixelBuffer(width, height, 0x32433068u);
  self->_F0_pxbuf = PixelBuffer;
  if (PixelBuffer)
  {
    v8 = CreatePixelBuffer(v5, v6, 0x32433068u);
    self->_F1_pxbuf = v8;
    if (v8)
    {
      v9 = CreatePixelBuffer(width, height, 0x52476841u);
      self->_F0_dxdy_pxbuf = v9;
      if (v9)
      {
        v10 = CreatePixelBuffer(v5, v6, 0x52476841u);
        self->_F1_dxdy_pxbuf = v10;
        if (v10)
        {
          if (self->_nscales < 1)
          {
            return 0;
          }

          v11 = 0;
          v12 = vmovn_s64(vcvtq_s64_f64(self->_tgt_size));
          v13 = vmovn_s64(vcvtq_s64_f64(self->_ref_size));
          v14 = self->_I_tex[1];
          for (i = &self->_tgt_pyr_size[0].height; ; i += 2)
          {
            v16 = v13.i32[0];
            v17 = v13.i32[0];
            v18 = v13.i32[1];
            v19 = v13.i32[1];
            v20 = v12.i32[0];
            v21 = v12.i32[0];
            v22 = v12.i32[1];
            v23 = v12.i32[1];
            *(i - 21) = v13.i32[0];
            *(i - 20) = v13.i32[1];
            *(i - 1) = v12.i32[0];
            *i = v12.i32[1];
            v24 = [(VisionCoreMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:self->_F0_pxbuf pixelFormat:65 textureSize:0 plane:v13.i32[0], v13.i32[1], v55];
            v25 = v14[12];
            v14[12] = v24;

            if (!v14[12])
            {
              break;
            }

            v26 = [(VisionCoreMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:self->_F1_pxbuf pixelFormat:65 textureSize:0 plane:v21, v23];
            v27 = v14[22];
            v14[22] = v26;

            if (!v14[22])
            {
              break;
            }

            v28 = [(VisionCoreMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:self->_F0_dxdy_pxbuf pixelFormat:115 textureSize:0 plane:v17, v19];
            v29 = v14[34];
            v14[34] = v28;

            if (!v14[34])
            {
              break;
            }

            v30 = [(VisionCoreMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:self->_F1_dxdy_pxbuf pixelFormat:115 textureSize:0 plane:v21, v23];
            v31 = v14[44];
            v14[44] = v30;

            if (!v14[44])
            {
              break;
            }

            v32 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v16 height:v18 mipmapped:0];
            [v32 setUsage:19];
            device = [(VisionCoreMetalContext *)self->_mtlContext device];
            v34 = [device newTextureWithDescriptor:v32];
            v35 = *(v14 - 10);
            *(v14 - 10) = v34;

            v36 = v16 & 1;
            if (v16 < 0)
            {
              v36 = -v36;
            }

            v37 = v18 & 1;
            if (v18 < 0)
            {
              v37 = -v37;
            }

            v38 = v36 + v16;
            if (v38 / 2 >= 0)
            {
              v39 = (v38 / 2) & 1;
            }

            else
            {
              v39 = -((v38 / 2) & 1);
            }

            v40 = v37 + v18;
            if (v40 / 2 >= 0)
            {
              v41 = (v40 / 2) & 1;
            }

            else
            {
              v41 = -((v40 / 2) & 1);
            }

            v42.i32[0] = (v38 + 2 * v39 + 1) / 2;
            v42.i32[1] = (v40 + 2 * v41 + 1) / 2;
            v56 = v42;

            v43 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v20 height:v22 mipmapped:0];
            [v43 setUsage:19];
            device2 = [(VisionCoreMetalContext *)self->_mtlContext device];
            v45 = [device2 newTextureWithDescriptor:v43];
            v46 = *v14;
            *v14++ = v45;

            v48 = v20 & 1;
            if (v20 < 0)
            {
              v48 = -v48;
            }

            v49 = v22 & 1;
            if (v22 < 0)
            {
              v49 = -v49;
            }

            v50 = v48 + v20;
            if (v50 / 2 >= 0)
            {
              v51 = (v50 / 2) & 1;
            }

            else
            {
              v51 = -((v50 / 2) & 1);
            }

            v52 = v49 + v22;
            if (v52 / 2 >= 0)
            {
              v53 = (v52 / 2) & 1;
            }

            else
            {
              v53 = -((v52 / 2) & 1);
            }

            LODWORD(v47) = (v50 + 2 * v51 + 1) / 2;
            DWORD1(v47) = (v52 + 2 * v53 + 1) / 2;
            v55 = v47;

            v12 = v55;
            v13 = v56;
            if (++v11 >= self->_nscales)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (void)_setupPipelines
{
  v3 = 0;
  v4 = 0;
  computePipelines = self->_computePipelines;
  do
  {
    v6 = v4;
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:kKernelNames[v3]];
    library = [(VisionCoreMetalContext *)self->_mtlContext library];
    v13 = [library newFunctionWithName:v7];

    device = [(VisionCoreMetalContext *)self->_mtlContext device];
    v10 = [device newComputePipelineStateWithFunction:v13 error:0];

    objc_storeStrong(computePipelines, v10);
    threadExecutionWidth = [v10 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (threadExecutionWidth > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v10 threadExecutionWidth];
    }

    self->_maxThreadExecutionWidth = maxThreadExecutionWidth;

    ++v3;
    ++computePipelines;
    v4 = v13;
  }

  while (v3 != 6);
}

- (void)_initMemory:(int)memory height:(int)height nscales:(int)nscales
{
  v7 = 0;
  if (memory >= 8 && height >= 8)
  {
    v7 = 0;
    heightCopy = height;
    memoryCopy = memory;
    do
    {
      v10 = (memoryCopy & 1) + memoryCopy;
      if (v10 / 2 >= 0)
      {
        v11 = (v10 / 2) & 1;
      }

      else
      {
        v11 = -((v10 / 2) & 1);
      }

      v12 = (heightCopy & 1) + heightCopy;
      if (v12 / 2 >= 0)
      {
        v13 = (v12 / 2) & 1;
      }

      else
      {
        v13 = -((v12 / 2) & 1);
      }

      v14 = v10 + 2 * v11 + 1;
      memoryCopy = v14 >> 1;
      v15 = v12 + 2 * v13 + 1;
      heightCopy = v15 >> 1;
      ++v7;
    }

    while (v14 >= 16 && v15 > 15);
  }

  self->_ref_size.width = memory;
  self->_ref_size.height = height;
  self->_tgt_size.width = memory;
  self->_tgt_size.height = height;
  if (nscales >= 0)
  {
    nscalesCopy = nscales;
  }

  else
  {
    nscalesCopy = v7;
  }

  self->_nscales = nscalesCopy;
  self->_maxThreadExecutionWidth = 0;
  if (nscalesCopy > v7 || nscalesCopy >= 10)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:@"Invalid parameter" reason:@"The number of scales specified is too large" userInfo:{0, v5, v6}];
    objc_exception_throw(v18);
  }
}

- (int)computeMatchingBidirectionalFromReferenceTexture:(id)texture targetTexture:(id)targetTexture kptsBuffer:(id)buffer bidirectionalError:(float)error numKeypoints:(unsigned __int16)keypoints
{
  keypointsCopy = keypoints;
  v45[2] = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  targetTextureCopy = targetTexture;
  bufferCopy = buffer;
  v45[0] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:keypointsCopy data:0];
  v45[1] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:keypointsCopy data:0];
  v41 = keypointsCopy;
  v42 = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:1 width:keypointsCopy data:0];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKTSparse::Pyramid"];
  v40 = textureCopy;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:commandBuffer inputTexture:textureCopy index:0];
  v39 = targetTextureCopy;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:commandBuffer inputTexture:targetTextureCopy index:1];
  [commandBuffer commit];
  nscales = self->_nscales;
  if (nscales < 1)
  {
    v33 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &self->_tgt_pyr_size[9].height + nscales;
    v18 = commandBuffer;
    do
    {
      v19 = nscales - 1;
      v20 = *v17;
      v21 = *(v17 + 10);
      v43 = v16 ^ 1;
      v22 = v45[v16 ^ 1];
      v23 = bufferCopy;
      v24 = 1.0 / (1 << (nscales - 1));
      if (nscales != self->_nscales)
      {
        v23 = v45[v16];
        v24 = 2.0;
      }

      v25 = v23;
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LKT::Matching level %d", nscales - 1];
      [commandBuffer setLabel:v26];

      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:commandBuffer in_tex:v20 out_tex:*(v17 + 22)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:commandBuffer in_tex:v21 out_tex:*(v17 + 32)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:*(v17 + 22) out_tex:*(v17 + 44)];
      if (nscales == 1)
      {
        [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:*(v17 + 32) out_tex:self->_F1_dxdy_tex[0]];
        LOWORD(v38) = v41;
        *&v29 = error;
        *&v30 = 1.0 / (1 << v19);
        *&v31 = v24;
        [(VisionCoreLKTSparseGPU *)self _enqueueMatchingBidirectionalWithCommandBuffer:commandBuffer in_f0_tex:*(v17 + 22) in_f1_tex:*(v17 + 32) in_f0_dxdy_tex:*(v17 + 44) in_f1_dxdy_tex:self->_F1_dxdy_tex[0] in_kpts_buf:bufferCopy in_kptd_buf:v29 out_kptd_buf:v30 out_status_buf:v31 bidirectional_error:v25 num_keypoints:v22 scale_kpts:v42 scale_kptd:v38];
      }

      else
      {
        LOWORD(v37) = v41;
        *&v27 = 1.0 / (1 << v19);
        *&v28 = v24;
        [(VisionCoreLKTSparseGPU *)self _enqueueMatchingWithCommandBuffer:commandBuffer in_f0_tex:*(v17 + 22) in_f1_tex:*(v17 + 32) in_f0_dxdy_tex:*(v17 + 44) in_kpts_buf:bufferCopy in_kptd_buf:v25 out_kptd_buf:v27 out_status_buf:v28 num_keypoints:v22 scale_kpts:v42 scale_kptd:v37];
      }

      [commandBuffer commit];

      v32 = nscales;
      --v17;
      --nscales;
      v18 = commandBuffer;
      v33 = v43;
      v16 = v43;
    }

    while (v32 > 1);
  }

  objc_storeStrong(&self->_kptd_buf, v45[v33]);
  status_buf = self->_status_buf;
  self->_status_buf = v42;

  for (i = 1; i != -1; --i)
  {
  }

  return 0;
}

- (int)computeMatchingFromReferenceTexture:(id)texture targetTexture:(id)targetTexture kptsBuffer:(id)buffer numKeypoints:(unsigned __int16)keypoints
{
  keypointsCopy = keypoints;
  v38[2] = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  targetTextureCopy = targetTexture;
  bufferCopy = buffer;
  v38[0] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:keypointsCopy data:0];
  v38[1] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:keypointsCopy data:0];
  v34 = keypointsCopy;
  v35 = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:1 width:keypointsCopy data:0];
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKTSparse::Pyramid"];
  v33 = textureCopy;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:commandBuffer inputTexture:textureCopy index:0];
  v32 = targetTextureCopy;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:commandBuffer inputTexture:targetTextureCopy index:1];
  [commandBuffer commit];
  nscales = self->_nscales;
  if (nscales < 1)
  {
    v27 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &self->_tgt_pyr_size[9].height + nscales;
    v16 = commandBuffer;
    v17 = bufferCopy;
    do
    {
      v18 = *v15;
      v19 = *(v15 + 10);
      commandQueue = self->_commandQueue;
      v37 = v38[v14 ^ 1];
      commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LKT::Matching level %d", nscales - 1];
      [commandBuffer setLabel:v21];

      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:commandBuffer in_tex:v18 out_tex:*(v15 + 22)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:commandBuffer in_tex:v19 out_tex:*(v15 + 32)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:*(v15 + 22) out_tex:*(v15 + 44)];
      v22 = 1.0 / (1 << (nscales - 1));
      if (nscales != self->_nscales)
      {
        v17 = v38[v14];
        v22 = 2.0;
      }

      v23 = v17;
      LOWORD(v31) = v34;
      v17 = bufferCopy;
      *&v24 = 1.0 / (1 << (nscales - 1));
      *&v25 = v22;
      [(VisionCoreLKTSparseGPU *)self _enqueueMatchingWithCommandBuffer:commandBuffer in_f0_tex:*(v15 + 22) in_f1_tex:*(v15 + 32) in_f0_dxdy_tex:*(v15 + 44) in_kpts_buf:bufferCopy in_kptd_buf:v23 out_kptd_buf:v24 out_status_buf:v25 num_keypoints:v37 scale_kpts:v35 scale_kptd:v31];

      [commandBuffer commit];
      v26 = nscales;
      --v15;
      --nscales;
      v16 = commandBuffer;
      v27 = v14 ^ 1;
      v14 ^= 1uLL;
    }

    while (v26 > 1);
  }

  objc_storeStrong(&self->_kptd_buf, v38[v27]);
  status_buf = self->_status_buf;
  self->_status_buf = v35;

  for (i = 1; i != -1; --i)
  {
  }

  return 0;
}

- (void)waitUntilCompleted
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT:waitUntilCompleted"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_F0_pxbuf);
  CVPixelBufferRelease(self->_F1_pxbuf);
  CVPixelBufferRelease(self->_F0_dxdy_pxbuf);
  CVPixelBufferRelease(self->_F1_dxdy_pxbuf);
  *&self->_F0_pxbuf = 0u;
  *&self->_F0_dxdy_pxbuf = 0u;
  v3.receiver = self;
  v3.super_class = VisionCoreLKTSparseGPU;
  [(VisionCoreLKTSparseGPU *)&v3 dealloc];
}

- (VisionCoreLKTSparseGPU)initWithMetalContext:(id)context width:(int)width height:(int)height nscales:(int)nscales
{
  v6 = *&nscales;
  v7 = *&height;
  v8 = *&width;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = VisionCoreLKTSparseGPU;
  v12 = [(VisionCoreLKTSparseGPU *)&v18 init];
  v13 = v12;
  if (v12)
  {
    if ((v7 | v8))
    {
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:@"Invalid parameter" reason:@"Odd image dimensions are not supported" userInfo:0];
      objc_exception_throw(v17);
    }

    objc_storeStrong(&v12->_mtlContext, context);
    commandQueue = [contextCopy commandQueue];
    commandQueue = v13->_commandQueue;
    v13->_commandQueue = commandQueue;

    [(VisionCoreLKTSparseGPU *)v13 _setDefaultParameters];
    [(VisionCoreLKTSparseGPU *)v13 _initMemory:v8 height:v7 nscales:v6];
    [(VisionCoreLKTSparseGPU *)v13 _setupPipelines];
    [(VisionCoreLKTSparseGPU *)v13 _setupBuffer];
  }

  return v13;
}

@end