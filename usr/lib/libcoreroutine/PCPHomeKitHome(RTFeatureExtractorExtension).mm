@interface PCPHomeKitHome(RTFeatureExtractorExtension)
- (id)initWithHomeKitHome:()RTFeatureExtractorExtension;
@end

@implementation PCPHomeKitHome(RTFeatureExtractorExtension)

- (id)initWithHomeKitHome:()RTFeatureExtractorExtension
{
  if (a3)
  {
    v4 = MEMORY[0x277D3F868];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    v7 = objc_alloc(MEMORY[0x277CBEA90]);
    uniqueIdentifier = [v5 uniqueIdentifier];
    v9 = [v7 initWithUUID:uniqueIdentifier];
    [v6 setIdentifier:v9];

    v10 = objc_alloc(MEMORY[0x277D3F888]);
    location = [v5 location];
    v12 = [v10 initWithCLLocation:location];
    [v6 setLocation:v12];

    isPrimary = [v5 isPrimary];
    [v6 setPrimary:isPrimary];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end