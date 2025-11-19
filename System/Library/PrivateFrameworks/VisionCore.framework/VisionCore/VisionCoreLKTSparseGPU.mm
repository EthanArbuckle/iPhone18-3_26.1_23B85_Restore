@interface VisionCoreLKTSparseGPU
- (CGSize)ref_size;
- (CGSize)tgt_size;
- (VisionCoreLKTSparseGPU)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 nscales:(int)a6;
- (int)_enqueueFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_enqueueFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_enqueueImagePyramidWithCommandBuffer:(id)a3 inputTexture:(id)a4 index:(int)a5;
- (int)_enqueueMatchingBidirectionalWithCommandBuffer:(id)a3 in_f0_tex:(id)a4 in_f1_tex:(id)a5 in_f0_dxdy_tex:(id)a6 in_f1_dxdy_tex:(id)a7 in_kpts_buf:(id)a8 in_kptd_buf:(id)a9 out_kptd_buf:(id)a10 out_status_buf:(id)a11 bidirectional_error:(float)a12 num_keypoints:(unsigned __int16)a13 scale_kpts:(float)a14 scale_kptd:(float)a15;
- (int)_enqueueMatchingWithCommandBuffer:(id)a3 in_f0_tex:(id)a4 in_f1_tex:(id)a5 in_f0_dxdy_tex:(id)a6 in_kpts_buf:(id)a7 in_kptd_buf:(id)a8 out_kptd_buf:(id)a9 out_status_buf:(id)a10 num_keypoints:(unsigned __int16)a11 scale_kpts:(float)a12 scale_kptd:(float)a13;
- (int)_setupBuffer;
- (int)computeMatchingBidirectionalFromReferenceTexture:(id)a3 targetTexture:(id)a4 kptsBuffer:(id)a5 bidirectionalError:(float)a6 numKeypoints:(unsigned __int16)a7;
- (int)computeMatchingFromReferenceTexture:(id)a3 targetTexture:(id)a4 kptsBuffer:(id)a5 numKeypoints:(unsigned __int16)a6;
- (void)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5;
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

- (int)_enqueueMatchingBidirectionalWithCommandBuffer:(id)a3 in_f0_tex:(id)a4 in_f1_tex:(id)a5 in_f0_dxdy_tex:(id)a6 in_f1_dxdy_tex:(id)a7 in_kpts_buf:(id)a8 in_kptd_buf:(id)a9 out_kptd_buf:(id)a10 out_status_buf:(id)a11 bidirectional_error:(float)a12 num_keypoints:(unsigned __int16)a13 scale_kpts:(float)a14 scale_kptd:(float)a15
{
  v39[0] = a13;
  *&v39[1] = a12;
  *&v39[2] = a14;
  *&v39[3] = a15;
  v21 = self->_computePipelines[5];
  v34 = a11;
  v33 = a10;
  v32 = a9;
  v31 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [(MTLComputePipelineState *)v21 maxTotalThreadsPerThreadgroup];
  v28 = [v26 computeCommandEncoder];

  [v28 setComputePipelineState:self->_computePipelines[5]];
  [v28 setTexture:v25 atIndex:0];

  [v28 setTexture:v24 atIndex:1];
  [v28 setTexture:v23 atIndex:2];

  [v28 setTexture:v22 atIndex:3];
  [v28 setBuffer:v31 offset:0 atIndex:0];

  [v28 setBuffer:v32 offset:0 atIndex:1];
  [v28 setBuffer:v33 offset:0 atIndex:2];

  [v28 setBuffer:v34 offset:0 atIndex:3];
  [v28 setBytes:v39 length:16 atIndex:4];
  v37 = (v27 + a13 - 1) / v27;
  v38 = vdupq_n_s64(1uLL);
  v35 = v27;
  v36 = v38;
  [v28 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v35];
  [v28 endEncoding];

  return 0;
}

