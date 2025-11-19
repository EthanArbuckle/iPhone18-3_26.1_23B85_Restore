@interface RTTripSegmentActivityFilter
- (BOOL)isRealModeOfTransportationExisted:(id)a3;
- (double)findTotalDurationForActivity:(unint64_t)a3 activities:(id)a4 dateInterval:(id)a5;
- (id)discardFalseTransitionsFromActivities:(id)a3 whileInTransportMode:(unint64_t)a4 dateInterval:(id)a5 withTimeCushion:(double)a6;
- (id)discardTrivialActivitiesBetweenIdenticalRealActivities:(id)a3;
- (id)findGapMergeOrderFromActivities:(id)a3 dateInterval:(id)a4;
- (id)findIndicesAndDurationForMode:(unint64_t)a3 activities:(id)a4 dateInterval:(id)a5;
- (id)forceActivities:(id)a3 toTransportationMode:(unint64_t)a4 dateInterval:(id)a5;
- (id)forceActivities:(id)a3 withinTransitionInterval:(id)a4 toAutoByConnection:(id)a5;
- (id)mergeRepeatedActivities:(id)a3;
- (id)populatePredominantActivity:(id)a3 dateInterval:(id)a4 predominantActivityType:(unint64_t)a5;
- (id)preventDirectModeSwitchingInActivities:(id)a3 dateInterval:(id)a4;
- (id)removeFalseTransitionsFromActivities:(id)a3 dateInterval:(id)a4 predominantActivityType:(unint64_t)a5;
- (id)removeNonTransportationModeActivities:(id)a3 dateInterval:(id)a4 vehicleIntervals:(id)a5 predominantActivityType:(unint64_t)a6;
@end

@implementation RTTripSegmentActivityFilter

- (id)mergeRepeatedActivities:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
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
          v11 = 2;
        }

        else
        {
          v11 = [v9 type];
        }

        v12 = [v9 confidence];
        v13 = [v9 startDate];
        v14 = [v10 initWithType:v11 confidence:v12 startDate:v13];

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

- (id)findIndicesAndDurationForMode:(unint64_t)a3 activities:(id)a4 dateInterval:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB18] array];
  if ([v7 count])
  {
    v10 = 1;
    p_vtable = RTPersistenceStoreImporter.vtable;
    v27 = a3;
    do
    {
      v12 = [v7 objectAtIndexedSubscript:v10 - 1];
      if ([v12 type] == a3)
      {
        v13 = [v8 endDate];
        v14 = [v12 startDate];
        [v13 timeIntervalSinceDate:v14];
        v16 = v15;

        if (v10 - 1 < [v7 count] - 1)
        {
          v17 = [v7 objectAtIndexedSubscript:v10];
          v18 = [v17 startDate];
          [v12 startDate];
          v19 = v9;
          v20 = v8;
          v22 = v21 = p_vtable;
          [v18 timeIntervalSinceDate:v22];
          v16 = v23;

          p_vtable = v21;
          v8 = v20;
          v9 = v19;
          a3 = v27;
        }

        v24 = [objc_alloc((p_vtable + 47)) initWithType:a3 index:v10 - 1 duration:v16];
        [v9 addObject:v24];
      }
    }

    while (v10++ < [v7 count]);
  }

  return v9;
}

- (id)forceActivities:(id)a3 toTransportationMode:(unint64_t)a4 dateInterval:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 count])
  {
    for (i = 0; i < [v7 count]; ++i)
    {
      v10 = [v7 objectAtIndexedSubscript:i];
      v11 = [v10 startDate];
      v12 = [v8 startDate];
      v13 = [v11 isBeforeDate:v12];

      if ((v13 & 1) == 0)
      {
        v14 = [v10 startDate];
        v15 = [v8 endDate];
        v16 = [v14 isAfterDate:v15];

        if (v16)
        {

          break;
        }

        if ([v10 type] != a4)
        {
          v17 = objc_alloc(MEMORY[0x277D011B8]);
          v18 = [v10 confidence];
          v19 = [v10 startDate];
          v20 = [v17 initWithType:a4 confidence:v18 startDate:v19];

          [v7 replaceObjectAtIndex:i withObject:v20];
        }
      }
    }
  }

  return v7;
}

