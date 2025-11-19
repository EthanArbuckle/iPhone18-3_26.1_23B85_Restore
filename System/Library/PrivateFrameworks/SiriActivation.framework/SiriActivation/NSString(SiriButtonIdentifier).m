@interface NSString(SiriButtonIdentifier)
+ (__CFString)stringWithSiriButtonIdentifier:()SiriButtonIdentifier;
@end

@implementation NSString(SiriButtonIdentifier)

+ (__CFString)stringWithSiriButtonIdentifier:()SiriButtonIdentifier
{
  if (a3 > 6)
  {
    if (a3 <= 99)
    {
      switch(a3)
      {
        case 7:
          v4 = @"SiriButtonIdentifierLongPressCarPlaySiriButton";

          return v4;
        case 8:
          v4 = @"SiriButtonIdentifierLongPressHearstButton";

          return v4;
        case 9:
          v4 = @"SiriButtonIdentifierLongPressVoiceCommandButton";

          return v4;
      }
    }

    else if (a3 > 199)
    {
      if (a3 == 200)
      {
        v4 = @"SiriButtonIdentifierTestingShellButton";

        return v4;
      }

      if (a3 == 201)
      {
        v4 = @"SiriButtonIdentifierTVRemoteMicrophoneButton";

        return v4;
      }
    }

    else
    {
      if (a3 == 100)
      {
        v4 = @"SiriButtonIdentifierMockShellButton";

        return v4;
      }

      if (a3 == 101)
      {
        v4 = @"SiriButtonIdentifierMockSteeringWheelButton";

        return v4;
      }
    }

LABEL_60:
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<unknown siri button identifier : %li>", a3];

    return v4;
  }

  if (a3 > 2)
  {
    if (a3 > 4)
    {
      if (a3 == 5)
      {
        v4 = @"SiriButtonIdentifierLongPressCarPlayAppDockButton";
      }

      else
      {
        v4 = @"SiriButtonIdentifierLongPressCarPlaySteeringWheelButton";
      }
    }

    else if (a3 == 3)
    {
      v4 = @"SiriButtonIdentifierLongPressBTHeadset";
    }

    else
    {
      v4 = @"SiriButtonIdentifierLongPressWiredMic";
    }

    return v4;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v4 = @"SiriButtonIdentifierLongPressLockButton";

        return v4;
      }

      goto LABEL_60;
    }

    v4 = @"SiriButtonIdentifierLongPressHomeButton";
  }

  else
  {
    v4 = @"SiriButtonIdentifierLongPressUndefined";
  }

  return v4;
}

@end