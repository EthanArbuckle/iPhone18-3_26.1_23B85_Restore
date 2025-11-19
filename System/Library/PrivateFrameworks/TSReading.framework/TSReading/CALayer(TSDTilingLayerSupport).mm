@interface CALayer(TSDTilingLayerSupport)
- (uint64_t)setNeedsDisplayForDirtyTiles:()TSDTilingLayerSupport;
- (uint64_t)setNeedsLayoutForTilingLayers;
- (uint64_t)setTileContents:()TSDTilingLayerSupport;
- (uint64_t)tilingSafeSetSublayers:()TSDTilingLayerSupport;
@end

@implementation CALayer(TSDTilingLayerSupport)

- (uint64_t)setNeedsLayoutForTilingLayers
{
  v3 = [a1 sublayers];

  return [v3 makeObjectsPerformSelector:a2];
}

- (uint64_t)tilingSafeSetSublayers:()TSDTilingLayerSupport
{
  result = [a3 isEqualToArray:{objc_msgSend(a1, "sublayers")}];
  if ((result & 1) == 0)
  {

    return [a1 setSublayers:a3];
  }

  return result;
}

- (uint64_t)setNeedsDisplayForDirtyTiles:()TSDTilingLayerSupport
{
  v4 = [a1 superlayer];

  return [v4 setNeedsDisplayForDirtyTiles:a3];
}

- (uint64_t)setTileContents:()TSDTilingLayerSupport
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a3 || (isKindOfClass & 1) != 0)
  {
    [objc_msgSend(objc_msgSend(a1 "sublayers")];
    if (a3)
    {
      v7 = [MEMORY[0x277CBEA60] arrayWithObject:a3];
    }

    else
    {
      v7 = 0;
    }

    [a1 setSublayers:v7];
    [a1 setContents:0];
    [a3 setEdgeAntialiasingMask:{objc_msgSend(a1, "edgeAntialiasingMask")}];
    v8 = [a1 superlayer];

    return [a3 setDelegate:v8];
  }

  else
  {

    return [a1 setContents:a3];
  }
}

@end