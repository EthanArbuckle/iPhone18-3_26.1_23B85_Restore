@interface PRPosterConfiguredProperties(PBFAdditions)
+ (id)pbf_configuredPropertiesForPreview:()PBFAdditions;
@end

@implementation PRPosterConfiguredProperties(PBFAdditions)

+ (id)pbf_configuredPropertiesForPreview:()PBFAdditions
{
  v3 = a3;
  v44 = [v3 titleStyleConfiguration];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 suggestedComplications];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __81__PRPosterConfiguredProperties_PBFAdditions__pbf_configuredPropertiesForPreview___block_invoke;
  v48[3] = &unk_2782C7C00;
  v6 = v3;
  v49 = v6;
  v7 = v4;
  v50 = v7;
  v8 = [v5 bs_mapNoNulls:v48];

  v9 = [v6 suggestedLandscapeComplications];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __81__PRPosterConfiguredProperties_PBFAdditions__pbf_configuredPropertiesForPreview___block_invoke_2;
  v45[3] = &unk_2782C7C00;
  v10 = v6;
  v46 = v10;
  v11 = v7;
  v47 = v11;
  v12 = [v9 bs_mapNoNulls:v45];

  v13 = [v10 subtitleComplication];
  v14 = PRSWidgetIdentifierForPreviewAndComplicationLookupInfo(v10, v13);

  if (v14)
  {
    v15 = [v10 subtitleComplication];
    v16 = [v15 suggestedComplication];
    v17 = [v16 proactiveRepresentation];
    [v11 setObject:v17 forKey:v14];
  }

  v18 = MEMORY[0x277D3EA28];
  v19 = [v10 subtitleComplication];
  v20 = [v18 pbf_PRSWidgetFromComplicationLookupInfo:v19 uniqueIdentifier:v14 intent:0];

  v21 = [v10 complicationsUseBottomLayout];
  v39 = v20;
  v42 = v12;
  v40 = [objc_alloc(MEMORY[0x277D3ED48]) initWithInlineComplication:v20 sidebarComplicationIconLayout:0 sidebarComplications:v12 complicationIconLayout:0 complications:v8 complicationsUseBottomLayout:v21];
  v22 = [v10 homeScreenConfiguration];
  v23 = [v10 focusConfiguration];
  v24 = [v10 renderingConfiguration];
  v25 = v24;
  v43 = v8;
  v41 = v14;
  v26 = v11;
  if (v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x277D3EDF8]);
  }

  v28 = v27;

  v29 = objc_alloc(MEMORY[0x277D3EE20]);
  v30 = [v10 galleryOptions];
  v31 = [v30 suggestedGalleryItem];
  v32 = [MEMORY[0x277CBEAA8] date];
  v33 = [v29 initWithSuggestedGalleryItem:v31 suggestedComplicationsByIdentifier:v26 lastModifiedDate:v32];

  v34 = objc_alloc(MEMORY[0x277D3EDD0]);
  v35 = [v10 displayNameLocalizationKey];
  v36 = [v34 initWithDisplayNameLocalizationKey:v35];

  v37 = [objc_alloc(MEMORY[0x277D3ED60]) initWithTitleStyleConfiguration:v44 focusConfiguration:v23 complicationLayout:v40 renderingConfiguration:v28 homeScreenConfiguration:v22 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:v33 otherMetadata:v36 userInfo:0];

  return v37;
}

@end