@interface RTBluePOIHelper
+ (BOOL)insideBusinessHours:(id)a3 date:(id)a4 timeZone:(id)a5;
+ (BOOL)shouldFilterByBusinessHours:(BOOL)a3;
+ (double)weightBasedOnBusinessHours:(id)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 metrics:(id)a7;
+ (double)weightBasedOnDurationWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 poiCategory:(id)a6;
@end

@implementation RTBluePOIHelper

+ (BOOL)shouldFilterByBusinessHours:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = rand() / 2147483650.0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v8 = v7;
      v9 = @"NO";
      if (v3)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v12 = 138412802;
      v13 = v7;
      v15 = v10;
      v14 = 2112;
      if (v5 < 0.5)
      {
        v9 = @"YES";
      }

      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, internalInstall, %@, sampled, %@", &v12, 0x20u);
    }
  }

  return v5 < 0.5 && v3;
}

+ (BOOL)insideBusinessHours:(id)a3 date:(id)a4 timeZone:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v63 = v9;
  [v10 setTimeZone:v9];
  v62 = v10;
  v64 = v8;
  v11 = [v10 components:736 fromDate:v8];
  v12 = [v11 weekday];
  v13 = [v11 hour];
  v14 = [v11 minute];
  v61 = v11;
  v15 = [v11 second];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v65 = v7;
  v16 = [v7 placeDailyNormalizedHours];
  v17 = [v16 countByEnumeratingWithState:&v73 objects:v88 count:16];
  if (v17)
  {
    v18 = v17;
    LOBYTE(v19) = 0;
    v20 = v14 * 60.0 + v13 * 3600.0 + v15;
    v21 = *v74;
    v22 = MEMORY[0x277D86220];
    v23 = RTLogFacilityBluePOI;
    v60 = v16;
    v55 = *v74;
    v56 = v12;
    do
    {
      v24 = 0;
      v57 = v18;
      do
      {
        if (*v74 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v67 = *(*(&v73 + 1) + 8 * v24);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v25 = v24;
          v26 = _rt_log_facility_get_os_log(v23);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = NSStringFromSelector(a2);
            v28 = [v67 weekday];
            *buf = 138412802;
            v78 = v27;
            v79 = 2048;
            v80 = v28;
            v81 = 2048;
            v82 = v12;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, normalizedHours weekday, %lu, compareDate weekday, %lu", buf, 0x20u);
          }

          v24 = v25;
        }

        if ([v67 weekday] == v12)
        {
          v58 = v24;
          v59 = v19;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
          v29 = [v67 localTimeIntervals];
          v30 = [v29 countByEnumeratingWithState:&v69 objects:v87 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v70;
            while (2)
            {
              v33 = 0;
              v66 = v31;
              do
              {
                if (*v70 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v69 + 1) + 8 * v33);
                [v34 startTime];
                if (v35 + -1800.0 >= v20)
                {
                  v37 = 0;
                }

                else
                {
                  [v34 endTime];
                  v37 = v36 + 1800.0 > v20;
                }

                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  v38 = _rt_log_facility_get_os_log(v23);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                  {
                    v39 = NSStringFromSelector(a2);
                    v40 = v29;
                    v41 = v23;
                    v42 = v22;
                    if (v37)
                    {
                      v43 = @"YES";
                    }

                    else
                    {
                      v43 = @"NO";
                    }

                    [v34 startTime];
                    v45 = v44;
                    [v34 endTime];
                    *buf = 138413314;
                    v78 = v39;
                    v79 = 2112;
                    v80 = v43;
                    v22 = v42;
                    v23 = v41;
                    v29 = v40;
                    v81 = 2048;
                    v82 = v45;
                    v83 = 2048;
                    v84 = v46;
                    v85 = 2048;
                    v86 = v20;
                    _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, result, %@, business hours start, %.1f, end, %.1f, compareTime, %.1f", buf, 0x34u);

                    v31 = v66;
                  }
                }

                if (v37)
                {

                  v49 = 1;
                  v50 = v60;
                  goto LABEL_37;
                }

                ++v33;
              }

              while (v31 != v33);
              v31 = [v29 countByEnumeratingWithState:&v69 objects:v87 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          v16 = v60;
          v12 = v56;
          v18 = v57;
          LOBYTE(v19) = v59;
          v21 = v55;
          v24 = v58;
        }

        if (v19)
        {
          v19 = 1;
        }

        else
        {
          [v67 localTimeIntervals];
          v48 = v47 = v24;
          v19 = [v48 count] != 0;

          v24 = v47;
        }

        ++v24;
      }

      while (v24 != v18);
      v18 = [v16 countByEnumeratingWithState:&v73 objects:v88 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v49 = !v19;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v52 = NSStringFromSelector(a2);
      v53 = @"YES";
      *buf = 138412802;
      v78 = v52;
      if (v19)
      {
        v54 = @"NO";
      }

      else
      {
        v54 = @"YES";
      }

      v80 = v54;
      v79 = 2112;
      if (!v19)
      {
        v53 = @"NO";
      }

      v81 = 2112;
      v82 = v53;
      _os_log_impl(&dword_2304B3000, v50, OS_LOG_TYPE_INFO, "%@, result, %@, hasHoursOnAnyDayThisWeek, %@", buf, 0x20u);
    }

LABEL_37:
  }

  return v49;
}

