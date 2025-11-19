@interface ATXComplication(PRSAdditions)
- (PRSPosterGallerySuggestedComplication)posterBoardRepresentation;
- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions;
@end

@implementation ATXComplication(PRSAdditions)

- (uint64_t)initWithPosterBoardRepresentation:()PRSAdditions
{
  v4 = a3;
  v5 = [v4 extensionBundleIdentifier];
  v6 = [v4 kind];
  v7 = [v4 containerBundleIdentifier];
  v8 = [v4 widgetFamily];
  v9 = [v4 intent];
  v10 = [v4 source];

  if ((v10 - 1) < 6)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 initWithExtensionBundleIdentifier:v5 kind:v6 containerBundleIdentifier:v7 widgetFamily:v8 intent:v9 source:v11];

  return v12;
}

- (PRSPosterGallerySuggestedComplication)posterBoardRepresentation
{
  v1 = [[PRSPosterGallerySuggestedComplication alloc] initWithProactiveRepresentation:a1];

  return v1;
}

@end