@interface WFMeasurementUnit
+ (BOOL)usesMetricSystemForUnitType:(id)a3;
+ (Class)unitClassForUnitType:(id)a3;
+ (id)availableUnitTypes;
+ (id)availableUnitsForUnitType:(id)a3;
+ (id)defaultUnitForUnitType:(id)a3;
+ (id)linkValueTypeFromWorkflowUnitType:(id)a3;
+ (id)localizedStringForUnitType:(id)a3;
+ (id)unitFromString:(id)a3 unitType:(id)a4 caseSensitive:(BOOL)a5;
+ (id)unitTypeForUnitClass:(Class)a3;
+ (id)unitTypeFromIntentSlotValueType:(int64_t)a3;
+ (id)unitTypeFromLinkMeasurementUnitType:(int64_t)a3;
+ (id)unitTypeMap;
+ (int64_t)linkMeasurementUnitTypeFromWorkflowUnitType:(id)a3;
@end

@implementation WFMeasurementUnit

+ (id)linkValueTypeFromWorkflowUnitType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 == @"Length")
  {
    v5 = [MEMORY[0x1E69AC8A8] lengthValueType];
  }

  else if (v3 == @"Mass")
  {
    v5 = [MEMORY[0x1E69AC8A8] massValueType];
  }

  else if (v3 == @"Temperature")
  {
    v5 = [MEMORY[0x1E69AC8A8] temperatureValueType];
  }

  else if (v3 == @"Volume")
  {
    v5 = [MEMORY[0x1E69AC8A8] volumeValueType];
  }

  else if (v3 == @"Speed")
  {
    v5 = [MEMORY[0x1E69AC8A8] speedValueType];
  }

  else if (v3 == @"Energy")
  {
    v5 = [MEMORY[0x1E69AC8A8] energyValueType];
  }

  else if (v3 == @"Duration")
  {
    v5 = [MEMORY[0x1E69AC8A8] durationValueType];
  }

  else if (v3 == @"Acceleration")
  {
    v5 = [MEMORY[0x1E69AC8A8] accelerationValueType];
  }

  else if (v3 == @"Angle")
  {
    v5 = [MEMORY[0x1E69AC8A8] angleValueType];
  }

  else if (v3 == @"Area")
  {
    v5 = [MEMORY[0x1E69AC8A8] areaValueType];
  }

  else if (v3 == @"Concentration Mass")
  {
    v5 = [MEMORY[0x1E69AC8A8] concentrationMassValueType];
  }

  else if (v3 == @"Dispersion")
  {
    v5 = [MEMORY[0x1E69AC8A8] dispersionValueType];
  }

  else if (v3 == @"Electric Charge")
  {
    v5 = [MEMORY[0x1E69AC8A8] electricChargeValueType];
  }

  else if (v3 == @"Electric Current")
  {
    v5 = [MEMORY[0x1E69AC8A8] electricCurrentValueType];
  }

  else if (v3 == @"Electric Potential Difference")
  {
    v5 = [MEMORY[0x1E69AC8A8] electricPotentialDifferenceValueType];
  }

  else if (v3 == @"Electric Resistance")
  {
    v5 = [MEMORY[0x1E69AC8A8] electricResistanceValueType];
  }

  else if (v3 == @"Frequency")
  {
    v5 = [MEMORY[0x1E69AC8A8] frequencyValueType];
  }

  else if (v3 == @"Fuel Efficiency")
  {
    v5 = [MEMORY[0x1E69AC8A8] fuelEfficiencyValueType];
  }

  else if (v3 == @"Illuminance")
  {
    v5 = [MEMORY[0x1E69AC8A8] illuminanceValueType];
  }

  else if (v3 == @"Information Storage")
  {
    v5 = [MEMORY[0x1E69AC8A8] informationStorageValueType];
  }

  else if (v3 == @"Power")
  {
    v5 = [MEMORY[0x1E69AC8A8] powerValueType];
  }

  else
  {
    if (v3 == @"Pressure")
    {
      [MEMORY[0x1E69AC8A8] pressureValueType];
    }

    else
    {
      [MEMORY[0x1E69AC8A8] unsupportedMeasurementValueType];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

+ (int64_t)linkMeasurementUnitTypeFromWorkflowUnitType:(id)a3
{
  if (a3 == @"Length")
  {
    return 1;
  }

  if (a3 == @"Mass")
  {
    return 2;
  }

  if (a3 == @"Temperature")
  {
    return 3;
  }

  if (a3 == @"Volume")
  {
    return 4;
  }

  if (a3 == @"Speed")
  {
    return 5;
  }

  if (a3 == @"Energy")
  {
    return 6;
  }

  if (a3 == @"Duration")
  {
    return 7;
  }

  if (a3 == @"Acceleration")
  {
    return 8;
  }

  if (a3 == @"Angle")
  {
    return 9;
  }

  if (a3 == @"Area")
  {
    return 10;
  }

  if (a3 == @"Concentration Mass")
  {
    return 11;
  }

  if (a3 == @"Dispersion")
  {
    return 12;
  }

  if (a3 == @"Electric Charge")
  {
    return 13;
  }

  if (a3 == @"Electric Current")
  {
    return 14;
  }

  if (a3 == @"Electric Potential Difference")
  {
    return 15;
  }

  if (a3 == @"Electric Resistance")
  {
    return 16;
  }

  if (a3 == @"Frequency")
  {
    return 17;
  }

  if (a3 == @"Fuel Efficiency")
  {
    return 18;
  }

  if (a3 == @"Illuminance")
  {
    return 19;
  }

  if (a3 == @"Information Storage")
  {
    return 20;
  }

  if (a3 == @"Power")
  {
    return 21;
  }

  if (a3 == @"Pressure")
  {
    return 22;
  }

  return 0;
}

+ (id)unitTypeFromIntentSlotValueType:(int64_t)a3
{
  v3 = @"Speed";
  v4 = @"Energy";
  if (a3 != 41)
  {
    v4 = 0;
  }

  if (a3 != 40)
  {
    v3 = v4;
  }

  v5 = @"Mass";
  v6 = @"Volume";
  if (a3 != 39)
  {
    v6 = 0;
  }

  if (a3 != 38)
  {
    v5 = v6;
  }

  if (a3 <= 39)
  {
    v3 = v5;
  }

  v7 = @"Temperature";
  if ((a3 - 32) >= 2)
  {
    v7 = 0;
  }

  if ((a3 - 19) >= 2)
  {
    v8 = v7;
  }

  else
  {
    v8 = @"Length";
  }

  if (a3 <= 37)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

+ (id)unitTypeFromLinkMeasurementUnitType:(int64_t)a3
{
  if ((a3 - 1) > 0x15)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7B009F0 + a3 - 1);
  }
}

+ (id)unitFromString:(id)a3 unitType:(id)a4 caseSensitive:(BOOL)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [v8 stringByReplacingOccurrencesOfString:@"m3" withString:@"m³"];

    v11 = objc_alloc_init(MEMORY[0x1E696AD30]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__WFMeasurementUnit_unitFromString_unitType_caseSensitive___block_invoke;
    aBlock[3] = &unk_1E7B009D0;
    v32 = a1;
    v12 = v11;
    v30 = v12;
    v8 = v10;
    v31 = v8;
    v33 = a5;
    v13 = _Block_copy(aBlock);
    v14 = v13;
    if (v9)
    {
      v15 = (*(v13 + 2))(v13, v9);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v16 = [a1 unitTypeMap];
      v17 = [v16 allKeys];

      v18 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
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
              objc_enumerationMutation(v17);
            }

            v22 = v14[2](v14, *(*(&v25 + 1) + 8 * i));
            if (v22)
            {
              v15 = v22;
              goto LABEL_15;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v25 objects:v34 count:16];
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

+ (id)defaultUnitForUnitType:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = defaultUnitForUnitType__unitDefaultsMap;
  if (!defaultUnitForUnitType__unitDefaultsMap)
  {
    v6 = [a1 usesMetricSystemForUnitType:v4];
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
    v32 = [MEMORY[0x1E696AFE0] degrees];
    v54[1] = v32;
    v34[2] = @"Area";
    if (v6)
    {
      v31 = [MEMORY[0x1E696AFE8] squareMeters];
      v55 = v31;
      v35 = @"Concentration Mass";
      [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
    }

    else
    {
      v31 = [MEMORY[0x1E696AFE8] squareFeet];
      v55 = v31;
      v35 = @"Concentration Mass";
      [MEMORY[0x1E696AFF0] gramsPerLiter];
    }
    v30 = ;
    v56 = v30;
    v36 = @"Dispersion";
    v29 = [MEMORY[0x1E696B000] partsPerMillion];
    v57 = v29;
    v37 = @"Duration";
    v28 = [MEMORY[0x1E696B008] minutes];
    v58 = v28;
    v38 = @"Electric Charge";
    v27 = [MEMORY[0x1E696B010] ampereHours];
    v59 = v27;
    v39 = @"Electric Current";
    v26 = [MEMORY[0x1E696B018] amperes];
    v60 = v26;
    v40 = @"Electric Potential Difference";
    v25 = [MEMORY[0x1E696B020] volts];
    v61 = v25;
    v41 = @"Electric Resistance";
    v24 = [MEMORY[0x1E696B028] ohms];
    v62 = v24;
    v42 = @"Energy";
    v23 = [MEMORY[0x1E696B030] joules];
    v63 = v23;
    v43 = @"Frequency";
    v22 = [MEMORY[0x1E696B038] hertz];
    v64 = v22;
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
    v7 = [MEMORY[0x1E696B050] megabytes];
    v67 = v7;
    v47 = @"Length";
    if (v6)
    {
      v8 = [MEMORY[0x1E696B058] meters];
      v68 = v8;
      v48 = @"Mass";
      [MEMORY[0x1E696B060] grams];
    }

    else
    {
      v8 = [MEMORY[0x1E696B058] feet];
      v68 = v8;
      v48 = @"Mass";
      [MEMORY[0x1E696B060] poundsMass];
    }
    v9 = ;
    v69 = v9;
    v49 = @"Power";
    v10 = [MEMORY[0x1E696B068] watts];
    v70 = v10;
    v50 = @"Pressure";
    if (v6)
    {
      v11 = [MEMORY[0x1E696B070] millibars];
      v71 = v11;
      v51 = @"Speed";
      v12 = [MEMORY[0x1E696B078] kilometersPerHour];
      v72 = v12;
      v52 = @"Temperature";
      v13 = [MEMORY[0x1E696B080] celsius];
      v73 = v13;
      v53 = @"Volume";
      [MEMORY[0x1E696B088] liters];
    }

    else
    {
      v11 = [MEMORY[0x1E696B070] inchesOfMercury];
      v71 = v11;
      v51 = @"Speed";
      v12 = [MEMORY[0x1E696B078] milesPerHour];
      v72 = v12;
      v52 = @"Temperature";
      v13 = [MEMORY[0x1E696B080] fahrenheit];
      v73 = v13;
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

  v17 = [v5 objectForKey:v4];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (BOOL)usesMetricSystemForUnitType:(id)a3
{
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 countryCode];
  v6 = [v5 isEqualToString:@"GB"];

  if (a3 == @"Length" && (v6 & 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 usesMetricSystem];
  }

  return v7;
}

+ (id)availableUnitsForUnitType:(id)a3
{
  v155[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEqualToString:@"Acceleration"])
  {
    v4 = [MEMORY[0x1E696AFD8] metersPerSecondSquared];
    v155[0] = v4;
    v5 = [MEMORY[0x1E696AFD8] gravity];
    v155[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
LABEL_12:

    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Angle"])
  {
    v4 = [MEMORY[0x1E696AFE0] degrees];
    v154[0] = v4;
    v5 = [MEMORY[0x1E696AFE0] arcMinutes];
    v154[1] = v5;
    v7 = [MEMORY[0x1E696AFE0] arcSeconds];
    v154[2] = v7;
    v8 = [MEMORY[0x1E696AFE0] radians];
    v154[3] = v8;
    v9 = [MEMORY[0x1E696AFE0] gradians];
    v154[4] = v9;
    v10 = [MEMORY[0x1E696AFE0] revolutions];
    v154[5] = v10;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:6];

LABEL_11:
    goto LABEL_12;
  }

  if ([v3 isEqualToString:@"Area"])
  {
    v126 = [MEMORY[0x1E696AFE8] squareMegameters];
    v153[0] = v126;
    v123 = [MEMORY[0x1E696AFE8] squareKilometers];
    v153[1] = v123;
    v121 = [MEMORY[0x1E696AFE8] squareMeters];
    v153[2] = v121;
    v119 = [MEMORY[0x1E696AFE8] squareCentimeters];
    v153[3] = v119;
    v117 = [MEMORY[0x1E696AFE8] squareMillimeters];
    v153[4] = v117;
    v11 = [MEMORY[0x1E696AFE8] squareMicrometers];
    v153[5] = v11;
    [MEMORY[0x1E696AFE8] squareNanometers];
    v12 = v131 = v3;
    v153[6] = v12;
    v13 = [MEMORY[0x1E696AFE8] squareInches];
    v153[7] = v13;
    v14 = [MEMORY[0x1E696AFE8] squareFeet];
    v153[8] = v14;
    v15 = [MEMORY[0x1E696AFE8] squareYards];
    v153[9] = v15;
    v16 = [MEMORY[0x1E696AFE8] squareMiles];
    v153[10] = v16;
    v17 = [MEMORY[0x1E696AFE8] acres];
    v153[11] = v17;
    v18 = [MEMORY[0x1E696AFE8] ares];
    v153[12] = v18;
    v19 = [MEMORY[0x1E696AFE8] hectares];
    v153[13] = v19;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:14];

    v4 = v126;
    v3 = v131;

    v20 = v123;
LABEL_7:

LABEL_13:
    goto LABEL_14;
  }

  if ([v3 isEqualToString:@"Concentration Mass"])
  {
    v4 = [MEMORY[0x1E696AFF0] gramsPerLiter];
    v152[0] = v4;
    v5 = [MEMORY[0x1E696AFF0] milligramsPerDeciliter];
    v152[1] = v5;
    v7 = [MEMORY[0x1E696AFF0] wf_microgramsPerCubicMeter];
    v152[2] = v7;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v152;
LABEL_10:
    v6 = [v21 arrayWithObjects:v22 count:3];
    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"Dispersion"])
  {
    v4 = [MEMORY[0x1E696B000] partsPerMillion];
    v151 = v4;
    v25 = MEMORY[0x1E695DEC8];
    v26 = &v151;
LABEL_19:
    v6 = [v25 arrayWithObjects:v26 count:1];
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Duration"])
  {
    v4 = [MEMORY[0x1E696B008] milliseconds];
    v150[0] = v4;
    v27 = [MEMORY[0x1E696B008] microseconds];
    v150[1] = v27;
    v28 = [MEMORY[0x1E696B008] nanoseconds];
    v150[2] = v28;
    v29 = [MEMORY[0x1E696B008] picoseconds];
    v150[3] = v29;
    v30 = [MEMORY[0x1E696B008] seconds];
    v150[4] = v30;
    v31 = [MEMORY[0x1E696B008] minutes];
    v150[5] = v31;
    v32 = [MEMORY[0x1E696B008] hours];
    v150[6] = v32;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:7];

    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Electric Charge"])
  {
    v4 = [MEMORY[0x1E696B010] coulombs];
    v149[0] = v4;
    v33 = [MEMORY[0x1E696B010] megaampereHours];
    v149[1] = v33;
    v34 = [MEMORY[0x1E696B010] kiloampereHours];
    v149[2] = v34;
    v35 = [MEMORY[0x1E696B010] ampereHours];
    v149[3] = v35;
    v36 = [MEMORY[0x1E696B010] milliampereHours];
    v149[4] = v36;
    v37 = [MEMORY[0x1E696B010] microampereHours];
    v149[5] = v37;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:6];

    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Electric Current"])
  {
    v4 = [MEMORY[0x1E696B018] megaamperes];
    v148[0] = v4;
    v5 = [MEMORY[0x1E696B018] kiloamperes];
    v148[1] = v5;
    v7 = [MEMORY[0x1E696B018] amperes];
    v148[2] = v7;
    v38 = [MEMORY[0x1E696B018] milliamperes];
    v148[3] = v38;
    v39 = [MEMORY[0x1E696B018] microamperes];
    v148[4] = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v148;
LABEL_32:
    v6 = [v40 arrayWithObjects:v41 count:5];

    goto LABEL_11;
  }

  if ([v3 isEqualToString:@"Electric Potential Difference"])
  {
    v4 = [MEMORY[0x1E696B020] megavolts];
    v147[0] = v4;
    v5 = [MEMORY[0x1E696B020] kilovolts];
    v147[1] = v5;
    v7 = [MEMORY[0x1E696B020] volts];
    v147[2] = v7;
    v38 = [MEMORY[0x1E696B020] millivolts];
    v147[3] = v38;
    v39 = [MEMORY[0x1E696B020] microvolts];
    v147[4] = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v147;
    goto LABEL_32;
  }

  if ([v3 isEqualToString:@"Electric Resistance"])
  {
    v4 = [MEMORY[0x1E696B028] megaohms];
    v146[0] = v4;
    v5 = [MEMORY[0x1E696B028] kiloohms];
    v146[1] = v5;
    v7 = [MEMORY[0x1E696B028] ohms];
    v146[2] = v7;
    v38 = [MEMORY[0x1E696B028] milliohms];
    v146[3] = v38;
    v39 = [MEMORY[0x1E696B028] microohms];
    v146[4] = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v146;
    goto LABEL_32;
  }

  if ([v3 isEqualToString:@"Energy"])
  {
    v4 = [MEMORY[0x1E696B030] kilojoules];
    v145[0] = v4;
    v5 = [MEMORY[0x1E696B030] joules];
    v145[1] = v5;
    v7 = [MEMORY[0x1E696B030] kilocalories];
    v145[2] = v7;
    v38 = [MEMORY[0x1E696B030] calories];
    v145[3] = v38;
    v39 = [MEMORY[0x1E696B030] kilowattHours];
    v145[4] = v39;
    v40 = MEMORY[0x1E695DEC8];
    v41 = v145;
    goto LABEL_32;
  }

  if ([v3 isEqualToString:@"Frequency"])
  {
    v4 = [MEMORY[0x1E696B038] terahertz];
    v144[0] = v4;
    v132 = [MEMORY[0x1E696B038] gigahertz];
    v144[1] = v132;
    v42 = [MEMORY[0x1E696B038] megahertz];
    v144[2] = v42;
    v43 = [MEMORY[0x1E696B038] kilohertz];
    v144[3] = v43;
    v44 = [MEMORY[0x1E696B038] hertz];
    v144[4] = v44;
    v45 = [MEMORY[0x1E696B038] millihertz];
    v144[5] = v45;
    v46 = [MEMORY[0x1E696B038] microhertz];
    v144[6] = v46;
    v47 = [MEMORY[0x1E696B038] nanohertz];
    v144[7] = v47;
    v48 = [MEMORY[0x1E696B038] framesPerSecond];
    v144[8] = v48;
    v49 = MEMORY[0x1E695DEC8];
    v50 = v144;
LABEL_35:
    v6 = [v49 arrayWithObjects:v50 count:9];

    v20 = v132;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"Fuel Efficiency"])
  {
    v4 = [MEMORY[0x1E696B040] litersPer100Kilometers];
    v143[0] = v4;
    v5 = [MEMORY[0x1E696B040] milesPerImperialGallon];
    v143[1] = v5;
    v7 = [MEMORY[0x1E696B040] milesPerGallon];
    v143[2] = v7;
    v21 = MEMORY[0x1E695DEC8];
    v22 = v143;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"Illuminance"])
  {
    v4 = [MEMORY[0x1E696B048] lux];
    v142 = v4;
    v25 = MEMORY[0x1E695DEC8];
    v26 = &v142;
    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"Information Storage"])
  {
    v4 = [MEMORY[0x1E696B050] bytes];
    v141[0] = v4;
    v132 = [MEMORY[0x1E696B050] kilobytes];
    v141[1] = v132;
    v42 = [MEMORY[0x1E696B050] megabytes];
    v141[2] = v42;
    v43 = [MEMORY[0x1E696B050] gigabytes];
    v141[3] = v43;
    v44 = [MEMORY[0x1E696B050] terabytes];
    v141[4] = v44;
    v45 = [MEMORY[0x1E696B050] petabytes];
    v141[5] = v45;
    v46 = [MEMORY[0x1E696B050] exabytes];
    v141[6] = v46;
    v47 = [MEMORY[0x1E696B050] zettabytes];
    v141[7] = v47;
    v48 = [MEMORY[0x1E696B050] yottabytes];
    v141[8] = v48;
    v49 = MEMORY[0x1E695DEC8];
    v50 = v141;
    goto LABEL_35;
  }

  v133 = v3;
  if ([v3 isEqualToString:@"Length"])
  {
    v127 = [MEMORY[0x1E696B058] megameters];
    v140[0] = v127;
    v124 = [MEMORY[0x1E696B058] kilometers];
    v140[1] = v124;
    v122 = [MEMORY[0x1E696B058] hectometers];
    v140[2] = v122;
    v120 = [MEMORY[0x1E696B058] decameters];
    v140[3] = v120;
    v118 = [MEMORY[0x1E696B058] meters];
    v140[4] = v118;
    v116 = [MEMORY[0x1E696B058] decimeters];
    v140[5] = v116;
    v115 = [MEMORY[0x1E696B058] centimeters];
    v140[6] = v115;
    v114 = [MEMORY[0x1E696B058] millimeters];
    v140[7] = v114;
    v113 = [MEMORY[0x1E696B058] micrometers];
    v140[8] = v113;
    v112 = [MEMORY[0x1E696B058] nanometers];
    v140[9] = v112;
    v111 = [MEMORY[0x1E696B058] picometers];
    v140[10] = v111;
    v110 = [MEMORY[0x1E696B058] inches];
    v140[11] = v110;
    v109 = [MEMORY[0x1E696B058] feet];
    v140[12] = v109;
    v51 = [MEMORY[0x1E696B058] yards];
    v140[13] = v51;
    v52 = [MEMORY[0x1E696B058] miles];
    v140[14] = v52;
    v53 = [MEMORY[0x1E696B058] scandinavianMiles];
    v140[15] = v53;
    v54 = [MEMORY[0x1E696B058] lightyears];
    v140[16] = v54;
    v55 = [MEMORY[0x1E696B058] nauticalMiles];
    v140[17] = v55;
    v56 = [MEMORY[0x1E696B058] fathoms];
    v140[18] = v56;
    v57 = [MEMORY[0x1E696B058] furlongs];
    v140[19] = v57;
    v58 = [MEMORY[0x1E696B058] astronomicalUnits];
    v140[20] = v58;
    v59 = [MEMORY[0x1E696B058] parsecs];
    v140[21] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:22];

    v6 = v60;
    v4 = v127;

LABEL_44:
LABEL_47:

    v70 = v124;
LABEL_48:

LABEL_49:
    v3 = v133;
    goto LABEL_13;
  }

  if ([v3 isEqualToString:@"Mass"])
  {
    v128 = [MEMORY[0x1E696B060] kilograms];
    v139[0] = v128;
    v124 = [MEMORY[0x1E696B060] grams];
    v139[1] = v124;
    v122 = [MEMORY[0x1E696B060] decigrams];
    v139[2] = v122;
    v120 = [MEMORY[0x1E696B060] centigrams];
    v139[3] = v120;
    v118 = [MEMORY[0x1E696B060] milligrams];
    v139[4] = v118;
    v116 = [MEMORY[0x1E696B060] micrograms];
    v139[5] = v116;
    v115 = [MEMORY[0x1E696B060] nanograms];
    v139[6] = v115;
    v61 = [MEMORY[0x1E696B060] picograms];
    v139[7] = v61;
    v62 = [MEMORY[0x1E696B060] ounces];
    v139[8] = v62;
    v63 = [MEMORY[0x1E696B060] poundsMass];
    v139[9] = v63;
    v64 = [MEMORY[0x1E696B060] stones];
    v139[10] = v64;
    v65 = [MEMORY[0x1E696B060] metricTons];
    v139[11] = v65;
    v66 = [MEMORY[0x1E696B060] shortTons];
    v139[12] = v66;
    v67 = [MEMORY[0x1E696B060] carats];
    v139[13] = v67;
    v68 = [MEMORY[0x1E696B060] ouncesTroy];
    v139[14] = v68;
    v69 = [MEMORY[0x1E696B060] slugs];
    v139[15] = v69;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:16];

    v4 = v128;
    goto LABEL_47;
  }

  if ([v3 isEqualToString:@"Power"])
  {
    v71 = [MEMORY[0x1E696B068] terawatts];
    v138[0] = v71;
    v129 = [MEMORY[0x1E696B068] gigawatts];
    v138[1] = v129;
    v125 = [MEMORY[0x1E696B068] megawatts];
    v138[2] = v125;
    v72 = [MEMORY[0x1E696B068] kilowatts];
    v138[3] = v72;
    v73 = [MEMORY[0x1E696B068] watts];
    v138[4] = v73;
    v74 = [MEMORY[0x1E696B068] milliwatts];
    v138[5] = v74;
    v75 = [MEMORY[0x1E696B068] microwatts];
    v138[6] = v75;
    v76 = [MEMORY[0x1E696B068] nanowatts];
    v138[7] = v76;
    v77 = [MEMORY[0x1E696B068] picowatts];
    v138[8] = v77;
    v78 = [MEMORY[0x1E696B068] femtowatts];
    v138[9] = v78;
    v79 = [MEMORY[0x1E696B068] horsepower];
    v138[10] = v79;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:11];

    v4 = v71;
