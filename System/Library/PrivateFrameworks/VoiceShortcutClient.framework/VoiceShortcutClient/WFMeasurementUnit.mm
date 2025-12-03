@interface WFMeasurementUnit
+ (BOOL)usesMetricSystemForUnitType:(id)type;
+ (Class)unitClassForUnitType:(id)type;
+ (id)availableUnitTypes;
+ (id)availableUnitsForUnitType:(id)type;
+ (id)defaultUnitForUnitType:(id)type;
+ (id)linkValueTypeFromWorkflowUnitType:(id)type;
+ (id)localizedStringForUnitType:(id)type;
+ (id)unitFromString:(id)string unitType:(id)type caseSensitive:(BOOL)sensitive;
+ (id)unitTypeForUnitClass:(Class)class;
+ (id)unitTypeFromIntentSlotValueType:(int64_t)type;
+ (id)unitTypeFromLinkMeasurementUnitType:(int64_t)type;
+ (id)unitTypeMap;
+ (int64_t)linkMeasurementUnitTypeFromWorkflowUnitType:(id)type;
@end

@implementation WFMeasurementUnit

+ (id)linkValueTypeFromWorkflowUnitType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy == @"Length")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] lengthValueType];
  }

  else if (typeCopy == @"Mass")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] massValueType];
  }

  else if (typeCopy == @"Temperature")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] temperatureValueType];
  }

  else if (typeCopy == @"Volume")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] volumeValueType];
  }

  else if (typeCopy == @"Speed")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] speedValueType];
  }

  else if (typeCopy == @"Energy")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] energyValueType];
  }

  else if (typeCopy == @"Duration")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] durationValueType];
  }

  else if (typeCopy == @"Acceleration")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] accelerationValueType];
  }

  else if (typeCopy == @"Angle")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] angleValueType];
  }

  else if (typeCopy == @"Area")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] areaValueType];
  }

  else if (typeCopy == @"Concentration Mass")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] concentrationMassValueType];
  }

  else if (typeCopy == @"Dispersion")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] dispersionValueType];
  }

  else if (typeCopy == @"Electric Charge")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricChargeValueType];
  }

  else if (typeCopy == @"Electric Current")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricCurrentValueType];
  }

  else if (typeCopy == @"Electric Potential Difference")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricPotentialDifferenceValueType];
  }

  else if (typeCopy == @"Electric Resistance")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] electricResistanceValueType];
  }

  else if (typeCopy == @"Frequency")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] frequencyValueType];
  }

  else if (typeCopy == @"Fuel Efficiency")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] fuelEfficiencyValueType];
  }

  else if (typeCopy == @"Illuminance")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] illuminanceValueType];
  }

  else if (typeCopy == @"Information Storage")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] informationStorageValueType];
  }

  else if (typeCopy == @"Power")
  {
    lengthValueType = [MEMORY[0x1E69AC8A8] powerValueType];
  }

  else
  {
    if (typeCopy == @"Pressure")
    {
      [MEMORY[0x1E69AC8A8] pressureValueType];
    }

    else
    {
      [MEMORY[0x1E69AC8A8] unsupportedMeasurementValueType];
    }
    lengthValueType = ;
  }

  v6 = lengthValueType;

  return v6;
}

+ (int64_t)linkMeasurementUnitTypeFromWorkflowUnitType:(id)type
{
  if (type == @"Length")
  {
    return 1;
  }

  if (type == @"Mass")
  {
    return 2;
  }

  if (type == @"Temperature")
  {
    return 3;
  }

  if (type == @"Volume")
  {
    return 4;
  }

  if (type == @"Speed")
  {
    return 5;
  }

  if (type == @"Energy")
  {
    return 6;
  }

  if (type == @"Duration")
  {
    return 7;
  }

  if (type == @"Acceleration")
  {
    return 8;
  }

  if (type == @"Angle")
  {
    return 9;
  }

  if (type == @"Area")
  {
    return 10;
  }

  if (type == @"Concentration Mass")
  {
    return 11;
  }

  if (type == @"Dispersion")
  {
    return 12;
  }

  if (type == @"Electric Charge")
  {
    return 13;
  }

  if (type == @"Electric Current")
  {
    return 14;
  }

  if (type == @"Electric Potential Difference")
  {
    return 15;
  }

  if (type == @"Electric Resistance")
  {
    return 16;
  }

  if (type == @"Frequency")
  {
    return 17;
  }

  if (type == @"Fuel Efficiency")
  {
    return 18;
  }

  if (type == @"Illuminance")
  {
    return 19;
  }

  if (type == @"Information Storage")
  {
    return 20;
  }

  if (type == @"Power")
  {
    return 21;
  }

  if (type == @"Pressure")
  {
    return 22;
  }

  return 0;
}

