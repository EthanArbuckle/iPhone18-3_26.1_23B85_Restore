@interface PCMediaActivity
+ (id)titleForContentItem:(id)a3;
+ (id)userActivityInfoFor:(id)a3 inContext:(id)a4;
- (BOOL)destinationOriginExists;
- (BOOL)isEqual:(id)a3;
- (PCMediaActivity)initWithActivity:(id)a3;
- (PCMediaActivity)initWithDisplayContext:(id)a3 response:(id)a4;
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

- (PCMediaActivity)initWithDisplayContext:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PCMediaActivity;
  v8 = [(PCMediaActivity *)&v16 initWithActivityType:@"com.apple.ProximityControl.activity.media"];
  v9 = v8;
  if (v8)
  {
    makeIneligibleForProcessing(v8);
    v10 = [v7 playbackQueue];
    v11 = [v10 contentItemWithOffset:0];
    v12 = [PCMediaActivity titleForContentItem:v11];
    [(PCMediaActivity *)v9 setTitle:v12];

    v13 = [PCMediaActivity userActivityInfoFor:v7 inContext:v6];
    v14 = [v13 copy];
    [(PCMediaActivity *)v9 setUserInfo:v14];
  }

  return v9;
}

+ (id)userActivityInfoFor:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = objc_alloc_init(v6);
  v9 = [v5 playbackState];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  [v8 setObject:v10 forKey:@"playbackState"];

  v11 = [v5 destination];
  v12 = [v11 origin];
  v13 = v12 != 0;

  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  [v8 setObject:v14 forKey:@"destinationOriginExists"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "interactionDirection")}];
  [v8 setObject:v15 forKey:@"mediaDirection"];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v7 interactionBehavior];

  v18 = [v16 numberWithInteger:v17];
  [v8 setObject:v18 forKey:@"mediaBehavior"];

  v19 = [v5 playbackQueue];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 contentItemWithOffset:0];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 artwork];
      v24 = [v23 imageData];

      if (v24)
      {
        [v8 setObject:v24 forKey:@"artworkKey"];
      }

      v25 = [v22 metadata];
      v26 = [v25 userInfo];

      if (v26)
      {
        [v8 setObject:v26 forKey:@"metadataKey"];
      }

      v27 = [v22 metadata];
      v28 = [v27 title];

      if (v28)
      {
        [v8 setObject:v28 forKey:@"mediaTitle"];
      }

      v29 = [v22 metadata];
      v30 = [v29 mediaType];

      if (v30)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
        [v8 setObject:v31 forKey:@"mediaType"];
      }
    }
  }

  v32 = [v5 playerPath];
  v33 = [v32 client];
  v34 = [v33 representedBundleID];

  if (v34)
  {
    [v8 setObject:v34 forKey:@"bundleIdentifierKey"];
  }

  v35 = [v8 copy];

  return v35;
}

+ (id)titleForContentItem:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v10 = [PCLocalizedString localizedStringForKey:6];
    goto LABEL_13;
  }

  v5 = [v3 metadata];
  v6 = [v5 trackArtistName];

  v7 = [v4 metadata];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 trackArtistName];
  }

  else
  {
    v11 = [v7 albumArtistName];

    v12 = [v4 metadata];
    v8 = v12;
    if (v11)
    {
      v9 = [v12 albumArtistName];
    }

    else
    {
      v13 = [v12 radioStationName];

      if (!v13)
      {
LABEL_11:
        v14 = [v4 metadata];
        v10 = [v14 localizedTitle];
        goto LABEL_12;
      }

      v8 = [v4 metadata];
      v9 = [v8 radioStationName];
    }
  }

  v14 = v9;

  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = [PCLocalizedString localizedStringForKey:7];
  v16 = MEMORY[0x277CCACA8];
  v17 = [v4 metadata];
  v18 = [v17 localizedTitle];
  v10 = [v16 stringWithFormat:@"%@%@%@", v18, v15, v14];

LABEL_12:
LABEL_13:

  return v10;
}

- (PCMediaActivity)initWithActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [@"com.apple.ProximityControl.activity.media" isEqualToString:v5];

  if (v6)
  {
    v7 = [v4 activityType];
    v13.receiver = self;
    v13.super_class = PCMediaActivity;
    v8 = [(PCMediaActivity *)&v13 initWithActivityType:v7];

    if (v8)
    {
      makeIneligibleForProcessing(v8);
      v9 = [v4 userInfo];
      [(PCMediaActivity *)v8 setUserInfo:v9];

      v10 = [v4 title];
      [(PCMediaActivity *)v8 setTitle:v10];
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = [(PCMediaActivity *)self title];

  if (v3)
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
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKey:@"bundleIdentifierKey"];

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
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKey:@"artworkKey"];

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
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"mediaDirection"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)behavior
{
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"mediaBehavior"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)playbackState
{
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKey:@"playbackState"];

  if (v3)
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)destinationOriginExists
{
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKey:@"destinationOriginExists"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)mediaType
{
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKey:@"mediaType"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)shortDescription
{
  v2 = [(PCMediaActivity *)self userInfo];
  v3 = [v2 objectForKey:@"mediaTitle"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 pcactivityType];
  if (v5 == [(PCMediaActivity *)self pcactivityType])
  {
    v6 = v4;
    v7 = [(PCMediaActivity *)self description];
    v8 = [v6 description];
    v9 = [v7 isEqualToString:v8];

    if (v9 && (v10 = -[PCMediaActivity direction](self, "direction"), v10 == [v6 direction]) && (v11 = -[PCMediaActivity playbackState](self, "playbackState"), v11 == objc_msgSend(v6, "playbackState")))
    {
      v12 = [(PCMediaActivity *)self userInfo];
      v13 = [v12 objectForKey:@"artworkKey"];

      v14 = [v6 userInfo];
      v15 = [v14 objectForKey:@"artworkKey"];

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