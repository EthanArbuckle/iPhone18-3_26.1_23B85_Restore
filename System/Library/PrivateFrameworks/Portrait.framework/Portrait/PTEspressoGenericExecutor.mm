@interface PTEspressoGenericExecutor
+ (unint64_t)getEspressoMetalDeviceId:(id)id;
- (PTEspressoGenericExecutor)initWithMetalContext:(id)context;
- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration;
- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration ANEConfig:(id)self0;
- (signed)bindBuffers:(id)buffers toMap:(id)map isInput:(BOOL)input;
- (signed)bindTensorSwaps:(id)swaps;
- (unsigned)bindInputResourceWithName:(id)name to:(__CVBuffer *)to;
- (unsigned)convertBindInput:(id)input;
- (unsigned)convertBindOutput:(id)output;
- (unsigned)execute;
- (unsigned)executeAsync:(id)async metalContext:(id)context;
- (unsigned)tensorSwap:(int)swap;
- (void)convertInterleavedWithMetalContext:(id)context inInterleaved:(id)interleaved outPlanar:(id)planar;
- (void)convertPlanarWithMetalContext:(id)context inPlanarTexture:(id)texture outInterleaved:(id)interleaved;
- (void)dealloc;
- (void)execute;
@end

@implementation PTEspressoGenericExecutor

- (PTEspressoGenericExecutor)initWithMetalContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = PTEspressoGenericExecutor;
  v6 = [(PTEspressoGenericExecutor *)&v15 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v8 = [contextCopy computePipelineStateFor:@"interleavedToPlanar" withConstants:0];
  interleavedToPlanar = v7->_interleavedToPlanar;
  v7->_interleavedToPlanar = v8;

  if (!v7->_interleavedToPlanar)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:];
    }

    goto LABEL_9;
  }

  v10 = [contextCopy computePipelineStateFor:@"planarToInterleaved" withConstants:0];
  planarToInterleaved = v7->_planarToInterleaved;
  v7->_planarToInterleaved = v10;

  if (!v7->_planarToInterleaved)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:];
    }

LABEL_9:

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = v7;
LABEL_11:

  return v12;
}

- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration
{
  configurationCopy = configuration;
  swapNamesCopy = swapNames;
  outputNamesCopy = outputNames;
  namesCopy = names;
  urlCopy = url;
  contextCopy = context;
  v22 = +[PTInference ANEConfigForSynchronousWork];
  v23 = [(PTEspressoGenericExecutor *)self initWithMetalContext:contextCopy url:urlCopy inputNames:namesCopy outputNames:outputNamesCopy tensorSwapNames:swapNamesCopy reshapeNetworkSize:size configuration:configurationCopy ANEConfig:v22];

  return v23;
}

