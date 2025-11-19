@interface PBFGenericPosterPreview
+ (id)posterPreviewForConfiguration:(id)a3;
+ (id)posterPreviewForDescriptor:(id)a3;
+ (id)posterPreviewForPath:(id)a3;
+ (id)posterPreviewWithUniqueIdentifier:(id)a3 displayNameLocalizationKey:(id)a4 galleryLocalizedTitle:(id)a5 galleryLocalizedDescription:(id)a6 posterDescriptorLookupInfo:(id)a7 titleStyleConfiguration:(id)a8 focusConfiguration:(id)a9 subtitleComplication:(id)a10 suggestedComplications:(id)a11 suggestedLandscapeComplications:(id)a12 complicationLayoutType:(id)a13 complicationsUseBottomLayout:(BOOL)a14 renderingConfiguration:(id)a15 homeScreenConfiguration:(id)a16 previewType:(id)a17 galleryOptions:(id)a18;
+ (id)testPosterPreviewWithLocalizedTitle:(id)a3 description:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)galleryDisplayStyle;
- (unint64_t)hash;
- (unint64_t)presentationStyle;
- (void)_hydrateGalleryOptions;
@end

@implementation PBFGenericPosterPreview

+ (id)posterPreviewWithUniqueIdentifier:(id)a3 displayNameLocalizationKey:(id)a4 galleryLocalizedTitle:(id)a5 galleryLocalizedDescription:(id)a6 posterDescriptorLookupInfo:(id)a7 titleStyleConfiguration:(id)a8 focusConfiguration:(id)a9 subtitleComplication:(id)a10 suggestedComplications:(id)a11 suggestedLandscapeComplications:(id)a12 complicationLayoutType:(id)a13 complicationsUseBottomLayout:(BOOL)a14 renderingConfiguration:(id)a15 homeScreenConfiguration:(id)a16 previewType:(id)a17 galleryOptions:(id)a18
{
  v23 = a3;
  v70 = a4;
  v69 = a5;
  v68 = a6;
  v24 = a7;
  v67 = a8;
  v66 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v65 = a15;
  v29 = a16;
  v64 = a17;
  v63 = a18;
  if (v23)
  {
    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[PBFGenericPosterPreview posterPreviewWithUniqueIdentifier:displayNameLocalizationKey:galleryLocalizedTitle:galleryLocalizedDescription:posterDescriptorLookupInfo:titleStyleConfiguration:focusConfiguration:subtitleComplication:suggestedComplications:suggestedLandscapeComplications:complicationLayoutType:complicationsUseBottomLayout:renderingConfiguration:homeScreenConfiguration:previewType:galleryOptions:];
    if (v24)
    {
      goto LABEL_3;
    }
  }

  +[PBFGenericPosterPreview posterPreviewWithUniqueIdentifier:displayNameLocalizationKey:galleryLocalizedTitle:galleryLocalizedDescription:posterDescriptorLookupInfo:titleStyleConfiguration:focusConfiguration:subtitleComplication:suggestedComplications:suggestedLandscapeComplications:complicationLayoutType:complicationsUseBottomLayout:renderingConfiguration:homeScreenConfiguration:previewType:galleryOptions:];
LABEL_3:
  v30 = objc_alloc_init(PBFGenericPosterPreview);
  previewUniqueIdentifier = v30->_previewUniqueIdentifier;
  v30->_previewUniqueIdentifier = v23;
  v62 = v23;

  v32 = [v70 copy];
  displayNameLocalizationKey = v30->_displayNameLocalizationKey;
  v30->_displayNameLocalizationKey = v32;

  v34 = [v69 copy];
  galleryLocalizedTitle = v30->_galleryLocalizedTitle;
  v30->_galleryLocalizedTitle = v34;

  v36 = [v68 copy];
  galleryLocalizedDescription = v30->_galleryLocalizedDescription;
  v30->_galleryLocalizedDescription = v36;

  posterDescriptorLookupInfo = v30->_posterDescriptorLookupInfo;
  v30->_posterDescriptorLookupInfo = v24;
  v61 = v24;

  v39 = [v67 copy];
  titleStyleConfiguration = v30->_titleStyleConfiguration;
  v30->_titleStyleConfiguration = v39;

  v41 = [v66 copy];
  focusConfiguration = v30->_focusConfiguration;
  v30->_focusConfiguration = v41;

  subtitleComplication = v30->_subtitleComplication;
  v30->_subtitleComplication = v25;
  v60 = v25;

  suggestedComplications = v30->_suggestedComplications;
  v30->_suggestedComplications = v26;
  v45 = v26;

  suggestedLandscapeComplications = v30->_suggestedLandscapeComplications;
  v30->_suggestedLandscapeComplications = v27;
  v47 = v27;

  complicationLayoutType = v30->_complicationLayoutType;
  v30->_complicationLayoutType = v28;
  v49 = v28;

  v30->_complicationsUseBottomLayout = a14;
  v50 = [v65 copy];
  renderingConfiguration = v30->_renderingConfiguration;
  v30->_renderingConfiguration = v50;

  homeScreenConfiguration = v30->_homeScreenConfiguration;
  v30->_homeScreenConfiguration = v29;
  v53 = v29;

  v54 = [v64 copy];
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
  v30->_galleryOptions = v63;

  v58.f64[0] = NAN;
  v58.f64[1] = NAN;
  *&v30->_cachedGalleryPresentationStyle = vnegq_f64(v58);

  return v30;
}

