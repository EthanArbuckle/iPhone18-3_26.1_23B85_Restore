@interface _DPMLRuntimeEnhancedBudgetControl
- (BOOL)checkEnhancedDPParametersWithError:(id *)error;
- (BOOL)checkMinimumCohortSizeWithError:(id *)error;
- (BOOL)checkPrivacyBudgetLimitsWithError:(id *)error;
- (_DPMLRuntimeEnhancedBudgetControl)initWithMetadata:(id)metadata withError:(id *)error;
- (id)findTheNearestGreaterNumberInArray:(id)array forValue:(id)value;
- (id)findTheNearestLowerNumberInArray:(id)array forValue:(id)value;
@end

@implementation _DPMLRuntimeEnhancedBudgetControl

- (_DPMLRuntimeEnhancedBudgetControl)initWithMetadata:(id)metadata withError:(id *)error
{
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = _DPMLRuntimeEnhancedBudgetControl;
  v8 = [(_DPMLRuntimeEnhancedBudgetControl *)&v17 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v8->_metadata, metadata);
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 pathForResource:@"dpmlruntime-enhancedbudget-cohortsize" ofType:@"plist"];
  if (!v11)
  {
    if (error)
    {
      *error = [_DPMLRuntimeError errorWithCode:300 description:@"No path found to load the cohort size table"];
    }

    goto LABEL_11;
  }

  v12 = v11;
  v13 = [NSDictionary dictionaryWithContentsOfFile:v11];
  if (!v13)
  {
    if (error)
    {
      *error = [_DPMLRuntimeError errorWithCode:300 description:@"Error in loading the cohort size table"];
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  cohortSizeTable = v9->_cohortSizeTable;
  v9->_cohortSizeTable = v13;

LABEL_5:
  v15 = v9;
LABEL_12:

  return v15;
}

- (BOOL)checkEnhancedDPParametersWithError:(id *)error
{
  v19[0] = @"localDifferentialPrivacyBudget";
  v19[1] = @"cohortAggregateDifferentialPrivacyBudget";
  v19[2] = @"minCohortSize";
  v19[3] = @"useEnhancedDifferentialPrivacyAlgorithm";
  [NSArray arrayWithObjects:v19 count:4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:v10];

        if (!v11)
        {
          if (error)
          {
            v12 = [NSString stringWithFormat:@"Malformed enhanced differential privacy parameters, %@ key not found", v10];
            *error = [_DPMLRuntimeError errorWithCode:100 description:v12];

            LOBYTE(error) = 0;
          }

          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(error) = 1;
LABEL_12:

  return error;
}

- (BOOL)checkPrivacyBudgetLimitsWithError:(id *)error
{
  v5 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"cohortAggregateDifferentialPrivacyBudget"];
  [v5 floatValue];
  v7 = v6;

  if (v7 <= 0.0 || v7 > 5.0)
  {
    if (!error)
    {
      return 0;
    }

    [NSString stringWithFormat:@"The query cohort aggregate privacy budget (%f) is not between its limits of 0 and %f", v7, 0x4014000000000000];
    v14 = LABEL_16:;
    *error = [_DPMLRuntimeError errorWithCode:100 description:v14];

    return 0;
  }

  v9 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"localDifferentialPrivacyBudget"];
  [v9 floatValue];
  v11 = v10;

  v13 = v11 <= 10.0 && v11 > 0.0;
  if (error && !v13)
  {
    [NSString stringWithFormat:@"The query local privacy budget (%f) is not between its limits of 0 and %f", v11, 0x4024000000000000];
    goto LABEL_16;
  }

  return v13;
}

