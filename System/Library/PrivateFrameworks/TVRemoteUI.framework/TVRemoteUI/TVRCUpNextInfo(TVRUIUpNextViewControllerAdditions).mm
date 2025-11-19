@interface TVRCUpNextInfo(TVRUIUpNextViewControllerAdditions)
- (BOOL)tvruiupnextvc_hasPercentComplete;
- (double)tvruiupnextvc_percentComplete;
- (id)tvruiupnextvc_favoritesIdentifier;
- (uint64_t)tvruiupnextvc_minutesRemaining;
@end

@implementation TVRCUpNextInfo(TVRUIUpNextViewControllerAdditions)

- (BOOL)tvruiupnextvc_hasPercentComplete
{
  v2 = [a1 timestamp];
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [a1 progress];
    v3 = v4 != 0;
  }

  return v3;
}

- (double)tvruiupnextvc_percentComplete
{
  v2 = [a1 progress];

  if (v2)
  {
    v3 = [a1 progress];
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v7 = [a1 timestamp];

    if (!v7)
    {
      return 0.0;
    }

    v8 = [a1 mediaInfo];
    v3 = v8;
    if (v8)
    {
      v9 = [v8 duration];
      [v9 doubleValue];
      v11 = v10;

      v12 = [a1 timestamp];
      [v12 doubleValue];
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
  v2 = [a1 mediaInfo];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = [a1 timeRemaining];

  if (!v3)
  {
    [a1 tvruiupnextvc_percentComplete];
    if (v7 > 0.0)
    {
      v8 = v7;
      v9 = [v2 duration];
      [v9 doubleValue];
      v11 = v10;

      v6 = ((v11 - v11 * v8) / 60.0);
      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v4 = [a1 timeRemaining];
  [v4 floatValue];
  v6 = (v5 / 60.0);

LABEL_7:
  return v6;
}

- (id)tvruiupnextvc_favoritesIdentifier
{
  v1 = [a1 mediaInfo];
  v2 = v1;
  if (v1)
  {
    if ([v1 kind] == 1)
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