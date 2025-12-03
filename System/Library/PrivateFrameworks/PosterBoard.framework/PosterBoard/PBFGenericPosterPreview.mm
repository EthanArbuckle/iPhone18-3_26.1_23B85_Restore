@interface PBFGenericPosterPreview
+ (id)posterPreviewForConfiguration:(id)configuration;
+ (id)posterPreviewForDescriptor:(id)descriptor;
+ (id)posterPreviewForPath:(id)path;
+ (id)posterPreviewWithUniqueIdentifier:(id)identifier displayNameLocalizationKey:(id)key galleryLocalizedTitle:(id)title galleryLocalizedDescription:(id)description posterDescriptorLookupInfo:(id)info titleStyleConfiguration:(id)configuration focusConfiguration:(id)focusConfiguration subtitleComplication:(id)self0 suggestedComplications:(id)self1 suggestedLandscapeComplications:(id)self2 complicationLayoutType:(id)self3 complicationsUseBottomLayout:(BOOL)self4 renderingConfiguration:(id)self5 homeScreenConfiguration:(id)self6 previewType:(id)self7 galleryOptions:(id)self8;
+ (id)testPosterPreviewWithLocalizedTitle:(id)title description:(id)description;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)galleryDisplayStyle;
- (unint64_t)hash;
- (unint64_t)presentationStyle;
- (void)_hydrateGalleryOptions;
@end

@implementation PBFGenericPosterPreview

+ (id)posterPreviewWithUniqueIdentifier:(id)identifier displayNameLocalizationKey:(id)key galleryLocalizedTitle:(id)title galleryLocalizedDescription:(id)description posterDescriptorLookupInfo:(id)info titleStyleConfiguration:(id)configuration focusConfiguration:(id)focusConfiguration subtitleComplication:(id)self0 suggestedComplications:(id)self1 suggestedLandscapeComplications:(id)self2 complicationLayoutType:(id)self3 complicationsUseBottomLayout:(BOOL)self4 renderingConfiguration:(id)self5 homeScreenConfiguration:(id)self6 previewType:(id)self7 galleryOptions:(id)self8
{
  identifierCopy = identifier;
  keyCopy = key;
  titleCopy = title;
  descriptionCopy = description;
  infoCopy = info;
  configurationCopy = configuration;
  focusConfigurationCopy = focusConfiguration;
  complicationCopy = complication;
  complicationsCopy = complications;
  landscapeComplicationsCopy = landscapeComplications;
  typeCopy = type;
  renderingConfigurationCopy = renderingConfiguration;
  screenConfigurationCopy = screenConfiguration;
  previewTypeCopy = previewType;
  optionsCopy = options;
  if (identifierCopy)
  {
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[PBFGenericPosterPreview posterPreviewWithUniqueIdentifier:displayNameLocalizationKey:galleryLocalizedTitle:galleryLocalizedDescription:posterDescriptorLookupInfo:titleStyleConfiguration:focusConfiguration:subtitleComplication:suggestedComplications:suggestedLandscapeComplications:complicationLayoutType:complicationsUseBottomLayout:renderingConfiguration:homeScreenConfiguration:previewType:galleryOptions:];
    if (infoCopy)
    {
      goto LABEL_3;
    }
  }

  +[PBFGenericPosterPreview posterPreviewWithUniqueIdentifier:displayNameLocalizationKey:galleryLocalizedTitle:galleryLocalizedDescription:posterDescriptorLookupInfo:titleStyleConfiguration:focusConfiguration:subtitleComplication:suggestedComplications:suggestedLandscapeComplications:complicationLayoutType:complicationsUseBottomLayout:renderingConfiguration:homeScreenConfiguration:previewType:galleryOptions:];
LABEL_3:
  v30 = objc_alloc_init(PBFGenericPosterPreview);
  previewUniqueIdentifier = v30->_previewUniqueIdentifier;
  v30->_previewUniqueIdentifier = identifierCopy;
  v62 = identifierCopy;

  v32 = [keyCopy copy];
  displayNameLocalizationKey = v30->_displayNameLocalizationKey;
  v30->_displayNameLocalizationKey = v32;

  v34 = [titleCopy copy];
  galleryLocalizedTitle = v30->_galleryLocalizedTitle;
  v30->_galleryLocalizedTitle = v34;

  v36 = [descriptionCopy copy];
  galleryLocalizedDescription = v30->_galleryLocalizedDescription;
  v30->_galleryLocalizedDescription = v36;

  posterDescriptorLookupInfo = v30->_posterDescriptorLookupInfo;
  v30->_posterDescriptorLookupInfo = infoCopy;
  v61 = infoCopy;

  v39 = [configurationCopy copy];
  titleStyleConfiguration = v30->_titleStyleConfiguration;
  v30->_titleStyleConfiguration = v39;

  v41 = [focusConfigurationCopy copy];
  focusConfiguration = v30->_focusConfiguration;
  v30->_focusConfiguration = v41;

  subtitleComplication = v30->_subtitleComplication;
  v30->_subtitleComplication = complicationCopy;
  v60 = complicationCopy;

  suggestedComplications = v30->_suggestedComplications;
  v30->_suggestedComplications = complicationsCopy;
  v45 = complicationsCopy;

  suggestedLandscapeComplications = v30->_suggestedLandscapeComplications;
  v30->_suggestedLandscapeComplications = landscapeComplicationsCopy;
  v47 = landscapeComplicationsCopy;

  complicationLayoutType = v30->_complicationLayoutType;
  v30->_complicationLayoutType = typeCopy;
  v49 = typeCopy;

  v30->_complicationsUseBottomLayout = layout;
  v50 = [renderingConfigurationCopy copy];
  renderingConfiguration = v30->_renderingConfiguration;
  v30->_renderingConfiguration = v50;

  homeScreenConfiguration = v30->_homeScreenConfiguration;
  v30->_homeScreenConfiguration = screenConfigurationCopy;
  v53 = screenConfigurationCopy;

  v54 = [previewTypeCopy copy];
  v55 = v54;
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = PBFPreviewTypeDefault;
  }

  objc_storeStrong(&v30->_type, v56);

  galleryOptions = v30->_galleryOptions;
  v30->_galleryOptions = optionsCopy;

  v58.f64[0] = NAN;
  v58.f64[1] = NAN;
  *&v30->_cachedGalleryPresentationStyle = vnegq_f64(v58);

  return v30;
}

