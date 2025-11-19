@interface PTMetalContext
- (BOOL)supportsFamily:(int64_t)a3;
- (MTLCommandBuffer)commandBuffer;
- (PTMetalContext)initWithCommandQueue:(id)a3 bundleClass:(Class)a4;
- (PTMetalContext)initWithDevice:(id)a3 bundleClass:(Class)a4;
- (PTMetalContext)initWithFigMetalContext:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)functionWithName:(id)a3 withConstants:(id)a4;
- (void)commit;
- (void)commitAndWaitUntilCompleted;
- (void)commitAndWaitUntilScheduled;
- (void)waitForIdle;
@end

@implementation PTMetalContext

- (PTMetalContext)initWithFigMetalContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PTMetalContext;
  v5 = [(PTMetalContext *)&v8 init];
  figMetalContext = v5->_figMetalContext;
  v5->_figMetalContext = v4;

  return v5;
}

- (PTMetalContext)initWithDevice:(id)a3 bundleClass:(Class)a4
{
  v6 = [a3 newCommandQueue];
  v7 = [(PTMetalContext *)self initWithCommandQueue:v6 bundleClass:a4];

  return v7;
}

- (PTMetalContext)initWithCommandQueue:(id)a3 bundleClass:(Class)a4
{
  v7 = a3;
  v23.receiver = self;
  v23.super_class = PTMetalContext;
  v8 = [(PTMetalContext *)&v23 init];
  if (v8)
  {
    v9 = [v7 device];
    device = v8->_device;
    v8->_device = v9;

    objc_storeStrong(&v8->_commandQueue, a3);
    v8->_allowCommandbufferAllocation = 0;
    v8->_imageblocksSupported = [(PTMetalContext *)v8 supportsFamily:1006];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:a4];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x277CF6C78]) initWithbundle:v11 andOptionalCommandQueue:v8->_commandQueue];
      figMetalContext = v8->_figMetalContext;
      v8->_figMetalContext = v12;

      v14 = [(FigMetalContext *)v8->_figMetalContext library];
      library = v8->_library;
      v8->_library = v14;

      v16 = [(FigMetalContext *)v8->_figMetalContext pipelineLibrary];
      pipelineLibrary = v8->_pipelineLibrary;
      v8->_pipelineLibrary = v16;

      v18 = [[PTMetalTextureUtil alloc] initWithMetalContext:v8];
      textureUtil = v8->_textureUtil;
      v8->_textureUtil = v18;

      v20 = v8;
    }

    else
    {
      v21 = _PTLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext initWithCommandQueue:bundleClass:];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (MTLCommandBuffer)commandBuffer
{
  if (self->_allowCommandbufferAllocation)
  {
    if ([(MTLCommandBuffer *)self->_commandBuffer status])
    {
      v3 = _PTLogSystem();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [(PTMetalContext *)v3 commandBuffer:v4];
      }
    }

    commandBuffer = self->_commandBuffer;
    if (!commandBuffer)
    {
      v12 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
      v13 = self->_commandBuffer;
      self->_commandBuffer = v12;

      v14 = self->_commandBuffer;
      if (!v14)
      {
        v15 = _PTLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __44__PTVFXResources_asyncVFXInit_metalContext___block_invoke_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
        }

        v14 = self->_commandBuffer;
      }

      [(MTLCommandBuffer *)v14 setLabel:@"Portrait.framework"];
      commandBuffer = self->_commandBuffer;
    }

    v23 = commandBuffer;
  }

  else
  {
    v24 = _PTLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [(PTMetalContext *)v24 commandBuffer:v25];
    }

    v23 = 0;
  }

  return v23;
}

