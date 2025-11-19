uint64_t MDModeGetName(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    v1 = @"VoiceOnly";
  }

  else
  {
    v1 = off_279C32328[a1 - 1];
  }

  return [@"MDMode" stringByAppendingString:v1];
}

__CFString *MDModeGetNameForAnalytics(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"VoiceOnly";
  }

  else
  {
    return off_279C32328[a1 - 1];
  }
}

uint64_t AFPresentationModeForMDMode(uint64_t a1)
{
  v1 = 1;
  if (a1 == 1)
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}