LABEL_54:
    v70 = v129;
    goto LABEL_48;
  }

  if ([v3 isEqualToString:@"Pressure"])
  {
    v4 = [MEMORY[0x1E696B070] newtonsPerMetersSquared];
    v137[0] = v4;
    v129 = [MEMORY[0x1E696B070] gigapascals];
    v137[1] = v129;
    v80 = [MEMORY[0x1E696B070] megapascals];
    v137[2] = v80;
    v81 = [MEMORY[0x1E696B070] kilopascals];
    v137[3] = v81;
    v82 = [MEMORY[0x1E696B070] hectopascals];
    v137[4] = v82;
    v83 = [MEMORY[0x1E696B070] inchesOfMercury];
    v137[5] = v83;
    v84 = [MEMORY[0x1E696B070] bars];
    v137[6] = v84;
    v85 = [MEMORY[0x1E696B070] millibars];
    v137[7] = v85;
    v86 = [MEMORY[0x1E696B070] millimetersOfMercury];
    v137[8] = v86;
    v87 = [MEMORY[0x1E696B070] poundsForcePerSquareInch];
    v137[9] = v87;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:10];

    goto LABEL_54;
  }

  if ([v3 isEqualToString:@"Speed"])
  {
    v4 = [MEMORY[0x1E696B078] metersPerSecond];
    v136[0] = v4;
    v88 = [MEMORY[0x1E696B078] kilometersPerHour];
    v136[1] = v88;
    v89 = [MEMORY[0x1E696B078] milesPerHour];
    v136[2] = v89;
    v90 = [MEMORY[0x1E696B078] knots];
    v136[3] = v90;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:4];

