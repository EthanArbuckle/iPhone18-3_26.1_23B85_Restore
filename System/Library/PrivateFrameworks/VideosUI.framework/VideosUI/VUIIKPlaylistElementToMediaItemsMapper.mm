@interface VUIIKPlaylistElementToMediaItemsMapper
- (BOOL)_shouldDisableResumeMenuForAsset:(id)asset;
- (VUIIKPlaylistElementToMediaItemsMapper)init;
- (id)_clipMediaItemsMediaItem:(id)item fromTimelineElement:(id)element;
- (id)_createClipMediaItemsIfTimeExists:(id)exists fromMediaElement:(id)element;
- (id)_storeAuxMediaItemForIKMediaElement:(id)element isExtrasContent:(BOOL)content;
- (id)_storeMediaItemsForAdamID:(int64_t)d IKMediaElement:(id)element;
- (id)playlistForIKMediaElements:(id)elements withMediaItem:(id)item isExtrasContent:(BOOL)content;
- (void)_populateMediaItem:(id)item withMetadatafromRelatedContentElement:(id)element;
- (void)_populateMediaItem:(id)item withMetadatafromTimelineEventElement:(id)element;
- (void)_populateMediaItem:(id)item withMetadatafromVideoElement:(id)element;
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

- (BOOL)_shouldDisableResumeMenuForAsset:(id)asset
{
  assetCopy = asset;
  if ([(VUIIKPlaylistElementToMediaItemsMapper *)self resumeMenuBehavior])
  {
    vui_disableResumeMenu = [assetCopy vui_disableResumeMenu];
  }

  else
  {
    vui_disableResumeMenu = 1;
  }

  return vui_disableResumeMenu;
}

- (id)playlistForIKMediaElements:(id)elements withMediaItem:(id)item isExtrasContent:(BOOL)content
{
  contentCopy = content;
  v37 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  itemCopy = item;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = elementsCopy;
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
        assets = [v14 assets];
        firstObject = [assets firstObject];

        adamID = [firstObject adamID];
        longLongValue = [adamID longLongValue];

        if (longLongValue || ([firstObject vui_rentalAdamIDString], v19 = objc_claimAutoreleasedReturnValue(), longLongValue = objc_msgSend(v19, "longLongValue"), v19, longLongValue))
        {
          if (itemCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v20 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _createClipMediaItemsIfTimeExists:itemCopy fromMediaElement:v14];
          }

          else
          {
            v20 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _storeMediaItemsForAdamID:longLongValue IKMediaElement:v14];
          }

          v21 = v20;
          if ([v20 count])
          {
            [v9 addObjectsFromArray:v21];
          }
        }

        else
        {
          vui_persistentID = [firstObject vui_persistentID];
          longLongValue2 = [vui_persistentID longLongValue];

          if (longLongValue2)
          {
            v24 = MEMORY[0x1E69705D0];
            v25 = [MEMORY[0x1E696AD98] numberWithLongLong:longLongValue2];
            v21 = [v24 vui_mediaItemForPersistentIdentifier:v25];

            v26 = [[VUILibraryMediaItem_iOS alloc] initWithMPMediaItem:v21];
            [v9 addObject:v26];
          }

          else
          {
            v21 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _storeAuxMediaItemForIKMediaElement:v14 isExtrasContent:contentCopy];
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

- (id)_storeMediaItemsForAdamID:(int64_t)d IKMediaElement:(id)element
{
  elementCopy = element;
  assets = [elementCopy assets];
  firstObject = [assets firstObject];

  v9 = [[VUIStoreMediaItem_iOS alloc] initWithAdamID:d videoManagedObject:0 isForStartingDownload:0];
  vui_fpsCertificateURL = [firstObject vui_fpsCertificateURL];
  [(VUIStoreMediaItem_iOS *)v9 setFpsCertificateURL:vui_fpsCertificateURL];

  vui_fpsKeyServerURL = [firstObject vui_fpsKeyServerURL];
  [(VUIStoreMediaItem_iOS *)v9 setFpsKeyServerURL:vui_fpsKeyServerURL];

  v12 = [(VUIStoreMediaItem_iOS *)v9 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C78]];
  v13 = +[VUIMetricsController sharedInstance];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v15 = [v13 iTunesLibraryPlaybackMediaMetricsForAdamID:v14 mediaType:v12];

  [(VUIStoreMediaItem_iOS *)v9 setMediaItemMetadata:v15 forProperty:*MEMORY[0x1E69D5C70]];
  v16 = +[VUIMetricsController sharedInstance];
  iTunesVPAF = [v16 iTunesVPAF];
  [(VUIStoreMediaItem_iOS *)v9 setMediaItemMetadata:iTunesVPAF forProperty:*MEMORY[0x1E69D5DE0]];

  vui_resumeTime = [firstObject vui_resumeTime];
  if (vui_resumeTime)
  {
    v19 = [VUIMediaStartTimeInfo alloc];
    date = [MEMORY[0x1E695DF00] date];
    v21 = [(VUIMediaStartTimeInfo *)v19 initWithStartTime:vui_resumeTime timestamp:date type:0 source:@"ITML/XML"];

    startTimeCollection = [(VUIBaseMediaItem *)v9 startTimeCollection];
    [startTimeCollection addStartTimeInfo:v21];
  }

  if ([firstObject vui_disableLocalAsset])
  {
    [(VUIStoreMediaItem_iOS *)v9 setMediaItemMetadata:MEMORY[0x1E695E118] forProperty:*MEMORY[0x1E69D5BD0]];
  }

  v23 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _createClipMediaItemsIfTimeExists:v9 fromMediaElement:elementCopy];

  return v23;
}

