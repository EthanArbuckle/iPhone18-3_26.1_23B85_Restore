@interface SSVPlayActivityFeedSerialization
+ (id)defaultOverrideHTTPHeaderFields;
- (id)propertyListObjectWithPlayActivityEvent:(id)a3;
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

- (id)propertyListObjectWithPlayActivityEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 eventType];
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    v8 = [v5 enqueuerProperties];
    v9 = v7;
    v10 = v9;
    if (v8)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);

      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = [v8 isSBEnabled];
      v14 = [MEMORY[0x1E696AD98] numberWithBool:v13];
      [v12 setObject:v14 forKey:@"sb-enabled"];

      v15 = [v8 deviceName];
      if ([v15 length])
      {
        [v12 setObject:v15 forKey:@"device-name"];
      }

      v122 = self;
      v124 = v11;
      v16 = [v8 storeFrontID];
      if ([v16 length])
      {
        [v12 setObject:v16 forKey:@"store-front"];
      }

      v119 = v16;
      v117 = [v8 timeZone];
      v17 = [v117 secondsFromGMT];
      v18 = [MEMORY[0x1E696AD98] numberWithLongLong:v17];
      [v12 setObject:v18 forKey:@"utc-offset-in-seconds"];

      v19 = [v8 buildVersion];
      if ([v19 length])
      {
        [v12 setObject:v19 forKey:@"build-version"];
      }

      v20 = [v8 deviceGUID];
      if ([v20 length])
      {
        [v12 setObject:v20 forKey:@"guid"];
      }

      v21 = [v8 isPrivateListeningEnabled];
      if (v21)
      {
        [v12 setObject:v21 forKey:@"private-enabled"];
      }

      if ([v8 systemReleaseType] == 4)
      {
        [v12 setObject:MEMORY[0x1E695E118] forKey:@"internal-build"];
      }

      v22 = [v8 storeAccountID];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
      [v12 setObject:v23 forKey:@"dsid"];

      [v9 setObject:v12 forKey:@"enqueuer"];
      self = v122;
      v10 = v124;
    }

    v24 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isSBEnabled")}];
    [v10 setObject:v24 forKey:@"sb-enabled"];

    v25 = [v5 deviceName];
    if ([v25 length])
    {
      [v10 setObject:v25 forKey:@"device-name"];
    }

    v26 = [v5 storeFrontID];
    if (!v26)
    {
      v26 = self->_currentStoreFrontID;
    }

    if ([(NSString *)v26 length])
    {
      [v10 setObject:v26 forKey:@"store-front"];
    }

    v27 = [v5 eventTimeZone];
    v28 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v27, "secondsFromGMT")}];
    [v10 setObject:v28 forKey:@"utc-offset-in-seconds"];

    v29 = [v5 buildVersion];
    if ([v29 length])
    {
      [v10 setObject:v29 forKey:@"build-version"];
    }

    v30 = v6;
    if ([v5 systemReleaseType] == 4)
    {
      [v10 setObject:MEMORY[0x1E695E118] forKey:@"internal-build"];
    }

    v31 = [v5 isPrivateListeningEnabled];
    if (v31)
    {
      [v10 setObject:v31 forKey:@"private-enabled"];
    }

    if (v8 && v10 != v9)
    {
      [v9 setObject:v10 forKey:@"player"];
    }

    v32 = [v5 containerType];
    v33 = v30;
    v115 = v32;
    if ((v32 - 1) > 3)
    {
      v34 = 0;
    }

    else
    {
      v34 = qword_1D4B38EC8[v32 - 1];
    }

    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v34];
    [v9 setObject:v36 forKey:@"container-type"];

    if (v33 == 1)
    {
LABEL_46:
      v109 = v33;
      v45 = [v5 featureName];
      if ([v45 length])
      {
        [v9 setObject:v45 forKey:@"feature-name"];
      }

      [v5 itemDuration];
      v47 = [MEMORY[0x1E696AD98] numberWithLongLong:(v46 * 1000.0)];
      [v9 setObject:v47 forKey:@"media-duration-in-milliseconds"];

      v48 = [v5 mediaType] == 1;
      v49 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
      [v9 setObject:v49 forKey:@"media-type"];

      v50 = [v5 isOffline];
      v51 = [MEMORY[0x1E696AD98] numberWithBool:v50];
      [v9 setObject:v51 forKey:@"offline"];

      v52 = [v5 persistentID];
      if (v52)
      {
        v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", v52];
        [v9 setObject:v53 forKey:@"persistent-id"];
      }

      v54 = [v5 eventDate];
      v55 = v54;
      if (v54)
      {
        [v54 timeIntervalSinceNow];
        v57 = [MEMORY[0x1E696AD98] numberWithLongLong:(v56 * -1000.0) & ~((v56 * -1000.0) >> 63)];
        [v9 setObject:v57 forKey:@"milliseconds-since-play"];
      }

      v58 = [v5 recommendationData];
      if (v58)
      {
        [v9 setObject:v58 forKey:@"reco-data"];
      }

      v118 = v58;
      v59 = [v5 sourceType];
      if (v59 == 2)
      {
        v60 = 7;
      }

      else
      {
        v60 = v59 == 1;
      }

      v61 = [MEMORY[0x1E696AD98] numberWithInteger:v60];
      [v9 setObject:v61 forKey:@"source-type"];

      [v5 itemStartTime];
      v63 = [MEMORY[0x1E696AD98] numberWithLongLong:(v62 * 1000.0)];
      [v9 setObject:v63 forKey:@"start-position-in-milliseconds"];

      v64 = [v5 timedMetadata];
      if ([v64 length])
      {
        [v9 setObject:v64 forKey:@"timed-metadata"];
      }

      v123 = [v5 trackInfo];
      if ([v123 length])
      {
        v65 = [MEMORY[0x1E696AE40] propertyListWithData:v123 options:0 format:0 error:0];
        if (v65)
        {
          [v9 setObject:v65 forKey:@"track-info"];
        }
      }

      v121 = v45;
      v66 = [v5 itemType];
      v114 = v64;
      if ((v66 - 1) > 8)
      {
        v67 = 0;
      }

      else
      {
        v67 = qword_1D4B38F58[v66 - 1];
      }

      v68 = [MEMORY[0x1E696AD98] numberWithInteger:v67];
      [v9 setObject:v68 forKey:@"type"];

      v69 = [v5 requestingBundleIdentifier];
      if (v69)
      {
        [v9 setObject:v69 forKey:@"bundle-id"];
      }

      v70 = v8;
      v71 = [v5 requestingBundleVersion];
      if (v71)
      {
        [v9 setObject:v71 forKey:@"bundle-version"];
      }

      v72 = [v5 householdID];
      if ([v72 length])
      {
        [v9 setObject:v72 forKey:@"household-id"];
      }

      v111 = v72;
      v73 = [v5 isSiriInitiated];
      if (v73)
      {
        [v9 setObject:v73 forKey:@"siri-initiated"];
      }

      v110 = v73;
      v120 = v55;
      v74 = v70;
      v125 = v10;
      v112 = v71;
      v113 = v69;
      if ([v5 version] <= 1)
      {
        v75 = [v5 containerID];
        if (v75)
        {
          [v9 setObject:v75 forKey:@"container-id"];
        }

        v76 = [v5 externalID];
        v77 = v121;
        v78 = v111;
        if (v76)
        {
          [v9 setObject:v76 forKey:@"external-identifier"];
        }

        v79 = [v5 personalizedContainerID];
        if ([v79 length])
        {
          [v9 setObject:v79 forKey:@"personalized-container-id"];
        }

        v80 = [v5 storeID];
        if ([v80 length])
        {
          [v9 setObject:v80 forKey:@"id"];
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

      v75 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      v84 = [v5 itemIDs];
      v76 = v84;
      if (v115 == 1)
      {
        v85 = [v84 radioAdamID];
        if (!v85)
        {
          goto LABEL_101;
        }

        v86 = v85;
        v87 = @"radio-adam-id";
      }

      else
      {
        v88 = [v84 subscriptionAdamID];
        v86 = v88;
        if (v66 == 6)
        {
          if (!v88)
          {
            goto LABEL_101;
          }

          v87 = @"auc-adam-id";
        }

        else
        {
          if (v88)
          {
            v89 = [MEMORY[0x1E696AD98] numberWithLongLong:v88];
            [v75 setObject:v89 forKey:@"subscription-adam-id"];
          }

          v90 = [v76 equivalencySourceAdamID];
          if (v90)
          {
            v91 = [MEMORY[0x1E696AD98] numberWithLongLong:v90];
            [v75 setObject:v91 forKey:@"orig-sf-adam-id"];
          }

          v92 = [v76 purchasedAdamID];
          if (v92)
          {
            v93 = [MEMORY[0x1E696AD98] numberWithLongLong:v92];
            [v75 setObject:v93 forKey:@"purchased-adam-id"];
          }

          v94 = [v76 cloudID];
          if (!v94)
          {
LABEL_101:
            v79 = [v76 lyricsID];
            if ([v79 length])
            {
              [v75 setObject:v79 forKey:@"lyric-id"];
            }

            if ([v75 count])
            {
              [v9 setObject:v75 forKey:@"ids"];
            }

            v80 = [v5 containerIDs];
            v96 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            if (v115 <= 2)
            {
              if (v115 == 1)
              {
                v116 = v74;
                v97 = [v80 stationHash];
                if ([v97 length])
                {
                  [v96 setObject:v97 forKey:@"station-hash"];
                }

                v98 = [v80 stationStringID];
                if ([v98 length])
                {
                  [v96 setObject:v98 forKey:@"station-id"];
                }

                v105 = [v80 stationID];
                if (!v105)
                {
                  goto LABEL_127;
                }

                v100 = [MEMORY[0x1E696AD98] numberWithLongLong:v105];
                v101 = @"station-personalized-id";
                goto LABEL_126;
              }

              if (v115 == 2)
              {
                v116 = v74;
                v97 = [v80 globalPlaylistID];
                if ([v97 length])
                {
                  [v96 setObject:v97 forKey:@"global-playlist-id"];
                }

                v98 = [v80 playlistVersionHash];
                if ([v98 length])
                {
                  [v96 setObject:v98 forKey:@"playlist-version-hash"];
                }

                v99 = [v80 cloudPlaylistID];
                if (!v99)
                {
                  goto LABEL_127;
                }

                v100 = [MEMORY[0x1E696AD98] numberWithLongLong:v99];
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
              v106 = [v80 adamID];
              if (!v106)
              {
                goto LABEL_132;
              }

              v97 = [MEMORY[0x1E696AD98] numberWithLongLong:v106];
              v104 = @"artist-adam-id";
            }

            else
            {
              if (v115 != 4)
              {
                goto LABEL_132;
              }

              v102 = [v80 adamID];
              if (v102)
              {
                v103 = [MEMORY[0x1E696AD98] numberWithLongLong:v102];
                [v96 setObject:v103 forKey:@"album-adam-id"];
              }

              v97 = [v80 cloudAlbumID];
              if (![v97 length])
              {
                goto LABEL_131;
              }

              v104 = @"cloud-album-id";
            }

            [v96 setObject:v97 forKey:v104];
            goto LABEL_131;
          }

          v86 = v94;
          v87 = @"cloud-id";
        }
      }

      v95 = [MEMORY[0x1E696AD98] numberWithLongLong:v86];
      [v75 setObject:v95 forKey:v87];

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

      v43 = [v5 lyricsLanguage];
      if (![v43 length])
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

      v43 = [MEMORY[0x1E696AD98] numberWithInteger:v40];
      v44 = @"end-reason-type";
    }

    [v9 setObject:v43 forKey:v44];
    goto LABEL_45;
  }

  v35 = 0;
LABEL_139:

  return v35;
}

@end