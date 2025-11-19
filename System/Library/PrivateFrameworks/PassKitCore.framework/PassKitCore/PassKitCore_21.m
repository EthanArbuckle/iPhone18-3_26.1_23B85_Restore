uint64_t PKPassShareActivationOptionTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"pinCode")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"pinCode"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"externallyEnteredPin" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"externallyEnteredPin"], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"secondaryKey" || (v9 = v8, v10 = [(__CFString *)v8 isEqualToString:@"secondaryKey"], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"onlineSharingPin" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"onlineSharingPin"], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

void sub_1AD631A34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initSTSSession()
{
  if (qword_1ED6D18B0 != -1)
  {
    dispatch_once(&qword_1ED6D18B0, &__block_literal_global_40);
  }

  result = objc_getClass("STSSession");
  _MergedGlobals_201 = result;
  getSTSSessionClass[0] = STSSessionFunction;
  return result;
}

void *__LoadSecureTransactionService_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SecureTransactionService.framework/SecureTransactionService", 2);
  LoadSecureTransactionService_frameworkLibrary = result;
  return result;
}

Class initSTSCredential()
{
  if (qword_1ED6D18B0 != -1)
  {
    dispatch_once(&qword_1ED6D18B0, &__block_literal_global_40);
  }

  result = objc_getClass("STSCredential");
  qword_1ED6D18B8 = result;
  getSTSCredentialClass[0] = STSCredentialFunction;
  return result;
}

__CFString *PKSEConsistencyCheckDeviceCredentialTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CC7B0[a1];
  }
}

__CFString *PKProxCardTypeToString(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"PKProxCardTypeVehicleInitiatedPairing";
  }

  else
  {
    return @"Unknown";
  }
}

uint64_t PKIdentityProofingDisplayMessageActionTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PKIdentityProofingDisplayMessageActionTypeRetryProofing"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"PKIdentityProofingDisplayMessageActionTypeOpenURL"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t PKIdentityProofingConfigurationTargetDeviceTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"phone")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = [(__CFString *)v1 isEqualToString:@"phone"];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"watch" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"watch"], v6, v7))
    {
      v4 = 2;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_4:
  v4 = 1;
LABEL_9:

  return v4;
}

uint64_t PKIdentityProofingStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"actionRequired")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_38:
    v4 = 0;
    goto LABEL_39;
  }

  v3 = [@"actionRequired" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"pending" || (v6 = v5, v7 = [@"pending" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_39;
    }

    v8 = v6;
    if (v8 == @"readyToAdd" || (v9 = v8, v10 = [@"readyToAdd" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_39;
    }

    v11 = v9;
    if (v11 == @"none" || (v12 = v11, v13 = [@"none" isEqualToString:v11], v12, (v13 & 1) != 0))
    {
      v4 = 4;
      goto LABEL_39;
    }

    v14 = v12;
    if (v14 == @"enterAuthCode" || (v15 = v14, v16 = [@"enterAuthCode" isEqualToString:v14], v15, (v16 & 1) != 0))
    {
      v4 = 5;
      goto LABEL_39;
    }

    v17 = v15;
    if (v17 == @"retryAddingID" || (v18 = v17, v19 = [@"retryAddingID" isEqualToString:v17], v18, (v19 & 1) != 0))
    {
      v4 = 6;
      goto LABEL_39;
    }

    v20 = v18;
    if (v20 == @"processingRequest" || (v21 = v20, v22 = [@"processingRequest" isEqualToString:v20], v21, (v22 & 1) != 0))
    {
      v4 = 7;
      goto LABEL_39;
    }

    v23 = v21;
    if (v23 == @"cannotAddID" || (v24 = v23, v25 = [@"cannotAddID" isEqualToString:v23], v24, (v25 & 1) != 0))
    {
      v4 = 8;
      goto LABEL_39;
    }

    v26 = v24;
    if (v26 == @"unableToAddID" || (v27 = v26, v28 = [@"unableToAddID" isEqualToString:v26], v27, (v28 & 1) != 0))
    {
      v4 = 9;
      goto LABEL_39;
    }

    v29 = v27;
    if (v29 == @"waitingForWifi" || (v30 = v29, v31 = [@"waitingForWifi" isEqualToString:v29], v30, (v31 & 1) != 0))
    {
      v4 = 10;
      goto LABEL_39;
    }

    v32 = v30;
    if (v32 == @"retryAuthCode" || (v33 = v32, v34 = [@"retryAuthCode" isEqualToString:v32], v33, (v34 & 1) != 0))
    {
      v4 = 11;
      goto LABEL_39;
    }

    v35 = v33;
    if (v35 == @"livenessStepUp" || (v36 = v35, v37 = [@"livenessStepUp" isEqualToString:v35], v36, v37))
    {
      v4 = 12;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_4:
  v4 = 1;
LABEL_39:

  return v4;
}

__CFString *PKIdentityProofingStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return off_1E79CC8C0[a1 - 1];
  }
}

BOOL PKSupportsSearchForPass(void *a1)
{
  v1 = [a1 paymentPass];
  v2 = v1;
  if (!v1 || ([v1 isIdentityPass] & 1) != 0 || (objc_msgSend(v2, "isTransitPass") & 1) != 0 || (objc_msgSend(v2, "isAccessPass") & 1) != 0 || (objc_msgSend(v2, "isAppleBalancePass") & 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5 = [v2 devicePrimaryPaymentApplication];
    v3 = ([v5 state] - 9) < 0xFFFFFFFFFFFFFFFELL;
  }

  return v3;
}

id PKSearchRegionsFromLocationItems(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) group];
        v9 = [v8 regions];
        [v2 addObjectsFromArray:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];

  return v10;
}

id PKSearchAmountComparisonsFromAmountItems(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_alloc_init(PKPaymentTransactionRequestAmountComparison);
        v10 = [v8 amount];
        [(PKPaymentTransactionRequestAmountComparison *)v9 setAmount:v10];

        -[PKPaymentTransactionRequestAmountComparison setComparison:](v9, "setComparison:", [v8 comparison]);
        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

id PKSearchTokensOfGroupTypeFromTokens(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (![v10 tokenType])
        {
          v11 = v10;
          v12 = [v11 group];
          v13 = [v12 type];

          if (v13 == a1)
          {
            [v4 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 copy];

  return v14;
}

id PKSearchTokensOfTypeFromTokens(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 tokenType] == a1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

uint64_t PKEnagementActionTypeForActionURL(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v1 resolvingAgainstBaseURL:1];
    v3 = v2;
    if (!v2)
    {
      v7 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v4 = [v2 host];
    v5 = v4;
    if (v4 == @"wallet.apple.com")
    {
    }

    else
    {
      if (v4)
      {
        v6 = @"wallet.apple.com" == 0;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {

        goto LABEL_30;
      }

      v8 = [(__CFString *)v4 isEqualToString:@"wallet.apple.com"];

      if (!v8)
      {
        goto LABEL_30;
      }
    }

    v9 = [v1 pathComponents];
    v10 = [v9 count];

    if (v10 < 3 || (([v1 pathComponents], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectAtIndexedSubscript:", 1), v12 = objc_claimAutoreleasedReturnValue(), v13 = v12, v12 == @"dashboard") ? (v14 = 0) : !v12 ? (v14 = 1) : (v14 = -[__CFString isEqualToString:](v12, "isEqualToString:", @"dashboard") ^ 1), (v13, v13, v11, objc_msgSend(v1, "pathComponents"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "objectAtIndexedSubscript:", 2), v16 = objc_claimAutoreleasedReturnValue(), v17 = v16, v16 == @"action") ? (v18 = 0) : !v16 ? (v18 = 1) : (v18 = -[__CFString isEqualToString:](v16, "isEqualToString:", @"action") ^ 1), v17, v17, v15, ((v14 | v18) & 1) != 0))
    {
      v7 = 2;
      goto LABEL_32;
    }

    v19 = [v3 queryItems];
    v20 = [v19 firstObject];
    v5 = [v20 value];

    if (v5)
    {
      if ([v5 isEqual:@"pass-details"])
      {
        v7 = 1;
      }

      else if ([v5 isEqual:@"card-numbers"])
      {
        v7 = 3;
      }

      else if ([v5 isEqual:@"set-default-wallet"])
      {
        v7 = 4;
      }

      else if ([v5 isEqual:@"set-default-apple"])
      {
        v7 = 5;
      }

      else if ([v5 isEqual:@"set-default-wallet-and-apple"])
      {
        v7 = 6;
      }

      else
      {
        v7 = 2;
      }

      goto LABEL_31;
    }

LABEL_30:
    v7 = 2;
LABEL_31:

    goto LABEL_32;
  }

  v7 = 0;
LABEL_33:

  return v7;
}

id PKEventStore()
{
  if (qword_1EB59FF68 != -1)
  {
    dispatch_once(&qword_1EB59FF68, &__block_literal_global_45);
  }

  v1 = _MergedGlobals_1_0;

  return v1;
}

void __PKEventStore_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v1 = _MergedGlobals_1_0;
  _MergedGlobals_1_0 = v0;
}

uint64_t PKIsAuthorizedForEvents()
{
  v0 = [MEMORY[0x1E6966A18] authorizationStatusForEntityType:0];
  result = 0;
  v2 = v0 - 1;
  if (v2 <= 3)
  {
    return qword_1ADB997B0[v2];
  }

  return result;
}

void PKRequestEventsAuthorization(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PKRequestEventsAuthorization_block_invoke;
  v5[3] = &unk_1E79C4E50;
  v6 = v3;
  v4 = v3;
  [a1 requestFullAccessToEventsWithCompletion:v5];
}

uint64_t __PKRequestEventsAuthorization_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id PKExistingCalendarEventsFromPass(void *a1, void *a2, void *a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (PKIsAuthorizedForEvents() == 1)
  {
    if (v7)
    {
      v8 = [v7 metadata];
      v9 = MEMORY[0x1E696AE18];
      v10 = [v8 name];
      v11 = [v9 predicateWithFormat:@"title = [c] %@", v10];

      v12 = PKDateIntervalFromUpcomingPassInformationEntry(v7);
    }

    else
    {
      v14 = MEMORY[0x1E696AE18];
      v15 = [v5 eventName];
      v16 = [v14 predicateWithFormat:@"title = [c] %@", v15];

      v17 = [v5 relevantDates];
      v8 = [PKPassRelevantDate findDateFromDates:v17 option:0];

      v18 = [v5 relevantDates];
      v19 = [PKPassRelevantDate findDateFromDates:v18 option:3];

      v12 = 0;
      v11 = v16;
      if (v8 && v19)
      {
        if ([v8 compare:v19] == 1)
        {
          v12 = 0;
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v19];
        }
      }
    }

    if (v12)
    {
      v20 = [v12 startDate];
      v21 = [v12 endDate];
      v32 = [v6 predicateForEventsWithStartDate:v20 endDate:v21 calendars:0];

      v22 = [v6 eventsMatchingPredicate:v32];
      v23 = MEMORY[0x1E696AE18];
      v24 = [v5 passURL];
      v25 = [v23 predicateWithFormat:@"URL = [c] %@", v24];

      v26 = objc_alloc(MEMORY[0x1E696AB28]);
      v33[0] = v25;
      v33[1] = v11;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
      v28 = v6;
      v29 = v11;
      v30 = [v26 initWithType:1 subpredicates:v27];
      v13 = [v22 filteredArrayUsingPredicate:v30];

      v11 = v29;
      v6 = v28;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

id PKDateIntervalFromUpcomingPassInformationEntry(void *a1)
{
  v1 = [a1 metadata];
  if ([v1 type] != 1)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v2 = [v1 semantics];
  v3 = [v2 objectForKeyedSubscript:@"eventStartDate"];

  v4 = [v3 dateValue];
  if (v4)
  {
    goto LABEL_3;
  }

  v7 = [v1 semantics];
  v8 = [v7 objectForKeyedSubscript:@"eventStartDateInfo"];

  v9 = [v8 eventDateInfoValue];
  v5 = [v9 date];

  if (v5)
  {
LABEL_6:
    v10 = [v1 semantics];
    v11 = [v10 objectForKeyedSubscript:@"eventEndDate"];

    v12 = [v11 dateValue];
    if (v12 && [v5 compare:v12] != 1)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v12];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_11;
  }

  v4 = [v1 date];
  if (v4)
  {
LABEL_3:
    v5 = v4;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_11:

LABEL_12:

  return v6;
}

id PKAllCalendarEventsFromPass(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = PKExistingCalendarEventsFromPass(v5, v7, 0);
  v9 = [v8 mutableCopy];

  if (!v6)
  {
    v6 = [v5 upcomingPassInformation];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v6 allEntries];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = PKExistingCalendarEventsFromPass(v5, v7, *(*(&v17 + 1) + 8 * i));
        [v9 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v9;
}

id PKNextCalendarEventFromEvents(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v3 = [MEMORY[0x1E695DF00] date];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 startDate];
        v11 = [v2 compareDate:v3 toDate:v10 toUnitGranularity:64];

        if (v11 == -1)
        {
          v12 = v9;

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v4 lastObject];
LABEL_11:

  return v12;
}

id PKGenerateCalendarEventsFromPass(void *a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = v6;
  if (v7)
  {
    v8 = v5;
    v9 = v6;
    v10 = v7;
    v11 = [v10 metadata];
    v12 = PKDateIntervalFromUpcomingPassInformationEntry(v10);

    if (v12)
    {
      v13 = [MEMORY[0x1E6966A08] eventWithEventStore:v9];
      v14 = [v11 name];
      [v13 setTitle:v14];

      v15 = [v9 defaultCalendarForNewEvents];
      [v13 setCalendar:v15];

      v16 = [v12 startDate];
      [v13 setStartDate:v16];

      v17 = [v12 endDate];
      [v13 setEndDate:v17];

      v18 = [v11 timeZone];
      [v13 setTimeZone:v18];

      v19 = [v8 passURL];
      [v13 setURL:v19];

      if ([v11 type] == 1)
      {
        v20 = [v11 eventMetadata];
        v21 = [v20 venueLocation];
        v22 = [v21 CLLocation];

        if (v22)
        {
          v54 = v7;
          v23 = objc_alloc(_MergedGlobals_169());
          v24 = v20;
          v25 = objc_alloc(off_1ED6D1078());
          [v22 coordinate];
          v26 = [v25 initWithCoordinate:?];
          v27 = [v23 initWithPlacemark:v26];

          v56 = v27;
          v28 = [MEMORY[0x1E6966B08] locationWithMapItem:v27];
          v58 = v24;
          v29 = [v24 venueName];
          if (v29)
          {
            [v28 setTitle:v29];
          }

          [v13 setStructuredLocation:v28];

          v7 = v54;
          v20 = v58;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    [v60 safelyAddObject:v13];
    v6 = v57;
  }

  else
  {
    [v5 relevantDates];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v64 = 0u;
    v30 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v30)
    {
      v31 = v30;
      v59 = *v62;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v62 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v61 + 1) + 8 * i);
          v34 = [v33 effectiveStartDate];
          v35 = [v33 effectiveEndDate];
          v36 = v35;
          if (v34)
          {
            v37 = v35 == 0;
          }

          else
          {
            v37 = 1;
          }

          if (v37)
          {
            v38 = [v33 date];

            v39 = [MEMORY[0x1E695DEE8] currentCalendar];
            v40 = [v39 dateByAddingUnit:32 value:2 toDate:v38 options:0];

            v36 = v40;
            v34 = v38;
          }

          v41 = [MEMORY[0x1E6966A08] eventWithEventStore:v6];
          v42 = [v6 defaultCalendarForNewEvents];
          [v41 setCalendar:v42];

          v43 = [v5 eventName];
          [v41 setTitle:v43];

          [v41 setStartDate:v34];
          [v41 setEndDate:v36];
          v44 = [v5 passURL];
          [v41 setURL:v44];

          v45 = [v5 eventLocation];
          v46 = [v45 CLLocation];

          if (v46)
          {
            v47 = objc_alloc(_MergedGlobals_169());
            v48 = objc_alloc(off_1ED6D1078());
            [v46 coordinate];
            v49 = [v48 initWithCoordinate:?];
            v50 = [v47 initWithPlacemark:v49];

            v51 = [MEMORY[0x1E6966B08] locationWithMapItem:v50];
            v52 = [v5 stringForSemanticKey:@"venueName"];
            if (v52)
            {
              [v51 setTitle:v52];
            }

            [v41 setStructuredLocation:v51];

            v6 = v57;
          }

          [v60 addObject:v41];
        }

        v31 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v31);
    }

    v7 = 0;
  }

  return v60;
}

id PKGenerateCalendarEventsFromPassAndUpcomingInformation(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = PKGenerateCalendarEventsFromPass(v5, v7, 0);
  v9 = [v8 mutableCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v6 allEntries];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = PKGenerateCalendarEventsFromPass(v5, v7, *(*(&v18 + 1) + 8 * i));
        [v9 addObjectsFromArray:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = [v9 copy];

  return v16;
}

uint64_t PKRemoveAllCalendarEventsFromPass(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E6966A18];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = PKAllCalendarEventsFromPass(v2, 0, v3);

  if ([v4 count])
  {
    v11 = 0;
    v5 = PKCommitCalendarEvents(v4, 1, v3, &v11);
    v6 = v11;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "[PKEventKitUtilities] Failed to remove all calendar events for pass. Error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t PKCommitCalendarEvents(void *a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v14 = *v26;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (a2 == 1)
        {
          v23 = v12;
          v17 = &v23;
          v18 = [v8 removeEvent:v16 span:1 commit:0 error:&v23];
          goto LABEL_10;
        }

        if (!a2)
        {
          v24 = v12;
          v17 = &v24;
          v18 = [v8 saveEvent:v16 span:1 commit:0 error:&v24];
LABEL_10:
          v13 = v18;
          v19 = *v17;

          v12 = v19;
        }

        if ((v13 & 1) == 0 && v12)
        {
          goto LABEL_18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (!v11)
      {

        if ((v13 & (v12 == 0)) == 1)
        {
          v22 = 0;
          v13 = [v8 commit:&v22];
          v12 = v22;
        }

        goto LABEL_19;
      }
    }
  }

  v12 = 0;
LABEL_18:

  v13 = 0;
LABEL_19:
  if (a4)
  {
    v20 = v12;
    *a4 = v12;
  }

  return v13 & 1;
}

void PKUpdateAllCalendarEventsOriginatingFromPass(void *a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v58 = a1;
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E6966A18]);
  v5 = PKExistingCalendarEventsFromPass(v3, v4, 0);
  if ([v5 count])
  {
    v6 = v3;
    v73 = 0;
    v7 = PKCommitCalendarEvents(v5, 1, v4, &v73);
    v8 = v73;
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v11 = PKGenerateCalendarEventsFromPass(v58, v4, 0);
      if ([v11 count])
      {
        v72 = 0;
        v12 = PKCommitCalendarEvents(v11, 0, v4, &v72);
        v13 = v72;
        v10 = v13;
        if (!v12 || v13)
        {
          v14 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v77 = v10;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "[PKEventKitUtilities] Failed to add updated calendar events for pass. Error: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = v8;
      v11 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v77 = v10;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "[PKEventKitUtilities] Failed to remove old calendar events for pass. Error: %@", buf, 0xCu);
      }
    }

    v3 = v6;
  }

  v15 = [v3 upcomingPassInformation];
  v16 = [v15 allEntries];
  v17 = v16;
  v18 = MEMORY[0x1E695E0F0];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  v21 = [v58 upcomingPassInformation];
  v22 = [v21 allEntries];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v18;
  }

  v25 = v24;

  v26 = v20;
  if ([v20 count] || objc_msgSend(v25, "count"))
  {
    v27 = [v25 differenceFromArray:v20 withOptions:0 usingEquivalenceTest:&__block_literal_global_39_0];
    if ([v27 hasChanges])
    {
      v54 = v25;
      v55 = v5;
      v57 = v20;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v56 = v27;
      v28 = [v27 removals];
      v29 = [v28 countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v69;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v69 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [*(*(&v68 + 1) + 8 * i) object];
            v34 = PKExistingCalendarEventsFromPass(v3, v4, v33);
            if ([v34 count])
            {
              v67 = 0;
              v35 = PKCommitCalendarEvents(v34, 1, v4, &v67);
              v36 = v67;
              v37 = v36;
              if (v35)
              {
                v38 = v36 == 0;
              }

              else
              {
                v38 = 0;
              }

              if (!v38)
              {
                v39 = PKLogFacilityTypeGetObject(0);
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v77 = v37;
                  _os_log_impl(&dword_1AD337000, v39, OS_LOG_TYPE_DEFAULT, "[PKEventKitUtilities] Failed to remove old calendar events for entry in pass. Error: %@", buf, 0xCu);
                }
              }
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v68 objects:v75 count:16];
        }

        while (v30);
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obj = [v56 insertions];
      v40 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
      v26 = v57;
      if (v40)
      {
        v41 = v40;
        v42 = *v64;
        v43 = &unk_1E79CCAC8;
        do
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v64 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v45 = [*(*(&v63 + 1) + 8 * j) object];
            v61[0] = MEMORY[0x1E69E9820];
            v61[1] = 3221225472;
            v61[2] = __PKUpdateAllCalendarEventsOriginatingFromPass_block_invoke_40;
            v61[3] = v43;
            v46 = v45;
            v62 = v46;
            if ([v26 indexOfObjectPassingTest:v61] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v47 = v43;
              v48 = PKGenerateCalendarEventsFromPass(v58, v4, v46);
              if ([v48 count])
              {
                v60 = 0;
                v49 = PKCommitCalendarEvents(v48, 0, v4, &v60);
                v50 = v60;
                v51 = v50;
                if (v49)
                {
                  v52 = v50 == 0;
                }

                else
                {
                  v52 = 0;
                }

                if (!v52)
                {
                  v53 = PKLogFacilityTypeGetObject(0);
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v77 = v51;
                    _os_log_impl(&dword_1AD337000, v53, OS_LOG_TYPE_DEFAULT, "[PKEventKitUtilities] Failed to add updated calendar events for entry in pass. Error: %@", buf, 0xCu);
                  }
                }

                v26 = v57;
              }

              v43 = v47;
            }
          }

          v41 = [obj countByEnumeratingWithState:&v63 objects:v74 count:16];
        }

        while (v41);
      }

      v5 = v55;
      v25 = v54;
      v27 = v56;
    }
  }
}

