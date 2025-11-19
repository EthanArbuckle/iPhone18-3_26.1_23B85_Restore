@interface RTStateDepiction
+ (int64_t)maximumNumberOfDataPoints;
- (BOOL)cleanState:(double)a3;
- (BOOL)exemptFromPurge;
- (GEOMapItem)geoMapItem;
- (NSDate)geocodeDate;
- (NSString)customLabel;
- (RTMapItem)mapItem;
- (RTStateDepiction)initWithCoder:(id)a3;
- (RTStateDepiction)initWithLocation:(id)a3 type:(int64_t)a4 typeSource:(unint64_t)a5 customLabel:(id)a6 mapItem:(id)a7;
- (RTStateModelLocation)location;
- (double)_calculateStandardDeviationForDates:(id)a3 options:(id)a4 error:(id *)a5;
- (double)calculateStandardDeviationWithOptions:(id)a3 error:(id *)a4;
- (double)getAggTimeScaleFactor:(double)a3 predictionWindow:(double)a4;
- (double)getLastVisit;
- (id)_excludeEntryExitOutlierDates:(id)a3 options:(id)a4;
- (id)_filterEntryExitData:(id)a3 options:(id)a4;
- (id)_referenceAdjustEntryExitDates:(id)a3 options:(id)a4;
- (id)description;
- (id)getAggStateStat;
- (id)getAllOneVisits;
- (id)getEarliestLatestEntry;
- (id)getGetWeeklyStats:(double)a3 numOfWeeks:(int)a4 uniqueID:(id)a5;
- (id)getPredState:(double)a3 predictionWindow:(double)a4 numOfWeeks:(int)a5 uniqueID:(id)a6;
- (id)getRecentVisits:(double)a3;
- (id)lastEntyExit;
- (int64_t)type;
- (unint64_t)getNumOfVisitsOverall;
- (unint64_t)mapItemSource;
- (unint64_t)typeSource;
- (void)_performErrorCorrection;
- (void)_performIntegrityCheck;
- (void)addOneVisitsFromStateDepiction:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)incrementNumOfDataPtsByInteger:(int64_t)a3;
- (void)removeAllVisitsExceptMostRecent;
- (void)removeEntry:(double)a3 exit:(double)a4;
- (void)setCustomLabel:(id)a3;
- (void)setGeoMapItem:(id)a3;
- (void)setGeocodeDate:(id)a3;
- (void)setLocation:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setMapItemSource:(unint64_t)a3;
- (void)setType:(int64_t)a3;
- (void)setTypeSource:(unint64_t)a3;
- (void)showState;
- (void)submitEntry:(double)a3 exit:(double)a4;
@end

@implementation RTStateDepiction

- (NSString)customLabel
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 customLabel];

  return v3;
}

- (unint64_t)typeSource
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 typeSource];

  return v3;
}

- (RTMapItem)mapItem
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 mapItem];

  return v3;
}

- (int64_t)type
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 type];

  return v3;
}

- (id)lastEntyExit
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__139;
  v11 = __Block_byref_object_dispose__139;
  v12 = 0;
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 histEntryExit_s];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__RTStateDepiction_lastEntyExit__block_invoke;
  v6[3] = &unk_2788CF868;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)getEarliestLatestEntry
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x426D1A94A2000000;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0xC26D1A94A2000000;
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 histEntryExit_s];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTStateDepiction_getEarliestLatestEntry__block_invoke;
  v7[3] = &unk_2788CF378;
  v7[4] = &v12;
  v7[5] = &v8;
  [v3 enumerateObjectsUsingBlock:v7];

  v4 = [RTStateModelEarliestLatestEl alloc];
  v5 = [(RTStateModelEarliestLatestEl *)v4 initWithEarliest:v13[3] andLatest:v9[3]];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  return v5;
}

- (RTStateModelLocation)location
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 location];

  return v3;
}

void __42__RTStateDepiction_getEarliestLatestEntry__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 entry_s];
  if (v3 < *(*(*(a1 + 32) + 8) + 24))
  {
    [v7 entry_s];
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  [v7 exit_s];
  if (v5 > *(*(*(a1 + 40) + 8) + 24))
  {
    [v7 entry_s];
    *(*(*(a1 + 40) + 8) + 24) = v6;
  }
}

void __32__RTStateDepiction_lastEntyExit__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  v10 = v4;
  if (v6)
  {
    [v6 exit_s];
    v8 = v7;
    [v10 exit_s];
    if (v8 >= v9)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

- (RTStateDepiction)initWithLocation:(id)a3 type:(int64_t)a4 typeSource:(unint64_t)a5 customLabel:(id)a6 mapItem:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = RTStateDepiction;
  v15 = [(RTStateDepiction *)&v19 init];
  if (v15)
  {
    v16 = [[RTStateDepictionOneState alloc] initWithLocation:v12 type:a4 typeSource:a5 customLabel:v13 mapItem:v14];
    clusterState = v15->_clusterState;
    v15->_clusterState = v16;

    v15->_numOfDataPts = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(RTStateDepiction *)self _performIntegrityCheck];
  [v4 encodeObject:self->_clusterState forKey:@"clusterState"];
  [v4 encodeInteger:self->_numOfDataPts forKey:@"numOfDataPts"];
}

- (RTStateDepiction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = RTStateDepiction;
  v5 = [(RTStateDepiction *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clusterState"];
    clusterState = v5->_clusterState;
    v5->_clusterState = v6;

    v5->_numOfDataPts = [v4 decodeIntegerForKey:@"numOfDataPts"];
    [(RTStateDepiction *)v5 _performErrorCorrection];
  }

  return v5;
}

+ (int64_t)maximumNumberOfDataPoints
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = (CFAbsoluteTimeGetCurrent() + -380675623.0) / 300.0;
  if (v2 >= 2147483650.0)
  {
    v3 = 2147483646;
  }

  else
  {
    v3 = v2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      v7 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "maximum data point count, %ld", &v6, 0xCu);
    }
  }

  return v3;
}

- (void)_performIntegrityCheck
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[RTStateDepiction maximumNumberOfDataPoints];
  if ([(RTStateDepiction *)self numOfDataPts]> v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 134218240;
      v6 = [(RTStateDepiction *)self numOfDataPts];
      v7 = 2048;
      v8 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "data point count, %ld, exceeded maximum, %ld", &v5, 0x16u);
    }

    [(RTStateDepiction *)self _performErrorCorrection];
  }
}

