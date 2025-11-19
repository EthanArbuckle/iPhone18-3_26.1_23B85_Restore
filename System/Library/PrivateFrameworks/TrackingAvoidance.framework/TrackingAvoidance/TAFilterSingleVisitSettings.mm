@interface TAFilterSingleVisitSettings
+ (id)defaultSingleVisitEnabledLoiTypes;
- (TAFilterSingleVisitSettings)initWithDefaults;
- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDuration:(double)a3 thresholdOfSignificantDistance:(double)a4 filterVisitsSettings:(id)a5 enabledLoiTypes:(id)a6 arrivingWorkImmediacyType:(unint64_t)a7;
- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDurationOrDefault:(id)a3 thresholdOfSignificantDistanceOrDefault:(id)a4 filterVisitsSettingsOrDefault:(id)a5 enabledLoiTypesOrDefault:(id)a6 arrivingWorkImmediacyTypeOrDefault:(id)a7;
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

- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDuration:(double)a3 thresholdOfSignificantDistance:(double)a4 filterVisitsSettings:(id)a5 enabledLoiTypes:(id)a6 arrivingWorkImmediacyType:(unint64_t)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = TAFilterSingleVisitSettings;
  v15 = [(TAFilterSingleVisitSettings *)&v25 init];
  v16 = v15;
  if (v15)
  {
    if (!v13)
    {
      v22 = 0;
      goto LABEL_7;
    }

    v15->_thresholdOfSignificantDuration = a3;
    v15->_thresholdOfSignificantDistance = a4;
    objc_storeStrong(&v15->_visitsSettings, a5);
    v17 = [v14 copy];
    enabledLoiTypes = v16->_enabledLoiTypes;
    v16->_enabledLoiTypes = v17;

    v16->_arrivingWorkImmediacyType = a7;
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [(TAFilterSingleVisitSettings *)v16 enabledLoiTypesToString];
      *buf = 138477827;
      v27 = v21;
      _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEFAULT, "#TAFilterSingleVisit enabled LOI types: %{private}@", buf, 0xCu);
    }
  }

  v22 = v16;
LABEL_7:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (TAFilterSingleVisitSettings)initWithThresholdOfSignificantDurationOrDefault:(id)a3 thresholdOfSignificantDistanceOrDefault:(id)a4 filterVisitsSettingsOrDefault:(id)a5 enabledLoiTypesOrDefault:(id)a6 arrivingWorkImmediacyTypeOrDefault:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v12)
  {
    [v12 doubleValue];
    v18 = v17;
    if (v13)
    {
LABEL_3:
      [v13 doubleValue];
      v20 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v18 = 300.0;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v20 = 420.0;
LABEL_6:
  v21 = v14;
  if (!v14)
  {
    v21 = [[TAFilterVisitsSettings alloc] initWithDefaults];
  }

  v22 = v15;
  if (v15)
  {
    if (v16)
    {
LABEL_10:
      v23 = [v16 unsignedIntValue];
      goto LABEL_13;
    }
  }

  else
  {
    v22 = +[TAFilterSingleVisitSettings defaultSingleVisitEnabledLoiTypes];
    if (v16)
    {
      goto LABEL_10;
    }
  }

  v23 = 3;
LABEL_13:
  v24 = [(TAFilterSingleVisitSettings *)self initWithThresholdOfSignificantDuration:v21 thresholdOfSignificantDistance:v22 filterVisitsSettings:v23 enabledLoiTypes:v18 arrivingWorkImmediacyType:v20];
  if (!v15)
  {

    if (v14)
    {
      goto LABEL_15;
    }

LABEL_17:

    goto LABEL_15;
  }

  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_15:

  return v24;
}

- (TAFilterSingleVisitSettings)initWithDefaults
{
  v3 = [[TAFilterVisitsSettings alloc] initWithDefaults];
  v4 = +[TAFilterSingleVisitSettings defaultSingleVisitEnabledLoiTypes];
  v5 = [(TAFilterSingleVisitSettings *)self initWithThresholdOfSignificantDuration:v3 thresholdOfSignificantDistance:v4 filterVisitsSettings:3 enabledLoiTypes:300.0 arrivingWorkImmediacyType:420.0];

  return v5;
}

- (id)enabledLoiTypesToString
{
  v3 = [MEMORY[0x277CBEB18] array];
  enabledLoiTypes = self->_enabledLoiTypes;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__TAFilterSingleVisitSettings_enabledLoiTypesToString__block_invoke;
  v8[3] = &unk_279DD1868;
  v9 = v3;
  v5 = v3;
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