+ (id)unitTypeFromIntentSlotValueType:(int64_t)type
{
  v3 = @"Speed";
  v4 = @"Energy";
  if (type != 41)
  {
    v4 = 0;
  }

  if (type != 40)
  {
    v3 = v4;
  }

  v5 = @"Mass";
  v6 = @"Volume";
  if (type != 39)
  {
    v6 = 0;
  }

  if (type != 38)
  {
    v5 = v6;
  }

  if (type <= 39)
  {
    v3 = v5;
  }

  v7 = @"Temperature";
  if ((type - 32) >= 2)
  {
    v7 = 0;
  }

  if ((type - 19) >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Length";
  }

  if (type <= 37)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

+ (id)unitTypeFromLinkMeasurementUnitType:(int64_t)type
{
  if ((type - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B009F0 + type - 1);
  }
}

+ (id)unitFromString:(id)string unitType:(id)type caseSensitive:(BOOL)sensitive
{
  v35 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  typeCopy = type;
  if ([stringCopy length])
  {
    v10 = [stringCopy stringByReplacingOccurrencesOfString:@"m3" withString:@"m³"];

    v11 = objc_alloc_init(MEMORY[0x1E696AD30]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFMeasurementUnit_unitFromString_unitType_caseSensitive___block_invoke;
    aBlock[3] = &unk_1E7B009D0;
    selfCopy = self;
    v12 = v11;
    v30 = v12;
    stringCopy = v10;
    v31 = stringCopy;
    sensitiveCopy = sensitive;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (typeCopy)
    {
      v15 = (*(v13 + 2))(v13, typeCopy);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      unitTypeMap = [self unitTypeMap];
      allKeys = [unitTypeMap allKeys];

      v18 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v26;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v26 != v20)
            {
              objc_enumerationMutation(allKeys);
            }

            v22 = v14[2](v14, *(*(&v25 + 1) + 8 * i));
            if (v22)
            {
              v15 = v22;
              goto LABEL_15;
            }
          }

          v19 = [allKeys countByEnumeratingWithState:&v25 objects:v34 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v15 = 0;
LABEL_15:
    }
  }

  else
  {
    v15 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

id __59__WFMeasurementUnit_unitFromString_unitType_caseSensitive___block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  [*(a1 + 48) availableUnitsForUnitType:a2];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [*(a1 + 32) stringFromUnit:{v8, v15}];
        if (![*(a1 + 40) compare:v9 options:*(a1 + 56) ^ 1] || (v10 = *(a1 + 40), objc_msgSend(v8, "symbol"), v11 = objc_claimAutoreleasedReturnValue(), LOBYTE(v10) = objc_msgSend(v10, "isEqualToString:", v11), v11, (v10 & 1) != 0))
        {
          v12 = v8;

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)defaultUnitForUnitType:(id)type
{
  v75 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = defaultUnitForUnitType__unitDefaultsMap;
  if (!defaultUnitForUnitType__unitDefaultsMap)
  {
    v6 = [self usesMetricSystemForUnitType:typeCopy];
    v34[0] = @"Acceleration";
    if (v6)
    {
      [MEMORY[0x1E696AFD8] metersPerSecondSquared];
    }

    else
    {
      [MEMORY[0x1E696AFD8] gravity];
    }
    v33 = ;
    v54[0] = v33;
    v34[1] = @"Angle";
    degrees = [MEMORY[0x1E696AFE0] degrees];
    v54[1] = degrees;
    v34[2] = @"Area";
    if (v6)
    {
      squareMeters = [MEMORY[0x1E696AFE8] squareMeters];
      v55 = squareMeters;
      v35 = @"Concentration Mass";
      [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
    }

    else
    {
      squareMeters = [MEMORY[0x1E696AFE8] squareFeet];
      v55 = squareMeters;
      v35 = @"Concentration Mass";
      [MEMORY[0x1E696AFF0] gramsPerLiter];
    }
    v30 = ;
    v56 = v30;
    v36 = @"Dispersion";
    partsPerMillion = [MEMORY[0x1E696B000] partsPerMillion];
    v57 = partsPerMillion;
    v37 = @"Duration";
    minutes = [MEMORY[0x1E696B008] minutes];
    v58 = minutes;
    v38 = @"Electric Charge";
    ampereHours = [MEMORY[0x1E696B010] ampereHours];
    v59 = ampereHours;
    v39 = @"Electric Current";
    amperes = [MEMORY[0x1E696B018] amperes];
    v60 = amperes;
    v40 = @"Electric Potential Difference";
    volts = [MEMORY[0x1E696B020] volts];
    v61 = volts;
    v41 = @"Electric Resistance";
    ohms = [MEMORY[0x1E696B028] ohms];
    v62 = ohms;
    v42 = @"Energy";
    joules = [MEMORY[0x1E696B030] joules];
    v63 = joules;
    v43 = @"Frequency";
    hertz = [MEMORY[0x1E696B038] hertz];
    v64 = hertz;
    v44 = @"Fuel Efficiency";
    if (v6)
    {
      [MEMORY[0x1E696B040] litersPer100Kilometers];
    }

    else
    {
      [MEMORY[0x1E696B040] milesPerGallon];
    }
    v21 = ;
    v65 = v21;
    v45 = @"Illuminance";
    v20 = [MEMORY[0x1E696B048] lux];
    v66 = v20;
    v46 = @"Information Storage";
    megabytes = [MEMORY[0x1E696B050] megabytes];
    v67 = megabytes;
    v47 = @"Length";
    if (v6)
    {
      meters = [MEMORY[0x1E696B058] meters];
      v68 = meters;
      v48 = @"Mass";
      [MEMORY[0x1E696B060] grams];
    }

    else
    {
      meters = [MEMORY[0x1E696B058] feet];
      v68 = meters;
      v48 = @"Mass";
      [MEMORY[0x1E696B060] poundsMass];
    }
    v9 = ;
    v69 = v9;
    v49 = @"Power";
    watts = [MEMORY[0x1E696B068] watts];
    v70 = watts;
    v50 = @"Pressure";
    if (v6)
    {
      millibars = [MEMORY[0x1E696B070] millibars];
      v71 = millibars;
      v51 = @"Speed";
      kilometersPerHour = [MEMORY[0x1E696B078] kilometersPerHour];
      v72 = kilometersPerHour;
      v52 = @"Temperature";
      celsius = [MEMORY[0x1E696B080] celsius];
      v73 = celsius;
      v53 = @"Volume";
      [MEMORY[0x1E696B088] liters];
    }

    else
    {
      millibars = [MEMORY[0x1E696B070] inchesOfMercury];
      v71 = millibars;
      v51 = @"Speed";
      kilometersPerHour = [MEMORY[0x1E696B078] milesPerHour];
      v72 = kilometersPerHour;
      v52 = @"Temperature";
      celsius = [MEMORY[0x1E696B080] fahrenheit];
      v73 = celsius;
      v53 = @"Volume";
      [MEMORY[0x1E696B088] cups];
    }
    v14 = ;
    v74 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v34 count:22];
    v16 = defaultUnitForUnitType__unitDefaultsMap;
    defaultUnitForUnitType__unitDefaultsMap = v15;

    v5 = defaultUnitForUnitType__unitDefaultsMap;
  }

  v17 = [v5 objectForKey:typeCopy];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)usesMetricSystemForUnitType:(id)type
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];
  v6 = [countryCode isEqualToString:@"GB"];

  if (type == @"Length" && (v6 & 1) != 0)
  {
    usesMetricSystem = 0;
  }

  else
  {
    usesMetricSystem = [currentLocale usesMetricSystem];
  }

  return usesMetricSystem;
}

+ (id)availableUnitsForUnitType:(id)type
{
  v155[2] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Acceleration"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696AFD8] metersPerSecondSquared];
    v155[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696AFD8] gravity];
    v155[1] = gravity;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
LABEL_12:

    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Angle"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696AFE0] degrees];
    v154[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696AFE0] arcMinutes];
    v154[1] = gravity;
    arcSeconds = [MEMORY[0x1E696AFE0] arcSeconds];
    v154[2] = arcSeconds;
    radians = [MEMORY[0x1E696AFE0] radians];
    v154[3] = radians;
    gradians = [MEMORY[0x1E696AFE0] gradians];
    v154[4] = gradians;
    revolutions = [MEMORY[0x1E696AFE0] revolutions];
    v154[5] = revolutions;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:6];

