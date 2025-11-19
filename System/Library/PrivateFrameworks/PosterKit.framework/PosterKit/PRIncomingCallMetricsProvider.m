@interface PRIncomingCallMetricsProvider
+ (BOOL)canApplyKashidaToText:(id)a3 withFont:(id)a4;
+ (CGRect)maximumHorizontalTextBounds;
+ (CGRect)maximumVerticalTextBounds;
+ (double)_deviceTopMargin;
+ (double)horizontalTextEdgePadding;
+ (double)horizontalTextEdgePaddingForContentSizeCategory:(id)a3;
+ (double)maxHorizontalTextWidth;
+ (double)maxVerticalTextHeight;
+ (id)_contentSizeCategoryToFactorMap;
+ (id)preferredContentSizeCategory;
+ (unint64_t)maximumVerticalTextLength;
@end

@implementation PRIncomingCallMetricsProvider

+ (unint64_t)maximumVerticalTextLength
{
  [a1 maximumVerticalTextBounds];
  Height = CGRectGetHeight(v5);

  return [PRVerticalLabel maximumTextLengthForHeight:Height];
}

+ (CGRect)maximumVerticalTextBounds
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  Height = CGRectGetHeight(v13);

  [a1 maximumHorizontalTextBounds];
  Width = CGRectGetWidth(v14);
  [a1 verticalTextMaxYScreenHeightMultiplier];
  v7 = v6;
  [a1 verticalTextMinYScreenHeightMultiplier];
  v9 = Height * (v7 - v8);
  v10 = 0.0;
  v11 = 0.0;
  v12 = Width;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

+ (BOOL)canApplyKashidaToText:(id)a3 withFont:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAB0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v15 = *MEMORY[0x1E69DB648];
  v16[0] = v7;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v11 = [v9 initWithString:v8 attributes:v10];
  [v11 size];
  v13 = v12;
  [a1 maximumHorizontalTextBounds];
  LOBYTE(a1) = v13 < CGRectGetWidth(v17);

  return a1;
}

+ (id)_contentSizeCategoryToFactorMap
{
  if (_contentSizeCategoryToFactorMap_once != -1)
  {
    +[PRIncomingCallMetricsProvider _contentSizeCategoryToFactorMap];
  }

  v3 = _contentSizeCategoryToFactorMap_mapContentSizeFactor;

  return v3;
}

void __64__PRIncomingCallMetricsProvider__contentSizeCategoryToFactorMap__block_invoke()
{
  v9[12] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69DDC88];
  v8[0] = *MEMORY[0x1E69DDC68];
  v8[1] = v0;
  v9[0] = &unk_1F1C6B9E0;
  v9[1] = &unk_1F1C6B9E0;
  v1 = *MEMORY[0x1E69DDC70];
  v8[2] = *MEMORY[0x1E69DDC78];
  v8[3] = v1;
  v9[2] = &unk_1F1C6B9E0;
  v9[3] = &unk_1F1C6B9E0;
  v2 = *MEMORY[0x1E69DDC58];
  v8[4] = *MEMORY[0x1E69DDC60];
  v8[5] = v2;
  v9[4] = &unk_1F1C6B9F8;
  v9[5] = &unk_1F1C6BA10;
  v3 = *MEMORY[0x1E69DDC40];
  v8[6] = *MEMORY[0x1E69DDC50];
  v8[7] = v3;
  v9[6] = &unk_1F1C6BA10;
  v9[7] = &unk_1F1C6BA28;
  v4 = *MEMORY[0x1E69DDC30];
  v8[8] = *MEMORY[0x1E69DDC38];
  v8[9] = v4;
  v9[8] = &unk_1F1C6BA40;
  v9[9] = &unk_1F1C6BA58;
  v5 = *MEMORY[0x1E69DDC20];
  v8[10] = *MEMORY[0x1E69DDC28];
  v8[11] = v5;
  v9[10] = &unk_1F1C6BA70;
  v9[11] = &unk_1F1C6BA88;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:12];
  v7 = _contentSizeCategoryToFactorMap_mapContentSizeFactor;
  _contentSizeCategoryToFactorMap_mapContentSizeFactor = v6;
}

+ (double)_deviceTopMargin
{
  if (_deviceTopMargin_once != -1)
  {
    +[PRIncomingCallMetricsProvider _deviceTopMargin];
  }

  return *&_deviceTopMargin_deviceTopMargin;
}

void __49__PRIncomingCallMetricsProvider__deviceTopMargin__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 bounds];
  Height = CGRectGetHeight(v3);

  v2 = 25.0;
  if (Height >= 800.0)
  {
    if (Height == 852.0)
    {
      v2 = 60.0;
    }

    else
    {
      v2 = 60.0;
      if (Height < 930.0)
      {
        v2 = 50.0;
      }
    }
  }

  _deviceTopMargin_deviceTopMargin = *&v2;
}

+ (double)horizontalTextEdgePaddingForContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [a1 _contentSizeCategoryToFactorMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = &unk_1F1C6B9E0;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  v9 = [v8 unsignedIntegerValue] * 4.0 + 44.0;
  v10 = [MEMORY[0x1E69DCEB0] mainScreen];

  [v10 bounds];
  Width = CGRectGetWidth(v13);

  result = v9 + -4.0;
  if (Width > 375.0)
  {
    return v9;
  }

  return result;
}

+ (id)preferredContentSizeCategory
{
  v2 = _UIAccessibilityContentSizeCategoryName();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = *MEMORY[0x1E69DDC70];
  }

  v5 = v4;

  return v4;
}

+ (double)horizontalTextEdgePadding
{
  v3 = [a1 preferredContentSizeCategory];
  [a1 horizontalTextEdgePaddingForContentSizeCategory:v3];
  v5 = v4;

  return v5;
}

+ (CGRect)maximumHorizontalTextBounds
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  Width = CGRectGetWidth(v16);

  [a1 horizontalTextEdgePadding];
  v6 = Width + v5 * -2.0;
  v7 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v7 bounds];
  Height = CGRectGetHeight(v17);

  [objc_opt_class() _deviceTopMargin];
  v10 = v9;
  [a1 horizontalTextMaxYScreenHeightMultiplier];
  v12 = -(v10 - Height * v11);
  v13 = 0.0;
  v14 = 0.0;
  v15 = v6;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (double)maxVerticalTextHeight
{
  [a1 maximumVerticalTextBounds];

  return CGRectGetHeight(*&v2);
}

+ (double)maxHorizontalTextWidth
{
  [a1 maximumHorizontalTextBounds];

  return CGRectGetWidth(*&v2);
}

@end