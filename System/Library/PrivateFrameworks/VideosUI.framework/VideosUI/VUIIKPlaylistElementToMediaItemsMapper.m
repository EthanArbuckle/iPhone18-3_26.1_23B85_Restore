@interface VUIIKPlaylistElementToMediaItemsMapper
- (BOOL)_shouldDisableResumeMenuForAsset:(id)a3;
- (VUIIKPlaylistElementToMediaItemsMapper)init;
- (id)_clipMediaItemsMediaItem:(id)a3 fromTimelineElement:(id)a4;
- (id)_createClipMediaItemsIfTimeExists:(id)a3 fromMediaElement:(id)a4;
- (id)_storeAuxMediaItemForIKMediaElement:(id)a3 isExtrasContent:(BOOL)a4;
- (id)_storeMediaItemsForAdamID:(int64_t)a3 IKMediaElement:(id)a4;
- (id)playlistForIKMediaElements:(id)a3 withMediaItem:(id)a4 isExtrasContent:(BOOL)a5;
- (void)_populateMediaItem:(id)a3 withMetadatafromRelatedContentElement:(id)a4;
- (void)_populateMediaItem:(id)a3 withMetadatafromTimelineEventElement:(id)a4;
- (void)_populateMediaItem:(id)a3 withMetadatafromVideoElement:(id)a4;
@end

@implementation VUIIKPlaylistElementToMediaItemsMapper

- (VUIIKPlaylistElementToMediaItemsMapper)init
{
  v3.receiver = self;
  v3.super_class = VUIIKPlaylistElementToMediaItemsMapper;
  result = [(VUIIKPlaylistElementToMediaItemsMapper *)&v3 init];
  if (result)
  {
    result->_resumeMenuBehavior = 1;
  }

  return result;
}

- (BOOL)_shouldDisableResumeMenuForAsset:(id)a3
{
  v4 = a3;
  if ([(VUIIKPlaylistElementToMediaItemsMapper *)self resumeMenuBehavior])
  {
    v5 = [v4 vui_disableResumeMenu];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)playlistForIKMediaElements:(id)a3 withMediaItem:(id)a4 isExtrasContent:(BOOL)a5
{
  v30 = a5;
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v15 = [v14 assets];
        v16 = [v15 firstObject];

        v17 = [v16 adamID];
        v18 = [v17 longLongValue];

        if (v18 || ([v16 vui_rentalAdamIDString], v19 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v19, "longLongValue"), v19, v18))
        {
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v20 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _createClipMediaItemsIfTimeExists:v8 fromMediaElement:v14];
          }

          else
          {
            v20 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _storeMediaItemsForAdamID:v18 IKMediaElement:v14];
          }

          v21 = v20;
          if ([v20 count])
          {
            [v9 addObjectsFromArray:v21];
          }
        }

        else
        {
          v22 = [v16 vui_persistentID];
          v23 = [v22 longLongValue];

          if (v23)
          {
            v24 = MEMORY[0x1E69705D0];
            v25 = [MEMORY[0x1E696AD98] numberWithLongLong:v23];
            v21 = [v24 vui_mediaItemForPersistentIdentifier:v25];

            v26 = [[VUILibraryMediaItem_iOS alloc] initWithMPMediaItem:v21];
            [v9 addObject:v26];
          }

          else
          {
            v21 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _storeAuxMediaItemForIKMediaElement:v14 isExtrasContent:v30];
            if (v21)
            {
              [v9 addObject:v21];
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v27 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v11 = v27;
    }

    while (v27);
  }

  v28 = [objc_alloc(MEMORY[0x1E69D5A58]) initWithMediaItems:v9 index:0 isCollection:0];

  return v28;
}

