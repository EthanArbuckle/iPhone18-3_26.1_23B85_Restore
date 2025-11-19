@interface PKBridgeWatchAttributeController
+ (id)_watchAttributeController;
+ (int64_t)heroWatchSize;
@end

@implementation PKBridgeWatchAttributeController

+ (int64_t)heroWatchSize
{
  v2 = MEMORY[0x1E69B7D88];
  v3 = [a1 _watchAttributeController];
  v4 = [v2 sizeFromInternalSize:{objc_msgSend(v3, "size")}];

  v5 = PKHeroWatchSizeOverride();
  v6 = [v5 integerValue];

  if (v4 - 2 >= 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if ((v6 - 1) >= 4)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

+ (id)_watchAttributeController
{
  v2 = [MEMORY[0x1E69B7D88] sharedDeviceController];
  v3 = PKPairedOrPairingDevice();
  [v2 setDevice:v3];

  return v2;
}

@end