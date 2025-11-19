@interface PHAWallpaperSuggestionAnalyticsSender
+ ($07919FF52A1CF34B835B8E07CC3CE49A)ambientSuggestionStatisticsFromSuggestions:(SEL)a3;
+ ($1A9BA35ACF7822FDDDE3BD6714E1EA81)wallpaperSuggestionStatisticsFromSuggestions:(SEL)a3;
+ (id)analyticsPayloadForLibraryAnalysisSummary:(id)a3;
- (PHAWallpaperSuggestionAnalyticsSender)initWithGraphManager:(id)a3 libraryAnalysisSummary:(id)a4;
- (id)ambientGenerationSummaryWithGeneratedSuggestionLocalIdentifiers:(id)a3;
- (id)ambientPeoplePetSummary;
- (id)existingAmbientSuggestionSummary;
- (id)existingWallpaperSuggestionSummary;
- (id)suggestionFetchOptionsWithLocalIdentifiers:(id)a3;
- (id)wallpaperGenerationSummaryWithGeneratedSuggestionLocalIdentifiers:(id)a3;
- (id)wallpaperPeoplePetSummary;
- (int64_t)shufflePickerVisiblePeopleCount;
- (void)sendAmbientGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:(id)a3;
- (void)sendRefreshSummaryEventWithPosterConfiguration:(id)a3;
- (void)sendWallpaperGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:(id)a3;
@end

@implementation PHAWallpaperSuggestionAnalyticsSender

- (id)ambientPeoplePetSummary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"eligible_pets_count";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_eligiblePetsCount];
  v7[1] = @"eligible_people_count";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSSet count](self->_shufflePeopleLocalIdentifiers, "count")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)existingAmbientSuggestionSummary
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = os_signpost_id_generate(self->_loggingConnection);
  v4 = self->_loggingConnection;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "fetchExistingAmbientSuggesstionSummary", "", buf, 2u);
  }

  spid = v3;

  v7 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v8 = MEMORY[0x277CCA920];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v32[0] = v9;
  v10 = [MEMORY[0x277CD99E0] predicateForAllAmbientSuggestions];
  v32[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v12 = [v8 andPredicateWithSubpredicates:v11];
  [v7 setPredicate:v12];

  v13 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v7];
  *buf = 0;
  v28 = 0;
  v29 = 0;
  v14 = objc_opt_class();
  if (v14)
  {
    [v14 ambientSuggestionStatisticsFromSuggestions:v13];
    v15 = *buf;
  }

  else
  {
    v15 = 0;
    *buf = 0;
    v28 = 0;
    v29 = 0;
  }

  v30[0] = @"nature_suggestion_count";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v31[0] = v16;
  v30[1] = @"city_suggestion_count";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[4]];
  v31[1] = v17;
  v30[2] = @"people_suggestion_count";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v28)];
  v31[2] = v18;
  v30[3] = @"pet_suggestion_count";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:v28];
  v31[3] = v19;
  v30[4] = @"me_suggestion_count";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v29];
  v31[4] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];

  v22 = self->_loggingConnection;
  v23 = v22;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v23, OS_SIGNPOST_INTERVAL_END, spid, "fetchExistingAmbientSuggesstionSummary", "", v26, 2u);
  }

  return v21;
}

- (id)ambientGenerationSummaryWithGeneratedSuggestionLocalIdentifiers:(id)a3
{
  v29[5] = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  v5 = a3;
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = self->_loggingConnection;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "fetchAmbientGenerationSummary", "", buf, 2u);
  }

  v10 = [(PHAWallpaperSuggestionAnalyticsSender *)self suggestionFetchOptionsWithLocalIdentifiers:v5];

  v11 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v10];
  *buf = 0;
  v26 = 0;
  v27 = 0;
  v12 = objc_opt_class();
  spid = v6;
  if (v12)
  {
    [v12 ambientSuggestionStatisticsFromSuggestions:v11];
    v13 = *buf;
  }

  else
  {
    v13 = 0;
    *buf = 0;
    v26 = 0;
    v27 = 0;
  }

  v28[0] = @"nature_suggestions_generated";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
  v29[0] = v14;
  v28[1] = @"city_suggestions_generated";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[4]];
  v29[1] = v15;
  v28[2] = @"people_suggestions_generated";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v26)];
  v29[2] = v16;
  v28[3] = @"pet_suggestions_generated";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:v26];
  v29[3] = v17;
  v28[4] = @"me_suggestions_generated";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:v27];
  v29[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];

  v20 = self->_loggingConnection;
  v21 = v20;
  if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v21, OS_SIGNPOST_INTERVAL_END, spid, "fetchAmbientGenerationSummary", "", v24, 2u);
  }

  return v19;
}

