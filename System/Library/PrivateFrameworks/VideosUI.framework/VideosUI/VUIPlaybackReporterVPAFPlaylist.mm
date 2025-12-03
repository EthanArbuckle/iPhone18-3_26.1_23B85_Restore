@interface VUIPlaybackReporterVPAFPlaylist
- (TVPPlayback)player;
- (VUIPlaybackReporterVPAFPlaylist)initWithPlayer:(id)player;
- (id)itemAtOverallPosition:(unint64_t)position rangeOptions:(int64_t)options;
- (id)itemsBetweenStartOverallPosition:(unint64_t)position endOverallPosition:(unint64_t)overallPosition;
@end

@implementation VUIPlaybackReporterVPAFPlaylist

- (VUIPlaybackReporterVPAFPlaylist)initWithPlayer:(id)player
{
  v99[1] = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v90.receiver = self;
  v90.super_class = VUIPlaybackReporterVPAFPlaylist;
  v5 = [(VUIPlaybackReporterVPAFPlaylist *)&v90 init];
  if (!v5)
  {
    goto LABEL_47;
  }

  currentMediaItem = [playerCopy currentMediaItem];
  v7 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DE0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 count])
  {
    v26 = VUIDefaultLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Media item lacks valid VPAF dictionary. Will not track.", buf, 2u);
    }

    goto LABEL_18;
  }

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v94 = v7;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Media item has VPAF dictionary. Will track. %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objc_storeWeak(&v5->_player, playerCopy);
  v10 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE8]];
  v11 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D50]];
  v12 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D28]];
  [dictionary addEntriesFromDictionary:v7];
  [dictionary vui_setObjectIfNotNil:v10 forKey:@"featureCanonicalId"];
  v13 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CD8]];
  [dictionary vui_setObjectIfNotNil:v13 forKey:@"featureReferenceId"];

  v14 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
  [dictionary vui_setObjectIfNotNil:v14 forKey:@"featureExternalId"];

  v15 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5AD0]];
  [dictionary vui_setObjectIfNotNil:v15 forKey:@"brandId"];

  v76 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
  [dictionary vui_setObjectIfNotNil:? forKey:?];
  v78 = v11;
  [dictionary vui_setObjectIfNotNil:v11 forKey:@"canonicalShowId"];
  v77 = v12;
  [dictionary vui_setObjectIfNotNil:v12 forKey:@"canonicalSeasonId"];
  v16 = +[VUIMetricsJetEngine sharedInstance];
  v75 = v10;
  if ([v16 isSharedContent:v10])
  {
    goto LABEL_9;
  }

  v17 = +[VUIMetricsJetEngine sharedInstance];
  if ([v17 isSharedContent:v78])
  {

LABEL_9:
LABEL_10:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [dictionary setObject:v18 forKey:@"sharedContent"];

    goto LABEL_11;
  }

  v66 = +[VUIMetricsJetEngine sharedInstance];
  v67 = [v66 isSharedContent:v77];

  if (v67)
  {
    goto LABEL_10;
  }

