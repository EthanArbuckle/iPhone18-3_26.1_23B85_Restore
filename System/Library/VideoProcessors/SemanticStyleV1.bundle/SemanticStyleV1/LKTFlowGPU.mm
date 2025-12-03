@interface LKTFlowGPU
+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_computeOpticalFlow;
- (int)_computeOpticalFlowBidirectional;
- (int)_createImagePyramidWithCommandBuffer:(id)buffer in_tex:(id)in_tex I_idx:(int)i_idx;
- (int)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex;
- (int)_doSolverWithCommandBuffer:(id)buffer scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1;
- (int)_downscale2XWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex;
- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)buffer in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex;
- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)buffer in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints;
- (int)_setupBuffer;
- (int)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex;
- (int)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target;
- (int)estimateFlowFromTexReference:(id)reference target:(id)target;
- (int)estimateFlowStream:(__CVBuffer *)stream;
- (int)estimateFlowStreamTex:(id)tex;
- (int)setOutputTexUVForward:(id)forward backward:(id)backward;
- (int)setOutputUVForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward;
- (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format;
- (void)_initMemory:(int)memory height:(int)height nscales:(int)nscales;
- (void)_setDefaultParameters;
- (void)_setupPipelines;
- (void)dealloc;
- (void)setPreset:(int64_t)preset;
- (void)waitUntilCompleted;
@end

@implementation LKTFlowGPU

- (void)_setupPipelines
{
  selfCopy = self;
  v3 = 0;
  computePipelines = self->_computePipelines;
  v5 = &WritePixelBufferToFile_ptr;
  v6 = &off_18370;
  v7 = &OBJC_METACLASS___PTOpticalFlow;
  v8 = &OBJC_METACLASS___PTOpticalFlow;
  do
  {
    v9 = [objc_alloc(v5[92]) initWithUTF8String:v6[v3]];
    v10 = [(FigMetalContext *)selfCopy->_mtlContext computePipelineStateFor:v9 constants:0];
    objc_storeStrong(computePipelines, v10);
    threadExecutionWidth = [v10 threadExecutionWidth];
    maxThreadExecutionWidth = selfCopy->_maxThreadExecutionWidth;
    if (threadExecutionWidth > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v10 threadExecutionWidth];
    }

    selfCopy->_maxThreadExecutionWidth = maxThreadExecutionWidth;
    if (v7[13].superclass != -1)
    {
      sub_F844();
    }

    isa = v8[13].isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
    {
      log = isa;
      v14 = selfCopy;
      v15 = v8;
      v16 = v7;
      v17 = v6;
      v18 = v5;
      threadExecutionWidth2 = [v10 threadExecutionWidth];
      maxTotalThreadsPerThreadgroup = [v10 maxTotalThreadsPerThreadgroup];
      *buf = 138412802;
      v23 = v9;
      v24 = 1024;
      v25 = threadExecutionWidth2;
      v5 = v18;
      v6 = v17;
      v7 = v16;
      v8 = v15;
      selfCopy = v14;
      v26 = 1024;
      v27 = maxTotalThreadsPerThreadgroup;
      _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "%@::threadExecutionWidth = %d, maxTotalThreadsPerThreadgroup = %d", buf, 0x18u);
    }

    ++computePipelines;
    ++v3;
  }

  while (v3 != 11);
}

- (void)_setDefaultParameters
{
  *&self->_nwarpings = 0x400000003;
  self->_useNonLocalRegularization = 0;
  *&self->_nlreg_padding = 0x40C0000000000002;
  *&self->_nlreg_sigma_c = 0x3E80000040400000;
}

