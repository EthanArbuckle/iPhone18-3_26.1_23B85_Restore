@interface VUIPlaybackUtilities
+ (BOOL)isDownloadLimitError:(id)a3;
+ (BOOL)isMPMediaLibraryAssociationError:(id)a3;
+ (BOOL)isOutOfSpaceError:(id)a3;
+ (double)playedThresholdTimeForDuration:(double)a3;
+ (double)suggestedBookmarkTimeForElapsedTime:(double)a3 duration:(double)a4;
+ (id)updatedHLSURL:(id)a3 forPlaybackContext:(unint64_t)a4;
+ (int64_t)playedStateForDuration:(double)a3 elapsedTime:(double)a4 hasBeenPlayed:(BOOL)a5 playCount:(unint64_t)a6 respectPlayCount:(BOOL)a7;
+ (void)updateReportingForStartOfPreloadedPlayer:(id)a3;
@end

@implementation VUIPlaybackUtilities

+ (double)playedThresholdTimeForDuration:(double)a3
{
  v3 = 0.0;
  if (a3 > 0.0 && a3 != 3.40282347e38)
  {
    if (a3 < 10.0)
    {
      return a3;
    }

    if (a3 >= 900.0)
    {
      if (a3 >= 1800.0)
      {
        if (a3 >= 3900.0)
        {
          if (a3 >= 6000.0)
          {
            v4 = -660.0;
            return a3 + v4;
          }

          v5 = 0xC07E000000000000;
        }

        else
        {
          v5 = 0xC06E000000000000;
        }

        v4 = *&v5;
      }

      else
      {
        v4 = -180.0;
      }
    }

    else
    {
      v4 = -10.0;
    }

    return a3 + v4;
  }

  return v3;
}

+ (double)suggestedBookmarkTimeForElapsedTime:(double)a3 duration:(double)a4
{
  result = 0.0;
  if (a3 >= 15.0 && a4 > 0.0 && a4 != 3.40282347e38)
  {
    [a1 playedThresholdTimeForDuration:a4];
    v7 = v6 <= a3;
    result = 0.0;
    if (!v7)
    {
      return a3;
    }
  }

  return result;
}

+ (int64_t)playedStateForDuration:(double)a3 elapsedTime:(double)a4 hasBeenPlayed:(BOOL)a5 playCount:(unint64_t)a6 respectPlayCount:(BOOL)a7
{
  if (!a6 || a7)
  {
    v8 = 3;
    if (a6)
    {
      return v8;
    }

    v8 = 1;
    if (!a5)
    {
      return v8;
    }

    if (a4 < 15.0)
    {
      return 1;
    }
  }

  else if (a4 < 15.0)
  {
    return 3;
  }

  [a1 playedThresholdTimeForDuration:{a5, a3}];
  v8 = 3;
  if (v9 > a4)
  {
    return 2;
  }

  return v8;
}

+ (BOOL)isOutOfSpaceError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"CoreMediaErrorDomain"])
  {
    v5 = [v3 code] == 28;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isMPMediaLibraryAssociationError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 vui_numberForKey:*MEMORY[0x1E698C558]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
    v7 = v5 == 3047 || v5 == 3050;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isDownloadLimitError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:*MEMORY[0x1E69D60E8]];

  if (v5)
  {
    v6 = [v3 code];
    v7 = [v3 code];
    v8 = [v3 code];
    v11 = v6 == -345025 || v7 == -345026 || v8 == -345027;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)updatedHLSURL:(id)a3 forPlaybackContext:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_30;
  }

  v7 = [v5 pathExtension];
  v8 = [v7 isEqualToString:@"m3u8"];

  v9 = v6;
  if (!v8)
  {
    goto LABEL_30;
  }

  v10 = +[VUIGroupActivitiesManagerObjC isSessionActive];
  v11 = +[VUIFeaturesConfiguration sharedInstance];
  v12 = [v11 playbackUpNextConfig];
  v13 = [v12 disablePostPlayTypeHLSQueryParam];

  if (a4 == 12)
  {
    if (v10 || (v13 & 1) != 0)
    {
      goto LABEL_15;
    }

    v14 = VUIURLQueryParamValueOther;
LABEL_19:
    v18 = @"postPlayType";
    v22 = *v14;
    v21 = v22;
    v15 = 0;
    if (v18 && v22)
    {
      v19 = [v6 vui_URLByAddingQueryParamWithName:v18 value:v22];
      v20 = v19;
      v17 = 0;
      v15 = 0;
      goto LABEL_22;
    }

    v9 = v6;
    v17 = 0;
    goto LABEL_29;
  }

  if (a4 == 11)
  {
    if ((v10 | v13))
    {
      goto LABEL_10;
    }

    v14 = VUIURLQueryParamValueNextEpisodeDifferentSeason;
    goto LABEL_19;
  }

  if (a4 != 10)
  {
LABEL_15:
    v18 = 0;
    v21 = 0;
    v15 = 0;
    v17 = 0;
    v9 = v6;
    goto LABEL_29;
  }

  if (((v10 | v13) & 1) == 0)
  {
    v14 = VUIURLQueryParamValueNextEpisodeSameSeason;
    goto LABEL_19;
  }

LABEL_10:
  v15 = @"bingeWatching";
  v16 = @"true";
  v17 = v16;
  v18 = 0;
  if (v15 && v16)
  {
    v19 = [v6 vui_URLByAddingQueryParamWithName:v15 value:v16];
    v20 = v19;
    v21 = 0;
    v18 = 0;
LABEL_22:
    v9 = v6;
    if (v19)
    {
      v20 = v20;

      v9 = v20;
    }

    if (v9 != v6)
    {
      v23 = VUIDefaultLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412290;
        v26 = v9;
        _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "HLS URL after adding post play param(s): %@", &v25, 0xCu);
      }
    }

    goto LABEL_29;
  }

  v9 = v6;
  v21 = 0;
LABEL_29:

LABEL_30:

  return v9;
}

+ (void)updateReportingForStartOfPreloadedPlayer:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v9 = v3;
    v4 = *MEMORY[0x1E69D6080];
    v5 = [v9 loadingSubstate] - 1;
    if (v5 <= 2)
    {
      v6 = **(&unk_1E8731FA0 + v5);

      v4 = v6;
    }

    v7 = [v9 currentMediaItem];
    v8 = [v7 mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

    [v8 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:0];
    [v8 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:0];
    [v8 addSingleShotEventWithName:*MEMORY[0x1E69D5FF8] value:v4];

    v3 = v9;
  }
}

@end