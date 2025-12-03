@interface TFCoreUtils
+ (BOOL)tf_deviceHasFaceID;
+ (BOOL)tf_deviceHasTopPowerButton;
+ (id)tf_screenshotInstructionImageDict;
@end

@implementation TFCoreUtils

+ (id)tf_screenshotInstructionImageDict
{
  v18[1] = *MEMORY[0x277D85DE8];
  tf_deviceHasFaceID = [self tf_deviceHasFaceID];
  if ([MEMORY[0x277CEE470] deviceIsiPad])
  {
    if (tf_deviceHasFaceID)
    {
      v17 = @"TFScreenshotInstructionDeviceImageKey";
      v18[0] = @"ipad-face-id";
      v4 = MEMORY[0x277CBEAC0];
      v5 = v18;
      v6 = &v17;
    }

    else
    {
      v15 = @"TFScreenshotInstructionDeviceImageKey";
      v16 = @"ipad-touch-id";
      v4 = MEMORY[0x277CBEAC0];
      v5 = &v16;
      v6 = &v15;
    }
  }

  else if ([self tf_deviceHasTopPowerButton])
  {
    v13 = @"TFScreenshotInstructionDeviceImageKey";
    v14 = @"iphone-touch-id-top-power";
    v4 = MEMORY[0x277CBEAC0];
    v5 = &v14;
    v6 = &v13;
  }

  else if (tf_deviceHasFaceID)
  {
    v11 = @"TFScreenshotInstructionDeviceImageKey";
    v12 = @"iphone-face-id";
    v4 = MEMORY[0x277CBEAC0];
    v5 = &v12;
    v6 = &v11;
  }

  else
  {
    v9 = @"TFScreenshotInstructionDeviceImageKey";
    v10 = @"iphone-touch-id";
    v4 = MEMORY[0x277CBEAC0];
    v5 = &v10;
    v6 = &v9;
  }

  v7 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:1];

  return v7;
}

+ (BOOL)tf_deviceHasFaceID
{
  if (tf_deviceHasFaceID_onceToken != -1)
  {
    +[TFCoreUtils tf_deviceHasFaceID];
  }

  return tf_deviceHasFaceID_hasFaceID;
}

uint64_t __33__TFCoreUtils_tf_deviceHasFaceID__block_invoke()
{
  result = MGGetBoolAnswer();
  tf_deviceHasFaceID_hasFaceID = result;
  return result;
}

+ (BOOL)tf_deviceHasTopPowerButton
{
  productType = [MEMORY[0x277CEE470] productType];
  v3 = [productType containsString:{@"iPhone8, 4"}];
  v4 = v3 | [productType containsString:@"iPod"];

  return v4 & 1;
}

@end