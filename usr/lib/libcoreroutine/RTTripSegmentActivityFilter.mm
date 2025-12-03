@interface RTTripSegmentActivityFilter
- (BOOL)isRealModeOfTransportationExisted:(id)existed;
- (double)findTotalDurationForActivity:(unint64_t)activity activities:(id)activities dateInterval:(id)interval;
- (id)discardFalseTransitionsFromActivities:(id)activities whileInTransportMode:(unint64_t)mode dateInterval:(id)interval withTimeCushion:(double)cushion;
- (id)discardTrivialActivitiesBetweenIdenticalRealActivities:(id)activities;
- (id)findGapMergeOrderFromActivities:(id)activities dateInterval:(id)interval;
- (id)findIndicesAndDurationForMode:(unint64_t)mode activities:(id)activities dateInterval:(id)interval;
- (id)forceActivities:(id)activities toTransportationMode:(unint64_t)mode dateInterval:(id)interval;
- (id)forceActivities:(id)activities withinTransitionInterval:(id)interval toAutoByConnection:(id)connection;
- (id)mergeRepeatedActivities:(id)activities;
- (id)populatePredominantActivity:(id)activity dateInterval:(id)interval predominantActivityType:(unint64_t)type;
- (id)preventDirectModeSwitchingInActivities:(id)activities dateInterval:(id)interval;
- (id)removeFalseTransitionsFromActivities:(id)activities dateInterval:(id)interval predominantActivityType:(unint64_t)type;
- (id)removeNonTransportationModeActivities:(id)activities dateInterval:(id)interval vehicleIntervals:(id)intervals predominantActivityType:(unint64_t)type;
@end

@implementation RTTripSegmentActivityFilter

- (id)mergeRepeatedActivities:(id)activities
{
  v25 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = activitiesCopy;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277D011B8]);
        if ([v9 type] == 3)
        {
          type = 2;
        }

        else
        {
          type = [v9 type];
        }

        confidence = [v9 confidence];
        startDate = [v9 startDate];
        v14 = [v10 initWithType:type confidence:confidence startDate:startDate];

        if (![v4 count] || (objc_msgSend(v4, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "type"), v17 = objc_msgSend(v14, "type"), v15, v16 != v17))
        {
          [v4 addObject:v14];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)findIndicesAndDurationForMode:(unint64_t)mode activities:(id)activities dateInterval:(id)interval
{
  activitiesCopy = activities;
  intervalCopy = interval;
  array = [MEMORY[0x277CBEB18] array];
  if ([activitiesCopy count])
  {
    v10 = 1;
    p_vtable = RTPersistenceStoreImporter.vtable;
    modeCopy = mode;
    do
    {
      v12 = [activitiesCopy objectAtIndexedSubscript:v10 - 1];
      if ([v12 type] == mode)
      {
        endDate = [intervalCopy endDate];
        startDate = [v12 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v16 = v15;

        if (v10 - 1 < [activitiesCopy count] - 1)
        {
          v17 = [activitiesCopy objectAtIndexedSubscript:v10];
          startDate2 = [v17 startDate];
          [v12 startDate];
          v19 = array;
          v20 = intervalCopy;
          v22 = v21 = p_vtable;
          [startDate2 timeIntervalSinceDate:v22];
          v16 = v23;

          p_vtable = v21;
          intervalCopy = v20;
          array = v19;
          mode = modeCopy;
        }

        v24 = [objc_alloc((p_vtable + 47)) initWithType:mode index:v10 - 1 duration:v16];
        [array addObject:v24];
      }
    }

    while (v10++ < [activitiesCopy count]);
  }

  return array;
}

- (id)forceActivities:(id)activities toTransportationMode:(unint64_t)mode dateInterval:(id)interval
{
  activitiesCopy = activities;
  intervalCopy = interval;
  if ([activitiesCopy count])
  {
    for (i = 0; i < [activitiesCopy count]; ++i)
    {
      v10 = [activitiesCopy objectAtIndexedSubscript:i];
      startDate = [v10 startDate];
      startDate2 = [intervalCopy startDate];
      v13 = [startDate isBeforeDate:startDate2];

      if ((v13 & 1) == 0)
      {
        startDate3 = [v10 startDate];
        endDate = [intervalCopy endDate];
        v16 = [startDate3 isAfterDate:endDate];

        if (v16)
        {

          break;
        }

        if ([v10 type] != mode)
        {
          v17 = objc_alloc(MEMORY[0x277D011B8]);
          confidence = [v10 confidence];
          startDate4 = [v10 startDate];
          v20 = [v17 initWithType:mode confidence:confidence startDate:startDate4];

          [activitiesCopy replaceObjectAtIndex:i withObject:v20];
        }
      }
    }
  }

  return activitiesCopy;
}

- (id)preventDirectModeSwitchingInActivities:(id)activities dateInterval:(id)interval
{
  activitiesCopy = activities;
  intervalCopy = interval;
  if ([activitiesCopy count])
  {
    type = 0;
    v8 = 1;
    do
    {
      v9 = [activitiesCopy objectAtIndex:v8 - 1];
      if (v8 == [activitiesCopy count])
      {
        v10 = v9;
      }

      else
      {
        v10 = [activitiesCopy objectAtIndex:v8];
      }

      v11 = v10;
      startDate = [v10 startDate];
      startDate2 = [v9 startDate];
      [startDate timeIntervalSinceDate:startDate2];
      v15 = v14;

      if (v8 - 1 == [activitiesCopy count] - 1)
      {
        endDate = [intervalCopy endDate];
        startDate3 = [v9 startDate];
        [endDate timeIntervalSinceDate:startDate3];
        v15 = v18;
      }

      if (type <= 6)
      {
        if (((1 << type) & 0x4F) == 0 && ((v19 = [v9 type], v15 < 10.0) ? (v20 = v19 == 6) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (v22 = objc_msgSend(v9, "type"), v23 = v22 == 5, v15 < 60.0) ? (v24 = v22 == 4) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), type == 5 ? (v23 = 0) : (v25 = 0), ((v21 | v25) & 1) != 0 || v23))
        {
          v26 = objc_alloc(MEMORY[0x277D011B8]);
          confidence = [v9 confidence];
          startDate4 = [v9 startDate];
          v29 = [v26 initWithType:type confidence:confidence startDate:startDate4];

          [activitiesCopy replaceObjectAtIndex:v8 - 1 withObject:v29];
        }

        else
        {
          type = [v9 type];
        }
      }
    }

    while (v8++ < [activitiesCopy count]);
  }

  v31 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:activitiesCopy];

  return v31;
}

