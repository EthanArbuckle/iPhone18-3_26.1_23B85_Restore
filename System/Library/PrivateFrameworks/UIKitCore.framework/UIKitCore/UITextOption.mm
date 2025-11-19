@interface UITextOption
@end

@implementation UITextOption

void __55___UITextOption_insetMultiplierForContentSizeCategory___block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"UICTContentSizeCategoryXL";
  v2[1] = @"UICTContentSizeCategoryXXL";
  v3[0] = &unk_1EFE2E488;
  v3[1] = &unk_1EFE2E498;
  v2[2] = @"UICTContentSizeCategoryXXXL";
  v2[3] = @"UICTContentSizeCategoryAccessibilityM";
  v3[2] = &unk_1EFE2E4A8;
  v3[3] = &unk_1EFE2E4B8;
  v2[4] = @"UICTContentSizeCategoryAccessibilityL";
  v2[5] = @"UICTContentSizeCategoryAccessibilityXL";
  v3[4] = &unk_1EFE2E4C8;
  v3[5] = &unk_1EFE2E4D8;
  v2[6] = @"UICTContentSizeCategoryAccessibilityXXL";
  v2[7] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v3[6] = &unk_1EFE2E4E8;
  v3[7] = &unk_1EFE2E4F8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = _MergedGlobals_29_1;
  _MergedGlobals_29_1 = v0;
}

void __31___UITextOption_baseSymbolSize__block_invoke()
{
  v3[8] = *MEMORY[0x1E69E9840];
  v2[0] = @"UICTContentSizeCategoryXL";
  v2[1] = @"UICTContentSizeCategoryXXL";
  v3[0] = &unk_1EFE308B0;
  v3[1] = &unk_1EFE308C8;
  v2[2] = @"UICTContentSizeCategoryXXXL";
  v2[3] = @"UICTContentSizeCategoryAccessibilityM";
  v3[2] = &unk_1EFE308E0;
  v3[3] = &unk_1EFE2E508;
  v2[4] = @"UICTContentSizeCategoryAccessibilityL";
  v2[5] = @"UICTContentSizeCategoryAccessibilityXL";
  v3[4] = &unk_1EFE2E508;
  v3[5] = &unk_1EFE2E508;
  v2[6] = @"UICTContentSizeCategoryAccessibilityXXL";
  v2[7] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v3[6] = &unk_1EFE2E508;
  v3[7] = &unk_1EFE2E508;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  v1 = qword_1ED49B2E8;
  qword_1ED49B2E8 = v0;
}

@end