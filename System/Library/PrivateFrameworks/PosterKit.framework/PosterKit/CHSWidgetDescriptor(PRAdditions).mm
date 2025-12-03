@interface CHSWidgetDescriptor(PRAdditions)
- (uint64_t)pr_shouldDisplayInGallery;
@end

@implementation CHSWidgetDescriptor(PRAdditions)

- (uint64_t)pr_shouldDisplayInGallery
{
  v2 = objc_alloc_init(PRChronoDefaultsDomain);
  if (([(PRChronoDefaultsDomain *)v2 shouldShowInternalWidgets]& 1) != 0)
  {
    v3 = 1;
  }

  else if ([self pr_isVisibilityWidgetDefined:{objc_msgSend(self, "widgetVisibility")}])
  {
    v4 = objc_alloc(MEMORY[0x1E695E000]);
    extensionBundleIdentifier = [self extensionBundleIdentifier];
    v6 = [v4 initWithSuiteName:extensionBundleIdentifier];

    v7 = *MEMORY[0x1E6994210];
    v8 = [v6 objectForKey:*MEMORY[0x1E6994210]];

    if (v8)
    {
      pr_isVisibleByDefault = [v6 BOOLForKey:v7];
    }

    else
    {
      pr_isVisibleByDefault = [self pr_isVisibleByDefault];
    }

    v3 = pr_isVisibleByDefault;
  }

  else
  {
    v3 = [self isInternal] ^ 1;
  }

  return v3;
}

@end