LABEL_11:
    goto LABEL_12;
  }

  if ([typeCopy isEqualToString:@"Area"])
  {
    squareMegameters = [MEMORY[0x1E696AFE8] squareMegameters];
    v153[0] = squareMegameters;
    squareKilometers = [MEMORY[0x1E696AFE8] squareKilometers];
    v153[1] = squareKilometers;
    squareMeters = [MEMORY[0x1E696AFE8] squareMeters];
    v153[2] = squareMeters;
    squareCentimeters = [MEMORY[0x1E696AFE8] squareCentimeters];
    v153[3] = squareCentimeters;
    squareMillimeters = [MEMORY[0x1E696AFE8] squareMillimeters];
    v153[4] = squareMillimeters;
    squareMicrometers = [MEMORY[0x1E696AFE8] squareMicrometers];
    v153[5] = squareMicrometers;
    [MEMORY[0x1E696AFE8] squareNanometers];
    v12 = v131 = typeCopy;
    v153[6] = v12;
    squareInches = [MEMORY[0x1E696AFE8] squareInches];
    v153[7] = squareInches;
    squareFeet = [MEMORY[0x1E696AFE8] squareFeet];
    v153[8] = squareFeet;
    squareYards = [MEMORY[0x1E696AFE8] squareYards];
    v153[9] = squareYards;
    squareMiles = [MEMORY[0x1E696AFE8] squareMiles];
    v153[10] = squareMiles;
    acres = [MEMORY[0x1E696AFE8] acres];
    v153[11] = acres;
    ares = [MEMORY[0x1E696AFE8] ares];
    v153[12] = ares;
    hectares = [MEMORY[0x1E696AFE8] hectares];
    v153[13] = hectares;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:14];

    metersPerSecondSquared = squareMegameters;
    typeCopy = v131;

    v20 = squareKilometers;
