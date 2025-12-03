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
    reasonForNoInternet = [v7 reasonForNoInternet];

    v9 = [MEMORY[0x277D3DAF8] downloadSizeLimitForEpisode:v5];
    if ([v6 downloadBytes] <= v9)
    {
      isReachableViaCellular = 0;
    }

    else
    {
      v10 = +[MTReachability sharedInstance];
      isReachableViaCellular = [v10 isReachableViaCellular];
    }

    if ((reasonForNoInternet & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v12 = +[MTReachability sharedInstance];
      reasonTextForNoInternet = [v12 reasonTextForNoInternet];
LABEL_23:
      downloadDescription = reasonTextForNoInternet;

      goto LABEL_24;
    }

    if ((reasonForNoInternet == 2) | isReachableViaCellular & 1)
    {
      v14 = MGGetBoolAnswer();
      v15 = @"WIFI_CONNECT_RESUME";
      if (v14)
      {
        v15 = @"WLAN_CONNECT_RESUME";
      }

      v16 = MEMORY[0x277CCA8D8];
      v17 = v15;
      mainBundle = [v16 mainBundle];
      downloadDescription = [mainBundle localizedStringForKey:v17 value:&stru_2870B1390 table:0];

      goto LABEL_24;
    }
  }

  downloadPhase = [v6 downloadPhase];
  downloadDescription = 0;
  if (downloadPhase > 2)
  {
    switch(downloadPhase)
    {
      case 3:
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = mainBundle2;
        v22 = @"TAP_TO_RESUME_DOWNLOAD";
        break;
      case 4:
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = mainBundle2;
        v22 = @"Waiting";
        break;
      case 5:
        mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
        v12 = mainBundle2;
        v22 = @"DOWNLOAD_ERROR_TAP_TO_RETRY";
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (downloadPhase == 1)
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = mainBundle2;
    v22 = @"Preparing to download...";
LABEL_22:
    reasonTextForNoInternet = [mainBundle2 localizedStringForKey:v22 value:&stru_2870B1390 table:0];
    goto LABEL_23;
  }

  if (downloadPhase == 2)
  {
    downloadDescription = [v6 downloadDescription];
  }

LABEL_24:

  return downloadDescription;
}

+ (uint64_t)downloadSizeLimitForEpisode:()Library_App
{
  isVideo = [a3 isVideo];

  return [self downloadSizeLimitForVideo:isVideo];
}

- (void)setGuid:()Library_App
{
  v9 = a3;
  guid = [self guid];
  v5 = v9 | guid;

  if (v5)
  {
    guid2 = [self guid];
    v7 = [guid2 isEqualToString:v9];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DC40];
      [self willChangeValueForKey:*MEMORY[0x277D3DC40]];
      [self setPrimitiveValue:v9 forKey:v8];
      [self didChangeValueForKey:v8];
      [self updateUPPIdentifierIfNeeded];
    }
  }
}

- (void)setTitle:()Library_App
{
  v10 = a3;
  title = [self title];
  v5 = v10 | title;

  if (v5)
  {
    title2 = [self title];
    v7 = [title2 isEqualToString:v10];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DCB8];
      [self willChangeValueForKey:*MEMORY[0x277D3DCB8]];
      [self setPrimitiveValue:v10 forKey:v8];
      [self didChangeValueForKey:v8];
      guid = [self guid];

      if (!guid)
      {
        [self updateUPPIdentifierIfNeeded];
      }
    }
  }
}

- (void)setAuthor:()Library_App
{
  v10 = a3;
  author = [self author];
  v5 = v10 | author;

  if (v5)
  {
    author2 = [self author];
    v7 = [author2 isEqualToString:v10];

    if ((v7 & 1) == 0)
    {
      v8 = *MEMORY[0x277D3DBD8];
      [self willChangeValueForKey:*MEMORY[0x277D3DBD8]];
      [self setPrimitiveValue:v10 forKey:v8];
      [self didChangeValueForKey:v8];
      guid = [self guid];

      if (!guid)
      {
        [self updateUPPIdentifierIfNeeded];
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
  playlists = [self playlists];
  v2 = [playlists countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(playlists);
        }

        [*(*(&v7 + 1) + 8 * v5++) updateUnplayedCount];
      }

      while (v3 != v5);
      v3 = [playlists countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setPlayCount:()Library_App
{
  result = [self playCount];
  if (result != a3)
  {
    v6 = *MEMORY[0x277D3DC68];
    [self willChangeValueForKey:*MEMORY[0x277D3DC68]];
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [self setPrimitiveValue:v7 forKey:v6];

    [self didChangeValueForKey:v6];

    return [self updateUPPTimestamp];
  }

  return result;
}

- (uint64_t)setPlayhead:()Library_App
{
  [self playhead];
  v5 = v4;
  result = [self playhead];
  if (*&v7 != a2)
  {
    *&v7 = vabds_f32(v5, a2);
    if (a2 == 0.0 || *&v7 >= 0.5)
    {
      v9 = *MEMORY[0x277D3DC80];
      [self willChangeValueForKey:{*MEMORY[0x277D3DC80], v7}];
      *&v10 = a2;
      v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
      [self setPrimitiveValue:v11 forKey:v9];

      [self didChangeValueForKey:v9];

      return [self updateUPPTimestamp];
    }
  }

  return result;
}

@end