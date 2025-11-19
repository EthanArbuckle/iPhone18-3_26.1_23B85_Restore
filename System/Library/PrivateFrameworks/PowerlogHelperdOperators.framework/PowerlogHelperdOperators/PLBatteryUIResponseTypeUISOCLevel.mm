@interface PLBatteryUIResponseTypeUISOCLevel
- (BOOL)dateIntervals:(id)a3 containDate:(id)a4;
- (id)entriesInRange:(_PLTimeIntervalRange)a3 fromEntries:(id)a4;
- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)a3;
- (id)result;
- (void)configure:(id)a3;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeUISOCLevel

- (void)configure:(id)a3
{
  v41[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"start"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 objectForKeyedSubscript:@"end"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v7];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setStart:v11];

  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v10];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setEnd:v12];

  v13 = [(PLBatteryUIResponseTypeUISOCLevel *)self start];
  v14 = [(PLBatteryUIResponseTypeUISOCLevel *)self end];
  [v13 timeIntervalSince1970];
  v16 = v15;
  [v14 timeIntervalSince1970];
  v18 = v17 - v16;

  v19 = [v4 objectForKeyedSubscript:@"bucket"];

  [v19 doubleValue];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setBucketSize:?];

  v20 = objc_alloc(MEMORY[0x277D3F260]);
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v22 = [v20 initWithKey:@"timestamp" withValue:v21 withComparisonOperation:5];

  v23 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Level" withValue:&unk_287145E80 withComparisonOperation:3];
  v24 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"BatteryUI"];
  v25 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v26 = [v25 storage];
  v41[0] = v22;
  v41[1] = v23;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v28 = [v26 lastEntryForKey:v24 withComparisons:v27 isSingleton:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastBattEntry:v28];

  v29 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v30 = [v29 storage];
  v31 = [v30 entriesForKey:v24 inTimeRange:0 withFilters:{v16, v18}];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setBattEntries:v31];

  v32 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v33 = [v32 storage];
  v40 = v22;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v35 = [v33 lastEntryForKey:@"PLDuetService_EventForward_BatterySaverMode" withComparisons:v34 isSingleton:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastLPMEntry:v35];

  v36 = [(PLBatteryUIResponseTypeUISOCLevel *)self responderService];
  v37 = [v36 storage];
  v38 = [v37 entriesForKey:@"PLDuetService_EventForward_BatterySaverMode" inTimeRange:0 withFilters:{v16, v18}];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLpmEntries:v38];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)run
{
  v7 = [a2 count];
  *a1 = 134217984;
  *a3 = v7;
  _os_log_debug_impl(&dword_25EE51000, a4, OS_LOG_TYPE_DEBUG, "Found %lu entries in range!", a1, 0xCu);
}

- (id)result
{
  [(PLBatteryUIResponseTypeUISOCLevel *)self setBattEntries:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLpmEntries:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastLPMEntry:0];
  [(PLBatteryUIResponseTypeUISOCLevel *)self setLastBattEntry:0];

  return [(PLBatteryUIResponseTypeUISOCLevel *)self resultArray];
}

