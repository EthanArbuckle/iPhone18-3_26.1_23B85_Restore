@interface UIStatusBar_Base(Snapshots)
- (BOOL)sb_getLocalDataOverrides:()Snapshots;
- (uint64_t)sb_setLocalDataOverrides:()Snapshots;
- (void)sb_setEnabledStatusBarPartIdentifiersForStatusBarParts:()Snapshots;
- (void)sb_setSnapshotOverridesWithTimeEnabled:()Snapshots overriddenDate:;
@end

@implementation UIStatusBar_Base(Snapshots)

- (void)sb_setSnapshotOverridesWithTimeEnabled:()Snapshots overriddenDate:
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__onceToken != -1)
  {
    [UIStatusBar_Base(Snapshots) sb_setSnapshotOverridesWithTimeEnabled:overriddenDate:];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  if (([self sb_getLocalDataOverrides:v16] & 1) == 0)
  {
    bzero(&v16[2] + 8, 0xF40uLL);
  }

  *&v7 = 0x101010101010101;
  *(&v7 + 1) = 0x101010101010101;
  *(&v16[1] + 14) = v7;
  v16[0] = v7;
  v16[1] = v7;
  BYTE9(v16[0]) = 0;
  if (a3)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{190057260.0, v16[0], v16[1], v16[2]}];
    }

    v9 = v8;
    v10 = [sb_setSnapshotOverridesWithTimeEnabled_overriddenDate__timeDateFormatter stringFromDate:{v8, *&v16[0]}];
    [v10 cStringUsingEncoding:4];
    __strlcpy_chk();
    *(&v16[2] + 14) |= 1u;
    LOBYTE(v17) = 1;
  }

  BYTE4(v16[0]) = 0;
  *(&v16[2] + 14) |= 0x10u;
  telephonyStateProvider = [SBApp telephonyStateProvider];
  v12 = [telephonyStateProvider subscriptionInfoForSlot:2];
  if (([v12 isProvidingDataConnection] & 1) == 0)
  {
    v13 = [telephonyStateProvider subscriptionInfoForSlot:1];

    v12 = v13;
  }

  DWORD2(v44) = [v12 maxSignalStrengthBars];
  *(&v16[2] + 14) |= 0x4000u;
  v45 = 3;
  isCellularRadioCapabilityActive = [telephonyStateProvider isCellularRadioCapabilityActive];
  v15 = 6;
  if (isCellularRadioCapabilityActive)
  {
    v15 = 70;
  }

  *(v16 + v15) = 0;
  v46 = 100;
  BYTE12(v17) = 1;
  *(&v16[2] + 14) |= 0xC0000u;
  [self sb_setLocalDataOverrides:v16];
}

- (void)sb_setEnabledStatusBarPartIdentifiersForStatusBarParts:()Snapshots
{
  if (a3 == 0xFFFF)
  {

    [self setEnabledPartIdentifiers:0];
  }

  else
  {
    v4 = a3;
    array = [MEMORY[0x277CBEB18] array];
    if (v4)
    {
      [array addObject:*MEMORY[0x277D775D0]];
    }

    if ((v4 & 2) != 0)
    {
      [array addObject:*MEMORY[0x277D775E0]];
    }

    [self setEnabledPartIdentifiers:array];
  }
}

- (uint64_t)sb_setLocalDataOverrides:()Snapshots
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, 512);
  if ([self sb_getLocalDataOverrides:v8])
  {
    if (!a3)
    {
      objc_setAssociatedObject(self, _SBStatusBarAssociatedValueKeyLocalDataOverrides, 0, 1);
      [self setLocalDataOverrides:0];
      return [self forceUpdateData:0];
    }

    v5 = memcmp(a3, v8, 0xF68uLL) != 0;
  }

  else
  {
    v5 = a3 != 0;
    if (!a3)
    {
      objc_setAssociatedObject(self, _SBStatusBarAssociatedValueKeyLocalDataOverrides, 0, 1);
      return [self setLocalDataOverrides:0];
    }
  }

  v6 = objc_getAssociatedObject(self, _SBStatusBarAssociatedValueKeyLocalDataOverrides);
  if (!v6)
  {
    v6 = objc_alloc_init(_SBStatusBarLocalDataOverridesWrapper);
    objc_setAssociatedObject(self, _SBStatusBarAssociatedValueKeyLocalDataOverrides, v6, 1);
  }

  [(_SBStatusBarLocalDataOverridesWrapper *)v6 setOverrides:a3];

  result = [self setLocalDataOverrides:a3];
  if (v5)
  {
    return [self forceUpdateData:0];
  }

  return result;
}

- (BOOL)sb_getLocalDataOverrides:()Snapshots
{
  v4 = objc_getAssociatedObject(self, _SBStatusBarAssociatedValueKeyLocalDataOverrides);
  overrides = [v4 overrides];
  if (a3)
  {
    if (overrides)
    {
      memcpy(a3, overrides, 0xF68uLL);
    }

    else
    {
      bzero(a3, 0xF68uLL);
    }
  }

  return overrides != 0;
}

@end