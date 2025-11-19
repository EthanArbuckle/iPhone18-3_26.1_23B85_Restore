@interface UIContentSizeCategoryFromStringInternal
@end

@implementation UIContentSizeCategoryFromStringInternal

void ___UIContentSizeCategoryFromStringInternal_block_invoke()
{
  v2[13] = *MEMORY[0x1E69E9840];
  v2[0] = @"_UICTContentSizeCategoryUnspecified";
  v2[1] = @"UICTContentSizeCategoryXS";
  v2[2] = @"UICTContentSizeCategoryS";
  v2[3] = @"UICTContentSizeCategoryM";
  v2[4] = @"UICTContentSizeCategoryL";
  v2[5] = @"UICTContentSizeCategoryXL";
  v2[6] = @"UICTContentSizeCategoryXXL";
  v2[7] = @"UICTContentSizeCategoryXXXL";
  v2[8] = @"UICTContentSizeCategoryAccessibilityM";
  v2[9] = @"UICTContentSizeCategoryAccessibilityL";
  v2[10] = @"UICTContentSizeCategoryAccessibilityXL";
  v2[11] = @"UICTContentSizeCategoryAccessibilityXXL";
  v2[12] = @"UICTContentSizeCategoryAccessibilityXXXL";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:13];
  v1 = qword_1ED4A2150;
  qword_1ED4A2150 = v0;
}

@end