@interface CALayer(TSDTilingLayerSupport)
- (uint64_t)setNeedsDisplayForDirtyTiles:()TSDTilingLayerSupport;
- (uint64_t)setNeedsLayoutForTilingLayers;
- (uint64_t)setTileContents:()TSDTilingLayerSupport;
- (uint64_t)tilingSafeSetSublayers:()TSDTilingLayerSupport;
@end

@implementation CALayer(TSDTilingLayerSupport)

- (uint64_t)setNeedsLayoutForTilingLayers
{
  sublayers = [self sublayers];

  return [sublayers makeObjectsPerformSelector:a2];
}

- (uint64_t)tilingSafeSetSublayers:()TSDTilingLayerSupport
{
  result = [a3 isEqualToArray:{objc_msgSend(self, "sublayers")}];
  if ((result & 1) == 0)
  {

    return [self setSublayers:a3];
  }

  return result;
}

- (uint64_t)setNeedsDisplayForDirtyTiles:()TSDTilingLayerSupport
{
  superlayer = [self superlayer];

  return [superlayer setNeedsDisplayForDirtyTiles:a3];
}

- (uint64_t)setTileContents:()TSDTilingLayerSupport
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a3 || (isKindOfClass & 1) != 0)
  {
    [objc_msgSend(objc_msgSend(self "sublayers")];
    if (a3)
    {
      v7 = [MEMORY[0x277CBEA60] arrayWithObject:a3];
    }

    else
    {
      v7 = 0;
    }

    [self setSublayers:v7];
    [self setContents:0];
    [a3 setEdgeAntialiasingMask:{objc_msgSend(self, "edgeAntialiasingMask")}];
    superlayer = [self superlayer];

    return [a3 setDelegate:superlayer];
  }

  else
  {

    return [self setContents:a3];
  }
}

@end