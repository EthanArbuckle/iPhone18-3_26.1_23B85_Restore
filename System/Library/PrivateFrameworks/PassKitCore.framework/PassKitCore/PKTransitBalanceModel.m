@interface PKTransitBalanceModel
- (BOOL)hasDeviceBoundCommutePlans;
- (BOOL)hasPositiveBalance;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)balancesAndCountPlansByID;
- (NSString)displayableCommutePlanCount;
- (NSString)displayableListOfBalances;
- (NSString)primaryDisplayableBalance;
- (PKTransitBalanceModel)initWithPass:(id)a3;
- (id)balanceForIdentifiers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filteredActionsForDisplayableEntities;
- (void)_updateBalancesAndPlans;
- (void)applyStoredValueBalancesFromProperties:(id)a3;
- (void)getDisplayableCommutePlanDetailsForTitle:(id *)a3 value:(id *)a4 subtitle:(id *)a5 isExpired:(BOOL *)a6;
- (void)setDynamicBalances:(id)a3;
- (void)setDynamicBalancesByID:(id)a3;
- (void)setTransitProperties:(id)a3 andApplyStoredValueBalances:(BOOL)a4;
- (void)updateWithDynamicBalances:(id)a3;
- (void)updateWithDynamicCommutePlans:(id)a3;
@end

@implementation PKTransitBalanceModel

- (PKTransitBalanceModel)initWithPass:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PKTransitBalanceModel;
  v6 = [(PKTransitBalanceModel *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pass, a3);
    v8 = MEMORY[0x1E695DF70];
    v9 = [v5 balanceFields];
    v10 = [v8 arrayWithArray:v9];
    balanceFields = v7->_balanceFields;
    v7->_balanceFields = v10;

    v12 = [v5 transitCommutePlans];
    transitCommutePlans = v7->_transitCommutePlans;
    v7->_transitCommutePlans = v12;

    [(PKTransitBalanceModel *)v7 _updateBalancesAndPlans];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    transitProperties = self->_transitProperties;
    v7 = *(v5 + 2);
    if (transitProperties && v7)
    {
      if (![(PKStoredValuePassProperties *)transitProperties isEqual:?])
      {
        goto LABEL_21;
      }
    }

    else if (transitProperties != v7)
    {
LABEL_21:
      v8 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (![(NSDictionary *)self->_balancesByID isEqualToDictionary:*(v5 + 1)]|| ![(NSArray *)self->_displayableBalances isEqualToArray:*(v5 + 6)]|| ![(NSArray *)self->_displayableCommutePlans isEqualToArray:*(v5 + 11)]|| ![(NSArray *)self->_displayableCommutePlanBalances isEqualToArray:*(v5 + 9)]|| ![(NSArray *)self->_displayableCurrencyBalances isEqualToArray:*(v5 + 7)]|| ![(NSArray *)self->_displayablePointsBalances isEqualToArray:*(v5 + 8)]|| ![(NSArray *)self->_transitCommutePlans isEqualToArray:*(v5 + 10)]|| ![(NSArray *)self->_displayableCommutePlanActions isEqualToArray:*(v5 + 12)])
    {
      goto LABEL_21;
    }

    v9 = [(PKObject *)self->_pass uniqueID];
    v10 = [*(v5 + 5) uniqueID];
    v11 = v9;
    v12 = v10;
    v13 = v12;
    if (v11 == v12)
    {
    }

    else
    {
      if (!v11 || !v12)
      {

        goto LABEL_31;
      }

      v14 = [v11 isEqualToString:v12];

      if (!v14)
      {
        goto LABEL_31;
      }
    }

    dynamicPlans = self->_dynamicPlans;
    v17 = *(v5 + 3);
    if (dynamicPlans && v17)
    {
      if (([(NSArray *)dynamicPlans isEqual:?]& 1) != 0)
      {
        goto LABEL_33;
      }
    }

    else if (dynamicPlans == v17)
    {
LABEL_33:
      dynamicPlansByUniqueId = self->_dynamicPlansByUniqueId;
      v19 = *(v5 + 4);
      if (dynamicPlansByUniqueId && v19)
      {
        v8 = [(NSMutableDictionary *)dynamicPlansByUniqueId isEqual:?];
      }

      else
      {
        v8 = dynamicPlansByUniqueId == v19;
      }

      goto LABEL_32;
    }

LABEL_31:
    v8 = 0;
LABEL_32:

    goto LABEL_22;
  }

  v8 = 0;
LABEL_23:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKStoredValuePassProperties *)self->_transitProperties copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSDictionary *)self->_balancesByID copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSMutableArray *)self->_balanceFields mutableCopyWithZone:a3];
  v11 = *(v5 + 104);
  *(v5 + 104) = v10;

  v12 = [(NSArray *)self->_displayableBalances copyWithZone:a3];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSArray *)self->_displayableCurrencyBalances copyWithZone:a3];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSArray *)self->_displayablePointsBalances copyWithZone:a3];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSArray *)self->_transitCommutePlans copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSArray *)self->_displayableCommutePlanBalances copyWithZone:a3];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSArray *)self->_displayableCommutePlans copyWithZone:a3];
  v23 = *(v5 + 88);
  *(v5 + 88) = v22;

  v24 = [(NSArray *)self->_displayableCommutePlanActions copyWithZone:a3];
  v25 = *(v5 + 96);
  *(v5 + 96) = v24;

  objc_storeStrong((v5 + 40), self->_pass);
  v26 = [(NSArray *)self->_dynamicPlans copyWithZone:a3];
  v27 = *(v5 + 24);
  *(v5 + 24) = v26;

  v28 = [(NSMutableDictionary *)self->_dynamicPlansByUniqueId mutableCopyWithZone:a3];
  v29 = *(v5 + 32);
  *(v5 + 32) = v28;

  return v5;
}