- (void)_performErrorCorrection
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = +[RTStateDepiction maximumNumberOfDataPoints];
  if ([(RTStateDepiction *)self numOfDataPts]> v3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [(RTStateDepiction *)self clusterState];
    v5 = [v4 histEntryExit_s];

    v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v23;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          [v11 entry_s];
          if (v12 != -1.0)
          {
            [v11 exit_s];
            if (v13 != -1.0)
            {
              [v11 exit_s];
              v15 = v14;
              [v11 entry_s];
              v17 = (v15 - v16) / 600.0;
              if (v17 > ~v8)
              {
                v21 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "estimating data point count caused an overflow", buf, 2u);
                }

                [(RTStateDepiction *)self setNumOfDataPts:0];
                return;
              }

              v8 = (v17 + v8);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

      if (v8 > v3)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v27 = v8;
          v28 = 2048;
          v29 = v3;
          _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "estimated data point count, %llu, exceeded maximum, %ld", buf, 0x16u);
        }

        v19 = self;
        v20 = 0;
        goto LABEL_22;
      }
    }

    else
    {

      LODWORD(v8) = 0;
    }

    v20 = v8;
    v19 = self;
LABEL_22:
    [(RTStateDepiction *)v19 setNumOfDataPts:v20];
  }
}

- (void)submitEntry:(double)a3 exit:(double)a4
{
  [RTStateDepiction quantizeTimeIntervalSinceReferenceDate:a3];
  v7 = v6;
  [RTStateDepiction quantizeTimeIntervalSinceReferenceDate:a4];
  v11 = [[RTStateModelEntryExit alloc] initWithEntry:v7 exit:v8];
  v9 = [(RTStateDepiction *)self clusterState];
  v10 = [v9 histEntryExit_s];
  [v10 addObject:v11];
}

- (void)removeEntry:(double)a3 exit:(double)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__139;
  v14 = __Block_byref_object_dispose__139;
  v15 = [[RTStateModelEntryExit alloc] initWithEntry:a3 exit:a4];
  v5 = [(RTStateDepiction *)self clusterState];
  v6 = [v5 histEntryExit_s];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__RTStateDepiction_removeEntry_exit___block_invoke;
  v9[3] = &unk_2788CA700;
  v9[4] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = [(RTStateDepiction *)self clusterState];
  v8 = [v7 histEntryExit_s];
  [v8 removeObject:v11[5]];

  _Block_object_dispose(&v10, 8);
}

void __37__RTStateDepiction_removeEntry_exit___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 isEqual:*(*(*(a1 + 32) + 8) + 40)])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setLocation:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RTStateDepiction *)self clusterState];
  [v5 setLocation:v4];

  v6 = [(RTStateDepiction *)self clusterState];
  v7 = [v6 mapItem];
  v8 = [v7 source];

  if (v8)
  {
    v34 = [(RTStateDepiction *)self clusterState];
    v9 = [v34 mapItem];
    v10 = [v9 location];
    [v10 latitude];
    v11 = [(RTStateDepiction *)self clusterState];
    v12 = [v11 mapItem];
    v13 = [v12 location];
    [v13 longitude];
    v14 = [(RTStateDepiction *)self clusterState];
    v15 = [v14 location];
    [v15 Latitude_deg];
    v16 = [(RTStateDepiction *)self clusterState];
    v17 = [v16 location];
    [v17 Longitude_deg];
    RTCommonCalculateDistanceHighPrecision();
    v19 = v18;

    if (v19 > 100.0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v22 = [(RTStateDepiction *)self clusterState];
          v23 = [v22 mapItem];
          v24 = [v23 location];
          [v24 latitude];
          v26 = v25;
          v27 = [(RTStateDepiction *)self clusterState];
          v28 = [v27 mapItem];
          v29 = [v28 location];
          [v29 longitude];
          v31 = v30;
          v32 = [(RTStateDepiction *)self clusterState];
          v33 = [v32 location];
          *buf = 134546435;
          v36 = v26;
          v37 = 2053;
          v38 = v31;
          v39 = 2112;
          v40 = v33;
          v41 = 2053;
          v42 = v19;
          _os_log_debug_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEBUG, "underlying location moved from, <%{sensitive}f, %{sensitive}f>, to, %@. The new distance from the location to the mapItem center, %{sensitive}f, resulted in marking the geocoded mapItem dirty", buf, 0x2Au);
        }
      }

      v21 = [(RTStateDepiction *)self clusterState];
      [v21 setGeocodeDate:0];
    }
  }
}

- (void)incrementNumOfDataPtsByInteger:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v5 = +[RTStateDepiction maximumNumberOfDataPoints];
    if (v5 - [(RTStateDepiction *)self numOfDataPts]>= a3)
    {
      v7 = [(RTStateDepiction *)self numOfDataPts]+ a3;

      [(RTStateDepiction *)self setNumOfDataPts:v7];
    }

    else
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 134218496;
        v9 = [(RTStateDepiction *)self numOfDataPts];
        v10 = 2048;
        v11 = v5;
        v12 = 2048;
        v13 = a3;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "data point count, %ld, exceeded maximum, %ld, after increment, %ld", &v8, 0x20u);
      }

      [(RTStateDepiction *)self setNumOfDataPts:0x7FFFFFFFLL];
      [(RTStateDepiction *)self _performErrorCorrection];
    }
  }
}

- (GEOMapItem)geoMapItem
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 geoMapItem];

  return v3;
}

- (void)setGeoMapItem:(id)a3
{
  v4 = a3;
  v5 = [(RTStateDepiction *)self clusterState];
  [v5 setGeoMapItem:v4];
}

- (void)setMapItem:(id)a3
{
  v4 = a3;
  v5 = [(RTStateDepiction *)self clusterState];
  [v5 setMapItem:v4];
}

- (unint64_t)mapItemSource
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 mapItemSource];

  return v3;
}

- (void)setMapItemSource:(unint64_t)a3
{
  v4 = [(RTStateDepiction *)self clusterState];
  [v4 setMapItemSource:a3];
}

- (void)setType:(int64_t)a3
{
  v4 = [(RTStateDepiction *)self clusterState];
  [v4 setType:a3];
}

- (void)setTypeSource:(unint64_t)a3
{
  v4 = [(RTStateDepiction *)self clusterState];
  [v4 setTypeSource:a3];
}

