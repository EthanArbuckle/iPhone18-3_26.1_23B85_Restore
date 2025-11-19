@interface RTParkingQualityProvider
- (RTParkingQualityProvider)init;
- (id)getCdfFromHistogram:(id)a3 numSamples:(double)a4;
- (id)getHistogramFromSamples:(id)a3;
- (int)indexOfSmallestElement:(double *)a3 size:(int)a4;
- (unint64_t)calculateParkingQualityWithLocations:(id)a3 parkingTimestamp:(double)a4;
- (unint64_t)classifySamples:(id)a3;
- (unint64_t)parkingQualityToLocationQuality:(unint64_t)a3;
- (void)reset;
@end

@implementation RTParkingQualityProvider

- (int)indexOfSmallestElement:(double *)a3 size:(int)a4
{
  if (a4 < 2)
  {
    return 0;
  }

  result = 0;
  for (i = 1; i != a4; ++i)
  {
    if (a3[i] < a3[result])
    {
      result = i;
    }
  }

  return result;
}

- (RTParkingQualityProvider)init
{
  v7.receiver = self;
  v7.super_class = RTParkingQualityProvider;
  v2 = [(RTParkingQualityProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_parkingQualityIndicator = 0;
    v4 = objc_opt_new();
    movingHistorgram = v3->_movingHistorgram;
    v3->_movingHistorgram = v4;
  }

  return v3;
}

- (void)reset
{
  v3 = [(RTParkingQualityProvider *)self movingHistorgram];
  [v3 removeAllObjects];

  [(RTParkingQualityProvider *)self setParkingQualityIndicator:0];
}

- (id)getHistogramFromSamples:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  for (i = 0; i != 17; ++i)
  {
    [v4 setObject:&unk_28459FA68 atIndexedSubscript:i];
  }

  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      [v7 doubleValue];
      v9 = (v8 / 5.0);

      v10 = v9 & ~(v9 >> 31);
      if (v10 >= 16)
      {
        v11 = 16;
      }

      else
      {
        v11 = v10;
      }

      v12 = MEMORY[0x277CCABB0];
      v13 = [v4 objectAtIndexedSubscript:v11];
      v14 = [v12 numberWithInt:{objc_msgSend(v13, "intValue") + 1}];
      [v4 setObject:v14 atIndexedSubscript:v11];

      ++v6;
    }

    while ([v3 count] > v6);
  }

  return v4;
}

- (id)getCdfFromHistogram:(id)a3 numSamples:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 >= 1.0 && [v5 count])
  {
    v7 = objc_opt_new();
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        [v7 setObject:&unk_28459FA68 atIndexedSubscript:v8++];
      }

      while ([v6 count] > v8);
    }

    v9 = [v6 objectAtIndexedSubscript:0];
    [v7 setObject:v9 atIndexedSubscript:0];

    if ([v7 count] >= 2)
    {
      v10 = 1;
      do
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = [v7 objectAtIndexedSubscript:v10 - 1];
        [v12 doubleValue];
        v14 = v13;
        v15 = [v6 objectAtIndexedSubscript:v10];
        [v15 doubleValue];
        v17 = [v11 numberWithDouble:v14 + v16];
        [v7 setObject:v17 atIndexedSubscript:v10];

        ++v10;
      }

      while ([v7 count] > v10);
    }

    if ([v7 count])
    {
      v18 = 0;
      do
      {
        v19 = MEMORY[0x277CCABB0];
        v20 = [v7 objectAtIndexedSubscript:v18];
        [v20 doubleValue];
        v22 = [v19 numberWithDouble:v21 * 100.0 / a4];
        [v7 setObject:v22 atIndexedSubscript:v18];

        ++v18;
      }

      while ([v7 count] > v18);
    }
  }

  else
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "noSamples <1 or histogram is empty", v25, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)calculateParkingQualityWithLocations:(id)a3 parkingTimestamp:(double)a4
{
  v6 = a3;
  [(RTParkingQualityProvider *)self reset];
  v7 = objc_opt_new();
  if ([v6 count])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v8];
      [v10 horizontalAccuracy];
      if (v11 > 0.0)
      {
        v12 = [v10 timestamp];
        [v12 timeIntervalSinceReferenceDate];
        if (a4 - v13 <= 10.0)
        {
          v14 = [v10 timestamp];
          [v14 timeIntervalSinceReferenceDate];
          v16 = v15 - a4;

          if (v16 > 16.0 || [v10 type] != 1 && objc_msgSend(v10, "type") != 3 && objc_msgSend(v10, "type") != 2 && objc_msgSend(v10, "type") != 10)
          {
            goto LABEL_12;
          }

          v17 = MEMORY[0x277CCABB0];
          [v10 horizontalAccuracy];
          v12 = [v17 numberWithDouble:?];
          [v7 addObject:v12];
        }
      }