- (id)discardFalseTransitionsFromActivities:(id)activities whileInTransportMode:(unint64_t)mode dateInterval:(id)interval withTimeCushion:(double)cushion
{
  v81 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  intervalCopy = interval;
  selfCopy = self;
  selfCopy2 = self;
  v13 = activitiesCopy;
  [(RTTripSegmentActivityFilter *)selfCopy2 findIndicesAndDurationForMode:mode activities:activitiesCopy dateInterval:intervalCopy];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = v75 = 0u;
  v68 = [v14 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (!v68)
  {
    goto LABEL_51;
  }

  v15 = 0;
  v69 = *v73;
  modeCopy = mode;
  if (mode == 4)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 60.0;
  }

  v66 = intervalCopy;
  v67 = v14;
  while (2)
  {
    for (i = 0; i != v68; ++i)
    {
      if (*v73 != v69)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v72 + 1) + 8 * i);
      index = [v18 index];
      if (index == [v13 count] - 1)
      {
        goto LABEL_32;
      }

      index2 = [v18 index];
      if (index2 >= [v13 count])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
LABEL_32:
          intervalCopy = v66;
          goto LABEL_51;
        }

        v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          index3 = [v18 index];
          v54 = [v13 count];
          *buf = 134218240;
          v77 = index3;
          v78 = 2048;
          v79 = v54;
          _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: current activity index beyond valid scope,index,%tu,activityCount,%tu", buf, 0x16u);
        }

        goto LABEL_49;
      }

      v21 = [v13 objectAtIndexedSubscript:{objc_msgSend(v18, "index")}];
      [v18 duration];
      v23 = v22;
      v70 = v13;
      v71 = v21;
      if (v15 < [v14 count] - 1)
      {
        startDate9 = [v14 objectAtIndexedSubscript:v15 + 1];
        index4 = [startDate9 index];
        if (index4 >= [v13 count])
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v28 = 0;
            goto LABEL_47;
          }

          v57 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            index5 = [v18 index];
            v61 = [v13 count];
            *buf = 134218240;
            v77 = index5;
            v78 = 2048;
            v79 = v61;
            _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: next activity index beyond valid scope,index,%tu,activityCount,%tu", buf, 0x16u);
          }

          v28 = 0;
        }

        else
        {
          [startDate9 duration];
          v27 = v26;
          v28 = [v13 objectAtIndexedSubscript:{objc_msgSend(startDate9, "index")}];
          index6 = [startDate9 index];
          v30 = [v13 count];
          startDate = [v21 startDate];
          startDate2 = [v28 startDate];
          v33 = [startDate isBeforeDate:startDate2];

          if (v33)
          {
            v34 = index6 == v30 - 1;
            v35 = objc_alloc(MEMORY[0x277CCA970]);
            startDate3 = [v21 startDate];
            v37 = v28;
            startDate4 = [v28 startDate];
            v39 = [v35 initWithStartDate:startDate3 endDate:startDate4];

            goto LABEL_17;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v14 = v67;
            v13 = v70;
            goto LABEL_47;
          }

          v57 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          v13 = v70;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            startDate5 = [v21 startDate];
            startDate6 = [v28 startDate];
            *buf = 138412546;
            v77 = startDate5;
            v78 = 2112;
            v79 = startDate6;
            _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: current activity date, %@, after next activity date, %@", buf, 0x16u);

            v13 = v70;
          }
        }

        v14 = v67;
