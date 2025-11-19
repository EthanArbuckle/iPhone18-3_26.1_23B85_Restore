@interface FBSDisplayConfiguration(PBFAdditions)
+ (id)pbf_displayConfigurationForDisplayContext:()PBFAdditions;
@end

@implementation FBSDisplayConfiguration(PBFAdditions)

+ (id)pbf_displayConfigurationForDisplayContext:()PBFAdditions
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D0AD38] pui_sharedDisplayMonitor];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [v4 connectedIdentities];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v4 configurationForIdentity:*(*(&v24 + 1) + 8 * v9)];
      [v10 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [v3 pbf_referenceBounds];
      v32.origin.x = v19;
      v32.origin.y = v20;
      v32.size.width = v21;
      v32.size.height = v22;
      v31.origin.x = v12;
      v31.origin.y = v14;
      v31.size.width = v16;
      v31.size.height = v18;
      if (CGRectEqualToRect(v31, v32))
      {
        [v10 pointScale];
        [v3 pbf_scale];
        if (BSFloatEqualToFloat())
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

@end