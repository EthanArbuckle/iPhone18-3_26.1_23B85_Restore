@interface PKBridgeWatchAttributeController
+ (id)_watchAttributeController;
+ (int64_t)heroWatchSize;
@end

@implementation PKBridgeWatchAttributeController

+ (int64_t)heroWatchSize
{
  v2 = MEMORY[0x1E69B7D88];
  _watchAttributeController = [self _watchAttributeController];
  v4 = [v2 sizeFromInternalSize:{objc_msgSend(_watchAttributeController, "size")}];

  v5 = PKHeroWatchSizeOverride();
  integerValue = [v5 integerValue];

  if (v4 - 2 >= 3)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if ((integerValue - 1) >= 4)
  {
    return v7;
  }

  else
  {
    return integerValue;
  }
}

+ (id)_watchAttributeController
{
  mEMORY[0x1E69B7D88] = [MEMORY[0x1E69B7D88] sharedDeviceController];
  v3 = PKPairedOrPairingDevice();
  [mEMORY[0x1E69B7D88] setDevice:v3];

  return mEMORY[0x1E69B7D88];
}

@end