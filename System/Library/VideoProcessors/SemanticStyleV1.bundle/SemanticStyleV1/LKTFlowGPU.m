@interface LKTFlowGPU
+ (void)_computeScalingFactor:(id)a1 dst_tex:(SEL)a2 scale_xy_inv:(id)a3 coeff:(id)a4;
- (CGSize)aux_size;
- (CGSize)ref_size;
- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5;
- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_computeOpticalFlow;
- (int)_computeOpticalFlowBidirectional;
- (int)_createImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4 I_idx:(int)a5;
- (int)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7;
- (int)_doSolverWithCommandBuffer:(id)a3 scale:(int)a4 in_uv_tex:(id)a5 in_G0_tex:(id)a6 in_G1_tex:(id)a7 in_C0_tex:(id)a8 in_C1_tex:(id)a9 out_uv_tex:(id)a10 out_w_tex:(id)a11;
- (int)_downscale2XWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5;
- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)a3 in_uv0_tex:(id)a4 in_uv1_tex:(id)a5 out_uv_tex:(id)a6;
- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)a3 in_uv_fwd_tex:(id)a4 in_uv_bwd_tex:(id)a5 out_kpt_buf:(id)a6 block_size:(int)a7 bidirectional_error:(float)a8 out_num_keypoints:(unsigned __int16 *)a9;
- (int)_setupBuffer;
- (int)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4;
- (int)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4;
- (int)estimateFlowFromTexReference:(id)a3 target:(id)a4;
- (int)estimateFlowStream:(__CVBuffer *)a3;
- (int)estimateFlowStreamTex:(id)a3;
- (int)setOutputTexUVForward:(id)a3 backward:(id)a4;
- (int)setOutputUVForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4;
- (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3;
- (void)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5;
- (void)_setDefaultParameters;
- (void)_setupPipelines;
- (void)dealloc;
- (void)setPreset:(int64_t)a3;
- (void)waitUntilCompleted;
@end

@implementation LKTFlowGPU

- (void)_setupPipelines
{
  v2 = self;
  v3 = 0;
  computePipelines = self->_computePipelines;
  v5 = &WritePixelBufferToFile_ptr;
  v6 = &off_18370;
  v7 = &OBJC_METACLASS___PTOpticalFlow;
  v8 = &OBJC_METACLASS___PTOpticalFlow;
  do
  {
    v9 = [objc_alloc(v5[92]) initWithUTF8String:v6[v3]];
    v10 = [(FigMetalContext *)v2->_mtlContext computePipelineStateFor:v9 constants:0];
    objc_storeStrong(computePipelines, v10);
    v11 = [v10 threadExecutionWidth];
    maxThreadExecutionWidth = v2->_maxThreadExecutionWidth;
    if (v11 > maxThreadExecutionWidth)
    {
      maxThreadExecutionWidth = [v10 threadExecutionWidth];
    }

    v2->_maxThreadExecutionWidth = maxThreadExecutionWidth;
    if (v7[13].superclass != -1)
    {
      sub_F844();
    }

    isa = v8[13].isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
    {
      log = isa;
      v14 = v2;
      v15 = v8;
      v16 = v7;
      v17 = v6;
      v18 = v5;
      v19 = [v10 threadExecutionWidth];
      v20 = [v10 maxTotalThreadsPerThreadgroup];
      *buf = 138412802;
      v23 = v9;
      v24 = 1024;
      v25 = v19;
      v5 = v18;
      v6 = v17;
      v7 = v16;
      v8 = v15;
      v2 = v14;
      v26 = 1024;
      v27 = v20;
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
              v25 = [(FigMetalContext *)self->_mtlContext device];
              v26 = [v25 newBufferWithLength:8 * v20 options:0];
              v27 = Adiagb_buf[v19];
              Adiagb_buf[v19] = v26;

              if (!Adiagb_buf[v19])
              {
                break;
              }

              v28 = [(FigMetalContext *)self->_mtlContext device];
              v29 = [v28 newBufferWithLength:2 * v20 options:0];
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
                v39 = [(FigMetalContext *)self->_mtlContext device];
                v40 = [v39 newBufferWithLength:4 * v20 options:0];
                idt_buf = self->_idt_buf;
                self->_idt_buf = v40;

                if (!self->_idt_buf)
                {
                  return -12786;
                }

                if (self->_nscales < 1)
                {
LABEL_24:
                  v109 = [(LKTFlowGPU *)self newBufferWithPixelFormat:115 width:0x8000 data:0, v112];
                  kpt_buf = self->_kpt_buf;
                  self->_kpt_buf = v109;

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
                            v99 = [(FigMetalContext *)self->_mtlContext device];
                            v100 = [v99 newTextureWithDescriptor:v117];
                            v101 = (*I_tex)[v42];
                            (*I_tex)[v42] = v100;

                            v102 = [(MTLTexture *)(*I_tex)[v42] newTextureViewWithPixelFormat:53];
                            v103 = (*I_u32_alias_tex)[v42];
                            (*I_u32_alias_tex)[v42] = v102;

                            v124 = sub_18E8(v119 % 2).n64_u64[0];
                            v120 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v118 height:v121 mipmapped:0];
                            [v120 setUsage:19];
                            v104 = [(FigMetalContext *)self->_mtlContext device];
                            v105 = [v104 newTextureWithDescriptor:v120];
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
  v2 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v2 setLabel:@"LKT:waitUntilCompleted"];
  [v2 commit];
  [v2 waitUntilCompleted];
}

- (void)setPreset:(int64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
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

  if (a3)
  {
    if (a3 != 1)
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

- (int)setOutputTexUVForward:(id)a3 backward:(id)a4
{
  v7 = a3;
  v8 = a4;
  p_uv_fwd_tex_user_ref = &self->_uv_fwd_tex_user_ref;
  if (v7)
  {
    objc_storeStrong(p_uv_fwd_tex_user_ref, a3);
    objc_storeStrong(&self->_uv_bwd_tex_user_ref, a4);
    self->_isValid = 1;
  }

  else
  {
    v10 = *p_uv_fwd_tex_user_ref;
    *p_uv_fwd_tex_user_ref = 0;
  }

  return 0;
}

- (int)estimateFlowFromTexReference:(id)a3 target:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isValid && !self->_streamFrameCount)
  {
    v10 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [v10 setLabel:@"LKT::Pyramid"];
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:v10 uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
    if ([(LKTFlowGPU *)self isBidirectional])
    {
      [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:v10 uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:v10 in_tex:v6 I_idx:0];
    [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:v10 in_tex:v7 I_idx:1];
    [v10 commit];

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

- (int)estimateFlowFromReference:(__CVBuffer *)a3 target:(__CVBuffer *)a4
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

  v14 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [v14 setLabel:@"LKT::Pyramid"];
  [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:v14 uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
  if ([(LKTFlowGPU *)self isBidirectional])
  {
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:v14 uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
  }

  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:v14 in_pixelbuf:a3 I_idx:0, v15, v16, v17, v18, v8, v9];
  [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:v14 in_pixelbuf:a4 I_idx:1];
  [v14 commit];

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

- (int)estimateFlowStream:(__CVBuffer *)a3
{
  v3 = self;
  v4 = [(FigMetalContext *)self->_mtlContext bindPixelBufferToMTL2DTexture:a3 pixelFormat:70 usage:7 plane:0];
  LODWORD(v3) = [(LKTFlowGPU *)v3 estimateFlowStreamTex:v4];

  return v3;
}

- (int)estimateFlowStreamTex:(id)a3
{
  v4 = a3;
  if (self->_isValid)
  {
    v5 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    [v5 setLabel:@"LKT::Pyramid"];
    [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:v5 uv_tex:self->_uv_bwd_pxbuf[self->_nscales + 1]];
    if ([(LKTFlowGPU *)self isBidirectional])
    {
      [(LKTFlowGPU *)self _zeroFlowWithCommandBuffer:v5 uv_tex:self->_uv_fwd_tex[1][self->_nscales + 9]];
    }

    [(LKTFlowGPU *)self _createImagePyramidWithCommandBuffer:v5 in_tex:v4 I_idx:self->_current_frame_index];
    [v5 commit];

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

- (void)_initMemory:(int)a3 height:(int)a4 nscales:(int)a5
{
  v6 = 0;
  self->_isValid = 0;
  if (a3 >= 8 && a4 >= 8)
  {
    v6 = 0;
    v7 = a4;
    v8 = a3;
    do
    {
      v9 = (v8 & 1) + v8;
      if (v9 / 2 >= 0)
      {
        v10 = (v9 / 2) & 1;
      }

      else
      {
        v10 = -((v9 / 2) & 1);
      }

      v11 = (v7 & 1) + v7;
      if (v11 / 2 >= 0)
      {
        v12 = (v11 / 2) & 1;
      }

      else
      {
        v12 = -((v11 / 2) & 1);
      }

      v13 = v9 + 2 * v10 + 1;
      v8 = v13 >> 1;
      v14 = v11 + 2 * v12 + 1;
      v7 = v14 >> 1;
      ++v6;
    }

    while (v13 >= 16 && v14 > 15);
  }

  self->_ref_size.width = a3;
  self->_ref_size.height = a4;
  self->_aux_size.width = a3;
  self->_aux_size.height = a4;
  if (a5 >= 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = v6;
  }

  self->_nscales = v16;
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
    v5 = 0;
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
      v9 = v5;
      v10 = I_tex[self->_current_frame_index][v3];
      v11 = I_tex[self->_current_frame_index ^ 1][v3];
      v5 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

      v12 = [NSString stringWithFormat:@"LKT:ComputeFlow level %d", v3];
      [v5 setLabel:v12];

      [(LKTFlowGPU *)self _computeFeaturesWithCommandBuffer:v5 in_tex:v10 out_tex:G0_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesWithCommandBuffer:v5 in_tex:v11 out_tex:G1_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesDerivativesWithCommandBuffer:v5 in_tex:G0_tex[v3] out_tex:C0_tex[v3]];
      [(LKTFlowGPU *)self _computeFeaturesDerivativesWithCommandBuffer:v5 in_tex:G1_tex[v3] out_tex:C1_tex[v3]];
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

          [(LKTFlowGPU *)self _doSolverWithCommandBuffer:v5 scale:v3 in_uv_tex:uv_fwd_tex[v6][v8] in_G0_tex:G0_tex[v3] in_G1_tex:G1_tex[v3] in_C0_tex:C0_tex[v3] in_C1_tex:C1_tex[v3] out_uv_tex:v18 out_w_tex:v15];
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

        [(LKTFlowGPU *)self _doNLRegularizationWithCommandBuffer:v5 in_uv_tex:uv_fwd_u32_alias_tex[v6][v3] join_tex:I_u32_alias_tex[self->_current_frame_index][v3] w_tex:v15 out_uv_tex:*v20];
        v6 ^= 1uLL;
      }

      [v5 commit];
    }

    while (v3-- > 0);
  }

  return 0;
}

- (int)_createImagePyramidWithCommandBuffer:(id)a3 in_tex:(id)a4 I_idx:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self->_needConversionBGRA2YUVA)
  {
    v11 = [v8 computeCommandEncoder];
    [v11 setComputePipelineState:self->_computePipelines[0]];
    [v11 setTexture:v10 atIndex:0];
    [v11 setTexture:self->_I_tex[a5][0] atIndex:1];
    v12 = [(MTLComputePipelineState *)self->_computePipelines[0] threadExecutionWidth];
    v13 = [(MTLComputePipelineState *)self->_computePipelines[0] maxTotalThreadsPerThreadgroup]/ v12;
    v46 = ((v12 + [v10 width] - 1) / v12);
    v47 = ((v13 + [v10 height] - 1) / v13);
    v48 = 1;
    *&v44 = v12;
    *(&v44 + 1) = v13;
    v45 = 1;
    [v11 dispatchThreadgroups:&v46 threadsPerThreadgroup:&v44];
    [v11 endEncoding];
  }

  else
  {
    v42 = a5;
    v14 = self->_I_tex[a5][0];
    v43 = v9;
    v15 = v9;
    v16 = v14;
    v17 = v8;
    v18 = objc_opt_new();
    [v18 setNormalizedCoordinates:1];
    [v18 setMinFilter:1];
    [v18 setMagFilter:1];
    v19 = [v15 device];
    v20 = [v19 newSamplerStateWithDescriptor:v18];

    v11 = v15;
    v21 = v16;
    v22 = v20;
    v23 = v17;
    if (!qword_1E218)
    {
      v24 = objc_opt_new();
      v41 = [v11 device];
      v25 = [NSString stringWithUTF8String:"#include <metal_stdlib>\nusing namespace metal\nkernel void copyTexture(texture2d<float, access::sample> inputTexture [[texture(0)]], \ntexture2d<float, access::write> outputTexture [[texture(1)]], \nsampler smp [[sampler(0)]], \nuint2 gid [[ thread_position_in_grid ]])\n{\n    float2 samplePos = (float2(gid) + 0.5) / float2(outputTexture.get_width(), outputTexture.get_height());\n    float4 color = inputTexture.sample(smp, samplePos);\n    outputTexture.write(color, gid);\n}"];;
      v49 = 0;
      v40 = v24;
      v26 = [v41 newLibraryWithSource:v25 options:v24 error:&v49];
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
      v31 = [v11 device];
      v32 = [v31 newComputePipelineStateWithFunction:v30 error:0];
      v33 = qword_1E218;
      qword_1E218 = v32;

      if (!qword_1E218)
      {
        sub_F898();
      }
    }

    [v23 setLabel:@"copyTexture"];
    v34 = [v23 computeCommandEncoder];
    [v34 setComputePipelineState:qword_1E218];
    [v34 setTexture:v11 atIndex:0];
    [v34 setTexture:v21 atIndex:1];
    [v34 setSamplerState:v22 atIndex:0];
    v46 = [(MTLTexture *)v21 width];
    v47 = [(MTLTexture *)v21 height];
    v48 = 1;
    v44 = xmmword_126B0;
    v45 = 1;
    [v34 dispatchThreads:&v46 threadsPerThreadgroup:&v44];
    [v34 endEncoding];

    v10 = v43;
    a5 = v42;
  }

  if (self->_nscales >= 2)
  {
    v35 = &self->_I_tex[a5][1];
    v36 = 1;
    do
    {
      v37 = *v35;
      v38 = *(v35 - 1);
      [(LKTFlowGPU *)self _downscale2XWithCommandBuffer:v8 in_tex:v38 out_tex:v37];

      ++v36;
      ++v35;
    }

    while (v36 < self->_nscales);
  }

  return 0;
}

- (int)_zeroFlowWithCommandBuffer:(id)a3 uv_tex:(id)a4
{
  v6 = a4;
  v7 = [a3 computeCommandEncoder];
  [v7 setComputePipelineState:self->_computePipelines[1]];
  [v7 setTexture:v6 atIndex:0];
  v8 = [(MTLComputePipelineState *)self->_computePipelines[1] threadExecutionWidth];
  v9 = [(MTLComputePipelineState *)self->_computePipelines[1] maxTotalThreadsPerThreadgroup]/ v8;
  v10 = (v8 + [v6 width] - 1) / v8;
  LODWORD(self) = [v6 height];

  v13[0] = v10;
  v13[1] = (v9 + self - 1) / v9;
  v13[2] = 1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 1;
  [v7 dispatchThreadgroups:v13 threadsPerThreadgroup:v12];
  [v7 endEncoding];

  return 0;
}

- (int)_downscale2XWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_computePipelines[2]];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  LODWORD(a3) = [(MTLComputePipelineState *)self->_computePipelines[2] threadExecutionWidth];
  v11 = [(MTLComputePipelineState *)self->_computePipelines[2] maxTotalThreadsPerThreadgroup]/ a3;
  v12 = (a3 + [v8 width] - 1) / a3;
  LODWORD(self) = [v8 height];

  v15[0] = v12;
  v15[1] = (v11 + self - 1) / v11;
  v15[2] = 1;
  v14[0] = a3;
  v14[1] = v11;
  v14[2] = 1;
  [v10 dispatchThreadgroups:v15 threadsPerThreadgroup:v14];
  [v10 endEncoding];

  return 0;
}

