@interface PGMusicAudioCacher
+ (id)songPropertiesByAdamIDCachedForPhotosWithError:(id *)error;
+ (void)_addSongsWithAdamIDs:(id)ds toPlaylist:(id)playlist inLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)cacheSongAudioForAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler;
+ (void)removeAllSongsCachedForPhotosWithProgressReporter:(id)reporter completionHandler:(id)handler;
+ (void)removeSongsCachedForPhotosWithAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler;
@end

@implementation PGMusicAudioCacher

+ (void)_addSongsWithAdamIDs:(id)ds toPlaylist:(id)playlist inLibrary:(id)library progressReporter:(id)reporter completionHandler:(id)handler
{
  dsCopy = ds;
  playlistCopy = playlist;
  libraryCopy = library;
  reporterCopy = reporter;
  handlerCopy = handler;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    v16 = [PGError errorForCode:-4];
    handlerCopy[2](handlerCopy, 0, v16);
  }

  else
  {
    v17 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v17 loggingConnection];

    v19 = os_signpost_id_generate(loggingConnection);
    v20 = loggingConnection;
    v21 = v20;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "AddSongsToMusicAudioCache", "", buf, 2u);
    }

    *buf = 0;
    mach_timebase_info(buf);
    v22 = mach_absolute_time();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke;
    v24[3] = &unk_2788853E8;
    v25 = reporterCopy;
    v23 = handlerCopy;
    v30 = v19;
    v31 = *buf;
    v28 = v23;
    v29 = v22;
    v26 = v21;
    v27 = playlistCopy;
    v16 = v21;
    [libraryCopy addStoreItemIDs:dsCopy referralObject:0 andAddTracksToCloudLibrary:0 withCompletion:v24];
  }
}

