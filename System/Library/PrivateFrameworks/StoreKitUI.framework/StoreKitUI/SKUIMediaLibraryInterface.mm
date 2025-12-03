@interface SKUIMediaLibraryInterface
- (BOOL)isItemLocalAudiobook:(id)audiobook;
- (BOOL)performActionForLibraryItem:(id)item;
- (id)_newDefaultQuery;
- (id)_storePlatformKindForMediaItem:(id)item;
- (id)exposedPlatformItemKinds;
- (id)stateForLibraryItem:(id)item;
- (int64_t)_availabilityForMediaItem:(id)item;
- (unint64_t)_AVTypesForMediaItem:(id)item;
- (void)_restrictQueryToLocalContent:(id)content;
- (void)enumerateStatesForLibraryItems:(id)items usingBlock:(id)block;
- (void)removeMediaItemsForLibraryItems:(id)items;
@end

@implementation SKUIMediaLibraryInterface

- (void)enumerateStatesForLibraryItems:(id)items usingBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIMediaLibraryInterface enumerateStatesForLibraryItems:usingBlock:];
  }

  v7 = SKUIMediaPlayerFramework();
  _newDefaultQuery = [(SKUIMediaLibraryInterface *)self _newDefaultQuery];
  v23 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v7);
  v22 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v7);
  v21 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v7);
  v20 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v7);
  v35 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = itemsCopy;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = *v32;
LABEL_7:
    v11 = 0;
    while (1)
    {
      if (*v32 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v31 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = objc_alloc_init(SKUILibraryItemState);
      storeItemIdentifier = [v12 storeItemIdentifier];

      if (storeItemIdentifier)
      {
        storeItemIdentifier2 = [v12 storeItemIdentifier];
        v17 = [v20 predicateWithValue:storeItemIdentifier2 forProperty:v21];

        [_newDefaultQuery addFilterPredicate:v17];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __71__SKUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke;
        v26[3] = &unk_2781FBD88;
        v27 = v14;
        selfCopy = self;
        v29 = v22;
        v30 = v23;
        [_newDefaultQuery _enumerateUnorderedItemsUsingBlock:v26];
        [_newDefaultQuery removeFilterPredicate:v17];
      }

      blockCopy[2](blockCopy, v12, v14, &v35);
      v18 = v35;

      objc_autoreleasePoolPop(v13);
      if (v18)
      {
        break;
      }

      if (v10 == ++v11)
      {
        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }
}

void __71__SKUIMediaLibraryInterface_enumerateStatesForLibraryItems_usingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2;
    [v5 setAvailability:{objc_msgSend(v6, "_availabilityForMediaItem:", v7)}];
    [*(a1 + 32) setAVTypes:{objc_msgSend(*(a1 + 40), "_AVTypesForMediaItem:", v7)}];
    v8 = *(a1 + 32);
    v9 = [v7 valueForProperty:*(a1 + 48)];
    [v8 setHighDefinition:{objc_msgSend(v9, "BOOLValue")}];

    [*(a1 + 32) setRental:{objc_msgSend(v7, "isRental")}];
    v10 = *(a1 + 32);
    v11 = [v7 valueForProperty:*(a1 + 56)];
    [v10 setStoreAccountIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) _storePlatformKindForMediaItem:v7];

    [v12 setStorePlatformKind:v13];
    *a3 = 1;
  }
}

- (id)exposedPlatformItemKinds
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIMediaLibraryInterface *)v2 exposedPlatformItemKinds:v3];
      }
    }
  }

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"book", @"movie", @"song", @"musicVideo", @"podcastEpisode", @"tvEpisode", 0}];

  return v10;
}

