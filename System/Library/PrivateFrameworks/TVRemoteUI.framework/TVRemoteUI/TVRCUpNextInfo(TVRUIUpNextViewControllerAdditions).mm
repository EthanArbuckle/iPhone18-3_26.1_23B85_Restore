@interface TVRCUpNextInfo(TVRUIUpNextViewControllerAdditions)
- (BOOL)tvruiupnextvc_hasPercentComplete;
- (double)tvruiupnextvc_percentComplete;
- (id)tvruiupnextvc_favoritesIdentifier;
- (uint64_t)tvruiupnextvc_minutesRemaining;
@end

@implementation TVRCUpNextInfo(TVRUIUpNextViewControllerAdditions)

- (BOOL)tvruiupnextvc_hasPercentComplete
{
  timestamp = [self timestamp];
  if (timestamp)
  {
    v3 = 1;
  }

  else
  {
    progress = [self progress];
    v3 = progress != 0;
  }

  return v3;
}

- (double)tvruiupnextvc_percentComplete
{
  progress = [self progress];

  if (progress)
  {
    progress2 = [self progress];
    [progress2 doubleValue];
    v5 = v4;
  }

  else
  {
    timestamp = [self timestamp];

    if (!timestamp)
    {
      return 0.0;
    }

    mediaInfo = [self mediaInfo];
    progress2 = mediaInfo;
    if (mediaInfo)
    {
      duration = [mediaInfo duration];
      [duration doubleValue];
      v11 = v10;

      timestamp2 = [self timestamp];
      [timestamp2 doubleValue];
      v14 = v13 / 1000000000.0;

      if (v14 <= 0.0)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v14 / v11;
      }
    }

    else
    {
      v5 = 0.0;
    }
  }

  return v5;
}

- (uint64_t)tvruiupnextvc_minutesRemaining
{
  mediaInfo = [self mediaInfo];
  if (!mediaInfo)
  {
    goto LABEL_6;
  }

  timeRemaining = [self timeRemaining];

  if (!timeRemaining)
  {
    [self tvruiupnextvc_percentComplete];
    if (v7 > 0.0)
    {
      v8 = v7;
      duration = [mediaInfo duration];
      [duration doubleValue];
      v11 = v10;

      v6 = ((v11 - v11 * v8) / 60.0);
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  timeRemaining2 = [self timeRemaining];
  [timeRemaining2 floatValue];
  v6 = (v5 / 60.0);

LABEL_7:
  return v6;
}

- (id)tvruiupnextvc_favoritesIdentifier
{
  mediaInfo = [self mediaInfo];
  v2 = mediaInfo;
  if (mediaInfo)
  {
    if ([mediaInfo kind] == 1)
    {
      [v2 showIdentifier];
    }

    else
    {
      [v2 identifier];
    }
    v3 = ;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end