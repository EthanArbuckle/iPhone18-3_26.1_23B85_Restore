@interface UIImage(WFDrawing)
+ (id)wf_disclosureImage;
@end

@implementation UIImage(WFDrawing)

+ (id)wf_disclosureImage
{
  v0 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v1 = [v0 fontDescriptorWithSymbolicTraits:2];

  v2 = [MEMORY[0x277D74300] fontWithDescriptor:v1 size:0.0];
  v3 = [MEMORY[0x277D755D0] configurationWithFont:v2 scale:1];
  v4 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward"];
  v5 = [v4 imageWithConfiguration:v3];

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;
  v13.width = 11.0;
  v13.height = 14.5;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v8);

  [v5 drawInRect:{0.0, 0.0, 11.0, 14.5}];
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

@end