uint64_t __PKUpdateAllCalendarEventsOriginatingFromPass_block_invoke_40(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) metadata];
  v6 = [v5 identifier];
  v7 = v4;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = 0;
    if (v7 && v8)
    {
      v10 = [v7 isEqualToString:v8];
    }
  }

  return v10;
}

Class initMKMapItem()
{
  if (qword_1EB59FF78 != -1)
  {
    dispatch_once(&qword_1EB59FF78, &__block_literal_global_44);
  }

  result = objc_getClass("MKMapItem");
  qword_1EB59FF70 = result;
  _MergedGlobals_169 = MKMapItemFunction;
  return result;
}

void *__LoadMapKit_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MapKit.framework/MapKit", 2);
  LoadMapKit_frameworkLibrary = result;
  return result;
}

Class initMKPlacemark()
{
  if (qword_1EB59FF78 != -1)
  {
    dispatch_once(&qword_1EB59FF78, &__block_literal_global_44);
  }

  result = objc_getClass("MKPlacemark");
  qword_1EB59FF80 = result;
  off_1ED6D1078 = MKPlacemarkFunction;
  return result;
}

uint64_t PKProtobufPeerPaymentMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v49[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v49[0] & 0x7F) << v5;
      if ((v49[0] & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v49[0] & 0x7F) << v13;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_92:
            v46 = 172;
            goto LABEL_93;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_92;
      case 2u:
        v20 = PBReaderReadString();
        v21 = 40;
        goto LABEL_78;
      case 3u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 176) |= 8u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v49[0] & 0x7F) << v28;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_88;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v30;
        }

LABEL_88:
        v46 = 168;
        goto LABEL_93;
      case 4u:
        v20 = PBReaderReadString();
        v21 = 24;
        goto LABEL_78;
      case 5u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 176) |= 1u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v49[0] & 0x7F) << v36;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v42 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_97:
        *(a1 + 8) = -(v42 & 1) ^ (v42 >> 1);
        goto LABEL_79;
      case 6u:
        v20 = PBReaderReadString();
        v21 = 152;
        goto LABEL_78;
      case 7u:
        v20 = PBReaderReadString();
        v21 = 96;
        goto LABEL_78;
      case 8u:
        v20 = PBReaderReadString();
        v21 = 144;
        goto LABEL_78;
      case 9u:
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_78;
      case 0xAu:
        v20 = PBReaderReadString();
        v21 = 160;
        goto LABEL_78;
      case 0xBu:
        v20 = PBReaderReadString();
        v21 = 56;
        goto LABEL_78;
      case 0xCu:
        v20 = PBReaderReadString();
        v21 = 136;
        goto LABEL_78;
      case 0xEu:
        v20 = PBReaderReadString();
        v21 = 128;
        goto LABEL_78;
      case 0xFu:
        v20 = PBReaderReadString();
        v21 = 112;
        goto LABEL_78;
      case 0x10u:
        v20 = PBReaderReadString();
        v21 = 104;
        goto LABEL_78;
      case 0x11u:
        *(a1 + 176) |= 2u;
        v49[0] = 0;
        v34 = [a2 position] + 8;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:v49 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v49[0];
        goto LABEL_79;
      case 0x12u:
        v20 = PBReaderReadString();
        v21 = 120;
        goto LABEL_78;
      case 0x13u:
        v43 = objc_alloc_init(PKProtobufNSDecimalNumber);
        objc_storeStrong((a1 + 32), v43);
        v49[0] = 0;
        v49[1] = 0;
        if (PBReaderPlaceMark() && PKProtobufNSDecimalNumberReadFrom(v43, a2))
        {
          PBReaderRecallMark();

LABEL_79:
          v45 = [a2 position];
          if (v45 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 0x14u:
        v20 = PBReaderReadData();
        v21 = 48;
        goto LABEL_78;
      case 0x15u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 176) |= 4u;
        while (1)
        {
          LOBYTE(v49[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v49[0] & 0x7F) << v22;
          if ((v49[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_84;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v24;
        }

LABEL_84:
        v46 = 64;
LABEL_93:
        *(a1 + v46) = v19;
        goto LABEL_79;
      case 0x16u:
        v20 = PBReaderReadString();
        v21 = 88;
        goto LABEL_78;
      case 0x17u:
        v20 = PBReaderReadString();
        v21 = 72;
LABEL_78:
        v44 = *(a1 + v21);
        *(a1 + v21) = v20;

        goto LABEL_79;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
    }
  }
}

__CFString *PKAccountReportTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CCBA0[a1];
  }
}

void PKPayLaterValidateConfiguration(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Validating PKPayLaterView eligibilty for configuration %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(PKInAppPaymentService);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __PKPayLaterValidateConfiguration_block_invoke;
  v8[3] = &unk_1E79CCBC0;
  v9 = v4;
  v7 = v4;
  [(PKInAppPaymentService *)v6 validatePayLaterMerchandisingConfiguration:v3 type:1 completion:v8];
}

void __PKPayLaterValidateConfiguration_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PKPayLaterValidateConfiguration_block_invoke_2;
  block[3] = &unk_1E79C44F0;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __PKPayLaterValidateConfiguration_block_invoke_2(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

void PKPayLaterValidateAmount(NSDecimalNumber *amount, NSString *currencyCode, void *completion)
{
  v5 = completion;
  v6 = currencyCode;
  v7 = amount;
  v8 = objc_alloc_init(PKPayLaterMerchandisingConfiguration);
  [(PKPayLaterMerchandisingConfiguration *)v8 setAmount:v7];

  [(PKPayLaterMerchandisingConfiguration *)v8 setCurrency:v6];
  [(PKPayLaterMerchandisingConfiguration *)v8 setEnvironmentType:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __PKPayLaterValidateAmount_block_invoke;
  v10[3] = &unk_1E79CCBC0;
  v11 = v5;
  v9 = v5;
  PKPayLaterValidateConfiguration(v8, v10);
}

uint64_t __PKPayLaterValidateAmount_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

__CFString *PKPayLaterEnvironmentTypeToString(__CFString *result)
{
  if (result < 4)
  {
    return off_1E79CCC38[result];
  }

  __break(1u);
  return result;
}

uint64_t PKPayLaterEnvironmentTypeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"production" && v1 != 0)
  {
    v4 = [@"production" isEqualToString:v1];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"develop" || (v8 = v7, v9 = [@"develop" isEqualToString:v7], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"QA" || (v11 = v10, v12 = [@"QA" isEqualToString:v10], v11, (v12 & 1) != 0))
      {
        v5 = 2;
        goto LABEL_7;
      }

      v13 = v11;
      if (v13 == @"UAT" || (v14 = v13, v15 = [@"UAT" isEqualToString:v13], v14, v15))
      {
        v5 = 3;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

__CFString *PKPayLaterThemeToString(__CFString *result)
{
  if (result < 3)
  {
    return off_1E79CCC58[result];
  }

  __break(1u);
  return result;
}

uint64_t PKPayLaterThemeFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"auto" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"auto"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"light" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"light"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"dark" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"dark"], v11, v12))
      {
        v5 = 2;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

__CFString *PKPayLaterDisplayStyleToString(__CFString *result)
{
  if (result < 4)
  {
    return off_1E79CCC70[result];
  }

  __break(1u);
  return result;
}

uint64_t PKPayLaterDisplayStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 != @"plain" && v1 != 0)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"plain"];

    if ((v4 & 1) == 0)
    {
      v7 = v2;
      if (v7 == @"badge" || (v8 = v7, v9 = [(__CFString *)v7 isEqualToString:@"badge"], v8, (v9 & 1) != 0))
      {
        v5 = 1;
        goto LABEL_7;
      }

      v10 = v8;
      if (v10 == @"checkout" || (v11 = v10, v12 = [(__CFString *)v10 isEqualToString:@"checkout"], v11, (v12 & 1) != 0))
      {
        v5 = 2;
        goto LABEL_7;
      }

      v13 = v11;
      if (v13 == @"price" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"price"], v14, v15))
      {
        v5 = 3;
        goto LABEL_7;
      }
    }
  }

  v5 = 0;
LABEL_7:

  return v5;
}

__CFString *PKPayLaterActionToString(__CFString *result)
{
  if (!result)
  {
    return @"learn-more";
  }

  if (result == 1)
  {
    return @"calculator";
  }

  __break(1u);
  return result;
}

BOOL PKPayLaterActionFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 == @"learn-more" || v1 == 0;
  v8 = 0;
  if (!v3)
  {
    v4 = [(__CFString *)v1 isEqualToString:@"learn-more"];

    if ((v4 & 1) == 0)
    {
      v5 = v2;
      if (v5 == @"calculator" || (v6 = v5, v7 = [(__CFString *)v5 isEqualToString:@"calculator"], v6, v7))
      {
        v8 = 1;
      }
    }
  }

  return v8;
}

__CFString *PKPayLaterMerchandisingConfigurationPropertyToString(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1 > 15)
  {
    if (a1 <= 63)
    {
      if (a1 == 16)
      {
        v2 = @"type";
        goto LABEL_57;
      }

      if (a1 == 32)
      {
        v2 = @"theme";
        goto LABEL_57;
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          v2 = @"modal-type";
          goto LABEL_57;
        case 128:
          v2 = @"environment-type";
          goto LABEL_57;
        case 255:
          v2 = 0;
          goto LABEL_57;
      }
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      v2 = @"none";
      goto LABEL_57;
    }

    if (a1 == 1)
    {
      v2 = @"amount";
      goto LABEL_57;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v2 = @"currency-code";
        goto LABEL_57;
      case 4:
        v2 = @"country-code";
        goto LABEL_57;
      case 8:
        v2 = @"locale";
        goto LABEL_57;
    }
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = 1;
  v5 = 1;
  do
  {
    if ((v5 & a1) == 0)
    {
      goto LABEL_47;
    }

    if (v5 <= 7)
    {
      if (v5 > 1)
      {
        if (v5 == 2)
        {
          v6 = @"currency-code";
        }

        else
        {
          if (v5 != 4)
          {
            goto LABEL_47;
          }

          v6 = @"country-code";
        }
      }

      else
      {
        v6 = @"none";
        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_47;
          }

          v6 = @"amount";
        }
      }
    }

    else if (v5 <= 31)
    {
      if (v5 == 8)
      {
        v6 = @"locale";
      }

      else
      {
        if (v5 != 16)
        {
          goto LABEL_47;
        }

        v6 = @"type";
      }
    }

    else
    {
      switch(v5)
      {
        case 32:
          v6 = @"theme";
          break;
        case 64:
          v6 = @"modal-type";
          break;
        case 128:
          v6 = @"environment-type";
          break;
        default:
          goto LABEL_47;
      }
    }

    [v3 addObject:v6];
LABEL_47:
    v5 = 1 << v4++;
  }

  while (v5 <= a1);
  if ([v3 count])
  {
    v11 = 0;
    v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:3 error:&v11];
    v8 = v11;
    if (v8)
    {
      v9 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v13 = a1;
        v14 = 2112;
        v15 = v8;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error getting property description %ld, jsonError: %@", buf, 0x16u);
      }

      v2 = 0;
    }

    else
    {
      v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_57:

  return v2;
}

CGContext *PKCreateBitmapContext(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x10000) != 0)
  {
    v6 = PKColorSpaceStandardLinearRGB();
  }

  else
  {
    v6 = PKColorSpaceStandardRGB();
  }

  v7 = v6;
  if (v6)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v6);
    if (NumberOfComponents > 0xFE)
    {
      goto LABEL_38;
    }

    v9 = (8 * NumberOfComponents + 8) & 0x7F8;
    if (v9 >= 0x100)
    {
      goto LABEL_38;
    }
  }

  else
  {
    LODWORD(v9) = 8;
  }

  *&v31[4] = 0;
  if ((v3 & 0x100) != 0)
  {
    v10 = 8198;
  }

  else
  {
    v10 = 8194;
  }

  LODWORD(v28[0]) = 8;
  HIDWORD(v28[0]) = v9;
  v28[1] = v7;
  v29 = v10;
  v30 = 0;
  *v31 = 0;
  v26 = 0u;
  v27 = 0u;
  v11 = MEMORY[0x1B26FA130](&v26, a2, a1);
  if (v11 < 0 || v26)
  {
LABEL_38:
    __break(1u);
  }

  v12 = *(&v26 + 1);
  v13 = *(&v27 + 1);
  if (!is_mul_ok(*(&v26 + 1), *(&v27 + 1)))
  {
    v14 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = v12;
      v34 = 2048;
      v35 = v13;
      v15 = "PKBitmapContext: image length computation overflowed - %zu x %zu.";
LABEL_22:
      v18 = v14;
      v19 = 22;
LABEL_23:
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, v15, buf, v19);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v16 = *(&v26 + 1) * *(&v27 + 1);
  if (!(*(&v26 + 1) * *(&v27 + 1)))
  {
    return 0;
  }

  v17 = *MEMORY[0x1E69E9AC8] - 1;
  if (!__CFADD__(v16, v17))
  {
    v21 = (v16 + v17) & -*MEMORY[0x1E69E9AC8];
    if (v16 > v21)
    {
      goto LABEL_38;
    }

    v22 = v11;
    if (vm_allocate(*MEMORY[0x1E69E9A60], &v26, v21, 1))
    {
      v14 = PKLogFacilityTypeGetObject(0);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 134217984;
      v33 = v21;
      v15 = "PKBitmapContext: could not create allocation of size %zu.";
      v18 = v14;
      v19 = 12;
      goto LABEL_23;
    }

    if (v26)
    {
      if (v22 && os_variant_has_internal_ui() && v26 % v22)
      {
        goto LABEL_38;
      }

      v23 = objc_alloc(MEMORY[0x1E695DEF0]);
      v24 = [v23 initWithBytesNoCopy:v26 length:v21 deallocator:&__block_literal_global_106];
      if (v24)
      {
        v14 = v24;
        v20 = _PKCreateBitmapContext(v28, &v26, v24, v3);
        goto LABEL_25;
      }
    }

    return 0;
  }

  v14 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v33 = v16;
    v34 = 2048;
    v35 = v17;
    v15 = "PKBitmapContext: buffer length computation overflowed - %zu + %zu.";
    goto LABEL_22;
  }

LABEL_24:
  v20 = 0;
LABEL_25:

  return v20;
}

void sub_1AD663B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PKBillPaymentSuggestedAmountCategoryFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MinimumRemainingPayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"LastPayment"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LastPaymentPlusMerchantCategory1"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LastPaymentPlusMerchantCategory2"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"NewPurchases"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PayInNineMonths"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"PayInEightMonths"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"PayInSevenMonths"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"PayInSixMonths"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"PayInFiveMonths"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"PayInFourMonths"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonths"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"PayInTwoMonths"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"PayInNineMonthsFromUtilization"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"PayInSixMonthsFromUtilization"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonthsFromUtilization"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"PayInPlanCompletion"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"RemainingStatementBalance"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"CurrentBalance"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"OneThirdOfCurrentBalance"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"OneSixthOfCurrentBalance"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"OneNinthOfCurrentBalance"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonthsForTransactor"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"PayInSixMonthsForTransactor"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"PayInNineMonthsForTransactor"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"OneThirdOfStatementBalance"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"OneSixthOfStatementBalance"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"OneNinthOfStatementBalance"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"AverageOfMinimumAndStatetmentBalance"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"CardBalance"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"CombinedBalance"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"VeryExpensivePurchase"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"RecurringExpenses"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"TopMerchant"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"RecentTrip"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"PeakSpendDay"])
  {
    v2 = 36;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKBillPaymentSuggestedAmountCategoryToString(unint64_t a1)
{
  if (a1 > 0x24)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CCCF8[a1];
  }
}

__CFString *PKBillPaymentDifferentialPrivacyFeatureToString(unint64_t a1)
{
  if (a1 >= 0xF)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a1];
  }

  else
  {
    v2 = off_1E79CCE20[a1];
  }

  return v2;
}

__CFString *PKBillPaymentDifferentialPrivacyButtonActionToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"0";
  }

  else
  {
    return off_1E79CCE98[a1];
  }
}

uint64_t PKBillPaymentDifferentialPrivacyButtonActiontoPaymentRingInstrumentation(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1ADB99810[a1];
  }
}

uint64_t PKBillPaymentCategoryToDifferentialFeature(unint64_t a1)
{
  if (a1 > 0x1D)
  {
    return 0;
  }

  else
  {
    return qword_1ADB99830[a1];
  }
}

uint64_t PKBillPaymentSuggestedAmountCategoryToPaymentRingInstrumentation(unint64_t a1)
{
  if (a1 > 0x24)
  {
    return 14;
  }

  else
  {
    return qword_1ADB99920[a1];
  }
}

void sub_1AD668320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD668DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6727B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD674254(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t PKPeerPaymentDynamicFraudPageBodyContentTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"text" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"link" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"bulletedList" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentDynamicFraudPageBodyContentTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79CDA10[a1 - 1];
  }
}

uint64_t PKPeerPaymentDynamicFraudPageBodyTextContentFormatTypeFromString(void *a1)
{
  v1 = a1;
  if ([@"bold" isEqualToString:v1])
  {
    v2 = 1;
  }

  else if ([@"italic" isEqualToString:v1])
  {
    v2 = 2;
  }

  else if ([@"underline" isEqualToString:v1])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *PKPeerPaymentDynamicFraudPageBodyTextContentFormatTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"plain";
  }

  else
  {
    return off_1E79CD9F8[a1 - 1];
  }
}

void sub_1AD67E0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AD67E900(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 168));
  _Unwind_Resume(a1);
}