void __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelledWithProgress:0.5])
  {
    v7 = *(a1 + 56);
    v8 = [PGError errorForCode:-4];
    (*(v7 + 16))(v7, 0, v8);

    v9 = mach_absolute_time();
    v10 = *(a1 + 64);
    v12 = *(a1 + 80);
    v11 = *(a1 + 84);
    v13 = *(a1 + 40);
    v14 = v13;
    v15 = *(a1 + 72);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_END, v15, "AddSongsToMusicAudioCache", "", buf, 2u);
    }

    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_13:
      *buf = 136315394;
      v34 = "AddSongsToMusicAudioCache";
      v35 = 2048;
      v36 = ((((v9 - v10) * v12) / v11) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

  else if (v5)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke_24;
    v26[3] = &unk_2788853C0;
    v17 = *(a1 + 48);
    v29 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = *(a1 + 64);
    v27 = v18;
    v30 = v19;
    v32 = *(a1 + 80);
    v20 = *(a1 + 40);
    v21 = *(a1 + 72);
    v28 = v20;
    v31 = v21;
    [v17 addMediaItems:v5 completionHandler:v26];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) isCancelledWithProgress:1.0];
    v9 = mach_absolute_time();
    v10 = *(a1 + 64);
    v12 = *(a1 + 80);
    v11 = *(a1 + 84);
    v22 = *(a1 + 40);
    v23 = v22;
    v24 = *(a1 + 72);
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v24, "AddSongsToMusicAudioCache", "", buf, 2u);
    }

    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __99__PGMusicAudioCacher__addSongsWithAdamIDs_toPlaylist_inLibrary_progressReporter_completionHandler___block_invoke_24(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) isCancelledWithProgress:1.0];
  v2 = mach_absolute_time();
  v3 = *(a1 + 56);
  v5 = *(a1 + 72);
  v4 = *(a1 + 76);
  v6 = *(a1 + 40);
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_END, v8, "AddSongsToMusicAudioCache", "", &v11, 2u);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "AddSongsToMusicAudioCache";
    v13 = 2048;
    v14 = ((((v2 - v3) * v5) / v4) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)songPropertiesByAdamIDCachedForPhotosWithError:(id *)error
{
  v54[12] = *MEMORY[0x277D85DE8];
  if (+[PGMusicCatalogMonitor canAccessMediaLibrary])
  {
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (photosMemoriesPlaylist)
    {
      v35 = defaultMediaLibrary;
      v6 = *MEMORY[0x277CD56D0];
      v54[0] = *MEMORY[0x277CD58B8];
      v54[1] = v6;
      v7 = *MEMORY[0x277CD56E8];
      v54[2] = *MEMORY[0x277CD57F0];
      v54[3] = v7;
      v8 = *MEMORY[0x277CD5748];
      v54[4] = *MEMORY[0x277CD57B8];
      v54[5] = v8;
      v9 = *MEMORY[0x277CD57A0];
      v54[6] = *MEMORY[0x277CD5790];
      v54[7] = v9;
      v10 = *MEMORY[0x277CD5760];
      v54[8] = *MEMORY[0x277CD5860];
      v54[9] = v10;
      v11 = *MEMORY[0x277CD5888];
      v54[10] = *MEMORY[0x277CD5738];
      v54[11] = v11;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:12];
      v34 = photosMemoriesPlaylist;
      items = [photosMemoriesPlaylist items];
      v38 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(items, "count")}];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = items;
      v41 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v41)
      {
        v40 = *v48;
        v39 = *MEMORY[0x277CD58A0];
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v48 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v47 + 1) + 8 * i);
            v15 = [v14 valueForProperty:v39];
            v16 = v15;
            if (v15)
            {
              v42 = v15;
              dictionary = [MEMORY[0x277CBEB38] dictionary];
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v46 = 0u;
              v18 = v37;
              v19 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v44;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v44 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v43 + 1) + 8 * j);
                    v24 = dictionary;
                    v25 = [v14 valueForProperty:v23];
                    if (v25)
                    {
                      [v24 setObject:v25 forKeyedSubscript:v23];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
                }

                while (v20);
              }

              existsInLibrary = [v14 existsInLibrary];
              v27 = [MEMORY[0x277CCABB0] numberWithBool:existsInLibrary];
              [dictionary setObject:v27 forKeyedSubscript:@"ExistsInLibrary"];

              persistentID = [v14 persistentID];
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:persistentID];
              [dictionary setObject:v29 forKeyedSubscript:@"PersistentID"];

              v16 = v42;
              stringValue = [v42 stringValue];
              [v38 setObject:dictionary forKeyedSubscript:stringValue];
            }
          }

          v41 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v41);
      }

      photosMemoriesPlaylist = v34;
      defaultMediaLibrary = v35;
    }

    else if (error)
    {
      [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      *error = v38 = 0;
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v31 = +[PGLogging memoriesMusicLogging];
    defaultMediaLibrary = [v31 loggingConnection];

    if (os_log_type_enabled(defaultMediaLibrary, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, defaultMediaLibrary, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so can not read properties of any cached songs.", buf, 2u);
    }

    v38 = MEMORY[0x277CBEC10];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (void)removeAllSongsCachedForPhotosWithProgressReporter:(id)reporter completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  handlerCopy = handler;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    defaultMediaLibrary = [PGError errorForCode:-4];
    handlerCopy[2](handlerCopy, 0, defaultMediaLibrary);
LABEL_19:

    goto LABEL_20;
  }

  if (+[PGMusicCatalogMonitor canAccessMediaLibrary])
  {
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (photosMemoriesPlaylist)
    {
      v9 = +[PGLogging memoriesMusicLogging];
      loggingConnection = [v9 loggingConnection];

      v11 = os_signpost_id_generate(loggingConnection);
      v12 = loggingConnection;
      v13 = v12;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RemoveAllSongsFromMusicAudioCache", "", buf, 2u);
      }

      info = 0;
      mach_timebase_info(&info);
      v14 = mach_absolute_time();
      [photosMemoriesPlaylist removeAllItems];
      v15 = mach_absolute_time();
      v16 = info;
      v17 = v13;
      v18 = v17;
      if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_END, v11, "RemoveAllSongsFromMusicAudioCache", "", buf, 2u);
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v24 = "RemoveAllSongsFromMusicAudioCache";
        v25 = 2048;
        v26 = ((((v15 - v14) * v16.numer) / v16.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
      [reporterCopy isCancelledWithProgress:1.0];
    }

    else
    {
      v18 = [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      handlerCopy[2](handlerCopy, 0, v18);
    }

    goto LABEL_19;
  }

  v19 = +[PGLogging memoriesMusicLogging];
  loggingConnection2 = [v19 loggingConnection];

  if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so will not remove all cached songs from Photos memories playlist.", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)removeSongsCachedForPhotosWithAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler
{
  v59 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  reporterCopy = reporter;
  handlerCopy = handler;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v11 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v11 loggingConnection];

    if (!+[PGMusicCatalogMonitor canAccessMediaLibrary])
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so will not remove input cached songs from Photos memories playlist.", buf, 2u);
      }

      handlerCopy[2](handlerCopy, 1, 0);
      goto LABEL_37;
    }

    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (!photosMemoriesPlaylist)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[MemoriesMusic] Failed to get photosMemoriesPlaylist from MediaLibrary", buf, 2u);
      }

      v34 = [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      (handlerCopy)[2](handlerCopy, 0, v34);
      goto LABEL_36;
    }

    v42 = defaultMediaLibrary;
    v43 = loggingConnection;
    v15 = loggingConnection;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v56 = [dsCopy count];
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher will remove %lu items from Photos playlist cache", buf, 0xCu);
    }

    v16 = v15;
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    v40 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RemoveSongsFromMusicAudioCache", "", buf, 2u);
    }

    spid = v17;
    v45 = v19;

    info = 0;
    mach_timebase_info(&info);
    v39 = mach_absolute_time();
    v44 = dsCopy;
    v20 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
    array = [MEMORY[0x277CBEB18] array];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v41 = photosMemoriesPlaylist;
    items = [photosMemoriesPlaylist items];
    if ([items count])
    {
      v23 = 0;
      v24 = *MEMORY[0x277CD58A0];
      do
      {
        v25 = [items objectAtIndexedSubscript:{v23, spid}];
        v26 = [v25 valueForProperty:v24];
        stringValue = [v26 stringValue];
        if (stringValue && [v20 containsObject:stringValue])
        {
          [array addObject:v25];
          [indexSet addIndex:v23];
        }

        ++v23;
      }

      while (v23 < [items count]);
    }

    if ([array count])
    {
      loggingConnection = v43;
      if (![reporterCopy isCancelledWithProgress:0.4])
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __95__PGMusicAudioCacher_removeSongsCachedForPhotosWithAdamIDs_progressReporter_completionHandler___block_invoke;
        v47[3] = &unk_278885398;
        v50 = handlerCopy;
        v48 = reporterCopy;
        v51 = v39;
        v53 = info;
        v49 = v45;
        v52 = spida;
        photosMemoriesPlaylist = v41;
        [v41 removeItems:array atFilteredIndexes:indexSet completionBlock:v47];

        defaultMediaLibrary = v42;
        goto LABEL_35;
      }

      v28 = [PGError errorForCode:-4];
      (handlerCopy)[2](handlerCopy, 0, v28);

      v29 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v32 = v45;
      v33 = v32;
      photosMemoriesPlaylist = v41;
      if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, spida, "RemoveSongsFromMusicAudioCache", "", buf, 2u);
      }

      defaultMediaLibrary = v42;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }
    }

    else
    {
      handlerCopy[2](handlerCopy, 1, 0);
      [reporterCopy isCancelledWithProgress:1.0];
      v29 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v35 = v45;
      v33 = v35;
      defaultMediaLibrary = v42;
      loggingConnection = v43;
      if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v33, OS_SIGNPOST_INTERVAL_END, spida, "RemoveSongsFromMusicAudioCache", "", buf, 2u);
      }

      photosMemoriesPlaylist = v41;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }
    }

    *buf = 136315394;
    v56 = "RemoveSongsFromMusicAudioCache";
    v57 = 2048;
    v58 = ((((v29 - v39) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
LABEL_35:

    dsCopy = v44;
    v34 = v45;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  v10 = [PGError errorForCode:-4];
  (handlerCopy)[2](handlerCopy, 0, v10);

LABEL_38:
  v36 = *MEMORY[0x277D85DE8];
}

void __95__PGMusicAudioCacher_removeSongsCachedForPhotosWithAdamIDs_progressReporter_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [PGError errorWithCode:-1 description:@"[MemoriesMusic] MPMediaPlaylist -removeItems:completionBlock: call failed"];
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) isCancelledWithProgress:1.0];
  v4 = mach_absolute_time();
  v5 = *(a1 + 56);
  v7 = *(a1 + 72);
  v6 = *(a1 + 76);
  v8 = *(a1 + 40);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_END, v10, "RemoveSongsFromMusicAudioCache", "", &v13, 2u);
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "RemoveSongsFromMusicAudioCache";
    v15 = 2048;
    v16 = ((((v4 - v5) * v7) / v6) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)cacheSongAudioForAdamIDs:(id)ds progressReporter:(id)reporter completionHandler:(id)handler
{
  dsCopy = ds;
  reporterCopy = reporter;
  handlerCopy = handler;
  if (+[PGMusicCatalogMonitor canAccessMediaLibrary])
  {
    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    photosMemoriesPlaylist = [defaultMediaLibrary photosMemoriesPlaylist];
    if (photosMemoriesPlaylist)
    {
      [self _addSongsWithAdamIDs:dsCopy toPlaylist:photosMemoriesPlaylist inLibrary:defaultMediaLibrary progressReporter:reporterCopy completionHandler:handlerCopy];
    }

    else
    {
      v15 = [PGError errorWithCode:-3 description:@"[MemoriesMusic] Photos playlist is missing"];
      handlerCopy[2](handlerCopy, 0, v15);
    }
  }

  else
  {
    v13 = +[PGLogging memoriesMusicLogging];
    loggingConnection = [v13 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v16[0] = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[MemoriesMusic] MusicAudioCacher does not have access to the MediaLibrary so will not cache songs in Photos memories playlist.", v16, 2u);
    }

    handlerCopy[2](handlerCopy, 1, 0);
  }
}

@end