LABEL_7:

LABEL_13:
    goto LABEL_14;
  }

  if ([typeCopy isEqualToString:@"Concentration Mass"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696AFF0] gramsPerLiter];
    v152[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
    v152[1] = gravity;
    arcSeconds = [MEMORY[0x1E696AFF0] wf_microgramsPerCubicMeter];
    v152[2] = arcSeconds;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v152;
LABEL_10:
    v6 = [v21 arrayWithObjects:v22 count:3];
    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"Dispersion"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B000] partsPerMillion];
    v151 = metersPerSecondSquared;
    v25 = MEMORY[0x1E695DEC8];
    v26 = &v151;
LABEL_19:
    v6 = [v25 arrayWithObjects:v26 count:1];
    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Duration"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B008] milliseconds];
    v150[0] = metersPerSecondSquared;
    microseconds = [MEMORY[0x1E696B008] microseconds];
    v150[1] = microseconds;
    nanoseconds = [MEMORY[0x1E696B008] nanoseconds];
    v150[2] = nanoseconds;
    picoseconds = [MEMORY[0x1E696B008] picoseconds];
    v150[3] = picoseconds;
    seconds = [MEMORY[0x1E696B008] seconds];
    v150[4] = seconds;
    minutes = [MEMORY[0x1E696B008] minutes];
    v150[5] = minutes;
    hours = [MEMORY[0x1E696B008] hours];
    v150[6] = hours;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:7];

    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Electric Charge"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B010] coulombs];
    v149[0] = metersPerSecondSquared;
    megaampereHours = [MEMORY[0x1E696B010] megaampereHours];
    v149[1] = megaampereHours;
    kiloampereHours = [MEMORY[0x1E696B010] kiloampereHours];
    v149[2] = kiloampereHours;
    ampereHours = [MEMORY[0x1E696B010] ampereHours];
    v149[3] = ampereHours;
    milliampereHours = [MEMORY[0x1E696B010] milliampereHours];
    v149[4] = milliampereHours;
    microampereHours = [MEMORY[0x1E696B010] microampereHours];
    v149[5] = microampereHours;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:6];

    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Electric Current"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B018] megaamperes];
    v148[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B018] kiloamperes];
    v148[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B018] amperes];
    v148[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B018] milliamperes];
    v148[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B018] microamperes];
    v148[4] = microamperes;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v148;
LABEL_32:
    v6 = [v40 arrayWithObjects:v41 count:5];

    goto LABEL_11;
  }

  if ([typeCopy isEqualToString:@"Electric Potential Difference"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B020] megavolts];
    v147[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B020] kilovolts];
    v147[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B020] volts];
    v147[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B020] millivolts];
    v147[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B020] microvolts];
    v147[4] = microamperes;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v147;
    goto LABEL_32;
  }

  if ([typeCopy isEqualToString:@"Electric Resistance"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B028] megaohms];
    v146[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B028] kiloohms];
    v146[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B028] ohms];
    v146[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B028] milliohms];
    v146[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B028] microohms];
    v146[4] = microamperes;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v146;
    goto LABEL_32;
  }

  if ([typeCopy isEqualToString:@"Energy"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B030] kilojoules];
    v145[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B030] joules];
    v145[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B030] kilocalories];
    v145[2] = arcSeconds;
    milliamperes = [MEMORY[0x1E696B030] calories];
    v145[3] = milliamperes;
    microamperes = [MEMORY[0x1E696B030] kilowattHours];
    v145[4] = microamperes;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v145;
    goto LABEL_32;
  }

  if ([typeCopy isEqualToString:@"Frequency"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B038] terahertz];
    v144[0] = metersPerSecondSquared;
    gigahertz = [MEMORY[0x1E696B038] gigahertz];
    v144[1] = gigahertz;
    megahertz = [MEMORY[0x1E696B038] megahertz];
    v144[2] = megahertz;
    kilohertz = [MEMORY[0x1E696B038] kilohertz];
    v144[3] = kilohertz;
    hertz = [MEMORY[0x1E696B038] hertz];
    v144[4] = hertz;
    millihertz = [MEMORY[0x1E696B038] millihertz];
    v144[5] = millihertz;
    microhertz = [MEMORY[0x1E696B038] microhertz];
    v144[6] = microhertz;
    nanohertz = [MEMORY[0x1E696B038] nanohertz];
    v144[7] = nanohertz;
    framesPerSecond = [MEMORY[0x1E696B038] framesPerSecond];
    v144[8] = framesPerSecond;
    v49 = MEMORY[0x1E695DEC8];
    v50 = v144;