- (int)_enqueueMatchingWithCommandBuffer:(id)a3 in_f0_tex:(id)a4 in_f1_tex:(id)a5 in_f0_dxdy_tex:(id)a6 in_kpts_buf:(id)a7 in_kptd_buf:(id)a8 out_kptd_buf:(id)a9 out_status_buf:(id)a10 num_keypoints:(unsigned __int16)a11 scale_kpts:(float)a12 scale_kptd:(float)a13
{
  v36 = a11;
  v37 = a12;
  v38 = a13;
  v20 = self->_computePipelines[4];
  v31 = a10;
  v30 = a9;
  v29 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [(MTLComputePipelineState *)v20 maxTotalThreadsPerThreadgroup];
  v27 = [v25 computeCommandEncoder];

  [v27 setComputePipelineState:self->_computePipelines[4]];
  [v27 setTexture:v24 atIndex:0];

  [v27 setTexture:v23 atIndex:1];
  [v27 setTexture:v22 atIndex:2];

  [v27 setBuffer:v21 offset:0 atIndex:0];
  [v27 setBuffer:v29 offset:0 atIndex:1];

  [v27 setBuffer:v30 offset:0 atIndex:2];
  [v27 setBuffer:v31 offset:0 atIndex:3];

  [v27 setBytes:&v36 length:16 atIndex:4];
  v34 = (v26 + a11 - 1) / v26;
  v35 = vdupq_n_s64(1uLL);
  v32 = v26;
  v33 = v35;
  [v27 dispatchThreadgroups:&v34 threadsPerThreadgroup:&v32];
  [v27 endEncoding];

  return 0;
}

- (int)_enqueueFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_computePipelines[3]];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  LODWORD(a3) = [(MTLComputePipelineState *)self->_computePipelines[3] threadExecutionWidth];
  LODWORD(v8) = [(MTLComputePipelineState *)self->_computePipelines[3] maxTotalThreadsPerThreadgroup]/ a3;
  v11 = (a3 + [v9 width] - 1) / a3;
  LODWORD(self) = [v9 height];

  v14[0] = v11;
  v14[1] = (v8 + self - 1) / v8;
  v14[2] = 1;
  v13[0] = a3;
  v13[1] = v8;
  v13[2] = 1;
  [v10 dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [v10 endEncoding];

  return 0;
}

- (int)_enqueueFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_computePipelines[2]];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  LODWORD(a3) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  LODWORD(v8) = [(MTLComputePipelineState *)self->_computePipelines[2] maxTotalThreadsPerThreadgroup]/ a3;
  v11 = (a3 + [v9 width] - 1) / a3;
  LODWORD(self) = [v9 height];

  v14[0] = v11;
  v14[1] = (v8 + self - 1) / v8;
  v14[2] = 1;
  v13[0] = a3;
  v13[1] = v8;
  v13[2] = 1;
  [v10 dispatchThreadgroups:v14 threadsPerThreadgroup:v13];
  [v10 endEncoding];

  return 0;
}

