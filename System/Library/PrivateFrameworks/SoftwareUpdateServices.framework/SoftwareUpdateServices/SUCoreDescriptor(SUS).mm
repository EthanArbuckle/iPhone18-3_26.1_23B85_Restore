@interface SUCoreDescriptor(SUS)
- (uint64_t)isEqualToDescriptor:()SUS;
- (uint64_t)isRevokedSplat;
@end

@implementation SUCoreDescriptor(SUS)

- (uint64_t)isRevokedSplat
{
  softwareUpdateAssetType = [self softwareUpdateAssetType];
  if ([softwareUpdateAssetType isEqualToString:*MEMORY[0x277D64318]])
  {
    revoked = [self revoked];
  }

  else
  {
    revoked = 0;
  }

  return revoked;
}

- (uint64_t)isEqualToDescriptor:()SUS
{
  v4 = a3;
  if ([self isEqual:v4])
  {
    rampEnabled = [self rampEnabled];
    if (rampEnabled == [v4 rampEnabled] && (v6 = objc_msgSend(self, "granularlyRamped"), v6 == objc_msgSend(v4, "granularlyRamped")))
    {
      preSUStagingRequiredSize = [self preSUStagingRequiredSize];
      if (preSUStagingRequiredSize == [v4 preSUStagingRequiredSize])
      {
        preSUStagingOptionalSize = [self preSUStagingOptionalSize];
        if (preSUStagingOptionalSize == [v4 preSUStagingOptionalSize])
        {
          v14 = 1;
          goto LABEL_6;
        }
      }

      [self preSUStagingRequiredSize];
      [self preSUStagingOptionalSize];
      [v4 preSUStagingRequiredSize];
      [v4 preSUStagingOptionalSize];
      SULogInfo(@"%s: psus info (Req:%llu, Opt:%llu) v (Req:%llu, Opt:%llu)", v18, v19, v20, v21, v22, v23, v24, "[SUCoreDescriptor(SUS) isEqualToDescriptor:]");
    }

    else
    {
      [self rampEnabled];
      [self granularlyRamped];
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