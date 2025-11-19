@interface UIApplication(VideosUI)
+ (BOOL)vuiIsActive;
+ (BOOL)vuiIsRTL;
- (id)vuiDelegate;
- (uint64_t)vuiIsNonLightningAVAdapterConnected;
@end

@implementation UIApplication(VideosUI)

- (uint64_t)vuiIsNonLightningAVAdapterConnected
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [a1 connectedScenes];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 |= [*(*(&v8 + 1) + 8 * i) vui_isNonLightningSecondScreenScene];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (id)vuiDelegate
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 delegate];

  if ([v1 conformsToProtocol:&unk_1F5F78BA8])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)vuiIsRTL
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection];

  return v1 == 1;
}

+ (BOOL)vuiIsActive
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 applicationState] == 0;

  return v1;
}

@end