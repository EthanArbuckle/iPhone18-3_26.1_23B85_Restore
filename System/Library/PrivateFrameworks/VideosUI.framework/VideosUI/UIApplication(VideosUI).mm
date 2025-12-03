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
  connectedScenes = [self connectedScenes];
  v2 = [connectedScenes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(connectedScenes);
        }

        v4 |= [*(*(&v8 + 1) + 8 * i) vui_isNonLightningSecondScreenScene];
      }

      v3 = [connectedScenes countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  delegate = [mEMORY[0x1E69DC668] delegate];

  if ([delegate conformsToProtocol:&unk_1F5F78BA8])
  {
    v2 = delegate;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BOOL)vuiIsRTL
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  return userInterfaceLayoutDirection == 1;
}

+ (BOOL)vuiIsActive
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [mEMORY[0x1E69DC668] applicationState] == 0;

  return v1;
}

@end