LABEL_47:

LABEL_48:
LABEL_49:
        intervalCopy = v66;
        goto LABEL_50;
      }

      intervalCopy = v66;
      [v66 duration];
      v27 = v40;
      startDate7 = [v21 startDate];
      endDate = [v66 endDate];
      v43 = [startDate7 isBeforeDate:endDate];

      if (!v43)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v14 = v67;
          v13 = v70;
LABEL_50:

          goto LABEL_51;
        }

        v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        v14 = v67;
        v13 = v70;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          startDate8 = [v21 startDate];
          endDate2 = [v66 endDate];
          *buf = 138412546;
          v77 = startDate8;
          v78 = 2112;
          v79 = endDate2;
          _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: current activity date, %@, after transition end date, %@", buf, 0x16u);

          v13 = v70;
        }

        goto LABEL_48;
      }

      v44 = objc_alloc(MEMORY[0x277CCA970]);
      startDate9 = [v21 startDate];
      startDate3 = [v66 endDate];
      v39 = [v44 initWithStartDate:startDate9 endDate:startDate3];
      v34 = 0;
      v37 = 0;
LABEL_17:

      v45 = v27 > v16 || v34;
      v14 = v67;
      v13 = v70;
      if (v45 == 1 && v23 > v16)
      {
        [v39 duration];
        if (v46 - v23 < cushion)
        {
          v47 = [(RTTripSegmentActivityFilter *)selfCopy forceActivities:v70 toTransportationMode:modeCopy dateInterval:v39];

          if (v15 < [v67 count] - 1)
          {
            startDate10 = [v37 startDate];
            startDate11 = [v71 startDate];
            [startDate10 timeIntervalSinceDate:startDate11];
            v51 = v27 + v50;

            v52 = [v67 objectAtIndexedSubscript:v15 + 1];
            [v52 setDuration:v51];
          }

          v13 = v47;
        }
      }

      ++v15;
    }

    intervalCopy = v66;
    v68 = [v67 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_51:

  v58 = [(RTTripSegmentActivityFilter *)selfCopy mergeRepeatedActivities:v13];

  return v58;
}

