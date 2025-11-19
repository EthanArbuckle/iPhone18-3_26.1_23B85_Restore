@interface PIRetouchSubsampleCacheNode
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)retouchInputNode;
- (int64_t)subsampleFactorForScale:(id)a3;
- (void)_updateInputRegion:(id)a3 outputRegion:(id)a4 forStroke:(id)a5 geometry:(id)a6;
- (void)resolveWithInputImage:(id)a3 retouchStrokes:(id)a4 cacheKey:(id)a5;
@end

@implementation PIRetouchSubsampleCacheNode

- (void)resolveWithInputImage:(id)a3 retouchStrokes:(id)a4 cacheKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [PIRetouchSubsampleSourceNode alloc];
  v12 = [(NURenderNode *)self settings];
  v13 = [v12 objectForKeyedSubscript:@"detectedFaces"];
  v14 = [(PIRetouchSourceNode *)v11 initWithInputImage:v10 retouchStrokes:v9 detectedFaces:v13 cacheKey:v8];

  [(NUCacheNode *)self resolveWithSourceNode:v14 error:0];
}

- (void)_updateInputRegion:(id)a3 outputRegion:(id)a4 forStroke:(id)a5 geometry:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v22 = a3;
  v13 = [v10 objectForKeyedSubscript:@"sourceOffset"];
  v14 = [v13 objectForKeyedSubscript:@"x"];
  v15 = [v13 objectForKeyedSubscript:@"y"];
  [v14 doubleValue];
  [v15 doubleValue];
  v36 = 0u;
  v37 = 0u;
  if (v11)
  {
    [v11 extent];
  }

  v16 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:v10];
  v17 = v16;
  v34 = 0u;
  v35 = 0u;
  if (v16)
  {
    [v16 extent];
  }

  else
  {
    v32 = 0uLL;
    v33 = 0uLL;
  }

  NUPixelRectIntersection();
  v32 = 0u;
  v33 = 0u;
  memset(v31, 0, sizeof(v31));
  memset(v30, 0, sizeof(v30));
  [v17 radius];
  v19 = v18;
  v20 = NUPixelPointFromCGPoint();
  v28 = v36;
  v29 = v37;
  v26 = v34;
  v27 = v35;
  [PIRepairUtilities calcExtentsForStrokeRadius:v20 offset:v21 inputImageExtent:&v28 maskExtent:&v26 repairExtent:&v32 textureExtent:v31 sourceExtent:v19, v30];
  v26 = v32;
  v27 = v33;
  NUPixelRectFlipYOrigin();
  v32 = v28;
  v33 = v29;
  [(NUCacheNode *)self subsampleFactor];
  [(PIRetouchSubsampleCacheNode *)self padding];
  v26 = v32;
  v27 = v33;
  NUPixelRectDilate();
  v32 = v28;
  v33 = v29;
  NUScaleMake();
  [v11 scaledSize];
  v28 = 0u;
  v29 = 0u;
  v26 = v32;
  v27 = v33;
  NUPixelRectScaleRational();
  v26 = 0u;
  v27 = 0u;
  v24 = v28;
  v25 = v29;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [v12 addRect:&v24];

  v24 = 0u;
  v25 = 0u;
  v23[0] = v32;
  v23[1] = v33;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [v22 addRect:v23];
}

- (int64_t)subsampleFactorForScale:(id)a3
{
  v4[0] = 0;
  v4[1] = 0;
  return [MEMORY[0x1E69B3CE0] subsampleFactorForScale:a3.var0 additionalScale:{a3.var1, v4}];
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 evaluationMode] == 1 && (v17[0] = 0, v17[1] = 0, v10 = MEMORY[0x1E69B3CE0], v11 = objc_msgSend(v9, "scale"), objc_msgSend(v10, "subsampleFactorForScale:additionalScale:", v11, v12, v17) == 1))
  {
    v13 = [(NUCacheNode *)self inputNode];
    v14 = [v13 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PIRetouchSubsampleCacheNode;
    v14 = [(PIRetouchCacheNode *)&v16 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  return v14;
}

- (id)retouchInputNode
{
  for (i = [(NUCacheNode *)self inputNode];
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }
    }

    v3 = [i inputNode];
  }

  return i;
}

@end