+ (double)weightBasedOnBusinessHours:(id)a3 startDate:(id)a4 endDate:(id)a5 timeZone:(id)a6 metrics:(id)a7
{
  v55 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v37 = a4;
  v36 = a5;
  v13 = a6;
  v14 = a7;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v38 objects:v54 count:16];
  if (!v16)
  {

    v24 = 0;
    v25 = 1.0;
    goto LABEL_26;
  }

  v35 = a2;
  LOBYTE(v17) = 0;
  v18 = *v39;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v39 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v38 + 1) + 8 * i);
      if ([v20 hoursType] == 4 || objc_msgSend(v20, "hoursType") == 3)
      {
        v28 = 0.0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
          a2 = v35;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = NSStringFromSelector(v35);
            *buf = 138412290;
            v43 = v27;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, business is permanently/temporarily closed", buf, 0xCu);
          }

          v17 = 0;
          goto LABEL_24;
        }

        v17 = 0;
LABEL_23:
        a2 = v35;
LABEL_24:

        v23 = v17;
LABEL_25:
        v16 = 1;
        v24 = v23;
        v25 = v28;
        goto LABEL_26;
      }

      v21 = [v20 placeDailyNormalizedHours];
      v22 = [v21 count];

      if (v22)
      {
        if ([RTBluePOIHelper insideBusinessHours:v20 date:v37 timeZone:v13])
        {
          v17 = 1;
          if ([RTBluePOIHelper insideBusinessHours:v20 date:v36 timeZone:v13])
          {
            v28 = 1.0;
            goto LABEL_23;
          }
        }

        else
        {
          LOBYTE(v17) = 1;
        }
      }
    }

    v16 = [v15 countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v23 = 0;
  v24 = 0;
  v25 = 1.0;
  v28 = 0.0;
  a2 = v35;
  if (v17)
  {
    goto LABEL_25;
  }

LABEL_26:
  v29 = [MEMORY[0x277CCABB0] numberWithBool:v16];
  [v14 setObject:v29 forKeyedSubscript:@"hasBusinessHours"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:v24];
  [v14 setObject:v30 forKeyedSubscript:@"insideBusinessHours"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = NSStringFromSelector(a2);
      v33 = @"NO";
      *buf = 138413570;
      v44 = 2048;
      v43 = v32;
      if (v16)
      {
        v33 = @"YES";
      }

      v45 = v25;
      v46 = 2112;
      v47 = v33;
      v48 = 2112;
      v49 = v37;
      v50 = 2112;
      v51 = v36;
      v52 = 2112;
      v53 = v13;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, weight, %.1f, businessHoursAvailable, %@, start, %@, end, %@, timeZone, %@", buf, 0x3Eu);
    }
  }

  return v25;
}

+ (double)weightBasedOnDurationWithStartDate:(id)a3 endDate:(id)a4 timeZone:(id)a5 poiCategory:(id)a6
{
  v60[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  [v11 timeIntervalSinceDate:v10];
  if (v14 >= 60.0)
  {
    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    [v16 setTimeZone:v12];
    v18 = [v16 components:736 fromDate:v10];
    v19 = [v16 components:736 fromDate:v11];
    v20 = [v18 hour];
    v44 = v19;
    v21 = [v19 hour];
    [v11 timeIntervalSinceDate:v10];
    v23 = v22;
    v15 = 1.0;
    if (v22 >= 28800.0 && ([v13 isEqualToString:*MEMORY[0x277D0E8D0]] & 1) == 0)
    {
      if (v20 <= 6 || v20 >= v21 || v21 >= 0x15)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 1.0;
      }
    }

    v26 = *MEMORY[0x277D0E8C8];
    v59[0] = *MEMORY[0x277D0E8A8];
    v59[1] = v26;
    v60[0] = &unk_2845A1220;
    v60[1] = &unk_2845A1268;
    v59[2] = *MEMORY[0x277D0E968];
    v60[2] = &unk_2845A12B0;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
    v28 = [v27 objectForKey:v13];

    if (v28)
    {
      v43 = v18;
      v29 = [v27 objectForKey:v13];
      v30 = [v29 firstObject];

      v31 = [v27 objectForKey:v13];
      v32 = [v31 lastObject];

      if ([v30 count])
      {
        v42 = a2;
        v33 = 0;
        while (1)
        {
          v34 = [v30 objectAtIndexedSubscript:v33];
          [v34 doubleValue];
          v36 = v35;

          if (v36 > v23)
          {
            break;
          }

          if (++v33 >= [v30 count])
          {
            goto LABEL_23;
          }
        }

        v37 = [v32 objectAtIndexedSubscript:v33];
        [v37 doubleValue];
        v15 = v15 * v38;

LABEL_23:
        a2 = v42;
      }

      v18 = v43;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = NSStringFromSelector(a2);
        *buf = 138413826;
        v46 = v40;
        v47 = 2048;
        v48 = v15;
        v49 = 2112;
        v50 = v10;
        v51 = 2112;
        v52 = v11;
        v53 = 2048;
        v54 = v23;
        v55 = 2112;
        v56 = v13;
        v57 = 2112;
        v58 = v12;
        _os_log_impl(&dword_2304B3000, v39, OS_LOG_TYPE_INFO, "%@, weight, %.1f, startDate, %@, endDate, %@, duration, %.1f, poi category, %@, timezone, %@", buf, 0x48u);
      }
    }

    goto LABEL_30;
  }

  v15 = 1.0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityBluePOI);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138413314;
      v46 = v17;
      v47 = 2112;
      v48 = *&v10;
      v49 = 2112;
      v50 = v11;
      v51 = 2112;
      v52 = v13;
      v53 = 2112;
      v54 = *&v12;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, skip duration filter, startDate, %@, endDate, %@, poi category, %@, timezone, %@", buf, 0x34u);
    }

LABEL_30:
  }

  return v15;
}

@end