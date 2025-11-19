@interface APSIncomingMessage(UserNotificationsCore)
- (__CFString)unc_pushTypeDescription;
@end

@implementation APSIncomingMessage(UserNotificationsCore)

- (__CFString)unc_pushTypeDescription
{
  v1 = [a1 pushType];
  v2 = @"Unknown";
  if (v1 <= 15)
  {
    v3 = @"VoIP";
    v7 = @"Background";
    v8 = @"Alert";
    if (v1 != 8)
    {
      v8 = @"Unknown";
    }

    if (v1 != 4)
    {
      v7 = v8;
    }

    if (v1 != 2)
    {
      v3 = v7;
    }

    if (v1 == 1)
    {
      v2 = @"Complication";
    }

    if (!v1)
    {
      v2 = @"None";
    }

    v6 = v1 <= 1;
  }

  else
  {
    v3 = @"Wallet";
    v4 = @"LiveActivity";
    v5 = @"Widget";
    if (v1 != 2048)
    {
      v5 = @"Unknown";
    }

    if (v1 != 1024)
    {
      v4 = v5;
    }

    if (v1 != 512)
    {
      v3 = v4;
    }

    if (v1 == 128)
    {
      v2 = @"Location";
    }

    if (v1 == 32)
    {
      v2 = @"MDM";
    }

    if (v1 == 16)
    {
      v2 = @"FileProvider";
    }

    v6 = v1 <= 511;
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