- (void)setDynamicBalances:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [v11 identifiers];
        if (v12 && ([v11 isExpired] & 1) == 0)
        {
          [v5 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(PKTransitBalanceModel *)self setDynamicBalancesByID:v5];
  [(PKTransitBalanceModel *)self _updateBalancesAndPlans];
}

- (void)updateWithDynamicBalances:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_balancesByID];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 identifiers];
        if (v12)
        {
          [v5 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (![(NSDictionary *)self->_balancesByID isEqualToDictionary:v5])
  {
    v13 = [v5 copy];
    balancesByID = self->_balancesByID;
    self->_balancesByID = v13;

    [(PKTransitBalanceModel *)self _updateBalancesAndPlans];
  }
}

- (void)setDynamicBalancesByID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(NSDictionary *)self->_balancesByID isEqualToDictionary:v4];
    v4 = v8;
    if (!v5)
    {
      v6 = [v8 copy];
      balancesByID = self->_balancesByID;
      self->_balancesByID = v6;

      [(PKTransitBalanceModel *)self _updateBalancesAndPlans];
      v4 = v8;
    }
  }
}

- (NSDictionary)balancesAndCountPlansByID
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (self->_balancesByID)
  {
    [v3 addEntriesFromDictionary:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_displayableCommutePlanBalances;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 identifiers];
        v12 = v11;
        if (v11 && [v11 count])
        {
          [v4 setObject:v10 forKeyedSubscript:v12];
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

- (id)balanceForIdentifiers:(id)a3
{
  v3 = [(NSDictionary *)self->_balancesByID objectForKeyedSubscript:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)setTransitProperties:(id)a3 andApplyStoredValueBalances:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  transitProperties = self->_transitProperties;
  v10 = v7;
  if (!v7 || !transitProperties)
  {
    if (transitProperties == v7)
    {
      goto LABEL_10;
    }

LABEL_6:
    objc_storeStrong(&self->_transitProperties, a3);
    if (v4)
    {
      [(PKTransitBalanceModel *)self applyStoredValueBalancesFromProperties:v10];
    }

    else
    {
      [(PKTransitBalanceModel *)self _updateBalancesAndPlans];
    }

    v7 = v10;
    goto LABEL_10;
  }

  v9 = [(PKStoredValuePassProperties *)transitProperties isEqual:v7];
  v7 = v10;
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_10:
}

- (void)applyStoredValueBalancesFromProperties:(id)a3
{
  v20 = self;
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v3;
  v5 = [v3 balances];
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [v10 identifier];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 isCurrencyBalance];

          if (v13)
          {
            v14 = [v10 amount];
            v15 = [v10 currencyCode];
            v16 = PKCurrencyAmountCreate(v14, v15, 0);

            v17 = [PKPaymentBalance alloc];
            v18 = [v10 identifier];
            v19 = [(PKPaymentBalance *)v17 initWithIdentifier:v18 forCurrencyAmount:v16];

            if (v19)
            {
              [v4 addObject:v19];
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [(PKTransitBalanceModel *)v20 setDynamicBalances:v4];
}

- (void)updateWithDynamicCommutePlans:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  dynamicPlans = self->_dynamicPlans;
  self->_dynamicPlans = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dynamicPlansByUniqueId = self->_dynamicPlansByUniqueId;
  self->_dynamicPlansByUniqueId = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_dynamicPlans;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [v13 uniqueIdentifier];
        [(NSMutableDictionary *)self->_dynamicPlansByUniqueId setObject:v13 forKeyedSubscript:v14];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  [(PKTransitBalanceModel *)self _updateBalancesAndPlans];
}

- (BOOL)hasPositiveBalance
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_displayableBalances;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v11 + 1) + 8 * i) value];
        if (v6)
        {
          v7 = v6;
          v8 = [MEMORY[0x1E696AB90] zero];
          v9 = [v8 compare:v7];

          if (v9 == -1)
          {
            LOBYTE(v3) = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

- (BOOL)hasDeviceBoundCommutePlans
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_displayableCommutePlans;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isDeviceBound])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)filteredActionsForDisplayableEntities
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKTransitBalanceModel *)self displayableCommutePlans];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) identifier];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [(PKSecureElementPass *)self->_pass availableActions];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        if ([v17 type] == 1)
        {
          [v3 addObject:v17];
        }

        else
        {
          v18 = [v17 associatedPlanIdentifier];
          if ([v5 containsObject:v18])
          {
            [v3 addObject:v17];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v19 = [v3 copy];

  return v19;
}

- (void)_updateBalancesAndPlans
{
  v183 = *MEMORY[0x1E69E9840];
  v119 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v113 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v128 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (([(PKSecureElementPass *)self->_pass passActivationState]- 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_132;
  }

  v137 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v126 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v138 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v4 = [(PKSecureElementPass *)self->_pass availableActions];
  v5 = [v4 countByEnumeratingWithState:&v171 objects:v182 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v172;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v172 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v171 + 1) + 8 * i);
        v10 = [v9 associatedPlan];
        v11 = v10;
        if (v10)
        {
          v12 = [v10 identifier];
          [v126 setObject:v9 forKeyedSubscript:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v171 objects:v182 count:16];
    }

    while (v6);
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = self->_transitCommutePlans;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v167 objects:v181 count:16];
  v127 = self;
  v118 = v3;
  if (v13)
  {
    v14 = v13;
    v15 = *v168;
    v116 = *v168;
    do
    {
      v16 = 0;
      v120 = v14;
      do
      {
        if (*v168 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v167 + 1) + 8 * v16);
        v18 = [v17 identifier];
        v19 = [v17 requiresAppletSourceOfTruth];
        v20 = [v126 objectForKeyedSubscript:v18];
        v134 = v17;
        [v20 setAssociatedPlan:v17];
        if (v19)
        {
          v124 = v16;
          v131 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v129 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v163 = 0u;
          v164 = 0u;
          v165 = 0u;
          v166 = 0u;
          v21 = [(NSMutableDictionary *)self->_dynamicPlansByUniqueId allValues];
          v22 = [v21 countByEnumeratingWithState:&v163 objects:v180 count:16];
          if (!v22)
          {
            goto LABEL_39;
          }

          v23 = v22;
          v24 = *v164;
          while (1)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v164 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v163 + 1) + 8 * j);
              v27 = [v26 identifier];
              v28 = v18;
              v29 = v27;
              v30 = v29;
              if (v28 == v29)
              {

LABEL_28:
                v30 = [v134 updateWithCommutePlanDetail:v26];
                [v20 setAssociatedPlan:v30];
                if (v20 && ([v20 isActionAvailable] & 1) != 0 || objc_msgSend(v30, "isPlanDisplayable"))
                {
                  if ([v30 hasExpiredPlanDate])
                  {
                    v32 = v131;
                  }

                  else
                  {
                    v32 = v129;
                  }

                  [v32 addObject:v30];
                  [v128 safelyAddObject:v20];
                }

LABEL_36:

                continue;
              }

              if (!v18 || !v29)
              {

                goto LABEL_36;
              }

              v31 = [v28 isEqualToString:v29];

              if (v31)
              {
                goto LABEL_28;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v163 objects:v180 count:16];
            if (!v23)
            {
LABEL_39:

              if ([v129 count])
              {
                v33 = v129;
              }

              else
              {
                v33 = v131;
              }

              v3 = v118;
              [v118 addObjectsFromArray:v33];
              v34 = [v134 passFieldForKey:@"amountRemaining"];
              v35 = [v34 foreignReferenceIdentifiers];
              self = v127;
              v36 = [(NSDictionary *)v127->_balancesByID objectForKeyedSubscript:v35];

              if (v36 && (v20 && ([v20 isActionAvailable] & 1) != 0 || objc_msgSend(v134, "isPlanDisplayable")))
              {
                [v118 addObject:v134];
                [v128 safelyAddObject:v20];
              }

              v15 = v116;
              v14 = v120;
              v16 = v124;
              goto LABEL_52;
            }
          }
        }

        if (v20 && ([v20 isActionAvailable] & 1) != 0 || objc_msgSend(v17, "isPlanDisplayable"))
        {
          [v3 addObject:v17];
          [v128 safelyAddObject:v20];
        }

