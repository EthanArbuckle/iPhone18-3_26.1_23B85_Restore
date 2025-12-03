@interface UIFont(PhotosUI)
+ (double)pu_scaledValue:()PhotosUI usingFontOfAttributedString:;
- (id)pu_fontWithMonospacedNumbers;
@end

@implementation UIFont(PhotosUI)

- (id)pu_fontWithMonospacedNumbers
{
  v15[1] = *MEMORY[0x1E69E9840];
  fontDescriptor = [self fontDescriptor];
  v14 = *MEMORY[0x1E69DB8B0];
  v3 = *MEMORY[0x1E69DB900];
  v11[0] = *MEMORY[0x1E69DB908];
  v11[1] = v3;
  v12[0] = &unk_1F2B7EFD8;
  v12[1] = &unk_1F2B7EFF0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v6];

  v8 = MEMORY[0x1E69DB878];
  [self pointSize];
  v9 = [v8 fontWithDescriptor:v7 size:?];

  return v9;
}

+ (double)pu_scaledValue:()PhotosUI usingFontOfAttributedString:
{
  v5 = a4;
  v6 = v5;
  v7 = 0.0;
  v8 = self == 0.0 || v5 == 0;
  if (!v8 && [v5 length])
  {
    v9 = [v6 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
    [v9 _scaledValueForValue:self];
    v11 = v10;
    if (PUMainScreenScale_onceToken != -1)
    {
      dispatch_once(&PUMainScreenScale_onceToken, &__block_literal_global_27106);
    }

    v7 = round(*&PUMainScreenScale_screenScale * v11) / *&PUMainScreenScale_screenScale;
  }

  return v7;
}

@end