uint64_t PKPaymentTransactionTransitSubtypeForTransactionDetailString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_55;
  }

  if (([v1 isEqual:@"Transit"] & 1) == 0)
  {
    if ([v2 isEqual:@"TransitMetro"])
    {
      v3 = 2;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitMetroUpgrade"])
    {
      v3 = 1026;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitLightRail"])
    {
      v3 = 7;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitBus"])
    {
      v3 = 3;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitTrain"])
    {
      v3 = 4;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitTrainMaglev"])
    {
      v3 = 258;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitTrainShinkansen"])
    {
      v3 = 257;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitOther"])
    {
      v3 = 5;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitOtherTaxi"])
    {
      v3 = 259;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitOtherFerry"])
    {
      v3 = 260;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitOtherBike"])
    {
      v3 = 261;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitSpecial"])
    {
      v3 = 6;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitOtherCableCar"])
    {
      v3 = 8;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TransitSpecialGreenCarUsed"] & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"TransitSpecialGreenCarSeated"))
    {
      v3 = 1025;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"Purchase"])
    {
      goto LABEL_34;
    }

    if ([v2 isEqual:@"Renewal"])
    {
      v3 = 518;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"PurchaseRetail"] & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseRetailMerchant") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseRetailGasStation") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseAdmission") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseAdmissionParking") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseAdmissionGarden"))
    {
LABEL_34:
      v3 = 515;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"PurchaseRefund"] & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseRefundReturn") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"PurchaseRefundCancellation"))
    {
      v3 = 514;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"TopUp"] & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"TopUpContactless") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"TopUpAuto") & 1) != 0 || (objc_msgSend(v2, "isEqual:", @"TopUpServer"))
    {
      v3 = 513;
      goto LABEL_56;
    }

    if ([v2 isEqual:@"CardRead"])
    {
      v3 = 517;
      goto LABEL_56;
    }

    [v2 isEqual:@"Unknown"];
LABEL_55:
    v3 = 0;
    goto LABEL_56;
  }

  v3 = 1;
LABEL_56:

  return v3;
}

id PKDateFromDateComponents(void *a1)
{
  v1 = a1;
  if (([v1 isValidDate] & 1) == 0)
  {
    v2 = [v1 calendar];

    if (!v2)
    {
      v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      [v1 setCalendar:v3];
    }

    v4 = [MEMORY[0x1E695DFE8] localTimeZone];
    [v1 setTimeZone:v4];
  }

  v5 = [v1 date];

  return v5;
}

id PKEnrouteTransitTypesForTransactionsInProgress(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DFD8];
    v2 = a1;
    v3 = [[v1 alloc] initWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t PKDeviceEnvironmentClientToString(uint64_t a1, void **a2)
{
  if (a2)
  {
    if (a1 == 1)
    {
      v2 = *a2;
      v3 = @"accountManager";
    }

    else
    {
      if (a1)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"pass valid PDDeviceEnvironmentClient value"];
        return v4 & 1;
      }

      v2 = *a2;
      v3 = @"discovery";
    }

    *a2 = v3;

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL PKSecureElementPassesAvailable()
{
  v0 = CFPreferencesCopyValue(@"secure-element-passes-available", @"com.apple.passd.class-d", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

BOOL PKPrearmAvailable()
{
  v0 = CFPreferencesCopyValue(@"pre-arm-available", @"com.apple.passd.class-d", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

BOOL PKFieldDetectAvailable()
{
  v0 = CFPreferencesCopyValue(@"field-detect-available", @"com.apple.passd.class-d", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

__CFString *PKPassTileStateStyleToString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"twoLineDefault";
  }

  else
  {
    return off_1E79CDB40[a1 - 1];
  }
}

uint64_t PKPassTileStateStyleFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"twoLineDefault" || v1 && (v3 = [(__CFString *)v1 isEqualToString:@"twoLineDefault"], v2, v2, (v3 & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    v5 = v2;
    if (v5 == @"twoLineCompact" || (v6 = v5, v2) && (v7 = [(__CFString *)v5 isEqualToString:@"twoLineCompact"], v6, v6, (v7 & 1) != 0))
    {
      v4 = 1;
    }

    else
    {
      v8 = v6;
      if (v8 == @"threeLineDefault" || (v9 = v8, v2) && (v10 = [(__CFString *)v8 isEqualToString:@"threeLineDefault"], v9, v9, (v10 & 1) != 0))
      {
        v4 = 2;
      }

      else
      {
        v11 = v9;
        if (v11 == @"threeLineCompact" || (v12 = v11, v2) && (v13 = [(__CFString *)v11 isEqualToString:@"threeLineCompact"], v12, v12, (v13 & 1) != 0))
        {
          v4 = 3;
        }

        else
        {
          v14 = v12;
          if (v14 == @"dynamicDefault" || (v15 = v14, v2) && (v16 = [(__CFString *)v14 isEqualToString:@"dynamicDefault"], v15, v15, (v16 & 1) != 0))
          {
            v4 = 4;
          }

          else
          {
            v17 = v15;
            v18 = v17;
            if (v17 == @"dynamicCompact")
            {
              v4 = 5;
            }

            else
            {
              v4 = 0;
            }

            if (v17 != @"dynamicCompact" && v2)
            {
              if ([(__CFString *)v17 isEqualToString:@"dynamicCompact"])
              {
                v4 = 5;
              }

              else
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

id PKValidatePaymentSetupConfiguration(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 signature];
  v3 = [v2 pk_decodeHexadecimal];

  v4 = [v1 signedFields];
  if (![v4 count])
  {
    v35 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v35, OS_LOG_TYPE_DEFAULT, "Failed to validate payment setup configuration Missing signedFields", buf, 2u);
    }

    v43 = @"Missing signedFields";
    goto LABEL_29;
  }

  if (!v3)
  {
    v44 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v44, OS_LOG_TYPE_DEFAULT, "Failed to validate payment setup configuration Missing signature data", buf, 2u);
    }

    v43 = @"Missing signature data";
LABEL_29:
    v25 = PKValidationErrorWithReason(v43, v36, v37, v38, v39, v40, v41, v42, v54);
    goto LABEL_38;
  }

  v5 = [v1 originatingURL];
  v6 = MEMORY[0x1E695DFF8];
  v7 = [v4 firstObject];
  v8 = [v6 URLWithString:v7];

  v9 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = v5;
    v64 = 2112;
    v65 = v8;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "PKValidatePaymentSetup webkitURL: %@ externalURL: %@", buf, 0x16u);
  }

  v10 = [(__CFString *)v8 host];
  v11 = [v5 host];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v13 = [(__CFString *)v8 path];
    v14 = [v5 path];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v56 = v8;
      v57 = v5;
      ApplePinned = SecPolicyCreateApplePinned();
      v16 = objc_alloc_init(MEMORY[0x1E695DF88]);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v17 = v4;
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v59;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v59 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = [*(*(&v58 + 1) + 8 * i) dataUsingEncoding:4];
            [(__CFString *)v16 appendData:v22];
          }

          v19 = [v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v19);
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v63 = v17;
        v64 = 2112;
        v65 = v16;
        v66 = 2112;
        v67 = v3;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Evaluating payment setup configuration using PROD trust policy.\nSignedFields: %@,\nSignedData: %@,\nSignatureData: %@", buf, 0x20u);
      }

      v23 = SecCMSVerifyCopyDataAndAttributes();
      v24 = v23;
      v8 = v56;
      v5 = v57;
      if (ApplePinned)
      {
        v25 = 0;
        if (!v23)
        {
          goto LABEL_21;
        }
      }

      v26 = SecCopyErrorMessageString(v23, 0);
      v27 = PKLogFacilityTypeGetObject(6uLL);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v63 = v24;
        v64 = 2112;
        v65 = v26;
        _os_log_impl(&dword_1AD337000, v27, OS_LOG_TYPE_DEFAULT, "Payment setup configuration validation error: %ld message: %@", buf, 0x16u);
      }

      v25 = PKSignatureErrorWithReason(@"Payment setup configuration signature did not validate", v28, v29, v30, v31, v32, v33, v34, v54);

      if (ApplePinned)
      {
LABEL_21:
        CFRelease(ApplePinned);
      }

      goto LABEL_37;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to validate payment setup configuration Invalid URL path", buf, 2u);
    }

    v52 = @"Invalid URL path";
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to validate payment setup configuration Invalid URL Host", buf, 2u);
    }

    v52 = @"Invalid URL Host";
  }

  v25 = PKValidationErrorWithReason(v52, v45, v46, v47, v48, v49, v50, v51, v54);
LABEL_37:

LABEL_38:

  return v25;
}

uint64_t PKValidateIssuerBindingData(void *a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PKLogFacilityTypeGetObject(0x24uLL);
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "securePass:validateIssuerData", "", buf, 2u);
  }

  v42 = 0;
  v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v3 options:0 error:&v42];
  v7 = v42;
  if (!v7)
  {
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v6 PKStringForKey:@"displayableName"];
        v9 = v8;
        if (!v4 || !v3 || !v8)
        {
          v10 = PKLogFacilityTypeGetObject(0x2DuLL);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v3 description];
            *buf = 138412802;
            v44 = v9;
            v45 = 2112;
            v46 = v29;
            v47 = 2112;
            v48 = v4;
            _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Missing required data to setup issuer binding view controller: issuerName: %@ issuerData: %@ signature: %@", buf, 0x20u);
          }

          v7 = 0;
          v27 = 0;
          goto LABEL_52;
        }

        v10 = [v6 PKStringForKey:@"passTypeIdentifier"];
        v11 = [v6 PKStringForKey:@"teamIdentifier"];
        v12 = v11;
        if (v10 && v11)
        {
          v41 = 0;
          v13 = PKValidateIssuerDataSignature(v3, v4, v10, v11, 1, &v41);
          v7 = v41;
          if (!v7 && v13)
          {
            v14 = [v6 PKStringForKey:@"sessionIdentifier"];
            v15 = [v6 PKStringForKey:@"creationTimestamp"];
            v39 = [v6 PKStringForKey:@"callbackURL"];
            v40 = v15;
            if (v39 && v14 && v15)
            {
              v16 = PKISO8601DateFromDateString(v15);
              v17 = [MEMORY[0x1E695DF00] date];
              v38 = v16;
              [v17 timeIntervalSinceDate:v16];
              v19 = v18;

              if (v19 < 0.0 || v19 > 300.0)
              {
                v32 = PKLogFacilityTypeGetObject(0x2DuLL);
                p_super = v32;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "Pass Issuer Data Generation -  issuerData creation beyond threshhold", buf, 2u);
                }

                v27 = 0;
                v28 = v40;
              }

              else
              {
                v20 = [PKFidoProfile alloc];
                v21 = [v6 objectForKey:@"fidoProfile"];
                v22 = [(PKFidoProfile *)v20 initWithDictionary:v21];

                v23 = v22;
                v24 = [(PKFidoProfile *)v22 relyingPartyIdentifier];
                v25 = [(PKFidoProfile *)v23 accountHash];
                v35 = v25;
                v36 = v24;
                if (v24)
                {
                  v26 = v25 == 0;
                }

                else
                {
                  v26 = 1;
                }

                v27 = !v26;
                p_super = &v23->super;
                if (v26)
                {
                  v33 = PKLogFacilityTypeGetObject(0x2DuLL);
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "Pass Issuer Data Generation -  valid fido profile not supplied", buf, 2u);
                  }

                  v28 = v40;
                }

                else
                {
                  v28 = v40;
                  if (os_signpost_enabled(v5))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_1AD337000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "securePass:validateIssuerData", "", buf, 2u);
                  }
                }
              }
            }

            else
            {
              v31 = PKLogFacilityTypeGetObject(0x2DuLL);
              v38 = v31;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v6;
                _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Pass Issuer Data Generation -  issuerData not valid: %@", buf, 0xCu);
              }

              v27 = 0;
              v28 = v40;
            }

            v7 = 0;
            goto LABEL_51;
          }

          v14 = PKLogFacilityTypeGetObject(0x2DuLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v7 description];
            *buf = 138412290;
            v44 = v30;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Pass Issuer Data Generation - unable to validate signature with error: %@", buf, 0xCu);
          }
        }

        else
        {
          v14 = PKLogFacilityTypeGetObject(0x2DuLL);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = v10;
            v45 = 2112;
            v46 = v12;
            _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Pass Issuer Data Generation - missing required data to validate signature. passTypeIdentiier: %@ teamIdentifier: %@", buf, 0x16u);
          }

          v7 = 0;
        }

        v27 = 0;
LABEL_51:

LABEL_52:
        goto LABEL_53;
      }
    }
  }

  v9 = PKLogFacilityTypeGetObject(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v7;
    _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Pass Issuer Data Generation - unable to parse issuerData error: %@", buf, 0xCu);
  }

  v27 = 0;
LABEL_53:

  return v27;
}

BOOL PKValidateIssuerDataSignature(void *a1, void *a2, void *a3, void *a4, int a5, uint64_t *a6)
{
  v82 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Verifying signature for data %@", buf, 0xCu);
  }

  v15 = PKLogFacilityTypeGetObject(6uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v11;
    _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Verifying signature for data %@", buf, 0xCu);
  }

  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  if (PKIgnoreSignatures())
  {
    if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Signature validation: *** IGNORING SIGNATURES ***", buf, 2u);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Signature validation: *** IGNORING SIGNATURES ***", buf, 2u);
    }

    v27 = 0;
    goto LABEL_73;
  }

  if (v19)
  {
    if ([v18 length])
    {
      if ([v17 length])
      {
        if ([v16 length])
        {
          goto LABEL_22;
        }

        v28 = @"Data is missing";
      }

      else
      {
        v28 = @"Signature is missing";
      }
    }

    else
    {
      v28 = @"Pass type identifier is missing";
    }
  }

  else
  {
    v28 = @"Team identifier is missing";
  }

  v27 = PKSignatureErrorWithReason(v28, v20, v21, v22, v23, v24, v25, v26, v73);
  if (v27)
  {
    goto LABEL_73;
  }

LABEL_22:
  v74 = a5;
  v75 = a6;
  theDict = 0;
  trust = 0;
  v29 = SecCertificateCreateWithBytes();
  v30 = SecCertificateCreateWithBytes();
  v31 = v30;
  v32 = 0;
  if (v29 && v30)
  {
    *buf = v29;
    *&buf[8] = v30;
    v32 = CFArrayCreate(*MEMORY[0x1E695E480], buf, 2, 0);
  }

  PassbookCardSigner = SecPolicyCreatePassbookCardSigner();
  v34 = SecCMSVerifySignedData();
  CFRelease(PassbookCardSigner);
  if (v29)
  {
    CFRelease(v29);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v34)
  {
    if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CMS verification error: %ld", buf, 0xCu);
    }

    a6 = v75;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v34;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "CMS verification error: %ld", buf, 0xCu);
    }

    v27 = PKSignatureErrorWithReason(@"Data signature did not verify successfully", v35, v36, v37, v38, v39, v40, v41, v73);
    goto LABEL_69;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E697AFC0]);
  PKSecTrustGetCertificateAtIndex(trust, 0);
  if (Value && CFDictionaryGetValue(Value, *MEMORY[0x1E697AFA8]))
  {
    v27 = 0;
  }

  else
  {
    v43 = MEMORY[0x1E695DF00];
    SecCertificateNotValidBefore();
    v44 = [v43 dateWithTimeIntervalSinceReferenceDate:?];
    if (_CertValidityStartDateIsPastCutoff(v44))
    {
      v27 = PKSignatureErrorWithReason(@"Signature must contain a signing date", v45, v46, v47, v48, v49, v50, v51, v73);
    }

    else
    {
      v52 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AD337000, v52, OS_LOG_TYPE_ERROR, "Data signature must contain a signing date. This will start being enforced for newly issued certs.", buf, 2u);
      }

      SecTrustSetVerifyDate(trust, v44);
      v27 = 0;
    }
  }

  a6 = v75;
  if (v74)
  {
    v53 = _PKCertificateCopyValuesForOID();
    if (!v53)
    {
      v70 = PKSignatureErrorWithReason(@"Data must be signed with an enhanced Passbook certificate.", v54, v55, v56, v57, v58, v59, v60, v73);

      v27 = v70;
      if (!v70)
      {
        goto LABEL_51;
      }

      goto LABEL_69;
    }

    CFRelease(v53);
  }

  if (!v27)
  {
LABEL_51:
    v61 = SecTrustEvaluateWithError(trust, 0);
    result = kSecTrustResultInvalid;
    if (v61 && !SecTrustGetTrustResult(trust, &result))
    {
      v62 = 0;
      if (result > kSecTrustResultOtherError)
      {
        v27 = 0;
        goto LABEL_58;
      }

      if (((1 << result) & 0x68) == 0)
      {
        v27 = 0;
        if (((1 << result) & 0x85) != 0)
        {
          v62 = @"Unreachable trust evaluation.";
          v27 = PKSignatureEvaluationUnreachableError();
          goto LABEL_59;
        }

LABEL_58:
        if (!(v27 | v62))
        {
          v27 = 0;
LABEL_68:
          a6 = v75;
          goto LABEL_69;
        }

LABEL_59:
        if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          *&buf[4] = v61;
          *&buf[12] = 2048;
          *&buf[14] = result;
          v80 = 2112;
          v81 = v62;
          _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error evaluating trust. Status: %ld ResultType: %ld Description: %@", buf, 0x20u);
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          *&buf[4] = v61;
          *&buf[12] = 2048;
          *&buf[14] = result;
          v80 = 2112;
          v81 = v62;
          _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Error evaluating trust. Status: %ld ResultType: %ld Description: %@", buf, 0x20u);
        }

        goto LABEL_68;
      }
    }

    v62 = SecTrustCopyFailureDescription();
    v27 = PKSignatureErrorWithReason(@"The passTypeIdentifier or teamIdentifier provided may not match your certificate, or the certificate trust chain could not be verified.", v63, v64, v65, v66, v67, v68, v69, v73);
    goto LABEL_58;
  }

LABEL_69:
  if (trust)
  {
    CFRelease(trust);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

LABEL_73:

  if (a6)
  {
    v71 = v27;
    *a6 = v27;
  }

  return v27 == 0;
}

id PKValidatePaymentMerchantSession(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Evaluating merchant session using PROD trust policy.", v16, 2u);
  }

  ApplePinned = SecPolicyCreateApplePinned();
  [v1 signature];
  [v1 signedData];
  v4 = SecCMSVerifyCopyDataAndAttributes();
  v5 = v4;
  if (ApplePinned)
  {
    v6 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v7 = PKLogFacilityTypeGetObject(6uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 134217984;
    *&v16[4] = v5;
    _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Merchant session validation error: %ld", v16, 0xCu);
  }

  v6 = PKSignatureErrorWithReason(@"Merchant session signature did not validate", v8, v9, v10, v11, v12, v13, v14, *v16);
  if (ApplePinned)
  {
LABEL_8:
    CFRelease(ApplePinned);
  }

  return v6;
}

void PKCheckRevocationStatus(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  trust = 0;
  v5 = objc_autoreleasePoolPush();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __PKCheckRevocationStatus_block_invoke;
  aBlock[3] = &unk_1E79C4428;
  v6 = v4;
  v21 = v6;
  v7 = _Block_copy(aBlock);
  v19 = 0;
  v8 = PKObjectDictionaryWithError(v3, &v19);
  v9 = v19;
  if (!v8)
  {
    if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot check revocation status of pass with invalid pass.json: %@", &buf, 0xCu);
    }

    v12 = PKLogFacilityTypeGetObject(6uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot check revocation status of pass with invalid pass.json: %@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  v10 = _PKVerifySignatureLocally(v3, v8);

  if (v10 || !trust)
  {
    if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot check revocation status of pass that does not verify locally: %@", &buf, 0xCu);
    }

    v12 = PKLogFacilityTypeGetObject(6uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Cannot check revocation status of pass that does not verify locally: %@", &buf, 0xCu);
    }

    v9 = v10;
LABEL_17:

    v7[2](v7);
    objc_autoreleasePoolPop(v5);
    goto LABEL_28;
  }

  Revocation = SecPolicyCreateRevocation(3uLL);
  if (Revocation)
  {
    SecTrustSetPolicies(trust, Revocation);
    CFRelease(Revocation);
  }

  else
  {
    if (trust)
    {
      CFRelease(trust);
    }

    if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not create recovation policy", &buf, 2u);
    }

    v13 = PKLogFacilityTypeGetObject(6uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Could not create recovation policy", &buf, 2u);
    }

    v7[2](v7);
  }

  objc_autoreleasePoolPop(v5);
  if (Revocation)
  {
    v14 = dispatch_get_global_queue(-2, 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __PKCheckRevocationStatus_block_invoke_100;
    v16[3] = &unk_1E79C8958;
    v18 = trust;
    v17 = v6;
    v15 = v16;
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v24 = __dispatch_async_ar_block_invoke_5;
    v25 = &unk_1E79C4428;
    v26 = v15;
    dispatch_async(v14, &buf);
  }

LABEL_28:
}

void __PKCheckRevocationStatus_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = dispatch_get_global_queue(0, 0);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __PKCheckRevocationStatus_block_invoke_2;
    v4[3] = &unk_1E79C4428;
    v5 = v1;
    v3 = v4;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __dispatch_async_ar_block_invoke_5;
    block[3] = &unk_1E79C4428;
    v7 = v3;
    dispatch_async(v2, block);
  }
}

void __PKCheckRevocationStatus_block_invoke_100(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = SecTrustEvaluateWithError(*(a1 + 40), 0);
  TrustResult = 0;
  result = kSecTrustResultInvalid;
  if (v2 && (TrustResult = SecTrustGetTrustResult(*(a1 + 40), &result)) == 0)
  {
    v6 = 1;
    if (result > kSecTrustResultFatalTrustFailure || ((1 << result) & 0x68) == 0)
    {
      v5 = 0;
    }

    else
    {
      v9 = SecTrustCopyFailureDescription();
      if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *v13 = result;
        *&v13[8] = 2112;
        *&v13[10] = v9;
        _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Pass is revoked! (result type %ld: %@)", buf, 0x16u);
      }

      v10 = PKLogFacilityTypeGetObject(6uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *v13 = result;
        *&v13[8] = 2112;
        *&v13[10] = v9;
        _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Pass is revoked! (result type %ld: %@)", buf, 0x16u);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      v5 = 1;
      v6 = 1;
    }
  }

  else
  {
    if (PKDeveloperLoggingEnabled() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v13 = v2;
      *&v13[4] = 2048;
      *&v13[6] = TrustResult;
      _os_log_error_impl(&dword_1AD337000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Revocation check failed with result %d status %ld", buf, 0x12u);
    }

    v4 = PKLogFacilityTypeGetObject(6uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v13 = v2;
      *&v13[4] = 2048;
      *&v13[6] = TrustResult;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Revocation check failed with result %d status %ld", buf, 0x12u);
    }

    v5 = 0;
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v5);
  }

  CFRelease(*(a1 + 40));
}

id PKValidateLocationDictionary(void *a1)
{
  v1 = a1;
  v37 = 0;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"latitude", 0, v2, &v37);
  if (!v3)
  {
    [v37 doubleValue];
    if (fabs(*&v11) <= 90.0)
    {
      v36 = 0;
      v12 = objc_opt_class();
      v3 = _PKVerifyDictionaryKey(v1, @"longitude", 0, v12, &v36);
      if (!v3)
      {
        [v36 doubleValue];
        if (fabs(*&v20) <= 180.0)
        {
          v35 = 0;
          v21 = objc_opt_class();
          v22 = _PKVerifyDictionaryKey(v1, @"maxDistance", 1, v21, &v35);
          if (!v22)
          {
            [v35 doubleValue];
            if (v35 && *&v30 <= 0.0)
            {
              v22 = PKValidationErrorWithReason(@"Maximum distance must be greater than zero. It’s ‘%g’.", v23, v24, v25, v26, v27, v28, v29, v30);
            }

            else
            {
              v31 = objc_opt_class();
              v22 = _PKVerifyDictionaryKey(v1, @"altitude", 1, v31, 0);
              if (!v22)
              {
                v32 = objc_opt_class();
                v22 = _PKVerifyDictionaryKey(v1, @"name", 1, v32, 0);
                if (!v22)
                {
                  v33 = objc_opt_class();
                  v22 = _PKVerifyDictionaryKey(v1, @"relevantText", 1, v33, 0);
                }
              }
            }
          }

          v3 = v22;
        }

        else
        {
          v3 = PKValidationErrorWithReason(@"Longitude must be between -180 and 180. It’s ‘%g’.", v13, v14, v15, v16, v17, v18, v19, v20);
        }
      }
    }

    else
    {
      v3 = PKValidationErrorWithReason(@"Latitude must be between -90 and 90. It’s ‘%g’.", v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return v3;
}

id _PKVerifyDictionaryKey(void *a1, void *a2, int a3, uint64_t a4, id *a5)
{
  v8 = a2;
  v16 = [a1 objectForKey:v8];
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      if (a5)
      {
        objc_storeStrong(a5, v16);
      }

      goto LABEL_8;
    }

    objc_opt_class();
    PKValidationErrorWithReason(@"Value for key '%@' must be of class %@, but is actually of class %@.", v19, v20, v21, v22, v23, v24, v25, v8);
    goto LABEL_11;
  }

  if (a3 == 1)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    PKValidationErrorWithReason(@"Pass dictionary must contain key '%@'.", v9, v10, v11, v12, v13, v14, v15, v8);
    v17 = LABEL_11:;
    goto LABEL_12;
  }

  v17 = PKValidationWarningWithReason(@"Pass dictionary must contain key '%@'.", v9, v10, v11, v12, v13, v14, v15, v8);