- (BOOL)checkMinimumCohortSizeWithError:(id *)error
{
  v5 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"minCohortSize"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"cohortAggregateDifferentialPrivacyBudget"];
  v8 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:@"localDifferentialPrivacyBudget"];
  v9 = [(NSDictionary *)self->_cohortSizeTable objectForKeyedSubscript:v7];
  v10 = [v9 objectForKeyedSubscript:v8];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  if (!unsignedIntegerValue2)
  {
    allKeys = [(NSDictionary *)self->_cohortSizeTable allKeys];
    v14 = [allKeys mutableCopy];

    v15 = [(_DPMLRuntimeEnhancedBudgetControl *)self findTheNearestLowerNumberInArray:v14 forValue:v7];
    if (!v15)
    {
      if (!error)
      {
        v12 = 0;
        goto LABEL_21;
      }

      [v7 floatValue];
      v16 = [NSString stringWithFormat:@"No local privacy budget key found for the query cohort aggregate privacy budget of %f in the table", v23];
      [_DPMLRuntimeError errorWithCode:100 description:v16];
      *error = v12 = 0;
LABEL_20:

LABEL_21:
      goto LABEL_22;
    }

    v16 = [(NSDictionary *)self->_cohortSizeTable objectForKeyedSubscript:v15];
    allKeys2 = [v16 allKeys];
    v18 = [allKeys2 mutableCopy];

    v19 = [(_DPMLRuntimeEnhancedBudgetControl *)self findTheNearestGreaterNumberInArray:v18 forValue:v8];
    if (v19)
    {
      v30 = v18;
      v31 = v16;
      v20 = [(NSDictionary *)self->_cohortSizeTable objectForKeyedSubscript:v15];
      v21 = [v20 objectForKeyedSubscript:v19];
      unsignedIntegerValue3 = [v21 unsignedIntegerValue];

      if (unsignedIntegerValue > unsignedIntegerValue3)
      {
        v12 = 1;
        v18 = v30;
        v16 = v31;
LABEL_19:

        goto LABEL_20;
      }

      v18 = v30;
      if (!error)
      {
        v12 = 0;
        v16 = v31;
        goto LABEL_19;
      }

      v27 = [NSString stringWithFormat:@"Query minimum cohort size of (%lu) is less than that of the approved one (%lu)", unsignedIntegerValue, unsignedIntegerValue3];
      v28 = [_DPMLRuntimeError errorWithCode:100 description:v27];
      v16 = v31;
    }

    else
    {
      if (!error)
      {
LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }

      [v8 floatValue];
      v25 = v24;
      [v7 floatValue];
      v27 = [NSString stringWithFormat:@"No minimum cohort size found for query local privacy budget (rounded up) of %f and cohort aggregate privacy budget (rounded down) of %f in the table", *&v25, v26];
      v28 = [_DPMLRuntimeError errorWithCode:100 description:v27];
    }

    *error = v28;

    goto LABEL_18;
  }

  if (unsignedIntegerValue <= unsignedIntegerValue2)
  {
    if (!error)
    {
      v12 = 0;
      goto LABEL_23;
    }

    v14 = [NSString stringWithFormat:@"Query minimum cohort size of (%lu) is less than that of the approved one (%lu)", unsignedIntegerValue, unsignedIntegerValue2];
    [_DPMLRuntimeError errorWithCode:100 description:v14];
    *error = v12 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v12 = 1;
LABEL_23:

  return v12;
}

- (id)findTheNearestGreaterNumberInArray:(id)array forValue:(id)value
{
  arrayCopy = array;
  valueCopy = value;
  v7 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
  v8 = [NSArray arrayWithObject:v7];
  [arrayCopy sortUsingDescriptors:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        [valueCopy floatValue];
        v16 = v15;
        [v14 floatValue];
        if (vabds_f32(v16, v17) >= 0.000011921)
        {
          [valueCopy floatValue];
          v19 = v18;
          [v14 floatValue];
          if (v19 > v20)
          {
            continue;
          }
        }

        v21 = v14;
        goto LABEL_13;
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v21 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)findTheNearestLowerNumberInArray:(id)array forValue:(id)value
{
  arrayCopy = array;
  valueCopy = value;
  v7 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:0];
  v8 = [NSArray arrayWithObject:v7];
  [arrayCopy sortUsingDescriptors:v8];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        [valueCopy floatValue];
        v16 = v15;
        [v14 floatValue];
        if (vabds_f32(v16, v17) >= 0.000011921)
        {
          [valueCopy floatValue];
          v19 = v18;
          [v14 floatValue];
          if (v19 < v20)
          {
            continue;
          }
        }

        v21 = v14;
        goto LABEL_13;
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      v21 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

@end