LABEL_11:
  v19 = [VUIPlaybackUtilities playerIsLive:playerCopy];
  v5->_isLive = v19;
  if (v19)
  {
    [dictionary setObject:@"live" forKeyedSubscript:@"programmingType"];
    v20 = [dictionary objectForKey:@"serviceId"];

    if (!v20)
    {
      v21 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C48]];
      [dictionary vui_setObjectIfNotNil:v21 forKey:@"serviceId"];
    }

    v22 = [[VUIPlaybackReporterVPAFPlaylistItem alloc] initWithPosition:0 duration:-1 eventData:0];
    v99[0] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];
    items = v5->_items;
    v5->_items = v23;
    v25 = v75;
    goto LABEL_42;
  }

  v74 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5DC0]];
  [playerCopy duration];
  v29 = vcvtad_u64_f64(v28 * 1000.0);
  v73 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
  [(NSArray *)v73 doubleValue];
  v31 = vcvtad_u64_f64(v30 * 1000.0);
  v32 = v29 - v31;
  if (v29 <= v31)
  {
    v68 = VUIDefaultLogObject();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v94 = v29;
      v95 = 2048;
      v96 = v31;
      v97 = 2112;
      v98 = v74;
      _os_log_impl(&dword_1E323F000, v68, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Total duration - %lu should not be less than or equal to feature start time - %lu. Will not track VPAF for content title %@", buf, 0x20u);
    }

LABEL_18:
    v27 = 0;
    goto LABEL_48;
  }

  v71 = v5;
  v72 = playerCopy;
  [dictionary setObject:@"videoOnDemand" forKeyedSubscript:@"programmingType"];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v29];
  v69 = dictionary;
  [dictionary setObject:v33 forKeyedSubscript:@"overallLength"];

  v81 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{v31, v32}];
  array = [MEMORY[0x1E695DF70] array];
  v70 = currentMediaItem;
  [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v89 = 0u;
  v34 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = v34;
  v82 = *v87;
  do
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v87 != v82)
      {
        objc_enumerationMutation(obj);
      }

      v37 = *(*(&v86 + 1) + 8 * i);
      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      adamID = [v37 adamID];
      dynamicSlotDataSetId = [v37 dynamicSlotDataSetId];
      if (adamID)
      {
        [v38 setObject:adamID forKeyedSubscript:@"assetId"];
      }

      if (dynamicSlotDataSetId)
      {
        [v38 setObject:dynamicSlotDataSetId forKeyedSubscript:@"data.dynamicSlot.dataSetId"];
      }

      v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v37, "isSkippable")}];
      [v38 setObject:v41 forKeyedSubscript:@"isSkippable"];

      v42 = @"unknown";
      type = [v37 type];
      v44 = @"preroll";
      if (type == 1)
      {
        goto LABEL_34;
      }

      if (type == 3)
      {
        v44 = @"postroll";
LABEL_34:
        v45 = v44;

        v42 = v45;
        goto LABEL_35;
      }

      v44 = @"midroll";
      if (type == 2)
      {
        goto LABEL_34;
      }

LABEL_35:
      [v38 setObject:v42 forKeyedSubscript:@"assetPlacement"];
      v46 = [VUIPlaybackReporterVPAFPlaylistItem alloc];
      [v37 start];
      v48 = vcvtad_u64_f64(v47 * 1000.0);
      [v37 duration];
      v50 = [(VUIPlaybackReporterVPAFPlaylistItem *)v46 initWithPosition:v48 duration:vcvtad_u64_f64(v49 * 1000.0) eventData:v38];
      v51 = v50;
      if (v50)
      {
        timeRange = [(VUIPlaybackReporterVPAFPlaylistItem *)v50 timeRange];
        [v81 removeIndexesInRange:{timeRange, v53}];
        [array addObject:v51];
      }
    }

    v35 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
  }

  while (v35);
LABEL_39:
  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v54 setObject:@"feature" forKeyedSubscript:@"assetPlacement"];
  [v54 vui_setObjectIfNotNil:v76 forKey:@"assetId"];
  v55 = VUIDefaultLogObject();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v94 = v54;
    _os_log_impl(&dword_1E323F000, v55, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Feature metrics: %@", buf, 0xCu);
  }

  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __50__VUIPlaybackReporterVPAFPlaylist_initWithPlayer___block_invoke;
  v83[3] = &unk_1E8734C90;
  v84 = v54;
  v56 = array;
  v85 = v56;
  v57 = v54;
  [v81 enumerateRangesUsingBlock:v83];
  v5 = v71;
  v58 = v71->_items;
  v71->_items = v56;
  v59 = v56;

  playerCopy = v72;
  items = v73;
  currentMediaItem = v70;
  dictionary = v69;
  v22 = v74;
  v25 = v75;
LABEL_42:

  v91 = dictionary;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
  eventData = v5->_eventData;
  v5->_eventData = v60;

  v5->_hasInterstitials = [playerCopy hasInterstitials];
  v62 = VUIDefaultLogObject();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = v5->_items;
    *buf = 138412290;
    v94 = v63;
    _os_log_impl(&dword_1E323F000, v62, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Parsed items: %@", buf, 0xCu);
  }

  v64 = VUIDefaultLogObject();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v94 = dictionary;
    _os_log_impl(&dword_1E323F000, v64, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Playlist metrics: %@", buf, 0xCu);
  }

LABEL_47:
  v27 = v5;
