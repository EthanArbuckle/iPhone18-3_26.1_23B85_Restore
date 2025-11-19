@interface OZFxPlugHostPropertiesAPI
+ (id)sharedHostPropertiesAPI;
- (id)hostProperties;
@end

@implementation OZFxPlugHostPropertiesAPI

+ (id)sharedHostPropertiesAPI
{
  result = gHostProps;
  if (!gHostProps)
  {
    result = objc_alloc_init(OZFxPlugHostPropertiesAPI);
    gHostProps = result;
  }

  return result;
}

- (id)hostProperties
{
  v2 = *(theApp + 81);
  v14 = MEMORY[0x277CBEAC0];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v2];
  return [v14 dictionaryWithObjectsAndKeys:{v13, @"FormatsFloatRGBABitmapsAsARGB", v3, @"SupportsHiddenParameters", v4, @"SupportsDisabledParameters", v5, @"SupportsGroupParameters", v6, @"NotifiesParameterChangedForGenerators", v7, @"ParameterChangedUsableForAllParameters", v8, @"UpscalesFields", v9, @"UsingMotionRendering", v10, @"SupportsTemporalBitmaps", v11, @"TimeBase", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", 87064576), @"HostVersion", 0}];
}

@end