- (NSDate)geocodeDate
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 geocodeDate];

  return v3;
}

- (void)setGeocodeDate:(id)a3
{
  v4 = a3;
  v5 = [(RTStateDepiction *)self clusterState];
  [v5 setGeocodeDate:v4];
}

- (void)setCustomLabel:(id)a3
{
  v4 = a3;
  v5 = [(RTStateDepiction *)self clusterState];
  [v5 setCustomLabel:v4];
}

- (double)getAggTimeScaleFactor:(double)a3 predictionWindow:(double)a4
{
  result = 1.0;
  if (a3 > 0.0 && a4 > 0.0 && a4 + 0.000001 >= a3)
  {
    return a3 / (a4 * 0.5) + 0.2;
  }

  return result;
}

- (double)getLastVisit
{
  v2 = [(RTStateDepiction *)self lastEntyExit];
  v3 = v2;
  if (v2)
  {
    [v2 exit_s];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (BOOL)cleanState:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(RTStateDepiction *)self clusterState];
  v7 = [v6 histEntryExit_s];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __31__RTStateDepiction_cleanState___block_invoke;
  v17 = &unk_2788CF328;
  v19 = a3;
  v8 = v5;
  v18 = v8;
  [v7 enumerateObjectsUsingBlock:&v14];

  v9 = [(RTStateDepiction *)self clusterState:v14];
  [v9 setHistEntryExit_s:v8];

  if ([(RTStateDepiction *)self exemptFromPurge])
  {
    v10 = 0;
  }

  else
  {
    v11 = [(RTStateDepiction *)self clusterState];
    v12 = [v11 histEntryExit_s];
    v10 = [v12 count] == 0;
  }

  return v10;
}

void __31__RTStateDepiction_cleanState___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 exit_s];
  if (v3 >= *(a1 + 40))
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (id)getRecentVisits:(double)a3
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(RTStateDepiction *)self clusterState];
  v7 = [v6 histEntryExit_s];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__RTStateDepiction_getRecentVisits___block_invoke;
  v12[3] = &unk_2788CF890;
  v14 = a3;
  v12[4] = self;
  v8 = v5;
  v13 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __36__RTStateDepiction_getRecentVisits___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 entry_s];
  if (v3 > *(a1 + 48))
  {
    v4 = [RTStateModelOneVisit alloc];
    v5 = [*(a1 + 32) clusterState];
    v6 = [v5 location];
    v7 = [(RTStateModelOneVisit *)v4 initWithLocation:v6 entryExit:v8 andNumOfDataPts:0];

    [*(a1 + 40) addObject:v7];
  }
}

- (id)getAllOneVisits
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 histEntryExit_s];

  return v3;
}

- (void)addOneVisitsFromStateDepiction:(id)a3
{
  v4 = [a3 getAllOneVisits];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__RTStateDepiction_addOneVisitsFromStateDepiction___block_invoke;
  v7[3] = &unk_2788C4BA8;
  v7[4] = self;
  [v4 enumerateObjectsUsingBlock:v7];
  v5 = [(RTStateDepiction *)self clusterState];
  v6 = [v5 histEntryExit_s];
  [v6 sortUsingComparator:&__block_literal_global_114];
}

void __51__RTStateDepiction_addOneVisitsFromStateDepiction___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  [v3 entry_s];
  v6 = v5;
  [v3 exit_s];
  [v4 submitEntry:v6 exit:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138739971;
      v10 = v3;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "adding visit, %{sensitive}@, to newly consolidated cluster", &v9, 0xCu);
    }
  }
}

uint64_t __51__RTStateDepiction_addOneVisitsFromStateDepiction___block_invoke_258(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 entry_s];
  v6 = v5;
  [v4 entry_s];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)getNumOfVisitsOverall
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 histEntryExit_s];
  v4 = [v3 count];

  return v4;
}

- (id)getAggStateStat
{
  v3 = objc_alloc_init(RTStateDepictionAggStateStats);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0xBFF0000000000000;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0xBFF0000000000000;
  v4 = [(RTStateDepiction *)self clusterState];
  v5 = [v4 histEntryExit_s];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__RTStateDepiction_getAggStateStat__block_invoke;
  v11[3] = &unk_2788CF378;
  v11[4] = &v12;
  v11[5] = &v16;
  [v5 enumerateObjectsUsingBlock:v11];

  [(RTStateDepictionAggStateStats *)v3 setAggregateTime_s:v13[3]];
  [(RTStateDepictionAggStateStats *)v3 setLastExit_s:v17[3]];
  v6 = [(RTStateDepiction *)self clusterState];
  v7 = [v6 location];
  [(RTStateDepictionAggStateStats *)v3 setLocation:v7];

  v8 = [(RTStateDepiction *)self clusterState];
  v9 = [v8 histEntryExit_s];
  -[RTStateDepictionAggStateStats setNumOfEntries:](v3, "setNumOfEntries:", [v9 count]);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v3;
}

void __35__RTStateDepiction_getAggStateStat__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 exit_s];
  v4 = v3;
  [v8 entry_s];
  *(*(*(a1 + 32) + 8) + 24) = v4 - v5 + *(*(*(a1 + 32) + 8) + 24);
  [v8 exit_s];
  if (v6 > *(*(*(a1 + 40) + 8) + 24))
  {
    [v8 exit_s];
    *(*(*(a1 + 40) + 8) + 24) = v7;
  }
}

- (void)showState
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 histEntryExit_s];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__RTStateDepiction_showState__block_invoke;
  v6[3] = &unk_2788CF868;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = v8[3] / 60.0;
      *buf = 134217984;
      v12 = v5;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "total duration in state, %.2f [min]", buf, 0xCu);
    }
  }

  _Block_object_dispose(&v7, 8);
}

void __29__RTStateDepiction_showState__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityStateModel);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134218243;
      v11 = a3 + 1;
      v12 = 2117;
      v13 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "visit %lu, %{sensitive}@", &v10, 0x16u);
    }
  }

  [v5 exit_s];
  v8 = v7;
  [v5 entry_s];
  *(*(*(a1 + 32) + 8) + 24) = v8 - v9 + *(*(*(a1 + 32) + 8) + 24);
}

