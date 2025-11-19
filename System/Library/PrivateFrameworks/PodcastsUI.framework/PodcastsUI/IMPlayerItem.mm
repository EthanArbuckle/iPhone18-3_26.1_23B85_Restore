@interface IMPlayerItem
- (AVURLAsset)asset;
- (BOOL)hasChapterArtworkAtTime:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocal;
- (BOOL)isShareable;
- (BOOL)isStreamable;
- (BOOL)isVideo;
- (IMPlayerItem)init;
- (IMPlayerItem)initWithUrl:(id)a3;
- (IMPlayerManifest)manifest;
- (MPNowPlayingContentItem)contentItem;
- (NSArray)chapters;
- (NSArray)metadataChapters;
- (NSArray)timeChapters;
- (NSManagedObjectID)episodeObjectID;
- (double)duration;
- (id)chapterAtTime:(double)a3;
- (id)externalMetadata;
- (id)retrieveChapterArtworkAtTime:(double)a3;
- (id)streamUrl;
- (unint64_t)hash;
- (void)cleanupAfterError;
- (void)invalidateAsset;
- (void)loadChapters;
- (void)populateContentItem:(id)a3;
- (void)recreateContentItem;
- (void)reset;
- (void)retrieveArtwork:(id)a3 withSize:(CGSize)a4 atTime:(double)a5;
- (void)setAsset:(id)a3;
- (void)setEpisodeObjectID:(id)a3;
- (void)setInstanceIdentifier:(id)a3;
- (void)setPlayhead:(double)a3;
- (void)updateActivity:(id)a3;
- (void)updateTranscriptInformation:(id)a3 transcriptSource:(id)a4;
@end

@implementation IMPlayerItem

