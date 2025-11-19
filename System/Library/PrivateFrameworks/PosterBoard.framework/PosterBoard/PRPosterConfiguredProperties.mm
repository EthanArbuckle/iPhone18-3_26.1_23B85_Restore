@interface PRPosterConfiguredProperties
@end

@implementation PRPosterConfiguredProperties

id __81__PRPosterConfiguredProperties_PBFAdditions__pbf_configuredPropertiesForPreview___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSWidgetIdentifierForPreviewAndComplicationLookupInfo(*(a1 + 32), v3);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 suggestedComplication];
    v7 = [v6 proactiveRepresentation];
    [v5 setObject:v7 forKey:v4];
  }

  v8 = [MEMORY[0x277D3EA28] pbf_PRSWidgetFromComplicationLookupInfo:v3 uniqueIdentifier:v4 intent:0];

  return v8;
}

id __81__PRPosterConfiguredProperties_PBFAdditions__pbf_configuredPropertiesForPreview___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSWidgetIdentifierForPreviewAndComplicationLookupInfo(*(a1 + 32), v3);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [v3 suggestedComplication];
    v7 = [v6 proactiveRepresentation];
    [v5 setObject:v7 forKey:v4];
  }

  v8 = [MEMORY[0x277D3EA28] pbf_PRSWidgetFromComplicationLookupInfo:v3 uniqueIdentifier:v4 intent:0];

  return v8;
}

@end