- (id)_storeAuxMediaItemForIKMediaElement:(id)element isExtrasContent:(BOOL)content
{
  elementCopy = element;
  assets = [elementCopy assets];
  firstObject = [assets firstObject];

  v8 = [VUIStoreAuxMediaItem alloc];
  v9 = [firstObject url];
  v10 = [(VUIStoreAuxMediaItem *)v8 initWithURL:v9];

  vui_fpsCertificateURL = [firstObject vui_fpsCertificateURL];
  [(VUIStoreAuxMediaItem *)v10 setFpsCertificateURL:vui_fpsCertificateURL];

  vui_fpsKeyServerURL = [firstObject vui_fpsKeyServerURL];
  [(VUIStoreAuxMediaItem *)v10 setFpsKeyServerURL:vui_fpsKeyServerURL];

  objc_opt_class();
  [(VUIStoreAuxMediaItem *)v10 setIsAudioOnly:objc_opt_isKindOfClass() & 1];
  bookmarkID = [firstObject bookmarkID];
  [(VUIStoreAuxMediaItem *)v10 setBookmarkID:bookmarkID];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__VUIIKPlaylistElementToMediaItemsMapper__storeAuxMediaItemForIKMediaElement_isExtrasContent___block_invoke;
  v20[3] = &unk_1E872E980;
  v14 = v10;
  v21 = v14;
  v22 = firstObject;
  v23 = elementCopy;
  contentCopy = content;
  v15 = elementCopy;
  v16 = firstObject;
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

- (id)_createClipMediaItemsIfTimeExists:(id)exists fromMediaElement:(id)element
{
  existsCopy = exists;
  elementCopy = element;
  array = [MEMORY[0x1E695DF70] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    timelines = [elementCopy timelines];
    firstObject = [timelines firstObject];

    if (firstObject)
    {
      if (existsCopy)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [existsCopy setBookmarkDisabled:1];
        }
      }

      v11 = [(VUIIKPlaylistElementToMediaItemsMapper *)self _clipMediaItemsMediaItem:existsCopy fromTimelineElement:firstObject];
      if ([v11 count])
      {
        [array addObjectsFromArray:v11];
      }
    }

    else
    {
      [array addObject:existsCopy];
    }
  }

  return array;
}

- (id)_clipMediaItemsMediaItem:(id)item fromTimelineElement:(id)element
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  elementCopy = element;
  events = [elementCopy events];
  v9 = [events count];

  if (v9)
  {
    v10 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = elementCopy;
    obj = [elementCopy events];
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
          v22 = [v20 initWithMediaItem:itemCopy clipTimeRange:v21];

          [(VUIIKPlaylistElementToMediaItemsMapper *)self _populateMediaItem:v22 withMetadatafromTimelineEventElement:v15];
          [v10 addObject:v22];
        }

        v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    elementCopy = v24;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_populateMediaItem:(id)item withMetadatafromVideoElement:(id)element
{
  itemCopy = item;
  relatedContent = [element relatedContent];
  [(VUIIKPlaylistElementToMediaItemsMapper *)self _populateMediaItem:itemCopy withMetadatafromRelatedContentElement:relatedContent];
}

- (void)_populateMediaItem:(id)item withMetadatafromTimelineEventElement:(id)element
{
  itemCopy = item;
  relatedContent = [element relatedContent];
  [(VUIIKPlaylistElementToMediaItemsMapper *)self _populateMediaItem:itemCopy withMetadatafromRelatedContentElement:relatedContent];
}

- (void)_populateMediaItem:(id)item withMetadatafromRelatedContentElement:(id)element
{
  v58 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  elementCopy = element;
  objc_opt_class();
  v47 = itemCopy;
  isKindOfClass = objc_opt_isKindOfClass();
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v36 = elementCopy;
  obj = [elementCopy children];
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
        elementName = [v14 elementName];
        v16 = [elementName isEqualToString:v11];

        if (v16)
        {
          v41 = v13;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          children = [v14 children];
          v18 = [children countByEnumeratingWithState:&v48 objects:v56 count:16];
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
                objc_enumerationMutation(children);
              }

              v22 = *(*(&v48 + 1) + 8 * i);
              elementName2 = [v22 elementName];
              v24 = [elementName2 isEqualToString:v12];

              if (v24)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }

                text = [v22 text];
                string = [text string];

                v27 = v47;
                v28 = string;
                v29 = v45;
                goto LABEL_15;
              }

              if (isKindOfClass)
              {
                elementName3 = [v22 elementName];
                v31 = [elementName3 isEqualToString:v46];

                if (v31)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    text2 = [v22 text];
                    string = [text2 string];

                    v27 = v47;
                    v28 = string;
                    v29 = v43;
LABEL_15:
                    [v27 setMediaItemMetadata:v28 forProperty:v29];

                    continue;
                  }
                }

                else
                {
                  elementName4 = [v22 elementName];
                  v34 = [elementName4 isEqualToString:v44];

                  if (v34)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v35 = [v22 url];
                      string = [v35 absoluteString];

                      v27 = v47;
                      v28 = string;
                      v29 = v42;
                      goto LABEL_15;
                    }
                  }
                }
              }
            }

            v19 = [children countByEnumeratingWithState:&v48 objects:v56 count:16];
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