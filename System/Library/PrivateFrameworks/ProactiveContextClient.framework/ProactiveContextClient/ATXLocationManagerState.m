@interface ATXLocationManagerState
+ (id)merge:(id)a3 with:(id)a4;
- (ATXLocationManagerState)init;
- (ATXLocationManagerState)initWithCoder:(id)a3;
- (CLLocation)gymLOI;
- (CLLocation)homeLOI;
- (CLLocation)schoolLOI;
- (CLLocation)workLOI;
- (void)encodeWithCoder:(id)a3;
- (void)expirePreviousLOIBefore:(id)a3;
@end

@implementation ATXLocationManagerState

- (ATXLocationManagerState)init
{
  v13.receiver = self;
  v13.super_class = ATXLocationManagerState;
  v2 = [(ATXLocationManagerState *)&v13 init];
  v3 = v2;
  if (v2)
  {
    previousLOI = v2->_previousLOI;
    v2->_previousLOI = 0;

    currentLOI = v3->_currentLOI;
    v3->_currentLOI = 0;

    predictedNextLOIs = v3->_predictedNextLOIs;
    v3->_predictedNextLOIs = 0;

    predictedExitTimes = v3->_predictedExitTimes;
    v3->_predictedExitTimes = 0;

    v8 = [MEMORY[0x277CBEAA8] distantPast];
    lastUpdateDate = v3->_lastUpdateDate;
    v3->_lastUpdateDate = v8;

    v10 = objc_opt_new();
    locationsOfInterest = v3->_locationsOfInterest;
    v3->_locationsOfInterest = v10;
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  currentLOI = self->_currentLOI;
  v5 = a3;
  [v5 encodeObject:currentLOI forKey:@"currentLOI"];
  [v5 encodeObject:self->_previousLOI forKey:@"previousLOI"];
  [v5 encodeObject:self->_lastUpdateDate forKey:@"lastUpdateDate"];
  [v5 encodeObject:self->_predictedNextLOIs forKey:@"predictedNextLOIs"];
  [v5 encodeObject:self->_predictedExitTimes forKey:@"predictedExitTimes"];
  [v5 encodeObject:self->_locationsOfInterest forKey:@"locationsOfInterest"];
}

- (ATXLocationManagerState)initWithCoder:(id)a3
{
  v30[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ATXLocationManagerState;
  v5 = [(ATXLocationManagerState *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentLOI"];
    currentLOI = v5->_currentLOI;
    v5->_currentLOI = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousLOI"];
    previousLOI = v5->_previousLOI;
    v5->_previousLOI = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationsOfInterest"];
    locationsOfInterest = v5->_locationsOfInterest;
    v5->_locationsOfInterest = v12;

    if (!v5->_locationsOfInterest)
    {
      v14 = objc_opt_new();
      v15 = v5->_locationsOfInterest;
      v5->_locationsOfInterest = v14;
    }

    v16 = MEMORY[0x277CBEB98];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v18 = [v16 setWithArray:v17];

    v19 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v21 = [v19 setWithArray:v20];

    v22 = [v4 decodeObjectOfClasses:v18 forKey:@"predictedNextLOIs"];
    predictedNextLOIs = v5->_predictedNextLOIs;
    v5->_predictedNextLOIs = v22;

    v24 = [v4 decodeObjectOfClasses:v21 forKey:@"predictedExitTimes"];
    predictedExitTimes = v5->_predictedExitTimes;
    v5->_predictedExitTimes = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)merge:(id)a3 with:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 lastUpdateDate];
  v8 = [v6 lastUpdateDate];
  v9 = [v7 earlierDate:v8];
  v10 = [v6 lastUpdateDate];
  v11 = [v9 isEqualToDate:v10];

  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  if (v11)
  {
    v13 = v6;
  }

  else
  {
    v13 = v5;
  }

  v52 = v13;
  v14 = objc_opt_new();
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy_;
  v60[4] = __Block_byref_object_dispose_;
  v61 = 0;
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __38__ATXLocationManagerState_merge_with___block_invoke;
  v57[3] = &unk_279AB7C00;
  v59 = v60;
  v50 = v14;
  v58 = v50;
  v51 = MEMORY[0x2666EC640](v57);
  v15 = [v52 previousLOI];
  (v51)[2](v51, v15);

  v16 = [v52 currentLOI];
  (v51)[2](v51, v16);

  v17 = [v12 previousLOI];
  (v51)[2](v51, v17);

  v18 = [v12 currentLOI];
  (v51)[2](v51, v18);

  v19 = objc_opt_new();
  if ([v50 count])
  {
    v20 = [v12 currentLOI];
    v21 = v20 == 0;

    if (!v21)
    {
      v22 = [v50 lastObject];
      [v19 setCurrentLOI:v22];

      [v50 removeLastObject];
    }
  }

  if ([v50 count])
  {
    v23 = [v50 lastObject];
    [v19 setPreviousLOI:v23];
  }

  v24 = [v12 predictedNextLOIs];

  if (v24)
  {
    [v12 predictedNextLOIs];
  }

  else
  {
    [v52 predictedNextLOIs];
  }
  v25 = ;
  [v19 setPredictedNextLOIs:v25];

  v26 = [v12 predictedExitTimes];

  if (v26)
  {
    [v12 predictedExitTimes];
  }

  else
  {
    [v52 predictedExitTimes];
  }
  v27 = ;
  [v19 setPredictedExitTimes:v27];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v62[0] = @"Home";
  v62[1] = @"Work";
  v62[2] = @"School";
  v62[3] = @"Gym";
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
  v29 = [v28 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v29)
  {
    v30 = *v54;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v53 + 1) + 8 * i);
        v33 = [v12 locationsOfInterest];
        v34 = [v33 valueForKey:v32];

        [v19 locationsOfInterest];
        if (v34)
          v35 = {;
          [v12 locationsOfInterest];
        }

        else
          v35 = {;
          [v52 locationsOfInterest];
        }
        v36 = ;
        v37 = [v36 valueForKey:v32];
        [v35 setValue:v37 forKey:v32];
      }

      v29 = [v28 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v29);
  }

  v38 = [v19 currentLOI];
  v39 = [v52 currentLOI];
  if (v38 != v39)
  {
    goto LABEL_35;
  }

  v40 = [v19 previousLOI];
  v41 = [v52 previousLOI];
  if (v40 != v41)
  {
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v42 = [v19 predictedNextLOIs];
  v43 = [v52 predictedNextLOIs];
  if (!arraysAreEqual(v42, v43))
  {

    goto LABEL_34;
  }

  v49 = [v19 predictedExitTimes];
  v44 = [v52 predictedExitTimes];
  v45 = arraysAreEqual(v49, v44);

  if (v45)
  {
    v46 = [v52 lastUpdateDate];
    [v19 setLastUpdateDate:v46];
    goto LABEL_37;
  }

LABEL_36:
  v46 = [v12 lastUpdateDate];
  [v19 setLastUpdateDate:v46];
LABEL_37:

  _Block_object_dispose(v60, 8);
  v47 = *MEMORY[0x277D85DE8];

  return v19;
}