- (id)preventDirectModeSwitchingInActivities:(id)a3 dateInterval:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [v5 objectAtIndex:v8 - 1];
      if (v8 == [v5 count])
      {
        v10 = v9;
      }

      else
      {
        v10 = [v5 objectAtIndex:v8];
      }

      v11 = v10;
      v12 = [v10 startDate];
      v13 = [v9 startDate];
      [v12 timeIntervalSinceDate:v13];
      v15 = v14;

      if (v8 - 1 == [v5 count] - 1)
      {
        v16 = [v6 endDate];
        v17 = [v9 startDate];
        [v16 timeIntervalSinceDate:v17];
        v15 = v18;
      }

      if (v7 <= 6)
      {
        if (((1 << v7) & 0x4F) == 0 && ((v19 = [v9 type], v15 < 10.0) ? (v20 = v19 == 6) : (v20 = 0), !v20 ? (v21 = 0) : (v21 = 1), (v22 = objc_msgSend(v9, "type"), v23 = v22 == 5, v15 < 60.0) ? (v24 = v22 == 4) : (v24 = 0), !v24 ? (v25 = 0) : (v25 = 1), v7 == 5 ? (v23 = 0) : (v25 = 0), ((v21 | v25) & 1) != 0 || v23))
        {
          v26 = objc_alloc(MEMORY[0x277D011B8]);
          v27 = [v9 confidence];
          v28 = [v9 startDate];
          v29 = [v26 initWithType:v7 confidence:v27 startDate:v28];

          [v5 replaceObjectAtIndex:v8 - 1 withObject:v29];
        }

        else
        {
          v7 = [v9 type];
        }
      }
    }

    while (v8++ < [v5 count]);
  }

  v31 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:v5];

  return v31;
}

- (id)discardFalseTransitionsFromActivities:(id)a3 whileInTransportMode:(unint64_t)a4 dateInterval:(id)a5 withTimeCushion:(double)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v65 = self;
  v12 = self;
  v13 = v10;
  [(RTTripSegmentActivityFilter *)v12 findIndicesAndDurationForMode:a4 activities:v10 dateInterval:v11];
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
  v64 = a4;
  if (a4 == 4)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 60.0;
  }

  v66 = v11;
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
      v19 = [v18 index];
      if (v19 == [v13 count] - 1)
      {
        goto LABEL_32;
      }

      v20 = [v18 index];
      if (v20 >= [v13 count])
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
LABEL_32:
          v11 = v66;
          goto LABEL_51;
        }

        v21 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v53 = [v18 index];
          v54 = [v13 count];
          *buf = 134218240;
          v77 = v53;
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
        v24 = [v14 objectAtIndexedSubscript:v15 + 1];
        v25 = [v24 index];
        if (v25 >= [v13 count])
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v28 = 0;
            goto LABEL_47;
          }

          v57 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v60 = [v18 index];
            v61 = [v13 count];
            *buf = 134218240;
            v77 = v60;
            v78 = 2048;
            v79 = v61;
            _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: next activity index beyond valid scope,index,%tu,activityCount,%tu", buf, 0x16u);
          }

          v28 = 0;
        }

        else
        {
          [v24 duration];
          v27 = v26;
          v28 = [v13 objectAtIndexedSubscript:{objc_msgSend(v24, "index")}];
          v29 = [v24 index];
          v30 = [v13 count];
          v31 = [v21 startDate];
          v32 = [v28 startDate];
          v33 = [v31 isBeforeDate:v32];

          if (v33)
          {
            v34 = v29 == v30 - 1;
            v35 = objc_alloc(MEMORY[0x277CCA970]);
            v36 = [v21 startDate];
            v37 = v28;
            v38 = [v28 startDate];
            v39 = [v35 initWithStartDate:v36 endDate:v38];

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
            v62 = [v21 startDate];
            v63 = [v28 startDate];
            *buf = 138412546;
            v77 = v62;
            v78 = 2112;
            v79 = v63;
            _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: current activity date, %@, after next activity date, %@", buf, 0x16u);

            v13 = v70;
          }
        }

        v14 = v67;
