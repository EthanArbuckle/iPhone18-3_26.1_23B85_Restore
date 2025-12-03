@interface ICPlayActivityFeedSerialization
+ (id)defaultOverrideHTTPHeaderFields;
- (id)propertyListObjectWithPlayActivityEvent:(id)event;
@end

@implementation ICPlayActivityFeedSerialization

+ (id)defaultOverrideHTTPHeaderFields
{
  v4[0] = ICStoreHTTPHeaderKeyXGUID;
  v4[1] = ICHTTPHeaderKeyUserAgent;
  v4[2] = ICStoreHTTPHeaderKeyXDSID;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

- (id)propertyListObjectWithPlayActivityEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (!eventCopy)
  {
    v70 = 0;
    goto LABEL_220;
  }

  selfCopy = self;
  eventType = [eventCopy eventType];
  v6 = [[NSMutableDictionary alloc] initWithCapacity:50];
  targetedAudioQuality = [v5 targetedAudioQuality];
  if (targetedAudioQuality)
  {
    v8 = [[NSMutableDictionary alloc] initWithCapacity:6];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [targetedAudioQuality bitDepth]);
    [v8 setObject:v9 forKey:@"audio-bit-depth"];

    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [targetedAudioQuality bitRate]);
    [v8 setObject:v10 forKey:@"bit-rate-in-bps"];

    channelLayoutDescription = [targetedAudioQuality channelLayoutDescription];
    v12 = channelLayoutDescription;
    if (channelLayoutDescription)
    {
      v13 = channelLayoutDescription;
    }

    else
    {
      v13 = &stru_1001E0388;
    }

    [v8 setObject:v13 forKey:@"audio-channel-type"];
    codecString = [targetedAudioQuality codecString];
    v15 = codecString;
    if (codecString)
    {
      v16 = codecString;
    }

    else
    {
      v16 = &stru_1001E0388;
    }

    [v8 setObject:v16 forKey:@"codec"];
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [targetedAudioQuality sampleRate]);
    [v8 setObject:v17 forKey:@"audio-sample-rate-in-hz"];

    if ([targetedAudioQuality isSpatialized])
    {
      v18 = &off_1001ED4B0;
    }

    else
    {
      v18 = &off_1001ED4C8;
    }

    [v8 setObject:v18 forKey:@"playback-format"];
    [v6 setObject:v8 forKey:@"audio-quality-targeted"];
  }

  providedAudioQuality = [v5 providedAudioQuality];
  v200 = providedAudioQuality;
  if (providedAudioQuality)
  {
    v20 = providedAudioQuality;
    v21 = [[NSMutableDictionary alloc] initWithCapacity:6];
    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 bitDepth]);
    [v21 setObject:v22 forKey:@"audio-bit-depth"];

    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v200 bitRate]);
    [v21 setObject:v23 forKey:@"bit-rate-in-bps"];

    channelLayoutDescription2 = [v200 channelLayoutDescription];
    v25 = channelLayoutDescription2;
    if (channelLayoutDescription2)
    {
      v26 = channelLayoutDescription2;
    }

    else
    {
      v26 = &stru_1001E0388;
    }

    [v21 setObject:v26 forKey:@"audio-channel-type"];
    codecString2 = [v200 codecString];
    v28 = codecString2;
    if (codecString2)
    {
      v29 = codecString2;
    }

    else
    {
      v29 = &stru_1001E0388;
    }

    [v21 setObject:v29 forKey:@"codec"];
    v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v200 sampleRate]);
    [v21 setObject:v30 forKey:@"audio-sample-rate-in-hz"];

    if ([v200 isSpatialized])
    {
      v31 = &off_1001ED4B0;
    }

    else
    {
      v31 = &off_1001ED4C8;
    }

    [v21 setObject:v31 forKey:@"playback-format"];
    [v6 setObject:v21 forKey:@"audio-quality-provided"];
  }

  audioQualityPreference = [v5 audioQualityPreference];
  if (audioQualityPreference)
  {
    if (audioQualityPreference >= 5)
    {
      v33 = 0;
    }

    else
    {
      v33 = audioQualityPreference;
    }

    v34 = [NSNumber numberWithInteger:v33];
    [v6 setObject:v34 forKey:@"user-preference-audio-quality"];
  }

  playbackFormatPreference = [v5 playbackFormatPreference];
  if (playbackFormatPreference)
  {
    if (playbackFormatPreference == 2)
    {
      v36 = 2;
    }

    else
    {
      v36 = playbackFormatPreference == 1;
    }

    v37 = [NSNumber numberWithInteger:v36];
    [v6 setObject:v37 forKey:@"user-preference-playback-format"];
  }

  userTransitionTypePreference = [v5 userTransitionTypePreference];
  if (userTransitionTypePreference)
  {
    if (userTransitionTypePreference >= 4)
    {
      v39 = 0;
    }

    else
    {
      v39 = userTransitionTypePreference;
    }

    v40 = [NSNumber numberWithInteger:v39];
    [v6 setObject:v40 forKey:@"user-preference-transition-type"];
  }

  transitionTypeProvided = [v5 transitionTypeProvided];
  if (transitionTypeProvided)
  {
    if (transitionTypeProvided >= 6)
    {
      v42 = 0;
    }

    else
    {
      v42 = transitionTypeProvided;
    }

    v43 = [NSNumber numberWithInteger:v42];
    [v6 setObject:v43 forKey:@"transition-provided"];
  }

  v44 = [NSMutableArray alloc];
  buildFeatures = [v5 buildFeatures];
  v46 = [v44 initWithArray:buildFeatures];

  if (v46 && [v46 count])
  {
    [v6 setObject:v46 forKey:@"build-features"];
  }

  v194 = v46;
  enqueuerProperties = [v5 enqueuerProperties];
  v48 = v6;
  v49 = v48;
  if (enqueuerProperties)
  {
    v198 = [[NSMutableDictionary alloc] initWithCapacity:8];

    v50 = [[NSMutableDictionary alloc] initWithCapacity:10];
    v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [enqueuerProperties isSBEnabled]);
    [v50 setObject:v51 forKey:@"sb-enabled"];

    deviceName = [enqueuerProperties deviceName];
    if ([deviceName length])
    {
      [v50 setObject:deviceName forKey:@"device-name"];
    }

    storeFrontID = [enqueuerProperties storeFrontID];
    if ([storeFrontID length])
    {
      [v50 setObject:storeFrontID forKey:@"store-front"];
    }

    timeZone = [enqueuerProperties timeZone];
    v54 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [timeZone secondsFromGMT]);
    [v50 setObject:v54 forKey:@"utc-offset-in-seconds"];

    buildVersion = [enqueuerProperties buildVersion];
    if ([buildVersion length])
    {
      [v50 setObject:buildVersion forKey:@"build-version"];
    }

    v178 = targetedAudioQuality;
    deviceGUID = [enqueuerProperties deviceGUID];
    if ([deviceGUID length])
    {
      [v50 setObject:deviceGUID forKey:@"guid"];
    }

    isPrivateListeningEnabled = [enqueuerProperties isPrivateListeningEnabled];
    if (isPrivateListeningEnabled)
    {
      [v50 setObject:isPrivateListeningEnabled forKey:@"private-enabled"];
    }

    if ([enqueuerProperties systemReleaseType] == 4)
    {
      [v50 setObject:&__kCFBooleanTrue forKey:@"internal-build"];
    }

    v58 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [enqueuerProperties storeAccountID]);
    [v50 setObject:v58 forKey:@"dsid"];

    [v48 setObject:v50 forKey:@"enqueuer"];
    targetedAudioQuality = v178;
    v49 = v198;
  }

  v197 = enqueuerProperties;
  v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isSBEnabled]);
  [v49 setObject:v59 forKey:@"sb-enabled"];

  deviceName2 = [v5 deviceName];
  v61 = v49;
  if ([deviceName2 length])
  {
    [v49 setObject:deviceName2 forKey:@"device-name"];
  }

  storeFrontID2 = [v5 storeFrontID];
  if (!storeFrontID2)
  {
    storeFrontID2 = selfCopy->_currentStoreFrontID;
  }

  if ([(NSString *)storeFrontID2 length])
  {
    [v61 setObject:storeFrontID2 forKey:@"store-front"];
  }

  eventTimeZone = [v5 eventTimeZone];
  v64 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [eventTimeZone secondsFromGMT]);
  [v61 setObject:v64 forKey:@"utc-offset-in-seconds"];

  buildVersion2 = [v5 buildVersion];
  if ([buildVersion2 length])
  {
    [v61 setObject:buildVersion2 forKey:@"build-version"];
  }

  if ([v5 systemReleaseType] == 4)
  {
    [v61 setObject:&__kCFBooleanTrue forKey:@"internal-build"];
  }

  v199 = v61;
  isPrivateListeningEnabled2 = [v5 isPrivateListeningEnabled];
  if (isPrivateListeningEnabled2)
  {
    [v199 setObject:isPrivateListeningEnabled2 forKey:@"private-enabled"];
  }

  v67 = v199;
  if (v197 && v199 != v48)
  {
    [v48 setObject:v199 forKey:@"player"];
  }

  containerType = [v5 containerType];
  v188 = containerType;
  if ((containerType - 1) > 5)
  {
    v69 = 0;
  }

  else
  {
    v69 = qword_10016AE78[(containerType - 1)];
  }

  v71 = [NSNumber numberWithInteger:v69];
  [v48 setObject:v71 forKey:@"container-type"];

  if (eventType != 1)
  {
    [v5 itemEndTime];
    v73 = [NSNumber numberWithLongLong:(v72 * 1000.0)];
    [v48 setObject:v73 forKey:@"end-position-in-milliseconds"];

    if (eventType == 2)
    {
      v76 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 displayType]);
      [v48 setObject:v76 forKey:@"display-type"];

      v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 lyricsDisplayedCharacterCount]);
      [v48 setObject:v77 forKey:@"character-displayed-count"];

      lyricsLanguage = [v5 lyricsLanguage];
      if ([lyricsLanguage length])
      {
        [v48 setObject:lyricsLanguage forKey:@"lyric-language"];
      }

      v79 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isDisplayTranslationEnabled]);
      [v48 setObject:v79 forKey:@"display-translation"];

      v80 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isDisplayTransliterationEnabled]);
      [v48 setObject:v80 forKey:@"display-transliteration"];

      goto LABEL_94;
    }

    if (!eventType)
    {
      v74 = [v5 endReasonType] - 1;
      v75 = v74 > 0xE ? 0 : qword_10016AEA8[v74];
      v81 = [NSNumber numberWithInteger:v75];
      [v48 setObject:v81 forKey:@"end-reason-type"];

      vocalAttenuationAvailability = [v5 vocalAttenuationAvailability];
      v83 = vocalAttenuationAvailability == 2 ? 2 : vocalAttenuationAvailability == 1;
      v84 = [NSNumber numberWithInteger:v83];
      [v48 setObject:v84 forKey:@"attenuation-available"];

      [v5 vocalAttenuationDuration];
      v86 = [NSNumber numberWithLongLong:(v85 * 1000.0)];
      [v48 setObject:v86 forKey:@"vocal-attenuation-duration-in-milliseconds"];

      if ([v5 itemType] != 7)
      {
        [v5 wallClockPlayDuration];
        lyricsLanguage = [NSNumber numberWithLongLong:(v87 * 1000.0)];
        [v48 setObject:lyricsLanguage forKey:@"play-duration-milliseconds"];
LABEL_94:
      }
    }
  }

  featureName = [v5 featureName];
  if ([featureName length])
  {
    [v48 setObject:featureName forKey:@"feature-name"];
  }

  v191 = featureName;
  [v5 itemDuration];
  v90 = [NSNumber numberWithLongLong:(v89 * 1000.0)];
  [v48 setObject:v90 forKey:@"media-duration-in-milliseconds"];

  v91 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 mediaType] == 1);
  [v48 setObject:v91 forKey:@"media-type"];

  v92 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isOffline]);
  [v48 setObject:v92 forKey:@"offline"];

  v93 = [[NSMutableDictionary alloc] initWithCapacity:3];
  repeatPlayMode = [v5 repeatPlayMode];
  if ((repeatPlayMode - 1) >= 3)
  {
    v95 = 0;
  }

  else
  {
    v95 = repeatPlayMode;
  }

  v96 = [NSNumber numberWithInteger:v95];
  [v93 setObject:v96 forKey:@"repeat-play-mode"];

  shufflePlayMode = [v5 shufflePlayMode];
  if (shufflePlayMode == 2)
  {
    v98 = 2;
  }

  else
  {
    v98 = shufflePlayMode == 1;
  }

  v99 = [NSNumber numberWithInteger:v98];
  [v93 setObject:v99 forKey:@"shuffle-play-mode"];

  autoPlayMode = [v5 autoPlayMode];
  if ((autoPlayMode - 1) >= 3)
  {
    v101 = 0;
  }

  else
  {
    v101 = autoPlayMode;
  }

  v102 = [NSNumber numberWithInteger:v101];
  [v93 setObject:v102 forKey:@"auto-play-mode"];

  if ([v93 count])
  {
    [v48 setObject:v93 forKey:@"play-mode"];
  }

  quot = [v5 persistentID];
  if (quot)
  {
    v104 = quot;
    v105 = v201 + 1;
    do
    {
      v106 = lldiv(quot, 10);
      quot = v106.quot;
      if (v106.rem >= 0)
      {
        LOBYTE(v107) = v106.rem;
      }

      else
      {
        v107 = -v106.rem;
      }

      *(v105 - 2) = v107 + 48;
      v108 = (v105 - 2);
      --v105;
    }

    while (v106.quot);
    if ((v104 & 0x8000000000000000) != 0)
    {
      *(v105 - 2) = 45;
      v108 = (v105 - 2);
    }

    v109 = CFStringCreateWithBytes(0, v108, v201 - v108, 0x8000100u, 0);
    [v48 setObject:v109 forKey:@"persistent-id"];
  }

  queueGroupingID = [v5 queueGroupingID];
  if ([queueGroupingID length])
  {
    [v48 setObject:queueGroupingID forKey:@"queue-grouping-id"];
  }

  v187 = queueGroupingID;
  sharedActivityGroupSizeCurrent = [v5 sharedActivityGroupSizeCurrent];
  if (sharedActivityGroupSizeCurrent)
  {
    v112 = sub_10007E664(sharedActivityGroupSizeCurrent);
    [v48 setObject:v112 forKey:@"shared-activity-devices-current"];

    v113 = sub_10007E664([v5 sharedActivityGroupSizeMax]);
    [v48 setObject:v113 forKey:@"shared-activity-devices-max"];
  }

  else
  {
    [v5 sharedActivityGroupSizeMax];
  }

  sharedActivityType = [v5 sharedActivityType];
  if (sharedActivityType <= 6)
  {
    v115 = sharedActivityType;
    if (((1 << sharedActivityType) & 0x72) != 0)
    {
      v116 = [NSNumber numberWithInteger:sharedActivityType];
      [v48 setObject:v116 forKey:@"shared-activity-type"];
    }
  }

  if ([v5 isCollaborativePlaylist])
  {
    v117 = [NSNumber numberWithBool:1];
    [v48 setObject:v117 forKey:@"is-collaborative"];
  }

  eventDate = [v5 eventDate];
  v119 = eventDate;
  if (eventDate)
  {
    [eventDate timeIntervalSinceNow];
    v121 = [NSNumber numberWithLongLong:(v120 * -1000.0) & ~((v120 * -1000.0) >> 63)];
    [v48 setObject:v121 forKey:@"milliseconds-since-play"];
  }

  v186 = v119;
  recommendationData = [v5 recommendationData];
  if ([recommendationData length])
  {
    [v48 setObject:recommendationData forKey:@"reco-data"];
  }

  sourceType = [v5 sourceType];
  if (sourceType == 2)
  {
    v124 = 7;
  }

  else
  {
    v124 = sourceType == 1;
  }

  v125 = [NSNumber numberWithInteger:v124];
  [v48 setObject:v125 forKey:@"source-type"];

  [v5 itemStartTime];
  v127 = [NSNumber numberWithLongLong:(v126 * 1000.0)];
  [v48 setObject:v127 forKey:@"start-position-in-milliseconds"];

  timedMetadata = [v5 timedMetadata];
  if ([timedMetadata length])
  {
    [v48 setObject:timedMetadata forKey:@"timed-metadata"];
  }

  v184 = timedMetadata;
  trackInfo = [v5 trackInfo];
  if ([trackInfo length])
  {
    v129 = [NSPropertyListSerialization propertyListWithData:trackInfo options:0 format:0 error:0];
    if (v129)
    {
      [v48 setObject:v129 forKey:@"track-info"];
    }
  }

  itemType = [v5 itemType];
  v185 = recommendationData;
  v131 = targetedAudioQuality;
  if ((itemType - 1) > 8)
  {
    v132 = 0;
  }

  else
  {
    v132 = qword_10016AF20[(itemType - 1)];
  }

  v133 = [NSNumber numberWithInteger:v132];
  [v48 setObject:v133 forKey:@"type"];

  requestingBundleIdentifier = [v5 requestingBundleIdentifier];
  if (requestingBundleIdentifier)
  {
    [v48 setObject:requestingBundleIdentifier forKey:@"bundle-id"];
  }

  requestingBundleVersion = [v5 requestingBundleVersion];
  if (requestingBundleVersion)
  {
    [v48 setObject:requestingBundleVersion forKey:@"bundle-version"];
  }

  v182 = requestingBundleVersion;
  householdID = [v5 householdID];
  if ([householdID length])
  {
    [v48 setObject:householdID forKey:@"household-id"];
  }

  v181 = householdID;
  isSiriInitiated = [v5 isSiriInitiated];
  if (isSiriInitiated)
  {
    [v48 setObject:isSiriInitiated forKey:@"siri-initiated"];
  }

  v180 = isSiriInitiated;
  v190 = v93;
  v138 = v131;
  v183 = requestingBundleIdentifier;
  if ([v5 version] > 1)
  {
    v145 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 reasonHintType] == 1);
    [v48 setObject:v145 forKey:@"event-reason-hint-type"];

    if (eventType == 2)
    {
      v146 = 2;
    }

    else
    {
      v146 = eventType == 1;
    }

    v147 = [NSNumber numberWithInteger:v146];
    [v48 setObject:v147 forKey:@"event-type"];

    containerID = [[NSMutableDictionary alloc] initWithCapacity:8];
    itemIDs = [v5 itemIDs];
    externalID = itemIDs;
    if (v188 == 1)
    {
      radioAdamID = [itemIDs radioAdamID];
      if (!radioAdamID)
      {
        goto LABEL_180;
      }

      v150 = radioAdamID;
      v151 = @"radio-adam-id";
    }

    else
    {
      subscriptionAdamID = [itemIDs subscriptionAdamID];
      v150 = subscriptionAdamID;
      if (itemType == 6)
      {
        if (!subscriptionAdamID)
        {
          goto LABEL_180;
        }

        v151 = @"auc-adam-id";
      }

      else
      {
        if (subscriptionAdamID)
        {
          v153 = [NSNumber numberWithLongLong:subscriptionAdamID];
          [containerID setObject:v153 forKey:@"subscription-adam-id"];
        }

        equivalencySourceAdamID = [externalID equivalencySourceAdamID];
        if (equivalencySourceAdamID)
        {
          v155 = [NSNumber numberWithLongLong:equivalencySourceAdamID];
          [containerID setObject:v155 forKey:@"orig-sf-adam-id"];
        }

        purchasedAdamID = [externalID purchasedAdamID];
        if (purchasedAdamID)
        {
          v157 = [NSNumber numberWithLongLong:purchasedAdamID];
          [containerID setObject:v157 forKey:@"purchased-adam-id"];
        }

        cloudID = [externalID cloudID];
        if (cloudID)
        {
          v159 = [NSNumber numberWithLongLong:cloudID];
          [containerID setObject:v159 forKey:@"cloud-id"];
        }

        reportingAdamID = [externalID reportingAdamID];
        if (!reportingAdamID)
        {
LABEL_180:
          lyricsID = [externalID lyricsID];
          if ([lyricsID length])
          {
            [containerID setObject:lyricsID forKey:@"lyric-id"];
          }

          if ([containerID count])
          {
            [v48 setObject:containerID forKey:@"ids"];
          }

          containerIDs = [v5 containerIDs];
          v162 = [[NSMutableDictionary alloc] initWithCapacity:4];
          if (v188 <= 2)
          {
            if (v188 == 1)
            {
              stationHash = [containerIDs stationHash];
              if ([stationHash length])
              {
                [v162 setObject:stationHash forKey:@"station-hash"];
              }

              stationStringID = [containerIDs stationStringID];
              if ([stationStringID length])
              {
                [v162 setObject:stationStringID forKey:@"station-id"];
              }

              stationID = [containerIDs stationID];
              if (stationID)
              {
                [NSNumber numberWithLongLong:stationID];
                v174 = v193 = stationStringID;
                [v162 setObject:v174 forKey:@"station-personalized-id"];

                stationStringID = v193;
              }

              goto LABEL_212;
            }

            if (v188 == 2)
            {
LABEL_191:
              stationHash = [containerIDs globalPlaylistID];
              if ([stationHash length])
              {
                [v162 setObject:stationHash forKey:@"global-playlist-id"];
              }

              stationStringID = [containerIDs playlistVersionHash];
              if ([stationStringID length])
              {
                [v162 setObject:stationStringID forKey:@"playlist-version-hash"];
              }

              cloudPlaylistID = [containerIDs cloudPlaylistID];
              v179 = v138;
              if (cloudPlaylistID)
              {
                v166 = [NSNumber numberWithLongLong:cloudPlaylistID];
                [v162 setObject:v166 forKey:@"cloud-playlist-id"];

                v138 = v179;
              }

              cloudPlaylistFolderID = [containerIDs cloudPlaylistFolderID];
              if (cloudPlaylistFolderID)
              {
                v168 = [NSNumber numberWithLongLong:cloudPlaylistFolderID];
                [v162 setObject:v168 forKey:@"cloud-playlist-folder-id"];

                v138 = v179;
              }

LABEL_212:

              goto LABEL_213;
            }
          }

          else
          {
            if (v188 != 3)
            {
              if (v188 != 4)
              {
                if (v188 != 6)
                {
                  goto LABEL_214;
                }

                goto LABEL_191;
              }

              adamID = [containerIDs adamID];
              if (adamID)
              {
                v172 = [NSNumber numberWithLongLong:adamID];
                [v162 setObject:v172 forKey:@"album-adam-id"];
              }

              stationHash = [containerIDs cloudAlbumID];
              if (![stationHash length])
              {
                goto LABEL_213;
              }

              v170 = @"cloud-album-id";
LABEL_205:
              [v162 setObject:stationHash forKey:v170];
LABEL_213:

              goto LABEL_214;
            }

            adamID2 = [containerIDs adamID];
            if (adamID2)
            {
              stationHash = [NSNumber numberWithLongLong:adamID2];
              v170 = @"artist-adam-id";
              goto LABEL_205;
            }
          }

LABEL_214:
          if ([v162 count])
          {
            [v48 setObject:v162 forKey:@"container-ids"];
          }

          v141 = v186;
          v142 = v182;
          goto LABEL_217;
        }

        v150 = reportingAdamID;
        v151 = @"reporting-adam-id";
      }
    }

    v161 = [NSNumber numberWithLongLong:v150];
    [containerID setObject:v161 forKey:v151];

    goto LABEL_180;
  }

  containerID = [v5 containerID];
  if (containerID)
  {
    [v48 setObject:containerID forKey:@"container-id"];
  }

  externalID = [v5 externalID];
  v141 = v186;
  v142 = v182;
  if (externalID)
  {
    [v48 setObject:externalID forKey:@"external-identifier"];
  }

  lyricsID = [v5 personalizedContainerID];
  if ([lyricsID length])
  {
    [v48 setObject:lyricsID forKey:@"personalized-container-id"];
  }

  containerIDs = [v5 storeID];
  if ([containerIDs length])
  {
    [v48 setObject:containerIDs forKey:@"id"];
  }

LABEL_217:

  v175 = [v48 count];
  v176 = &__NSDictionary0__struct;
  if (v175)
  {
    v176 = v48;
  }

  v70 = v176;

LABEL_220:

  return v70;
}

@end