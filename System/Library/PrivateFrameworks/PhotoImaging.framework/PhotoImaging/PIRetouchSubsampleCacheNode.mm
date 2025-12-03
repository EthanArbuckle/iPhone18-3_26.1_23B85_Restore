@interface PIRetouchSubsampleCacheNode
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)retouchInputNode;
- (int64_t)subsampleFactorForScale:(id)scale;
- (void)_updateInputRegion:(id)region outputRegion:(id)outputRegion forStroke:(id)stroke geometry:(id)geometry;
- (void)resolveWithInputImage:(id)image retouchStrokes:(id)strokes cacheKey:(id)key;
@end

@implementation PIRetouchSubsampleCacheNode

- (void)resolveWithInputImage:(id)image retouchStrokes:(id)strokes cacheKey:(id)key
{
  keyCopy = key;
  strokesCopy = strokes;
  imageCopy = image;
  v11 = [PIRetouchSubsampleSourceNode alloc];
  settings = [(NURenderNode *)self settings];
  v13 = [settings objectForKeyedSubscript:@"detectedFaces"];
  v14 = [(PIRetouchSourceNode *)v11 initWithInputImage:imageCopy retouchStrokes:strokesCopy detectedFaces:v13 cacheKey:keyCopy];

  [(NUCacheNode *)self resolveWithSourceNode:v14 error:0];
}

- (void)_updateInputRegion:(id)region outputRegion:(id)outputRegion forStroke:(id)stroke geometry:(id)geometry
{
  strokeCopy = stroke;
  geometryCopy = geometry;
  outputRegionCopy = outputRegion;
  regionCopy = region;
  v13 = [strokeCopy objectForKeyedSubscript:@"sourceOffset"];
  v14 = [v13 objectForKeyedSubscript:@"x"];
  v15 = [v13 objectForKeyedSubscript:@"y"];
  [v14 doubleValue];
  [v15 doubleValue];
  v36 = 0u;
  v37 = 0u;
  if (geometryCopy)
  {
    [geometryCopy extent];
  }

  v16 = [PIRepairUtilities brushStrokeFromRetouchStrokeDictionary:strokeCopy];
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
  [geometryCopy scaledSize];
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
  [outputRegionCopy addRect:&v24];

  v24 = 0u;
  v25 = 0u;
  v23[0] = v32;
  v23[1] = v33;
  NUAlignPixelRectToPixelGrid();
  NUPixelRectIntersection();
  [regionCopy addRect:v23];
}

- (int64_t)subsampleFactorForScale:(id)scale
{
  v4[0] = 0;
  v4[1] = 0;
  return [MEMORY[0x1E69B3CE0] subsampleFactorForScale:scale.var0 additionalScale:{scale.var1, v4}];
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  if ([stateCopy evaluationMode] == 1 && (v17[0] = 0, v17[1] = 0, v10 = MEMORY[0x1E69B3CE0], v11 = objc_msgSend(stateCopy, "scale"), objc_msgSend(v10, "subsampleFactorForScale:additionalScale:", v11, v12, v17) == 1))
  {
    inputNode = [(NUCacheNode *)self inputNode];
    v14 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PIRetouchSubsampleCacheNode;
    v14 = [(PIRetouchCacheNode *)&v16 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
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

    inputNode = [i inputNode];
  }

  return i;
}

@end