@interface PTGlobalReduction
- (PTGlobalReduction)initWithMetalContext:(id)a3 textureSize:(CGSize)a4 pixelFormat:(unint64_t)a5;
- (void)parallelReduction:(id)a3 inTexture:(id)a4 globalBuffer:(id)a5 offset:(int)a6 pipelineState:(id)a7 reductionType:(int)a8 factor:(float)a9;
- (void)parallelReductionAverage:(id)a3 inTexture:(id)a4 outGlobalAverage:(id)a5;
- (void)parallelReductionMax:(id)a3 inTexture:(id)a4 globalMaxBuffer:(id)a5;
- (void)parallelReductionMin:(id)a3 inTexture:(id)a4 globalMinBuffer:(id)a5;
- (void)parallelReductionMinMax:(id)a3 inTexture:(id)a4 globalMinMaxBuffer:(id)a5;
- (void)parallelReductionTextureMinMaxSimd:(id)a3 inTexture:(id)a4 globalBuffer:(id)a5;
- (void)parallelReductionTextureSimd:(id)a3 inTexture:(id)a4 globalBuffer:(id)a5 offset:(int)a6 reductionType:(int)a7 factor:(float)a8;
@end

@implementation PTGlobalReduction

- (PTGlobalReduction)initWithMetalContext:(id)a3 textureSize:(CGSize)a4 pixelFormat:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v123.receiver = self;
  v123.super_class = PTGlobalReduction;
  v11 = [(PTGlobalReduction *)&v123 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_metalContext, a3);
    v13 = [(PTMetalContext *)v12->_metalContext supportsFamily:1007];
    v12->_supportGpuSIMD = v13;
    if (v13)
    {
      v14 = [v10 computePipelineStateFor:@"parallelReductionTextureSimd" withConstants:0];
      parallelReductionTextureSimd = v12->_parallelReductionTextureSimd;
      v12->_parallelReductionTextureSimd = v14;

      if (v12->_parallelReductionTextureSimd)
      {
        v16 = [v10 computePipelineStateFor:@"parallelReductionTextureMinMaxSimd" withConstants:0];
        parallelReductionTextureMinMaxSimd = v12->_parallelReductionTextureMinMaxSimd;
        v12->_parallelReductionTextureMinMaxSimd = v16;

        if (v12->_parallelReductionTextureMinMaxSimd)
        {
          v18 = [(MTLComputePipelineState *)v12->_parallelReductionTextureSimd threadExecutionWidth];
          v12->simdReductionThreadsPerGroup.width = 4;
          v12->simdReductionThreadsPerGroup.height = v18 >> 2;
          v12->simdReductionThreadsPerGroup.depth = 1;
          if ([(MTLComputePipelineState *)v12->_parallelReductionTextureSimd maxTotalThreadsPerThreadgroup]< v12->simdReductionThreadsPerGroup.height * v12->simdReductionThreadsPerGroup.width)
          {
            v19 = _PTLogSystem();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [(PTGlobalReduction *)v19 initWithMetalContext:v20 textureSize:v21 pixelFormat:v22, v23, v24, v25, v26];
            }
          }

          v27 = objc_opt_new();
          v28 = width;
          v29 = height;
          v30 = height;
          v31 = width;
          while (1)
          {
            v32 = 2 * v12->simdReductionThreadsPerGroup.width;
            v33 = 2 * v12->simdReductionThreadsPerGroup.height;
            if (v32 >= v31 && v33 >= v30)
            {
              break;
            }

            v31 = vcvtps_s32_f32(v31 / v32);
            v30 = vcvtps_s32_f32(v30 / v33);
            v34 = [(PTMetalContext *)v12->_metalContext textureUtil];
            v35 = [v34 createWithWidth:v31 height:v30 pixelFormat:a5];

            if (!v35)
            {
              v70 = _PTLogSystem();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                [(PTGlobalReduction *)v70 initWithMetalContext:v71 textureSize:v72 pixelFormat:v73, v74, v75, v76, v77];
              }

              goto LABEL_46;
            }

            [v27 addObject:v35];
          }

          v99 = [v27 copy];
          simdTextures = v12->_simdTextures;
          v12->_simdTextures = v99;

          for (i = objc_opt_new(); ; [i addObject:v27])
          {

            v102 = 2 * v12->simdReductionThreadsPerGroup.width;
            v103 = 2 * v12->simdReductionThreadsPerGroup.height;
            if (v102 >= v28 && v103 >= v29)
            {
              v121 = [i copy];
              simdMinMaxTextures = v12->_simdMinMaxTextures;
              v12->_simdMinMaxTextures = v121;

              goto LABEL_48;
            }

            v28 = vcvtps_s32_f32(v28 / v102);
            v29 = 2 * vcvtps_s32_f32(v29 / v103);
            v104 = [(PTMetalContext *)v12->_metalContext textureUtil];
            v27 = [v104 createWithWidth:v28 height:v29 pixelFormat:a5];

            if (!v27)
            {
              break;
            }
          }

          v70 = _PTLogSystem();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            [(PTGlobalReduction *)v70 initWithMetalContext:v114 textureSize:v115 pixelFormat:v116, v117, v118, v119, v120];
          }

          v27 = i;