- (int)_setupBuffer
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  v5 = self->_aux_size.width;
  v6 = self->_aux_size.height;
  maxThreadExecutionWidth = self->_maxThreadExecutionWidth;
  v8 = sub_1800();
  v11 = sub_1724(v8, v10, v9 | 0x32430000u);
  self->_G0_pxbuf = v11;
  if (v11)
  {
    v12 = sub_1724(v5, v6, 0x32433068u);
    self->_G1_pxbuf = v12;
    if (v12)
    {
      v13 = sub_1724(width, height, 0x52476841u);
      self->_C0_pxbuf = v13;
      if (v13)
      {
        v14 = sub_1724(v5, v6, 0x52476841u);
        self->_C1_pxbuf = v14;
        if (v14)
        {
          v15 = sub_1800();
          v18 = sub_1724(v15, v17, v16 | 0x4C300000u);
          self->_w_pxbuf = v18;
          if (v18)
          {
            v19 = 0;
            v20 = (width + maxThreadExecutionWidth - 1) / maxThreadExecutionWidth * maxThreadExecutionWidth * height;
            Adiagb_buf = self->_Adiagb_buf;
            Ixy_buf = self->_Ixy_buf;
            uv_bwd_pxbuf = self->_uv_bwd_pxbuf;
            uv_fwd_pxbuf = self->_uv_fwd_pxbuf;
            v23 = 1;
            while (1)
            {
              v24 = v23;
              device = [(FigMetalContext *)self->_mtlContext device];
              v26 = [device newBufferWithLength:8 * v20 options:0];
              v27 = Adiagb_buf[v19];
              Adiagb_buf[v19] = v26;

              if (!Adiagb_buf[v19])
              {
                break;
              }

              device2 = [(FigMetalContext *)self->_mtlContext device];
              v29 = [device2 newBufferWithLength:2 * v20 options:0];
              v30 = Ixy_buf[v19];
              Ixy_buf[v19] = v29;

              if (!Ixy_buf[v19])
              {
                break;
              }

              v31 = sub_1800();
              v34 = sub_1724(v31, v33, v32 | 0x32430000u);
              uv_fwd_pxbuf[v19] = v34;
              if (!v34)
              {
                break;
              }

              v35 = sub_1800();
              v38 = sub_1724(v35, v37, v36 | 0x32430000u);
              uv_bwd_pxbuf[v19] = v38;
              if (!v38)
              {
                break;
              }

              v23 = 0;
              v19 = 1;
              if ((v24 & 1) == 0)
              {
                device3 = [(FigMetalContext *)self->_mtlContext device];
                v40 = [device3 newBufferWithLength:4 * v20 options:0];
                idt_buf = self->_idt_buf;
                self->_idt_buf = v40;

                if (!self->_idt_buf)
                {
                  return -12786;
                }

                if (self->_nscales < 1)
                {
LABEL_24:
                  v112 = [(LKTFlowGPU *)self newBufferWithPixelFormat:115 width:0x8000 data:0, v112];
                  kpt_buf = self->_kpt_buf;
                  self->_kpt_buf = v112;

                  return 0;
                }

                v42 = 0;
                v43 = vmovn_s64(vcvtq_s64_f64(self->_aux_size));
                v44 = vmovn_s64(vcvtq_s64_f64(self->_ref_size));
                I_tex = self->_I_tex;
                w_tex = self->_w_tex;
                v113 = self->_I_tex[1];
                I_u32_alias_tex = self->_I_u32_alias_tex;
                v112 = self->_I_u32_alias_tex[1];
LABEL_15:
                v119 = v44.i32[0];
                v123 = v44.i32[1];
                v45 = v43.i32[0];
                v46 = v43.i32[1];
                v47 = &self->_ref_pyr_size[v42];
                v47->width = v44.i32[0];
                v47->height = v44.i32[1];
                v48 = &self->_aux_pyr_size[v42];
                v48->width = v43.i32[0];
                v48->height = v43.i32[1];
                mtlContext = self->_mtlContext;
                G0_pxbuf = self->_G0_pxbuf;
                v51 = sub_184C();
                v53 = [v52 bindPixelBufferToMTL2DTexture:v51 pixelFormat:? usage:? textureSize:? plane:?];
                sub_1888(v53);
                if (self->_G0_tex[v42])
                {
                  v54 = self->_mtlContext;
                  G1_pxbuf = self->_G1_pxbuf;
                  v56 = sub_18C4();
                  v58 = [v57 bindPixelBufferToMTL2DTexture:v56 pixelFormat:? usage:? textureSize:? plane:?];
                  sub_1888(v58);
                  if (self->_G1_tex[v42])
                  {
                    v59 = self->_mtlContext;
                    C0_pxbuf = self->_C0_pxbuf;
                    v61 = sub_184C();
                    v63 = [v62 bindPixelBufferToMTL2DTexture:v61 pixelFormat:? usage:? textureSize:? plane:?];
                    sub_1888(v63);
                    if (self->_C0_tex[v42])
                    {
                      v64 = self->_mtlContext;
                      C1_pxbuf = self->_C1_pxbuf;
                      v66 = sub_18C4();
                      v68 = [v67 bindPixelBufferToMTL2DTexture:v66 pixelFormat:? usage:? textureSize:? plane:?];
                      sub_1888(v68);
                      if (self->_C1_tex[v42])
                      {
                        v118 = v45;
                        v121 = v46;
                        v69 = self->_mtlContext;
                        w_pxbuf = self->_w_pxbuf;
                        v71 = sub_184C();
                        v73 = [v72 bindPixelBufferToMTL2DTexture:v71 pixelFormat:? usage:? textureSize:? plane:?];
                        v74 = w_tex[v42];
                        w_tex[v42] = v73;

                        v75 = 0;
                        v76 = 1;
                        while (1)
                        {
                          v77 = v76;
                          v78 = self->_mtlContext;
                          v79 = uv_fwd_pxbuf[v75];
                          v80 = sub_184C();
                          v82 = [v81 bindPixelBufferToMTL2DTexture:v80 pixelFormat:? usage:? textureSize:? plane:?];
                          v83 = self->_uv_fwd_tex[v75];
                          v84 = v83[v42];
                          v83[v42] = v82;

                          if (!v83[v42])
                          {
                            break;
                          }

                          v85 = self->_mtlContext;
                          v86 = uv_bwd_pxbuf[v75];
                          v87 = sub_184C();
                          v89 = [v88 bindPixelBufferToMTL2DTexture:v87 pixelFormat:? usage:? textureSize:? plane:?];
                          v90 = self->_uv_bwd_tex[v75];
                          v91 = v90[v42];
                          v90[v42] = v89;

                          if (!v90[v42])
                          {
                            break;
                          }

                          v92 = [(MTLTexture *)v83[v42] newTextureViewWithPixelFormat:53];
                          v93 = v75;
                          v94 = self->_uv_fwd_u32_alias_tex[v93];
                          v95 = v94[v42];
                          v94[v42] = v92;

                          v96 = [(MTLTexture *)v90[v42] newTextureViewWithPixelFormat:53];
                          v97 = self->_uv_bwd_u32_alias_tex[v93];
                          v98 = v97[v42];
                          v97[v42] = v96;

                          v76 = 0;
                          v75 = 1;
                          if ((v77 & 1) == 0)
                          {
                            v117 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v119 height:v123 mipmapped:0];
                            [v117 setUsage:19];
                            device4 = [(FigMetalContext *)self->_mtlContext device];
                            v100 = [device4 newTextureWithDescriptor:v117];
                            v101 = (*I_tex)[v42];
                            (*I_tex)[v42] = v100;

                            v102 = [(MTLTexture *)(*I_tex)[v42] newTextureViewWithPixelFormat:53];
                            v103 = (*I_u32_alias_tex)[v42];
                            (*I_u32_alias_tex)[v42] = v102;

                            v124 = sub_18E8(v119 % 2).n64_u64[0];
                            v120 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v118 height:v121 mipmapped:0];
                            [v120 setUsage:19];
                            device5 = [(FigMetalContext *)self->_mtlContext device];
                            v105 = [device5 newTextureWithDescriptor:v120];
                            v106 = v113[v42];
                            v113[v42] = v105;

                            v107 = [(MTLTexture *)v113[v42] newTextureViewWithPixelFormat:53];
                            v108 = v112[v42];
                            v112[v42] = v107;

                            v122 = sub_18E8(v118 % 2).n64_u64[0];
                            v43 = v122;
                            v44 = v124;
                            if (++v42 < self->_nscales)
                            {
                              goto LABEL_15;
                            }

                            goto LABEL_24;
                          }
                        }
                      }
                    }
                  }
                }

                return -12786;
              }
            }
          }
        }
      }
    }
  }

  return -12786;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_G0_pxbuf);
  CVPixelBufferRelease(self->_G1_pxbuf);
  CVPixelBufferRelease(self->_C0_pxbuf);
  CVPixelBufferRelease(self->_C1_pxbuf);
  CVPixelBufferRelease(self->_w_pxbuf);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_bwd_pxbuf[0]);
  CVPixelBufferRelease(self->_uv_fwd_pxbuf[1]);
  CVPixelBufferRelease(self->_uv_bwd_pxbuf[1]);
  v3.receiver = self;
  v3.super_class = LKTFlowGPU;
  [(LKTFlowGPU *)&v3 dealloc];
}

