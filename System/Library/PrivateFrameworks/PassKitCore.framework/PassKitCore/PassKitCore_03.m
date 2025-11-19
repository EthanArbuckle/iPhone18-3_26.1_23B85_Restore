void sub_10008A6EC(uint64_t a1)
{
  if (([*(a1 + 32) accountChangedNotificationReceived] & 1) == 0)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(*(a1 + 32) + 184) logDescription];
      v24 = 138543362;
      v25 = v9;
      v10 = "[PDPassCloudStore(%{public}@)] Old CKAccountChangedNotification handler called";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v24, 0xCu);
    }

LABEL_38:

    return;
  }

  [*(a1 + 32) setAccountChangedNotificationReceived:0];
  v2 = [*(a1 + 32) nextExpectedState];
  if (v2 != 1 && v2 != 15)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_38;
    }

    v9 = [*(*(a1 + 32) + 184) logDescription];
    v24 = 138543362;
    v25 = v9;
    v10 = "[PDPassCloudStore(%{public}@)] CKAccountChangedNotification received during state change";
    goto LABEL_33;
  }

  v4 = v2;
  v5 = *(a1 + 40);
  if (v5)
  {
    if ([v5 accountStatus] == 1)
    {
      v6 = [*(a1 + 40) hasValidCredentials];
      v7 = v6 ^ 1;
      if (v4 == 1 && v6 && (sub_1000850C8() & 1) != 0)
      {
        v8 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = (v4 == 15) & v7;
LABEL_22:
    v15 = [*(a1 + 40) deviceToDeviceEncryptionAvailability];
    if (v15)
    {
      v16 = ([*(a1 + 40) deviceToDeviceEncryptionAvailability] >> 1) & 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }

    v17 = [*(*(a1 + 32) + 184) isEndToEndEncrypted];
    v18 = *(a1 + 32);
    if (v8)
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [*(v18 + 184) logDescription];
        v24 = 138543362;
        v25 = v19;
        v20 = "[PDPassCloudStore(%{public}@)] account availabilty changed";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v20, &v24, 0xCu);

        goto LABEL_37;
      }

      goto LABEL_37;
    }

    v21 = (v15 & 1) == 0;
    if (v17)
    {
      v21 = v16;
    }

    v22 = v7 | v21 ^ *(v18 + 200);
    v11 = PKLogFacilityTypeGetObject();
    v23 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if ((v22 & 1) == 0)
    {
      if (v23)
      {
        v19 = [*(v18 + 184) logDescription];
        v24 = 138543362;
        v25 = v19;
        v20 = "[PDPassCloudStore(%{public}@)] secure sync availabilty changed";
        goto LABEL_36;
      }

LABEL_37:

      v11 = [*(a1 + 32) delegate];
      [v11 cloudStoreContainer:*(a1 + 32) reinitializeContainerAndInvalidateFirst:1];
      goto LABEL_38;
    }

    if (v23)
    {
      v9 = [*(v18 + 184) logDescription];
      v24 = 138543362;
      v25 = v9;
      v10 = "[PDPassCloudStore(%{public}@)] neither account nor secure sync availabilty did change";
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(*(a1 + 32) + 184) logDescription];
    v24 = 138543362;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] CKAccountState is not available", &v24, 0xCu);
  }

  [*(a1 + 32) advanceToNextState:3 withError:*(a1 + 48)];
}

id sub_10008AB68(id a1, PKCloudStoreUploadItemConfiguration *a2)
{
  v2 = a2;
  v3 = [(PKCloudStoreUploadItemConfiguration *)v2 item];
  if ([v3 itemType] == 3)
  {
    v4 = [PKCatalog catalogWithLocalCatalog:0 ubiquitousCatalog:v3];
    v5 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:v4];
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_10008B4BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10008B54C;
  v2[3] = &unk_100840E98;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _queue_cloudStoreAccountInformationWithCompletion:v2];
}

void sub_10008B54C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 deviceToDeviceEncryptionAvailability];
  v5 = [v3 deviceToDeviceEncryptionAvailability];

  v6 = [PKCloudStoreContainerDiagnostics alloc];
  v7 = [*(a1 + 32) isSetup];
  v8 = [*(a1 + 32) stateDescription];
  v9 = [*(a1 + 32) isWalletSyncEnabled];
  v10 = [*(a1 + 32) syncTokenDescription];
  v11 = [*(a1 + 32) lastSyncDateDescription];
  v12 = [*(a1 + 32) isDeltaSyncPossible];
  if ((v5 & 2) != 0)
  {
    v13 = *(*(a1 + 32) + 200) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  BYTE3(v14) = v13 & 1;
  LOBYTE(v14) = v12;
  BYTE2(v14) = (v5 & 2) != 0;
  BYTE1(v14) = v4 & 1;
  v15 = [v6 initWithIsEnabled:1 isSetup:v7 status:v8 isSyncEnabled:v9 syncToken:v10 lastSyncDate:v11 didFinishInitialSync:v14 isAccountManateeCapable:? isDeviceManateeCapable:? isManateeEnabled:?];

  (*(*(a1 + 40) + 16))();
}

void sub_10008B714(uint64_t a1)
{
  v2 = [*(a1 + 32) containerManager];
  v3 = [v2 databaseForScope:2];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) containerManager];
  v5 = [v4 allPossibleZoneIDsInContainerDatabase:v3];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [*(a1 + 32) containerManager];
        v12 = [v3 identifier];
        [v11 containerDatabaseIdentifier:v12 didUpdateChangeToken:0 fetchTimestamp:0 forZoneID:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void sub_10008B900(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 216));
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  *(v2 + 208) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 216));
  v4 = [*(*(a1 + 32) + 184) stringPrefixedWithContainerName:@"PDPassSyncCloudStoreContainerLastDownloadDateKey"];
  PKSharedCacheRemoveObjectForKey();

  v5 = [*(a1 + 32) localStore];
  [v5 resetMigration];
}

void sub_10008BA20(uint64_t a1)
{
  v1 = [*(a1 + 32) localStore];
  [v1 clearChangeHistory];
}

void sub_10008BB48(uint64_t a1)
{
  v2 = [*(a1 + 32) containerManager];
  v6 = [v2 databaseForScope:2];

  v3 = [*(a1 + 32) containerManager];
  v4 = [v3 allPossibleZoneIDsInContainerDatabase:v6];

  v5 = [v4 pk_setByApplyingBlock:&stru_100840ED8];
  [*(a1 + 32) resetContainerWithZoneNames:v5 completion:&stru_100840EF8];
}

void sub_10008BED4(uint64_t a1)
{
  if ([*(a1 + 32) isSetup])
  {
    v2 = objc_alloc_init(NSMutableDictionary);
    v3 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10008C078;
    v15[3] = &unk_10083FAF8;
    v15[4] = *(a1 + 32);
    v4 = v2;
    v16 = v4;
    [v3 addOperation:v15];
    v5 = +[NSNull null];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008C204;
    v11[3] = &unk_100840F88;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v12 = v4;
    v13 = v6;
    v14 = v7;
    v8 = v4;
    v9 = [v3 evaluateWithInput:v5 completion:v11];
  }

  else
  {
    v10 = *(*(a1 + 40) + 16);

    v10();
  }
}

void sub_10008C078(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008C154;
  v12[3] = &unk_100840F60;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 allItemsOfItemType:2 storeLocally:0 completion:v12];
}

uint64_t sub_10008C154(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = [a2 allRecordNames];
    v5 = [v4 allObjects];
    v6 = [v5 pk_arrayByApplyingBlock:&stru_100840F38];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:PKCloudPassRecordType];
  }

  v7 = *(*(a1 + 48) + 16);

  return v7();
}

void sub_10008C204(uint64_t a1)
{
  v2 = [PKCloudStoreContainerDiagnosticSnapshot alloc];
  v3 = [*(a1 + 32) copy];
  v4 = [*(a1 + 40) localStore];
  v5 = [v4 localRecordIDs];
  v6 = [v2 initWithRecordIDs:v3 localRecordIDs:v5];

  (*(*(a1 + 48) + 16))();
}

void sub_10008C6B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setPaymentNumber:a3 + 1];
  [v5 setPaymentCount:*(a1 + 32)];
}

void sub_10008CB1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10008D2FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setPaymentNumber:a3 + 1];
  [v5 setPaymentCount:*(a1 + 32)];
}

void sub_10008D68C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = objc_alloc_init(PKCreditInstallmentPlan);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v7 values:a4];

  v9 = [*(a1 + 40) database];
  v10 = [NSNumber numberWithLongLong:a2];
  v20 = [CreditInstallmentPlanLineItem lineItemForInstallmentPlanPID:v10 inDatabase:v9];
  [v8 setLineItems:?];
  v11 = [CreditInstallmentPlanPayment paymentsForInstallmentPlanPID:v10 inDatabase:v9];
  v12 = [NSSortDescriptor sortDescriptorWithKey:@"dueDate" ascending:1];
  v21 = v12;
  v13 = [NSArray arrayWithObjects:&v21 count:1];
  v19 = v11;
  v14 = [v11 sortedArrayUsingDescriptors:v13];

  [v8 setPayments:v14];
  v15 = [InstallmentPlanMerchant merchantForInstallmentPlanPID:v10 inDatabase:v9];
  [v8 setMerchant:v15];
  v16 = [CreditInstallmentPlanProduct productForInstallmentPlanPID:v10 inDatabase:v9];
  [v8 setProduct:v16];
  v17 = [InstallmentPlanSummary summaryForInstallmentPlanPID:v10 inDatabase:v9];
  [v8 setSummary:v17];
  v18 = [PaymentTransactionReward rewardsInDatabase:v9 forInstallmentPlanPID:v10];
  [v8 setRewards:v18];
  if (v8)
  {
    [*(a1 + 48) addObject:v8];
  }
}

void sub_10008DB80(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v4 = a2;
  -[PKCreditInstallmentPlan setState:](v4, "setState:", [a3 integerValue]);
}

void sub_10008DBD8(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditInstallmentPlan *)v3 setLastUpdated:v4];
}

void sub_10008DC38(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v4 = a2;
  [a3 integerValue];
  v5 = PKPercentageStorageIntegerToDecimal();
  [(PKCreditInstallmentPlan *)v4 setApr:v5];
}

void sub_10008DCA0(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v4 = a2;
  -[PKCreditInstallmentPlan setDuration:](v4, "setDuration:", [a3 unsignedIntegerValue]);
}

void sub_10008DD00(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditInstallmentPlan *)v3 setTotalAmount:v4];
}

void sub_10008DD64(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditInstallmentPlan *)v3 setTotalProductAmount:v4];
}

void sub_10008DDC8(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditInstallmentPlan *)v3 setTotalInterestAmount:v4];
}

void sub_10008DE2C(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v4 = a2;
  -[PKCreditInstallmentPlan setPeriodType:](v4, "setPeriodType:", [a3 integerValue]);
}

void sub_10008DE84(id a1, PKCreditInstallmentPlan *a2, id a3)
{
  v4 = a2;
  -[PKCreditInstallmentPlan setUserViewedIntroduction:](v4, "setUserViewedIntroduction:", [a3 BOOLValue]);
}

void sub_10008E6D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 pushToken];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(*(a1 + 40) + 16) passesForNotificationService:v3];
    [v3 setPushToken:*(a1 + 32)];
    [*(*(a1 + 40) + 16) updateNotificationService:v3];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10008E7F0;
    v8[3] = &unk_1008411B8;
    v8[4] = *(a1 + 40);
    v9 = v3;
    [v7 enumerateObjectsUsingBlock:v8];
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10008E7F0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateRegistrationStatusForPass:v4 notificationService:*(a1 + 40) requestedRegistrationStatus:1 refreshRegistrationIfPossible:1];
  objc_autoreleasePoolPop(v3);
}

void sub_10008EDF4(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(*(a1 + 32) + 16) notificationServiceIsEnabledForAnyPasses:?])
  {
    v3 = *(a1 + 40);
    v4 = [v5 pushTopic];
    [v3 addObject:v4];
  }
}

id sub_10008F490(uint64_t a1, int a2)
{
  if (*(a1 + 64))
  {
    v4 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
    v5 = v4;
    if (!a2 || v4)
    {
      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 56);
        v14 = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to cancel auto top up for pass: %@, error: %@", &v14, 0x16u);
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v6 = [*(a1 + 48) identifiers];
      v7 = [v6 anyObject];

      v8 = [*(*(a1 + 32) + 16) balanceReminderThresholdForBalanceIdentifier:v7 withPassUniqueIdentifier:*(a1 + 56)];
      if (v8)
      {
        v9 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 56);
          v14 = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v7;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Enable low balance reminder because auto top up is cancelled for pass: %@, balanceIdentifiers: %@", &v14, 0x16u);
        }

        [v8 setEnabled:1];
        [*(*(a1 + 32) + 16) setBalanceReminder:v8 forBalanceIdentifier:v7 withPassUniqueIdentifier:*(a1 + 56)];
      }

      (*(*(a1 + 64) + 16))();
    }
  }

  [*(*(a1 + 32) + 80) removeObjectForKey:*(a1 + 40)];
  return [*(*(a1 + 32) + 88) removeObjectForKey:*(a1 + 40)];
}

void sub_10008FD04(id a1, NSError *a2, unint64_t a3, BOOL *a4)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PDErrorDescription();
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v6, 0xCu);
  }
}

BOOL sub_100090304(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 pertainsToNotificationService:*(a1 + 32) andDPANIdentifier:*(a1 + 40)] && objc_msgSend(v3, "requestedStatus") == 1;

  return v4;
}

id sub_100090668(void *a1, int a2)
{
  if (a1[6])
  {
    v4 = [*(a1[4] + 80) objectForKey:a1[5]];
    v5 = [*(a1[4] + 88) objectForKey:a1[5]];
    v6 = v5;
    if (a2 && (v4 ? (v7 = v5 == 0) : (v7 = 0), v7))
    {
      (*(a1[6] + 16))();
    }

    else
    {
      if (!v5)
      {
        v10 = NSDebugDescriptionErrorKey;
        v11 = @"PDNotificationServiceTransactionAuthenticationTask failed.";
        v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        v6 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:v8];
      }

      (*(a1[6] + 16))();
    }
  }

  [*(a1[4] + 80) removeObjectForKey:a1[5]];
  return [*(a1[4] + 88) removeObjectForKey:a1[5]];
}

void sub_100091210(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 48) secureElementIdentifiers];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000912E0;
  v8[3] = &unk_1008412C0;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [v4 enumerateObjectsUsingBlock:v8];
}

void sub_1000912E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 secureElementIdentifier];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) dpanIdentifier];
    [v7 addObject:v8];

    if (!*(*(*(a1 + 48) + 8) + 40) && ([*(a1 + 32) isAuxiliary] & 1) == 0)
    {
      v9 = *(a1 + 32);
      v10 = (*(*(a1 + 48) + 8) + 40);

      objc_storeStrong(v10, v9);
    }
  }
}

void sub_1000913A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Signed Registration Data: %@", buf, 0xCu);
  }

  if (v5 && ([v6 certificates], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000915A8;
    block[3] = &unk_10083DE88;
    v13 = v5;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = v6;
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v18 = v10;
    v19 = v11;
    dispatch_async(v9, block);

    v7 = v13;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to Generate Signed Registration Data!", buf, 2u);
  }
}

void sub_1000915A8(uint64_t a1)
{
  v2 = [*(a1 + 32) base64EncodedStringWithOptions:0];
  v3 = [*(a1 + 40) base64EncodedStringWithOptions:0];
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (*(a1 + 48))
  {
    v6 = [v5 certificates];
    v7 = [v6 dictionary];
    v8 = [*(a1 + 64) certificateVersion];
    v9 = [*(a1 + 48) dpanIdentifier];
    v10 = [PDNotificationServiceSpecificRegistrationTask registerTaskWithNotificationService:v4 registrationData:v3 signature:v2 certificates:v7 certificateVersion:v8 dpanIdentifier:v9 completionTask:*(a1 + 72)];
  }

  else
  {
    v6 = [v5 certificates];
    v7 = [v6 dictionary];
    v10 = +[PDNotificationServiceRegistrationTask registerTaskWithNotificationService:registrationData:signature:certificates:certificateVersion:completionTask:](PDNotificationServiceRegistrationTask, "registerTaskWithNotificationService:registrationData:signature:certificates:certificateVersion:completionTask:", v4, v3, v2, v7, [*(a1 + 64) certificateVersion], *(a1 + 72));
  }

  [*(*(a1 + 80) + 56) performTask:v10];
}

void sub_10009171C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v6 certificates];
    if (v8)
    {

LABEL_9:
      (*(a1[6] + 16))();
      goto LABEL_10;
    }

    if ((PKIgnoreSignatures() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (!PKIgnoreSignatures())
  {
    goto LABEL_9;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not sign data with SE lookup via application ID, attempting again with default SE since *** IGNORING SIGNATURES ***", v10, 2u);
  }

  [*(a1[4] + 48) signChallenge:a1[5] signatureEntanglementMode:0 completion:a1[6]];
LABEL_10:
}

void sub_100091D90(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v2 = [*(a1 + 40) completionTask];
  [v1 performTask:v2];
}

void sub_100092578(uint64_t a1, void *a2, char *a3)
{
  v20 = a2;
  v5 = [v20 PKStringForKey:@"dpanIdentifier"];
  v6 = [v20 PKStringForKey:@"fpanIdentifier"];
  if (v5 && ([*(*(a1 + 32) + 16) paymentApplicationWithDPANIdentifier:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [*(*(a1 + 32) + 16) passUniqueIdentifierWithPaymentApplication:v7];
    v10 = 0;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (!v6)
    {
      v9 = 0;
      v8 = 0;
      goto LABEL_26;
    }

    v9 = [*(*(a1 + 32) + 16) passUniqueIdentifierWithPrimaryAccountIdentifier:v6];
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = PKMaxPerPassPaymentMessageHistory;
      v13 = [*(*(a1 + 32) + 16) settingEnabled:64 forPassWithUniqueIdentifier:v9];
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      [v8 paymentNetworkIdentifier];
    }

    v12 = PKMaxPaymentTransactionsForCredentialType();
    v14 = [*(*(a1 + 32) + 16) settingEnabled:8 forPassWithUniqueIdentifier:v9];
    v15 = [*(*(a1 + 32) + 16) passWithUniqueIdentifier:v9];
    v16 = [v15 paymentPass];

    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = [v16 shouldIgnoreTransactionUpdatesSwitch];
    }
  }

  v17 = [*(a1 + 40) countForObject:v9];
  if (((*(a1 + 72) | v13) & 1) != 0 && v17 <= v12)
  {
    v18 = [*(a1 + 48) count] - 1;
    v19 = *(a1 + 64);
    if (v19 == 1)
    {
      [*(a1 + 32) _processMessageDictionary:v20 forPassUniqueIdentifier:v9 paymentApplication:v8 performTruncation:v18 == a3];
    }

    else if (!v19)
    {
      [*(a1 + 32) _processTransactionDictionary:v20 forPassUniqueIdentifier:v9 paymentApplication:v8 performTruncation:v18 == a3 isInitialUpdate:{objc_msgSend(*(a1 + 56), "isInitialUpdatesTask")}];
    }

    [*(a1 + 40) addObject:v9];
  }

LABEL_26:
}

void sub_1000927E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 PKStringForKey:@"dpanIdentifier"];
  v5 = [v3 PKStringForKey:@"fpanIdentifier"];
  if (v4 && ([*(*(a1 + 32) + 16) paymentApplicationWithDPANIdentifier:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [*(*(a1 + 32) + 16) passUniqueIdentifierWithPaymentApplication:v6];
  }

  else if (v5)
  {
    v8 = [*(*(a1 + 32) + 16) passUniqueIdentifierWithPrimaryAccountIdentifier:v5];
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = [[PKPaymentBalance alloc] initWithDictionary:v3];
  if (!v8)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v12 = [v9 identifiers];
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordinator: Related pass could not be found for balance: %@", &v14, 0xCu);
LABEL_17:

    goto LABEL_18;
  }

  v10 = [*(a1 + 40) objectForKey:v8];
  v11 = PKMaxDefaultPerPassBalanceCount;
  if (!v10)
  {
    v10 = [NSMutableArray arrayWithCapacity:PKMaxDefaultPerPassBalanceCount];
    [*(a1 + 40) setObject:v10 forKey:v8];
  }

  if ([v10 count]>= v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v9 identifiers];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordinator: Too many balances provided for pass %@, skipping: %@", &v14, 0x16u);
    }

    goto LABEL_17;
  }

  if ([*(a1 + 32) _validateBalanceResult:v9])
  {
    [v10 addObject:v9];
  }

LABEL_18:
}

