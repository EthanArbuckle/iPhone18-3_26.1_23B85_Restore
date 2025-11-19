@interface PCOutOfPatternLogic
- (BOOL)_requestRetrainIfNeededWithReason:(id)a3;
- (BOOL)isOutOfPatternForInputSignals:(id)a3;
- (PCOutOfPatternLogic)initWithCoder:(id)a3;
- (PCOutOfPatternLogic)initWithModelCentroidLatLon:(id)a3;
- (id)closestHomeLOIFromCandidates:(id)a3 toLocation:(id)a4;
- (id)filterCalendarEvents:(id)a3;
- (id)filterInputSignals:(id)a3;
- (id)filterItems:(id)a3 usingLocationBlock:(id)a4;
- (id)filterMapsViewedPlaces:(id)a3;
- (id)filterTransitions:(id)a3 withLocationOfInterests:(id)a4;
- (id)filterVisits:(id)a3;
- (id)homeLOIsWithinBoundingBoxCenteredAtLocation:(id)a3 fromLocationOfInterests:(id)a4;
- (id)locationOfInterestForIdentifier:(id)a3 fromArray:(id)a4;
- (id)processInputSignals:(id)a3 isOutOfPattern:(BOOL *)a4;
- (id)snapModelCentroidForCurrentLocation:(id)a3 withInputSignals:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)resetAwaitingRetrainWithCurrentLocation:(id)a3 inputSignals:(id)a4;
@end

@implementation PCOutOfPatternLogic

- (PCOutOfPatternLogic)initWithModelCentroidLatLon:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PCOutOfPatternLogic;
  v6 = [(PCOutOfPatternLogic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_modelCentroid, a3);
    v7->_isAwaitingRetrain = 0;
  }

  return v7;
}

- (id)processInputSignals:(id)a3 isOutOfPattern:(BOOL *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PCOutOfPatternLogic *)self isOutOfPatternForInputSignals:v6];
  v8 = [v6 visits];
  v9 = [v8 count];

  v10 = [v6 transitions];
  v11 = [v10 count];

  v12 = [(PCOutOfPatternLogic *)self filterInputSignals:v6];

  v13 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v15 = [v12 visits];
    v16 = [v15 count];
    v17 = [v12 transitions];
    v20 = 136316162;
    v21 = v14;
    v22 = 2048;
    v23 = v9;
    v24 = 2048;
    v25 = v11;
    v26 = 2048;
    v27 = v16;
    v28 = 2048;
    v29 = [v17 count];
    _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "out of pattern? %s, num input visits, %lu, num input transitions, %lu, num output visits, %lu, num output transitions, %lu", &v20, 0x34u);
  }

  if (a4)
  {
    *a4 = v7;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isOutOfPatternForInputSignals:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 locationHistorys];
  [v4 currentTimeCFAbsolute];
  v7 = v6;

  v8 = [PCLocationUtils currentLocationWithLocationHistory:v5 currentTime:v7];

  v9 = [(PCOutOfPatternLogic *)self modelCentroid];

  if (!v9)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Missing model centroid, indicating no trained model", &v20, 2u);
    }

    v14 = @"initial model training";
    goto LABEL_10;
  }

  v10 = [(PCOutOfPatternLogic *)self modelCentroid];
  v11 = [(PCOutOfPatternLogic *)self isLatLon:v8 insideBoundingBoxWithCentroid:v10];

  if (!v11)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(PCOutOfPatternLogic *)self modelCentroid];
      v16 = [v15 description];
      v17 = [v8 description];
      v20 = 138740227;
      v21 = v16;
      v22 = 2117;
      v23 = v17;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Out-of-pattern detected. modelCentroid:%{sensitive}@, currentLatLon:%{sensitive}@", &v20, 0x16u);
    }

    v14 = @"GOOP detection";
LABEL_10:

    v12 = [(PCOutOfPatternLogic *)self _requestRetrainIfNeededWithReason:v14];
    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)filterInputSignals:(id)a3
{
  v4 = a3;
  v5 = [(PCOutOfPatternLogic *)self modelCentroid];

  if (v5)
  {
    v6 = [v4 copy];
    v7 = [v4 visits];
    v8 = [(PCOutOfPatternLogic *)self filterVisits:v7];
    [v6 setVisits:v8];

    v9 = [v4 transitions];
    v10 = [v4 locationOfInterests];
    v11 = [(PCOutOfPatternLogic *)self filterTransitions:v9 withLocationOfInterests:v10];
    [v6 setTransitions:v11];

    v12 = [v4 calendarEvents];
    v13 = [(PCOutOfPatternLogic *)self filterCalendarEvents:v12];
    [v6 setCalendarEvents:v13];

    v14 = [v4 mapsViewedPlaces];
    v15 = [(PCOutOfPatternLogic *)self filterMapsViewedPlaces:v14];
    [v6 setMapsViewedPlaces:v15];
  }

  else
  {
    v6 = v4;
  }

  return v6;
}