LABEL_52:

        ++v16;
      }

      while (v16 != v14);
      v14 = [(NSArray *)obj countByEnumeratingWithState:&v167 objects:v181 count:16];
    }

    while (v14);
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v130 = v3;
  v135 = [v130 countByEnumeratingWithState:&v159 objects:v179 count:16];
  if (v135)
  {
    v132 = *v160;
    do
    {
      for (k = 0; k != v135; ++k)
      {
        if (*v160 != v132)
        {
          objc_enumerationMutation(v130);
        }

        v38 = *(*(&v159 + 1) + 8 * k);
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v39 = [v38 details];
        v40 = [v39 countByEnumeratingWithState:&v155 objects:v178 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v156;
          do
          {
            for (m = 0; m != v41; ++m)
            {
              if (*v156 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v155 + 1) + 8 * m);
              v45 = [v44 key];
              v46 = [v45 isEqualToString:@"amountRemaining"];

              if (v46)
              {
                [v137 addObject:v44];
                v47 = [v44 foreignReferenceIdentifiers];
                [v138 setObject:v38 forKeyedSubscript:v47];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v155 objects:v178 count:16];
          }

          while (v41);
        }
      }

      v135 = [v130 countByEnumeratingWithState:&v159 objects:v179 count:16];
    }

    while (v135);
  }

  v48 = v127;
  v49 = [(PKStoredValuePassProperties *)v127->_transitProperties balanceAmount];
  v50 = 0x1E695D000uLL;
  v110 = v49;
  if (v49)
  {
    v51 = [[PKPaymentBalance alloc] initWithIdentifier:@"ApplicationStoredValueBalanceDefault" forCurrencyAmount:v49];
    [(NSArray *)v119 safelyAddObject:v51];
    [(NSArray *)v113 safelyAddObject:v51];
  }

  else
  {
    if (![(PKSecureElementPass *)v127->_pass hasLegacyBalanceModel]|| [(NSMutableArray *)v127->_balanceFields count])
    {
      goto LABEL_75;
    }

    v51 = objc_alloc_init(PKPassField);
    v108 = PKLocalizedPaymentString(&cfstr_LegacyPassBala.isa, 0);
    [(PKPaymentBalance *)v51 setLabel:v108];

    [(PKPaymentBalance *)v51 setKey:@"balance_identifier_field_storedvalue"];
    [(PKPaymentBalance *)v51 setForeignReferenceType:2];
    v109 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ApplicationStoredValueBalanceDefault", 0}];
    [(PKPaymentBalance *)v51 setForeignReferenceIdentifiers:v109];

    [(PKPaymentBalance *)v51 setCellStyle:1];
    [(NSMutableArray *)v127->_balanceFields addObject:v51];
  }