- (IMPlayerItem)initWithUrl:(id)a3
{
  v5 = a3;
  v6 = [(IMPlayerItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v7->_objectIDLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (IMPlayerItem)init
{
  v9.receiver = self;
  v9.super_class = IMPlayerItem;
  v2 = [(IMPlayerItem *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_duration = 0.0;
    v2->_playhead = 0.0;
    v4 = dispatch_queue_create("com.apple.podcasts.playerItem.chapterLoadingQueue", 0);
    chapterLoadingQueue = v3->_chapterLoadingQueue;
    v3->_chapterLoadingQueue = v4;

    v6 = [MEMORY[0x277CCAD78] UUID];
    instanceIdentifier = v3->_instanceIdentifier;
    v3->_instanceIdentifier = v6;

    [(IMPlayerItem *)v3 setAreChaptersLoaded:0];
  }

  return v3;
}

- (void)cleanupAfterError
{
  if ([(IMPlayerItem *)self isAssetLoaded])
  {
    v3 = [(IMPlayerItem *)self asset];
    v6 = [v3 cacheKey];

    v4 = [(IMPlayerItem *)self asset];
    v5 = [v4 assetCache];

    if (v6)
    {
      NSClassFromString(&cfstr_Avmanagedasset.isa);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v5 removeEntryForKey:v6];
      }
    }

    [(IMPlayerItem *)self invalidateAsset];
  }
}

- (void)reset
{
  v4 = [(AVURLAsset *)self->_asset URL];
  v3 = [(IMPlayerItem *)self createAssetForUrl:v4];
  [(IMPlayerItem *)self setAsset:v3];
}

- (void)setInstanceIdentifier:(id)a3
{
  objc_storeStrong(&self->_instanceIdentifier, a3);

  [(IMPlayerItem *)self setContentItem:0];
}

- (unint64_t)hash
{
  v2 = [(IMPlayerItem *)self instanceIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 instanceIdentifier];
    v6 = [(IMPlayerItem *)self instanceIdentifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVURLAsset)asset
{
  asset = self->_asset;
  if (!asset)
  {
    v4 = [(IMPlayerItem *)self createAssetForUrl:self->_url];
    [(IMPlayerItem *)self setAsset:v4];

    asset = self->_asset;
  }

  return asset;
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  asset = self->_asset;
  p_asset = &self->_asset;
  v8 = v5;
  if (([v5 isEqual:asset] & 1) == 0)
  {
    objc_storeStrong(p_asset, a3);
  }
}

- (double)duration
{
  if (!self->_asset)
  {
    return self->_duration;
  }

  v3 = [(IMPlayerItem *)self asset];
  v4 = [v3 statusOfValueForKey:@"duration" error:0];

  if (v4 != 2)
  {
    return self->_duration;
  }

  v5 = [(IMPlayerItem *)self asset];
  v6 = v5;
  if (v5)
  {
    [v5 duration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);

  return Seconds;
}

- (void)setPlayhead:(double)a3
{
  self->_playhead = a3;
  v5 = [(IMPlayerItem *)self manifest];
  v4 = [v5 activity];
  [(IMPlayerItem *)self updateActivity:v4];
}

- (void)invalidateAsset
{
  [(AVURLAsset *)self->_asset cancelLoading];
  asset = self->_asset;
  self->_asset = 0;
}

- (BOOL)isVideo
{
  if (self->_asset && (-[IMPlayerItem asset](self, "asset"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 statusOfValueForKey:@"tracks" error:0], v3, v4 == 2))
  {
    v5 = [(IMPlayerItem *)self asset];
    v6 = [v5 tracksWithMediaCharacteristic:*MEMORY[0x277CE5E40]];

    if ([v6 count])
    {
      video = self->_video;
    }

    else
    {
      video = 0;
    }
  }

  else
  {
    return self->_video;
  }

  return video;
}

- (BOOL)isLocal
{
  v2 = [(IMPlayerItem *)self url];
  if ([v2 isFileURL])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 scheme];
    v3 = [v4 isEqualToString:@"ipod-library"];
  }

  return v3;
}

- (BOOL)isShareable
{
  v3 = [(IMPlayerItem *)self episode];
  if ([v3 isShareable])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(IMPlayerItem *)self episodeShareUrl];
    if (v5)
    {
      v4 = 1;
    }

    else
    {
      v6 = [(IMPlayerItem *)self podcastFeedUrl];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (BOOL)isStreamable
{
  v2 = [MEMORY[0x277D3DB48] validatedIdNumberFromStoreId:{-[IMPlayerItem episodeStoreId](self, "episodeStoreId")}];
  v3 = v2 != 0;

  return v3;
}

- (id)streamUrl
{
  if ([(IMPlayerItem *)self isLocal])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = [(IMPlayerItem *)self episode];
    v3 = v15[5];
    if (v3)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = __Block_byref_object_copy__2;
      v12 = __Block_byref_object_dispose__2;
      v13 = 0;
      v4 = [v3 managedObjectContext];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __25__IMPlayerItem_streamUrl__block_invoke;
      v7[3] = &unk_2782BE1B8;
      v7[4] = &v14;
      v7[5] = &v8;
      [v4 performBlockAndWait:v7];
      v5 = v9[5];

      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v5 = [(IMPlayerItem *)self url];
  }

  return v5;
}

void __25__IMPlayerItem_streamUrl__block_invoke(uint64_t a1)
{
  if (([*(*(*(a1 + 32) + 8) + 40) feedDeleted] & 1) == 0)
  {
    v5 = [*(*(*(a1 + 32) + 8) + 40) enclosureURL];
    if ([v5 length])
    {
      v2 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      v3 = *(*(a1 + 40) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }
  }
}

- (id)externalMetadata
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(IMPlayerItem *)self title];
  if ([v4 length])
  {
    v5 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v5 setIdentifier:*MEMORY[0x277CE5EF0]];
    [v5 setExtendedLanguageTag:@"und"];
    [v5 setValue:v4];
    [v3 addObject:v5];
  }

  v6 = [(IMPlayerItem *)self author];
  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x277CE6558]);
    [v7 setIdentifier:*MEMORY[0x277CE5F90]];
    [v7 setExtendedLanguageTag:@"und"];
    [v7 setValue:v6];
    [v3 addObject:v7];
  }

  return v3;
}

- (MPNowPlayingContentItem)contentItem
{
  contentItem = self->_contentItem;
  if (!contentItem)
  {
    [(IMPlayerItem *)self recreateContentItem];
    contentItem = self->_contentItem;
  }

  return contentItem;
}

- (void)recreateContentItem
{
  v3 = objc_alloc(MEMORY[0x277CD5FE0]);
  v4 = [(IMPlayerItem *)self contentItemIdentifier];
  v5 = [v3 initWithIdentifier:v4];
  contentItem = self->_contentItem;
  self->_contentItem = v5;

  [(IMPlayerItem *)self updateContentItem];
}

- (void)setEpisodeObjectID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_objectIDLock);
  episodeObjectID = self->_episodeObjectID;
  self->_episodeObjectID = v4;

  os_unfair_lock_unlock(&self->_objectIDLock);
}

