@interface RTEventHistogram
+ (BOOL)highProbabilityHistogramItem:(id)a3 withOptions:(id)a4;
+ (BOOL)relativeHighProbabilityHistogramItem:(id)a3 toItem:(id)a4 withOptions:(id)a5;
+ (double)getOverlapTimeForIntervalStart1:(id)a3 intervalEnd1:(id)a4 intervalStart2:(id)a5 intervalEnd2:(id)a6;
- (RTEventHistogram)initWithDictionary:(id)a3 options:(id)a4;
- (RTEventHistogram)initWithEvents:(id)a3 locationsOfInterest:(id)a4 options:(id)a5;
- (id)_loiHistogramForEventLocation:(id)a3;
- (id)getLOIHistogramForEvents:(id)a3 andLocationsOfInterest:(id)a4;
- (id)getObjectWithName:(id)a3 source:(unint64_t)a4 calendarIdentifier:(id)a5 fromDictionary:(id)a6;
- (id)locationsOfInterestAssociatedToIdentifier:(id)a3;
- (id)predictedLocationsOfInterestAssociatedToTitle:(id)a3 location:(id)a4 calendarIdentifier:(id)a5;
- (void)addEvent:(id)a3 toIdentifierDict:(id)a4 useCalendarIdentifier:(BOOL)a5;
@end

@implementation RTEventHistogram

+ (BOOL)highProbabilityHistogramItem:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 probability];
  v8 = v7;
  [v6 highProbabilityItemMinProbability];
  if (v8 >= v9)
  {
    v11 = [v5 numOfEvents];
    v10 = v11 >= [v6 highProbabilityItemMinNumOfEvents];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)relativeHighProbabilityHistogramItem:(id)a3 toItem:(id)a4 withOptions:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  [v7 probability];
  v11 = v10;
  [v9 probability];
  v13 = v12;

  [v8 relativeHighProbabilityItemMinDifference];
  if (v11 - v13 >= v14)
  {
    v16 = [v7 numOfEvents];
    v15 = v16 >= [v8 highProbabilityItemMinNumOfEvents];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_loiHistogramForEventLocation:(id)a3
{
  v4 = a3;
  v5 = [(RTEventHistogram *)self getObjectWithName:v4 source:1 calendarIdentifier:0 fromDictionary:self->_locationOfInterestHistograms];
  if (!v5)
  {
    v5 = [(RTEventHistogram *)self getObjectWithName:v4 source:2 calendarIdentifier:0 fromDictionary:self->_locationOfInterestHistograms];
  }

  return v5;
}

+ (double)getOverlapTimeForIntervalStart1:(id)a3 intervalEnd1:(id)a4 intervalStart2:(id)a5 intervalEnd2:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = [a3 laterDate:a5];
  v12 = [v10 earlierDate:v9];

  [v12 timeIntervalSinceDate:v11];
  v14 = fmax(v13, 0.0);

  return v14;
}

- (id)getLOIHistogramForEvents:(id)a3 andLocationsOfInterest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke;
  v21[3] = &unk_2788CE100;
  v10 = v7;
  v22 = v10;
  v23 = self;
  v11 = v9;
  v24 = v11;
  [v6 enumerateObjectsUsingBlock:v21];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_4;
  v17[3] = &unk_2788CE128;
  v19 = v20;
  v12 = v8;
  v18 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_5;
  v16[3] = &unk_2788CE150;
  v16[4] = v20;
  [v12 enumerateObjectsUsingBlock:v16];
  [v12 sortUsingComparator:&__block_literal_global_108];
  v13 = v18;
  v14 = v12;

  _Block_object_dispose(v20, 8);

  return v14;
}

void __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_2;
  v7[3] = &unk_2788CE0D8;
  v4 = a1[4];
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

void __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 visits];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_3;
  v7[3] = &unk_2788CE0B0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