LABEL_46:

          goto LABEL_41;
        }

        v48 = _PTLogSystem();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [(PTGlobalReduction *)v48 initWithMetalContext:v78 textureSize:v79 pixelFormat:v80, v81, v82, v83, v84];
        }
      }

      else
      {
        v48 = _PTLogSystem();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [(PTGlobalReduction *)v48 initWithMetalContext:v56 textureSize:v57 pixelFormat:v58, v59, v60, v61, v62];
        }
      }
    }

    else
    {
      v36 = [(PTMetalContext *)v12->_metalContext textureUtil];
      v37 = [v36 createWithWidth:((width + 1.0) * 0.5) height:((height + 1.0) * 0.5) pixelFormat:a5];
      texPing = v12->_texPing;
      v12->_texPing = v37;

      if (v12->_texPing)
      {
        v39 = [(PTMetalContext *)v12->_metalContext textureUtil];
        v40 = [v39 createWithWidth:(-[MTLTexture width](v12->_texPing height:"width") + 1) >> 1 pixelFormat:(-[MTLTexture height](v12->_texPing, "height") + 1) >> 1, a5];
        texPong = v12->_texPong;
        v12->_texPong = v40;

        if (v12->_texPong)
        {
          v42 = [v10 computePipelineStateFor:@"parallelReductionAverage" withConstants:0];
          parallelReductionAverage = v12->_parallelReductionAverage;
          v12->_parallelReductionAverage = v42;

          if (v12->_parallelReductionAverage)
          {
            v44 = [v10 computePipelineStateFor:@"parallelReductionMax" withConstants:0];
            parallelReductionMax = v12->_parallelReductionMax;
            v12->_parallelReductionMax = v44;

            if (v12->_parallelReductionMax)
            {
              v46 = [v10 computePipelineStateFor:@"parallelReductionMin" withConstants:0];
              parallelReductionMin = v12->_parallelReductionMin;
              v12->_parallelReductionMin = v46;

              if (v12->_parallelReductionMin)
              {
LABEL_48:
                v112 = v12;
                goto LABEL_42;
              }

              v48 = _PTLogSystem();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                [(PTGlobalReduction *)v48 initWithMetalContext:v49 textureSize:v50 pixelFormat:v51, v52, v53, v54, v55];
              }
            }

            else
            {
              v48 = _PTLogSystem();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                [(PTGlobalReduction *)v48 initWithMetalContext:v105 textureSize:v106 pixelFormat:v107, v108, v109, v110, v111];
              }
            }
          }

          else
          {
            v48 = _PTLogSystem();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
            {
              [(PTGlobalReduction *)v48 initWithMetalContext:v92 textureSize:v93 pixelFormat:v94, v95, v96, v97, v98];
            }
          }
        }

        else
        {
          v48 = _PTLogSystem();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [(PTGlobalReduction *)v48 initWithMetalContext:v85 textureSize:v86 pixelFormat:v87, v88, v89, v90, v91];
          }
        }
      }

      else
      {
        v48 = _PTLogSystem();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          [(PTGlobalReduction *)v48 initWithMetalContext:v63 textureSize:v64 pixelFormat:v65, v66, v67, v68, v69];
        }
      }
    }
  }

LABEL_41:
  v112 = 0;
LABEL_42:

  return v112;
}

- (void)parallelReductionAverage:(id)a3 inTexture:(id)a4 outGlobalAverage:(id)a5
{
  parallelReductionAverage = self->_parallelReductionAverage;
  v9 = a5;
  v10 = a4;
  v13 = a3;
  v11 = [v10 width];
  v12 = 1.0 / ([v10 height] * v11);
  *&v12 = v12;
  [(PTGlobalReduction *)self parallelReduction:v13 inTexture:v10 globalBuffer:v9 offset:0 pipelineState:parallelReductionAverage reductionType:2 factor:v12];
}

