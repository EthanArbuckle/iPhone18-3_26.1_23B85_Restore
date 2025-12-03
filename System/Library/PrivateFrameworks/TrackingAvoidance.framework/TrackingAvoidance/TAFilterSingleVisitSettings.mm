@interface TAFilterSingleVisitSettings
+ (id)defaultSingleVisitEnabledLoiTypes;
- (TAFilterSingleVisitSettings)initWithDefaults;
- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDuration:(double)duration thresholdOfSignificantDistance:(double)distance filterVisitsSettings:(id)settings enabledLoiTypes:(id)types arrivingWorkImmediacyType:(unint64_t)type;
- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDurationOrDefault:(id)default thresholdOfSignificantDistanceOrDefault:(id)orDefault filterVisitsSettingsOrDefault:(id)settingsOrDefault enabledLoiTypesOrDefault:(id)typesOrDefault arrivingWorkImmediacyTypeOrDefault:(id)typeOrDefault;
- (id)enabledLoiTypesToString;
@end

@implementation TAFilterSingleVisitSettings

+ (id)defaultSingleVisitEnabledLoiTypes
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:1];
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:2];
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  return v5;
}

- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDuration:(double)duration thresholdOfSignificantDistance:(double)distance filterVisitsSettings:(id)settings enabledLoiTypes:(id)types arrivingWorkImmediacyType:(unint64_t)type
{
  v28 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  typesCopy = types;
  v25.receiver = self;
  v25.super_class = TAFilterSingleVisitSettings;
  v15 = [(TAFilterSingleVisitSettings *)&v25 init];
  v16 = v15;
  if (v15)
  {
    if (!settingsCopy)
    {
      v22 = 0;
      goto LABEL_7;
    }

    v15->_thresholdOfSignificantDuration = duration;
    v15->_thresholdOfSignificantDistance = distance;
    objc_storeStrong(&v15->_visitsSettings, settings);
    v17 = [typesCopy copy];
    enabledLoiTypes = v16->_enabledLoiTypes;
    v16->_enabledLoiTypes = v17;

    v16->_arrivingWorkImmediacyType = type;
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      enabledLoiTypesToString = [(TAFilterSingleVisitSettings *)v16 enabledLoiTypesToString];
      *buf = 138477827;
      v27 = enabledLoiTypesToString;
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "#TAFilterSingleVisit enabled LOI types: %{private}@", buf, 0xCu);
    }
  }

  v22 = v16;
LABEL_7:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDurationOrDefault:(id)default thresholdOfSignificantDistanceOrDefault:(id)orDefault filterVisitsSettingsOrDefault:(id)settingsOrDefault enabledLoiTypesOrDefault:(id)typesOrDefault arrivingWorkImmediacyTypeOrDefault:(id)typeOrDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  settingsOrDefaultCopy = settingsOrDefault;
  typesOrDefaultCopy = typesOrDefault;
  typeOrDefaultCopy = typeOrDefault;
  if (defaultCopy)
  {
    [defaultCopy doubleValue];
    v18 = v17;
    if (orDefaultCopy)
    {
LABEL_3:
      [orDefaultCopy doubleValue];
      v20 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 300.0;
    if (orDefaultCopy)
    {
      goto LABEL_3;
    }
  }

  v20 = 420.0;
LABEL_6:
  initWithDefaults = settingsOrDefaultCopy;
  if (!settingsOrDefaultCopy)
  {
    initWithDefaults = [[TAFilterVisitsSettings alloc] initWithDefaults];
  }

  v22 = typesOrDefaultCopy;
  if (typesOrDefaultCopy)
  {
    if (typeOrDefaultCopy)
    {
LABEL_10:
      unsignedIntValue = [typeOrDefaultCopy unsignedIntValue];
      goto LABEL_13;
    }
  }

  else
  {
    v22 = +[TAFilterSingleVisitSettings defaultSingleVisitEnabledLoiTypes];
    if (typeOrDefaultCopy)
    {
      goto LABEL_10;
    }
  }

  unsignedIntValue = 3;
LABEL_13:
  v24 = [(TAFilterSingleVisitSettings *)self initWithThresholdOfSignificantDuration:initWithDefaults thresholdOfSignificantDistance:v22 filterVisitsSettings:unsignedIntValue enabledLoiTypes:v18 arrivingWorkImmediacyType:v20];
  if (!typesOrDefaultCopy)
  {

    if (settingsOrDefaultCopy)
    {
      goto LABEL_15;
    }

LABEL_17:

    goto LABEL_15;
  }

  if (!settingsOrDefaultCopy)
  {
    goto LABEL_17;
  }

LABEL_15:

  return v24;
}

- (TAFilterSingleVisitSettings)initWithDefaults
{
  initWithDefaults = [[TAFilterVisitsSettings alloc] initWithDefaults];
  v4 = +[TAFilterSingleVisitSettings defaultSingleVisitEnabledLoiTypes];
  v5 = [(TAFilterSingleVisitSettings *)self initWithThresholdOfSignificantDuration:initWithDefaults thresholdOfSignificantDistance:v4 filterVisitsSettings:3 enabledLoiTypes:300.0 arrivingWorkImmediacyType:420.0];

  return v5;
}

- (id)enabledLoiTypesToString
{
  array = [MEMORY[0x277CBEB18] array];
  enabledLoiTypes = self->_enabledLoiTypes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__TAFilterSingleVisitSettings_enabledLoiTypesToString__block_invoke;
  v8[3] = &unk_279DD1868;
  v9 = array;
  v5 = array;
  [(NSSet *)enabledLoiTypes enumerateObjectsUsingBlock:v8];
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __54__TAFilterSingleVisitSettings_enabledLoiTypesToString__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = TALocationOfInterestTypeToString([a2 unsignedIntegerValue]);
  [v2 addObject:v3];
}

@end