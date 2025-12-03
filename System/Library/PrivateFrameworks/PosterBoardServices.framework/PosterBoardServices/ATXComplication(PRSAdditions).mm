@interface ATXComplication(PRSAdditions)
- (PRSPosterGallerySuggestedComplication)posterBoardRepresentation;
- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXComplication(PRSAdditions)

- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  extensionBundleIdentifier = [v4 extensionBundleIdentifier];
  kind = [v4 kind];
  containerBundleIdentifier = [v4 containerBundleIdentifier];
  widgetFamily = [v4 widgetFamily];
  intent = [v4 intent];
  source = [v4 source];

  if ((source - 1) < 6)
  {
    v11 = source;
  }

  else
  {
    v11 = 0;
  }

  v12 = [self initWithExtensionBundleIdentifier:extensionBundleIdentifier kind:kind containerBundleIdentifier:containerBundleIdentifier widgetFamily:widgetFamily intent:intent source:v11];

  return v12;
}

- (PRSPosterGallerySuggestedComplication)posterBoardRepresentation
{
  v1 = [[PRSPosterGallerySuggestedComplication alloc] initWithProactiveRepresentation:self];

  return v1;
}

@end