void __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = [*(a1 + 40) startDate];
  v6 = [*(a1 + 40) endDate];
  v7 = [v3 entryDate];
  v8 = [v3 exitDate];

  [v4 getOverlapTimeForIntervalStart1:v5 intervalEnd1:v6 intervalStart2:v7 intervalEnd2:v8];
  v10 = v9;

  if (v10 > 0.0)
  {
    v11 = *(a1 + 48);
    v12 = [*(a1 + 56) identifier];
    v17 = [v11 objectForKey:v12];

    if (v17)
    {
      [v17 timeOfStay];
      [v17 setTimeOfStay:v10 + v13];
      [v17 setNumOfEvents:{objc_msgSend(v17, "numOfEvents") + 1}];
    }

    else
    {
      v14 = *(a1 + 48);
      v15 = [[RTLOIHistogramItem alloc] initWithLocationOfInterest:*(a1 + 56) timeOfStay:1 andNumOfEvents:v10];
      v16 = [*(a1 + 56) identifier];
      [v14 setObject:v15 forKey:v16];
    }
  }
}

void __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 timeOfStay];
  *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
  [*(a1 + 32) addObject:v5];
}

void __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 timeOfStay];
  [v4 setProbability:v3 / *(*(*(a1 + 32) + 8) + 24)];
}

uint64_t __68__RTEventHistogram_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 probability];
  v7 = v6;
  [v5 probability];
  if (v7 >= v8)
  {
    [v4 probability];
    v11 = v10;
    [v5 probability];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (RTEventHistogram)initWithDictionary:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RTEventHistogram;
  v9 = [(RTEventHistogram *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationOfInterestHistograms, a3);
    [(RTEventHistogram *)v10 setOptions:v8];
  }

  return v10;
}

- (RTEventHistogram)initWithEvents:(id)a3 locationsOfInterest:(id)a4 options:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63__RTEventHistogram_initWithEvents_locationsOfInterest_options___block_invoke;
  v24[3] = &unk_2788C4A48;
  v12 = self;
  v25 = v12;
  v26 = v11;
  v13 = v11;
  [v10 enumerateObjectsUsingBlock:v24];

  v14 = objc_opt_new();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__RTEventHistogram_initWithEvents_locationsOfInterest_options___block_invoke_2;
  v20[3] = &unk_2788CF3D0;
  v15 = v12;
  v21 = v15;
  v22 = v8;
  v23 = v14;
  v16 = v14;
  v17 = v8;
  [v13 enumerateKeysAndObjectsUsingBlock:v20];
  v18 = [(RTEventHistogram *)v15 initWithDictionary:v16 options:v9];

  return v18;
}

void __63__RTEventHistogram_initWithEvents_locationsOfInterest_options___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 participationStatus];
  if (([v10 isAllDay] & 1) == 0 && v3 == 2)
  {
    v4 = [v10 endDate];
    v5 = [v10 startDate];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    if (v7 > 600.0)
    {
      [*(a1 + 32) addEvent:v10 toIdentifierDict:*(a1 + 40) useCalendarIdentifier:0];
      v8 = [v10 calendar];
      v9 = [v8 calendarIdentifier];

      if (v9)
      {
        [*(a1 + 32) addEvent:v10 toIdentifierDict:*(a1 + 40) useCalendarIdentifier:1];
      }
    }
  }
}

void __63__RTEventHistogram_initWithEvents_locationsOfInterest_options___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) getLOIHistogramForEvents:a3 andLocationsOfInterest:*(a1 + 40)];
  if ([v5 count])
  {
    [*(a1 + 48) setObject:v5 forKey:v6];
  }
}

