@interface PBFPosterConfigurationGalleryPreview
- (PBFPosterConfigurationGalleryPreview)initWithConfiguration:(id)a3 extension:(id)a4;
@end

@implementation PBFPosterConfigurationGalleryPreview

- (PBFPosterConfigurationGalleryPreview)initWithConfiguration:(id)a3 extension:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  NSClassFromString(&cfstr_Prposterconfig.isa);
  if (!v10)
  {
    [PBFPosterConfigurationGalleryPreview initWithConfiguration:a2 extension:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterConfigurationGalleryPreview initWithConfiguration:a2 extension:?];
  }

  if (!v9)
  {
    [PBFPosterConfigurationGalleryPreview initWithConfiguration:a2 extension:?];
  }

  v40.receiver = self;
  v40.super_class = PBFPosterConfigurationGalleryPreview;
  v11 = [(PBFPosterConfigurationGalleryPreview *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a3);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    previewUniqueIdentifier = v12->_previewUniqueIdentifier;
    v12->_previewUniqueIdentifier = v14;

    objc_storeStrong(&v12->_type, PBFPreviewTypeDefault);
    v16 = [v10 loadTitleStyleConfigurationWithError:0];
    titleStyleConfiguration = v12->_titleStyleConfiguration;
    v12->_titleStyleConfiguration = v16;

    v18 = [v10 loadOtherMetadataWithError:0];
    v19 = [v18 displayNameLocalizationKey];
    displayNameLocalizationKey = v12->_displayNameLocalizationKey;
    v12->_displayNameLocalizationKey = v19;

    v21 = [v10 _path];
    v22 = [PBFGenericPosterDescriptorLookupInfo posterDescriptorLookupInfoForPath:v21 extension:v9];
    posterDescriptorLookupInfo = v12->_posterDescriptorLookupInfo;
    v12->_posterDescriptorLookupInfo = v22;

    v24 = [v9 localizedName];
    v25 = [v24 copy];
    galleryLocalizedTitle = v12->_galleryLocalizedTitle;
    v12->_galleryLocalizedTitle = v25;

    galleryLocalizedDescription = v12->_galleryLocalizedDescription;
    v12->_galleryLocalizedDescription = 0;

    v12->_galleryDisplayStyle = 0;
    v28 = [v10 loadComplicationLayoutWithError:0];
    v29 = [v28 inlineComplication];

    if (v29)
    {
      v30 = [v28 inlineComplication];
      v31 = [v30 pbf_complicationLookupInfo];
      subtitleComplication = v12->_subtitleComplication;
      v12->_subtitleComplication = v31;
    }

    v12->_complicationsUseBottomLayout = [v28 complicationsUseBottomLayout];
    v33 = [v28 complications];
    v34 = [v33 bs_map:&__block_literal_global_18];
    suggestedComplications = v12->_suggestedComplications;
    v12->_suggestedComplications = v34;

    v36 = [v28 sidebarComplications];
    v37 = [v36 bs_map:&__block_literal_global_20];
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