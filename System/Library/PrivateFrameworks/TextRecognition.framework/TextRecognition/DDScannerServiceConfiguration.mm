@interface DDScannerServiceConfiguration
@end

@implementation DDScannerServiceConfiguration

void __58__DDScannerServiceConfiguration_CRDD___crConfigForLocale___block_invoke()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = qword_1ED95FDC8;
  qword_1ED95FDC8 = v0;

  v4[0] = @"ja-JP";
  v4[1] = @"ko-KR";
  v4[2] = @"th-TH";
  v4[3] = @"vi-VT";
  v4[4] = @"zh-Hans";
  v4[5] = @"zh-Hant";
  v4[6] = @"ar-SA";
  v4[7] = @"ars-SA";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
  v3 = qword_1ED95FDD0;
  qword_1ED95FDD0 = v2;
}

@end