- (void)parallelReductionMax:(id)a3 inTexture:(id)a4 globalMaxBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 length] <= 3)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTGlobalReduction *)v12 parallelReductionMax:v13 inTexture:v14 globalMaxBuffer:v15, v16, v17, v18, v19];
    }
  }

  LODWORD(v11) = 1.0;
  [(PTGlobalReduction *)self parallelReduction:v8 inTexture:v9 globalBuffer:v10 offset:0 pipelineState:self->_parallelReductionMax reductionType:1 factor:v11];
}

- (void)parallelReductionMin:(id)a3 inTexture:(id)a4 globalMinBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 length] <= 3)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTGlobalReduction *)v12 parallelReductionMax:v13 inTexture:v14 globalMaxBuffer:v15, v16, v17, v18, v19];
    }
  }

  LODWORD(v11) = 1.0;
  [(PTGlobalReduction *)self parallelReduction:v8 inTexture:v9 globalBuffer:v10 offset:0 pipelineState:self->_parallelReductionMin reductionType:0 factor:v11];
}

- (void)parallelReductionMinMax:(id)a3 inTexture:(id)a4 globalMinMaxBuffer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 length] <= 7)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTGlobalReduction *)v12 parallelReductionMinMax:v13 inTexture:v14 globalMinMaxBuffer:v15, v16, v17, v18, v19];
    }
  }

  if (self->_supportGpuSIMD)
  {
    [(PTGlobalReduction *)self parallelReductionTextureMinMaxSimd:v8 inTexture:v9 globalBuffer:v10];
  }

  else
  {
    LODWORD(v11) = 1.0;
    [(PTGlobalReduction *)self parallelReduction:v8 inTexture:v9 globalBuffer:v10 offset:0 pipelineState:self->_parallelReductionMin reductionType:0 factor:v11];
    LODWORD(v20) = 1.0;
    [(PTGlobalReduction *)self parallelReduction:v8 inTexture:v9 globalBuffer:v10 offset:4 pipelineState:self->_parallelReductionMax reductionType:1 factor:v20];
  }
}

- (void)parallelReduction:(id)a3 inTexture:(id)a4 globalBuffer:(id)a5 offset:(int)a6 pipelineState:(id)a7 reductionType:(int)a8 factor:(float)a9
{
  v10 = *&a8;
  v12 = *&a6;
  v16 = a4;
  v17 = a5;
  v48 = a7;
  if (self->_supportGpuSIMD)
  {
    *&v18 = a9;
    [(PTGlobalReduction *)self parallelReductionTextureSimd:a3 inTexture:v16 globalBuffer:v17 offset:v12 reductionType:v10 factor:v18];
  }

  else
  {
    v19 = [a3 computeCommandEncoder];
    if (!v19)
    {
      v20 = _PTLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v20 disparityApplyPostModifier:v21 inDisparity:v22 outDisparity:v23 postModifier:v24, v25, v26, v27];
      }
    }

    v46 = self;
    v47 = v17;
    v28 = [v16 width];
    v29 = [v16 height];
    v30 = v29;
    if (v28 > 1 || v29 >= 2)
    {
      v31 = 0;
      p_texPing = &self->_texPing;
      v45 = v12;
      while (1)
      {
        v33 = v30;
        *&v34 = v28 + -0.5;
        v35 = v30 + -0.5;
        *(&v34 + 1) = v35;
        v53 = v34;
        v36 = [v16 width];
        v52 = ([v16 height] * v36);
        if (v31)
        {
          p_texPong = p_texPing;
        }

        else
        {
          p_texPong = &v46->_texPong;
        }

        v38 = *p_texPong;
        if (v31)
        {
          v39 = &v46->_texPong;
        }

        else
        {
          v39 = p_texPing;
        }

        v40 = *v39;
        if (v31)
        {
          v41 = v38;
        }

        else
        {
          v41 = v16;
        }

        v42 = v41;
        if ((v28 - 1) <= 1 && (v33 - 1) <= 1)
        {

          v40 = 0;
        }

        [v19 setComputePipelineState:v48];
        [v19 setTexture:v42 atIndex:0];
        [v19 setTexture:v40 atIndex:1];
        [v19 setBuffer:v47 offset:v45 atIndex:0];
        if (v46->_parallelReductionAverage == v48)
        {
          [v19 setBytes:&v53 length:8 atIndex:1];
          [v19 setBytes:&v52 length:4 atIndex:2];
        }

        v43 = (v28 + 1) / 2;
        v30 = (v33 + 1) / 2;
        v51[0] = v43;
        v51[1] = v30;
        v51[2] = 1;
        v49 = vdupq_n_s64(8uLL);
        v50 = 1;
        [v19 dispatchThreads:v51 threadsPerThreadgroup:&v49];

        ++v31;
        v44 = v28 <= 2;
        v28 = v43;
        if (v44)
        {
          v28 = v43;
          if (v33 <= 2)
          {
            break;
          }
        }
      }
    }

    [v19 endEncoding];

    v17 = v47;
  }
}