void sub_100092A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 PKStringForKey:@"dpanIdentifier"];
  v5 = [v3 PKStringForKey:@"fpanIdentifier"];
  if (v4 && ([*(*(a1 + 32) + 16) paymentApplicationWithDPANIdentifier:v4], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = [*(*(a1 + 32) + 16) passUniqueIdentifierWithPaymentApplication:v6];
    if (!v8)
    {
LABEL_13:
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordinator: Plan's related pass could not be found", v11, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    if (!v5)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v8 = [*(*(a1 + 32) + 16) passUniqueIdentifierWithPrimaryAccountIdentifier:v5];
    v7 = 0;
    if (!v8)
    {
      goto LABEL_13;
    }
  }

  v9 = [*(a1 + 40) objectForKey:v8];
  if (!v9)
  {
    v9 = objc_alloc_init(NSMutableArray);
    [*(a1 + 40) setObject:v9 forKey:v8];
  }

  v10 = [[PKPaymentCommutePlanDetail alloc] initWithDictionary:v3];
  if ([*(a1 + 32) _validatePlanResult:v10])
  {
    [v9 addObject:v10];
  }

LABEL_15:
}

void sub_100092C30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 PKStringForKey:@"dpanIdentifier"];
  v5 = [v3 PKStringForKey:@"fpanIdentifier"];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [*(*(a1 + 32) + 16) paymentApplicationWithDPANIdentifier:v4];
    v8 = *(*(a1 + 32) + 16);
    if (v7)
    {
      [v8 passUniqueIdentifierWithPaymentApplication:v7];
    }

    else
    {
      [v8 passUniqueIdentifierWithPrimaryAccountIdentifier:v6];
    }
    v10 = ;

    if (v10)
    {
      v11 = [v3 PKStringForKey:@"identifier"];
      if (v11)
      {
        v12 = [*(a1 + 40) objectForKeyedSubscript:v10];
        if (!v12)
        {
          v12 = objc_alloc_init(NSMutableDictionary);
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v10];
        }

        [v12 setObject:v3 forKeyedSubscript:v11];
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: ignoring tile configuration without a tile identifier.", v14, 2u);
        }
      }

      v4 = v10;
    }

    else
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: ignoring tile configuration without a matching pass.", v15, 2u);
      }
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: ignoring tile configuration with no fpan or dpan identifier.", buf, 2u);
    }
  }
}

void sub_100092E54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100092F00;
  v8[3] = &unk_1008413B0;
  v9 = v5;
  v7 = v5;
  sub_1005D7114(v6, a2, v8);
}

id sub_100092F00(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 metadata];
  v7 = [v6 identifier];
  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    if (v8)
    {
      v9 = [v5 mutableCopy];
      v10 = [v8 PKNumberForKey:@"enabled"];
      v11 = v10;
      if (v10)
      {
        if ([v10 BOOLValue])
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 0;
      }

      [v9 setEnabled:v12];
      v13 = [v8 PKStringForKey:@"state"];
      [v9 setStateIdentifier:v13];

      v14 = [v6 type];
      v15 = [v8 PKDictionaryForKey:@"stateOverride"];
      if (v15)
      {
        v16 = [PKPassTileState _createForDictionary:v15 withTileType:v14];
      }

      else
      {
        v16 = 0;
      }

      [v9 setStateOverride:v16];
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

void sub_100093750(uint64_t a1, void *a2)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 balanceIdentifier];
        v10 = PKEqualObjects();

        if (v10)
        {
          v11 = [*(a1 + 40) value];
          v12 = [*(a1 + 40) currencyCode];
          [v8 updateBalanceAmount:v11 currency:v12 exponent:{objc_msgSend(*(a1 + 40), "exponent")}];

          [v8 setReissueBannerOnUpdate:0];
          [*(*(a1 + 48) + 24) insertUserNotification:v8];
          v13 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *(a1 + 56);
            *buf = 138412546;
            v20 = v8;
            v21 = 2112;
            v22 = v14;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: lowBalance updateLowBalanceNotificationForBalance: %@ for pass %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_100093A24(uint64_t a1, void *a2)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 balanceIdentifier];
        v10 = PKEqualObjects();

        if (v10)
        {
          [*(*(a1 + 40) + 24) removeUserNotification:v8];
          v11 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 48);
            *buf = 138412546;
            v18 = v8;
            v19 = 2112;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PDNotificationServiceCoordiantor: lowBalance removeLowBalanceNotificationForBalance: %@ for pass %@", buf, 0x16u);
          }

          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_100094030(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PDDefaultQueue();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100094128;
  v10[3] = &unk_10083FD00;
  v11 = v5;
  v14 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_100094128(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[7];
    v8 = [v2 totalMerchantTokens];
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v8 intValue] > 0);
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      v7 = a1[6];
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error retrieving merchant token status for transaction %@. Error: %@", buf, 0x16u);
    }

    (*(a1[7] + 16))();
  }
}

void sub_100094534(uint64_t a1, void *a2)
{
  v3 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100005A00;
  v29 = sub_10000B10C;
  v30 = 0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000946C8;
  v16 = &unk_100841450;
  v17 = v5;
  v18 = v4;
  v7 = v3;
  v19 = v7;
  v22 = &v25;
  v20 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v21 = v8;
  v23 = v9;
  v24 = *(a1 + 72);
  [v6 performTransactionWithBlock:&v13];
  v10 = *(*(a1 + 32) + 32);
  v11 = v26[5];
  v12 = [v11 transactionSourceIdentifier];
  [v10 processPaymentTransaction:v11 forTransactionSourceIdentifier:v12];

  _Block_object_dispose(&v25, 8);
}

uint64_t sub_1000946C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 transactionWithTransactionIdentifier:v3];

  [v4 setIsMerchantTokenTransaction:*(a1 + 48)];
  v5 = [*(*(a1 + 32) + 16) insertOrUpdatePaymentTransaction:v4 withPassUniqueIdentifier:*(a1 + 56) paymentApplication:*(a1 + 64) insertionMode:*(a1 + 80) performTruncation:*(a1 + 88)];
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 1;
}

void sub_1000949D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000949F4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  if (![v3 pertainsToNotificationService:*(a1 + 32)])
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 requestedStatus] == 2)
  {
    goto LABEL_5;
  }

  if (*(a1 + 56) != 1)
  {
    v4 = 1;
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) dpanIdentifier];
    v4 = [v3 pertainsToNotificationService:v6 andDPANIdentifier:v7];
  }

  else
  {
LABEL_5:
    v4 = 0;
  }

LABEL_6:
  *(*(*(a1 + 48) + 8) + 24) = (*(*(*(a1 + 48) + 8) + 24) | v4) & 1;

  return v4;
}

void sub_100095578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKPaymentTransactionTag);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_1000958D0(id a1, PKPaymentTransactionTag *a2, id a3)
{
  v4 = a2;
  -[PKPaymentTransactionTag setType:](v4, "setType:", [a3 unsignedIntegerValue]);
}

void sub_100095928(id a1, PKPaymentTransactionTag *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKPaymentTransactionTag *)v3 setRank:v4];
}

const __CFString *SQLiteComparisonTypeToString(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"unknown";
  }

  else
  {
    return off_1008415A0[a1];
  }
}

void sub_10009899C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000989B4(uint64_t a1)
{
  v2 = [*(a1 + 32) accessory];
  if (!v2)
  {
    v3 = 0;
LABEL_5:
    v5 = [*(a1 + 32) secondaryAccessory];
    if (v5)
    {
      v6 = [TileAccessory insertAccessory:v5 inDatabase:*(a1 + 40)];
      if (!v6)
      {
        v4 = 0;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = [objc_alloc(*(a1 + 64)) initWithState:*(a1 + 32) forBaseState:*(a1 + 48) forAccessory:v3 forSecondaryAccessory:v6 inDatabase:*(a1 + 40)];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v4 = *(*(*(a1 + 56) + 8) + 40) != 0;
    goto LABEL_10;
  }

  v3 = [TileAccessory insertAccessory:v2 inDatabase:*(a1 + 40)];
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

void sub_100098C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v19 = +[NSNull null];
  [*(a1 + 32) setTitle:*a4];
  [*(a1 + 32) setBody:*(a4 + 8)];
  v9 = *(a4 + 16);
  if (v9)
  {
    v10 = v9 == v19;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = -[SQLiteEntity initWithPersistentID:inDatabase:]([TileAccessory alloc], "initWithPersistentID:inDatabase:", [v9 longLongValue], *(a1 + 40));
    v12 = *(a1 + 32);
    v13 = [(TileAccessory *)v11 passTileAccessory];
    [v12 setAccessory:v13];
  }

  v14 = *(a4 + 24);
  if (v14 && v14 != v19)
  {
    v15 = v14;
    v16 = -[SQLiteEntity initWithPersistentID:inDatabase:]([TileAccessory alloc], "initWithPersistentID:inDatabase:", [v15 longLongValue], *(a1 + 40));
    v17 = *(a1 + 32);
    v18 = [(TileAccessory *)v16 passTileAccessory];
    [v17 setSecondaryAccessory:v18];
  }

  *a6 = 1;
}

void sub_1000993D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [[PKUserLegalAgreementConsent alloc] _initForDatabase];
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v6 withProperties:v5 values:a3];

  [*(a1 + 40) addObject:v6];
}

void sub_1000996C4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10009990C(id a1, PKUserLegalAgreementConsent *a2, id a3)
{
  v3 = a2;
  [(PKUserLegalAgreementConsent *)v3 setType:PKUserLegalAgreementTypeFromString()];
}

void sub_100099974(id a1, PKUserLegalAgreementConsent *a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = a2;
    v6 = [[NSURL alloc] initWithString:v4];

    [(PKUserLegalAgreementConsent *)v5 setAgreementUrl:v6];
  }
}

void sub_100099A00(id a1, PKUserLegalAgreementConsent *a2, id a3)
{
  v4 = a2;
  -[PKUserLegalAgreementConsent setUserConsented:](v4, "setUserConsented:", [a3 BOOLValue]);
}

void sub_100099D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100099D9C(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 64)) initWithValue:*(a1 + 32) forBaseValue:*(a1 + 40) inDatabase:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

id sub_100099F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  [*(a1 + 32) setContent:*a4];
  [*(a1 + 32) setDateStyle:{_PKEnumValueFromString(), 0, 0, 1, 1, 2, 2, 3, 3, 4, 4}];
  [*(a1 + 32) setTimeStyle:{_PKEnumValueFromString(), 0, 0, 1, 1, 2, 2, 3, 3, 4, 4}];
  [*(a1 + 32) setIgnoresTimeZone:{objc_msgSend(*(a4 + 24), "BOOLValue")}];
  result = [*(a1 + 32) setIsRelative:{objc_msgSend(*(a4 + 32), "BOOLValue")}];
  *a6 = 1;
  return result;
}

uint64_t PDSharingMailboxPayloadEncryptionSchemeFromKeyLength(uint64_t a1)
{
  if (a1 == 16)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 32);
  }
}

uint64_t sub_10009AA2C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 8) deleteMerchantForPassUniqueIdentifier:*(a1 + 48) auxiliaryPassInformationItemIdentifier:{*(*(&v8 + 1) + 8 * v6), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_10009B1D8(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v4 = [*(*(a1 + 32) + 40) objectForKey:*(a1 + 40)];
  v5 = [*(a1 + 48) objectForKey:*(a1 + 56)];
  if (!v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 56);
      *buf = 138412290;
      v50 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Missing item update for %@", buf, 0xCu);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = *(a1 + 64);
        v15 = [v13 item];
        if ([v14 isEqual:v15])
        {
          v16 = [v13 isInvalid];

          if (v16)
          {
            v17 = v13;

            v18 = 0;
            v5 = v17;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v10);
  }

  v18 = 1;
LABEL_17:

  [v8 removeObject:v5];
  if (![v8 count])
  {

    v8 = 0;
  }

  [*(*(a1 + 32) + 40) setObject:v8 forKeyedSubscript:*(a1 + 40)];
  v19 = [*(*(a1 + 32) + 48) objectForKey:*(a1 + 40)];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 objectForKey:*(a1 + 56)];
    v22 = v21 == 0;
    if (v21)
    {
      [v20 removeObjectForKey:*(a1 + 56)];
    }

    if ([v20 count])
    {
      if (!v18)
      {
        goto LABEL_24;
      }

LABEL_29:
      v24 = *(a1 + 32);
      v23 = *(a1 + 40);
      v25 = *(v24 + 8);
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_10009B618;
      v40[3] = &unk_100841768;
      v40[4] = v24;
      v41 = v23;
      v26 = v3;
      v27 = *(a1 + 56);
      v42 = v26;
      v43 = v27;
      [v25 performTransactionWithBlock:v40];

      if (v22)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    [*(*(a1 + 32) + 48) removeObjectForKey:*(a1 + 40)];
    if (v18)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v21 = 0;
    v22 = 1;
    if (v18)
    {
      goto LABEL_29;
    }
  }

LABEL_24:
  if (v22)
  {
    goto LABEL_40;
  }

LABEL_30:
  v28 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 56);
    v30 = *(a1 + 40);
    *buf = 138412802;
    v50 = v29;
    v51 = 2112;
    v52 = v30;
    v53 = 2112;
    v54 = v3;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Calling completions for %@ in pass %@ with newly fetched merchant: %@", buf, 0x20u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v31 = v21;
  v32 = [v31 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v37;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v31);
        }

        (*(*(*(&v36 + 1) + 8 * j) + 16))(*(*(&v36 + 1) + 8 * j));
      }

      v33 = [v31 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v33);
  }

LABEL_40:
  os_unfair_lock_unlock((*(a1 + 32) + 32));
}

uint64_t sub_10009B618(void *a1)
{
  if ([*(a1[4] + 8) passExistsWithUniqueID:a1[5]])
  {
    [*(a1[4] + 8) insertMerchant:a1[6] forPassUniqueIdentifier:a1[5] auxiliaryPassInformationItemIdentifier:a1[7]];
  }

  return 1;
}

uint64_t sub_10009BA54(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [v3 identifier];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  return v9;
}

void sub_10009BAE8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setUseDisplayNameIgnoringBrand:1];
  (*(*(a1 + 32) + 16))();
}

void sub_10009BCD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 merchant];
  v5 = [v3 brand];
  v6 = [v3 result];

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v10 = 138413058;
    v11 = v8;
    v12 = 2048;
    v13 = v6;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Completed look up of maps data for aux item %@ with result %ld. Maps merchant: %@, maps brand: %@", &v10, 0x2Au);
  }

  v9 = objc_alloc_init(PKMerchant);
  [v9 setMapsMerchant:v4];
  [v9 setMapsBrand:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_10009C038()
{
  v0 = objc_opt_self();
  v1 = sub_10009C068(v0, 1);
}

id sub_10009C068(uint64_t a1, int a2)
{
  result = objc_opt_self();
  if (a2)
  {
    if (qword_100924200)
    {
      goto LABEL_8;
    }

    v4 = sub_1005B8F60([PDXPCListener_ApplicationAuthorization alloc]);
    v5 = qword_100924200;
    qword_100924200 = v4;
  }

  result = qword_100924200;
  if (!qword_100924200)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return result;
}

void sub_10009C0D8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_self();
  v4 = sub_10009C068(v3, 0);
  sub_1005B8EF4(v4, v2);
}

void sub_10009C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009C5BC(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 56)) initWithAccessory:*(a1 + 32) inDatabase:*(a1 + 40)];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) type];
  if (v3 == 2)
  {
    v4 = TileAccessoryImage;
    v5 = [*(a1 + 32) accessoryTypeImage];
LABEL_8:
    v6 = v5;
    v7 = [(__objc2_class *)v4 insertAccessory:v5 forBaseAccessory:v2 inDatabase:*(a1 + 40)];

    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (v3 == 1)
  {
    v4 = TileAccessorySpinner;
    v5 = [*(a1 + 32) accessoryTypeSpinner];
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = TileAccessoryButton;
    v5 = [*(a1 + 32) accessoryTypeButton];
    goto LABEL_8;
  }

LABEL_9:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
  v8 = 1;
LABEL_11:

  return v8;
}

void sub_10009CA48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setOrder:a3];
  v6 = [PaymentTransactionAmountModifier insertPaymentTransactionAmountModifier:v5 forPaymentTransactionPID:*(a1 + 48) inDatabase:*(a1 + 32)];

  [*(a1 + 40) safelyAddObject:v6];
}

void sub_10009CDD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v12 = objc_alloc_init(PKPaymentTransactionAmountModifier);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v12 withProperties:v6 values:a4];
  v7 = *(a1 + 48);
  v8 = *(a4 + 8 * [v6 indexOfObject:@"amount"]);
  v9 = *(a4 + 8 * [v6 indexOfObject:@"currency"]);
  v10 = [v6 indexOfObject:@"exponent"];

  v11 = [v7 _postProcessedAmountForDecimalAmount:v8 currency:v9 exponent:{objc_msgSend(*(a4 + 8 * v10), "integerValue")}];
  [v12 setAmount:v11];

  [*(a1 + 40) safelyAddObject:v12];
}

void sub_10009D1C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v11 = objc_alloc_init(PKPaymentTransactionAmountModifier);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v11 withProperties:v6 values:a4];
  v7 = [*(a1 + 48) _postProcessedAmountForDecimalAmount:*(a4 + 8 * objc_msgSend(v6 currency:"indexOfObject:" exponent:{@"amount", *(a4 + 8 * objc_msgSend(v6, "indexOfObject:", @"currency", objc_msgSend(*(a4 + 8 * objc_msgSend(v6, "indexOfObject:", @"exponent", "integerValue")}];
  [v11 setAmount:v7];

  v8 = [v6 count];
  v9 = *(a4 + 8 * v8 - 8);
  v10 = [*(a1 + 40) objectForKey:v9];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableArray);
    [*(a1 + 40) setObject:v10 forKey:v9];
  }

  [v10 addObject:v11];
}

void sub_10009D7FC(id a1, PKPaymentTransactionAmountModifier *a2, id a3)
{
  v4 = a2;
  -[PKPaymentTransactionAmountModifier setOrder:](v4, "setOrder:", [a3 integerValue]);
}

void sub_10009DED0(id a1, PKFeatureApplicationInvitationDetails *a2, id a3)
{
  v4 = a2;
  -[PKFeatureApplicationInvitationDetails setAccountUserAccessLevel:](v4, "setAccountUserAccessLevel:", [a3 integerValue]);
}

void sub_10009E03C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10009E254(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[NSNumber alloc] initWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_10009E500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009E518(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = 1;
  [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v5];
  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v4 = SQLiteCopyFoundationIntegerValueForStatementColumn(a2, 0);
    *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue];
  }
}

void sub_10009E81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10009E83C(uint64_t a1, sqlite3_stmt *a2)
{
  v6 = 1;
  v4 = [*(a1 + 32) predicate];
  [v4 bindToStatement:a2 bindingIndex:&v6];

  result = sub_10035DF04(SQLiteDatabase, a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_10009E8B4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 inDatabase:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_10009EAD8(uint64_t a1, sqlite3_stmt *a2)
{
  v18 = 1;
  [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v18];
  v4 = [*(a1 + 40) count];
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  do
  {
    if (!sub_10035E090(SQLiteDatabase, a2))
    {
      break;
    }

    if (v5)
    {
      v8 = 1;
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = SQLiteCopyFoundationValueForStatementColumn(a2, v8);
        v12 = *v9;
        *v9++ = v11;

        ++v8;
        --v10;
      }

      while (v10);
    }

    v17 = 0;
    v13 = *(a1 + 48);
    v14 = sqlite3_column_int64(a2, 0);
    (*(v13 + 16))(v13, v14, *(a1 + 40), v6, v7++, &v17);
  }

  while ((v17 & 1) == 0);
  if (v6)
  {
    if (v5)
    {
      v15 = v6;
      do
      {
        v16 = *v15;
        *v15++ = 0;

        --v5;
      }

      while (v5);
    }

    free(v6);
  }
}

void sub_10009ED14(uint64_t a1, sqlite3_stmt *a2)
{
  v13 = 1;
  [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v13];
  v4 = [*(a1 + 40) count];
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
  while (sub_10035E090(SQLiteDatabase, a2))
  {
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = SQLiteCopyFoundationValueForStatementColumn(a2, i);
        v10 = v6[i];
        v6[i] = v9;
      }
    }

    (*(*(a1 + 48) + 16))();
    ++v7;
  }

  if (v6)
  {
    if (v5)
    {
      v11 = v6;
      do
      {
        v12 = *v11;
        *v11++ = 0;

        --v5;
      }

      while (v5);
    }

    free(v6);
  }
}

void sub_10009F86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009F884(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

void sub_10009FBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009FBE8(uint64_t a1, sqlite3_stmt *a2)
{
  v8 = 1;
  v4 = [*(a1 + 32) predicate];
  [v4 bindToStatement:a2 bindingIndex:&v8];

  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1000A006C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000A0084(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
  [v2 setValue:v3 forKey:@"applet_subcredential_pid"];

  v4 = [NSNumber numberWithUnsignedInteger:*(a1 + 64)];
  [v2 setValue:v4 forKey:@"ranging_suspension_reasons"];

  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) paymentApplicationPID]);
  [v2 setValue:v5 forKey:@"payment_application_pid"];

  v6 = [*(a1 + 40) initWithPropertyValues:v2 inDatabase:*(a1 + 48)];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*(a1 + 56) + 8) + 40) != 0;
  return v9;
}

void sub_1000A0380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A03A4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  v7 = +[NSNull null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v10 = v7;
    v8 = [*a4 unsignedIntegerValue];
    v7 = v10;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;

  return _objc_release_x1(v8, v7);
}

