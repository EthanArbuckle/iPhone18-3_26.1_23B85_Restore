@interface PBFBasicPosterGalleryLayoutProvider
- (void)fetchGalleryLayoutWithCompletion:(id)a3;
- (void)handlePosterDescriptorsDidChange:(id)a3 withCompletion:(id)a4;
@end

@implementation PBFBasicPosterGalleryLayoutProvider

- (void)fetchGalleryLayoutWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_galleryLayout && ([MEMORY[0x277CBEAF8] currentLocale], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", v5->_locale), v6, v7))
  {
    v8 = v5->_galleryLayout;
  }

  else
  {
    v9 = [(NSDictionary *)v5->_posterDescriptorsByExtensionBundleIdentifier allKeys];
    v10 = [v9 sortedArrayUsingSelector:sel_localizedCompare_];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__PBFBasicPosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke;
    v12[3] = &unk_2782C86E8;
    v12[4] = v5;
    v11 = [v10 bs_mapNoNulls:v12];
    v8 = [objc_alloc(MEMORY[0x277D3E990]) initWithSections:v11 locale:v5->_locale];
    objc_storeStrong(&v5->_galleryLayout, v8);
  }

  objc_sync_exit(v5);

  v4[2](v4, v8, 0);
}

id __72__PBFBasicPosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CC1E50];
  v4 = a2;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 error:0];
  v6 = objc_alloc(MEMORY[0x277CCA8D8]);
  v7 = [v5 URL];
  v8 = [v6 _initUniqueWithURL:v7];

  v9 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v10 = [v9 fontName];

  v11 = [MEMORY[0x277CF0BC8] blackColor];
  v12 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v4];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __72__PBFBasicPosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke_2;
  v22[3] = &unk_2782C86C0;
  v13 = v8;
  v23 = v13;
  v14 = v10;
  v24 = v14;
  v15 = v11;
  v25 = v15;
  v16 = [v12 bs_map:v22];
  if ([v16 count])
  {
    v17 = [v16 count] > 2;
    v18 = objc_alloc(MEMORY[0x277D3E998]);
    v19 = [v5 localizedName];
    v20 = [v18 initWithType:v17 localizedTitle:v19 localizedSubtitle:0 localizedDescriptiveText:0 symbolImageName:0 symbolColorName:0 unityDescription:0 items:v16];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

id __72__PBFBasicPosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 extensionBundleIdentifier];
  v5 = [v3 identifier];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@'-'%@'", v4, v5];
  v7 = [v3 galleryOptions];

  v8 = [v7 displayNameLocalizationKey];

  v9 = [*(a1 + 32) localizedStringForKey:v8 value:0 table:0];
  v10 = v9;
  v11 = &stru_282CD3858;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  LOWORD(v15) = 0;
  v13 = [objc_alloc(MEMORY[0x277D3E980]) initWithIdentifier:v6 descriptorIdentifier:v5 extensionBundleIdentifier:v4 displayNameLocalizationKey:0 spokenNameLocalizationKey:0 descriptiveTextLocalizationKey:0 localizedDisplayName:v12 localizedSubtitle:0 titleFontName:*(a1 + 40) titleColor:*(a1 + 48) subtitleComplication:0 layoutType:0 modeSemanticType:0 modeUUID:0 complications:0 landscapeComplications:0 blankTemplate:v15 shouldShowAsShuffleStack:0 source:?];

  return v13;
}

- (void)handlePosterDescriptorsDidChange:(id)a3 withCompletion:(id)a4
{
  v13 = a3;
  v6 = a4;
  (*(v6 + 2))(v6, 0, 0);
  v7 = self;
  objc_sync_enter(v7);
  if (([v13 isEqualToDictionary:v7->_posterDescriptorsByExtensionBundleIdentifier] & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v13 copyItems:1];
    posterDescriptorsByExtensionBundleIdentifier = v7->_posterDescriptorsByExtensionBundleIdentifier;
    v7->_posterDescriptorsByExtensionBundleIdentifier = v8;

    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    locale = v7->_locale;
    v7->_locale = v10;

    galleryLayout = v7->_galleryLayout;
    v7->_galleryLayout = 0;
  }

  objc_sync_exit(v7);

  (*(v6 + 2))(v6, 1, 0);
}

@end