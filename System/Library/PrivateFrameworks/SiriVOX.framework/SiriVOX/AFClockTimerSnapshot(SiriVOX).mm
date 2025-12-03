@interface AFClockTimerSnapshot(SiriVOX)
- (id)svx_notifiedFiringTimers;
@end

@implementation AFClockTimerSnapshot(SiriVOX)

- (id)svx_notifiedFiringTimers
{
  v18 = *MEMORY[0x277D85DE8];
  timersByID = [self timersByID];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  notifiedFiringTimerIDs = [self notifiedFiringTimerIDs];
  v5 = [notifiedFiringTimerIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(notifiedFiringTimerIDs);
        }

        v9 = [timersByID objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v9)
        {
          [orderedSet addObject:v9];
        }
      }

      v6 = [notifiedFiringTimerIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [orderedSet copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end