LABEL_35:
    v6 = [v49 arrayWithObjects:v50 count:9];

    v20 = gigahertz;
    goto LABEL_7;
  }

  if ([typeCopy isEqualToString:@"Fuel Efficiency"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B040] litersPer100Kilometers];
    v143[0] = metersPerSecondSquared;
    gravity = [MEMORY[0x1E696B040] milesPerImperialGallon];
    v143[1] = gravity;
    arcSeconds = [MEMORY[0x1E696B040] milesPerGallon];
    v143[2] = arcSeconds;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v143;
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:@"Illuminance"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B048] lux];
    v142 = metersPerSecondSquared;
    v25 = MEMORY[0x1E695DEC8];
    v26 = &v142;
    goto LABEL_19;
  }

  if ([typeCopy isEqualToString:@"Information Storage"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B050] bytes];
    v141[0] = metersPerSecondSquared;
    gigahertz = [MEMORY[0x1E696B050] kilobytes];
    v141[1] = gigahertz;
    megahertz = [MEMORY[0x1E696B050] megabytes];
    v141[2] = megahertz;
    kilohertz = [MEMORY[0x1E696B050] gigabytes];
    v141[3] = kilohertz;
    hertz = [MEMORY[0x1E696B050] terabytes];
    v141[4] = hertz;
    millihertz = [MEMORY[0x1E696B050] petabytes];
    v141[5] = millihertz;
    microhertz = [MEMORY[0x1E696B050] exabytes];
    v141[6] = microhertz;
    nanohertz = [MEMORY[0x1E696B050] zettabytes];
    v141[7] = nanohertz;
    framesPerSecond = [MEMORY[0x1E696B050] yottabytes];
    v141[8] = framesPerSecond;
    v49 = MEMORY[0x1E695DEC8];
    v50 = v141;
    goto LABEL_35;
  }

  v133 = typeCopy;
  if ([typeCopy isEqualToString:@"Length"])
  {
    megameters = [MEMORY[0x1E696B058] megameters];
    v140[0] = megameters;
    kilometers = [MEMORY[0x1E696B058] kilometers];
    v140[1] = kilometers;
    hectometers = [MEMORY[0x1E696B058] hectometers];
    v140[2] = hectometers;
    decameters = [MEMORY[0x1E696B058] decameters];
    v140[3] = decameters;
    meters = [MEMORY[0x1E696B058] meters];
    v140[4] = meters;
    decimeters = [MEMORY[0x1E696B058] decimeters];
    v140[5] = decimeters;
    centimeters = [MEMORY[0x1E696B058] centimeters];
    v140[6] = centimeters;
    millimeters = [MEMORY[0x1E696B058] millimeters];
    v140[7] = millimeters;
    micrometers = [MEMORY[0x1E696B058] micrometers];
    v140[8] = micrometers;
    nanometers = [MEMORY[0x1E696B058] nanometers];
    v140[9] = nanometers;
    picometers = [MEMORY[0x1E696B058] picometers];
    v140[10] = picometers;
    inches = [MEMORY[0x1E696B058] inches];
    v140[11] = inches;
    feet = [MEMORY[0x1E696B058] feet];
    v140[12] = feet;
    yards = [MEMORY[0x1E696B058] yards];
    v140[13] = yards;
    miles = [MEMORY[0x1E696B058] miles];
    v140[14] = miles;
    scandinavianMiles = [MEMORY[0x1E696B058] scandinavianMiles];
    v140[15] = scandinavianMiles;
    lightyears = [MEMORY[0x1E696B058] lightyears];
    v140[16] = lightyears;
    nauticalMiles = [MEMORY[0x1E696B058] nauticalMiles];
    v140[17] = nauticalMiles;
    fathoms = [MEMORY[0x1E696B058] fathoms];
    v140[18] = fathoms;
    furlongs = [MEMORY[0x1E696B058] furlongs];
    v140[19] = furlongs;
    astronomicalUnits = [MEMORY[0x1E696B058] astronomicalUnits];
    v140[20] = astronomicalUnits;
    parsecs = [MEMORY[0x1E696B058] parsecs];
    v140[21] = parsecs;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:22];

    v6 = v60;
    metersPerSecondSquared = megameters;

LABEL_44:
LABEL_47:

    v70 = kilometers;
LABEL_48:

