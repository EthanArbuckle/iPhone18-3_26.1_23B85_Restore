@interface UIImage(ICQUIAdditions)
+ (id)icqBundleImageNamed:()ICQUIAdditions;
+ (id)imageForTableUIWithType:()ICQUIAdditions;
+ (id)imageWithType:()ICQUIAdditions size:;
@end

@implementation UIImage(ICQUIAdditions)

+ (id)icqBundleImageNamed:()ICQUIAdditions
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:v4 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

+ (id)imageForTableUIWithType:()ICQUIAdditions
{
  v3 = MEMORY[0x277D1B1A8];
  v4 = a3;
  v5 = [[v3 alloc] initWithType:v4];

  v6 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v7 = [v5 prepareImageForDescriptor:v6];
  v8 = MEMORY[0x277D755B8];
  cGImage = [v7 CGImage];
  [v7 scale];
  v10 = [v8 imageWithCGImage:cGImage scale:0 orientation:?];

  return v10;
}

+ (id)imageWithType:()ICQUIAdditions size:
{
  v5 = MEMORY[0x277D1B1A8];
  v6 = a4;
  v7 = [[v5 alloc] initWithType:v6];

  v8 = objc_alloc(MEMORY[0x277D1B1C8]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v11 = [v8 initWithSize:self scale:{self, v10 * 3.0}];

  v12 = [v7 prepareImageForDescriptor:v11];
  v13 = MEMORY[0x277D755B8];
  cGImage = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:cGImage scale:0 orientation:?];

  return v15;
}

@end