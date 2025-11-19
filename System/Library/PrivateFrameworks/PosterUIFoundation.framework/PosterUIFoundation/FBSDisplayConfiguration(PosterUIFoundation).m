@interface FBSDisplayConfiguration(PosterUIFoundation)
+ (id)pui_displayConfigurationForHardwareIdentifier:()PosterUIFoundation;
+ (id)pui_displayConfigurationForIdentity:()PosterUIFoundation;
+ (id)pui_displayConfigurationForScreen:()PosterUIFoundation;
+ (id)pui_mainDisplayConfiguration;
- (id)pui_displayConfigurationIdentifier;
@end

@implementation FBSDisplayConfiguration(PosterUIFoundation)

+ (id)pui_mainDisplayConfiguration
{
  v0 = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  v1 = [v0 mainConfiguration];

  return v1;
}

- (id)pui_displayConfigurationIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [a1 currentMode];
  v3 = MEMORY[0x1E696AEC0];
  [a1 bounds];
  v4 = NSStringFromCGRect(v19);
  [a1 pointScale];
  v6 = v5;
  [v2 colorGamut];
  v7 = FBSDisplayGamutDescription();
  [v2 hdrMode];
  v8 = FBSDisplayHDRModeDescription();
  v9 = [v3 stringWithFormat:@"{bounds:'%@', pointScale:'%f', gamut:'%@', hdrMode:'%@'}", v4, v6, v7, v8];

  v10 = [v9 UTF8String];
  v11 = strlen(v10);
  CC_SHA256(v10, v11, md);
  v12 = [MEMORY[0x1E696AD60] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v12 appendFormat:@"%02x", md[i]];
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithString:v12];

  return v14;
}

+ (id)pui_displayConfigurationForScreen:()PosterUIFoundation
{
  v3 = MEMORY[0x1E699FB10];
  v4 = a3;
  v5 = [v3 pui_sharedDisplayMonitor];
  v6 = [v4 displayIdentity];

  v7 = [v5 configurationForIdentity:v6];

  return v7;
}

+ (id)pui_displayConfigurationForHardwareIdentifier:()PosterUIFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 connectedIdentities];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [v4 configurationForIdentity:*(*(&v14 + 1) + 8 * v9)];
      v11 = [v10 pui_displayConfigurationIdentifier];
      v12 = [v11 isEqual:v3];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

+ (id)pui_displayConfigurationForIdentity:()PosterUIFoundation
{
  if (a3)
  {
    v3 = MEMORY[0x1E699FB10];
    v4 = a3;
    v5 = [v3 pui_sharedDisplayMonitor];
    v6 = [v5 configurationForIdentity:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end