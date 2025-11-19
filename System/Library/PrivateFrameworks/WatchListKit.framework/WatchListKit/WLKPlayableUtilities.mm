@interface WLKPlayableUtilities
+ (BOOL)_openITunesPlayableWatchListAppAvailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7;
+ (BOOL)_openITunesPlayableWatchListAppUnavailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7;
+ (BOOL)_openNonITunesPlayableWatchListAppAvailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7;
+ (BOOL)_openNonITunesPlayableWatchListAppUnavailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7;
+ (BOOL)_openPunchoutURL:(id)a3 isPlaybackURL:(BOOL)a4;
+ (BOOL)_playNonITunesPlayableUsingAssociatedApp:(id)a3;
+ (BOOL)openPlayable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7;
+ (id)_defaultPunchoutURLWithPlayable:(id)a3 URLKey:(id)a4;
+ (id)_defaultPunchoutURLWithPlayable:(id)a3 isPlaybackURL:(BOOL *)a4;
+ (id)_punchoutURLForDirectPlayback:(id)a3 ignoreExtras:(BOOL)a4;
+ (id)_watchListAppPunchoutURLWithPlayable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7 allowPlayAction:(BOOL)a8 isPlaybackURL:(BOOL *)a9;
@end

@implementation WLKPlayableUtilities

+ (BOOL)openPlayable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [objc_opt_class() isFullTVAppEnabled];
  v17 = [v12 isiTunes];
  if (v16)
  {
    if (v17)
    {
      v18 = [a1 _openITunesPlayableWatchListAppAvailable:v12 forContentType:a4 canonicalID:v13 showCanonicalID:v14 seasonCanonicalID:v15];
    }

    else
    {
      v18 = [a1 _openNonITunesPlayableWatchListAppAvailable:v12 forContentType:a4 canonicalID:v13 showCanonicalID:v14 seasonCanonicalID:v15];
    }
  }

  else if (v17)
  {
    v18 = [a1 _openITunesPlayableWatchListAppUnavailable:v12 forContentType:a4 canonicalID:v13 showCanonicalID:v14 seasonCanonicalID:v15];
  }

  else
  {
    v18 = [a1 _openNonITunesPlayableWatchListAppUnavailable:v12 forContentType:a4 canonicalID:v13 showCanonicalID:v14 seasonCanonicalID:v15];
  }

  v19 = v18;
  NSLog(&cfstr_Wlkplayableuti.isa, v18);

  return v19;
}

+ (BOOL)_openITunesPlayableWatchListAppAvailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7
{
  v13 = 0;
  v8 = [a1 _watchListAppPunchoutURLWithPlayable:a3 forContentType:a4 canonicalID:a5 showCanonicalID:a6 seasonCanonicalID:a7 allowPlayAction:1 isPlaybackURL:&v13];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 absoluteString];
    NSLog(&cfstr_Wlkplayableuti_0.isa, v10);

    v11 = [a1 _openPunchoutURL:v9 isPlaybackURL:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_openNonITunesPlayableWatchListAppAvailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ([v12 isEntitled] && (objc_msgSend(a1, "_playNonITunesPlayableUsingAssociatedApp:", v12) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = [a1 _watchListAppOpenPunchoutURLWithITunesPlayable:v12 forContentType:a4 canonicalID:v13 showCanonicalID:v14 seasonCanonicalID:v15];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 absoluteString];
      NSLog(&cfstr_Wlkplayableuti_1.isa, v19);

      v16 = [a1 _openPunchoutURL:v18 isPlaybackURL:0];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (BOOL)_openITunesPlayableWatchListAppUnavailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7
{
  v13 = 0;
  v8 = [a1 _defaultPunchoutURLWithPlayable:a3 isPlaybackURL:{&v13, a5, a6, a7}];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 absoluteString];
    NSLog(&cfstr_Wlkplayableuti_2.isa, v10);

    v11 = [a1 _openPunchoutURL:v9 isPlaybackURL:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_openNonITunesPlayableWatchListAppUnavailable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7
{
  v8 = a3;
  if ([v8 isEntitled] && (objc_msgSend(a1, "_playNonITunesPlayableUsingAssociatedApp:", v8) & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v14 = 0;
    v10 = [a1 _defaultPunchoutURLWithPlayable:v8 isPlaybackURL:&v14];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 absoluteString];
      NSLog(&cfstr_Wlkplayableuti_3.isa, v12);

      v9 = [a1 _openPunchoutURL:v11 isPlaybackURL:v14];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_watchListAppPunchoutURLWithPlayable:(id)a3 forContentType:(unint64_t)a4 canonicalID:(id)a5 showCanonicalID:(id)a6 seasonCanonicalID:(id)a7 allowPlayAction:(BOOL)a8 isPlaybackURL:(BOOL *)a9
{
  v9 = a8;
  v14 = a9;
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"/movie/%@", v16];
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_17;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"/show/%@", v16];
    }

    goto LABEL_16;
  }

  switch(a4)
  {
    case 3uLL:
      if (v17)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"/season/%@", v16];
        v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"showId" value:v17];
        [v19 addObject:v21];
LABEL_14:

        break;
      }

      v20 = 0;
      break;
    case 4uLL:
      v20 = 0;
      if (v17 && v18)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"/episode/%@", v16];
        v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"seasonId" value:v18];
        [v19 addObject:v21];
        v22 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"showId" value:v17];
        v23 = v17;
        v24 = v18;
        v25 = v22;
        [v19 addObject:v22];

        v18 = v24;
        v17 = v23;
        goto LABEL_14;
      }

      break;
    case 5uLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"/sportingevent/%@", v16];
      v20 = LABEL_16:;
      break;
    default:
      break;
  }

