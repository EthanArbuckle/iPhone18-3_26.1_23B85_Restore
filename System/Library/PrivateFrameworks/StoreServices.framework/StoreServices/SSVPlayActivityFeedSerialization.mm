@interface SSVPlayActivityFeedSerialization
+ (id)defaultOverrideHTTPHeaderFields;
- (id)propertyListObjectWithPlayActivityEvent:(id)event;
@end

@implementation SSVPlayActivityFeedSerialization

+ (id)defaultOverrideHTTPHeaderFields
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"X-Guid";
  v4[1] = @"User-Agent";
  v4[2] = @"X-Dsid";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (id)propertyListObjectWithPlayActivityEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    eventType = [eventCopy eventType];
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    enqueuerProperties = [v5 enqueuerProperties];
    v9 = v7;
    v10 = v9;
    if (enqueuerProperties)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);

      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      isSBEnabled = [enqueuerProperties isSBEnabled];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:isSBEnabled];
      [v12 setObject:v14 forKey:@"sb-enabled"];

      deviceName = [enqueuerProperties deviceName];
      if ([deviceName length])
      {
        [v12 setObject:deviceName forKey:@"device-name"];
      }

      selfCopy = self;
      v124 = v11;
      storeFrontID = [enqueuerProperties storeFrontID];
      if ([storeFrontID length])
      {
        [v12 setObject:storeFrontID forKey:@"store-front"];
      }

      v119 = storeFrontID;
      timeZone = [enqueuerProperties timeZone];
      secondsFromGMT = [timeZone secondsFromGMT];
      v18 = [MEMORY[0x1E696AD98] numberWithLongLong:secondsFromGMT];
      [v12 setObject:v18 forKey:@"utc-offset-in-seconds"];

      buildVersion = [enqueuerProperties buildVersion];
      if ([buildVersion length])
      {
        [v12 setObject:buildVersion forKey:@"build-version"];
      }

      deviceGUID = [enqueuerProperties deviceGUID];
      if ([deviceGUID length])
      {
        [v12 setObject:deviceGUID forKey:@"guid"];
      }

      isPrivateListeningEnabled = [enqueuerProperties isPrivateListeningEnabled];
      if (isPrivateListeningEnabled)
      {
        [v12 setObject:isPrivateListeningEnabled forKey:@"private-enabled"];
      }

      if ([enqueuerProperties systemReleaseType] == 4)
      {
        [v12 setObject:MEMORY[0x1E695E118] forKey:@"internal-build"];
      }

      storeAccountID = [enqueuerProperties storeAccountID];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:storeAccountID];
      [v12 setObject:v23 forKey:@"dsid"];

      [v9 setObject:v12 forKey:@"enqueuer"];
      self = selfCopy;
      v10 = v124;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isSBEnabled")}];
    [v10 setObject:v24 forKey:@"sb-enabled"];

    deviceName2 = [v5 deviceName];
    if ([deviceName2 length])
    {
      [v10 setObject:deviceName2 forKey:@"device-name"];
    }

    storeFrontID2 = [v5 storeFrontID];
    if (!storeFrontID2)
    {
      storeFrontID2 = self->_currentStoreFrontID;
    }

    if ([(NSString *)storeFrontID2 length])
    {
      [v10 setObject:storeFrontID2 forKey:@"store-front"];
    }

    eventTimeZone = [v5 eventTimeZone];
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(eventTimeZone, "secondsFromGMT")}];
    [v10 setObject:v28 forKey:@"utc-offset-in-seconds"];

    buildVersion2 = [v5 buildVersion];
    if ([buildVersion2 length])
    {
      [v10 setObject:buildVersion2 forKey:@"build-version"];
    }

    v30 = eventType;
    if ([v5 systemReleaseType] == 4)
    {
      [v10 setObject:MEMORY[0x1E695E118] forKey:@"internal-build"];
    }

    isPrivateListeningEnabled2 = [v5 isPrivateListeningEnabled];
    if (isPrivateListeningEnabled2)
    {
      [v10 setObject:isPrivateListeningEnabled2 forKey:@"private-enabled"];
    }

    if (enqueuerProperties && v10 != v9)
    {
      [v9 setObject:v10 forKey:@"player"];
    }

    containerType = [v5 containerType];
    v33 = v30;
    v115 = containerType;
    if ((containerType - 1) > 3)
    {
      v34 = 0;
    }

    else
    {
      v34 = qword_1D4B38EC8[containerType - 1];
    }

    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
    [v9 setObject:v36 forKey:@"container-type"];

    if (v33 == 1)
    {
LABEL_46:
      v109 = v33;
      featureName = [v5 featureName];
      if ([featureName length])
      {
        [v9 setObject:featureName forKey:@"feature-name"];
      }

      [v5 itemDuration];
      v47 = [MEMORY[0x1E696AD98] numberWithLongLong:(v46 * 1000.0)];
      [v9 setObject:v47 forKey:@"media-duration-in-milliseconds"];

      v48 = [v5 mediaType] == 1;
      v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
      [v9 setObject:v49 forKey:@"media-type"];

      isOffline = [v5 isOffline];
      v51 = [MEMORY[0x1E696AD98] numberWithBool:isOffline];
      [v9 setObject:v51 forKey:@"offline"];

      persistentID = [v5 persistentID];
      if (persistentID)
      {
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", persistentID];
        [v9 setObject:v53 forKey:@"persistent-id"];
      }

      eventDate = [v5 eventDate];
      v55 = eventDate;
      if (eventDate)
      {
        [eventDate timeIntervalSinceNow];
        v57 = [MEMORY[0x1E696AD98] numberWithLongLong:(v56 * -1000.0) & ~((v56 * -1000.0) >> 63)];
        [v9 setObject:v57 forKey:@"milliseconds-since-play"];
      }

      recommendationData = [v5 recommendationData];
      if (recommendationData)
      {
        [v9 setObject:recommendationData forKey:@"reco-data"];
      }

      v118 = recommendationData;
      sourceType = [v5 sourceType];
      if (sourceType == 2)
      {
        v60 = 7;
      }

      else
      {
        v60 = sourceType == 1;
      }

      v61 = [MEMORY[0x1E696AD98] numberWithInteger:v60];
      [v9 setObject:v61 forKey:@"source-type"];

      [v5 itemStartTime];
      v63 = [MEMORY[0x1E696AD98] numberWithLongLong:(v62 * 1000.0)];
      [v9 setObject:v63 forKey:@"start-position-in-milliseconds"];

      timedMetadata = [v5 timedMetadata];
      if ([timedMetadata length])
      {
        [v9 setObject:timedMetadata forKey:@"timed-metadata"];
      }

      trackInfo = [v5 trackInfo];
      if ([trackInfo length])
      {
        v65 = [MEMORY[0x1E696AE40] propertyListWithData:trackInfo options:0 format:0 error:0];
        if (v65)
        {
          [v9 setObject:v65 forKey:@"track-info"];
        }
      }

      v121 = featureName;
      itemType = [v5 itemType];
      v114 = timedMetadata;
      if ((itemType - 1) > 8)
      {
        v67 = 0;
      }

      else
      {
        v67 = qword_1D4B38F58[itemType - 1];
      }

      v68 = [MEMORY[0x1E696AD98] numberWithInteger:v67];
      [v9 setObject:v68 forKey:@"type"];

      requestingBundleIdentifier = [v5 requestingBundleIdentifier];
      if (requestingBundleIdentifier)
      {
        [v9 setObject:requestingBundleIdentifier forKey:@"bundle-id"];
      }

      v70 = enqueuerProperties;
      requestingBundleVersion = [v5 requestingBundleVersion];
      if (requestingBundleVersion)
      {
        [v9 setObject:requestingBundleVersion forKey:@"bundle-version"];
      }

      householdID = [v5 householdID];
      if ([householdID length])
      {
        [v9 setObject:householdID forKey:@"household-id"];
      }

      v111 = householdID;
      isSiriInitiated = [v5 isSiriInitiated];
      if (isSiriInitiated)
      {
        [v9 setObject:isSiriInitiated forKey:@"siri-initiated"];
      }

      v110 = isSiriInitiated;
      v120 = v55;
      v74 = v70;
      v125 = v10;
      v112 = requestingBundleVersion;
      v113 = requestingBundleIdentifier;
      if ([v5 version] <= 1)
      {
        containerID = [v5 containerID];
        if (containerID)
        {
          [v9 setObject:containerID forKey:@"container-id"];
        }

        externalID = [v5 externalID];
        v77 = v121;
        v78 = v111;
        if (externalID)
        {
          [v9 setObject:externalID forKey:@"external-identifier"];
        }

        personalizedContainerID = [v5 personalizedContainerID];
        if ([personalizedContainerID length])
        {
          [v9 setObject:personalizedContainerID forKey:@"personalized-container-id"];
        }

        storeID = [v5 storeID];
        if ([storeID length])
        {
          [v9 setObject:storeID forKey:@"id"];
        }

LABEL_135:

        if ([v9 count])
        {
          v107 = v9;
        }

        else
        {
          v107 = 0;
        }

        v35 = v107;

        goto LABEL_139;
      }

      v81 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "reasonHintType") == 1}];
      [v9 setObject:v81 forKey:@"event-reason-hint-type"];

      if (v109 == 2)
      {
        v82 = 2;
      }

      else
      {
        v82 = v109 == 1;
      }

      v83 = [MEMORY[0x1E696AD98] numberWithInteger:v82];
      [v9 setObject:v83 forKey:@"event-type"];

      containerID = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      itemIDs = [v5 itemIDs];
      externalID = itemIDs;
      if (v115 == 1)
      {
        radioAdamID = [itemIDs radioAdamID];
        if (!radioAdamID)
        {
          goto LABEL_101;
        }

        v86 = radioAdamID;
        v87 = @"radio-adam-id";
      }

      else
      {
        subscriptionAdamID = [itemIDs subscriptionAdamID];
        v86 = subscriptionAdamID;
        if (itemType == 6)
        {
          if (!subscriptionAdamID)
          {
            goto LABEL_101;
          }

          v87 = @"auc-adam-id";
        }

        else
        {
          if (subscriptionAdamID)
          {
            v89 = [MEMORY[0x1E696AD98] numberWithLongLong:subscriptionAdamID];
            [containerID setObject:v89 forKey:@"subscription-adam-id"];
          }

          equivalencySourceAdamID = [externalID equivalencySourceAdamID];
          if (equivalencySourceAdamID)
          {
            v91 = [MEMORY[0x1E696AD98] numberWithLongLong:equivalencySourceAdamID];
            [containerID setObject:v91 forKey:@"orig-sf-adam-id"];
          }

          purchasedAdamID = [externalID purchasedAdamID];
          if (purchasedAdamID)
          {
            v93 = [MEMORY[0x1E696AD98] numberWithLongLong:purchasedAdamID];
            [containerID setObject:v93 forKey:@"purchased-adam-id"];
          }

          cloudID = [externalID cloudID];
          if (!cloudID)
          {
LABEL_101:
            personalizedContainerID = [externalID lyricsID];
            if ([personalizedContainerID length])
            {
              [containerID setObject:personalizedContainerID forKey:@"lyric-id"];
            }

            if ([containerID count])
            {
              [v9 setObject:containerID forKey:@"ids"];
            }

            storeID = [v5 containerIDs];
            v96 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            if (v115 <= 2)
            {
              if (v115 == 1)
              {
                v116 = v74;
                stationHash = [storeID stationHash];
                if ([stationHash length])
                {
                  [v96 setObject:stationHash forKey:@"station-hash"];
                }

                stationStringID = [storeID stationStringID];
                if ([stationStringID length])
                {
                  [v96 setObject:stationStringID forKey:@"station-id"];
                }

                stationID = [storeID stationID];
                if (!stationID)
                {
                  goto LABEL_127;
                }

                v100 = [MEMORY[0x1E696AD98] numberWithLongLong:stationID];
                v101 = @"station-personalized-id";
                goto LABEL_126;
              }

              if (v115 == 2)
              {
                v116 = v74;
                stationHash = [storeID globalPlaylistID];
                if ([stationHash length])
                {
                  [v96 setObject:stationHash forKey:@"global-playlist-id"];
                }

                stationStringID = [storeID playlistVersionHash];
                if ([stationStringID length])
                {
                  [v96 setObject:stationStringID forKey:@"playlist-version-hash"];
                }

                cloudPlaylistID = [storeID cloudPlaylistID];
                if (!cloudPlaylistID)
                {
                  goto LABEL_127;
                }

                v100 = [MEMORY[0x1E696AD98] numberWithLongLong:cloudPlaylistID];
                v101 = @"cloud-playlist-id";
LABEL_126:
                [v96 setObject:v100 forKey:v101];

LABEL_127:
                v74 = v116;
LABEL_131:
              }

LABEL_132:
              if ([v96 count])
              {
                [v9 setObject:v96 forKey:@"container-ids"];
              }

              v77 = v121;
              v78 = v111;
              goto LABEL_135;
            }

            if (v115 == 3)
            {
              adamID = [storeID adamID];
              if (!adamID)
              {
                goto LABEL_132;
              }

              stationHash = [MEMORY[0x1E696AD98] numberWithLongLong:adamID];
              v104 = @"artist-adam-id";
            }

            else
            {
              if (v115 != 4)
              {
                goto LABEL_132;
              }

              adamID2 = [storeID adamID];
              if (adamID2)
              {
                v103 = [MEMORY[0x1E696AD98] numberWithLongLong:adamID2];
                [v96 setObject:v103 forKey:@"album-adam-id"];
              }

              stationHash = [storeID cloudAlbumID];
              if (![stationHash length])
              {
                goto LABEL_131;
              }

              v104 = @"cloud-album-id";
            }

            [v96 setObject:stationHash forKey:v104];
            goto LABEL_131;
          }

          v86 = cloudID;
          v87 = @"cloud-id";
        }
      }

      v95 = [MEMORY[0x1E696AD98] numberWithLongLong:v86];
      [containerID setObject:v95 forKey:v87];

      goto LABEL_101;
    }

    [v5 itemEndTime];
    v38 = [MEMORY[0x1E696AD98] numberWithLongLong:(v37 * 1000.0)];
    [v9 setObject:v38 forKey:@"end-position-in-milliseconds"];

    if (v33 == 2)
    {
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "displayType")}];
      [v9 setObject:v41 forKey:@"display-type"];

      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v5, "lyricsDisplayedCharacterCount")}];
      [v9 setObject:v42 forKey:@"character-displayed-count"];

      lyricsLanguage = [v5 lyricsLanguage];
      if (![lyricsLanguage length])
      {
LABEL_45:

        goto LABEL_46;
      }

      v44 = @"lyric-language";
    }

    else
    {
      if (v33)
      {
        goto LABEL_46;
      }

      v39 = [v5 endReasonType] - 1;
      if (v39 > 0xD)
      {
        v40 = 0;
      }

      else
      {
        v40 = qword_1D4B38EE8[v39];
      }

      lyricsLanguage = [MEMORY[0x1E696AD98] numberWithInteger:v40];
      v44 = @"end-reason-type";
    }

    [v9 setObject:lyricsLanguage forKey:v44];
    goto LABEL_45;
  }

  v35 = 0;
LABEL_139:

  return v35;
}

@end