- (id)getGetWeeklyStats:(double)a3 numOfWeeks:(int)a4 uniqueID:(id)a5
{
  v93 = *MEMORY[0x277D85DE8];
  v65 = a5;
  v8 = [(RTStateDepiction *)self clusterState];
  v9 = [v8 histEntryExit_s];
  [v9 sortUsingComparator:&__block_literal_global_263];

  Current = CFAbsoluteTimeGetCurrent();
  v11 = [(RTStateDepiction *)self clusterState];
  v12 = [v11 histEntryExit_s];
  v13 = [v12 objectEnumerator];

  v14 = [v13 nextObject];
  v63 = a4;
  v15 = Current + a4 * -604800.0 + -86400.0;
  v64 = 1.0e12;
  if (v14)
  {
    while (1)
    {
      [v14 exit_s];
      if (v16 >= v15)
      {
        break;
      }

      v17 = [v13 nextObject];

      v14 = v17;
      if (!v17)
      {
        goto LABEL_4;
      }
    }

    [v14 entry_s];
    v64 = v19;
    v18 = 0;
  }

  else
  {
LABEL_4:
    v18 = 1;
  }

  v20 = [(RTStateDepiction *)self clusterState];
  v21 = [v20 histEntryExit_s];
  v66 = [v21 lastObject];

  if (v66)
  {
    [v66 exit_s];
  }

  else
  {
    *&v22 = -1.0e12;
  }

  v62 = *&v22;
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v18)
  {
LABEL_35:
    v14 = 0;
  }

  else
  {
    v24 = 0;
    while (1)
    {
      [v14 exit_s];
      if (v25 >= a3)
      {
        break;
      }

      v26 = v15 + 86400.0;
      if (v14)
      {
        v27 = 0;
        v28 = 0.0;
        do
        {
          [v14 entry_s];
          v30 = v27 || v29 >= v26;
          if (v27 || v29 >= v26)
          {
            break;
          }

          [v14 exit_s];
          if (v15 >= v31)
          {
            v41 = [v13 nextObject];

            v37 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "[RTStateDepiction getGetWeeklyStats:numOfWeeks:uniqueID:]";
              *&buf[12] = 1024;
              *&buf[14] = 815;
              _os_log_error_impl(&dword_2304B3000, v37, OS_LOG_TYPE_ERROR, "HomeWork detection entry is inconsistent - should not happen (in %s:%d)", buf, 0x12u);
            }

            v27 = 0;
            v14 = v41;
          }

          else
          {
            v32 = MEMORY[0x277CCABB0];
            [v14 exit_s];
            v34 = v33;
            [v14 entry_s];
            v36 = v34 - v35;
            *&v36 = v36;
            v37 = [v32 numberWithFloat:v36];
            [v23 addObject:v37];
            [v14 entry_s];
            if (v15 >= v38)
            {
              v40 = v15;
            }

            else
            {
              [v14 entry_s];
              v40 = v39;
              ++v24;
            }

            [v14 exit_s];
            v27 = v26 < v42;
            if (v26 < v42)
            {
              v44 = v15 + 86400.0;
            }

            else
            {
              [v14 exit_s];
              v44 = v43;
              v45 = [v13 nextObject];

              v14 = v45;
            }

            v28 = v28 + v44 - v40;
          }
        }

        while (v14);
        v46 = !v30;
      }

      else
      {
        v46 = 1;
        v28 = 0.0;
      }

      v47 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
      [v68 addObject:v47];

      if ([v68 count] == 7)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v92 = 0;
        v87 = 0;
        v88 = &v87;
        v89 = 0x2020000000;
        v90 = 0;
        v83 = 0;
        v84 = &v83;
        v85 = 0x2020000000;
        LODWORD(v86) = 0;
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __58__RTStateDepiction_getGetWeeklyStats_numOfWeeks_uniqueID___block_invoke_265;
        v82[3] = &unk_2788CF300;
        v82[4] = &v83;
        v82[5] = buf;
        v82[6] = &v87;
        [v68 enumerateObjectsUsingBlock:v82];
        if (v84[6] < 1)
        {
          v49 = -1.0;
          v48 = 0.0;
        }

        else
        {
          v48 = *(*&buf[8] + 24) / 7.0;
          v49 = sqrt(fabs(*(v88 + 3) / 7.0 - v48 * v48));
        }

        v50 = objc_alloc_init(RTStateWeeklyStatisticsEl);
        [(RTStateWeeklyStatisticsEl *)v50 setAvgAggTime_s:v48];
        [(RTStateWeeklyStatisticsEl *)v50 setStdAggTime_s:v49];
        [(RTStateWeeklyStatisticsEl *)v50 setDaysPerWeek:v84[6]];
        [(RTStateWeeklyStatisticsEl *)v50 setNumOfClustEntPerWeek:v24];
        [v67 addObject:v50];
        [v68 removeAllObjects];

        _Block_object_dispose(&v83, 8);
        _Block_object_dispose(&v87, 8);
        _Block_object_dispose(buf, 8);
        v24 = 0;
      }

      v15 = v15 + 86400.0;
      if (v46)
      {
        goto LABEL_35;
      }
    }
  }

  v51 = objc_alloc_init(RTStateWeeklyStatisticsEl);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LODWORD(v92) = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  LODWORD(v90) = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v70 = 0;
  v71 = &v70;
  v72 = 0x2020000000;
  v73 = 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __58__RTStateDepiction_getGetWeeklyStats_numOfWeeks_uniqueID___block_invoke_2;
  v69[3] = &unk_2788CF8B8;
  v69[4] = &v87;
  v69[5] = &v83;
  v69[6] = &v78;
  v69[7] = &v74;
  v69[8] = &v70;
  v69[9] = buf;
  [v67 enumerateObjectsUsingBlock:v69];
  v52 = *(v88 + 6);
  if (v52 < 1 || ((v53 = (v62 - v64) / 604800.0, v52 / v63 > 0.6) ? (v54 = v53 <= 2.0) : (v54 = 1), v54))
  {
    [(RTStateWeeklyStatisticsEl *)v51 setAvgAggTime_s:0.0];
    [(RTStateWeeklyStatisticsEl *)v51 setStdAggTime_s:-1.0];
    [(RTStateWeeklyStatisticsEl *)v51 setDaysPerWeek:0.0];
    [(RTStateWeeklyStatisticsEl *)v51 setNumOfClustEntPerWeek:0.0];
    goto LABEL_45;
  }

  [(RTStateWeeklyStatisticsEl *)v51 setAvgAggTime_s:*(v84 + 3) / v52];
  [(RTStateWeeklyStatisticsEl *)v51 setStdAggTime_s:v79[3] / *(v88 + 6)];
  [(RTStateWeeklyStatisticsEl *)v51 setDaysPerWeek:v75[6] / *(v88 + 6)];
  [(RTStateWeeklyStatisticsEl *)v51 setNumOfClustEntPerWeek:v71[3] / *(v88 + 6)];
  [v23 sortUsingComparator:&__block_literal_global_268];
  v55 = [v23 count];
  v56 = floor(v53 * 0.5);
  if (v56 > v55)
  {
    goto LABEL_51;
  }

  if (v56 <= 1.0)
  {
    if ([v23 count] >= 3)
    {
      v57 = [v23 objectAtIndex:2];
      [v57 floatValue];
      [(RTStateWeeklyStatisticsEl *)v51 setTopMedian:v59];
      goto LABEL_50;
    }

    if ([v23 count])
    {
      v57 = [v23 objectAtIndex:{objc_msgSend(v23, "count") - 1}];
      [v57 floatValue];
      [(RTStateWeeklyStatisticsEl *)v51 setTopMedian:v60];
      goto LABEL_50;
    }

LABEL_45:
    [(RTStateWeeklyStatisticsEl *)v51 setTopMedian:0.0];
    goto LABEL_51;
  }

  v57 = [v23 objectAtIndex:v56];
  [v57 floatValue];
  [(RTStateWeeklyStatisticsEl *)v51 setTopMedian:v58];