+ (id)testPosterPreviewWithLocalizedTitle:(id)title description:(id)description
{
  descriptionCopy = description;
  titleCopy = title;
  v7 = objc_opt_class();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v10 = +[PBFGenericPosterDescriptorLookupInfo nullPosterDescriptorLookupInfo];
  LOBYTE(v13) = 0;
  v11 = [v7 posterPreviewWithUniqueIdentifier:uUIDString displayNameLocalizationKey:0 galleryLocalizedTitle:titleCopy galleryLocalizedDescription:descriptionCopy posterDescriptorLookupInfo:v10 titleStyleConfiguration:0 focusConfiguration:0 subtitleComplication:0 suggestedComplications:0 suggestedLandscapeComplications:0 complicationLayoutType:PBFComplicationLayoutTypeEmpty complicationsUseBottomLayout:v13 renderingConfiguration:0 homeScreenConfiguration:0 previewType:PBFPreviewTypeDefault galleryOptions:0];

  return v11;
}

+ (id)posterPreviewForDescriptor:(id)descriptor
{
  _path = [descriptor _path];
  v5 = [self posterPreviewForPath:_path];

  return v5;
}

+ (id)posterPreviewForConfiguration:(id)configuration
{
  _path = [configuration _path];
  v5 = [self posterPreviewForPath:_path];

  return v5;
}