LABEL_12:

      v8 = v9;
    }

    while ([v6 count] > v9++);
  }

  if ([v7 count])
  {
    v19 = [(RTParkingQualityProvider *)self classifySamples:v7];
  }

  else
  {
    v19 = 0;
  }

  v20 = [(RTParkingQualityProvider *)self parkingQualityToLocationQuality:v19];

  return v20;
}

- (unint64_t)classifySamples:(id)a3
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  if ([v4 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v4 objectAtIndexedSubscript:v6];
      [v7 doubleValue];
      if (v8 <= 0.0)
      {
        goto LABEL_6;
      }

      v9 = [v4 objectAtIndexedSubscript:v6];
      [v9 doubleValue];
      v11 = v10;

      if (v11 < 65000.0)
      {
        break;
      }

LABEL_7:
      if ([v4 count] <= ++v6)
      {
        goto LABEL_8;
      }
    }

    v7 = [v4 objectAtIndexedSubscript:v6];
    [v5 addObject:v7];
LABEL_6:

    goto LABEL_7;
  }

LABEL_8:
  if ([v5 count])
  {
    v12 = [(RTParkingQualityProvider *)self movingHistorgram];
    v13 = [v12 count];

    if (v13 >= 3)
    {
      v14 = [(RTParkingQualityProvider *)self movingHistorgram];
      [v14 removeLastObject];

      v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Window length is larger than the max allowed", buf, 2u);
      }
    }

    v16 = [(RTParkingQualityProvider *)self getHistogramFromSamples:v5];
    v17 = [(RTParkingQualityProvider *)self movingHistorgram];
    [v17 insertObject:v16 atIndex:0];

    v18 = [(RTParkingQualityProvider *)self movingHistorgram];
    v19 = [v18 count];

    if (v19)
    {
      v65 = v4;
      v66 = v5;
      v20 = objc_opt_new();
      for (i = 0; i != 17; ++i)
      {
        [v20 setObject:&unk_28459FA68 atIndexedSubscript:i];
      }

      v22 = [(RTParkingQualityProvider *)self movingHistorgram];
      v23 = [v22 objectAtIndexedSubscript:0];
      v24 = [v23 count];

      if (v24)
      {
        v25 = 0;
        v26 = 0;
        do
        {
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v27 = self;
          v28 = [(RTParkingQualityProvider *)self movingHistorgram];
          v29 = [v28 countByEnumeratingWithState:&v75 objects:v84 count:16];
          if (v29)
          {
            v30 = v29;
            LODWORD(v31) = 0;
            v32 = *v76;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v76 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                v34 = [*(*(&v75 + 1) + 8 * j) objectAtIndexedSubscript:v25];
                v31 = [v34 intValue] + v31;
              }

              v30 = [v28 countByEnumeratingWithState:&v75 objects:v84 count:16];
            }

            while (v30);
          }

          else
          {
            v31 = 0;
          }

          v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v31];
          [v20 setObject:v35 atIndexedSubscript:v25];

          self = v27;
          v36 = [(RTParkingQualityProvider *)v27 movingHistorgram];
          v37 = [v36 objectAtIndexedSubscript:0];
          v38 = [v37 count];

          v25 = ++v26;
        }

        while (v38 > v26);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v39 = v20;
      v40 = [v39 countByEnumeratingWithState:&v71 objects:v83 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v72;
        v43 = 0.0;
        v4 = v65;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v72 != v42)
            {
              objc_enumerationMutation(v39);
            }

            [*(*(&v71 + 1) + 8 * k) doubleValue];
            v43 = v43 + v45;
          }

          v41 = [v39 countByEnumeratingWithState:&v71 objects:v83 count:16];
        }

        while (v41);
      }

      else
      {
        v43 = 0.0;
        v4 = v65;
      }

      v48 = [(RTParkingQualityProvider *)self getCdfFromHistogram:v39 numSamples:v43];
      v49 = v48;
      if (!v48)
      {
        [(RTParkingQualityProvider *)self reset];
        v47 = 0;
        v5 = v66;
LABEL_63:

        goto LABEL_64;
      }

      if ([v48 count] != 17)
      {
        v63 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        v5 = v66;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "unexpected trained cdf data size issue", buf, 2u);
        }

        [(RTParkingQualityProvider *)self reset];
        v47 = 0;
        goto LABEL_63;
      }

      *buf = 0.0;
      v81 = 0.0;
      v82 = 0.0;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v50 = v49;
      v51 = [v50 countByEnumeratingWithState:&v67 objects:v79 count:16];
      if (v51)
      {
        v52 = v51;
        LODWORD(v53) = 0;
        v54 = *v68;
        v55 = 0.0;
        v56 = 0.0;
        v57 = 0.0;
        do
        {
          v58 = 0;
          v53 = v53;
          do
          {
            if (*v68 != v54)
            {
              objc_enumerationMutation(v50);
            }

            [*(*(&v67 + 1) + 8 * v58) doubleValue];
            v57 = v57 + (v59 - kCDFLow[v53]) * (v59 - kCDFLow[v53]);
            v56 = v56 + (v59 - kCDFMedium[v53]) * (v59 - kCDFMedium[v53]);
            v55 = v55 + (v59 - kCDFHigh[v53]) * (v59 - kCDFHigh[v53]);
            v81 = v56;
            v82 = v57;
            *buf = v55;
            ++v53;
            ++v58;
          }

          while (v52 != v58);
          v52 = [v50 countByEnumeratingWithState:&v67 objects:v79 count:16];
        }

        while (v52);
      }

      [(RTParkingQualityProvider *)self setParkingQualityIndicator:[(RTParkingQualityProvider *)self indexOfSmallestElement:buf size:3]+ 1];
      parkingQualityIndicator = self->_parkingQualityIndicator;
      if (parkingQualityIndicator == 1)
      {
        v60 = v81 * 0.93;
        v5 = v66;
        if (v81 * 0.93 > *buf)
        {
LABEL_62:
          v47 = [(RTParkingQualityProvider *)self parkingQualityIndicator];
          goto LABEL_63;
        }

        v62 = 2;
      }

      else
      {
        v5 = v66;
        if (parkingQualityIndicator != 2)
        {
          goto LABEL_62;
        }

        v60 = v82 * 0.98;
        if (v82 * 0.98 > v81)
        {
          goto LABEL_62;
        }

        v62 = 3;
      }

      [(RTParkingQualityProvider *)self setParkingQualityIndicator:v62, v60];
      goto LABEL_62;
    }

    v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, " Size of moving histograms was zero", buf, 2u);
    }
  }

  else
  {
    [(RTParkingQualityProvider *)self reset];
  }

  v47 = 0;
LABEL_64:

  return v47;
}

- (unint64_t)parkingQualityToLocationQuality:(unint64_t)a3
{
  result = a3;
  if (a3 >= 4)
  {
    v8 = v3;
    v9 = v4;
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Unrecognized parking quality.", v7, 2u);
    }

    return 0;
  }

  return result;
}

@end