- (PTEspressoGenericExecutor)initWithMetalContext:(id)context url:(id)url inputNames:(id)names outputNames:(id)outputNames tensorSwapNames:(id)swapNames reshapeNetworkSize:(id *)size configuration:(id)configuration ANEConfig:(id)self0
{
  v47 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  namesCopy = names;
  outputNamesCopy = outputNames;
  swapNamesCopy = swapNames;
  configurationCopy = configuration;
  configCopy = config;
  v23 = [(PTEspressoGenericExecutor *)self initWithMetalContext:context];
  v24 = v23;
  if (!v23)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v23->_url, url);
  v25 = dispatch_queue_create("com.apple.portrait.espresso_callback", 0);
  espressoCallbackQueue = v24->_espressoCallbackQueue;
  v24->_espressoCallbackQueue = v25;

  v27 = objc_opt_new();
  inputInterleavedToPlanarConversion = v24->_inputInterleavedToPlanarConversion;
  v24->_inputInterleavedToPlanarConversion = v27;

  v29 = objc_opt_new();
  outputPlanarToInterleavedConversion = v24->_outputPlanarToInterleavedConversion;
  v24->_outputPlanarToInterleavedConversion = v29;

  [configCopy espressoEngine];
  context = espresso_create_context();
  v24->_ctx = context;
  if (!context)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
    }

    goto LABEL_11;
  }

  v24->_plan = espresso_create_plan();
  path = [urlCopy path];
  [path UTF8String];
  v33 = espresso_plan_add_network();

  if (v33)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
    }
  }

  else
  {
    [configCopy espressoPlanPriority];
    if (espresso_plan_set_priority())
    {
      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
      }
    }

    else
    {
      version = espresso_network_get_version();
      v38 = _PTLogSystem();
      networkVersion = v38;
      if (version)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
        }
      }

      else
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
        }

        v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:v46];
        networkVersion = v24->_networkVersion;
        v24->_networkVersion = v40;
      }

      if (!configurationCopy || ([configurationCopy UTF8String], !espresso_network_select_configuration()))
      {
        if (size)
        {
          v34 = [namesCopy objectAtIndexedSubscript:0];
          [v34 UTF8String];
          if (espresso_network_change_input_blob_shapes_seq())
          {
            v41 = _PTLogSystem();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
            }

            goto LABEL_11;
          }
        }

        if (espresso_plan_build())
        {
          v34 = _PTLogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
          }
        }

        else
        {
          [(PTEspressoGenericExecutor *)v24 bindTensorSwaps:swapNamesCopy];
          v42 = objc_opt_new();
          inputsMap = v24->_inputsMap;
          v24->_inputsMap = v42;

          if ([(PTEspressoGenericExecutor *)v24 bindBuffers:namesCopy toMap:v24->_inputsMap isInput:1])
          {
            v34 = _PTLogSystem();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
            }
          }

          else
          {
            v44 = objc_opt_new();
            outputsMap = v24->_outputsMap;
            v24->_outputsMap = v44;

            if (![(PTEspressoGenericExecutor *)v24 bindBuffers:outputNamesCopy toMap:v24->_outputsMap isInput:0])
            {
              v35 = v24;
              goto LABEL_13;
            }

            v34 = _PTLogSystem();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
            }
          }
        }

        goto LABEL_11;
      }

      v34 = _PTLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:];
      }
    }
  }

LABEL_11:

LABEL_12:
  v35 = 0;
LABEL_13:

  return v35;
}

- (signed)bindTensorSwaps:(id)swaps
{
  v18[2] = *MEMORY[0x277D85DE8];
  swapsCopy = swaps;
  v5 = objc_opt_new();
  tensorSwap = self->_tensorSwap;
  self->_tensorSwap = v5;

  v18[0] = 0;
  v18[1] = 0;
  if ([swapsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [swapsCopy objectAtIndexedSubscript:{v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
      [v8 UTF8String];
      v9 = espresso_network_bind_buffer();

      if (v9)
      {
        break;
      }

      v18[v7 & 1] = v17;
      if (v7)
      {
        v10 = [PTTensorSwapPair alloc];
        v11 = [swapsCopy subarrayWithRange:{v7 - 1, 2}];
        v12 = [(PTTensorSwapPair *)v10 initWithIOSurfaces:v18 names:v11];

        [(NSMutableArray *)self->_tensorSwap addObject:v12];
      }

      if ([swapsCopy count] <= ++v7)
      {
        goto LABEL_7;
      }
    }

    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(PTEspressoGenericExecutor *)swapsCopy bindTensorSwaps:v7];
    }

    v13 = 1;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13 << 31 >> 31;
}

- (signed)bindBuffers:(id)buffers toMap:(id)map isInput:(BOOL)input
{
  inputCopy = input;
  v68 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  mapCopy = map;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = buffersCopy;
  v46 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (!v46)
  {
    v38 = 0;
    goto LABEL_47;
  }

  v45 = *v60;
  v42 = inputCopy;
  allocator = *MEMORY[0x277CBECE8];
  v10 = 64;
  if (inputCopy)
  {
    v10 = 56;
  }

  v41 = v10;
  while (2)
  {
    for (i = 0; i != v46; ++i)
    {
      if (*v60 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v59 + 1) + 8 * i);
      v13 = [mapCopy objectForKeyedSubscript:{v12, v41}];

      if (v13)
      {
        v39 = _PTLogSystem();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor bindBuffers:toMap:isInput:];
        }

        goto LABEL_46;
      }

      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      *surface = 0u;
      v49 = 0u;
      [v12 UTF8String];
      if (espresso_network_bind_buffer())
      {
        v39 = _PTLogSystem();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor bindBuffers:toMap:isInput:];
        }