LABEL_50:

LABEL_51:
  [(RTStateWeeklyStatisticsEl *)v51 setStateUUID:v65];
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(buf, 8);

  return v51;
}

uint64_t __58__RTStateDepiction_getGetWeeklyStats_numOfWeeks_uniqueID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 entry_s];
  v6 = v5;
  [v4 entry_s];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void __58__RTStateDepiction_getGetWeeklyStats_numOfWeeks_uniqueID___block_invoke_265(void *a1, void *a2)
{
  v8 = a2;
  [v8 doubleValue];
  if (v3 > 0.0)
  {
    ++*(*(a1[4] + 8) + 24);
    [v8 doubleValue];
    *(*(a1[5] + 8) + 24) = v4 + *(*(a1[5] + 8) + 24);
    [v8 doubleValue];
    v6 = v5;
    [v8 doubleValue];
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + v6 * v7;
  }
}

void __58__RTStateDepiction_getGetWeeklyStats_numOfWeeks_uniqueID___block_invoke_2(void *a1, void *a2)
{
  v8 = a2;
  [v8 stdAggTime_s];
  if (v3 <= 0.0)
  {
    ++*(*(a1[9] + 8) + 24);
  }

  else
  {
    ++*(*(a1[4] + 8) + 24);
    [v8 avgAggTime_s];
    *(*(a1[5] + 8) + 24) = v4 + *(*(a1[5] + 8) + 24);
    [v8 stdAggTime_s];
    *(*(a1[6] + 8) + 24) = v5 + *(*(a1[6] + 8) + 24);
    [v8 daysPerWeek];
    *(*(a1[7] + 8) + 24) = (v6 + *(*(a1[7] + 8) + 24));
    [v8 numOfClustEntPerWeek];
    *(*(a1[8] + 8) + 24) = v7 + *(*(a1[8] + 8) + 24);
  }
}

