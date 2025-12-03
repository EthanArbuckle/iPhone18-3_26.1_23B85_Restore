@interface TSDMetalEdgeDistanceField
+ (id)distanceFieldTextureWithTexture:(id)texture textureSize:(CGSize)size maxDistance:(int64_t)distance edgeInsets:(UIEdgeInsets)insets downsampleScale:(double)scale floatTexture:(BOOL)floatTexture makeCPUReadable:(BOOL)readable metalContext:(id)self0 capabilities:(id)self1;
+ (void)didEndWithDevice:(id)device;
+ (void)willBeginWithDevice:(id)device;
- (TSDMetalEdgeDistanceField)initWithTexture:(id)texture textureSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets downsampleScale:(double)scale metalContext:(id)context capabilities:(id)capabilities;
- (id)p_combinedTexturesWithIndex:(unint64_t)index floatTexture:(BOOL)texture commandBuffer:(id)buffer;
- (id)p_gradientTextureWithCommandBuffer:(id)buffer;
- (unint64_t)p_floodTextures:(id)textures currentIndex:(unint64_t)index maxDistance:(int64_t)distance commandBuffer:(id)buffer;
- (void)p_dispatchThreadgroupsWithEncoder:(id)encoder pipelineState:(id)state texture:(id)texture;
- (void)p_seedWithCommandBuffer:(id)buffer fromTexture:(id)texture toTexture:(id)toTexture invertSeed:(BOOL)seed;
- (void)p_setupTextures;
- (void)p_writeWithCommandBuffer:(id)buffer intoSquareTexture:(id)texture;
@end

@implementation TSDMetalEdgeDistanceField

+ (void)willBeginWithDevice:(id)device
{
  v3 = s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  if (!s_TSDMetalEdgeDistanceFieldShaderReferenceCount)
  {
    deviceCopy = device;
    v5 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:deviceCopy];
    v6 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_CopyToSquare"];
    v35 = 0;
    v7 = [deviceCopy newComputePipelineStateWithFunction:v6 error:&v35];
    v8 = v35;
    v9 = s_TSDMetalEdgeDistanceField_copyToSquarePipeline;
    s_TSDMetalEdgeDistanceField_copyToSquarePipeline = v7;

    v10 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Seed"];
    v34 = v8;
    v11 = [deviceCopy newComputePipelineStateWithFunction:v10 error:&v34];
    v12 = v34;

    v13 = s_TSDMetalEdgeDistanceField_seedPipeline;
    s_TSDMetalEdgeDistanceField_seedPipeline = v11;

    v14 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Flood"];
    v33 = v12;
    v15 = [deviceCopy newComputePipelineStateWithFunction:v14 error:&v33];
    v16 = v33;

    v17 = s_TSDMetalEdgeDistanceField_floodPipeline;
    s_TSDMetalEdgeDistanceField_floodPipeline = v15;

    v18 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Combine"];
    v32 = v16;
    v19 = [deviceCopy newComputePipelineStateWithFunction:v18 error:&v32];
    v20 = v32;

    v21 = s_TSDMetalEdgeDistanceField_combinePipeline;
    s_TSDMetalEdgeDistanceField_combinePipeline = v19;

    v22 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_CombineByte"];
    v31 = v20;
    v23 = [deviceCopy newComputePipelineStateWithFunction:v22 error:&v31];
    v24 = v31;

    v25 = s_TSDMetalEdgeDistanceField_combineBytePipeline;
    s_TSDMetalEdgeDistanceField_combineBytePipeline = v23;

    v26 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Gradient"];
    v30 = v24;
    v27 = [deviceCopy newComputePipelineStateWithFunction:v26 error:&v30];

    v28 = v30;
    v29 = s_TSDMetalEdgeDistanceField_gradientPipeline;
    s_TSDMetalEdgeDistanceField_gradientPipeline = v27;

    v3 = s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  }

  s_TSDMetalEdgeDistanceFieldShaderReferenceCount = v3 + 1;
}

+ (void)didEndWithDevice:(id)device
{
  deviceCopy = device;
  v4 = s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  v5 = --s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  if (v4 <= 0)
  {
    v16 = deviceCopy;
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField didEndWithDevice:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:148 description:@"overreleasing pipeline reference count!"];

    deviceCopy = v16;
    if (s_TSDMetalEdgeDistanceFieldShaderReferenceCount)
    {
      goto LABEL_3;
    }
  }

  else if (v5)
  {
    goto LABEL_3;
  }

  v9 = s_TSDMetalEdgeDistanceField_copyToSquarePipeline;
  s_TSDMetalEdgeDistanceField_copyToSquarePipeline = 0;
  v17 = deviceCopy;

  v10 = s_TSDMetalEdgeDistanceField_seedPipeline;
  s_TSDMetalEdgeDistanceField_seedPipeline = 0;

  v11 = s_TSDMetalEdgeDistanceField_floodPipeline;
  s_TSDMetalEdgeDistanceField_floodPipeline = 0;

  v12 = s_TSDMetalEdgeDistanceField_copyToSquarePipeline;
  s_TSDMetalEdgeDistanceField_copyToSquarePipeline = 0;

  v13 = s_TSDMetalEdgeDistanceField_combinePipeline;
  s_TSDMetalEdgeDistanceField_combinePipeline = 0;

  v14 = s_TSDMetalEdgeDistanceField_combineBytePipeline;
  s_TSDMetalEdgeDistanceField_combineBytePipeline = 0;

  v15 = s_TSDMetalEdgeDistanceField_gradientPipeline;
  s_TSDMetalEdgeDistanceField_gradientPipeline = 0;

  deviceCopy = v17;