LABEL_46:

        v38 = -1;
        goto LABEL_47;
      }

      v14 = surface[0];
      pixelBufferOut = 0;
      if (CVPixelBufferCreateWithIOSurface(allocator, surface[0], 0, &pixelBufferOut))
      {
        v15 = _PTLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(PTTensorSwapPair *)buf initWithIOSurfaces:v15 names:?];
        }
      }

      v16 = pixelBufferOut;
      device = [(PTMetalContext *)self->_metalContext device];
      v18 = [PTPixelBufferUtil getMTLTextureDescriptor:v16 device:device];

      height = [v18 height];
      if (height == *(&v53 + 1))
      {
        width = [v18 width];
        if (width == v53)
        {
          device2 = [(PTMetalContext *)self->_metalContext device];
          device4 = [device2 newTextureWithDescriptor:v18 iosurface:v14 plane:0];
          [mapCopy setObject:device4 forKeyedSubscript:v12];
          goto LABEL_38;
        }
      }

      v23 = v54;
      v24 = pixelBufferOut;
      device3 = [(PTMetalContext *)self->_metalContext device];
      device2 = [PTPixelBufferUtil getMTLTextureDescriptor:v24 device:device3];

      if ([device2 pixelFormat] == 10)
      {
        v26 = v23 == 2;
        v27 = 80;
        v28 = 30;
      }

      else
      {
        if ([device2 pixelFormat] != 25)
        {
          v30 = _PTLogSystem();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [(PTEspressoGenericExecutor *)v63 bindBuffers:device2 toMap:&v64 isInput:v30];
          }

          goto LABEL_28;
        }

        v26 = v23 == 2;
        v27 = 115;
        v28 = 65;
      }

      if (v26)
      {
        v29 = v28;
      }

      else
      {
        v29 = v27;
      }

      [device2 setPixelFormat:v29];
LABEL_28:
      height2 = [device2 height];
      if (height2 == *(&v53 + 1))
      {
        [device2 setWidth:v53];
        device4 = [(PTMetalContext *)self->_metalContext device];
        v32 = [device4 newTextureWithDescriptor:device2 iosurface:v14 plane:0];
        v33 = v32;
      }

      else
      {
        [device2 setHeight:?];
        device5 = [(PTMetalContext *)self->_metalContext device];
        v32 = [device5 newTextureWithDescriptor:device2];

        device6 = [(PTMetalContext *)self->_metalContext device];
        v33 = [device6 newTextureWithDescriptor:v18 iosurface:v14 plane:0];

        if (v42)
        {
          v36 = v32;
        }

        else
        {
          v36 = v33;
        }

        if (v42)
        {
          v37 = v33;
        }

        else
        {
          v37 = v32;
        }

        [*(&self->super.isa + v41) addObject:v36];
        [*(&self->super.isa + v41) addObject:v37];
        device4 = v32;
      }

      [mapCopy setObject:v32 forKeyedSubscript:v12];

LABEL_38:
      CVPixelBufferRelease(pixelBufferOut);
    }

    v38 = 0;
    v46 = [obj countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_47:

  return v38;
}

+ (unint64_t)getEspressoMetalDeviceId:(id)id
{
  v13[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v4 = MTLCreateSystemDefaultDevice();
  v13[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];

  v6 = [v5 count];
  registryID = [idCopy registryID];
  if (v6)
  {
    v8 = registryID;
    v9 = 0;
    while (1)
    {
      v10 = [v5 objectAtIndexedSubscript:v9];
      registryID2 = [v10 registryID];

      if (registryID2 == v8)
      {
        break;
      }

      if (v6 == ++v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v9 = -1;
  }

  return v9;
}

- (unsigned)bindInputResourceWithName:(id)name to:(__CVBuffer *)to
{
  nameCopy = name;
  [name UTF8String];
  result = espresso_network_bind_cvpixelbuffer();
  if (result)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor bindInputResourceWithName:to:];
    }

    return -1;
  }

  return result;
}

