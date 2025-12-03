@interface PCMediaActivity
+ (id)titleForContentItem:(id)item;
+ (id)userActivityInfoFor:(id)for inContext:(id)context;
- (BOOL)destinationOriginExists;
- (BOOL)isEqual:(id)equal;
- (PCMediaActivity)initWithActivity:(id)activity;
- (PCMediaActivity)initWithDisplayContext:(id)context response:(id)response;
- (id)activityString;
- (id)artWork;
- (id)bundleIdentifier;
- (id)description;
- (id)shortDescription;
- (int64_t)behavior;
- (int64_t)direction;
- (int64_t)mediaType;
- (unsigned)playbackState;
@end

@implementation PCMediaActivity

- (PCMediaActivity)initWithDisplayContext:(id)context response:(id)response
{
  contextCopy = context;
  responseCopy = response;
  v16.receiver = self;
  v16.super_class = PCMediaActivity;
  v8 = [(PCMediaActivity *)&v16 initWithActivityType:@"com.apple.ProximityControl.activity.media"];
  v9 = v8;
  if (v8)
  {
    makeIneligibleForProcessing(v8);
    playbackQueue = [responseCopy playbackQueue];
    v11 = [playbackQueue contentItemWithOffset:0];
    v12 = [PCMediaActivity titleForContentItem:v11];
    [(PCMediaActivity *)v9 setTitle:v12];

    v13 = [PCMediaActivity userActivityInfoFor:responseCopy inContext:contextCopy];
    v14 = [v13 copy];
    [(PCMediaActivity *)v9 setUserInfo:v14];
  }

  return v9;
}

+ (id)userActivityInfoFor:(id)for inContext:(id)context
{
  forCopy = for;
  v6 = MEMORY[0x277CBEB38];
  contextCopy = context;
  v8 = objc_alloc_init(v6);
  playbackState = [forCopy playbackState];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:playbackState];
  [v8 setObject:v10 forKey:@"playbackState"];

  destination = [forCopy destination];
  origin = [destination origin];
  v13 = origin != 0;

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v8 setObject:v14 forKey:@"destinationOriginExists"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(contextCopy, "interactionDirection")}];
  [v8 setObject:v15 forKey:@"mediaDirection"];

  v16 = MEMORY[0x277CCABB0];
  interactionBehavior = [contextCopy interactionBehavior];

  v18 = [v16 numberWithInteger:interactionBehavior];
  [v8 setObject:v18 forKey:@"mediaBehavior"];

  playbackQueue = [forCopy playbackQueue];
  v20 = playbackQueue;
  if (playbackQueue)
  {
    v21 = [playbackQueue contentItemWithOffset:0];
    v22 = v21;
    if (v21)
    {
      artwork = [v21 artwork];
      imageData = [artwork imageData];

      if (imageData)
      {
        [v8 setObject:imageData forKey:@"artworkKey"];
      }

      metadata = [v22 metadata];
      userInfo = [metadata userInfo];

      if (userInfo)
      {
        [v8 setObject:userInfo forKey:@"metadataKey"];
      }

      metadata2 = [v22 metadata];
      title = [metadata2 title];

      if (title)
      {
        [v8 setObject:title forKey:@"mediaTitle"];
      }

      metadata3 = [v22 metadata];
      mediaType = [metadata3 mediaType];

      if (mediaType)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithInteger:mediaType];
        [v8 setObject:v31 forKey:@"mediaType"];
      }
    }
  }

  playerPath = [forCopy playerPath];
  client = [playerPath client];
  representedBundleID = [client representedBundleID];

  if (representedBundleID)
  {
    [v8 setObject:representedBundleID forKey:@"bundleIdentifierKey"];
  }

  v35 = [v8 copy];

  return v35;
}

