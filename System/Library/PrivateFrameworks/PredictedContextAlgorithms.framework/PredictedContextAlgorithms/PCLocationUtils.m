@interface PCLocationUtils
+ (BOOL)isLocation:(id)a3 withinThreshold:(id)a4;
+ (double)boundValue:(double)a3 toMin:(double)a4 max:(double)a5;
+ (double)cosineSimilarityBetween:(id)a3 and:(id)a4;
+ (double)distanceInMetersBetweenLocation:(id)a3 andLocation:(id)a4;
+ (id)cartesianFromProtoLocation:(id)a3;
+ (id)currentLocationWithLocationHistory:(id)a3 currentTime:(double)a4;
+ (id)currentLocationWithLocationHistory:(id)a3 visitHistory:(id)a4 currentTime:(double)a5;
+ (id)latLonToCartesianWithLatLon:(id)a3;
+ (id)vectorFrom:(id)a3 to:(id)a4;
+ (void)cleanCurrentVisitWithMissingData:(id)a3;
@end

@implementation PCLocationUtils

+ (void)cleanCurrentVisitWithMissingData:(id)a3
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 visits];
  if ([v4 count])
  {
    v5 = [v3 locationHistorys];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [v3 visits];
      v8 = [v7 count] - 1;

      v9 = [v3 visits];
      v10 = [v9 objectAtIndexedSubscript:v8];

      [v3 currentTimeCFAbsolute];
      v12 = v11;
      if ([v10 hasLoiIdentifier])
      {
        v13 = [v10 loiIdentifier];
        v14 = v13 != 0;
      }

      else
      {
        v14 = 0;
      }

      if ([v10 hasExitTimeCFAbsolute])
      {
        [v10 exitTimeCFAbsolute];
        v16 = v15 < v12;
      }

      else
      {
        v16 = 0;
      }

      v17 = [v3 locationHistorys];
      v18 = [v17 count] - 1;

      v19 = [v3 locationHistorys];
      v20 = [v19 objectAtIndexedSubscript:v18];

      v21 = [v20 location];
      if (![v10 hasEntryTimeCFAbsolute])
      {
        goto LABEL_45;
      }

      [v20 timeCFAbsolute];
      v23 = v22;
      [v10 entryTimeCFAbsolute];
      if (v14 || v16 || v23 < v24)
      {
        goto LABEL_45;
      }

      v72 = v8;
      v25 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v80 = 1;
        *&v80[4] = 1024;
        *&v80[6] = 0;
        _os_log_impl(&dword_1CEE74000, v25, OS_LOG_TYPE_ERROR, "ERROR: current visit is missing some information, hasNoLoiId: %d, inTransition: %d", buf, 0xEu);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v26 = [v3 locationOfInterests];
      v27 = [v26 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (v27)
      {
        v28 = v27;
        v70 = v20;
        v71 = v10;
        v73 = 0;
        v74 = 0;
        v29 = 0;
        v30 = *v76;
        v31 = 1.79769313e308;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v76 != v30)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v75 + 1) + 8 * i);
            if ([v33 hasLocation])
            {
              v34 = [v33 location];

              if (v34)
              {
                v35 = [v33 location];
                [PCLocationUtils distanceInMetersBetweenLocation:v35 andLocation:v21];
                v37 = v36;

                v38 = [v33 location];
                [v38 locationHorizontalUncertaintyMeters];
                v40 = v39 * 3.0;

                if (v37 <= v40)
                {
                  if (v37 < v31)
                  {
                    v41 = v33;

                    v31 = v37;
                    v73 = v41;
                  }

                  if ([v33 placeType] == 1)
                  {
                    v42 = v33;

                    v29 = v42;
                  }

                  if ([v33 placeType] == 2)
                  {
                    v43 = v33;

                    v74 = v43;
                  }

                  v44 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                  {
                    v45 = [v33 location];
                    [v45 locationHorizontalUncertaintyMeters];
                    *buf = 138413058;
                    *v80 = v33;
                    *&v80[8] = 2048;
                    v81 = v37;
                    v82 = 2048;
                    v83 = v46;
                    v84 = 2048;
                    v85 = 0x4008000000000000;
                    _os_log_impl(&dword_1CEE74000, v44, OS_LOG_TYPE_ERROR, "adding candidate loi: %@, distance: %f, unc: %f, unc scale factor: %f", buf, 0x2Au);
                  }
                }
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v28);

        v10 = v71;
        if (v29)
        {
          v47 = v29;
          v48 = [v3 visits];
          v49 = [v48 objectAtIndexedSubscript:v72];
          v50 = [v29 loiIdentifier];
          [v49 setLoiIdentifier:v50];

          v51 = [v3 visits];
          v52 = [v51 objectAtIndexedSubscript:v72];
          v53 = [v29 location];
          [v52 setLocation:v53];

          v54 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
          v20 = v70;
          v55 = v73;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *v80 = v47;
            _os_log_impl(&dword_1CEE74000, v54, OS_LOG_TYPE_ERROR, "overwriting with home loi: %@", buf, 0xCu);
          }
        }

        else
        {
          v20 = v70;
          v55 = v73;
          v47 = v74;
          if (v74)
          {
            v56 = [v3 visits];
            v57 = [v56 objectAtIndexedSubscript:v72];
            v58 = [v74 loiIdentifier];
            [v57 setLoiIdentifier:v58];

            v59 = [v3 visits];
            v60 = [v59 objectAtIndexedSubscript:v72];
            v61 = [v74 location];
            [v60 setLocation:v61];

            v62 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v80 = v74;
              _os_log_impl(&dword_1CEE74000, v62, OS_LOG_TYPE_ERROR, "overwriting with work loi: %@", buf, 0xCu);
            }
          }

          else
          {
            if (!v73)
            {
              goto LABEL_45;
            }

            v64 = [v3 visits];
            v65 = [v64 objectAtIndexedSubscript:v72];
            v66 = [v73 loiIdentifier];
            [v65 setLoiIdentifier:v66];

            v67 = [v3 visits];
            v68 = [v67 objectAtIndexedSubscript:v72];
            v69 = [v73 location];
            [v68 setLocation:v69];

            v47 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *v80 = v73;
              _os_log_impl(&dword_1CEE74000, v47, OS_LOG_TYPE_ERROR, "overwriting with closest loi: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        v55 = v26;
      }

LABEL_45:
    }
  }

  else
  {
  }

  v63 = *MEMORY[0x1E69E9840];
}

