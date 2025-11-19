@interface PRComplicationDescriptor(PBFComplicationLookupInfo)
- (id)complicationContainingBundleIdentifier;
- (id)complicationExtensionBundleIdentifier;
- (id)complicationIntent;
- (id)complicationWidgetFamily;
- (id)complicationWidgetKind;
@end

@implementation PRComplicationDescriptor(PBFComplicationLookupInfo)

- (id)complicationWidgetFamily
{
  v1 = MEMORY[0x277CCABB0];
  v2 = [a1 widget];
  v3 = [v1 numberWithInteger:{objc_msgSend(v2, "family")}];

  return v3;
}

- (id)complicationExtensionBundleIdentifier
{
  v1 = [a1 widget];
  v2 = [v1 extensionBundleIdentifier];

  return v2;
}

- (id)complicationContainingBundleIdentifier
{
  v1 = [a1 widget];
  v2 = [v1 containerBundleIdentifier];

  return v2;
}

- (id)complicationWidgetKind
{
  v1 = [a1 widget];
  v2 = [v1 kind];

  return v2;
}

- (id)complicationIntent
{
  v1 = [a1 widget];
  v2 = [v1 intent];

  return v2;
}

@end