void sub_1000A0648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A066C(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  v7 = +[NSNull null];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v10 = v7;
    v8 = [*a4 unsignedIntegerValue];
    v7 = v10;
  }

  *(*(*(a1 + 32) + 8) + 24) = v8;

  return _objc_release_x1(v8, v7);
}

id sub_1000A1280(uint64_t a1, void *a2)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "INFamilyDidChangeNotification notification fired", v5, 2u);
  }

  return [a2 ensureZoneShareIntegrity];
}

id sub_1000A140C(uint64_t a1)
{
  result = [*(a1 + 32) _queue_canInvalidateContainer];
  if (result)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: No accounts remaining, invalidating.", v4, 2u);
    }

    return [*(a1 + 32) invalidateCloudStoreWithOperationGroupNameSuffix:*(a1 + 40) clearCache:*(a1 + 48) completion:0];
  }

  return result;
}

void sub_1000A1D68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1E44;
  block[3] = &unk_10083C4C0;
  block[4] = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_1000A1E44(uint64_t a1)
{
  [*(a1 + 32) setAccountChangedNotificationReceived:0];
  [*(a1 + 40) supportsDeviceToDeviceEncryption];
  PKSharedCacheSetBoolForKey();
  v2 = [*(a1 + 40) accountStatus];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v2 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      *buf = 138412290;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: Cannot setup container with error: %@", buf, 0xCu);
    }

    [*(a1 + 32) setNextExpectedState:3];
    [*(a1 + 32) setOperationError:*(a1 + 48)];
LABEL_16:
    [*(a1 + 32) _queue_setContainerState:3 operationGroupNameSuffix:PKCloudStoreOperationGroupSuffixCKAccountChangedNotification retryCount:0 completion:0];
    return;
  }

  if (![v3 supportsDeviceToDeviceEncryption])
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error: Cannot setup container because account does not support device to device encryption (HSA2)", buf, 2u);
    }

    [*(a1 + 32) setNextExpectedState:3];
    v9 = *(a1 + 32);
    v10 = [v9 errorWithCode:-4005 description:@"Cannot setup container because account does not support device to device encryption"];
    [v9 setOperationError:v10];

    goto LABEL_16;
  }

  if ([*(a1 + 32) cloudContainerSetupInProgress])
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A cloud store initialization is already in progess.", buf, 2u);
    }
  }

  else
  {
    v11 = [*(a1 + 32) nextExpectedState];
    v12 = PKLogFacilityTypeGetObject();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11 == 15)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The container is already setup; no need to initalize it again.", buf, 2u);
      }
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "The user supports device to device encryption. Trying to setup container.", buf, 2u);
      }

      v14 = *(a1 + 32);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000A214C;
      v15[3] = &unk_10083DFE8;
      v15[4] = v14;
      [v14 initialCloudDatabaseSetupWithOperationGroupNameSuffix:PKCloudStoreOperationGroupSuffixCKAccountChangedNotification completion:v15];
    }
  }
}

void sub_1000A214C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: Finished cloud database setup with success %{public}@, error: %@", &v9, 0x16u);
  }

  if (a2)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 cloudStoreContainerShouldUnscheduleAllBackgroundActivities:*(a1 + 32)];

    [*(a1 + 32) _updateFetchTaskScheduledActivityIfNeccessary];
    [*(a1 + 32) _updateUnarchivedTransactionsScheduledActivityIfNeccessary];
  }
}

void sub_1000A29B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A2AB0;
  v15[3] = &unk_100841B50;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16 = v5;
  v17 = v8;
  v10 = v9;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v18 = v10;
  v21 = v11;
  v19 = v6;
  v20 = v12;
  v13 = v6;
  v14 = v5;
  dispatch_async(v7, v15);
}

id sub_1000A2AB0(uint64_t a1)
{
  [*(a1 + 32) supportsDeviceToDeviceEncryption];
  PKSharedCacheSetBoolForKey();
  v2 = [*(a1 + 32) accountStatus];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v2 == 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: Cannot setup container with error: %@", &v15, 0xCu);
    }

    [*(a1 + 40) setNextExpectedState:3];
    [*(a1 + 40) setOperationError:*(a1 + 56)];
    return [*(a1 + 40) _queue_setContainerState:3 operationGroupNameSuffix:*(a1 + 48) retryCount:*(a1 + 72) completion:*(a1 + 64)];
  }

  if (![v3 supportsDeviceToDeviceEncryption])
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error: Cannot setup container because account does not support device to device encryption", &v15, 2u);
    }

    [*(a1 + 40) setNextExpectedState:3];
    v13 = *(a1 + 40);
    v14 = [v13 errorWithCode:-4005 description:@"Cannot setup container because account does not support device to device encryption"];
    [v13 setOperationError:v14];

    return [*(a1 + 40) _queue_setContainerState:3 operationGroupNameSuffix:*(a1 + 48) retryCount:*(a1 + 72) completion:*(a1 + 64)];
  }

  [*(a1 + 40) setNextExpectedState:5];
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);

  return [v7 _queue_setContainerState:5 operationGroupNameSuffix:v8 retryCount:v9 completion:v10];
}

void sub_1000A32F4(uint64_t a1, void *a2, void *a3)
{
  v51 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 allObjects];
  v8 = [v7 pk_createArrayByApplyingBlock:&stru_100841BB8];

  if ([v8 count])
  {
    [*(a1 + 32) reportContainerChangeSignpostEventType:34 stateName:0 objectNames:v8 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
  }

  objc_autoreleasePoolPop(v6);
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v62 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v63;
    v48 = PKCloudTransactionRecordType;
    v46 = PKCloudStoreOperationGroupPushTriggered;
    v45 = PKCloudStoreOperationGroupSuffixRecordFetch;
    v49 = a1;
    v50 = *v63;
    do
    {
      v12 = 0;
      v52 = v10;
      do
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v62 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 recordID];
        v16 = [v15 recordName];

        v17 = [v13 recordType];
        if ([*(a1 + 32) _isTransactionItemFromRecordType:v17])
        {
          v54 = v14;
          v18 = +[PKPaymentTransaction recordNamePrefix];
          v55 = v16;
          v19 = [v16 stringByReplacingOccurrencesOfString:v18 withString:&stru_10086D930];

          v20 = *(a1 + 32);
          v21 = [v13 recordID];
          v22 = [v20 _transactionSourceIdentifierForTransactionRecordID:v21 recordType:v17 databaseIdentifier:v51];

          if (v22)
          {
            v23 = [*(a1 + 32) dataSource];
            v24 = [v23 transactionWithServiceIdentifier:v19 transactionSourceIdentifier:v22];

            [v24 addUpdateReasons:16];
            v25 = PKLogFacilityTypeGetObject();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
            if (v24)
            {
              if (v26)
              {
                v27 = [v24 serviceIdentifier];
                *buf = 138412546;
                v67 = v24;
                v68 = 2114;
                v69 = v27;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Deleting transaction in local database %@ with service identifier %{public}@", buf, 0x16u);
              }

              v28 = [*(a1 + 32) dataSource];
              v29 = [v28 insertOrUpdatePaymentTransaction:v24 withTransactionSourceIdentifier:v22 transactionArchive:0 originDeviceID:0 insertionMode:2 performTruncation:1];

              v30 = +[PKPaymentTransaction recordNamePrefix];
              v31 = [NSString stringWithFormat:@"%@%@", v30, v55];

              v60[0] = _NSConcreteStackBlock;
              v60[1] = 3221225472;
              v60[2] = sub_1000A3BE8;
              v60[3] = &unk_100841BE0;
              v61 = v19;
              if (([obj pk_hasObjectPassingTest:v60] & 1) == 0)
              {
                v32 = v17;
                v33 = v32;
                if (v32 != v48)
                {
                  if (v32 && v48)
                  {
                    v47 = [v32 isEqualToString:?];

                    if (!v47)
                    {
                      goto LABEL_43;
                    }

LABEL_39:
                    v43 = [v13 recordID];
                    v44 = [v43 zoneID];
                    v33 = [v44 zoneName];

                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v67 = v31;
                      v68 = 2114;
                      v69 = v33;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Deleting transaction device record %{public}@ in zone %{public}@", buf, 0x16u);
                    }

                    [*(v49 + 32) removeRecordWithRecordName:v31 zoneName:v33 groupName:v46 groupNameSuffix:v45 qualityOfService:17 completion:0];
                    v10 = v52;
                  }

                  goto LABEL_43;
                }

                goto LABEL_39;
              }

LABEL_43:

              a1 = v49;
            }

            else
            {
              if (v26)
              {
                *buf = 138543362;
                v67 = v19;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Cannot delete transaction. No payment pass in local database with service identifier %{public}@", buf, 0xCu);
              }

              v31 = v25;
            }
          }

          else
          {
            v24 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v67 = 0;
              v68 = 2114;
              v69 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Cannot delete transaction. No transactionSourceIdentifier %@ in local database with service identifier %{public}@", buf, 0x16u);
            }
          }

          v11 = v50;

          v14 = v54;
          v16 = v55;
          goto LABEL_46;
        }

        if ([*(a1 + 32) _isAccountEventFromRecordType:v17])
        {
          v34 = [PKAccountEvent eventIdentifierFromRecordName:v16];
          v35 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v67 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Deleting event with identifier %@", buf, 0xCu);
          }

          v36 = *(*(a1 + 32) + 256);
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1000A3C6C;
          v58[3] = &unk_10083C470;
          v59 = v34;
          v19 = v34;
          [v36 deleteEventWithIdentifier:v19 completion:v58];
          v37 = v59;
        }

        else
        {
          if (![*(a1 + 32) _isAccountFromRecordType:v17])
          {
            if (![*(a1 + 32) _isIssuerMessagingFlagFromRecordType:v17])
            {
              goto LABEL_47;
            }

            v19 = [PKIssuerMessagingFlag issuerMessagingFlagIdentifierFromRecordName:v16];
            v41 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v67 = v19;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Deleting issuer messaging flag with identifier %@", buf, 0xCu);
            }

            v42 = [*(a1 + 32) dataSource];
            [v42 deleteIssuerMessagingFlagWithIdentifier:v19];

            +[PKEngagementEventTrigger fireIssuerMessagingFlagsChangedEvent];
            goto LABEL_28;
          }

          v38 = [PKAccount accountIdentifierFromRecordName:v16];
          v39 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v67 = v38;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Deleting account with identifier %@", buf, 0xCu);
          }

          v40 = *(*(a1 + 32) + 256);
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_1000A3D18;
          v56[3] = &unk_10083D5A8;
          v57 = v38;
          v19 = v38;
          [v40 deleteAccountWithIdentifier:v19 completion:v56];
          v37 = v57;
        }

LABEL_28:
        v10 = v52;
LABEL_46:

LABEL_47:
        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v10);
  }
}

id sub_1000A3B98(id a1, PKCloudDeletedRecord *a2)
{
  v2 = [(PKCloudDeletedRecord *)a2 recordID];
  v3 = [v2 recordName];

  return v3;
}

uint64_t sub_1000A3BE8(uint64_t a1, void *a2)
{
  v3 = [a2 recordName];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

void sub_1000A3C6C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleted event with identifier %@", &v4, 0xCu);
  }
}

void sub_1000A3D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = v3;
      v7 = "Failed to delete account with identifier %@, error: %@";
      v8 = v4;
      v9 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v11 = 138412290;
    v12 = v10;
    v7 = "Deleted account with identifier %@";
    v8 = v4;
    v9 = 12;
    goto LABEL_6;
  }
}

void sub_1000A4458(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 containerManager];
  v9 = [v8 databaseForIdentifier:v5];

  v10 = [[PDCloudStoreCounterpartRecordParser alloc] initWithDataSource:*(a1 + 32)];
  [v10 addRecords:v7];

  if (([*(a1 + 40) storeChangesInDatabase] & 1) != 0 || objc_msgSend(*(a1 + 40), "returnRecords"))
  {
    v11 = *(a1 + 48);
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000A4CC0;
    v100[3] = &unk_100841C30;
    v100[4] = *(a1 + 32);
    v12 = &v101;
    v13 = v10;
    v101 = v13;
    v102 = *(a1 + 40);
    v14 = v5;
    v103 = v14;
    v104 = *(a1 + 56);
    [v11 addOperation:v100];
    v15 = *(a1 + 48);
    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_1000A4E04;
    v95[3] = &unk_100841C30;
    v95[4] = *(a1 + 32);
    v16 = v13;
    v96 = v16;
    v97 = *(a1 + 40);
    v17 = v14;
    v98 = v17;
    v99 = *(a1 + 56);
    [v15 addOperation:v95];
    v18 = *(a1 + 48);
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000A4F48;
    v90[3] = &unk_100841C30;
    v90[4] = *(a1 + 32);
    v19 = v16;
    v91 = v19;
    v92 = *(a1 + 40);
    v20 = v17;
    v93 = v20;
    v94 = *(a1 + 56);
    [v18 addOperation:v90];
    v21 = *(a1 + 48);
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000A508C;
    v85[3] = &unk_100841C30;
    v85[4] = *(a1 + 32);
    v22 = v19;
    v86 = v22;
    v87 = *(a1 + 40);
    v23 = v20;
    v88 = v23;
    v89 = *(a1 + 56);
    [v21 addOperation:v85];
    v24 = *(a1 + 48);
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_1000A51D0;
    v80[3] = &unk_100841C30;
    v80[4] = *(a1 + 32);
    v25 = v22;
    v81 = v25;
    v82 = *(a1 + 40);
    v26 = v23;
    v83 = v26;
    v84 = *(a1 + 56);
    [v24 addOperation:v80];
    v27 = *(a1 + 48);
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000A5314;
    v74[3] = &unk_100841C80;
    v74[4] = *(a1 + 32);
    v28 = v25;
    v75 = v28;
    v76 = *(a1 + 40);
    v29 = v26;
    v30 = *(a1 + 80);
    v77 = v29;
    v79 = v30;
    v78 = *(a1 + 56);
    [v27 addOperation:v74];
    v31 = *(a1 + 48);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000A54D8;
    v66[3] = &unk_100841CD0;
    v66[4] = *(a1 + 32);
    v32 = v28;
    v67 = v32;
    v68 = *(a1 + 40);
    v33 = v29;
    v69 = v33;
    v34 = *(a1 + 64);
    v35 = *(a1 + 88);
    v36 = *(a1 + 72);
    v70 = v34;
    v72 = v36;
    v73 = v35;
    v71 = *(a1 + 56);
    [v31 addOperation:v66];
    v37 = *(a1 + 48);
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000A57B4;
    v61[3] = &unk_100841C30;
    v61[4] = *(a1 + 32);
    v38 = v32;
    v62 = v38;
    v39 = v33;
    v63 = v39;
    v64 = *(a1 + 40);
    v65 = *(a1 + 56);
    [v37 addOperation:v61];
    if (PKIssuerMessagingFlagsEnabled())
    {
      v40 = *(a1 + 48);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1000A5910;
      v56[3] = &unk_100841C30;
      v56[4] = *(a1 + 32);
      v57 = v38;
      v58 = v39;
      v59 = *(a1 + 40);
      v60 = *(a1 + 56);
      [v40 addOperation:v56];
    }

    v41 = &v102;
  }

  else
  {
    if ([*(a1 + 40) requestType] != 6)
    {
      goto LABEL_7;
    }

    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000A5A6C;
    v53[3] = &unk_100841D20;
    v53[4] = *(a1 + 32);
    v12 = &v54;
    v42 = v9;
    v54 = v42;
    v41 = v55;
    v43 = v5;
    v44 = *(a1 + 80);
    v55[0] = v43;
    v55[1] = v44;
    [v10 enumerateKeysAndObjectsForItemType:1 usingBlock:v53];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000A5DEC;
    v51[3] = &unk_100841D70;
    v51[4] = *(a1 + 32);
    v45 = v42;
    v52 = v45;
    [v10 enumerateKeysAndObjectsForItemType:9 usingBlock:v51];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_1000A61C0;
    v49[3] = &unk_100841D70;
    v49[4] = *(a1 + 32);
    v46 = v45;
    v50 = v46;
    [v10 enumerateKeysAndObjectsForItemType:10 usingBlock:v49];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000A6594;
    v47[3] = &unk_100841D70;
    v47[4] = *(a1 + 32);
    v48 = v46;
    [v10 enumerateKeysAndObjectsForItemType:12 usingBlock:v47];
  }

LABEL_7:
}

void sub_1000A4CC0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A4DB8;
  v15[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 _processShareWithRecordParser:v9 request:v10 databaseIdentifier:v11 completion:v15];
}

uint64_t sub_1000A4DB8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A4E04(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A4EFC;
  v15[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 _processZoneShareLockWithRecordParser:v9 request:v10 databaseIdentifier:v11 completion:v15];
}

uint64_t sub_1000A4EFC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A4F48(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A5040;
  v15[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 _processRecurringPaymentsWithRecordParser:v9 request:v10 databaseIdentifier:v11 completion:v15];
}

uint64_t sub_1000A5040(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A508C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A5184;
  v15[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 _processCounterpartImageDataWithRecordParser:v9 request:v10 databaseIdentifier:v11 completion:v15];
}

uint64_t sub_1000A5184(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A51D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A52C8;
  v15[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 _processPendingRequestsWithRecordParser:v9 request:v10 databaseIdentifier:v11 completion:v15];
}

uint64_t sub_1000A52C8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A5314(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A5460;
  v18[3] = &unk_100841C58;
  v17 = *(a1 + 32);
  v10 = *(&v17 + 1);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v19 = v17;
  v20 = v13;
  v14 = *(a1 + 64);
  v24 = *(a1 + 72);
  v22 = v6;
  v23 = v7;
  v21 = v14;
  v15 = v6;
  v16 = v7;
  [v17 _fetchMissingTransactionRecordsWithRecordParser:v10 request:v8 databaseIdentifier:v9 completion:v18];
}

void sub_1000A5460(uint64_t a1)
{
  v2 = [*(a1 + 32) _parseTransactionRecords:*(a1 + 40) request:*(a1 + 48) databaseIdentifier:*(a1 + 56) updateReasons:*(a1 + 88)];
  [*(a1 + 64) applyCloudRecordArray:v2];
  (*(*(a1 + 80) + 16))();
}

void sub_1000A54D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000A5648;
  v20[3] = &unk_100841CA8;
  v11 = *(a1 + 88);
  v26 = *(a1 + 80);
  v19 = *(a1 + 32);
  v12 = *(&v19 + 1);
  v13 = *(a1 + 56);
  v14 = *(a1 + 48);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v21 = v19;
  v22 = v15;
  v27 = *(a1 + 88);
  v16 = *(a1 + 72);
  v24 = v6;
  v25 = v7;
  v23 = v16;
  v17 = v6;
  v18 = v7;
  [v19 _fetchMissingAccountEventsWithRecordParser:v12 request:v8 databaseIdentifier:v9 carriedOverRecordsByDatabaseIdentifier:v10 updateReasons:v11 completion:v20];
}

void sub_1000A5648(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 88) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) storeChangesInDatabase];
  v9 = [*(a1 + 56) returnRecords];
  v10 = *(a1 + 96);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000A5768;
  v11[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v14 = *(a1 + 80);
  v13 = *(a1 + 72);
  [v5 _parseAccountEventsFromRecordParser:v6 databaseIdentifier:v7 shouldUpdateLocalDatabase:v8 shouldReturn:v9 updateReasons:v10 completion:v11];
}

uint64_t sub_1000A5768(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A57B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 56) storeChangesInDatabase];
  v12 = [*(a1 + 56) returnRecords];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A58C4;
  v16[3] = &unk_100841C08;
  v13 = *(a1 + 64);
  v18 = v6;
  v19 = v7;
  v17 = v13;
  v14 = v6;
  v15 = v7;
  [v8 _parseAccountsFromRecordParser:v9 databaseIdentifier:v10 shouldUpdateLocalDatabase:v11 shouldReturn:v12 completion:v16];
}

uint64_t sub_1000A58C4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A5910(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = [*(a1 + 56) storeChangesInDatabase];
  v12 = [*(a1 + 56) returnRecords];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000A5A20;
  v16[3] = &unk_100841C08;
  v13 = *(a1 + 64);
  v18 = v6;
  v19 = v7;
  v17 = v13;
  v14 = v6;
  v15 = v7;
  [v8 _parseMessagesFromRecordParser:v9 databaseIdentifier:v10 shouldUpdateLocalDatabase:v11 shouldReturn:v12 completion:v16];
}

uint64_t sub_1000A5A20(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_1000A5A6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A5B40;
  v8[3] = &unk_100841CF8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = *(a1 + 48);
  v11 = v5;
  v12 = *(a1 + 56);
  v7 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v8];
}

