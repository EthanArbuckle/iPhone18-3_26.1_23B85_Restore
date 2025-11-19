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
    v13 = [v11 complicationWidgetKind];
    v14 = [v11 complicationExtensionBundleIdentifier];
    v15 = [v11 complicationContainingBundleIdentifier];
    v16 = [v11 complicationWidgetFamily];

    v5 = [v12 initWithUniqueIdentifier:v10 kind:v13 extensionBundleIdentifier:v14 containerBundleIdentifier:v15 family:objc_msgSend(v16 intent:{"integerValue"), v9}];
  }

  return v5;
}

- (id)pbf_complicationLookupInfo
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "family")}];
  v3 = [a1 extensionBundleIdentifier];
  v4 = [a1 containerBundleIdentifier];
  v5 = [a1 kind];
  v6 = [a1 intent];
  v7 = [PBFGenericComplicationLookupInfo complicationLookupForWidgetFamily:v2 extensionBundleIdentifier:v3 containingBundleIdentifier:v4 kind:v5 intent:v6 suggestedComplication:0];

  return v7;
}

@end