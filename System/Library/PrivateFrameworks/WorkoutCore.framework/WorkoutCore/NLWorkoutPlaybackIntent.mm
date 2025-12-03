@interface NLWorkoutPlaybackIntent
- (id)copyWithZone:(_NSZone *)zone;
- (id)mediaPlaybackCorePlaybackIntent;
- (void)setPlaylistID:(id)d;
@end

@implementation NLWorkoutPlaybackIntent

- (void)setPlaylistID:(id)d
{
  v36[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  objc_storeStrong(&selfCopy->_playlistID, location[0]);
  if (selfCopy->_playlistID)
  {
    if (!selfCopy->_libraryRequest)
    {
      v3 = objc_alloc_init(MEMORY[0x277CD5ED8]);
      libraryRequest = selfCopy->_libraryRequest;
      selfCopy->_libraryRequest = v3;
      *&v5 = MEMORY[0x277D82BD8](libraryRequest).n128_u64[0];
      v13 = MEMORY[0x277CD5EF0];
      v12 = MEMORY[0x277CD5EF8];
      v17 = [MEMORY[0x277CD5F58] kindWithVariants:v5];
      v36[0] = v17;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
      v15 = [v12 kindWithKinds:?];
      v14 = [v13 kindWithVariants:19 playlistEntryKind:? options:?];
      [(MPModelLibraryRequest *)selfCopy->_libraryRequest setSectionKind:?];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      emptyPropertySet = [MEMORY[0x277CD6018] emptyPropertySet];
      [(MPModelLibraryRequest *)selfCopy->_libraryRequest setSectionProperties:?];
      *&v6 = MEMORY[0x277D82BD8](emptyPropertySet).n128_u64[0];
      v19 = MEMORY[0x277CD5EF8];
      v22 = [MEMORY[0x277CD5F58] kindWithVariants:{1, v6}];
      v35 = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v20 = [v19 kindWithKinds:?];
      [(MPModelLibraryRequest *)selfCopy->_libraryRequest setItemKind:?];
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      emptyPropertySet2 = [MEMORY[0x277CD6018] emptyPropertySet];
      [(MPModelLibraryRequest *)selfCopy->_libraryRequest setItemProperties:?];
      MEMORY[0x277D82BD8](emptyPropertySet2);
      if (([objc_opt_class() _deviceSupportsMediaStreaming] & 1) == 0)
      {
        [(MPModelLibraryRequest *)selfCopy->_libraryRequest setFilteringOptions:[(MPModelLibraryRequest *)selfCopy->_libraryRequest filteringOptions]| 2];
      }
    }

    v9 = objc_alloc(MEMORY[0x277CD5EF0]);
    v8 = objc_alloc(MEMORY[0x277CD5DA0]);
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __41__NLWorkoutPlaybackIntent_setPlaylistID___block_invoke;
    v28 = &unk_277D89398;
    v29 = MEMORY[0x277D82BE0](location[0]);
    v10 = [v8 initWithBlock:&v24];
    v30 = [v9 initWithIdentifiers:? block:?];
    *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v34 = v30;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:{1, v7}];
    [(MPModelLibraryRequest *)selfCopy->_libraryRequest setScopedContainers:?];
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __41__NLWorkoutPlaybackIntent_setPlaylistID___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [a1[4] longLongValue];
  [location[0] setSyncID:v2];
  objc_storeStrong(location, 0);
}

void __41__NLWorkoutPlaybackIntent_setPlaylistID___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

- (id)mediaPlaybackCorePlaybackIntent
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5[1] = a2;
  v5[0] = [(MPModelLibraryRequest *)self->_libraryRequest playbackIntentWithStartItemIdentifiers:0];
  [v5[0] setPlayActivityFeatureName:@"library/playlists"];
  [v5[0] setShuffleMode:selfCopy->_playbackModeShuffle];
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v7, selfCopy->_playbackModeShuffle);
    _os_log_impl(&dword_20AEA4000, location, OS_LOG_TYPE_DEFAULT, "[workoutmusic] shuffle mode enabled: %{BOOL}d", v7, 8u);
  }

  objc_storeStrong(&location, 0);
  v3 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);
  *MEMORY[0x277D85DE8];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v5[2] = a2;
  v5[1] = zone;
  v5[0] = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v5[0] + 1, selfCopy->_libraryRequest);
  [v5[0] setPlaybackModeShuffle:selfCopy->_playbackModeShuffle];
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);
  return v4;
}

@end