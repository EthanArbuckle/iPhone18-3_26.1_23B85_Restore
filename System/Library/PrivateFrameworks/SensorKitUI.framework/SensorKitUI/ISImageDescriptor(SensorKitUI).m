@interface ISImageDescriptor(SensorKitUI)
+ (id)skui_imageDescriptorForAuthorization;
@end

@implementation ISImageDescriptor(SensorKitUI)

+ (id)skui_imageDescriptorForAuthorization
{
  v0 = objc_alloc(MEMORY[0x277D1B1C8]);
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v2 = [v0 initWithSize:80.0 scale:{80.0, v1}];

  return v2;
}

@end