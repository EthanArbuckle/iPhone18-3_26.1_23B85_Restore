@interface WRSignpost
- (BOOL)hasDiagnosticThresholdCount;
- (BOOL)isEqual:(id)a3;
- (WRSignpost)initWithSubsystem:(id)a3 category:(id)a4 name:(id)a5 eventIdentifierFieldName:(id)a6 individuationFieldName:(id)a7 environmentFieldNames:(id)a8 networkBound:(BOOL)a9 customEnvironmentCoreAnalyticsEventName:(id)a10 diagnostics:(id)a11;
- (double)diagnosticThresholdIntervalSeconds;
- (id)debugDescription;
- (int)diagnosticThresholdCount;
- (int64_t)compare:(id)a3;
- (uint64_t)hasChangesRelativeTo:(id)a1;
- (uint64_t)matchesSignpost:(void *)a1;
- (uint64_t)setEventIdentifierIsSignpostID:(uint64_t)result;
- (unint64_t)hash;
@end

@implementation WRSignpost

- (WRSignpost)initWithSubsystem:(id)a3 category:(id)a4 name:(id)a5 eventIdentifierFieldName:(id)a6 individuationFieldName:(id)a7 environmentFieldNames:(id)a8 networkBound:(BOOL)a9 customEnvironmentCoreAnalyticsEventName:(id)a10 diagnostics:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v43.receiver = self;
  v43.super_class = WRSignpost;
  v25 = [(WRSignpost *)&v43 init];
  if (v25)
  {
    v26 = [v17 copy];
    subsystem = v25->_subsystem;
    v25->_subsystem = v26;

    v28 = [v18 copy];
    category = v25->_category;
    v25->_category = v28;

    v30 = [v19 copy];
    name = v25->_name;
    v25->_name = v30;

    v32 = [v20 copy];
    eventIdentifierFieldName = v25->_eventIdentifierFieldName;
    v25->_eventIdentifierFieldName = v32;

    v34 = [v21 copy];
    individuationFieldName = v25->_individuationFieldName;
    v25->_individuationFieldName = v34;

    v36 = [v22 copy];
    environmentFieldNames = v25->_environmentFieldNames;
    v25->_environmentFieldNames = v36;

    v25->_networkBound = a9;
    v38 = [v23 copy];
    customEnvironmentCoreAnalyticsEventName = v25->_customEnvironmentCoreAnalyticsEventName;
    v25->_customEnvironmentCoreAnalyticsEventName = v38;

    v40 = [v24 copy];
    diagnostics = v25->_diagnostics;
    v25->_diagnostics = v40;
  }

  return v25;
}

- (uint64_t)hasChangesRelativeTo:(id)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && a1 != v3)
  {
    v6 = [a1 diagnostics];
    v7 = [v6 count];
    v8 = [v4 diagnostics];
    v9 = [v8 count];

    if (v7 == v9)
    {
      v10 = [a1 diagnostics];
      v11 = [v10 count];

      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = [a1 diagnostics];
          v14 = [v13 objectAtIndexedSubscript:v12];

          v15 = [v4 diagnostics];
          v16 = [v15 objectAtIndexedSubscript:v12];

          v17 = [v14 isEqual:v16];
          if (!v17)
          {
            break;
          }

          ++v12;
          v18 = [a1 diagnostics];
          v19 = [v18 count];
        }

        while (v12 < v19);
        v5 = v17 ^ 1u;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WRSignpost *)self compare:v4]== 0;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(WRSignpost *)self subsystem];
  v6 = [v4 subsystem];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(WRSignpost *)self category];
    v9 = [v4 category];
    v7 = [v8 compare:v9];

    if (!v7)
    {
      v10 = [(WRSignpost *)self name];
      v11 = [v4 name];
      v7 = [v10 compare:v11];
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(WRSignpost *)self name];
  v3 = [v2 hash];

  return v3;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  subsystem = self->_subsystem;
  category = self->_category;
  name = self->_name;
  if (self->_eventIdentifierIsSignpostID)
  {
    eventIdentifierFieldName = @"signpost id";
  }

  else
  {
    eventIdentifierFieldName = self->_eventIdentifierFieldName;
  }

  individuationFieldName = self->_individuationFieldName;
  v9 = [(NSArray *)self->_environmentFieldNames debugDescription];
  diagnostics = self->_diagnostics;
  if (self->_customEnvironmentCoreAnalyticsEventName)
  {
    customEnvironmentCoreAnalyticsEventName = self->_customEnvironmentCoreAnalyticsEventName;
  }

  else
  {
    customEnvironmentCoreAnalyticsEventName = @"default";
  }

  v12 = [v3 initWithFormat:@"%@:%@:%@ (event:%@ indiv:%@ env:%@ caEventName:%@ thresholds:%lu)", subsystem, category, name, eventIdentifierFieldName, individuationFieldName, v9, customEnvironmentCoreAnalyticsEventName, -[NSArray count](diagnostics, "count")];

  return v12;
}

- (int)diagnosticThresholdCount
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(WRSignpost *)self diagnostics];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 hasTriggerThresholdCount])
        {
          LODWORD(v3) = [v6 triggerThresholdCount];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasDiagnosticThresholdCount
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(WRSignpost *)self diagnostics];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasTriggerThresholdCount])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (double)diagnosticThresholdIntervalSeconds
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(WRSignpost *)self diagnostics];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasTriggerThresholdDurationSum])
        {
          [v8 triggerThresholdDurationSum];
          v4 = v9;
          goto LABEL_11;
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

- (uint64_t)matchesSignpost:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_8;
  }

  v5 = [v3 subsystem];
  v6 = [a1 subsystem];
  if (![v5 isEqualToString:v6])
  {
    goto LABEL_7;
  }

  v7 = [v4 category];
  v8 = [a1 category];
  if (![v7 isEqualToString:v8])
  {

LABEL_7:
    goto LABEL_8;
  }

  v9 = [v4 name];
  v10 = [a1 name];
  v11 = [v9 isEqualToString:v10];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v12 = 1;
LABEL_9:

  return v12;
}

- (uint64_t)setEventIdentifierIsSignpostID:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end