- (int)_computeFeaturesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
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

- (int)_computeFeaturesDerivativesWithCommandBuffer:(id)a3 in_tex:(id)a4 out_tex:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  [v10 setComputePipelineState:self->_computePipelines[4]];
  [v10 setTexture:v9 atIndex:0];
  [v10 setTexture:v8 atIndex:1];

  LODWORD(a3) = [(MTLComputePipelineState *)self->_computePipelines[4] threadExecutionWidth];
  LODWORD(v8) = [(MTLComputePipelineState *)self->_computePipelines[4] maxTotalThreadsPerThreadgroup]/ a3;
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

- (int)_doSolverWithCommandBuffer:(id)a3 scale:(int)a4 in_uv_tex:(id)a5 in_G0_tex:(id)a6 in_G1_tex:(id)a7 in_C0_tex:(id)a8 in_C1_tex:(id)a9 out_uv_tex:(id)a10 out_w_tex:(id)a11
{
  v41 = a11;
  v17 = a10;
  v39 = a9;
  v38 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  LODWORD(a3) = [v17 width];
  v22 = [v17 height];
  v40 = a3 - 1;
  LODWORD(a6) = (a3 - 1 + self->_maxThreadExecutionWidth) / self->_maxThreadExecutionWidth * self->_maxThreadExecutionWidth;
  v55[0] = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  v54 = _D0;
  [LKTFlowGPU _computeScalingFactor:v20 dst_tex:v17 scale_xy_inv:&v54 coeff:v55];
  v48[0] = a3;
  v48[1] = v22;
  v49 = a6;
  v50 = v54;
  v51 = 0;
  v28 = v55;
  v29 = vld1_dup_f32(v28);
  v52 = v29;
  v53 = 0;
  v30 = [v21 computeCommandEncoder];
  [v30 setComputePipelineState:self->_computePipelines[5]];
  [v30 setTexture:v20 atIndex:0];
  [v30 setTexture:v19 atIndex:1];

  [v30 setTexture:v18 atIndex:2];
  [v30 setTexture:v38 atIndex:3];

  [v30 setTexture:v39 atIndex:4];
  [v30 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [v30 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [v30 setBuffer:self->_idt_buf offset:0 atIndex:2];
  [v30 setBytes:v48 length:48 atIndex:3];
  LODWORD(v19) = [(MTLComputePipelineState *)self->_computePipelines[5] threadExecutionWidth];
  v31 = [(MTLComputePipelineState *)self->_computePipelines[5] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + v19) / v19;
  v46 = (v22 - 1 + v31 / v19) / (v31 / v19);
  v47 = 1;
  v42 = v19;
  v43 = v31 / v19;
  v44 = 1;
  [v30 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [v30 endEncoding];

  v32 = v21;
  v33 = [v21 computeCommandEncoder];
  [v33 setComputePipelineState:self->_computePipelines[6]];
  [v33 setBuffer:self->_Adiagb_buf[0] offset:0 atIndex:0];
  [v33 setBuffer:self->_Ixy_buf[0] offset:0 atIndex:1];
  [v33 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:2];
  [v33 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:3];
  [v33 setBytes:v48 length:48 atIndex:4];
  LODWORD(v19) = [(MTLComputePipelineState *)self->_computePipelines[6] threadExecutionWidth];
  v34 = [(MTLComputePipelineState *)self->_computePipelines[6] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + v19) / v19;
  v46 = (v22 - 1 + v34 / v19) / (v34 / v19);
  v47 = 1;
  v42 = v19;
  v43 = v34 / v19;
  v44 = 1;
  [v33 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [v33 endEncoding];

  v35 = [v32 computeCommandEncoder];

  [v35 setComputePipelineState:self->_computePipelines[7]];
  [v35 setBuffer:self->_Adiagb_buf[1] offset:0 atIndex:0];
  [v35 setBuffer:self->_Ixy_buf[1] offset:0 atIndex:1];
  [v35 setBuffer:self->_idt_buf offset:0 atIndex:2];
  [v35 setTexture:v20 atIndex:0];

  [v35 setTexture:v17 atIndex:1];
  [v35 setTexture:v41 atIndex:2];

  [v35 setBytes:v48 length:48 atIndex:3];
  LODWORD(v19) = [(MTLComputePipelineState *)self->_computePipelines[7] threadExecutionWidth];
  v36 = [(MTLComputePipelineState *)self->_computePipelines[7] maxTotalThreadsPerThreadgroup];
  v45 = (v40 + v19) / v19;
  v46 = (v22 - 1 + v36 / v19) / (v36 / v19);
  v47 = 1;
  v42 = v19;
  v43 = v36 / v19;
  v44 = 1;
  [v35 dispatchThreadgroups:&v45 threadsPerThreadgroup:&v42];
  [v35 endEncoding];

  return 0;
}

- (int)_enqueueFlowConsistencyWithCommandBuffer:(id)a3 in_uv0_tex:(id)a4 in_uv1_tex:(id)a5 out_uv_tex:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  LODWORD(a5) = [v10 width];
  v14 = [v10 height];
  __asm { FMOV            V0.2S, #1.0 }

  v36 = _D0;
  v37 = _D0;
  v35 = 1065353216;
  v34 = 1065353216;
  [LKTFlowGPU _computeScalingFactor:v12 dst_tex:v10 scale_xy_inv:&v37 coeff:&v35];
  [LKTFlowGPU _computeScalingFactor:v11 dst_tex:v10 scale_xy_inv:&v36 coeff:&v34];
  v29 = 0;
  v28[0] = a5;
  v28[1] = v14;
  v30 = v37;
  v31 = v36;
  v20 = &v35;
  v21 = vld1_dup_f32(v20);
  v22 = vld1_dup_f32(&v34);
  v32 = v21;
  v33 = v22;
  v23 = [v13 computeCommandEncoder];

  [v23 setComputePipelineState:self->_computePipelines[8]];
  [v23 setTexture:v12 atIndex:0];

  [v23 setTexture:v11 atIndex:1];
  [v23 setTexture:v10 atIndex:2];
  [v23 setBytes:v28 length:48 atIndex:0];
  LODWORD(v11) = [(MTLComputePipelineState *)self->_computePipelines[8] threadExecutionWidth];
  LODWORD(v13) = [(MTLComputePipelineState *)self->_computePipelines[8] maxTotalThreadsPerThreadgroup]/ v11;
  v24 = (v11 + [v10 width] - 1) / v11;
  LODWORD(self) = [v10 height];

  v27[0] = v24;
  v27[1] = (v13 + self - 1) / v13;
  v27[2] = 1;
  v26[0] = v11;
  v26[1] = v13;
  v26[2] = 1;
  [v23 dispatchThreadgroups:v27 threadsPerThreadgroup:v26];
  [v23 endEncoding];

  return 0;
}

- (int)_doNLRegularizationWithCommandBuffer:(id)a3 in_uv_tex:(id)a4 join_tex:(id)a5 w_tex:(id)a6 out_uv_tex:(id)a7
{
  v12 = self;
  v28[1] = 0;
  v7.i64[0] = *&self->_nlreg_sigma_l;
  v28[0] = *&self->_nlreg_radius;
  v7.i32[3] = LODWORD(self->_nlreg_sigma_w);
  v13 = vaddq_f32(v7, v7);
  __asm { FMOV            V1.4S, #1.0 }

  v19 = vdivq_f32(_Q1, v13);
  v19.i32[2] = v19.i32[1];
  v29 = v19;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = [a3 computeCommandEncoder];
  [v24 setComputePipelineState:v12->_computePipelines[10]];
  [v24 setTexture:v23 atIndex:0];
  [v24 setTexture:v22 atIndex:1];

  [v24 setTexture:v21 atIndex:2];
  [v24 setTexture:v20 atIndex:3];

  [v24 setBytes:v28 length:32 atIndex:0];
  LODWORD(v20) = [(MTLComputePipelineState *)v12->_computePipelines[10] threadExecutionWidth];
  LODWORD(a3) = [(MTLComputePipelineState *)v12->_computePipelines[10] maxTotalThreadsPerThreadgroup]/ v20;
  LODWORD(v21) = (v20 + [v23 width] / 2 - 1) / v20;
  LODWORD(v12) = [v23 height];

  v27[0] = v21;
  v27[1] = (a3 + v12 / 2 - 1) / a3;
  v27[2] = 1;
  v26[0] = v20;
  v26[1] = a3;
  v26[2] = 1;
  [v24 dispatchThreadgroups:v27 threadsPerThreadgroup:v26];
  [v24 endEncoding];

  return 0;
}

+ (void)_computeScalingFactor:(id)a1 dst_tex:(SEL)a2 scale_xy_inv:(id)a3 coeff:(id)a4
{
  v6 = v5;
  v7 = v4;
  v25 = a3;
  v9 = a4;
  v10 = [v9 width];
  v11 = v10 / [v25 width];
  v12 = [v9 height];
  v13 = [v25 height];
  LODWORD(v14) = 1.5;
  *&v15 = v12 / v13;
  if (v11 <= 1.5 || *&v15 <= 1.5)
  {
    v17 = [v9 width];
    if (v17 != [v25 width] || (v18 = objc_msgSend(v9, "height"), v18 != objc_msgSend(v25, "height")))
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

- (id)newBufferWithPixelFormat:(unint64_t)a3 width:(int)a4 data:(const void *)a5
{
  v7 = [(LKTFlowGPU *)self bytesPerPixelForTextureFormat:a3]* a4;
  v8 = [(FigMetalContext *)self->_mtlContext device];
  v9 = v8;
  if (a5)
  {
    v10 = [v8 newBufferWithBytes:a5 length:v7 options:0];
  }

  else
  {
    v10 = [v8 newBufferWithLength:v7 options:0];
  }

  v11 = v10;

  return v11;
}

- (unint64_t)bytesPerPixelForTextureFormat:(unint64_t)a3
{
  v5 = a3 - 62;
  if (a3 - 62 <= 0x3F)
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

  if (a3 <= 0x3C)
  {
    if (((1 << a3) & 0x80743D00000) != 0)
    {
      return 2;
    }

    if (((1 << a3) & 0x7402) != 0)
    {
      return 1;
    }

    if (((1 << a3) & 0x10E0000000000000) != 0)
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

- (int)setOutputUVForward:(__CVBuffer *)a3 backward:(__CVBuffer *)a4
{
  if (a3)
  {
    CVPixelBufferGetWidth(a3);
    CVPixelBufferGetHeight(a3);
    mtlContext = self->_mtlContext;
    v8 = sub_BF00();
    v10 = [v9 bindPixelBufferToMTL2DTexture:v8 pixelFormat:? usage:? textureSize:? plane:?];
    uv_fwd_tex_user_ref = self->_uv_fwd_tex_user_ref;
    self->_uv_fwd_tex_user_ref = v10;

    if (!self->_uv_fwd_tex_user_ref)
    {
      return -12786;
    }

    if (a4)
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
  v2 = self;
  v3 = self->_nscales - 1;
  uv_fwd_tex = self->_uv_fwd_tex;
  v55 = self->_uv_fwd_tex[0][v3];
  uv_bwd_tex = v2->_uv_bwd_tex;
  v4 = v2->_uv_bwd_tex[0][v3];
  if (v2->_uv_bwd_tex_user_ref)
  {
    nscales = v2->_nscales;
    if (nscales < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      I_tex = v2->_I_tex;
      G1_tex = v2->_G1_tex;
      G0_tex = v2->_G0_tex;
      C1_tex = v2->_C1_tex;
      C0_tex = v2->_C0_tex;
      p_uv_fwd_tex_user_ref = &v2->_uv_fwd_tex_user_ref;
      p_uv_bwd_tex_user_ref = &v2->_uv_bwd_tex_user_ref;
      v36 = v2->_uv_bwd_tex[1];
      v43 = v3;
      v42 = v3;
      do
      {
        v8 = v6;
        v35 = nscales;
        v9 = nscales - 1;
        v10 = I_tex[v2->_current_frame_index][v9];
        v11 = I_tex[v2->_current_frame_index ^ 1][v9];
        v12 = [(MTLCommandQueue *)v2->_commandQueue commandBuffer];

        v13 = [NSString stringWithFormat:@"LKT:ComputeFlow level %d", v9];
        [v12 setLabel:v13];

        v34 = v10;
        [(LKTFlowGPU *)v2 _computeFeaturesWithCommandBuffer:v12 in_tex:v10 out_tex:G0_tex[v9]];
        v33 = v11;
        [(LKTFlowGPU *)v2 _computeFeaturesWithCommandBuffer:v12 in_tex:v11 out_tex:G1_tex[v9]];
        [(LKTFlowGPU *)v2 _computeFeaturesDerivativesWithCommandBuffer:v12 in_tex:G0_tex[v9] out_tex:C0_tex[v9]];
        v49 = v12;
        [(LKTFlowGPU *)v2 _computeFeaturesDerivativesWithCommandBuffer:v12 in_tex:G1_tex[v9] out_tex:C1_tex[v9]];
        v48 = v9;
        if (v2->_nwarpings >= 1)
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
                v27 = v14 + 3 <= v2->_nwarpings;
              }

              v28 = &v26[v48];
              if (!v27)
              {
                v28 = p_uv_fwd_tex_user_ref;
              }

              v29 = *v28;
              v22 = v2;
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
                v19 = v14 + 3 <= v2->_nwarpings;
              }

              v20 = p_uv_bwd_tex_user_ref;
              if (v19)
              {
                v20 = v40;
              }

              v21 = *v20;
              v22 = v2;
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
            v2 = v22;
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

- (int)_enqueueKeypointsFromFlowWithCommandBuffer:(id)a3 in_uv_fwd_tex:(id)a4 in_uv_bwd_tex:(id)a5 out_kpt_buf:(id)a6 block_size:(int)a7 bidirectional_error:(float)a8 out_num_keypoints:(unsigned __int16 *)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a3;
  v20 = [v16 width] / a7;
  v21 = [v16 height] / a7;
  v29 = a7;
  v31 = v21;
  v30 = v20;
  v32 = LODWORD(a8);
  v22 = [v19 computeCommandEncoder];

  if (v21 * v20 > 0x8000)
  {
    v25 = -12780;
  }

  else
  {
    [v22 setComputePipelineState:self->_computePipelines[9]];
    [v22 setTexture:v16 atIndex:0];
    [v22 setTexture:v17 atIndex:1];
    [v22 setBuffer:v18 offset:0 atIndex:0];
    [v22 setBytes:&v29 length:16 atIndex:1];
    v23 = [(MTLComputePipelineState *)self->_computePipelines[9] threadExecutionWidth];
    v24 = [(MTLComputePipelineState *)self->_computePipelines[9] maxTotalThreadsPerThreadgroup];
    v28[0] = (v20 + v23 - 1) / v23;
    v28[1] = (v21 + v24 / v23 - 1) / (v24 / v23);
    v28[2] = 1;
    v27[0] = v23;
    v27[1] = v24 / v23;
    v27[2] = 1;
    [v22 dispatchThreadgroups:v28 threadsPerThreadgroup:v27];
    [v22 endEncoding];
    v25 = 0;
    *a9 = v21 * v20;
  }

  return v25;
}

@end