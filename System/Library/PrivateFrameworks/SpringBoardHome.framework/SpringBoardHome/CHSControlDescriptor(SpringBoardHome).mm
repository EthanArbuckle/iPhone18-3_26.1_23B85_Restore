@interface CHSControlDescriptor(SpringBoardHome)
- (id)sbh_appName;
- (id)sbh_galleryItemIdentifier;
@end

@implementation CHSControlDescriptor(SpringBoardHome)

- (id)sbh_appName
{
  extensionIdentity = [self extensionIdentity];
  extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

  v3 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(extensionBundleIdentifier);
  localizedName = [v3 localizedName];
  v5 = localizedName;
  if (localizedName)
  {
    localizedShortName = localizedName;
  }

  else
  {
    localizedShortName = [v3 localizedShortName];
  }

  v7 = localizedShortName;

  return v7;
}

- (id)sbh_galleryItemIdentifier
{
  v2 = objc_getAssociatedObject(self, &SBHControlDescriptorGalleryItemIdentifierKey);
  if (!v2)
  {
    extensionIdentity = [self extensionIdentity];
    v4 = MEMORY[0x1E696AEC0];
    extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];
    kind = [self kind];
    containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
    preferredControlSize = [self preferredControlSize];
    displayName = [self displayName];
    widgetDescription = [self widgetDescription];
    intentType = [self intentType];
    v2 = [v4 stringWithFormat:@"CONTROL_DESCRIPTOR:%@-%@-%@-%lu-%@-%@-%@", extensionBundleIdentifier, kind, containerBundleIdentifier, preferredControlSize, displayName, widgetDescription, intentType];

    objc_setAssociatedObject(self, &SBHControlDescriptorGalleryItemIdentifierKey, v2, 1);
  }

  return v2;
}

@end