- (unsigned)convertBindInput:(id)input
{
  inputCopy = input;
  if ([(NSMutableArray *)self->_inputInterleavedToPlanarConversion count])
  {
    commandBuffer = [inputCopy commandBuffer];

    if (!commandBuffer)
    {
      v6 = _PTLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor convertBindInput:];
      }
    }

    commandBuffer2 = [inputCopy commandBuffer];
    [commandBuffer2 setLabel:@"PTEspressoGenericExecutor convertBindInput"];

    if ([(NSMutableArray *)self->_inputInterleavedToPlanarConversion count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->_inputInterleavedToPlanarConversion objectAtIndexedSubscript:v8];
        v10 = [(NSMutableArray *)self->_inputInterleavedToPlanarConversion objectAtIndexedSubscript:v8 + 1];
        [(PTEspressoGenericExecutor *)self convertInterleavedWithMetalContext:inputCopy inInterleaved:v9 outPlanar:v10];

        v8 += 2;
      }

      while ([(NSMutableArray *)self->_inputInterleavedToPlanarConversion count]> v8);
    }

    [inputCopy commitAndWaitUntilScheduled];
  }

  return 0;
}

- (unsigned)convertBindOutput:(id)output
{
  outputCopy = output;
  if ([(NSMutableArray *)self->_outputPlanarToInterleavedConversion count])
  {
    commandBuffer = [outputCopy commandBuffer];

    if (!commandBuffer)
    {
      v6 = _PTLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor convertBindInput:];
      }
    }

    commandBuffer2 = [outputCopy commandBuffer];
    [commandBuffer2 setLabel:@"PTEspressoGenericExecutor convertBindOutput"];

    if ([(NSMutableArray *)self->_outputPlanarToInterleavedConversion count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSMutableArray *)self->_outputPlanarToInterleavedConversion objectAtIndexedSubscript:v8];
        v10 = [(NSMutableArray *)self->_outputPlanarToInterleavedConversion objectAtIndexedSubscript:v8 + 1];
        [(PTEspressoGenericExecutor *)self convertPlanarWithMetalContext:outputCopy inPlanarTexture:v9 outInterleaved:v10];

        v8 += 2;
      }

      while ([(NSMutableArray *)self->_outputPlanarToInterleavedConversion count]> v8);
    }

    [outputCopy commitAndWaitUntilScheduled];
  }

  return 0;
}

- (unsigned)execute
{
  result = [(PTEspressoGenericExecutor *)self convertBindInput:self->_metalContext];
  if (!result)
  {
    if (espresso_plan_execute_sync())
    {
      v4 = _PTLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor execute];
      }

      return -2;
    }

    else
    {
      metalContext = self->_metalContext;

      return [(PTEspressoGenericExecutor *)self convertBindOutput:metalContext];
    }
  }

  return result;
}

- (unsigned)executeAsync:(id)async metalContext:(id)context
{
  asyncCopy = async;
  v7 = [(PTEspressoGenericExecutor *)self convertBindInput:context];
  if (!v7)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = asyncCopy;
    if (espresso_plan_submit())
    {
      v8 = _PTLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PTEspressoGenericExecutor executeAsync:metalContext:];
      }

      v7 = -2;
    }

    else
    {
      v7 = [(PTEspressoGenericExecutor *)self convertBindOutput:self->_metalContext, v10, 3221225472, __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke, &unk_278523208, self, v11];
    }
  }

  return v7;
}

