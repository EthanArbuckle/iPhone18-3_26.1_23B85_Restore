@interface PKTransitAppletState
- (BOOL)isEqual:(id)equal;
- (PKFelicaTransitAppletState)felicaState;
- (PKTransitAppletState)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)processUpdateWithAppletHistory:(id)history concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction mutatedBalances:(id *)balances balanceLabelDictionary:(id)dictionary unitDictionary:(id)unitDictionary planLabelDictionary:(id)labelDictionary;
- (id)transitPassPropertiesWithPaymentApplication:(id)application fieldCollection:(id)collection;
- (id)transitPassPropertiesWithPaymentApplication:(id)application pass:(id)pass;
- (id)updatedEnrouteTransitTypesFromExistingTypes:(id)types newTypes:(id)newTypes;
- (unint64_t)hash;
- (void)_resolveTransactionsFromState:(id)state toState:(id)toState withHistoryRecords:(id)records concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction balanceLabels:(id)labels unitDictionary:(id)dictionary planLabels:(id)self0;
- (void)addEnrouteTransitType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransitAppletState

- (PKFelicaTransitAppletState)felicaState
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKTransitAppletState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PKTransitAppletState;
  v5 = [(PKTransitAppletState *)&v32 init];
  if (v5)
  {
    v5->_blacklisted = [coderCopy decodeBoolForKey:@"blacklisted"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"historySequenceNumber"];
    historySequenceNumber = v5->_historySequenceNumber;
    v5->_historySequenceNumber = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverRefreshIdentifier"];
    serverRefreshIdentifier = v5->_serverRefreshIdentifier;
    v5->_serverRefreshIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v12 = objc_alloc(MEMORY[0x1E696AB90]);
        [v10 decimalValue];
        v11 = [v12 initWithDecimal:v31];
      }

      balance = v5->_balance;
      v5->_balance = v11;
    }

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loyaltyBalance"];
    loyaltyBalance = v5->_loyaltyBalance;
    v5->_loyaltyBalance = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v18;

    v5->_needsStationProcessing = [coderCopy decodeBoolForKey:@"needsStationProcessing"];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"enrouteTransitTypes"];
    enrouteTransitTypes = v5->_enrouteTransitTypes;
    v5->_enrouteTransitTypes = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"balances"];
    balances = v5->_balances;
    v5->_balances = v28;

    v5->_appletStateDirty = [coderCopy decodeBoolForKey:@"appletStateDirty"];
    if (!v5->_enrouteTransitTypes && [coderCopy decodeBoolForKey:@"inStation"])
    {
      [(PKTransitAppletState *)v5 addEnrouteTransitType:@"TransitMetro"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  blacklisted = self->_blacklisted;
  coderCopy = coder;
  [coderCopy encodeBool:blacklisted forKey:@"blacklisted"];
  [coderCopy encodeObject:self->_historySequenceNumber forKey:@"historySequenceNumber"];
  [coderCopy encodeObject:self->_serverRefreshIdentifier forKey:@"serverRefreshIdentifier"];
  [coderCopy encodeObject:self->_balance forKey:@"balance"];
  [coderCopy encodeObject:self->_loyaltyBalance forKey:@"loyaltyBalance"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeBool:self->_needsStationProcessing forKey:@"needsStationProcessing"];
  [coderCopy encodeObject:self->_enrouteTransitTypes forKey:@"enrouteTransitTypes"];
  [coderCopy encodeObject:self->_balances forKey:@"balances"];
  [coderCopy encodeBool:self->_appletStateDirty forKey:@"appletStateDirty"];
  [coderCopy encodeBool:-[PKTransitAppletState isInStation](self forKey:{"isInStation"), @"inStation"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_blacklisted;
  v6 = [(NSNumber *)self->_historySequenceNumber copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSNumber *)self->_serverRefreshIdentifier copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSDecimalNumber *)self->_balance copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSNumber *)self->_loyaltyBalance copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSString *)self->_currency copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  *(v5 + 9) = self->_needsStationProcessing;
  v18 = [(NSArray *)self->_enrouteTransitTypes copyWithZone:zone];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  v20 = [(NSArray *)self->_balances copyWithZone:zone];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  *(v5 + 10) = self->_appletStateDirty;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  v6 = v5;
  if (self->_blacklisted != v5[8] || self->_appletStateDirty != v5[10])
  {
    goto LABEL_10;
  }

  historySequenceNumber = self->_historySequenceNumber;
  v8 = *(v6 + 2);
  if (historySequenceNumber && v8)
  {
    if (([(NSNumber *)historySequenceNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (historySequenceNumber != v8)
  {
    goto LABEL_10;
  }

  serverRefreshIdentifier = self->_serverRefreshIdentifier;
  v12 = *(v6 + 3);
  if (serverRefreshIdentifier && v12)
  {
    if (([(NSNumber *)serverRefreshIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (serverRefreshIdentifier != v12)
  {
    goto LABEL_10;
  }

  balance = self->_balance;
  v14 = *(v6 + 4);
  if (balance && v14)
  {
    if (([(NSDecimalNumber *)balance isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (balance != v14)
  {
    goto LABEL_10;
  }

  loyaltyBalance = self->_loyaltyBalance;
  v16 = *(v6 + 5);
  if (loyaltyBalance && v16)
  {
    if (([(NSNumber *)loyaltyBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (loyaltyBalance != v16)
  {
    goto LABEL_10;
  }

  expirationDate = self->_expirationDate;
  v18 = *(v6 + 7);
  if (expirationDate && v18)
  {
    if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (expirationDate != v18)
  {
    goto LABEL_10;
  }

  currency = self->_currency;
  v20 = *(v6 + 6);
  if (currency && v20)
  {
    if (([(NSString *)currency isEqual:?]& 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (currency != v20)
  {
    goto LABEL_10;
  }

  enrouteTransitTypes = self->_enrouteTransitTypes;
  v22 = *(v6 + 10);
  if (!enrouteTransitTypes || !v22)
  {
    if (enrouteTransitTypes == v22)
    {
      goto LABEL_43;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (([(NSArray *)enrouteTransitTypes isEqual:?]& 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_43:
  if (self->_needsStationProcessing != v6[9])
  {
    goto LABEL_10;
  }

  balances = self->_balances;
  v24 = *(v6 + 8);
  if (balances && v24)
  {
    v9 = [(NSArray *)balances isEqual:?];
  }

  else
  {
    v9 = balances == v24;
  }

LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:2 * ((((2 * self->_needsStationProcessing) | (4 * self->_blacklisted)) | self->_appletStateDirty) & 7)];
  v4 = [v3 hash];

  v5 = [(NSArray *)self->_enrouteTransitTypes hash];
  v6 = v5 ^ [(NSNumber *)self->_historySequenceNumber hash];
  v7 = v6 ^ [(NSNumber *)self->_serverRefreshIdentifier hash];
  v8 = v7 ^ [(NSDecimalNumber *)self->_balance hash];
  v9 = v8 ^ [(NSArray *)self->_balances hash];
  return v9 ^ [(NSNumber *)self->_loyaltyBalance hash]^ v4;
}

- (id)processUpdateWithAppletHistory:(id)history concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction mutatedBalances:(id *)balances balanceLabelDictionary:(id)dictionary unitDictionary:(id)unitDictionary planLabelDictionary:(id)labelDictionary
{
  v60 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dictionaryCopy = dictionary;
  unitDictionaryCopy = unitDictionary;
  labelDictionaryCopy = labelDictionary;
  v16 = [(PKTransitAppletState *)self copy];
  [historyCopy sanitizeValuesWithState:self];
  commutePlans = [historyCopy commutePlans];
  [v16 setCommutePlans:commutePlans];

  [v16 setBlacklisted:{objc_msgSend(historyCopy, "isBlacklisted")}];
  balance = [historyCopy balance];
  [v16 setBalance:balance];

  balances = [historyCopy balances];
  [v16 setBalances:balances];

  loyaltyBalance = [historyCopy loyaltyBalance];
  [v16 setLoyaltyBalance:loyaltyBalance];

  expirationDate = [historyCopy expirationDate];
  [v16 setExpirationDate:expirationDate];

  currency = [historyCopy currency];
  [v16 setCurrency:currency];

  serverRefreshIdentifier = [historyCopy serverRefreshIdentifier];
  [v16 setServerRefreshIdentifier:serverRefreshIdentifier];

  if (balances)
  {
    balances2 = [historyCopy balances];
    v25 = [balances2 count];

    if (v25)
    {
      balances3 = [(PKTransitAppletState *)self balances];
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
      balances4 = [historyCopy balances];
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __171__PKTransitAppletState_processUpdateWithAppletHistory_concreteTransactions_ephemeralTransaction_mutatedBalances_balanceLabelDictionary_unitDictionary_planLabelDictionary___block_invoke;
      v54[3] = &unk_1E79C94B0;
      v55 = balances3;
      v56 = v27;
      v29 = v27;
      v30 = balances3;
      [balances4 enumerateObjectsUsingBlock:v54];

      v31 = [v29 copy];
      v32 = *balances;
      *balances = v31;
    }
  }

  enrouteTransitTypes = [v16 enrouteTransitTypes];
  enrouteTransitTypes2 = [historyCopy enrouteTransitTypes];
  v35 = [(PKTransitAppletState *)self updatedEnrouteTransitTypesFromExistingTypes:enrouteTransitTypes newTypes:enrouteTransitTypes2];
  [v16 setEnrouteTransitTypes:v35];

  [historyCopy historyRecords];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v36 = v53 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v51;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v51 != v39)
        {
          objc_enumerationMutation(v36);
        }

        historySequenceNumber = [*(*(&v50 + 1) + 8 * i) historySequenceNumber];
        if (historySequenceNumber)
        {
          v42 = historySequenceNumber;
          [v16 setHistorySequenceNumber:historySequenceNumber];

          goto LABEL_14;
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (transactions | transaction && ![(PKTransitAppletState *)self isEqual:v16])
  {
    [(PKTransitAppletState *)self _resolveTransactionsFromState:self toState:v16 withHistoryRecords:v36 concreteTransactions:transactions ephemeralTransaction:transaction balanceLabels:dictionaryCopy unitDictionary:unitDictionaryCopy planLabels:labelDictionaryCopy];
    v43 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      isInStation = [v16 isInStation];
      v45 = &stru_1F227FD28;
      if (isInStation)
      {
        v45 = @"inStation ";
      }

      *buf = 138412290;
      v58 = v45;
      _os_log_impl(&dword_1AD337000, v43, OS_LOG_TYPE_DEFAULT, "Resolved State is: %@", buf, 0xCu);
    }
  }

  return v16;
}

void __171__PKTransitAppletState_processUpdateWithAppletHistory_concreteTransactions_ephemeralTransaction_mutatedBalances_balanceLabelDictionary_unitDictionary_planLabelDictionary___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * v8);
      v10 = [v3 identifier];
      v11 = [v9 identifier];
      v12 = v11;
      if (v10 && v11)
      {
        v13 = [v10 isEqual:v11];

        if (v13)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (v10 == v12)
        {
LABEL_14:
          v14 = v9;

          if (!v3 || !v14)
          {
            goto LABEL_18;
          }

          if (([v3 isEqual:v14] & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = 0;
LABEL_18:
  if (v14 != v3)
  {
LABEL_19:
    [*(a1 + 40) addObject:{v3, v15}];
  }

LABEL_20:
}

- (id)updatedEnrouteTransitTypesFromExistingTypes:(id)types newTypes:(id)newTypes
{
  typesCopy = types;
  newTypesCopy = newTypes;
  v7 = [newTypesCopy count];
  if (v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    if (v7)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __77__PKTransitAppletState_updatedEnrouteTransitTypesFromExistingTypes_newTypes___block_invoke;
      v14[3] = &unk_1E79C94D8;
      v8 = newTypesCopy;
      v15 = v8;
      v9 = v7;
      v16 = v9;
      [typesCopy enumerateObjectsUsingBlock:v14];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__PKTransitAppletState_updatedEnrouteTransitTypesFromExistingTypes_newTypes___block_invoke_2;
      v12[3] = &unk_1E79C9500;
      v7 = v9;
      v13 = v7;
      [v8 enumerateObjectsUsingBlock:v12];
    }
  }

  if ([v7 count])
  {
    v10 = [v7 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __77__PKTransitAppletState_updatedEnrouteTransitTypesFromExistingTypes_newTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __77__PKTransitAppletState_updatedEnrouteTransitTypesFromExistingTypes_newTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)_resolveTransactionsFromState:(id)state toState:(id)toState withHistoryRecords:(id)records concreteTransactions:(id *)transactions ephemeralTransaction:(id *)transaction balanceLabels:(id)labels unitDictionary:(id)dictionary planLabels:(id)self0
{
  *&v94 = transactions;
  *(&v94 + 1) = transaction;
  v120 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  toStateCopy = toState;
  recordsCopy = records;
  labelsCopy = labels;
  dictionaryCopy = dictionary;
  planLabelsCopy = planLabels;
  v104 = objc_alloc_init(MEMORY[0x1E695DF70]);
  historySequenceNumber = [stateCopy historySequenceNumber];
  unsignedIntegerValue = [historySequenceNumber unsignedIntegerValue];
  enrouteTransitTypes = [stateCopy enrouteTransitTypes];
  enrouteTransitTypes2 = [toStateCopy enrouteTransitTypes];
  v96 = enrouteTransitTypes;
  lastObject = [enrouteTransitTypes lastObject];
  v93 = enrouteTransitTypes2;
  lastObject2 = [enrouteTransitTypes2 lastObject];
  v103 = labelsCopy;
  v92 = lastObject2;
  if (lastObject2 && (v21 = lastObject2, ([lastObject2 isEqual:lastObject] & 1) == 0))
  {
    v101 = PKPaymentTransactionTransitSubtypeForTransactionDetailString(v21);
  }

  else
  {
    v101 = 0;
  }

  serverRefreshIdentifier = [stateCopy serverRefreshIdentifier];
  serverRefreshIdentifier2 = [toStateCopy serverRefreshIdentifier];
  appletStateDirty = [stateCopy appletStateDirty];
  v97 = serverRefreshIdentifier;
  if (!serverRefreshIdentifier && serverRefreshIdentifier2 || serverRefreshIdentifier && serverRefreshIdentifier2 && ([serverRefreshIdentifier isEqualToNumber:?] & 1) == 0)
  {
    appletStateDirty = 1;
  }

  [toStateCopy setAppletStateDirty:appletStateDirty];
  v100 = toStateCopy;
  v91 = stateCopy;
  if (!historySequenceNumber || ([toStateCopy historySequenceNumber], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "unsignedIntegerValue"), v24, unsignedIntegerValue != v25))
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v26 = recordsCopy;
    v27 = [v26 countByEnumeratingWithState:&v114 objects:v119 count:16];
    if (v27)
    {
      v28 = v27;
      historySequenceNumber2 = 0;
      v30 = *v115;
      while (2)
      {
        v31 = 0;
        v32 = historySequenceNumber2;
        do
        {
          if (*v115 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v114 + 1) + 8 * v31);
          historySequenceNumber2 = [v33 historySequenceNumber];
          unsignedIntegerValue2 = [historySequenceNumber2 unsignedIntegerValue];
          if (historySequenceNumber && unsignedIntegerValue == unsignedIntegerValue2)
          {

            historySequenceNumber2 = v32;
            goto LABEL_28;
          }

          if (!v32 || unsignedIntegerValue2 != [v32 unsignedIntegerValue])
          {
            [v104 addObject:v33];
          }

          ++v31;
          v32 = historySequenceNumber2;
        }

        while (v28 != v31);
        v28 = [v26 countByEnumeratingWithState:&v114 objects:v119 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

LABEL_28:

      stateCopy = v91;
      toStateCopy = v100;
    }
  }

  balance = [stateCopy balance];
  v36 = balance;
  if (balance)
  {
    zero = balance;
  }

  else
  {
    zero = [MEMORY[0x1E696AB90] zero];
  }

  v38 = zero;
  if (v94 != 0)
  {
    v102 = zero;
    v90 = v36;
    currency = [toStateCopy currency];
    v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
    reverseObjectEnumerator = [v104 reverseObjectEnumerator];
    nextObject = [reverseObjectEnumerator nextObject];
    v98 = reverseObjectEnumerator;
    if (nextObject)
    {
      v43 = nextObject;
      v89 = 0;
      v44 = v103;
      do
      {
        v45 = [v43 concreteTransactionWithCurrency:currency balanceLabels:v44 unitDictionary:dictionaryCopy planLabels:planLabelsCopy];
        v46 = v45;
        if (v45)
        {
          amount = [v45 amount];
          if (amount)
          {
            zero2 = [MEMORY[0x1E696AB90] zero];
            v49 = [amount compare:zero2];

            if (v49)
            {
              v50 = [v102 decimalNumberBySubtracting:amount];
              v51 = v50;
              if (v50)
              {
                v52 = v50;

                v102 = v52;
                toStateCopy = v100;
              }

              if (![v46 transitType])
              {
                if (v49 == -1)
                {
                  v53 = 513;
                }

                else
                {
                  v53 = 515;
                }

                [v46 setTransitType:v53];
              }

              reverseObjectEnumerator = v98;
            }

            v44 = v103;
          }

          recordType = [v43 recordType];
          if (recordType)
          {
            if (recordType == 1)
            {
              if (v101)
              {
                if ([v46 transitType] == v101)
                {
                  endStation = [v46 endStation];

                  if (!endStation)
                  {
                    [v46 setEnRoute:1];
                    v56 = v46;

                    v89 = v56;
                  }
                }
              }
            }
          }

          else
          {
            historySequenceNumber3 = [v43 historySequenceNumber];

            if (historySequenceNumber3)
            {
              [v40 addObject:v46];
            }
          }
        }

        nextObject2 = [reverseObjectEnumerator nextObject];

        v43 = nextObject2;
      }

      while (nextObject2);
    }

    else
    {
      v89 = 0;
    }

    balance2 = [toStateCopy balance];
    v61 = balance2;
    if (balance2)
    {
      zero3 = balance2;
    }

    else
    {
      zero3 = [MEMORY[0x1E696AB90] zero];
    }

    v63 = zero3;

    v64 = [v102 compare:v63];
    v65 = v64;
    v66 = 0;
    if (v90)
    {
      v67 = v101;
      if (v64)
      {
        v68 = [v102 decimalNumberBySubtracting:v63];
        v66 = v68;
        if (v68)
        {
          v69 = v68;
        }
      }
    }

    else
    {
      v67 = v101;
    }

    if (![v40 count] && v96)
    {
      v70 = v93;
      if (v93)
      {
        v70 = v93;
        if ([v93 isEqual:v96])
        {
          v67 = v101;
          goto LABEL_94;
        }
      }

      v87 = v63;
      if ([v70 count])
      {
        v71 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v70];
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __163__PKTransitAppletState__resolveTransactionsFromState_toState_withHistoryRecords_concreteTransactions_ephemeralTransaction_balanceLabels_unitDictionary_planLabels___block_invoke;
        v112[3] = &unk_1E79C4340;
        v113 = v71;
        v72 = v71;
        v73 = [v96 pk_objectsPassingTest:v112];
      }

      else
      {
        v73 = v96;
      }

      v86 = v65;
      v88 = currency;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v74 = v73;
      v75 = [v74 countByEnumeratingWithState:&v108 objects:v118 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v109;
        do
        {
          v78 = 0;
          do
          {
            if (*v109 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v79 = *(*(&v108 + 1) + 8 * v78);
            v80 = [PKPaymentTransaction paymentTransactionWithSource:1];
            [v80 setOriginatedByDevice:1];
            [v80 setTransactionType:2];
            [v80 setTransitType:PKPaymentTransactionTransitSubtypeForTransactionDetailString(v79)];
            if (v66)
            {
              if (lastObject && v79)
              {
                if (([v79 isEqual:lastObject] & 1) == 0)
                {
                  goto LABEL_88;
                }

LABEL_87:
                [v80 setAmount:v66];

                v66 = 0;
                goto LABEL_88;
              }

              if (v79 == lastObject)
              {
                goto LABEL_87;
              }
            }

LABEL_88:
            [v40 addObject:v80];

            ++v78;
          }

          while (v76 != v78);
          v81 = [v74 countByEnumeratingWithState:&v108 objects:v118 count:16];
          v76 = v81;
        }

        while (v81);
      }

      v67 = v101;
      v63 = v87;
      currency = v88;
      reverseObjectEnumerator = v98;
      v65 = v86;
    }

LABEL_94:
    if (v66)
    {
      v82 = [PKPaymentTransaction paymentTransactionWithSource:1];
      [v82 setOriginatedByDevice:1];
      [v82 setTransactionType:2];
      if (v65 == -1)
      {
        v83 = 513;
      }

      else
      {
        v83 = 515;
      }

      [v82 setTransitType:v83];
      [v82 setAmount:v66];
      [v40 addObject:v82];

      v67 = v101;
    }

    if (![v40 count])
    {

      v40 = 0;
    }

    if (v94)
    {
      v84 = [v40 copy];
      v85 = *v94;
      *v94 = v84;
      v67 = v101;
    }

    v59 = v89;
    if (*(&v94 + 1) && !v89 && v67)
    {
      v59 = [PKPaymentTransaction paymentTransactionWithSource:1];
      [v59 setOriginatedByDevice:1];
      [v59 setTransactionType:2];
      [v59 setTransitType:v67];
      [v59 setEnRoute:1];
      toStateCopy = v100;
      v38 = v102;
      stateCopy = v91;
    }

    else
    {
      toStateCopy = v100;
      v38 = v102;
      stateCopy = v91;
      if (!*(&v94 + 1))
      {
LABEL_109:
        v36 = v90;
        goto LABEL_110;
      }
    }

    objc_storeStrong(*(&v94 + 1), v59);
    goto LABEL_109;
  }

  v59 = 0;
LABEL_110:
}

- (id)transitPassPropertiesWithPaymentApplication:(id)application pass:(id)pass
{
  passCopy = pass;
  applicationCopy = application;
  v8 = [[PKSecureElementPassFieldCollection alloc] initWithBalanceFieldsFromPass:passCopy];

  v9 = [(PKTransitAppletState *)self transitPassPropertiesWithPaymentApplication:applicationCopy fieldCollection:v8];

  return v9;
}

- (id)transitPassPropertiesWithPaymentApplication:(id)application fieldCollection:(id)collection
{
  collectionCopy = collection;
  applicationCopy = application;
  v8 = [(PKStoredValuePassProperties *)[PKTransitPassProperties alloc] initWithTransitAppletState:self paymentApplication:applicationCopy fieldCollection:collectionCopy];

  return v8;
}

- (void)addEnrouteTransitType:(id)type
{
  typeCopy = type;
  if (![(NSArray *)self->_enrouteTransitTypes containsObject:?])
  {
    enrouteTransitTypes = self->_enrouteTransitTypes;
    if (enrouteTransitTypes)
    {
      v5 = [(NSArray *)enrouteTransitTypes mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v6 = v5;
    [v5 addObject:typeCopy];
    v7 = [v6 copy];
    v8 = self->_enrouteTransitTypes;
    self->_enrouteTransitTypes = v7;
  }
}

@end