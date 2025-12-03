@interface TAFilterVisitsSettings
+ (BOOL)_isLegacyHardware;
+ (double)_determinDefaultEntryDisplayOnBudget;
+ (double)_determinDefaultExitDisplayOnBudget;
+ (id)defaultVisitsSensitiveLOITypes;
- (TAFilterVisitsSettings)initWithDefaults;
- (TAFilterVisitsSettings)initWithMaxSuspiciousDuration:(double)duration minInterVisitDistance:(double)distance minNSigmaBetweenVisits:(unint64_t)visits entryDisplayOnBudget:(double)budget exitDisplayOnBudget:(double)onBudget sensitiveLOITypes:(id)types minObservationInterval:(double)interval threeVisitImmediacyType:(unint64_t)self0;
- (TAFilterVisitsSettings)initWithMaxSuspiciousDurationOrDefault:(id)default minInterVisitDistanceOrDefault:(id)orDefault minNSigmaBetweenVisitsOrDefault:(id)visitsOrDefault entryDisplayOnBudgetOrDefault:(id)budgetOrDefault exitDisplayOnBudgetOrDefault:(id)onBudgetOrDefault sensitiveLOITypesOrDefault:(id)typesOrDefault minObservationIntervalOrDefault:(id)intervalOrDefault threeVisitImmediacyTypeOrDefault:(id)self0;
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

- (TAFilterVisitsSettings)initWithMaxSuspiciousDuration:(double)duration minInterVisitDistance:(double)distance minNSigmaBetweenVisits:(unint64_t)visits entryDisplayOnBudget:(double)budget exitDisplayOnBudget:(double)onBudget sensitiveLOITypes:(id)types minObservationInterval:(double)interval threeVisitImmediacyType:(unint64_t)self0
{
  typesCopy = types;
  v24.receiver = self;
  v24.super_class = TAFilterVisitsSettings;
  v19 = [(TAFilterVisitsSettings *)&v24 init];
  v20 = v19;
  if (v19)
  {
    v19->_maxSuspiciousDuration = duration;
    v19->_minInterVisitDistance = distance;
    v19->_minNSigmaBetweenVisits = visits;
    v19->_entryDisplayOnBudget = budget;
    v19->_exitDisplayOnBudget = onBudget;
    v21 = [typesCopy copy];
    sensitiveLOITypes = v20->_sensitiveLOITypes;
    v20->_sensitiveLOITypes = v21;

    v20->_minObservationInterval = interval;
    v20->_threeVisitImmediacyType = type;
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

- (TAFilterVisitsSettings)initWithMaxSuspiciousDurationOrDefault:(id)default minInterVisitDistanceOrDefault:(id)orDefault minNSigmaBetweenVisitsOrDefault:(id)visitsOrDefault entryDisplayOnBudgetOrDefault:(id)budgetOrDefault exitDisplayOnBudgetOrDefault:(id)onBudgetOrDefault sensitiveLOITypesOrDefault:(id)typesOrDefault minObservationIntervalOrDefault:(id)intervalOrDefault threeVisitImmediacyTypeOrDefault:(id)self0
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  visitsOrDefaultCopy = visitsOrDefault;
  budgetOrDefaultCopy = budgetOrDefault;
  onBudgetOrDefaultCopy = onBudgetOrDefault;
  typesOrDefaultCopy = typesOrDefault;
  intervalOrDefaultCopy = intervalOrDefault;
  typeOrDefaultCopy = typeOrDefault;
  if (defaultCopy)
  {
    [defaultCopy doubleValue];
    v24 = v23;
    if (orDefaultCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = 100.0;
    if (visitsOrDefaultCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v24 = 300.0;
  if (!orDefaultCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  [orDefaultCopy doubleValue];
  v26 = v25;
  if (visitsOrDefaultCopy)
  {
LABEL_4:
    unsignedIntValue = [visitsOrDefaultCopy unsignedIntValue];
    goto LABEL_8;
  }

LABEL_7:
  unsignedIntValue = 2;
LABEL_8:
  v38 = unsignedIntValue;
  if (budgetOrDefaultCopy)
  {
    [budgetOrDefaultCopy doubleValue];
  }

  else
  {
    +[TAFilterVisitsSettings _determinDefaultEntryDisplayOnBudget];
  }

  v29 = v28;
  if (onBudgetOrDefaultCopy)
  {
    [onBudgetOrDefaultCopy doubleValue];
  }

  else
  {
    +[TAFilterVisitsSettings _determinDefaultExitDisplayOnBudget];
  }

  v31 = v30;
  v32 = typesOrDefaultCopy;
  if (typesOrDefaultCopy)
  {
    if (intervalOrDefaultCopy)
    {
      goto LABEL_16;
    }

LABEL_19:
    v34 = 300.0;
    if (typeOrDefaultCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  v32 = +[TAFilterVisitsSettings defaultVisitsSensitiveLOITypes];
  if (!intervalOrDefaultCopy)
  {
    goto LABEL_19;
  }

LABEL_16:
  [intervalOrDefaultCopy doubleValue];
  v34 = v33;
  if (typeOrDefaultCopy)
  {
LABEL_17:
    unsignedIntValue2 = [typeOrDefaultCopy unsignedIntValue];
    goto LABEL_21;
  }

LABEL_20:
  unsignedIntValue2 = 3;
LABEL_21:
  v36 = [(TAFilterVisitsSettings *)self initWithMaxSuspiciousDuration:v38 minInterVisitDistance:v32 minNSigmaBetweenVisits:unsignedIntValue2 entryDisplayOnBudget:v24 exitDisplayOnBudget:v26 sensitiveLOITypes:v29 minObservationInterval:v31 threeVisitImmediacyType:v34, v38];
  if (!typesOrDefaultCopy)
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
  array = [MEMORY[0x277CBEB18] array];
  sensitiveLOITypes = self->_sensitiveLOITypes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__TAFilterVisitsSettings_sensitiveLOITypesToString__block_invoke;
  v8[3] = &unk_279DD1868;
  v9 = array;
  v5 = array;
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