- (NSManagedObjectID)episodeObjectID
{
  os_unfair_lock_lock(&self->_objectIDLock);
  v3 = self->_episodeObjectID;
  os_unfair_lock_unlock(&self->_objectIDLock);

  return v3;
}

- (void)updateActivity:(id)a3
{
  v8 = a3;
  v4 = [(IMPlayerItem *)self title];
  [v8 setTitle:v4];

  v5 = [(IMPlayerItem *)self album];
  [v8 _setSubtitle:v5];

  v6 = [(IMPlayerItem *)self title];
  [v8 setItemTitle:v6];

  v7 = [(IMPlayerItem *)self album];
  [v8 setContainerTitle:v7];

  [(IMPlayerItem *)self playhead];
  [v8 setCurrentTime:?];
}

- (BOOL)hasChapterArtworkAtTime:(double)a3
{
  v3 = [(IMPlayerItem *)self chapterAtTime:a3];
  v4 = [v3 artworkData];
  v5 = v4 != 0;

  return v5;
}

- (id)retrieveChapterArtworkAtTime:(double)a3
{
  v3 = [(IMPlayerItem *)self chapterAtTime:a3];
  v4 = [v3 artwork];

  return v4;
}

- (void)retrieveArtwork:(id)a3 withSize:(CGSize)a4 atTime:(double)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(IMPlayerItem *)self retrieveChapterArtworkAtTime:a5];
  v11 = v10;
  if (v10)
  {
    v9[2](v9, v10);
  }

  else
  {
    [(IMPlayerItem *)self retrieveArtwork:v9 withSize:width, height];
  }
}

