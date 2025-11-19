@interface PTRenderPipeline
+ (BOOL)isMetalDeviceSupported:(id)a3;
+ (int)prewarmForCameraCaptured;
+ (int)prewarmWithDescriptor:(id)a3;
+ (void)prewarmForCameraCaptured;
- (PTRenderPipeline)initWithDescriptor:(id)a3;
- (id)createRenderStateWithQuality:(int)a3;
- (int)encodeRenderTo:(id)a3 withRenderRequest:(id)a4;
- (unint64_t)minimumResourceHeapSize;
- (void)minimumResourceHeapSize;
- (void)prewarm;
- (void)setResourceHeap:(id)a3;
@end

@implementation PTRenderPipeline

- (PTRenderPipeline)initWithDescriptor:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = PTRenderPipeline;
  v5 = [(PTRenderPipeline *)&v39 init];
  if (v5 && ([v4 device], v6 = objc_claimAutoreleasedReturnValue(), v7 = +[PTRenderPipeline isMetalDeviceSupported:](PTRenderPipeline, "isMetalDeviceSupported:", v6), v6, v7))
  {
    PTKTraceInit();
    kdebug_trace();
    v8 = _PTLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PTRenderPipeline initWithDescriptor:v8];
    }

    if (!v4)
    {
      v9 = _PTLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PTRenderPipeline initWithDescriptor:];
      }
    }

    v10 = [v4 copy];
    descriptor = v5->_descriptor;
    v5->_descriptor = v10;

    v5->_activeVersion = [v4 version];
    v12 = [v4 options];
    v13 = [v12 objectForKeyedSubscript:&unk_2837F3778];
    metalContext = v5->_metalContext;
    v5->_metalContext = v13;

    if (!v5->_metalContext)
    {
      v15 = [PTMetalContext alloc];
      v16 = [v4 device];
      v17 = [(PTMetalContext *)v15 initWithDevice:v16 bundleClass:objc_opt_class()];
      v18 = v5->_metalContext;
      v5->_metalContext = v17;

      [(PTMetalContext *)v5->_metalContext setAllowCommandbufferAllocation:0];
    }

    v19 = MEMORY[0x277CCACA8];
    [v4 disparitySize];
    v21 = v20;
    [v4 disparitySize];
    v23 = v22;
    [v4 disparitySize];
    v25 = v24;
    [v4 disparitySize];
    v27 = v26;
    [v4 colorInputSize];
    v29 = v28;
    [v4 colorInputSize];
    v31 = v30;
    [v4 colorOutputSize];
    v33 = v32;
    [v4 colorOutputSize];
    v35 = [v19 stringWithFormat:@"i-disp: %lux%lu u-disp: %lux%lu colorInput: %lux%lu colorOutput: %lux%lu", v21, v23, v25, v27, v29, v31, v33, v34];
    description = v5->_description;
    v5->_description = v35;

    kdebug_trace();
    v37 = v5;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

+ (BOOL)isMetalDeviceSupported:(id)a3
{
  v3 = [a3 supportsNonUniformThreadgroupSize];
  if ((v3 & 1) == 0)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[PTRenderPipeline isMetalDeviceSupported:];
    }
  }

  return v3;
}

+ (int)prewarmWithDescriptor:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  kdebug_trace();
  v4 = [[PTRenderPipeline alloc] initWithDescriptor:v3];
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [&unk_2837F39B8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(&unk_2837F39B8);
          }

          v9 = -[PTRenderPipeline createRenderStateWithQuality:](v4, "createRenderStateWithQuality:", [*(*(&v13 + 1) + 8 * i) intValue]);
          if (([v9 prepareForRendering:1] & 1) == 0)
          {
            v11 = _PTLogSystem();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              +[PTRenderPipeline prewarmWithDescriptor:];
            }

            goto LABEL_14;
          }
        }

        v6 = [&unk_2837F39B8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    kdebug_trace();
    v10 = 0;
  }

  else
  {
LABEL_14:
    v10 = -1;
  }

  return v10;
}

+ (int)prewarmForCameraCaptured
{
  v33[4] = *MEMORY[0x277D85DE8];
  v2 = CACurrentMediaTime();
  kdebug_trace();
  v3 = MTLCreateSystemDefaultDevice();
  v4 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:1 colorSize:2112.0 disparitySize:1188.0, 320.0, 180.0];
  v33[0] = v4;
  v5 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:2 colorSize:2112.0 disparitySize:1188.0, 512.0, 288.0];
  v33[1] = v5;
  v6 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:3 colorSize:2112.0 disparitySize:1188.0, 512.0, 288.0];
  v33[2] = v6;
  v25 = v3;
  v7 = [[PTRenderPipelineDescriptor alloc] initWithDevice:v3 version:+[PTRenderPipeline colorSize:"latestVersion"]disparitySize:2112.0, 1188.0, 512.0, 288.0];
  v33[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [PTRenderPipeline prewarmWithDescriptor:v15];
        if (v17)
        {
          v18 = v17;
          v19 = _PTLogSystem();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v31 = v18;
            _os_log_error_impl(&dword_2243FB000, v19, OS_LOG_TYPE_ERROR, "Failed to prewarm PTRenderPipeline (%d)", buf, 8u);
          }

          v12 = v18;
        }

        objc_autoreleasePoolPop(v16);
      }

      v11 = [v9 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v20 = CACurrentMediaTime() - v2;
  kdebug_trace();
  v21 = _PTLogSystem();
  v22 = v21;
  if (v20 <= 1.0)
  {
    v23 = v25;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      +[(PTRenderPipeline *)v22];
    }
  }

  else
  {
    v23 = v25;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[PTRenderPipeline prewarmForCameraCaptured];
    }
  }

  return v12;
}

- (void)prewarm
{
  v3 = [PTRenderPipelineDescriptor alloc];
  v4 = [(PTMetalContext *)self->_metalContext device];
  v5 = +[PTRenderPipeline latestVersion];
  [(PTRenderPipelineDescriptor *)self->_descriptor colorInputSize];
  v7 = v6;
  v9 = v8;
  [(PTRenderPipelineDescriptor *)self->_descriptor disparitySize];
  v12 = [(PTRenderPipelineDescriptor *)v3 initWithDevice:v4 version:v5 colorSize:v7 disparitySize:v9, v10, v11];

  [PTRenderPipeline prewarmWithDescriptor:v12];
}

- (id)createRenderStateWithQuality:(int)a3
{
  v3 = [[PTRenderPipelineState alloc] initWithPipelineDescriptor:self->_descriptor metalContext:self->_metalContext quality:*&a3];

  return v3;
}

- (int)encodeRenderTo:(id)a3 withRenderRequest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 renderState];
  v8 = [v7 encodeRenderTo:v6 withRenderRequest:v5];

  return v8;
}

- (unint64_t)minimumResourceHeapSize
{
  v2 = _PTLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [PTRenderPipeline minimumResourceHeapSize];
  }

  return 0;
}

- (void)setResourceHeap:(id)a3
{
  v3 = _PTLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [PTRenderPipeline setResourceHeap:];
  }
}

- (void)initWithDescriptor:(os_log_t)log .cold.1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 20250708;
  _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "PortraitRuntimeAPIVersion %i", v1, 8u);
}

+ (void)prewarmWithDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)prewarmForCameraCaptured
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&dword_2243FB000, log, OS_LOG_TYPE_DEBUG, "Prewarm PTRenderPipeline took %f seconds", &v2, 0xCu);
}

- (void)minimumResourceHeapSize
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setResourceHeap:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end