LABEL_49:
    typeCopy = v133;
    goto LABEL_13;
  }

  if ([typeCopy isEqualToString:@"Mass"])
  {
    kilograms = [MEMORY[0x1E696B060] kilograms];
    v139[0] = kilograms;
    kilometers = [MEMORY[0x1E696B060] grams];
    v139[1] = kilometers;
    hectometers = [MEMORY[0x1E696B060] decigrams];
    v139[2] = hectometers;
    decameters = [MEMORY[0x1E696B060] centigrams];
    v139[3] = decameters;
    meters = [MEMORY[0x1E696B060] milligrams];
    v139[4] = meters;
    decimeters = [MEMORY[0x1E696B060] micrograms];
    v139[5] = decimeters;
    centimeters = [MEMORY[0x1E696B060] nanograms];
    v139[6] = centimeters;
    picograms = [MEMORY[0x1E696B060] picograms];
    v139[7] = picograms;
    ounces = [MEMORY[0x1E696B060] ounces];
    v139[8] = ounces;
    poundsMass = [MEMORY[0x1E696B060] poundsMass];
    v139[9] = poundsMass;
    stones = [MEMORY[0x1E696B060] stones];
    v139[10] = stones;
    metricTons = [MEMORY[0x1E696B060] metricTons];
    v139[11] = metricTons;
    shortTons = [MEMORY[0x1E696B060] shortTons];
    v139[12] = shortTons;
    carats = [MEMORY[0x1E696B060] carats];
    v139[13] = carats;
    ouncesTroy = [MEMORY[0x1E696B060] ouncesTroy];
    v139[14] = ouncesTroy;
    slugs = [MEMORY[0x1E696B060] slugs];
    v139[15] = slugs;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:16];

    metersPerSecondSquared = kilograms;
    goto LABEL_47;
  }

  if ([typeCopy isEqualToString:@"Power"])
  {
    terawatts = [MEMORY[0x1E696B068] terawatts];
    v138[0] = terawatts;
    gigawatts = [MEMORY[0x1E696B068] gigawatts];
    v138[1] = gigawatts;
    megawatts = [MEMORY[0x1E696B068] megawatts];
    v138[2] = megawatts;
    kilowatts = [MEMORY[0x1E696B068] kilowatts];
    v138[3] = kilowatts;
    watts = [MEMORY[0x1E696B068] watts];
    v138[4] = watts;
    milliwatts = [MEMORY[0x1E696B068] milliwatts];
    v138[5] = milliwatts;
    microwatts = [MEMORY[0x1E696B068] microwatts];
    v138[6] = microwatts;
    nanowatts = [MEMORY[0x1E696B068] nanowatts];
    v138[7] = nanowatts;
    picowatts = [MEMORY[0x1E696B068] picowatts];
    v138[8] = picowatts;
    femtowatts = [MEMORY[0x1E696B068] femtowatts];
    v138[9] = femtowatts;
    horsepower = [MEMORY[0x1E696B068] horsepower];
    v138[10] = horsepower;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:11];

    metersPerSecondSquared = terawatts;
LABEL_54:
    v70 = gigawatts;
    goto LABEL_48;
  }

  if ([typeCopy isEqualToString:@"Pressure"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B070] newtonsPerMetersSquared];
    v137[0] = metersPerSecondSquared;
    gigawatts = [MEMORY[0x1E696B070] gigapascals];
    v137[1] = gigawatts;
    megapascals = [MEMORY[0x1E696B070] megapascals];
    v137[2] = megapascals;
    kilopascals = [MEMORY[0x1E696B070] kilopascals];
    v137[3] = kilopascals;
    hectopascals = [MEMORY[0x1E696B070] hectopascals];
    v137[4] = hectopascals;
    inchesOfMercury = [MEMORY[0x1E696B070] inchesOfMercury];
    v137[5] = inchesOfMercury;
    bars = [MEMORY[0x1E696B070] bars];
    v137[6] = bars;
    millibars = [MEMORY[0x1E696B070] millibars];
    v137[7] = millibars;
    millimetersOfMercury = [MEMORY[0x1E696B070] millimetersOfMercury];
    v137[8] = millimetersOfMercury;
    poundsForcePerSquareInch = [MEMORY[0x1E696B070] poundsForcePerSquareInch];
    v137[9] = poundsForcePerSquareInch;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:10];

    goto LABEL_54;
  }

  if ([typeCopy isEqualToString:@"Speed"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B078] metersPerSecond];
    v136[0] = metersPerSecondSquared;
    kilometersPerHour = [MEMORY[0x1E696B078] kilometersPerHour];
    v136[1] = kilometersPerHour;
    milesPerHour = [MEMORY[0x1E696B078] milesPerHour];
    v136[2] = milesPerHour;
    knots = [MEMORY[0x1E696B078] knots];
    v136[3] = knots;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:4];