void sub_1000A5B40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [*(a1 + 32) containerManager];
  v9 = [v6 firstObject];
  v10 = [v9 recordID];
  v11 = [v10 zoneID];
  v12 = [v8 cloudStoreZoneForZoneID:v11 inContainerDatabase:*(a1 + 40)];

  v13 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v14 = [*(a1 + 32) _transactionSourceIdentifierForTransactionCloudStoreRecord:v13 databaseIdentifier:*(a1 + 48)];
  v15 = [*(a1 + 32) dataSource];
  v16 = [v15 transactionWithServiceIdentifier:*(a1 + 56) transactionSourceIdentifier:v14];

  if (!v16)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 56);
      *buf = 138543618;
      v30 = v18;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error finding a local transaction with service identifier: %{public}@ in zone %{public}@ aftering uploading it to CloudKit.", buf, 0x16u);
    }
  }

  [v16 addUpdateReasons:*(a1 + 64)];
  if ([*(a1 + 32) _isCloudStoreZoneThePrimaryZoneForCurrentUser:v12 containerDatabase:*(a1 + 40)])
  {
    [*(a1 + 32) dataSource];
    v28 = v12;
    v19 = v13;
    v20 = v6;
    v21 = v5;
    v23 = v22 = v7;
    v24 = [v16 serviceIdentifier];
    v25 = [v23 transactionArchiveForTransactionWithServiceIdentifier:v24 transactionSourceIdentifier:v14];

    v7 = v22;
    v5 = v21;
    v6 = v20;
    v13 = v19;
    v12 = v28;
    [v25 insertOrUpdateArchiveLocationWithCloudStoreZone:v28 isArchived:1 insertionMode:0];
  }

  else
  {
    v25 = 0;
  }

  v26 = [*(a1 + 32) dataSource];
  v27 = [v26 insertOrUpdatePaymentTransaction:v16 withTransactionSourceIdentifier:v14 transactionArchive:v25 originDeviceID:0 insertionMode:1 performTruncation:0];

  objc_autoreleasePoolPop(v7);
}

void sub_1000A5DEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A5E7C;
  v5[3] = &unk_100841D48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000A5E7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 firstObject];
  v9 = [*(a1 + 32) containerManager];
  v10 = [v8 recordID];
  v11 = [v10 zoneID];
  v12 = [v9 cloudStoreZoneForZoneID:v11 inContainerDatabase:*(a1 + 40)];

  v13 = [v6 firstObject];
  v14 = [v13 recordID];
  v15 = [v14 recordName];
  v16 = [PKPeerPaymentRecurringPayment recurringPaymentIdentifierFromRecordName:v15];

  if (v16)
  {
    v17 = [*(a1 + 32) dataSource];
    v18 = [v17 peerPaymentRecurringPaymentWithIdentifier:v16];

    if (v18)
    {
      v27 = v7;
      v19 = [*(a1 + 32) dataSource];
      v20 = [v19 transactionArchiveForRecurringPayment:v18];

      [v20 insertOrUpdateArchiveLocationWithCloudStoreZone:v12 isArchived:1 insertionMode:0];
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v8 recordID];
        [v22 recordName];
        v23 = v26 = v5;
        *buf = 138543618;
        v29 = v23;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Record %{public}@ uploaded, updating archive %@", buf, 0x16u);

        v5 = v26;
      }

      v24 = [*(a1 + 32) dataSource];
      [v24 updateTransactionArchive:v20 forRecurringPayment:v18];

      v7 = v27;
    }

    else
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No recurring payment on device with identifier %@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v18 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v8 recordID];
    v20 = [v25 recordName];
    *buf = 138543362;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Couldn't get identifier from record %{public}@", buf, 0xCu);

LABEL_10:
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000A61C0(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A6250;
  v5[3] = &unk_100841D48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000A6250(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [v6 firstObject];
  v9 = [*(a1 + 32) containerManager];
  v10 = [v8 recordID];
  v11 = [v10 zoneID];
  v12 = [v9 cloudStoreZoneForZoneID:v11 inContainerDatabase:*(a1 + 40)];

  v13 = [v6 firstObject];
  v14 = [v13 recordID];
  v15 = [v14 recordName];
  v16 = [PKPeerPaymentCounterpartImageData counterpartImageDataIdentifierFromRecordName:v15];

  if (v16)
  {
    v17 = [*(a1 + 32) dataSource];
    v18 = [v17 peerPaymentCounterpartImageDataWithIdentifier:v16];

    if (v18)
    {
      v27 = v7;
      v19 = [*(a1 + 32) dataSource];
      v20 = [v19 transactionArchiveForCounterpartImageData:v18];

      [v20 insertOrUpdateArchiveLocationWithCloudStoreZone:v12 isArchived:1 insertionMode:0];
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v8 recordID];
        [v22 recordName];
        v23 = v26 = v5;
        *buf = 138543618;
        v29 = v23;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Record %{public}@ uploaded, updating archive %@", buf, 0x16u);

        v5 = v26;
      }

      v24 = [*(a1 + 32) dataSource];
      [v24 updateTransactionArchive:v20 forCounterpartImageData:v18];

      v7 = v27;
    }

    else
    {
      v20 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No counterpart image data on device with identifier %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v18 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v8 recordID];
    v20 = [v25 recordName];
    *buf = 138543362;
    v29 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Couldn't get identifier from record %{public}@", buf, 0xCu);

LABEL_10:
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000A6594(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A6624;
  v5[3] = &unk_100841D48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000A6624(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 firstObject];
  v8 = [*(a1 + 32) containerManager];
  v9 = [v7 recordID];
  v10 = [v9 zoneID];
  v11 = [v8 cloudStoreZoneForZoneID:v10 inContainerDatabase:*(a1 + 40)];

  v12 = [v5 firstObject];
  v13 = [v12 recordID];
  v14 = [v13 recordName];
  v15 = [PKPeerPaymentPendingRequest requestTokenFromRecordName:v14];

  if (v15)
  {
    v16 = [*(a1 + 32) dataSource];
    v33 = v15;
    v17 = [NSArray arrayWithObjects:&v33 count:1];
    v18 = [v16 peerPaymentPendingRequestsForRequestTokens:v17];
    v19 = [v18 firstObject];

    if (v19)
    {
      v20 = [*(a1 + 32) dataSource];
      v21 = [v20 transactionArchiveForPendingRequest:v19];

      [v21 insertOrUpdateArchiveLocationWithCloudStoreZone:v11 isArchived:1 insertionMode:0];
      v22 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v7 recordID];
        [v23 recordName];
        v24 = v27 = v6;
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Record %{public}@ uploaded, updating archive %@", buf, 0x16u);

        v6 = v27;
      }

      v25 = [*(a1 + 32) dataSource];
      [v25 updateTransactionArchive:v21 forPendingRequest:v19];
    }

    else
    {
      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No pending request on device with request token %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v7 recordID];
    v21 = [v26 recordName];
    *buf = 138543362;
    v30 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Couldn't get request token from record %{public}@", buf, 0xCu);

LABEL_10:
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000A699C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [[PDCloudStoreCounterpartRecordParser alloc] initWithDataSource:*(a1 + 32)];
  [v7 addRecords:v6];

  if ([*(a1 + 40) returnRecords])
  {
    v8 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A6AC8;
    v9[3] = &unk_100841C30;
    v9[4] = *(a1 + 32);
    v10 = v7;
    v11 = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 56);
    [v8 addOperation:v9];
  }
}

void sub_1000A6AC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A6BC0;
  v15[3] = &unk_100841C08;
  v12 = *(a1 + 64);
  v17 = v6;
  v18 = v7;
  v16 = v12;
  v13 = v6;
  v14 = v7;
  [v8 _processZoneShareLockWithRecordParser:v9 request:v10 databaseIdentifier:v11 completion:v15];
}

uint64_t sub_1000A6BC0(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) applyCloudRecordArray:a2];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t sub_1000A6C0C(uint64_t a1)
{
  [*(a1 + 32) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 40) error:0];
  result = *(a1 + 64);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000A7DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1000A7E10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 72);
  if (v4 > 9)
  {
    goto LABEL_11;
  }

  if (((1 << v4) & 0x386) != 0)
  {
LABEL_3:
    (*(v3 + 2))(v3, 0, 0);
    goto LABEL_17;
  }

  if (((1 << v4) & 0x70) == 0)
  {
    if (v4 == 3)
    {
      v12 = *(*(a1 + 32) + 272);
      if (v12)
      {
        if ([v12 role] == 1)
        {
          *(*(*(a1 + 64) + 8) + 24) = 2;
          v32[0] = _NSConcreteStackBlock;
          v32[1] = 3221225472;
          v32[2] = sub_1000A8294;
          v32[3] = &unk_10083E558;
          v13 = *(a1 + 32);
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          v33 = v14;
          v35 = v15;
          v34 = v3;
          [v13 _queue_familyMembersWithCompletion:v32];

          goto LABEL_17;
        }

        v26 = [NSString stringWithFormat:@"Cannot share invitation for receipient %@ because the peer payment account is not a participant", *(a1 + 40)];
        v27 = *(*(a1 + 56) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        v24 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        v29 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543362;
        v37 = v29;
      }

      else
      {
        v21 = [NSString stringWithFormat:@"Cannot share invitation for receipient %@ because the peer payment account is not defined", *(a1 + 40)];
        v22 = *(*(a1 + 56) + 8);
        v23 = *(v22 + 40);
        *(v22 + 40) = v21;

        v24 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
LABEL_23:

          goto LABEL_3;
        }

        v25 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543362;
        v37 = v25;
      }

      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      goto LABEL_23;
    }

LABEL_11:
    if (v4)
    {
      goto LABEL_17;
    }

    goto LABEL_3;
  }

  *(*(*(a1 + 64) + 8) + 24) = 3;
  v5 = [*(*(a1 + 32) + 296) objectForKey:*(a1 + 48)];
  v6 = [v5 accountUsers];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000A84E4;
  v30[3] = &unk_100841E38;
  v31 = *(a1 + 40);
  v7 = [v6 pk_anyObjectPassingTest:v30];

  if (v7)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = [v7 appleID];
    [v8 pk_safelyAddObject:v9];

    [v8 pk_safelyAddObject:*(a1 + 40)];
    v10 = [v7 addressableHandles];
    [v8 unionSet:v10];

    v11 = [v8 copy];
    (*(v3 + 2))(v3, 1, v11);
  }

  else
  {
    v16 = [NSString stringWithFormat:@"Cannot share invitation for receipient %@ because they are not an account user", *(a1 + 40)];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138412290;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    (*(v3 + 2))(v3, 0, 0);
  }

LABEL_17:
}

void sub_1000A8294(uint64_t a1, void *a2)
{
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000A84D8;
  v20 = &unk_100841E10;
  v21 = *(a1 + 32);
  v4 = [a2 pk_firstObjectPassingTest:&v17];
  v5 = v4;
  if (!v4)
  {
    v8 = [NSString stringWithFormat:@"Cannot share invitation for receipient %@ because they are not in the family", *(a1 + 32), v17, v18, v19, v20];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543362;
      v23 = v12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

LABEL_9:

    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  if (([v4 canSharePeerPaymentAccount] & 1) == 0)
  {
    v13 = [NSString stringWithFormat:@"Cannot share invitation for receipient %@ because they are not eligible to share a peer payment account", *(a1 + 32), v17, v18, v19, v20];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543362;
      v23 = v16;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 40);
  v7 = [NSSet setWithObject:*(a1 + 32)];
  (*(v6 + 16))(v6, 1, v7);

LABEL_10:
}

id sub_1000A84E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCurrentUser])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 hasHandle:*(a1 + 32)];
  }

  return v4;
}

void sub_1000A8534(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (!v5)
    {
      v6 = [NSSet setWithObject:*(a1 + 40)];
    }

    v7 = [*(a1 + 32) containerManager];
    v8 = [v7 databaseForScope:2];

    v9 = [*(a1 + 32) containerManager];
    v10 = [v9 cloudStoreZoneForZoneName:*(a1 + 48) inContainerDatabase:v8];

    if (v10)
    {
      v11 = *(a1 + 40);
      v22 = *(a1 + 32);
      v12 = *(a1 + 48);
      v13 = *(*(*(a1 + 72) + 8) + 24);
      v14 = PKCloudStoreOperationGroupSharingSetup;
      v15 = PKCloudStoreOperationGroupSuffixShareInvitation;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000A87EC;
      v23[3] = &unk_100841E88;
      v24 = *(a1 + 56);
      [v22 createShareInvitationForRecipientHandle:v11 zoneName:v12 permission:v13 operationGroupName:v14 operationGroupNameSuffix:v15 qualityOfService:17 completion:v23];
      v16 = v24;
    }

    else
    {
      v16 = [NSString stringWithFormat:@"There is no cloud store zone with name %@ that can be shared with %@, recipientAliases: %@", *(a1 + 48), *(a1 + 40), v6];
      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v20 = *(a1 + 56);
      v21 = [*(a1 + 32) errorWithCode:-4001 description:v16];
      (*(v20 + 16))(v20, 0, 0, v21);
    }
  }

  else
  {
    v17 = *(a1 + 56);
    v18 = [*(a1 + 32) errorWithCode:-4014 description:*(*(*(a1 + 64) + 8) + 40)];
    (*(v17 + 16))(v17, 0, 0, v18);
  }
}

void sub_1000A8974(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        if ([v8 hasAppleIDAlias:*(a1 + 32)])
        {
          v9 = *(a1 + 40);
          v10 = [v8 appleIDAliases];
          [v9 unionSet:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v5);
  }

  v11 = *(a1 + 72);
  v12 = v11 > 6;
  v13 = (1 << v11) & 0x74;
  if (v12 || v13 == 0)
  {
    goto LABEL_35;
  }

  [*(*(a1 + 48) + 296) objectForKey:*(a1 + 56)];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = v40 = 0u;
  v15 = [v36 accountUsers];
  v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = v16;
  v18 = *v38;
  while (2)
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v38 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v37 + 1) + 8 * j);
      v21 = [v20 appleID];
      v22 = *(a1 + 32);
      v23 = v21;
      v24 = v22;
      v25 = v24;
      if (v23 == v24)
      {
      }

      else
      {
        if (v23)
        {
          v26 = v24 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (v26)
        {

LABEL_28:
          if (![v20 hasHandle:*(a1 + 32)])
          {
            continue;
          }

          goto LABEL_29;
        }

        v27 = [v23 isEqualToString:v24];

        if ((v27 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      v28 = v20;
      if (v28)
      {
        v29 = v28;
        v30 = *(a1 + 40);
        v31 = [v28 appleID];
        [v30 addObject:v31];

        v32 = *(a1 + 40);
        v33 = [v29 addressableHandles];
        [v32 unionSet:v33];

        goto LABEL_34;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_34:

LABEL_35:
  v34 = *(a1 + 64);
  v35 = [*(a1 + 40) copy];
  (*(v34 + 16))(v34, v35);
}

id sub_1000A8E18(uint64_t a1)
{
  [*(a1 + 32) ensureZoneShareIntegrity];
  [*(a1 + 32) _updateFetchTaskScheduledActivityIfNeccessary];
  v2 = *(a1 + 32);

  return [v2 _updateUnarchivedTransactionsScheduledActivityIfNeccessary];
}

void sub_1000A998C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000A9A70;
  v13[3] = &unk_100841F40;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 initialCloudDatabaseSetupWithOperationGroupNameSuffix:v9 completion:v13];
}

void sub_1000A9A70(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not proactively fetching cloudkit transaction changes for transactionSourceIdentifier %@ because the cloud store failed to initalize.", &v8, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000A9B4C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) zoneName];
  if (v8)
  {
    v9 = [*(a1 + 32) zoneName];
    v39 = v9;
    v10 = [NSArray arrayWithObjects:&v39 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 40) reportContainerChangeIntervalBeginEventWithType:37 stateName:0 objectNames:v10 operationGroupName:0 operationGroupNameSuffix:*(a1 + 48)];
  v12 = [*(a1 + 40) containerManager];
  v13 = [v12 fetchTimestampForCloudStoreStore:*(a1 + 32)];

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 56);
    v16 = [*(a1 + 64) count];
    v17 = *(a1 + 64);
    *buf = 138413058;
    v32 = v15;
    v33 = 2114;
    v34 = v13;
    v35 = 2048;
    v36 = v16;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Proactively fetching cloudkit transaction changes for transactionSourceIdentifier %@. oldestFetchDate: %{public}@. In %lu zones: %@", buf, 0x2Au);
  }

  v18 = [(PDCloudStoreRecordsRequest *)[PDApplePayCloudStoreRecordsRequest alloc] initWithRequestType:0 storeChanges:1 returnRecords:0 qualityOfService:17 groupName:*(a1 + 72) groupNameSuffix:*(a1 + 48)];
  [(PDCloudStoreRecordsRequest *)v18 setUseLastChangeToken:1];
  [(PDCloudStoreRecordsRequest *)v18 setShouldSaveToken:1];
  if (*(a1 + 32))
  {
    [(PDCloudStoreRecordsRequest *)v18 setCloudStoreZone:?];
    v19 = [*(a1 + 40) containerManager];
    v20 = [v19 databaseForCloudStoreZone:*(a1 + 32)];
    [(PDCloudStoreRecordsRequest *)v18 setContainerDatabase:v20];
  }

  v21 = *(a1 + 40);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000A9E24;
  v26[3] = &unk_100841F90;
  v22 = *(a1 + 80);
  v29 = v7;
  v30 = v22;
  v26[4] = v21;
  v27 = v11;
  v28 = v6;
  v23 = v6;
  v24 = v7;
  v25 = v11;
  [v21 executeRecordsRequest:v18 completion:v26];
}

void sub_1000A9E24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 64) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  objc_storeStrong(v6, v9);
  v10 = a3;
  [*(a1 + 32) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 40) error:v10];
  (*(*(a1 + 56) + 16))();
}

void sub_1000A9EA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) workQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A9F78;
  v10[3] = &unk_100841FE0;
  v11 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v6, v10);
}

id sub_1000A9F78(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Proactive cloudkit transaction change fetch completed for transactionSourceIdentifier %@.", &v5, 0xCu);
    }
  }

  return [*(a1 + 48) _fetchTaskOperationWithIdentifier:*(a1 + 40) completedWithError:*(*(*(a1 + 56) + 8) + 40)];
}

void sub_1000AA15C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0x3032000000;
    v62 = sub_100005A60;
    v63 = sub_10000B13C;
    v64 = 0;
    v31 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    if ((*(a1 + 64) & 1) != 0 || *(a1 + 65) == 1)
    {
      v30 = objc_alloc_init(PKCloudRecordArray);
    }

    else
    {
      v30 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    obj = *(a1 + 48);
    v26 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v26)
    {
      v25 = *v48;
      v5 = PKCloudStoreOperationGroupSuffixModificationSync;
      v29 = PKCloudStoreOperationGroupBackgroundSync;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v47 + 1) + 8 * i);
          v7 = [*(a1 + 40) _allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:v6];
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v28 = v7;
          v8 = [v28 countByEnumeratingWithState:&v43 objects:v58 count:16];
          if (v8)
          {
            v9 = *v44;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v44 != v9)
                {
                  objc_enumerationMutation(v28);
                }

                v11 = *(*(&v43 + 1) + 8 * j);
                v12 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = *(a1 + 32);
                  v14 = [v11 zoneName];
                  *v52 = 138543874;
                  v53 = v13;
                  v54 = 2112;
                  v55 = v6;
                  v56 = 2114;
                  v57 = v14;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetching recently modified transactions from date %{public}@ for transactionSourceIdentifier: %@. In zone %{public}@", v52, 0x20u);
                }

                v15 = [v11 zoneName];
                if (v15)
                {
                  v16 = [v11 zoneName];
                  v51 = v16;
                  v17 = [NSArray arrayWithObjects:&v51 count:1];
                }

                else
                {
                  v17 = 0;
                }

                v18 = [*(a1 + 40) reportContainerChangeIntervalBeginEventWithType:38 stateName:0 objectNames:v17 operationGroupName:v29 operationGroupNameSuffix:v5];
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 3221225472;
                v36[2] = sub_1000AA728;
                v36[3] = &unk_100842080;
                v41 = *(a1 + 64);
                v20 = *(a1 + 32);
                v19 = *(a1 + 40);
                v36[4] = v6;
                v36[5] = v19;
                v36[6] = v11;
                v37 = v20;
                v42 = *(a1 + 65);
                v21 = v18;
                v38 = v21;
                v39 = v30;
                p_buf = &buf;
                [v31 addOperation:v36];
              }

              v8 = [v28 countByEnumeratingWithState:&v43 objects:v58 count:16];
            }

            while (v8);
          }
        }

        v26 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v26);
    }

    v22 = +[NSNull null];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000AABC0;
    v32[3] = &unk_1008420A8;
    v34 = *(a1 + 56);
    v4 = v30;
    v33 = v4;
    v35 = &buf;
    v23 = [v31 evaluateWithInput:v22 completion:v32];

    _Block_object_dispose(&buf, 8);
    goto LABEL_30;
  }

  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"Cannot perform backgroundRecordSyncForTranasctionSourceIdentifiers: since fromDate is not defined";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v4 = [*(a1 + 40) errorWithCode:-1 description:@"Cannot perform backgroundRecordSyncForTranasctionSourceIdentifiers: since fromDate is not defined"];
    (*(v3 + 16))(v3, 0, v4);
LABEL_30:
  }
}