+ (id)titleForContentItem:(id)item
{
  itemCopy = item;
  v4 = itemCopy;
  if (!itemCopy)
  {
    localizedTitle = [PCLocalizedString localizedStringForKey:6];
    goto LABEL_13;
  }

  metadata = [itemCopy metadata];
  trackArtistName = [metadata trackArtistName];

  metadata2 = [v4 metadata];
  metadata5 = metadata2;
  if (trackArtistName)
  {
    trackArtistName2 = [metadata2 trackArtistName];
  }

  else
  {
    albumArtistName = [metadata2 albumArtistName];

    metadata3 = [v4 metadata];
    metadata5 = metadata3;
    if (albumArtistName)
    {
      trackArtistName2 = [metadata3 albumArtistName];
    }

    else
    {
      radioStationName = [metadata3 radioStationName];

      if (!radioStationName)
      {
LABEL_11:
        metadata4 = [v4 metadata];
        localizedTitle = [metadata4 localizedTitle];
        goto LABEL_12;
      }

      metadata5 = [v4 metadata];
      trackArtistName2 = [metadata5 radioStationName];
    }
  }

  metadata4 = trackArtistName2;

  if (!metadata4)
  {
    goto LABEL_11;
  }

  v15 = [PCLocalizedString localizedStringForKey:7];
  v16 = MEMORY[0x277CCACA8];
  metadata6 = [v4 metadata];
  localizedTitle2 = [metadata6 localizedTitle];
  localizedTitle = [v16 stringWithFormat:@"%@%@%@", localizedTitle2, v15, metadata4];

LABEL_12:
LABEL_13:

  return localizedTitle;
}

- (PCMediaActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [@"com.apple.ProximityControl.activity.media" isEqualToString:activityType];

  if (v6)
  {
    activityType2 = [activityCopy activityType];
    v13.receiver = self;
    v13.super_class = PCMediaActivity;
    v8 = [(PCMediaActivity *)&v13 initWithActivityType:activityType2];

    if (v8)
    {
      makeIneligibleForProcessing(v8);
      userInfo = [activityCopy userInfo];
      [(PCMediaActivity *)v8 setUserInfo:userInfo];

      title = [activityCopy title];
      [(PCMediaActivity *)v8 setTitle:title];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  title = [(PCMediaActivity *)self title];

  if (title)
  {
    [(PCMediaActivity *)self title];
  }

  else
  {
    [PCLocalizedString localizedStringForKey:6];
  }
  v4 = ;

  return v4;
}

- (id)activityString
{
  if ([(PCMediaActivity *)self playbackState]== 1)
  {
    v2 = 9;
  }

  else
  {
    v2 = 10;
  }

  v3 = [PCLocalizedString localizedStringForKey:v2];

  return v3;
}

- (id)bundleIdentifier
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"bundleIdentifierKey"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"unknown";
  }

  return v4;
}

- (id)artWork
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"artworkKey"];

  if (v3)
  {
    v4 = [MEMORY[0x277D755B8] imageWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)direction
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"mediaDirection"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (int64_t)behavior
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"mediaBehavior"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (unsigned)playbackState
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"playbackState"];

  if (v3)
  {
    unsignedIntValue = [v3 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (BOOL)destinationOriginExists
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"destinationOriginExists"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (int64_t)mediaType
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"mediaType"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (id)shortDescription
{
  userInfo = [(PCMediaActivity *)self userInfo];
  v3 = [userInfo objectForKey:@"mediaTitle"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  pcactivityType = [equalCopy pcactivityType];
  if (pcactivityType == [(PCMediaActivity *)self pcactivityType])
  {
    v6 = equalCopy;
    v7 = [(PCMediaActivity *)self description];
    v8 = [v6 description];
    v9 = [v7 isEqualToString:v8];

    if (v9 && (v10 = -[PCMediaActivity direction](self, "direction"), v10 == [v6 direction]) && (v11 = -[PCMediaActivity playbackState](self, "playbackState"), v11 == objc_msgSend(v6, "playbackState")))
    {
      userInfo = [(PCMediaActivity *)self userInfo];
      v13 = [userInfo objectForKey:@"artworkKey"];

      userInfo2 = [v6 userInfo];
      v15 = [userInfo2 objectForKey:@"artworkKey"];

      v16 = v13;
      v17 = v15;
      v18 = v17;
      if (v16 == v17)
      {
        v19 = 1;
      }

      else if ((v16 != 0) == (v17 == 0))
      {
        v19 = 0;
      }

      else
      {
        v19 = [v16 isEqual:v17];
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end