uint64_t __58__RTStateDepiction_getGetWeeklyStats_numOfWeeks_uniqueID___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 floatValue];
  v6 = v5;
  [v4 floatValue];
  v8 = v7;

  if (v6 <= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (id)getPredState:(double)a3 predictionWindow:(double)a4 numOfWeeks:(int)a5 uniqueID:(id)a6
{
  v101 = a6;
  v108 = objc_alloc_init(RTStateDepcitionOneStatePred);
  v10 = -a5;
  v11 = 7 * v10;
  v109 = a3;
  [RTStateModelAlgorithms timeByAddingUnit:16 value:v11 toTime:a3];
  v13 = v12;
  v14 = [(RTStateDepiction *)self clusterState];
  v15 = [v14 histEntryExit_s];
  [v15 sortUsingComparator:&__block_literal_global_272];

  v102 = self;
  v16 = [(RTStateDepiction *)self clusterState];
  v17 = [v16 histEntryExit_s];
  v18 = [v17 objectEnumerator];

  v19 = [v18 nextObject];
  if (v19)
  {
    do
    {
      [v19 exit_s];
      v21 = v20 < v13;
      if (v20 >= v13)
      {
        break;
      }

      v22 = [v18 nextObject];

      v19 = v22;
    }

    while (v22);
  }

  else
  {
    v21 = 1;
  }

  v100 = a4;
  v23 = v13 + a4;
  v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v105 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v107 = a5;
  if (v21)
  {
    v19 = 0;
    v24 = 0.0;
    v25 = -1.0e12;
    v26 = 1.0e12;
  }

  else
  {
    v24 = 0.0;
    v25 = -1.0e12;
    v26 = 1.0e12;
    v27 = v23;
    v28 = v13;
    while (1)
    {
      [v19 exit_s];
      if (v29 >= v109)
      {
        break;
      }

      if (v19)
      {
        v30 = 0;
        v31 = 0;
        do
        {
          [v19 entry_s];
          v33 = v30 || v32 >= v27;
          if (v30 || v32 >= v27)
          {
            break;
          }

          [v19 exit_s];
          if (v28 >= v34)
          {
            v39 = [v18 nextObject];

            v30 = 0;
            v19 = v39;
          }

          else
          {
            [v19 entry_s];
            v35 = v28;
            if (v28 < v36)
            {
              [v19 entry_s];
              v35 = v37;
            }

            [v19 exit_s];
            v30 = v27 < v38;
            if (v27 < v38)
            {
              v25 = v27;
            }

            else
            {
              [v19 exit_s];
              v25 = v40;
              v41 = [v18 nextObject];

              v19 = v41;
            }

            v24 = v24 + v25 - v35;
            ++v31;
            if (v35 < v26)
            {
              v26 = v35;
            }
          }
        }

        while (v19);
        v42 = !v33;
        if (v31 >= 1)
        {
          v43 = [MEMORY[0x277CCABB0] numberWithInt:1];
          [v106 addObject:v43];

          v44 = [MEMORY[0x277CCABB0] numberWithInt:v10];
          [v105 addObject:v44];
        }
      }

      else
      {
        v42 = 1;
      }

      [RTStateModelAlgorithms timeByAddingUnit:16 value:7 toTime:v28];
      v28 = v45;
      [RTStateModelAlgorithms timeByAddingUnit:16 value:7 toTime:v27];
      v27 = v46;
      v10 = (v10 + 1);
      if (v42)
      {
        v19 = 0;
        break;
      }
    }
  }

  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  v118[0] = 0;
  v118[1] = v118;
  v118[2] = 0x2020000000;
  v119 = 0;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __70__RTStateDepiction_getPredState_predictionWindow_numOfWeeks_uniqueID___block_invoke_2;
  v117[3] = &unk_2788CF378;
  v117[4] = &v120;
  v117[5] = v118;
  [v106 enumerateObjectsUsingBlock:v117];
  if (a5 < 1)
  {
    v50 = 0.0;
    v47 = 0.0;
  }

  else
  {
    v47 = v24 / a5;
    v48 = *(v121 + 6);
    [(RTStateDepiction *)v102 getAggTimeScaleFactor:v47 predictionWindow:v100];
    v50 = v49 * (v48 / a5);
  }

  v51 = [(RTStateDepcitionOneStatePred *)v108 weekly];
  [v51 setNumOfClustEntries:*(v121 + 6)];

  v52 = [(RTStateDepcitionOneStatePred *)v108 weekly];
  [v52 setLatestVisitTime_s:v25];

  v53 = [(RTStateDepcitionOneStatePred *)v108 weekly];
  [v53 setAggregateTime_s:v47];

  v54 = [(RTStateDepcitionOneStatePred *)v108 weekly];
  [v54 setEarliestVisitTime_s:v26];

  v55 = [(RTStateDepcitionOneStatePred *)v108 weekly];
  [v55 setVisitHist:v105];

  v56 = [(RTStateDepcitionOneStatePred *)v108 weekly];
  [v56 setDensity:v50];

  v57 = [(RTStateDepiction *)v102 clusterState];
  v58 = [v57 histEntryExit_s];
  v59 = [v58 objectEnumerator];

  v60 = [v59 nextObject];

  if (v60)
  {
    do
    {
      [v60 exit_s];
      v62 = v61 < v13;
      if (v61 >= v13)
      {
        break;
      }

      v63 = [v59 nextObject];

      v60 = v63;
    }

    while (v63);
  }

  else
  {
    v62 = 1;
  }

  v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v103 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v62)
  {
    v60 = 0;
    v64 = 0.0;
    v65 = 1.0e12;
    v66 = -1.0e12;
    v67 = v108;
  }

  else
  {
    v64 = 0.0;
    v65 = 1.0e12;
    v66 = -1.0e12;
    v67 = v108;
    while (1)
    {
      [v60 exit_s];
      if (v68 >= v109)
      {
        break;
      }

      if (v60)
      {
        v69 = 0;
        v70 = 0;
        do
        {
          [v60 entry_s];
          v72 = v69 || v71 >= v23;
          if (v69 || v71 >= v23)
          {
            break;
          }

          [v60 exit_s];
          if (v13 >= v73)
          {
            v78 = [v59 nextObject];

            v69 = 0;
            v60 = v78;
          }

          else
          {
            [v60 entry_s];
            v74 = v13;
            if (v13 < v75)
            {
              [v60 entry_s];
              v74 = v76;
            }

            [v60 exit_s];
            v69 = v23 < v77;
            if (v23 < v77)
            {
              v66 = v23;
            }

            else
            {
              [v60 exit_s];
              v66 = v79;
              v80 = [v59 nextObject];

              v60 = v80;
            }

            v64 = v64 + v66 - v74;
            ++v70;
            if (v74 < v65)
            {
              v65 = v74;
            }
          }
        }

        while (v60);
        v81 = !v72;
        if (v70 < 1)
        {
          a5 = v107;
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithInt:1];
          v82 = a5 = v107;
          [v104 addObject:v82];

          v83 = [MEMORY[0x277CCABB0] numberWithLong:v11];
          [v103 addObject:v83];
        }
      }

      else
      {
        v81 = 1;
      }

      [RTStateModelAlgorithms timeByAddingUnit:16 value:1 toTime:v13];
      v85 = v84;
      [RTStateModelAlgorithms timeByAddingUnit:16 value:1 toTime:v23];
      v13 = v13 + v85;
      v23 = v23 + v86;
      ++v11;
      if (v81)
      {
        v60 = 0;
        break;
      }
    }
  }

  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v111[0] = 0;
  v111[1] = v111;
  v111[2] = 0x2020000000;
  v112 = 0;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __70__RTStateDepiction_getPredState_predictionWindow_numOfWeeks_uniqueID___block_invoke_3;
  v110[3] = &unk_2788CF378;
  v110[4] = &v113;
  v110[5] = v111;
  [v104 enumerateObjectsUsingBlock:v110];
  if (a5 < 1)
  {
    v91 = 0.0;
    v88 = 0.0;
  }

  else
  {
    v87 = (7 * a5);
    v88 = v64 / v87;
    v89 = *(v114 + 6);
    [(RTStateDepiction *)v102 getAggTimeScaleFactor:v64 / v87 predictionWindow:v100];
    v91 = v90 * (v89 / v87);
  }

  v92 = [(RTStateDepcitionOneStatePred *)v67 daily];
  [v92 setNumOfClustEntries:*(v114 + 6)];

  v93 = [(RTStateDepcitionOneStatePred *)v67 daily];
  [v93 setLatestVisitTime_s:v66];

  v94 = [(RTStateDepcitionOneStatePred *)v67 daily];
  [v94 setAggregateTime_s:v88];

  v95 = [(RTStateDepcitionOneStatePred *)v67 daily];
  [v95 setEarliestVisitTime_s:v65];

  v96 = [(RTStateDepcitionOneStatePred *)v67 daily];
  [v96 setVisitHist:v103];

  v97 = [(RTStateDepcitionOneStatePred *)v67 daily];
  [v97 setDensity:v91];

  [(RTStateDepcitionOneStatePred *)v67 setStateUUID:v101];
  v98 = v67;
  _Block_object_dispose(v111, 8);
  _Block_object_dispose(&v113, 8);

  _Block_object_dispose(v118, 8);
  _Block_object_dispose(&v120, 8);

  return v98;
}

