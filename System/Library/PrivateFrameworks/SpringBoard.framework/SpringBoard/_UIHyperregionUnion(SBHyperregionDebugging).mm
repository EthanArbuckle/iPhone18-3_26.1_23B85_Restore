@interface _UIHyperregionUnion(SBHyperregionDebugging)
- (double)sb_debugFrame;
@end

@implementation _UIHyperregionUnion(SBHyperregionDebugging)

- (double)sb_debugFrame
{
  v21 = *MEMORY[0x277D85DE8];
  x = *MEMORY[0x277CBF3A0];
  y = *(MEMORY[0x277CBF3A0] + 8);
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _regions = [self _regions];
  v6 = [_regions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(_regions);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 sb_debugFrame];
          v24.origin.x = v11;
          v24.origin.y = v12;
          v24.size.width = v13;
          v24.size.height = v14;
          v22.origin.x = x;
          v22.origin.y = y;
          v22.size.width = width;
          v22.size.height = height;
          v23 = CGRectUnion(v22, v24);
          x = v23.origin.x;
          y = v23.origin.y;
          width = v23.size.width;
          height = v23.size.height;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_regions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return x;
}

@end