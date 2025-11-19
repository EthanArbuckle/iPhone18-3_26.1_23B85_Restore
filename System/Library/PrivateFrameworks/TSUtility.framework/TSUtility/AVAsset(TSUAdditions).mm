@interface AVAsset(TSUAdditions)
- (double)naturalSizeWithPreferredTransforms;
@end

@implementation AVAsset(TSUAdditions)

- (double)naturalSizeWithPreferredTransforms
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBF3A0];
  width = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [a1 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    x = *v1;
    y = v1[1];
    v9 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 isEnabled])
        {
          [v11 naturalSize];
          v13 = v12;
          v15 = v14;
          if (v11)
          {
            [v11 preferredTransform];
          }

          else
          {
            memset(&v17, 0, sizeof(v17));
          }

          v24.origin.x = 0.0;
          v24.origin.y = 0.0;
          v24.size.width = v13;
          v24.size.height = v15;
          v27 = CGRectApplyAffineTransform(v24, &v17);
          v25.origin.x = x;
          v25.origin.y = y;
          v25.size.width = width;
          v25.size.height = height;
          v26 = CGRectUnion(v25, v27);
          x = v26.origin.x;
          y = v26.origin.y;
          width = v26.size.width;
          height = v26.size.height;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return width;
}

@end