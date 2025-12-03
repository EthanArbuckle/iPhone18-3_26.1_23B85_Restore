@interface WLKPlayableUtilities
+ (BOOL)_openITunesPlayableWatchListAppAvailable:(id)available forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID;
+ (BOOL)_openITunesPlayableWatchListAppUnavailable:(id)unavailable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID;
+ (BOOL)_openNonITunesPlayableWatchListAppAvailable:(id)available forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID;
+ (BOOL)_openNonITunesPlayableWatchListAppUnavailable:(id)unavailable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID;
+ (BOOL)_openPunchoutURL:(id)l isPlaybackURL:(BOOL)rL;
+ (BOOL)_playNonITunesPlayableUsingAssociatedApp:(id)app;
+ (BOOL)openPlayable:(id)playable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID;
+ (id)_defaultPunchoutURLWithPlayable:(id)playable URLKey:(id)key;
+ (id)_defaultPunchoutURLWithPlayable:(id)playable isPlaybackURL:(BOOL *)l;
+ (id)_punchoutURLForDirectPlayback:(id)playback ignoreExtras:(BOOL)extras;
+ (id)_watchListAppPunchoutURLWithPlayable:(id)playable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID allowPlayAction:(BOOL)action isPlaybackURL:(BOOL *)l;
@end

@implementation WLKPlayableUtilities

+ (BOOL)openPlayable:(id)playable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID
{
  playableCopy = playable;
  dCopy = d;
  iDCopy = iD;
  canonicalIDCopy = canonicalID;
  isFullTVAppEnabled = [objc_opt_class() isFullTVAppEnabled];
  isiTunes = [playableCopy isiTunes];
  if (isFullTVAppEnabled)
  {
    if (isiTunes)
    {
      v18 = [self _openITunesPlayableWatchListAppAvailable:playableCopy forContentType:type canonicalID:dCopy showCanonicalID:iDCopy seasonCanonicalID:canonicalIDCopy];
    }

    else
    {
      v18 = [self _openNonITunesPlayableWatchListAppAvailable:playableCopy forContentType:type canonicalID:dCopy showCanonicalID:iDCopy seasonCanonicalID:canonicalIDCopy];
    }
  }

  else if (isiTunes)
  {
    v18 = [self _openITunesPlayableWatchListAppUnavailable:playableCopy forContentType:type canonicalID:dCopy showCanonicalID:iDCopy seasonCanonicalID:canonicalIDCopy];
  }

  else
  {
    v18 = [self _openNonITunesPlayableWatchListAppUnavailable:playableCopy forContentType:type canonicalID:dCopy showCanonicalID:iDCopy seasonCanonicalID:canonicalIDCopy];
  }

  v19 = v18;
  NSLog(&cfstr_Wlkplayableuti.isa, v18);

  return v19;
}