- (id)entriesInRange:(_PLTimeIntervalRange)a3 fromEntries:(id)a4
{
  length = a3.length;
  location = a3.location;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = location + length;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 entryDate];
        if (v15)
        {
          v16 = v15;
          [v15 timeIntervalSince1970];
          v18 = v17;

          if (location <= v18 && v18 < v12)
          {
            [v7 addObject:v14];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)dateIntervals:(id)a3 containDate:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  LOBYTE(v8) = 0;
  if (v5 && v6)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v5;
    v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v10 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v9);
          }

          if ([*(*(&v14 + 1) + 8 * i) containsDate:{v7, v14}])
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)getLPMIntervalsSpanningRange:(_PLTimeIntervalRange)a3
{
  length = a3.length;
  location = a3.location;
  v74 = *MEMORY[0x277D85DE8];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
  }

  v54 = objc_opt_new();
  v7 = [(PLBatteryUIResponseTypeUISOCLevel *)self lastLPMEntry];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [(PLBatteryUIResponseTypeUISOCLevel *)self lastLPMEntry];
  v9 = [v8 objectForKeyedSubscript:@"Value"];
  v10 = [v9 BOOLValue];

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIService getLPMIntervalsSpanningRange:];
  }

  if (v10)
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location];
    v13 = 1;
  }

  else
  {
LABEL_8:
    v12 = 0;
    v13 = 0;
  }

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(PLBatteryUIResponseTypeUISOCLevel *)self lastLPMEntry];
    *buf = 138413058;
    *v62 = v15;
    *&v62[8] = 2112;
    *&v62[10] = v12;
    v63 = 2048;
    v64 = location;
    v65 = 2048;
    v66 = length;
    _os_log_impl(&dword_25EE51000, v14, OS_LOG_TYPE_INFO, "lastLPMEntry=%@, startOfInterval=%@, range.location=%f, range.length=%f", buf, 0x2Au);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = self;
  v16 = [(PLBatteryUIResponseTypeUISOCLevel *)self lpmEntries];
  v17 = [v16 reverseObjectEnumerator];

  v18 = v17;
  v19 = [v17 countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v58;
    *&v20 = 138412290;
    v50 = v20;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v57 + 1) + 8 * i);
        v25 = [v24 objectForKeyedSubscript:{@"Value", v50}];
        v26 = [v25 BOOLValue];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v62 = v26;
          *&v62[4] = 2112;
          *&v62[6] = v24;
          _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_INFO, "LPM Entry: %d %@", buf, 0x12u);
        }

        if ((v13 & 1) == v26)
        {
          v30 = PLLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [(PLBatteryUIService *)&v55 getLPMIntervalsSpanningRange:v56, v30];
          }
        }

        else
        {
          v28 = [v24 entryDate];
          v29 = v28;
          if (v26)
          {
            v13 = 1;
            v30 = v12;
            v12 = v28;
          }

          else
          {
            v31 = [v12 compare:v28];

            if (v31 == 1)
            {
              v30 = PLLogCommon();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
              {
                v53 = [v24 entryDate];
                v52 = [(PLBatteryUIResponseTypeUISOCLevel *)v51 lastLPMEntry];
                v32 = [(PLBatteryUIResponseTypeUISOCLevel *)v51 lpmEntries];
                *buf = 138413826;
                *v62 = v12;
                *&v62[8] = 2112;
                *&v62[10] = v53;
                v63 = 2048;
                v64 = location;
                v65 = 2048;
                v66 = length;
                v67 = 2112;
                v68 = v52;
                v69 = 2112;
                v70 = v24;
                v71 = 2112;
                v72 = v32;
                v33 = v32;
                _os_log_fault_impl(&dword_25EE51000, v30, OS_LOG_TYPE_FAULT, "LOOP CASE: startOfInterval=%@ greater than lpmEntry.entryDate=%@, range.location=%f, range.length=%f, lastLPMEntry=%@, lpmEntry=%@, lpmEntries=%@", buf, 0x48u);
              }
            }

            else
            {
              v34 = objc_alloc(MEMORY[0x277CCA970]);
              v35 = [v24 entryDate];
              v30 = [v34 initWithStartDate:v12 endDate:v35];

              [v54 addObject:v30];
              v36 = PLLogCommon();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                *buf = v50;
                *v62 = v30;
                _os_log_debug_impl(&dword_25EE51000, v36, OS_LOG_TYPE_DEBUG, "Created LPM interval %@", buf, 0xCu);
              }

              v12 = 0;
              v13 = 0;
            }
          }
        }
      }

      v21 = [v18 countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v21);
  }

  if (v13)
  {
    v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
    v38 = [v12 compare:v37];

    v39 = PLLogCommon();
    v40 = v39;
    if (v38 == 1)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
        v42 = [(PLBatteryUIResponseTypeUISOCLevel *)v51 lastLPMEntry];
        v43 = [(PLBatteryUIResponseTypeUISOCLevel *)v51 lpmEntries];
        *buf = 138413570;
        *v62 = v12;
        *&v62[8] = 2112;
        *&v62[10] = v41;
        v63 = 2048;
        v64 = location;
        v65 = 2048;
        v66 = length;
        v67 = 2112;
        v68 = v42;
        v69 = 2112;
        v70 = v43;
        _os_log_fault_impl(&dword_25EE51000, v40, OS_LOG_TYPE_FAULT, "TAIL CASE: startOfInterval=%@ greater than endDate=%@, range.location=%f, range.length=%f, lastLPMEntry=%@, lpmEntries=%@", buf, 0x3Eu);
      }

      goto LABEL_42;
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
    }

    v44 = objc_alloc(MEMORY[0x277CCA970]);
    v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:location + length];
    v46 = [v44 initWithStartDate:v12 endDate:v45];

    [v54 addObject:v46];
    v47 = PLLogCommon();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
    }
  }

  v40 = PLLogCommon();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypeUISOCLevel getLPMIntervalsSpanningRange:];
  }

LABEL_42:

  v48 = *MEMORY[0x277D85DE8];

  return v54;
}

- (void)getLPMIntervalsSpanningRange:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getLPMIntervalsSpanningRange:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end