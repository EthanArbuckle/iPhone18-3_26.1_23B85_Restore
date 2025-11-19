@interface UIFont(Private)
+ (id)_smu_preferredFontForTextStyle:()Private design:variant:maximumContentSizeCategory:compatibleWithTraitCollection:;
+ (id)_smu_preferredFontForTextStyle:()Private variant:maximumContentSizeCategory:compatibleWithTraitCollection:;
+ (id)_stringForSystemDesign:()Private;
+ (id)smu_preferredFontForTextStyle:()Private design:variant:;
+ (id)smu_preferredFontForTextStyle:()Private design:variant:compatibleWithTraitCollection:;
+ (id)smu_preferredFontForTextStyle:()Private variant:;
+ (uint64_t)_underlyingVariantForVariant:()Private;
@end

@implementation UIFont(Private)

+ (id)smu_preferredFontForTextStyle:()Private variant:
{
  v6 = MEMORY[0x277D74300];
  v7 = a3;
  v8 = [v6 _preferredFontForTextStyle:v7 variant:{objc_msgSend(a1, "_underlyingVariantForVariant:", a4)}];

  return v8;
}

+ (id)smu_preferredFontForTextStyle:()Private design:variant:
{
  v8 = MEMORY[0x277D74300];
  v9 = a3;
  v10 = [a1 _stringForSystemDesign:a4];
  v11 = [v8 _preferredFontForTextStyle:v9 design:v10 variant:{objc_msgSend(a1, "_underlyingVariantForVariant:", a5)}];

  return v11;
}

+ (id)smu_preferredFontForTextStyle:()Private design:variant:compatibleWithTraitCollection:
{
  v10 = MEMORY[0x277D74300];
  v11 = a6;
  v12 = a3;
  v13 = [a1 _stringForSystemDesign:a4];
  v14 = [v10 _preferredFontForTextStyle:v12 design:v13 variant:objc_msgSend(a1 compatibleWithTraitCollection:{"_underlyingVariantForVariant:", a5), v11}];

  return v14;
}

+ (id)_smu_preferredFontForTextStyle:()Private variant:maximumContentSizeCategory:compatibleWithTraitCollection:
{
  v10 = MEMORY[0x277D74300];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [a1 _stringForSystemDesign:0];
  v15 = [v10 _preferredFontForTextStyle:v13 design:v14 variant:objc_msgSend(a1 maximumContentSizeCategory:"_underlyingVariantForVariant:" compatibleWithTraitCollection:{a4), v12, v11}];

  return v15;
}

+ (id)_smu_preferredFontForTextStyle:()Private design:variant:maximumContentSizeCategory:compatibleWithTraitCollection:
{
  v12 = MEMORY[0x277D74300];
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [a1 _stringForSystemDesign:a4];
  v17 = [v12 _preferredFontForTextStyle:v15 design:v16 variant:objc_msgSend(a1 maximumContentSizeCategory:"_underlyingVariantForVariant:" compatibleWithTraitCollection:{a5), v14, v13}];

  return v17;
}

+ (id)_stringForSystemDesign:()Private
{
  if (a3 <= 3)
  {
    a1 = **(&unk_277D97D10 + a3);
  }

  return a1;
}

+ (uint64_t)_underlyingVariantForVariant:()Private
{
  if (a3 == 0x10000)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 1280)
  {
    v3 = 1280;
  }

  if (a3 == 1024)
  {
    v4 = 1024;
  }

  else
  {
    v4 = 0;
  }

  if (a3 == 512)
  {
    v4 = 512;
  }

  if (a3 <= 1279)
  {
    v3 = v4;
  }

  if (a3 == 256)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  if (a3 == 8)
  {
    v5 = 8;
  }

  if (a3 == 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 2)
  {
    v6 = 2;
  }

  if (a3 <= 7)
  {
    v5 = v6;
  }

  if (a3 <= 511)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

@end