LABEL_75:
  if (v127->_balancesByID)
  {
    balanceFields = v127->_balanceFields;
    if (balanceFields)
    {
      v153 = 0u;
      v154 = 0u;
      v151 = 0u;
      v152 = 0u;
      v53 = balanceFields;
      v54 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v151 objects:v177 count:16];
      if (v54)
      {
        v55 = v54;
        v56 = *v152;
        v115 = v53;
        v112 = *v152;
        do
        {
          v57 = 0;
          v117 = v55;
          do
          {
            if (*v152 != v56)
            {
              objc_enumerationMutation(v53);
            }

            v58 = *(*(&v151 + 1) + 8 * v57);
            v136 = [v58 label];
            v59 = [v58 foreignReferenceIdentifiers];
            v60 = [v58 foreignReferenceType];
            if (v59)
            {
              v61 = (v60 - 1) > 1;
            }

            else
            {
              v61 = 1;
            }

            if (!v61)
            {
              if ([v59 count] == 1)
              {
                v62 = [(NSDictionary *)v48->_balancesByID objectForKeyedSubscript:v59];
                PKSetBalanceLocalizedStringIfNeeded(v62, v136);
                v149[0] = MEMORY[0x1E69E9820];
                v149[1] = 3221225472;
                v149[2] = __48__PKTransitBalanceModel__updateBalancesAndPlans__block_invoke;
                v149[3] = &unk_1E79D5850;
                v63 = v62;
                v150 = v63;
                v64 = [(NSArray *)v119 pk_containsObjectPassingTest:v149];
                v133 = v63;
                if (v63)
                {
                  if (!v64)
                  {
                    [(NSArray *)v119 addObject:v63];
                    v65 = [v63 isCurrency];
                    v66 = v113;
                    if ((v65 & 1) != 0 || (v67 = [v58 unitType], v66 = v111, v67 == 3))
                    {
                      [(NSArray *)v66 addObject:v63];
                    }
                  }
                }

                v68 = v150;
              }

              else
              {
                v121 = v58;
                v125 = v57;
                v133 = [objc_alloc(*(v50 + 3952)) initWithCapacity:{objc_msgSend(v59, "count")}];
                v68 = objc_alloc_init(*(v50 + 3952));
                v145 = 0u;
                v146 = 0u;
                v147 = 0u;
                v148 = 0u;
                obja = v59;
                v69 = v59;
                v70 = [v69 countByEnumeratingWithState:&v145 objects:v176 count:16];
                if (v70)
                {
                  v71 = v70;
                  v72 = *v146;
                  do
                  {
                    for (n = 0; n != v71; ++n)
                    {
                      if (*v146 != v72)
                      {
                        objc_enumerationMutation(v69);
                      }

                      v74 = *(*(&v145 + 1) + 8 * n);
                      v75 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v74, 0}];
                      v76 = [(NSDictionary *)v127->_balancesByID objectForKeyedSubscript:v75];
                      v77 = [v76 copy];

                      if (v77)
                      {
                        PKSetBalanceLocalizedStringIfNeeded(v77, v136);
                        v78 = [(PKStoredValuePassProperties *)v127->_transitProperties balanceWithIdentifier:v74];
                        if ([v78 isExpired])
                        {
                          v79 = v68;
                        }

                        else
                        {
                          v79 = v133;
                        }

                        [v79 addObject:v77];
                      }
                    }

                    v71 = [v69 countByEnumeratingWithState:&v145 objects:v176 count:16];
                  }

                  while (v71);
                }

                v80 = [[PKPaymentBalance alloc] initWithComponentBalances:v133 identifiers:v69 expiredBalances:v68];
                if (v80)
                {
                  [(NSArray *)v119 addObject:v80];
                  v81 = [(PKPaymentBalance *)v80 isCurrency];
                  v82 = v113;
                  if (v81 || (v83 = [v121 unitType], v82 = v111, v83 == 3))
                  {
                    [(NSArray *)v82 addObject:v80];
                  }
                }

                v48 = v127;
                v50 = 0x1E695D000;
                v53 = v115;
                v55 = v117;
                v56 = v112;
                v59 = obja;
                v57 = v125;
              }
            }

            ++v57;
          }

          while (v57 != v55);
          v55 = [(NSMutableArray *)v53 countByEnumeratingWithState:&v151 objects:v177 count:16];
        }

        while (v55);
      }
    }
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v84 = v137;
  v85 = [v84 countByEnumeratingWithState:&v141 objects:v175 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v142;
    do
    {
      for (ii = 0; ii != v86; ++ii)
      {
        if (*v142 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = *(*(&v141 + 1) + 8 * ii);
        v90 = [v89 foreignReferenceIdentifiers];
        if (([v89 foreignReferenceType] - 3) >= 0xFFFFFFFFFFFFFFFELL && v90 != 0)
        {
          v92 = [(NSDictionary *)v127->_balancesByID objectForKeyedSubscript:v90];
          v93 = [v89 label];
          [v92 setLocalizedTitle:v93];

          if (v92)
          {
            v139[0] = MEMORY[0x1E69E9820];
            v139[1] = 3221225472;
            v139[2] = __48__PKTransitBalanceModel__updateBalancesAndPlans__block_invoke_2;
            v139[3] = &unk_1E79D5850;
            v94 = v92;
            v140 = v94;
            if (![(NSArray *)v119 pk_containsObjectPassingTest:v139])
            {
              [(NSArray *)v114 addObject:v94];
            }

            v95 = v140;
          }

          else
          {
            v95 = [v138 objectForKeyedSubscript:v90];
            [v130 removeObject:v95];
          }
        }
      }

      v86 = [v84 countByEnumeratingWithState:&v141 objects:v175 count:16];
    }

    while (v86);
  }

  self = v127;
  v3 = v118;
LABEL_132:
  displayableBalances = self->_displayableBalances;
  self->_displayableBalances = v119;
  v97 = v119;

  displayableCurrencyBalances = self->_displayableCurrencyBalances;
  self->_displayableCurrencyBalances = v113;
  v99 = v113;

  displayablePointsBalances = self->_displayablePointsBalances;
  self->_displayablePointsBalances = v111;
  v101 = v111;

  v102 = [v3 copy];
  displayableCommutePlans = self->_displayableCommutePlans;
  self->_displayableCommutePlans = v102;

  displayableCommutePlanBalances = self->_displayableCommutePlanBalances;
  self->_displayableCommutePlanBalances = v114;
  v105 = v114;

  v106 = [v128 copy];
  displayableCommutePlanActions = self->_displayableCommutePlanActions;
  self->_displayableCommutePlanActions = v106;
}