+ (double)boundValue:(double)a3 toMin:(double)a4 max:(double)a5
{
  if (a3 <= a5)
  {
    a5 = a3;
  }

  if (a3 >= a4)
  {
    return a5;
  }

  else
  {
    return a4;
  }
}

+ (id)currentLocationWithLocationHistory:(id)a3 currentTime:(double)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!v6 || ![v6 count])
  {
    v31 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v43 = NSStringFromSelector(a2);
      *buf = 138412290;
      v55 = v43;
      v44 = "%@ - no location history available";
LABEL_38:
      _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
    }

LABEL_39:
    v37 = 0;
    goto LABEL_40;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (!v9)
  {

LABEL_36:
    v31 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v43 = NSStringFromSelector(a2);
      *buf = 138412290;
      v55 = v43;
      v44 = "%@ - no valid location history found before currentTime";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v10 = v9;
  v48 = v7;
  v49 = 0;
  v11 = *v51;
  v12 = -1.79769313e308;
  do
  {
    v13 = 0;
    do
    {
      if (*v51 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v50 + 1) + 8 * v13);
      if (([v14 hasTimeCFAbsolute] & 1) == 0)
      {
        v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = NSStringFromSelector(a2);
          *buf = 138412290;
          v55 = v21;
          v22 = v20;
          v23 = OS_LOG_TYPE_ERROR;
          v24 = "%@ - location missing timeCFAbsolute, skipping";
          goto LABEL_17;
        }

LABEL_19:

        goto LABEL_20;
      }

      v15 = [v14 location];
      v16 = [v15 hasLocationHorizontalUncertaintyMeters];

      if ((v16 & 1) == 0)
      {
        v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        v21 = NSStringFromSelector(a2);
        *buf = 138412290;
        v55 = v21;
        v22 = v20;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "%@ - location missing locationHorizontalUncertaintyMeters, skipping";
LABEL_17:
        v25 = 12;
        goto LABEL_18;
      }

      v17 = [v14 location];
      [v17 locationHorizontalUncertaintyMeters];
      v19 = v18;

      if (v19 > 100.0)
      {
        v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v21 = NSStringFromSelector(a2);
        *buf = 138412802;
        v55 = v21;
        v56 = 2048;
        v57 = v19;
        v58 = 2048;
        v59 = 0x4059000000000000;
        v22 = v20;
        v23 = OS_LOG_TYPE_DEFAULT;
        v24 = "%@ - location uncertainty (%f) exceeds threshold (%f), skipping";
        v25 = 32;
LABEL_18:
        _os_log_impl(&dword_1CEE74000, v22, v23, v24, buf, v25);

        goto LABEL_19;
      }

      [v14 timeCFAbsolute];
      if (v26 <= a4 && v26 > v12)
      {
        v28 = v26;
        v29 = v14;
        v20 = v49;
        v12 = v28;
        v49 = v29;
        goto LABEL_19;
      }

LABEL_20:
      ++v13;
    }

    while (v10 != v13);
    v30 = [v8 countByEnumeratingWithState:&v50 objects:v62 count:16];
    v10 = v30;
  }

  while (v30);

  v7 = v48;
  v31 = v49;
  if (!v49)
  {
    goto LABEL_36;
  }

  v32 = [v49 location];
  if ([v32 hasLocationLatitudeDeg] && objc_msgSend(v32, "hasLocationLongitudeDeg"))
  {
    v33 = [PCLatLon alloc];
    [v32 locationLatitudeDeg];
    v35 = v34;
    [v32 locationLongitudeDeg];
    v37 = [(PCLatLon *)v33 initWithLatitude:v35 longitude:v36];
    v38 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = NSStringFromSelector(a2);
      [(PCLatLon *)v37 latitudeDeg];
      v41 = v40;
      [(PCLatLon *)v37 longitudeDeg];
      *buf = 138413059;
      v55 = v39;
      v56 = 2053;
      v57 = v41;
      v58 = 2053;
      v59 = v42;
      v60 = 2048;
      v61 = a4;
      _os_log_impl(&dword_1CEE74000, v38, OS_LOG_TYPE_INFO, "[%@] current location, lat: %{sensitive}.5f, lon: %{sensitive}.5f, current time: %f", buf, 0x2Au);
    }
  }

  else
  {
    v38 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v47 = NSStringFromSelector(a2);
      *buf = 138412290;
      v55 = v47;
      _os_log_impl(&dword_1CEE74000, v38, OS_LOG_TYPE_ERROR, "%@ - selected location missing latitude or longitude", buf, 0xCu);
    }

    v37 = 0;
  }