LABEL_48:

  return v27;
}

void __50__VUIPlaybackReporterVPAFPlaylist_initWithPlayer___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[VUIPlaybackReporterVPAFPlaylistItem alloc] initWithPosition:a2 duration:a3 eventData:*(a1 + 32)];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 40) addObject:v4];
    v4 = v5;
  }
}

- (id)itemAtOverallPosition:(unint64_t)position rangeOptions:(int64_t)options
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = [(VUIPlaybackReporterVPAFPlaylist *)self items:position];
  firstObject = [v6 firstObject];

  player = [(VUIPlaybackReporterVPAFPlaylist *)self player];
  currentMediaItem = [player currentMediaItem];
  v10 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
  v11 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipDuration"];
  if (!-[VUIPlaybackReporterVPAFPlaylist isLive](self, "isLive") || ([v10 length] ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    if (![(VUIPlaybackReporterVPAFPlaylist *)self isLive])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      items = [(VUIPlaybackReporterVPAFPlaylist *)self items];
      v14 = [items countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v32 = v10;
        v16 = *v34;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v34 != v16)
            {
              objc_enumerationMutation(items);
            }

            v18 = *(*(&v33 + 1) + 8 * i);
            timeRange = [v18 timeRange];
            if (position >= timeRange && position - timeRange < v20)
            {
              v30 = v18;

              firstObject = v30;
              goto LABEL_24;
            }
          }

          v15 = [items countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v15);
LABEL_24:
        v10 = v32;
      }
    }

    firstObject = firstObject;
    v29 = firstObject;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary vui_setObjectIfNotNil:*MEMORY[0x1E69AB740] forKey:@"assetPlacement"];
    [dictionary vui_setObjectIfNotNil:@"CatchUpToLive" forKey:@"extraType"];
    v23 = VUIDefaultLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v39 = v10;
      v40 = 2112;
      v41 = dictionary;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Clip (%@) metadata %@", buf, 0x16u);
    }

    v25 = [VUIPlaybackReporterVPAFPlaylistItem alloc];
    [v11 doubleValue];
    v27 = (v26 * 1000.0);
    v28 = [dictionary copy];
    v29 = [(VUIPlaybackReporterVPAFPlaylistItem *)v25 initWithPosition:0 duration:v27 eventData:v28];
  }

  return v29;
}

- (id)itemsBetweenStartOverallPosition:(unint64_t)position endOverallPosition:(unint64_t)overallPosition
{
  v34 = *MEMORY[0x1E69E9840];
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![(VUIPlaybackReporterVPAFPlaylist *)self isLive])
  {
    v29 = 0u;
    v30 = 0u;
    if (overallPosition >= position)
    {
      v7 = overallPosition - position;
    }

    else
    {
      v7 = position - overallPosition;
    }

    if (overallPosition >= position)
    {
      overallPositionCopy = position;
    }

    else
    {
      overallPositionCopy = overallPosition;
    }

    v24.location = overallPositionCopy;
    v24.length = v7;
    v27 = 0uLL;
    v28 = 0uLL;
    obj = [(VUIPlaybackReporterVPAFPlaylist *)self items];
    v9 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v9)
    {
      v11 = v9;
      v26 = *v28;
      *&v10 = 138412290;
      v22 = v10;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          selfCopy = self;
          if (*v28 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          eventData = [v14 eventData];
          lastObject = [eventData lastObject];
          v17 = [lastObject vui_stringForKey:@"assetPlacement"];
          v18 = [v17 isEqualToString:@"preroll"];

          self = selfCopy;
          if ([(VUIPlaybackReporterVPAFPlaylist *)selfCopy hasInterstitials]&& v18)
          {
            v19 = VUIDefaultLogObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v32 = v14;
              _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAFPlaylist - Skip returning preroll item - %@ to Jet. Will handle transition reporting on our end", buf, 0xCu);
            }
          }

          else
          {
            v36.location = [v14 timeRange];
            v36.length = v20;
            if (NSIntersectionRange(v24, v36).length)
            {
              [v23 addObject:v14];
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v11);
    }
  }

  return v23;
}

- (TVPPlayback)player
{
  WeakRetained = objc_loadWeakRetained(&self->_player);

  return WeakRetained;
}

@end