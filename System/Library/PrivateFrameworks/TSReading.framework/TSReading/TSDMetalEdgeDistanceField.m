@interface TSDMetalEdgeDistanceField
+ (id)distanceFieldTextureWithTexture:(id)a3 textureSize:(CGSize)a4 maxDistance:(int64_t)a5 edgeInsets:(UIEdgeInsets)a6 downsampleScale:(double)a7 floatTexture:(BOOL)a8 makeCPUReadable:(BOOL)a9 metalContext:(id)a10 capabilities:(id)a11;
+ (void)didEndWithDevice:(id)a3;
+ (void)willBeginWithDevice:(id)a3;
- (TSDMetalEdgeDistanceField)initWithTexture:(id)a3 textureSize:(CGSize)a4 edgeInsets:(UIEdgeInsets)a5 downsampleScale:(double)a6 metalContext:(id)a7 capabilities:(id)a8;
- (id)p_combinedTexturesWithIndex:(unint64_t)a3 floatTexture:(BOOL)a4 commandBuffer:(id)a5;
- (id)p_gradientTextureWithCommandBuffer:(id)a3;
- (unint64_t)p_floodTextures:(id)a3 currentIndex:(unint64_t)a4 maxDistance:(int64_t)a5 commandBuffer:(id)a6;
- (void)p_dispatchThreadgroupsWithEncoder:(id)a3 pipelineState:(id)a4 texture:(id)a5;
- (void)p_seedWithCommandBuffer:(id)a3 fromTexture:(id)a4 toTexture:(id)a5 invertSeed:(BOOL)a6;
- (void)p_setupTextures;
- (void)p_writeWithCommandBuffer:(id)a3 intoSquareTexture:(id)a4;
@end

@implementation TSDMetalEdgeDistanceField

+ (void)willBeginWithDevice:(id)a3
{
  v3 = s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  if (!s_TSDMetalEdgeDistanceFieldShaderReferenceCount)
  {
    v4 = a3;
    v5 = [TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:v4];
    v6 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_CopyToSquare"];
    v35 = 0;
    v7 = [v4 newComputePipelineStateWithFunction:v6 error:&v35];
    v8 = v35;
    v9 = s_TSDMetalEdgeDistanceField_copyToSquarePipeline;
    s_TSDMetalEdgeDistanceField_copyToSquarePipeline = v7;

    v10 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Seed"];
    v34 = v8;
    v11 = [v4 newComputePipelineStateWithFunction:v10 error:&v34];
    v12 = v34;

    v13 = s_TSDMetalEdgeDistanceField_seedPipeline;
    s_TSDMetalEdgeDistanceField_seedPipeline = v11;

    v14 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Flood"];
    v33 = v12;
    v15 = [v4 newComputePipelineStateWithFunction:v14 error:&v33];
    v16 = v33;

    v17 = s_TSDMetalEdgeDistanceField_floodPipeline;
    s_TSDMetalEdgeDistanceField_floodPipeline = v15;

    v18 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Combine"];
    v32 = v16;
    v19 = [v4 newComputePipelineStateWithFunction:v18 error:&v32];
    v20 = v32;

    v21 = s_TSDMetalEdgeDistanceField_combinePipeline;
    s_TSDMetalEdgeDistanceField_combinePipeline = v19;

    v22 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_CombineByte"];
    v31 = v20;
    v23 = [v4 newComputePipelineStateWithFunction:v22 error:&v31];
    v24 = v31;

    v25 = s_TSDMetalEdgeDistanceField_combineBytePipeline;
    s_TSDMetalEdgeDistanceField_combineBytePipeline = v23;

    v26 = [v5 newFunctionWithName:@"TSDMetalEdgeDistanceField_Gradient"];
    v30 = v24;
    v27 = [v4 newComputePipelineStateWithFunction:v26 error:&v30];

    v28 = v30;
    v29 = s_TSDMetalEdgeDistanceField_gradientPipeline;
    s_TSDMetalEdgeDistanceField_gradientPipeline = v27;

    v3 = s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  }

  s_TSDMetalEdgeDistanceFieldShaderReferenceCount = v3 + 1;
}

+ (void)didEndWithDevice:(id)a3
{
  v3 = a3;
  v4 = s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  v5 = --s_TSDMetalEdgeDistanceFieldShaderReferenceCount;
  if (v4 <= 0)
  {
    v16 = v3;
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField didEndWithDevice:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:148 description:@"overreleasing pipeline reference count!"];

    v3 = v16;
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
  v17 = v3;

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

  v3 = v17;
LABEL_3:
}

