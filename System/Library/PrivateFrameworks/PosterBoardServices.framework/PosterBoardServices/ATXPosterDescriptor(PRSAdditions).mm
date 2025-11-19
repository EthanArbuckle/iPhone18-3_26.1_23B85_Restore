@interface ATXPosterDescriptor(PRSAdditions)
- (PRSPosterGalleryItemPrototype)posterBoardRepresentation;
- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXPosterDescriptor(PRSAdditions)

- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 extensionBundleIdentifier];
  v7 = [v4 containerBundleIdentifier];
  v8 = [v4 galleryOptions];

  v9 = [v8 proactiveRepresentation];
  v10 = [a1 initWithIdentifier:v5 extensionBundleIdentifier:v6 containerBundleIdentifier:v7 galleryOptions:v9];

  return v10;
}

- (PRSPosterGalleryItemPrototype)posterBoardRepresentation
{
  v1 = [[PRSPosterGalleryItemPrototype alloc] initWithProactiveRepresentation:a1];

  return v1;
}

@end