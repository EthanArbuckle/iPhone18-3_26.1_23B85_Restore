@interface CATransformLayer(TSUEdgeAntialiasingUtility)
- (uint64_t)tsu_recursivelySetAllowsEdgeAntialiasing:()TSUEdgeAntialiasingUtility;
@end

@implementation CATransformLayer(TSUEdgeAntialiasingUtility)

- (uint64_t)tsu_recursivelySetAllowsEdgeAntialiasing:()TSUEdgeAntialiasingUtility
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  sublayers = [self sublayers];
  result = [sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v9 + 1) + 8 * v8++) tsu_recursivelySetAllowsEdgeAntialiasing:a3];
      }

      while (v6 != v8);
      result = [sublayers countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

@end