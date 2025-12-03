@interface UIColor(SafariSharedExtras)
+ (id)safari_colorWithRGBColorComponents:()SafariSharedExtras;
+ (id)safari_colorWithSerializedColorData:()SafariSharedExtras;
+ (id)safari_colorWithWBSNamedColorOption:()SafariSharedExtras;
- (BOOL)safari_isOffWhite;
- (double)_safari_luminanceUsingColorSpaceName:()SafariSharedExtras;
- (double)safari_contrastRatioWithColor:()SafariSharedExtras;
- (double)safari_grayscaleComponent;
- (double)safari_luminance;
- (double)safari_sRGBLuminance;
- (double)safari_saturation;
- (id)safari_colorByModifyingBrightnessByMultiplier:()SafariSharedExtras;
- (id)safari_colorDataForSerialization;
- (id)safari_rgbColorComponents;
@end

@implementation UIColor(SafariSharedExtras)

- (double)safari_grayscaleComponent
{
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0E0]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v2, kCGRenderingIntentDefault, [self CGColor], 0);
  v4 = *CGColorGetComponents(CopyByMatchingToColorSpace);
  CFRelease(v2);
  CFRelease(CopyByMatchingToColorSpace);
  return v4;
}

+ (id)safari_colorWithRGBColorComponents:()SafariSharedExtras
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 count] == 3 && (v7 = 0.0, v8 = 0.0, v6 = 0.0, getValidColorComponentAtIndexInArray(v3, 0, &v8)) && getValidColorComponentAtIndexInArray(v3, 1, &v7) && getValidColorComponentAtIndexInArray(v3, 2, &v6))
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:v8 green:v7 blue:v6 alpha:1.0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)safari_rgbColorComponents
{
  v9[3] = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  v8 = 0.0;
  v6 = 0.0;
  [self getRed:&v8 green:&v7 blue:&v6 alpha:0];
  v1 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  v9[0] = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v9[1] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v9[2] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];

  return v4;
}

+ (id)safari_colorWithWBSNamedColorOption:()SafariSharedExtras
{
  v3 = a3;
  isClearColor = [v3 isClearColor];
  v5 = MEMORY[0x1E69DC888];
  if (isClearColor)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [v3 redComponent];
    v7 = v6;
    [v3 greenComponent];
    v9 = v8;
    [v3 blueComponent];
    v11 = v10;
    [v3 alphaComponent];
    [v5 colorWithRed:v7 green:v9 blue:v11 alpha:v12];
  }
  v13 = ;

  return v13;
}

+ (id)safari_colorWithSerializedColorData:()SafariSharedExtras
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXKeyedArchiver();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        safari_privacyPreservingDescription = [v5 safari_privacyPreservingDescription];
        [(UIColor(SafariSharedExtras) *)safari_privacyPreservingDescription safari_colorWithSerializedColorData:buf, v6];
      }
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v4 finishDecoding];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)safari_colorDataForSerialization
{
  v2 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v2 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  encodedData = [v2 encodedData];

  return encodedData;
}

- (double)safari_luminance
{
  v2 = objc_getAssociatedObject(self, sel_safari_luminance);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    [self _safari_luminanceUsingColorSpaceName:*MEMORY[0x1E695F140]];
    v5 = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    objc_setAssociatedObject(self, sel_safari_luminance, v7, 1);
  }

  return v5;
}

- (double)safari_sRGBLuminance
{
  v2 = objc_getAssociatedObject(self, sel_safari_sRGBLuminance);
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    [self _safari_luminanceUsingColorSpaceName:*MEMORY[0x1E695F1C0]];
    v5 = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    objc_setAssociatedObject(self, sel_safari_sRGBLuminance, v7, 1);
  }

  return v5;
}

- (double)_safari_luminanceUsingColorSpaceName:()SafariSharedExtras
{
  v4 = CGColorSpaceCreateWithName(name);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentDefault, [self CGColor], 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v7 = WBSComputeLuminance(*Components, Components[1], Components[2]);
  CFRelease(v4);
  CFRelease(CopyByMatchingToColorSpace);
  return v7;
}

- (double)safari_saturation
{
  v3 = 0.0;
  safari_sRGBColor = [self safari_sRGBColor];
  [safari_sRGBColor getHue:0 saturation:&v3 brightness:0 alpha:0];

  return v3;
}

- (BOOL)safari_isOffWhite
{
  [self safari_saturation];
  if (v2 >= 0.05)
  {
    return 0;
  }

  [self safari_luminance];
  return v3 > 0.8;
}

- (double)safari_contrastRatioWithColor:()SafariSharedExtras
{
  [a3 safari_luminance];
  v5 = v4;
  [self safari_luminance];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v5 < v6)
  {
    v6 = v5;
  }

  return (v7 + 0.05) / (v6 + 0.05);
}

- (id)safari_colorByModifyingBrightnessByMultiplier:()SafariSharedExtras
{
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  [self getHue:&v8 saturation:&v7 brightness:&v6 alpha:&v5];
  v3 = [MEMORY[0x1E69DC888] colorWithHue:v8 saturation:v7 brightness:v6 * a2 alpha:v5];

  return v3;
}

+ (void)safari_colorWithSerializedColorData:()SafariSharedExtras .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Failed to read from color data: %{public}@", buf, 0xCu);
}

@end