uint64_t __70__RTStateDepiction_getPredState_predictionWindow_numOfWeeks_uniqueID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 entry_s];
  v6 = v5;
  [v4 entry_s];
  v8 = v7;

  if (v6 >= v8)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

uint64_t __70__RTStateDepiction_getPredState_predictionWindow_numOfWeeks_uniqueID___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 intValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __70__RTStateDepiction_getPredState_predictionWindow_numOfWeeks_uniqueID___block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 intValue];
  *(*(*(a1 + 32) + 8) + 24) += result;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)removeAllVisitsExceptMostRecent
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__139;
  v14 = __Block_byref_object_dispose__139;
  v15 = 0;
  v3 = [(RTStateDepiction *)self clusterState];
  v4 = [v3 histEntryExit_s];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__RTStateDepiction_removeAllVisitsExceptMostRecent__block_invoke;
  v9[3] = &unk_2788CA700;
  v9[4] = &v10;
  [v4 enumerateObjectsUsingBlock:v9];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(RTStateDepiction *)self clusterState];
  [v6 setHistEntryExit_s:v5];

  if (v11[5])
  {
    v7 = [(RTStateDepiction *)self clusterState];
    v8 = [v7 histEntryExit_s];
    [v8 addObject:v11[5]];
  }

  _Block_object_dispose(&v10, 8);
}

void __51__RTStateDepiction_removeAllVisitsExceptMostRecent__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 exit_s];
  v5 = v4;
  [*(*(*(a1 + 32) + 8) + 40) exit_s];
  if (v5 > v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)exemptFromPurge
{
  v2 = [(RTStateDepiction *)self clusterState];
  v3 = [v2 mapItem];
  v4 = ([v3 source] & 0xC) != 0;

  return v4;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RTStateDepiction *)self clusterState];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (double)calculateStandardDeviationWithOptions:(id)a3 error:(id *)a4
{
  v7 = [a3 mutableCopy];
  if (!a3)
  {
    v8 = objc_opt_new();

    v7 = v8;
  }

  v9 = [v7 objectForKey:@"RTMetricStandardDeviationOptionsTransitionTypeKey"];

  if (!v9)
  {
    [v7 setObject:&unk_28459F240 forKey:@"RTMetricStandardDeviationOptionsTransitionTypeKey"];
  }

  v10 = [v7 objectForKey:@"RTMetricStandardDeviationOptionsMinimumVisitsKey"];

  if (!v10)
  {
    [v7 setObject:&unk_28459F258 forKey:@"RTMetricStandardDeviationOptionsMinimumVisitsKey"];
  }

  v11 = [v7 objectForKey:@"RTMetricStandardDeviationOptionsIncludeOutliersKey"];

  if (!v11)
  {
    [v7 setObject:MEMORY[0x277CBEC28] forKey:@"RTMetricStandardDeviationOptionsIncludeOutliersKey"];
  }

  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v12 components:2097404 fromDate:v13];

  [v14 setHour:0];
  [v14 setMinute:0];
  [v14 setSecond:0];
  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [v15 timeZone];
  [v14 setTimeZone:v16];

  v17 = [MEMORY[0x277CBEA80] currentCalendar];
  v18 = [v17 dateFromComponents:v14];
  [v7 setObject:v18 forKey:@"RTMetricStandardDeviationOptionsReferenceDateKey"];

  v19 = [(RTStateDepictionOneState *)self->_clusterState histEntryExit_s];
  v20 = [(RTStateDepiction *)self _filterEntryExitData:v19 options:v7];

  v21 = [(RTStateDepiction *)self _referenceAdjustEntryExitDates:v20 options:v7];
  v22 = [v7 objectForKey:@"RTMetricStandardDeviationOptionsIncludeOutliersKey"];
  v23 = [v22 BOOLValue];

  if ((v23 & 1) == 0)
  {
    v24 = [(RTStateDepiction *)self _excludeEntryExitOutlierDates:v21 options:v7];

    v21 = v24;
  }

  [(RTStateDepiction *)self _calculateStandardDeviationForDates:v21 options:v7 error:a4];
  v26 = v25;

  return v26;
}

- (id)_referenceAdjustEntryExitDates:(id)a3 options:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  v9 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsReferenceDateKey"];

  v10 = [v8 components:2097404 fromDate:v9];

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__RTStateDepiction_RTMetricManager___referenceAdjustEntryExitDates_options___block_invoke;
  v17[3] = &unk_2788C4A48;
  v18 = v10;
  v12 = v11;
  v19 = v12;
  v13 = v10;
  [v7 enumerateObjectsUsingBlock:v17];

  v14 = v19;
  v15 = v12;

  return v12;
}

void __76__RTStateDepiction_RTMetricManager___referenceAdjustEntryExitDates_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = [v3 currentCalendar];
  v8 = [v5 components:2097404 fromDate:v4];

  [v8 setMonth:{objc_msgSend(*(a1 + 32), "month")}];
  [v8 setDay:{objc_msgSend(*(a1 + 32), "day")}];
  [v8 setYear:{objc_msgSend(*(a1 + 32), "year")}];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateFromComponents:v8];

  [*(a1 + 40) addObject:v7];
}

- (double)_calculateStandardDeviationForDates:(id)a3 options:(id)a4 error:(id *)a5
{
  v44[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = [v8 objectForKey:@"RTMetricStandardDeviationOptionsMinimumVisitsKey"];
    v10 = [v9 unsignedIntegerValue];

    if ([v7 count] >= v10)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      v18 = [v8 objectForKey:@"RTMetricStandardDeviationOptionsReferenceDateKey"];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __87__RTStateDepiction_RTMetricManager___calculateStandardDeviationForDates_options_error___block_invoke;
      v34[3] = &unk_2788CF908;
      v36 = &v37;
      v19 = v18;
      v35 = v19;
      [v7 enumerateObjectsUsingBlock:v34];
      v20 = v38[3];
      v21 = v20 / [v7 count];
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 0;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __87__RTStateDepiction_RTMetricManager___calculateStandardDeviationForDates_options_error___block_invoke_2;
      v26[3] = &unk_2788CF930;
      v22 = v19;
      v27 = v22;
      v28 = &v30;
      v29 = v21;
      [v7 enumerateObjectsUsingBlock:v26];
      v23 = v31[3];
      v24 = [v7 count];

      _Block_object_dispose(&v30, 8);
      v11 = round(sqrt(v23 / v24));
      _Block_object_dispose(&v37, 8);
    }

    else
    {
      v11 = -1.0;
      if (a5)
      {
        v12 = MEMORY[0x277CCA9B8];
        v41 = *MEMORY[0x277CCA450];
        v13 = @"dates";
        if (v10 == 1)
        {
          v13 = @"date";
        }

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Calculating the standard deviation requires at least %lu %@.", v10, v13];
        v42 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        *a5 = [v12 errorWithDomain:@"RTMetricManagerErrorDomain" code:7 userInfo:v15];
      }
    }
  }

  else
  {
    v11 = -1.0;
    if (a5)
    {
      v16 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA450];
      v44[0] = @"Calculating the standard deviation requires at least one date.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      *a5 = [v16 errorWithDomain:@"RTMetricManagerErrorDomain" code:7 userInfo:v17];
    }
  }

  return v11;
}