- (id)getObjectWithName:(id)a3 source:(unint64_t)a4 calendarIdentifier:(id)a5 fromDictionary:(id)a6
{
  reusableLookupIdentifier = self->_reusableLookupIdentifier;
  v12 = a6;
  v13 = a5;
  v14 = a3;
  if (reusableLookupIdentifier)
  {
    [(RTEventLocationIdentifier *)reusableLookupIdentifier setName:v14];

    [(RTEventLocationIdentifier *)self->_reusableLookupIdentifier setSource:a4];
    [(RTEventLocationIdentifier *)self->_reusableLookupIdentifier setCalendarIdentifier:v13];
  }

  else
  {
    v15 = [[RTEventLocationIdentifier alloc] initWithName:v14 source:a4 calendarIdentifier:v13];

    v13 = self->_reusableLookupIdentifier;
    self->_reusableLookupIdentifier = v15;
  }

  v16 = [(RTEventLocationIdentifier *)self->_reusableLookupIdentifier normalize];
  v17 = [a6 objectForKey:self->_reusableLookupIdentifier];

  [(RTEventLocationIdentifier *)self->_reusableLookupIdentifier setName:0];
  [(RTEventLocationIdentifier *)self->_reusableLookupIdentifier setSource:0];
  [(RTEventLocationIdentifier *)self->_reusableLookupIdentifier setCalendarIdentifier:0];

  return v17;
}

- (void)addEvent:(id)a3 toIdentifierDict:(id)a4 useCalendarIdentifier:(BOOL)a5
{
  v5 = a5;
  v23 = a3;
  v8 = a4;
  if (v5)
  {
    v9 = [v23 calendar];
    v10 = [v9 calendarIdentifier];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v23 locationWithoutPrediction];
  if ([v11 length])
  {
    v12 = [v23 locationsWithoutPrediction];
    v13 = [v12 count];

    if (v13 > 1)
    {
      goto LABEL_10;
    }

    v14 = [v23 locationWithoutPrediction];
    v11 = [(RTEventHistogram *)self getObjectWithName:v14 source:1 calendarIdentifier:v10 fromDictionary:v8];

    if (!v11)
    {
      v15 = [[RTEventLocationIdentifier alloc] initWithEvent:v23 source:1 useCalendarIdentifier:v5];
      v16 = [(RTEventLocationIdentifier *)v15 normalize];

      v11 = objc_opt_new();
      [v8 setObject:v11 forKey:v16];
    }

    [v11 addObject:v23];
  }

LABEL_10:
  v17 = [v23 title];
  v18 = [v17 length];

  if (v18)
  {
    v19 = [v23 title];
    v20 = [(RTEventHistogram *)self getObjectWithName:v19 source:2 calendarIdentifier:v10 fromDictionary:v8];

    if (!v20)
    {
      v21 = [[RTEventLocationIdentifier alloc] initWithEvent:v23 source:2 useCalendarIdentifier:v5];
      v22 = [(RTEventLocationIdentifier *)v21 normalize];

      v20 = objc_opt_new();
      [v8 setObject:v20 forKey:v22];
    }

    [v20 addObject:v23];
  }
}

- (id)locationsOfInterestAssociatedToIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTEventHistogram *)self _loiHistogramForEventLocation:v4];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __62__RTEventHistogram_locationsOfInterestAssociatedToIdentifier___block_invoke;
  v16 = &unk_2788C4A48;
  v17 = self;
  v7 = v6;
  v18 = v7;
  [v5 enumerateObjectsUsingBlock:&v13];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v7 count];
      *buf = 134218242;
      v20 = v12;
      v21 = 2112;
      v22 = v4;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "found %lu locations of interest associated with identifer, %@", buf, 0x16u);
    }
  }

  v9 = v18;
  v10 = v7;

  return v7;
}

void __62__RTEventHistogram_locationsOfInterestAssociatedToIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) options];
  LODWORD(v3) = [v3 highProbabilityHistogramItem:v7 withOptions:v4];

  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = [v7 locationOfInterest];
    [v5 addObject:v6];
  }
}

