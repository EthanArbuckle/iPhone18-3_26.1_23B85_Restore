@interface CLPPoiTriggerEvent(RTExtensions)
+ (uint64_t)mapItemSource:()RTExtensions;
+ (uint64_t)subType:()RTExtensions;
- (uint64_t)description;
- (void)initWithMapItem:()RTExtensions date:;
@end

@implementation CLPPoiTriggerEvent(RTExtensions)

+ (uint64_t)mapItemSource:()RTExtensions
{
  if (a3 <= 127)
  {
    v3 = 128;
    v12 = 256;
    if (a3 != 64)
    {
      v12 = 0;
    }

    if (a3 != 32)
    {
      v3 = v12;
    }

    v13 = 16;
    v14 = 64;
    if (a3 != 16)
    {
      v14 = 0;
    }

    if (a3 != 8)
    {
      v13 = v14;
    }

    if (a3 <= 31)
    {
      v3 = v13;
    }

    v7 = 1;
    v15 = 4;
    v16 = 8;
    if (a3 != 4)
    {
      v16 = 0;
    }

    if (a3 != 2)
    {
      v15 = v16;
    }

    if (a3 != 1)
    {
      v7 = v15;
    }

    v11 = a3 <= 7;
  }

  else
  {
    v3 = 0x4000;
    v4 = 0x8000;
    if (a3 != 0x4000)
    {
      v4 = 0;
    }

    if (a3 != 0x2000)
    {
      v3 = v4;
    }

    v5 = 4096;
    v6 = 0x2000;
    if (a3 != 4096)
    {
      v6 = 0;
    }

    if (a3 != 2048)
    {
      v5 = v6;
    }

    if (a3 < 0x2000)
    {
      v3 = v5;
    }

    v7 = 1024;
    v8 = 2048;
    if (a3 != 1024)
    {
      v8 = 0;
    }

    if (a3 != 512)
    {
      v7 = v8;
    }

    v9 = 2;
    v10 = 512;
    if (a3 != 256)
    {
      v10 = 0;
    }

    if (a3 != 128)
    {
      v9 = v10;
    }

    if (a3 <= 511)
    {
      v7 = v9;
    }

    v11 = a3 <= 2047;
  }

  if (v11)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

+ (uint64_t)subType:()RTExtensions
{
  v3 = a3 & 1;
  if ((a3 & 0x40000) != 0)
  {
    v3 = 1;
  }

  if (a3)
  {
    return v3 & 0xFFFFFF7F | (((a3 >> 1) & 1) << 7) | (a3 >> 1) & 0xE | (a3 >> 2) & 0x70 | (a3 >> 1) & 0x7F00;
  }

  else
  {
    return 0;
  }
}

- (void)initWithMapItem:()RTExtensions date:
{
  v6 = a3;
  v7 = a4;
  if ([v6 validMUID])
  {
    v8 = objc_opt_new();
    [v8 setMuid:{objc_msgSend(v6, "muid")}];
    [v8 setProviderIdentifier:{objc_msgSend(v6, "resultProviderID")}];
    [v7 timeIntervalSinceReferenceDate];
    [v8 setTriggerTimestamp:?];
    [v8 setTriggerType:3];
    [v8 setTriggerSubType:{objc_msgSend(objc_opt_class(), "subType:", objc_msgSend(v6, "source"))}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 muid];
  v4 = [a1 providerIdentifier];
  [a1 triggerTimestamp];
  return [v2 stringWithFormat:@"muid, %llu, providerIdentifier, %d triggerTimestamp, %.2f, triggerType, %d, triggerSubType, %d", v3, v4, v5, objc_msgSend(a1, "triggerType"), objc_msgSend(a1, "triggerSubType")];
}

@end