- (int)_enqueueImagePyramidWithCommandBuffer:(id)a3 inputTexture:(id)a4 index:(int)a5
{
  v7 = a3;
  v8 = a4;
  v24 = v8;
  if ([v8 pixelFormat] == 10)
  {
    v9 = [v7 blitCommandEncoder];
    [v9 copyFromTexture:v8 toTexture:self->_I_tex[a5][0]];
  }

  else
  {
    v9 = [v7 computeCommandEncoder];
    [v9 setComputePipelineState:self->_computePipelines[0]];
    [v9 setTexture:v8 atIndex:0];
    [v9 setTexture:self->_I_tex[a5][0] atIndex:1];
    v10 = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
    v11 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup]/ v10;
    v30 = (v10 + [v8 width] - 1) / v10;
    v31 = (v11 + [v8 height] - 1) / v11;
    v32 = 1;
    v27 = v10;
    v28 = v11;
    v29 = 1;
    [v9 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v27];
  }

  [v9 endEncoding];

  if (self->_nscales >= 2)
  {
    v12 = &self->_I_tex[a5][1];
    v13 = 1;
    do
    {
      v14 = *(v12 - 1);
      v15 = *v12;
      v26 = v14;
      v16 = [v7 computeCommandEncoder];
      [v16 setComputePipelineState:self->_computePipelines[1]];
      [v16 setTexture:v26 atIndex:0];
      [v16 setTexture:v15 atIndex:1];
      v17 = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
      v18 = v7;
      v19 = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup]/ v17;
      v20 = (v17 + [v15 width] - 1) / v17;
      v21 = [v15 height];

      v30 = v20;
      v31 = (v19 + v21 - 1) / v19;
      v32 = 1;
      v22 = v19;
      v7 = v18;
      v27 = v17;
      v28 = v22;
      v29 = 1;
      [v16 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v27];
      [v16 endEncoding];

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
            v33 = [(VisionCoreMetalContext *)self->_mtlContext device];
            v34 = [v33 newTextureWithDescriptor:v32];
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
            v44 = [(VisionCoreMetalContext *)self->_mtlContext device];
            v45 = [v44 newTextureWithDescriptor:v43];
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
    v8 = [(VisionCoreMetalContext *)self->_mtlContext library];
    v13 = [v8 newFunctionWithName:v7];

    v9 = [(VisionCoreMetalContext *)self->_mtlContext device];
    v10 = [v9 newComputePipelineStateWithFunction:v13 error:0];

    objc_storeStrong(computePipelines, v10);
    v11 = [v10 threadExecutionWidth];
    maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
    if (v11 > maxThreadExecutionWidth)
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

- (void)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5
{
  v7 = 0;
  if (a3 >= 8 && a4 >= 8)
  {
    v7 = 0;
    v8 = a4;
    v9 = a3;
    do
    {
      v10 = (v9 & 1) + v9;
      if (v10 / 2 >= 0)
      {
        v11 = (v10 / 2) & 1;
      }

      else
      {
        v11 = -((v10 / 2) & 1);
      }

      v12 = (v8 & 1) + v8;
      if (v12 / 2 >= 0)
      {
        v13 = (v12 / 2) & 1;
      }

      else
      {
        v13 = -((v12 / 2) & 1);
      }

      v14 = v10 + 2 * v11 + 1;
      v9 = v14 >> 1;
      v15 = v12 + 2 * v13 + 1;
      v8 = v15 >> 1;
      ++v7;
    }

    while (v14 >= 16 && v15 > 15);
  }

  self->_ref_size.width = a3;
  self->_ref_size.height = a4;
  self->_tgt_size.width = a3;
  self->_tgt_size.height = a4;
  if (a5 >= 0)
  {
    v17 = a5;
  }

  else
  {
    v17 = v7;
  }

  self->_nscales = v17;
  self->_maxThreadExecutionWidth = 0;
  if (v17 > v7 || v17 >= 10)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:@"Invalid parameter" reason:@"The number of scales specified is too large" userInfo:{0, v5, v6}];
    objc_exception_throw(v18);
  }
}