- (id)predictedLocationsOfInterestAssociatedToTitle:(id)a3 location:(id)a4 calendarIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 length];
  locationOfInterestHistograms = self->_locationOfInterestHistograms;
  if (v11)
  {
    v13 = [(RTEventHistogram *)self getObjectWithName:v9 source:1 calendarIdentifier:v10 fromDictionary:locationOfInterestHistograms];

    v14 = self->_locationOfInterestHistograms;
    v15 = self;
    v16 = v9;
    v17 = 1;
  }

  else
  {
    v13 = [(RTEventHistogram *)self getObjectWithName:v8 source:2 calendarIdentifier:v10 fromDictionary:locationOfInterestHistograms];

    v14 = self->_locationOfInterestHistograms;
    v15 = self;
    v16 = v8;
    v17 = 2;
  }

  v18 = [(RTEventHistogram *)v15 getObjectWithName:v16 source:v17 calendarIdentifier:0 fromDictionary:v14];
  v19 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke;
  aBlock[3] = &unk_2788CF3F8;
  aBlock[4] = self;
  v34 = v9;
  v35 = v19;
  v20 = v19;
  v21 = v9;
  v22 = _Block_copy(aBlock);
  v22[2](v22, v13);
  v22[2](v22, v18);
  v23 = objc_opt_new();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke_2;
  v31[3] = &unk_2788CF420;
  v32 = v23;
  v24 = v23;
  v25 = _Block_copy(v31);
  [v20 enumerateObjectsUsingBlock:v25];
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v24, "count")}];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke_3;
  v29[3] = &unk_2788CF448;
  v27 = v26;
  v30 = v27;
  [v24 enumerateKeysAndObjectsUsingBlock:v29];
  [v27 sortUsingComparator:&__block_literal_global_128_0];

  return v27;
}

void __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  if ([v20 count])
  {
    for (i = 0; [v20 count] > i; ++i)
    {
      v4 = [v20 objectAtIndexedSubscript:i];
      v5 = [v4 locationOfInterest];
      v6 = [v5 mapItem];

      if (v6)
      {
        v7 = [*(a1 + 32) options];
        if (([v7 allowPredictionsToHome] & 1) != 0 || !objc_msgSend(*(a1 + 40), "length"))
        {

LABEL_9:
          v11 = objc_opt_class();
          v12 = [v20 objectAtIndexedSubscript:i];
          v13 = [*(a1 + 32) options];
          LOBYTE(v11) = [v11 highProbabilityHistogramItem:v12 withOptions:v13];

          if ((v11 & 1) != 0 || [v20 count] > i + 1 && (v16 = objc_opt_class(), objc_msgSend(v20, "objectAtIndexedSubscript:", i), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectAtIndexedSubscript:", i + 1), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "options"), v19 = objc_claimAutoreleasedReturnValue(), LODWORD(v16) = objc_msgSend(v16, "relativeHighProbabilityHistogramItem:toItem:withOptions:", v17, v18, v19), v19, v18, v17, v16))
          {
            v14 = *(a1 + 48);
            v15 = [v20 objectAtIndexedSubscript:i];
            [v14 addObject:v15];
          }

          continue;
        }

        v8 = [v20 objectAtIndexedSubscript:i];
        v9 = [v8 locationOfInterest];
        v10 = [v9 type];

        if (v10)
        {
          goto LABEL_9;
        }
      }
    }
  }
}

void __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  v5 = [v3 locationOfInterest];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6 || ([v6 doubleValue], v8 = v7, objc_msgSend(v14, "probability"), v8 < v9))
  {
    v10 = MEMORY[0x277CCABB0];
    [v14 probability];
    v11 = [v10 numberWithDouble:?];
    v12 = *(a1 + 32);
    v13 = [v14 locationOfInterest];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }
}

void __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D01270];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  [v6 doubleValue];
  v10 = v9;

  v11 = [v8 initWithLocationOfInterest:v7 confidence:0 nextEntryTime:0 modeOfTransportation:0 sources:v10];
  [*(a1 + 32) addObject:v11];
}

uint64_t __94__RTEventHistogram_predictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 confidence];
  v7 = v6;
  [v5 confidence];
  if (v7 >= v8)
  {
    [v4 confidence];
    v11 = v10;
    [v5 confidence];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end