uint64_t __48__PKTransitBalanceModel__updateBalancesAndPlans__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifiers];
  v5 = [v3 identifiers];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = [v4 isEqual:v5];
  }

  return v7;
}

uint64_t __48__PKTransitBalanceModel__updateBalancesAndPlans__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifiers];
  v5 = [v3 identifiers];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = v4 == v5;
  }

  else
  {
    v7 = [v4 isEqual:v5];
  }

  return v7;
}

- (NSString)primaryDisplayableBalance
{
  if ([(NSArray *)self->_displayableBalances count])
  {
    v3 = [(NSArray *)self->_displayableBalances firstObject];
    v4 = [v3 formattedValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)displayableListOfBalances
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_displayableBalances count])
  {
    if ([(NSArray *)self->_displayableBalances count]== 1)
    {
      v3 = [(PKTransitBalanceModel *)self primaryDisplayableBalance];
    }

    else
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_displayableBalances, "count")}];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = self->_displayableBalances;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v12 + 1) + 8 * i) formattedValue];
            [v4 safelyAddObject:v10];
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      v3 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v4];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)displayableCommutePlanCount
{
  v3 = [(NSArray *)self->_displayableCommutePlans count];
  if (v3)
  {
    v3 = PKPassLocalizedStringWithFormat(@"NUMBER_OF_COMMUTE_PLANS", self->_pass, @"%lu", v4, v5, v6, v7, v8, v3);
  }

  return v3;
}

