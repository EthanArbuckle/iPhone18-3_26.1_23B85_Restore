@interface CALayer(TSUEdgeAntialiasingUtility)
- (uint64_t)tsu_recursivelySetAllowsEdgeAntialiasing:()TSUEdgeAntialiasingUtility;
@end

@implementation CALayer(TSUEdgeAntialiasingUtility)

- (uint64_t)tsu_recursivelySetAllowsEdgeAntialiasing:()TSUEdgeAntialiasingUtility
{
  v15 = *MEMORY[0x277D85DE8];
  [self setAllowsEdgeAntialiasing:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sublayers = [self sublayers];
  result = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v10 + 1) + 8 * v9++) tsu_recursivelySetAllowsEdgeAntialiasing:a3];
      }

      while (v7 != v9);
      result = [sublayers countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

@end