@interface VUIMediaItem
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)_mediaItemWithMPMediaItem:(id)item;
+ (id)keyPathsForValuesAffectingPlayedState;
- (BOOL)allowsManualDownloadRenewal;
- (BOOL)renewsOfflineKeysAutomatically;
- (id)description;
@end

@implementation VUIMediaItem

+ (id)_mediaItemWithMPMediaItem:(id)item
{
  itemCopy = item;
  v4 = [VUIMPMediaItem alloc];
  v5 = +[VUIMediaLibraryManager defaultManager];
  deviceMediaLibrary = [v5 deviceMediaLibrary];
  v7 = VUIMediaEntityFetchRequestAllPropertiesSet();
  v8 = [(VUIMPMediaItem *)v4 initWithMediaLibrary:deviceMediaLibrary mediaItem:itemCopy requestedProperties:v7];

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

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if (automaticallyNotifiesObserversForKey____onceToken_0 != -1)
  {
    +[VUIMediaItem automaticallyNotifiesObserversForKey:];
  }

  if ([automaticallyNotifiesObserversForKey____keysToNotifyManually_0 containsObject:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VUIMediaItem;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
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
  duration = [(VUIMediaItem *)self duration];
  v7 = [v5 stringWithFormat:@"%@=%@", @"duration", duration];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  creationDate = [(VUIMediaItem *)self creationDate];
  v10 = [v8 stringWithFormat:@"%@=%@", @"creationDate", creationDate];
  [v3 addObject:v10];

  v11 = MEMORY[0x1E696AEC0];
  modifiedDate = [(VUIMediaItem *)self modifiedDate];
  v13 = [v11 stringWithFormat:@"%@=%@", @"modifiedDate", modifiedDate];
  [v3 addObject:v13];

  v14 = MEMORY[0x1E696AEC0];
  lastPlayedDate = [(VUIMediaItem *)self lastPlayedDate];
  v16 = [v14 stringWithFormat:@"%@=%@", @"lastPlayedDate", lastPlayedDate];
  [v3 addObject:v16];

  v17 = MEMORY[0x1E696AEC0];
  previewFrameImageIdentifier = [(VUIMediaItem *)self previewFrameImageIdentifier];
  v19 = [v17 stringWithFormat:@"%@=%@", @"previewFrameImageIdentifier", previewFrameImageIdentifier];
  [v3 addObject:v19];

  v20 = MEMORY[0x1E696AEC0];
  extrasURL = [(VUIMediaItem *)self extrasURL];
  v22 = [v20 stringWithFormat:@"%@=%@", @"extrasURL", extrasURL];
  [v3 addObject:v22];

  v23 = MEMORY[0x1E696AEC0];
  seasonIdentifier = [(VUIMediaItem *)self seasonIdentifier];
  v25 = [v23 stringWithFormat:@"%@=%@", @"seasonIdentifier", seasonIdentifier];
  [v3 addObject:v25];

  v26 = MEMORY[0x1E696AEC0];
  seasonTitle = [(VUIMediaItem *)self seasonTitle];
  v28 = [v26 stringWithFormat:@"%@=%@", @"seasonTitle", seasonTitle];
  [v3 addObject:v28];

  v29 = MEMORY[0x1E696AEC0];
  episodeNumber = [(VUIMediaItem *)self episodeNumber];
  v31 = [v29 stringWithFormat:@"%@=%@", @"episodeNumber", episodeNumber];
  [v3 addObject:v31];

  v32 = MEMORY[0x1E696AEC0];
  fractionalEpisodeNumber = [(VUIMediaItem *)self fractionalEpisodeNumber];
  v34 = [v32 stringWithFormat:@"%@=%@", @"fractionalEpisodeNumber", fractionalEpisodeNumber];
  [v3 addObject:v34];

  v35 = MEMORY[0x1E696AEC0];
  episodeIndexInSeries = [(VUIMediaItem *)self episodeIndexInSeries];
  v37 = [v35 stringWithFormat:@"%@=%@", @"episodeIndexInSeries", episodeIndexInSeries];
  [v3 addObject:v37];

  v38 = MEMORY[0x1E696AEC0];
  studio = [(VUIMediaItem *)self studio];
  v40 = [v38 stringWithFormat:@"%@=%@", @"studio", studio];
  [v3 addObject:v40];

  v41 = MEMORY[0x1E696AEC0];
  credits = [(VUIMediaItem *)self credits];
  v43 = [v41 stringWithFormat:@"%@=%@", @"credits", credits];
  [v3 addObject:v43];

  v44 = MEMORY[0x1E696AEC0];
  rentalPlaybackDuration = [(VUIMediaItem *)self rentalPlaybackDuration];
  v46 = [v44 stringWithFormat:@"%@=%@", @"rentalPlaybackDuration", rentalPlaybackDuration];
  [v3 addObject:v46];

  v47 = MEMORY[0x1E696AEC0];
  rentalExpirationDate = [(VUIMediaItem *)self rentalExpirationDate];
  v49 = [v47 stringWithFormat:@"%@=%@", @"rentalExpirationDate", rentalExpirationDate];
  [v3 addObject:v49];

  v50 = MEMORY[0x1E696AEC0];
  downloadExpirationDate = [(VUIMediaItem *)self downloadExpirationDate];
  v52 = [v50 stringWithFormat:@"%@=%@", @"downloadExpirationDate", downloadExpirationDate];
  [v3 addObject:v52];

  v53 = MEMORY[0x1E696AEC0];
  hasBeenPlayed = [(VUIMediaItem *)self hasBeenPlayed];
  v55 = [v53 stringWithFormat:@"%@=%@", @"hasBeenPlayed", hasBeenPlayed];
  [v3 addObject:v55];

  v56 = MEMORY[0x1E696AEC0];
  playCount = [(VUIMediaItem *)self playCount];
  v58 = [v56 stringWithFormat:@"%@=%@", @"playCount", playCount];
  [v3 addObject:v58];

  v59 = MEMORY[0x1E696AEC0];
  bookmark = [(VUIMediaItem *)self bookmark];
  v61 = [v59 stringWithFormat:@"%@=%@", @"bookmark", bookmark];
  [v3 addObject:v61];

  v62 = MEMORY[0x1E696AEC0];
  v63 = [v3 componentsJoinedByString:{@", "}];
  v64 = [v62 stringWithFormat:@"<%@>", v63];

  return v64;
}

@end