LABEL_59:
    goto LABEL_49;
  }

  if ([v3 isEqualToString:@"Temperature"])
  {
    v4 = [MEMORY[0x1E696B080] kelvin];
    v135[0] = v4;
    v88 = [MEMORY[0x1E696B080] celsius];
    v135[1] = v88;
    v89 = [MEMORY[0x1E696B080] fahrenheit];
    v135[2] = v89;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:3];
    goto LABEL_59;
  }

  if ([v3 isEqualToString:@"Volume"])
  {
    v130 = [MEMORY[0x1E696B088] megaliters];
    v134[0] = v130;
    v124 = [MEMORY[0x1E696B088] kiloliters];
    v134[1] = v124;
    v122 = [MEMORY[0x1E696B088] liters];
    v134[2] = v122;
    v120 = [MEMORY[0x1E696B088] deciliters];
    v134[3] = v120;
    v118 = [MEMORY[0x1E696B088] centiliters];
    v134[4] = v118;
    v116 = [MEMORY[0x1E696B088] milliliters];
    v134[5] = v116;
    v115 = [MEMORY[0x1E696B088] cubicKilometers];
    v134[6] = v115;
    v114 = [MEMORY[0x1E696B088] cubicMeters];
    v134[7] = v114;
    v113 = [MEMORY[0x1E696B088] cubicDecimeters];
    v134[8] = v113;
    v112 = [MEMORY[0x1E696B088] cubicCentimeters];
    v134[9] = v112;
    v111 = [MEMORY[0x1E696B088] cubicMillimeters];
    v134[10] = v111;
    v110 = [MEMORY[0x1E696B088] cubicInches];
    v134[11] = v110;
    v109 = [MEMORY[0x1E696B088] cubicFeet];
    v134[12] = v109;
    v108 = [MEMORY[0x1E696B088] cubicYards];
    v134[13] = v108;
    v107 = [MEMORY[0x1E696B088] cubicMiles];
    v134[14] = v107;
    v106 = [MEMORY[0x1E696B088] acreFeet];
    v134[15] = v106;
    v105 = [MEMORY[0x1E696B088] bushels];
    v134[16] = v105;
    v104 = [MEMORY[0x1E696B088] teaspoons];
    v134[17] = v104;
    v103 = [MEMORY[0x1E696B088] tablespoons];
    v134[18] = v103;
    v102 = [MEMORY[0x1E696B088] fluidOunces];
    v134[19] = v102;
    v101 = [MEMORY[0x1E696B088] cups];
    v134[20] = v101;
    v100 = [MEMORY[0x1E696B088] pints];
    v134[21] = v100;
    v91 = [MEMORY[0x1E696B088] quarts];
    v134[22] = v91;
    v92 = [MEMORY[0x1E696B088] gallons];
    v134[23] = v92;
    v93 = [MEMORY[0x1E696B088] imperialTeaspoons];
    v134[24] = v93;
    v94 = [MEMORY[0x1E696B088] imperialTablespoons];
    v134[25] = v94;
    v95 = [MEMORY[0x1E696B088] imperialFluidOunces];
    v134[26] = v95;
    v96 = [MEMORY[0x1E696B088] imperialPints];
    v134[27] = v96;
    v97 = [MEMORY[0x1E696B088] imperialQuarts];
    v134[28] = v97;
    v98 = [MEMORY[0x1E696B088] imperialGallons];
    v134[29] = v98;
    v99 = [MEMORY[0x1E696B088] metricCups];
    v134[30] = v99;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:31];

    v4 = v130;
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