LABEL_47:

LABEL_48:
LABEL_49:
        v11 = v66;
        goto LABEL_50;
      }

      v11 = v66;
      [v66 duration];
      v27 = v40;
      v41 = [v21 startDate];
      v42 = [v66 endDate];
      v43 = [v41 isBeforeDate:v42];

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
          v55 = [v21 startDate];
          v56 = [v66 endDate];
          *buf = 138412546;
          v77 = v55;
          v78 = 2112;
          v79 = v56;
          _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "RTTripSegmentActivityFilter: current activity date, %@, after transition end date, %@", buf, 0x16u);

          v13 = v70;
        }

        goto LABEL_48;
      }

      v44 = objc_alloc(MEMORY[0x277CCA970]);
      v24 = [v21 startDate];
      v36 = [v66 endDate];
      v39 = [v44 initWithStartDate:v24 endDate:v36];
      v34 = 0;
      v37 = 0;
LABEL_17:

      v45 = v27 > v16 || v34;
      v14 = v67;
      v13 = v70;
      if (v45 == 1 && v23 > v16)
      {
        [v39 duration];
        if (v46 - v23 < a6)
        {
          v47 = [(RTTripSegmentActivityFilter *)v65 forceActivities:v70 toTransportationMode:v64 dateInterval:v39];

          if (v15 < [v67 count] - 1)
          {
            v48 = [v37 startDate];
            v49 = [v71 startDate];
            [v48 timeIntervalSinceDate:v49];
            v51 = v27 + v50;

            v52 = [v67 objectAtIndexedSubscript:v15 + 1];
            [v52 setDuration:v51];
          }

          v13 = v47;
        }
      }

      ++v15;
    }

    v11 = v66;
    v68 = [v67 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v68)
    {
      continue;
    }

    break;
  }

LABEL_51:

  v58 = [(RTTripSegmentActivityFilter *)v65 mergeRepeatedActivities:v13];

  return v58;
}

- (id)discardTrivialActivitiesBetweenIdenticalRealActivities:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = v3;
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
      v18 = [v17 unsignedIntValue];

      v19 = [v4 objectAtIndexedSubscript:v16 - 2];
      v20 = [v19 unsignedIntValue];

      v21 = [v12 objectAtIndexedSubscript:v20];
      v22 = [v21 type];
      v23 = [v12 objectAtIndexedSubscript:v18];
      v24 = [v23 type];

      v25 = v18 - 1;
      if (v22 == v24 && v25 > v20)
      {
        do
        {
          [v12 removeObjectAtIndex:v25--];
        }

        while (v25 > v20);
      }
    }
  }

  v27 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:v12];

  return v27;
}

- (double)findTotalDurationForActivity:(unint64_t)a3 activities:(id)a4 dateInterval:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(RTTripSegmentActivityFilter *)self findIndicesAndDurationForMode:a3 activities:a4 dateInterval:a5];
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

- (id)findGapMergeOrderFromActivities:(id)a3 dateInterval:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v23 = a4;
  v22 = [MEMORY[0x277CBEB18] array];
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
        -[RTTripSegmentActivityFilter findTotalDurationForActivity:activities:dateInterval:](self, "findTotalDurationForActivity:activities:dateInterval:", [v11 intValue], v24, v23);
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

        [v22 addObject:v17];
      }

      v7 = [&unk_2845A1868 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  v18 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"duration" ascending:0];
  v29 = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v20 = [v22 sortedArrayUsingDescriptors:v19];

  return v20;
}

