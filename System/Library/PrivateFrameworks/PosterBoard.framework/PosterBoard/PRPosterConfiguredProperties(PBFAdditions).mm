@interface PRPosterConfiguredProperties(PBFAdditions)
+ (id)pbf_configuredPropertiesForPreview:()PBFAdditions;
@end

@implementation PRPosterConfiguredProperties(PBFAdditions)

+ (id)pbf_configuredPropertiesForPreview:()PBFAdditions
{
  v3 = a3;
  titleStyleConfiguration = [v3 titleStyleConfiguration];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  suggestedComplications = [v3 suggestedComplications];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __81__PRPosterConfiguredProperties_PBFAdditions__pbf_configuredPropertiesForPreview___block_invoke;
  v48[3] = &unk_2782C7C00;
  v6 = v3;
  v49 = v6;
  v7 = v4;
  v50 = v7;
  v8 = [suggestedComplications bs_mapNoNulls:v48];

  suggestedLandscapeComplications = [v6 suggestedLandscapeComplications];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __81__PRPosterConfiguredProperties_PBFAdditions__pbf_configuredPropertiesForPreview___block_invoke_2;
  v45[3] = &unk_2782C7C00;
  v10 = v6;
  v46 = v10;
  v11 = v7;
  v47 = v11;
  v12 = [suggestedLandscapeComplications bs_mapNoNulls:v45];

  subtitleComplication = [v10 subtitleComplication];
  v14 = PRSWidgetIdentifierForPreviewAndComplicationLookupInfo(v10, subtitleComplication);

  if (v14)
  {
    subtitleComplication2 = [v10 subtitleComplication];
    suggestedComplication = [subtitleComplication2 suggestedComplication];
    proactiveRepresentation = [suggestedComplication proactiveRepresentation];
    [v11 setObject:proactiveRepresentation forKey:v14];
  }

  v18 = MEMORY[0x277D3EA28];
  subtitleComplication3 = [v10 subtitleComplication];
  v20 = [v18 pbf_PRSWidgetFromComplicationLookupInfo:subtitleComplication3 uniqueIdentifier:v14 intent:0];

  complicationsUseBottomLayout = [v10 complicationsUseBottomLayout];
  v39 = v20;
  v42 = v12;
  v40 = [objc_alloc(MEMORY[0x277D3ED48]) initWithInlineComplication:v20 sidebarComplicationIconLayout:0 sidebarComplications:v12 complicationIconLayout:0 complications:v8 complicationsUseBottomLayout:complicationsUseBottomLayout];
  homeScreenConfiguration = [v10 homeScreenConfiguration];
  focusConfiguration = [v10 focusConfiguration];
  renderingConfiguration = [v10 renderingConfiguration];
  v25 = renderingConfiguration;
  v43 = v8;
  v41 = v14;
  v26 = v11;
  if (renderingConfiguration)
  {
    v27 = renderingConfiguration;
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x277D3EDF8]);
  }

  v28 = v27;

  v29 = objc_alloc(MEMORY[0x277D3EE20]);
  galleryOptions = [v10 galleryOptions];
  suggestedGalleryItem = [galleryOptions suggestedGalleryItem];
  date = [MEMORY[0x277CBEAA8] date];
  v33 = [v29 initWithSuggestedGalleryItem:suggestedGalleryItem suggestedComplicationsByIdentifier:v26 lastModifiedDate:date];

  v34 = objc_alloc(MEMORY[0x277D3EDD0]);
  displayNameLocalizationKey = [v10 displayNameLocalizationKey];
  v36 = [v34 initWithDisplayNameLocalizationKey:displayNameLocalizationKey];

  v37 = [objc_alloc(MEMORY[0x277D3ED60]) initWithTitleStyleConfiguration:titleStyleConfiguration focusConfiguration:focusConfiguration complicationLayout:v40 renderingConfiguration:v28 homeScreenConfiguration:homeScreenConfiguration colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:v33 otherMetadata:v36 userInfo:0];

  return v37;
}

@end