void __38__ATXLocationManagerState_merge_with___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = a2;
    v5 = [v4 uuid];
    LODWORD(v3) = [v3 isEqual:v5];

    if (v3)
    {
      [*(a1 + 32) removeLastObject];
    }

    [*(a1 + 32) addObject:v4];
    v6 = [v4 uuid];

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)expirePreviousLOIBefore:(id)a3
{
  v4 = [(NSDate *)self->_lastUpdateDate earlierDate:a3];
  v5 = [v4 isEqualToDate:self->_lastUpdateDate];

  if (v5)
  {
    previousLOI = self->_previousLOI;
    self->_previousLOI = 0;
  }
}

- (CLLocation)homeLOI
{
  locationsOfInterest = self->_locationsOfInterest;
  if (locationsOfInterest)
  {
    return locationsOfInterest->Home;
  }

  else
  {
    return 0;
  }
}

- (CLLocation)workLOI
{
  locationsOfInterest = self->_locationsOfInterest;
  if (locationsOfInterest)
  {
    return locationsOfInterest->Work;
  }

  else
  {
    return 0;
  }
}

- (CLLocation)schoolLOI
{
  locationsOfInterest = self->_locationsOfInterest;
  if (locationsOfInterest)
  {
    return locationsOfInterest->School;
  }

  else
  {
    return 0;
  }
}

- (CLLocation)gymLOI
{
  locationsOfInterest = self->_locationsOfInterest;
  if (locationsOfInterest)
  {
    return locationsOfInterest->Gym;
  }

  else
  {
    return 0;
  }
}

@end