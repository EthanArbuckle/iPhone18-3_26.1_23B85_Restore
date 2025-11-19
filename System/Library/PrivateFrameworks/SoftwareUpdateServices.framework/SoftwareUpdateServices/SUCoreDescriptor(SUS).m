@interface SUCoreDescriptor(SUS)
- (uint64_t)isEqualToDescriptor:()SUS;
- (uint64_t)isRevokedSplat;
@end

@implementation SUCoreDescriptor(SUS)

- (uint64_t)isRevokedSplat
{
  v2 = [a1 softwareUpdateAssetType];
  if ([v2 isEqualToString:*MEMORY[0x277D64318]])
  {
    v3 = [a1 revoked];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)isEqualToDescriptor:()SUS
{
  v4 = a3;
  if ([a1 isEqual:v4])
  {
    v5 = [a1 rampEnabled];
    if (v5 == [v4 rampEnabled] && (v6 = objc_msgSend(a1, "granularlyRamped"), v6 == objc_msgSend(v4, "granularlyRamped")))
    {
      v16 = [a1 preSUStagingRequiredSize];
      if (v16 == [v4 preSUStagingRequiredSize])
      {
        v17 = [a1 preSUStagingOptionalSize];
        if (v17 == [v4 preSUStagingOptionalSize])
        {
          v14 = 1;
          goto LABEL_6;
        }
      }

      [a1 preSUStagingRequiredSize];
      [a1 preSUStagingOptionalSize];
      [v4 preSUStagingRequiredSize];
      [v4 preSUStagingOptionalSize];
      SULogInfo(@"%s: psus info (Req:%llu, Opt:%llu) v (Req:%llu, Opt:%llu)", v18, v19, v20, v21, v22, v23, v24, "[SUCoreDescriptor(SUS) isEqualToDescriptor:]");
    }

    else
    {
      [a1 rampEnabled];
      [a1 granularlyRamped];
      [v4 rampEnabled];
      [v4 granularlyRamped];
      SULogInfo(@"%s: ramping control flags (R:%d, GR:%d) v (R:%d, GR:%d)", v7, v8, v9, v10, v11, v12, v13, "[SUCoreDescriptor(SUS) isEqualToDescriptor:]");
    }
  }

  v14 = 0;
LABEL_6:

  return v14;
}

@end