- (BOOL)performActionForLibraryItem:(id)item
{
  v71 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMediaLibraryInterface *)v5 performActionForLibraryItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = SKUIMediaPlayerFramework();
  v14 = SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v13);
  v15 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v13);
  v16 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v13);
  v17 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v13);
  v18 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v13);
  v19 = objc_alloc_init(v14);
  storeItemIdentifier = [itemCopy storeItemIdentifier];
  v62 = v15;
  v21 = [v15 predicateWithValue:storeItemIdentifier forProperty:v16];
  [v19 addFilterPredicate:v21];

  v22 = [MEMORY[0x277CBEB98] setWithObjects:{v16, v17, v18, 0}];
  [v19 setItemPropertiesToFetch:v22];

  [(SKUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v19];
  v64 = v19;
  items = [v19 items];
  firstObject = [items firstObject];

  v65 = firstObject;
  if (firstObject && ([firstObject mediaType] & 0xFF00) != 0)
  {
    v25 = objc_alloc(MEMORY[0x277CCACA8]);
    storeItemIdentifier2 = [itemCopy storeItemIdentifier];
    v27 = [v25 initWithFormat:@"videos://play?adam-id=%lld&allowCloudPlayback=1", objc_msgSend(storeItemIdentifier2, "longLongValue")];

    items2 = [MEMORY[0x277CBEBC0] URLWithString:v27];
    SKUIMetricsOpenSensitiveURL(items2, 0);
    v29 = 1;
  }

  else
  {
    v30 = itemCopy;
    v31 = v17;
    albumsQuery = [(objc_class *)v14 albumsQuery];
    selfCopy = self;
    [(SKUIMediaLibraryInterface *)self _restrictQueryToLocalContent:albumsQuery];
    v33 = v30;
    storeItemIdentifier3 = [v30 storeItemIdentifier];
    v35 = [v62 predicateWithValue:storeItemIdentifier3 forProperty:v18];
    [albumsQuery addFilterPredicate:v35];

    v61 = albumsQuery;
    items2 = [albumsQuery items];
    v36 = [items2 count];
    v37 = 0;
    if (!firstObject || v36)
    {
      v17 = v31;
      itemCopy = v33;
    }

    else
    {
      v38 = v18;
      v39 = [v65 valueForProperty:v18];
      v17 = v31;
      if (v39)
      {
        itemCopy = v33;
        if (([v65 mediaType] & 4) != 0)
        {
          [(objc_class *)v14 audiobooksQuery];
        }

        else
        {
          [(objc_class *)v14 albumsQuery];
        }
        v40 = ;

        [(SKUIMediaLibraryInterface *)selfCopy _restrictQueryToLocalContent:v40];
        v41 = [v62 predicateWithValue:v39 forProperty:v38];
        [v40 addFilterPredicate:v41];

        items3 = [v40 items];

        v37 = [v65 valueForProperty:v16];
        items2 = items3;
        v61 = v40;
      }

      else
      {
        v37 = 0;
        itemCopy = v33;
      }

      v18 = v38;
    }

    v43 = [items2 count];
    v29 = v43 != 0;
    if (v43)
    {
      v44 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Mpmediaitemcol.isa v13))];
      v45 = [SKUIWeakLinkedClassForString(&cfstr_Mpmusicplayerc.isa v13)];
      [v45 setQueueWithItemCollection:v44];
      if (v37)
      {
        v56 = v44;
        v57 = v29;
        v58 = v18;
        v60 = v17;
        v63 = itemCopy;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v46 = items2;
        v47 = [v46 countByEnumeratingWithState:&v66 objects:v70 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v67;
          v55 = v45;
          while (2)
          {
            for (i = 0; i != v48; ++i)
            {
              if (*v67 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v66 + 1) + 8 * i);
              v52 = [v51 valueForProperty:v16];
              v53 = [v52 isEqualToNumber:v37];

              if (v53)
              {
                v45 = v55;
                [v55 setNowPlayingItem:v51];
                goto LABEL_30;
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v66 objects:v70 count:16];
            v45 = v55;
            if (v48)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:

        itemCopy = v63;
        v18 = v58;
        v17 = v60;
        v29 = v57;
        v44 = v56;
      }

      [v45 play];
    }

    v27 = v61;
  }

  return v29;
}