LABEL_40:
  v45 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)latLonToCartesianWithLatLon:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 latitudeDeg];
  if (v4 >= -90.0 && ([v3 latitudeDeg], v5 <= 90.0) && (objc_msgSend(v3, "longitudeDeg"), v6 >= -180.0) && (objc_msgSend(v3, "longitudeDeg"), v7 <= 180.0))
  {
    [v3 latitudeDeg];
    v18 = v17 * 3.14159265 / 180.0;
    [v3 longitudeDeg];
    v20 = v19 * 3.14159265 / 180.0;
    v21 = __sincos_stret(v18);
    v22 = __sincos_stret(v20);
    v10 = [PCXYZCoordinate alloc];
    v11 = v21.__cosval * 6371000.0 * v22.__cosval;
    v12 = v21.__cosval * 6371000.0 * v22.__sinval;
    v13 = v21.__sinval * 6371000.0;
  }

  else
  {
    v8 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v3 description];
      v23 = 138739971;
      v24 = v9;
      _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "invalid latitude or longitude values, %{sensitive}@", &v23, 0xCu);
    }

    v10 = [PCXYZCoordinate alloc];
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v14 = [(PCXYZCoordinate *)v10 initWithX:v11 y:v12 z:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (double)distanceInMetersBetweenLocation:(id)a3 andLocation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = -1.0;
  if ([v5 hasLocationLatitudeDeg] && objc_msgSend(v5, "hasLocationLongitudeDeg") && objc_msgSend(v6, "hasLocationLatitudeDeg") && objc_msgSend(v6, "hasLocationLongitudeDeg"))
  {
    [v5 locationLatitudeDeg];
    v9 = v8;
    [v6 locationLatitudeDeg];
    v11 = vabdd_f64(v9, v10) * 111319.9;
    [v5 locationLongitudeDeg];
    v13 = v12;
    [v6 locationLongitudeDeg];
    v15 = vabdd_f64(v13, v14) * 111319.9;
    [v5 locationLatitudeDeg];
    v17 = cos(v16 * 3.14159265 / 180.0);
    v7 = sqrt(v15 * v17 * (v15 * v17) + v11 * v11);
  }

  return v7;
}