- (id)discardTrivialActivitiesBetweenIdenticalRealActivities:(id)activities
{
  v35 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = activitiesCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (+[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [*(*(&v30 + 1) + 8 * i) type]))
        {
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
          [v4 addObject:v11];
        }

        ++v8;
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5 copyItems:1];
  v13 = [v4 count];
  v14 = v13 - 1;
  if (v13 != 1)
  {
    for (j = v13; j != 1; v14 = j - 1)
    {
      v16 = j;
      j = v14;
      v17 = [v4 objectAtIndexedSubscript:v14];
      unsignedIntValue = [v17 unsignedIntValue];

      v19 = [v4 objectAtIndexedSubscript:v16 - 2];
      unsignedIntValue2 = [v19 unsignedIntValue];

      v21 = [v12 objectAtIndexedSubscript:unsignedIntValue2];
      type = [v21 type];
      v23 = [v12 objectAtIndexedSubscript:unsignedIntValue];
      type2 = [v23 type];

      v25 = unsignedIntValue - 1;
      if (type == type2 && v25 > unsignedIntValue2)
      {
        do
        {
          [v12 removeObjectAtIndex:v25--];
        }

        while (v25 > unsignedIntValue2);
      }
    }
  }

  v27 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:v12];

  return v27;
}

- (double)findTotalDurationForActivity:(unint64_t)activity activities:(id)activities dateInterval:(id)interval
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(RTTripSegmentActivityFilter *)self findIndicesAndDurationForMode:activity activities:activities dateInterval:interval];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * i) duration];
        v9 = v9 + v11;
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (id)findGapMergeOrderFromActivities:(id)activities dateInterval:(id)interval
{
  v33 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  intervalCopy = interval;
  array = [MEMORY[0x277CBEB18] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [&unk_2845A1868 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(&unk_2845A1868);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"type"];
        -[RTTripSegmentActivityFilter findTotalDurationForActivity:activities:dateInterval:](self, "findTotalDurationForActivity:activities:dateInterval:", [v11 intValue], activitiesCopy, intervalCopy);
        v13 = v12;

        v30[0] = @"type";
        v14 = [v10 objectForKeyedSubscript:@"type"];
        v31[0] = v14;
        v30[1] = @"maxGap";
        v15 = [v10 objectForKeyedSubscript:@"maxGap"];
        v31[1] = v15;
        v30[2] = @"duration";
        v16 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
        v31[2] = v16;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

        [array addObject:v17];
      }

      v7 = [&unk_2845A1868 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  v18 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"duration" ascending:0];
  v29 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v20 = [array sortedArrayUsingDescriptors:v19];

  return v20;
}

- (id)removeFalseTransitionsFromActivities:(id)activities dateInterval:(id)interval predominantActivityType:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v8 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:activities];
  v9 = [(RTTripSegmentActivityFilter *)self preventDirectModeSwitchingInActivities:v8 dateInterval:intervalCopy];

  v10 = [(RTTripSegmentActivityFilter *)self discardTrivialActivitiesBetweenIdenticalRealActivities:v9];

  [(RTTripSegmentActivityFilter *)self findGapMergeOrderFromActivities:v10 dateInterval:intervalCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      v15 = v10;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v23 + 1) + 8 * v14);
        v17 = [v16 objectForKeyedSubscript:@"type"];
        intValue = [v17 intValue];
        v19 = [v16 objectForKeyedSubscript:@"maxGap"];
        [v19 floatValue];
        v10 = [(RTTripSegmentActivityFilter *)self discardFalseTransitionsFromActivities:v15 whileInTransportMode:intValue dateInterval:intervalCopy withTimeCushion:v20];

        ++v14;
        v15 = v10;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  return v10;
}

- (id)forceActivities:(id)activities withinTransitionInterval:(id)interval toAutoByConnection:(id)connection
{
  v42 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  intervalCopy = interval;
  connectionCopy = connection;
  v33 = activitiesCopy;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:activitiesCopy];
  if ([connectionCopy count] && objc_msgSend(v9, "count"))
  {
    v10 = 0;
    v34 = v9;
    v35 = connectionCopy;
    do
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      type = [v11 type];

      if (type != 4)
      {
        v13 = [v9 objectAtIndexedSubscript:v10];
        startDate = [v13 startDate];

        if (v10 == [v9 count] - 1)
        {
          endDate = [intervalCopy endDate];
        }

        else
        {
          v16 = [v9 objectAtIndexedSubscript:v10 + 1];
          endDate = [v16 startDate];
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v17 = connectionCopy;
        v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v38;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v38 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v37 + 1) + 8 * i);
              endDate2 = [v22 endDate];
              if ([startDate isBeforeDate:endDate2])
              {
                startDate2 = [v22 startDate];
                v25 = [endDate isAfterDate:startDate2];

                if (v25)
                {

                  v9 = v34;
                  v17 = [v34 objectAtIndexedSubscript:v10];
                  v26 = objc_alloc(MEMORY[0x277D011B8]);
                  confidence = [v17 confidence];
                  startDate3 = [v17 startDate];
                  v29 = [v26 initWithType:4 confidence:confidence startDate:startDate3];

                  [v34 replaceObjectAtIndex:v10 withObject:v29];
                  connectionCopy = v35;
                  goto LABEL_20;
                }
              }

              else
              {
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
          }

          while (v19);
          v9 = v34;
          connectionCopy = v35;
        }