- (void)commit
{
  [(PTMetalContext *)self checkCurrentThreadEqualsCommandBufferThread];
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

- (void)commitAndWaitUntilCompleted
{
  [(PTMetalContext *)self checkCurrentThreadEqualsCommandBufferThread];
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  [(MTLCommandBuffer *)self->_commandBuffer waitUntilCompleted];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

- (void)commitAndWaitUntilScheduled
{
  [(PTMetalContext *)self checkCurrentThreadEqualsCommandBufferThread];
  [(MTLCommandBuffer *)self->_commandBuffer commit];
  [(MTLCommandBuffer *)self->_commandBuffer waitUntilScheduled];
  commandBuffer = self->_commandBuffer;
  self->_commandBuffer = 0;
}

- (void)waitForIdle
{
  v3 = [(PTMetalContext *)self commandBuffer];

  [(PTMetalContext *)self commitAndWaitUntilCompleted];
}

- (id)functionWithName:(id)a3 withConstants:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v10 = [(MTLLibrary *)self->_library newFunctionWithName:v6];
    if (v10)
    {
      goto LABEL_20;
    }

    v11 = 0;
    goto LABEL_12;
  }

  pipelineLibrary = self->_pipelineLibrary;
  library = self->_library;
  if (pipelineLibrary)
  {
    v19 = 0;
    v10 = [(MTLLibrary *)library newFunctionWithName:v6 constantValues:v7 pipelineLibrary:pipelineLibrary error:&v19];
    v11 = v19;
    if (!v10)
    {
      v12 = _PTLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext functionWithName:v6 withConstants:?];
      }

      v13 = self->_library;
      v18 = v11;
      v10 = [(MTLLibrary *)v13 newFunctionWithName:v6 constantValues:v7 error:&v18];
      v14 = v18;

      v11 = v14;
      if (!v10)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v20 = 0;
    v10 = [(MTLLibrary *)library newFunctionWithName:v6 constantValues:v7 error:&v20];
    v11 = v20;
    if (!v10)
    {
LABEL_7:
      v15 = _PTLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext functionWithName:v11 withConstants:?];
      }

LABEL_12:
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTMetalContext functionWithName:v6 withConstants:?];
      }

      v10 = 0;
      goto LABEL_19;
    }
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  v16 = _PTLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [PTMetalContext functionWithName:v11 withConstants:v16];
  }

LABEL_19:

LABEL_20:

  return v10;
}

- (BOOL)supportsFamily:(int64_t)a3
{
  v5 = PTDefaultsPublicGetDictionary();
  v6 = [v5 objectForKeyedSubscript:@"harvesting.gpufamily"];
  v7 = [v6 intValue];

  if (v7)
  {
    return v7 >= a3;
  }

  device = self->_device;

  return [(MTLDevice *)device supportsFamily:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PTMetalContext alloc] initWithFigMetalContext:self->_figMetalContext];
  [(PTMetalContext *)v4 setDevice:self->_device];
  [(PTMetalContext *)v4 setCommandQueue:self->_commandQueue];
  [(PTMetalContext *)v4 setLibrary:self->_library];
  [(PTMetalContext *)v4 setCommandBuffer:0];
  [(PTMetalContext *)v4 setPipelineLibrary:self->_pipelineLibrary];
  [(PTMetalContext *)v4 setAllowCommandbufferAllocation:self->_allowCommandbufferAllocation];
  [(PTMetalContext *)v4 setImageblocksSupported:self->_imageblocksSupported];
  [(PTMetalContext *)v4 setTextureUtil:self->_textureUtil];
  return v4;
}

- (void)initWithCommandQueue:bundleClass:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_2243FB000, v0, OS_LOG_TYPE_ERROR, "Cannot load bundle from %@", v1, 0xCu);
}

- (void)functionWithName:(void *)a1 withConstants:.cold.1(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v1, v2, "Unable to load function %s from pipeline library. Retrying from library.", v3, v4, v5, v6, v7);
}

- (void)functionWithName:(void *)a1 withConstants:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  [v3 UTF8String];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "Metal shader compilation warnings: %s", v4, 0xCu);
}

- (void)functionWithName:(void *)a1 withConstants:.cold.3(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v2, v3, "Metal shader compilation error: %s", v4, v5, v6, v7, v8);
}

- (void)functionWithName:(void *)a1 withConstants:.cold.4(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v1, v2, "Unable to load function %s.", v3, v4, v5, v6, v7);
}

@end