+ (id)cartesianFromProtoLocation:(id)a3
{
  v4 = a3;
  v5 = [PCLatLon alloc];
  [v4 locationLatitudeDeg];
  v7 = v6;
  [v4 locationLongitudeDeg];
  v9 = v8;

  v10 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v9];
  v11 = [a1 latLonToCartesianWithLatLon:v10];

  return v11;
}

+ (id)vectorFrom:(id)a3 to:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [PCXYZCoordinate alloc];
  [v5 x];
  v9 = v8;
  [v6 x];
  v11 = v9 - v10;
  [v5 y];
  v13 = v12;
  [v6 y];
  v15 = v13 - v14;
  [v5 z];
  v17 = v16;

  [v6 z];
  v19 = v18;

  v20 = [(PCXYZCoordinate *)v7 initWithX:v11 y:v15 z:v17 - v19];

  return v20;
}

+ (double)cosineSimilarityBetween:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 x];
  v45 = v7;
  [v5 x];
  v44 = v8;
  [v6 y];
  v43 = v9;
  [v5 y];
  v42 = v10;
  [v6 z];
  v41 = v11;
  [v5 z];
  v13 = v12;
  [v6 x];
  v15 = v14;
  [v6 x];
  v17 = v16;
  [v6 y];
  v19 = v18;
  [v6 y];
  v21 = v19 * v20 + v15 * v17;
  [v6 z];
  v23 = v22;
  [v6 z];
  v25 = v24;

  v26 = sqrt(v21 + v23 * v25);
  [v5 x];
  v28 = v27;
  [v5 x];
  v30 = v29;
  [v5 y];
  v32 = v31;
  [v5 y];
  v34 = v33;
  [v5 z];
  v36 = v35;
  [v5 z];
  v38 = v37;

  result = 1.0;
  if (v26 > 250.0)
  {
    v40 = sqrt(v32 * v34 + v28 * v30 + v36 * v38);
    if (v40 > 250.0)
    {
      return (v43 * v42 + v45 * v44 + v41 * v13) / (v26 * v40);
    }
  }

  return result;
}

