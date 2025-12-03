@interface PBFBasicPosterGalleryLayoutProvider
- (void)fetchGalleryLayoutWithCompletion:(id)completion;
- (void)handlePosterDescriptorsDidChange:(id)change withCompletion:(id)completion;
@end

@implementation PBFBasicPosterGalleryLayoutProvider

- (void)fetchGalleryLayoutWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_galleryLayout && ([MEMORY[0x277CBEAF8] currentLocale], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", selfCopy->_locale), v6, v7))
  {
    v8 = selfCopy->_galleryLayout;
  }

  else
  {
    allKeys = [(NSDictionary *)selfCopy->_posterDescriptorsByExtensionBundleIdentifier allKeys];
    v10 = [allKeys sortedArrayUsingSelector:sel_localizedCompare_];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__PBFBasicPosterGalleryLayoutProvider_fetchGalleryLayoutWithCompletion___block_invoke;
    v12[3] = &unk_2782C86E8;
    v12[4] = selfCopy;
    v11 = [v10 bs_mapNoNulls:v12];
    v8 = [objc_alloc(MEMORY[0x277D3E990]) initWithSections:v11 locale:selfCopy->_locale];
    objc_storeStrong(&selfCopy->_galleryLayout, v8);
  }

  objc_sync_exit(selfCopy);

  completionCopy[2](completionCopy, v8, 0);
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

- (void)handlePosterDescriptorsDidChange:(id)change withCompletion:(id)completion
{
  changeCopy = change;
  completionCopy = completion;
  (*(completionCopy + 2))(completionCopy, 0, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([changeCopy isEqualToDictionary:selfCopy->_posterDescriptorsByExtensionBundleIdentifier] & 1) == 0)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:changeCopy copyItems:1];
    posterDescriptorsByExtensionBundleIdentifier = selfCopy->_posterDescriptorsByExtensionBundleIdentifier;
    selfCopy->_posterDescriptorsByExtensionBundleIdentifier = v8;

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    locale = selfCopy->_locale;
    selfCopy->_locale = currentLocale;

    galleryLayout = selfCopy->_galleryLayout;
    selfCopy->_galleryLayout = 0;
  }

  objc_sync_exit(selfCopy);

  (*(completionCopy + 2))(completionCopy, 1, 0);
}

@end