- (BOOL)isItemLocalAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIMediaLibraryInterface *)v4 isItemLocalAudiobook:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = SKUIMediaPlayerFramework();
  v13 = SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v12);
  v14 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v12);
  audiobooksQuery = [v13 audiobooksQuery];
  v16 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStorePlaylistID", v12);
  storeItemIdentifier = [audiobookCopy storeItemIdentifier];

  v18 = [v14 predicateWithValue:storeItemIdentifier forProperty:v16];

  [audiobooksQuery addFilterPredicate:v18];
  items = [audiobooksQuery items];
  LOBYTE(v16) = [items count] != 0;

  return v16;
}

- (id)stateForLibraryItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMediaLibraryInterface *)v5 stateForLibraryItem:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_alloc_init(SKUILibraryItemState);
  v14 = SKUIMediaPlayerFramework();
  _newDefaultQuery = [(SKUIMediaLibraryInterface *)self _newDefaultQuery];
  v16 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v14);
  v17 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v14);
  v18 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v14);
  v19 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v14);
  storeItemIdentifier = [itemCopy storeItemIdentifier];

  v21 = [v19 predicateWithValue:storeItemIdentifier forProperty:v18];

  [_newDefaultQuery addFilterPredicate:v21];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__SKUIMediaLibraryInterface_stateForLibraryItem___block_invoke;
  v28[3] = &unk_2781FBD88;
  v22 = v13;
  v29 = v22;
  selfCopy = self;
  v31 = v17;
  v32 = v16;
  v23 = v16;
  v24 = v17;
  [_newDefaultQuery _enumerateUnorderedItemsUsingBlock:v28];
  v25 = v32;
  v26 = v22;

  return v22;
}

void __49__SKUIMediaLibraryInterface_stateForLibraryItem___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = a2;
    [v5 setAvailability:{objc_msgSend(v6, "_availabilityForMediaItem:", v7)}];
    [*(a1 + 32) setAVTypes:{objc_msgSend(*(a1 + 40), "_AVTypesForMediaItem:", v7)}];
    v8 = *(a1 + 32);
    v9 = [v7 valueForProperty:*(a1 + 48)];
    [v8 setHighDefinition:{objc_msgSend(v9, "BOOLValue")}];

    [*(a1 + 32) setRental:{objc_msgSend(v7, "isRental")}];
    v10 = *(a1 + 32);
    v11 = [v7 valueForProperty:*(a1 + 56)];
    [v10 setStoreAccountIdentifier:v11];

    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) _storePlatformKindForMediaItem:v7];

    [v12 setStorePlatformKind:v13];
    *a3 = 1;
  }
}

- (void)removeMediaItemsForLibraryItems:(id)items
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIMediaLibraryInterface *)v4 removeMediaItemsForLibraryItems:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = SKUIMediaPlayerFramework();
  v13 = SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v12);
  v14 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v12);
  v27 = SKUIWeakLinkedClassForString(&cfstr_Mpmedialibrary_0.isa, v12);
  v15 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v12);
  v16 = objc_alloc_init(v13);
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = itemsCopy;
  v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        storeItemIdentifier = [*(*(&v29 + 1) + 8 * v21) storeItemIdentifier];
        v23 = [v14 predicateWithValue:storeItemIdentifier forProperty:v15];

        [v16 addFilterPredicate:v23];
        items = [v16 items];
        firstObject = [items firstObject];

        if (firstObject)
        {
          [array addObject:firstObject];
        }

        [v16 removeFilterPredicate:v23];

        ++v21;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  if ([array count])
  {
    defaultMediaLibrary = [v27 defaultMediaLibrary];
    [defaultMediaLibrary removeItems:array];
  }
}