+ (id)posterPreviewForPath:(id)path
{
  if (path)
  {
    v3 = MEMORY[0x277D3EDE0];
    pathCopy = path;
    v5 = [v3 modelObjectCacheForPath:pathCopy];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    otherMetadata = [v5 otherMetadata];
    displayNameLocalizationKey = [otherMetadata displayNameLocalizationKey];

    v8 = [PBFGenericPosterDescriptorLookupInfo alloc];
    v9 = MEMORY[0x277D3EB80];
    serverIdentity = [pathCopy serverIdentity];
    provider = [serverIdentity provider];
    v12 = [v9 extensionWithBundleIdentifier:provider];
    v34 = [(PBFGenericPosterDescriptorLookupInfo *)v8 _initWithPath:pathCopy extension:v12];

    v13 = PBFComplicationLayoutTypeEmpty;
    v14 = v5;
    complicationLayout = [v5 complicationLayout];
    LODWORD(serverIdentity) = [complicationLayout hasComplications];

    if (serverIdentity)
    {
      complicationLayout2 = [v5 complicationLayout];
      inlineComplication = [complicationLayout2 inlineComplication];
      if (inlineComplication)
      {
        v18 = objc_alloc(MEMORY[0x277D3EC78]);
        inlineComplication2 = [complicationLayout2 inlineComplication];
        v20 = [v18 initWithPRSWidget:inlineComplication2];
      }

      else
      {
        v20 = 0;
      }

      complications = [complicationLayout2 complications];
      v24 = [complications bs_mapNoNulls:&__block_literal_global_159];

      sidebarComplications = [complicationLayout2 sidebarComplications];
      v23 = [sidebarComplications bs_mapNoNulls:&__block_literal_global_161];

      complicationsUseBottomLayout = [complicationLayout2 complicationsUseBottomLayout];
    }

    else
    {
      complicationsUseBottomLayout = 0;
      v23 = 0;
      v24 = 0;
      v20 = 0;
    }

    v33 = v5;
    focusConfiguration = [v5 focusConfiguration];
    titleStyleConfiguration = [v5 titleStyleConfiguration];
    renderingConfiguration = [v14 renderingConfiguration];
    homeScreenConfiguration = [v14 homeScreenConfiguration];
    LOBYTE(v32) = complicationsUseBottomLayout;
    v21 = [self posterPreviewWithUniqueIdentifier:uUIDString displayNameLocalizationKey:displayNameLocalizationKey galleryLocalizedTitle:0 galleryLocalizedDescription:0 posterDescriptorLookupInfo:v34 titleStyleConfiguration:titleStyleConfiguration focusConfiguration:focusConfiguration subtitleComplication:v20 suggestedComplications:v24 suggestedLandscapeComplications:v23 complicationLayoutType:v13 complicationsUseBottomLayout:v32 renderingConfiguration:renderingConfiguration homeScreenConfiguration:homeScreenConfiguration previewType:PBFPreviewTypeDefault galleryOptions:0];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id __48__PBFGenericPosterPreview_posterPreviewForPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3EC78];
  v3 = a2;
  v4 = [[v2 alloc] initWithPRSWidget:v3];

  return v4;
}

id __48__PBFGenericPosterPreview_posterPreviewForPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D3EC78];
  v3 = a2;
  v4 = [[v2 alloc] initWithPRSWidget:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  LOBYTE(v6) = self->_complicationsUseBottomLayout;
  result = [v4 posterPreviewWithUniqueIdentifier:self->_previewUniqueIdentifier displayNameLocalizationKey:self->_displayNameLocalizationKey galleryLocalizedTitle:self->_galleryLocalizedTitle galleryLocalizedDescription:self->_galleryLocalizedDescription posterDescriptorLookupInfo:self->_posterDescriptorLookupInfo titleStyleConfiguration:self->_titleStyleConfiguration focusConfiguration:self->_focusConfiguration subtitleComplication:self->_subtitleComplication suggestedComplications:self->_suggestedComplications suggestedLandscapeComplications:self->_suggestedLandscapeComplications complicationLayoutType:self->_complicationLayoutType complicationsUseBottomLayout:v6 renderingConfiguration:self->_renderingConfiguration homeScreenConfiguration:self->_homeScreenConfiguration previewType:self->_type galleryOptions:self->_galleryOptions];
  *(result + 1) = self->_hash;
  return result;
}