LABEL_12:
  v18 = v17;
LABEL_13:

  return v18;
}

id PKValidateBeaconDictionary(void *a1)
{
  v1 = a1;
  v38 = 0;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"proximityUUID", 0, v2, &v38);
  if (v3)
  {
    v4 = v3;
    v5 = v4;
    goto LABEL_14;
  }

  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v14 = [v6 initWithUUIDString:v38];
  if (v14)
  {
    v37 = 0;
    v15 = objc_opt_class();
    v16 = _PKVerifyDictionaryKey(v1, @"major", 1, v15, &v37);
    if (v16)
    {
      v4 = v16;
      v5 = v4;
LABEL_12:

      goto LABEL_13;
    }

    if ([v37 unsignedIntegerValue] >= 0x10000)
    {
      v5 = PKValidationErrorWithReason(@"Beacon major value (%@) is not within valid range (0-%lu).", v17, v18, v19, v20, v21, v22, v23, v37);
      v4 = 0;
      goto LABEL_12;
    }

    v36 = 0;
    v24 = objc_opt_class();
    v25 = _PKVerifyDictionaryKey(v1, @"minor", 1, v24, &v36);
    if (!v25)
    {
      if ([v36 unsignedIntegerValue] >= 0x10000)
      {
        v5 = PKValidationErrorWithReason(@"Beacon minor value (%@) is not within valid range (0-%lu).", v27, v28, v29, v30, v31, v32, v33, v36);
        v4 = 0;
        goto LABEL_11;
      }

      v34 = objc_opt_class();
      v25 = _PKVerifyDictionaryKey(v1, @"name", 1, v34, 0);
      if (!v25)
      {
        v35 = objc_opt_class();
        v25 = _PKVerifyDictionaryKey(v1, @"relevantText", 1, v35, 0);
        if (!v25)
        {
          v4 = 0;
          v5 = 0;
          goto LABEL_11;
        }
      }
    }

    v4 = v25;
    v5 = v4;
LABEL_11:

    goto LABEL_12;
  }

  v5 = PKValidationErrorWithReason(@"Proximity UUID (%@) is not a valid UUID.", v7, v8, v9, v10, v11, v12, v13, v38);
  v4 = 0;
LABEL_13:

LABEL_14:

  return v5;
}

id PKValidateRelevantDateDictionary(void *a1)
{
  v1 = a1;
  v18 = 0;
  v2 = _PKVerifyDateDictionaryKey(v1, @"startDate", 1, &v18);
  if (v2)
  {
    v3 = v2;
    v4 = v3;
    goto LABEL_13;
  }

  v17 = 0;
  v5 = _PKVerifyDateDictionaryKey(v1, @"endDate", 1, &v17);
  if (v5)
  {
    goto LABEL_4;
  }

  if (v18 && v17)
  {
    v6 = [PKPassRelevantDate alloc];
    v7 = [(PKPassRelevantDate *)v6 initWithEffectiveStartDate:v18 effectiveEndDate:v17];
    if (!v7)
    {
      v8 = [0 description];
      v4 = PKValidationErrorWithReason(@"RelevantDate (%@) is not a valid relevant date.", v9, v10, v11, v12, v13, v14, v15, v8);

      v3 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v5 = _PKVerifyDateDictionaryKey(v1, @"date", 0, 0);
  if (!v5)
  {
LABEL_10:
    v3 = 0;
    v4 = 0;
    goto LABEL_12;
  }

LABEL_4:
  v3 = v5;
  v4 = v3;
LABEL_12:

LABEL_13:

  return v4;
}

id *_PKVerifyDateDictionaryKey(void *a1, void *a2, char a3, id *a4)
{
  v7 = a2;
  v15 = [a1 objectForKey:v7];
  if (!v15)
  {
    if (a3)
    {
      a4 = 0;
      goto LABEL_13;
    }

    PKValidationErrorWithReason(@"Pass dictionary must contain key '%@'.", v8, v9, v10, v11, v12, v13, v14, v7);
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    PKValidationErrorWithReason(@"Value for key '%@' must be of class NSString, but is actually of class %@.", v24, v25, v26, v27, v28, v29, v30, v7);
    a4 = LABEL_10:;
    goto LABEL_13;
  }

  v23 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v15, 0, 0);
  if (v23)
  {
    if (a4)
    {
      objc_storeStrong(a4, v23);
      a4 = 0;
    }
  }

  else
  {
    a4 = PKValidationErrorWithReason(@"Unable to parse %@ %@ as a date. We expect dates in W3C date time stamp format, either Complete date plus hours and minutes or Complete date plus hours, minutes and seconds. For example, 1980-05-07T10:30-05:00.", v16, v17, v18, v19, v20, v21, v22, v7);
  }

LABEL_13:

  return a4;
}

id PKValidateChangeMessage(void *a1)
{
  v1 = a1;
  v9 = [v1 UTF8String];
  v10 = 0;
  v11 = @"Change message %@ has more than one %%@";
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = *v9++;
        v12 = v13;
        if (v13 != 37)
        {
          break;
        }

        if (v10 < 4)
        {
          v10 = dword_1ADB9A3E0[v10];
        }
      }

      if (v12 != 64)
      {
        break;
      }

      if (v10 == 1)
      {
        v10 = 2;
      }

      else if (v10 == 3)
      {
        goto LABEL_16;
      }
    }

    if (!v12)
    {
      break;
    }

    if ((v10 | 2) == 3)
    {
      v11 = @"Change message %@ has a format code other than %%@";
      goto LABEL_16;
    }
  }

  if (v10 == 2)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v11 = @"Change message %@ needs to contain %%@.";
LABEL_16:
  v14 = PKValidationErrorWithReason(v11, v2, v3, v4, v5, v6, v7, v8, v1);
LABEL_17:

  return v14;
}

id PKValidatePaymentApplicationDict(void *a1)
{
  v108 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"secureElementIdentifier", 0, v2, 0);
  if (v3 || (v4 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"applicationIdentifier", 0, v4, 0), (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (v5 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"DPANIdentifier", 0, v5, 0), (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (v6 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"DPANSuffix", 0, v6, 0), (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (v7 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"state", 0, v7, 0), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v3;
    v9 = v8;
    goto LABEL_7;
  }

  v104 = 0;
  v11 = objc_opt_class();
  v12 = _PKVerifyDictionaryKey(v1, @"paymentApplicationStateMessagingOverride", 1, v11, &v104);
  if (v12 || v104 && (_PKValidateApplicationStateMessagingOverrideDict(v104), (v12 = objc_claimAutoreleasedReturnValue()) != 0) || (v13 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"supportsContactlessPayment", 0, v13, 0), (v12 = objc_claimAutoreleasedReturnValue()) != 0) || (v14 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"supportsInAppPayment", 0, v14, 0), (v12 = objc_claimAutoreleasedReturnValue()) != 0) || (v15 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"supportsBarcodePayment", 1, v15, 0), (v12 = objc_claimAutoreleasedReturnValue()) != 0) || (v16 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"supportsOptionalAuthentication", 1, v16, 0), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v12;
    v9 = v8;
    goto LABEL_12;
  }

  v103 = 0;
  v17 = objc_opt_class();
  v18 = _PKVerifyDictionaryKey(v1, @"supportedExpressModes", 1, v17, &v103);
  if (v18)
  {
    v8 = v18;
    v9 = v8;
    goto LABEL_72;
  }

  if (v103)
  {
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v19 = v103;
    v20 = [v19 countByEnumeratingWithState:&v99 objects:v107 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v100;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v100 != v22)
          {
            objc_enumerationMutation(v19);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = objc_opt_class();
            v9 = PKValidationErrorWithReason(@"entry in supportedExpressModes needs to be a string. Found object of class %@.", v27, v28, v29, v30, v31, v32, v33, v26);

            v8 = 0;
            goto LABEL_72;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v99 objects:v107 count:16];
      }

      while (v21);
    }
  }

  v98 = 0;
  v24 = objc_opt_class();
  v25 = _PKVerifyDictionaryKey(v1, @"automaticSelectionCriteria", 1, v24, &v98);
  if (v25)
  {
    v8 = v25;
    v9 = v8;
    goto LABEL_71;
  }

  if (v98)
  {
    v97 = 0u;
    v95 = 0u;
    v96 = 0u;
    v94 = 0u;
    v34 = v98;
    v35 = [v34 countByEnumeratingWithState:&v94 objects:v106 count:16];
    if (!v35)
    {
      goto LABEL_44;
    }

    v36 = v35;
    v37 = *v95;
    while (1)
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v95 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v94 + 1) + 8 * j);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v58 = objc_opt_class();
          v9 = PKValidationErrorWithReason(@"entry in automaticSelectionCriteria needs to be a dictionary. Found object of class %@.", v59, v60, v61, v62, v63, v64, v65, v58);
          v8 = 0;
LABEL_70:

          goto LABEL_71;
        }

        v40 = _PKValidateAutomaticSelectionCriteriaDict(v39);
        if (v40)
        {
          v8 = v40;
          v9 = v8;
          goto LABEL_70;
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v94 objects:v106 count:16];
      if (!v36)
      {
LABEL_44:

        break;
      }
    }
  }

  v93 = 0;
  v41 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"associatedReaders", 1, v41, &v93);
  if (v42)
  {
LABEL_46:
    v8 = v42;
    v9 = v8;
    goto LABEL_47;
  }

  if (!v93)
  {
    goto LABEL_59;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v43 = v93;
  v44 = [v43 countByEnumeratingWithState:&v89 objects:v105 count:16];
  if (!v44)
  {
    goto LABEL_58;
  }

  v45 = v44;
  v46 = *v90;
  while (2)
  {
    for (k = 0; k != v45; ++k)
    {
      if (*v90 != v46)
      {
        objc_enumerationMutation(v43);
      }

      v48 = *(*(&v89 + 1) + 8 * k);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v66 = objc_opt_class();
        v9 = PKValidationErrorWithReason(@"entry in associatedReaders needs to be a dictionary. Found object of class %@.", v67, v68, v69, v70, v71, v72, v73, v66);
        v8 = 0;
LABEL_75:

        goto LABEL_47;
      }

      v49 = _PKValidateAssociatedReaderDict(v48);
      if (v49)
      {
        v8 = v49;
        v9 = v8;
        goto LABEL_75;
      }
    }

    v45 = [v43 countByEnumeratingWithState:&v89 objects:v105 count:16];
    if (v45)
    {
      continue;
    }

    break;
  }

LABEL_58:

LABEL_59:
  v50 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"appletDataFormat", 1, v50, 0);
  if (v42)
  {
    goto LABEL_46;
  }

  v51 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"appletCurrencyCode", 1, v51, 0);
  if (v42)
  {
    goto LABEL_46;
  }

  v52 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"requiresDeferredAuthorization", 1, v52, 0);
  if (v42)
  {
    goto LABEL_46;
  }

  v53 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"paymentNetworkIdentifier", 0, v53, 0);
  if (v42)
  {
    goto LABEL_46;
  }

  v54 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"supportsInstantFundsIn", 1, v54, 0);
  if (v42)
  {
    goto LABEL_46;
  }

  v55 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v1, @"requiresConsentForDataRelease", 1, v55, 0);
  if (v42)
  {
    goto LABEL_46;
  }

  v88 = 0;
  v56 = objc_opt_class();
  v57 = _PKVerifyDictionaryKey(v1, @"inAppPINRequiredAmount", 1, v56, &v88);
  if (v57)
  {
    goto LABEL_66;
  }

  if (v88)
  {
    v74 = [MEMORY[0x1E696AB90] decimalNumberWithString:?];
    v75 = [MEMORY[0x1E696AB90] notANumber];
    if ([v74 isEqualToNumber:v75])
    {

      goto LABEL_81;
    }

    v83 = [MEMORY[0x1E696AB90] zero];
    v84 = [v74 compare:v83];

    if (v84 == -1)
    {
LABEL_81:
      v86 = PKValidationErrorWithReason(@"%@ '%@' isn't a valid amount", v76, v77, v78, v79, v80, v81, v82, @"inAppPINRequiredAmount");
    }

    else
    {
      v85 = objc_opt_class();
      v86 = _PKVerifyDictionaryKey(v1, @"inAppPINRequiredCurrency", 0, v85, 0);
    }

    if (v86)
    {
      v8 = v86;

      goto LABEL_67;
    }
  }

  v87 = objc_opt_class();
  v57 = _PKVerifyDictionaryKey(v1, @"shareable", 1, v87, 0);
  if (v57)
  {
LABEL_66:
    v8 = v57;
  }

  else
  {
    v8 = 0;
  }

LABEL_67:

  v9 = v8;
LABEL_47:

LABEL_71:
LABEL_72:

LABEL_12:
LABEL_7:

  return v9;
}

id _PKValidateApplicationStateMessagingOverrideDict(void *a1)
{
  v1 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__18;
  v9 = __Block_byref_object_dispose__18;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___PKValidateApplicationStateMessagingOverrideDict_block_invoke;
  v4[3] = &unk_1E79CDB70;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1AD688A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _PKValidateAutomaticSelectionCriteriaDict(void *a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"type", 0, v2, 0);
  if (v3)
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v48 = 0;
    v6 = objc_opt_class();
    v7 = _PKVerifyDictionaryKey(v1, @"primaryTCIs", 1, v6, &v48);
    if (v7)
    {
      v4 = v7;
      v5 = v4;
    }

    else
    {
      if (v48)
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v8 = v48;
        v9 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v45;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v45 != v11)
              {
                objc_enumerationMutation(v8);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v15 = objc_opt_class();
                v5 = PKValidationErrorWithReason(@"entry in primaryTCIs needs to be a string. Found object of class %@.", v16, v17, v18, v19, v20, v21, v22, v15);

                v4 = 0;
                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v44 objects:v50 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v43 = 0;
      v13 = objc_opt_class();
      v14 = _PKVerifyDictionaryKey(v1, @"tcis", 1, v13, &v43);
      if (v14)
      {
        goto LABEL_16;
      }

      if (v43)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v24 = v43;
        v25 = [v24 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v40;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v40 != v27)
              {
                objc_enumerationMutation(v24);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v31 = objc_opt_class();
                v5 = PKValidationErrorWithReason(@"entry in TCIs needs to be a string. Found object of class %@.", v32, v33, v34, v35, v36, v37, v38, v31);

                v4 = 0;
                goto LABEL_17;
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }
      }

      v29 = objc_opt_class();
      v14 = _PKVerifyDictionaryKey(v1, @"openLoopExpressMask", 1, v29, 0);
      if (v14 || (v30 = objc_opt_class(), _PKVerifyDictionaryKey(v1, @"supportsExpress", 1, v30, 0), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
LABEL_16:
        v4 = v14;
        v5 = v4;
      }

      else
      {
        v4 = 0;
        v5 = 0;
      }

LABEL_17:
    }

LABEL_19:
  }

  return v5;
}

id _PKValidateAssociatedReaderDict(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"readerID", 0, v2, 0);
  if (v3)
  {
    v4 = v3;
    v5 = v4;
    goto LABEL_24;
  }

  v31 = 0;
  v6 = objc_opt_class();
  v7 = _PKVerifyDictionaryKey(v1, @"readerCAs", 0, v6, &v31);
  if (v7)
  {
    v4 = v7;
    v5 = v4;
    goto LABEL_23;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v31;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v11 = *v28;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v5 = PKValidationErrorWithReason(@"entry in readerCAs needs to be a dictionary. Found object of class %@.", v20, v21, v22, v23, v24, v25, v26, v19);
        v4 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v14 = v13;
      v32 = 0;
      v15 = objc_opt_class();
      v16 = _PKVerifyDictionaryKey(v14, @"scheme", 0, v15, &v32);
      if (!v16)
      {
        result = PKTerminalPublicKeySchemeFromString(v32);
        if (result)
        {
          if (result != 1)
          {
            __break(1u);
            return result;
          }

          v18 = objc_opt_class();
          v16 = _PKVerifyDictionaryKey(v14, @"publicKey", 0, v18, 0);
        }

        else
        {
          v16 = 0;
        }
      }

      if (v16)
      {
        v4 = v16;
        v5 = v4;
        goto LABEL_22;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v4 = 0;
  v5 = 0;
LABEL_23:

LABEL_24:

  return v5;
}

id PKFetchSigningDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = _PKFetchSigningDate(v3, v4);
  objc_autoreleasePoolPop(v5);

  return v6;
}

id _PKFetchSigningDate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v4 PKStringForKey:@"passTypeIdentifier"];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"teamIdentifier"];
    v7 = MEMORY[0x1E695DEF0];
    v8 = [v3 URLByAppendingPathComponent:@"signature" isDirectory:0];
    v9 = [v7 dataWithContentsOfURL:v8];

    v10 = MEMORY[0x1E695DEF0];
    v11 = [@"manifest" stringByAppendingPathExtension:@"json"];
    v12 = [v3 URLByAppendingPathComponent:v11 isDirectory:0];
    v13 = [v10 dataWithContentsOfURL:v12];

    PassbookCardSigner = SecPolicyCreatePassbookCardSigner();
    SecCMSVerifySignedData();
    if (PassbookCardSigner)
    {
      CFRelease(PassbookCardSigner);
    }
  }

  return 0;
}

id _PKValidateTopLevelPassStructure(void *a1, void *a2, id *a3)
{
  v475[16] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v5];
  if (!v16)
  {
    v372 = v5;
    v18 = @"NSBundle init returns nil for URL %@";
    goto LABEL_5;
  }

  v17 = [PKImage URLForImageNamed:@"icon" inBundle:v16 scale:0];
  if (!v17)
  {
    v20 = [@"icon" stringByAppendingPathExtension:@"png"];
    v21 = [v16 URLForResource:v20 withExtension:@"urls"];

    if (v21)
    {
      goto LABEL_7;
    }

    v18 = @"Pass does not contain icon.png/icon@2x.png/icon@3x.png";
LABEL_5:
    v19 = PKValidationErrorWithReason(v18, v9, v10, v11, v12, v13, v14, v15, v372);
    goto LABEL_27;
  }

