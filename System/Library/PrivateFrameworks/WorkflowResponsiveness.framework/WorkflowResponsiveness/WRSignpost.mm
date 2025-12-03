@interface WRSignpost
- (BOOL)hasDiagnosticThresholdCount;
- (BOOL)isEqual:(id)equal;
- (WRSignpost)initWithSubsystem:(id)subsystem category:(id)category name:(id)name eventIdentifierFieldName:(id)fieldName individuationFieldName:(id)individuationFieldName environmentFieldNames:(id)names networkBound:(BOOL)bound customEnvironmentCoreAnalyticsEventName:(id)self0 diagnostics:(id)self1;
- (double)diagnosticThresholdIntervalSeconds;
- (id)debugDescription;
- (int)diagnosticThresholdCount;
- (int64_t)compare:(id)compare;
- (uint64_t)hasChangesRelativeTo:(id)to;
- (uint64_t)matchesSignpost:(void *)signpost;
- (uint64_t)setEventIdentifierIsSignpostID:(uint64_t)result;
- (unint64_t)hash;
@end

@implementation WRSignpost

- (WRSignpost)initWithSubsystem:(id)subsystem category:(id)category name:(id)name eventIdentifierFieldName:(id)fieldName individuationFieldName:(id)individuationFieldName environmentFieldNames:(id)names networkBound:(BOOL)bound customEnvironmentCoreAnalyticsEventName:(id)self0 diagnostics:(id)self1
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  nameCopy = name;
  fieldNameCopy = fieldName;
  individuationFieldNameCopy = individuationFieldName;
  namesCopy = names;
  eventNameCopy = eventName;
  diagnosticsCopy = diagnostics;
  v43.receiver = self;
  v43.super_class = WRSignpost;
  v25 = [(WRSignpost *)&v43 init];
  if (v25)
  {
    v26 = [subsystemCopy copy];
    subsystem = v25->_subsystem;
    v25->_subsystem = v26;

    v28 = [categoryCopy copy];
    category = v25->_category;
    v25->_category = v28;

    v30 = [nameCopy copy];
    name = v25->_name;
    v25->_name = v30;

    v32 = [fieldNameCopy copy];
    eventIdentifierFieldName = v25->_eventIdentifierFieldName;
    v25->_eventIdentifierFieldName = v32;

    v34 = [individuationFieldNameCopy copy];
    individuationFieldName = v25->_individuationFieldName;
    v25->_individuationFieldName = v34;

    v36 = [namesCopy copy];
    environmentFieldNames = v25->_environmentFieldNames;
    v25->_environmentFieldNames = v36;

    v25->_networkBound = bound;
    v38 = [eventNameCopy copy];
    customEnvironmentCoreAnalyticsEventName = v25->_customEnvironmentCoreAnalyticsEventName;
    v25->_customEnvironmentCoreAnalyticsEventName = v38;

    v40 = [diagnosticsCopy copy];
    diagnostics = v25->_diagnostics;
    v25->_diagnostics = v40;
  }

  return v25;
}

- (uint64_t)hasChangesRelativeTo:(id)to
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (to && to != v3)
  {
    diagnostics = [to diagnostics];
    v7 = [diagnostics count];
    diagnostics2 = [v4 diagnostics];
    v9 = [diagnostics2 count];

    if (v7 == v9)
    {
      diagnostics3 = [to diagnostics];
      v11 = [diagnostics3 count];

      if (v11)
      {
        v12 = 0;
        do
        {
          diagnostics4 = [to diagnostics];
          v14 = [diagnostics4 objectAtIndexedSubscript:v12];

          diagnostics5 = [v4 diagnostics];
          v16 = [diagnostics5 objectAtIndexedSubscript:v12];

          v17 = [v14 isEqual:v16];
          if (!v17)
          {
            break;
          }

          ++v12;
          diagnostics6 = [to diagnostics];
          v19 = [diagnostics6 count];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WRSignpost *)self compare:equalCopy]== 0;
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  subsystem = [(WRSignpost *)self subsystem];
  subsystem2 = [compareCopy subsystem];
  v7 = [subsystem compare:subsystem2];

  if (!v7)
  {
    category = [(WRSignpost *)self category];
    category2 = [compareCopy category];
    v7 = [category compare:category2];

    if (!v7)
    {
      name = [(WRSignpost *)self name];
      name2 = [compareCopy name];
      v7 = [name compare:name2];
    }
  }

  return v7;
}

- (unint64_t)hash
{
  name = [(WRSignpost *)self name];
  v3 = [name hash];

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
  diagnostics = [(WRSignpost *)self diagnostics];
  v3 = [diagnostics countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(diagnostics);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 hasTriggerThresholdCount])
        {
          LODWORD(v3) = [v6 triggerThresholdCount];
          goto LABEL_11;
        }
      }

      v3 = [diagnostics countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  diagnostics = [(WRSignpost *)self diagnostics];
  v3 = [diagnostics countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(diagnostics);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasTriggerThresholdCount])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [diagnostics countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  diagnostics = [(WRSignpost *)self diagnostics];
  v3 = [diagnostics countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(diagnostics);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasTriggerThresholdDurationSum])
        {
          [v8 triggerThresholdDurationSum];
          v4 = v9;
          goto LABEL_11;
        }
      }

      v5 = [diagnostics countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (uint64_t)matchesSignpost:(void *)signpost
{
  v3 = a2;
  v4 = v3;
  if (!signpost)
  {
    goto LABEL_8;
  }

  subsystem = [v3 subsystem];
  subsystem2 = [signpost subsystem];
  if (![subsystem isEqualToString:subsystem2])
  {
    goto LABEL_7;
  }

  category = [v4 category];
  category2 = [signpost category];
  if (![category isEqualToString:category2])
  {

LABEL_7:
    goto LABEL_8;
  }

  name = [v4 name];
  name2 = [signpost name];
  v11 = [name isEqualToString:name2];

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