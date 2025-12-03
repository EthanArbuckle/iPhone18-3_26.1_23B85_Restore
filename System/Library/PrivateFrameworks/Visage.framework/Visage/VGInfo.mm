@interface VGInfo
- (VGInfo)init;
@end

@implementation VGInfo

- (VGInfo)init
{
  v16[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = VGInfo;
  v2 = [(VGInfo *)&v14 init];
  if (v2)
  {
    v15 = @"version";
    vg_bundle = [MEMORY[0x277CCA8D8] vg_bundle];
    infoDictionary = [vg_bundle infoDictionary];
    v5 = [infoDictionary valueForKey:@"CFBundleVersion"];
    v16[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    framework = v2->_framework;
    v2->_framework = v6;

    v8 = objc_opt_new();
    v9 = [v8 copy];
    models = v2->_models;
    v2->_models = v9;

    v11 = v2;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

@end