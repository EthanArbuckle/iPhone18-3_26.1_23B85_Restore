@interface STMutableStatusBarOverridesStatusDomainData(ArchiveRecordApplying)
- (void)_sbApplySystemStatusStatusBarOverridesArchiveRecord:()ArchiveRecordApplying;
@end

@implementation STMutableStatusBarOverridesStatusDomainData(ArchiveRecordApplying)

- (void)_sbApplySystemStatusStatusBarOverridesArchiveRecord:()ArchiveRecordApplying
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 statusBarData];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [MEMORY[0x277D6BA48] entryKeys];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [v5 entryForKey:v11];
        [a1 setEntry:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  while (1)
  {

    v14 = [a1 suppressedBackgroundActivityIdentifiers];
    v15 = [v14 count];

    if (!v15)
    {
      break;
    }

    v6 = [a1 suppressedBackgroundActivityIdentifiers];
    v13 = [v6 anyObject];
    [a1 stopSuppressingBackgroundActivityWithIdentifier:v13];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = [v4 suppressedBackgroundActivityIdentifiers];
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [a1 suppressBackgroundActivityWithIdentifier:*(*(&v21 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v18);
  }
}

@end