- (int)computeMatchingBidirectionalFromReferenceTexture:(id)a3 targetTexture:(id)a4 kptsBuffer:(id)a5 bidirectionalError:(float)a6 numKeypoints:(unsigned __int16)a7
{
  v7 = a7;
  v45[2] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v44 = a5;
  v45[0] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:v7 data:0];
  v45[1] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:v7 data:0];
  v41 = v7;
  v42 = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:1 width:v7 data:0];
  v14 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v14 setLabel:@"LKTSparse::Pyramid"];
  v40 = v12;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:v14 inputTexture:v12 index:0];
  v39 = v13;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:v14 inputTexture:v13 index:1];
  [v14 commit];
  nscales = self->_nscales;
  if (nscales < 1)
  {
    v33 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &self->_tgt_pyr_size[9].height + nscales;
    v18 = v14;
    do
    {
      v19 = nscales - 1;
      v20 = *v17;
      v21 = *(v17 + 10);
      v43 = v16 ^ 1;
      v22 = v45[v16 ^ 1];
      v23 = v44;
      v24 = 1.0 / (1 << (nscales - 1));
      if (nscales != self->_nscales)
      {
        v23 = v45[v16];
        v24 = 2.0;
      }

      v25 = v23;
      v14 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LKT::Matching level %d", nscales - 1];
      [v14 setLabel:v26];

      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:v14 in_tex:v20 out_tex:*(v17 + 22)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:v14 in_tex:v21 out_tex:*(v17 + 32)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesDerivativesWithCommandBuffer:v14 in_tex:*(v17 + 22) out_tex:*(v17 + 44)];
      if (nscales == 1)
      {
        [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesDerivativesWithCommandBuffer:v14 in_tex:*(v17 + 32) out_tex:self->_F1_dxdy_tex[0]];
        LOWORD(v38) = v41;
        *&v29 = a6;
        *&v30 = 1.0 / (1 << v19);
        *&v31 = v24;
        [(VisionCoreLKTSparseGPU *)self _enqueueMatchingBidirectionalWithCommandBuffer:v14 in_f0_tex:*(v17 + 22) in_f1_tex:*(v17 + 32) in_f0_dxdy_tex:*(v17 + 44) in_f1_dxdy_tex:self->_F1_dxdy_tex[0] in_kpts_buf:v44 in_kptd_buf:v29 out_kptd_buf:v30 out_status_buf:v31 bidirectional_error:v25 num_keypoints:v22 scale_kpts:v42 scale_kptd:v38];
      }

      else
      {
        LOWORD(v37) = v41;
        *&v27 = 1.0 / (1 << v19);
        *&v28 = v24;
        [(VisionCoreLKTSparseGPU *)self _enqueueMatchingWithCommandBuffer:v14 in_f0_tex:*(v17 + 22) in_f1_tex:*(v17 + 32) in_f0_dxdy_tex:*(v17 + 44) in_kpts_buf:v44 in_kptd_buf:v25 out_kptd_buf:v27 out_status_buf:v28 num_keypoints:v22 scale_kpts:v42 scale_kptd:v37];
      }

      [v14 commit];

      v32 = nscales;
      --v17;
      --nscales;
      v18 = v14;
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

- (int)computeMatchingFromReferenceTexture:(id)a3 targetTexture:(id)a4 kptsBuffer:(id)a5 numKeypoints:(unsigned __int16)a6
{
  v6 = a6;
  v38[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v36 = a5;
  v38[0] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:v6 data:0];
  v38[1] = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:65 width:v6 data:0];
  v34 = v6;
  v35 = [(VisionCoreMetalContext *)self->_mtlContext newBufferWithPixelFormat:1 width:v6 data:0];
  v12 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v12 setLabel:@"LKTSparse::Pyramid"];
  v33 = v10;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:v12 inputTexture:v10 index:0];
  v32 = v11;
  [(VisionCoreLKTSparseGPU *)self _enqueueImagePyramidWithCommandBuffer:v12 inputTexture:v11 index:1];
  [v12 commit];
  nscales = self->_nscales;
  if (nscales < 1)
  {
    v27 = 0;
  }

  else
  {
    v14 = 0;
    v15 = &self->_tgt_pyr_size[9].height + nscales;
    v16 = v12;
    v17 = v36;
    do
    {
      v18 = *v15;
      v19 = *(v15 + 10);
      commandQueue = self->_commandQueue;
      v37 = v38[v14 ^ 1];
      v12 = [(MTLCommandQueue *)commandQueue commandBuffer];

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LKT::Matching level %d", nscales - 1];
      [v12 setLabel:v21];

      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:v12 in_tex:v18 out_tex:*(v15 + 22)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesWithCommandBuffer:v12 in_tex:v19 out_tex:*(v15 + 32)];
      [(VisionCoreLKTSparseGPU *)self _enqueueFeaturesDerivativesWithCommandBuffer:v12 in_tex:*(v15 + 22) out_tex:*(v15 + 44)];
      v22 = 1.0 / (1 << (nscales - 1));
      if (nscales != self->_nscales)
      {
        v17 = v38[v14];
        v22 = 2.0;
      }

      v23 = v17;
      LOWORD(v31) = v34;
      v17 = v36;
      *&v24 = 1.0 / (1 << (nscales - 1));
      *&v25 = v22;
      [(VisionCoreLKTSparseGPU *)self _enqueueMatchingWithCommandBuffer:v12 in_f0_tex:*(v15 + 22) in_f1_tex:*(v15 + 32) in_f0_dxdy_tex:*(v15 + 44) in_kpts_buf:v36 in_kptd_buf:v23 out_kptd_buf:v24 out_status_buf:v25 num_keypoints:v37 scale_kpts:v35 scale_kptd:v31];

      [v12 commit];
      v26 = nscales;
      --v15;
      --nscales;
      v16 = v12;
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
  v2 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v2 setLabel:@"LKT:waitUntilCompleted"];
  [v2 commit];
  [v2 waitUntilCompleted];
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

- (VisionCoreLKTSparseGPU)initWithMetalContext:(id)a3 width:(int)a4 height:(int)a5 nscales:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v11 = a3;
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

    objc_storeStrong(&v12->_mtlContext, a3);
    v14 = [v11 commandQueue];
    commandQueue = v13->_commandQueue;
    v13->_commandQueue = v14;

    [(VisionCoreLKTSparseGPU *)v13 _setDefaultParameters];
    [(VisionCoreLKTSparseGPU *)v13 _initMemory:v8 height:v7 nscales:v6];
    [(VisionCoreLKTSparseGPU *)v13 _setupPipelines];
    [(VisionCoreLKTSparseGPU *)v13 _setupBuffer];
  }

  return v13;
}

@end