LABEL_59:
    goto LABEL_49;
  }

  if ([typeCopy isEqualToString:@"Temperature"])
  {
    metersPerSecondSquared = [MEMORY[0x1E696B080] kelvin];
    v135[0] = metersPerSecondSquared;
    kilometersPerHour = [MEMORY[0x1E696B080] celsius];
    v135[1] = kilometersPerHour;
    milesPerHour = [MEMORY[0x1E696B080] fahrenheit];
    v135[2] = milesPerHour;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:3];
    goto LABEL_59;
  }

  if ([typeCopy isEqualToString:@"Volume"])
  {
    megaliters = [MEMORY[0x1E696B088] megaliters];
    v134[0] = megaliters;
    kilometers = [MEMORY[0x1E696B088] kiloliters];
    v134[1] = kilometers;
    hectometers = [MEMORY[0x1E696B088] liters];
    v134[2] = hectometers;
    decameters = [MEMORY[0x1E696B088] deciliters];
    v134[3] = decameters;
    meters = [MEMORY[0x1E696B088] centiliters];
    v134[4] = meters;
    decimeters = [MEMORY[0x1E696B088] milliliters];
    v134[5] = decimeters;
    centimeters = [MEMORY[0x1E696B088] cubicKilometers];
    v134[6] = centimeters;
    millimeters = [MEMORY[0x1E696B088] cubicMeters];
    v134[7] = millimeters;
    micrometers = [MEMORY[0x1E696B088] cubicDecimeters];
    v134[8] = micrometers;
    nanometers = [MEMORY[0x1E696B088] cubicCentimeters];
    v134[9] = nanometers;
    picometers = [MEMORY[0x1E696B088] cubicMillimeters];
    v134[10] = picometers;
    inches = [MEMORY[0x1E696B088] cubicInches];
    v134[11] = inches;
    feet = [MEMORY[0x1E696B088] cubicFeet];
    v134[12] = feet;
    cubicYards = [MEMORY[0x1E696B088] cubicYards];
    v134[13] = cubicYards;
    cubicMiles = [MEMORY[0x1E696B088] cubicMiles];
    v134[14] = cubicMiles;
    acreFeet = [MEMORY[0x1E696B088] acreFeet];
    v134[15] = acreFeet;
    bushels = [MEMORY[0x1E696B088] bushels];
    v134[16] = bushels;
    teaspoons = [MEMORY[0x1E696B088] teaspoons];
    v134[17] = teaspoons;
    tablespoons = [MEMORY[0x1E696B088] tablespoons];
    v134[18] = tablespoons;
    fluidOunces = [MEMORY[0x1E696B088] fluidOunces];
    v134[19] = fluidOunces;
    cups = [MEMORY[0x1E696B088] cups];
    v134[20] = cups;
    pints = [MEMORY[0x1E696B088] pints];
    v134[21] = pints;
    quarts = [MEMORY[0x1E696B088] quarts];
    v134[22] = quarts;
    gallons = [MEMORY[0x1E696B088] gallons];
    v134[23] = gallons;
    imperialTeaspoons = [MEMORY[0x1E696B088] imperialTeaspoons];
    v134[24] = imperialTeaspoons;
    imperialTablespoons = [MEMORY[0x1E696B088] imperialTablespoons];
    v134[25] = imperialTablespoons;
    imperialFluidOunces = [MEMORY[0x1E696B088] imperialFluidOunces];
    v134[26] = imperialFluidOunces;
    imperialPints = [MEMORY[0x1E696B088] imperialPints];
    v134[27] = imperialPints;
    imperialQuarts = [MEMORY[0x1E696B088] imperialQuarts];
    v134[28] = imperialQuarts;
    imperialGallons = [MEMORY[0x1E696B088] imperialGallons];
    v134[29] = imperialGallons;
    metricCups = [MEMORY[0x1E696B088] metricCups];
    v134[30] = metricCups;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:31];

    metersPerSecondSquared = megaliters;
    goto LABEL_44;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_14:

  v23 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)unitTypeMap
{
  if (unitTypeMap_onceToken != -1)
  {
    dispatch_once(&unitTypeMap_onceToken, &__block_literal_global_5470);
  }

  v3 = unitTypeMap_unitTypeMap;

  return v3;
}