void sub_1000AA728(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [NSSet setWithObject:*(a1 + 32)];
  v9 = [PDApplePayCloudStoreRecordsRequest alloc];
  v10 = [(PDCloudStoreRecordsRequest *)v9 initWithRequestType:3 storeChanges:1 returnRecords:*(a1 + 88) qualityOfService:17 groupName:PKCloudStoreOperationGroupBackgroundSync groupNameSuffix:PKCloudStoreOperationGroupSuffixModificationSync];
  [(PDApplePayCloudStoreRecordsRequest *)v10 setTransactionSourceIdentifiers:v8];
  v11 = [*(a1 + 40) containerManager];
  v12 = [v11 databaseForCloudStoreZone:*(a1 + 48)];

  [(PDCloudStoreRecordsRequest *)v10 setCloudStoreZone:*(a1 + 48)];
  [(PDCloudStoreRecordsRequest *)v10 setContainerDatabase:v12];
  [(PDCloudStoreRecordsRequest *)v10 setIgnoreRecordsBeforeDate:*(a1 + 56)];
  [(PDCloudStoreRecordsRequest *)v10 setFormReport:*(a1 + 89)];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000AA91C;
  v19[3] = &unk_100842058;
  v18 = *(a1 + 32);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = *(a1 + 48);
  v20 = vextq_s8(v18, v18, 8uLL);
  v21 = v13;
  v22 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v25 = v7;
  v26 = v15;
  v23 = v14;
  v24 = v6;
  v16 = v6;
  v17 = v7;
  [v18.i64[1] executeRecordsRequest:v10 completion:v19];
}

void sub_1000AA91C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AAA84;
  block[3] = &unk_100842030;
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = *(a1 + 32);
  *&v10 = v14;
  *(&v10 + 1) = v8;
  v17 = v10;
  v18 = v9;
  v19 = *(a1 + 64);
  v20 = v6;
  v21 = *(a1 + 72);
  v22 = v5;
  v15 = *(a1 + 88);
  v11 = v15;
  v24 = v15;
  v23 = *(a1 + 80);
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_1000AAA84(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) zoneName];
    v13 = 138412802;
    v14 = v3;
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished fetching recently modified transactions for transactionSourceIdentifier: %@ from date %{public}@. In zone %{public}@", &v13, 0x20u);
  }

  [*(a1 + 56) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 64) error:*(a1 + 72)];
  v6 = *(a1 + 80);
  v7 = [*(a1 + 88) cloudStoreRecords];
  [v6 applyCloudRecordArray:v7];

  v8 = *(*(a1 + 112) + 8);
  v11 = *(v8 + 40);
  v9 = (v8 + 40);
  v10 = v11;
  if (!v11)
  {
    v10 = *(a1 + 72);
  }

  objc_storeStrong(v9, v10);
  return (*(*(a1 + 104) + 16))();
}

uint64_t sub_1000AABC0(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[4], *(*(a1[6] + 8) + 40));
  }

  return result;
}

void sub_1000AACC4(id *a1)
{
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = sub_100005A60;
  v53[4] = sub_10000B13C;
  v54 = 0;
  v29 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v1 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *buf = 138412290;
    v59 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Background fetching record changes for transactionSourceIdentifiers: %@", buf, 0xCu);
  }

  oslog = v1;

  v3 = objc_alloc_init(NSMutableDictionary);
  v27 = objc_alloc_init(NSMutableSet);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v4)
  {
    v26 = *v50;
    do
    {
      v28 = v4;
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v49 + 1) + 8 * i);
        v7 = [a1[5] _allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:v6];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v45 objects:v56 count:16];
        if (v9)
        {
          v10 = *v46;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v46 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v45 + 1) + 8 * j);
              v13 = [v3 objectForKeyedSubscript:v12];
              if (!v13)
              {
                v13 = objc_alloc_init(NSMutableSet);
                [v3 setObject:v13 forKeyedSubscript:v12];
              }

              [v13 addObject:v6];
            }

            v9 = [v8 countByEnumeratingWithState:&v45 objects:v56 count:16];
          }

          while (v9);
        }

        [v27 unionSet:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v4);
  }

  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  v14 = v27;
  v15 = [v14 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v15)
  {
    v16 = *v42;
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v42 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v41 + 1) + 8 * k);
        v19 = oslog;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v18 zoneName];
          *buf = 138543362;
          v59 = v20;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Background fetching record starting for zone: %{public}@", buf, 0xCu);

          v19 = oslog;
        }

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1000AB234;
        v35[3] = &unk_100842148;
        v21 = a1[4];
        v22 = a1[5];
        v36 = v21;
        v37 = v22;
        v38 = v18;
        v39 = v3;
        v40 = v53;
        [v29 addOperation:v35];
      }

      v15 = [v14 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v15);
  }

  v23 = +[NSNull null];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000AB5FC;
  v32[3] = &unk_10083C8E8;
  v33 = a1[6];
  v34 = v53;
  v24 = [v29 evaluateWithInput:v23 completion:v32];

  _Block_object_dispose(v53, 8);
}

void sub_1000AB234(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [PDApplePayCloudStoreRecordsRequest alloc];
  v9 = [(PDCloudStoreRecordsRequest *)v8 initWithRequestType:0 storeChanges:1 returnRecords:0 qualityOfService:17 groupName:PKCloudStoreOperationGroupBackgroundSync groupNameSuffix:PKCloudStoreOperationGroupSuffixBackgroundRecordChangesSync];
  [(PDApplePayCloudStoreRecordsRequest *)v9 setTransactionSourceIdentifiers:*(a1 + 32)];
  v10 = [*(a1 + 40) containerManager];
  v11 = [v10 databaseForCloudStoreZone:*(a1 + 48)];

  [(PDCloudStoreRecordsRequest *)v9 setCloudStoreZone:*(a1 + 48)];
  [(PDCloudStoreRecordsRequest *)v9 setContainerDatabase:v11];
  [(PDCloudStoreRecordsRequest *)v9 setUseLastChangeToken:1];
  [(PDCloudStoreRecordsRequest *)v9 setShouldSaveToken:1];
  v12 = *(a1 + 40);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AB3C8;
  v18[3] = &unk_100842120;
  v18[4] = v12;
  v13 = *(a1 + 56);
  v14 = *(a1 + 48);
  v19 = v13;
  v20 = v14;
  v15 = *(a1 + 64);
  v22 = v7;
  v23 = v15;
  v21 = v6;
  v16 = v6;
  v17 = v7;
  [v12 executeRecordsRequest:v9 completion:v18];
}

void sub_1000AB3C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB4C8;
  block[3] = &unk_1008420F8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v12 = v6;
  v13 = v7;
  v14 = v4;
  v10 = *(a1 + 64);
  v8 = v10;
  v16 = v10;
  v15 = *(a1 + 56);
  v9 = v4;
  dispatch_async(v5, block);
}

void sub_1000AB4C8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) zoneName];
    v5 = [v2 count];
    v6 = *(a1 + 48);
    v11 = 138544130;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    v15 = 2112;
    v16 = v2;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished fetching background record changes zone: %{public}@. For %lu transaction source identifiers %@. error %@.", &v11, 0x2Au);
  }

  v7 = *(*(a1 + 72) + 8);
  v10 = *(v7 + 40);
  v8 = (v7 + 40);
  v9 = v10;
  if (!v10)
  {
    v9 = *(a1 + 48);
  }

  objc_storeStrong(v8, v9);
  (*(*(a1 + 64) + 16))();
}

uint64_t sub_1000AB5FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_1000AC594(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x410], 8);
  _Unwind_Resume(a1);
}

void sub_1000AC618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 40) error:a3];
  v4 = *(a1 + 48);

  dispatch_group_leave(v4);
}

void sub_1000AC65C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AC734;
  v12[3] = &unk_10083C820;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  dispatch_group_notify(v8, v9, v12);
}

void sub_1000AC74C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (*(a1 + 72))
  {
    v26 = v9;
    v27 = v8;
    v28 = v7;
    os_unfair_lock_lock(v10 + 54);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = *(a1 + 40);
    v11 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:v15];
          v18 = [(PDApplePayCloudStoreRecordFetchOperation *)v17 task];
          if (![*(a1 + 48) containsObject:v15] || objc_msgSend(v18, "status") != 2 || objc_msgSend(v18, "type") != 1)
          {
            v19 = [[PKCloudStoreRecordFetchTask alloc] initWithTransactionSourceIdentifier:v15 type:1];

            if (!v17)
            {
              v17 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
            }

            [(PDApplePayCloudStoreRecordFetchOperation *)v17 updateTask:v19];
            v20 = *(*(a1 + 32) + 208);
            v21 = [(PDApplePayCloudStoreRecordFetchOperation *)v17 identifier];
            [v20 safelySetObject:v17 forKey:v21];

            [v19 startTask];
            v22 = [*(a1 + 32) dataSource];
            [v22 updateRecordFetchTask:v19];

            [*(a1 + 56) pk_safelyAddObject:v15];
            v18 = v19;
          }

          objc_autoreleasePoolPop(v16);
        }

        v12 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    os_unfair_lock_unlock((*(a1 + 32) + 216));
    v9 = v26;
    v8 = v27;
    v26[2](v26, v27, 0);
    v7 = v28;
  }

  else
  {
    v23 = [(os_unfair_lock_s *)v10 setupAssistantNotCompleteError];
    v24 = *(*(a1 + 64) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    v9[2](v9, v8, 1);
  }
}

void sub_1000ACA1C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000ACB00;
  v13[3] = &unk_100841F40;
  v10 = *(a1 + 48);
  v15 = v6;
  v16 = v7;
  v14 = v10;
  v11 = v6;
  v12 = v7;
  [v8 initialCloudDatabaseSetupWithOperationGroupNameSuffix:v9 completion:v13];
}

void sub_1000ACB00(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
    if (!v5)
    {
      v8 = [NSString stringWithFormat:@"Could not setup the cloud store container: %@", 0];
      v16[0] = NSLocalizedDescriptionKey;
      v16[1] = NSLocalizedFailureReasonErrorKey;
      v17[0] = v8;
      v17[1] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5001 userInfo:v9];
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error setting up cloud store container after pass provisioning: %@, transactionSourceIdentifiers: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000ACC9C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACE10;
  block[3] = &unk_1008421E8;
  v16 = *(a1 + 32);
  v9 = *(&v16 + 1);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v18 = v16;
  v19 = v12;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = *(a1 + 80);
  v13 = *(a1 + 104);
  v25 = v7;
  v26 = v13;
  v23 = *(a1 + 88);
  v24 = v6;
  v14 = v6;
  v15 = v7;
  dispatch_async(v8, block);
}

void sub_1000ACE10(uint64_t a1)
{
  [*(*(a1 + 32) + 264) transactionFetchInitiatedForPassUniqueID:*(a1 + 40)];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = *(a1 + 48);
  v42 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v42)
  {
    v41 = *v48;
    do
    {
      for (i = 0; i != v42; i = i + 1)
      {
        if (*v48 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v47 + 1) + 8 * i);
        v4 = [*(a1 + 32) _allPossibleCloudStoreZonesForFetchingWithTransactionSourceIdentifier:v3];
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v5 = [v4 countByEnumeratingWithState:&v43 objects:v62 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v44;
          do
          {
            for (j = 0; j != v6; j = j + 1)
            {
              if (*v44 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v43 + 1) + 8 * j);
              v10 = [*(a1 + 56) objectForKeyedSubscript:v9];
              if (!v10)
              {
                v10 = objc_alloc_init(NSMutableSet);
              }

              [*(a1 + 56) setObject:v10 forKeyedSubscript:v9];
              [v10 addObject:v3];
            }

            v6 = [v4 countByEnumeratingWithState:&v43 objects:v62 count:16];
          }

          while (v6);
        }
      }

      v42 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v42);
  }

  os_unfair_lock_lock((*(a1 + 32) + 216));
  v11 = [*(*(a1 + 32) + 208) description];
  os_unfair_lock_unlock((*(a1 + 32) + 216));
  v60[0] = @"transactionSourceIdentifiers";
  v12 = [*(a1 + 64) description];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_10086D930;
  }

  v15 = *(a1 + 40);
  if (!v15)
  {
    v15 = &stru_10086D930;
  }

  v61[0] = v14;
  v61[1] = v15;
  v60[1] = @"passUniqueID";
  v60[2] = @"fetchTasks";
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = &stru_10086D930;
  }

  v61[2] = v16;
  v60[3] = @"fetchTasksPriorToChanges";
  v17 = [*(a1 + 72) description];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_10086D930;
  }

  v61[3] = v19;
  v60[4] = @"transactionSourceIdentifiersInProgress";
  v20 = [*(a1 + 80) description];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_10086D930;
  }

  v61[4] = v22;
  v60[5] = @"transactionSourceIdentifiersToFetch";
  v23 = [*(a1 + 48) description];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_10086D930;
  }

  v60[6] = @"zoneToTransactionSourceIdentifier";
  v26 = *(a1 + 56);
  if (!v26)
  {
    v26 = &stru_10086D930;
  }

  v61[5] = v25;
  v61[6] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:7];

  v28 = *(a1 + 32);
  v29 = [*(a1 + 64) description];
  v30 = [v27 description];
  v59 = v30;
  v31 = [NSArray arrayWithObjects:&v59 count:1];
  v32 = [v28 reportContainerChangeIntervalBeginEventWithType:48 stateName:v29 objectNames:v31 operationGroupName:*(a1 + 88) operationGroupNameSuffix:*(a1 + 96)];
  v33 = *(*(a1 + 120) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;

  v35 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = *(a1 + 40);
    v37 = [*(a1 + 48) count];
    v38 = *(a1 + 48);
    v39 = *(a1 + 56);
    *buf = 138544130;
    v52 = v36;
    v53 = 2048;
    v54 = v37;
    v55 = 2112;
    v56 = v38;
    v57 = 2112;
    v58 = v39;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Pass Provisioning record download starting for passUniqueID: %{public}@, %lu transactionSourceIdentifiersToFetch: %@, zoneToTransactionSourceIdentifier: %@", buf, 0x2Au);
  }

  [*(a1 + 48) count];
  (*(*(a1 + 112) + 16))();
}

void sub_1000AD28C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000AD378;
  v15[3] = &unk_100842238;
  v12 = a1[8];
  v17 = v7;
  v18 = v12;
  v16 = v6;
  v13 = v6;
  v14 = v7;
  [v8 _fetchAndStoreAppleCashRecordsIfNecessaryForPassUniqueID:v9 operationGroupName:v10 operationGroupNameSuffix:v11 completion:v15];
}

void sub_1000AD378(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(a1 + 48) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  objc_storeStrong(v6, v9);
  v10 = a3;
  (*(*(a1 + 40) + 16))();
}

void sub_1000AD3F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v20 = a4;
  v6 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1000AD680;
        v26[3] = &unk_1008422B0;
        v22 = *(a1 + 32);
        v13 = v22.i64[0];
        v27 = vextq_s8(v22, v22, 8uLL);
        v28 = v12;
        v33 = *(a1 + 88);
        v29 = *(a1 + 48);
        v30 = *(a1 + 64);
        v14 = *(a1 + 72);
        v15 = *(a1 + 80);
        v31 = v14;
        v32 = v15;
        [v6 addOperation:v26];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v9);
  }

  v16 = +[NSNull null];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000AE0F0;
  v23[3] = &unk_1008422D8;
  v24 = v21;
  v25 = v20;
  v17 = v21;
  v18 = v20;
  v19 = [v6 evaluateWithInput:v16 completion:v23];
}

void sub_1000AD680(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AD7B0;
  block[3] = &unk_100842288;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v9;
  v17 = v10;
  v18 = *(a1 + 32);
  v25 = *(a1 + 96);
  v19 = *(a1 + 56);
  v20 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v23 = v7;
  v24 = v12;
  v21 = v11;
  v22 = v6;
  v13 = v6;
  v14 = v7;
  dispatch_async(v8, block);
}

void sub_1000AD7B0(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 48) containerManager];
  v4 = [v3 databaseForCloudStoreZone:*(a1 + 40)];

  if (*(a1 + 112) == 1)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v84 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting change token for zone %@ due to starting a fresh provisioning fetch", buf, 0xCu);
    }

    v7 = [*(a1 + 48) containerManager];
    v8 = [v4 identifier];
    v9 = [*(a1 + 40) zoneID];
    [v7 containerDatabaseIdentifier:v8 didUpdateChangeToken:0 fetchTimestamp:0 forZoneID:v9];
  }

  v10 = [(PDCloudStoreRecordsRequest *)[PDApplePayCloudStoreRecordsRequest alloc] initWithRequestType:0 storeChanges:1 returnRecords:0 qualityOfService:17 groupName:*(a1 + 56) groupNameSuffix:*(a1 + 64)];
  [(PDCloudStoreRecordsRequest *)v10 setCloudStoreZone:*(a1 + 40)];
  v62 = v4;
  [(PDCloudStoreRecordsRequest *)v10 setContainerDatabase:v4];
  [(PDCloudStoreRecordsRequest *)v10 setIgnoreExistingRecordHash:*(a1 + 113)];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v11 = v2;
  v12 = [(__CFString *)v11 countByEnumeratingWithState:&v73 objects:v87 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v74;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v74 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = [*(a1 + 48) _accountCreateDateForTranactionSourceIdentifier:*(*(&v73 + 1) + 8 * i) passUniqueID:*(a1 + 72)];
        v18 = v17;
        if (!v14 || v17 && [v17 compare:v14] == -1)
        {
          v19 = v18;

          v14 = v19;
        }
      }

      v13 = [(__CFString *)v11 countByEnumeratingWithState:&v73 objects:v87 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [(PDCloudStoreRecordsRequest *)v10 setIgnoreRecordsBeforeDate:v14];
  [(PDCloudStoreRecordsRequest *)v10 setShouldSaveToken:1];
  if ((*(a1 + 112) & 1) == 0)
  {
    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using last change token if it exists (probably recovering from a failed fetch, so we don't want to re-fetch everything)", buf, 2u);
    }

    [(PDCloudStoreRecordsRequest *)v10 setUseLastChangeToken:1];
  }

  v21 = [*(a1 + 48) _queue_additionalTransactionSourceIdentifiersForProvisioningWithZone:*(a1 + 40) transactionSourceIdentifiers:v11];
  v22 = objc_alloc_init(NSMutableSet);
  [(__CFString *)v22 unionSet:v11];
  v64 = v21;
  v63 = v10;
  if ([v21 count])
  {
    v60 = v22;
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [*(a1 + 40) zoneName];
      *buf = 138543618;
      v84 = v24;
      v85 = 2112;
      v86 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Additional transaction source identifiers to fetch in zone %{public}@ are %@", buf, 0x16u);
    }

    v81[0] = @"additionalTransactionSourceIdentifiersForZone";
    v25 = [v21 description];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = &stru_10086D930;
    }

    if (v11)
    {
      v28 = v11;
    }

    else
    {
      v28 = &stru_10086D930;
    }

    v82[0] = v27;
    v82[1] = v28;
    v81[1] = @"transactionSourceIdentifiersForZone";
    v81[2] = @"zoneName";
    v29 = [*(a1 + 40) zoneName];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = &stru_10086D930;
    }

    v81[3] = @"transactionSourceIdentifiers";
    v32 = *(a1 + 80);
    if (!v32)
    {
      v32 = &stru_10086D930;
    }

    v82[2] = v31;
    v82[3] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:4];

    v34 = *(a1 + 48);
    v35 = [v33 description];
    [v34 reportContainerChangeSignpostEventType:52 stateName:v35 objectNames:0 changeToken:0 error:0 operationGroupName:*(a1 + 56) operationGroupNameSuffix:*(a1 + 64)];

    v36 = [v21 allKeys];
    v37 = [NSSet setWithArray:v36];
    [(__CFString *)v60 unionSet:v37];

    v22 = v60;
    v10 = v63;
  }

  [(PDApplePayCloudStoreRecordsRequest *)v10 setTransactionSourceIdentifiers:v22];
  v77[0] = @"transactionSourceIdentifiersForZone";
  v38 = v22;
  v39 = *(a1 + 80);
  v40 = [(__CFString *)v11 allObjects];
  v41 = [v39 dictionaryWithValuesForKeys:v40];
  v42 = [v41 description];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = &stru_10086D930;
  }

  v78[0] = v44;
  v77[1] = @"cloudStoreZoneToFetch";
  v45 = [*(a1 + 40) zoneName];
  v46 = v45;
  if (v45)
  {
    v47 = v45;
  }

  else
  {
    v47 = &stru_10086D930;
  }

  v77[2] = @"passUniqueID";
  v77[3] = @"transactionSourceIdentifiers";
  v79 = vbslq_s8(vceqzq_s64(*(a1 + 72)), vdupq_n_s64(&stru_10086D930), *(a1 + 72));
  v77[4] = @"requestTransactionSourceIdentifiers";
  if (v38)
  {
    v48 = v38;
  }

  else
  {
    v48 = &stru_10086D930;
  }

  v78[1] = v47;
  v80 = v48;
  v49 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:5];

  v50 = *(a1 + 48);
  v51 = [v49 description];
  v52 = [(__CFString *)v11 allObjects];
  v53 = [v50 reportContainerChangeIntervalBeginEventWithType:39 stateName:v51 objectNames:v52 operationGroupName:*(a1 + 56) operationGroupNameSuffix:*(a1 + 64)];

  v54 = *(a1 + 48);
  v65[0] = _NSConcreteStackBlock;
  v65[1] = 3221225472;
  v65[2] = sub_1000ADED4;
  v65[3] = &unk_100842260;
  v66 = v11;
  v67 = v54;
  v68 = v53;
  v61 = *(a1 + 96);
  v55 = v61;
  v72 = v61;
  v69 = *(a1 + 88);
  v56 = *(a1 + 72);
  v57 = *(a1 + 40);
  v70 = v56;
  v71 = v57;
  v58 = v53;
  v59 = v11;
  [v54 executeRecordsRequest:v63 completion:v65];
}

