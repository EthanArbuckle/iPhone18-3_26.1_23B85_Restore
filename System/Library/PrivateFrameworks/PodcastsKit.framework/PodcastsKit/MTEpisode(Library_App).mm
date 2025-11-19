@interface MTEpisode(Library_App)
+ (id)dateLabelDescriptionForEpisode:()Library_App download:;
+ (uint64_t)downloadSizeLimitForEpisode:()Library_App;
- (uint64_t)setPlayCount:()Library_App;
- (uint64_t)setPlayhead:()Library_App;
- (void)didChangePersistentID;
- (void)setAuthor:()Library_App;
- (void)setGuid:()Library_App;
- (void)setTitle:()Library_App;
@end

@implementation MTEpisode(Library_App)

+ (id)dateLabelDescriptionForEpisode:()Library_App download:
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[MTReachability sharedInstance];
    v8 = [v7 reasonForNoInternet];

    v9 = [MEMORY[0x277D3DAF8] downloadSizeLimitForEpisode:v5];
    if ([v6 downloadBytes] <= v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = +[MTReachability sharedInstance];
      v11 = [v10 isReachableViaCellular];
    }

    if ((v8 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v12 = +[MTReachability sharedInstance];
      v13 = [v12 reasonTextForNoInternet];
LABEL_23:
      v19 = v13;

      goto LABEL_24;
    }

    if ((v8 == 2) | v11 & 1)
    {
      v14 = MGGetBoolAnswer();
      v15 = @"WIFI_CONNECT_RESUME";
      if (v14)
      {
        v15 = @"WLAN_CONNECT_RESUME";
      }

      v16 = MEMORY[0x277CCA8D8];
      v17 = v15;
      v18 = [v16 mainBundle];
      v19 = [v18 localizedStringForKey:v17 value:&stru_2870B1390 table:0];

      goto LABEL_24;
    }
  }

  v20 = [v6 downloadPhase];
  v19 = 0;
  if (v20 > 2)
  {
    switch(v20)
    {
      case 3:
        v21 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = v21;
        v22 = @"TAP_TO_RESUME_DOWNLOAD";
        break;
      case 4:
        v21 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = v21;
        v22 = @"Waiting";
        break;
      case 5:
        v21 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = v21;
        v22 = @"DOWNLOAD_ERROR_TAP_TO_RETRY";
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v20 == 1)
  {
    v21 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = v21;
    v22 = @"Preparing to download...";
LABEL_22:
    v13 = [v21 localizedStringForKey:v22 value:&stru_2870B1390 table:0];
    goto LABEL_23;
  }

  if (v20 == 2)
  {
    v19 = [v6 downloadDescription];
  }

LABEL_24:

  return v19;
}

+ (uint64_t)downloadSizeLimitForEpisode:()Library_App
{
  v4 = [a3 isVideo];

  return [a1 downloadSizeLimitForVideo:v4];
}

- (void)setGuid:()Library_App
{
  v9 = a3;
  v4 = [a1 guid];
  v5 = v9 | v4;

  if (v5)
  {
    v6 = [a1 guid];
    v7 = [v6 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DC40];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DC40]];
      [a1 setPrimitiveValue:v9 forKey:v8];
      [a1 didChangeValueForKey:v8];
      [a1 updateUPPIdentifierIfNeeded];
    }
  }
}

- (void)setTitle:()Library_App
{
  v10 = a3;
  v4 = [a1 title];
  v5 = v10 | v4;

  if (v5)
  {
    v6 = [a1 title];
    v7 = [v6 isEqualToString:v10];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DCB8];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DCB8]];
      [a1 setPrimitiveValue:v10 forKey:v8];
      [a1 didChangeValueForKey:v8];
      v9 = [a1 guid];

      if (!v9)
      {
        [a1 updateUPPIdentifierIfNeeded];
      }
    }
  }
}

- (void)setAuthor:()Library_App
{
  v10 = a3;
  v4 = [a1 author];
  v5 = v10 | v4;

  if (v5)
  {
    v6 = [a1 author];
    v7 = [v6 isEqualToString:v10];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DBD8];
      [a1 willChangeValueForKey:*MEMORY[0x277D3DBD8]];
      [a1 setPrimitiveValue:v10 forKey:v8];
      [a1 didChangeValueForKey:v8];
      v9 = [a1 guid];

      if (!v9)
      {
        [a1 updateUPPIdentifierIfNeeded];
      }
    }
  }
}

- (void)didChangePersistentID
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [a1 playlists];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) updateUnplayedCount];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setPlayCount:()Library_App
{
  result = [a1 playCount];
  if (result != a3)
  {
    v6 = *MEMORY[0x277D3DC68];
    [a1 willChangeValueForKey:*MEMORY[0x277D3DC68]];
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [a1 setPrimitiveValue:v7 forKey:v6];

    [a1 didChangeValueForKey:v6];

    return [a1 updateUPPTimestamp];
  }

  return result;
}

- (uint64_t)setPlayhead:()Library_App
{
  [a1 playhead];
  v5 = v4;
  result = [a1 playhead];
  if (*&v7 != a2)
  {
    *&v7 = vabds_f32(v5, a2);
    if (a2 == 0.0 || *&v7 >= 0.5)
    {
      v9 = *MEMORY[0x277D3DC80];
      [a1 willChangeValueForKey:{*MEMORY[0x277D3DC80], v7}];
      *&v10 = a2;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
      [a1 setPrimitiveValue:v11 forKey:v9];

      [a1 didChangeValueForKey:v9];

      return [a1 updateUPPTimestamp];
    }
  }

  return result;
}

@end