void __32__WFMeasurementUnit_unitTypeMap__block_invoke()
{
  v4[22] = *MEMORY[0x1E69E9840];
  v3[0] = @"Acceleration";
  v4[0] = objc_opt_class();
  v3[1] = @"Angle";
  v4[1] = objc_opt_class();
  v3[2] = @"Area";
  v4[2] = objc_opt_class();
  v3[3] = @"Concentration Mass";
  v4[3] = objc_opt_class();
  v3[4] = @"Dispersion";
  v4[4] = objc_opt_class();
  v3[5] = @"Duration";
  v4[5] = objc_opt_class();
  v3[6] = @"Electric Charge";
  v4[6] = objc_opt_class();
  v3[7] = @"Electric Current";
  v4[7] = objc_opt_class();
  v3[8] = @"Electric Potential Difference";
  v4[8] = objc_opt_class();
  v3[9] = @"Electric Resistance";
  v4[9] = objc_opt_class();
  v3[10] = @"Energy";
  v4[10] = objc_opt_class();
  v3[11] = @"Frequency";
  v4[11] = objc_opt_class();
  v3[12] = @"Fuel Efficiency";
  v4[12] = objc_opt_class();
  v3[13] = @"Illuminance";
  v4[13] = objc_opt_class();
  v3[14] = @"Information Storage";
  v4[14] = objc_opt_class();
  v3[15] = @"Length";
  v4[15] = objc_opt_class();
  v3[16] = @"Mass";
  v4[16] = objc_opt_class();
  v3[17] = @"Power";
  v4[17] = objc_opt_class();
  v3[18] = @"Pressure";
  v4[18] = objc_opt_class();
  v3[19] = @"Speed";
  v4[19] = objc_opt_class();
  v3[20] = @"Temperature";
  v4[20] = objc_opt_class();
  v3[21] = @"Volume";
  v4[21] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:22];
  v1 = unitTypeMap_unitTypeMap;
  unitTypeMap_unitTypeMap = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)unitTypeForUnitClass:(Class)class
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5472;
  v12 = __Block_byref_object_dispose__5473;
  v13 = 0;
  unitTypeMap = [self unitTypeMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WFMeasurementUnit_unitTypeForUnitClass___block_invoke;
  v7[3] = &unk_1E7B009A8;
  v7[4] = &v8;
  v7[5] = class;
  [unitTypeMap enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __42__WFMeasurementUnit_unitTypeForUnitClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([*(a1 + 40) isSubclassOfClass:a3])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)localizedStringForUnitType:(id)type
{
  typeCopy = type;
  v4 = @"Acceleration";
  if ([typeCopy isEqualToString:@"Acceleration"])
  {
    goto LABEL_23;
  }

  v4 = @"Angle";
  if ([typeCopy isEqualToString:@"Angle"])
  {
    goto LABEL_23;
  }

  v4 = @"Area";
  if ([typeCopy isEqualToString:@"Area"])
  {
    goto LABEL_23;
  }

  v4 = @"Concentration Mass";
  if ([typeCopy isEqualToString:@"Concentration Mass"])
  {
    goto LABEL_23;
  }

  v4 = @"Dispersion";
  if ([typeCopy isEqualToString:@"Dispersion"])
  {
    goto LABEL_23;
  }

  v4 = @"Duration";
  if ([typeCopy isEqualToString:@"Duration"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Charge";
  if ([typeCopy isEqualToString:@"Electric Charge"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Current";
  if ([typeCopy isEqualToString:@"Electric Current"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Potential Difference";
  if ([typeCopy isEqualToString:@"Electric Potential Difference"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Resistance";
  if ([typeCopy isEqualToString:@"Electric Resistance"])
  {
    goto LABEL_23;
  }

  v4 = @"Energy";
  if ([typeCopy isEqualToString:@"Energy"])
  {
    goto LABEL_23;
  }

  v4 = @"Frequency";
  if ([typeCopy isEqualToString:@"Frequency"])
  {
    goto LABEL_23;
  }

  v4 = @"Fuel Efficiency";
  if ([typeCopy isEqualToString:@"Fuel Efficiency"])
  {
    goto LABEL_23;
  }

  v4 = @"Illuminance";
  if ([typeCopy isEqualToString:@"Illuminance"])
  {
    goto LABEL_23;
  }

  v4 = @"Information Storage";
  if ([typeCopy isEqualToString:@"Information Storage"] & 1) != 0 || (v4 = @"Length", (objc_msgSend(typeCopy, "isEqualToString:", @"Length")) || (v4 = @"Mass", (objc_msgSend(typeCopy, "isEqualToString:", @"Mass")) || (v4 = @"Power", (objc_msgSend(typeCopy, "isEqualToString:", @"Power")) || (v4 = @"Pressure", (objc_msgSend(typeCopy, "isEqualToString:", @"Pressure")) || (v4 = @"Speed", (objc_msgSend(typeCopy, "isEqualToString:", @"Speed")) || (v4 = @"Temperature", (objc_msgSend(typeCopy, "isEqualToString:", @"Temperature")) || (v4 = @"Volume", objc_msgSend(typeCopy, "isEqualToString:", @"Volume")))
  {
LABEL_23:
    v5 = WFLocalizedString(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (Class)unitClassForUnitType:(id)type
{
  typeCopy = type;
  unitTypeMap = [self unitTypeMap];
  v7 = [unitTypeMap objectForKey:typeCopy];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFMeasurementUnit.m" lineNumber:50 description:{@"Invalid unit type: %@", typeCopy}];
  }

  v8 = v7;

  return v7;
}

+ (id)availableUnitTypes
{
  unitTypeMap = [self unitTypeMap];
  allKeys = [unitTypeMap allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WFMeasurementUnit_availableUnitTypes__block_invoke;
  v7[3] = &__block_descriptor_40_e31_q24__0__NSString_8__NSString_16l;
  v7[4] = self;
  v5 = [allKeys sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __39__WFMeasurementUnit_availableUnitTypes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 localizedStringForUnitType:a2];
  v8 = [*(a1 + 32) localizedStringForUnitType:v6];

  v9 = [v7 compare:v8];
  return v9;
}

@end