LABEL_3:
}

- (TSDMetalEdgeDistanceField)initWithTexture:(id)texture textureSize:(CGSize)size edgeInsets:(UIEdgeInsets)insets downsampleScale:(double)scale metalContext:(id)context capabilities:(id)capabilities
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  textureCopy = texture;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  if (scale <= 0.0 || scale > 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceField initWithTexture:textureSize:edgeInsets:downsampleScale:metalContext:capabilities:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    objc_msgSend(currentHandler, "handleFailureInFunction:file:lineNumber:description:", v24, v25, 163, @"Invalid value for downsampleScale, expected (0,1]: %f"), *&scale;
  }

  v43.receiver = self;
  v43.super_class = TSDMetalEdgeDistanceField;
  v26 = [(TSDMetalEdgeDistanceField *)&v43 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_metalContext, context);
    objc_storeStrong(&v27->_inputTexture, texture);
    v27->_textureSize.width = width;
    v27->_textureSize.height = height;
    v42 = bottom;
    v27->_edgeInsets.top = top;
    v27->_edgeInsets.left = left;
    v28 = left;
    v27->_edgeInsets.bottom = bottom;
    v27->_edgeInsets.right = right;
    v29 = right;
    device = [contextCopy device];
    [capabilitiesCopy maximumMetalTextureSizeForDevice:device];
    v32 = v31;
    v34 = v33;

    v35 = ceil(width * scale);
    if (v35 >= v32)
    {
      scale = v32 / v35 * scale;
      TSDMultiplySizeScalar(v27->_textureSize.width, v27->_textureSize.height, 1.0 / scale);
    }

    else
    {
      v36 = ceil(height * scale);
    }

    if (v36 >= v34)
    {
      scale = scale * (v34 / v36);
    }

    v27->_downsampleScale = scale;
    v37 = ceil(width * scale) - (v28 + v29);
    v38 = ceil(height * scale) - (top + v42);
    v27->_resultTextureSize.width = v37;
    v27->_resultTextureSize.height = v38;
    if (v37 <= v38)
    {
      v37 = v38;
    }

    v39 = v37;
    if (v32 <= v39)
    {
      v39 = v32;
    }

    v40 = v39;
    v27->_squareSize.width = v40;
    v27->_squareSize.height = v40;
  }

  return v27;
}

- (void)p_setupTextures
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:110 width:self->_squareSize.width height:self->_squareSize.height mipmapped:0];
  [v3 setUsage:0];
  [v3 setStorageMode:2];
  device = [(TSDMetalContext *)self->_metalContext device];
  v5 = [device newTextureWithDescriptor:v3];
  v20[0] = v5;
  v6 = [device newTextureWithDescriptor:v3];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  exteriorTextures = self->_exteriorTextures;
  self->_exteriorTextures = v7;

  v9 = [device newTextureWithDescriptor:v3];
  v19[0] = v9;
  v10 = [device newTextureWithDescriptor:v3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  interiorTextures = self->_interiorTextures;
  self->_interiorTextures = v11;

  [v3 setWidth:self->_resultTextureSize.width];
  [v3 setHeight:self->_resultTextureSize.height];
  [v3 setPixelFormat:115];
  [v3 setStorageMode:0];
  v13 = [device newTextureWithDescriptor:v3];
  combineTexture = self->_combineTexture;
  self->_combineTexture = v13;

  v15 = [device newTextureWithDescriptor:v3];
  resultTexture = self->_resultTexture;
  self->_resultTexture = v15;

  [v3 setPixelFormat:70];
  v17 = [device newTextureWithDescriptor:v3];
  combineByteTexture = self->_combineByteTexture;
  self->_combineByteTexture = v17;
}

