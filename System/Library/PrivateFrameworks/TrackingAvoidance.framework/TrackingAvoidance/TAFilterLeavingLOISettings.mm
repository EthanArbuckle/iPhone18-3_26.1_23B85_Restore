@interface TAFilterLeavingLOISettings
+ (id)defaultLeavingLOIEnabledLoiTypes;
- (TAFilterLeavingLOISettings)initWithDefaults;
- (TAFilterLeavingLOISettings)initWithThresholdOfSignificantDuration:(double)duration thresholdOfSignificantDistance:(double)distance filterVisitsSettings:(id)settings enabledLoiTypes:(id)types leavingHomeImmediacyType:(unint64_t)type leavingWorkImmediacyType:(unint64_t)immediacyType;
- (TAFilterLeavingLOISettings)initWithThresholdOfSignificantDurationOrDefault:(id)default thresholdOfSignificantDistanceOrDefault:(id)orDefault filterVisitsSettingsOrDefault:(id)settingsOrDefault enabledLoiTypesOrDefault:(id)typesOrDefault leavingHomeImmediacyTypeOrDefault:(id)typeOrDefault leavingWorkImmediacyTypeOrDefault:(id)immediacyTypeOrDefault;
- (id)enabledLoiTypesToString;
@end

@implementation TAFilterLeavingLOISettings

+ (id)defaultLeavingLOIEnabledLoiTypes
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:1];
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:2];
  v5 = [v2 initWithObjects:{v3, v4, 0}];

  return v5;
}

- (TAFilterLeavingLOISettings)initWithThresholdOfSignificantDuration:(double)duration thresholdOfSignificantDistance:(double)distance filterVisitsSettings:(id)settings enabledLoiTypes:(id)types leavingHomeImmediacyType:(unint64_t)type leavingWorkImmediacyType:(unint64_t)immediacyType
{
  v30 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  typesCopy = types;
  v27.receiver = self;
  v27.super_class = TAFilterLeavingLOISettings;
  v17 = [(TAFilterLeavingLOISettings *)&v27 init];
  v18 = v17;
  if (v17)
  {
    if (!settingsCopy)
    {
      v24 = 0;
      goto LABEL_7;
    }

    v17->_thresholdOfSignificantDuration = duration;
    v17->_thresholdOfSignificantDistance = distance;
    objc_storeStrong(&v17->_visitsSettings, settings);
    v19 = [typesCopy copy];
    enabledLoiTypes = v18->_enabledLoiTypes;
    v18->_enabledLoiTypes = v19;

    v18->_leavingHomeImmediacyType = type;
    v18->_leavingWorkImmediacyType = immediacyType;
    v21 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      enabledLoiTypesToString = [(TAFilterLeavingLOISettings *)v18 enabledLoiTypesToString];
      *buf = 138477827;
      v29 = enabledLoiTypesToString;
      _os_log_impl(&dword_26F2E2000, v22, OS_LOG_TYPE_DEFAULT, "#TAFilterLeavingLOI enabled LOI types: %{private}@", buf, 0xCu);
    }
  }

  v24 = v18;
LABEL_7:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (TAFilterLeavingLOISettings)initWithThresholdOfSignificantDurationOrDefault:(id)default thresholdOfSignificantDistanceOrDefault:(id)orDefault filterVisitsSettingsOrDefault:(id)settingsOrDefault enabledLoiTypesOrDefault:(id)typesOrDefault leavingHomeImmediacyTypeOrDefault:(id)typeOrDefault leavingWorkImmediacyTypeOrDefault:(id)immediacyTypeOrDefault
{
  defaultCopy = default;
  orDefaultCopy = orDefault;
  settingsOrDefaultCopy = settingsOrDefault;
  typesOrDefaultCopy = typesOrDefault;
  typeOrDefaultCopy = typeOrDefault;
  immediacyTypeOrDefaultCopy = immediacyTypeOrDefault;
  if (defaultCopy)
  {
    [defaultCopy doubleValue];
    v21 = v20;
    if (orDefaultCopy)
    {
LABEL_3:
      [orDefaultCopy doubleValue];
      v23 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 300.0;
    if (orDefaultCopy)
    {
      goto LABEL_3;
    }
  }

  v23 = 420.0;
LABEL_6:
  initWithDefaults = settingsOrDefaultCopy;
  if (!settingsOrDefaultCopy)
  {
    initWithDefaults = [[TAFilterVisitsSettings alloc] initWithDefaults];
  }

  v25 = typesOrDefaultCopy;
  if (typesOrDefaultCopy)
  {
    if (typeOrDefaultCopy)
    {
      goto LABEL_10;
    }

LABEL_13:
    unsignedIntValue = 3;
    if (immediacyTypeOrDefaultCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v25 = +[TAFilterLeavingLOISettings defaultLeavingLOIEnabledLoiTypes];
  if (!typeOrDefaultCopy)
  {
    goto LABEL_13;
  }

LABEL_10:
  unsignedIntValue = [typeOrDefaultCopy unsignedIntValue];
  if (immediacyTypeOrDefaultCopy)
  {
LABEL_11:
    unsignedIntValue2 = [immediacyTypeOrDefaultCopy unsignedIntValue];
    goto LABEL_15;
  }

LABEL_14:
  unsignedIntValue2 = 3;
LABEL_15:
  v28 = [(TAFilterLeavingLOISettings *)self initWithThresholdOfSignificantDuration:initWithDefaults thresholdOfSignificantDistance:v25 filterVisitsSettings:unsignedIntValue enabledLoiTypes:unsignedIntValue2 leavingHomeImmediacyType:v21 leavingWorkImmediacyType:v23];
  if (!typesOrDefaultCopy)
  {

    if (settingsOrDefaultCopy)
    {
      goto LABEL_17;
    }

LABEL_19:

    goto LABEL_17;
  }

  if (!settingsOrDefaultCopy)
  {
    goto LABEL_19;
  }

LABEL_17:

  return v28;
}

- (TAFilterLeavingLOISettings)initWithDefaults
{
  initWithDefaults = [[TAFilterVisitsSettings alloc] initWithDefaults];
  v4 = +[TAFilterLeavingLOISettings defaultLeavingLOIEnabledLoiTypes];
  v5 = [(TAFilterLeavingLOISettings *)self initWithThresholdOfSignificantDuration:initWithDefaults thresholdOfSignificantDistance:v4 filterVisitsSettings:3 enabledLoiTypes:3 leavingHomeImmediacyType:300.0 leavingWorkImmediacyType:420.0];

  return v5;
}

- (id)enabledLoiTypesToString
{
  array = [MEMORY[0x277CBEB18] array];
  enabledLoiTypes = self->_enabledLoiTypes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__TAFilterLeavingLOISettings_enabledLoiTypesToString__block_invoke;
  v8[3] = &unk_279DD1868;
  v9 = array;
  v5 = array;
  [(NSSet *)enabledLoiTypes enumerateObjectsUsingBlock:v8];
  v6 = [v5 componentsJoinedByString:{@", "}];

  return v6;
}

void __53__TAFilterLeavingLOISettings_enabledLoiTypesToString__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = TALocationOfInterestTypeToString([a2 unsignedIntegerValue]);
  [v2 addObject:v3];
}

@end