+ (id)unitTypeForUnitClass:(Class)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__5472;
  v12 = __Block_byref_object_dispose__5473;
  v13 = 0;
  v4 = [a1 unitTypeMap];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WFMeasurementUnit_unitTypeForUnitClass___block_invoke;
  v7[3] = &unk_1E7B009A8;
  v7[4] = &v8;
  v7[5] = a3;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

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

+ (id)localizedStringForUnitType:(id)a3
{
  v3 = a3;
  v4 = @"Acceleration";
  if ([v3 isEqualToString:@"Acceleration"])
  {
    goto LABEL_23;
  }

  v4 = @"Angle";
  if ([v3 isEqualToString:@"Angle"])
  {
    goto LABEL_23;
  }

  v4 = @"Area";
  if ([v3 isEqualToString:@"Area"])
  {
    goto LABEL_23;
  }

  v4 = @"Concentration Mass";
  if ([v3 isEqualToString:@"Concentration Mass"])
  {
    goto LABEL_23;
  }

  v4 = @"Dispersion";
  if ([v3 isEqualToString:@"Dispersion"])
  {
    goto LABEL_23;
  }

  v4 = @"Duration";
  if ([v3 isEqualToString:@"Duration"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Charge";
  if ([v3 isEqualToString:@"Electric Charge"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Current";
  if ([v3 isEqualToString:@"Electric Current"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Potential Difference";
  if ([v3 isEqualToString:@"Electric Potential Difference"])
  {
    goto LABEL_23;
  }

  v4 = @"Electric Resistance";
  if ([v3 isEqualToString:@"Electric Resistance"])
  {
    goto LABEL_23;
  }

  v4 = @"Energy";
  if ([v3 isEqualToString:@"Energy"])
  {
    goto LABEL_23;
  }

  v4 = @"Frequency";
  if ([v3 isEqualToString:@"Frequency"])
  {
    goto LABEL_23;
  }

  v4 = @"Fuel Efficiency";
  if ([v3 isEqualToString:@"Fuel Efficiency"])
  {
    goto LABEL_23;
  }

  v4 = @"Illuminance";
  if ([v3 isEqualToString:@"Illuminance"])
  {
    goto LABEL_23;
  }

  v4 = @"Information Storage";
  if ([v3 isEqualToString:@"Information Storage"] & 1) != 0 || (v4 = @"Length", (objc_msgSend(v3, "isEqualToString:", @"Length")) || (v4 = @"Mass", (objc_msgSend(v3, "isEqualToString:", @"Mass")) || (v4 = @"Power", (objc_msgSend(v3, "isEqualToString:", @"Power")) || (v4 = @"Pressure", (objc_msgSend(v3, "isEqualToString:", @"Pressure")) || (v4 = @"Speed", (objc_msgSend(v3, "isEqualToString:", @"Speed")) || (v4 = @"Temperature", (objc_msgSend(v3, "isEqualToString:", @"Temperature")) || (v4 = @"Volume", objc_msgSend(v3, "isEqualToString:", @"Volume")))
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

+ (Class)unitClassForUnitType:(id)a3
{
  v5 = a3;
  v6 = [a1 unitTypeMap];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"WFMeasurementUnit.m" lineNumber:50 description:{@"Invalid unit type: %@", v5}];
  }

  v8 = v7;

  return v7;
}

+ (id)availableUnitTypes
{
  v3 = [a1 unitTypeMap];
  v4 = [v3 allKeys];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WFMeasurementUnit_availableUnitTypes__block_invoke;
  v7[3] = &__block_descriptor_40_e31_q24__0__NSString_8__NSString_16l;
  v7[4] = a1;
  v5 = [v4 sortedArrayUsingComparator:v7];

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