- (void)waitUntilCompleted
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT:waitUntilCompleted"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
}

- (void)setPreset:(int64_t)preset
{
  if (preset > 1)
  {
    switch(preset)
    {
      case 2:
        v5 = 3;
        break;
      case 3:
        v5 = 5;
        break;
      case 4:
        *&self->_nwarpings = 0x400000006;
        self->_useNonLocalRegularization = 1;
        *&self->_nlreg_padding = 0x40C0000000000002;
        *&self->_nlreg_sigma_c = 0x3E80000040400000;
        return;
      default:
LABEL_15:
        v6 = [NSException exceptionWithName:@"Invalid parameter" reason:@"Unknown preset" userInfo:0, v3, v4];
        objc_exception_throw(v6);
    }

    goto LABEL_11;
  }

  if (preset)
  {
    if (preset != 1)
    {
      goto LABEL_15;
    }

    v5 = 1;
LABEL_11:
    self->_nwarpings = v5;
    self->_useNonLocalRegularization = 0;
    return;
  }

  [(LKTFlowGPU *)self _setDefaultParameters];
}

- (int)setOutputTexUVForward:(id)forward backward:(id)backward
{
  forwardCopy = forward;
  backwardCopy = backward;
  p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref;
  if (forwardCopy)
  {
    objc_storeStrong(p_uv_fwd_tex_user_ref, forward);
    objc_storeStrong(&self->_uv_bwd_tex_user_ref, backward);
    self->_isValid = 1;
  }

  else
  {
    v10 = *p_uv_fwd_tex_user_ref;
    *p_uv_fwd_tex_user_ref = 0;
  }

  return 0;
}

- (int)estimateFlowFromTexReference:(id)reference target:(id)target
{
  referenceCopy = reference;
  targetCopy = target;
  if (self->_isValid && !self->_streamFrameCount)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [commandBuffer setLabel:@"LKT::Pyramid"];
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
    if ([(LKTFlowGPU *)self isBidirectional])
    {
      [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_tex:referenceCopy I_idx:0];
    [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_tex:targetCopy I_idx:1];
    [commandBuffer commit];

    *&self->_current_frame_index = 0;
    if ([(LKTFlowGPU *)self isBidirectional])
    {
      [(LKTFlowGPU *)self _computeOpticalFlowBidirectional];
    }

    else
    {
      [(LKTFlowGPU *)self _computeOpticalFlow];
    }

    v8 = 0;
  }

  else
  {
    v8 = -12782;
  }

  return v8;
}

- (int)estimateFlowFromReference:(__CVBuffer *)reference target:(__CVBuffer *)target
{
  if (!self->_isValid)
  {
    return -12782;
  }

  v15 = v7;
  v16 = v6;
  v17 = v5;
  v18 = v4;
  if (self->_streamFrameCount)
  {
    return -12782;
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"LKT::Pyramid"];
  [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
  if ([(LKTFlowGPU *)self isBidirectional])
  {
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
  }

  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:reference I_idx:0, v15, v16, v17, v18, v8, v9];
  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_pixelbuf:target I_idx:1];
  [commandBuffer commit];

  *&self->_current_frame_index = 0;
  if ([(LKTFlowGPU *)self isBidirectional])
  {
    [(LKTFlowGPU *)self _computeOpticalFlowBidirectional];
  }

  else
  {
    [(LKTFlowGPU *)self _computeOpticalFlow];
  }

  return 0;
}