- (id)_storeMediaItemsForAdamID:(int64_t)a3 IKMediaElement:(id)a4
{
  v6 = a4;
  v7 = [v6 assets];
  v8 = [v7 firstObject];

  v9 = [[VUIStoreMediaItem_iOS alloc] initWithAdamID:a3 videoManagedObject:0 isForStartingDownload:0];
  v10 = [v8 vui_fpsCertificateURL];
  [(VUIStoreMediaItem_iOS *)v9 setFpsCertificateURL:v10];

  v11 = [v8 vui_fpsKeyServerURL];
  [(VUIStoreMediaItem_iOS *)v9 setFpsKeyServerURL:v11];

  v12 = [(VUIStoreMediaItem_iOS *)v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v13 = +[VUIMetricsController sharedInstance];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v15 = [v13 iTunesLibraryPlaybackMediaMetricsForAdamID:v14 mediaType:v12];

  [(VUIStoreMediaItem_iOS *)v9 setMediaItemMetadata:v15 forProperty:*MEMORY[0x1E69D5C70]];
  v16 = +[VUIMetricsController sharedInstance];
  v17 = [v16 iTunesVPAF];
  [(VUIStoreMediaItem_iOS *)v9 setMediaItemMetadata:v17 forProperty:*MEMORY[0x1E69D5DE0]];

  v18 = [v8 vui_resumeTime];
  if (v18)
  {
    v19 = [VUIMediaStartTimeInfo alloc];
    v20 = [MEMORY[0x1E695DF00] date];
    v21 = [(VUIMediaStartTimeInfo *)v19 initWithStartTime:v18 timestamp:v20 type:0 source:@"ITML/XML"];

    v22 = [(VUIBaseMediaItem *)v9 startTimeCollection];
    [v22 addStartTimeInfo:v21];
  }

  if ([v8 vui_disableLocalAsset])
  {
    [(VUIStoreMediaItem_iOS *)v9 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E69D5BD0]];
  }

  v23 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _createClipMediaItemsIfTimeExists:v9 fromMediaElement:v6];

  return v23;
}

- (id)_storeAuxMediaItemForIKMediaElement:(id)a3 isExtrasContent:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 assets];
  v7 = [v6 firstObject];

  v8 = [VUIStoreAuxMediaItem alloc];
  v9 = [v7 url];
  v10 = [(VUIStoreAuxMediaItem *)v8 initWithURL:v9];

  v11 = [v7 vui_fpsCertificateURL];
  [(VUIStoreAuxMediaItem *)v10 setFpsCertificateURL:v11];

  v12 = [v7 vui_fpsKeyServerURL];
  [(VUIStoreAuxMediaItem *)v10 setFpsKeyServerURL:v12];

  objc_opt_class();
  [(VUIStoreAuxMediaItem *)v10 setIsAudioOnly:objc_opt_isKindOfClass() & 1];
  v13 = [v7 bookmarkID];
  [(VUIStoreAuxMediaItem *)v10 setBookmarkID:v13];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__VUIIKPlaylistElementToMediaItemsMapper__storeAuxMediaItemForIKMediaElement_isExtrasContent___block_invoke;
  v20[3] = &unk_1E872E980;
  v14 = v10;
  v21 = v14;
  v22 = v7;
  v23 = v5;
  v24 = a4;
  v15 = v5;
  v16 = v7;
  [(TVPBaseMediaItem *)v14 performMediaItemMetadataTransactionWithBlock:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

void __94__VUIIKPlaylistElementToMediaItemsMapper__storeAuxMediaItemForIKMediaElement_isExtrasContent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69D5920] activeAccount];
  v4 = [v3 ams_DSID];
  [v2 setMediaItemMetadata:v4 forProperty:*MEMORY[0x1E69D5B30]];

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) adamID];
  [v5 setMediaItemMetadata:v6 forProperty:*MEMORY[0x1E69D5DA8]];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) externalID];
  [v7 setMediaItemMetadata:v8 forProperty:*MEMORY[0x1E69D5B98]];

  v9 = *(a1 + 32);
  v10 = [*(a1 + 48) vui_title];
  [v9 setMediaItemMetadata:v10 forProperty:*MEMORY[0x1E69D5DC0]];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 48) vui_imageURL];
  v13 = [v12 absoluteString];
  [v11 setMediaItemMetadata:v13 forProperty:*MEMORY[0x1E69D5AC0]];

  v14 = *(a1 + 32);
  v15 = [*(a1 + 48) vui_description];
  [v14 setMediaItemMetadata:v15 forProperty:*MEMORY[0x1E69D5C58]];

  v21 = [*(a1 + 40) serviceID];
  if (![(__CFString *)v21 length]&& *(a1 + 56) == 1)
  {

    v21 = @"com.apple.itunes.extras";
  }

  [*(a1 + 32) setMediaItemMetadata:v21 forProperty:*MEMORY[0x1E69D5D40]];
  v16 = [*(a1 + 40) vui_resumeTime];
  if (v16)
  {
    v17 = [VUIMediaStartTimeInfo alloc];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = [(VUIMediaStartTimeInfo *)v17 initWithStartTime:v16 timestamp:v18 type:0 source:@"ITML/XML"];

    v20 = [*(a1 + 32) startTimeCollection];
    [v20 addStartTimeInfo:v19];
  }
}