- (int64_t)_availabilityForMediaItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIMediaLibraryInterface *)v4 _availabilityForMediaItem:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  if (_availabilityForMediaItem__sOnce != -1)
  {
    [SKUIMediaLibraryInterface _availabilityForMediaItem:];
  }

  v12 = [itemCopy valueForProperty:_availabilityForMediaItem__sFamilyAccountIDProperty];
  if ([v12 unsignedLongLongValue] && (objc_msgSend(itemCopy, "mediaType") & 0x300) != 0)
  {
    v13 = [itemCopy valueForProperty:_availabilityForMediaItem__sFilePathProperty];
    if ([v13 length])
    {
      v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v13 isDirectory:0];
      v15 = [[_availabilityForMediaItem__sPlayerItemClass alloc] initWithURL:v14];
      if ([v15 isContentAuthorizedForPlayback])
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    v16 = 2;
  }

  return v16;
}

id __55__SKUIMediaLibraryInterface__availabilityForMediaItem___block_invoke()
{
  v0 = SKUIMediaPlayerFramework();
  v1 = SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreFamilyAccountID", v0);
  objc_storeStrong(&_availabilityForMediaItem__sFamilyAccountIDProperty, *v1);
  v2 = SKUIWeakLinkedSymbolForString("MPMediaItemPropertyFilePath", v0);
  objc_storeStrong(&_availabilityForMediaItem__sFilePathProperty, *v2);
  v3 = SKUIAVFoundationFramework();
  result = SKUIWeakLinkedClassForString(&cfstr_Avplayeritem.isa, v3);
  _availabilityForMediaItem__sPlayerItemClass = result;
  return result;
}

- (unint64_t)_AVTypesForMediaItem:(id)item
{
  if (([item mediaType] & 0xFF00) != 0)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (id)_newDefaultQuery
{
  v3 = SKUIMediaPlayerFramework();
  v4 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa, v3));
  [(SKUIMediaLibraryInterface *)self _restrictQueryToLocalContent:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v5 addObject:{*SKUIWeakLinkedSymbolForString("MPMediaItemPropertyIsHD", v3)}];
  [v5 addObject:{*SKUIWeakLinkedSymbolForString("MPMediaItemPropertyIsRental", v3)}];
  [v5 addObject:{*SKUIWeakLinkedSymbolForString("MPMediaItemPropertyMediaType", v3)}];
  [v5 addObject:{*SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreAccountID", v3)}];
  [v4 setItemPropertiesToFetch:v5];

  return v4;
}

- (void)_restrictQueryToLocalContent:(id)content
{
  contentCopy = content;
  v4 = SKUIMediaPlayerFramework();
  v5 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyIsLocal", v4);
  v6 = [SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa v4)];

  [contentCopy addFilterPredicate:v6];
}

- (id)_storePlatformKindForMediaItem:(id)item
{
  mediaType = [item mediaType];
  result = 0;
  if (mediaType <= 255)
  {
    if (mediaType > 3)
    {
      if (mediaType == 4)
      {
        return @"book";
      }

      if (mediaType != 8)
      {
        return result;
      }
    }

    else
    {
      if (mediaType == 1)
      {
        return @"song";
      }

      if (mediaType != 2)
      {
        return result;
      }
    }

    return @"podcastEpisode";
  }

  if (mediaType <= 1023)
  {
    v5 = @"tvEpisode";
    if (mediaType != 512)
    {
      v5 = 0;
    }

    if (mediaType == 256)
    {
      return @"movie";
    }

    else
    {
      return v5;
    }
  }

  switch(mediaType)
  {
    case 1024:
      return @"podcastEpisode";
    case 2048:
      return @"musicVideo";
    case 4096:
      return @"podcastEpisode";
  }

  return result;
}

- (void)enumerateStatesForLibraryItems:usingBlock:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMediaLibraryInterface enumerateStatesForLibraryItems:usingBlock:]";
}

@end