uint64_t __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke(uint64_t a1, int *a2)
{
  if (a2)
  {
    v4 = _PTLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke_cold_1(a2, a1, v4);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = PTEspressoGenericExecutor;
  [(PTEspressoGenericExecutor *)&v3 dealloc];
}

- (void)convertInterleavedWithMetalContext:(id)context inInterleaved:(id)interleaved outPlanar:(id)planar
{
  planarCopy = planar;
  interleavedCopy = interleaved;
  contextCopy = context;
  height = [planarCopy height];
  v19 = height / [interleavedCopy height];
  commandBuffer = [contextCopy commandBuffer];

  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_interleavedToPlanar];
  [computeCommandEncoder setTexture:interleavedCopy atIndex:0];
  [computeCommandEncoder setTexture:planarCopy atIndex:1];

  [computeCommandEncoder setBytes:&v19 length:4 atIndex:0];
  width = [interleavedCopy width];
  height2 = [interleavedCopy height];

  v18[0] = width;
  v18[1] = height2;
  v18[2] = 1;
  v16 = xmmword_2244A5810;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (void)convertPlanarWithMetalContext:(id)context inPlanarTexture:(id)texture outInterleaved:(id)interleaved
{
  interleavedCopy = interleaved;
  textureCopy = texture;
  contextCopy = context;
  height = [textureCopy height];
  v19 = height / [interleavedCopy height];
  commandBuffer = [contextCopy commandBuffer];

  computeCommandEncoder = [commandBuffer computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:self->_planarToInterleaved];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:interleavedCopy atIndex:1];
  [computeCommandEncoder setBytes:&v19 length:4 atIndex:0];
  width = [interleavedCopy width];
  height2 = [interleavedCopy height];

  v18[0] = width;
  v18[1] = height2;
  v18[2] = 1;
  v16 = xmmword_2244A5810;
  v17 = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:&v16];
  [computeCommandEncoder endEncoding];
}

- (unsigned)tensorSwap:(int)swap
{
  v3 = *&swap;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_tensorSwap;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v6 = v5;
  v7 = *v18;
  while (2)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v17 + 1) + 8 * i);
      v10 = [v9 tensorNameWithIndex:{0, v17}];
      [v10 UTF8String];
      [v9 tensorWithIndex:v3];
      v11 = espresso_network_bind_cvpixelbuffer();

      if (v11)
      {
        v15 = _PTLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v12 = [v9 tensorNameWithIndex:1];
      [v12 UTF8String];
      [v9 tensorWithIndex:(v3 + 1)];
      v13 = espresso_network_bind_cvpixelbuffer();

      if (v13)
      {
        v15 = _PTLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
LABEL_15:
          [PTEspressoGenericExecutor bindInputResourceWithName:to:];
        }

LABEL_16:

        v14 = -1;
        goto LABEL_17;
      }
    }

    v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v14 = 0;
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v14;
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.1()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.2()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEBUG, "network version: %s for %@", v2, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.5()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.6()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.7()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.8()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.9()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithMetalContext:url:inputNames:outputNames:tensorSwapNames:reshapeNetworkSize:configuration:ANEConfig:.cold.10()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)bindTensorSwaps:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)bindBuffers:toMap:isInput:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)bindBuffers:toMap:isInput:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)bindBuffers:(uint64_t *)a3 toMap:(NSObject *)a4 isInput:.cold.4(uint8_t *a1, void *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [a2 pixelFormat];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_error_impl(&dword_2243FB000, a4, OS_LOG_TYPE_ERROR, "MTLPixelFormatR16Float/MTLPixelFormatR8Unorm expected, got %lu", a1, 0xCu);
}

- (void)bindInputResourceWithName:to:.cold.1()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)execute
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)executeAsync:metalContext:.cold.1()
{
  OUTLINED_FUNCTION_3_5();
  espresso_get_last_error();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __55__PTEspressoGenericExecutor_executeAsync_metalContext___block_invoke_cold_1(int *a1, uint64_t a2, os_log_t log)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 1);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(*(a2 + 32) + 112);
  v7 = 136315906;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 1024;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "espresso_plan_submit callback. %s %i %i for %@", &v7, 0x22u);
}

@end