- (void)resetAwaitingRetrainWithCurrentLocation:(id)a3 inputSignals:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(PCOutOfPatternLogic *)self isAwaitingRetrain])
  {
    v8 = [(PCOutOfPatternLogic *)self snapModelCentroidForCurrentLocation:v6 withInputSignals:v7];
    [(PCOutOfPatternLogic *)self setModelCentroid:v8];

    [(PCOutOfPatternLogic *)self setIsAwaitingRetrain:0];
    v9 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(PCOutOfPatternLogic *)self modelCentroid];
      v11 = [v10 description];
      v13 = 138739971;
      v14 = v11;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_DEFAULT, "Reset awaiting retrain state after successful retrain. New modelCentroid: %{sensitive}@", &v13, 0xCu);
    }
  }

  else
  {
    v9 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1CEE74000, v9, OS_LOG_TYPE_INFO, "Reset awaiting retrain state while not waiting for a retrain, no-op", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)homeLOIsWithinBoundingBoxCenteredAtLocation:(id)a3 fromLocationOfInterests:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        if ([v13 placeType] == 1)
        {
          v14 = [PCLatLon alloc];
          v15 = [v13 location];
          [v15 locationLatitudeDeg];
          v17 = v16;
          v18 = [v13 location];
          [v18 locationLongitudeDeg];
          v20 = [(PCLatLon *)v14 initWithLatitude:v17 longitude:v19];

          if ([(PCOutOfPatternLogic *)self isLatLon:v20 insideBoundingBoxWithCentroid:v6])
          {
            [v24 addObject:v13];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v21 = [v24 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)closestHomeLOIFromCandidates:(id)a3 toLocation:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v28;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [PCLatLon alloc];
        v15 = [v13 location];
        [v15 locationLatitudeDeg];
        v17 = v16;
        v18 = [v13 location];
        [v18 locationLongitudeDeg];
        v20 = [(PCLatLon *)v14 initWithLatitude:v17 longitude:v19];

        [v6 distanceTo:v20];
        if (v21 < v11)
        {
          v22 = v21;
          v23 = v13;

          v11 = v22;
          v9 = v23;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)snapModelCentroidForCurrentLocation:(id)a3 withInputSignals:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 locationOfInterests];
  v8 = [(PCOutOfPatternLogic *)self homeLOIsWithinBoundingBoxCenteredAtLocation:v6 fromLocationOfInterests:v7];

  v9 = [(PCOutOfPatternLogic *)self closestHomeLOIFromCandidates:v8 toLocation:v6];
  if (v9)
  {
    v10 = [PCLatLon alloc];
    v11 = [v9 location];
    [v11 locationLatitudeDeg];
    v13 = v12;
    v14 = [v9 location];
    [v14 locationLongitudeDeg];
    v16 = [(PCLatLon *)v10 initWithLatitude:v13 longitude:v15];

    v17 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(PCLatLon *)v16 description];
      v23 = 138739971;
      v24 = v18;
      _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEFAULT, "Assign home LOI as model centroid. modelCentroid:%{sensitive}@", &v23, 0xCu);
    }
  }

  else
  {
    v19 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v6 description];
      v23 = 138739971;
      v24 = v20;
      _os_log_impl(&dword_1CEE74000, v19, OS_LOG_TYPE_DEFAULT, "Assign current location as model centroid. modelCentroid:%{sensitive}@", &v23, 0xCu);
    }

    v16 = v6;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)locationOfInterestForIdentifier:(id)a3 fromArray:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 loiIdentifier];
          v14 = [v13 isEqualToData:v5];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
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
    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)filterItems:(id)a3 usingLocationBlock:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v25;
    *&v9 = 138739971;
    v21 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = v7[2](v7, v13);
        if (v14 && ([(PCOutOfPatternLogic *)self modelCentroid], v15 = objc_claimAutoreleasedReturnValue(), v16 = [(PCOutOfPatternLogic *)self isLatLon:v14 insideBoundingBoxWithCentroid:v15], v15, !v16))
        {
          v17 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v14 description];
            *buf = v21;
            v29 = v18;
            _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEFAULT, "Filtering out item at location: %{sensitive}@", buf, 0xCu);
          }
        }

        else
        {
          [v23 addObject:{v13, v21}];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v23;
}

- (id)filterVisits:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PCOutOfPatternLogic *)self filterItems:v4 usingLocationBlock:&__block_literal_global_8];
  v6 = [v4 count];

  v7 = [v5 count];
  v8 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6 - v7;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu visits", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

PCLatLon *__36__PCOutOfPatternLogic_filterVisits___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasLocation])
  {
    v3 = [v2 location];

    if (v3)
    {
      v4 = [v2 location];
      v5 = [PCLatLon alloc];
      [v4 locationLatitudeDeg];
      v7 = v6;
      [v4 locationLongitudeDeg];
      v3 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v8];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filterCalendarEvents:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PCOutOfPatternLogic *)self filterItems:v4 usingLocationBlock:&__block_literal_global_17];
  v6 = [v4 count];

  v7 = [v5 count];
  v8 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6 - v7;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu calendar events", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