+ (BOOL)_openITunesPlayableWatchListAppAvailable:(id)available forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID
{
  v13 = 0;
  v8 = [self _watchListAppPunchoutURLWithPlayable:available forContentType:type canonicalID:d showCanonicalID:iD seasonCanonicalID:canonicalID allowPlayAction:1 isPlaybackURL:&v13];
  v9 = v8;
  if (v8)
  {
    absoluteString = [v8 absoluteString];
    NSLog(&cfstr_Wlkplayableuti_0.isa, absoluteString);

    v11 = [self _openPunchoutURL:v9 isPlaybackURL:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_openNonITunesPlayableWatchListAppAvailable:(id)available forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID
{
  availableCopy = available;
  dCopy = d;
  iDCopy = iD;
  canonicalIDCopy = canonicalID;
  if ([availableCopy isEntitled] && (objc_msgSend(self, "_playNonITunesPlayableUsingAssociatedApp:", availableCopy) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = [self _watchListAppOpenPunchoutURLWithITunesPlayable:availableCopy forContentType:type canonicalID:dCopy showCanonicalID:iDCopy seasonCanonicalID:canonicalIDCopy];
    v18 = v17;
    if (v17)
    {
      absoluteString = [v17 absoluteString];
      NSLog(&cfstr_Wlkplayableuti_1.isa, absoluteString);

      v16 = [self _openPunchoutURL:v18 isPlaybackURL:0];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

+ (BOOL)_openITunesPlayableWatchListAppUnavailable:(id)unavailable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID
{
  v13 = 0;
  v8 = [self _defaultPunchoutURLWithPlayable:unavailable isPlaybackURL:{&v13, d, iD, canonicalID}];
  v9 = v8;
  if (v8)
  {
    absoluteString = [v8 absoluteString];
    NSLog(&cfstr_Wlkplayableuti_2.isa, absoluteString);

    v11 = [self _openPunchoutURL:v9 isPlaybackURL:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_openNonITunesPlayableWatchListAppUnavailable:(id)unavailable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID
{
  unavailableCopy = unavailable;
  if ([unavailableCopy isEntitled] && (objc_msgSend(self, "_playNonITunesPlayableUsingAssociatedApp:", unavailableCopy) & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v14 = 0;
    v10 = [self _defaultPunchoutURLWithPlayable:unavailableCopy isPlaybackURL:&v14];
    v11 = v10;
    if (v10)
    {
      absoluteString = [v10 absoluteString];
      NSLog(&cfstr_Wlkplayableuti_3.isa, absoluteString);

      v9 = [self _openPunchoutURL:v11 isPlaybackURL:v14];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)_watchListAppPunchoutURLWithPlayable:(id)playable forContentType:(unint64_t)type canonicalID:(id)d showCanonicalID:(id)iD seasonCanonicalID:(id)canonicalID allowPlayAction:(BOOL)action isPlaybackURL:(BOOL *)l
{
  actionCopy = action;
  lCopy2 = l;
  playableCopy = playable;
  dCopy = d;
  iDCopy = iD;
  canonicalIDCopy = canonicalID;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  dCopy = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"/movie/%@", dCopy];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_17;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"/show/%@", dCopy];
    }

    goto LABEL_16;
  }

  switch(type)
  {
    case 3uLL:
      if (iDCopy)
      {
        dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/season/%@", dCopy];
        v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"showId" value:iDCopy];
        [v19 addObject:v21];
LABEL_14:

        break;
      }

      dCopy = 0;
      break;
    case 4uLL:
      dCopy = 0;
      if (iDCopy && canonicalIDCopy)
      {
        dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/episode/%@", dCopy];
        v21 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"seasonId" value:canonicalIDCopy];
        [v19 addObject:v21];
        v22 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"showId" value:iDCopy];
        v23 = iDCopy;
        v24 = canonicalIDCopy;
        v25 = v22;
        [v19 addObject:v22];

        canonicalIDCopy = v24;
        iDCopy = v23;
        goto LABEL_14;
      }

      break;
    case 5uLL:
      [MEMORY[0x277CCACA8] stringWithFormat:@"/sportingevent/%@", dCopy];
      dCopy = LABEL_16:;
      break;
    default:
      break;
  }

LABEL_17:
  v26 = [playableCopy isEntitled] & actionCopy;
  if (v26)
  {
    v27 = iDCopy;
    v28 = canonicalIDCopy;
    v29 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"action" value:@"play"];
    [v19 addObject:v29];
    playEvent = [playableCopy playEvent];

    if (playEvent)
    {
      playEvent2 = [playableCopy playEvent];
      [playEvent2 elapsedTime];
      v33 = v32;

      if (v33 > 0.00000011920929)
      {
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v33];
        v35 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"resumeTime" value:v34];
        [v19 addObject:v35];
      }
    }

    canonicalIDCopy = v28;
    iDCopy = v27;
    lCopy2 = l;
  }

  if (dCopy)
  {
    v36 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v36 setScheme:@"com.apple.WatchList"];
    [v36 setHost:@"tv.apple.com"];
    [v36 setPath:dCopy];
    [v36 setQueryItems:v19];
    v37 = [v36 URL];

    if (!lCopy2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v37 = 0;
  LOBYTE(v26) = 0;
  if (lCopy2)
  {
LABEL_24:
    *lCopy2 = v26;
  }

LABEL_25:

  return v37;
}

+ (id)_punchoutURLForDirectPlayback:(id)playback ignoreExtras:(BOOL)extras
{
  if (playback)
  {
    extrasCopy = extras;
    v5 = [MEMORY[0x277CCACE0] componentsWithURL:playback resolvingAgainstBaseURL:0];
    queryItems = [v5 queryItems];
    v7 = [queryItems mutableCopy];
    v8 = v7;
    if (v7)
    {
      array = v7;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v11 = array;

    v12 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"action" value:@"play"];
    [v11 addObject:v12];

    if (extrasCopy)
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

+ (BOOL)_playNonITunesPlayableUsingAssociatedApp:(id)app
{
  v32 = *MEMORY[0x277D85DE8];
  appCopy = app;
  if ([appCopy isEntitled])
  {
    punchoutUrls = [appCopy punchoutUrls];
    v5 = [punchoutUrls objectForKey:@"play"];

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
        channelDetails = [appCopy channelDetails];
        appBundleIDs = [channelDetails appBundleIDs];

        v10 = [appBundleIDs countByEnumeratingWithState:&v27 objects:v31 count:16];
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
              objc_enumerationMutation(appBundleIDs);
            }

            v14 = *(*(&v27 + 1) + 8 * v13);
            v15 = +[WLKAppLibrary defaultAppLibrary];
            allAppBundleIdentifiers = [v15 allAppBundleIdentifiers];
            v17 = [allAppBundleIdentifiers containsObject:v14];

            if (v17)
            {
              break;
            }

            if (v11 == ++v13)
            {
              v11 = [appBundleIDs countByEnumeratingWithState:&v27 objects:v31 count:16];
              if (v11)
              {
                goto LABEL_6;
              }

              goto LABEL_12;
            }
          }

          channelDetails2 = v14;

          if (!channelDetails2)
          {
            goto LABEL_17;
          }

          v18 = 1;
          appBundleIDs2 = WLKLaunchOptionsForPlayback(1);
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          v7 = v25;
          v22 = [defaultWorkspace operationToOpenResource:v25 usingApplication:channelDetails2 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:appBundleIDs2 delegate:0];

          [v22 main];
          v5 = v26;
        }

        else
        {
LABEL_12:

LABEL_17:
          channelDetails2 = [appCopy channelDetails];
          appBundleIDs2 = [channelDetails2 appBundleIDs];
          NSLog(&cfstr_Wlkplayableuti_5.isa, appBundleIDs2);
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

+ (id)_defaultPunchoutURLWithPlayable:(id)playable URLKey:(id)key
{
  keyCopy = key;
  punchoutUrls = [playable punchoutUrls];
  v7 = [punchoutUrls objectForKey:keyCopy];

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

+ (id)_defaultPunchoutURLWithPlayable:(id)playable isPlaybackURL:(BOOL *)l
{
  playableCopy = playable;
  isEntitled = [playableCopy isEntitled];
  v8 = isEntitled;
  if (isEntitled)
  {
    [self _defaultPlayPunchoutURLWithPlayable:playableCopy];
  }

  else
  {
    [self _defaultOpenPunchoutURLWithPlayable:playableCopy];
  }
  v9 = ;

  if (l)
  {
    *l = v8;
  }

  return v9;
}

+ (BOOL)_openPunchoutURL:(id)l isPlaybackURL:(BOOL)rL
{
  rLCopy = rL;
  v5 = MEMORY[0x277CBEAA8];
  lCopy = l;
  date = [v5 date];
  v8 = WLKLaunchOptionsForPlayback(rLCopy);
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v15 = 0;
  v10 = [defaultWorkspace openURL:lCopy withOptions:v8 error:&v15];

  v11 = v15;
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceDate:date];
  NSLog(&cfstr_Wlkplayableuti_6.isa, v10, v11, v13);

  return v10;
}

@end