- (void)p_dispatchThreadgroupsWithEncoder:(id)encoder pipelineState:(id)state texture:(id)texture
{
  textureCopy = texture;
  stateCopy = state;
  encoderCopy = encoder;
  threadExecutionWidth = [stateCopy threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [stateCopy maxTotalThreadsPerThreadgroup];

  v12 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v13 = (threadExecutionWidth + [textureCopy width] - 1) / threadExecutionWidth;
  height = [textureCopy height];

  v16[0] = v13;
  v16[1] = (v12 + height - 1) / v12;
  v16[2] = 1;
  v15[0] = threadExecutionWidth;
  v15[1] = v12;
  v15[2] = 1;
  [encoderCopy dispatchThreadgroups:v16 threadsPerThreadgroup:v15];
}

- (void)p_writeWithCommandBuffer:(id)buffer intoSquareTexture:(id)texture
{
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:s_TSDMetalEdgeDistanceField_copyToSquarePipeline];
  v8 = vrev64_s32(vmovn_s64(vcvtq_u64_f64(vnegq_f64(*&self->_edgeInsets.top))));
  [computeCommandEncoder setBytes:&v8 length:8 atIndex:0];
  [computeCommandEncoder setTexture:self->_inputTexture atIndex:0];
  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:computeCommandEncoder pipelineState:s_TSDMetalEdgeDistanceField_copyToSquarePipeline texture:textureCopy];

  [computeCommandEncoder endEncoding];
}

- (void)p_seedWithCommandBuffer:(id)buffer fromTexture:(id)texture toTexture:(id)toTexture invertSeed:(BOOL)seed
{
  seedCopy = seed;
  toTextureCopy = toTexture;
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:s_TSDMetalEdgeDistanceField_seedPipeline];
  v13 = 0x3F00008047800000;
  v14 = seedCopy;
  [computeCommandEncoder setBytes:&v13 length:12 atIndex:0];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];
  [computeCommandEncoder setTexture:toTextureCopy atIndex:1];

  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:computeCommandEncoder pipelineState:s_TSDMetalEdgeDistanceField_seedPipeline texture:textureCopy];
  [computeCommandEncoder endEncoding];
}

- (unint64_t)p_floodTextures:(id)textures currentIndex:(unint64_t)index maxDistance:(int64_t)distance commandBuffer:(id)buffer
{
  texturesCopy = textures;
  bufferCopy = buffer;
  v12 = self->_squareSize.width * 0.5;
  distanceCopy = v12;
  if (distance >= 1)
  {
    distanceCopy = distance;
  }

  if (v12 > 16384.0)
  {
    v12 = 16384.0;
  }

  v14 = distanceCopy + 1;
  if (v12 >= v14)
  {
    v12 = v14;
  }

  v15 = vcvtpd_s64_f64(log(v12));
  if (v15 >= 1)
  {
    do
    {
      computeCommandEncoder = [bufferCopy computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:s_TSDMetalEdgeDistanceField_floodPipeline];
      v21 = v15;
      v22 = 0x4080000047800000;
      [computeCommandEncoder setBytes:&v21 length:12 atIndex:0];
      v17 = [texturesCopy objectAtIndexedSubscript:index];
      index = (index & 1) == 0;
      v18 = [texturesCopy objectAtIndexedSubscript:index];
      [computeCommandEncoder setTexture:v17 atIndex:0];
      [computeCommandEncoder setTexture:v18 atIndex:1];
      [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:computeCommandEncoder pipelineState:s_TSDMetalEdgeDistanceField_floodPipeline texture:v17];
      [computeCommandEncoder endEncoding];

      v19 = v15 > 1;
      v15 = v15 >> 1;
    }

    while (v19);
  }

  return index;
}

- (id)p_combinedTexturesWithIndex:(unint64_t)index floatTexture:(BOOL)texture commandBuffer:(id)buffer
{
  textureCopy = texture;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v9 = &s_TSDMetalEdgeDistanceField_combinePipeline;
  if (!textureCopy)
  {
    v9 = &s_TSDMetalEdgeDistanceField_combineBytePipeline;
  }

  v10 = *v9;
  if (textureCopy)
  {
    v11 = 128;
  }

  else
  {
    v11 = 136;
  }

  v12 = v10;
  [computeCommandEncoder setComputePipelineState:v12];
  v18 = 0x4080000047800000;
  v13 = 4.0 / self->_squareSize.width;
  v19 = v13;
  [computeCommandEncoder setBytes:&v18 length:12 atIndex:0];
  v14 = *(&self->super.isa + v11);
  v15 = [(NSArray *)self->_interiorTextures objectAtIndexedSubscript:index];
  [computeCommandEncoder setTexture:v15 atIndex:0];

  v16 = [(NSArray *)self->_exteriorTextures objectAtIndexedSubscript:index];
  [computeCommandEncoder setTexture:v16 atIndex:1];

  [computeCommandEncoder setTexture:v14 atIndex:2];
  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:computeCommandEncoder pipelineState:v12 texture:v14];
  [computeCommandEncoder endEncoding];

  return v14;
}