- (TSDMetalEdgeDistanceField)initWithTexture:(id)a3 textureSize:(CGSize)a4 edgeInsets:(UIEdgeInsets)a5 downsampleScale:(double)a6 metalContext:(id)a7 capabilities:(id)a8
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.height;
  width = a4.width;
  v19 = a3;
  v20 = a7;
  v21 = a8;
  if (a6 <= 0.0 || a6 > 1.0)
  {
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalEdgeDistanceField initWithTexture:textureSize:edgeInsets:downsampleScale:metalContext:capabilities:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    objc_msgSend(v23, "handleFailureInFunction:file:lineNumber:description:", v24, v25, 163, @"Invalid value for downsampleScale, expected (0,1]: %f"), *&a6;
  }

  v43.receiver = self;
  v43.super_class = TSDMetalEdgeDistanceField;
  v26 = [(TSDMetalEdgeDistanceField *)&v43 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_metalContext, a7);
    objc_storeStrong(&v27->_inputTexture, a3);
    v27->_textureSize.width = width;
    v27->_textureSize.height = height;
    v42 = bottom;
    v27->_edgeInsets.top = top;
    v27->_edgeInsets.left = left;
    v28 = left;
    v27->_edgeInsets.bottom = bottom;
    v27->_edgeInsets.right = right;
    v29 = right;
    v30 = [v20 device];
    [v21 maximumMetalTextureSizeForDevice:v30];
    v32 = v31;
    v34 = v33;

    v35 = ceil(width * a6);
    if (v35 >= v32)
    {
      a6 = v32 / v35 * a6;
      TSDMultiplySizeScalar(v27->_textureSize.width, v27->_textureSize.height, 1.0 / a6);
    }

    else
    {
      v36 = ceil(height * a6);
    }

    if (v36 >= v34)
    {
      a6 = a6 * (v34 / v36);
    }

    v27->_downsampleScale = a6;
    v37 = ceil(width * a6) - (v28 + v29);
    v38 = ceil(height * a6) - (top + v42);
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
  v4 = [(TSDMetalContext *)self->_metalContext device];
  v5 = [v4 newTextureWithDescriptor:v3];
  v20[0] = v5;
  v6 = [v4 newTextureWithDescriptor:v3];
  v20[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  exteriorTextures = self->_exteriorTextures;
  self->_exteriorTextures = v7;

  v9 = [v4 newTextureWithDescriptor:v3];
  v19[0] = v9;
  v10 = [v4 newTextureWithDescriptor:v3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  interiorTextures = self->_interiorTextures;
  self->_interiorTextures = v11;

  [v3 setWidth:self->_resultTextureSize.width];
  [v3 setHeight:self->_resultTextureSize.height];
  [v3 setPixelFormat:115];
  [v3 setStorageMode:0];
  v13 = [v4 newTextureWithDescriptor:v3];
  combineTexture = self->_combineTexture;
  self->_combineTexture = v13;

  v15 = [v4 newTextureWithDescriptor:v3];
  resultTexture = self->_resultTexture;
  self->_resultTexture = v15;

  [v3 setPixelFormat:70];
  v17 = [v4 newTextureWithDescriptor:v3];
  combineByteTexture = self->_combineByteTexture;
  self->_combineByteTexture = v17;
}

- (void)p_dispatchThreadgroupsWithEncoder:(id)a3 pipelineState:(id)a4 texture:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v8 threadExecutionWidth];
  v11 = [v8 maxTotalThreadsPerThreadgroup];

  v12 = v11 / v10;
  v13 = (v10 + [v7 width] - 1) / v10;
  v14 = [v7 height];

  v16[0] = v13;
  v16[1] = (v12 + v14 - 1) / v12;
  v16[2] = 1;
  v15[0] = v10;
  v15[1] = v12;
  v15[2] = 1;
  [v9 dispatchThreadgroups:v16 threadsPerThreadgroup:v15];
}