LABEL_17:
  v26 = [v15 isEntitled] & v9;
  if (v26)
  {
    v27 = v17;
    v28 = v18;
    v29 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"action" value:@"play"];
    [v19 addObject:v29];
    v30 = [v15 playEvent];

    if (v30)
    {
      v31 = [v15 playEvent];
      [v31 elapsedTime];
      v33 = v32;

      if (v33 > 0.00000011920929)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v33];
        v35 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"resumeTime" value:v34];
        [v19 addObject:v35];
      }
    }

    v18 = v28;
    v17 = v27;
    v14 = a9;
  }

  if (v20)
  {
    v36 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v36 setScheme:@"com.apple.WatchList"];
    [v36 setHost:@"tv.apple.com"];
    [v36 setPath:v20];
    [v36 setQueryItems:v19];
    v37 = [v36 URL];

    if (!v14)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v37 = 0;
  LOBYTE(v26) = 0;
  if (v14)
  {
LABEL_24:
    *v14 = v26;
  }

LABEL_25:

  return v37;
}

+ (id)_punchoutURLForDirectPlayback:(id)a3 ignoreExtras:(BOOL)a4
{
  if (a3)
  {
    v4 = a4;
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:a3 resolvingAgainstBaseURL:0];
    v6 = [v5 queryItems];
    v7 = [v6 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB18] array];
    }

    v11 = v9;

    v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"action" value:@"play"];
    [v11 addObject:v12];

    if (v4)
    {
      v13 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"ignoreExtras" value:@"true"];
      [v11 addObject:v13];
    }

    [v5 setQueryItems:v11];
    v10 = [v5 URL];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)_playNonITunesPlayableUsingAssociatedApp:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEntitled])
  {
    v4 = [v3 punchoutUrls];
    v5 = [v4 objectForKey:@"play"];

    NSLog(&cfstr_Wlkplayableuti_4.isa, v5);
    if (v5)
    {
      v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      v7 = v6;
      if (v6)
      {
        v25 = v6;
        v26 = v5;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v8 = [v3 channelDetails];
        v9 = [v8 appBundleIDs];

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
LABEL_6:
          v13 = 0;
          while (1)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            v15 = +[WLKAppLibrary defaultAppLibrary];
            v16 = [v15 allAppBundleIdentifiers];
            v17 = [v16 containsObject:v14];

            if (v17)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
              if (v11)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          v19 = v14;

          if (!v19)
          {
            goto LABEL_17;
          }

          v18 = 1;
          v20 = WLKLaunchOptionsForPlayback(1);
          v21 = [MEMORY[0x277CC1E80] defaultWorkspace];
          v7 = v25;
          v22 = [v21 operationToOpenResource:v25 usingApplication:v19 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:v20 delegate:0];

          [v22 main];
          v5 = v26;
        }

        else
        {
LABEL_12:

LABEL_17:
          v19 = [v3 channelDetails];
          v20 = [v19 appBundleIDs];
          NSLog(&cfstr_Wlkplayableuti_5.isa, v20);
          v18 = 0;
          v7 = v25;
          v5 = v26;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (id)_defaultPunchoutURLWithPlayable:(id)a3 URLKey:(id)a4
{
  v5 = a4;
  v6 = [a3 punchoutUrls];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_defaultPunchoutURLWithPlayable:(id)a3 isPlaybackURL:(BOOL *)a4
{
  v6 = a3;
  v7 = [v6 isEntitled];
  v8 = v7;
  if (v7)
  {
    [a1 _defaultPlayPunchoutURLWithPlayable:v6];
  }

  else
  {
    [a1 _defaultOpenPunchoutURLWithPlayable:v6];
  }
  v9 = ;

  if (a4)
  {
    *a4 = v8;
  }

  return v9;
}

+ (BOOL)_openPunchoutURL:(id)a3 isPlaybackURL:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277CBEAA8];
  v6 = a3;
  v7 = [v5 date];
  v8 = WLKLaunchOptionsForPlayback(v4);
  v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v15 = 0;
  v10 = [v9 openURL:v6 withOptions:v8 error:&v15];

  v11 = v15;
  v12 = [MEMORY[0x277CBEAA8] date];
  [v12 timeIntervalSinceDate:v7];
  NSLog(&cfstr_Wlkplayableuti_6.isa, v10, v11, v13);

  return v10;
}

@end