void sub_1000ADED4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 88) + 8);
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  objc_storeStrong(v6, v9);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v23;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v10);
        }

        if (v13)
        {
          v13 = 1;
        }

        else
        {
          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [*(a1 + 40) dataSource];
          v13 = [v17 transactionSourceExistsWithIdentifier:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v12);

    [*(a1 + 40) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 48) error:v4];
    if (v13)
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 64);
        v21 = [*(a1 + 72) zoneName];
        *buf = 138544130;
        v27 = v20;
        v28 = 2112;
        v29 = v19;
        v30 = 2114;
        v31 = v21;
        v32 = 2112;
        v33 = v4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Completed fetching transaction records from CloudKit for payment pass with uniqueID: %{public}@. Transaction source identifiers %@. In zone %{public}@. Error: %@", buf, 0x2Au);
      }
    }
  }

  else
  {

    [*(a1 + 40) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 48) error:{v4, v22}];
  }

  (*(*(a1 + 80) + 16))();
}

uint64_t sub_1000AE0F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [a4 isCanceled];
  v7 = *(v4 + 16);

  return v7(v4, v5, v6);
}

void sub_1000AE13C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AE288;
  block[3] = &unk_100842300;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  *&v7 = *(a1 + 56);
  *(&v7 + 1) = *v2;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  v14 = v8;
  v15 = v7;
  v18 = *(a1 + 96);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v11 = *(a1 + 80);
  *(&v11 + 1) = v6;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  v16 = v12;
  v17 = v11;
  dispatch_async(v3, block);
}

uint64_t sub_1000AE288(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 88) + 8) + 40);
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v5;
    v29 = 2048;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed pass provisioning transaction fetch for pass %{public}@, transactionSourceIdentifiers %@, with error %@. Total time: %f seconds.", buf, 0x2Au);
  }

  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 56));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v10, "cloudstore:fetchPassRecords", "", buf, 2u);
    }
  }

  [*(a1 + 56) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(*(*(a1 + 96) + 8) + 40) error:*(*(*(a1 + 88) + 8) + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 200));
  [WeakRetained applePayCloudStoreContainer:*(a1 + 56) didFinishTransactionFetchForPassUniqueID:*(a1 + 32) error:*(*(*(a1 + 88) + 8) + 40)];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = *(a1 + 64);
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(a1 + 72) + 16))(*(a1 + 72));
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v14);
  }

  result = *(a1 + 80);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 88) + 8) + 40));
  }

  return result;
}

void sub_1000AEC90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000AED68;
  v12[3] = &unk_10083C820;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  dispatch_group_notify(v8, v9, v12);
}

void sub_1000AED80(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  if (*(a1 + 64))
  {
    v7 = a4;
    v8 = a3;
    os_unfair_lock_lock(v6 + 54);
    v18 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:*(a1 + 40)];
    v9 = [(PDApplePayCloudStoreRecordFetchOperation *)v18 task];
    if ([v9 status] == 2 && objc_msgSend(v9, "type") == 3)
    {
      v10 = v9;
    }

    else
    {
      v10 = [[PKCloudStoreRecordFetchTask alloc] initWithCloudStoreZone:*(a1 + 48) type:3];

      v14 = v18;
      if (!v18)
      {
        v14 = objc_alloc_init(PDApplePayCloudStoreRecordFetchOperation);
      }

      v18 = v14;
      [(PDApplePayCloudStoreRecordFetchOperation *)v14 updateTask:v10];
      v15 = *(*(a1 + 32) + 208);
      v16 = [(PDApplePayCloudStoreRecordFetchOperation *)v18 identifier];
      [v15 safelySetObject:v18 forKey:v16];

      [v10 startTask];
      v17 = [*(a1 + 32) dataSource];
      [v17 updateRecordFetchTask:v10];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 216));
    v7[2](v7, v8, 0);
  }

  else
  {
    v10 = a4;
    v18 = a3;
    v11 = [(os_unfair_lock_s *)v6 setupAssistantNotCompleteError];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    (*(v10 + 2))(v10, v18, 1);
  }
}

void sub_1000AEF5C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1[7];
  v8 = a1[8];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AF06C;
  v18[3] = &unk_10083E6B0;
  v13 = a1[9];
  v14 = a1[10];
  v20 = v7;
  v21 = v13;
  v19 = v6;
  v17.receiver = v8;
  v17.super_class = PDApplePayCloudStoreContainer;
  v15 = v6;
  v16 = v7;
  objc_msgSendSuper2(&v17, "fetchRecordsInAcceptedZoneShare:databaseIdentifier:operationGroupName:operationGroupNameSuffix:qualityOfService:completion:", v10, v11, v12, v9, v14, v18);
}

void sub_1000AF06C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000AF0D8(uint64_t a1)
{
  [*(a1 + 32) _fetchTaskOperationWithIdentifier:*(a1 + 40) completedWithError:*(*(*(a1 + 56) + 8) + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000AFB30(id *a1)
{
  v2 = *(a1[4] + 34);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = a1[5];
  v4 = [v2 associatedPassUniqueID];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (!v5 || !v6)
    {

      goto LABEL_19;
    }

    v8 = [v5 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
LABEL_19:
      v32 = a1[8];
      if (v32)
      {
        v33 = *(v32 + 2);

        v33();
      }

      return;
    }
  }

  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = sub_100005A60;
  v70[4] = sub_10000B13C;
  v71 = 0;
  v9 = [a1[4] dataSource];
  v39 = [v9 transactionSourceIdentifiersForPassUniqueIdentifier:a1[5]];

  v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v37 = [a1[4] reportContainerChangeIntervalBeginEventWithType:51 stateName:a1[5] objectNames:0 operationGroupName:a1[6] operationGroupNameSuffix:a1[7]];
  v11 = [a1[4] containerManager];
  v12 = [v11 databaseForScope:2];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = [a1[4] _peerPaymentZoneNamesForAccount:*(a1[4] + 34) containerDatabase:v12];
  v14 = [v13 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v14)
  {
    v38 = *v67;
    v35 = v41;
    v36 = v46;
    obj = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v67 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v66 + 1) + 8 * i);
        v17 = [a1[4] containerManager];
        v18 = [v17 cloudStoreZoneForZoneName:v16 inContainerDatabase:v12];

        if (v18)
        {
          v19 = a1[4];
          v20 = [v39 anyObject];
          v21 = [v19 _accountCreateDateForTranactionSourceIdentifier:v20 passUniqueID:a1[5]];

          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_1000B0134;
          v56[3] = &unk_100842418;
          v22 = v18;
          v23 = a1[4];
          v57 = v22;
          v58 = v23;
          v59 = a1[6];
          v60 = a1[7];
          v24 = v12;
          v61 = v24;
          v25 = v39;
          v62 = v25;
          v26 = v21;
          v63 = v26;
          v65 = v70;
          v64 = a1[5];
          [v10 addOperation:v56];
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v46[0] = sub_1000B0458;
          v46[1] = &unk_100842418;
          v27 = v22;
          v28 = a1[4];
          v47 = v27;
          v48 = v28;
          v49 = a1[6];
          v50 = a1[7];
          v51 = v24;
          v52 = v25;
          v29 = v26;
          v53 = v29;
          v55 = v70;
          v54 = a1[5];
          [v10 addOperation:v45];
          v30 = +[NSNull null];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v41[0] = sub_1000B077C;
          v41[1] = &unk_1008423C8;
          v41[2] = a1[4];
          v42 = v37;
          v44 = v70;
          v43 = a1[8];
          v31 = [v10 evaluateWithInput:v30 completion:v40];
        }
      }

      v13 = obj;
      v14 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(v70, 8);
}

void sub_1000B0134(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) zoneName];
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching recurring memo records from CloudKit in zone %{public}@", buf, 0xCu);
  }

  v10 = *(a1 + 56);
  v20 = *(a1 + 48);
  v21 = PKCloudRecurringPaymentMemoRecordType;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B0314;
  v22[3] = &unk_1008423F0;
  v17 = *(a1 + 96);
  v27 = v7;
  v28 = v17;
  v23 = v6;
  v24 = v15;
  v25 = *(a1 + 72);
  v26 = *(a1 + 32);
  v18 = v6;
  v19 = v7;
  [v12 _fetchAndStoreAppleCashItemWithRecordType:v21 operationGroupName:v20 operationGroupNameSuffix:v10 zone:v11 containerDatabase:v13 transactionSourceIdentifiers:v14 accountCreationDate:v16 completion:v22];
}

void sub_1000B0314(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 72) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  objc_storeStrong(v7, v10);
  if (a2)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) zoneName];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed fetching recurring memo records from CloudKit for payment pass with uniqueID: %{public}@. Transaction source identifiers %@. In zone %{public}@", &v16, 0x20u);
    }

    v15 = *(*(a1 + 64) + 16);
  }

  else
  {
    v15 = *(*(a1 + 64) + 16);
  }

  v15();
}

void sub_1000B0458(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) zoneName];
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching counterpart image data from CloudKit in zone %{public}@", buf, 0xCu);
  }

  v10 = *(a1 + 56);
  v20 = *(a1 + 48);
  v21 = PKCloudCounterpartImageRecordType;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v16 = *(a1 + 80);
  v15 = *(a1 + 88);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000B0638;
  v22[3] = &unk_1008423F0;
  v17 = *(a1 + 96);
  v27 = v7;
  v28 = v17;
  v23 = v6;
  v24 = v15;
  v25 = *(a1 + 72);
  v26 = *(a1 + 32);
  v18 = v6;
  v19 = v7;
  [v12 _fetchAndStoreAppleCashItemWithRecordType:v21 operationGroupName:v20 operationGroupNameSuffix:v10 zone:v11 containerDatabase:v13 transactionSourceIdentifiers:v14 accountCreationDate:v16 completion:v22];
}

void sub_1000B0638(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 72) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  objc_storeStrong(v7, v10);
  if (a2)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = [*(a1 + 56) zoneName];
      v16 = 138543874;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed fetching counterpart image data records from CloudKit for payment pass with uniqueID: %{public}@. Transaction source identifiers %@. In zone %{public}@", &v16, 0x20u);
    }

    v15 = *(*(a1 + 64) + 16);
  }

  else
  {
    v15 = *(*(a1 + 64) + 16);
  }

  v15();
}

void sub_1000B077C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  [*(a1 + 32) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 40) error:*(*(*(a1 + 56) + 8) + 40)];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, [v6 isCanceled], *(*(*(a1 + 56) + 8) + 40));
  }
}

void sub_1000B09F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (v8)
        {
          v8 = 1;
        }

        else
        {
          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = [*(a1 + 40) dataSource];
          v8 = [v12 transactionSourceExistsWithIdentifier:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000B0C60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      v27 = v8;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 transaction];
          v13 = [v12 transactionSourceIdentifier];
          if (!v13)
          {
            v14 = [PKCloudStoreRecord alloc];
            v15 = [v11 records];
            [v15 allObjects];
            v16 = a1;
            v17 = v9;
            v18 = v6;
            v20 = v19 = v5;
            v21 = [v14 initWithRecords:v20];

            v5 = v19;
            v6 = v18;
            v9 = v17;
            a1 = v16;

            v8 = v27;
            v13 = [*(v16 + 32) _transactionSourceIdentifierForTransactionCloudStoreRecord:v21 databaseIdentifier:v5];
          }

          if ([*(a1 + 40) count] && (objc_msgSend(*(a1 + 40), "containsObject:", v13) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_19;
          }

          v22 = [v11 event];
          v12 = [v22 accountIdentifier];

          if (*(a1 + 56))
          {
            v23 = [*(a1 + 32) dataSource];
            v13 = [v23 associatedAccountIdentifierForPassWithUniqueIdentifier:*(a1 + 56)];

            v8 = v27;
            if ((PKEqualObjects() & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v24 = [v11 event];
            v13 = [v24 altDSID];

            v25 = [*(a1 + 32) dataSource];
            v26 = [v25 transactionSourceIdentifierForAccountUserAltDSID:v13 accountIdentifier:v12];

            v8 = v27;
          }
        }

        [*(a1 + 48) addCloudRecord:v11 forContainerDatabaseIdentifier:v5];
LABEL_18:

LABEL_19:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }
}

uint64_t sub_1000B100C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) _queue_isRelevantTransactionSourceIdentifier:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

uint64_t sub_1000B1158(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _queue_canSyncTransactionToCloudKit:*(a1 + 40) forTransactionSourceIdentifier:*(a1 + 48)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_1000B15F8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Bootstrapping zone with name %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) containerManager];
  v5 = [v4 databaseForScope:2];

  v6 = [v5 identifier];
  if (v6)
  {
    v7 = [v5 zoneForZoneName:*(a1 + 32)];
    v8 = *(a1 + 40);
    if (v7)
    {
      v12 = v6;
      v9 = [NSSet setWithObject:v7];
      v13 = v9;
      v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      [v8 _queue_createZoneAndSubscriptionsByDatabaseIdentifier:v10 groupSuffix:0 completion:*(a1 + 48)];
    }

    else
    {
      v11 = [NSString stringWithFormat:@"There is no zone defined for zone name %@", *(a1 + 32)];
      v9 = [v8 errorWithCode:-4001 description:v11];

      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v7 = [*(a1 + 40) errorWithCode:-4004 description:@"No private database defined"];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000B18E4(uint64_t a1)
{
  v4 = PKCreateSimulatedPaymentTransaction();
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];
  [v4 setServiceIdentifier:v3];

  [v4 setHasNotificationServiceData:1];
  [*(a1 + 32) uploadTransaction:v4 forTransactionSourceIdentifier:*(a1 + 40) includeServerData:1 completion:*(a1 + 48)];
}

void sub_1000B1A94(uint64_t a1)
{
  v2 = [*(a1 + 32) containerManager];
  v3 = [v2 cloudStoreZonesByDatabaseIdentifierForItem:*(a1 + 40) action:1];

  if ([v3 count])
  {
    if (*(a1 + 64))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    v5 = [*(a1 + 40) recordTypesAndNamesForCodingType:v4];
    if ([v5 count])
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = [*(a1 + 32) dataSource];
      v8 = [v7 passUniqueIdentifierForTransactionSourceIdentifier:*(a1 + 48)];

      v9 = [*(a1 + 32) dataSource];
      v10 = [v9 passWithUniqueIdentifier:v8];
      v11 = [v10 paymentPass];

      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1000B1EAC;
      v31[3] = &unk_100842490;
      v12 = *(a1 + 40);
      v13 = *(a1 + 32);
      v32 = v12;
      v33 = v13;
      v35 = v6;
      v36 = v4;
      v34 = v11;
      v14 = v6;
      v15 = v11;
      [v3 enumerateKeysAndObjectsUsingBlock:v31];
      v16 = [PDApplePayCloudStoreRecordsRequest alloc];
      v17 = [(PDCloudStoreRecordsRequest *)v16 initWithRequestType:6 storeChanges:1 returnRecords:1 qualityOfService:25 groupName:PKCloudStoreOperationGroupUserActionExplicit groupNameSuffix:PKCloudStoreOperationGroupSuffixPassutil];
      [(PDCloudStoreRecordsRequest *)v17 setRecordsToSaveByDatabaseIdentifier:v14];
      v18 = *(a1 + 32);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000B2238;
      v29[3] = &unk_1008424B8;
      v30 = *(a1 + 56);
      [v18 executeRecordsRequest:v17 completion:v29];
    }

    else
    {
      v24 = *(a1 + 32);
      v25 = [NSString stringWithFormat:@"There are no record types or names associated with item %@", *(a1 + 40)];
      v8 = [v24 errorWithCode:-4002 description:v25];

      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 40);
        *buf = 138412290;
        v38 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "There are no record types or names associated with item %@", buf, 0xCu);
      }

      v28 = *(a1 + 56);
      if (v28)
      {
        (*(v28 + 16))(v28, 0, v8);
      }
    }
  }

  else
  {
    v19 = *(a1 + 32);
    [*(a1 + 40) itemType];
    v20 = PKCloudStoreItemTypeToString();
    v21 = [NSString stringWithFormat:@"There is no zone defined for item type %@", v20];
    v5 = [v19 errorWithCode:-4001 description:v21];

    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error: No zone defined %@", buf, 0xCu);
    }

    v23 = *(a1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, 0, v5);
    }
  }
}

void sub_1000B1EAC(uint64_t a1, void *a2, void *a3)
{
  v35 = a2;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a3;
  v31 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v31)
  {
    v30 = *v37;
    v29 = PKCloudTransactionRecordType;
    v28 = PKCloudTransactionDeviceDataRecordType;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v36 + 1) + 8 * i) recordZone];
        if (v5)
        {
          v32 = i;
          v6 = objc_alloc_init(NSMutableArray);
          v7 = [CKRecordID alloc];
          v8 = [*(a1 + 32) serviceIdentifier];
          v9 = [v5 zoneID];
          v10 = [v7 initWithRecordName:v8 zoneID:v9];

          v11 = [[CKRecord alloc] initWithRecordType:v29 recordID:v10];
          [v6 addObject:v11];
          v12 = [CKRecordID alloc];
          v13 = [objc_opt_class() recordNamePrefix];
          v14 = [*(a1 + 32) serviceIdentifier];
          v15 = [NSString stringWithFormat:@"%@%@", v13, v14];
          v16 = [v5 zoneID];
          v17 = [v12 initWithRecordName:v15 zoneID:v16];

          v33 = v17;
          v18 = [[CKRecord alloc] initWithRecordType:v28 recordID:v17];

          [v6 addObject:v18];
          v19 = [*(a1 + 40) _cloudStoreSpecificKeysForItem:*(a1 + 32) paymentPass:*(a1 + 48)];
          v20 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
          [v20 setCloudStoreSpecificKeys:v19];
          [*(a1 + 32) encodeWithCloudStoreCoder:v20 codingType:*(a1 + 64)];
          v21 = [*(a1 + 56) objectForKey:v35];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = objc_alloc_init(NSMutableSet);
          }

          v24 = v23;

          [*(a1 + 56) setObject:v24 forKey:v35];
          v25 = [v20 records];
          v26 = [NSSet setWithArray:v25];
          [v24 unionSet:v26];

          i = v32;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v31);
  }
}

void sub_1000B2238(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 cloudStoreRecords];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void sub_1000B23A4(uint64_t a1)
{
  v2 = [*(a1 + 32) containerManager];
  v3 = [v2 cloudStoreZonesByDatabaseIdentifierForItem:*(a1 + 40) action:1];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [v6 transactionArchiveForRecurringPayment:*(a1 + 40)];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B2724;
    v23[3] = &unk_1008424E0;
    v8 = objc_alloc_init(NSMutableSet);
    v24 = v8;
    v9 = v7;
    v25 = v9;
    [v3 enumerateKeysAndObjectsUsingBlock:v23];
    v10 = [*(a1 + 32) dataSource];
    [v10 updateTransactionArchive:v9 forRecurringPayment:*(a1 + 40)];

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) identifier];
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Uploading memo for recurring payment %@ in zones %@", buf, 0x16u);
    }

    v13 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:*(a1 + 40) recordSpecificKeys:0];
    [v13 setCloudStoreZones:v8];
    v14 = *(a1 + 32);
    v15 = [NSSet setWithObject:v13];
    v16 = PKCloudStoreOperationGroupUserActionImplicit;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B284C;
    v21[3] = &unk_100842508;
    v22 = *(a1 + 40);
    [v14 updateCloudStoreWithLocalItemsWithConfigurations:v15 groupName:v16 groupNameSuffix:0 qualityOfService:17 completion:v21];
  }

  else
  {
    [*(a1 + 40) itemType];
    v17 = PKCloudStoreItemTypeToString();
    v18 = [NSString stringWithFormat:@"There is no zone defined for item type %@", v17];
    v9 = [v5 errorWithCode:-4001 description:v18];

    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Error: No zone defined %@", buf, 0xCu);
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v9);
    }
  }
}

void sub_1000B2724(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 recordZone];
        if (v10)
        {
          [*(a1 + 32) addObject:v9];
          [*(a1 + 40) insertOrUpdateArchiveLocationWithCloudStoreZone:v9 isArchived:0 insertionMode:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_1000B284C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = a4;
    v9 = [v7 identifier];

    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Uploaded memo for recurring payment %@ with error %@", &v10, 0x16u);
  }
}

