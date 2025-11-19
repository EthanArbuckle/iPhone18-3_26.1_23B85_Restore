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

  else if ([a1 pr_isVisibilityWidgetDefined:{objc_msgSend(a1, "widgetVisibility")}])
  {
    v4 = objc_alloc(MEMORY[0x1E695E000]);
    v5 = [a1 extensionBundleIdentifier];
    v6 = [v4 initWithSuiteName:v5];

    v7 = *MEMORY[0x1E6994210];
    v8 = [v6 objectForKey:*MEMORY[0x1E6994210]];

    if (v8)
    {
      v9 = [v6 BOOLForKey:v7];
    }

    else
    {
      v9 = [a1 pr_isVisibleByDefault];
    }

    v3 = v9;
  }

  else
  {
    v3 = [a1 isInternal] ^ 1;
  }

  return v3;
}

@end