- (id)chapterAtTime:(double)a3
{
  v5 = [(IMPlayerItem *)self metadataChapters];

  if (v5 && (-[IMPlayerItem metadataChapters](self, "metadataChapters"), v6 = objc_claimAutoreleasedReturnValue(), v11[0] = MEMORY[0x277D85DD0], v11[1] = 3221225472, v11[2] = __30__IMPlayerItem_chapterAtTime___block_invoke, v11[3] = &__block_descriptor_40_e36_B32__0__IMPlayerChapterInfo_8Q16_B24l, *&v11[4] = a3, v7 = [v6 indexOfObjectPassingTest:v11], v6, v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = [(IMPlayerItem *)self metadataChapters];
    v8 = [v9 objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL __30__IMPlayerItem_chapterAtTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 time];
  v10 = 0;
  if (v4 >= v5)
  {
    v6 = *(a1 + 32);
    [v3 time];
    v8 = v7;
    [v3 duration];
    if (v6 < v8 + v9 && [v3 metadataType] == 3)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (NSArray)chapters
{
  if (![(IMPlayerItem *)self areChaptersLoaded]&& [(IMPlayerItem *)self isAssetLoaded])
  {
    [(IMPlayerItem *)self loadChapters];
  }

  chapters = self->_chapters;

  return chapters;
}

- (NSArray)timeChapters
{
  v2 = [(IMPlayerItem *)self chapters];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_2];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (NSArray)metadataChapters
{
  v2 = [(IMPlayerItem *)self chapters];
  v3 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_37];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (void)loadChapters
{
  if (![(IMPlayerItem *)self areChaptersLoaded]&& ![(IMPlayerItem *)self areChaptersLoading])
  {
    v3 = [(IMPlayerItem *)self url];
    v4 = [v3 pathExtension];
    v5 = [v4 lowercaseString];

    if ([&unk_282CCBC40 containsObject:v5])
    {
      [(IMPlayerItem *)self setAreChaptersLoading:1];
      v6 = [(IMPlayerItem *)self asset];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __28__IMPlayerItem_loadChapters__block_invoke;
      v8[3] = &unk_2782BDD68;
      v9 = v6;
      v10 = self;
      v7 = v6;
      [v7 loadValuesAsynchronouslyForKeys:&unk_282CCBC58 completionHandler:v8];
    }
  }
}

void __28__IMPlayerItem_loadChapters__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v63 = 0;
  v2 = [v1 statusOfValueForKey:@"availableChapterLocales" error:&v63];
  v33 = v63;
  if (v2 == 2)
  {
    v31 = [*(a1 + 32) availableChapterLocales];
    if ([v31 count])
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = __Block_byref_object_copy__2;
      v61 = __Block_byref_object_dispose__2;
      v62 = 0;
      v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __28__IMPlayerItem_loadChapters__block_invoke_2;
      v54[3] = &unk_2782BE220;
      v4 = v31;
      v55 = v4;
      v56 = &v57;
      [v3 enumerateObjectsUsingBlock:v54];

      if (!v58[5])
      {
        if ([v4 count])
        {
          [v4 firstObject];
        }

        else
        {
          [MEMORY[0x277CBEAF8] currentLocale];
        }
        v5 = ;
        v12 = v58[5];
        v58[5] = v5;
      }

      v13 = objc_alloc(MEMORY[0x277CBEA60]);
      v14 = [v13 initWithObjects:{*MEMORY[0x277CE5F28], *MEMORY[0x277CE5F10], 0}];
      v15 = [*(a1 + 40) asset];
      v16 = [v15 chapterMetadataGroupsWithTitleLocale:v58[5] containingItemsWithCommonKeys:v14];

      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = dispatch_group_create();
      v38 = dispatch_queue_create("com.apple.podcasts.playeritemchapters", 0);
      v19 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"commonKey", @"extraAttributes", @"value", @"time", @"duration", 0}];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v16;
      v20 = [obj countByEnumeratingWithState:&v50 objects:v65 count:16];
      if (v20)
      {
        v35 = *v51;
        do
        {
          v21 = 0;
          v36 = v20;
          do
          {
            if (*v51 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v50 + 1) + 8 * v21);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v23 = [v22 items];
            v24 = [v23 countByEnumeratingWithState:&v46 objects:v64 count:16];
            v37 = v21;
            if (v24)
            {
              v25 = *v47;
              do
              {
                v26 = 0;
                do
                {
                  if (*v47 != v25)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v27 = *(*(&v46 + 1) + 8 * v26);
                  dispatch_group_enter(v18);
                  v42[0] = MEMORY[0x277D85DD0];
                  v42[1] = 3221225472;
                  v42[2] = __28__IMPlayerItem_loadChapters__block_invoke_3;
                  v42[3] = &unk_2782BE270;
                  v42[4] = v27;
                  v42[5] = v22;
                  v43 = v38;
                  v44 = v17;
                  v45 = v18;
                  [v27 loadValuesAsynchronouslyForKeys:v19 completionHandler:v42];

                  ++v26;
                }

                while (v24 != v26);
                v24 = [v23 countByEnumeratingWithState:&v46 objects:v64 count:16];
              }

              while (v24);
            }

            v21 = v37 + 1;
          }

          while (v37 + 1 != v36);
          v20 = [obj countByEnumeratingWithState:&v50 objects:v65 count:16];
        }

        while (v20);
      }

      v28 = [*(a1 + 40) chapterLoadingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__IMPlayerItem_loadChapters__block_invoke_5;
      block[3] = &unk_2782BDD68;
      v29 = *(a1 + 40);
      v40 = v17;
      v41 = v29;
      v30 = v17;
      dispatch_group_notify(v18, v28, block);

      _Block_object_dispose(&v57, 8);
    }
  }

  else
  {
    v6 = [MEMORY[0x277D3DA90] sharedLogger];
    [v6 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/AV/NowPlaying/Models/IMPlayerItem.m" lineNumber:530 format:{@"Unable to load availableChapterLocales with status: %ld", v2}];

    if (v33)
    {
      v7 = [MEMORY[0x277D3DA90] sharedLogger];
      v8 = [v33 code];
      v9 = [v33 domain];
      v10 = [v33 userInfo];
      v11 = [v10 description];
      [v7 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/AV/NowPlaying/Models/IMPlayerItem.m" lineNumber:532 format:{@"Error: [%ld %@] %@", v8, v9, v11}];
    }

    [*(a1 + 40) setAreChaptersLoading:0];
  }
}

void __28__IMPlayerItem_loadChapters__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277CBEAF8];
  v7 = a2;
  obj = [[v6 alloc] initWithLocaleIdentifier:v7];

  if ([*(a1 + 32) containsObject:obj])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a4 = 1;
  }
}

