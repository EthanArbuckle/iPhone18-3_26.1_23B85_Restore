@interface NSBundle(TVMLKitAdditions)
- (id)tv_launchImage;
@end

@implementation NSBundle(TVMLKitAdditions)

- (id)tv_launchImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceIdiom:2];
  v4 = [v2 imageNamed:@"LaunchImage" inBundle:a1 compatibleWithTraitCollection:v3];

  return v4;
}

@end