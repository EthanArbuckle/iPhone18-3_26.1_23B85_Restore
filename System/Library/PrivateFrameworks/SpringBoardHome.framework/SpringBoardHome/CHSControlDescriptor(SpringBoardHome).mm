@interface CHSControlDescriptor(SpringBoardHome)
- (id)sbh_appName;
- (id)sbh_galleryItemIdentifier;
@end

@implementation CHSControlDescriptor(SpringBoardHome)

- (id)sbh_appName
{
  v1 = [a1 extensionIdentity];
  v2 = [v1 extensionBundleIdentifier];

  v3 = SBHContainingBundleRecordForWidgetWithBundleIdentifier(v2);
  v4 = [v3 localizedName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 localizedShortName];
  }

  v7 = v6;

  return v7;
}

- (id)sbh_galleryItemIdentifier
{
  v2 = objc_getAssociatedObject(a1, &SBHControlDescriptorGalleryItemIdentifierKey);
  if (!v2)
  {
    v3 = [a1 extensionIdentity];
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 extensionBundleIdentifier];
    v6 = [a1 kind];
    v7 = [v3 containerBundleIdentifier];
    v8 = [a1 preferredControlSize];
    v9 = [a1 displayName];
    v10 = [a1 widgetDescription];
    v11 = [a1 intentType];
    v2 = [v4 stringWithFormat:@"CONTROL_DESCRIPTOR:%@-%@-%@-%lu-%@-%@-%@", v5, v6, v7, v8, v9, v10, v11];

    objc_setAssociatedObject(a1, &SBHControlDescriptorGalleryItemIdentifierKey, v2, 1);
  }

  return v2;
}

@end