+ (id)testPosterPreviewWithLocalizedTitle:(id)a3 description:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = +[PBFGenericPosterDescriptorLookupInfo nullPosterDescriptorLookupInfo];
  LOBYTE(v13) = 0;
  v11 = [v7 posterPreviewWithUniqueIdentifier:v9 displayNameLocalizationKey:0 galleryLocalizedTitle:v6 galleryLocalizedDescription:v5 posterDescriptorLookupInfo:v10 titleStyleConfiguration:0 focusConfiguration:0 subtitleComplication:0 suggestedComplications:0 suggestedLandscapeComplications:0 complicationLayoutType:PBFComplicationLayoutTypeEmpty complicationsUseBottomLayout:v13 renderingConfiguration:0 homeScreenConfiguration:0 previewType:PBFPreviewTypeDefault galleryOptions:0];

  return v11;
}

+ (id)posterPreviewForDescriptor:(id)a3
{
  v4 = [a3 _path];
  v5 = [a1 posterPreviewForPath:v4];

  return v5;
}

+ (id)posterPreviewForConfiguration:(id)a3
{
  v4 = [a3 _path];
  v5 = [a1 posterPreviewForPath:v4];

  return v5;
}

+ (id)posterPreviewForPath:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D3EDE0];
    v4 = a3;
    v5 = [v3 modelObjectCacheForPath:v4];
    v6 = [MEMORY[0x277CCAD78] UUID];
    v37 = [v6 UUIDString];

    v7 = [v5 otherMetadata];
    v36 = [v7 displayNameLocalizationKey];

    v8 = [PBFGenericPosterDescriptorLookupInfo alloc];
    v9 = MEMORY[0x277D3EB80];
    v10 = [v4 serverIdentity];
    v11 = [v10 provider];
    v12 = [v9 extensionWithBundleIdentifier:v11];
    v34 = [(PBFGenericPosterDescriptorLookupInfo *)v8 _initWithPath:v4 extension:v12];

    v13 = PBFComplicationLayoutTypeEmpty;
    v14 = v5;
    v15 = [v5 complicationLayout];
    LODWORD(v10) = [v15 hasComplications];

    if (v10)
    {
      v16 = [v5 complicationLayout];
      v17 = [v16 inlineComplication];
      if (v17)
      {
        v18 = objc_alloc(MEMORY[0x277D3EC78]);
        v19 = [v16 inlineComplication];
        v20 = [v18 initWithPRSWidget:v19];
      }

      else
      {
        v20 = 0;
      }

      v25 = [v16 complications];
      v24 = [v25 bs_mapNoNulls:&__block_literal_global_159];

      v26 = [v16 sidebarComplications];
      v23 = [v26 bs_mapNoNulls:&__block_literal_global_161];

      v22 = [v16 complicationsUseBottomLayout];
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v20 = 0;
    }

    v33 = v5;
    v27 = [v5 focusConfiguration];
    v28 = [v5 titleStyleConfiguration];
    v29 = [v14 renderingConfiguration];
    v30 = [v14 homeScreenConfiguration];
    LOBYTE(v32) = v22;
    v21 = [a1 posterPreviewWithUniqueIdentifier:v37 displayNameLocalizationKey:v36 galleryLocalizedTitle:0 galleryLocalizedDescription:0 posterDescriptorLookupInfo:v34 titleStyleConfiguration:v28 focusConfiguration:v27 subtitleComplication:v20 suggestedComplications:v24 suggestedLandscapeComplications:v23 complicationLayoutType:v13 complicationsUseBottomLayout:v32 renderingConfiguration:v29 homeScreenConfiguration:v30 previewType:PBFPreviewTypeDefault galleryOptions:0];
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

