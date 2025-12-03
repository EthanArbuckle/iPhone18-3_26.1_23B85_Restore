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
  pui_sharedDisplayMonitor = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  mainConfiguration = [pui_sharedDisplayMonitor mainConfiguration];

  return mainConfiguration;
}

- (id)pui_displayConfigurationIdentifier
{
  v17 = *MEMORY[0x1E69E9840];
  currentMode = [self currentMode];
  v3 = MEMORY[0x1E696AEC0];
  [self bounds];
  v4 = NSStringFromCGRect(v19);
  [self pointScale];
  v6 = v5;
  [currentMode colorGamut];
  v7 = FBSDisplayGamutDescription();
  [currentMode hdrMode];
  v8 = FBSDisplayHDRModeDescription();
  v9 = [v3 stringWithFormat:@"{bounds:'%@', pointScale:'%f', gamut:'%@', hdrMode:'%@'}", v4, v6, v7, v8];

  uTF8String = [v9 UTF8String];
  v11 = strlen(uTF8String);
  CC_SHA256(uTF8String, v11, md);
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
  pui_sharedDisplayMonitor = [v3 pui_sharedDisplayMonitor];
  displayIdentity = [v4 displayIdentity];

  v7 = [pui_sharedDisplayMonitor configurationForIdentity:displayIdentity];

  return v7;
}

+ (id)pui_displayConfigurationForHardwareIdentifier:()PosterUIFoundation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  pui_sharedDisplayMonitor = [MEMORY[0x1E699FB10] pui_sharedDisplayMonitor];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  connectedIdentities = [pui_sharedDisplayMonitor connectedIdentities];
  v6 = [connectedIdentities countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(connectedIdentities);
      }

      v10 = [pui_sharedDisplayMonitor configurationForIdentity:*(*(&v14 + 1) + 8 * v9)];
      pui_displayConfigurationIdentifier = [v10 pui_displayConfigurationIdentifier];
      v12 = [pui_displayConfigurationIdentifier isEqual:v3];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [connectedIdentities countByEnumeratingWithState:&v14 objects:v18 count:16];
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
    pui_sharedDisplayMonitor = [v3 pui_sharedDisplayMonitor];
    v6 = [pui_sharedDisplayMonitor configurationForIdentity:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end