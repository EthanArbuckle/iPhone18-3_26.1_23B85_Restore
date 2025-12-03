@interface VUIPlaybackUtilities
+ (BOOL)isDownloadLimitError:(id)error;
+ (BOOL)isMPMediaLibraryAssociationError:(id)error;
+ (BOOL)isOutOfSpaceError:(id)error;
+ (double)playedThresholdTimeForDuration:(double)duration;
+ (double)suggestedBookmarkTimeForElapsedTime:(double)time duration:(double)duration;
+ (id)updatedHLSURL:(id)l forPlaybackContext:(unint64_t)context;
+ (int64_t)playedStateForDuration:(double)duration elapsedTime:(double)time hasBeenPlayed:(BOOL)played playCount:(unint64_t)count respectPlayCount:(BOOL)playCount;
+ (void)updateReportingForStartOfPreloadedPlayer:(id)player;
@end

@implementation VUIPlaybackUtilities

+ (double)playedThresholdTimeForDuration:(double)duration
{
  v3 = 0.0;
  if (duration > 0.0 && duration != 3.40282347e38)
  {
    if (duration < 10.0)
    {
      return duration;
    }

    if (duration >= 900.0)
    {
      if (duration >= 1800.0)
      {
        if (duration >= 3900.0)
        {
          if (duration >= 6000.0)
          {
            v4 = -660.0;
            return duration + v4;
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

    return duration + v4;
  }

  return v3;
}

+ (double)suggestedBookmarkTimeForElapsedTime:(double)time duration:(double)duration
{
  result = 0.0;
  if (time >= 15.0 && duration > 0.0 && duration != 3.40282347e38)
  {
    [self playedThresholdTimeForDuration:duration];
    v7 = v6 <= time;
    result = 0.0;
    if (!v7)
    {
      return time;
    }
  }

  return result;
}

+ (int64_t)playedStateForDuration:(double)duration elapsedTime:(double)time hasBeenPlayed:(BOOL)played playCount:(unint64_t)count respectPlayCount:(BOOL)playCount
{
  if (!count || playCount)
  {
    v8 = 3;
    if (count)
    {
      return v8;
    }

    v8 = 1;
    if (!played)
    {
      return v8;
    }

    if (time < 15.0)
    {
      return 1;
    }
  }

  else if (time < 15.0)
  {
    return 3;
  }

  [self playedThresholdTimeForDuration:{played, duration}];
  v8 = 3;
  if (v9 > time)
  {
    return 2;
  }

  return v8;
}

+ (BOOL)isOutOfSpaceError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"CoreMediaErrorDomain"])
  {
    v5 = [errorCopy code] == 28;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isMPMediaLibraryAssociationError:(id)error
{
  userInfo = [error userInfo];
  v4 = [userInfo vui_numberForKey:*MEMORY[0x1E698C558]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v4 integerValue];
    v7 = integerValue == 3047 || integerValue == 3050;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isDownloadLimitError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x1E69D60E8]];

  if (v5)
  {
    code = [errorCopy code];
    code2 = [errorCopy code];
    code3 = [errorCopy code];
    v11 = code == -345025 || code2 == -345026 || code3 == -345027;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)updatedHLSURL:(id)l forPlaybackContext:(unint64_t)context
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v6 = lCopy;
  if (!lCopy)
  {
    v9 = 0;
    goto LABEL_30;
  }

  pathExtension = [lCopy pathExtension];
  v8 = [pathExtension isEqualToString:@"m3u8"];

  v9 = v6;
  if (!v8)
  {
    goto LABEL_30;
  }

  v10 = +[VUIGroupActivitiesManagerObjC isSessionActive];
  v11 = +[VUIFeaturesConfiguration sharedInstance];
  playbackUpNextConfig = [v11 playbackUpNextConfig];
  disablePostPlayTypeHLSQueryParam = [playbackUpNextConfig disablePostPlayTypeHLSQueryParam];

  if (context == 12)
  {
    if (v10 || (disablePostPlayTypeHLSQueryParam & 1) != 0)
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

  if (context == 11)
  {
    if ((v10 | disablePostPlayTypeHLSQueryParam))
    {
      goto LABEL_10;
    }

    v14 = VUIURLQueryParamValueNextEpisodeDifferentSeason;
    goto LABEL_19;
  }

  if (context != 10)
  {
LABEL_15:
    v18 = 0;
    v21 = 0;
    v15 = 0;
    v17 = 0;
    v9 = v6;
    goto LABEL_29;
  }

  if (((v10 | disablePostPlayTypeHLSQueryParam) & 1) == 0)
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

+ (void)updateReportingForStartOfPreloadedPlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    v9 = playerCopy;
    v4 = *MEMORY[0x1E69D6080];
    v5 = [v9 loadingSubstate] - 1;
    if (v5 <= 2)
    {
      v6 = **(&unk_1E8731FA0 + v5);

      v4 = v6;
    }

    currentMediaItem = [v9 currentMediaItem];
    v8 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5CA8]];

    [v8 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6040] date:0];
    [v8 addOrReplaceStartEventWithName:*MEMORY[0x1E69D6058] date:0];
    [v8 addSingleShotEventWithName:*MEMORY[0x1E69D5FF8] value:v4];

    playerCopy = v9;
  }
}

@end