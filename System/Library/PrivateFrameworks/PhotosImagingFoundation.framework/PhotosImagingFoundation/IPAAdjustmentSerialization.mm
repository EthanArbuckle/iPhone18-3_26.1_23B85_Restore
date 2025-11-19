@interface IPAAdjustmentSerialization
+ (void)initialize;
@end

@implementation IPAAdjustmentSerialization

+ (void)initialize
{
  v20[3] = *MEMORY[0x277D85DE8];
  if (!s_legacySerializerMap)
  {
    v2 = objc_opt_new();
    v19[0] = @"com.apple.photo";
    v17[0] = @"0.2";
    v17[1] = @"0.2.OSX";
    v18[0] = v2;
    v18[1] = v2;
    v17[2] = @"0.2.iOS";
    v17[3] = @"1.0.OSX";
    v18[2] = v2;
    v18[3] = v2;
    v17[4] = @"1.0.iOS";
    v17[5] = @"1";
    v18[4] = v2;
    v18[5] = v2;
    v17[6] = @"1.0";
    v17[7] = @"1.1";
    v18[6] = v2;
    v18[7] = v2;
    v17[8] = @"1.2";
    v17[9] = @"1.3";
    v18[8] = v2;
    v18[9] = v2;
    v17[10] = @"1.4";
    v17[11] = @"1.5";
    v18[10] = v2;
    v18[11] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:12];
    v20[0] = v3;
    v19[1] = @"com.apple.video";
    v15[0] = @"0.1";
    v4 = objc_opt_new();
    v15[1] = @"1.0";
    v16[0] = v4;
    v5 = objc_opt_new();
    v16[1] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v20[1] = v6;
    v19[2] = @"com.apple.video.slomo";
    v12 = @"1.1";
    v7 = objc_opt_new();
    v13 = @"1.0";
    v14[0] = v7;
    v8 = objc_opt_new();
    v14[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v12 count:2];
    v20[2] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:{3, v12, v13, v14[0]}];
    v11 = s_legacySerializerMap;
    s_legacySerializerMap = v10;
  }
}

@end