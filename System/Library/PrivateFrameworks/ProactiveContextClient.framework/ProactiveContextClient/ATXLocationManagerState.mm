@interface ATXLocationManagerState
+ (id)merge:(id)merge with:(id)with;
- (ATXLocationManagerState)init;
- (ATXLocationManagerState)initWithCoder:(id)coder;
- (CLLocation)gymLOI;
- (CLLocation)homeLOI;
- (CLLocation)schoolLOI;
- (CLLocation)workLOI;
- (void)encodeWithCoder:(id)coder;
- (void)expirePreviousLOIBefore:(id)before;
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

    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastUpdateDate = v3->_lastUpdateDate;
    v3->_lastUpdateDate = distantPast;

    v10 = objc_opt_new();
    locationsOfInterest = v3->_locationsOfInterest;
    v3->_locationsOfInterest = v10;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  currentLOI = self->_currentLOI;
  coderCopy = coder;
  [coderCopy encodeObject:currentLOI forKey:@"currentLOI"];
  [coderCopy encodeObject:self->_previousLOI forKey:@"previousLOI"];
  [coderCopy encodeObject:self->_lastUpdateDate forKey:@"lastUpdateDate"];
  [coderCopy encodeObject:self->_predictedNextLOIs forKey:@"predictedNextLOIs"];
  [coderCopy encodeObject:self->_predictedExitTimes forKey:@"predictedExitTimes"];
  [coderCopy encodeObject:self->_locationsOfInterest forKey:@"locationsOfInterest"];
}

- (ATXLocationManagerState)initWithCoder:(id)coder
{
  v30[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = ATXLocationManagerState;
  v5 = [(ATXLocationManagerState *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentLOI"];
    currentLOI = v5->_currentLOI;
    v5->_currentLOI = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousLOI"];
    previousLOI = v5->_previousLOI;
    v5->_previousLOI = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationsOfInterest"];
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

    v22 = [coderCopy decodeObjectOfClasses:v18 forKey:@"predictedNextLOIs"];
    predictedNextLOIs = v5->_predictedNextLOIs;
    v5->_predictedNextLOIs = v22;

    v24 = [coderCopy decodeObjectOfClasses:v21 forKey:@"predictedExitTimes"];
    predictedExitTimes = v5->_predictedExitTimes;
    v5->_predictedExitTimes = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)merge:(id)merge with:(id)with
{
  v64 = *MEMORY[0x277D85DE8];
  mergeCopy = merge;
  withCopy = with;
  lastUpdateDate = [mergeCopy lastUpdateDate];
  lastUpdateDate2 = [withCopy lastUpdateDate];
  v9 = [lastUpdateDate earlierDate:lastUpdateDate2];
  lastUpdateDate3 = [withCopy lastUpdateDate];
  v11 = [v9 isEqualToDate:lastUpdateDate3];

  if (v11)
  {
    v12 = mergeCopy;
  }

  else
  {
    v12 = withCopy;
  }

  if (v11)
  {
    v13 = withCopy;
  }

  else
  {
    v13 = mergeCopy;
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
  previousLOI = [v52 previousLOI];
  (v51)[2](v51, previousLOI);

  currentLOI = [v52 currentLOI];
  (v51)[2](v51, currentLOI);

  previousLOI2 = [v12 previousLOI];
  (v51)[2](v51, previousLOI2);

  currentLOI2 = [v12 currentLOI];
  (v51)[2](v51, currentLOI2);

  v19 = objc_opt_new();
  if ([v50 count])
  {
    currentLOI3 = [v12 currentLOI];
    v21 = currentLOI3 == 0;

    if (!v21)
    {
      lastObject = [v50 lastObject];
      [v19 setCurrentLOI:lastObject];

      [v50 removeLastObject];
    }
  }

  if ([v50 count])
  {
    lastObject2 = [v50 lastObject];
    [v19 setPreviousLOI:lastObject2];
  }

  predictedNextLOIs = [v12 predictedNextLOIs];

  if (predictedNextLOIs)
  {
    [v12 predictedNextLOIs];
  }

  else
  {
    [v52 predictedNextLOIs];
  }
  v25 = ;
  [v19 setPredictedNextLOIs:v25];

  predictedExitTimes = [v12 predictedExitTimes];

  if (predictedExitTimes)
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
        locationsOfInterest = [v12 locationsOfInterest];
        v34 = [locationsOfInterest valueForKey:v32];

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

  currentLOI4 = [v19 currentLOI];
  currentLOI5 = [v52 currentLOI];
  if (currentLOI4 != currentLOI5)
  {
    goto LABEL_35;
  }

  previousLOI3 = [v19 previousLOI];
  previousLOI4 = [v52 previousLOI];
  if (previousLOI3 != previousLOI4)
  {
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  predictedNextLOIs2 = [v19 predictedNextLOIs];
  predictedNextLOIs3 = [v52 predictedNextLOIs];
  if (!arraysAreEqual(predictedNextLOIs2, predictedNextLOIs3))
  {

    goto LABEL_34;
  }

  predictedExitTimes2 = [v19 predictedExitTimes];
  predictedExitTimes3 = [v52 predictedExitTimes];
  v45 = arraysAreEqual(predictedExitTimes2, predictedExitTimes3);

  if (v45)
  {
    lastUpdateDate4 = [v52 lastUpdateDate];
    [v19 setLastUpdateDate:lastUpdateDate4];
    goto LABEL_37;
  }

LABEL_36:
  lastUpdateDate4 = [v12 lastUpdateDate];
  [v19 setLastUpdateDate:lastUpdateDate4];
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

- (void)expirePreviousLOIBefore:(id)before
{
  v4 = [(NSDate *)self->_lastUpdateDate earlierDate:before];
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