@interface TPSDeliveryPrecondition
- (TPSDeliveryPrecondition)initWithDictionary:(id)a3 fallbackId:(id)a4;
- (id)conditionsForType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)registrableEvents;
@end

@implementation TPSDeliveryPrecondition

- (TPSDeliveryPrecondition)initWithDictionary:(id)a3 fallbackId:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = TPSDeliveryPrecondition;
  v8 = [(TPSSerializableObject *)&v34 initWithDictionary:v6];
  v9 = v8;
  if (v8)
  {
    v8->_statusType = 0;
    if ([v6 TPSSafeIntegerForKey:@"statusType"] == 1)
    {
      v9->_statusType = 1;
    }

    v10 = [v6 TPSSafeStringForKey:@"joinType"];
    v9->_joinType = 0;
    v29 = v10;
    if ([v10 isEqualToString:@"OR"])
    {
      v9->_joinType = 1;
    }

    v11 = [v6 TPSSafeArrayForKey:@"conditions"];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [TPSCondition conditionFromDictionary:*(*(&v30 + 1) + 8 * i)];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v15);
    }

    v19 = [v12 firstObject];
    v20 = [v12 count];
    if (v7)
    {
      if (v20 == 1)
      {
        v21 = [v19 identifier];
        v22 = [v21 isEqualToString:@"unknown"];

        if (v22)
        {
          [v19 setIdentifier:v7];
        }
      }
    }

    v23 = [v12 copy];
    conditions = v9->_conditions;
    v9->_conditions = v23;

    v25 = [v6 TPSSafeStringForKey:@"label"];
    label = v9->_label;
    v9->_label = v25;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)registrableEvents
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v3 = MEMORY[0x277CBEB18];
  v4 = [(TPSDeliveryPrecondition *)self conditions];
  v14 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v5 = [(TPSDeliveryPrecondition *)self conditions];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__TPSDeliveryPrecondition_registrableEvents__block_invoke;
  v8[3] = &unk_2789B09C8;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  if ([v10[5] count])
  {
    v6 = [v10[5] copy];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __44__TPSDeliveryPrecondition_registrableEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 values];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __44__TPSDeliveryPrecondition_registrableEvents__block_invoke_2;
      v5[3] = &unk_2789B09A0;
      v5[4] = *(a1 + 32);
      [v4 enumerateObjectsUsingBlock:v5];
    }
  }
}

void __44__TPSDeliveryPrecondition_registrableEvents__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 type] == 2 && (objc_msgSend(v10, "key"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isEqualToString:", @"ContextualEvent"), v3, v4))
  {
    v5 = [TPSCustomCapabilityValidationBuilder targetValidationForCapability:v10];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ([v7 isRegistrable])
  {
    v8 = [v10 value];
    v9 = [TPSContextualEventValidation contextualEventFromEventDictionary:v8];

    if (v9)
    {
      [*(*(*(a1 + 32) + 8) + 40) addObject:v9];
    }
  }
}

- (id)conditionsForType:(int64_t)a3
{
  if (a3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__6;
    v5 = MEMORY[0x277CBEB18];
    v6 = [(TPSDeliveryPrecondition *)self conditions];
    v16 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v7 = [(TPSDeliveryPrecondition *)self conditions];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __45__TPSDeliveryPrecondition_conditionsForType___block_invoke;
    v10[3] = &unk_2789B09F0;
    v10[4] = &v11;
    v10[5] = a3;
    [v7 enumerateObjectsUsingBlock:v10];

    if ([v12[5] count])
    {
      v8 = [v12[5] copy];
    }

    else
    {
      v8 = 0;
    }

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = [(TPSDeliveryPrecondition *)self conditions];
  }

  return v8;
}

void __45__TPSDeliveryPrecondition_conditionsForType___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 targetingValidationsForType:*(a1 + 40)];
  if ([v3 count])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setStatusType:self->_statusType];
  [v4 setJoinType:self->_joinType];
  v5 = [(NSArray *)self->_conditions copy];
  [v4 setConditions:v5];

  return v4;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = TPSDeliveryPrecondition;
  v4 = [(TPSSerializableObject *)&v9 debugDescription];
  v5 = [v3 initWithString:v4];

  [v5 appendFormat:@"\n%@ = %zd\n", @"statusType", -[TPSDeliveryPrecondition statusType](self, "statusType")];
  [v5 appendFormat:@"%@ = %zd\n", @"joinType", -[TPSDeliveryPrecondition joinType](self, "joinType")];
  v6 = [(TPSDeliveryPrecondition *)self conditions];
  v7 = [v6 debugDescription];
  [v5 appendFormat:@"%@ = %@\n", @"conditions", v7];

  return v5;
}

@end