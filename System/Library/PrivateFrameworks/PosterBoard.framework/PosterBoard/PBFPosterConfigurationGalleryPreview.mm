@interface PBFPosterConfigurationGalleryPreview
- (PBFPosterConfigurationGalleryPreview)initWithConfiguration:(id)configuration extension:(id)extension;
@end

@implementation PBFPosterConfigurationGalleryPreview

- (PBFPosterConfigurationGalleryPreview)initWithConfiguration:(id)configuration extension:(id)extension
{
  configurationCopy = configuration;
  extensionCopy = extension;
  v10 = configurationCopy;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v10)
  {
    [PBFPosterConfigurationGalleryPreview initWithConfiguration:a2 extension:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterConfigurationGalleryPreview initWithConfiguration:a2 extension:?];
  }

  if (!extensionCopy)
  {
    [PBFPosterConfigurationGalleryPreview initWithConfiguration:a2 extension:?];
  }

  v40.receiver = self;
  v40.super_class = PBFPosterConfigurationGalleryPreview;
  v11 = [(PBFPosterConfigurationGalleryPreview *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, configuration);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    previewUniqueIdentifier = v12->_previewUniqueIdentifier;
    v12->_previewUniqueIdentifier = uUIDString;

    objc_storeStrong(&v12->_type, PBFPreviewTypeDefault);
    v16 = [v10 loadTitleStyleConfigurationWithError:0];
    titleStyleConfiguration = v12->_titleStyleConfiguration;
    v12->_titleStyleConfiguration = v16;

    v18 = [v10 loadOtherMetadataWithError:0];
    displayNameLocalizationKey = [v18 displayNameLocalizationKey];
    displayNameLocalizationKey = v12->_displayNameLocalizationKey;
    v12->_displayNameLocalizationKey = displayNameLocalizationKey;

    _path = [v10 _path];
    v22 = [PBFGenericPosterDescriptorLookupInfo posterDescriptorLookupInfoForPath:_path extension:extensionCopy];
    posterDescriptorLookupInfo = v12->_posterDescriptorLookupInfo;
    v12->_posterDescriptorLookupInfo = v22;

    localizedName = [extensionCopy localizedName];
    v25 = [localizedName copy];
    galleryLocalizedTitle = v12->_galleryLocalizedTitle;
    v12->_galleryLocalizedTitle = v25;

    galleryLocalizedDescription = v12->_galleryLocalizedDescription;
    v12->_galleryLocalizedDescription = 0;

    v12->_galleryDisplayStyle = 0;
    v28 = [v10 loadComplicationLayoutWithError:0];
    inlineComplication = [v28 inlineComplication];

    if (inlineComplication)
    {
      inlineComplication2 = [v28 inlineComplication];
      pbf_complicationLookupInfo = [inlineComplication2 pbf_complicationLookupInfo];
      subtitleComplication = v12->_subtitleComplication;
      v12->_subtitleComplication = pbf_complicationLookupInfo;
    }

    v12->_complicationsUseBottomLayout = [v28 complicationsUseBottomLayout];
    complications = [v28 complications];
    v34 = [complications bs_map:&__block_literal_global_18];
    suggestedComplications = v12->_suggestedComplications;
    v12->_suggestedComplications = v34;

    sidebarComplications = [v28 sidebarComplications];
    v37 = [sidebarComplications bs_map:&__block_literal_global_20];
    suggestedLandscapeComplications = v12->_suggestedLandscapeComplications;
    v12->_suggestedLandscapeComplications = v37;
  }

  return v12;
}

- (void)initWithConfiguration:(const char *)a1 extension:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(const char *)a1 extension:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"extension", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(const char *)a1 extension:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end