PCLatLon *__44__PCOutOfPatternLogic_filterCalendarEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasLocation])
  {
    v3 = [v2 location];

    if (v3)
    {
      v4 = [v2 location];
      v5 = [PCLatLon alloc];
      [v4 locationLatitudeDeg];
      v7 = v6;
      [v4 locationLongitudeDeg];
      v3 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v8];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filterMapsViewedPlaces:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PCOutOfPatternLogic *)self filterItems:v4 usingLocationBlock:&__block_literal_global_20];
  v6 = [v4 count];

  v7 = [v5 count];
  v8 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v6 - v7;
    _os_log_impl(&dword_1CEE74000, v8, OS_LOG_TYPE_DEFAULT, "Filtered out %lu maps viewed place events", &v11, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

PCLatLon *__46__PCOutOfPatternLogic_filterMapsViewedPlaces___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasDestinationLocation])
  {
    v3 = [v2 destinationLocation];

    if (v3)
    {
      v4 = [v2 destinationLocation];
      v5 = [PCLatLon alloc];
      [v4 locationLatitudeDeg];
      v7 = v6;
      [v4 locationLongitudeDeg];
      v3 = [(PCLatLon *)v5 initWithLatitude:v7 longitude:v8];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)filterTransitions:(id)a3 withLocationOfInterests:(id)a4
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = v6;
  v46 = [v9 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v46)
  {
    v11 = *v48;
    *&v10 = 138740227;
    v41 = v10;
    v44 = v9;
    v45 = v8;
    v42 = v7;
    v43 = *v48;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v47 + 1) + 8 * i);
        v14 = [v13 visitIdentifierOrigin];
        v15 = [(PCOutOfPatternLogic *)self locationOfInterestForIdentifier:v14 fromArray:v7];

        v16 = [v13 visitIdentifierDestination];
        v17 = [(PCOutOfPatternLogic *)self locationOfInterestForIdentifier:v16 fromArray:v7];

        if (!v15)
        {
          goto LABEL_18;
        }

        v18 = ![v15 hasLocation] || v17 == 0;
        if (v18 || ![v17 hasLocation])
        {
          goto LABEL_18;
        }

        v19 = [PCLatLon alloc];
        v20 = [v15 location];
        [v20 locationLatitudeDeg];
        v22 = v21;
        v23 = [v15 location];
        [v23 locationLongitudeDeg];
        v25 = [(PCLatLon *)v19 initWithLatitude:v22 longitude:v24];

        v26 = [PCLatLon alloc];
        v27 = [v17 location];
        [v27 locationLatitudeDeg];
        v29 = v28;
        v30 = [v17 location];
        [v30 locationLongitudeDeg];
        v32 = [(PCLatLon *)v26 initWithLatitude:v29 longitude:v31];

        v33 = [(PCOutOfPatternLogic *)self modelCentroid];
        LOBYTE(v30) = [(PCOutOfPatternLogic *)self isLatLon:v25 insideBoundingBoxWithCentroid:v33];

        v34 = [(PCOutOfPatternLogic *)self modelCentroid];
        v35 = [(PCOutOfPatternLogic *)self isLatLon:v32 insideBoundingBoxWithCentroid:v34];

        if ((v30 & 1) != 0 || v35)
        {

          v9 = v44;
          v8 = v45;
          v7 = v42;
          v11 = v43;
LABEL_18:
          [v8 addObject:v13];
          goto LABEL_19;
        }

        v36 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(PCLatLon *)v25 description];
          v38 = [(PCLatLon *)v32 description];
          *buf = v41;
          v52 = v37;
          v53 = 2117;
          v54 = v38;
          _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEFAULT, "Filtering out transition. Origin: %{sensitive}@, Destination: %{sensitive}@", buf, 0x16u);
        }

        v9 = v44;
        v8 = v45;
        v7 = v42;
        v11 = v43;
LABEL_19:
      }

      v46 = [v9 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v46);
  }

  v39 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)_requestRetrainIfNeededWithReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PCOutOfPatternLogic *)self isAwaitingRetrain];
  v6 = _plc_log_get_normal_handle(PCLogCategoryOutOfPatternLogic);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "Already awaiting retrain, not requesting again (reason: %@)", &v10, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1CEE74000, v6, OS_LOG_TYPE_DEFAULT, "Setting awaiting retrain flag for %@", &v10, 0xCu);
    }

    [(PCOutOfPatternLogic *)self setIsAwaitingRetrain:1];
  }

  v8 = *MEMORY[0x1E69E9840];
  return !v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PCOutOfPatternLogic *)self modelCentroid];
  [v5 encodeObject:v4 forKey:@"modelCentroid"];

  [v5 encodeBool:-[PCOutOfPatternLogic isAwaitingRetrain](self forKey:{"isAwaitingRetrain"), @"isAwaitingRetrain"}];
}

- (PCOutOfPatternLogic)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelCentroid"];
  if ([v4 containsValueForKey:@"isAwaitingRetrain"])
  {
    v6 = [v4 decodeBoolForKey:@"isAwaitingRetrain"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PCOutOfPatternLogic *)self initWithModelCentroidLatLon:v5];
  [(PCOutOfPatternLogic *)v7 setIsAwaitingRetrain:v6];

  return v7;
}

@end