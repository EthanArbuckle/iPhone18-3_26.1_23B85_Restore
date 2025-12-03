@interface PRSWidget(PBFAdditions)
+ (id)pbf_PRSWidgetFromComplicationLookupInfo:()PBFAdditions uniqueIdentifier:intent:;
- (id)pbf_complicationLookupInfo;
@end

@implementation PRSWidget(PBFAdditions)

+ (id)pbf_PRSWidgetFromComplicationLookupInfo:()PBFAdditions uniqueIdentifier:intent:
{
  v5 = 0;
  if (a3 && a4)
  {
    v8 = MEMORY[0x277D3EA28];
    v9 = a5;
    v10 = a4;
    v11 = a3;
    v12 = [v8 alloc];
    complicationWidgetKind = [v11 complicationWidgetKind];
    complicationExtensionBundleIdentifier = [v11 complicationExtensionBundleIdentifier];
    complicationContainingBundleIdentifier = [v11 complicationContainingBundleIdentifier];
    complicationWidgetFamily = [v11 complicationWidgetFamily];

    v5 = [v12 initWithUniqueIdentifier:v10 kind:complicationWidgetKind extensionBundleIdentifier:complicationExtensionBundleIdentifier containerBundleIdentifier:complicationContainingBundleIdentifier family:objc_msgSend(complicationWidgetFamily intent:{"integerValue"), v9}];
  }

  return v5;
}

- (id)pbf_complicationLookupInfo
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "family")}];
  extensionBundleIdentifier = [self extensionBundleIdentifier];
  containerBundleIdentifier = [self containerBundleIdentifier];
  kind = [self kind];
  intent = [self intent];
  v7 = [PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:v2 extensionBundleIdentifier:extensionBundleIdentifier containingBundleIdentifier:containerBundleIdentifier kind:kind intent:intent suggestedComplication:0];

  return v7;
}

@end