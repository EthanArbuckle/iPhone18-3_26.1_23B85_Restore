@interface VUIMediaItem
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (id)_mediaItemWithMPMediaItem:(id)a3;
+ (id)keyPathsForValuesAffectingPlayedState;
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)renewsOfflineKeysAutomatically;
- (id)description;
@end

@implementation VUIMediaItem

+ (id)_mediaItemWithMPMediaItem:(id)a3
{
  v3 = a3;
  v4 = [VUIMPMediaItem alloc];
  v5 = +[VUIMediaLibraryManager defaultManager];
  v6 = [v5 deviceMediaLibrary];
  v7 = VUIMediaEntityFetchRequestAllPropertiesSet();
  v8 = [(VUIMPMediaItem *)v4 initWithMediaLibrary:v6 mediaItem:v3 requestedProperties:v7];

  return v8;
}

- (BOOL)allowsManualDownloadRenewal
{
  v2 = [(VUIMediaEntity *)self _propertyValueForKey:@"allowsManualDownloadRenewal"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)renewsOfflineKeysAutomatically
{
  v2 = [(VUIMediaEntity *)self _propertyValueForKey:@"renewsOfflineKeysAutomatically"];
  v3 = v2 != 0;

  return v3;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if (automaticallyNotifiesObserversForKey____onceToken_0 != -1)
  {
    +[VUIMediaItem automaticallyNotifiesObserversForKey:];
  }

  if ([automaticallyNotifiesObserversForKey____keysToNotifyManually_0 containsObject:v4])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___VUIMediaItem;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v5;
}

void __53__VUIMediaItem_automaticallyNotifiesObserversForKey___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"hasBeenPlayed", @"playCount", @"bookmark", @"rentalExpirationDate", 0}];
  v1 = automaticallyNotifiesObserversForKey____keysToNotifyManually_0;
  automaticallyNotifiesObserversForKey____keysToNotifyManually_0 = v0;
}

+ (id)keyPathsForValuesAffectingPlayedState
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = NSStringFromSelector(sel_hasBeenPlayed);
  v4 = NSStringFromSelector(sel_playCount);
  v5 = NSStringFromSelector(sel_bookmark);
  v6 = [v2 setWithObjects:{v3, v4, v5, 0}];

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66.receiver = self;
  v66.super_class = VUIMediaItem;
  v4 = [(VUIMediaEntity *)&v66 description];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(VUIMediaItem *)self duration];
  v7 = [v5 stringWithFormat:@"%@=%@", @"duration", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(VUIMediaItem *)self creationDate];
  v10 = [v8 stringWithFormat:@"%@=%@", @"creationDate", v9];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(VUIMediaItem *)self modifiedDate];
  v13 = [v11 stringWithFormat:@"%@=%@", @"modifiedDate", v12];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(VUIMediaItem *)self lastPlayedDate];
  v16 = [v14 stringWithFormat:@"%@=%@", @"lastPlayedDate", v15];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  v18 = [(VUIMediaItem *)self previewFrameImageIdentifier];
  v19 = [v17 stringWithFormat:@"%@=%@", @"previewFrameImageIdentifier", v18];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  v21 = [(VUIMediaItem *)self extrasURL];
  v22 = [v20 stringWithFormat:@"%@=%@", @"extrasURL", v21];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696AEC0];
  v24 = [(VUIMediaItem *)self seasonIdentifier];
  v25 = [v23 stringWithFormat:@"%@=%@", @"seasonIdentifier", v24];
  [v3 addObject:v25];

  v26 = MEMORY[0x1E696AEC0];
  v27 = [(VUIMediaItem *)self seasonTitle];
  v28 = [v26 stringWithFormat:@"%@=%@", @"seasonTitle", v27];
  [v3 addObject:v28];

  v29 = MEMORY[0x1E696AEC0];
  v30 = [(VUIMediaItem *)self episodeNumber];
  v31 = [v29 stringWithFormat:@"%@=%@", @"episodeNumber", v30];
  [v3 addObject:v31];

  v32 = MEMORY[0x1E696AEC0];
  v33 = [(VUIMediaItem *)self fractionalEpisodeNumber];
  v34 = [v32 stringWithFormat:@"%@=%@", @"fractionalEpisodeNumber", v33];
  [v3 addObject:v34];

  v35 = MEMORY[0x1E696AEC0];
  v36 = [(VUIMediaItem *)self episodeIndexInSeries];
  v37 = [v35 stringWithFormat:@"%@=%@", @"episodeIndexInSeries", v36];
  [v3 addObject:v37];

  v38 = MEMORY[0x1E696AEC0];
  v39 = [(VUIMediaItem *)self studio];
  v40 = [v38 stringWithFormat:@"%@=%@", @"studio", v39];
  [v3 addObject:v40];

  v41 = MEMORY[0x1E696AEC0];
  v42 = [(VUIMediaItem *)self credits];
  v43 = [v41 stringWithFormat:@"%@=%@", @"credits", v42];
  [v3 addObject:v43];

  v44 = MEMORY[0x1E696AEC0];
  v45 = [(VUIMediaItem *)self rentalPlaybackDuration];
  v46 = [v44 stringWithFormat:@"%@=%@", @"rentalPlaybackDuration", v45];
  [v3 addObject:v46];

  v47 = MEMORY[0x1E696AEC0];
  v48 = [(VUIMediaItem *)self rentalExpirationDate];
  v49 = [v47 stringWithFormat:@"%@=%@", @"rentalExpirationDate", v48];
  [v3 addObject:v49];

  v50 = MEMORY[0x1E696AEC0];
  v51 = [(VUIMediaItem *)self downloadExpirationDate];
  v52 = [v50 stringWithFormat:@"%@=%@", @"downloadExpirationDate", v51];
  [v3 addObject:v52];

  v53 = MEMORY[0x1E696AEC0];
  v54 = [(VUIMediaItem *)self hasBeenPlayed];
  v55 = [v53 stringWithFormat:@"%@=%@", @"hasBeenPlayed", v54];
  [v3 addObject:v55];

  v56 = MEMORY[0x1E696AEC0];
  v57 = [(VUIMediaItem *)self playCount];
  v58 = [v56 stringWithFormat:@"%@=%@", @"playCount", v57];
  [v3 addObject:v58];

  v59 = MEMORY[0x1E696AEC0];
  v60 = [(VUIMediaItem *)self bookmark];
  v61 = [v59 stringWithFormat:@"%@=%@", @"bookmark", v60];
  [v3 addObject:v61];

  v62 = MEMORY[0x1E696AEC0];
  v63 = [v3 componentsJoinedByString:{@", "}];
  v64 = [v62 stringWithFormat:@"<%@>", v63];

  return v64;
}

@end