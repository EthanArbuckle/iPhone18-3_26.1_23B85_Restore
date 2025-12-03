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
  widget = [self widget];
  v3 = [v1 numberWithInteger:{objc_msgSend(widget, "family")}];

  return v3;
}

- (id)complicationExtensionBundleIdentifier
{
  widget = [self widget];
  extensionBundleIdentifier = [widget extensionBundleIdentifier];

  return extensionBundleIdentifier;
}

- (id)complicationContainingBundleIdentifier
{
  widget = [self widget];
  containerBundleIdentifier = [widget containerBundleIdentifier];

  return containerBundleIdentifier;
}

- (id)complicationWidgetKind
{
  widget = [self widget];
  kind = [widget kind];

  return kind;
}

- (id)complicationIntent
{
  widget = [self widget];
  intent = [widget intent];

  return intent;
}

@end