@interface TAFilterVisitsSettings
+ (BOOL)_isLegacyHardware;
+ (double)_determinDefaultEntryDisplayOnBudget;
+ (double)_determinDefaultExitDisplayOnBudget;
+ (id)defaultVisitsSensitiveLOITypes;
- (TAFilterVisitsSettings)initWithDefaults;
- (TAFilterVisitsSettings)initWithMaxSuspiciousDuration:(double)a3 minInterVisitDistance:(double)a4 minNSigmaBetweenVisits:(unint64_t)a5 entryDisplayOnBudget:(double)a6 exitDisplayOnBudget:(double)a7 sensitiveLOITypes:(id)a8 minObservationInterval:(double)a9 threeVisitImmediacyType:(unint64_t)a10;
- (TAFilterVisitsSettings)initWithMaxSuspiciousDurationOrDefault:(id)a3 minInterVisitDistanceOrDefault:(id)a4 minNSigmaBetweenVisitsOrDefault:(id)a5 entryDisplayOnBudgetOrDefault:(id)a6 exitDisplayOnBudgetOrDefault:(id)a7 sensitiveLOITypesOrDefault:(id)a8 minObservationIntervalOrDefault:(id)a9 threeVisitImmediacyTypeOrDefault:(id)a10;
- (id)sensitiveLOITypesToString;
@end

@implementation TAFilterVisitsSettings

+ (id)defaultVisitsSensitiveLOITypes
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:1];
  v4 = [v2 initWithObjects:{v3, 0}];

  return v4;
}

- (TAFilterVisitsSettings)initWithMaxSuspiciousDuration:(double)a3 minInterVisitDistance:(double)a4 minNSigmaBetweenVisits:(unint64_t)a5 entryDisplayOnBudget:(double)a6 exitDisplayOnBudget:(double)a7 sensitiveLOITypes:(id)a8 minObservationInterval:(double)a9 threeVisitImmediacyType:(unint64_t)a10
{
  v18 = a8;
  v24.receiver = self;
  v24.super_class = TAFilterVisitsSettings;
  v19 = [(TAFilterVisitsSettings *)&v24 init];
  v20 = v19;
  if (v19)
  {
    v19->_maxSuspiciousDuration = a3;
    v19->_minInterVisitDistance = a4;
    v19->_minNSigmaBetweenVisits = a5;
    v19->_entryDisplayOnBudget = a6;
    v19->_exitDisplayOnBudget = a7;
    v21 = [v18 copy];
    sensitiveLOITypes = v20->_sensitiveLOITypes;
    v20->_sensitiveLOITypes = v21;

    v20->_minObservationInterval = a9;
    v20->_threeVisitImmediacyType = a10;
  }

  return v20;
}

- (TAFilterVisitsSettings)initWithDefaults
{
  +[TAFilterVisitsSettings _determinDefaultEntryDisplayOnBudget];
  v4 = v3;
  +[TAFilterVisitsSettings _determinDefaultExitDisplayOnBudget];
  v6 = v5;
  v7 = +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
  v8 = [(TAFilterVisitsSettings *)self initWithMaxSuspiciousDuration:2 minInterVisitDistance:v7 minNSigmaBetweenVisits:3 entryDisplayOnBudget:300.0 exitDisplayOnBudget:100.0 sensitiveLOITypes:v4 minObservationInterval:v6 threeVisitImmediacyType:300.0];

  return v8;
}

- (TAFilterVisitsSettings)initWithMaxSuspiciousDurationOrDefault:(id)a3 minInterVisitDistanceOrDefault:(id)a4 minNSigmaBetweenVisitsOrDefault:(id)a5 entryDisplayOnBudgetOrDefault:(id)a6 exitDisplayOnBudgetOrDefault:(id)a7 sensitiveLOITypesOrDefault:(id)a8 minObservationIntervalOrDefault:(id)a9 threeVisitImmediacyTypeOrDefault:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  if (v15)
  {
    [v15 doubleValue];
    v24 = v23;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = 100.0;
    if (v17)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24 = 300.0;
  if (!v16)
  {
    goto LABEL_6;
  }

LABEL_3:
  [v16 doubleValue];
  v26 = v25;
  if (v17)
  {
LABEL_4:
    v27 = [v17 unsignedIntValue];
    goto LABEL_8;
  }

LABEL_7:
  v27 = 2;
LABEL_8:
  v38 = v27;
  if (v18)
  {
    [v18 doubleValue];
  }

  else
  {
    +[TAFilterVisitsSettings _determinDefaultEntryDisplayOnBudget];
  }

  v29 = v28;
  if (v19)
  {
    [v19 doubleValue];
  }

  else
  {
    +[TAFilterVisitsSettings _determinDefaultExitDisplayOnBudget];
  }

  v31 = v30;
  v32 = v20;
  if (v20)
  {
    if (v21)
    {
      goto LABEL_16;
    }

LABEL_19:
    v34 = 300.0;
    if (v22)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v32 = +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
  if (!v21)
  {
    goto LABEL_19;
  }

LABEL_16:
  [v21 doubleValue];
  v34 = v33;
  if (v22)
  {
LABEL_17:
    v35 = [v22 unsignedIntValue];
    goto LABEL_21;
  }

LABEL_20:
  v35 = 3;
LABEL_21:
  v36 = [(TAFilterVisitsSettings *)self initWithMaxSuspiciousDuration:v38 minInterVisitDistance:v32 minNSigmaBetweenVisits:v35 entryDisplayOnBudget:v24 exitDisplayOnBudget:v26 sensitiveLOITypes:v29 minObservationInterval:v31 threeVisitImmediacyType:v34, v38];
  if (!v20)
  {
  }

  return v36;
}

+ (BOOL)_isLegacyHardware
{
  v4 = *MEMORY[0x277D85DE8];
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    result = 1;
  }

  else
  {
    result = MGIsDeviceOfType();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

+ (double)_determinDefaultEntryDisplayOnBudget
{
  v9 = *MEMORY[0x277D85DE8];
  if (+[TAFilterVisitsSettings _isLegacyHardware])
  {
    v2 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&dword_26F2E2000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAFilterVisits using special parameters for entry display-on budget for legacy hardware}", v6, 0x12u);
    }

    v3 = 240.0;
  }

  else
  {
    v3 = 120.0;
  }

  result = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (double)_determinDefaultExitDisplayOnBudget
{
  v9 = *MEMORY[0x277D85DE8];
  if (+[TAFilterVisitsSettings _isLegacyHardware])
  {
    v2 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&dword_26F2E2000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAFilterVisits using special parameters for exit display-on budget for legacy hardware}", v6, 0x12u);
    }

    v3 = 240.0;
  }

  else
  {
    v3 = 120.0;
  }

  result = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)sensitiveLOITypesToString
{
  v3 = [MEMORY[0x277CBEB18] array];
  sensitiveLOITypes = self->_sensitiveLOITypes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__TAFilterVisitsSettings_sensitiveLOITypesToString__block_invoke;
  v8[3] = &unk_279DD1868;
  v9 = v3;
  v5 = v3;
  [(NSSet *)sensitiveLOITypes enumerateObjectsUsingBlock:v8];
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __51__TAFilterVisitsSettings_sensitiveLOITypesToString__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = TALocationOfInterestTypeToString([a2 unsignedIntegerValue]);
  [v2 addObject:v3];
}

@end