- (int64_t)shufflePickerVisiblePeopleCount
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CD99F8]) initWithPhotoLibrary:self->_photoLibrary];
  v4 = [v3 personUUIDsWithNegativeFeedback];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CD9938] localIdentifierWithUUID:{*(*(&v16 + 1) + 8 * v10), v16}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277D3C810] fetchPersonLocalIdentifiersForSuggestionSubtype:652 photoLibrary:self->_photoLibrary];
  v13 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v12];
  [v13 minusSet:v5];
  v14 = [v13 count];

  return v14;
}

- (id)wallpaperPeoplePetSummary
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"eligible_pets_count";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_eligiblePetsCount];
  v10[0] = v3;
  v9[1] = @"gallery_eligible_people_count";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSSet count](self->_topPeopleLocalIdentifiers, "count")}];
  v10[1] = v4;
  v9[2] = @"shuffle_eligible_people_count";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSSet count](self->_shufflePeopleLocalIdentifiers, "count")}];
  v10[2] = v5;
  v9[3] = @"shuffle_picker_people_count";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PHAWallpaperSuggestionAnalyticsSender shufflePickerVisiblePeopleCount](self, "shufflePickerVisiblePeopleCount")}];
  v10[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

- (id)existingWallpaperSuggestionSummary
{
  v51[2] = *MEMORY[0x277D85DE8];
  v3 = os_signpost_id_generate(self->_loggingConnection);
  v4 = self->_loggingConnection;
  v5 = v4;
  v43 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "fetchExistingSuggesstionSummary", "", buf, 2u);
  }

  spid = v3;

  v6 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
  v7 = MEMORY[0x277CCA920];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v51[0] = v8;
  v9 = [MEMORY[0x277CD99E0] predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper];
  v51[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];
  [v6 setPredicate:v11];

  v42 = v6;
  v12 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v6];
  v48 = 0;
  *buf = 0u;
  v47 = 0u;
  v13 = objc_opt_class();
  v44 = self;
  v41 = v12;
  if (v13)
  {
    [v13 wallpaperSuggestionStatisticsFromSuggestions:v12];
    v14 = *&buf[12];
    v15 = SDWORD1(v47);
    v16 = SHIDWORD(v47);
    v17 = *buf;
    v18 = *&buf[4];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v18 = 0;
    v48 = 0;
    *buf = 0u;
    v47 = 0u;
  }

  v19 = *MEMORY[0x277D3CA28] <= v18;
  v20 = *MEMORY[0x277D3CA28] <= v14;
  v21 = *MEMORY[0x277D3CA28] <= v15;
  v36 = *MEMORY[0x277D3CA28] <= v16;
  v49[0] = @"top_people_suggestion_count";
  v40 = [MEMORY[0x277CCABB0] numberWithInt:v17];
  v50[0] = v40;
  v49[1] = @"people_suggestion_count";
  v39 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[4]];
  v50[1] = v39;
  v49[2] = @"top_pet_suggestion_count";
  v38 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[8]];
  v50[2] = v38;
  v49[3] = @"pet_suggestion_count";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[12]];
  v50[3] = v22;
  v49[4] = @"top_nature_suggestion_count";
  v23 = [MEMORY[0x277CCABB0] numberWithInt:v47];
  v50[4] = v23;
  v49[5] = @"nature_suggestion_count";
  v24 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v47)];
  v50[5] = v24;
  v49[6] = @"top_urban_suggestion_count";
  v25 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v47)];
  v50[6] = v25;
  v49[7] = @"urban_suggestion_count";
  v26 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v47)];
  v50[7] = v26;
  v49[8] = @"me_suggestion_count";
  v27 = [MEMORY[0x277CCABB0] numberWithInt:v48];
  v50[8] = v27;
  v49[9] = @"found_min_shuffle_people_suggestion";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  v50[9] = v28;
  v49[10] = @"found_min_shuffle_pet_suggestion";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:v20];
  v50[10] = v29;
  v49[11] = @"found_min_shuffle_nature_suggestion";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:v21];
  v50[11] = v30;
  v49[12] = @"found_min_shuffle_city_suggestion";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:v36];
  v50[12] = v31;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:13];

  v32 = v44->_loggingConnection;
  v33 = v32;
  if (v43 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *v45 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v33, OS_SIGNPOST_INTERVAL_END, spid, "fetchExistingSuggesstionSummary", "", v45, 2u);
  }

  return v37;
}

