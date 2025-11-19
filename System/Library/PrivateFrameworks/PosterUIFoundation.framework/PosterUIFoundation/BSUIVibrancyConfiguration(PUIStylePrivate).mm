@interface BSUIVibrancyConfiguration(PUIStylePrivate)
+ (id)pui_vibrancyLUTFromColor:()PUIStylePrivate extensionBundleURL:;
+ (id)pui_vibrancyLUTFromColor:()PUIStylePrivate extensionBundleURL:luminanceReduced:;
+ (id)pui_vibrancyLUTFromPrivateStyle:()PUIStylePrivate extensionBundleURL:luminanceReduced:;
+ (uint64_t)pui_vibrancyEffectTypeFromColor:()PUIStylePrivate;
@end

@implementation BSUIVibrancyConfiguration(PUIStylePrivate)

+ (uint64_t)pui_vibrancyEffectTypeFromColor:()PUIStylePrivate
{
  v3 = a3;
  if ([v3 isVibrantMaterialColor])
  {
    v4 = 0;
  }

  else if ([v3 isVibrantMonochromeColor])
  {
    v4 = 2;
  }

  else if ([v3 isLUTBackedColor])
  {
    v4 = 3;
  }

  else
  {
    v5 = [v3 color];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)pui_vibrancyLUTFromColor:()PUIStylePrivate extensionBundleURL:
{
  v5 = a3;
  v6 = a4;
  if ([v5 isLUTBackedColor])
  {
    v7 = objc_alloc(MEMORY[0x1E698E820]);
    v8 = [v5 lutIdentifier];
    v9 = [v7 initWithIdentifier:v8 bundleURL:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)pui_vibrancyLUTFromColor:()PUIStylePrivate extensionBundleURL:luminanceReduced:
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 isLUTBackedColor];
  v10 = 0;
  if (v8 && v9)
  {
    v11 = objc_alloc(MEMORY[0x1E698E820]);
    v12 = [v7 lutIdentifier];
    v13 = [v11 initWithIdentifier:v12 bundleURL:v8];

    v10 = [v13 copyWithLuminanceReduced:a5];
  }

  return v10;
}

+ (id)pui_vibrancyLUTFromPrivateStyle:()PUIStylePrivate extensionBundleURL:luminanceReduced:
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 lutIdentifier];

  v10 = 0;
  if (v8 && v9)
  {
    v11 = objc_alloc(MEMORY[0x1E698E820]);
    v12 = [v7 lutIdentifier];
    v13 = [v11 initWithIdentifier:v12 bundleURL:v8];

    v10 = [v13 copyWithLuminanceReduced:a5];
  }

  return v10;
}

@end