- (id)removeFalseTransitionsFromActivities:(id)a3 dateInterval:(id)a4 predominantActivityType:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(RTTripSegmentActivityFilter *)self mergeRepeatedActivities:a3];
  v9 = [(RTTripSegmentActivityFilter *)self preventDirectModeSwitchingInActivities:v8 dateInterval:v7];

  v10 = [(RTTripSegmentActivityFilter *)self discardTrivialActivitiesBetweenIdenticalRealActivities:v9];

  [(RTTripSegmentActivityFilter *)self findGapMergeOrderFromActivities:v10 dateInterval:v7];
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
        v18 = [v17 intValue];
        v19 = [v16 objectForKeyedSubscript:@"maxGap"];
        [v19 floatValue];
        v10 = [(RTTripSegmentActivityFilter *)self discardFalseTransitionsFromActivities:v15 whileInTransportMode:v18 dateInterval:v7 withTimeCushion:v20];

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

- (id)forceActivities:(id)a3 withinTransitionInterval:(id)a4 toAutoByConnection:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a4;
  v8 = a5;
  v33 = v7;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v7];
  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v10 = 0;
    v34 = v9;
    v35 = v8;
    do
    {
      v11 = [v9 objectAtIndexedSubscript:v10];
      v12 = [v11 type];

      if (v12 != 4)
      {
        v13 = [v9 objectAtIndexedSubscript:v10];
        v14 = [v13 startDate];

        if (v10 == [v9 count] - 1)
        {
          v15 = [v36 endDate];
        }

        else
        {
          v16 = [v9 objectAtIndexedSubscript:v10 + 1];
          v15 = [v16 startDate];
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v17 = v8;
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
              v23 = [v22 endDate];
              if ([v14 isBeforeDate:v23])
              {
                v24 = [v22 startDate];
                v25 = [v15 isAfterDate:v24];

                if (v25)
                {

                  v9 = v34;
                  v17 = [v34 objectAtIndexedSubscript:v10];
                  v26 = objc_alloc(MEMORY[0x277D011B8]);
                  v27 = [v17 confidence];
                  v28 = [v17 startDate];
                  v29 = [v26 initWithType:4 confidence:v27 startDate:v28];

                  [v34 replaceObjectAtIndex:v10 withObject:v29];
                  v8 = v35;
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
          v8 = v35;
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

- (BOOL)isRealModeOfTransportationExisted:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
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

- (id)populatePredominantActivity:(id)a3 dateInterval:(id)a4 predominantActivityType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v8];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] array];
  }

  for (i = v10; [i count]; objc_msgSend(i, "removeObjectAtIndex:", 0))
  {
    v12 = [i firstObject];
    v13 = +[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [v12 type]);

    if (v13)
    {
      break;
    }
  }

  while ([i count])
  {
    v14 = [i lastObject];
    v15 = +[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", [v14 type]);

    if (v15)
    {
      break;
    }

    [i removeLastObject];
  }

  if (![(RTTripSegmentActivityFilter *)self isRealModeOfTransportationExisted:i])
  {
    if (![RTTripSegmentActivityFilter isRealModeOfTransportation:a5])
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
    v18 = [v9 startDate];
    v19 = [v17 initWithType:a5 confidence:3 startDate:v18];

    [i addObject:v19];
  }

  i = i;
  v16 = i;
LABEL_19:

  return v16;
}

- (id)removeNonTransportationModeActivities:(id)a3 dateInterval:(id)a4 vehicleIntervals:(id)a5 predominantActivityType:(unint64_t)a6
{
  v102 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10 copyItems:1];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB18] array];
  }

  v14 = v13;
  if ([v13 count])
  {
    v15 = [(RTTripSegmentActivityFilter *)self forceActivities:v14 withinTransitionInterval:v11 toAutoByConnection:v12];

    v14 = v15;
  }

  v16 = [(RTTripSegmentActivityFilter *)self populatePredominantActivity:v14 dateInterval:v11 predominantActivityType:a6];

  if ([v16 count])
  {
    v84 = v11;
    v85 = v10;
    v83 = v12;
    v86 = self;
    if ([v16 count])
    {
      v17 = [(RTTripSegmentActivityFilter *)self removeFalseTransitionsFromActivities:v16 dateInterval:v11 predominantActivityType:a6];

      v16 = v17;
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v82 = v16;
    v19 = [v16 reverseObjectEnumerator];
    v20 = [v19 countByEnumeratingWithState:&v96 objects:v101 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v96 + 1) + 8 * i);
          if ([v18 count] && ((objc_msgSend(v18, "firstObject"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "type"), v25, !objc_msgSend(v24, "type")) || objc_msgSend(v24, "type") == 6) && +[RTTripSegmentActivityFilter isRealModeOfTransportation:](RTTripSegmentActivityFilter, "isRealModeOfTransportation:", v26))
          {
            v27 = objc_alloc(MEMORY[0x277D011B8]);
            v28 = [v24 confidence];
            v29 = [v24 startDate];
            v30 = [v27 initWithType:v26 confidence:v28 startDate:v29];

            [v18 insertObject:v30 atIndex:0];
          }

          else
          {
            [v18 insertObject:v24 atIndex:0];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v96 objects:v101 count:16];
      }

      while (v21);
    }

    v31 = [(RTTripSegmentActivityFilter *)v86 mergeRepeatedActivities:v18];
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
        v36 = [v35 unsignedIntValue];

        v37 = [v33 objectAtIndexedSubscript:++v34];
        v38 = [v37 unsignedIntValue];

        v39 = [v31 objectAtIndexedSubscript:v36];
        [v87 addObject:v39];

        if (v36 + 1 != v38)
        {
          v40 = [v31 objectAtIndexedSubscript:v36];
          v41 = [v40 type];
          v42 = [v31 objectAtIndexedSubscript:v38];
          v43 = [v42 type];

          if (v41 != v43 && v36 <= v38)
          {
            while (1)
            {
              v44 = [v31 objectAtIndexedSubscript:v36];
              v45 = [v44 type];

              if (v45 == 1)
              {
                break;
              }

              if (v38 + 1 == ++v36)
              {
                goto LABEL_31;
              }
            }

            obja = objc_alloc(MEMORY[0x277D011B8]);
            v46 = [v31 objectAtIndexedSubscript:v38];
            v47 = [v46 type];
            v48 = [v31 objectAtIndexedSubscript:v38];
            v49 = [v48 confidence];
            v50 = [v31 objectAtIndexedSubscript:v36];
            v51 = [v50 startDate];
            v52 = [obja initWithType:v47 confidence:v49 startDate:v51];

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
    v53 = [v31 lastObject];
    [v87 addObject:v53];

    v54 = [(RTTripSegmentActivityFilter *)v86 mergeRepeatedActivities:v87];
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
            v67 = [v60 type];
            v68 = [v60 confidence];
            v69 = [v55 lastObject];
            v70 = [v69 startDate];
            v71 = [v66 initWithType:v67 confidence:v68 startDate:v70];

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

    v72 = [v55 firstObject];
    v73 = objc_alloc(MEMORY[0x277D011B8]);
    v74 = [v72 type];
    v75 = [v72 confidence];
    v11 = v84;
    v76 = [v84 startDate];
    v77 = [v73 initWithType:v74 confidence:v75 startDate:v76];

    [v55 removeObjectAtIndex:0];
    [v55 insertObject:v77 atIndex:0];

    v10 = v85;
    v78 = v82;
    v12 = v83;
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