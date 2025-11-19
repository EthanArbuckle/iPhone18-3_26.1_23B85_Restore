@interface AFClockAlarmSnapshot(SiriVOX)
- (id)svx_notifiedFiringAlarms;
@end

@implementation AFClockAlarmSnapshot(SiriVOX)

- (id)svx_notifiedFiringAlarms
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [a1 alarmsByID];
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a1 notifiedFiringAlarmIDs];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v2 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end