LABEL_7:
  v458 = 0;
  v22 = _PKValidateVersion(v6, &v458);
  if (v22)
  {
    v23 = v22;
LABEL_25:
    v45 = v23;
    v19 = v23;
    goto LABEL_26;
  }

  v24 = v6;
  v463 = 0;
  v25 = objc_opt_class();
  v26 = _PKVerifyDictionaryKey(v24, @"preferredStyleSchemes", 1, v25, &v463);
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    obj = v24;
    location = a3;
    v385 = v8;
    v29 = v7;
    v30 = v5;
    v31 = v6;
    v462 = 0u;
    v461 = 0u;
    v460 = 0u;
    v459 = 0u;
    v32 = v463;
    v33 = [v32 countByEnumeratingWithState:&v459 objects:v475 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v460;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v460 != v35)
          {
            objc_enumerationMutation(v32);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = objc_opt_class();
            v28 = PKValidationErrorWithReason(@"scheme in preferredStyleSchemes array needs to be a string. Found object of class %@.", v38, v39, v40, v41, v42, v43, v44, v37);

            goto LABEL_22;
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v459 objects:v475 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v28 = 0;
LABEL_22:
    v6 = v31;
    v5 = v30;
    v7 = v29;
    v8 = v385;
    v24 = obj;
    a3 = location;
  }

  if (v28)
  {
    v23 = v28;
    goto LABEL_25;
  }

  v475[0] = 0;
  *&v459 = 0;
  v47 = objc_opt_class();
  v48 = _PKVerifyDictionaryKey(v24, @"passTypeIdentifier", 0, v47, v475);
  if (v48 || (v49 = objc_opt_class(), _PKVerifyDictionaryKey(v24, @"serialNumber", 0, v49, &v459), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (v50 = objc_opt_class(), _PKVerifyDictionaryKey(v24, @"description", 0, v50, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (v51 = objc_opt_class(), _PKVerifyDictionaryKey(v24, @"organizationName", 0, v51, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (v52 = objc_opt_class(), _PKVerifyDictionaryKey(v24, @"teamIdentifier", 0, v52, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (v53 = objc_opt_class(), _PKVerifyDictionaryKey(v24, @"cardType", 1, v53, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (v54 = objc_opt_class(), _PKVerifyDictionaryKey(v24, @"cardSubtype", 1, v54, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v45 = v48;
    v19 = v45;
    goto LABEL_38;
  }

  locationa = a3;
  v384 = v16;
  v386 = v8;
  v55 = v6;
  v463 = 0;
  v56 = v24;
  v57 = _PKValidateURLStringKey(v24, @"webServiceURL", 1, 1, &v463);
  if (v57)
  {
LABEL_40:
    v45 = v57;
    v19 = v45;
    goto LABEL_48;
  }

  if (v463)
  {
    v457 = 0;
    v58 = objc_opt_class();
    v59 = _PKVerifyDictionaryKey(v24, @"authenticationToken", 0, v58, &v457);
    v45 = v59;
    if (v59)
    {
      v60 = v59;
LABEL_46:
      v19 = v60;
      goto LABEL_47;
    }

    if ([v457 length] <= 0xF)
    {
      v60 = PKValidationErrorWithReason(@"authenticationToken '%@' is too short. It needs to be at least %d characters.", v61, v62, v63, v64, v65, v66, v67, v457);
      goto LABEL_46;
    }
  }

  v68 = objc_opt_class();
  v57 = _PKVerifyDictionaryKey(v56, @"transactionServicePushTopic", 1, v68, 0);
  if (v57)
  {
    goto LABEL_40;
  }

  v57 = _PKValidateURLStringKey(v56, @"transactionServiceURL", 1, 1, 0);
  if (v57)
  {
    goto LABEL_40;
  }

  v57 = _PKVerifyDateDictionaryKey(v56, @"relevantDate", 1, 0);
  if (v57)
  {
    goto LABEL_40;
  }

  v457 = 0;
  v69 = objc_opt_class();
  v70 = _PKVerifyDictionaryKey(v56, @"relevantDates", 1, v69, &v457);
  if (v70)
  {
    goto LABEL_68;
  }

  if (v457)
  {
    v456 = 0u;
    v455 = 0u;
    v454 = 0u;
    v453 = 0u;
    v71 = v457;
    v72 = [v71 countByEnumeratingWithState:&v453 objects:v474 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v454;
      do
      {
        for (j = 0; j != v73; ++j)
        {
          if (*v454 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = PKValidateRelevantDateDictionary(*(*(&v453 + 1) + 8 * j));
          if (v76)
          {
            v372 = v475[0];
            v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@"];
            _PKShoutPassValidationError(v76, v77);
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v453 objects:v474 count:16];
      }

      while (v73);
    }
  }

  v70 = _PKVerifyDateDictionaryKey(v56, @"expirationDate", 1, 0);
  if (v70 || (v78 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"voided", 1, v78, 0), (v70 = objc_claimAutoreleasedReturnValue()) != 0) || (v79 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"groupingIdentifier", 1, v79, 0), (v70 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_68:
    v19 = v70;
    v45 = v19;
    goto LABEL_47;
  }

  v452 = 0;
  v80 = objc_opt_class();
  v81 = _PKVerifyDictionaryKey(v56, @"locations", 1, v80, &v452);
  if (v81)
  {
    v19 = v81;
    v45 = v19;
    goto LABEL_100;
  }

  v451 = 0u;
  v450 = 0u;
  v448 = 0u;
  v449 = 0u;
  v82 = v452;
  v83 = [v82 countByEnumeratingWithState:&v448 objects:v473 count:16];
  if (!v83)
  {
    goto LABEL_80;
  }

  v84 = v83;
  v85 = *v449;
  while (2)
  {
    for (k = 0; k != v84; ++k)
    {
      if (*v449 != v85)
      {
        objc_enumerationMutation(v82);
      }

      v87 = *(*(&v448 + 1) + 8 * k);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v91 = objc_opt_class();
        v19 = PKValidationErrorWithReason(@"entry in locations array needs to be a dictionary. Found object of class %@.", v92, v93, v94, v95, v96, v97, v98, v91);
        v45 = 0;
LABEL_84:

        goto LABEL_100;
      }

      v88 = PKValidateLocationDictionary(v87);
      if (v88)
      {
        v19 = v88;
        v45 = v19;
        goto LABEL_84;
      }
    }

    v84 = [v82 countByEnumeratingWithState:&v448 objects:v473 count:16];
    if (v84)
    {
      continue;
    }

    break;
  }

LABEL_80:

  v447 = 0;
  v89 = objc_opt_class();
  v90 = _PKVerifyDictionaryKey(v56, @"beacons", 1, v89, &v447);
  if (v90)
  {
    goto LABEL_81;
  }

  v445 = 0u;
  v446 = 0u;
  v443 = 0u;
  v444 = 0u;
  v99 = v447;
  v100 = [v99 countByEnumeratingWithState:&v443 objects:v472 count:16];
  if (v100)
  {
    v101 = v100;
    v102 = *v444;
    while (2)
    {
      for (m = 0; m != v101; ++m)
      {
        if (*v444 != v102)
        {
          objc_enumerationMutation(v99);
        }

        v104 = *(*(&v443 + 1) + 8 * m);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v110 = objc_opt_class();
          v19 = PKValidationErrorWithReason(@"entry in beacons array needs to be a dictionary. Found object of class %@.", v111, v112, v113, v114, v115, v116, v117, v110);

          v45 = 0;
          goto LABEL_99;
        }

        v105 = PKValidateBeaconDictionary(v104);
        if (v105)
        {
          v372 = v475[0];
          v106 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@"];
          _PKShoutPassValidationError(v105, v106);
        }
      }

      v101 = [v99 countByEnumeratingWithState:&v443 objects:v472 count:16];
      if (v101)
      {
        continue;
      }

      break;
    }
  }

  v107 = objc_opt_class();
  v90 = _PKVerifyDictionaryKey(v56, @"userInfo", 1, v107, 0);
  if (v90)
  {
LABEL_81:
    v19 = v90;
    v45 = v19;
    goto LABEL_99;
  }

  v442 = 0;
  v108 = objc_opt_class();
  v109 = _PKVerifyDictionaryKey(v56, @"foregroundColor", 1, v108, &v442);
  if (v109 || v442 && (_PKValidateColorString(v442), (v109 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v109;
    v45 = v19;
    goto LABEL_121;
  }

  v441 = 0;
  v118 = objc_opt_class();
  v119 = _PKVerifyDictionaryKey(v56, @"backgroundColor", 1, v118, &v441);
  if (v119 || v441 && (_PKValidateColorString(v441), (v119 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v119;
    v45 = v19;
    goto LABEL_120;
  }

  v440 = 0;
  v120 = objc_opt_class();
  v121 = _PKVerifyDictionaryKey(v56, @"secondaryBackgroundColor", 1, v120, &v440);
  if (v121 || v440 && (_PKValidateColorString(v440), (v121 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v121;
    v45 = v19;
    goto LABEL_119;
  }

  v439 = 0;
  v122 = objc_opt_class();
  v123 = _PKVerifyDictionaryKey(v56, @"labelColor", 1, v122, &v439);
  if (v123 || v439 && (_PKValidateColorString(v439), (v123 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v123;
    v45 = v19;
    goto LABEL_118;
  }

  v438 = 0;
  v124 = objc_opt_class();
  v125 = _PKVerifyDictionaryKey(v56, @"stripColor", 1, v124, &v438);
  if (v125 || v438 && (_PKValidateColorString(v438), (v125 = objc_claimAutoreleasedReturnValue()) != 0) || (v126 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"logoText", 1, v126, 0), (v125 = objc_claimAutoreleasedReturnValue()) != 0) || (v127 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"suppressHeaderDarkening", 1, v127, 0), (v125 = objc_claimAutoreleasedReturnValue()) != 0) || (v128 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"useAutomaticColors", 1, v128, 0), (v125 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v125;
    v45 = v19;
    goto LABEL_117;
  }

  v437 = 0;
  v129 = objc_opt_class();
  v130 = _PKVerifyDictionaryKey(v56, @"footerBackgroundColor", 1, v129, &v437);
  if (v130 || v437 && (_PKValidateColorString(v437), (v130 = objc_claimAutoreleasedReturnValue()) != 0) || (v131 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"eventLogoText", 1, v131, 0), (v130 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v130;
    v45 = v19;
    goto LABEL_129;
  }

  v436 = 0;
  v132 = objc_opt_class();
  v133 = _PKVerifyDictionaryKey(v56, @"barcode", 1, v132, &v436);
  if (v133 || v436 && (_PKValidateBarcodeDict(v436), (v133 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v133;
    v45 = v19;
    goto LABEL_402;
  }

  v435 = 0;
  v134 = objc_opt_class();
  v135 = _PKVerifyDictionaryKey(v56, @"semantics", 1, v134, &v435);
  if (!v135)
  {
    if (!v435 || (_PKValidateSemanticsDict(v435, 0), (v135 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v434 = 0;
      v136 = objc_opt_class();
      v137 = _PKVerifyDictionaryKey(v56, @"upcomingPassInformation", 1, v136, &v434);
      if (v137)
      {
        v19 = v137;
        v45 = v19;
LABEL_400:

        goto LABEL_401;
      }

      v377 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v430 = 0u;
      v431 = 0u;
      v432 = 0u;
      v433 = 0u;
      v138 = v434;
      v139 = [v138 countByEnumeratingWithState:&v430 objects:v471 count:16];
      if (v139)
      {
        v140 = v139;
        v141 = *v431;
        while (2)
        {
          for (n = 0; n != v140; ++n)
          {
            if (*v431 != v141)
            {
              objc_enumerationMutation(v138);
            }

            v143 = *(*(&v430 + 1) + 8 * n);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v144 = PKValidationErrorWithReason(@"item in %@ array needs to be a dictionary. Found object of class %@.", v156, v157, v158, v159, v160, v161, v162, @"upcomingPassInformation");
LABEL_168:
              v19 = v144;

              v45 = 0;
              goto LABEL_399;
            }

            v144 = _PKValidateUpcomingPassInformationDict(v143, v384, v377, v7);
            if (v144)
            {
              goto LABEL_168;
            }
          }

          v140 = [v138 countByEnumeratingWithState:&v430 objects:v471 count:16];
          if (v140)
          {
            continue;
          }

          break;
        }
      }

      v429 = 0;
      v145 = objc_opt_class();
      v146 = _PKVerifyDictionaryKey(v56, @"barcodes", 1, v145, &v429);
      v425 = 0u;
      v426 = 0u;
      v427 = 0u;
      v428 = 0u;
      v147 = v429;
      v148 = [v147 countByEnumeratingWithState:&v425 objects:v470 count:16];
      if (v148)
      {
        v149 = v148;
        v150 = 0;
        obja = *v426;
        while (2)
        {
          v151 = 0;
          v45 = v150;
          do
          {
            if (*v426 != obja)
            {
              objc_enumerationMutation(v147);
            }

            v152 = *(*(&v425 + 1) + 8 * v151);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v163 = objc_opt_class();
              v19 = PKValidationErrorWithReason(@"item in barcodes array needs to be a dictionary. Found object of class %@.", v164, v165, v166, v167, v168, v169, v170, v163);

              goto LABEL_398;
            }

            v150 = _PKValidateBarcodeDict(v152);

            if (v150)
            {
              v153 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_1AD337000, v153, OS_LOG_TYPE_ERROR, "The barcodes array did not validate correctly. This could be due to an unrecognized barcode format, or a more serious problem", buf, 2u);
              }
            }

            ++v151;
            v45 = v150;
          }

          while (v149 != v151);
          v149 = [v147 countByEnumeratingWithState:&v425 objects:v470 count:16];
          if (v149)
          {
            continue;
          }

          break;
        }
      }

      *buf = 0;
      v154 = objc_opt_class();
      v155 = _PKVerifyDictionaryKey(v56, @"hasStoredValue", 1, v154, buf);
      if (v155)
      {
        v19 = v155;
        v45 = v19;
LABEL_397:

LABEL_398:
LABEL_399:

        goto LABEL_400;
      }

      v423 = 0;
      v171 = objc_opt_class();
      v172 = _PKVerifyDictionaryKey(v56, @"nfc", 1, v171, &v423);
      if (v172 || (v173 = v423) != 0 && ([*buf BOOLValue], _PKValidateNFCDict(v173), (v172 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v19 = v172;
        v45 = v19;
LABEL_396:

        goto LABEL_397;
      }

      v422 = 0;
      v174 = objc_opt_class();
      v175 = _PKVerifyDictionaryKey(v56, @"paymentApplications", 1, v174, &v422);
      if (v175)
      {
        v19 = v175;
        v45 = v19;
LABEL_395:

        goto LABEL_396;
      }

      v420 = 0u;
      v421 = 0u;
      v418 = 0u;
      v419 = 0u;
      v176 = v422;
      v177 = [v176 countByEnumeratingWithState:&v418 objects:v469 count:16];
      if (v177)
      {
        v178 = v177;
        v375 = *v419;
        while (2)
        {
          for (ii = 0; ii != v178; ++ii)
          {
            if (*v419 != v375)
            {
              objc_enumerationMutation(v176);
            }

            v180 = *(*(&v418 + 1) + 8 * ii);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v19 = PKValidationErrorWithReason(@"item in %@ array needs to be a dictionary. Found object of class %@.", v185, v186, v187, v188, v189, v190, v191, @"paymentApplications");

              v45 = 0;
              goto LABEL_395;
            }

            v181 = PKValidatePaymentApplicationDict(v180);
            if (v181)
            {
              v372 = v475[0];
              v182 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@"];
              _PKShoutPassValidationError(v181, v182);
            }
          }

          v178 = [v176 countByEnumeratingWithState:&v418 objects:v469 count:16];
          if (v178)
          {
            continue;
          }

          break;
        }
      }

      v417 = 0;
      v183 = objc_opt_class();
      v184 = _PKVerifyDictionaryKey(v56, @"associatedPassTypeIdentifiers", 1, v183, &v417);
      if (v184)
      {
        v19 = v184;
        v45 = v19;
LABEL_394:

        goto LABEL_395;
      }

      v415 = 0u;
      v416 = 0u;
      v413 = 0u;
      v414 = 0u;
      v192 = v417;
      v193 = [v192 countByEnumeratingWithState:&v413 objects:v468 count:16];
      if (v193)
      {
        v194 = v193;
        v195 = *v414;
        while (2)
        {
          for (jj = 0; jj != v194; ++jj)
          {
            if (*v414 != v195)
            {
              objc_enumerationMutation(v192);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v19 = PKValidationErrorWithReason(@"Pass Type Identifier in %@ array needs to be a string.  Found object of class %@.", v199, v200, v201, v202, v203, v204, v205, @"associatedPassTypeIdentifiers");

              v45 = 0;
              goto LABEL_394;
            }
          }

          v194 = [v192 countByEnumeratingWithState:&v413 objects:v468 count:16];
          if (v194)
          {
            continue;
          }

          break;
        }
      }

      v412 = 0;
      v197 = objc_opt_class();
      v198 = _PKVerifyDictionaryKey(v56, @"associatedStoreIdentifiers", 1, v197, &v412);
      if (v198)
      {
        v19 = v198;
        v45 = v19;
LABEL_393:

        goto LABEL_394;
      }

      v410 = 0u;
      v411 = 0u;
      v408 = 0u;
      v409 = 0u;
      v206 = v412;
      v207 = [v206 countByEnumeratingWithState:&v408 objects:v467 count:16];
      if (v207)
      {
        v208 = v207;
        v209 = *v409;
        while (2)
        {
          for (kk = 0; kk != v208; ++kk)
          {
            if (*v409 != v209)
            {
              objc_enumerationMutation(v206);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v19 = PKValidationErrorWithReason(@"store ID in %@ array needs to be a number. Found object of class %@.", v213, v214, v215, v216, v217, v218, v219, @"associatedStoreIdentifiers");

              v45 = 0;
              goto LABEL_393;
            }
          }

          v208 = [v206 countByEnumeratingWithState:&v408 objects:v467 count:16];
          if (v208)
          {
            continue;
          }

          break;
        }
      }

      v407 = 0;
      v211 = objc_opt_class();
      v212 = _PKVerifyDictionaryKey(v56, @"auxiliaryStoreIdentifiers", 1, v211, &v407);
      if (v212)
      {
        v19 = v212;
        v45 = v19;
LABEL_392:

        goto LABEL_393;
      }

      v405 = 0u;
      v406 = 0u;
      v403 = 0u;
      v404 = 0u;
      v220 = v407;
      v221 = [v220 countByEnumeratingWithState:&v403 objects:v466 count:16];
      if (v221)
      {
        v222 = v221;
        v223 = *v404;
        while (2)
        {
          for (mm = 0; mm != v222; ++mm)
          {
            if (*v404 != v223)
            {
              objc_enumerationMutation(v220);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v19 = PKValidationErrorWithReason(@"store ID in %@ array needs to be a number. Found object of class %@.", v227, v228, v229, v230, v231, v232, v233, @"auxiliaryStoreIdentifiers");

              v45 = 0;
              goto LABEL_392;
            }
          }

          v222 = [v220 countByEnumeratingWithState:&v403 objects:v466 count:16];
          if (v222)
          {
            continue;
          }

          break;
        }
      }

      v402 = 0;
      v225 = objc_opt_class();
      v226 = _PKVerifyDictionaryKey(v56, @"systemAppBundleIdentifiers", 1, v225, &v402);
      if (v226)
      {
        v19 = v226;
        v45 = v19;
LABEL_391:

        goto LABEL_392;
      }

      v400 = 0u;
      v401 = 0u;
      v398 = 0u;
      v399 = 0u;
      v234 = v402;
      v235 = [v234 countByEnumeratingWithState:&v398 objects:v465 count:16];
      if (v235)
      {
        v236 = v235;
        v237 = *v399;
        while (2)
        {
          for (nn = 0; nn != v236; ++nn)
          {
            if (*v399 != v237)
            {
              objc_enumerationMutation(v234);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v19 = PKValidationErrorWithReason(@"system application bundle identifier in %@ array needs to be a string. Found object of class %@.", v254, v255, v256, v257, v258, v259, v260, @"systemAppBundleIdentifiers");

              v45 = 0;
              goto LABEL_391;
            }
          }

          v236 = [v234 countByEnumeratingWithState:&v398 objects:v465 count:16];
          if (v236)
          {
            continue;
          }

          break;
        }
      }

      v397 = 0;
      v239 = _PKValidateURLStringKey(v56, @"appLaunchURL", 1, 0, &v397);
      if (v239)
      {
        goto LABEL_265;
      }

      if (v397 && ![v412 count] && !objc_msgSend(v402, "count"))
      {
        v19 = PKValidationErrorWithReason(@"%@ key requires the presence of at least one item in the %@ or %@ array.", v240, v241, v242, v243, v244, v245, v246, @"appLaunchURL");
        v45 = 0;
        goto LABEL_390;
      }

      v247 = objc_opt_class();
      v239 = _PKVerifyDictionaryKey(v56, @"issuerCountryCode", 1, v247, 0);
      if (v239
        || (v248 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"issuerAdministrativeAreaCode", 1, v248, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (v249 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"identityAccountKeyIdentifier", 1, v249, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"sellURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"transferURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"upgradeURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"managementURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"bagPolicyURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"orderFoodURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"transitInformationURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"parkingInformationURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"directionsInformationURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"merchandiseURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"accessibilityURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"purchaseParkingURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"addOnURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"purchaseWifiURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"changeSeatURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"entertainmentURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"purchaseAdditionalBaggageURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"purchaseLoungeAccessURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"reportLostBagURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"trackBagsURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"requestWheelchairURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"registerServiceAnimalURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (v250 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"contactVenuePhoneNumber", 1, v250, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (v251 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"contactVenueEmail", 1, v251, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"contactVenueWebsite", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (v252 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"transitProviderPhoneNumber", 1, v252, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (v253 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"transitProviderEmail", 1, v253, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0)
        || (_PKValidateURLStringKey(v56, @"transitProviderWebsiteURL", 1, 0, 0), (v239 = objc_claimAutoreleasedReturnValue()) != 0))
      {
LABEL_265:
        v19 = v239;
        v45 = v19;
LABEL_390:

        goto LABEL_391;
      }

      v396 = 0;
      v261 = objc_opt_class();
      v262 = _PKVerifyDictionaryKey(v56, @"storeCard", 1, v261, &v396);
      if (v262)
      {
        goto LABEL_321;
      }

      v263 = v396;
      if (v396)
      {
LABEL_320:
        v262 = _PKValidateStyleFields(v263, v386, v7);
        if (v262)
        {
          goto LABEL_321;
        }

        v395 = 0;
        v320 = objc_opt_class();
        v321 = _PKVerifyDictionaryKey(v56, @"backFields", 1, v320, &v395);
        if (v321)
        {
          goto LABEL_342;
        }

        if (v395)
        {
          v391 = 0u;
          v392 = 0u;
          v389 = 0u;
          v390 = 0u;
          objc = v395;
          v376 = [objc countByEnumeratingWithState:&v389 objects:v464 count:16];
          if (v376)
          {
            v322 = 0;
            v374 = *v390;
            v373 = *MEMORY[0x1E696AA08];
            while (2)
            {
              v323 = 0;
              v324 = v322;
              do
              {
                if (*v390 != v374)
                {
                  objc_enumerationMutation(objc);
                }

                v322 = _PKValidateFieldDict(*(*(&v389 + 1) + 8 * v323), v386, @"backFields", 0);

                if (v322)
                {
                  if (!_PKUnderlyingErrorIsWarning(v322))
                  {
                    v19 = v322;

                    v45 = v19;
                    goto LABEL_388;
                  }

                  v325 = [v322 userInfo];
                  v326 = [v325 objectForKey:v373];
                  v327 = v326;
                  if (v326)
                  {
                    v328 = v326;
                  }

                  else
                  {
                    v328 = v322;
                  }

                  v329 = v328;

                  [v7 addObject:v329];
                }

                ++v323;
                v324 = v322;
              }

              while (v376 != v323);
              v376 = [objc countByEnumeratingWithState:&v389 objects:v464 count:16];
              if (v376)
              {
                continue;
              }

              break;
            }
          }
        }

        v330 = objc_opt_class();
        v321 = _PKVerifyDictionaryKey(v56, @"sharingProhibited", 1, v330, 0);
        if (v321)
        {
LABEL_342:
          v19 = v321;
          v45 = v19;
LABEL_388:

          goto LABEL_389;
        }

        if ([v458 integerValue] >= 2)
        {
          v394 = 0;
          v331 = objc_opt_class();
          v332 = _PKVerifyDictionaryKey(v56, @"sharing", 1, v331, &v394);
          if (v332)
          {
            v19 = v332;
            v45 = v19;
LABEL_360:

            goto LABEL_388;
          }

          if (v394)
          {
            if (([v475[0] hasPrefix:@"pass.com.apple."] & 1) == 0)
            {
              v19 = PKValidationErrorWithReason(@"Pass is not permitted to contain the %@ key.", v333, v334, v335, v336, v337, v338, v339, @"sharing");
              v45 = 0;
              goto LABEL_360;
            }

            v393 = 0;
            v340 = v394;
            v341 = objc_opt_class();
            v342 = _PKVerifyDictionaryKey(v340, @"method", 0, v341, &v393);
            if (v342)
            {
              goto LABEL_358;
            }

            v343 = v393;
            v348 = [MEMORY[0x1E696AD98] numberWithInt:0];
            if (v348)
            {
              v349 = 0;
            }

            else
            {
              v349 = _PKEnumValueValidateString(v343, 0, @"PKPassSharingMethod", @"PKPassSharingMethodDisabled, PKPassSharingMethodPass, PKPassSharingMethodURL", v344, v345, v346, v347, 0xFFFFFFFF);
            }

            if (v349)
            {
              goto LABEL_359;
            }

            v355 = v393;
            v356 = _PKEnumValueToString(1, @"PKPassSharingMethod", @"PKPassSharingMethodDisabled, PKPassSharingMethodPass, PKPassSharingMethodURL", v350, v351, v352, v353, v354, -1);
            LODWORD(v355) = [v355 isEqualToString:v356];

            if (v355)
            {
              v342 = _PKValidateURLStringKey(v394, @"url", 0, 1, 0);
              if (v342 || (v357 = v394, v358 = objc_opt_class(), _PKVerifyDictionaryKey(v357, @"text", 1, v358, 0), (v342 = objc_claimAutoreleasedReturnValue()) != 0))
              {
LABEL_358:
                v349 = v342;
LABEL_359:
                v19 = v349;

                v45 = v19;
                goto LABEL_360;
              }
            }
          }
        }

        v394 = 0;
        v359 = objc_opt_class();
        v360 = _PKVerifyDictionaryKey(v56, @"auxiliaryCapabilities", 1, v359, &v394);
        if (v360)
        {
          goto LABEL_367;
        }

        v361 = v394;
        if (v394)
        {
          goto LABEL_366;
        }

        v362 = objc_opt_class();
        v360 = _PKVerifyDictionaryKey(v56, @"auxiliaryRegistrationRequirements", 1, v362, &v394);
        if (v360)
        {
LABEL_367:
          v45 = v360;
LABEL_387:

          v19 = v45;
          goto LABEL_388;
        }

        v361 = v394;
        if (v394)
        {
LABEL_366:
          v360 = _PKValidateAuxiliaryRegistrationRequirementsDict(v361);
          if (v360)
          {
            goto LABEL_367;
          }
        }

        v393 = 0;
        v363 = objc_opt_class();
        v364 = _PKVerifyDictionaryKey(v56, @"barcodeSettings", 1, v363, &v393);
        if (v364 || v393 && (_PKValidateBarcodeSettingsDict(v393), (v364 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v45 = v364;
        }

        else
        {
          v388 = 0;
          v365 = objc_opt_class();
          v366 = _PKVerifyDictionaryKey(v56, @"borderStyle", 1, v365, &v388);
          if (v366 || (v367 = objc_opt_class(), _PKVerifyDictionaryKey(v56, @"cardholderInfoSectionTitle", 1, v367, 0), (v366 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateDynamicLayerConfiguration(v56), (v366 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidatePrivateTopLevelPassStructure(v5, v386, v7), (v366 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v45 = v366;
          }

          else
          {
            v387 = 0;
            v368 = objc_opt_class();
            v369 = _PKVerifyDictionaryKey(v56, @"muteReadyForUseNotification", 1, v368, &v387);
            v45 = v369;
            if (v369)
            {
              v370 = v369;
            }

            else if (locationa)
            {
              if ([v7 count])
              {
                v371 = v7;
              }

              else
              {
                v371 = 0;
              }

              objc_storeStrong(locationa, v371);
            }
          }
        }

        goto LABEL_387;
      }

      v264 = objc_opt_class();
      v262 = _PKVerifyDictionaryKey(v56, @"eventTicket", 1, v264, &v396);
      if (!v262)
      {
        v263 = v396;
        if (v396)
        {
          goto LABEL_320;
        }

        v265 = objc_opt_class();
        v262 = _PKVerifyDictionaryKey(v56, @"coupon", 1, v265, &v396);
        if (!v262)
        {
          v263 = v396;
          if (v396)
          {
            goto LABEL_320;
          }

          v266 = objc_opt_class();
          v262 = _PKVerifyDictionaryKey(v56, @"boardingPass", 1, v266, &v396);
          if (!v262)
          {
            v267 = v396;
            if (v396)
            {
              v395 = 0;
              v268 = objc_opt_class();
              v269 = _PKVerifyDictionaryKey(v267, @"transitType", 0, v268, &v395);
              if (v269)
              {
                goto LABEL_281;
              }

              v270 = v395;
              v275 = [MEMORY[0x1E696AD98] numberWithInt:0];
              if (v275)
              {
                v269 = 0;
              }

              else
              {
                v269 = _PKEnumValueValidateString(v270, 0, @"PKTransitType", @"PKTransitTypeGeneric, WLTransitTypeGeneric, PKTransitTypeAir, WLTransitTypeAir, PKTransitTypeTrain, WLTransitTypeTrain, PKTransitTypeBus, WLTransitTypeBus, PKTransitTypeBoat, WLTransitTypeBoat", v271, v272, v273, v274, 0);
              }

              if (v269)
              {
LABEL_281:
                v276 = v269;
LABEL_312:
                v19 = v276;
LABEL_318:

                v45 = v19;
LABEL_389:

                goto LABEL_390;
              }

              v263 = v396;
              if (v396)
              {
                goto LABEL_320;
              }
            }

            v277 = objc_opt_class();
            v278 = _PKVerifyDictionaryKey(v56, @"healthPass", 1, v277, &v396);
            if (v396 && ([v475[0] hasPrefix:@"healthpass"] & 1) == 0)
            {
              v286 = PKValidationErrorWithReason(@"Invalid passTypeIdentifier for pass style 'healthPass'", v279, v280, v281, v282, v283, v284, v285, v372);

              v278 = v286;
            }

            if (v278)
            {
              goto LABEL_303;
            }

            v263 = v396;
            if (v396)
            {
              goto LABEL_320;
            }

            v287 = objc_opt_class();
            v262 = _PKVerifyDictionaryKey(v56, @"generic", 1, v287, &v396);
            if (!v262)
            {
              v263 = v396;
              if (v396)
              {
                goto LABEL_320;
              }

              v288 = objc_opt_class();
              v278 = _PKVerifyDictionaryKey(v56, @"paymentCard", 1, v288, &v396);
              if ((PKIgnoreSignatures() & 1) == 0 && v396 && ([v475[0] hasPrefix:@"paymentpass"] & 1) == 0)
              {
                v296 = PKValidationErrorWithReason(@"Invalid passTypeIdentifier for pass style 'paymentCard'", v289, v290, v291, v292, v293, v294, v295, v372);

                v278 = v296;
              }

              if (v278)
              {
                goto LABEL_303;
              }

              objb = v396;
              v297 = objc_opt_class();
              if (v396)
              {
                v298 = 0;
              }

              else
              {
                v298 = &v396;
              }

              v278 = _PKVerifyDictionaryKey(v56, @"accessCard", 1, v297, v298);
              if ((PKIgnoreSignatures() & 1) == 0 && v396 && ([v475[0] hasPrefix:@"paymentpass"] & 1) == 0)
              {
                v306 = PKValidationErrorWithReason(@"Invalid passTypeIdentifier for pass style 'accessCard'", v299, v300, v301, v302, v303, v304, v305, v372);

                v278 = v306;
              }

              if (v278)
              {
LABEL_303:
                v307 = v278;
LABEL_322:
                v19 = v307;
                v45 = v307;
                goto LABEL_389;
              }

              v308 = v396;
              if (v396 && v463)
              {
                v262 = PKValidationErrorWithReason(@"paymentCard/accessCard passes cannot contain a webserviceURL", v299, v300, v301, v302, v303, v304, v305, v372);
                if (v262)
                {
                  goto LABEL_321;
                }

                v308 = v396;
              }

              if (!v308)
              {
                goto LABEL_323;
              }

              v309 = [v56 objectForKey:@"hasAssociatedPeerPaymentAccount"];
              v310 = [v309 BOOLValue];

              v311 = [v56 objectForKey:@"isShellPass"];
              v312 = [v311 BOOLValue];

              v313 = objc_opt_class();
              v262 = _PKVerifyDictionaryKey(v56, @"hasAssociatedPeerPaymentAccount", 1, v313, 0);
              if (!v262)
              {
                v395 = 0;
                v314 = objc_opt_class();
                v315 = _PKVerifyDictionaryKey(v56, @"primaryAccountIdentifier", (v310 | v312) & 1 | (objb == 0), v314, &v395);
                if (v315)
                {
                  v276 = v315;
                  goto LABEL_312;
                }

                v394 = 0;
                v316 = objc_opt_class();
                v317 = _PKVerifyDictionaryKey(v56, @"primaryAccountSuffix", 1, v316, &v394);
                if (v317)
                {
                  v19 = v317;
LABEL_317:

                  goto LABEL_318;
                }

                v393 = 0;
                v318 = objc_opt_class();
                v319 = _PKVerifyDictionaryKey(v56, @"originalProvisioningDate", 1, v318, &v393);
                if (v319)
                {
                  v19 = v319;

                  goto LABEL_317;
                }

                v263 = v396;
                if (v396)
                {
                  goto LABEL_320;
                }

LABEL_323:
                v19 = PKValidationErrorWithReason(@"Pass dictionary must have an entry for one of {eventTicket, coupon, storeCard, boardingPass, generic, paymentCard, accessCard}.", v299, v300, v301, v302, v303, v304, v305, v372);
                v45 = 0;
                goto LABEL_389;
              }
            }
          }
        }
      }

LABEL_321:
      v307 = v262;
      goto LABEL_322;
    }
  }

  v19 = v135;
  v45 = v19;
LABEL_401:

LABEL_402:
LABEL_129:

LABEL_117:
LABEL_118:

LABEL_119:
LABEL_120:

LABEL_121:
LABEL_99:

LABEL_100:
LABEL_47:

LABEL_48:
  v6 = v55;
  v16 = v384;
  v8 = v386;
LABEL_38:

LABEL_26:
LABEL_27:

  return v19;
}

void _PKShoutPassValidationError(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1;
  v5 = [v4 code];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKey:*MEMORY[0x1E696AA08]];
  v8 = [v7 localizedDescription];

  v9 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = @"Unknown error";
    if (v5 == 2)
    {
      v10 = @"Unsupported version error";
    }

    v11 = 138543874;
    if (v5 == 1)
    {
      v10 = @"Invalid data error";
    }

    v12 = v10;
    v13 = 2114;
    v14 = v3;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "%{public}@ reading pass %{public}@. %{public}@", &v11, 0x20u);
  }
}

BOOL _CertValidityStartDateIsPastCutoff(void *a1)
{
  v1 = qword_1ED6D18F8;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&qword_1ED6D18F8, &__block_literal_global_52);
  }

  [v2 timeIntervalSinceDate:_MergedGlobals_204];
  v4 = v3;

  return v4 >= 0.0;
}

const __CFArray *_PKCertificateCopyValuesForOID()
{
  v0 = SecCertificateCopyProperties();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Count = CFArrayGetCount(v0);
  if (Count < 1)
  {
    goto LABEL_7;
  }

  v3 = Count;
  v4 = 0;
  v5 = *MEMORY[0x1E697B2D8];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
    Value = CFDictionaryGetValue(ValueAtIndex, v5);
    if (Value)
    {
      if (CFEqual(Value, @"1.2.840.113635.100.6.1.26"))
      {
        break;
      }
    }

    if (v3 == ++v4)
    {
      goto LABEL_7;
    }
  }

  v10 = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B2E8]);
  Copy = v10;
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = CFGetTypeID(v10);
  if (v11 == CFArrayGetTypeID())
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], Copy);
  }

  else
  {
LABEL_7:
    Copy = 0;
  }

LABEL_8:
  CFRelease(v1);
  return Copy;
}

id _PKValidateURLStringKey(void *a1, void *a2, int a3, int a4, id *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v36 = 0;
  v10 = a1;
  v11 = objc_opt_class();
  v12 = _PKVerifyDictionaryKey(v10, v9, a3, v11, &v36);

  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v36 == 0;
  }

  if (v13)
  {
LABEL_12:
    v24 = v12;
    goto LABEL_15;
  }

  v21 = [MEMORY[0x1E695DFF8] URLWithString:?];
  if (v21)
  {
    if (!a4 || PKAllowHTTP() || ([v21 scheme], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqual:", @"https"), v22, (v23 & 1) != 0))
    {
      if (a5)
      {
        objc_storeStrong(a5, v21);
      }

      goto LABEL_12;
    }

    v26 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v34 = [v21 scheme];
      *buf = 138543874;
      v38 = v9;
      v39 = 2114;
      v40 = v21;
      v41 = 2114;
      v42 = v34;
      _os_log_error_impl(&dword_1AD337000, v26, OS_LOG_TYPE_ERROR, "scheme of %{public}@ '%{public}@' needs to be an https rather than %{public}@.", buf, 0x20u);
    }

    v35 = [v21 scheme];
    v24 = PKValidationErrorWithReason(@"scheme of %@ '%@' needs to be an https rather than %@.", v27, v28, v29, v30, v31, v32, v33, v9);
  }

  else
  {
    v24 = PKValidationErrorWithReason(@"%@ '%@' is not a valid URL.", v14, v15, v16, v17, v18, v19, v20, v9);
  }

LABEL_15:

  return v24;
}

id _PKValidateVersion(void *a1, id *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  obj = 0;
  v3 = a1;
  v4 = objc_opt_class();
  v5 = _PKVerifyDictionaryKey(v3, @"formatVersion", 0, v4, &obj);

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    if (a2)
    {
      objc_storeStrong(a2, obj);
    }

    if ([&unk_1F23B3C98 containsObject:obj])
    {
      v6 = 0;
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = [&unk_1F23B3C98 componentsJoinedByString:{@", "}];
      v9 = [v7 stringWithFormat:@"This version of the operating system only supports passes of versions [%@], and this pass has version %@.", v8, obj];

      v10 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A578];
      v11 = v22;
      v23[0] = v9;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v13 = [v10 errorWithDomain:@"PKPassKitErrorDomain" code:2 userInfo:v12];

      v14 = MEMORY[0x1E696ABC0];
      v20[0] = v11;
      v15 = PKLocalizedString(&cfstr_PassVersionErr.isa, 0);
      v20[1] = *MEMORY[0x1E696AA08];
      v21[0] = v15;
      v21[1] = v13;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
      v17 = [v14 errorWithDomain:@"PKPassKitErrorDomain" code:2 userInfo:v16];

      v6 = v17;
    }
  }

  return v6;
}

id _PKValidateColorString(void *a1)
{
  v1 = a1;
  v2 = [PKColor colorFromString:v1];

  if (v2)
  {
    v10 = 0;
  }

  else
  {
    v10 = PKValidationErrorWithReason(@"Unable to parse color string '%@'.", v3, v4, v5, v6, v7, v8, v9, v1);
  }

  return v10;
}

id _PKValidateBarcodeDict(void *a1)
{
  v1 = a1;
  v35 = 0;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"message", 0, v2, &v35);
  if (v3)
  {
    v4 = v3;
    v5 = v4;
    goto LABEL_8;
  }

  v34 = 0;
  v6 = objc_opt_class();
  v7 = _PKVerifyDictionaryKey(v1, @"format", 0, v6, &v34);
  if (!v7)
  {
    v8 = objc_opt_class();
    v7 = _PKVerifyDictionaryKey(v1, @"altText", 1, v8, 0);
    if (!v7)
    {
      v9 = objc_opt_class();
      v7 = _PKVerifyDictionaryKey(v1, @"header", 1, v9, 0);
      if (!v7)
      {
        theString = 0;
        v11 = objc_opt_class();
        v12 = _PKVerifyDictionaryKey(v1, @"messageEncoding", 0, v11, &theString);
        v4 = v12;
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v14 = CFStringConvertIANACharSetNameToEncoding(theString);
          if (v14 == -1)
          {
            PKValidationErrorWithReason(@"message encoding %@ is not an IANA character set name.", v15, v16, v17, v18, v19, v20, v21, theString);
          }

          else
          {
            v22 = v14;
            v23 = [(__CFString *)v35 length];
            v24 = v35;
            v37.length = [(__CFString *)v35 length];
            v37.location = 0;
            Bytes = CFStringGetBytes(v24, v37, v22, 0, 0, 0, 0, 0);
            v5 = 0;
            if (v23 == Bytes)
            {
LABEL_19:

              goto LABEL_7;
            }

            PKValidationErrorWithReason(@"barcode message '%@' isn't encodable with encoding '%@'.", v26, v27, v28, v29, v30, v31, v32, v35);
          }
          v13 = ;
        }

        v5 = v13;
        goto LABEL_19;
      }
    }
  }

  v4 = v7;
  v5 = v4;
LABEL_7:

LABEL_8:

  return v5;
}

id _PKValidateSemanticsDict(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__18;
  v15 = __Block_byref_object_dispose__18;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___PKValidateSemanticsDict_block_invoke;
  v8[3] = &unk_1E79CDB98;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void sub_1AD68CB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_PKValidateUpcomingPassInformationDict(void *a1, void *a2, void *a3, void *a4)
{
  v142 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_opt_class();
  v12 = _PKVerifyDictionaryKey(v7, @"name", 0, v11, 0);
  if (v12)
  {
    v13 = v12;
    v14 = v13;
    goto LABEL_21;
  }

  v138 = 0;
  v15 = objc_opt_class();
  v16 = _PKVerifyDictionaryKey(v7, @"identifier", 0, v15, &v138);
  if (!v16)
  {
    if ([v9 containsObject:v138])
    {
      v14 = PKValidationErrorWithReason(@"More than one upcoming pass information entry has identifier: '%@'. Entry identifiers must be unique.", v17, v138, v18, v19, v20, v21, v22, v138);
      v13 = 0;
      goto LABEL_20;
    }

    [v9 addObject:v138];
    v23 = objc_opt_class();
    v16 = _PKVerifyDictionaryKey(v7, @"type", 0, v23, 0);
    if (!v16)
    {
      v24 = objc_opt_class();
      v25 = _PKVerifyDictionaryKey(v7, @"isActive", 1, v24, 0);
      v137 = 0;
      v26 = objc_opt_class();
      v27 = _PKVerifyDictionaryKey(v7, @"dateInformation", 1, v26, &v137);

      if (v27)
      {
        v28 = v27;
LABEL_18:
        v13 = v28;
        v14 = v28;
LABEL_19:

        goto LABEL_20;
      }

      if (v137)
      {
        v29 = _PKVerifyDateDictionaryKey(v137, @"date", 1, 0);
        if (v29 || (_PKVerifyTimeZoneDictionaryKey(v137, @"timeZone"), (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (v30 = v137, v31 = objc_opt_class(), _PKVerifyDictionaryKey(v30, @"ignoreTimeComponents", 1, v31, 0), (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (v32 = v137, v33 = objc_opt_class(), _PKVerifyDictionaryKey(v32, @"isUnannounced", 1, v33, 0), (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (v34 = v137, v35 = objc_opt_class(), _PKVerifyDictionaryKey(v34, @"isUndetermined", 1, v35, 0), (v29 = objc_claimAutoreleasedReturnValue()) != 0) || (v36 = v137, v37 = objc_opt_class(), _PKVerifyDictionaryKey(v36, @"isAllDay", 1, v37, 0), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v28 = v29;
          goto LABEL_18;
        }
      }

      v136 = 0;
      v39 = objc_opt_class();
      v40 = _PKVerifyDictionaryKey(v7, @"images", 1, v39, &v136);
      if (v40 || v136 && (_PKValidateUpcomingPassInformationImagesDict(v136, v8), (v40 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v40;
        v14 = v13;
LABEL_43:

        goto LABEL_19;
      }

      v135 = 0;
      v41 = objc_opt_class();
      v42 = _PKVerifyDictionaryKey(v7, @"auxiliaryStoreIdentifiers", 1, v41, &v135);
      if (v42)
      {
        v13 = v42;
        v14 = v13;
LABEL_42:

        goto LABEL_43;
      }

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      obj = v135;
      v43 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v132;
        while (2)
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v132 != v45)
            {
              objc_enumerationMutation(obj);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v14 = PKValidationErrorWithReason(@"store ID in %@ array needs to be a number. Found object of class %@.", v49, v50, v51, v52, v53, v54, v55, @"auxiliaryStoreIdentifiers");

              v13 = 0;
              goto LABEL_42;
            }
          }

          v44 = [obj countByEnumeratingWithState:&v131 objects:v141 count:16];
          if (v44)
          {
            continue;
          }

          break;
        }
      }

      v130 = 0;
      v47 = objc_opt_class();
      v48 = _PKVerifyDictionaryKey(v7, @"URLs", 1, v47, &v130);
      if (v48)
      {
        goto LABEL_39;
      }

      if (!v130)
      {
        v13 = 0;
        goto LABEL_60;
      }

      v48 = _PKValidateURLStringKey(v130, @"sellURL", 1, 0, 0);
      if (v48 || (_PKValidateURLStringKey(v130, @"transferURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"bagPolicyURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"orderFoodURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"transitInformationURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"parkingInformationURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"directionsInformationURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"merchandiseURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"accessibilityURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"purchaseParkingURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"addOnURL", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0) || (_PKValidateURLStringKey(v130, @"contactVenueWebsite", 1, 0, 0), (v48 = objc_claimAutoreleasedReturnValue()) != 0))
      {
LABEL_39:
        v13 = v48;
        v14 = v13;
LABEL_40:

        goto LABEL_42;
      }

      v129 = 0;
      v56 = v130;
      v57 = objc_opt_class();
      v58 = _PKVerifyDictionaryKey(v56, @"contactVenuePhoneNumber", 1, v57, &v129);
      if (v58)
      {
LABEL_58:
        v13 = v58;

        v14 = v13;
        goto LABEL_40;
      }

      v83 = v129;
      v84 = v83;
      if (!v83)
      {
LABEL_103:
        v128 = 0;
        v94 = v130;
        v14 = @"contactVenueEmail";
        v95 = objc_opt_class();
        v96 = _PKVerifyDictionaryKey(v94, @"contactVenueEmail", 1, v95, &v128);
        if (v96)
        {
LABEL_104:
          v14 = v96;
          v97 = 0;
          v98 = v14;
          goto LABEL_114;
        }

        v99 = v128;
        v98 = v99;
        if (v99)
        {
          v100 = [(__CFString *)v99 length];

          if (v100 && ([v128 hasPrefix:@"mailto:"] & 1) == 0)
          {
            v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v128];
            v102 = v128;
            v128 = v101;
          }

          if (v128)
          {
            v103 = [MEMORY[0x1E695DFF8] URLWithString:?];
            if (v103)
            {
            }

            else
            {
              v96 = PKValidationErrorWithReason(@"%@ '%@' is not a valid URL.", v104, v105, v106, v107, v108, v109, v110, @"contactVenueEmail");
              if (v96)
              {
                goto LABEL_104;
              }
            }
          }

          v98 = 0;
        }

        v97 = 1;
LABEL_114:

        v13 = v98;
        if (!v97)
        {
          goto LABEL_40;
        }

LABEL_60:
        v59 = v13;
        obja = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v111 = [&unk_1F23B3CB0 countByEnumeratingWithState:&v124 objects:v140 count:16];
        if (v111)
        {
          v112 = *v125;
          v114 = *MEMORY[0x1E696AA08];

          while (2)
          {
            for (j = 0; j != v111; ++j)
            {
              if (*v125 != v112)
              {
                objc_enumerationMutation(&unk_1F23B3CB0);
              }

              v60 = *(*(&v124 + 1) + 8 * j);
              v129 = 0;
              v61 = objc_opt_class();
              v117 = v60;
              v62 = _PKVerifyDictionaryKey(v7, v60, 1, v61, &v129);
              if (v62)
              {
                v14 = v62;

                v13 = v14;
                goto LABEL_92;
              }

              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              v115 = v129;
              v63 = [v115 countByEnumeratingWithState:&v120 objects:v139 count:16];
              if (v63)
              {
                v64 = v63;
                v116 = *v121;
                while (2)
                {
                  for (k = 0; k != v64; ++k)
                  {
                    if (*v121 != v116)
                    {
                      objc_enumerationMutation(v115);
                    }

                    v66 = *(*(&v120 + 1) + 8 * k);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      objc_opt_class();
                      v14 = PKValidationErrorWithReason(@"Entry in %@ array needs to be a dictionary. Found object of class %@.", v75, v76, v77, v78, v79, v80, v81, v117);
LABEL_86:

                      v13 = 0;
                      goto LABEL_92;
                    }

                    v67 = _PKValidateFieldDict(v66, obja, v117, 1);
                    v14 = v67;
                    if (v67)
                    {
                      if (!_PKUnderlyingErrorIsWarning(v67))
                      {
                        goto LABEL_86;
                      }

                      v68 = [(__CFString *)v14 userInfo];
                      v69 = [v68 objectForKey:v114];
                      v70 = v69;
                      if (v69)
                      {
                        v71 = v69;
                      }

                      else
                      {
                        v71 = v14;
                      }

                      v72 = v71;

                      [v10 addObject:v72];
                    }
                  }

                  v64 = [v115 countByEnumeratingWithState:&v120 objects:v139 count:16];
                  if (v64)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            v111 = [&unk_1F23B3CB0 countByEnumeratingWithState:&v124 objects:v140 count:16];
            if (v111)
            {
              continue;
            }

            break;
          }

          v59 = 0;
        }

        v129 = 0;
        v73 = objc_opt_class();
        v74 = _PKVerifyDictionaryKey(v7, @"semantics", 1, v73, &v129);

        if (!v74)
        {
          if (!v129 || (_PKValidateSemanticsDict(v129, 0), (v82 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v13 = 0;
LABEL_91:

            v14 = v13;
LABEL_92:

            goto LABEL_40;
          }

          v74 = v82;
        }

        v13 = v74;
        goto LABEL_91;
      }

      v85 = [v83 length];

      if (v85 && ([v129 hasPrefix:@"tel:"] & 1) == 0)
      {
        v86 = PKTelephoneURLFromPhoneNumber(v129);
        if (v86)
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (!v129)
        {
LABEL_102:
          v84 = 0;
          goto LABEL_103;
        }

        v86 = [MEMORY[0x1E695DFF8] URLWithString:?];
        if (v86)
        {
LABEL_99:
          v84 = v86;
          goto LABEL_103;
        }
      }

      v58 = PKValidationErrorWithReason(@"%@ '%@' is not a valid URL.", v87, v88, v89, v90, v91, v92, v93, @"contactVenuePhoneNumber");
      if (v58)
      {
        goto LABEL_58;
      }

      goto LABEL_102;
    }
  }

  v13 = v16;
  v14 = v13;
LABEL_20:

LABEL_21:

  return v14;
}

id _PKValidateNFCDict(void *a1)
{
  v1 = a1;
  v24 = 0;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"message", 0, v2, &v24);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v23 = 0;
    v5 = objc_opt_class();
    v6 = _PKVerifyDictionaryKey(v1, @"requiresAuthentication", 1, v5, &v23);
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v22 = 0;
      v7 = objc_opt_class();
      v8 = _PKVerifyDictionaryKey(v1, @"encryptionPublicKey", 1, v7, &v22);
      if (v22)
      {
        v9 = objc_alloc(MEMORY[0x1E695DEF0]);
        v10 = [v9 initWithBase64EncodedString:v22 options:0];
        v11 = PKCreatePublicKeyFromDER(v10);
        if (v11)
        {
          CFRelease(v11);
        }

        else
        {
          v20 = PKValidationErrorWithReason(@"nfc encryptionPublicKey '%@' isn't a valid EC compact public key. Valid curves are secp256r1.", v12, v13, v14, v15, v16, v17, v18, v22);

          v8 = v20;
        }

        v19 = v22;
      }

      else
      {
        v19 = 0;
      }

      v4 = v8;
    }
  }

  return v4;
}

id _PKValidateStyleFields(void *a1, void *a2, void *a3)
{
  v54[6] = *MEMORY[0x1E69E9840];
  v37 = a1;
  v41 = a2;
  v40 = a3;
  v53[0] = @"primaryFields";
  v53[1] = @"secondaryFields";
  v54[0] = @"kValidationFailsOnWarning";
  v54[1] = @"kValidationLogsWarnings";
  v53[2] = @"auxiliaryFields";
  v53[3] = @"headerFields";
  v54[2] = @"kValidationFailsOnWarning";
  v54[3] = @"kValidationFailsOnWarning";
  v53[4] = @"backFields";
  v53[5] = @"additionalInfoFields";
  v54[4] = @"kValidationLogsWarnings";
  v54[5] = @"kValidationLogsWarnings";
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:6];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = [&unk_1F23B3CC8 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v35)
  {
    v34 = *v48;
    v39 = *MEMORY[0x1E696AA08];
    while (2)
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(&unk_1F23B3CC8);
        }

        v6 = *(*(&v47 + 1) + 8 * i);
        v46 = 0;
        v7 = objc_opt_class();
        v8 = _PKVerifyDictionaryKey(v37, v6, 1, v7, &v46);
        if (v8)
        {
          v31 = v8;

          goto LABEL_34;
        }

        v9 = [v36 objectForKeyedSubscript:v6];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v10 = v46;
        v11 = [v10 countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v11)
        {
          v12 = v11;
          v38 = i;
          v33 = a2;
          v13 = *v43;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v43 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v42 + 1) + 8 * j);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                a2 = PKValidationErrorWithReason(@"Entry in %@ array needs to be a dictionary. Found object of class %@.", v24, v25, v26, v27, v28, v29, v30, v6);
                v23 = 0;
                goto LABEL_26;
              }

              v16 = _PKValidateFieldDict(v15, v41, v6, 0);
              v17 = v16;
              if (v16)
              {
                if (v9 != @"kValidationLogsWarnings" || !_PKUnderlyingErrorIsWarning(v16))
                {
                  v23 = 0;
                  a2 = v17;
                  goto LABEL_26;
                }

                v18 = [v17 userInfo];
                v19 = [v18 objectForKey:v39];
                v20 = v19;
                if (v19)
                {
                  v21 = v19;
                }

                else
                {
                  v21 = v17;
                }

                v22 = v21;

                [v40 addObject:v22];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v42 objects:v51 count:16];
            v23 = 1;
            if (v12)
            {
              continue;
            }

            break;
          }

          a2 = v33;
LABEL_26:
          i = v38;
        }

        else
        {
          v23 = 1;
        }

        if (!v23)
        {
          v31 = a2;
          goto LABEL_34;
        }
      }

      v31 = 0;
      v35 = [&unk_1F23B3CC8 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_34:

  return v31;
}

id _PKValidateFieldDict(void *a1, void *a2, void *a3, char a4)
{
  v172 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v170 = 0;
  v10 = objc_opt_class();
  v11 = _PKVerifyDictionaryKey(v7, @"key", 0, v10, &v170);
  if (v11)
  {
    v12 = v11;
    v13 = v12;
    goto LABEL_15;
  }

  if ([v8 containsObject:v170])
  {
    v20 = PKValidationWarningWithReason(@"more than one field has the key '%@'. Field keys must be unique.", v14, v170, v15, v16, v17, v18, v19, v170);
  }

  else
  {
    [v8 addObject:v170];
    v20 = 0;
  }

  v21 = objc_opt_class();
  v22 = _PKVerifyDictionaryKey(v7, @"label", (a4 & 1) == 0, v21, 0);
  if (v22)
  {
    v12 = v22;

    v13 = v12;
    goto LABEL_15;
  }

  v169 = 0;
  v23 = objc_opt_class();
  v24 = _PKVerifyDictionaryKey(v7, @"changeMessage", 1, v23, &v169);
  if (v24)
  {
    v12 = v24;
    v13 = v12;
    goto LABEL_14;
  }

  v168 = 0;
  v25 = objc_opt_class();
  v26 = _PKVerifyDictionaryKey(v7, @"foreignReferenceType", 1, v25, &v168);
  if (v26 || (v27 = v168 == 0, v28 = objc_opt_class(), _PKVerifyDictionaryKey(v7, @"foreignReferenceIdentifier", v27, v28, 0), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v26;
    v13 = v12;
    goto LABEL_13;
  }

  v30 = v170;
  v31 = v30;
  if (v30 == @"auto_top_up_field_value")
  {
  }

  else
  {
    if (!v30 || !@"auto_top_up_field_value")
    {

      goto LABEL_27;
    }

    v32 = [(__CFString *)v30 isEqualToString:@"auto_top_up_field_value"];

    if (!v32)
    {
      goto LABEL_27;
    }
  }

  *(&v167 + 1) = 0;
  v33 = objc_opt_class();
  v34 = _PKVerifyDictionaryKey(v7, @"amount", 0, v33, &v167 + 1);
  if (v34)
  {
    v12 = v34;
LABEL_33:

    v13 = v12;
    goto LABEL_13;
  }

  *&v167 = 0;
  v39 = objc_opt_class();
  v40 = _PKVerifyDictionaryKey(v7, @"threshold", 0, v39, &v167);
  if (v40)
  {
    v12 = v40;

    goto LABEL_33;
  }

LABEL_27:
  *(&v167 + 1) = 0;
  v35 = objc_opt_class();
  v36 = _PKVerifyDictionaryKey(v7, @"startDate", 1, v35, &v167 + 1);
  if (v36)
  {
    v12 = v36;
    v13 = v12;
    goto LABEL_99;
  }

  *&v167 = 0;
  v37 = objc_opt_class();
  v38 = _PKVerifyDictionaryKey(v7, @"endDate", 1, v37, &v167);
  if (v38)
  {
    v12 = v38;
    v13 = v12;
    goto LABEL_98;
  }

  v166 = 0;
  if (v167 == 0)
  {
    if (v168)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    v44 = objc_opt_class();
    v45 = _PKVerifyDictionaryKey(v7, @"value", v43, v44, &v166);
    if (v45)
    {
      v12 = v45;
      v13 = v12;
      goto LABEL_97;
    }

    if (v166)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v52 = v170;
          objc_opt_class();
          v13 = PKValidationErrorWithReason(@"value in field with key %@ is of class %@. This needs to be a string or a number.", v53, v54, v55, v56, v57, v58, v59, v52);
          v12 = 0;
          goto LABEL_97;
        }
      }
    }
  }

  v165 = 0;
  v41 = objc_opt_class();
  v42 = _PKVerifyDictionaryKey(v7, @"link", 1, v41, &v165);
  if (v42)
  {
    v12 = v42;
    v13 = v12;
    goto LABEL_96;
  }

  v164 = 0;
  v46 = objc_opt_class();
  v47 = _PKVerifyDictionaryKey(v7, @"textAlignment", 1, v46, &v164);
  if (v47 || v164 && (_PKEnumValueValidateString(v164, 0, @"PKTextAlignment", @"PKTextAlignmentLeft, PKTextAlignmentCenter, PKTextAlignmentRight, PKTextAlignmentNatural", v48, v49, v50, v51, 0), (v47 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v47;
    v13 = v12;
    goto LABEL_95;
  }

  v163 = 0;
  v60 = objc_opt_class();
  v61 = _PKVerifyDictionaryKey(v7, @"dateStyle", 1, v60, &v163);
  if (v61 || v163 && (_PKEnumValueValidateString(v163, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v62, v63, v64, v65, 0), (v61 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v61;
    v13 = v12;
    goto LABEL_94;
  }

  v162 = 0;
  v66 = objc_opt_class();
  v67 = _PKVerifyDictionaryKey(v7, @"timeStyle", 1, v66, &v162);
  if (v67 || v162 && (_PKEnumValueValidateString(v162, 0, @"PKDateStyle", @"PKDateStyleNone, WLDateStyleNone,PKDateStyleShort, WLDateStyleShort, PKDateStyleMedium, WLDateStyleMedium, PKDateStyleLong, WLDateStyleLong, PKDateStyleFull, WLDateStyleFull", v68, v69, v70, v71, 0), (v67 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v67;
    v13 = v12;
    goto LABEL_93;
  }

  v161 = 0;
  v72 = objc_opt_class();
  v73 = _PKVerifyDictionaryKey(v7, @"isRelative", 1, v72, &v161);
  if (v73)
  {
    v12 = v73;
    v13 = v12;
    goto LABEL_92;
  }

  v160 = 0;
  v74 = objc_opt_class();
  v75 = _PKVerifyDictionaryKey(v7, @"ignoresTimeZone", 1, v74, &v160);
  if (v75)
  {
    v12 = v75;
    v13 = v12;
    goto LABEL_91;
  }

  *(&v159 + 1) = 0;
  v76 = objc_opt_class();
  v77 = _PKVerifyDictionaryKey(v7, @"numberStyle", 1, v76, &v159 + 1);
  if (v77 || *(&v159 + 1) && (_PKEnumValueValidateString(*(&v159 + 1), 0, @"PKNumberStyle", @"PKNumberStyleDecimal, WLNumberStyleDecimal, PKNumberStylePercent, WLNumberStylePercent, PKNumberStyleScientific, WLNumberStyleScientific, PKNumberStyleSpellOut, WLNumberStyleSpellOut", v78, v79, v80, v81, 1u), (v77 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v77;
    v13 = v12;
    goto LABEL_90;
  }

  *&v159 = 0;
  v82 = objc_opt_class();
  v83 = _PKVerifyDictionaryKey(v7, @"currencyCode", 1, v82, &v159);
  if (v83)
  {
    goto LABEL_88;
  }

  if (v167 == 0 && (v163 || v162 || v161 || v160))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v91 = v170;
      objc_opt_class();
      v99 = PKValidationWarningWithReason(@"value in field with key %@ is of class %@. There are date formatting options, so this should be a string parseable as a date.", v92, v93, v94, v95, v96, v97, v98, v91);

      v20 = v99;
    }

    v100 = _PKParseW3CDTSCompleteDatePlusHoursMinutesAndOptionalSeconds(v166, 0, 0);

    if (!v100)
    {
      v101 = PKValidationWarningWithReason(@"Unable to parse %@ %@ as a date. We expect dates in W3C date time stamp format, either Complete date plus hours and minutes or Complete date plus hours, minutes and seconds. For example, 1980-05-07T10:30-05:00.", v84, v85, v86, v87, v88, v89, v90, v170);

      v20 = v101;
    }

    if (v159 != 0)
    {
      v102 = PKValidationWarningWithReason(@"value in field %@ has both date and number formatting options. Choose one.", v84, v85, v86, v87, v88, v89, v90, v170);

      v20 = v102;
    }
  }

  v103 = *(&v159 + 1);
  v104 = v159;
  if (*(&v159 + 1) && v159)
  {
    v105 = PKValidationWarningWithReason(@"value in field %@ has both a numberStyle and a currencyCode. It should be one or the other", v84, v85, v86, v87, v88, v89, v90, v170);

    v103 = *(&v159 + 1);
    v104 = v159;
    v20 = v105;
  }

  if (v103 | v104)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v106 = v170;
      objc_opt_class();
      v114 = PKValidationWarningWithReason(@"value in field with key %@ is of class %@. There are number formatting options, so this should be a number.", v107, v108, v109, v110, v111, v112, v113, v106);

      v20 = v114;
    }
  }

  v115 = objc_opt_class();
  v83 = _PKVerifyDictionaryKey(v7, @"imageLabel", 1, v115, 0);
  if (v83 || (v116 = objc_opt_class(), _PKVerifyDictionaryKey(v7, @"imageValue", 1, v116, 0), (v83 = objc_claimAutoreleasedReturnValue()) != 0) || (v117 = objc_opt_class(), _PKVerifyDictionaryKey(v7, @"imageAccessory", 1, v117, 0), (v83 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_88:
    v12 = v83;
    v13 = v12;
    goto LABEL_89;
  }

  v158 = 0;
  v118 = objc_opt_class();
  v119 = _PKVerifyDictionaryKey(v7, @"dataDetectorTypes", 1, v118, &v158);
  if (v119)
  {
    v12 = v119;
    v13 = v12;
    goto LABEL_133;
  }

  if (!v158)
  {
    goto LABEL_113;
  }

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  obj = v158;
  v120 = [obj countByEnumeratingWithState:&v154 objects:v171 count:16];
  if (!v120)
  {
    goto LABEL_112;
  }

  v121 = v120;
  v150 = *v155;
  while (2)
  {
    for (i = 0; i != v121; ++i)
    {
      if (*v155 != v150)
      {
        objc_enumerationMutation(obj);
      }

      v123 = *(*(&v154 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v129 = v170;
        objc_opt_class();
        v13 = PKValidationErrorWithReason(@"value in field %@ has an item of class %@ in the dataDetectorTypes array. These should be strings.", v130, v131, v132, v133, v134, v135, v136, v129);
        v12 = 0;
LABEL_119:
        v137 = obj;
        goto LABEL_132;
      }

      v124 = PKDataDetectorTypesValidateString(v123);
      if (v124)
      {
        v12 = v124;
        v13 = v12;
        goto LABEL_119;
      }
    }

    v121 = [obj countByEnumeratingWithState:&v154 objects:v171 count:16];
    if (v121)
    {
      continue;
    }

    break;
  }

LABEL_112:

LABEL_113:
  v153 = 0;
  v125 = objc_opt_class();
  v126 = _PKVerifyDictionaryKey(v7, @"cellStyle", 1, v125, &v153);
  if (v126)
  {
    v12 = v126;
    v13 = v12;
  }

  else
  {
    v152 = 0;
    v127 = objc_opt_class();
    v128 = _PKVerifyDictionaryKey(v7, @"semantics", 1, v127, &v152);
    if (v128 || v152 && (_PKValidateSemanticsDict(v152, v170), (v128 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v128;
      v13 = v12;
    }

    else
    {
      v151 = 0;
      v138 = objc_opt_class();
      v139 = _PKVerifyDictionaryKey(v7, @"row", 1, v138, &v151);
      v12 = v139;
      if (v139)
      {
        v140 = v139;
      }

      else
      {
        if (v151 && [v151 unsignedIntegerValue] >= 2 && objc_msgSend(v9, "isEqualToString:", @"auxiliaryFields"))
        {
          v148 = PKValidationWarningWithReason(@"row in field with key %@ must have the value of 0 or 1.", v141, v142, v143, v144, v145, v146, v147, v170);

          v20 = v148;
        }

        v140 = v20;
        v20 = v140;
      }

      v13 = v140;
    }
  }

  v137 = v153;
LABEL_132:

LABEL_133:
LABEL_89:

LABEL_90:
LABEL_91:

LABEL_92:
LABEL_93:

LABEL_94:
LABEL_95:

LABEL_96:
LABEL_97:

LABEL_98:
LABEL_99:

LABEL_13:
LABEL_14:

LABEL_15:

  return v13;
}

uint64_t _PKUnderlyingErrorIsWarning(void *a1)
{
  v1 = [a1 userInfo];
  v2 = [v1 objectForKey:*MEMORY[0x1E696AA08]];

  v3 = [v2 userInfo];
  v4 = [v3 objectForKey:@"PKIsWarning"];

  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _PKValidateAuxiliaryRegistrationRequirementsDict(void *a1)
{
  v1 = a1;
  v2 = _PKValidateAuxiliaryReqistrationRequirements(v1);
  if (!v2)
  {
    v2 = _PKValidateAuxiliaryReqistrationRequirements(v1);
  }

  return v2;
}

id _PKValidateBarcodeSettingsDict(void *a1)
{
  v1 = a1;
  v2 = _PKValidateURLStringKey(v1, @"barcodeServiceURL", 1, 1, 0);
  if (!v2)
  {
    v3 = objc_opt_class();
    v2 = _PKVerifyDictionaryKey(v1, @"initialBarcodeFetchCount", 1, v3, 0);
  }

  return v2;
}

id _PKValidateDynamicLayerConfiguration(void *a1)
{
  v37 = 0;
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"dynamicLayerConfiguration", 1, v2, &v37);

  if (v3)
  {
    goto LABEL_2;
  }

  v3 = v37;
  if (!v37)
  {
    goto LABEL_2;
  }

  v36 = 0;
  v4 = objc_opt_class();
  v5 = _PKVerifyDictionaryKey(v3, @"version", 0, v4, &v36);
  if (v5)
  {
    v3 = v5;
LABEL_8:

    goto LABEL_9;
  }

  v35 = 0;
  v6 = v37;
  v7 = objc_opt_class();
  v8 = _PKVerifyDictionaryKey(v6, @"parallaxEnabled", 1, v7, &v35);
  if (v8)
  {
    v3 = v8;

    goto LABEL_8;
  }

  v34 = 0;
  v10 = v37;
  v11 = objc_opt_class();
  v12 = _PKVerifyDictionaryKey(v10, @"backgroundParallaxEmitter", 1, v11, &v34);
  if (v12)
  {
    v3 = v12;
    v13 = 0;
  }

  else
  {
    v33 = 0;
    v14 = v37;
    v15 = objc_opt_class();
    v16 = _PKVerifyDictionaryKey(v14, @"neutralEmitter", 1, v15, &v33);
    if (v16)
    {
      v3 = v16;
      v13 = 0;
    }

    else
    {
      v32 = 0;
      v17 = v37;
      v18 = objc_opt_class();
      v19 = _PKVerifyDictionaryKey(v17, @"foregroundParallaxEmitter", 1, v18, &v32);
      if (v19)
      {
        v3 = v19;
        v13 = 0;
      }

      else
      {
        if ((v31 = 0, v20 = v37, v21 = objc_opt_class(), _PKVerifyDictionaryKey(v20, @"staticOverlayEmitter", 1, v21, &v31), (v22 = objc_claimAutoreleasedReturnValue()) != 0) || v34 && (_PKValidateEmitterLayerConfiguration(v34), (v22 = objc_claimAutoreleasedReturnValue()) != 0) || v33 && (_PKValidateEmitterLayerConfiguration(v33), (v22 = objc_claimAutoreleasedReturnValue()) != 0) || v32 && (_PKValidateEmitterLayerConfiguration(v32), (v22 = objc_claimAutoreleasedReturnValue()) != 0) || v31 && (_PKValidateEmitterLayerConfiguration(v31), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v3 = v22;
          v13 = 0;
        }

        else
        {
          v30 = 0;
          v23 = v37;
          v24 = objc_opt_class();
          v25 = _PKVerifyDictionaryKey(v23, @"transactionEffect", 1, v24, &v30);
          if (v25 || v30 && (_PKValidateTransactionEffectConfiguration(v30), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v3 = v25;
            v13 = 0;
          }

          else
          {
            v29 = 0;
            v26 = v37;
            v27 = objc_opt_class();
            v28 = _PKVerifyDictionaryKey(v26, @"crossDissolve", 1, v27, &v29);
            if (v28 || v29 && (_PKValidateCrossDissolveConfiguration(v29), (v28 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v3 = v28;
              v13 = 0;
            }

            else
            {
              v3 = 0;
              v13 = 1;
            }
          }
        }
      }
    }
  }

  if (v13)
  {
LABEL_2:
    v3 = v3;
  }

LABEL_9:

  return v3;
}

id _PKValidatePrivateTopLevelPassStructure(void *a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v55 = 0;
  v8 = PKPrivateObjectDictionaryWithError(v5, &v55);
  v9 = v55;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    v11 = v9;
    v12 = v11;
    goto LABEL_20;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithURL:v5];
  v21 = v13;
  if (!v13)
  {
    v12 = PKValidationErrorWithReason(@"NSBundle init returns nil for URL %@", v14, v15, v16, v17, v18, v19, v20, v5);
    v11 = 0;
    goto LABEL_19;
  }

  v22 = _PKValidateVersion(v8, 0);
  if (!v22)
  {
    v54 = 0;
    v23 = objc_opt_class();
    v24 = _PKVerifyDictionaryKey(v8, @"storeCard", 1, v23, &v54);
    if (!v24)
    {
      v25 = v54;
      if (!v54)
      {
        v28 = objc_opt_class();
        v24 = _PKVerifyDictionaryKey(v8, @"eventTicket", 1, v28, &v54);
        if (v24)
        {
          goto LABEL_17;
        }

        v25 = v54;
        if (!v54)
        {
          v30 = objc_opt_class();
          v24 = _PKVerifyDictionaryKey(v8, @"coupon", 1, v30, &v54);
          if (v24)
          {
            goto LABEL_17;
          }

          v25 = v54;
          if (!v54)
          {
            v31 = objc_opt_class();
            v24 = _PKVerifyDictionaryKey(v8, @"boardingPass", 1, v31, &v54);
            if (v24)
            {
              goto LABEL_17;
            }

            v25 = v54;
            if (!v54)
            {
              v32 = objc_opt_class();
              v24 = _PKVerifyDictionaryKey(v8, @"generic", 1, v32, &v54);
              if (v24)
              {
                goto LABEL_17;
              }

              v25 = v54;
              if (!v54)
              {
                v33 = objc_opt_class();
                v24 = _PKVerifyDictionaryKey(v8, @"paymentCard", 1, v33, &v54);
                if (v24)
                {
                  goto LABEL_17;
                }

                v25 = v54;
                if (!v54)
                {
                  v34 = objc_opt_class();
                  if (v54)
                  {
                    v35 = 0;
                  }

                  else
                  {
                    v35 = &v54;
                  }

                  v24 = _PKVerifyDictionaryKey(v8, @"accessCard", 1, v34, v35);
                  if (v24)
                  {
                    goto LABEL_17;
                  }

                  v25 = v54;
                  if (!v54)
                  {
                    goto LABEL_14;
                  }
                }
              }
            }
          }
        }
      }

      v24 = _PKValidateStyleFields(v25, v6, v7);
      if (!v24)
      {
LABEL_14:
        v53 = 0;
        v26 = objc_opt_class();
        v27 = _PKVerifyDictionaryKey(v8, @"auxiliaryPassInformation", 1, v26, &v53);
        v11 = v27;
        if (v27)
        {
          v12 = v27;
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          obj = v53;
          v36 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v50;
            while (2)
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v50 != v38)
                {
                  objc_enumerationMutation(obj);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v40 = objc_opt_class();
                  v12 = PKValidationErrorWithReason(@"entry in auxiliaryPassInformation array needs to be a dictionary. Found object of class %@.", v41, v42, v43, v44, v45, v46, v47, v40);

                  goto LABEL_48;
                }
              }

              v37 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
              if (v37)
              {
                continue;
              }

              break;
            }
          }

          v12 = 0;
        }

LABEL_48:

        goto LABEL_18;
      }
    }

LABEL_17:
    v11 = v24;
    v12 = v11;
LABEL_18:

    goto LABEL_19;
  }

  v11 = v22;
  v12 = v11;
LABEL_19:

LABEL_20:

  return v12;
}

id _PKValidateEventDateInfoDictionary(void *a1)
{
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"date", 1, v2, 0);
  if (!v3)
  {
    v4 = objc_opt_class();
    v3 = _PKVerifyDictionaryKey(v1, @"timeZone", 1, v4, 0);
    if (!v3)
    {
      v5 = objc_opt_class();
      v3 = _PKVerifyDictionaryKey(v1, @"ignoreTimeComponents", 1, v5, 0);
      if (!v3)
      {
        v6 = objc_opt_class();
        v3 = _PKVerifyDictionaryKey(v1, @"unannounced", 1, v6, 0);
        if (!v3)
        {
          v7 = objc_opt_class();
          v3 = _PKVerifyDictionaryKey(v1, @"undetermined", 1, v7, 0);
        }
      }
    }
  }

  v8 = v3;

  return v8;
}

id _PKValidateCurrencyAmountDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v12 = [v3 objectForKeyedSubscript:@"currencyCode"];
  if (!v12)
  {
    PKValidationErrorWithReason(@"currencyCode value not provided for semantic key %@. currencyCode is a required key for currency amount semantics.", v5, v6, v7, v8, v9, v10, v11, v4);
    v45 = LABEL_9:;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    PKValidationErrorWithReason(@"currencyCode value for semantic key %@ is not a string", v13, v14, v15, v16, v17, v18, v19, v4);
    goto LABEL_9;
  }

  v27 = [v3 objectForKeyedSubscript:@"amount"];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v27];
      v36 = [MEMORY[0x1E696AB90] notANumber];
      v37 = [v35 isEqualToNumber:v36];

      if (v37)
      {
        v45 = PKValidationErrorWithReason(@"amount value %@ for semantic key %@ is not a valid number.", v38, v39, v40, v41, v42, v43, v44, v27);
      }

      else
      {
        v45 = 0;
      }

      goto LABEL_15;
    }

    PKValidationErrorWithReason(@"amount value for semantic key %@ must be a string.", v28, v29, v30, v31, v32, v33, v34, v4);
  }

  else
  {
    PKValidationErrorWithReason(@"amount value not provided for semantic key %@. amount is a required key for currency amount semantics.", v20, v21, v22, v23, v24, v25, v26, v4);
  }
  v45 = ;
LABEL_15:

LABEL_16:

  return v45;
}

id _PKVerifyTimeZoneDictionaryKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:v3];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [MEMORY[0x1E695DFE8] timeZoneWithName:v4];
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = PKValidationErrorWithReason(@"Unable to parse %@ %@ as a time zone. We expect time zone identifiers or abbreviations. For example, America/Chicago or CST", v5, v6, v7, v8, v9, v10, v11, v3);
      }
    }

    else
    {
      objc_opt_class();
      v13 = PKValidationErrorWithReason(@"Value for key '%@' must be of class NSString, but is actually of class %@.", v14, v15, v16, v17, v18, v19, v20, v3);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id _PKValidateUpcomingPassInformationImagesDict(void *a1, void *a2)
{
  v89[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v89[0] = @"venueMap";
  v89[1] = @"headerImage";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
  v87[0] = @"venueMap";
  v87[1] = @"headerImage";
  v88[0] = MEMORY[0x1E695E118];
  v88[1] = MEMORY[0x1E695E110];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (!v8)
  {
    v65 = 0;
    v21 = v7;
    goto LABEL_50;
  }

  v9 = v8;
  v70 = v4;
  v10 = *v82;
  v71 = v7;
  v72 = v6;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v82 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v81 + 1) + 8 * i);
      v80 = 0;
      v13 = objc_opt_class();
      v14 = _PKVerifyDictionaryKey(v3, v12, 1, v13, &v80);
      if (v14)
      {
        v21 = v14;
        goto LABEL_40;
      }

      v15 = v80;
      if (!v80)
      {
        continue;
      }

      v79 = 0;
      v16 = objc_opt_class();
      v17 = _PKVerifyDictionaryKey(v15, @"reuseExisting", 1, v16, &v79);
      if (v17)
      {
        v21 = v17;

LABEL_40:
        v65 = v21;
LABEL_48:
        v4 = v70;
LABEL_49:

        goto LABEL_50;
      }

      v78 = 0;
      v18 = v80;
      v19 = objc_opt_class();
      v20 = _PKVerifyDictionaryKey(v18, @"URLs", 1, v19, &v78);
      v21 = v20;
      if (v20)
      {
        v66 = v20;
LABEL_46:
        v65 = v66;
LABEL_47:

        goto LABEL_48;
      }

      v22 = [v79 BOOLValue];
      v23 = [v6 objectForKeyedSubscript:v12];
      v24 = [v23 BOOLValue];

      if (v22 && (v24 & 1) == 0)
      {
        PKValidationErrorWithReason(@"Reusability not allowed for %@", v25, v26, v27, v28, v29, v30, v31, v12);
        goto LABEL_44;
      }

      if (v22)
      {
        v32 = [PKImage URLForImageNamed:v12 inBundle:v70 scale:0];

        v7 = v71;
        v6 = v72;
        if (v32)
        {

          continue;
        }

        v66 = PKValidationErrorWithReason(@"Cannot reuse asset as pass does not contain %@.png/%@@2x.png/%@@3x.png", v33, v34, v35, v36, v37, v38, v39, v12);
        goto LABEL_46;
      }

      if (![v78 count])
      {
        PKValidationErrorWithReason(@"If image is not being reused, URLs are required", v40, v41, v42, v43, v44, v45, v46, v68);
        v65 = LABEL_44:;
        v7 = v71;
        v6 = v72;
        goto LABEL_47;
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v47 = v78;
      v48 = [v47 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v75;
        v69 = v3;
        while (2)
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v75 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v52 = *(*(&v74 + 1) + 8 * j);
            v53 = _PKValidateURLStringKey(v52, @"URL", 0, 1, 0);
            if (v53 || (v54 = objc_opt_class(), _PKVerifyDictionaryKey(v52, @"SHA256", 0, v54, 0), (v53 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v21 = v53;
              goto LABEL_37;
            }

            v73 = 0;
            v55 = objc_opt_class();
            v56 = _PKVerifyDictionaryKey(v52, @"size", 1, v55, &v73);
            if (v56 || v73 && [v73 unsignedIntegerValue] > 0x200000 && (PKValidationErrorWithReason(@"Size for %@ (%g megabytes) is larger than the allowed limit of %g megabytes", v57, v58, v59, v60, v61, v62, v63, v12), (v56 = objc_claimAutoreleasedReturnValue()) != 0) || (v64 = objc_opt_class(), _PKVerifyDictionaryKey(v52, @"scale", 1, v64, 0), (v56 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v21 = v56;

LABEL_37:
              v3 = v69;
              v4 = v70;
              v6 = v72;

              v65 = v21;
              v7 = v71;
              goto LABEL_49;
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v74 objects:v85 count:16];
          v3 = v69;
          if (v49)
          {
            continue;
          }

          break;
        }
      }

      v7 = v71;
      v6 = v72;
    }

    v9 = [v7 countByEnumeratingWithState:&v81 objects:v86 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

  v65 = 0;
  v21 = v7;
  v4 = v70;
LABEL_50:

  return v65;
}

id _PKValidateAuxiliaryReqistrationRequirements(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v32 = 0;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"deviceSignatures", 1, v2, &v32);
  if (!v3)
  {
    v27 = v1;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = v32;
    v5 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v9;
            v18 = objc_opt_class();
            v19 = _PKVerifyDictionaryKey(v17, @"source", 1, v18, 0);
            if (!v19)
            {
              v20 = objc_opt_class();
              v19 = _PKVerifyDictionaryKey(v17, @"version", 1, v20, 0);
              if (!v19)
              {
                v21 = objc_opt_class();
                v19 = _PKVerifyDictionaryKey(v17, @"identifier", 0, v21, 0);
                if (!v19)
                {
                  v22 = objc_opt_class();
                  v19 = _PKVerifyDictionaryKey(v17, @"type", 1, v22, 0);
                  if (!v19)
                  {
                    v23 = objc_opt_class();
                    v19 = _PKVerifyDictionaryKey(v17, @"usage", 1, v23, 0);
                  }
                }
              }
            }

            v3 = v19;

            if (v3)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v3 = PKValidationErrorWithReason(@"Auxiliary registration requirements array must contain dictionaries.", v10, v11, v12, v13, v14, v15, v16, v26);
            if (v3)
            {
              goto LABEL_19;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v6);
    }

    v3 = 0;
LABEL_19:

    v1 = v27;
  }

  v24 = v3;

  return v24;
}

id _PKValidateEmitterLayerConfiguration(void *a1)
{
  v6 = 0;
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"style", 0, v2, &v6);

  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

id _PKValidateTransactionEffectConfiguration(void *a1)
{
  v6 = 0;
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"style", 0, v2, &v6);

  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

id _PKValidateCrossDissolveConfiguration(void *a1)
{
  v6 = 0;
  v1 = a1;
  v2 = objc_opt_class();
  v3 = _PKVerifyDictionaryKey(v1, @"intensity", 0, v2, &v6);

  if (v3)
  {
    v4 = v3;
  }

  return v3;
}

void sub_1AD6918B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1AD691DE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1AD692460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AD6926B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1AD6928A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *PKSharingInvitationUpdateReasonToString(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Accepted";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Rescinded";
  }
}

uint64_t PKRangingSuspensionDisplayableReasonForRangingSuspensionReason(unint64_t a1)
{
  v1 = 1;
  if ((a1 & 2) == 0)
  {
    v1 = (a1 >> 5) & 2;
  }

  v2 = 4;
  if ((~a1 & 0x39) != 0)
  {
    v2 = v1;
  }

  if ((a1 & 4) != 0)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1AD695180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PDScheduledActivityClientRegister(void *a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 length];
  if (v7 && v6 && v8)
  {
    v9 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Registering Scheduled Activity Client: %@", buf, 0xCu);
    }

    v10 = _ScheduledActivityQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PDScheduledActivityClientRegister_block_invoke;
    block[3] = &unk_1E79C4E00;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    dispatch_async(v10, block);
  }
}

void __PDScheduledActivityClientRegister_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _RegisteredClients();
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    v4 = [v3 isValid];
    [v3 setClientInstance:*(a1 + 40)];
    [v3 setActivityQueue:*(a1 + 48)];
    if ((v4 & 1) == 0)
    {
      v5 = [v3 activityRegistrations];
      v6 = [v5 allKeys];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            _RegisterXPCActivity(*(a1 + 32), *(*(&v14 + 1) + 8 * v11++));
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    v12 = [[PDScheduledActivityClient alloc] initWithClientInstance:*(a1 + 40) activityQueue:*(a1 + 48)];
    v13 = _RegisteredClients();
    [v13 setObject:v12 forKeyedSubscript:*(a1 + 32)];

    _ArchiveRegisteredClients();
  }
}

void _RegisterXPCActivity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _XPCActivityIdentifier(v3, v4);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 UTF8String];
    v8 = *MEMORY[0x1E69E9C50];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = ___RegisterXPCActivity_block_invoke;
    handler[3] = &unk_1E79CDF50;
    v10 = v3;
    v11 = v4;
    v12 = v6;
    xpc_activity_register(v7, v8, handler);
  }
}

void PDScheduledActivityClientRemove(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = _ScheduledActivityQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __PDScheduledActivityClientRemove_block_invoke;
    block[3] = &unk_1E79C4E28;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void __PDScheduledActivityClientRemove_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _RegisteredClients();
  v3 = [v2 objectForKeyedSubscript:*(a1 + 32)];

  if (v3)
  {
    _PDScheduledActivityRemoveAll(*(a1 + 32), v3);
    v4 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "Removing Scheduled Activity Client: %@", &v7, 0xCu);
    }

    v6 = _RegisteredClients();
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];

    _ArchiveRegisteredClients();
  }
}

void _PDScheduledActivityRemoveAll(void *a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 activityRegistrations];
  v6 = [v5 allKeys];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = _XPCActivityIdentifier(v3, v12);
        v14 = PKLogFacilityTypeGetObject(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v12;
          v22 = 2112;
          v23 = v3;
          _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Removing Scheduled Activity: %@ for Client: %@", buf, 0x16u);
        }

        xpc_activity_unregister([v13 UTF8String]);
        v15 = [v4 activityRegistrations];
        [v15 setObject:0 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v9);
  }
}

void _PDScheduledActivityRegister(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v11 = _ScheduledActivityQueue();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___PDScheduledActivityRegister_block_invoke;
    v12[3] = &unk_1E79C9668;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;
    dispatch_sync(v11, v12);
  }
}