- (id)_createClipMediaItemsIfTimeExists:(id)a3 fromMediaElement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 timelines];
    v10 = [v9 firstObject];

    if (v10)
    {
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 setBookmarkDisabled:1];
        }
      }

      v11 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _clipMediaItemsMediaItem:v6 fromTimelineElement:v10];
      if ([v11 count])
      {
        [v8 addObjectsFromArray:v11];
      }
    }

    else
    {
      [v8 addObject:v6];
    }
  }

  return v8;
}

- (id)_clipMediaItemsMediaItem:(id)a3 fromTimelineElement:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 events];
  v9 = [v8 count];

  if (v9)
  {
    v10 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v7;
    obj = [v7 events];
    v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          [v15 offset];
          v17 = v16;
          [v15 duration];
          v19 = v18;
          v20 = objc_alloc(MEMORY[0x1E69D59F8]);
          v21 = [objc_alloc(MEMORY[0x1E69D5A68]) initWithStartTime:v17 duration:v19];
          v22 = [v20 initWithMediaItem:v6 clipTimeRange:v21];

          [(VUIIKPlaylistElementToMediaItemsMapper *)self _populateMediaItem:v22 withMetadatafromTimelineEventElement:v15];
          [v10 addObject:v22];
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v7 = v24;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_populateMediaItem:(id)a3 withMetadatafromVideoElement:(id)a4
{
  v6 = a3;
  v7 = [a4 relatedContent];
  [(VUIIKPlaylistElementToMediaItemsMapper *)self _populateMediaItem:v6 withMetadatafromRelatedContentElement:v7];
}

- (void)_populateMediaItem:(id)a3 withMetadatafromTimelineEventElement:(id)a4
{
  v6 = a3;
  v7 = [a4 relatedContent];
  [(VUIIKPlaylistElementToMediaItemsMapper *)self _populateMediaItem:v6 withMetadatafromRelatedContentElement:v7];
}

- (void)_populateMediaItem:(id)a3 withMetadatafromRelatedContentElement:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v47 = v5;
  isKindOfClass = objc_opt_isKindOfClass();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v36 = v6;
  obj = [v6 children];
  v8 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    v11 = *MEMORY[0x1E69A86E8];
    v12 = *MEMORY[0x1E69A8798];
    v46 = *MEMORY[0x1E69A8680];
    v44 = *MEMORY[0x1E69A86C0];
    v42 = *MEMORY[0x1E69D5AC0];
    v43 = *MEMORY[0x1E69D5C58];
    v45 = *MEMORY[0x1E69D5DC0];
    v37 = *MEMORY[0x1E69A86E8];
    v38 = *v53;
    do
    {
      v13 = 0;
      v39 = v9;
      do
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * v13);
        v15 = [v14 elementName];
        v16 = [v15 isEqualToString:v11];

        if (v16)
        {
          v41 = v13;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v17 = [v14 children];
          v18 = [v17 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (!v18)
          {
            goto LABEL_25;
          }

          v19 = v18;
          v20 = *v49;
          while (1)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v49 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v48 + 1) + 8 * i);
              v23 = [v22 elementName];
              v24 = [v23 isEqualToString:v12];

              if (v24)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                v25 = [v22 text];
                v26 = [v25 string];

                v27 = v47;
                v28 = v26;
                v29 = v45;
                goto LABEL_15;
              }

              if (isKindOfClass)
              {
                v30 = [v22 elementName];
                v31 = [v30 isEqualToString:v46];

                if (v31)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v32 = [v22 text];
                    v26 = [v32 string];

                    v27 = v47;
                    v28 = v26;
                    v29 = v43;
LABEL_15:
                    [v27 setMediaItemMetadata:v28 forProperty:v29];

                    continue;
                  }
                }

                else
                {
                  v33 = [v22 elementName];
                  v34 = [v33 isEqualToString:v44];

                  if (v34)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v35 = [v22 url];
                      v26 = [v35 absoluteString];

                      v27 = v47;
                      v28 = v26;
                      v29 = v42;
                      goto LABEL_15;
                    }
                  }
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (!v19)
            {
LABEL_25:

              v11 = v37;
              v10 = v38;
              v9 = v39;
              v13 = v41;
              break;
            }
          }
        }

        ++v13;
      }

      while (v13 != v9);
      v9 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v9);
  }
}

@end