void __28__IMPlayerItem_loadChapters__block_invoke_3(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = [*(a1 + 32) commonKey];
  v5 = [v4 isEqualToString:*MEMORY[0x277CE5F28]];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 extraAttributes];
    v8 = [v7 objectForKey:@"HREF"];

    [v3 setType:1];
    if (v8)
    {
      [v3 setMetadataType:2];
      v9 = [*(a1 + 32) extraAttributes];
      v10 = [v9 objectForKey:@"HREF"];

      v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
      [v3 setExternalURL:v11];

      v12 = [*(a1 + 32) stringValue];
      v13 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v14 = [v12 stringByTrimmingCharactersInSet:v13];

      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      [v3 setTitle:v15];
    }

    else
    {
      [v3 setMetadataType:1];
      v10 = [*(a1 + 32) stringValue];
      v18 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v19 = [v10 stringByTrimmingCharactersInSet:v18];
      [v3 setTitle:v19];
    }
  }

  else
  {
    v16 = [v6 commonKey];
    v17 = [v16 isEqualToString:*MEMORY[0x277CE5F10]];

    if (!v17)
    {
      goto LABEL_16;
    }

    [v3 setType:1];
    [v3 setMetadataType:3];
    v10 = [*(a1 + 32) dataValue];
    [v3 setArtworkData:v10];
  }

  memset(v37, 0, sizeof(v37));
  v36 = 0u;
  v20 = *(a1 + 40);
  if (v20)
  {
    [v20 timeRange];
  }

  time = *(v37 + 8);
  v34 = v36;
  v35 = *&v37[0];
  [v3 setDuration:CMTimeGetSeconds(&time)];
  [v3 duration];
  if (v21 >= 0.05)
  {
    if ([v3 metadataType] != 1 || (objc_msgSend(v3, "title"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "length"), v22, v23))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__IMPlayerItem_loadChapters__block_invoke_4;
      block[3] = &unk_2782BE248;
      v24 = *(a1 + 48);
      v26 = *(a1 + 56);
      v27 = v3;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v31 = v37[0];
      v32 = v37[1];
      dispatch_sync(v24, block);
    }
  }

LABEL_16:
  dispatch_group_leave(*(a1 + 64));

  objc_autoreleasePoolPop(v2);
}

uint64_t __28__IMPlayerItem_loadChapters__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v8 = *(a1 + 48);
    *&v9 = *(a1 + 64);
    [v3 setTime:CMTimeGetSeconds(&v8)];
    v4 = *(a1 + 40);
    v5 = *(a1 + 88);
    v8 = *(a1 + 72);
    v9 = v5;
    v10 = *(a1 + 104);
    [v4 setMediaTimeRange:&v8];
    v6 = *(a1 + 40);
    v7 = *(a1 + 88);
    v8 = *(a1 + 72);
    v9 = v7;
    v10 = *(a1 + 104);
    [v6 setAssetTimeRange:&v8];
    return [*(a1 + 32) addObject:*(a1 + 40)];
  }

  return result;
}

void __28__IMPlayerItem_loadChapters__block_invoke_5(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"metadataType=%d", 1];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_84];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v48;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      v11 = v8;
      if (*v48 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v47 + 1) + 8 * i);
      v8 = objc_opt_new();
      [*(a1 + 32) addObject:v8];
      [v8 setType:0];
      [v12 time];
      [v8 setTime:?];
      [v12 duration];
      [v8 setDuration:?];
      if (v12)
      {
        [v12 mediaTimeRange];
        lhs[0] = lhs[1];
        [v8 setMediaTimeRange:lhs];
        [v12 assetTimeRange];
      }

      else
      {
        memset(lhs, 0, sizeof(lhs));
        [v8 setMediaTimeRange:lhs];
        memset(&v45, 0, sizeof(v45));
      }

      lhs[0] = v45;
      [v8 setAssetTimeRange:lhs];
      v13 = [v12 title];
      [v8 setTitle:v13];

      if (v11)
      {
        memset(&start, 0, sizeof(start));
        if (v12)
        {
          [v12 mediaTimeRange];
        }

        else
        {
          v35 = 0u;
          v36 = 0u;
          v34 = 0u;
        }

        *&lhs[0].start.value = v34;
        lhs[0].start.epoch = v35;
        [v11 mediaTimeRange];
        rhs = v33;
        CMTimeSubtract(&start, &lhs[0].start, &rhs);
        lhs[0].start = start;
        [v11 setDuration:CMTimeGetSeconds(&lhs[0].start)];
        [v11 mediaTimeRange];
        *&lhs[0].start.value = v30;
        lhs[0].start.epoch = v31;
        rhs = start;
        CMTimeRangeMake(&v32, &lhs[0].start, &rhs);
        lhs[0] = v32;
        [v11 setAssetTimeRange:lhs];
        lhs[0] = v32;
        v18 = v11;
      }

      else
      {
        [v8 time];
        if (v14 == 0.0)
        {
          goto LABEL_20;
        }

        [v8 time];
        v16 = v15;
        [v8 duration];
        [v8 setDuration:v16 + v17];
        [v8 setTime:0.0];
        if (v8)
        {
          [v8 mediaTimeRange];
          start = *&v42[1];
          [v8 mediaTimeRange];
        }

        else
        {
          memset(v42, 0, sizeof(v42));
          v41 = 0u;
          *&start.value = *&v42[1];
          start.epoch = 0;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
        }

        *&rhs.value = v37;
        rhs.epoch = v38;
        CMTimeAdd(&lhs[0].start, &start, &rhs);
        start = **&MEMORY[0x277CC08F0];
        CMTimeRangeMake(&v44, &start, &lhs[0].start);
        lhs[0] = v44;
        [v8 setAssetTimeRange:lhs];
        lhs[0] = v44;
        v18 = v8;
      }

      [v18 setMediaTimeRange:lhs];