- (void)parallelReductionTextureSimd:(id)a3 inTexture:(id)a4 globalBuffer:(id)a5 offset:(int)a6 reductionType:(int)a7 factor:(float)a8
{
  v31 = a4;
  v14 = a5;
  v36 = a7;
  v35 = a8;
  v15 = [a3 computeCommandEncoder];
  if (!v15)
  {
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v16 disparityApplyPostModifier:v17 inDisparity:v18 outDisparity:v19 postModifier:v20, v21, v22, v23];
    }
  }

  [(NSArray *)self->_simdTextures count];
  v24 = 0;
  do
  {
    if (v24)
    {
      v25 = [(NSArray *)self->_simdTextures objectAtIndexedSubscript:v24 - 1];
    }

    else
    {
      v25 = v31;
    }

    v26 = v25;
    if (v24 == [(NSArray *)self->_simdTextures count])
    {
      v27 = 0;
    }

    else
    {
      v27 = [(NSArray *)self->_simdTextures objectAtIndexedSubscript:v24];
    }

    v28 = ([v26 width] + 1) >> 1;
    v29 = ([v26 height] + 1) >> 1;
    [v15 setComputePipelineState:self->_parallelReductionTextureSimd];
    [v15 setTexture:v26 atIndex:0];
    [v15 setTexture:v27 atIndex:1];
    [v15 setBytes:&v35 length:4 atIndex:0];
    [v15 setBuffer:v14 offset:a6 atIndex:1];
    [v15 setBytes:&v36 length:4 atIndex:2];
    v34[0] = v28;
    v34[1] = v29;
    v34[2] = 1;
    v32 = *&self->simdReductionThreadsPerGroup.width;
    depth = self->simdReductionThreadsPerGroup.depth;
    [v15 dispatchThreads:v34 threadsPerThreadgroup:&v32];
  }

  while ([(NSArray *)self->_simdTextures count]> v24++);
  [v15 endEncoding];
}

- (void)parallelReductionTextureMinMaxSimd:(id)a3 inTexture:(id)a4 globalBuffer:(id)a5
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v19 = a4;
  v9 = a5;
  [(NSArray *)self->_simdMinMaxTextures count];
  v10 = 0;
  do
  {
    if (v10)
    {
      v11 = [(NSArray *)self->_simdMinMaxTextures objectAtIndexedSubscript:v10 - 1];
    }

    else
    {
      v11 = v19;
    }

    v12 = v11;
    if (v10 == [(NSArray *)self->_simdMinMaxTextures count])
    {
      v13 = 0;
    }

    else
    {
      v13 = [(NSArray *)self->_simdMinMaxTextures objectAtIndexedSubscript:v10];
    }

    v14 = [v12 width];
    v15 = [v12 height];
    v16 = [v8 computeCommandEncoder];
    if (!v16)
    {
      v17 = _PTLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTGlobalReduction parallelReductionTextureMinMaxSimd:buf inTexture:v24 globalBuffer:v17];
      }
    }

    [v16 setComputePipelineState:self->_parallelReductionTextureMinMaxSimd];
    [v16 setTexture:v12 atIndex:0];
    [v16 setTexture:v13 atIndex:1];
    [v16 setBuffer:v9 offset:0 atIndex:0];
    v22[0] = (v14 + 1) >> 1;
    v22[1] = (v15 + 1) >> 1;
    v22[2] = 1;
    v20 = *&self->simdReductionThreadsPerGroup.width;
    depth = self->simdReductionThreadsPerGroup.depth;
    [v16 dispatchThreads:v22 threadsPerThreadgroup:&v20];
    [v16 endEncoding];
  }

  while ([(NSArray *)self->_simdMinMaxTextures count]> v10++);
}

- (void)parallelReductionTextureMinMaxSimd:(uint8_t *)buf inTexture:(void *)a2 globalBuffer:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "computeEncoder";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", buf, 0xCu);
}

@end