void sub_1000B2A08(uint64_t a1)
{
  v2 = [*(a1 + 32) containerManager];
  v3 = [v2 cloudStoreZonesByDatabaseIdentifierForItem:*(a1 + 40) action:1];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [v6 transactionArchiveForCounterpartImageData:*(a1 + 40)];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B2D88;
    v23[3] = &unk_1008424E0;
    v8 = objc_alloc_init(NSMutableSet);
    v24 = v8;
    v9 = v7;
    v25 = v9;
    [v3 enumerateKeysAndObjectsUsingBlock:v23];
    v10 = [*(a1 + 32) dataSource];
    [v10 updateTransactionArchive:v9 forCounterpartImageData:*(a1 + 40)];

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) identifier];
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Uploading counterpart image data %@ in zones %@", buf, 0x16u);
    }

    v13 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:*(a1 + 40) recordSpecificKeys:0];
    [v13 setCloudStoreZones:v8];
    v14 = *(a1 + 32);
    v15 = [NSSet setWithObject:v13];
    v16 = PKCloudStoreOperationGroupUserActionImplicit;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B2EB0;
    v21[3] = &unk_100842508;
    v22 = *(a1 + 40);
    [v14 updateCloudStoreWithLocalItemsWithConfigurations:v15 groupName:v16 groupNameSuffix:0 qualityOfService:17 completion:v21];
  }

  else
  {
    [*(a1 + 40) itemType];
    v17 = PKCloudStoreItemTypeToString();
    v18 = [NSString stringWithFormat:@"There is no zone defined for item type %@", v17];
    v9 = [v5 errorWithCode:-4001 description:v18];

    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Error: No zone defined %@", buf, 0xCu);
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v9);
    }
  }
}

void sub_1000B2D88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 recordZone];
        if (v10)
        {
          [*(a1 + 32) addObject:v9];
          [*(a1 + 40) insertOrUpdateArchiveLocationWithCloudStoreZone:v9 isArchived:0 insertionMode:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_1000B2EB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = a4;
    v9 = [v7 identifier];

    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Uploaded counterpart image data %@ with error %@", &v10, 0x16u);
  }
}

void sub_1000B306C(uint64_t a1)
{
  v2 = [*(a1 + 32) containerManager];
  v3 = [v2 cloudStoreZonesByDatabaseIdentifierForItem:*(a1 + 40) action:1];

  v4 = [v3 count];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [*(a1 + 32) dataSource];
    v7 = [v6 transactionArchiveForPendingRequest:*(a1 + 40)];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B33EC;
    v23[3] = &unk_1008424E0;
    v8 = objc_alloc_init(NSMutableSet);
    v24 = v8;
    v9 = v7;
    v25 = v9;
    [v3 enumerateKeysAndObjectsUsingBlock:v23];
    v10 = [*(a1 + 32) dataSource];
    [v10 updateTransactionArchive:v9 forPendingRequest:*(a1 + 40)];

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) requestToken];
      *buf = 138412546;
      v27 = v12;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Uploading pending request %@ in zones %@", buf, 0x16u);
    }

    v13 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:*(a1 + 40) recordSpecificKeys:0];
    [v13 setCloudStoreZones:v8];
    v14 = *(a1 + 32);
    v15 = [NSSet setWithObject:v13];
    v16 = PKCloudStoreOperationGroupUserActionImplicit;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B3514;
    v21[3] = &unk_100842508;
    v22 = *(a1 + 40);
    [v14 updateCloudStoreWithLocalItemsWithConfigurations:v15 groupName:v16 groupNameSuffix:0 qualityOfService:17 completion:v21];
  }

  else
  {
    [*(a1 + 40) itemType];
    v17 = PKCloudStoreItemTypeToString();
    v18 = [NSString stringWithFormat:@"There is no zone defined for item type %@", v17];
    v9 = [v5 errorWithCode:-4001 description:v18];

    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Error: No zone defined %@", buf, 0xCu);
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      (*(v20 + 16))(v20, 0, v9);
    }
  }
}

void sub_1000B33EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [v9 recordZone];
        if (v10)
        {
          [*(a1 + 32) addObject:v9];
          [*(a1 + 40) insertOrUpdateArchiveLocationWithCloudStoreZone:v9 isArchived:0 insertionMode:0];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_1000B3514(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = a4;
    v9 = [v7 requestToken];

    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Uploaded pending request %@ with error %@", &v10, 0x16u);
  }
}

void sub_1000B36F8(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) dataSource];
    v3 = [v2 accountWithIdentifier:*(a1 + 48)];

    if (v3)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = *(a1 + 32);
      v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v27;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v27 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v26 + 1) + 8 * i);
            v10 = [*(a1 + 40) containerManager];
            v11 = [v10 cloudStoreZonesByDatabaseIdentifierForItem:v9 action:1];

            v24[0] = _NSConcreteStackBlock;
            v24[1] = 3221225472;
            v24[2] = sub_1000B3AC4;
            v24[3] = &unk_100842530;
            v24[4] = *(a1 + 40);
            v24[5] = v9;
            v25 = v4;
            [v11 enumerateKeysAndObjectsUsingBlock:v24];
          }

          v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v6);
      }

      v12 = [PDApplePayCloudStoreRecordsRequest alloc];
      v13 = [(PDCloudStoreRecordsRequest *)v12 initWithRequestType:6 storeChanges:1 returnRecords:1 qualityOfService:25 groupName:PKCloudStoreOperationGroupUserActionExplicit groupNameSuffix:PKCloudStoreOperationGroupSuffixPassutil];
      [(PDCloudStoreRecordsRequest *)v13 setRecordsToSaveByDatabaseIdentifier:v4];
      v14 = *(a1 + 40);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000B3CAC;
      v22[3] = &unk_1008424B8;
      v23 = *(a1 + 56);
      [v14 executeRecordsRequest:v13 completion:v22];
    }

    else
    {
      if (!*(a1 + 56))
      {
LABEL_20:

        return;
      }

      v17 = *(a1 + 40);
      v18 = [NSString stringWithFormat:@"There are no account with identifier %@", *(a1 + 48)];
      v4 = [v17 errorWithCode:-4002 description:v18];

      v19 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 48);
        *buf = 138412290;
        v32 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "There are no account with identifier %@", buf, 0xCu);
      }

      (*(*(a1 + 56) + 16))();
    }

    goto LABEL_20;
  }

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "There are no events to sync with clout kit", buf, 2u);
  }

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, 0, 0);
  }
}

void sub_1000B3AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138412290;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v20 + 1) + 8 * i) recordZone];
        if (v12)
        {
          v13 = [*(a1 + 32) _recordsByFromAccountEvent:*(a1 + 40) zone:v12];
          v14 = [*(a1 + 48) objectForKey:v5];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = objc_alloc_init(NSMutableSet);
          }

          v18 = v16;

          [*(a1 + 48) setObject:v18 forKey:v5];
          [v18 unionSet:v13];
        }

        else
        {
          v13 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a1 + 40);
            *buf = v19;
            v25 = v17;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error: No zone defined for account event %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }
}

void sub_1000B3CAC(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = a3;
    v6 = [a2 cloudStoreRecords];
    (*(v3 + 16))(v3, v6, v5);
  }
}

void sub_1000B3DC8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: Received peer payment account change notification. Updating peer payment account.", v9, 2u);
  }

  v3 = *(a1 + 32);
  v4 = v3[34];
  v5 = [v3 dataSource];
  v6 = [v5 peerPaymentAccount];
  v7 = *(a1 + 32);
  v8 = *(v7 + 272);
  *(v7 + 272) = v6;

  [*(a1 + 32) _queue_processPeerPaymentAccountChangeWithOldAccount:v4 newPeerPaymentAccount:*(*(a1 + 32) + 272)];
}

void sub_1000B3F4C(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: Received account added notification. %@", &v10, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = v4[35];
    v6 = [v4 dataSource];
    v7 = [v6 accounts];
    v8 = *(a1 + 40);
    v9 = *(v8 + 280);
    *(v8 + 280) = v7;

    [*(a1 + 40) _queue_processAccountChangeWithOldAccounts:v5 newAccounts:*(*(a1 + 40) + 280)];
  }
}

void sub_1000B4118(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer: Received account removed notification %@", &v10, 0xCu);
    }

    v4 = *(a1 + 40);
    v5 = v4[35];
    v6 = [v4 dataSource];
    v7 = [v6 accounts];
    v8 = *(a1 + 40);
    v9 = *(v8 + 280);
    *(v8 + 280) = v7;

    [*(a1 + 40) _queue_processAccountChangeWithOldAccounts:v5 newAccounts:*(*(a1 + 40) + 280)];
  }
}

void sub_1000B4308(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreZoneManager: Received account changed notification from oldAccount %@ to newAccount %@", &v11, 0x16u);
    }

    v5 = *(a1 + 48);
    v6 = v5[35];
    v7 = [v5 dataSource];
    v8 = [v7 accounts];
    v9 = *(a1 + 48);
    v10 = *(v9 + 280);
    *(v9 + 280) = v8;

    [*(a1 + 48) _queue_processAccountChangeWithOldAccounts:v6 newAccounts:*(*(a1 + 48) + 280)];
  }
}

void sub_1000B44E0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 288) objectForKey:*(a1 + 40)];
  v3 = [*(a1 + 32) dataSource];
  v4 = [v3 sharedAccountCloudStoreByAccountIdentifier];
  v5 = *(a1 + 32);
  v6 = *(v5 + 288);
  *(v5 + 288) = v4;

  v7 = [*(*(a1 + 32) + 288) objectForKey:*(a1 + 40)];
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreZoneManager: Received shared account changed notification for accountIdentifier %@. New shared account cloud store %@", &v10, 0x16u);
  }

  [*(a1 + 32) _queue_processSharedAccountCloudStoreChangeWithOldSharedAccountCloudStore:v2 newSharedAccountCloudStore:v7];
}

void sub_1000B46C8(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 accountUsersByAccountIdentifier];
  v4 = *(a1 + 32);
  v5 = *(v4 + 296);
  *(v4 + 296) = v3;

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(*(a1 + 32) + 296);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreZoneManager: Received account users changed notification for accountIdentifier %@. %@", &v10, 0x16u);
  }

  v9 = [*(*(a1 + 32) + 288) objectForKey:*(a1 + 40)];
  [*(a1 + 32) _queue_processSharedAccountCloudStoreChangeWithOldSharedAccountCloudStore:v9 newSharedAccountCloudStore:v9];
}

void sub_1000B4964(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 role] == 1)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) _peerPaymentZoneNamesForAccount:v5 containerDatabase:*(a1 + 48)];
    [v3 unionSet:v4];
  }
}

uint64_t sub_1000B7228(uint64_t a1, void *a2)
{
  v3 = [a2 accountIdentifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

id sub_1000B72AC(id a1, PKPaymentTransactionArchiveLocation *a2)
{
  v2 = [(PKPaymentTransactionArchiveLocation *)a2 cloudStoreZone];
  v3 = [v2 zoneName];

  return v3;
}

id sub_1000B7BDC(uint64_t a1)
{
  [*(a1 + 32) _queue_ensureZoneShareIntegrity];
  v2 = *(a1 + 32);

  return [v2 _updateFetchTaskScheduledActivityIfNeccessary];
}

void sub_1000B7C18(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B7CB8;
  block[3] = &unk_10083D648;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_1000B8494(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000B8538;
  v4[3] = &unk_10083C420;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

id sub_1000B8538(uint64_t a1)
{
  result = [*(a1 + 32) reportContainerChangeIntervalEndEventWithBeginUniqueIdentifier:*(a1 + 40) error:0];
  *(*(a1 + 32) + 184) = 0;
  return result;
}

uint64_t sub_1000B8888(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed ensuring zone share integrity check for peer payment.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B890C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableSet);
  v5 = objc_alloc_init(NSMutableSet);
  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_1000B94B4;
  v91[3] = &unk_100842628;
  v56 = v4;
  v92 = v56;
  v53 = v5;
  v93 = v53;
  v55 = v3;
  [v3 enumerateObjectsUsingBlock:v91];
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412546;
    v98 = v55;
    v99 = 2112;
    v100 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ensuring zone shares for family members %@ in zones %@", buf, 0x16u);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v98 = v56;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Family members who current user can share %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v98 = v53;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Family members who current user cannot share %@", buf, 0xCu);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v55 count];
    v9 = [*(a1 + 32) count];
    v10 = *(a1 + 32);
    *buf = 134218754;
    v98 = v8;
    v99 = 2112;
    v100 = v55;
    v101 = 2048;
    v102 = v9;
    v103 = 2112;
    v104 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ensuring zone shares for %lu family members %@ in %lu zones %@", buf, 0x2Au);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v56 count];
    *buf = 134218242;
    v98 = v11;
    v99 = 2112;
    v100 = v56;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%lu family members who current user can share %@", buf, 0x16u);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v53 count];
    *buf = 134218242;
    v98 = v12;
    v99 = 2112;
    v100 = v53;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%lu family members who current user cannot share %@", buf, 0x16u);
  }

  group = dispatch_group_create();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = *(a1 + 32);
  v51 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v51)
  {
    v50 = *v88;
    v60 = a1;
    do
    {
      v13 = 0;
      do
      {
        if (*v88 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v13;
        v14 = *(*(&v87 + 1) + 8 * v13);
        v15 = [v14 shareParticipants];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v54 = v15;
        v16 = [v15 countByEnumeratingWithState:&v83 objects:v95 count:16];
        if (v16)
        {
          v17 = v16;
          v57 = *v84;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v84 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v19 = [*(*(&v83 + 1) + 8 * i) participantHandle];
              v81[0] = _NSConcreteStackBlock;
              v81[1] = 3221225472;
              v81[2] = sub_1000B9524;
              v81[3] = &unk_100842650;
              v20 = v19;
              v82 = v20;
              v21 = [NSPredicate predicateWithBlock:v81];
              [v56 filterUsingPredicate:v21];

              v79[0] = _NSConcreteStackBlock;
              v79[1] = 3221225472;
              v79[2] = sub_1000B9548;
              v79[3] = &unk_100841E10;
              v22 = v20;
              v80 = v22;
              v23 = [v55 pk_firstObjectPassingTest:v79];
              if (*(a1 + 56) != 1)
              {
                v27 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
                v28 = v6;
                if (v27)
                {
                  *buf = 138412546;
                  v98 = v22;
                  v99 = 2114;
                  v100 = v14;
                  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing share for %@ in zone %{public}@ since the user is not a participant anymore.", buf, 0x16u);
                  v28 = v6;
                }

                goto LABEL_34;
              }

              v77[0] = _NSConcreteStackBlock;
              v77[1] = 3221225472;
              v77[2] = sub_1000B9554;
              v77[3] = &unk_100841E10;
              v24 = v22;
              v78 = v24;
              if (![v53 pk_hasObjectPassingTest:v77])
              {
                v29 = &v78;
                if (v23)
                {
                  goto LABEL_35;
                }

                if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_33;
                }

                *buf = 138412546;
                v98 = v24;
                v99 = 2114;
                v100 = v14;
                v25 = v6;
                v26 = "Removing share for %@ in zone %{public}@ since they are not in the family.";
                goto LABEL_32;
              }

              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v98 = v24;
                v99 = 2114;
                v100 = v14;
                v25 = v6;
                v26 = "Removing share for %@ in zone %{public}@ since the user is not a participant anymore.";
LABEL_32:
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
              }

LABEL_33:

              v28 = v78;
LABEL_34:

              dispatch_group_enter(group);
              v30 = [*(a1 + 40) delegate];
              v31 = *(a1 + 40);
              v32 = [v14 zoneName];
              v75[0] = _NSConcreteStackBlock;
              v75[1] = 3221225472;
              v75[2] = sub_1000B9560;
              v75[3] = &unk_10083DFE8;
              v76 = group;
              [v30 cloudStoreContainer:v31 removeZoneShareInvitationForHandle:v22 zoneName:v32 qualitOfService:17 completion:v75];

              a1 = v60;
              v29 = &v76;
LABEL_35:
            }

            v17 = [v54 countByEnumeratingWithState:&v83 objects:v95 count:16];
          }

          while (v17);
        }

        if (*(a1 + 56) == 1)
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v58 = v56;
          v33 = [v58 countByEnumeratingWithState:&v71 objects:v94 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v72;
            do
            {
              for (j = 0; j != v34; j = j + 1)
              {
                if (*v72 != v35)
                {
                  objc_enumerationMutation(v58);
                }

                v37 = *(*(&v71 + 1) + 8 * j);
                if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v98 = v37;
                  v99 = 2114;
                  v100 = v14;
                  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating share for %@ in zone %{public}@ since we have not shared the zone yet.", buf, 0x16u);
                }

                dispatch_group_enter(group);
                v38 = [*(v60 + 40) delegate];
                v39 = *(v60 + 40);
                v40 = [v37 appleID];
                v41 = [v14 zoneName];
                v69[0] = _NSConcreteStackBlock;
                v69[1] = 3221225472;
                v69[2] = sub_1000B9568;
                v69[3] = &unk_10083DFE8;
                v70 = group;
                [v38 cloudStoreContainer:v39 sendZoneShareInvitationForHandle:v40 zoneName:v41 permission:2 qualitOfService:17 completion:v69];
              }

              v34 = [v58 countByEnumeratingWithState:&v71 objects:v94 count:16];
            }

            while (v34);
          }

          a1 = v60;
        }

        v13 = v52 + 1;
      }

      while ((v52 + 1) != v51);
      v51 = [obj countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v51);
  }

  if (!*(a1 + 56))
  {
    v42 = [*(a1 + 40) containerManager];
    v43 = [v42 databaseForScope:3];

    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_1000B9570;
    v67[3] = &unk_100842678;
    v44 = objc_alloc_init(NSMutableDictionary);
    v68 = v44;
    [v55 enumerateObjectsUsingBlock:v67];
    v45 = [*(*(a1 + 40) + 272) associatedAccountInformation];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1000B95D4;
    v63[3] = &unk_1008426A0;
    v63[4] = *(a1 + 40);
    v64 = v43;
    v65 = v44;
    v66 = group;
    v46 = v44;
    v47 = v43;
    [v45 enumerateAssociatedAccountsUsingBlock:v63];
  }

  v48 = [*(a1 + 40) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B98E8;
  block[3] = &unk_10083D648;
  v62 = *(a1 + 48);
  dispatch_group_notify(group, v48, block);
}

void sub_1000B94B4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isMe] & 1) == 0)
  {
    v3 = [v5 canSharePeerPaymentAccount];
    v4 = 40;
    if (v3)
    {
      v4 = 32;
    }

    [*(a1 + v4) addObject:v5];
  }
}

void sub_1000B9570(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 altDSID];
  [v2 setObject:v3 forKey:v4];
}

void sub_1000B95D4(uint64_t a1, void *a2)
{
  v23 = a2;
  if ([v23 role] == 1)
  {
    v3 = [v23 cloudStoreZoneNames];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v28;
      *&v5 = 138412290;
      v21 = v5;
      v22 = v3;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v28 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          v10 = [*(a1 + 32) containerManager];
          v11 = [v10 cloudStoreZoneForZoneName:v9 inContainerDatabase:*(a1 + 40)];

          if (!v11)
          {
            v12 = [v23 altDSID];
            v13 = [*(a1 + 48) objectForKey:v12];
            v14 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v32 = v9;
              v33 = 2112;
              v34 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "There is no zone with name %{public}@ in the shared database> Asking %@ for a zone invitation", buf, 0x16u);
            }

            if (v13)
            {
              dispatch_group_enter(*(a1 + 56));
              v15 = [*(a1 + 32) delegate];
              v24 = v12;
              v16 = v6;
              v17 = v7;
              v18 = *(a1 + 32);
              v19 = [v13 appleID];
              v25[0] = _NSConcreteStackBlock;
              v25[1] = 3221225472;
              v25[2] = sub_1000B98E0;
              v25[3] = &unk_10083DFE8;
              v26 = *(a1 + 56);
              v20 = v18;
              v7 = v17;
              v6 = v16;
              v12 = v24;
              [v15 cloudStoreContainer:v20 requestsZoneShareFromHandle:v19 zoneName:v9 completion:v25];

              v3 = v22;
              v14 = v26;
            }

            else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v21;
              v32 = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Cannot request zone share data for altDSID %@ because there is no associated member of the family.", buf, 0xCu);
            }
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v6);
    }
  }
}

