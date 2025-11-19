@interface TPSContextualInfo
+ (id)contentDictionaryWithTipDeliveryInfoId:(id)a3 deliveryInfoMap:(id)a4;
+ (void)eventsInfoArrayForContextualInfoDictionary:(id)a3 triggerEvents:(id *)a4 desiredOutcomeEvents:(id *)a5;
- (TPSContextualInfo)initWithCoder:(id)a3;
- (TPSContextualInfo)initWithDictionary:(id)a3;
- (id)conditionForType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSContextualInfo

+ (id)contentDictionaryWithTipDeliveryInfoId:(id)a3 deliveryInfoMap:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 TPSSafeStringForKey:@"documentId"];
  [v5 setObject:v6 forKeyedSubscript:@"documentId"];

  v7 = [v4 TPSSafeNumberForKey:@"lastModified"];
  [v5 setObject:v7 forKeyedSubscript:@"lastModified"];

  v8 = [v4 TPSSafeDictionaryForKey:@"triggers"];
  [v5 setObject:v8 forKeyedSubscript:@"triggers"];

  v9 = [v4 TPSSafeDictionaryForKey:@"desiredOutcome"];
  [v5 setObject:v9 forKeyedSubscript:@"desiredOutcome"];

  v10 = [v4 TPSSafeArrayForKey:@"usageEvents"];
  [v5 setObject:v10 forKeyedSubscript:@"usageEvents"];

  v11 = [v5 copy];

  return v11;
}

+ (void)eventsInfoArrayForContextualInfoDictionary:(id)a3 triggerEvents:(id *)a4 desiredOutcomeEvents:(id *)a5
{
  v7 = a3;
  v10 = v7;
  if (a4)
  {
    v8 = [v7 TPSSafeDictionaryForKey:@"triggers"];
    *a4 = [MEMORY[0x277D71720] eventsForConditionDictionary:v8];

    v7 = v10;
  }

  if (a5)
  {
    v9 = [v10 TPSSafeDictionaryForKey:@"desiredOutcome"];
    *a5 = [MEMORY[0x277D71720] eventsForConditionDictionary:v9];

    v7 = v10;
  }
}

- (TPSContextualInfo)initWithDictionary:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = TPSContextualInfo;
  v5 = [(TPSSerializableObject *)&v36 initWithDictionary:v4];
  if (!v5)
  {
    goto LABEL_35;
  }

  v6 = [TPSContextualInfo identifierFromDictionary:v4];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(TPSContextualInfo *)v5 _lastModifiedDateFromDictionary:v4];
  v5->_lastModifiedDate = v8;
  if (v8)
  {
    v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    goto LABEL_36;
  }

  v31 = v4;
  v11 = [v4 TPSSafeArrayForKey:@"usageEvents"];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v12)
  {
    v14 = 0;
    goto LABEL_25;
  }

  v13 = v12;
  v14 = 0;
  v15 = *v33;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v33 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v32 + 1) + 8 * i);
      v18 = [MEMORY[0x277D71730] typeFromEventDictionary:v17];
      if (v18 == 3)
      {
        v19 = [MEMORY[0x277D71718] contextualBiomeEventFromDictionary:v17];
      }

      else
      {
        if (v18)
        {
          continue;
        }

        v19 = [MEMORY[0x277D71718] contextualBiomeEventFromDuetEventDictionary:v17];
      }

      v20 = v19;
      if (v19)
      {
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
        }

        [v14 addObject:v20];
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v13);
LABEL_25:
  v21 = [v14 count];
  if (v21)
  {
    v22 = [MEMORY[0x277CBEA60] arrayWithArray:v14];
  }

  else
  {
    v22 = 0;
  }

  v4 = v31;
  objc_storeStrong(&v5->_usageEvents, v22);
  if (v21)
  {
  }

  v23 = [v31 TPSSafeDictionaryForKey:@"triggers"];
  if (v23)
  {
    v24 = [objc_alloc(MEMORY[0x277D71720]) initWithDictionary:v23 type:0];
    triggerCondition = v5->_triggerCondition;
    v5->_triggerCondition = v24;
  }

  v26 = [v31 TPSSafeDictionaryForKey:@"desiredOutcome"];
  if (v26)
  {
    v27 = [objc_alloc(MEMORY[0x277D71720]) initWithDictionary:v26 type:1];
    desiredOutcomeCondition = v5->_desiredOutcomeCondition;
    v5->_desiredOutcomeCondition = v27;
  }

LABEL_35:
  v10 = v5;
LABEL_36:

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (TPSContextualInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = TPSContextualInfo;
  v5 = [(TPSSerializableObject *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentId"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"usageEvents"];
    usageEvents = v5->_usageEvents;
    v5->_usageEvents = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastModified"];
    v5->_lastModifiedDate = [v13 integerValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"triggers"];
    triggerCondition = v5->_triggerCondition;
    v5->_triggerCondition = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"desiredOutcome"];
    desiredOutcomeCondition = v5->_desiredOutcomeCondition;
    v5->_desiredOutcomeCondition = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualInfo;
  v4 = a3;
  [(TPSSerializableObject *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_identifier forKey:{@"documentId", v6.receiver, v6.super_class}];
  [v4 encodeObject:self->_usageEvents forKey:@"usageEvents"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lastModifiedDate];
  [v4 encodeObject:v5 forKey:@"lastModified"];

  [v4 encodeObject:self->_triggerCondition forKey:@"triggers"];
  [v4 encodeObject:self->_desiredOutcomeCondition forKey:@"desiredOutcome"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = TPSContextualInfo;
  v4 = [(TPSSerializableObject *)&v6 copyWithZone:a3];
  [v4 setIdentifier:self->_identifier];
  [v4 setUsageEvents:self->_usageEvents];
  [v4 setLastModifiedDate:self->_lastModifiedDate];
  [v4 setTriggerCondition:self->_triggerCondition];
  [v4 setDesiredOutcomeCondition:self->_desiredOutcomeCondition];
  return v4;
}

- (id)conditionForType:(unint64_t)a3
{
  v3 = &OBJC_IVAR___TPSContextualInfo__triggerCondition;
  if (a3 == 1)
  {
    v3 = &OBJC_IVAR___TPSContextualInfo__desiredOutcomeCondition;
  }

  return *(&self->super.super.isa + *v3);
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v14.receiver = self;
  v14.super_class = TPSContextualInfo;
  v4 = [(TPSSerializableObject *)&v14 debugDescription];
  v5 = [v3 initWithString:v4];

  identifier = self->_identifier;
  if (identifier)
  {
    [v5 appendFormat:@"%@ = %@\n", @"documentId", identifier];
  }

  triggerCondition = self->_triggerCondition;
  if (triggerCondition)
  {
    v8 = [(TPSContextualCondition *)triggerCondition debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"triggers", v8];
  }

  desiredOutcomeCondition = self->_desiredOutcomeCondition;
  if (desiredOutcomeCondition)
  {
    v10 = [(TPSContextualCondition *)desiredOutcomeCondition debugDescription];
    [v5 appendFormat:@"%@ = %@\n", @"desiredOutcome", v10];
  }

  usageEvents = self->_usageEvents;
  if (usageEvents)
  {
    v12 = [(NSArray *)usageEvents description];
    [v5 appendFormat:@"%@ = %@\n", @"usageEvents", v12];
  }

  return v5;
}

@end