LABEL_20:
      }

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  v30 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:v9];

  return v30;
}

- (BOOL)isRealModeOfTransportationExisted:(id)existed
{
  v14 = *MEMORY[0x277D85DE8];
  existedCopy = existed;
  if ([existedCopy count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = existedCopy;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if (+[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [*(*(&v9 + 1) + 8 * i) type]))
          {
            LOBYTE(v5) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)populatePredominantActivity:(id)activity dateInterval:(id)interval predominantActivityType:(unint64_t)type
{
  activityCopy = activity;
  intervalCopy = interval;
  if (activityCopy)
  {
    array = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:activityCopy];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  for (i = array; [i count]; objc_msgSend(i, "removeObjectAtIndex:", 0))
  {
    firstObject = [i firstObject];
    v13 = +[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [firstObject type]);

    if (v13)
    {
      break;
    }
  }

  while ([i count])
  {
    lastObject = [i lastObject];
    v15 = +[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [lastObject type]);

    if (v15)
    {
      break;
    }

    [i removeLastObject];
  }

  if (![(RTTripSegmentActivityFilter *)self isRealModeOfTransportationExisted:i])
  {
    if (![RTTripSegmentActivityFilter isRealModeOfTransportation:type])
    {
      v16 = 0;
      goto LABEL_19;
    }

    if (i)
    {
      [i removeAllObjects];
    }

    else
    {
      i = [MEMORY[0x277CBEB18] array];
    }

    v17 = objc_alloc(MEMORY[0x277D011B8]);
    startDate = [intervalCopy startDate];
    v19 = [v17 initWithType:type confidence:3 startDate:startDate];

    [i addObject:v19];
  }

  i = i;
  v16 = i;
LABEL_19:

  return v16;
}

- (id)removeNonTransportationModeActivities:(id)activities dateInterval:(id)interval vehicleIntervals:(id)intervals predominantActivityType:(unint64_t)type
{
  v102 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  intervalCopy = interval;
  intervalsCopy = intervals;
  if (activitiesCopy)
  {
    array = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:activitiesCopy copyItems:1];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v14 = array;
  if ([array count])
  {
    v15 = [(RTTripSegmentActivityFilter *)self forceActivities:v14 withinTransitionInterval:intervalCopy toAutoByConnection:intervalsCopy];

    v14 = v15;
  }

  v16 = [(RTTripSegmentActivityFilter *)self populatePredominantActivity:v14 dateInterval:intervalCopy predominantActivityType:type];

  if ([v16 count])
  {
    v84 = intervalCopy;
    v85 = activitiesCopy;
    v83 = intervalsCopy;
    selfCopy = self;
    if ([v16 count])
    {
      v17 = [(RTTripSegmentActivityFilter *)self removeFalseTransitionsFromActivities:v16 dateInterval:intervalCopy predominantActivityType:type];

      v16 = v17;
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v82 = v16;
    reverseObjectEnumerator = [v16 reverseObjectEnumerator];
    v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v96 objects:v101 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v97;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v97 != v22)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v24 = *(*(&v96 + 1) + 8 * i);
          if ([v18 count] && ((objc_msgSend(v18, "firstObject"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "type"), v25, !objc_msgSend(v24, "type")) || objc_msgSend(v24, "type") == 6) && +[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", v26))
          {
            v27 = objc_alloc(MEMORY[0x277D011B8]);
            confidence = [v24 confidence];
            startDate = [v24 startDate];
            v30 = [v27 initWithType:v26 confidence:confidence startDate:startDate];

            [v18 insertObject:v30 atIndex:0];
          }

          else
          {
            [v18 insertObject:v24 atIndex:0];
          }
        }

        v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v21);
    }

    v31 = [(RTTripSegmentActivityFilter *)selfCopy mergeRepeatedActivities:v18];
    v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __123__RTTripSegmentActivityFilter_removeNonTransportationModeActivities_dateInterval_vehicleIntervals_predominantActivityType___block_invoke;
    v94[3] = &unk_2788D2010;
    v33 = v32;
    v95 = v33;
    [v31 enumerateObjectsUsingBlock:v94];
    v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v33 count] != 1)
    {
      v34 = 0;
      do
      {
        v35 = [v33 objectAtIndexedSubscript:v34];
        unsignedIntValue = [v35 unsignedIntValue];

        v37 = [v33 objectAtIndexedSubscript:++v34];
        unsignedIntValue2 = [v37 unsignedIntValue];

        v39 = [v31 objectAtIndexedSubscript:unsignedIntValue];
        [v87 addObject:v39];

        if (unsignedIntValue + 1 != unsignedIntValue2)
        {
          v40 = [v31 objectAtIndexedSubscript:unsignedIntValue];
          type = [v40 type];
          v42 = [v31 objectAtIndexedSubscript:unsignedIntValue2];
          type2 = [v42 type];

          if (type != type2 && unsignedIntValue <= unsignedIntValue2)
          {
            while (1)
            {
              v44 = [v31 objectAtIndexedSubscript:unsignedIntValue];
              type3 = [v44 type];

              if (type3 == 1)
              {
                break;
              }

              if (unsignedIntValue2 + 1 == ++unsignedIntValue)
              {
                goto LABEL_31;
              }
            }

            obja = objc_alloc(MEMORY[0x277D011B8]);
            v46 = [v31 objectAtIndexedSubscript:unsignedIntValue2];
            type4 = [v46 type];
            v48 = [v31 objectAtIndexedSubscript:unsignedIntValue2];
            confidence2 = [v48 confidence];
            v50 = [v31 objectAtIndexedSubscript:unsignedIntValue];
            startDate2 = [v50 startDate];
            v52 = [obja initWithType:type4 confidence:confidence2 startDate:startDate2];

            [v87 addObject:v52];
          }
        }

LABEL_31:
        ;
      }

      while (v34 < [v33 count] - 1);
    }

    v80 = v33;
    v81 = v31;
    lastObject = [v31 lastObject];
    [v87 addObject:lastObject];

    v54 = [(RTTripSegmentActivityFilter *)selfCopy mergeRepeatedActivities:v87];
    v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v54;
    v56 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v91;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v91 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v60 = *(*(&v90 + 1) + 8 * j);
          if ([v55 count] && (objc_msgSend(v60, "startDate"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "lastObject"), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v62, "startDate"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "timeIntervalSinceDate:", v63), v65 = v64, v63, v62, v61, v65 < 30.0))
          {
            v66 = objc_alloc(MEMORY[0x277D011B8]);
            type5 = [v60 type];
            confidence3 = [v60 confidence];
            lastObject2 = [v55 lastObject];
            startDate3 = [lastObject2 startDate];
            v71 = [v66 initWithType:type5 confidence:confidence3 startDate:startDate3];

            [v55 removeLastObject];
            [v55 addObject:v71];
          }

          else
          {
            [v55 addObject:v60];
          }
        }

        v57 = [obj countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v57);
    }

    firstObject = [v55 firstObject];
    v73 = objc_alloc(MEMORY[0x277D011B8]);
    type6 = [firstObject type];
    confidence4 = [firstObject confidence];
    intervalCopy = v84;
    startDate4 = [v84 startDate];
    v77 = [v73 initWithType:type6 confidence:confidence4 startDate:startDate4];

    [v55 removeObjectAtIndex:0];
    [v55 insertObject:v77 atIndex:0];

    activitiesCopy = v85;
    v78 = v82;
    intervalsCopy = v83;
  }

  else
  {
    v78 = v16;
    v55 = v78;
  }

  return v55;
}

void __123__RTTripSegmentActivityFilter_removeNonTransportationModeActivities_dateInterval_vehicleIntervals_predominantActivityType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (+[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [a2 type]))
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v5 addObject:v6];
  }
}

@end