@interface CALayer(TSUEdgeAntialiasingUtility)
- (uint64_t)tsu_recursivelySetAllowsEdgeAntialiasing:()TSUEdgeAntialiasingUtility;
@end

@implementation CALayer(TSUEdgeAntialiasingUtility)

- (uint64_t)tsu_recursivelySetAllowsEdgeAntialiasing:()TSUEdgeAntialiasingUtility
{
  v15 = *MEMORY[0x277D85DE8];
  [a1 setAllowsEdgeAntialiasing:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [a1 sublayers];
  result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) tsu_recursivelySetAllowsEdgeAntialiasing:a3];
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

@end