- (id)wallpaperGenerationSummaryWithGeneratedSuggestionLocalIdentifiers:(id)a3
{
  v35[9] = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  v5 = a3;
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = self->_loggingConnection;
  v8 = v7;
  v29 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "fetchGeneratedSuggesstionSummary", "", buf, 2u);
  }

  v9 = [(PHAWallpaperSuggestionAnalyticsSender *)self suggestionFetchOptionsWithLocalIdentifiers:v5];

  v28 = v9;
  v10 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:v9];
  v33 = 0;
  *buf = 0u;
  v32 = 0u;
  v11 = objc_opt_class();
  spid = v6;
  v27 = v10;
  if (v11)
  {
    [v11 wallpaperSuggestionStatisticsFromSuggestions:v10];
    v12 = *buf;
  }

  else
  {
    v12 = 0;
    v33 = 0;
    *buf = 0u;
    v32 = 0u;
  }

  v34[0] = @"top_people_suggestions_generated";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v35[0] = v13;
  v34[1] = @"people_suggestions_generated";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[4]];
  v35[1] = v14;
  v34[2] = @"top_pet_suggestions_generated";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[8]];
  v35[2] = v15;
  v34[3] = @"pet_suggestions_generated";
  v16 = [MEMORY[0x277CCABB0] numberWithInt:*&buf[12]];
  v35[3] = v16;
  v34[4] = @"top_nature_suggestions_generated";
  v17 = [MEMORY[0x277CCABB0] numberWithInt:v32];
  v35[4] = v17;
  v34[5] = @"nature_suggestions_generated";
  v18 = [MEMORY[0x277CCABB0] numberWithInt:DWORD1(v32)];
  v35[5] = v18;
  v34[6] = @"top_urban_suggestions_generated";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:DWORD2(v32)];
  v35[6] = v19;
  v34[7] = @"urban_suggestions_generated";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v32)];
  v35[7] = v20;
  v34[8] = @"me_suggestions_generated";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v33];
  v35[8] = v21;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:9];

  v22 = self->_loggingConnection;
  v23 = v22;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v23, OS_SIGNPOST_INTERVAL_END, spid, "fetchGeneratedSuggesstionSummary", "", v30, 2u);
  }

  return v26;
}

- (id)suggestionFetchOptionsWithLocalIdentifiers:(id)a3
{
  v12[2] = *MEMORY[0x277D85DE8];
  photoLibrary = self->_photoLibrary;
  v4 = a3;
  v5 = [(PHPhotoLibrary *)photoLibrary librarySpecificFetchOptions];
  v6 = MEMORY[0x277CCA920];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v12[0] = v7;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"localIdentifier", v4];

  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v10 = [v6 andPredicateWithSubpredicates:v9];
  [v5 setPredicate:v10];

  return v5;
}

- (void)sendAmbientGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:(id)a3
{
  loggingConnection = self->_loggingConnection;
  v5 = a3;
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = self->_loggingConnection;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "sendAmbientGenerationSummary", "", buf, 2u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(PHAWallpaperSuggestionAnalyticsSender *)self ambientGenerationSummaryWithGeneratedSuggestionLocalIdentifiers:v5];

  [v9 addEntriesFromDictionary:v10];
  v11 = [(PHAWallpaperSuggestionAnalyticsSender *)self existingAmbientSuggestionSummary];
  [v9 addEntriesFromDictionary:v11];

  v12 = [(PHAWallpaperSuggestionAnalyticsSender *)self ambientPeoplePetSummary];
  [v9 addEntriesFromDictionary:v12];

  v13 = [objc_opt_class() analyticsPayloadForLibraryAnalysisSummary:self->_libraryAnalysisSummary];
  [v9 addEntriesFromDictionary:v13];

  [(CPAnalytics *)self->_analytics sendEvent:@"com.apple.photos.ambient.generationSummary" withPayload:v9];
  v14 = self->_loggingConnection;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionAnalyticsSender] Sent Ambient Generation Summary Event", v18, 2u);
    v14 = self->_loggingConnection;
  }

  v15 = v14;
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v16, OS_SIGNPOST_INTERVAL_END, v6, "sendAmbientGenerationSummary", "", v17, 2u);
  }
}