- (unint64_t)hash
{
  hash = self->_hash;
  if (!hash)
  {
    builder = [MEMORY[0x277CF0C40] builder];
    v5 = [builder appendString:self->_previewUniqueIdentifier];
    v6 = [builder appendString:self->_displayNameLocalizationKey];
    v7 = [builder appendString:self->_galleryLocalizedTitle];
    v8 = [builder appendString:self->_galleryLocalizedDescription];
    v9 = [builder appendObject:self->_posterDescriptorLookupInfo];
    v10 = [builder appendObject:self->_titleStyleConfiguration];
    v11 = [builder appendObject:self->_subtitleComplication];
    v12 = [builder appendObject:self->_focusConfiguration];
    v13 = [builder appendObject:self->_suggestedComplications];
    v14 = [builder appendObject:self->_suggestedLandscapeComplications];
    v15 = [builder appendObject:self->_complicationLayoutType];
    v16 = [builder appendBool:self->_complicationsUseBottomLayout];
    v17 = [builder appendObject:self->_renderingConfiguration];
    v18 = [builder appendObject:self->_homeScreenConfiguration];
    hash = [builder hash];
    self->_hash = hash;
  }

  return hash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self || (v6 = [(PBFGenericPosterPreview *)equalCopy hash], v6 == [(PBFGenericPosterPreview *)self hash]))
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && self->_complicationsUseBottomLayout == v5[32] && BSEqualObjects() && BSEqualObjects())
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  posterDescriptorLookupInfo = [(PBFGenericPosterPreview *)self posterDescriptorLookupInfo];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];
  v6 = [v3 appendObject:posterDescriptorPath withName:@"posterDescriptorPath"];

  build = [v3 build];

  return build;
}

- (unint64_t)presentationStyle
{
  type = [(PBFGenericPosterPreview *)self type];
  v4 = [type isEqualToString:PBFPreviewTypeHero];

  if (v4)
  {
    return 1;
  }

  result = self->_cachedGalleryPresentationStyle;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PBFGenericPosterPreview *)self _hydrateGalleryOptions];
    return self->_cachedGalleryPresentationStyle;
  }

  return result;
}

- (unint64_t)galleryDisplayStyle
{
  if (self->_cachedGalleryPresentationStyle == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(PBFGenericPosterPreview *)self _hydrateGalleryOptions];
  }

  return self->_cachedDisplayStyle;
}

- (void)_hydrateGalleryOptions
{
  posterDescriptorLookupInfo = [(PBFGenericPosterPreview *)self posterDescriptorLookupInfo];
  posterDescriptorPath = [posterDescriptorLookupInfo posterDescriptorPath];

  v4 = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:posterDescriptorPath];
  galleryOptions = [v4 galleryOptions];
  v6 = galleryOptions;
  if (galleryOptions)
  {
    v7 = galleryOptions;
  }

  else
  {
    v7 = [MEMORY[0x277D3EDE8] loadPosterDescriptorGalleryOptionsForPath:posterDescriptorPath error:0];
  }

  v8 = v7;

  type = [(PBFGenericPosterPreview *)self type];
  v10 = [type isEqualToString:PBFPreviewTypeHero];

  if (v8 || (v10 & 1) == 0)
  {
    presentationStyle = [v8 presentationStyle];
    displayStyle = [v8 displayStyle];
  }

  else
  {
    presentationStyle = 0;
    displayStyle = 0;
  }

  v13 = PUIFeatureEnabled();
  if ((displayStyle & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = displayStyle;
  }

  if (v13)
  {
    v14 = displayStyle;
  }

  self->_cachedGalleryPresentationStyle = presentationStyle;
  self->_cachedDisplayStyle = v14;
}

+ (void)posterPreviewWithUniqueIdentifier:displayNameLocalizationKey:galleryLocalizedTitle:galleryLocalizedDescription:posterDescriptorLookupInfo:titleStyleConfiguration:focusConfiguration:subtitleComplication:suggestedComplications:suggestedLandscapeComplications:complicationLayoutType:complicationsUseBottomLayout:renderingConfiguration:homeScreenConfiguration:previewType:galleryOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"previewUniqueIdentifier" object:? file:? lineNumber:? description:?];
}

+ (void)posterPreviewWithUniqueIdentifier:displayNameLocalizationKey:galleryLocalizedTitle:galleryLocalizedDescription:posterDescriptorLookupInfo:titleStyleConfiguration:focusConfiguration:subtitleComplication:suggestedComplications:suggestedLandscapeComplications:complicationLayoutType:complicationsUseBottomLayout:renderingConfiguration:homeScreenConfiguration:previewType:galleryOptions:.cold.2()
{
  OUTLINED_FUNCTION_1_5();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_6();
  [v0 handleFailureInMethod:@"posterLookupInfo" object:? file:? lineNumber:? description:?];
}

@end