- (int)estimateFlowStream:(__CVBuffer *)stream
{
  selfCopy = self;
  v4 = [(FigMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:stream pixelFormat:70 usage:7 plane:0];
  LODWORD(selfCopy) = [(LKTFlowGPU *)selfCopy estimateFlowStreamTex:v4];

  return selfCopy;
}

- (int)estimateFlowStreamTex:(id)tex
{
  texCopy = tex;
  if (self->_isValid)
  {
    commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [commandBuffer setLabel:@"LKT::Pyramid"];
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
    if ([(LKTFlowGPU *)self isBidirectional])
    {
      [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:commandBuffer uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:commandBuffer in_tex:texCopy I_idx:self->_current_frame_index];
    [commandBuffer commit];

    self->_current_frame_index ^= 1u;
    if (self->_streamFrameCount >= 1)
    {
      if ([(LKTFlowGPU *)self isBidirectional])
      {
        [(LKTFlowGPU *)self _computeOpticalFlowBidirectional];
      }

      else
      {
        [(LKTFlowGPU *)self _computeOpticalFlow];
      }
    }

    v6 = 0;
    ++self->_streamFrameCount;
  }

  else
  {
    v6 = -12782;
  }

  return v6;
}

- (void)_initMemory:(int)memory height:(int)height nscales:(int)nscales
{
  v6 = 0;
  self->_isValid = 0;
  if (memory >= 8 && height >= 8)
  {
    v6 = 0;
    heightCopy = height;
    memoryCopy = memory;
    do
    {
      v9 = (memoryCopy & 1) + memoryCopy;
      if (v9 / 2 >= 0)
      {
        v10 = (v9 / 2) & 1;
      }

      else
      {
        v10 = -((v9 / 2) & 1);
      }

      v11 = (heightCopy & 1) + heightCopy;
      if (v11 / 2 >= 0)
      {
        v12 = (v11 / 2) & 1;
      }

      else
      {
        v12 = -((v11 / 2) & 1);
      }

      v13 = v9 + 2 * v10 + 1;
      memoryCopy = v13 >> 1;
      v14 = v11 + 2 * v12 + 1;
      heightCopy = v14 >> 1;
      ++v6;
    }

    while (v13 >= 16 && v14 > 15);
  }

  self->_ref_size.width = memory;
  self->_ref_size.height = height;
  self->_aux_size.width = memory;
  self->_aux_size.height = height;
  if (nscales >= 0)
  {
    nscalesCopy = nscales;
  }

  else
  {
    nscalesCopy = v6;
  }

  self->_nscales = nscalesCopy;
  self->_maxThreadExecutionWidth = 0;
  self->_w_pxbuf = 0;
  *&self->_G0_pxbuf = 0u;
  *&self->_C0_pxbuf = 0u;
  uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
  self->_uv_fwd_tex_user_ref = 0;

  *&self->_current_frame_index = 0;
  *self->_uv_fwd_pxbuf = 0u;
  *self->_uv_bwd_pxbuf = 0u;
  nscales = self->_nscales;
  if (nscales > v6 || nscales >= 10)
  {
    v19 = [NSException exceptionWithName:@"Invalid parameter" reason:@"The number of scales specified is too large" userInfo:0];
    objc_exception_throw(v19);
  }
}

- (int)_computeOpticalFlow
{
  nscales = self->_nscales;
  v3 = (nscales - 1);
  if (nscales >= 1)
  {
    commandBuffer = 0;
    v6 = 0;
    I_tex = self->_I_tex;
    G0_tex = self->_G0_tex;
    C0_tex = self->_C0_tex;
    G1_tex = self->_G1_tex;
    p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref;
    C1_tex = self->_C1_tex;
    uv_fwd_tex = self->_uv_fwd_tex;
    w_tex = self->_w_tex;
    I_u32_alias_tex = self->_I_u32_alias_tex;
    uv_fwd_u32_alias_tex = self->_uv_fwd_u32_alias_tex;
    v8 = nscales - 1;
    do
    {
      v9 = commandBuffer;
      v10 = I_tex[self->_current_frame_index][v3];
      v11 = I_tex[self->_current_frame_index ^ 1][v3];
      commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v12 = [NSString stringWithFormat:@"LKT:ComputeFlow level %d", v3];
      [commandBuffer setLabel:v12];

      [(LKTFlowGPU *)self _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v10 out_tex:G0_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v11 out_tex:G1_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G0_tex[v3] out_tex:C0_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G1_tex[v3] out_tex:C1_tex[v3]];
      nwarpings = self->_nwarpings;
      if (nwarpings < 1)
      {
        v15 = 0;
      }

      else
      {
        v26 = v11;
        v27 = v10;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = v14 + 1;
          if (v3 || v16 != nwarpings || (v17 = p_uv_fwd_tex_user_ref, self->_useNonLocalRegularization))
          {
            v17 = &uv_fwd_tex[v6 ^ 1][v3];
          }

          v18 = *v17;
          if (self->_useNonLocalRegularization && v16 == self->_nwarpings)
          {
            v19 = w_tex[v3];

            v15 = v19;
          }

          [(LKTFlowGPU *)self _doSolverWithCommandBuffer:commandBuffer scale:v3 in_uv_tex:uv_fwd_tex[v6][v8] in_G0_tex:G0_tex[v3] in_G1_tex:G1_tex[v3] in_C0_tex:C0_tex[v3] in_C1_tex:C1_tex[v3] out_uv_tex:v18 out_w_tex:v15];
          v6 ^= 1uLL;

          nwarpings = self->_nwarpings;
          ++v14;
          v8 = v3;
        }

        while (v14 < nwarpings);
        v8 = v3;
        v11 = v26;
        v10 = v27;
      }

      if (self->_useNonLocalRegularization)
      {
        v20 = &uv_fwd_tex[v6 ^ 1][v3];
        if (!v3)
        {
          v20 = p_uv_fwd_tex_user_ref;
        }

        [(LKTFlowGPU *)self _doNLRegularizationWithCommandBuffer:commandBuffer in_uv_tex:uv_fwd_u32_alias_tex[v6][v3] join_tex:I_u32_alias_tex[self->_current_frame_index][v3] w_tex:v15 out_uv_tex:*v20];
        v6 ^= 1uLL;
      }

      [commandBuffer commit];
    }

    while (v3-- > 0);
  }

  return 0;
}

- (int)_createImagePyramidWithCommandBuffer:(id)buffer in_tex:(id)in_tex I_idx:(int)i_idx
{
  bufferCopy = buffer;
  in_texCopy = in_tex;
  v10 = in_texCopy;
  if (self->_needConversionBGRA2YUVA)
  {
    computeCommandEncoder = [bufferCopy computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_computePipelines[0]];
    [computeCommandEncoder setTexture:v10 atIndex:0];
    [computeCommandEncoder setTexture:self->_I_tex[i_idx][0] atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
    v13 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    width = ((threadExecutionWidth + [v10 width] - 1) / threadExecutionWidth);
    height = ((v13 + [v10 height] - 1) / v13);
    v48 = 1;
    *&v44 = threadExecutionWidth;
    *(&v44 + 1) = v13;
    v45 = 1;
    [computeCommandEncoder dispatchThreadgroups:&width threadsPerThreadgroup:&v44];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    i_idxCopy = i_idx;
    v14 = self->_I_tex[i_idx][0];
    v43 = in_texCopy;
    v15 = in_texCopy;
    v16 = v14;
    v17 = bufferCopy;
    v18 = objc_opt_new();
    [v18 setNormalizedCoordinates:1];
    [v18 setMinFilter:1];
    [v18 setMagFilter:1];
    device = [v15 device];
    v20 = [device newSamplerStateWithDescriptor:v18];

    computeCommandEncoder = v15;
    v21 = v16;
    v22 = v20;
    v23 = v17;
    if (!qword_1E218)
    {
      v24 = objc_opt_new();
      device2 = [computeCommandEncoder device];
      v25 = [NSString stringWithUTF8String:"#include <metal_stdlib>\nusing namespace metal\nkernel void copyTexture(texture2d<float, access::sample> inputTexture [[texture(0)]], \ntexture2d<float, access::write> outputTexture [[texture(1)]], \nsampler smp [[sampler(0)]], \nuint2 gid [[ thread_position_in_grid ]])\n{\n    float2 samplePos = (float2(gid) + 0.5) / float2(outputTexture.get_width(), outputTexture.get_height());\n    float4 color = inputTexture.sample(smp, samplePos);\n    outputTexture.write(color, gid);\n}"];;
      v49 = 0;
      v40 = v24;
      v26 = [device2 newLibraryWithSource:v25 options:v24 error:&v49];
      v27 = v49;
      v28 = qword_1E220;
      qword_1E220 = v26;

      if (v27)
      {
        sub_F86C();
      }

      v29 = [qword_1E220 newFunctionWithName:@"copyTexture"];
      if (!v29)
      {
        sub_F8C4();
      }

      v30 = v29;
      device3 = [computeCommandEncoder device];
      v32 = [device3 newComputePipelineStateWithFunction:v30 error:0];
      v33 = qword_1E218;
      qword_1E218 = v32;

      if (!qword_1E218)
      {
        sub_F898();
      }
    }

    [v23 setLabel:@"copyTexture"];
    computeCommandEncoder2 = [v23 computeCommandEncoder];
    [computeCommandEncoder2 setComputePipelineState:qword_1E218];
    [computeCommandEncoder2 setTexture:computeCommandEncoder atIndex:0];
    [computeCommandEncoder2 setTexture:v21 atIndex:1];
    [computeCommandEncoder2 setSamplerState:v22 atIndex:0];
    width = [(MTLTexture *)v21 width];
    height = [(MTLTexture *)v21 height];
    v48 = 1;
    v44 = xmmword_126B0;
    v45 = 1;
    [computeCommandEncoder2 dispatchThreads:&width threadsPerThreadgroup:&v44];
    [computeCommandEncoder2 endEncoding];

    v10 = v43;
    i_idx = i_idxCopy;
  }

  if (self->_nscales >= 2)
  {
    v35 = &self->_I_tex[i_idx][1];
    v36 = 1;
    do
    {
      v37 = *v35;
      v38 = *(v35 - 1);
      [(LKTFlowGPU *)self _downscale2XWithCommandBuffer:bufferCopy in_tex:v38 out_tex:v37];

      ++v36;
      ++v35;
    }

    while (v36 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlowWithCommandBuffer:(id)buffer uv_tex:(id)uv_tex
{
  uv_texCopy = uv_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[1]];
  [computeCommandEncoder setTexture:uv_texCopy atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
  v9 = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v10 = (threadExecutionWidth + [uv_texCopy width] - 1) / threadExecutionWidth;
  LODWORD(self) = [uv_texCopy height];

  v13[0] = v10;
  v13[1] = (v9 + self - 1) / v9;
  v13[2] = 1;
  v12[0] = threadExecutionWidth;
  v12[1] = v9;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_downscale2XWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[2]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];

  [computeCommandEncoder setTexture:out_texCopy atIndex:1];
  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_computePipelines[2] maxTotalThreadsPerThreadgroup]/ buffer;
  v12 = (buffer + [out_texCopy width] - 1) / buffer;
  LODWORD(self) = [out_texCopy height];

  v15[0] = v12;
  v15[1] = (v11 + self - 1) / v11;
  v15[2] = 1;
  v14[0] = buffer;
  v14[1] = v11;
  v14[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v15 threadsPerThreadgroup:v14];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_computeFeaturesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
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

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)buffer in_tex:(id)in_tex out_tex:(id)out_tex
{
  out_texCopy = out_tex;
  in_texCopy = in_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[4]];
  [computeCommandEncoder setTexture:in_texCopy atIndex:0];
  [computeCommandEncoder setTexture:out_texCopy atIndex:1];

  LODWORD(buffer) = [(MTLComputePipelineState *)self->_computePipelines[4] threadExecutionWidth];
  LODWORD(out_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[4] maxTotalThreadsPerThreadgroup]/ buffer;
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

- (int)_doSolverWithCommandBuffer:(id)buffer scale:(int)scale in_uv_tex:(id)in_uv_tex in_G0_tex:(id)g0_tex in_G1_tex:(id)g1_tex in_C0_tex:(id)c0_tex in_C1_tex:(id)c1_tex out_uv_tex:(id)self0 out_w_tex:(id)self1
{
  out_w_texCopy = out_w_tex;
  out_uv_texCopy = out_uv_tex;
  c1_texCopy = c1_tex;
  c0_texCopy = c0_tex;
  g1_texCopy = g1_tex;
  g0_texCopy = g0_tex;
  in_uv_texCopy = in_uv_tex;
  bufferCopy = buffer;
  LODWORD(buffer) = [out_uv_texCopy width];
  height = [out_uv_texCopy height];
  v40 = buffer - 1;
  LODWORD(g0_tex) = (buffer - 1 + self->_maxThreadExecutionWidth) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v55[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v54 = _D0;
  [LKTFlowGPU _computeScalingFactor:in_uv_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v54 coeff:v55];
  v48[0] = buffer;
  v48[1] = height;
  g0_texCopy2 = g0_tex;
  v50 = v54;
  v51 = 0;
  v28 = v55;
  v29 = vld1_dup_f32(v28);
  v52 = v29;
  v53 = 0;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_computePipelines[5]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:g0_texCopy atIndex:1];

  [computeCommandEncoder setTexture:g1_texCopy atIndex:2];
  [computeCommandEncoder setTexture:c0_texCopy atIndex:3];

  [computeCommandEncoder setTexture:c1_texCopy atIndex:4];
  [computeCommandEncoder setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [computeCommandEncoder setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [computeCommandEncoder setBuffer:self->_idt_buf offset:0 atIndex:2];
  [computeCommandEncoder setBytes:v48 length:48 atIndex:3];
  LODWORD(g0_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[5] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computePipelines[5] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + g0_texCopy) / g0_texCopy;
  v46 = (height - 1 + maxTotalThreadsPerThreadgroup / g0_texCopy) / (maxTotalThreadsPerThreadgroup / g0_texCopy);
  v47 = 1;
  v42 = g0_texCopy;
  v43 = maxTotalThreadsPerThreadgroup / g0_texCopy;
  v44 = 1;
  [computeCommandEncoder dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder endEncoding];

  v32 = bufferCopy;
  computeCommandEncoder2 = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder2 setComputePipelineState:self->_computePipelines[6]];
  [computeCommandEncoder2 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [computeCommandEncoder2 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [computeCommandEncoder2 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
  [computeCommandEncoder2 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
  [computeCommandEncoder2 setBytes:v48 length:48 atIndex:4];
  LODWORD(g0_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[6] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_computePipelines[6] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + g0_texCopy) / g0_texCopy;
  v46 = (height - 1 + maxTotalThreadsPerThreadgroup2 / g0_texCopy) / (maxTotalThreadsPerThreadgroup2 / g0_texCopy);
  v47 = 1;
  v42 = g0_texCopy;
  v43 = maxTotalThreadsPerThreadgroup2 / g0_texCopy;
  v44 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder2 endEncoding];

  computeCommandEncoder3 = [v32 computeCommandEncoder];

  [computeCommandEncoder3 setComputePipelineState:self->_computePipelines[7]];
  [computeCommandEncoder3 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:0];
  [computeCommandEncoder3 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:1];
  [computeCommandEncoder3 setBuffer:self->_idt_buf offset:0 atIndex:2];
  [computeCommandEncoder3 setTexture:in_uv_texCopy atIndex:0];

  [computeCommandEncoder3 setTexture:out_uv_texCopy atIndex:1];
  [computeCommandEncoder3 setTexture:out_w_texCopy atIndex:2];

  [computeCommandEncoder3 setBytes:v48 length:48 atIndex:3];
  LODWORD(g0_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[7] threadExecutionWidth];
  maxTotalThreadsPerThreadgroup3 = [(MTLComputePipelineState *)self->_computePipelines[7] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + g0_texCopy) / g0_texCopy;
  v46 = (height - 1 + maxTotalThreadsPerThreadgroup3 / g0_texCopy) / (maxTotalThreadsPerThreadgroup3 / g0_texCopy);
  v47 = 1;
  v42 = g0_texCopy;
  v43 = maxTotalThreadsPerThreadgroup3 / g0_texCopy;
  v44 = 1;
  [computeCommandEncoder3 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [computeCommandEncoder3 endEncoding];

  return 0;
}

- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)buffer in_uv0_tex:(id)in_uv0_tex in_uv1_tex:(id)in_uv1_tex out_uv_tex:(id)out_uv_tex
{
  out_uv_texCopy = out_uv_tex;
  in_uv1_texCopy = in_uv1_tex;
  in_uv0_texCopy = in_uv0_tex;
  bufferCopy = buffer;
  LODWORD(in_uv1_tex) = [out_uv_texCopy width];
  height = [out_uv_texCopy height];
  __asm { FMOV            V0.2S, #1.0 }

  v36 = _D0;
  v37 = _D0;
  v35 = 1065353216;
  v34 = 1065353216;
  [LKTFlowGPU _computeScalingFactor:in_uv0_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v37 coeff:&v35];
  [LKTFlowGPU _computeScalingFactor:in_uv1_texCopy dst_tex:out_uv_texCopy scale_xy_inv:&v36 coeff:&v34];
  v29 = 0;
  v28[0] = in_uv1_tex;
  v28[1] = height;
  v30 = v37;
  v31 = v36;
  v20 = &v35;
  v21 = vld1_dup_f32(v20);
  v22 = vld1_dup_f32(&v34);
  v32 = v21;
  v33 = v22;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_computePipelines[8]];
  [computeCommandEncoder setTexture:in_uv0_texCopy atIndex:0];

  [computeCommandEncoder setTexture:in_uv1_texCopy atIndex:1];
  [computeCommandEncoder setTexture:out_uv_texCopy atIndex:2];
  [computeCommandEncoder setBytes:v28 length:48 atIndex:0];
  LODWORD(in_uv1_texCopy) = [(MTLComputePipelineState *)self->_computePipelines[8] threadExecutionWidth];
  LODWORD(bufferCopy) = [(MTLComputePipelineState *)self->_computePipelines[8] maxTotalThreadsPerThreadgroup]/ in_uv1_texCopy;
  v24 = (in_uv1_texCopy + [out_uv_texCopy width] - 1) / in_uv1_texCopy;
  LODWORD(self) = [out_uv_texCopy height];

  v27[0] = v24;
  v27[1] = (bufferCopy + self - 1) / bufferCopy;
  v27[2] = 1;
  v26[0] = in_uv1_texCopy;
  v26[1] = bufferCopy;
  v26[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:v26];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_doNLRegularizationWithCommandBuffer:(id)buffer in_uv_tex:(id)in_uv_tex join_tex:(id)join_tex w_tex:(id)w_tex out_uv_tex:(id)out_uv_tex
{
  selfCopy = self;
  v28[1] = 0;
  v7.i64[0] = *&self->_nlreg_sigma_l;
  v28[0] = *&self->_nlreg_radius;
  v7.i32[3] = LODWORD(self->_nlreg_sigma_w);
  v13 = vaddq_f32(v7, v7);
  __asm { FMOV            V1.4S, #1.0 }

  v19 = vdivq_f32(_Q1, v13);
  v19.i32[2] = v19.i32[1];
  v29 = v19;
  out_uv_texCopy = out_uv_tex;
  w_texCopy = w_tex;
  join_texCopy = join_tex;
  in_uv_texCopy = in_uv_tex;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:selfCopy->_computePipelines[10]];
  [computeCommandEncoder setTexture:in_uv_texCopy atIndex:0];
  [computeCommandEncoder setTexture:join_texCopy atIndex:1];

  [computeCommandEncoder setTexture:w_texCopy atIndex:2];
  [computeCommandEncoder setTexture:out_uv_texCopy atIndex:3];

  [computeCommandEncoder setBytes:v28 length:32 atIndex:0];
  LODWORD(out_uv_texCopy) = [(MTLComputePipelineState *)selfCopy->_computePipelines[10] threadExecutionWidth];
  LODWORD(buffer) = [(MTLComputePipelineState *)selfCopy->_computePipelines[10] maxTotalThreadsPerThreadgroup]/ out_uv_texCopy;
  LODWORD(w_texCopy) = (out_uv_texCopy + [in_uv_texCopy width] / 2 - 1) / out_uv_texCopy;
  LODWORD(selfCopy) = [in_uv_texCopy height];

  v27[0] = w_texCopy;
  v27[1] = (buffer + selfCopy / 2 - 1) / buffer;
  v27[2] = 1;
  v26[0] = out_uv_texCopy;
  v26[1] = buffer;
  v26[2] = 1;
  [computeCommandEncoder dispatchThreadgroups:v27 threadsPerThreadgroup:v26];
  [computeCommandEncoder endEncoding];

  return 0;
}

+ (void)_computeScalingFactor:(id)factor dst_tex:(SEL)dst_tex scale_xy_inv:(id)scale_xy_inv coeff:(id)coeff
{
  v6 = v5;
  v7 = v4;
  scale_xy_invCopy = scale_xy_inv;
  coeffCopy = coeff;
  width = [coeffCopy width];
  v11 = width / [scale_xy_invCopy width];
  height = [coeffCopy height];
  height2 = [scale_xy_invCopy height];
  LODWORD(v14) = 1.5;
  *&v15 = height / height2;
  if (v11 <= 1.5 || *&v15 <= 1.5)
  {
    width2 = [coeffCopy width];
    if (width2 != [scale_xy_invCopy width] || (v18 = objc_msgSend(coeffCopy, "height"), v18 != objc_msgSend(scale_xy_invCopy, "height")))
    {
      sub_F8F0();
    }

    __asm { FMOV            V0.2S, #1.0 }

    v24 = 1.0;
  }

  else
  {
    _D0 = 0x3F0000003F000000;
    v24 = 2.0;
  }

  *v6 = v24;
  *v7 = _D0;
}

- (id)newBufferWithPixelFormat:(unint64_t)format width:(int)width data:(const void *)data
{
  v7 = [(LKTFlowGPU *)self bytesPerPixelForTextureFormat:format]* width;
  device = [(FigMetalContext *)self->_mtlContext device];
  v9 = device;
  if (data)
  {
    v10 = [device newBufferWithBytes:data length:v7 options:0];
  }

  else
  {
    v10 = [device newBufferWithLength:v7 options:0];
  }

  v11 = v10;

  return v11;
}

- (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)format
{
  v5 = format - 62;
  if (format - 62 <= 0x3F)
  {
    if (((1 << v5) & 0xF00C1F0FLL) != 0)
    {
      return 4;
    }

    if (((1 << v5) & 0x3D0E0000000000) != 0)
    {
      return 8;
    }

    if (((1 << v5) & 0xE000000000000000) != 0)
    {
      return 16;
    }
  }

  if (format <= 0x3C)
  {
    if (((1 << format) & 0x80743D00000) != 0)
    {
      return 2;
    }

    if (((1 << format) & 0x7402) != 0)
    {
      return 1;
    }

    if (((1 << format) & 0x10E0000000000000) != 0)
    {
      return 4;
    }
  }

  v9 = v3;
  v10 = v4;
  if (qword_1E210 != -1)
  {
    sub_F91C();
  }

  v7 = qword_1E208;
  if (os_log_type_enabled(qword_1E208, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Unidentified Metal format", v8, 2u);
  }

  return 0;
}

- (CGSize)ref_size
{
  width = self->_ref_size.width;
  height = self->_ref_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)aux_size
{
  width = self->_aux_size.width;
  height = self->_aux_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int)setOutputUVForward:(__CVBuffer *)forward backward:(__CVBuffer *)backward
{
  if (forward)
  {
    CVPixelBufferGetWidth(forward);
    CVPixelBufferGetHeight(forward);
    mtlContext = self->_mtlContext;
    v8 = sub_BF00();
    v10 = [v9 bindPixelBufferToMTL2DTexture:v8 pixelFormat:? usage:? textureSize:? plane:?];
    uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = v10;

    if (!self->_uv_fwd_tex_user_ref)
    {
      return -12786;
    }

    if (backward)
    {
      v12 = self->_mtlContext;
      v13 = sub_BF00();
      v15 = [v14 bindPixelBufferToMTL2DTexture:v13 pixelFormat:? usage:? textureSize:? plane:?];
      uv_bwd_tex_user_ref = self->_uv_bwd_tex_user_ref;
      self->_uv_bwd_tex_user_ref = v15;

      if (!self->_uv_bwd_tex_user_ref)
      {
        return -12786;
      }
    }

    else
    {
      v19 = self->_uv_bwd_tex_user_ref;
      self->_uv_bwd_tex_user_ref = 0;
    }

    result = 0;
    self->_isValid = 1;
  }

  else
  {
    v18 = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = 0;

    return 0;
  }

  return result;
}

- (int)_computeOpticalFlowBidirectional
{
  selfCopy = self;
  v3 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v55 = self->_uv_fwd_tex[0][v3];
  uv_bwd_tex = selfCopy->_uv_bwd_tex;
  v4 = selfCopy->_uv_bwd_tex[0][v3];
  if (selfCopy->_uv_bwd_tex_user_ref)
  {
    nscales = selfCopy->_nscales;
    if (nscales < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      I_tex = selfCopy->_I_tex;
      G1_tex = selfCopy->_G1_tex;
      G0_tex = selfCopy->_G0_tex;
      C1_tex = selfCopy->_C1_tex;
      C0_tex = selfCopy->_C0_tex;
      p_uv_fwd_tex_user_ref = &selfCopy->_uv_fwd_tex_user_ref;
      p_uv_bwd_tex_user_ref = &selfCopy->_uv_bwd_tex_user_ref;
      v36 = selfCopy->_uv_bwd_tex[1];
      v43 = v3;
      v42 = v3;
      do
      {
        v8 = v6;
        v35 = nscales;
        v9 = nscales - 1;
        v10 = I_tex[selfCopy->_current_frame_index][v9];
        v11 = I_tex[selfCopy->_current_frame_index ^ 1][v9];
        commandBuffer = [(MTLCommandQueue *)selfCopy->_commandQueue commandBuffer];

        v13 = [NSString stringWithFormat:@"LKT:ComputeFlow level %d", v9];
        [commandBuffer setLabel:v13];

        v34 = v10;
        [(LKTFlowGPU *)selfCopy _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v10 out_tex:G0_tex[v9]];
        v33 = v11;
        [(LKTFlowGPU *)selfCopy _computeFeaturesWithCommandBuffer:commandBuffer in_tex:v11 out_tex:G1_tex[v9]];
        [(LKTFlowGPU *)selfCopy _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G0_tex[v9] out_tex:C0_tex[v9]];
        v49 = commandBuffer;
        [(LKTFlowGPU *)selfCopy _computeFeaturesDerivativesWithCommandBuffer:commandBuffer in_tex:G1_tex[v9] out_tex:C1_tex[v9]];
        v48 = v9;
        if (selfCopy->_nwarpings >= 1)
        {
          v14 = 0;
          v40 = &(*uv_bwd_tex)[v9];
          do
          {
            if ((v14 + 1))
            {
              v15 = v48;
              v53 = G0_tex[v48];
              v52 = G1_tex[v48];
              v51 = C0_tex[v48];
              v16 = C1_tex[v48];
              v26 = uv_fwd_tex[v7];
              v17 = v26[v43];
              v54 = v7 ^ 1;
              v18 = uv_fwd_tex[v7 ^ 1][v48];
              if (v48)
              {
                v27 = 1;
              }

              else
              {
                v27 = v14 + 3 <= selfCopy->_nwarpings;
              }

              v28 = &v26[v48];
              if (!v27)
              {
                v28 = p_uv_fwd_tex_user_ref;
              }

              v29 = *v28;
              v22 = selfCopy;
              v23 = v4;
              v24 = v29;

              v25 = v24;
              v43 = v48;
              v50 = v23;
            }

            else
            {
              v15 = v48;
              v53 = G1_tex[v48];
              v52 = G0_tex[v48];
              v51 = C1_tex[v48];
              v16 = C0_tex[v48];
              v17 = (*uv_bwd_tex)[v42];
              v18 = v36[v48];
              if (v48)
              {
                v19 = 1;
              }

              else
              {
                v19 = v14 + 3 <= selfCopy->_nwarpings;
              }

              v20 = p_uv_bwd_tex_user_ref;
              if (v19)
              {
                v20 = v40;
              }

              v21 = *v20;
              v22 = selfCopy;
              v23 = v55;
              v24 = v21;

              v54 = v7 ^ 1;
              v50 = v24;
              v42 = v48;
              v25 = v23;
            }

            v55 = v25;
            [(LKTFlowGPU *)v22 _enqueueFlowConsistencyWithCommandBuffer:v49 in_uv0_tex:v23 in_uv1_tex:v17 out_uv_tex:v18];
            [(LKTFlowGPU *)v22 _doSolverWithCommandBuffer:v49 scale:v15 in_uv_tex:v18 in_G0_tex:v53 in_G1_tex:v52 in_C0_tex:v51 in_C1_tex:v16 out_uv_tex:v24 out_w_tex:0];

            ++v14;
            v4 = v50;
            selfCopy = v22;
            v7 = v54;
          }

          while (v14 < v22->_nwarpings);
        }

        v6 = v49;
        [v49 commit];

        nscales = v48;
      }

      while (v35 > 1);
    }

    v30 = 0;
  }

  else
  {
    v6 = 0;
    v30 = -12780;
  }

  return v30;
}

- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)buffer in_uv_fwd_tex:(id)in_uv_fwd_tex in_uv_bwd_tex:(id)in_uv_bwd_tex out_kpt_buf:(id)out_kpt_buf block_size:(int)block_size bidirectional_error:(float)bidirectional_error out_num_keypoints:(unsigned __int16 *)out_num_keypoints
{
  in_uv_fwd_texCopy = in_uv_fwd_tex;
  in_uv_bwd_texCopy = in_uv_bwd_tex;
  out_kpt_bufCopy = out_kpt_buf;
  bufferCopy = buffer;
  v20 = [in_uv_fwd_texCopy width] / block_size;
  v21 = [in_uv_fwd_texCopy height] / block_size;
  block_sizeCopy = block_size;
  v31 = v21;
  v30 = v20;
  v32 = LODWORD(bidirectional_error);
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  if (v21 * v20 > 0x8000)
  {
    v25 = -12780;
  }

  else
  {
    [computeCommandEncoder setComputePipelineState:self->_computePipelines[9]];
    [computeCommandEncoder setTexture:in_uv_fwd_texCopy atIndex:0];
    [computeCommandEncoder setTexture:in_uv_bwd_texCopy atIndex:1];
    [computeCommandEncoder setBuffer:out_kpt_bufCopy offset:0 atIndex:0];
    [computeCommandEncoder setBytes:&block_sizeCopy length:16 atIndex:1];
    threadExecutionWidth = [(MTLComputePipelineState *)self->_computePipelines[9] threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_computePipelines[9] maxTotalThreadsPerThreadgroup];
    v28[0] = (v20 + threadExecutionWidth - 1) / threadExecutionWidth;
    v28[1] = (v21 + maxTotalThreadsPerThreadgroup / threadExecutionWidth - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
    v28[2] = 1;
    v27[0] = threadExecutionWidth;
    v27[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v27[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:v28 threadsPerThreadgroup:v27];
    [computeCommandEncoder endEncoding];
    v25 = 0;
    *out_num_keypoints = v21 * v20;
  }

  return v25;
}

@end