- (void)p_writeWithCommandBuffer:(id)a3 intoSquareTexture:(id)a4
{
  v6 = a4;
  v7 = [a3 computeCommandEncoder];
  [v7 setComputePipelineState:s_TSDMetalEdgeDistanceField_copyToSquarePipeline];
  v8 = vrev64_s32(vmovn_s64(vcvtq_u64_f64(vnegq_f64(*&self->_edgeInsets.top))));
  [v7 setBytes:&v8 length:8 atIndex:0];
  [v7 setTexture:self->_inputTexture atIndex:0];
  [v7 setTexture:v6 atIndex:1];
  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:v7 pipelineState:s_TSDMetalEdgeDistanceField_copyToSquarePipeline texture:v6];

  [v7 endEncoding];
}

- (void)p_seedWithCommandBuffer:(id)a3 fromTexture:(id)a4 toTexture:(id)a5 invertSeed:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [a3 computeCommandEncoder];
  [v12 setComputePipelineState:s_TSDMetalEdgeDistanceField_seedPipeline];
  v13 = 0x3F00008047800000;
  v14 = v6;
  [v12 setBytes:&v13 length:12 atIndex:0];
  [v12 setTexture:v11 atIndex:0];
  [v12 setTexture:v10 atIndex:1];

  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:v12 pipelineState:s_TSDMetalEdgeDistanceField_seedPipeline texture:v11];
  [v12 endEncoding];
}

- (unint64_t)p_floodTextures:(id)a3 currentIndex:(unint64_t)a4 maxDistance:(int64_t)a5 commandBuffer:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = self->_squareSize.width * 0.5;
  v13 = v12;
  if (a5 >= 1)
  {
    v13 = a5;
  }

  if (v12 > 16384.0)
  {
    v12 = 16384.0;
  }

  v14 = v13 + 1;
  if (v12 >= v14)
  {
    v12 = v14;
  }

  v15 = vcvtpd_s64_f64(log(v12));
  if (v15 >= 1)
  {
    do
    {
      v16 = [v11 computeCommandEncoder];
      [v16 setComputePipelineState:s_TSDMetalEdgeDistanceField_floodPipeline];
      v21 = v15;
      v22 = 0x4080000047800000;
      [v16 setBytes:&v21 length:12 atIndex:0];
      v17 = [v10 objectAtIndexedSubscript:a4];
      a4 = (a4 & 1) == 0;
      v18 = [v10 objectAtIndexedSubscript:a4];
      [v16 setTexture:v17 atIndex:0];
      [v16 setTexture:v18 atIndex:1];
      [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:v16 pipelineState:s_TSDMetalEdgeDistanceField_floodPipeline texture:v17];
      [v16 endEncoding];

      v19 = v15 > 1;
      v15 = v15 >> 1;
    }

    while (v19);
  }

  return a4;
}

- (id)p_combinedTexturesWithIndex:(unint64_t)a3 floatTexture:(BOOL)a4 commandBuffer:(id)a5
{
  v5 = a4;
  v8 = [a5 computeCommandEncoder];
  v9 = &s_TSDMetalEdgeDistanceField_combinePipeline;
  if (!v5)
  {
    v9 = &s_TSDMetalEdgeDistanceField_combineBytePipeline;
  }

  v10 = *v9;
  if (v5)
  {
    v11 = 128;
  }

  else
  {
    v11 = 136;
  }

  v12 = v10;
  [v8 setComputePipelineState:v12];
  v18 = 0x4080000047800000;
  v13 = 4.0 / self->_squareSize.width;
  v19 = v13;
  [v8 setBytes:&v18 length:12 atIndex:0];
  v14 = *(&self->super.isa + v11);
  v15 = [(NSArray *)self->_interiorTextures objectAtIndexedSubscript:a3];
  [v8 setTexture:v15 atIndex:0];

  v16 = [(NSArray *)self->_exteriorTextures objectAtIndexedSubscript:a3];
  [v8 setTexture:v16 atIndex:1];

  [v8 setTexture:v14 atIndex:2];
  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:v8 pipelineState:v12 texture:v14];
  [v8 endEncoding];

  return v14;
}

- (id)p_gradientTextureWithCommandBuffer:(id)a3
{
  v4 = [a3 computeCommandEncoder];
  [v4 setComputePipelineState:s_TSDMetalEdgeDistanceField_gradientPipeline];
  [v4 setTexture:self->_combineTexture atIndex:0];
  [v4 setTexture:self->_resultTexture atIndex:1];
  [(TSDMetalEdgeDistanceField *)self p_dispatchThreadgroupsWithEncoder:v4 pipelineState:s_TSDMetalEdgeDistanceField_gradientPipeline texture:self->_resultTexture];
  [v4 endEncoding];
  resultTexture = self->_resultTexture;
  v6 = resultTexture;

  return resultTexture;
}