- (void)sendRefreshSummaryEventWithPosterConfiguration:(id)a3
{
  loggingConnection = self->_loggingConnection;
  v5 = a3;
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = self->_loggingConnection;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "sendRefreshSummary", "", buf, 2u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(PHAWallpaperSuggestionAnalyticsSender *)self existingWallpaperSuggestionSummary];
  [v9 addEntriesFromDictionary:v10];

  v11 = [(PHAWallpaperSuggestionAnalyticsSender *)self wallpaperPeoplePetSummary];
  [v9 addEntriesFromDictionary:v11];

  v12 = [objc_opt_class() analyticsPayloadForLibraryAnalysisSummary:self->_libraryAnalysisSummary];
  [v9 addEntriesFromDictionary:v12];

  v13 = [v5 analyticsPayload];

  [v9 addEntriesFromDictionary:v13];
  [(CPAnalytics *)self->_analytics sendEvent:@"com.apple.photos.wallpaper.refreshSummary" withPayload:v9];
  v14 = self->_loggingConnection;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionAnalyticsSender] Sent Refresh Summary Event", v18, 2u);
    v14 = self->_loggingConnection;
  }

  v15 = v14;
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v16, OS_SIGNPOST_INTERVAL_END, v6, "sendRefreshSummary", "", v17, 2u);
  }
}

- (void)sendWallpaperGenerationSummaryEventWithGeneratedSuggestionLocalIdentifiers:(id)a3
{
  loggingConnection = self->_loggingConnection;
  v5 = a3;
  v6 = os_signpost_id_generate(loggingConnection);
  v7 = self->_loggingConnection;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "sendGenerationSummary", "", buf, 2u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [(PHAWallpaperSuggestionAnalyticsSender *)self wallpaperGenerationSummaryWithGeneratedSuggestionLocalIdentifiers:v5];

  [v9 addEntriesFromDictionary:v10];
  v11 = [(PHAWallpaperSuggestionAnalyticsSender *)self existingWallpaperSuggestionSummary];
  [v9 addEntriesFromDictionary:v11];

  v12 = [(PHAWallpaperSuggestionAnalyticsSender *)self wallpaperPeoplePetSummary];
  [v9 addEntriesFromDictionary:v12];

  v13 = [objc_opt_class() analyticsPayloadForLibraryAnalysisSummary:self->_libraryAnalysisSummary];
  [v9 addEntriesFromDictionary:v13];

  [(CPAnalytics *)self->_analytics sendEvent:@"com.apple.photos.wallpaper.generationSummary" withPayload:v9];
  v14 = self->_loggingConnection;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "[PHAWallpaperSuggestionAnalyticsSender] Sent Wallpaper Generation Summary Event", v18, 2u);
    v14 = self->_loggingConnection;
  }

  v15 = v14;
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_22FA28000, v16, OS_SIGNPOST_INTERVAL_END, v6, "sendGenerationSummary", "", v17, 2u);
  }
}