void sub_1000B9ADC(uint64_t a1, void *a2)
{
  v110 = a2;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = *(*(a1 + 32) + 288);
  v108 = [obj countByEnumeratingWithState:&v162 objects:v182 count:16];
  if (v108)
  {
    v107 = *v163;
    v3 = PKCloudStoreTransactionsZoneName;
    v115 = PKCloudStoreTransactionsZoneName;
    do
    {
      v4 = 0;
      do
      {
        if (*v163 != v107)
        {
          v5 = v4;
          objc_enumerationMutation(obj);
          v4 = v5;
        }

        v109 = v4;
        v6 = *(*(&v162 + 1) + 8 * v4);
        v127 = [*(*(a1 + 32) + 296) objectForKey:v6];
        v121 = [v127 currentAccountUser];
        v112 = v6;
        v7 = [*(*(a1 + 32) + 288) objectForKey:v6];
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v111 = v7;
        v116 = [v7 sharedAccountCloudStoreZonesWithAccess:1];
        v8 = [v116 countByEnumeratingWithState:&v158 objects:v181 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v159;
          v113 = *v159;
          do
          {
            v11 = 0;
            v114 = v9;
            do
            {
              if (*v159 != v10)
              {
                objc_enumerationMutation(v116);
              }

              v125 = *(*(&v158 + 1) + 8 * v11);
              v12 = [v125 zoneName];
              v13 = [*(a1 + 32) containerManager];
              v14 = [v13 cloudStoreZoneForZoneName:v12 inContainerDatabase:*(a1 + 40)];

              if (v14)
              {
                v15 = v12;
                v16 = v15;
                if (v15 == v3)
                {
                  v18 = v15;
                  goto LABEL_96;
                }

                if (v15)
                {
                  v17 = v3 == 0;
                }

                else
                {
                  v17 = 1;
                }

                if (v17)
                {

LABEL_23:
                  v118 = v11;
                  v119 = v14;
                  v117 = v12;
                  v122 = objc_alloc_init(NSMutableArray);
                  v154 = 0u;
                  v155 = 0u;
                  v156 = 0u;
                  v157 = 0u;
                  v21 = [v125 sharedUsersAltDSIDs];
                  v22 = [v21 countByEnumeratingWithState:&v154 objects:v180 count:16];
                  v23 = v121;
                  if (!v22)
                  {
                    goto LABEL_43;
                  }

                  v24 = v22;
                  v25 = *v155;
                  while (2)
                  {
                    v26 = 0;
LABEL_26:
                    if (*v155 != v25)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v27 = *(*(&v154 + 1) + 8 * v26);
                    v28 = [v127 accountUserWithAltDSID:v27];
                    if (v23)
                    {
                      if (([PKAccountUser currentUser:v23 canShareZone:v125 withAccountUser:v28]& 1) != 0)
                      {
                        if (v28)
                        {
                          [v122 addObject:v28];
                          goto LABEL_38;
                        }

                        v29 = PKLogFacilityTypeGetObject();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v170 = v27;
                          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "There is no account user for altDSID %@", buf, 0xCu);
                        }

LABEL_37:

LABEL_38:
                        if (v24 == ++v26)
                        {
                          v34 = [v21 countByEnumeratingWithState:&v154 objects:v180 count:16];
                          v24 = v34;
                          if (!v34)
                          {
LABEL_43:

                            v35 = objc_alloc_init(NSMutableSet);
                            v150 = 0u;
                            v151 = 0u;
                            v152 = 0u;
                            v153 = 0u;
                            v36 = [v119 shareParticipants];
                            v37 = [v36 countByEnumeratingWithState:&v150 objects:v179 count:16];
                            if (v37)
                            {
                              v38 = v37;
                              v39 = *v151;
                              do
                              {
                                for (i = 0; i != v38; i = i + 1)
                                {
                                  if (*v151 != v39)
                                  {
                                    objc_enumerationMutation(v36);
                                  }

                                  v41 = [*(*(&v150 + 1) + 8 * i) participantHandle];
                                  [v35 addObject:v41];
                                }

                                v38 = [v36 countByEnumeratingWithState:&v150 objects:v179 count:16];
                              }

                              while (v38);
                            }

                            v120 = objc_alloc_init(NSMutableSet);
                            v146 = 0u;
                            v147 = 0u;
                            v148 = 0u;
                            v149 = 0u;
                            v18 = v122;
                            v42 = [v18 countByEnumeratingWithState:&v146 objects:v178 count:16];
                            if (v42)
                            {
                              v43 = v42;
                              v44 = *v147;
                              do
                              {
                                for (j = 0; j != v43; j = j + 1)
                                {
                                  if (*v147 != v44)
                                  {
                                    objc_enumerationMutation(v18);
                                  }

                                  v46 = *(*(&v146 + 1) + 8 * j);
                                  v145[0] = _NSConcreteStackBlock;
                                  v145[1] = 3221225472;
                                  v145[2] = sub_1000BAB5C;
                                  v145[3] = &unk_10083DC08;
                                  v145[4] = v46;
                                  if (([v35 pk_hasObjectPassingTest:v145] & 1) == 0)
                                  {
                                    v47 = [v46 appleID];
                                    if (v47)
                                    {
                                      [v120 addObject:v47];
                                    }

                                    else
                                    {
                                      v48 = PKLogFacilityTypeGetObject();
                                      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 138412290;
                                        v170 = v46;
                                        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "There is no appleID for user %@ and no family member with the altDSID", buf, 0xCu);
                                      }
                                    }
                                  }
                                }

                                v43 = [v18 countByEnumeratingWithState:&v146 objects:v178 count:16];
                              }

                              while (v43);
                            }

                            v123 = objc_alloc_init(NSMutableSet);
                            v141 = 0u;
                            v142 = 0u;
                            v143 = 0u;
                            v144 = 0u;
                            v49 = v35;
                            v50 = [v49 countByEnumeratingWithState:&v141 objects:v177 count:16];
                            if (v50)
                            {
                              v51 = v50;
                              v52 = *v142;
                              do
                              {
                                for (k = 0; k != v51; k = k + 1)
                                {
                                  if (*v142 != v52)
                                  {
                                    objc_enumerationMutation(v49);
                                  }

                                  v54 = *(*(&v141 + 1) + 8 * k);
                                  v140[0] = _NSConcreteStackBlock;
                                  v140[1] = 3221225472;
                                  v140[2] = sub_1000BAB68;
                                  v140[3] = &unk_100841E38;
                                  v140[4] = v54;
                                  if (([v18 pk_containsObjectPassingTest:v140]& 1) == 0)
                                  {
                                    [v123 addObject:v54];
                                  }
                                }

                                v51 = [v49 countByEnumeratingWithState:&v141 objects:v177 count:16];
                              }

                              while (v51);
                            }

                            if ([v120 count])
                            {
                              v55 = PKLogFacilityTypeGetObject();
                              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                              {
                                v56 = [v120 count];
                                v57 = [v125 zoneName];
                                v58 = [v119 zoneName];
                                *buf = 134218754;
                                v170 = v56;
                                v171 = 2114;
                                v172 = v57;
                                v173 = 2114;
                                v174 = v58;
                                v175 = 2112;
                                v176 = v120;
                                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%lu account users that need a zone share for shared account zone %{public}@, cloud store zone %{public}@: %@", buf, 0x2Au);
                              }

                              v138 = 0u;
                              v139 = 0u;
                              v136 = 0u;
                              v137 = 0u;
                              v59 = v120;
                              v60 = [v59 countByEnumeratingWithState:&v136 objects:v168 count:16];
                              if (v60)
                              {
                                v61 = v60;
                                v62 = *v137;
                                do
                                {
                                  for (m = 0; m != v61; m = m + 1)
                                  {
                                    if (*v137 != v62)
                                    {
                                      objc_enumerationMutation(v59);
                                    }

                                    v64 = *(*(&v136 + 1) + 8 * m);
                                    v65 = [*(a1 + 32) delegate];
                                    [v65 cloudStoreContainer:*(a1 + 32) sendZoneShareInvitationForHandle:v64 zoneName:v16 permission:3 qualitOfService:17 completion:0];
                                  }

                                  v61 = [v59 countByEnumeratingWithState:&v136 objects:v168 count:16];
                                }

                                while (v61);
                              }
                            }

                            v14 = v119;
                            if ([v123 count])
                            {
                              v66 = PKLogFacilityTypeGetObject();
                              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                              {
                                v67 = [v123 count];
                                v68 = [v125 zoneName];
                                v69 = [v119 zoneName];
                                *buf = 134218754;
                                v170 = v67;
                                v171 = 2114;
                                v172 = v68;
                                v173 = 2114;
                                v174 = v69;
                                v175 = 2112;
                                v176 = v123;
                                _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "%lu account users that need to be removed from the zone share for shared account zone %{public}@, cloud store zone %{public}@: %@", buf, 0x2Au);
                              }

                              v134 = 0u;
                              v135 = 0u;
                              v132 = 0u;
                              v133 = 0u;
                              v70 = v123;
                              v71 = [v70 countByEnumeratingWithState:&v132 objects:v167 count:16];
                              if (v71)
                              {
                                v72 = v71;
                                v73 = *v133;
                                do
                                {
                                  for (n = 0; n != v72; n = n + 1)
                                  {
                                    if (*v133 != v73)
                                    {
                                      objc_enumerationMutation(v70);
                                    }

                                    v75 = *(*(&v132 + 1) + 8 * n);
                                    v76 = [*(a1 + 32) delegate];
                                    [v76 cloudStoreContainer:*(a1 + 32) removeZoneShareInvitationForHandle:v75 zoneName:v16 qualitOfService:17 completion:0];
                                  }

                                  v72 = [v70 countByEnumeratingWithState:&v132 objects:v167 count:16];
                                }

                                while (v72);
                              }

                              v14 = v119;
                            }

                            v9 = v114;
                            v3 = v115;
                            v10 = v113;
                            v12 = v117;
                            v11 = v118;
                            goto LABEL_96;
                          }

                          continue;
                        }

                        goto LABEL_26;
                      }

                      v29 = PKLogFacilityTypeGetObject();
                      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_37;
                      }

                      v30 = [v125 zoneName];
                      *buf = 138543874;
                      v170 = v30;
                      v171 = 2112;
                      v172 = v27;
                      v173 = 2112;
                      v174 = v28;
                      v31 = v29;
                      v32 = "Not sharing zone %{public}@ with altDSID %@ since the account state is not acceptable %@.";
                      v33 = 32;
                    }

                    else
                    {
                      v29 = PKLogFacilityTypeGetObject();
                      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_37;
                      }

                      v30 = [v125 zoneName];
                      *buf = 138543618;
                      v170 = v30;
                      v171 = 2112;
                      v172 = v28;
                      v31 = v29;
                      v32 = "The current account is not defined. Cannot share zone %{public}@ for user %@.";
                      v33 = 22;
                    }

                    break;
                  }

                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, v33);

                  v23 = v121;
                  goto LABEL_37;
                }

                v20 = [v15 isEqualToString:v3];

                if ((v20 & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              else
              {
                v18 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = [v125 zoneName];
                  *buf = 138543362;
                  v170 = v19;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error: A cloud store zone was not found for shared account cloud store zone %{public}@", buf, 0xCu);
                }

LABEL_96:
              }

              v11 = v11 + 1;
            }

            while (v11 != v9);
            v9 = [v116 countByEnumeratingWithState:&v158 objects:v181 count:16];
          }

          while (v9);
        }

        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = [v111 sharedAccountCloudStoreZonesWithAccess:2];
        v77 = [v126 countByEnumeratingWithState:&v128 objects:v166 count:16];
        v78 = v121;
        if (!v77)
        {
          goto LABEL_141;
        }

        v79 = v77;
        v80 = *v129;
        do
        {
          v81 = 0;
          do
          {
            if (*v129 != v80)
            {
              objc_enumerationMutation(v126);
            }

            v82 = *(*(&v128 + 1) + 8 * v81);
            v83 = [v82 zoneName];
            v84 = [*(a1 + 32) containerManager];
            v85 = [v84 cloudStoreZoneForZoneName:v83 inContainerDatabase:*(a1 + 48)];

            if (!v78)
            {
              v89 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v90 = *(a1 + 56);
                *buf = 138412546;
                v170 = v112;
                v171 = 2112;
                v172 = v90;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "An account user is not defined for the account %@ and altDSID %@", buf, 0x16u);
              }

              goto LABEL_135;
            }

            if (([PKAccountUser currentUser:v78 shouldRequestZoneShareForZone:v82]& 1) == 0)
            {
              v89 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v91 = [v82 zoneName];
                v92 = *(a1 + 56);
                *buf = 138543874;
                v170 = v91;
                v171 = 2112;
                v172 = v92;
                v173 = 2112;
                v174 = v78;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Not sharing zone => %{public}@ with altDSID => %@ since the account state is not acceptable => %@.", buf, 0x20u);
              }

              goto LABEL_135;
            }

            if (v85)
            {
              goto LABEL_136;
            }

            v86 = v83;
            v87 = v86;
            if (v86 == v115)
            {

LABEL_120:
              v89 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v170 = v111;
                _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "Error: The transactions zone can never be shared. %@", buf, 0xCu);
              }

              v78 = v121;
              goto LABEL_135;
            }

            if (v86)
            {
              v88 = v115 == 0;
            }

            else
            {
              v88 = 1;
            }

            if (v88)
            {
            }

            else
            {
              v93 = [v86 isEqualToString:?];

              if (v93)
              {
                goto LABEL_120;
              }
            }

            v89 = [v82 originatorAltDSID];
            v94 = [v127 accountUserWithAltDSID:v89];
            v124 = v94;
            if (v94)
            {
              v95 = v94;
              v96 = [v94 appleID];

              if (v96)
              {
                v97 = [v95 appleID];
                if (v97)
                {
                  v98 = v97;
LABEL_133:
                  v102 = [*(a1 + 32) delegate];
                  [v102 cloudStoreContainer:*(a1 + 32) requestsZoneShareFromHandle:v98 zoneName:v87 completion:0];

                  goto LABEL_134;
                }

                v101 = [v110 objectForKey:v89];
                v98 = [v101 appleID];

                if (v98)
                {
                  goto LABEL_133;
                }

                v98 = PKLogFacilityTypeGetObject();
                if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_134;
                }

                *buf = 138412290;
                v170 = v89;
                v99 = v98;
                v100 = "There is no appleID for zone originator %@ and no family member with the altDSID";
                goto LABEL_131;
              }

              v98 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v170 = v124;
                v99 = v98;
                v100 = "The shared account zone originator with altDSID %@ does not have an appleID defined.";
                goto LABEL_131;
              }
            }

            else
            {
              v98 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v170 = 0;
                v99 = v98;
                v100 = "The shared account zone originator with altDSID %@ is not an account user.";
LABEL_131:
                _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, v100, buf, 0xCu);
              }
            }

LABEL_134:
            v78 = v121;

LABEL_135:
LABEL_136:

            v81 = v81 + 1;
          }

          while (v79 != v81);
          v103 = [v126 countByEnumeratingWithState:&v128 objects:v166 count:16];
          v79 = v103;
        }

        while (v103);
LABEL_141:

        v4 = v109 + 1;
        v3 = v115;
      }

      while ((v109 + 1) != v108);
      v108 = [obj countByEnumeratingWithState:&v162 objects:v182 count:16];
    }

    while (v108);
  }

  v104 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Completed ensuring zone share integrity check for accounts.", buf, 2u);
  }

  v105 = *(a1 + 64);
  if (v105)
  {
    (*(v105 + 16))();
  }
}

uint64_t sub_1000BAD44(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed ensuring zone share integrity.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000BADC8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BAE8C;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 _queue_createOrRemoveZoneSharesForPeerPaymentIfNecessaryWithCompletion:v11];
}

void sub_1000BAEA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BAF68;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 _queue_createOrRemoveZoneSharesForAccountsIfNecessaryWithCompletion:v11];
}

void sub_1000BBBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BBCBC;
  v7[3] = &unk_10083C820;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000BBD84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BBE4C;
  v6[3] = &unk_10083DCB8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000BBE4C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 altDSID];
        [v2 setObject:v9 forKey:v10];

        if ([v9 isMe])
        {
          v11 = v9;

          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v12 = *(a1 + 40);
  v13 = [v2 copy];
  (*(v12 + 16))(v12, v13, v6);
}

void sub_1000BC124(uint64_t a1)
{
  if ([*(a1 + 32) isSetup])
  {
    if (PDScheduledActivityExists())
    {
      return;
    }

    v2 = PKRandomIntegerInRange();
    v3 = PKRandomIntegerInRange();
    v4 = +[NSDate date];
    v5 = [v4 dateByAddingTimeInterval:v3 * 60.0 + v2 * 3600.0];

    v6 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v5];
    [v6 setRepeating:0];
    [v6 setRequireNetworkConnectivity:1];
    [v6 setRequireScreenSleep:1];
    [v6 setRequireMainsPower:1];
    PDScheduledActivityRegister();
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = @"ApplePayCloudStoreUnarchivedTask";
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Scheduled cloud store fetch activity %{public}@ for %{public}@", buf, 0x16u);
    }

    v14[0] = @"activityIdentifier";
    v14[1] = @"startTime";
    v15[0] = @"ApplePayCloudStoreUnarchivedTask";
    v8 = [v5 description];
    v15[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    v10 = *(a1 + 32);
    v11 = [v9 description];
    v13 = v11;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v10 reportContainerChangeSignpostEventType:56 stateName:@"ApplePayCloudStoreUnarchivedTask" objectNames:v12 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:*(a1 + 40)];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = @"ApplePayCloudStoreUnarchivedTask";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not scheduling %{public}@ since the container is not setup", buf, 0xCu);
    }
  }
}

void sub_1000BC524(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([*(a1 + 32) isSetup])
  {
    v5 = [*(a1 + 32) dataSource];
    v6 = [v5 allRecordFetchTasks];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v56 count:16];
    if (!v8)
    {

      v11 = 0;
      if ((PDScheduledActivityExists() & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_35;
    }

    v9 = v8;
    v39 = v4;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v41;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if ([v15 status] == 3)
        {
          v16 = [v15 identifier];

          if (v16)
          {
            v17 = [v15 nextPossibleFetchDate];
            v18 = v17;
            if (v17)
            {
              if (!v11 || [v17 compare:v11] == -1)
              {
                v19 = v18;

                v11 = v19;
              }
            }

            else
            {
              v12 = 1;
            }

            v10 = 1;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v56 count:16];
    }

    while (v9);

    if (v11)
    {
      v20 = +[NSDate date];
      v21 = [v11 compare:v20]== -1;

      if ((v21 | v12))
      {
LABEL_19:

        v22 = PDScheduledActivityExists();
        v11 = 0;
LABEL_26:
        v4 = v39;
        if (v10)
        {
          if (v22)
          {
            v23 = PDScheduledActivityGetCriteria();
            v24 = [v23 startDate];
            if (v24 && v11 && ((PKEqualObjects() & 1) != 0 || [v11 compare:v24]== 1))
            {

              v25 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                v48 = @"ApplePayCloudStorePerformFetchTasks";
                v49 = 2114;
                v50 = v11;
                v51 = 2114;
                v52 = v24;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not scheduling cloud store fetch activity %{public}@ with startDate %{public}@ since the existingStartDate is %{public}@", buf, 0x20u);
              }

LABEL_59:

              goto LABEL_60;
            }

            PDScheduledActivityRemove();
          }

          else
          {
            v24 = 0;
          }

          v25 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:v11];
          [v25 setRepeating:0];
          [v25 setRequireNetworkConnectivity:1];
          [v25 setRequireScreenSleep:0];
          [v25 setRequireMainsPower:0];
          PDScheduledActivityRegister();
          v30 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v48 = @"ApplePayCloudStorePerformFetchTasks";
            v49 = 2114;
            v50 = v11;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Scheduled cloud store fetch activity %{public}@ with start time %{public}@", buf, 0x16u);
          }

          v55[0] = @"ApplePayCloudStorePerformFetchTasks";
          v54[0] = @"activityIdentifier";
          v54[1] = @"startDate";
          if (v11)
          {
            v31 = [v11 description];
          }

          else
          {
            v31 = @"<nil>";
          }

          v32 = &stru_10086D930;
          if (v7)
          {
            v32 = v7;
          }

          v55[1] = v31;
          v55[2] = v32;
          v54[2] = @"allRecordFetchTasks";
          v54[3] = @"didSchedule";
          v33 = @"NO";
          if (v22)
          {
            v33 = @"YES";
          }

          v55[3] = @"YES";
          v55[4] = v33;
          v54[4] = @"activityAlreadyExists";
          v54[5] = @"existingStartDate";
          if (v24)
          {
            v34 = [v24 description];
          }

          else
          {
            v34 = @"<nil>";
          }

          v55[5] = v34;
          v35 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:6];
          if (v24)
          {
          }

          if (v11)
          {
          }

          v36 = *(a1 + 32);
          v37 = [v35 description];
          v53 = v37;
          v38 = [NSArray arrayWithObjects:&v53 count:1];
          [v36 reportContainerChangeSignpostEventType:56 stateName:@"ApplePayCloudStorePerformFetchTasks" objectNames:v38 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:*(a1 + 40)];

          goto LABEL_59;
        }

        if (!v22)
        {
LABEL_60:

          goto LABEL_61;
        }

LABEL_35:
        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v48 = @"ApplePayCloudStorePerformFetchTasks";
          v49 = 2112;
          v50 = v7;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Removing scheduled cloud store fetch activity %{public}@ with fetchTasks %@", buf, 0x16u);
        }

        PDScheduledActivityRemove();
        v45[0] = @"activityIdentifier";
        v45[1] = @"allRecordFetchTasks";
        v27 = &stru_10086D930;
        if (v7)
        {
          v27 = v7;
        }

        v46[0] = @"ApplePayCloudStorePerformFetchTasks";
        v46[1] = v27;
        v45[2] = @"removedScheduledActivity";
        v46[2] = @"YES";
        v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:3];
        v28 = *(a1 + 32);
        v25 = [v24 description];
        v44 = v25;
        v29 = [NSArray arrayWithObjects:&v44 count:1];
        [v28 reportContainerChangeSignpostEventType:56 stateName:@"ApplePayCloudStorePerformFetchTasks" objectNames:v29 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:*(a1 + 40)];

        goto LABEL_59;
      }
    }

    else if (v12)
    {
      goto LABEL_19;
    }

    v22 = PDScheduledActivityExists();
    goto LABEL_26;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = @"ApplePayCloudStorePerformFetchTasks";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Not scheduling %{public}@ since the container is not setup", buf, 0xCu);
  }

LABEL_61:
}