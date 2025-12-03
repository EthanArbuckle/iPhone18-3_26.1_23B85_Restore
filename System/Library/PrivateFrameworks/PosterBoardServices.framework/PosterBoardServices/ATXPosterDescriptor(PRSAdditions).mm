@interface ATXPosterDescriptor(PRSAdditions)
- (PRSPosterGalleryItemPrototype)posterBoardRepresentation;
- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXPosterDescriptor(PRSAdditions)

- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  identifier = [v4 identifier];
  extensionBundleIdentifier = [v4 extensionBundleIdentifier];
  containerBundleIdentifier = [v4 containerBundleIdentifier];
  galleryOptions = [v4 galleryOptions];

  proactiveRepresentation = [galleryOptions proactiveRepresentation];
  v10 = [self initWithIdentifier:identifier extensionBundleIdentifier:extensionBundleIdentifier containerBundleIdentifier:containerBundleIdentifier galleryOptions:proactiveRepresentation];

  return v10;
}

- (PRSPosterGalleryItemPrototype)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryItemPrototype alloc] initWithProactiveRepresentation:self];

  return v1;
}

@end