@interface ICPlayActivityFeedSerialization
+ (id)defaultOverrideHTTPHeaderFields;
- (id)propertyListObjectWithPlayActivityEvent:(id)a3;
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

- (id)propertyListObjectWithPlayActivityEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v70 = 0;
    goto LABEL_220;
  }

  v195 = self;
  v192 = [v4 eventType];
  v6 = [[NSMutableDictionary alloc] initWithCapacity:50];
  v7 = [v5 targetedAudioQuality];
  if (v7)
  {
    v8 = [[NSMutableDictionary alloc] initWithCapacity:6];
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 bitDepth]);
    [v8 setObject:v9 forKey:@"audio-bit-depth"];

    v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 bitRate]);
    [v8 setObject:v10 forKey:@"bit-rate-in-bps"];

    v11 = [v7 channelLayoutDescription];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_1001E0388;
    }

    [v8 setObject:v13 forKey:@"audio-channel-type"];
    v14 = [v7 codecString];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = &stru_1001E0388;
    }

    [v8 setObject:v16 forKey:@"codec"];
    v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 sampleRate]);
    [v8 setObject:v17 forKey:@"audio-sample-rate-in-hz"];

    if ([v7 isSpatialized])
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

  v19 = [v5 providedAudioQuality];
  v200 = v19;
  if (v19)
  {
    v20 = v19;
    v21 = [[NSMutableDictionary alloc] initWithCapacity:6];
    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v20 bitDepth]);
    [v21 setObject:v22 forKey:@"audio-bit-depth"];

    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v200 bitRate]);
    [v21 setObject:v23 forKey:@"bit-rate-in-bps"];

    v24 = [v200 channelLayoutDescription];
    v25 = v24;
    if (v24)
    {
      v26 = v24;
    }

    else
    {
      v26 = &stru_1001E0388;
    }

    [v21 setObject:v26 forKey:@"audio-channel-type"];
    v27 = [v200 codecString];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
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

  v32 = [v5 audioQualityPreference];
  if (v32)
  {
    if (v32 >= 5)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    v34 = [NSNumber numberWithInteger:v33];
    [v6 setObject:v34 forKey:@"user-preference-audio-quality"];
  }

  v35 = [v5 playbackFormatPreference];
  if (v35)
  {
    if (v35 == 2)
    {
      v36 = 2;
    }

    else
    {
      v36 = v35 == 1;
    }

    v37 = [NSNumber numberWithInteger:v36];
    [v6 setObject:v37 forKey:@"user-preference-playback-format"];
  }

  v38 = [v5 userTransitionTypePreference];
  if (v38)
  {
    if (v38 >= 4)
    {
      v39 = 0;
    }

    else
    {
      v39 = v38;
    }

    v40 = [NSNumber numberWithInteger:v39];
    [v6 setObject:v40 forKey:@"user-preference-transition-type"];
  }

  v41 = [v5 transitionTypeProvided];
  if (v41)
  {
    if (v41 >= 6)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v43 = [NSNumber numberWithInteger:v42];
    [v6 setObject:v43 forKey:@"transition-provided"];
  }

  v44 = [NSMutableArray alloc];
  v45 = [v5 buildFeatures];
  v46 = [v44 initWithArray:v45];

  if (v46 && [v46 count])
  {
    [v6 setObject:v46 forKey:@"build-features"];
  }

  v194 = v46;
  v47 = [v5 enqueuerProperties];
  v48 = v6;
  v49 = v48;
  if (v47)
  {
    v198 = [[NSMutableDictionary alloc] initWithCapacity:8];

    v50 = [[NSMutableDictionary alloc] initWithCapacity:10];
    v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v47 isSBEnabled]);
    [v50 setObject:v51 forKey:@"sb-enabled"];

    v52 = [v47 deviceName];
    if ([v52 length])
    {
      [v50 setObject:v52 forKey:@"device-name"];
    }

    v53 = [v47 storeFrontID];
    if ([v53 length])
    {
      [v50 setObject:v53 forKey:@"store-front"];
    }

    v189 = [v47 timeZone];
    v54 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v189 secondsFromGMT]);
    [v50 setObject:v54 forKey:@"utc-offset-in-seconds"];

    v55 = [v47 buildVersion];
    if ([v55 length])
    {
      [v50 setObject:v55 forKey:@"build-version"];
    }

    v178 = v7;
    v56 = [v47 deviceGUID];
    if ([v56 length])
    {
      [v50 setObject:v56 forKey:@"guid"];
    }

    v57 = [v47 isPrivateListeningEnabled];
    if (v57)
    {
      [v50 setObject:v57 forKey:@"private-enabled"];
    }

    if ([v47 systemReleaseType] == 4)
    {
      [v50 setObject:&__kCFBooleanTrue forKey:@"internal-build"];
    }

    v58 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v47 storeAccountID]);
    [v50 setObject:v58 forKey:@"dsid"];

    [v48 setObject:v50 forKey:@"enqueuer"];
    v7 = v178;
    v49 = v198;
  }

  v197 = v47;
  v59 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isSBEnabled]);
  [v49 setObject:v59 forKey:@"sb-enabled"];

  v60 = [v5 deviceName];
  v61 = v49;
  if ([v60 length])
  {
    [v49 setObject:v60 forKey:@"device-name"];
  }

  v62 = [v5 storeFrontID];
  if (!v62)
  {
    v62 = v195->_currentStoreFrontID;
  }

  if ([(NSString *)v62 length])
  {
    [v61 setObject:v62 forKey:@"store-front"];
  }

  v63 = [v5 eventTimeZone];
  v64 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v63 secondsFromGMT]);
  [v61 setObject:v64 forKey:@"utc-offset-in-seconds"];

  v65 = [v5 buildVersion];
  if ([v65 length])
  {
    [v61 setObject:v65 forKey:@"build-version"];
  }

  if ([v5 systemReleaseType] == 4)
  {
    [v61 setObject:&__kCFBooleanTrue forKey:@"internal-build"];
  }

  v199 = v61;
  v66 = [v5 isPrivateListeningEnabled];
  if (v66)
  {
    [v199 setObject:v66 forKey:@"private-enabled"];
  }

  v67 = v199;
  if (v197 && v199 != v48)
  {
    [v48 setObject:v199 forKey:@"player"];
  }

  v68 = [v5 containerType];
  v188 = v68;
  if ((v68 - 1) > 5)
  {
    v69 = 0;
  }

  else
  {
    v69 = qword_10016AE78[(v68 - 1)];
  }

  v71 = [NSNumber numberWithInteger:v69];
  [v48 setObject:v71 forKey:@"container-type"];

  if (v192 != 1)
  {
    [v5 itemEndTime];
    v73 = [NSNumber numberWithLongLong:(v72 * 1000.0)];
    [v48 setObject:v73 forKey:@"end-position-in-milliseconds"];

    if (v192 == 2)
    {
      v76 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 displayType]);
      [v48 setObject:v76 forKey:@"display-type"];

      v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 lyricsDisplayedCharacterCount]);
      [v48 setObject:v77 forKey:@"character-displayed-count"];

      v78 = [v5 lyricsLanguage];
      if ([v78 length])
      {
        [v48 setObject:v78 forKey:@"lyric-language"];
      }

      v79 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isDisplayTranslationEnabled]);
      [v48 setObject:v79 forKey:@"display-translation"];

      v80 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isDisplayTransliterationEnabled]);
      [v48 setObject:v80 forKey:@"display-transliteration"];

      goto LABEL_94;
    }

    if (!v192)
    {
      v74 = [v5 endReasonType] - 1;
      v75 = v74 > 0xE ? 0 : qword_10016AEA8[v74];
      v81 = [NSNumber numberWithInteger:v75];
      [v48 setObject:v81 forKey:@"end-reason-type"];

      v82 = [v5 vocalAttenuationAvailability];
      v83 = v82 == 2 ? 2 : v82 == 1;
      v84 = [NSNumber numberWithInteger:v83];
      [v48 setObject:v84 forKey:@"attenuation-available"];

      [v5 vocalAttenuationDuration];
      v86 = [NSNumber numberWithLongLong:(v85 * 1000.0)];
      [v48 setObject:v86 forKey:@"vocal-attenuation-duration-in-milliseconds"];

      if ([v5 itemType] != 7)
      {
        [v5 wallClockPlayDuration];
        v78 = [NSNumber numberWithLongLong:(v87 * 1000.0)];
        [v48 setObject:v78 forKey:@"play-duration-milliseconds"];
LABEL_94:
      }
    }
  }

  v88 = [v5 featureName];
  if ([v88 length])
  {
    [v48 setObject:v88 forKey:@"feature-name"];
  }

  v191 = v88;
  [v5 itemDuration];
  v90 = [NSNumber numberWithLongLong:(v89 * 1000.0)];
  [v48 setObject:v90 forKey:@"media-duration-in-milliseconds"];

  v91 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 mediaType] == 1);
  [v48 setObject:v91 forKey:@"media-type"];

  v92 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isOffline]);
  [v48 setObject:v92 forKey:@"offline"];

  v93 = [[NSMutableDictionary alloc] initWithCapacity:3];
  v94 = [v5 repeatPlayMode];
  if ((v94 - 1) >= 3)
  {
    v95 = 0;
  }

  else
  {
    v95 = v94;
  }

  v96 = [NSNumber numberWithInteger:v95];
  [v93 setObject:v96 forKey:@"repeat-play-mode"];

  v97 = [v5 shufflePlayMode];
  if (v97 == 2)
  {
    v98 = 2;
  }

  else
  {
    v98 = v97 == 1;
  }

  v99 = [NSNumber numberWithInteger:v98];
  [v93 setObject:v99 forKey:@"shuffle-play-mode"];

  v100 = [v5 autoPlayMode];
  if ((v100 - 1) >= 3)
  {
    v101 = 0;
  }

  else
  {
    v101 = v100;
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

  v110 = [v5 queueGroupingID];
  if ([v110 length])
  {
    [v48 setObject:v110 forKey:@"queue-grouping-id"];
  }

  v187 = v110;
  v111 = [v5 sharedActivityGroupSizeCurrent];
  if (v111)
  {
    v112 = sub_10007E664(v111);
    [v48 setObject:v112 forKey:@"shared-activity-devices-current"];

    v113 = sub_10007E664([v5 sharedActivityGroupSizeMax]);
    [v48 setObject:v113 forKey:@"shared-activity-devices-max"];
  }

  else
  {
    [v5 sharedActivityGroupSizeMax];
  }

  v114 = [v5 sharedActivityType];
  if (v114 <= 6)
  {
    v115 = v114;
    if (((1 << v114) & 0x72) != 0)
    {
      v116 = [NSNumber numberWithInteger:v114];
      [v48 setObject:v116 forKey:@"shared-activity-type"];
    }
  }

  if ([v5 isCollaborativePlaylist])
  {
    v117 = [NSNumber numberWithBool:1];
    [v48 setObject:v117 forKey:@"is-collaborative"];
  }

  v118 = [v5 eventDate];
  v119 = v118;
  if (v118)
  {
    [v118 timeIntervalSinceNow];
    v121 = [NSNumber numberWithLongLong:(v120 * -1000.0) & ~((v120 * -1000.0) >> 63)];
    [v48 setObject:v121 forKey:@"milliseconds-since-play"];
  }

  v186 = v119;
  v122 = [v5 recommendationData];
  if ([v122 length])
  {
    [v48 setObject:v122 forKey:@"reco-data"];
  }

  v123 = [v5 sourceType];
  if (v123 == 2)
  {
    v124 = 7;
  }

  else
  {
    v124 = v123 == 1;
  }

  v125 = [NSNumber numberWithInteger:v124];
  [v48 setObject:v125 forKey:@"source-type"];

  [v5 itemStartTime];
  v127 = [NSNumber numberWithLongLong:(v126 * 1000.0)];
  [v48 setObject:v127 forKey:@"start-position-in-milliseconds"];

  v128 = [v5 timedMetadata];
  if ([v128 length])
  {
    [v48 setObject:v128 forKey:@"timed-metadata"];
  }

  v184 = v128;
  v196 = [v5 trackInfo];
  if ([v196 length])
  {
    v129 = [NSPropertyListSerialization propertyListWithData:v196 options:0 format:0 error:0];
    if (v129)
    {
      [v48 setObject:v129 forKey:@"track-info"];
    }
  }

  v130 = [v5 itemType];
  v185 = v122;
  v131 = v7;
  if ((v130 - 1) > 8)
  {
    v132 = 0;
  }

  else
  {
    v132 = qword_10016AF20[(v130 - 1)];
  }

  v133 = [NSNumber numberWithInteger:v132];
  [v48 setObject:v133 forKey:@"type"];

  v134 = [v5 requestingBundleIdentifier];
  if (v134)
  {
    [v48 setObject:v134 forKey:@"bundle-id"];
  }

  v135 = [v5 requestingBundleVersion];
  if (v135)
  {
    [v48 setObject:v135 forKey:@"bundle-version"];
  }

  v182 = v135;
  v136 = [v5 householdID];
  if ([v136 length])
  {
    [v48 setObject:v136 forKey:@"household-id"];
  }

  v181 = v136;
  v137 = [v5 isSiriInitiated];
  if (v137)
  {
    [v48 setObject:v137 forKey:@"siri-initiated"];
  }

  v180 = v137;
  v190 = v93;
  v138 = v131;
  v183 = v134;
  if ([v5 version] > 1)
  {
    v145 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 reasonHintType] == 1);
    [v48 setObject:v145 forKey:@"event-reason-hint-type"];

    if (v192 == 2)
    {
      v146 = 2;
    }

    else
    {
      v146 = v192 == 1;
    }

    v147 = [NSNumber numberWithInteger:v146];
    [v48 setObject:v147 forKey:@"event-type"];

    v139 = [[NSMutableDictionary alloc] initWithCapacity:8];
    v148 = [v5 itemIDs];
    v140 = v148;
    if (v188 == 1)
    {
      v149 = [v148 radioAdamID];
      if (!v149)
      {
        goto LABEL_180;
      }

      v150 = v149;
      v151 = @"radio-adam-id";
    }

    else
    {
      v152 = [v148 subscriptionAdamID];
      v150 = v152;
      if (v130 == 6)
      {
        if (!v152)
        {
          goto LABEL_180;
        }

        v151 = @"auc-adam-id";
      }

      else
      {
        if (v152)
        {
          v153 = [NSNumber numberWithLongLong:v152];
          [v139 setObject:v153 forKey:@"subscription-adam-id"];
        }

        v154 = [v140 equivalencySourceAdamID];
        if (v154)
        {
          v155 = [NSNumber numberWithLongLong:v154];
          [v139 setObject:v155 forKey:@"orig-sf-adam-id"];
        }

        v156 = [v140 purchasedAdamID];
        if (v156)
        {
          v157 = [NSNumber numberWithLongLong:v156];
          [v139 setObject:v157 forKey:@"purchased-adam-id"];
        }

        v158 = [v140 cloudID];
        if (v158)
        {
          v159 = [NSNumber numberWithLongLong:v158];
          [v139 setObject:v159 forKey:@"cloud-id"];
        }

        v160 = [v140 reportingAdamID];
        if (!v160)
        {
LABEL_180:
          v143 = [v140 lyricsID];
          if ([v143 length])
          {
            [v139 setObject:v143 forKey:@"lyric-id"];
          }

          if ([v139 count])
          {
            [v48 setObject:v139 forKey:@"ids"];
          }

          v144 = [v5 containerIDs];
          v162 = [[NSMutableDictionary alloc] initWithCapacity:4];
          if (v188 <= 2)
          {
            if (v188 == 1)
            {
              v163 = [v144 stationHash];
              if ([v163 length])
              {
                [v162 setObject:v163 forKey:@"station-hash"];
              }

              v164 = [v144 stationStringID];
              if ([v164 length])
              {
                [v162 setObject:v164 forKey:@"station-id"];
              }

              v173 = [v144 stationID];
              if (v173)
              {
                [NSNumber numberWithLongLong:v173];
                v174 = v193 = v164;
                [v162 setObject:v174 forKey:@"station-personalized-id"];

                v164 = v193;
              }

              goto LABEL_212;
            }

            if (v188 == 2)
            {
LABEL_191:
              v163 = [v144 globalPlaylistID];
              if ([v163 length])
              {
                [v162 setObject:v163 forKey:@"global-playlist-id"];
              }

              v164 = [v144 playlistVersionHash];
              if ([v164 length])
              {
                [v162 setObject:v164 forKey:@"playlist-version-hash"];
              }

              v165 = [v144 cloudPlaylistID];
              v179 = v138;
              if (v165)
              {
                v166 = [NSNumber numberWithLongLong:v165];
                [v162 setObject:v166 forKey:@"cloud-playlist-id"];

                v138 = v179;
              }

              v167 = [v144 cloudPlaylistFolderID];
              if (v167)
              {
                v168 = [NSNumber numberWithLongLong:v167];
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

              v171 = [v144 adamID];
              if (v171)
              {
                v172 = [NSNumber numberWithLongLong:v171];
                [v162 setObject:v172 forKey:@"album-adam-id"];
              }

              v163 = [v144 cloudAlbumID];
              if (![v163 length])
              {
                goto LABEL_213;
              }

              v170 = @"cloud-album-id";
LABEL_205:
              [v162 setObject:v163 forKey:v170];
LABEL_213:

              goto LABEL_214;
            }

            v169 = [v144 adamID];
            if (v169)
            {
              v163 = [NSNumber numberWithLongLong:v169];
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

        v150 = v160;
        v151 = @"reporting-adam-id";
      }
    }

    v161 = [NSNumber numberWithLongLong:v150];
    [v139 setObject:v161 forKey:v151];

    goto LABEL_180;
  }

  v139 = [v5 containerID];
  if (v139)
  {
    [v48 setObject:v139 forKey:@"container-id"];
  }

  v140 = [v5 externalID];
  v141 = v186;
  v142 = v182;
  if (v140)
  {
    [v48 setObject:v140 forKey:@"external-identifier"];
  }

  v143 = [v5 personalizedContainerID];
  if ([v143 length])
  {
    [v48 setObject:v143 forKey:@"personalized-container-id"];
  }

  v144 = [v5 storeID];
  if ([v144 length])
  {
    [v48 setObject:v144 forKey:@"id"];
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