- (id)p_gradientTextureWithCommandBuffer:(id)buffer
{
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:s_TSDMetalEdgeDistanceField_gradientPipeline];
  [computeCommandEncoder setTexture:self->_combineTexture atIndex:0];
  [computeCommandEncoder setTexture:self->_resultTexture atIndex:1];
  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:computeCommandEncoder pipelineState:s_TSDMetalEdgeDistanceField_gradientPipeline texture:self->_resultTexture];
  [computeCommandEncoder endEncoding];
  resultTexture = self->_resultTexture;
  v6 = resultTexture;

  return resultTexture;
}

+ (id)distanceFieldTextureWithTexture:(id)texture textureSize:(CGSize)size maxDistance:(int64_t)distance edgeInsets:(UIEdgeInsets)insets downsampleScale:(double)scale floatTexture:(BOOL)floatTexture makeCPUReadable:(BOOL)readable metalContext:(id)self0 capabilities:(id)self1
{
  floatTextureCopy = floatTexture;
  readableCopy = readable;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  v70 = *MEMORY[0x277D85DE8];
  textureCopy = texture;
  contextCopy = context;
  capabilitiesCopy = capabilities;
  device = [contextCopy device];
  if (!device)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textureSize:maxDistance:edgeInsets:downsampleScale:floatTexture:makeCPUReadable:metalContext:capabilities:]"];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler handleFailureInFunction:v26 file:v27 lineNumber:393 description:{@"invalid nil value for '%s'", "metalDevice"}];
  }

  commandQueue = [contextCopy commandQueue];
  if (!commandQueue)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textureSize:maxDistance:edgeInsets:downsampleScale:floatTexture:makeCPUReadable:metalContext:capabilities:]"];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler2 handleFailureInFunction:v30 file:v31 lineNumber:395 description:{@"invalid nil value for '%s'", "commandQueue"}];
  }

  v58 = commandQueue;
  commandBuffer = [commandQueue commandBuffer];
  if (!commandBuffer)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textureSize:maxDistance:edgeInsets:downsampleScale:floatTexture:makeCPUReadable:metalContext:capabilities:]"];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [currentHandler3 handleFailureInFunction:v34 file:v35 lineNumber:397 description:{@"invalid nil value for '%s'", "commandBuffer"}];
  }

  selfCopy = self;
  v62 = device;
  [self willBeginWithDevice:device];
  scale = [[TSDMetalEdgeDistanceField alloc] initWithTexture:textureCopy textureSize:contextCopy edgeInsets:capabilitiesCopy downsampleScale:width metalContext:height capabilities:top, left, bottom, right, scale];
  [(TSDMetalEdgeDistanceField *)scale p_setupTextures];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  interiorTextures = scale->_interiorTextures;
  v68[0] = scale->_exteriorTextures;
  v68[1] = interiorTextures;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v39 = [v38 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v39)
  {
    v40 = v39;
    v55 = capabilitiesCopy;
    v56 = contextCopy;
    v57 = textureCopy;
    v41 = *v65;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v65 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v64 + 1) + 8 * i);
        v44 = v43 == scale->_interiorTextures;
        v45 = [(NSArray *)v43 objectAtIndexedSubscript:0];
        [(TSDMetalEdgeDistanceField *)scale p_writeWithCommandBuffer:commandBuffer intoSquareTexture:v45];

        v46 = [(NSArray *)v43 objectAtIndexedSubscript:0];
        v47 = [(NSArray *)v43 objectAtIndexedSubscript:1];
        [(TSDMetalEdgeDistanceField *)scale p_seedWithCommandBuffer:commandBuffer fromTexture:v46 toTexture:v47 invertSeed:v44];

        v48 = [(TSDMetalEdgeDistanceField *)scale p_floodTextures:v43 currentIndex:1 maxDistance:distance commandBuffer:commandBuffer];
      }

      v40 = [v38 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v40);
    contextCopy = v56;
    textureCopy = v57;
    capabilitiesCopy = v55;
  }

  else
  {
    v48 = 0;
  }

  v49 = [(TSDMetalEdgeDistanceField *)scale p_combinedTexturesWithIndex:v48 floatTexture:floatTextureCopy commandBuffer:commandBuffer];
  v50 = v49;
  if (floatTextureCopy)
  {
    v51 = [(TSDMetalEdgeDistanceField *)scale p_gradientTextureWithCommandBuffer:commandBuffer];
  }

  else
  {
    v51 = v49;
  }

  v52 = v51;
  [commandBuffer commit];
  if (readableCopy)
  {
    [commandBuffer waitUntilCompleted];
  }

  v53 = [TSDMetalTextureInfo textureInfoWithName:v52 width:scale->_resultTextureSize.width height:scale->_resultTextureSize.height containsMipmaps:0];
  [selfCopy didEndWithDevice:v62];

  return v53;
}

@end