@interface APSIncomingMessage(UserNotificationsCore)
- (__CFString)unc_pushTypeDescription;
@end

@implementation APSIncomingMessage(UserNotificationsCore)

- (__CFString)unc_pushTypeDescription
{
  pushType = [self pushType];
  v2 = @"Unknown";
  if (pushType <= 15)
  {
    v3 = @"VoIP";
    v7 = @"Background";
    v8 = @"Alert";
    if (pushType != 8)
    {
      v8 = @"Unknown";
    }

    if (pushType != 4)
    {
      v7 = v8;
    }

    if (pushType != 2)
    {
      v3 = v7;
    }

    if (pushType == 1)
    {
      v2 = @"Complication";
    }

    if (!pushType)
    {
      v2 = @"None";
    }

    v6 = pushType <= 1;
  }

  else
  {
    v3 = @"Wallet";
    v4 = @"LiveActivity";
    v5 = @"Widget";
    if (pushType != 2048)
    {
      v5 = @"Unknown";
    }

    if (pushType != 1024)
    {
      v4 = v5;
    }

    if (pushType != 512)
    {
      v3 = v4;
    }

    if (pushType == 128)
    {
      v2 = @"Location";
    }

    if (pushType == 32)
    {
      v2 = @"MDM";
    }

    if (pushType == 16)
    {
      v2 = @"FileProvider";
    }

    v6 = pushType <= 511;
  }

  if (v6)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

@end