double __87__RTStateDepiction_RTMetricManager___calculateStandardDeviationForDates_options_error___block_invoke(uint64_t a1, void *a2)
{
  [a2 timeIntervalSinceDate:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

double __87__RTStateDepiction_RTMetricManager___calculateStandardDeviationForDates_options_error___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  result = (v3 - *(a1 + 48)) * (v3 - *(a1 + 48)) + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

- (id)_filterEntryExitData:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v5 count])
  {
    v8 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsTransitionTypeKey"];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsMinimumVisitsKey"];
    v11 = [v10 unsignedIntegerValue];

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __66__RTStateDepiction_RTMetricManager___filterEntryExitData_options___block_invoke;
    v28[3] = &unk_2788CF958;
    v30 = v9;
    v12 = v7;
    v29 = v12;
    [v5 enumerateObjectsUsingBlock:v28];
    v13 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsWeekdayKey"];

    if (!v13)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Options specified calculation of weekly pattern type but didn't specify the weekday.", buf, 2u);
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Options specified calculation of weekly pattern type but didn't specify the weekday."];
    }

    v15 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsWeekdayKey"];
    v16 = [v15 unsignedIntegerValue];

    v17 = objc_opt_new();
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __66__RTStateDepiction_RTMetricManager___filterEntryExitData_options___block_invoke_369;
    v24 = &unk_2788CF328;
    v25 = v17;
    v26 = v16;
    v18 = v17;
    [v12 enumerateObjectsUsingBlock:&v21];
    [v12 removeObjectsInArray:{v18, v21, v22, v23, v24}];
    if ([v12 count] >= v11)
    {
      v19 = v12;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = v7;
  }

  return v19;
}

void __66__RTStateDepiction_RTMetricManager___filterEntryExitData_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  if (*(a1 + 40))
  {
    [a2 exit_s];
  }

  else
  {
    [a2 entry_s];
  }

  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  [*(a1 + 32) addObject:v4];
}

void __66__RTStateDepiction_RTMetricManager___filterEntryExitData_options___block_invoke_369(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [v3 components:512 fromDate:v5];

  if ([v4 weekday] != *(a1 + 40))
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (id)_excludeEntryExitOutlierDates:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 mutableCopy];
  if (![v7 count])
  {
    goto LABEL_11;
  }

  v8 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsMinimumVisitsKey"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsOutlierTimeIntervalKey"];
  v11 = [v10 integerValue];

  v12 = malloc_type_calloc(0x18uLL, 4uLL, 0x100004052888210uLL);
  if (v12)
  {
    v13 = v12;
    v39 = v7;
    v14 = v11;
    v15 = 0x277CBE000uLL;
    v16 = [MEMORY[0x277CBEA80] currentCalendar];
    v40 = v6;
    v17 = [v6 objectForKey:@"RTMetricStandardDeviationOptionsReferenceDateKey"];
    v18 = [v16 components:2097404 fromDate:v17];

    [v18 setHour:0];
    [v18 setMinute:0];
    [v18 setSecond:0];
    v19 = [MEMORY[0x277CBEA80] currentCalendar];
    v20 = [v19 timeZone];
    [v18 setTimeZone:v20];

    v21 = 0;
    v22 = 0;
    for (i = 0; i != 24; ++i)
    {
      [v18 setHour:i];
      [*(v15 + 2688) currentCalendar];
      v25 = v24 = v15;
      v26 = [v25 dateFromComponents:v18];

      v27 = [v26 dateByAddingTimeInterval:v14];
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __75__RTStateDepiction_RTMetricManager___excludeEntryExitOutlierDates_options___block_invoke;
      v45[3] = &unk_2788CF980;
      v46 = v26;
      v47 = v27;
      v48 = v13;
      v49 = i;
      v28 = v27;
      v29 = v26;
      [v5 enumerateObjectsUsingBlock:v45];
      if (v13[i] > v22)
      {
        v22 = v13[i];
        v21 = i;
      }

      v15 = v24;
    }

    v7 = v39;
    if (v22)
    {
      [v18 setHour:v21];
      v30 = [*(v15 + 2688) currentCalendar];
      v31 = [v30 dateFromComponents:v18];

      v32 = [v31 dateByAddingTimeInterval:v14];
      v33 = [MEMORY[0x277CBEB18] array];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __75__RTStateDepiction_RTMetricManager___excludeEntryExitOutlierDates_options___block_invoke_2;
      v41[3] = &unk_2788CE100;
      v42 = v31;
      v43 = v32;
      v44 = v33;
      v34 = v33;
      v35 = v32;
      v36 = v31;
      [v39 enumerateObjectsUsingBlock:v41];
      [v39 removeObjectsInArray:v34];
    }

    free(v13);

    v6 = v40;
  }

  if ([v7 count] >= v9)
  {
    v37 = v7;
  }

  else
  {
LABEL_11:
    v37 = 0;
  }

  return v37;
}

uint64_t __75__RTStateDepiction_RTMetricManager___excludeEntryExitOutlierDates_options___block_invoke(void *a1, void *a2)
{
  result = [a2 betweenDate:a1[4] andDate:a1[5]];
  if (result)
  {
    ++*(a1[6] + 4 * a1[7]);
  }

  return result;
}

void __75__RTStateDepiction_RTMetricManager___excludeEntryExitOutlierDates_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 betweenDate:*(a1 + 32) andDate:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 48) addObject:v3];
  }
}

@end