- (id)copyWithZone:(_NSZone *)a3
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
    v4 = [MEMORY[0x277CF0C40] builder];
    v5 = [v4 appendString:self->_previewUniqueIdentifier];
    v6 = [v4 appendString:self->_displayNameLocalizationKey];
    v7 = [v4 appendString:self->_galleryLocalizedTitle];
    v8 = [v4 appendString:self->_galleryLocalizedDescription];
    v9 = [v4 appendObject:self->_posterDescriptorLookupInfo];
    v10 = [v4 appendObject:self->_titleStyleConfiguration];
    v11 = [v4 appendObject:self->_subtitleComplication];
    v12 = [v4 appendObject:self->_focusConfiguration];
    v13 = [v4 appendObject:self->_suggestedComplications];
    v14 = [v4 appendObject:self->_suggestedLandscapeComplications];
    v15 = [v4 appendObject:self->_complicationLayoutType];
    v16 = [v4 appendBool:self->_complicationsUseBottomLayout];
    v17 = [v4 appendObject:self->_renderingConfiguration];
    v18 = [v4 appendObject:self->_homeScreenConfiguration];
    hash = [v4 hash];
    self->_hash = hash;
  }

  return hash;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self || (v6 = [(PBFGenericPosterPreview *)v4 hash], v6 == [(PBFGenericPosterPreview *)self hash]))
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
  v4 = [(PBFGenericPosterPreview *)self posterDescriptorLookupInfo];
  v5 = [v4 posterDescriptorPath];
  v6 = [v3 appendObject:v5 withName:@"posterDescriptorPath"];

  v7 = [v3 build];

  return v7;
}

- (unint64_t)presentationStyle
{
  v3 = [(PBFGenericPosterPreview *)self type];
  v4 = [v3 isEqualToString:PBFPreviewTypeHero];

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
  v3 = [(PBFGenericPosterPreview *)self posterDescriptorLookupInfo];
  v15 = [v3 posterDescriptorPath];

  v4 = [MEMORY[0x277D3EDE0] modelObjectCacheForPath:v15];
  v5 = [v4 galleryOptions];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [MEMORY[0x277D3EDE8] loadPosterDescriptorGalleryOptionsForPath:v15 error:0];
  }

  v8 = v7;

  v9 = [(PBFGenericPosterPreview *)self type];
  v10 = [v9 isEqualToString:PBFPreviewTypeHero];

  if (v8 || (v10 & 1) == 0)
  {
    v11 = [v8 presentationStyle];
    v12 = [v8 displayStyle];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v13 = PUIFeatureEnabled();
  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  if (v13)
  {
    v14 = v12;
  }

  self->_cachedGalleryPresentationStyle = v11;
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