- (PHAWallpaperSuggestionAnalyticsSender)initWithGraphManager:(id)a3 libraryAnalysisSummary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = PHAWallpaperSuggestionAnalyticsSender;
  v8 = [(PHAWallpaperSuggestionAnalyticsSender *)&v28 init];
  if (v8)
  {
    v9 = [v6 workingContext];
    workingContext = v8->_workingContext;
    v8->_workingContext = v9;

    v11 = [v6 photoLibrary];
    photoLibrary = v8->_photoLibrary;
    v8->_photoLibrary = v11;

    v13 = [v6 workingContext];
    v14 = [v13 loggingConnection];
    loggingConnection = v8->_loggingConnection;
    v8->_loggingConnection = v14;

    v16 = [v6 analytics];
    analytics = v8->_analytics;
    v8->_analytics = v16;

    objc_storeStrong(&v8->_libraryAnalysisSummary, a4);
    if ([v6 isReady])
    {
      v18 = [objc_alloc(MEMORY[0x277D3BC58]) initWithWorkingContext:v8->_workingContext];
      informer = v8->_informer;
      v8->_informer = v18;

      v20 = [(PGWallpaperSuggestionInformer *)v8->_informer personLocalIdentifiersForTopPeople:1];
      topPeopleLocalIdentifiers = v8->_topPeopleLocalIdentifiers;
      v8->_topPeopleLocalIdentifiers = v20;

      v22 = [(PGWallpaperSuggestionInformer *)v8->_informer personLocalIdentifiersForTopPeople:0];
      shufflePeopleLocalIdentifiers = v8->_shufflePeopleLocalIdentifiers;
      v8->_shufflePeopleLocalIdentifiers = v22;
    }

    v24 = [objc_alloc(MEMORY[0x277D3C790]) initWithPhotoLibrary:v8->_photoLibrary];
    curationContext = v8->_curationContext;
    v8->_curationContext = v24;

    v26 = [MEMORY[0x277D3B998] fetchInterestingEligiblePetsForWallpaperWithWorkingContext:v8->_workingContext curationContext:v8->_curationContext];
    v8->_eligiblePetsCount = [v26 count];
  }

  return v8;
}

+ ($07919FF52A1CF34B835B8E07CC3CE49A)ambientSuggestionStatisticsFromSuggestions:(SEL)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v17 = retstr;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 subtype] == 801)
        {
          ++v12;
        }

        else if ([v15 subtype] == 802)
        {
          ++v8;
        }

        else if ([v15 subtype] == 803)
        {
          ++v9;
        }

        else if ([v15 subtype] == 804)
        {
          ++v10;
        }

        else if ([v15 subtype] == 805)
        {
          ++v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
    v17->var3 = v10;
    v17->var4 = v11;
    v17->var1 = v8;
    v17->var2 = v9;
    v17->var0 = v12;
  }

  return result;
}

+ (id)analyticsPayloadForLibraryAnalysisSummary:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 ratioOfAssetsAtOrAboveSceneAnalysisVersion];
  v5 = (v4 * 100.0);
  [v3 ratioOfAssetsAtOrAboveFaceAnalysisVersion];
  v7 = (v6 * 100.0);
  v15[0] = @"percentage_of_assets_at_or_above_scene_analysis_version";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
  v16[0] = v8;
  v15[1] = @"percentage_of_assets_at_or_above_face_analysis_version";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
  v16[1] = v9;
  v15[2] = @"library_is_processed_enough";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 libraryIsProcessedEnough];

  v12 = [v10 numberWithBool:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v13;
}

+ ($1A9BA35ACF7822FDDDE3BD6714E1EA81)wallpaperSuggestionStatisticsFromSuggestions:(SEL)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a4;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  retstr->var8 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v18 = retstr;
    v19 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v20 = 0;
    v12 = 0;
    v13 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if ([v15 subtype] == 602)
        {
          ++v12;
        }

        else if ([v15 subtype] == 652)
        {
          ++v8;
        }

        else if ([v15 subtype] == 603)
        {
          ++v9;
        }

        else if ([v15 subtype] == 653)
        {
          ++v10;
        }

        else if ([v15 subtype] == 604)
        {
          ++v11;
        }

        else if ([v15 subtype] == 654)
        {
          ++HIDWORD(v20);
        }

        else if ([v15 subtype] == 605)
        {
          LODWORD(v20) = v20 + 1;
        }

        else if ([v15 subtype] == 655)
        {
          ++HIDWORD(v19);
        }

        else
        {
          if ([v15 subtype] == 901)
          {
            v16 = v19 + 1;
          }

          else
          {
            v16 = v19;
          }

          LODWORD(v19) = v16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
    v18->var7 = HIDWORD(v19);
    v18->var8 = v19;
    v18->var5 = HIDWORD(v20);
    v18->var6 = v20;
    v18->var3 = v10;
    v18->var4 = v11;
    v18->var1 = v8;
    v18->var2 = v9;
    v18->var0 = v12;
  }

  return result;
}

@end