+ (id)currentLocationWithLocationHistory:(id)a3 visitHistory:(id)a4 currentTime:(double)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __79__PCLocationUtils_currentLocationWithLocationHistory_visitHistory_currentTime___block_invoke;
  v28[3] = &unk_1E83B8078;
  *&v28[5] = a5;
  v28[4] = &v29;
  [v9 enumerateObjectsUsingBlock:v28];
  v10 = v30[5];
  if (v10 && [v10 hasLocation])
  {
    v11 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [v30[5] location];
      [v13 locationLatitudeDeg];
      v15 = v14;
      v16 = [v30[5] location];
      [v16 locationLongitudeDeg];
      *buf = 138413059;
      v36 = v12;
      v37 = 2053;
      v38 = v15;
      v39 = 2053;
      v40 = v17;
      v41 = 2048;
      v42 = a5;
      _os_log_impl(&dword_1CEE74000, v11, OS_LOG_TYPE_INFO, "[%@] current location from active visit, lat: %{sensitive}.5f, lon: %{sensitive}.5f, current time: %f", buf, 0x2Au);
    }

    v18 = [v30[5] location];
  }

  else
  {
    v19 = [PCLocationUtils currentLocationWithLocationHistory:v8 currentTime:a5];
    if (v19)
    {
      v18 = objc_alloc_init(PCPLocation);
      [v19 latitudeDeg];
      [(PCPLocation *)v18 setLocationLatitudeDeg:?];
      [v19 longitudeDeg];
      [(PCPLocation *)v18 setLocationLongitudeDeg:?];
      v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = NSStringFromSelector(a2);
        [(PCPLocation *)v18 locationLatitudeDeg];
        v23 = v22;
        [(PCPLocation *)v18 locationLongitudeDeg];
        *buf = 138413059;
        v36 = v21;
        v37 = 2053;
        v38 = v23;
        v39 = 2053;
        v40 = v24;
        v41 = 2048;
        v42 = a5;
        _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_INFO, "[%@] current location from location history, lat: %{sensitive}.5f, lon: %{sensitive}.5f, current time: %f", buf, 0x2Au);
      }
    }

    else
    {
      v20 = _plc_log_get_normal_handle(PCLogCategoryGeneral);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = NSStringFromSelector(a2);
        *buf = 138412290;
        v36 = v25;
        _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "%@ - no valid location found from visit or location history", buf, 0xCu);
      }

      v18 = 0;
    }
  }

  _Block_object_dispose(&v29, 8);

  v26 = *MEMORY[0x1E69E9840];

  return v18;
}

void __79__PCLocationUtils_currentLocationWithLocationHistory_visitHistory_currentTime___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 hasEntryTimeCFAbsolute])
  {
    [v12 entryTimeCFAbsolute];
    v5 = v4 > *(a1 + 40);
  }

  else
  {
    v5 = 1;
  }

  if ([v12 hasExitTimeCFAbsolute])
  {
    [v12 exitTimeCFAbsolute];
    v7 = v6 < *(a1 + 40);
  }

  else
  {
    v7 = 0;
  }

  if (!v5 && !v7)
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 40))
    {
      [v12 entryTimeCFAbsolute];
      v10 = v9;
      [*(*(*(a1 + 32) + 8) + 40) entryTimeCFAbsolute];
      if (v10 <= v11)
      {
        goto LABEL_12;
      }

      v8 = *(*(a1 + 32) + 8);
    }

    objc_storeStrong((v8 + 40), a2);
  }

LABEL_12:
}

+ (BOOL)isLocation:(id)a3 withinThreshold:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasLocationLatitudeDeg] && objc_msgSend(v5, "hasLocationLongitudeDeg") && objc_msgSend(v6, "hasLocationLatitudeDeg") && objc_msgSend(v6, "hasLocationLongitudeDeg"))
  {
    [v5 locationLatitudeDeg];
    v8 = v7;
    [v6 locationLatitudeDeg];
    v10 = vabdd_f64(v8, v9) * 111319.9;
    [v5 locationLongitudeDeg];
    v12 = v11;
    [v6 locationLongitudeDeg];
    v14 = vabdd_f64(v12, v13) * 111319.9;
    [v5 locationLatitudeDeg];
    v16 = cos(v15 * 3.14159265 / 180.0);
    v17 = sqrt(v14 * v16 * (v14 * v16) + v10 * v10) <= 250.0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end