- (void)getDisplayableCommutePlanDetailsForTitle:(id *)a3 value:(id *)a4 subtitle:(id *)a5 isExpired:(BOOL *)a6
{
  v23 = self->_displayableCommutePlans;
  if ([(NSArray *)v23 count]< 2)
  {
    v16 = [(NSArray *)v23 firstObject];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 title];
      *a3 = [v18 label];
      *a4 = [v18 value];
      v19 = [v17 properties];
      if ((v19 & 3) == 1)
      {
        *a5 = [v17 formattedDateString];
        if ([v17 hasExpiredPlanDate])
        {
          *a6 = 1;
        }
      }

      else if ((v19 & 4) != 0)
      {
        v20 = [v17 passFieldForKey:@"amountRemaining"];
        if (([v20 foreignReferenceType] - 1) <= 1)
        {
          v21 = [v20 foreignReferenceIdentifiers];
          v22 = [(PKTransitBalanceModel *)self balanceForIdentifiers:v21];

          *a4 = [v22 formattedValue];
        }
      }
    }
  }

  else
  {
    *a3 = PKPassLocalizedStringWithFormat(@"COMMUTE_PLANS", self->_pass, 0, v11, v12, v13, v14, v15, 0);
    *a4 = [(PKTransitBalanceModel *)self displayableCommutePlanCount];
  }
}

@end