LABEL_20:
    }

    v7 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v7);
LABEL_24:

  memset(&start, 0, sizeof(start));
  [*(a1 + 40) duration];
  CMTimeMakeWithSeconds(&lhs[0].start, v19, 1);
  if (v8)
  {
    [v8 mediaTimeRange];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
  }

  *&rhs.value = v27;
  rhs.epoch = v28;
  CMTimeSubtract(&start, &lhs[0].start, &rhs);
  lhs[0].start = start;
  [v8 setDuration:CMTimeGetSeconds(&lhs[0].start)];
  if (v8)
  {
    [v8 mediaTimeRange];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
  }

  *&lhs[0].start.value = v23;
  lhs[0].start.epoch = v24;
  rhs = start;
  CMTimeRangeMake(&v26, &lhs[0].start, &rhs);
  lhs[0] = v26;
  [v8 setAssetTimeRange:lhs];
  lhs[0] = v26;
  [v8 setMediaTimeRange:lhs];
  v20 = [*(a1 + 32) sortedArrayUsingComparator:&__block_literal_global_86];
  [*(a1 + 40) setChapters:v20];

  [*(a1 + 40) setAreChaptersLoading:0];
  [*(a1 + 40) setAreChaptersLoaded:1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__IMPlayerItem_loadChapters__block_invoke_8;
  block[3] = &unk_2782BDD90;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __28__IMPlayerItem_loadChapters__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 time];
  v7 = v6;
  [v5 time];
  if (v7 >= v8)
  {
    [v4 time];
    v11 = v10;
    [v5 time];
    v9 = v11 > v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

uint64_t __28__IMPlayerItem_loadChapters__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    [v4 mediaTimeRange];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&time1.value = v10;
  time1.epoch = v11;
  if (v5)
  {
    [v5 mediaTimeRange];
  }

  else
  {
    memset(&v8[4], 0, sizeof(CMTime));
  }

  time2 = v8[4];
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v6 = -1;
  }

  else
  {
    if (v4)
    {
      [v4 mediaTimeRange];
    }

    else
    {
      memset(&v8[2], 0, sizeof(CMTime));
    }

    time1 = v8[2];
    if (v5)
    {
      [v5 mediaTimeRange];
    }

    else
    {
      memset(v8, 0, 24);
    }

    time2 = v8[0];
    v6 = CMTimeCompare(&time1, &time2) > 0;
  }

  return v6;
}

void __28__IMPlayerItem_loadChapters__block_invoke_8(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"IMMediaItemDidLoadChaptersNotification" object:*(a1 + 32)];
}

- (void)updateTranscriptInformation:(id)a3 transcriptSource:(id)a4
{
  objc_storeStrong(&self->_transcriptIdentifier, a3);
  v7 = a3;
  v8 = a4;
  v9 = [(MPNowPlayingContentItem *)self->_contentItem userInfo];
  v10 = [v9 mutableCopy];

  [v10 setObject:self->_transcriptIdentifier forKeyedSubscript:*MEMORY[0x277CD5C88]];
  [v10 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD5C90]];

  [(MPNowPlayingContentItem *)self->_contentItem setUserInfo:v10];
}

- (IMPlayerManifest)manifest
{
  WeakRetained = objc_loadWeakRetained(&self->_manifest);

  return WeakRetained;
}

- (void)populateContentItem:(id)a3
{
  v4 = a3;
  v5 = self;
  IMPlayerItem.populateContentItem(_:)(v4);
}

@end