+ (id)distanceFieldTextureWithTexture:(id)a3 textureSize:(CGSize)a4 maxDistance:(int64_t)a5 edgeInsets:(UIEdgeInsets)a6 downsampleScale:(double)a7 floatTexture:(BOOL)a8 makeCPUReadable:(BOOL)a9 metalContext:(id)a10 capabilities:(id)a11
{
  v59 = a8;
  v60 = a9;
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  height = a4.height;
  width = a4.width;
  v70 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v22 = a10;
  v23 = a11;
  v24 = [v22 device];
  if (!v24)
  {
    v25 = [MEMORY[0x277D6C290] currentHandler];
    v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textureSize:maxDistance:edgeInsets:downsampleScale:floatTexture:makeCPUReadable:metalContext:capabilities:]"];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v25 handleFailureInFunction:v26 file:v27 lineNumber:393 description:{@"invalid nil value for '%s'", "metalDevice"}];
  }

  v28 = [v22 commandQueue];
  if (!v28)
  {
    v29 = [MEMORY[0x277D6C290] currentHandler];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textureSize:maxDistance:edgeInsets:downsampleScale:floatTexture:makeCPUReadable:metalContext:capabilities:]"];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v29 handleFailureInFunction:v30 file:v31 lineNumber:395 description:{@"invalid nil value for '%s'", "commandQueue"}];
  }

  v58 = v28;
  v32 = [v28 commandBuffer];
  if (!v32)
  {
    v33 = [MEMORY[0x277D6C290] currentHandler];
    v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMetalEdgeDistanceField distanceFieldTextureWithTexture:textureSize:maxDistance:edgeInsets:downsampleScale:floatTexture:makeCPUReadable:metalContext:capabilities:]"];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalEdgeDistanceField.m"];
    [v33 handleFailureInFunction:v34 file:v35 lineNumber:397 description:{@"invalid nil value for '%s'", "commandBuffer"}];
  }

  v61 = a1;
  v62 = v24;
  [a1 willBeginWithDevice:v24];
  v36 = [[TSDMetalEdgeDistanceField alloc] initWithTexture:v21 textureSize:v22 edgeInsets:v23 downsampleScale:width metalContext:height capabilities:top, left, bottom, right, a7];
  [(TSDMetalEdgeDistanceField *)v36 p_setupTextures];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  interiorTextures = v36->_interiorTextures;
  v68[0] = v36->_exteriorTextures;
  v68[1] = interiorTextures;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
  v39 = [v38 countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v39)
  {
    v40 = v39;
    v55 = v23;
    v56 = v22;
    v57 = v21;
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
        v44 = v43 == v36->_interiorTextures;
        v45 = [(NSArray *)v43 objectAtIndexedSubscript:0];
        [(TSDMetalEdgeDistanceField *)v36 p_writeWithCommandBuffer:v32 intoSquareTexture:v45];

        v46 = [(NSArray *)v43 objectAtIndexedSubscript:0];
        v47 = [(NSArray *)v43 objectAtIndexedSubscript:1];
        [(TSDMetalEdgeDistanceField *)v36 p_seedWithCommandBuffer:v32 fromTexture:v46 toTexture:v47 invertSeed:v44];

        v48 = [(TSDMetalEdgeDistanceField *)v36 p_floodTextures:v43 currentIndex:1 maxDistance:a5 commandBuffer:v32];
      }

      v40 = [v38 countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v40);
    v22 = v56;
    v21 = v57;
    v23 = v55;
  }

  else
  {
    v48 = 0;
  }

  v49 = [(TSDMetalEdgeDistanceField *)v36 p_combinedTexturesWithIndex:v48 floatTexture:v59 commandBuffer:v32];
  v50 = v49;
  if (v59)
  {
    v51 = [(TSDMetalEdgeDistanceField *)v36 p_gradientTextureWithCommandBuffer:v32];
  }

  else
  {
    v51 = v49;
  }

  v52 = v51;
  [v32 commit];
  if (v60)
  {
    [v32 waitUntilCompleted];
  }

  v53 = [TSDMetalTextureInfo textureInfoWithName:v52 width:v36->_resultTextureSize.width height:v36->_resultTextureSize.height containsMipmaps:0];
  [v61 didEndWithDevice:v62];

  return v53;
}

@end