@interface UIKBRTFingerInfo
@end

@implementation UIKBRTFingerInfo

void __32___UIKBRTFingerInfo_description__block_invoke()
{
  v3[13] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1EFE31F90;
  v2[1] = &unk_1EFE31E70;
  v3[0] = @"Unknown";
  v3[1] = @"LeftUnknown";
  v2[2] = &unk_1EFE31F00;
  v2[3] = &unk_1EFE31ED0;
  v3[2] = @"RightUnknown";
  v3[3] = @"LeftLittle";
  v2[4] = &unk_1EFE31EB8;
  v2[5] = &unk_1EFE31EA0;
  v3[4] = @"LeftRing";
  v3[5] = @"LeftMiddle";
  v2[6] = &unk_1EFE31E88;
  v2[7] = &unk_1EFE31EE8;
  v3[6] = @"LeftIndex";
  v3[7] = @"LeftThumb";
  v2[8] = &unk_1EFE31F78;
  v2[9] = &unk_1EFE31F18;
  v3[8] = @"RightThumb";
  v3[9] = @"RightIndex";
  v2[10] = &unk_1EFE31F30;
  v2[11] = &unk_1EFE31F48;
  v3[10] = @"RightMiddle";
  v3[11] = @"RightRing";
  v2[12] = &unk_1EFE31F60;
  v3[12] = @"RightLittle";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:13];
  v1 = _MergedGlobals_9_6;
  _MergedGlobals_9_6 = v0;
}

@end