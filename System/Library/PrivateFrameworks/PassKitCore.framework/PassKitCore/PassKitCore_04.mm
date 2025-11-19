void sub_1000BCE80(uint64_t a1)
{
  v2 = [*(a1 + 32) workQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BCF2C;
  v4[3] = &unk_10083E088;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, v4);
}

void sub_1000BCF2C(uint64_t a1)
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000BD108;
  v15 = &unk_10083C420;
  v2 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v2;
  v3 = objc_retainBlock(&v12);
  if ([*(a1 + 32) isSetup])
  {
    v4 = *(a1 + 40);
    if (v4 == @"ApplePayCloudStorePerformFetchTasks" || (v5 = v4) != 0 && (v6 = [(__CFString *)v4 isEqualToString:@"ApplePayCloudStorePerformFetchTasks"], v5, v6))
    {
      [*(a1 + 32) _queue_performFetchTasksBackgroundActivityForGroupName:*(a1 + 48) suffix:*(a1 + 56) completion:v3];
    }

    else
    {
      v9 = *(a1 + 40);
      if (v9 == @"ApplePayCloudStoreUnarchivedTask" || (v10 = v9) != 0 && (v11 = [(__CFString *)v9 isEqualToString:@"ApplePayCloudStoreUnarchivedTask"], v10, v11))
      {
        [*(a1 + 32) _queue_performUnarchivedTransactionsBackgroundActivityForGroupName:*(a1 + 48) suffix:*(a1 + 56) completion:v3];
      }
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138543362;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer not running %{public}@ since the container is not setup", buf, 0xCu);
    }

    (v3[2])(v3);
  }
}

void sub_1000BE3AC(uint64_t a1, NSUInteger a2, NSUInteger a3)
{
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) count];
    v21.location = a2;
    v21.length = a3;
    v8 = NSStringFromRange(v21);
    *buf = 134349314;
    v18 = v7;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "will upload local data batch following container setup for transactions: %{public}lu in range:%{public}@", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000BE508;
  v12[3] = &unk_100842810;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v15 = a2;
  v16 = a3;
  v11 = *(a1 + 48);
  v13 = v10;
  v14 = v11;
  [v9 addOperation:v12];
}

void sub_1000BE508(uint64_t a1, void *a2, void *a3, void *a4)
{
  v79 = a2;
  v78 = a3;
  v77 = a4;
  v76 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(NSMutableSet);
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v75 = (a1 + 48);
  obj = [*(a1 + 32) subarrayWithRange:{*(a1 + 48), *(a1 + 56)}];
  v84 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
  if (v84)
  {
    v83 = *v106;
    v82 = a1;
    v80 = v7;
    do
    {
      v8 = 0;
      do
      {
        if (*v106 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v105 + 1) + 8 * v8);
        v10 = [v9 type];
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v55 = [*(a1 + 40) dataSource];
            v56 = [v9 identifier];
            v13 = [v55 peerPaymentCounterpartImageDataWithIdentifier:v56];

            v57 = [v9 archiveLocationsWithType:0 isArchived:0];
            v17 = objc_alloc_init(NSMutableSet);
            v58 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [v57 count];
              *buf = 134218242;
              v115 = v59;
              v116 = 2112;
              v117 = v57;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%lu locations that need syncing for counterpart image data: %@", buf, 0x16u);
            }

            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v18 = v57;
            v60 = [v18 countByEnumeratingWithState:&v93 objects:v111 count:16];
            if (v60)
            {
              v61 = v60;
              v62 = *v94;
              do
              {
                for (i = 0; i != v61; i = i + 1)
                {
                  if (*v94 != v62)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v64 = *(*(&v93 + 1) + 8 * i);
                  v65 = [v64 cloudStoreZone];
                  if (v65 && ([v64 isArchived] & 1) == 0)
                  {
                    [v17 addObject:v65];
                  }
                }

                v61 = [v18 countByEnumeratingWithState:&v93 objects:v111 count:16];
              }

              while (v61);
            }
          }

          else
          {
            if (v10 != 3)
            {
              goto LABEL_72;
            }

            v25 = [*(a1 + 40) dataSource];
            v26 = [v9 identifier];
            v110 = v26;
            v27 = [NSArray arrayWithObjects:&v110 count:1];
            v28 = [v25 peerPaymentPendingRequestsForRequestTokens:v27];
            v13 = [v28 firstObject];

            v29 = [v9 archiveLocationsWithType:0 isArchived:0];
            v30 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [v29 count];
              *buf = 134218242;
              v115 = v31;
              v116 = 2112;
              v117 = v29;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%lu locations that need syncing for pending request: %@", buf, 0x16u);
            }

            v17 = objc_alloc_init(NSMutableSet);
            v89 = 0u;
            v90 = 0u;
            v91 = 0u;
            v92 = 0u;
            v18 = v29;
            v32 = [v18 countByEnumeratingWithState:&v89 objects:v109 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v90;
              do
              {
                for (j = 0; j != v33; j = j + 1)
                {
                  if (*v90 != v34)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v36 = *(*(&v89 + 1) + 8 * j);
                  v37 = [v36 cloudStoreZone];
                  if (v37 && ([v36 isArchived] & 1) == 0)
                  {
                    [v17 addObject:v37];
                  }
                }

                v33 = [v18 countByEnumeratingWithState:&v89 objects:v109 count:16];
              }

              while (v33);
            }
          }

          goto LABEL_65;
        }

        if (v10)
        {
          if (v10 != 1)
          {
            goto LABEL_72;
          }

          v11 = [*(a1 + 40) dataSource];
          v12 = [v9 identifier];
          v13 = [v11 peerPaymentRecurringPaymentWithIdentifier:v12];

          v14 = [v9 archiveLocationsWithType:0 isArchived:0];
          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v14 count];
            *buf = 134218242;
            v115 = v16;
            v116 = 2112;
            v117 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%lu locations that need syncing for recurring payment: %@", buf, 0x16u);
          }

          v17 = objc_alloc_init(NSMutableSet);
          v97 = 0u;
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v18 = v14;
          v19 = [v18 countByEnumeratingWithState:&v97 objects:v112 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v98;
            do
            {
              for (k = 0; k != v20; k = k + 1)
              {
                if (*v98 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v97 + 1) + 8 * k);
                v24 = [v23 cloudStoreZone];
                if (v24 && ([v23 isArchived] & 1) == 0)
                {
                  [v17 addObject:v24];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v97 objects:v112 count:16];
            }

            while (v20);
          }

LABEL_65:

          if (![v17 count])
          {
            a1 = v82;
            goto LABEL_70;
          }

          v44 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:v13 recordSpecificKeys:0];
          v66 = [v17 copy];
          [v44 setCloudStoreZones:v66];

          [v7 addObject:v44];
          goto LABEL_67;
        }

        v38 = [*(a1 + 40) dataSource];
        v39 = [v9 identifier];
        v13 = [v38 transactionWithTransactionIdentifier:v39];

        v18 = [v13 transactionSourceIdentifier];
        if (![v13 hasCloudArchivableDeviceData] || !objc_msgSend(*(a1 + 40), "_queue_canSyncTransactionToCloudKit:forTransactionSourceIdentifier:", v13, v18))
        {
          goto LABEL_71;
        }

        v40 = [v9 archiveLocationsWithType:0 isArchived:0];
        v41 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [v40 count];
          v43 = [v13 identifier];
          *buf = 134218498;
          v115 = v42;
          v116 = 2114;
          v117 = v43;
          v118 = 2112;
          v119 = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%lu locations that need syncing for transaction with identifier %{public}@: %@", buf, 0x20u);
        }

        v44 = objc_alloc_init(NSMutableSet);
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v17 = v40;
        v45 = [v17 countByEnumeratingWithState:&v101 objects:v113 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v102;
          do
          {
            for (m = 0; m != v46; m = m + 1)
            {
              if (*v102 != v47)
              {
                objc_enumerationMutation(v17);
              }

              v49 = *(*(&v101 + 1) + 8 * m);
              v50 = [v49 cloudStoreZone];
              if (v50 && ([v49 isArchived] & 1) == 0)
              {
                [v44 addObject:v50];
              }
            }

            v46 = [v17 countByEnumeratingWithState:&v101 objects:v113 count:16];
          }

          while (v46);
        }

        if (![v44 count])
        {
          v7 = v80;
LABEL_67:
          a1 = v82;
          goto LABEL_68;
        }

        v51 = [PKCloudStoreUploadItemConfiguration alloc];
        a1 = v82;
        v52 = [*(v82 + 40) cloudStoreSpecificKeysForItem:v13];
        v53 = [v51 initWithItem:v13 recordSpecificKeys:v52];

        v54 = [v44 copy];
        [v53 setCloudStoreZones:v54];

        v7 = v80;
        [v80 addObject:v53];

LABEL_68:
LABEL_70:

LABEL_71:
LABEL_72:
        v8 = v8 + 1;
      }

      while (v8 != v84);
      v67 = [obj countByEnumeratingWithState:&v105 objects:v120 count:16];
      v84 = v67;
    }

    while (v67);
  }

  if ([v7 count])
  {
    v68 = PKLogFacilityTypeGetObject();
    v70 = v77;
    v69 = v78;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v7 count];
      v72 = NSStringFromRange(*(a1 + 48));
      *buf = 134218498;
      v115 = v71;
      v116 = 2112;
      v117 = v7;
      v118 = 2114;
      v119 = v72;
      _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "uploading local data following container setup for %lu transactions: %@ in range:%{public}@", buf, 0x20u);
    }

    v73 = *(a1 + 40);
    v74 = PKCloudStoreOperationGroupInitialUpload;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_1000BEFA8;
    v85[3] = &unk_1008427E8;
    v88 = *v75;
    v87 = v77;
    v86 = v78;
    [v73 updateCloudStoreWithLocalItemsWithConfigurations:v7 groupName:v74 groupNameSuffix:0 qualityOfService:17 completion:v85];
  }

  else
  {
    v70 = v77;
    v69 = v78;
    (*(v77 + 2))(v77, v78, 0);
  }

  objc_autoreleasePoolPop(v76);
}

void sub_1000BEFA8(NSRange *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [a2 count];
    v9 = NSStringFromRange(a1[3]);
    v10 = 134349570;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "uploaded local data batch following container setup for %{public}ld transactions in range:%{public}@ with error:%{public}@", &v10, 0x20u);
  }

  (*(a1[2].length + 16))(a1[2].length, a1[2].location, v6 != 0);
}

void sub_1000BF0BC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134349056;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Did upload local data following container setup for transactions:%{public}lu", &v11, 0xCu);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  [*(a1 + 40) _updateUnarchivedTransactionsScheduledActivityIfNeccessary];
}

void sub_1000BFCAC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = a1;
    if (!*(a1 + 32))
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Marking all transactions as not CloudKit archived so they can be re-uploaded to the cloud store later.", buf, 2u);
      }

      v3 = [*(v1 + 40) dataSource];
      v4 = [v3 passesOfType:1];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
      obj = v5;
      if (v6)
      {
        v8 = v6;
        v9 = 0;
        v10 = *v53;
        *&v7 = 138543362;
        v34 = v7;
        v35 = *v53;
        v36 = v2;
        do
        {
          v11 = 0;
          v37 = v8;
          do
          {
            if (*v53 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v52 + 1) + 8 * v11);
            v13 = [v12 paymentPass];
            v14 = [v13 deviceTransactionSourceIdentifiers];
            v15 = [v14 anyObject];

            if ([*(v1 + 40) _queue_isRelevantTransactionSourceIdentifier:v15])
            {
              v39 = v15;
              v40 = v13;
              v41 = v11;
              if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v12 uniqueID];
                *buf = v34;
                v59 = v16;
                _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Marking all transactions for pass %{public}@ as not CloudKit archived", buf, 0xCu);
              }

              v17 = [*(v1 + 40) dataSource];
              v18 = [v17 transactionArchivesWithType:0 isArchived:1];

              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v43 = v18;
              v19 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v49;
                do
                {
                  v22 = 0;
                  v42 = v20;
                  do
                  {
                    if (*v49 != v21)
                    {
                      objc_enumerationMutation(v43);
                    }

                    v23 = *(*(&v48 + 1) + 8 * v22);
                    v24 = [*(v1 + 40) dataSource];
                    v25 = [v23 identifier];
                    v26 = [v24 transactionWithTransactionIdentifier:v25];

                    if ([v26 hasCloudArchivableDeviceData])
                    {
                      [v26 addUpdateReasons:0x10000];
                      v46 = 0u;
                      v47 = 0u;
                      v44 = 0u;
                      v45 = 0u;
                      v27 = [v23 archiveLocationsWithType:0 isArchived:1];
                      v28 = [v27 countByEnumeratingWithState:&v44 objects:v56 count:16];
                      if (v28)
                      {
                        v29 = v28;
                        v30 = v1;
                        v31 = *v45;
                        do
                        {
                          for (i = 0; i != v29; i = i + 1)
                          {
                            if (*v45 != v31)
                            {
                              objc_enumerationMutation(v27);
                            }

                            v33 = [*(*(&v44 + 1) + 8 * i) cloudStoreZone];
                            [v23 insertOrUpdateArchiveLocationWithCloudStoreZone:v33 isArchived:0 insertionMode:0];
                          }

                          v29 = [v27 countByEnumeratingWithState:&v44 objects:v56 count:16];
                        }

                        while (v29);
                        v9 = 1;
                        v1 = v30;
                        v20 = v42;
                      }
                    }

                    v22 = v22 + 1;
                  }

                  while (v22 != v20);
                  v20 = [v43 countByEnumeratingWithState:&v48 objects:v57 count:16];
                }

                while (v20);
              }

              v10 = v35;
              v2 = v36;
              v8 = v37;
              v13 = v40;
              v11 = v41;
              v15 = v39;
            }

            v11 = v11 + 1;
          }

          while (v11 != v8);
          v8 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v8);

        if ((v9 & 1) == 0)
        {
          goto LABEL_36;
        }

        v5 = [*(v1 + 40) delegate];
        [v5 cloudStoreContainer:*(v1 + 40) requestsSyncTransactionsToCloudStoreOriginatedOnDevice:0];
      }

LABEL_36:
    }
  }
}

void sub_1000C090C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C0A08;
  v10[3] = &unk_100842888;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 72);
  v13 = v7;
  v16 = v8;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v9 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v10];
}

void sub_1000C0A08(uint64_t a1, void *a2, void *a3)
{
  v180 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) containerManager];
  v8 = [v7 databaseForIdentifier:*(a1 + 40)];

  v9 = [*(a1 + 32) containerManager];
  v10 = [v5 firstObject];
  v11 = [v10 recordID];
  v12 = [v11 zoneID];
  v13 = [v9 cloudStoreZoneForZoneID:v12 inContainerDatabase:v8];

  v14 = [[PKCloudStoreRecord alloc] initWithRecords:v5];
  v171 = v13;
  oslog = [*(a1 + 32) _isCloudStoreZoneThePrimaryZoneForCurrentUser:v13 containerDatabase:v8];
  v15 = [*(a1 + 32) _transactionSourceIdentifierForTransactionCloudStoreRecord:v14 databaseIdentifier:*(a1 + 40)];
  v16 = [*(a1 + 32) dataSource];
  v17 = [v16 transactionSourceTypeForTransactionSourceIdentifier:v15];

  v172 = v15;
  v173 = v17;
  v181 = a1;
  if (v15)
  {
    v210[0] = v15;
    v18 = PKTransactionSourceTypeToString();
    v210[1] = v18;
    v19 = [NSArray arrayWithObjects:v210 count:2];

    v20 = a1;
    v22 = *(a1 + 48);
    v21 = (a1 + 48);
    [*(v21 - 2) reportContainerChangeSignpostEventType:45 stateName:v22 objectNames:v19 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

    goto LABEL_4;
  }

  v20 = a1;
  v23 = *(a1 + 48);
  v21 = (a1 + 48);
  [*(v21 - 2) reportContainerChangeSignpostEventType:45 stateName:v23 objectNames:0 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
  if ([v21[1] returnRecords])
  {
LABEL_4:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [*(v20 + 56) transactionSourceIdentifiers];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v24 count];
    v170 = v24;
    if (v15 && v25 && ([v24 containsObject:v15] & 1) == 0)
    {
      v39 = [NSString stringWithFormat:@"Skipping processing %@ because it is for a different transaction source", v14];
      v51 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v209 = v39;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v52 = *(v181 + 32);
      v53 = *(v181 + 48);
      v206 = v39;
      v41 = [NSArray arrayWithObjects:&v206 count:1];
      [v52 reportContainerChangeSignpostEventType:45 stateName:v53 objectNames:v41 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
      v54 = v172;
      goto LABEL_153;
    }

    v168 = v8;
    v169 = v14;
    v167 = v6;
    v26 = *(v181 + 80);
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v165 = v5;
    obj = v5;
    v27 = [obj countByEnumeratingWithState:&v191 objects:v205 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v192;
      v30 = PKCloudTransactionRecordType;
      v31 = PKCloudTransactionDeviceDataRecordType;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v192 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v191 + 1) + 8 * i);
          v34 = [v33 recordType];
          v35 = [v34 isEqualToString:v30];

          if (v35)
          {
            v26 |= 0x10uLL;
          }

          else
          {
            v36 = [v33 recordType];
            v37 = [v36 isEqualToString:v31];

            if (v37)
            {
              v26 |= 8uLL;
            }
          }
        }

        v28 = [obj countByEnumeratingWithState:&v191 objects:v205 count:16];
      }

      while (v28);
    }

    v38 = [*(v181 + 32) dataSource];
    v39 = [v38 transactionWithServiceIdentifier:*(v181 + 48) transactionSourceIdentifier:v172];

    v40 = [*(v181 + 32) dataSource];
    v41 = [v40 transactionArchiveForTransactionWithServiceIdentifier:*(v181 + 48) transactionSourceIdentifier:v172];

    if (v39)
    {
      v163 = [v39 hasNotificationServiceData] ^ 1;
      v42 = [NSString stringWithFormat:@"Applying properties to existing transaction with service id %@", *v21];
      v43 = PKLogFacilityTypeGetObject();
      v5 = v165;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v209 = v42;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      [v39 applyPropertiesFromCloudStoreRecord:v169];
      v44 = *(v181 + 32);
      v45 = *(v181 + 48);
      v204 = v42;
      v46 = [NSArray arrayWithObjects:&v204 count:1];
      [v44 reportContainerChangeSignpostEventType:45 stateName:v45 objectNames:v46 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

      if (oslog)
      {
        [v41 insertOrUpdateArchiveLocationWithCloudStoreZone:v171 isArchived:0 insertionMode:1];
      }

      v6 = v167;
      v8 = v168;
    }

    else
    {
      v39 = [[PKPaymentTransaction alloc] initWithCloudStoreCoder:v169];
      v42 = [NSString stringWithFormat:@"Setting properties to new transaction with service id %@", *v21];
      v47 = PKLogFacilityTypeGetObject();
      v5 = v165;
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v209 = v42;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v48 = *(v181 + 32);
      v49 = *(v181 + 48);
      v203 = v42;
      v50 = [NSArray arrayWithObjects:&v203 count:1];
      [v48 reportContainerChangeSignpostEventType:45 stateName:v49 objectNames:v50 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

      if (!v41)
      {
        v41 = objc_alloc_init(PKPaymentTransactionArchive);
      }

      v6 = v167;
      v8 = v168;
      v163 = 1;
      if (oslog)
      {
        [v41 insertOrUpdateArchiveLocationWithCloudStoreZone:v171 isArchived:1 insertionMode:0];
      }
    }

    [v39 addUpdateReasons:v26];
    v14 = v169;
    v166 = [*(v181 + 32) _originDeviceIDForCloudStoreRecord:v169];
    if (v39)
    {
      v59 = [v39 serviceIdentifier];

      v60 = *(v181 + 56);
      if (v59)
      {
        if (![v60 storeChangesInDatabase])
        {
          v54 = v172;
          v73 = v181;
          goto LABEL_149;
        }

        if (!v172)
        {
          v74 = [v39 serviceIdentifier];
          v75 = [NSString stringWithFormat:@"Did not find transaction source identifier for %@, transaction service id %@", 0, v74];

          v76 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v209 = v75;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v73 = v181;
          v77 = *(v181 + 32);
          v78 = *(v181 + 48);
          v202 = v75;
          v79 = [NSArray arrayWithObjects:&v202 count:1];
          [v77 reportContainerChangeSignpostEventType:45 stateName:v78 objectNames:v79 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

          v6 = v167;
          v14 = v169;
          v54 = 0;
          goto LABEL_149;
        }

        [v39 setHasAssociatedPaymentApplication:v173 == 0];
        [v39 setHasNotificationServiceData:1];
        v61 = *v21;
        v62 = PKTransactionSourceTypeToString();
        v63 = [NSString stringWithFormat:@"transactionSourceType for %@ is %@", v61, v62];

        v64 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v209 = v63;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        osloga = v64;

        v65 = *(v181 + 32);
        v66 = *(v181 + 48);
        v161 = v63;
        v201 = v63;
        v67 = [NSArray arrayWithObjects:&v201 count:1];
        [v65 reportContainerChangeSignpostEventType:45 stateName:v66 objectNames:v67 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

        v8 = v168;
        if (v163)
        {
          v68 = osloga;
          if (([PKPaymentTransaction updateReasonIsInitialDownload:v26]& 1) != 0)
          {
            goto LABEL_62;
          }

          if (v173 == 1)
          {
            v158 = 0x100000000;
            goto LABEL_63;
          }

          if (v173)
          {
LABEL_62:
            v158 = 0;
          }

          else
          {
            v158 = 1;
          }
        }

        else
        {
          v158 = 0;
          v68 = osloga;
        }

LABEL_63:
        v80 = [v39 accountIdentifier];
        if (v80)
        {
          v81 = v80;
          v82 = [v39 accountType];

          if (v82)
          {
LABEL_108:
            v118 = [v39 expirationDate];
            if (v118)
            {
              v73 = v181;
            }

            else
            {
              v73 = v181;
              if ([v39 transactionType] == 3)
              {
                if ([v39 transactionStatus])
                {
LABEL_114:
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v120 = [*(v73 + 56) transactionSourceIdentifiers];
                  }

                  else
                  {
                    v120 = 0;
                  }

                  if ([v120 count] && (objc_msgSend(v39, "transactionType") == 1 || !objc_msgSend(v39, "transactionType")) && objc_msgSend(v39, "transactionStatus") == 1)
                  {
                    v121 = [v39 merchant];
                    v122 = [v121 hasMapsMatch];

                    if ((v122 & 1) == 0 && !v166)
                    {
                      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                      {
                        v123 = [v39 serviceIdentifier];
                        *buf = 138543362;
                        v209 = v123;
                        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Transaction with service id %{public}@ does not contain maps data, so this device is now owning the transaction in order for it to be processed for maps data.", buf, 0xCu);
                      }

                      [v39 setProcessedForMerchantCleanup:0];
                      [v39 setRequiresMerchantReprocessing:1];
                      [v41 insertOrUpdateArchiveLocationWithCloudStoreZone:v171 isArchived:0 insertionMode:0];
                      v166 = [*(v73 + 32) _originDeviceID];
                    }
                  }

                  v124 = [v39 serviceIdentifier];
                  v125 = [NSString stringWithFormat:@"Updating transaction in local database with service id %@ with archive %@", v124, v41];

                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v209 = v125;
                    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                  }

                  v126 = v125;
                  v127 = *(v73 + 32);
                  v128 = *(v73 + 48);
                  v162 = v126;
                  v196 = v126;
                  v129 = [NSArray arrayWithObjects:&v196 count:1];
                  [v127 reportContainerChangeSignpostEventType:45 stateName:v128 objectNames:v129 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

                  v130 = PKLogFacilityTypeGetObject();
                  v131 = os_signpost_id_make_with_pointer(v130, *(v73 + 32));
                  if (v131 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v132 = v131;
                    if (os_signpost_enabled(v130))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v130, OS_SIGNPOST_INTERVAL_BEGIN, v132, "cloudstore:insertTransaction", "", buf, 2u);
                    }
                  }

                  v133 = [*(v73 + 32) dataSource];
                  v134 = [v133 insertOrUpdatePaymentTransaction:v39 withTransactionSourceIdentifier:v172 transactionArchive:v41 originDeviceID:v166 insertionMode:0 performTruncation:0];

                  v135 = v130;
                  v136 = os_signpost_id_make_with_pointer(v135, *(v73 + 32));
                  if (v136 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v137 = v136;
                    if (os_signpost_enabled(v135))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&_mh_execute_header, v135, OS_SIGNPOST_INTERVAL_END, v137, "cloudstore:insertTransaction", "", buf, 2u);
                    }
                  }

                  v138 = [*(v73 + 32) dataSource];
                  [v138 insertOrUpdateCloudStoreRecords:obj inCloudStoreZone:v171];

                  if (([*(v73 + 56) formReport] & v163) == 1)
                  {
                    v164 = v120;
                    v160 = v41;
                    v185 = 0u;
                    v186 = 0u;
                    v183 = 0u;
                    v184 = 0u;
                    v176 = obj;
                    v139 = [v176 countByEnumeratingWithState:&v183 objects:v195 count:16];
                    if (v139)
                    {
                      v140 = v139;
                      oslogb = *v184;
                      do
                      {
                        for (j = 0; j != v140; j = j + 1)
                        {
                          if (*v184 != oslogb)
                          {
                            objc_enumerationMutation(v176);
                          }

                          v142 = *(*(&v183 + 1) + 8 * j);
                          v143 = [PKAccountTransactionSyncReportItem alloc];
                          v144 = [v134 serviceIdentifier];
                          v145 = [v142 recordID];
                          v146 = [v145 recordName];
                          v147 = [v142 recordType];
                          v148 = [v134 altDSID];
                          v149 = [v143 initWithTransactionServiceIdentifier:v144 recordName:v146 recordType:v147 zoneName:v180 altDSID:v148];

                          v73 = v181;
                          v150 = *(v181 + 64);
                          v151 = [v134 accountIdentifier];
                          [v150 addTransactionSyncReportItem:v149 forAccountIdentifier:v151];
                        }

                        v140 = [v176 countByEnumeratingWithState:&v183 objects:v195 count:16];
                      }

                      while (v140);
                    }

                    v120 = v164;
                    v5 = v165;
                    v8 = v168;
                    v41 = v160;
                  }

                  v152 = [v134 identifier];
                  v6 = v167;
                  v54 = v172;
                  if (v152)
                  {
                    if ((HIDWORD(v158) | v158) == 1)
                    {
                      [*(*(v73 + 32) + 240) scheduleTaskToFetchStaleAccountIfNecessary:? associatedAccountEndpoint:?];
                    }

                    v153 = [[PDPaymentTransactionProcessorConfiguration alloc] initWithTransactionIdentifier:v152 updateReasons:v26];
                    [*(v73 + 72) addObject:v153];

                    v8 = v168;
                  }

                  if (!v134)
                  {
                    v39 = 0;
                    v14 = v169;
                    goto LABEL_152;
                  }

                  v39 = v134;
                  v14 = v169;
LABEL_149:
                  if ([*(v73 + 56) returnRecords])
                  {
                    v154 = [PKCloudRecordTransaction alloc];
                    v155 = [NSSet setWithArray:obj];
                    v156 = v154;
                    v8 = v168;
                    v69 = [v156 initWithRecords:v155];

                    v54 = v172;
                    [v69 setTransaction:v39];
                    [*(v73 + 64) addCloudRecord:v69 forContainerDatabaseIdentifier:*(v73 + 40)];
                    goto LABEL_151;
                  }

LABEL_152:

LABEL_153:
                  goto LABEL_154;
                }

                v119 = [v39 transactionDate];
                v118 = [v119 dateByAddingTimeInterval:604800.0];

                [v39 setExpirationDate:v118];
              }
            }

            goto LABEL_114;
          }
        }

        if (v173 == 1)
        {
          v89 = [*(v181 + 32) dataSource];
          v87 = [v89 peerPaymentAccountForTransactionSourceIdentifier:v172];

          v90 = [v39 accountIdentifier];

          if (!v90)
          {
            v91 = [v87 identifier];
            [v39 setAccountIdentifier:v91];
          }

          v159 = v41;
          [v39 setAccountType:1];
          v92 = [v87 identifier];
          v93 = [NSString stringWithFormat:@"Setting peer payment account identifier %@ for service identifier %@", v92, *v21];

          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v209 = v93;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v94 = *(v181 + 32);
          v95 = *(v181 + 48);
          v197 = v93;
          v96 = [NSArray arrayWithObjects:&v197 count:1];
          [v94 reportContainerChangeSignpostEventType:45 stateName:v95 objectNames:v96 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
        }

        else
        {
          if (v173)
          {
            goto LABEL_108;
          }

          v83 = [*(v181 + 32) dataSource];
          v84 = [v83 passUniqueIdentifierForTransactionSourceIdentifier:v172];

          v85 = [*(*(v181 + 32) + 272) associatedPassUniqueID];
          v86 = v84;
          v87 = v86;
          if (v85 == v86)
          {
          }

          else
          {
            if (!v86 || !v85)
            {

LABEL_85:
              v189 = 0u;
              v190 = 0u;
              v187 = 0u;
              v188 = 0u;
              v157 = *(*(v181 + 32) + 280);
              v175 = [v157 countByEnumeratingWithState:&v187 objects:v199 count:16];
              if (v175)
              {
                v159 = v41;
                v102 = *v188;
                while (2)
                {
                  for (k = 0; k != v175; k = k + 1)
                  {
                    if (*v188 != v102)
                    {
                      objc_enumerationMutation(v157);
                    }

                    v104 = *(*(&v187 + 1) + 8 * k);
                    v105 = [v104 associatedPassUniqueID];
                    v106 = v87;
                    v107 = v106;
                    if (v105 == v106)
                    {

LABEL_101:
                      v110 = [v39 accountIdentifier];

                      if (!v110)
                      {
                        v111 = [v104 accountIdentifier];
                        [v39 setAccountIdentifier:v111];
                      }

                      [v104 type];
                      [v39 setAccountType:PKPaymentTransactionAccountTypeFromAccountType()];
                      v112 = [v104 accountIdentifier];
                      v113 = PKPaymentTransactionAccountTypeToString();
                      v96 = [NSString stringWithFormat:@"Setting account service accountIdentifier %@, transactionAccountType %@ for transaction %@ and pass uniqueID %@", v112, v113, *v21, v107];

                      v5 = v165;
                      v8 = v168;
                      if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v209 = v96;
                        _os_log_impl(&_mh_execute_header, osloga, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                      }

                      v114 = *(v181 + 32);
                      v115 = *(v181 + 48);
                      v198 = v96;
                      v116 = [NSArray arrayWithObjects:&v198 count:1];
                      v117 = v115;
                      v68 = osloga;
                      [v114 reportContainerChangeSignpostEventType:45 stateName:v117 objectNames:v116 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];

                      v87 = v107;
                      v93 = v157;
                      goto LABEL_106;
                    }

                    v108 = v87;
                    if (v87 && v105)
                    {
                      v109 = [v105 isEqualToString:v106];

                      if (v109)
                      {
                        goto LABEL_101;
                      }
                    }

                    else
                    {
                    }

                    v87 = v108;
                  }

                  v175 = [v157 countByEnumeratingWithState:&v187 objects:v199 count:16];
                  if (v175)
                  {
                    continue;
                  }

                  break;
                }

                v87 = v107;
                v5 = v165;
                v8 = v168;
                v41 = v159;
              }

              v68 = osloga;
              v93 = v157;
              goto LABEL_107;
            }

            v88 = [v85 isEqualToString:v86];

            if (!v88)
            {
              goto LABEL_85;
            }
          }

          v174 = v87;
          v97 = [v39 accountIdentifier];

          if (!v97)
          {
            v98 = [*(*(v181 + 32) + 272) identifier];
            [v39 setAccountIdentifier:v98];
          }

          v159 = v41;
          [v39 setAccountType:1];
          v99 = [*(*(v181 + 32) + 272) identifier];
          v93 = [NSString stringWithFormat:@"Setting peer payment accountIdentifier %@ for transaction with service id %@ for pass uniqueID %@", v99, *(v181 + 48), v174];

          v68 = osloga;
          if (os_log_type_enabled(osloga, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v209 = v93;
            _os_log_impl(&_mh_execute_header, osloga, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v100 = *(v181 + 32);
          v101 = *(v181 + 48);
          v200 = v93;
          v96 = [NSArray arrayWithObjects:&v200 count:1];
          [v100 reportContainerChangeSignpostEventType:45 stateName:v101 objectNames:v96 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
          v87 = v174;
        }

LABEL_106:

        v41 = v159;
LABEL_107:

        goto LABEL_108;
      }

      if (![v60 returnRecords])
      {
        v54 = v172;
        goto LABEL_152;
      }

      v70 = [PKCloudRecordTransaction alloc];
      v71 = [NSSet setWithArray:obj];
      v72 = v70;
      v8 = v168;
      v69 = [v72 initWithRecords:v71];

      [v69 setTransaction:v39];
      [*(v181 + 64) addCloudRecord:v69 forContainerDatabaseIdentifier:*(v181 + 40)];
    }

    else
    {
      v69 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v209 = obj;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Cannot parse transaction from records %@", buf, 0xCu);
      }

      v39 = 0;
    }

    v54 = v172;
LABEL_151:

    goto LABEL_152;
  }

  v55 = [NSString stringWithFormat:@"Skipping processing %@ because pass is not on device", v14];
  v56 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v209 = v55;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v57 = *(v181 + 32);
  v58 = *(v181 + 48);
  v170 = v55;
  v207 = v55;
  v39 = [NSArray arrayWithObjects:&v207 count:1];
  [v57 reportContainerChangeSignpostEventType:45 stateName:v58 objectNames:v39 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
  v54 = 0;
LABEL_154:

  objc_autoreleasePoolPop(v6);
}

void sub_1000C28B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C2944;
  v5[3] = &unk_100841D48;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000C2944(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [[PKCloudStoreRecord alloc] initWithRecords:v7];
  if ([*(a1 + 32) _canFormShareFromCloudStoreRecord:v4])
  {
    v5 = [v7 firstObject];
    v6 = [v5 pk_share];
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }
  }
}

void sub_1000C29F0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v22 = a3;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = *(a1 + 32);
  v25 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v25)
  {
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v8 = [v7 participants];
        v9 = [v8 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (!v9)
        {

LABEL_20:
          [*(a1 + 56) addObject:v7];
          continue;
        }

        v10 = v9;
        v26 = i;
        v11 = *v28;
        v12 = 1;
        do
        {
          for (j = 0; j != v10; j = j + 1)
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v27 + 1) + 8 * j);
            if ([v14 invitationTokenStatus] == 3)
            {
              v15 = [v7 recordID];
              v16 = [v15 zoneID];

              v17 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = [v16 zoneName];
                *buf = 138412546;
                v36 = v14;
                v37 = 2114;
                v38 = v18;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Participant %@ needs new keys for zone %{public}@", buf, 0x16u);
              }

              [v14 setWantsNewInvitationToken:1];
              [*(a1 + 40) addObject:v7];
              v19 = *(a1 + 48);
              v20 = [v14 participantID];
              [v19 addObject:v20];

              v12 = 0;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v27 objects:v39 count:16];
        }

        while (v10);

        i = v26;
        if (v12)
        {
          goto LABEL_20;
        }
      }

      v25 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v25);
  }

  v21[2](v21, v22, 0);
}

void sub_1000C2CD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) count])
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) count];
      v10 = [*(a1 + 40) count];
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      *buf = 134218754;
      v32 = v9;
      v33 = 2048;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%lu zone shares and %lu participants identifiers needing new keys after parsing: %@, %@", buf, 0x2Au);
    }

    v13 = *(a1 + 48);
    v29 = *(a1 + 56);
    v14 = [*(a1 + 32) copy];
    v30 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v16 = PKCloudStoreOperationGroupShareLostKeys;
    v17 = PKCloudStoreOperationGroupSuffixShareInvitation;
    v18 = [*(a1 + 64) qualityOfService];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000C2F60;
    v21[3] = &unk_100842940;
    v22 = *(a1 + 32);
    v28 = v7;
    v23 = v6;
    v24 = *(a1 + 56);
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v25 = v19;
    v26 = v20;
    v27 = *(a1 + 72);
    [v13 modifyRecordsOperationWithRecordsToSaveByDatabaseIdentifier:v15 recordIDsToDeleteByDatabaseIdentifier:0 recordModificationOperationConfiguration:0 emitErrorIfConflictDetected:0 isModifyingShare:1 operationGroupName:v16 operationGroupNameSuffix:v17 qualityOfService:v18 completion:v21];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1000C2F60(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138412546;
      v82 = v12;
      v83 = 2112;
      v84 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error uploading the zone shares %@ for the particpants that need new keys %@", buf, 0x16u);
    }

    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v44 = v11;
    v45 = v10;
    v46 = v9;
    v15 = [v9 objectForKey:*(a1 + 48)];
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v82 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Completed uploading zone shares for the particpants that need new keys %@", buf, 0xCu);
    }

    v17 = dispatch_group_create();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v15;
    v50 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    if (v50)
    {
      v49 = *v76;
      v48 = v17;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v76 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [*(*(&v75 + 1) + 8 * i) pk_share];
          v20 = [v19 recordID];
          v55 = [v20 zoneID];

          if (v19)
          {
            v51 = i;
            dispatch_group_enter(v17);
            v21 = [v19 participants];
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_1000C3774;
            v73[3] = &unk_100842918;
            v74 = *(a1 + 56);
            v22 = [v21 pk_objectsPassingTest:v73];

            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v82 = v22;
              v83 = 2112;
              v84 = v19;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending new zone share invitation to participants %@ in share %@", buf, 0x16u);
            }

            group = dispatch_group_create();
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v52 = v22;
            v57 = [v52 countByEnumeratingWithState:&v69 objects:v79 count:16];
            if (v57)
            {
              v56 = *v70;
              v53 = v19;
              do
              {
                for (j = 0; j != v57; j = j + 1)
                {
                  if (*v70 != v56)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v24 = *(*(&v69 + 1) + 8 * j);
                  v25 = [v24 invitationToken];
                  v68 = 0;
                  v26 = [NSKeyedArchiver archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v68];
                  v27 = v68;

                  if (v26)
                  {
                    v28 = [v24 userIdentity];
                    v29 = [v28 lookupInfo];
                    v30 = [v29 emailAddress];

                    v31 = objc_alloc_init(PKCloudStoreZoneInvitation);
                    v32 = [v19 URL];
                    [v31 setShareURL:v32];

                    [v31 setShareInvitationToken:v26];
                    v33 = a1;
                    v34 = [*(a1 + 64) containerManager];
                    v35 = [v34 containerName];
                    [v31 setContainerIdentifier:v35];

                    v36 = [v55 zoneName];
                    [v31 setZoneName:v36];

                    v37 = +[NSDate date];
                    [v31 setDateCreated:v37];

                    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v82 = v30;
                      v83 = 2112;
                      v84 = v31;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending zone share invitation to %@, %@", buf, 0x16u);
                    }

                    dispatch_group_enter(group);
                    v38 = [*(v33 + 64) delegate];
                    v39 = *(v33 + 64);
                    v65[0] = _NSConcreteStackBlock;
                    v65[1] = 3221225472;
                    v65[2] = sub_1000C37BC;
                    v65[3] = &unk_100840C98;
                    v66 = v30;
                    v67 = group;
                    v40 = v30;
                    v41 = v39;
                    a1 = v33;
                    [v38 cloudStoreContainer:v41 sendZoneShareInvitation:v31 recipientHandle:v40 completion:v65];

                    v19 = v53;
                  }

                  else
                  {
                    v31 = v16;
                    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v82 = v24;
                      v83 = 2112;
                      v84 = v27;
                      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Error encoding invitiation token for participant %@, %@", buf, 0x16u);
                      v31 = v16;
                    }
                  }
                }

                v57 = [v52 countByEnumeratingWithState:&v69 objects:v79 count:16];
              }

              while (v57);
            }

            v42 = [*(a1 + 64) workQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000C38B4;
            block[3] = &unk_10083C4C0;
            v62 = *(a1 + 72);
            v63 = v19;
            v17 = v48;
            v64 = v48;
            dispatch_group_notify(group, v42, block);

            i = v51;
          }
        }

        v50 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
      }

      while (v50);
    }

    v43 = [*(a1 + 64) workQueue];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000C38F4;
    v58[3] = &unk_10083C820;
    v60 = *(a1 + 80);
    v59 = *(a1 + 40);
    dispatch_group_notify(v17, v43, v58);

    v10 = v45;
    v9 = v46;
    v12 = 0;
    v11 = v44;
  }
}

id sub_1000C3774(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 participantID];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_1000C37BC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    v8 = *(a1 + 32);
    v9 = 138543874;
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = v7;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sent zone share invitation with success %{public}@, error %@ to %@", &v9, 0x20u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000C38B4(uint64_t a1)
{
  [*(a1 + 32) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_1000C390C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = a2;
  v43 = a3;
  v42 = a4;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    v9 = *(a1 + 32);
    *buf = 134218242;
    v65 = v8;
    v66 = 2112;
    v67 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%lu valid zone shares after parsing: %@", buf, 0x16u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = *(a1 + 32);
  v10 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    v13 = PKAccountWebServicePaymentsRequest_ptr;
    v14 = &PKPaymentNetworkAmex_ptr;
    oslog = v7;
    v45 = *v59;
    do
    {
      v15 = 0;
      v46 = v11;
      do
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * v15);
        v17 = objc_alloc(v13[78]);
        v18 = [(PKPaymentNetwork *)v14[478] setWithObject:v16];
        v19 = [v17 initWithRecords:v18];

        [*(a1 + 40) addCloudRecord:v19 forContainerDatabaseIdentifier:*(a1 + 48)];
        v20 = [v16 recordID];
        v53 = [v20 zoneID];

        if ([*(a1 + 56) storeChangesInDatabase])
        {
          v21 = [*(a1 + 64) containerManager];
          [v21 containerDatabaseIdentifier:*(a1 + 48) didUpdateShare:v16 forZoneID:v53];
        }

        if ([*(a1 + 56) returnRecords])
        {
          v48 = v19;
          v49 = v15;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v51 = [v16 participants];
          v22 = [v51 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (!v22)
          {
            goto LABEL_33;
          }

          v23 = v22;
          v52 = *v55;
          while (1)
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v55 != v52)
              {
                objc_enumerationMutation(v51);
              }

              v25 = *(*(&v54 + 1) + 8 * i);
              v26 = [*(a1 + 64) containerManager];
              v27 = [*(a1 + 64) containerManager];
              v28 = [v27 databaseForIdentifier:*(a1 + 48)];
              v29 = [v26 cloudStoreZoneForZoneID:v53 inContainerDatabase:v28];

              v30 = [v25 userIdentity];
              v31 = [v30 lookupInfo];
              v32 = [v29 shareParticipantWithLookupInfo:v31];

              if (v32)
              {
                v33 = [v32 invitationToken];
                v34 = [v33 participantID];
                v35 = [v25 participantID];
                v36 = v34;
                v37 = v35;
                v38 = v37;
                if (v36 == v37)
                {

                  goto LABEL_26;
                }

                if (v36)
                {
                  v39 = v37 == 0;
                }

                else
                {
                  v39 = 1;
                }

                if (v39)
                {
                }

                else
                {
                  v40 = [v36 isEqualToString:v37];

                  if (v40)
                  {
LABEL_26:
                    [v25 setInvitationToken:v33];
LABEL_30:

                    goto LABEL_31;
                  }
                }

                if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = [v32 participantHandle];
                  *buf = 138412290;
                  v65 = v41;
                  _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error: Stored participant ID does not match record from server for %@", buf, 0xCu);
                }

                goto LABEL_30;
              }

LABEL_31:
            }

            v23 = [v51 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (!v23)
            {
LABEL_33:

              v12 = v45;
              v11 = v46;
              v13 = PKAccountWebServicePaymentsRequest_ptr;
              v14 = &PKPaymentNetworkAmex_ptr;
              v19 = v48;
              v15 = v49;
              break;
            }
          }
        }

        v15 = v15 + 1;
      }

      while (v15 != v11);
      v11 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v11);
  }

  v42[2](v42, v43, 0);
}

uint64_t sub_1000C3DD4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1000C3F04(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C3FA8;
  v5[3] = &unk_100841D48;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000C3FA8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [[PKCloudStoreRecord alloc] initWithRecords:v5];
  v8 = [[PKCloudStoreZoneShareLock alloc] initWithCloudStoreCoder:v7];
  if (v8)
  {
    v9 = [PKCloudRecordCloudStoreZoneShareLock alloc];
    v10 = [NSSet setWithArray:v5];
    v11 = [v9 initWithRecords:v10];

    [v11 setCloudStoreZoneShareLock:v8];
    [*(a1 + 32) addCloudRecord:v11 forContainerDatabaseIdentifier:*(a1 + 40)];
  }

  objc_autoreleasePoolPop(v6);
}

void sub_1000C41D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C4280;
  v6[3] = &unk_100842990;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000C4280(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v9 = [v6 firstObject];
  v10 = [v9 recordID];
  v11 = [v10 recordName];
  v12 = [PKPeerPaymentRecurringPayment recurringPaymentIdentifierFromRecordName:v11];

  if ([v12 length])
  {
    v13 = [*(a1 + 32) dataSource];
    v14 = [v13 peerPaymentRecurringPaymentWithIdentifier:v12];

    if (v14)
    {
      [v14 applyPropertiesFromCloudStoreRecord:v8];
LABEL_9:
      v17 = [*(a1 + 32) dataSource];
      v22 = v14;
      v18 = [NSArray arrayWithObjects:&v22 count:1];
      [v17 insertOrUpdatePeerPaymentRecurringPayments:v18];

      v19 = [PKCloudRecordRecurringPaymentMemo alloc];
      v20 = [NSSet setWithArray:v6];
      v21 = [v19 initWithRecords:v20];

      [v21 setRecurringPayment:v14];
      [*(a1 + 40) addCloudRecord:v21 forContainerDatabaseIdentifier:*(a1 + 48)];

      v15 = v14;
      goto LABEL_10;
    }

    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No recurring payment on device with identifier %@, creating a new one with the memo content", buf, 0xCu);
    }

    v14 = [[PKPeerPaymentRecurringPayment alloc] initWithCloudStoreCoder:v8];
    if (v14)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not create recurring payment from cloud record: %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 firstObject];
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Couldn't get identifier from record %@", buf, 0xCu);
    }
  }

LABEL_10:

  objc_autoreleasePoolPop(v7);
}

void sub_1000C46B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C475C;
  v6[3] = &unk_100842990;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000C475C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v9 = [v6 firstObject];
  v10 = [v9 recordID];
  v11 = [v10 recordName];
  v12 = [PKPeerPaymentCounterpartImageData counterpartImageDataIdentifierFromRecordName:v11];

  if ([v12 length])
  {
    v13 = [*(a1 + 32) dataSource];
    v14 = [v13 peerPaymentCounterpartImageDataWithIdentifier:v12];

    if (v14)
    {
      [v14 applyPropertiesFromCloudStoreRecord:v8];
LABEL_9:
      v17 = [*(a1 + 32) dataSource];
      [v17 insertOrUpdatePeerPaymentCounterpartImageData:v14];

      v18 = [PKCloudRecordCounterpartImageData alloc];
      v19 = [NSSet setWithArray:v6];
      v20 = [v18 initWithRecords:v19];

      [v20 setCounterpartImageData:v14];
      [*(a1 + 40) addCloudRecord:v20 forContainerDatabaseIdentifier:*(a1 + 48)];

      v15 = v14;
      goto LABEL_10;
    }

    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No counterpart image data on device with identifier %@, creating a new one", &v21, 0xCu);
    }

    v14 = [[PKPeerPaymentCounterpartImageData alloc] initWithCloudStoreCoder:v8];
    if (v14)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not create counterpart image data from cloud record: %@", &v21, 0xCu);
    }
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 firstObject];
      v21 = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Couldn't get identifier from record %@", &v21, 0xCu);
    }
  }

LABEL_10:

  objc_autoreleasePoolPop(v7);
}

void sub_1000C4B68(uint64_t a1, uint64_t a2, void *a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C4C10;
  v6[3] = &unk_100842990;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v8 = *(a1 + 48);
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
}

void sub_1000C4C10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v9 = [v6 firstObject];
  v10 = [v9 recordID];
  v11 = [v10 recordName];
  v12 = [PKPeerPaymentPendingRequest requestTokenFromRecordName:v11];

  if ([v12 length])
  {
    v13 = [*(a1 + 32) dataSource];
    v25 = v12;
    v14 = [NSArray arrayWithObjects:&v25 count:1];
    v15 = [v13 peerPaymentPendingRequestsForRequestTokens:v14];
    v16 = [v15 firstObject];

    if (v16)
    {
      [v16 applyPropertiesFromCloudStoreRecord:v8];
LABEL_9:
      v19 = [*(a1 + 32) dataSource];
      v24 = v16;
      v20 = [NSArray arrayWithObjects:&v24 count:1];
      [v19 insertOrUpdatePeerPaymentPendingRequests:v20];

      v21 = [PKCloudRecordPendingRequest alloc];
      v22 = [NSSet setWithArray:v6];
      v23 = [v21 initWithRecords:v22];

      [v23 setPendingRequest:v16];
      [*(a1 + 40) addCloudRecord:v23 forContainerDatabaseIdentifier:*(a1 + 48)];

      v17 = v16;
      goto LABEL_10;
    }

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No pending request on device with request token %@, creating a new one", buf, 0xCu);
    }

    v16 = [[PKPeerPaymentPendingRequest alloc] initWithCloudStoreCoder:v8];
    if (v16)
    {
      goto LABEL_9;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not create pending request from cloud record: %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 firstObject];
      *buf = 138412290;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Couldn't get request token from record %@", buf, 0xCu);
    }
  }

LABEL_10:

  objc_autoreleasePoolPop(v7);
}

void sub_1000C5088(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v3 = objc_alloc_init(NSMutableSet);
  v4 = objc_alloc_init(NSMutableSet);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000C5428;
  v30[3] = &unk_100842A08;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v30[4] = *(a1 + 40);
  v31 = v6;
  v7 = v4;
  v32 = v7;
  v8 = v2;
  v33 = v8;
  v34 = *(a1 + 56);
  v9 = v3;
  v35 = v9;
  [v5 enumerateKeysAndObjectsForItemType:1 usingBlock:v30];
  [*(a1 + 32) addRecords:v7];
  [*(a1 + 32) removeIdentifiers:v9 itemType:1];
  v10 = PKLogFacilityTypeGetObject();
  v11 = os_signpost_id_make_with_pointer(v10, *(a1 + 40));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "cloudstore:fetchMissingTransactionRecords", "", buf, 2u);
    }
  }

  if ([v8 count])
  {
    v13 = *(a1 + 40);
    v36 = *(a1 + 48);
    v14 = [v8 copy];
    v37 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v16 = [*(a1 + 56) groupName];
    v17 = [*(a1 + 56) groupNameSuffix];
    v18 = [*(a1 + 56) qualityOfService];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000C5D60;
    v24[3] = &unk_100842A30;
    v25 = *(a1 + 32);
    v19 = *(a1 + 48);
    v20 = *(a1 + 40);
    v26 = v19;
    v27 = v20;
    v28 = *(a1 + 64);
    [v13 fetchRecordsWithRecordIDsByDatabaseIdentifier:v15 operationGroupName:v16 operationGroupNameSuffix:v17 qualityOfService:v18 completion:v24];
  }

  else if (*(a1 + 64))
  {
    v21 = v10;
    v22 = os_signpost_id_make_with_pointer(v21, *(a1 + 40));
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, v23, "cloudstore:fetchMissingTransactionRecords", "", buf, 2u);
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000C5428(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000C5548;
  v14[3] = &unk_1008429E0;
  v6 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v6;
  v16 = v5;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v17 = v12;
  v18 = v11;
  v13 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v14];
}

void sub_1000C5548(uint64_t a1, void *a2, void *a3)
{
  v65 = a2;
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v6 = [[PKCloudStoreRecord alloc] initWithRecords:v5];
  v7 = [v5 firstObject];
  v8 = [v7 recordID];
  v9 = [v8 zoneID];

  v10 = [*(a1 + 32) containerManager];
  v11 = [v10 databaseForIdentifier:*(a1 + 40)];

  v12 = [*(a1 + 32) containerManager];
  v66 = [v12 cloudStoreZoneForZoneID:v9 inContainerDatabase:v11];

  v13 = PKCloudTransactionRecordType;
  v14 = [v6 recordsWithRecordType:PKCloudTransactionRecordType];
  v15 = [v14 firstObject];

  if (v15)
  {
    v16 = PKCloudTransactionDeviceDataRecordType;
    v17 = [v6 recordsWithRecordType:PKCloudTransactionDeviceDataRecordType];
    v18 = [v17 firstObject];

    if (!v18)
    {
      v19 = [*(a1 + 32) _transactionSourceIdentifierForTransactionCloudStoreRecord:v6 databaseIdentifier:*(a1 + 40)];
      if (v19 || ([*(a1 + 72) returnRecords] & 1) != 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [*(a1 + 72) transactionSourceIdentifiers];
          if (!v19)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v20 = 0;
          if (!v19)
          {
            goto LABEL_18;
          }
        }

        if ([v20 count] && (objc_msgSend(v20, "containsObject:", v19) & 1) == 0)
        {
          v56 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = *(a1 + 48);
            *buf = 138543362;
            v70 = v57;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Skipping processing service id %{public}@ because it is for a different transaction source", buf, 0xCu);
          }

          [*(a1 + 80) addObject:*(a1 + 48)];
          goto LABEL_44;
        }

LABEL_18:
        v61 = v20;
        v33 = +[PKPaymentTransaction recordNamePrefix];
        v34 = [v33 stringByAppendingString:*(a1 + 48)];

        v35 = [*(a1 + 32) dataSource];
        v62 = v34;
        v36 = [v35 cloudStoreRecordWithRecordName:v34 recordType:v16 inCloudStoreZone:v66];

        v37 = v36;
        [*(a1 + 56) pk_safelyAddObject:v36];
        v38 = PKLogFacilityTypeGetObject();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          if (v39)
          {
            v40 = *(a1 + 48);
            *buf = 138543362;
            v70 = v40;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Not fetching TransactionDeviceData recordType for transaction with service id %{public}@ since a cache of the Transaction recordType is present", buf, 0xCu);
          }

          v41 = *(a1 + 32);
          v42 = *(a1 + 48);
          v43 = [v37 description];
          v67 = v43;
          v44 = [NSArray arrayWithObjects:&v67 count:1];
          [v41 reportContainerChangeSignpostEventType:53 stateName:v42 objectNames:v44 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
        }

        else
        {
          v60 = v19;
          if (v39)
          {
            v50 = *(a1 + 48);
            *buf = 138543362;
            v70 = v50;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Need PKCloudTransactionDeviceDataRecordType record type for transaction with service id %{public}@.", buf, 0xCu);
          }

          v51 = [v6 recordsWithRecordType:v13];
          v52 = [v51 firstObject];

          v43 = v52;
          v53 = [v52 recordID];
          v44 = [v53 zoneID];

          if (v44)
          {
            v38 = [[CKRecordID alloc] initWithRecordName:v62 zoneID:v44];
            [*(a1 + 64) addObject:v38];
          }

          else if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v59 = *(a1 + 48);
            *buf = 138543362;
            v70 = v59;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Cannot fetch PKCloudTransactionDeviceDataRecordType record type for transaction with service id %{public}@ because there is no associated zone.", buf, 0xCu);
          }

          v19 = v60;

          v37 = 0;
        }

        v20 = v61;
LABEL_44:

        goto LABEL_45;
      }

      v54 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = *(a1 + 48);
        *buf = 138543362;
        v70 = v55;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Skipping processing service id %{public}@ because pass is not on this device", buf, 0xCu);
      }

      [*(a1 + 80) addObject:*(a1 + 48)];
    }
  }

  else
  {
    v21 = [*(a1 + 32) dataSource];
    v22 = [v21 cloudStoreRecordWithRecordName:*(a1 + 48) recordType:v13 inCloudStoreZone:v66];

    [*(a1 + 56) pk_safelyAddObject:v22];
    if (v22)
    {
      v23 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 48);
        *buf = 138543362;
        v70 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Not fetching Transaction recordType for transaction with service id %{public}@ since a cache of the TransactionDeviceData recordType is present", buf, 0xCu);
      }

      v25 = *(a1 + 32);
      v26 = *(a1 + 48);
      v27 = [v22 description];
      v68 = v27;
      v28 = [NSArray arrayWithObjects:&v68 count:1];
      [v25 reportContainerChangeSignpostEventType:53 stateName:v26 objectNames:v28 changeToken:0 error:0 operationGroupName:0 operationGroupNameSuffix:0];
    }

    else
    {
      v27 = [*(a1 + 32) _transactionSourceIdentifierForTransactionCloudStoreRecord:v6 databaseIdentifier:*(a1 + 40)];
      v29 = [*(a1 + 32) dataSource];
      v30 = [v29 hasTransactionWithServiceIdentifier:*(a1 + 48) transactionSourceIdentifier:v27];

      v28 = PKLogFacilityTypeGetObject();
      v31 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 48);
          *buf = 138543362;
          v70 = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Not fetching PKCloudTransactionRecordType for transaction with service id %{public}@ since it already exists in the database", buf, 0xCu);
        }
      }

      else
      {
        if (v31)
        {
          v45 = *(a1 + 48);
          *buf = 138543362;
          v70 = v45;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Need PKCloudTransactionRecordType record type for transaction with service id %{public}@.", buf, 0xCu);
        }

        v46 = [v6 recordsWithRecordType:PKCloudTransactionDeviceDataRecordType];
        v47 = [v46 firstObject];

        v63 = v47;
        v48 = [v47 recordID];
        v49 = [v48 zoneID];

        if (v49)
        {
          v28 = [[CKRecordID alloc] initWithRecordName:*(a1 + 48) zoneID:v49];
          [*(a1 + 64) addObject:v28];
        }

        else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 48);
          *buf = 138543362;
          v70 = v58;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cannot fetch PKCloudTransactionRecordType record type for transaction with service id %{public}@ because there is no associated zone.", buf, 0xCu);
        }

        v28 = v63;
      }
    }
  }

LABEL_45:

  objc_autoreleasePoolPop(context);
}

void sub_1000C5D60(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [a2 objectForKey:*(a1 + 40)];
  [v6 addRecords:v7];

  v8 = PKLogFacilityTypeGetObject();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 48));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v10, "cloudstore:fetchMissingTransactionRecords", "", v12, 2u);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }
}

void sub_1000C7B2C(id *a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Re-fetching account events with unknown servicing status. Event identifiers: %@", buf, 0xCu);
  }

  v4 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v5 = [a1[5] containerManager];
  v6 = [v5 cloudStoreZonesByDatabaseIdentifierForItemType:5 action:2];

  [a1[5] primaryRecordTypesForCloudStoreItemType:5];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C7D54;
  v16 = v15[3] = &unk_100841DC0;
  v17 = v4;
  v7 = a1[4];
  v8 = a1[5];
  v18 = v7;
  v19 = v8;
  v9 = v4;
  v10 = v16;
  [v6 enumerateKeysAndObjectsUsingBlock:v15];
  v11 = +[NSNull null];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000C8234;
  v13[3] = &unk_100842AA8;
  v14 = a1[6];
  v12 = [v9 evaluateWithInput:v11 completion:v13];
}

void sub_1000C7D54(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = a3;
  v16 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v16)
  {
    v15 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = v4;
        v5 = *(*(&v27 + 1) + 8 * v4);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v6 = *(a1 + 32);
        v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v24;
          do
          {
            v10 = 0;
            do
            {
              if (*v24 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v23 + 1) + 8 * v10);
              v18[0] = _NSConcreteStackBlock;
              v18[1] = 3221225472;
              v18[2] = sub_1000C7F60;
              v18[3] = &unk_10083EB78;
              v12 = *(a1 + 40);
              v19 = *(a1 + 48);
              v20 = v5;
              v13 = *(a1 + 56);
              v21 = v11;
              v22 = v13;
              [v12 addOperation:v18];

              v10 = v10 + 1;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v8);
        }

        v4 = v17 + 1;
      }

      while ((v17 + 1) != v16);
      v16 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v16);
  }
}

void sub_1000C7F60(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C8184;
  v21[3] = &unk_100842A58;
  v8 = a1[4];
  v21[4] = a1[5];
  v9 = [v8 pk_setByApplyingBlock:v21];
  v22 = v9;
  v10 = [NSArray arrayWithObjects:&v22 count:1];
  v11 = [NSPredicate predicateWithFormat:@"recordID in %@" argumentArray:v10];

  v12 = [[CKQuery alloc] initWithRecordType:a1[6] predicate:v11];
  v13 = [PDCloudStoreRecordsRequest alloc];
  v14 = [(PDCloudStoreRecordsRequest *)v13 initWithRequestType:4 storeChanges:1 returnRecords:0 qualityOfService:9 groupName:PKCloudStoreOperationGroupAccountServicingEventProcessing groupNameSuffix:PKCloudStoreOperationGroupSuffixAccountServicingEventProcessing];
  [(PDCloudStoreRecordsRequest *)v14 setCkQuery:v12];
  [(PDCloudStoreRecordsRequest *)v14 setCloudStoreZone:a1[5]];
  v15 = a1[7];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C821C;
  v18[3] = &unk_100842A80;
  v19 = v6;
  v20 = v7;
  v16 = v6;
  v17 = v7;
  [v15 executeRecordsRequest:v14 completion:v18];
}

id sub_1000C8184(uint64_t a1, uint64_t a2)
{
  v3 = [PKAccountEvent recordNameForEventIdentifier:a2];
  v4 = [*(a1 + 32) recordZone];
  v5 = [v4 zoneID];

  v6 = [[CKRecordID alloc] initWithRecordName:v3 zoneID:v5];

  return v6;
}

void sub_1000C8BC0(uint64_t a1, uint64_t a2, void *a3)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C8D14;
  v16[3] = &unk_100842AD0;
  v15 = *(a1 + 32);
  v5 = *(&v15 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v17 = v15;
  v18 = v8;
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  v21 = *(a1 + 96);
  [a3 enumerateKeysAndObjectsUsingBlock:v16];
}

void sub_1000C8D14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v68 objects:v78 count:16];
  if (!v7)
  {
    goto LABEL_47;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v69;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v69 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v68 + 1) + 8 * i);
      v14 = [v13 recordType];
      if (!v10 && ([*(a1 + 32) _isAccountEventFromRecordType:v14] & 1) != 0)
      {
        v10 = v13;
LABEL_12:
        v15 = v13;
        goto LABEL_14;
      }

      if (v9)
      {
        goto LABEL_14;
      }

      if ([*(a1 + 32) _isAccountEventAssociatedObjectFromRecordType:v14])
      {
        v9 = v13;
        goto LABEL_12;
      }

      v9 = 0;
LABEL_14:
    }

    v8 = [v6 countByEnumeratingWithState:&v68 objects:v78 count:16];
  }

  while (v8);
  if (!v10)
  {
    if (v9)
    {
      v16 = [v9 pk_referenceForKey:PKAccountEventReferenceFromAssociatedObject];
      v30 = [v16 recordID];
      v31 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v9 recordType];
        *buf = 138412290;
        v74 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received a child account event by itself of type %@", buf, 0xCu);
      }

      if (v16)
      {
        obja = v31;
        v59 = v16;
        v55 = v5;
        [*(a1 + 48) objectForKey:*(a1 + 56)];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v31 = v63 = 0u;
        v33 = [v31 countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v61;
LABEL_40:
          v36 = 0;
          while (1)
          {
            if (*v61 != v35)
            {
              objc_enumerationMutation(v31);
            }

            v37 = *(*(&v60 + 1) + 8 * v36);
            v38 = [v37 recordID];
            if (PKEqualObjects())
            {
              break;
            }

            if (v34 == ++v36)
            {
              v34 = [v31 countByEnumeratingWithState:&v60 objects:v72 count:16];
              if (v34)
              {
                goto LABEL_40;
              }

              goto LABEL_46;
            }
          }

          v43 = v37;
          v39 = obja;
          if (os_log_type_enabled(obja, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = v38;
            _os_log_impl(&_mh_execute_header, obja, OS_LOG_TYPE_DEFAULT, "Found carried over parent record %@", buf, 0xCu);
          }

          [*(a1 + 64) addObject:v43];
          v5 = v55;
          v16 = v59;
          if (v43)
          {
            goto LABEL_81;
          }
        }

        else
        {
LABEL_46:

          v5 = v55;
          v39 = obja;
          v16 = v59;
        }

        if ([*(a1 + 72) useLastChangeToken])
        {
          v44 = [v30 zoneID];
          if (v44)
          {
            [*(a1 + 96) addObject:v30];
          }

          else
          {
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v74 = v16;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Cannot create a query for the parent record because a zone does not exist for the reference %@", buf, 0xCu);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [v9 recordID];
            *buf = 138412290;
            v74 = v45;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Adding child record to carry over %@", buf, 0xCu);
          }

          [*(a1 + 88) addObject:v9];
        }

        v43 = 0;
LABEL_81:
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Missing reference on child record", buf, 2u);
      }

      v10 = 0;
      goto LABEL_83;
    }

LABEL_47:
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received account records without parent or child record", buf, 2u);
    }

    v10 = 0;
    goto LABEL_50;
  }

  v16 = [v10 pk_encryptedStringForKey:PKCloudTransactionAccountIdentifierKey];
  if ([*(a1 + 40) count] && (objc_msgSend(*(a1 + 40), "containsObject:", v16) & 1) == 0)
  {
    v40 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v10 recordID];
      v42 = [v41 recordName];
      *buf = 138412290;
      v74 = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Skipping acount event %@ because it is from a different pass", buf, 0xCu);
    }

    goto LABEL_83;
  }

  if (!v9)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Need to fetch child records for account event", buf, 2u);
    }

    v16 = [v10 recordID];
    v18 = [v16 zoneID];
    if (v18)
    {
      v19 = [*(a1 + 32) _recordTypeForAccountEventRecord:v10];
      v20 = [[CKReference alloc] initWithRecordID:v16 action:0];
      v21 = v20;
      if (v19)
      {
        oslog = v17;
        v51 = v20;
        v52 = v19;
        v53 = v18;
        v58 = v16;
        v54 = v5;
        [*(a1 + 48) objectForKey:*(a1 + 56)];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        obj = v67 = 0u;
        v22 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v65;
          v25 = PKAccountEventReferenceFromAssociatedObject;
LABEL_26:
          v26 = 0;
          while (1)
          {
            if (*v65 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v64 + 1) + 8 * v26);
            v28 = [v27 pk_referenceForKey:v25];
            v29 = [v28 recordID];
            if (v28)
            {
              if (PKEqualObjects())
              {
                break;
              }
            }

            if (v23 == ++v26)
            {
              v23 = [obj countByEnumeratingWithState:&v64 objects:v77 count:16];
              if (v23)
              {
                goto LABEL_26;
              }

              goto LABEL_33;
            }
          }

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v74 = v29;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Found carried over child record %@", buf, 0xCu);
          }

          v46 = v27;
          [*(a1 + 64) addObject:v46];

          v18 = v53;
          v5 = v54;
          v16 = v58;
          v21 = v51;
          v19 = v52;
          if (v46)
          {
            goto LABEL_90;
          }
        }

        else
        {
LABEL_33:

          v18 = v53;
          v5 = v54;
          v16 = v58;
          v21 = v51;
          v19 = v52;
        }

        if ([*(a1 + 72) useLastChangeToken])
        {
          goto LABEL_86;
        }

        v47 = [*(a1 + 72) ckQuery];
        if (v47)
        {

          goto LABEL_86;
        }

        if ([*(a1 + 72) requestType] == 5)
        {
LABEL_86:
          v48 = [*(a1 + 80) objectForKey:v19];
          if (!v48)
          {
            v48 = objc_alloc_init(NSMutableArray);
            [*(a1 + 80) setObject:v48 forKey:v19];
          }

          [v48 addObject:v21];
        }

        else
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v49 = [v10 recordID];
            *buf = 138412290;
            v74 = v49;
            _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Adding parent record to carry over %@", buf, 0xCu);
          }

          [*(a1 + 88) addObject:v10];
        }

        v46 = 0;
LABEL_90:

        v17 = obj;
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v74 = v16;
        v75 = 2112;
        v76 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error: cannot find a record type for parent record %@ and reference %@", buf, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v74 = v10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Cannot create a query for a child record because a zone does not exist for parent record %@", buf, 0xCu);
      }

      v19 = v17;
    }

LABEL_50:
    v9 = 0;
LABEL_83:
  }
}

void sub_1000C9688(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v21 = *(a1 + 40);
  v9 = [*(a1 + 48) copy];
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [*(a1 + 56) groupName];
  v12 = [*(a1 + 56) groupNameSuffix];
  v13 = [*(a1 + 56) qualityOfService];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C9824;
  v17[3] = &unk_1008400A8;
  v14 = *(a1 + 64);
  v19 = v6;
  v20 = v7;
  v18 = v14;
  v15 = v6;
  v16 = v7;
  [v8 fetchRecordsWithRecordIDsByDatabaseIdentifier:v10 operationGroupName:v11 operationGroupNameSuffix:v12 qualityOfService:v13 completion:v17];
}

void sub_1000C9824(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C98C8;
  v4[3] = &unk_10083D238;
  v5 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v4];
  (*(*(a1 + 48) + 16))();
}

void sub_1000C98D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v16 = *(a1 + 40);
  v17 = *(a1 + 32);
  v8 = [*(a1 + 48) groupName];
  v9 = [*(a1 + 48) groupNameSuffix];
  v15 = [*(a1 + 48) qualityOfService];
  v10 = *(a1 + 56);
  v11 = [*(a1 + 32) containerManager];
  v12 = [v11 databaseForIdentifier:*(a1 + 64)];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C9A80;
  v21[3] = &unk_100842B20;
  v22 = *(a1 + 72);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C9B44;
  v18[3] = &unk_10083F350;
  v19 = v6;
  v20 = v7;
  v13 = v6;
  v14 = v7;
  [v17 fetchRecordsWithQuery:v16 batchLimit:0 operationGroupName:v8 operationGroupNameSuffix:v9 qualityOfService:v15 zone:v10 containerDatabase:v12 batchHandler:v21 completion:v18];
}

void sub_1000C9A80(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C9B3C;
  v6[3] = &unk_10083D238;
  v7 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v6];
  if (v5)
  {
    v5[2](v5, 1);
  }
}

void sub_1000C9B5C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_END, v4, "cloudstore:fetchMissingAccountEventRecords", "", v9, 2u);
    }
  }

  v5 = *(a1 + 56);
  if ([*(a1 + 40) count])
  {
    v6 = *(a1 + 40);
    v10 = *(a1 + 48);
    v7 = [v6 copy];
    v11 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    (*(v5 + 16))(v5, v8);
  }

  else
  {
    (*(v5 + 16))(v5, 0);
  }
}

void sub_1000CA184(uint64_t a1, uint64_t a2, void *a3)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CA27C;
  v11[3] = &unk_100841CF8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v14 = *(a1 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
}

void sub_1000CA27C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v9 = [[PKAccountEvent alloc] initWithCloudStoreCoder:v8];
  v10 = [v9 altDSID];
  v11 = [v10 length];

  if (!v11)
  {
    [v9 setAltDSID:*(a1 + 32)];
  }

  v12 = [v9 items];
  v13 = [v12 count];

  if (v13)
  {
    [*(a1 + 40) addObject:v9];
    [v9 addUpdateReasons:*(a1 + 64)];
    v14 = [PKCloudRecordAccountEvent alloc];
    v15 = [NSSet setWithArray:v6];
    v16 = [v14 initWithRecords:v15];

    [v16 setEvent:v9];
    [*(a1 + 48) addCloudRecord:v16 forContainerDatabaseIdentifier:*(a1 + 56)];
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v9 description];
      v19 = 138412290;
      v20 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Event record does not have any items: %@", &v19, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1000CA478(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1000CA750(id *a1, uint64_t a2, void *a3)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000CA840;
  v11[3] = &unk_100842BD8;
  v5 = a1 + 5;
  *&v6 = a1[4];
  *(&v6 + 1) = *v5;
  v10 = v6;
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14 = a1[8];
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
}

void sub_1000CA840(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  dispatch_group_enter(*(a1 + 32));
  v8 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v9 = *(a1 + 40);
  v10 = *(v9 + 256);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000CA9A4;
  v13[3] = &unk_100842BB0;
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 48);
  v11 = v6;
  v17 = v11;
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(a1 + 32);
  v12 = v8;
  [v10 defaultAccountForFeature:4 completion:v13];

  objc_autoreleasePoolPop(v7);
}

void sub_1000CA9A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 accountBaseURL];

  if (v4)
  {
    [v3 updateWithCloudStoreRecord:*(a1 + 32)];
    [*(a1 + 40) _insertAccountBalanceUpdateNotificationIfNecessaryForAccount:v3 record:*(a1 + 32)];
    [*(a1 + 48) addObject:v3];
  }

  else
  {
    v5 = [[PKAccount alloc] initWithCloudStoreCoder:*(a1 + 32)];
    if (v5)
    {
      [*(a1 + 48) addObject:v5];
      v6 = [PKCloudRecordAccount alloc];
      v7 = [NSSet setWithArray:*(a1 + 56)];
      v8 = [v6 initWithRecords:v7];

      [v8 setAccount:v5];
      [*(a1 + 64) addCloudRecord:v8 forContainerDatabaseIdentifier:*(a1 + 72)];
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 descriptionWithItem:1];
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Parsed account cloud record: %@", &v11, 0xCu);
      }
    }
  }

  dispatch_group_leave(*(a1 + 80));
}

uint64_t sub_1000CAB48(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = *(a1 + 32);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [WeakRetained[32] insertOrReplaceAccount:*(*(&v9 + 1) + 8 * v7) extended:1 deleteSensitiveData:0 completion:{0, v9}];
            v7 = v7 + 1;
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v5);
      }
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

void sub_1000CB248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000CB260(uint64_t a1, uint64_t a2, void *a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CB32C;
  v9[3] = &unk_100842C50;
  v12 = *(a1 + 64);
  v5 = *(a1 + 56);
  v8 = *(a1 + 32);
  v6 = *(&v8 + 1);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  v10 = v8;
  v11 = v7;
  [a3 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_1000CB32C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [[PKCloudStoreRecord alloc] initWithRecords:v6];
  v9 = [v6 firstObject];
  v10 = [v9 recordID];
  v11 = [v10 recordName];
  v12 = [PKIssuerMessagingFlag issuerMessagingFlagIdentifierFromRecordName:v11];

  if ([v12 length])
  {
    v13 = [*(a1 + 32) dataSource];
    v14 = [v13 issuerMessagingFlagWithIdentifier:v12];

    v15 = PKLogFacilityTypeGetObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        v24 = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Found existing issuer messaging flag with identifier %@, updating it", &v24, 0xCu);
      }

      v17 = [v14 copy];
      [v17 applyPropertiesFromCloudStoreRecord:v8];
      if (*(a1 + 64) != 1 || (PKEqualObjects() & 1) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v16)
      {
        v24 = 138412290;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No issuer messaging flag on device with identifier %@, creating a new one", &v24, 0xCu);
      }

      v17 = [[PKIssuerMessagingFlag alloc] initWithCloudStoreCoder:v8];
      if ((*(a1 + 64) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_14:
    if (v17)
    {
      if (*(a1 + 64) == 1)
      {
        v19 = [*(a1 + 32) dataSource];
        v20 = [v19 insertOrUpdateIssuerMessagingFlag:v17];
      }

      v21 = [PKCloudRecordIssuerMessagingFlag alloc];
      v22 = [NSSet setWithArray:v6];
      v23 = [v21 initWithRecords:v22];

      [v23 setIssuerMessagingFlag:v17];
      [*(a1 + 40) addCloudRecord:v23 forContainerDatabaseIdentifier:*(a1 + 48)];
    }

    else
    {
      v23 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Could not create issuer messaging flag data from cloud record: %@", &v24, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v6 firstObject];
    v24 = 138412290;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't get identifier from record %@", &v24, 0xCu);
  }

LABEL_21:

  objc_autoreleasePoolPop(v7);
}

void sub_1000CB788(id *a1)
{
  v2 = [a1[4] containerManager];
  v3 = [v2 cloudStoreZonesByDatabaseIdentifierForItem:a1[5] action:1];

  if ([v3 count])
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000CBAB8;
    v23[3] = &unk_10083D238;
    v4 = objc_alloc_init(NSMutableSet);
    v24 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:v23];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      *buf = 138412546;
      v26 = v6;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Uploading issuer messaging flag %@ in zones %@", buf, 0x16u);
    }

    v7 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:a1[5] recordSpecificKeys:0];
    [v7 setCloudStoreZones:v4];
    v8 = a1[4];
    v9 = [NSSet setWithObject:v7];
    v10 = PKCloudStoreOperationGroupUserActionImplicit;
    v11 = PKCloudStoreOperationGroupSuffixPassutil;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000CBAC0;
    v19[3] = &unk_100842CA0;
    v12 = a1[5];
    v13 = a1[4];
    v20 = v12;
    v21 = v13;
    v22 = a1[6];
    [v8 updateCloudStoreWithLocalItemsWithConfigurations:v9 groupName:v10 groupNameSuffix:v11 qualityOfService:17 completion:v19];
  }

  else
  {
    v14 = a1[4];
    [a1[5] itemType];
    v15 = PKCloudStoreItemTypeToString();
    v16 = [NSString stringWithFormat:@"There is no zone defined for item type %@", v15];
    v4 = [v14 errorWithCode:-4001 description:v16];

    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Error: no zone defined %@", buf, 0xCu);
    }

    v18 = a1[6];
    if (v18)
    {
      v18[2](v18, v4);
    }
  }
}

void sub_1000CBAC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v15 = 138412546;
    v16 = v11;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Uploaded issuer messaging flag %@ with error %@", &v15, 0x16u);
  }

  if (!v9)
  {
    v12 = [*(a1 + 40) dataSource];
    v13 = [v12 insertOrUpdateIssuerMessagingFlag:*(a1 + 32)];

    +[PKEngagementEventTrigger fireIssuerMessagingFlagsChangedEvent];
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, v9);
  }
}

void sub_1000CBCD8(id *a1)
{
  v2 = [a1[4] containerManager];
  v3 = [v2 cloudStoreZonesByDatabaseIdentifierForItemType:11 action:3];

  if ([v3 count])
  {
    v4 = [v3 allKeys];
    if ([v4 count] != 1)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Expected to find a single database identifier to remove the message from, but instead found these: %@", buf, 0xCu);
      }
    }

    v6 = [v4 firstObject];
    v7 = [v3 objectForKeyedSubscript:v6];
    if ([v7 count] != 1)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Expected to find a single zone to remove the message from, but instead found these: %@", buf, 0xCu);
      }
    }

    v26 = [v7 anyObject];
    v9 = [PDCloudStoreRecordsRequest alloc];
    v10 = [(PDCloudStoreRecordsRequest *)v9 initWithRequestType:6 storeChanges:1 returnRecords:0 qualityOfService:17 groupName:PKCloudStoreOperationGroupUserActionImplicit groupNameSuffix:PKCloudStoreOperationGroupSuffixPassutil];
    v11 = +[PKIssuerMessagingFlag recordNamePrefix];
    v12 = [NSString stringWithFormat:@"%@%@", v11, a1[5]];

    v13 = [CKRecordID alloc];
    v14 = [v26 zoneID];
    v15 = [v13 initWithRecordName:v12 zoneID:v14];

    v30 = v6;
    v16 = [[NSSet alloc] initWithObjects:{v15, 0}];
    v31 = v16;
    [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v17 = v3;
    v19 = v18 = v6;
    [(PDCloudStoreRecordsRequest *)v10 setRecordIDsByDatabaseIdentifier:v19];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000CC108;
    v27[3] = &unk_100842CC8;
    v20 = a1[4];
    v28 = a1[5];
    v29 = a1[6];
    [v20 executeRecordsRequest:v10 completion:v27];

    v3 = v17;
  }

  else
  {
    v21 = a1[4];
    v22 = PKCloudStoreItemTypeToString();
    v23 = [NSString stringWithFormat:@"There is no zone defined for item type %@", v22];
    v4 = [v21 errorWithCode:-4001 description:v23];

    v24 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Error: no zone defined %@", buf, 0xCu);
    }

    v25 = a1[6];
    if (v25)
    {
      v25[2](v25, v4);
    }
  }
}

void sub_1000CC108(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Uploaded issuer messaging flag with identifier %@ with error %@", &v10, 0x16u);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

void PDNFSecureXPCEventHandleExpressTransactionEvent(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || (v7 = v6) == 0)
  {
    __break(1u);
  }

  v8 = PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_STRING();
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v45 = xpc_dictionary_get_value(v5, v8);
        string_ptr = xpc_string_get_string_ptr(v45);
        if (string_ptr)
        {
          v46 = [[NSString alloc] initWithUTF8String:string_ptr];
          v47 = [v46 componentsSeparatedByString:@":"];
          if ([v47 count] == 2)
          {
            v30 = [v47 objectAtIndexedSubscript:0];
            string_ptr = [v47 objectAtIndexedSubscript:1];
          }

          else
          {
            v30 = v46;
            string_ptr = 0;
          }

          if (v30)
          {
            v49 = PDExpressTransactionEventTransactionStart;
            goto LABEL_90;
          }
        }

        else
        {
        }

        v30 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v50 = "PDNFSecureXPCEventStreamManager: transaction start event missing identifiers.";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      v11 = PDExpressTransactionEventTransactionTimeout;
LABEL_30:
      v9 = objc_alloc_init(v11);
      if (!v9)
      {
        goto LABEL_104;
      }

      goto LABEL_96;
    }

    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_104;
      }

      v11 = PDExpressTransactionEventExited;
      goto LABEL_30;
    }

    v9 = objc_alloc_init(PDExpressTransactionEventEntered);
    v37 = xpc_dictionary_get_value(v5, v8);
    v38 = xpc_string_get_string_ptr(v37);

    if (v38)
    {
      v39 = [[NSString alloc] initWithUTF8String:v38];
      v40 = PKPassAutomaticSelectionTechnologyTypeForExpressEnteredObject();

      if (v40)
      {
LABEL_65:
        [(PDExpressTransactionEventEntered *)v9 setTechnologyType:v40];
        goto LABEL_57;
      }

      v41 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v67 = v38;
        v42 = "PDNFSecureXPCEventStreamManager: WARNING UNRECOGNIZED EXPRESS TYPE DETECTED: %{public}s! Please file a radar.";
        v43 = v41;
        v44 = 12;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
      }
    }

    else
    {
      v41 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v42 = "PDNFSecureXPCEventStreamManager: entered event missing technology type.";
        v43 = v41;
        v44 = 2;
        goto LABEL_63;
      }
    }

    v40 = 0;
    goto LABEL_65;
  }

  if (a1 < 8)
  {
    v9 = objc_alloc_init(PDExpressTransactionEventTransactionEnd);
    if (a1 > 5)
    {
      if (a1 == 7)
      {
        v23 = xpc_dictionary_get_value(v5, "PairingModeBrandCode");
        v24 = v23;
        if (v23)
        {
          v25 = [NSNumber numberWithLongLong:xpc_int64_get_value(v23)];
        }

        else
        {
          v25 = 0;
        }

        [(PDExpressTransactionEventEntered *)v9 setBrandCode:v25];

        v10 = 3;
      }

      else
      {
        v10 = 1;
      }
    }

    else if (a1 == 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }

    [(PDExpressTransactionEventEntered *)v9 setStatus:v10];
    goto LABEL_57;
  }

  if (a1 > 9)
  {
    if (a1 == 10)
    {
      v34 = xpc_dictionary_get_value(v5, v8);
      string_ptr = xpc_string_get_string_ptr(v34);
      if (string_ptr)
      {
        v35 = [[NSString alloc] initWithUTF8String:string_ptr];
        v36 = [v35 componentsSeparatedByString:@":"];
        if ([v36 count] == 2)
        {
          v30 = [v36 objectAtIndexedSubscript:0];
          string_ptr = [v36 objectAtIndexedSubscript:1];
        }

        else
        {
          v30 = v35;
          string_ptr = 0;
        }

        if (v30)
        {
          v49 = PDExpressTransactionEventPresentPass;
          goto LABEL_90;
        }
      }

      else
      {
      }

      v30 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v50 = "PDNFSecureXPCEventStreamManager: present pass event missing identifiers.";
        goto LABEL_93;
      }
    }

    else
    {
      if (a1 != 11)
      {
        goto LABEL_104;
      }

      v26 = xpc_dictionary_get_value(v5, v8);
      string_ptr = xpc_string_get_string_ptr(v26);
      if (string_ptr)
      {
        v28 = [[NSString alloc] initWithUTF8String:string_ptr];
        v29 = [v28 componentsSeparatedByString:@":"];
        if ([v29 count] == 2)
        {
          v30 = [v29 objectAtIndexedSubscript:0];
          string_ptr = [v29 objectAtIndexedSubscript:1];
        }

        else
        {
          v30 = v28;
          string_ptr = 0;
        }

        if (v30)
        {
          v49 = PDExpressTransactionEventEnableBiometrics;
          goto LABEL_90;
        }
      }

      else
      {
      }

      v30 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v50 = "PDNFSecureXPCEventStreamManager: enable biometrics event missing identifiers.";
        goto LABEL_93;
      }
    }

LABEL_94:
    v9 = 0;
LABEL_95:

    if (!v9)
    {
      goto LABEL_104;
    }

    goto LABEL_96;
  }

  if (a1 == 8)
  {
    v31 = xpc_dictionary_get_value(v5, v8);
    string_ptr = xpc_string_get_string_ptr(v31);
    if (string_ptr)
    {
      v32 = [[NSString alloc] initWithUTF8String:string_ptr];
      v33 = [v32 componentsSeparatedByString:@":"];
      if ([v33 count] == 2)
      {
        v30 = [v33 objectAtIndexedSubscript:0];
        string_ptr = [v33 objectAtIndexedSubscript:1];
      }

      else
      {
        v30 = v32;
        string_ptr = 0;
      }

      if (v30)
      {
        v49 = PDExpressTransactionEventNotFound;
LABEL_90:
        v9 = objc_alloc_init(v49);
        [(PDExpressTransactionEventEntered *)v9 setApplicationIdentifier:v30];
        [(PDExpressTransactionEventEntered *)v9 setKeyIdentifier:string_ptr];
        goto LABEL_95;
      }
    }

    else
    {
    }

    v30 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v50 = "PDNFSecureXPCEventStreamManager: not found start event missing identifiers.";
LABEL_93:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v50, buf, 2u);
      goto LABEL_94;
    }

    goto LABEL_94;
  }

  v9 = objc_alloc_init(PDExpressTransactionEventTCI);
  v12 = objc_alloc_init(NSMutableOrderedSet);
  v13 = xpc_dictionary_get_value(v5, v8);
  v14 = xpc_string_get_string_ptr(v13);

  if (v14)
  {
    v15 = [[NSString alloc] initWithUTF8String:v14];
    v16 = [v15 componentsSeparatedByString:{@", "}];

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v61;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v61 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v60 + 1) + 8 * i) pk_decodeHexadecimal];
          if (v22)
          {
            [v12 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v19);
    }
  }

  if ([v12 count])
  {
    [(PDExpressTransactionEventEntered *)v9 setTCIs:v12];
  }

  else
  {
    v48 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "PDNFSecureXPCEventStreamManager: TCI event missing TCIs.", buf, 2u);
    }
  }

LABEL_57:
  if (!v9)
  {
    goto LABEL_104;
  }

LABEL_96:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v51 = v7;
  v52 = [v51 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v57;
    do
    {
      for (j = 0; j != v53; j = j + 1)
      {
        if (*v57 != v54)
        {
          objc_enumerationMutation(v51);
        }

        [*(*(&v56 + 1) + 8 * j) receivedSecureExpressTransactionEvent:{v9, v56}];
      }

      v53 = [v51 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v53);
  }

LABEL_104:
}

void sub_1000CDA70(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000CDBF8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_alloc_init(PKSharedAccountCloudStoreZone);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v6 values:a4];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:?];
    v7 = v8;
  }
}

void sub_1000CDF4C(id a1, PKSharedAccountCloudStoreZone *a2, id a3)
{
  v4 = a2;
  -[PKSharedAccountCloudStoreZone setAccountType:](v4, "setAccountType:", [a3 integerValue]);
}

void sub_1000CDFA4(id a1, PKSharedAccountCloudStoreZone *a2, id a3)
{
  v4 = a2;
  -[PKSharedAccountCloudStoreZone setAccess:](v4, "setAccess:", [a3 integerValue]);
}

void sub_1000CDFFC(id a1, PKSharedAccountCloudStoreZone *a2, id a3)
{
  v4 = a2;
  -[PKSharedAccountCloudStoreZone setMode:](v4, "setMode:", [a3 integerValue]);
}

void sub_1000CE05C(id a1, PKSharedAccountCloudStoreZone *a2, id a3)
{
  if (a3)
  {
    v4 = a2;
    v6 = [a3 componentsSeparatedByString:{@", "}];
    v5 = [NSSet setWithArray:?];
    [(PKSharedAccountCloudStoreZone *)v4 setSharedUsersAltDSIDs:v5];
  }

  else
  {
    v6 = a2;
    [(PKSharedAccountCloudStoreZone *)v6 setSharedUsersAltDSIDs:0];
  }
}

void sub_1000D06D8(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1[4] _updatePassTileDescriptor:v5 groupDescriptor:0 idx:a3 previousStates:a1[5] visitedIdentifiers:a1[6]];
  v7 = [v5 metadata];
  v8 = [v7 isGroupType];

  if (v8)
  {
    v9 = [v5 childDescriptors];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D0808;
    v10[3] = &unk_100842FA0;
    v10[4] = a1[4];
    v11 = v6;
    v12 = a1[5];
    v13 = a1[6];
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void sub_1000D1D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1D2C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) _dynamicStateInDatabase:*(a1 + 32) forPassPID:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_1000D1F44(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  if (*a4)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *a4;
    v9 = [v6 _dynamicStateInDatabase:v7 forPassPID:a2];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v8];
  }
}

void sub_1000D22E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v15 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSNumber numberWithLongLong:a2];
  if (([*(a1 + 32) containsObject:v8] & 1) == 0)
  {
    [*(a1 + 32) addObject:v8];
    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = [(SQLiteEntity *)[Pass alloc] initWithPersistentID:a2 inDatabase:v10];
    v12 = [v9 _realPassInDatabase:v10 withProperties:v15 values:a4 fromPass:v11];

    if (v12 && (*(a1 + 72) != 1 || ![v12 passType]))
    {
      [*(a1 + 48) addObject:v12];
      if (*(a1 + 56))
      {
        v13 = [v12 uniqueID];
        if (v13)
        {
          v14 = [*(a1 + 64) _dynamicStateInDatabase:*(a1 + 40) forPassPID:a2];
          [*(a1 + 56) setObject:v14 forKeyedSubscript:v13];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000D269C(uint64_t a1, uint64_t a2, void *a3, id *a4)
{
  v9 = a3;
  v6 = *a4;
  if (v6)
  {
    v7 = +[NSNull null];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void sub_1000D28C0(uint64_t a1, uint64_t a2, void *a3, id *a4)
{
  v9 = a3;
  v6 = *a4;
  if (v6)
  {
    v7 = +[NSNull null];
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

id *sub_1000D2AE4(id *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id *sub_1000D2CB0(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id *sub_1000D2ED4(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id *sub_1000D30A4(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id *sub_1000D3270(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

uint64_t sub_1000D33B4(uint64_t a1)
{
  v2 = [*(a1 + 56) queryWithDatabase:*(a1 + 32) predicate:*(a1 + 40)];
  v8[0] = @"unique_id";
  v8[1] = @"pass_type.identifier";
  v8[2] = @"serial_number";
  v8[3] = @"manifest_hash";
  v8[4] = @"template";
  v8[5] = @"organization_name";
  v8[6] = @"grouping_id";
  v3 = [NSArray arrayWithObjects:v8 count:7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D3510;
  v5[3] = &unk_10083CBC0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  [v2 enumeratePersistentIDsAndProperties:v3 usingBlock:v5];

  return 1;
}

void sub_1000D3510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a4;
  if (*a4)
  {
    v9 = *(a4 + 8);
    v8 = *(a4 + 16);
    v10 = *(a4 + 32);
    v11 = *(a4 + 24);
    v12 = v8;
    v13 = v9;
    v21 = v4;
    v14 = [v10 integerValue];
    v15 = *(a4 + 40);
    v16 = *(a4 + 48);
    v17 = v15;
    v18 = objc_alloc_init(PDCandidateRelevantPass);
    [(PDCandidateRelevantPass *)v18 setUniqueIdentifier:v21];
    [(PDCandidateRelevantPass *)v18 setPassTypeIdentifier:v13];
    [(PDCandidateRelevantPass *)v18 setSerialNumber:v12];
    [(PDCandidateRelevantPass *)v18 setManifestHash:v11];
    [(PDCandidateRelevantPass *)v18 setStyle:v14];
    [(PDCandidateRelevantPass *)v18 setOrganizationName:v17];
    [(PDCandidateRelevantPass *)v18 setGroupingIdentifier:v16];
    v19 = [PassRelevancyDates relevancyDatesForPassPID:a2 inDatabase:*(a1 + 32)];
    [(PDCandidateRelevantPass *)v18 setRelevantDates:v19];

    v20 = [Beacon beaconsInDatabase:*(a1 + 32) forPassPID:a2];
    [(PDCandidateRelevantPass *)v18 setEmbeddedBeacons:v20];

    [(PDCandidateRelevantPass *)v18 setHasLocations:[Location hasLocationsInDatabase:*(a1 + 32) forPassPID:a2]];
    [*(a1 + 40) addObject:v18];
  }
}

void sub_1000D4370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D43B4(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  *(*(a1[5] + 8) + 24) = [*a4 integerValue];
  *(*(a1[6] + 8) + 24) = [a4[1] integerValue];
  [PaymentApplication paymentApplicationInformationInDatabase:a1[4] forPassPID:a2 supportedRadioTechnologies:*(a1[7] + 8) + 24];
  v7 = [PaymentApplication paymentApplicationsInDatabase:a1[4] forPassPID:a2];
  v8 = *(a1[8] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return _objc_release_x1(v7, v9);
}

void sub_1000D45F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000D461C(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = *a3;
  if (*a3)
  {
    v5 = [v5 integerValue];
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = *(a3 + 8);
  if (v6)
  {
    [v6 doubleValue];
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  if (v6)
  {
  }
}

void sub_1000D4860(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PDPassUpdateContext);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  (*(*(a1 + 40) + 16))();
}

void sub_1000D4B28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = [Pass alloc];
  v9 = [*(a1 + 32) database];
  v11 = [(SQLiteEntity *)v8 initWithPersistentID:a2 inDatabase:v9];

  v10 = objc_alloc_init(PDPassGroupingProfile);
  [*(a1 + 56) applyPropertySetters:*(a1 + 40) toObject:v10 withProperties:v7 values:a4];

  (*(*(a1 + 48) + 16))();
}

void sub_1000D4CFC(uint64_t a1, uint64_t a2)
{
  v4 = [Pass alloc];
  v5 = [*(a1 + 32) database];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 inDatabase:v5];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000D4EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = *a3;
  v8 = [a3[1] unsignedIntegerValue];
  v9 = *(v6 + 16);

  return v9(v6, v7, v8, a5);
}

void sub_1000D5048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = *a3;
  [v5 unsignedIntegerValue];
  [*(a3 + 16) integerValue];
  (*(*(a1 + 32) + 16))();
}

void sub_1000D7834(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setRegisterServiceAnimalURL:v4];
}

void sub_1000D7894(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setContactVenuePhoneNumber:v4];
}

void sub_1000D78F4(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setContactVenueEmail:v4];
}

void sub_1000D7954(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setContactVenueWebsite:v4];
}

void sub_1000D79B4(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setTransitProviderPhoneNumberURL:v4];
}

void sub_1000D7A14(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setTransitProviderEmailURL:v4];
}

void sub_1000D7A74(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setTransitProviderWebsiteURL:v4];
}

void sub_1000D7BF8(id a1, PDPassUpdateContext *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDPassUpdateContext *)v3 setLastModifiedDate:v4];
}

void sub_1000D7C58(id a1, PDPassUpdateContext *a2, id a3)
{
  v4 = a2;
  -[PDPassUpdateContext setLastModifiedSource:](v4, "setLastModifiedSource:", [a3 integerValue]);
}

void sub_1000D7CC8(id a1, PDPassGroupingProfile *a2, id a3)
{
  v4 = a2;
  -[PDPassGroupingProfile setPassStyle:](v4, "setPassStyle:", [a3 integerValue]);
}

void sub_1000D7D20(id a1, PDPassGroupingProfile *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDPassGroupingProfile *)v3 setIngestedDate:v4];
}

void sub_1000D7FB0(uint64_t a1)
{
  atomic_store(0, (*(a1 + 40) + 25));
  v2 = *(*(a1 + 40) + 40);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 40);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v177 = a1;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDFinanceSyncManager started syncing", &buf, 2u);
  }

  oslog = v5;

  v6 = objc_alloc_init(FKWalletExposedDB);
  v175 = v6;
  if (v6)
  {
    v257 = 0;
    v7 = [v6 fetchAppleAccountsWithError:&v257];
    v8 = v257;
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error fetching apple accounts: %@", &buf, 0xCu);
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v277 = 0x3032000000;
    v278 = sub_100005A80;
    v279 = sub_10000B14C;
    v280 = 0;
    v251 = 0;
    v252 = &v251;
    v253 = 0x3032000000;
    v254 = sub_100005A80;
    v255 = sub_10000B14C;
    v256 = 0;
    v245 = 0;
    v246 = &v245;
    v247 = 0x3032000000;
    v248 = sub_100005A80;
    v249 = sub_10000B14C;
    v250 = 0;
    v239 = 0;
    v240 = &v239;
    v241 = 0x3032000000;
    v242 = sub_100005A80;
    v243 = sub_10000B14C;
    v244 = 0;
    v10 = *(v177 + 40);
    v11 = *(v10 + 8);
    v233[0] = _NSConcreteStackBlock;
    v233[1] = 3221225472;
    v233[2] = sub_1000D9B34;
    v233[3] = &unk_100844000;
    v233[4] = v10;
    p_buf = &buf;
    v236 = &v251;
    v237 = &v245;
    v171 = v7;
    v234 = v171;
    v238 = &v239;
    [v11 accessDatabaseUsingBlock:v233];
    v12 = +[NSMutableArray array];
    v232 = 0u;
    v231 = 0u;
    v230 = 0u;
    v229 = 0u;
    v13 = *(*(&buf + 1) + 40);
    v14 = [v13 countByEnumeratingWithState:&v229 objects:v275 count:16];
    if (v14)
    {
      v15 = *v230;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v230 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v229 + 1) + 8 * i);
          if ([*(v177 + 40) _canSyncAccountToFinanceKit:v17])
          {
            v18 = [*(v177 + 40) _fkAppleAccountFromAccount:v17];
            [v12 addObject:v18];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v229 objects:v275 count:16];
      }

      while (v14);
    }

    if (v252[5] && [*(v177 + 40) _canSyncPeerPaymentAccountToFinanceKit:?])
    {
      v19 = [*(v177 + 40) _fkAppleAccountFromPeerPaymentAccount:v252[5]];
      [v12 addObject:v19];
    }

    v162 = objc_alloc_init(NSMutableArray);
    v228 = 0u;
    v227 = 0u;
    v226 = 0u;
    v225 = 0u;
    obj = v12;
    v20 = [obj countByEnumeratingWithState:&v225 objects:v274 count:16];
    v21 = 0;
    if (v20)
    {
      v22 = *v226;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v226 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v225 + 1) + 8 * j);
          v224 = v21;
          v25 = [v175 insertOrUpdateAccount:v24 error:&v224];
          v26 = v224;

          if (v25)
          {
            v21 = v26;
          }

          else
          {
            v27 = [v24 accountIdentifier];
            [v162 addObject:v27];

            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *v265 = 138412546;
              v266 = v24;
              v267 = 2112;
              v268 = v26;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error inserting account: %@ into finance: %@", v265, 0x16u);
            }

            v21 = 0;
          }
        }

        v20 = [obj countByEnumeratingWithState:&v225 objects:v274 count:16];
      }

      while (v20);
    }

    v173 = v21;

    v222 = 0u;
    v223 = 0u;
    v220 = 0u;
    v221 = 0u;
    v169 = v171;
    v28 = [v169 countByEnumeratingWithState:&v220 objects:v273 count:16];
    if (v28)
    {
      v29 = *v221;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v221 != v29)
          {
            objc_enumerationMutation(v169);
          }

          v31 = *(*(&v220 + 1) + 8 * k);
          v32 = [v31 fullyQualifiedAccountIdentifier];
          v33 = [v32 accountID];

          v34 = *(*(&buf + 1) + 40);
          v218[0] = _NSConcreteStackBlock;
          v218[1] = 3221225472;
          v218[2] = sub_1000DA0C8;
          v218[3] = &unk_100842580;
          v35 = v33;
          v219 = v35;
          v36 = [v34 pk_containsObjectPassingTest:v218];
          v37 = [v252[5] identifier];
          v38 = v35;
          v39 = v38;
          if (v37 == v38)
          {
            v41 = 1;
          }

          else
          {
            if (v38)
            {
              v40 = v37 == 0;
            }

            else
            {
              v40 = 1;
            }

            if (v40)
            {
              v41 = 0;
            }

            else
            {
              v41 = [v37 isEqualToString:v38];
            }
          }

          if (((v36 | v41) & 1) == 0)
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *v265 = 138412290;
              v266 = v39;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Deleting account: %@ from Finance, because it is not in Wallet or doesn't have a related pass", v265, 0xCu);
            }

            v42 = [v31 fullyQualifiedAccountIdentifier];
            v43 = [v42 accountID];
            v217 = v173;
            v44 = [v175 deleteAppleAccountWithIdentifier:v43 error:&v217];
            v45 = v217;

            if (v44)
            {
              v173 = v45;
            }

            else
            {
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                *v265 = 138412546;
                v266 = v31;
                v267 = 2112;
                v268 = v45;
                _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error deleting account: %@ from finance: %@", v265, 0x16u);
              }

              v173 = 0;
            }
          }
        }

        v28 = [v169 countByEnumeratingWithState:&v220 objects:v273 count:16];
      }

      while (v28);
    }

    v46 = objc_alloc_init(NSMutableDictionary);
    v172 = objc_alloc_init(NSMutableDictionary);
    v215 = 0u;
    v216 = 0u;
    v213 = 0u;
    v214 = 0u;
    v47 = v246[5];
    v48 = [v47 countByEnumeratingWithState:&v213 objects:v272 count:16];
    if (v48)
    {
      v49 = *v214;
      do
      {
        for (m = 0; m != v48; m = m + 1)
        {
          if (*v214 != v49)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v213 + 1) + 8 * m);
          v52 = [v246[5] objectForKeyedSubscript:v51];
          v53 = [v52 accountIdentifier];
          v54 = [v46 getOrCreateObjectForKey:v53 creationBlock:&stru_100844040];
          v55 = [v52 transactionIdentifier];
          [v54 addObject:v55];

          v56 = [v172 getOrCreateObjectForKey:v53 creationBlock:&stru_100844060];
          [v56 addObject:v51];
        }

        v48 = [v47 countByEnumeratingWithState:&v213 objects:v272 count:16];
      }

      while (v48);
    }

    v157 = +[NSMutableArray array];
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v170 = v46;
    v57 = v173;
    v58 = [v170 countByEnumeratingWithState:&v209 objects:v271 count:16];
    if (v58)
    {
      v59 = *v210;
      do
      {
        v60 = 0;
        v61 = v57;
        do
        {
          if (*v210 != v59)
          {
            objc_enumerationMutation(v170);
          }

          v62 = *(*(&v209 + 1) + 8 * v60);
          v63 = [v170 objectForKeyedSubscript:v62];
          v64 = [v172 objectForKeyedSubscript:v62];
          v208 = v61;
          v65 = [v175 deleteTransactionsWithIdentifiers:v63 forAssociatedAppleAccountWithIdentifier:v62 error:&v208];
          v57 = v208;

          if (v65)
          {
            v66 = [v64 allObjects];
            [v157 addObjectsFromArray:v66];
          }

          else
          {
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *v265 = 138412802;
              v266 = v63;
              v267 = 2112;
              v268 = v62;
              v269 = 2112;
              v270 = v57;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error deleting transactions with identifiers: %@, account identifier: %@, from finance: %@", v265, 0x20u);
            }

            v66 = v57;
            v57 = 0;
          }

          v60 = v60 + 1;
          v61 = v57;
        }

        while (v58 != v60);
        v58 = [v170 countByEnumeratingWithState:&v209 objects:v271 count:16];
      }

      while (v58);
    }

    v174 = v57;

    if ([v157 count])
    {
      [*(*(v177 + 40) + 8) deletePaymentTransactionsToDeleteFromFinanceWithPIDs:v157];
    }

    v166 = objc_alloc_init(NSMutableDictionary);
    v165 = objc_alloc_init(NSMutableDictionary);
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v67 = v240[5];
    v68 = [v67 countByEnumeratingWithState:&v204 objects:v264 count:16];
    if (v68)
    {
      v69 = *v205;
      do
      {
        for (n = 0; n != v68; n = n + 1)
        {
          if (*v205 != v69)
          {
            objc_enumerationMutation(v67);
          }

          v71 = *(*(&v204 + 1) + 8 * n);
          v72 = [v240[5] objectForKeyedSubscript:v71];
          if ([*(v177 + 40) _canSyncTransactionToFinanceKit:v72])
          {
            v73 = [v72 accountIdentifier];
            v74 = [v166 getOrCreateObjectForKey:v73 creationBlock:&stru_100844080];
            [v74 setObject:v72 forKeyedSubscript:v71];
            v75 = [v165 getOrCreateObjectForKey:v73 creationBlock:&stru_1008440A0];
            v76 = [v72 fkPaymentTransaction];
            [v75 setObject:v76 forKeyedSubscript:v71];
          }
        }

        v68 = [v67 countByEnumeratingWithState:&v204 objects:v264 count:16];
      }

      while (v68);
    }

    v202 = 0u;
    v203 = 0u;
    v200 = 0u;
    v201 = 0u;
    v158 = v162;
    v77 = [v158 countByEnumeratingWithState:&v200 objects:v263 count:16];
    v78 = oslog;
    if (v77)
    {
      v79 = *v201;
      do
      {
        for (ii = 0; ii != v77; ii = ii + 1)
        {
          if (*v201 != v79)
          {
            objc_enumerationMutation(v158);
          }

          v81 = *(*(&v200 + 1) + 8 * ii);
          v199[0] = _NSConcreteStackBlock;
          v199[1] = 3221225472;
          v199[2] = sub_1000DA20C;
          v199[3] = &unk_100843FD8;
          v199[4] = v81;
          v82 = [v169 pk_containsObjectPassingTest:v199];
          v83 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
          if (v82)
          {
            if (v83)
            {
              v84 = [v166 objectForKeyedSubscript:v81];
              v85 = [v84 count];
              *v265 = 138412546;
              v266 = v81;
              v267 = 2048;
              v268 = v85;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Account %@ couldn't be updated, but it is inserted into Finance, will insert %zu related transactions", v265, 0x16u);

              v78 = oslog;
            }

            v78 = oslog;
          }

          else
          {
            if (v83)
            {
              v86 = [v166 objectForKeyedSubscript:v81];
              v87 = [v86 count];
              *v265 = 138412546;
              v266 = v81;
              v267 = 2048;
              v268 = v87;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "Account %@ is not in Finance, and couldn't be inserted, won't insert %zu related transactions", v265, 0x16u);

              v78 = oslog;
            }

            [v166 removeObjectForKey:v81];
            v78 = oslog;
            [v165 removeObjectForKey:v81];
          }
        }

        v77 = [v158 countByEnumeratingWithState:&v200 objects:v263 count:16];
      }

      while (v77);
    }

    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    v155 = v166;
    v88 = [v155 countByEnumeratingWithState:&v195 objects:v262 count:16];
    v90 = oslog;
    if (v88)
    {
      v152 = 0;
      v153 = *v196;
      v154 = v88;
      *&v89 = 138412802;
      v151 = v89;
      do
      {
        for (jj = 0; jj != v154; jj = jj + 1)
        {
          if (*v196 != v153)
          {
            objc_enumerationMutation(v155);
          }

          v91 = *(*(&v195 + 1) + 8 * jj);
          v160 = [v155 objectForKeyedSubscript:{v91, v151}];
          v167 = [v165 objectForKeyedSubscript:v91];
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            v92 = [v167 allValues];
            v93 = [v92 count];
            *v265 = 134218242;
            v266 = v93;
            v267 = 2112;
            v268 = v91;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Inserting %zu transactions for account %@", v265, 0x16u);

            v90 = oslog;
          }

          v94 = [v167 allValues];
          v194 = v174;
          v95 = [v175 insertOrUpdateTransactions:v94 forAppleAccountWithID:v91 error:&v194];
          v156 = v194;

          if (v95)
          {
            v96 = objc_alloc_init(NSMutableDictionary);
            v192 = 0u;
            v193 = 0u;
            v190 = 0u;
            v191 = 0u;
            v97 = v160;
            v98 = [v97 countByEnumeratingWithState:&v190 objects:v261 count:16];
            if (v98)
            {
              v99 = *v191;
              do
              {
                for (kk = 0; kk != v98; kk = kk + 1)
                {
                  if (*v191 != v99)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v101 = *(*(&v190 + 1) + 8 * kk);
                  v102 = [v97 objectForKeyedSubscript:v101];
                  v103 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v102 updateSequenceNumber]);
                  [v96 setObject:v103 forKeyedSubscript:v101];
                }

                v98 = [v97 countByEnumeratingWithState:&v190 objects:v261 count:16];
              }

              while (v98);
            }

            [*(*(v177 + 40) + 8) resetNeedsSyncWithFinanceForTransactions:v96];
            v104 = *(*(v177 + 40) + 32);
            v105 = [v97 allKeys];
            [v104 removeObjectsForKeys:v105];
            v152 = 1;
            v174 = v156;
          }

          else
          {
            v106 = oslog;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v107 = [v167 allKeys];
              *v265 = v151;
              v266 = v107;
              v267 = 2112;
              v268 = v91;
              v269 = 2112;
              v270 = v156;
              _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Error inserting transactions with identifiers: %@, accountIdentifier: %@, into finance: %@", v265, 0x20u);

              v106 = oslog;
            }

            v188 = 0u;
            v189 = 0u;
            v186 = 0u;
            v187 = 0u;
            v105 = v160;
            v108 = [v105 countByEnumeratingWithState:&v186 objects:v260 count:16];
            if (v108)
            {
              v109 = *v187;
              do
              {
                for (mm = 0; mm != v108; mm = mm + 1)
                {
                  if (*v187 != v109)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v111 = *(*(&v186 + 1) + 8 * mm);
                  v112 = [*(*(v177 + 40) + 32) objectForKeyedSubscript:v111];
                  v113 = v112;
                  if (v112)
                  {
                    v114 = v112;
                  }

                  else
                  {
                    v114 = &off_1008A29A8;
                  }

                  v115 = v114;

                  v116 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v115 integerValue] + 1);
                  [*(*(v177 + 40) + 32) setObject:v116 forKeyedSubscript:v111];
                }

                v108 = [v105 countByEnumeratingWithState:&v186 objects:v260 count:16];
              }

              while (v108);
            }

            v174 = 0;
            v96 = v156;
          }

          v90 = oslog;
        }

        v154 = [v155 countByEnumeratingWithState:&v195 objects:v262 count:16];
      }

      while (v154);
    }

    else
    {
      v152 = 0;
    }

    v161 = objc_alloc_init(NSMutableDictionary);
    v117 = v177;
    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    v118 = [*(*(v177 + 40) + 32) allKeys];
    v119 = [v118 countByEnumeratingWithState:&v182 objects:v259 count:16];
    if (v119)
    {
      v164 = *v183;
      do
      {
        v120 = v119;
        for (nn = 0; nn != v120; nn = nn + 1)
        {
          if (*v183 != v164)
          {
            objc_enumerationMutation(v118);
          }

          v122 = *(*(&v182 + 1) + 8 * nn);
          v123 = [*(*(v117 + 40) + 32) objectForKeyedSubscript:v122];
          if ([v123 integerValue] >= 8)
          {
            v124 = [v240[5] objectForKeyedSubscript:v122];
            if (v124 && ([*(*(v177 + 40) + 32) removeObjectForKey:v122], +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v124, "updateSequenceNumber")), v125 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v161, "setObject:forKeyedSubscript:", v125, v122), v125, objc_msgSend(*(v177 + 40), "_canSyncTransactionToFinanceKit:", v124)))
            {
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
              {
                v126 = [v124 identifier];
                v127 = [v124 accountIdentifier];
                *v265 = 138412546;
                v266 = v126;
                v267 = 2112;
                v268 = v127;
                _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Attempting for the last time to import transaction with identifier %@ of account %@", v265, 0x16u);
              }

              v128 = [v124 fkPaymentTransaction];
              v258 = v128;
              v129 = [NSArray arrayWithObjects:&v258 count:1];
              v130 = [v124 accountIdentifier];
              v181 = v174;
              v131 = [v175 insertOrUpdateTransactions:v129 forAppleAccountWithID:v130 error:&v181];
              v168 = v181;

              v132 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
              if (v131)
              {
                if (v132)
                {
                  v133 = [v124 identifier];
                  *v265 = 138412290;
                  v266 = v133;
                  _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "The last time attempt to import transaction with identifier %@ succeeded", v265, 0xCu);
                }

                v134 = oslog;
              }

              else
              {
                if (v132)
                {
                  v135 = [v240[5] objectForKeyedSubscript:v122];
                  v136 = [v135 identifier];
                  v137 = [v123 integerValue];
                  *v265 = 138412546;
                  v266 = v136;
                  v267 = 2048;
                  v268 = v137 + 1;
                  _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Unfortunately transaction with identifier: %@ couldn't be successfully synced after %ld tries, it is now marked as synced", v265, 0x16u);
                }

                v134 = v168;
                v168 = 0;
              }
            }

            else
            {
              v168 = v174;
            }

            v174 = v168;
          }

          v117 = v177;
        }

        v119 = [v118 countByEnumeratingWithState:&v182 objects:v259 count:16];
      }

      while (v119);
    }

    v138 = oslog;
    v139 = v177;
    if ([v161 count])
    {
      [*(*(v177 + 40) + 8) resetNeedsSyncWithFinanceForTransactions:v161];
    }

    if ([*(*(v177 + 40) + 32) count])
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *v265 = 0;
        v140 = "Will sync again, because there are erroneous transactions to try syncing again";
LABEL_168:
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, v140, v265, 2u);
      }
    }

    else
    {
      if ((([v240[5] count] == 300) & v152) == 0 && objc_msgSend(v246[5], "count") != 300)
      {
        goto LABEL_170;
      }

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *v265 = 0;
        v140 = "Will sync again, because there may be more transactions to sync";
        goto LABEL_168;
      }
    }

    v138 = oslog;
    v139 = v177;
    atomic_store(1u, (*(v177 + 40) + 25));
LABEL_170:
    v141 = [*(*(v139 + 40) + 32) count];
    v142 = *(v139 + 40);
    v143 = 15;
    if (v141)
    {
      v144 = *(v142 + 48);
      if (v144 <= 3)
      {
        v143 = 1 << v144;
      }

      else
      {
        v143 = 15;
      }

      v145 = v144 + 1;
    }

    else
    {
      v145 = 0;
    }

    *(v142 + 48) = v145;
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *v265 = 67109120;
      LODWORD(v266) = v143;
      _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "Scheduling syncIfNeeded in %d seconds", v265, 8u);
    }

    v146 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(*(v177 + 40) + 16));
    v147 = *(*(v177 + 40) + 40);
    *(*(v177 + 40) + 40) = v146;

    v148 = *(*(v177 + 40) + 40);
    v149 = dispatch_time(0, 1000000000 * v143);
    dispatch_source_set_timer(v148, v149, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    objc_initWeak(v265, *(v177 + 40));
    v150 = *(*(v177 + 40) + 40);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000DA2A0;
    handler[3] = &unk_1008440C8;
    objc_copyWeak(&v180, v265);
    dispatch_source_set_event_handler(v150, handler);
    dispatch_resume(*(*(v177 + 40) + 40));
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *v178 = 0;
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "PDFinanceSyncManager finished syncing", v178, 2u);
    }

    objc_destroyWeak(&v180);
    objc_destroyWeak(v265);

    _Block_object_dispose(&v239, 8);
    _Block_object_dispose(&v245, 8);

    _Block_object_dispose(&v251, 8);
    _Block_object_dispose(&buf, 8);

    v5 = v169;
    goto LABEL_181;
  }

  atomic_store(0, (*(v177 + 40) + 24));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Couldn't initialize FKWalletExposedDB. Bailing out.", &buf, 2u);
  }

  v174 = 0;
LABEL_181:
}

void sub_1000D99D4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x4F0], 8);
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x550], 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1000D9B34(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v3 = [*(*(a1 + 32) + 8) accounts];
  v4 = [v3 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v54;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v54 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        v9 = [v8 associatedPassUniqueID];
        if (v9 && ![*(*(a1 + 32) + 8) passExistsWithUniqueID:v9])
        {
          v10 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v8 accountIdentifier];
            [v8 type];
            v12 = PKAccountTypeToString();
            *buf = 138412546;
            v60 = v11;
            v61 = 2112;
            v62 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Ignoring account: %@ (%@)", buf, 0x16u);
          }
        }

        else
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v5);
  }

  v43 = v2;
  v13 = [v2 copy];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = [*(*(a1 + 32) + 8) peerPaymentAccount];
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v19 = [*(*(a1 + 32) + 8) paymentTransactionsToDeleteFromFinanceWithLimit:300];
  v20 = *(*(a1 + 64) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v23 = *(*(*(a1 + 48) + 8) + 40);
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v50;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v49 + 1) + 8 * j);
        if ([*(a1 + 32) _canSyncAccountToFinanceKit:v28])
        {
          v29 = [v28 accountIdentifier];
          [v22 addObject:v29];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v25);
  }

  if ([*(a1 + 32) _canSyncPeerPaymentAccountToFinanceKit:*(*(*(a1 + 56) + 8) + 40)])
  {
    v30 = [*(*(*(a1 + 56) + 8) + 40) identifier];
    [v22 addObject:v30];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v31 = v22;
  v32 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v46;
    do
    {
      for (k = 0; k != v33; k = k + 1)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v45 + 1) + 8 * k);
        v37 = *(a1 + 40);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_1000DA034;
        v44[3] = &unk_100843FD8;
        v44[4] = v36;
        v38 = [v37 pk_containsObjectPassingTest:v44];
        if (*(a1 + 40) && (v38 & 1) == 0)
        {
          v39 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v60 = v36;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Setting needs_sync_to_finance = 1 for transactions of account: %@ because it is in Wallet and not in Finance", buf, 0xCu);
          }

          [*(*(a1 + 32) + 8) setNeedsSyncWithFinanceForTransactionsWithAccountIdentifier:v36];
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v33);
  }

  v40 = [*(*(a1 + 32) + 8) transactionsThatNeedSyncToFinanceWithAccountIdentifiers:v31 withLimit:300];
  v41 = *(*(a1 + 72) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v40;
}

uint64_t sub_1000DA034(uint64_t a1, void *a2)
{
  v3 = [a2 fullyQualifiedAccountIdentifier];
  v4 = [v3 accountID];
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

uint64_t sub_1000DA0C8(uint64_t a1, void *a2)
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

id sub_1000DA14C(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);

  return v1;
}

id sub_1000DA17C(id a1)
{
  v1 = objc_alloc_init(NSMutableSet);

  return v1;
}

id sub_1000DA1AC(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);

  return v1;
}

id sub_1000DA1DC(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);

  return v1;
}

uint64_t sub_1000DA20C(uint64_t a1, void *a2)
{
  v3 = [a2 fullyQualifiedAccountIdentifier];
  v4 = [v3 accountID];
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

void sub_1000DA2A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained retryTimerFired];
}

void sub_1000DBE38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKPassCredentialShare);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) safelyAddObject:v7];
}

void sub_1000DBFB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000DC358(id a1, PKPassCredentialShare *a2, id a3)
{
  v3 = a2;
  [(PKPassCredentialShare *)v3 setTargetDevice:PKPassCredentialShareTargetDeviceFromString()];
}

void sub_1000DC3B0(id a1, PKPassCredentialShare *a2, id a3)
{
  v3 = a2;
  [(PKPassCredentialShare *)v3 setStatus:PKShareStatusFromString()];
}

void sub_1000DC8C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKAccountPromotionCompletionStep);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_1000DCFC8(id a1, PKAccountPromotionCompletionStep *a2, id a3)
{
  v4 = a2;
  -[PKAccountPromotionCompletionStep setIndex:](v4, "setIndex:", [a3 integerValue]);
}

void sub_1000DD020(id a1, PKAccountPromotionCompletionStep *a2, id a3)
{
  v4 = a2;
  -[PKAccountPromotionCompletionStep setProgressType:](v4, "setProgressType:", [a3 integerValue]);
}

void sub_1000DD080(id a1, PKAccountPromotionCompletionStep *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKAccountPromotionCompletionStep *)v3 setEndValue:v4];
}

void sub_1000DD0E4(id a1, PKAccountPromotionCompletionStep *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKAccountPromotionCompletionStep *)v3 setCurrentValue:v4];
}

void sub_1000DD148(id a1, PKAccountPromotionCompletionStep *a2, id a3)
{
  v4 = a2;
  -[PKAccountPromotionCompletionStep setCompleted:](v4, "setCompleted:", [a3 BOOLValue]);
}

void sub_1000DD294(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

id PKPaymentPassBalanceLabelDictionary(void *a1)
{
  v1 = [a1 balanceFields];
  v2 = objc_alloc_init(NSMutableDictionary);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = [v6 foreignReferenceIdentifiers];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              v13 = [v6 label];
              [v2 setObject:v13 forKeyedSubscript:v12];
            }

            v9 = [v7 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v4);
  }

  v14 = [v2 copy];

  return v14;
}

id PKPaymentPassPlanLabelDictionary(void *a1)
{
  v1 = [a1 transitCommutePlans];
  v2 = objc_alloc_init(NSMutableDictionary);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v1;
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v5 = [v4 identifier];
        v6 = [v4 titleText];
        v20 = v5;
        [v2 setObject:v6 forKeyedSubscript:v5];

        v7 = [v4 foreignReferenceIdentifiers];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 allObjects];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              v14 = [v4 titleText];
              [v2 setObject:v14 forKeyedSubscript:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  v15 = [v2 copy];

  return v15;
}

id PKPaymentPassUnitDictionary(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableDictionary);
  v17 = v1;
  v3 = [v1 transitCommutePlans];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = PKTransitCommutePlanGenericCountPlanAmountRemainingKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (([v9 properties] & 4) != 0)
        {
          v10 = [v9 passFieldForKey:v7];
          v11 = [v10 foreignReferenceIdentifiers];
          if ([v11 count] == 1)
          {
            v12 = [v11 anyObject];
            v13 = [v10 unitType];
            if (v13 != -1)
            {
              v14 = [NSNumber numberWithInteger:v13];
              [v2 setObject:v14 forKeyedSubscript:v12];
            }
          }

          else
          {
            v12 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v23 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Commute plans cannot have multiple identifiers. Identifiers: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }

  v15 = [v2 copy];

  return v15;
}

void sub_1000DE0C0(uint64_t a1)
{
  v2 = objc_alloc_init(PDTransitStateFetchRequest);
  [(PDTransitStateFetchRequest *)v2 setPassUniqueIdentifier:*(a1 + 40)];
  [(PDTransitStateFetchRequest *)v2 setSecureElementIdentifier:*(a1 + 48)];
  [(PDTransitStateFetchRequest *)v2 setPaymentApplicationIdentifier:*(a1 + 56)];
  [*(a1 + 64) _queueTransitStateFetchRequest:v2];
}

void sub_1000DE310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DE33C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DE400;
    v7[3] = &unk_10083C420;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_sync(v6, v7);
  }
}

void sub_1000DE400(uint64_t a1)
{
  *(*(a1 + 32) + 56) = 0;
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {

    [v2 _handleTransitRequestsWithSession:?];
  }

  else
  {
    v4 = [v2[8] copy];
    [*(*(a1 + 32) + 64) removeAllObjects];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to update transit applet states for:", buf, 2u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v11 passUniqueIdentifier];
            v13 = [v11 paymentApplicationIdentifier];
            *buf = 138412546;
            v19 = v12;
            v20 = 2112;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "\t%@: %@", buf, 0x16u);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000DEC34(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2 || (LOBYTE(v6) = 0, [*(a1 + 48) _ingestAppletStateHistory:v2 withTransactionDate:*(a1 + 56) forceTransactionGeneration:1 recoverMissingTransactions:0 forPaymentApplication:*(a1 + 64) withPassUniqueIdentifier:*(a1 + 72) skipQueuedRequestSanitization:v6 expressTransactionState:*(a1 + 80)], (v3 = *(a1 + 40)) == 0) || objc_msgSend(v3, "isBlacklisted"))
  {
    v7 = objc_alloc_init(PDTransitStateFetchRequest);
    [(PDTransitStateFetchRequest *)v7 setPassUniqueIdentifier:*(a1 + 72)];
    v4 = [*(a1 + 64) secureElementIdentifier];
    [(PDTransitStateFetchRequest *)v7 setSecureElementIdentifier:v4];

    v5 = [*(a1 + 64) applicationIdentifier];
    [(PDTransitStateFetchRequest *)v7 setPaymentApplicationIdentifier:v5];

    if (!*(a1 + 40))
    {
      [(PDTransitStateFetchRequest *)v7 setForceTransactionGeneration:1];
      [(PDTransitStateFetchRequest *)v7 setTransactionDate:*(a1 + 56)];
      [(PDTransitStateFetchRequest *)v7 setExpressState:*(a1 + 80)];
    }

    [*(a1 + 48) _queueTransitStateFetchRequest:v7];
  }
}

void sub_1000DEE88(uint64_t a1)
{
  LOBYTE(v4) = 0;
  [*(a1 + 40) _ingestAppletStateHistory:*(a1 + 48) withTransactionDate:*(a1 + 56) forceTransactionGeneration:0 recoverMissingTransactions:0 forPaymentApplication:*(a1 + 64) withPassUniqueIdentifier:*(a1 + 72) skipQueuedRequestSanitization:v4 expressTransactionState:0];
  if ([*(a1 + 48) isBlacklisted])
  {
    v5 = objc_alloc_init(PDTransitStateFetchRequest);
    [(PDTransitStateFetchRequest *)v5 setPassUniqueIdentifier:*(a1 + 72)];
    v2 = [*(a1 + 64) secureElementIdentifier];
    [(PDTransitStateFetchRequest *)v5 setSecureElementIdentifier:v2];

    v3 = [*(a1 + 64) applicationIdentifier];
    [(PDTransitStateFetchRequest *)v5 setPaymentApplicationIdentifier:v3];

    [(PDTransitStateFetchRequest *)v5 setTransactionDate:*(a1 + 56)];
    [*(a1 + 40) _queueTransitStateFetchRequest:v5];
  }
}

id sub_1000DF35C(void *a1, void *a2)
{
  result = [a2 appletStateDirty];
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 _notifyIssuerAppletStateDirtyWithPassID:v5 forPaymentApplication:v6];
  }

  return result;
}

void sub_1000DF3AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 needsStationProcessing])
  {
    [*(a1 + 32) _resolveStationCodesForAppletState:v6 paymentApplication:*(a1 + 40) passUniqueIdentifier:*(a1 + 48)];
  }

  v7 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF498;
  block[3] = &unk_10083C4C0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v5;
  v13 = v8;
  v14 = v9;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_1000DF498(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = *(*(a1 + 40) + 32);
        v9 = [*(a1 + 48) transactionSourceIdentifier];
        [v8 processPaymentTransaction:v7 forTransactionSourceIdentifier:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000DF6B8(void *a1)
{
  v2 = [*(a1[4] + 8) transitStateWithPassUniqueIdentifier:a1[5] paymentApplication:a1[6]];
  (*(a1[7] + 16))();
}

void sub_1000DFB10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v5 = PKEqualObjects();
    v4 = v6;
    if ((v5 & 1) == 0)
    {
      [*(a1 + 40) addObject:v6];
      v4 = v6;
    }
  }
}

void sub_1000DFB7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6 && [v6 _mapkit_underlyingGEOError] != -8)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      v20 = 138412546;
      v21 = v7;
      v22 = 2112;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "An Error Occurred While Performing Stations Update (%@): %@", &v20, 0x16u);
    }
  }

  else
  {
    v8 = [v5 mapItems];
    v9 = [v8 count];
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      v12 = [*(a1 + 32) applicationIdentifier];
      v20 = 134218498;
      v21 = v11;
      v22 = 2048;
      v23 = v9;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stations Update Response: (%lu, %lu), Application: %@", &v20, 0x20u);
    }

    v13 = objc_alloc_init(NSMutableDictionary);
    if ([v8 count])
    {
      v14 = 0;
      do
      {
        v15 = [v8 objectAtIndexedSubscript:v14];
        v16 = [v15 _externalTransitStationCode];
        v17 = [v15 name];
        v18 = v17;
        if (v16 && [v17 length])
        {
          [v13 setObject:v18 forKeyedSubscript:v16];
        }

        ++v14;
      }

      while (v14 < [v8 count]);
    }

    [*(*(a1 + 40) + 8) updateTransitAppletStateWithStationNames:v13 forPaymentApplication:*(a1 + 32) withPassUniqueIdentifier:*(a1 + 48)];
  }
}

void sub_1000DFF84(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(v2 + 8);
  v5 = [*(v2 + 24) secureElementIdentifiers];
  v6 = [v4 passWithPaymentApplicationIdentifier:v3 secureElementIdentifiers:v5];
  v7 = [v6 paymentPass];

  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v7 devicePaymentApplications];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v9)
    {
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 applicationIdentifier];
          v14 = PKEqualObjects();

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([v9 supportsTransit])
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 48);
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PDTransitStateManager: %@ posseses applet data. Updating...", buf, 0xCu);
      }

      v17 = *(a1 + 40);
      v18 = [v7 uniqueID];
      v19 = [v9 secureElementIdentifier];
      v20 = [v9 applicationIdentifier];
      [v17 fetchAndCacheTransitStateForPassUniqueIdentifier:v18 secureElementIdentifier:v19 paymentApplicationIdentifier:v20];
    }
  }
}

void sub_1000E0264(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E03C4;
  v11[3] = &unk_10083DB08;
  v4 = objc_alloc_init(NSMutableSet);
  v12 = v4;
  [v3 enumerateObjectsUsingBlock:v11];

  if ([v4 count])
  {
    v5 = [*(a1[2].i64[1] + 8) passesOfType:1];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E041C;
    v8[3] = &unk_1008443A8;
    v9 = v4;
    v7 = a1[2];
    v6 = v7.i64[0];
    v10 = vextq_s8(v7, v7, 8uLL);
    [v5 enumerateObjectsUsingBlock:v8];
  }
}

void sub_1000E03C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 passUniqueIdentifier];
  [v2 addObject:v3];
}

void sub_1000E041C(uint64_t a1, void *a2)
{
  v3 = [a2 paymentPass];
  v4 = [v3 uniqueID];
  v5 = [v3 devicePrimaryPaymentApplication];
  v6 = [*(a1 + 32) containsObject:v4];
  if ([v5 isParsedTransitApplication])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 supportsSuica] ^ 1;
  }

  v8 = [v3 isTransitPass];
  if (v4 && v8 && ((v6 ^ 1) & 1) == 0 && (v7 & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Recovering missed transactions for express transit pass with unique identifier: %@", buf, 0xCu);
    }

    v10 = *(*(a1 + 40) + 48);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E05E8;
    v13[3] = &unk_10083E088;
    v14 = *(a1 + 48);
    v15 = v4;
    v11 = v5;
    v12 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    dispatch_async(v10, v13);
  }
}

void sub_1000E05E8(uint64_t a1)
{
  v4 = objc_alloc_init(PDTransitStateFetchRequest);
  [(PDTransitStateFetchRequest *)v4 setPassUniqueIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 48) secureElementIdentifier];
  [(PDTransitStateFetchRequest *)v4 setSecureElementIdentifier:v2];

  v3 = [*(a1 + 48) applicationIdentifier];
  [(PDTransitStateFetchRequest *)v4 setPaymentApplicationIdentifier:v3];

  [(PDTransitStateFetchRequest *)v4 setRecoverMissingTransactions:1];
  [*(a1 + 56) _queueTransitStateFetchRequest:v4];
}

void sub_1000E07AC(uint64_t a1)
{
  v21 = objc_alloc_init(NSMutableArray);
  v22 = [*(a1 + 40) mutableCopy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = *(a1 + 48);
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        [v7 state];
        if (PKPaymentApplicationStateIsPersonalized() && [v7 supportsTransit])
        {
          v8 = [v7 applicationIdentifier];
          v9 = [v7 secureElementIdentifier];
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1000E0AB4;
          v27[3] = &unk_1008443D0;
          v10 = v8;
          v28 = v10;
          v11 = v9;
          v29 = v11;
          v12 = [v22 objectsPassingTest:v27];
          [v22 minusSet:v12];
          v13 = [v12 anyObject];
          v14 = v13;
          if (!v13 || ([v13 state], !PKPaymentApplicationStateIsPersonalized()))
          {
            v15 = objc_alloc_init(PDTransitStateFetchRequest);
            [(PDTransitStateFetchRequest *)v15 setPassUniqueIdentifier:*(a1 + 56)];
            [(PDTransitStateFetchRequest *)v15 setSecureElementIdentifier:v11];
            [(PDTransitStateFetchRequest *)v15 setPaymentApplicationIdentifier:v10];
            [v21 addObject:v15];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v4);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v21;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(a1 + 64) _queueTransitStateFetchRequest:*(*(&v23 + 1) + 8 * j)];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v18);
  }
}

uint64_t sub_1000E0AB4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 applicationIdentifier];
  if (([v6 isEqualToString:*(a1 + 32)] & 1) == 0)
  {

    goto LABEL_5;
  }

  v7 = [v5 secureElementIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 40)];

  if (!v8)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
  *a3 = 1;
LABEL_6:

  return v9;
}

void sub_1000E0C8C(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 8) passWithUniqueIdentifier:*(a1 + 48)];
  if ([v2 passType] != 1 || (objc_msgSend(v2, "isTransitPass") & 1) == 0)
  {

    v2 = 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 devicePaymentApplications];
  v4 = [(PDTransitStateFetchRequest *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
LABEL_6:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v11 + 1) + 8 * v6);
      v8 = [v7 applicationIdentifier];
      v9 = PKEqualObjects();

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(PDTransitStateFetchRequest *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          goto LABEL_6;
        }

        goto LABEL_16;
      }
    }

    v4 = v7;

    if (v2 && v4)
    {
      v3 = objc_alloc_init(PDTransitStateFetchRequest);
      [(PDTransitStateFetchRequest *)v3 setPassUniqueIdentifier:*(a1 + 48)];
      v10 = [v4 secureElementIdentifier];
      [(PDTransitStateFetchRequest *)v3 setSecureElementIdentifier:v10];

      [(PDTransitStateFetchRequest *)v3 setPaymentApplicationIdentifier:*(a1 + 56)];
      [(PDTransitStateFetchRequest *)v3 setForceTransactionGeneration:1];
      [(PDTransitStateFetchRequest *)v3 setExpressState:*(a1 + 64)];
      [*(a1 + 40) _queueTransitStateFetchRequest:v3];
      goto LABEL_16;
    }
  }

  else
  {
LABEL_16:
  }
}

void sub_1000E1508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E1524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E15F4;
  v5[3] = &unk_1008443F8;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v3 notifyIssuerAppletStateDirtyWithRequest:v4 completion:v5];

  objc_destroyWeak(&v7);
}

void sub_1000E15F4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 20);
    if (a2 && ([*(WeakRetained + 9) containsObject:*(a1 + 32)] & 1) == 0)
    {
      [*(WeakRetained + 1) deleteDirtyAppletStatesForTransitAppletStateDirty:*(a1 + 32)];
    }

    *(WeakRetained + 84) = 0;
    os_unfair_lock_unlock(WeakRetained + 20);
    [WeakRetained _performWebRequestToNotifyIssuerAppletDirtyIfNecessary];
  }
}

Class sub_1000E175C()
{
  if (qword_100924218 != -1)
  {
    sub_1005B8FE0();
  }

  result = objc_getClass("_MKLocalSearchExternalTransitLookupParameters");
  qword_100924208 = result;
  off_10091E728 = sub_1000E17B0;
  return result;
}

Class sub_1000E17E8()
{
  if (qword_100924218 != -1)
  {
    sub_1005B8FE0();
  }

  result = objc_getClass("MKLocalSearchRequest");
  qword_100924220 = result;
  off_10091E730 = sub_1000E183C;
  return result;
}

Class sub_1000E1848()
{
  if (qword_100924218 != -1)
  {
    sub_1005B8FE0();
  }

  result = objc_getClass("MKLocalSearch");
  qword_100924228 = result;
  off_10091E738 = sub_1000E189C;
  return result;
}

void sub_1000E1C94(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  v7 = +[NSNull null];
  if (v6 != v7)
  {
    v9 = v7;
    v8 = *a4;

    if (!v8)
    {
      return;
    }

    [*(a1 + 32) addObject:v8];
    v7 = v8;
  }
}

uint64_t sub_1000E228C(uint64_t a1)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E2368;
  v9[3] = &unk_100844468;
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v2;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v6;
  [v3 enumerateObjectsUsingBlock:v9];

  return 1;
}

void sub_1000E2368(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = a2;
  v8 = [[v5 alloc] initWithTransitNetworkIdentifier:v6 networkOrder:a3 forPaymentApplication:*(a1 + 32) database:*(a1 + 40)];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 48) addObject:v8];
    v7 = v8;
  }
}

void sub_1000E2AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000E2AB8(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 64)) initWithMetadata:*(a1 + 32) forBaseMetadata:*(a1 + 40) inDatabase:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

id sub_1000E2C88(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, _BYTE *a6)
{
  [*(a1 + 32) setRows:{objc_msgSend(*a4, "unsignedIntegerValue")}];
  [*(a1 + 32) setWidthClass:PKPassTileWidthClassVerticalFlowFromString()];
  result = [*(a1 + 32) setHeightClass:PKPassTileHeightClassFromString()];
  *a6 = 1;
  return result;
}

void sub_1000E32BC(void *a1)
{
  v6 = [PKSharingRelayChannelDescriptor existingChannelForURL:a1[4]];
  v2 = [*(a1[5] + 136) handleForDescriptor:? queue:?];
  v3 = v2;
  v4 = a1[6];
  if (v2)
  {
    [v2 pingWithCompletion:v4];
  }

  else
  {
    v5 = PDBasicError();
    (*(v4 + 16))(v4, 0, v5);
  }
}

void sub_1000E3474(uint64_t a1)
{
  v5 = [PKSharingRelayChannelDescriptor existingChannelForURL:*(a1 + 32)];
  v2 = [*(*(a1 + 40) + 136) handleForDescriptor:? queue:?];
  if (v2)
  {
    sub_1005B8FF4(*(a1 + 40), v2, *(a1 + 48));
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = PDBasicError();
    (*(v3 + 16))(v3, 0, v4);
  }
}

void sub_1000E3534(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 || (a2 & 1) == 0)
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }

  else
  {
    v4 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000E3620;
    v8[3] = &unk_1008444E0;
    v10 = *(a1 + 48);
    v7 = *(a1 + 32);
    v5 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    [v4 handleOutstandingMessage:v8];
  }
}

void sub_1000E3620(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = sub_1005B9494(*(a1 + 32), v5);
    if (v7)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v8 = sub_1005B9358(*(a1 + 32), v5);
      v9 = *(a1 + 32);
      if (v8)
      {
        sub_1005B9418(v9, v8, *(a1 + 40), *(a1 + 48));
      }

      else
      {
        v10 = sub_1005B9638(v9, 1, v5);
        if (v10 && PKIsPhone())
        {
          v14 = *(a1 + 32);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_1000E37E0;
          v15[3] = &unk_1008444B8;
          v15[4] = v14;
          v16 = v10;
          sub_1005B9774(v14, 1, v15);
        }

        v11 = objc_alloc_init(PKMAEntitlementTemplateManager);
        [v11 entitlementTemplates:0];
        v6[2](v6, 0);
        (*(*(a1 + 48) + 16))(*(a1 + 48), v5, 0, v12, v13);
      }
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id *sub_1000E37E0(id *result, uint64_t a2)
{
  if (a2 == 2)
  {
    return [result[4] rejectShareForMailboxAddress:result[5]];
  }

  return result;
}

void sub_1000E38BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) transportIdentifierForSharingMessage:*(a1 + 40)];
  v3 = [PKSharingRelayChannelDescriptor existingChannelForMailboxIdentifier:v2];
  v4 = [*(*(a1 + 32) + 136) handleForDescriptor:v3 queue:*(*(a1 + 32) + 88)];
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000E3A0C;
    v6[3] = &unk_10083C7F8;
    v7 = *(a1 + 48);
    [v4 relinquishWithCompletion:v6];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: unable to relinquish invitation, can't find endpoint for message", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000E3A0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: Unable to relinquish invitation, %@", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000E3BDC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) transportIdentifierForSharingMessage:*(a1 + 40)];
  v3 = [PKSharingRelayChannelDescriptor existingChannelForMailboxIdentifier:v2];
  v4 = [*(*(a1 + 32) + 136) handleForDescriptor:v3 queue:*(*(a1 + 32) + 88)];
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = PKSharingLoggableMailboxAddress();
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Deleting messages on endpoint '%@'", &v8, 0xCu);
    }

    sub_1000E3D3C(*(a1 + 32), v4);
  }

  else
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Error: unable to delete message, can't find endpoint for message", &v8, 2u);
    }
  }
}

void sub_1000E3D3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = a2;
      [v3 transportIdentifier];
      v5 = _NSConcreteStackBlock;
      v6 = 3221225472;
      v7 = sub_1000EF2E4;
      v8 = &unk_100840C98;
      v10 = v9 = a1;
      v4 = v10;
      [v3 closeWithCompletion:&v5];

      [*(a1 + 24) deleteSharingMessagesForTransportIdentifier:{v4, v5, v6, v7, v8, v9}];
    }
  }
}

void sub_1000E3EA4(uint64_t a1)
{
  v2 = [PKSharingRelayChannelDescriptor existingChannelForURL:*(a1 + 32)];
  v3 = [*(*(a1 + 40) + 136) handleForDescriptor:v2 queue:*(*(a1 + 40) + 88)];
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: Rejecting share invitation on endpoint %@", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E401C;
    v7[3] = &unk_100844570;
    v7[4] = v6;
    v8 = v3;
    sub_1005B8FF4(v6, v8, v7);
  }
}

void sub_1000E401C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E40DC;
    block[3] = &unk_10083C4C0;
    block[4] = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

void sub_1000E40DC(uint64_t a1)
{
  v2 = sub_1005B99FC(*(a1 + 32), *(a1 + 40));
  if (v2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000E41F0;
    v6[3] = &unk_100844570;
    v3 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = *(a1 + 48);
    [v2 rejectInvitation:v3 completion:v6];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Cleanup: unable to find service for invitation to reject. Deleting mailbox instead.", v5, 2u);
    }

    [*(a1 + 48) closeWithCompletion:0];
  }
}

void sub_1000E41F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 88);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000E42AC;
    v5[3] = &unk_10083C420;
    v6 = *(a1 + 40);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_1000E4388(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) passWithUniqueIdentifier:*(a1 + 40)];
  v3 = [v2 secureElementPass];

  if (v3)
  {
    v6 = sub_1005B9A68(*(a1 + 32), v3);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E451C;
    v7[3] = &unk_1008445C0;
    v7[4] = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 48);
    [v6 prewarmCreateShareForPass:v8 completion:v7];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to prewarm create share for pass %@, but unable to find pass", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000E451C(uint64_t a1, char a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 88);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E45D4;
  v7[3] = &unk_10083E128;
  v7[4] = v5;
  v8 = v4;
  v10 = a2;
  v9 = *(a1 + 48);
  dispatch_async(v6, v7);
}

void sub_1000E45D4(uint64_t a1)
{
  v2 = [PKSharingRelayChannelDescriptor createChannelWithRegion:0 stateful:sub_1005B9AE4(*(a1 + 32), *(a1 + 40))];
  v3 = *(*(a1 + 32) + 136);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E46BC;
  v6[3] = &unk_100844598;
  v8 = *(a1 + 56);
  v7 = *(a1 + 48);
  [v3 prewarmEndpointCreationForDescriptor:v2 count:2 completion:v6];
  (*(*(a1 + 48) + 16))(*(a1 + 48), 1, v4, v5);
}

uint64_t sub_1000E46BC(uint64_t a1, char a2)
{
  v3 = (*(a1 + 40) & a2);
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"No";
    if (v3)
    {
      v5 = @"Yes";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Prewarmed create share with success: %@", &v7, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000E4B08(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_1000E4B2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 96);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E4C08;
  block[3] = &unk_10083F490;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_1000E4C08(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

void sub_1000E4C30(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 88);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E4CF8;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_1000E4D10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) homeInvite];

  v9 = *(*(a1 + 40) + 24);
  v10 = [*(a1 + 32) pass];
  v11 = [v10 uniqueID];
  v12 = [v9 passWithUniqueIdentifier:v11];
  v13 = [v12 secureElementPass];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 56) + 8) + 40);
  if (v16)
  {
    v25 = sub_1005B9A68(*(a1 + 40), v16);
    v26 = *(*(a1 + 64) + 8);
    v20 = *(v26 + 40);
    *(v26 + 40) = v25;
    goto LABEL_4;
  }

  if (v8)
  {
    v17 = *(*(a1 + 40) + 112);
    v18 = *(*(a1 + 64) + 8);
    v19 = v17;
    v20 = *(v18 + 40);
    *(v18 + 40) = v19;
LABEL_4:

    v7[2](v7, v6, 0);
    goto LABEL_8;
  }

  v21 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to create share but unable to locate pass.", v27, 2u);
  }

  v22 = *(a1 + 48);
  v28 = NSLocalizedDescriptionKey;
  v29 = @"Unable to find pass";
  v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v24 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:v23];
  (*(v22 + 16))(v22, 0, v24);

LABEL_8:
}

void sub_1000E4F4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (*(*(*(a1 + 48) + 8) + 40) && ([*(a1 + 32) share], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = *(a1 + 40);
    v12 = *(*(*(a1 + 48) + 8) + 40);
    v13 = *(a1 + 32);
    v15 = v9;
    v14 = v8;
    sub_1005B9B24(v11, v12);
  }

  else
  {
    (*(v9 + 2))(v9, v8, 0);
  }
}

uint64_t sub_1000E5088(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 share];
  [v5 updateDisplayableSharedEntitlementsFromDisplayableEntitlements:v4];

  v6 = *(*(a1 + 48) + 16);

  return v6();
}

void sub_1000E50FC(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Attempting to create share for %@", buf, 0xCu);
  }

  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(*(*(a1 + 72) + 8) + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E5260;
  v10[3] = &unk_100844688;
  v8 = *(a1 + 56);
  v10[4] = *(a1 + 48);
  v9 = *(a1 + 72);
  v12 = v8;
  v13 = v9;
  v11 = *(a1 + 32);
  [v4 createShareInvitationFromShare:v6 forPass:v5 authorization:v7 completion:v10];
}

void sub_1000E5260(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(v9 + 88);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000E537C;
    v13[3] = &unk_100844660;
    v13[4] = v9;
    v11 = v7;
    v12 = *(a1 + 56);
    v14 = v11;
    v18 = v12;
    v15 = v8;
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    dispatch_async(v10, v13);
  }
}

void sub_1000E537C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  v5 = *(v4 + 40);
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 64);
    v8 = *(a1 + 32);
    v9 = *(v4 + 40);

    sub_1000E5434(v8, v3, v9, v6, v7);
  }

  else
  {
    v10 = [*(a1 + 56) share];
    sub_1000E5434(v2, v3, v5, v10, *(a1 + 64));
  }
}

void sub_1000E5434(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 88));
    v13 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = sub_100005AA0;
    v57[4] = sub_10000B15C;
    v58 = 0;
    v14 = v10;
    v15 = [v14 isCarKeyPass];

    v16 = [v14 passTypeIdentifier];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_1000E64D8;
    v53[3] = &unk_1008447C8;
    v28 = v9;
    v17 = v9;
    v55 = a1;
    v56 = v57;
    v54 = v17;
    v18 = objc_retainBlock(v53);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000E6684;
    v47[3] = &unk_100844840;
    v19 = v16;
    v52 = v15;
    v48 = v19;
    v49 = a1;
    v20 = v13;
    v50 = v20;
    v21 = v18;
    v51 = v21;
    [v17 enumerateSecondaryInvites:v47];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000E68A4;
    v45[3] = &unk_10083C848;
    v22 = v17;
    v46 = v22;
    [v20 addOperation:v45];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_100005AA0;
    v43[4] = sub_10000B15C;
    v44 = 0;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1005B9EF0;
    v36[3] = &unk_1008448B8;
    v23 = v22;
    v37 = v23;
    v24 = v19;
    v42 = v15;
    v38 = v24;
    v39 = a1;
    v41 = v43;
    v25 = v21;
    v40 = v25;
    [v20 addOperation:v36];
    v26 = +[NSNull null];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000E6B38;
    v29[3] = &unk_100844930;
    v29[4] = a1;
    v34 = v57;
    v30 = v14;
    v31 = v11;
    v33 = v12;
    v32 = v23;
    v35 = v43;
    v27 = [v20 evaluateWithInput:v26 completion:v29];

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(v57, 8);

    v9 = v28;
  }
}

void sub_1000E5CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v38 - 240), 8);
  _Block_object_dispose((v38 - 192), 8);
  _Block_object_dispose((v38 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1000E5D38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 88);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E5E00;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, v11);
}

void sub_1000E5E18(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1[5];
  v6 = (a1 + 4);
  v8 = *(a1[4] + 24);
  v9 = a4;
  v10 = a3;
  v11 = [v7 pass];
  v12 = [v11 uniqueID];
  v13 = [v8 passWithUniqueIdentifier:v12];
  v14 = [v13 secureElementPass];
  v15 = *(v6[2] + 1);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *(*(v6[2] + 1) + 40);
  if (v17)
  {
    sub_1005BFB24(v6, v17, a1);
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to create share but unable to locate pass.", &v23, 2u);
    }

    v24 = NSLocalizedDescriptionKey;
    v25 = @"Unable to find pass";
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:v19];
    v21 = *(a1[8] + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  v9[2](v9, v10, *(*(a1[8] + 8) + 40) != 0);
}

uint64_t sub_1000E6010(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 share];
  [v5 updateDisplayableSharedEntitlementsFromDisplayableEntitlements:v4];

  v6 = *(*(a1 + 48) + 16);

  return v6();
}

void sub_1000E6084(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Attempting to create share for %@", buf, 0xCu);
  }

  v10 = *(*(*(a1 + 56) + 8) + 40);
  v11 = *(*(*(a1 + 64) + 8) + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000E6224;
  v18[3] = &unk_100844700;
  v21 = v7;
  v19 = v6;
  v22 = *(a1 + 72);
  v14 = *(a1 + 48);
  v15 = *(a1 + 88);
  v20 = v14;
  v23 = v15;
  v16 = v6;
  v17 = v7;
  [v10 createShareInvitationFromShare:v12 forPass:v11 authorization:v13 completion:v18];
}

void sub_1000E6224(void *a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a4);
    (*(a1[6] + 16))();
  }

  else
  {
    objc_storeStrong((*(a1[8] + 8) + 40), a2);
    v10 = *(*(a1[8] + 8) + 40);
    v11 = a1[5];
    v12 = [v10 primaryInvite];
    [v10 setTransportIdentifier:v11 forInvite:v12];

    objc_storeStrong((*(a1[9] + 8) + 40), a3);
  }
}

void sub_1000E6334(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E63E8;
  block[3] = &unk_100844750;
  block[4] = v2;
  v8 = *(a1 + 56);
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v9 = *(a1 + 72);
  dispatch_async(v3, block);
}

void sub_1000E63E8(uint64_t *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  if (v2 && (v3 = *(*(a1[7] + 8) + 40)) != 0)
  {
    sub_1005B9CC8(a1[4], v2, v3, *(*(a1[8] + 8) + 40));
    v5 = a1[5];
    v6 = [*(*(a1[7] + 8) + 40) primaryInvite];
    (*(v5 + 16))(v5, v6, *(*(a1[6] + 8) + 40), 0);
  }

  else
  {
    v4 = *(a1[5] + 16);

    v4();
  }
}

void sub_1000E64D8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a4)
  {
    [*(a1 + 32) setShareURL:a4 forInvite:v11];
  }

  [*(a1 + 32) setHandle:v12 forInvite:v11];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v13;
  v17 = v13;

  v18 = *(*(a1 + 40) + 88);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E6608;
  v21[3] = &unk_1008447A0;
  v19 = *(a1 + 48);
  v22 = v14;
  v23 = v19;
  v20 = v14;
  dispatch_async(v18, v21);
}

void sub_1000E6608(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSNull null];
  (*(v2 + 16))(v2, v3, *(*(*(a1 + 40) + 8) + 40) != 0);
}

void sub_1000E6684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PKSharingRelayChannelDescriptor createChannelWithRegion:*(a1 + 32) stateful:*(a1 + 64)];
  v5 = [*(*(a1 + 40) + 136) handleForDescriptor:v4 queue:*(*(a1 + 40) + 88)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E6794;
  v9[3] = &unk_100844818;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v5;
  v11 = v3;
  v12 = *(a1 + 56);
  v7 = v3;
  v8 = v5;
  [v6 addOperation:v9];
}

void sub_1000E6794(id *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = a1[7];
  v7 = a1[6];
  v8 = a1[5];
  v6 = v5;
  sub_1005B9E20();
}

void sub_1000E68A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000E69B0;
  v12[3] = &unk_100844868;
  v10 = v8;
  v13 = v10;
  [v9 enumerateSecondaryInvites:v12];
  if ([v10 count])
  {
    v11 = [*(a1 + 32) primaryInvite];
    [v11 addEmbeddedMessages:v10];
  }

  v7[2](v7, v6, 0);
}

void sub_1000E69B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  v7 = +[PKSharingMessage embeddedMessageDictionaryForShareURL:targetDevice:](PKSharingMessage, "embeddedMessageDictionaryForShareURL:targetDevice:", v6, [a3 targetDevice]);

  [v5 addObject:v7];
}

void sub_1000E6A38(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  objc_storeStrong((*(a1[8] + 8) + 40), a2);
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[4];
  if (*(*(a1[8] + 8) + 40))
  {
    (*(v7 + 16))(a1[6], a1[4], a1[5], v11, v6, a1[7]);
  }

  else
  {
    v10 = [NSError pkSharingError:12];
    (*(v7 + 16))(v7, v9, v8, 0, v10, a1[7]);
  }
}

void sub_1000E6B38(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E6C34;
  block[3] = &unk_100844908;
  v12 = *(a1 + 72);
  v7 = *(a1 + 32);
  v2 = *(v7 + 88);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v11 = *(a1 + 64);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v13 = *(a1 + 80);
  dispatch_async(v2, block);
}

void sub_1000E6C34(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v3 = [*(a1 + 40) uniqueID];
    v4 = *(a1 + 48);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E6E18;
    v16[3] = &unk_1008448E0;
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v17 = v5;
    v18 = v6;
    [v2 revokeShareForPassIdentifier:v3 share:v4 shouldCascade:0 completion:v16];
  }

  else
  {
    v7 = [v2[17] monitor];
    [v7 scheduleNextCheckIfNeeded];

    v8 = *(a1 + 48);
    if (v8)
    {
      sub_1005B9CC8(*(a1 + 32), v8, *(a1 + 56), *(a1 + 40));
    }

    if (*(a1 + 40))
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
      v10 = [*(a1 + 40) uniqueID];
      [WeakRetained sharesDidUpdateWithPaymentPassWithUniqueIdentifier:v10];
    }

    v11 = [PKCrossPlatformShareURL alloc];
    v12 = *(*(*(a1 + 80) + 8) + 40);
    v13 = [*(a1 + 56) expectedPairedReaderIdentifier];
    v14 = [*(a1 + 56) expectedProvisioningCredentialHash];
    v15 = [v11 initWithURL:v12 expectedPairedReaderIdentifier:v13 expectedProvisioningCredentialHash:v14];

    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000E6E38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!v4)
  {
    v6 = objc_alloc_init(PDShareURLDecorationConfiguration);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = 2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = 1;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_10:
          v9[0] = _NSConcreteStackBlock;
          v9[1] = 3221225472;
          v9[2] = sub_1000E700C;
          v9[3] = &unk_100844980;
          v9[4] = *(a1 + 32);
          v8 = *(a1 + 48);
          v10 = *(a1 + 56);
          [v8 universalShareURLWithDecoration:v6 completion:v9];

          goto LABEL_11;
        }

        v7 = 3;
      }
    }

    [(PDShareURLDecorationConfiguration *)v6 setVertical:v7];
    goto LABEL_10;
  }

  v5 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E6FF4;
  block[3] = &unk_10083C820;
  v13 = *(a1 + 56);
  v12 = v4;
  dispatch_async(v5, block);

  v6 = v13;
LABEL_11:
}

void sub_1000E700C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(a1 + 32) + 88);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E7100;
  v14[3] = &unk_100844958;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v11;
  v18 = v9;
  v15 = v5;
  v12 = v7;
  v13 = v5;
  dispatch_async(v10, v14);
}

uint64_t sub_1000E7100(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_1000E7244(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) passWithUniqueIdentifier:*(a1 + 40)];
  v3 = [v2 secureElementPass];

  if (!v3)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to create share for %@ but unable to locate pass.", buf, 0xCu);
    }

    v6 = *(a1 + 64);
    v7 = PKAddSecureElementPassErrorDomain;
    v33 = NSLocalizedDescriptionKey;
    v34 = @"Unable to find pass";
    v8 = &v34;
    v9 = &v33;
    goto LABEL_9;
  }

  if (([*(a1 + 48) isEditable] & 1) == 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to update share for %@ but share isn't editable.", buf, 0xCu);
    }

    v6 = *(a1 + 64);
    v7 = PKAddSecureElementPassErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Share not editable";
    v8 = &v32;
    v9 = &v31;
LABEL_9:
    v12 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:1];
    v13 = [NSError errorWithDomain:v7 code:0 userInfo:v12];
    (*(v6 + 16))(v6, 0, v13);
    goto LABEL_10;
  }

  v14 = *(*(a1 + 32) + 24);
  v15 = [*(a1 + 48) identifier];
  v12 = [v14 passShareForIdentifier:v15];

  v16 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    *buf = 138412802;
    v26 = v17;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Attempting to update share for pass %@\n\n oldShare: %@\n\n newShare: %@", buf, 0x20u);
  }

  v13 = sub_1005B9A68(*(a1 + 32), v3);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E75B8;
  v21[3] = &unk_1008449F8;
  v21[4] = *(a1 + 32);
  v22 = v19;
  v23 = *(a1 + 40);
  v24 = *(a1 + 64);
  [v13 updateShare:v22 forPass:v3 authorization:v20 completion:v21];

LABEL_10:
}

void sub_1000E75B8(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(v8 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E7700;
    block[3] = &unk_10083C4C0;
    block[4] = v8;
    v18 = v7;
    v19 = *(a1 + 48);
    dispatch_async(v9, block);
  }

  v10 = *(*(a1 + 32) + 96);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E7764;
  v13[3] = &unk_1008449D0;
  v11 = *(a1 + 56);
  v16 = a2;
  v14 = v6;
  v15 = v11;
  v12 = v6;
  dispatch_async(v10, v13);
}

void sub_1000E7700(void *a1)
{
  [*(a1[4] + 24) addPassShare:a1[5] forPassUniqueIdentifier:a1[6]];
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  [WeakRetained sharesDidUpdateWithPaymentPassWithUniqueIdentifier:a1[6]];
}

void sub_1000E7948(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) passWithUniqueIdentifier:*(a1 + 40)];
  v3 = [v2 secureElementPass];

  if (v3)
  {
    v4 = [*(a1 + 48) pk_objectsPassingTest:&stru_100844A18];
    if ([v4 count])
    {
      v8 = sub_1005B9A68(*(a1 + 32), v3);
      v13 = *(a1 + 64);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000E7C70;
      v16[3] = &unk_100842CA0;
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16[4] = *(a1 + 32);
      v17 = v14;
      v18 = *(a1 + 56);
      [v8 revokeShares:v15 forPass:v3 shouldCascade:v13 completion:v16];
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 40);
        *buf = 138412290;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to revoke shares for %@ but shares aren't revokable.", buf, 0xCu);
      }

      v7 = *(a1 + 56);
      v19 = NSLocalizedDescriptionKey;
      v20 = @"Share not manageable";
      v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v9 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:v8];
      (*(v7 + 16))(v7, 0, v9);
    }
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      *buf = 138412290;
      v24 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to revoke share for %@ but unable to locate pass.", buf, 0xCu);
    }

    v12 = *(a1 + 56);
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Unable to find pass";
    v4 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v8 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:v4];
    (*(v12 + 16))(v12, 0, v8);
  }
}

void sub_1000E7C70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ([v7 count] || objc_msgSend(v8, "count")) && v9 == 0;
  v11 = *(*(a1 + 32) + 88);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7E24;
  block[3] = &unk_100844A40;
  v30 = v10;
  v12 = v9;
  v25 = v12;
  v26 = v7;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v27 = v8;
  v28 = v13;
  v29 = v14;
  v15 = v8;
  v16 = v7;
  dispatch_async(v11, block);
  v17 = *(*(a1 + 32) + 96);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000E8084;
  v20[3] = &unk_1008449D0;
  v23 = v10;
  v18 = *(a1 + 48);
  v21 = v12;
  v22 = v18;
  v19 = v12;
  dispatch_async(v17, v20);
}

void sub_1000E7E24(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 72))
    {
      v3 = @"Yes";
    }

    else
    {
      v3 = @"No";
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    *buf = 138413058;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    v34 = 2112;
    v35 = v5;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: revoked shares with success: %@, %@ \n\nUpdated Shares: %@\n\nRevoked Shares: %@", buf, 0x2Au);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(a1 + 56) + 24) addPassShare:*(*(&v24 + 1) + 8 * v11) forPassUniqueIdentifier:*(a1 + 64)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = *(a1 + 48);
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(a1 + 56) + 24);
        v18 = [*(*(&v20 + 1) + 8 * v16) identifier];
        [v17 deletePassShareWithIdentifier:v18];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 56) + 80));
  [WeakRetained sharesDidUpdateWithPaymentPassWithUniqueIdentifier:*(a1 + 64)];
}

void sub_1000E8084(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v1 = *(*(a1 + 40) + 16);

    v1();
  }

  else
  {
    v2 = *(a1 + 40);
    if (*(a1 + 32))
    {
      v3 = *(v2 + 16);
      v4 = *(a1 + 40);

      v3(v4, 0);
    }

    else
    {
      v5 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:0];
      (*(v2 + 16))(v2, 0, v5);
    }
  }
}

void sub_1000E823C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) typeDescription];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: creating single use share url for message type %@", buf, 0xCu);
  }

  v4 = [PKSharingRelayChannelDescriptor createChannelWithRegion:&stru_10086D930 stateful:0];
  v5 = [*(*(a1 + 40) + 136) handleForDescriptor:v4 queue:*(*(a1 + 40) + 88)];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E83BC;
  v9[3] = &unk_100841F40;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v8 sendMessage:v6 completion:v9];
}

void sub_1000E83BC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v8 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E84F0;
    block[3] = &unk_10083C820;
    v13 = *(a1 + 48);
    v12 = v5;
    dispatch_async(v8, block);

    v7 = v13;
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E8508;
    v9[3] = &unk_100844980;
    v6 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = *(a1 + 48);
    [v6 universalShareURLWithDecoration:0 completion:v9];
    v7 = v10;
  }
}

void sub_1000E8508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = *(*(a1 + 32) + 96);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E85FC;
  v14[3] = &unk_100844958;
  v11 = *(a1 + 40);
  v16 = v7;
  v17 = v11;
  v18 = v9;
  v15 = v5;
  v12 = v7;
  v13 = v5;
  dispatch_async(v10, v14);
}

uint64_t sub_1000E85FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3, *(a1 + 40));
}

id sub_1000E87A0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) activeExternalPassSharesExist];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000E889C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) passSharesForPassUniqueIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 32) + 96);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E8960;
  v6[3] = &unk_10083C820;
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t sub_1000E8A40(void *a1)
{
  if ([*(a1[4] + 24) externalPassSharesExistForPassUniqueIdentifier:a1[5]])
  {
    result = 1;
  }

  else
  {
    result = PKShowLocalPassShares();
  }

  *(*(a1[6] + 8) + 24) = result;
  return result;
}

id sub_1000E8B54(void *a1)
{
  result = [*(a1[4] + 24) hasShareablePassEntitlementsForPassUniqueIdentifier:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t sub_1000E8C9C(void *a1)
{
  v2 = [*(a1[4] + 24) passEntitlementsForPassUniqueIdentifier:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000E8DB0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) passWithUniqueIdentifier:*(a1 + 40)];
  v3 = [v2 secureElementPass];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 24) passSharesForPassUniqueIdentifier:*(a1 + 40)];
    v5 = v4;
    v6 = *(a1 + 32);
    if (v4)
    {
      v8 = v14;
      v12 = v4;
      v13 = *(a1 + 32);
      v14[0] = v12;
      v14[1] = v13;
      v15 = *(a1 + 48);
      sub_1005B9B24(v6, v3);
    }

    else
    {
      v7 = *(v6 + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E9020;
      block[3] = &unk_10083D648;
      v8 = &v17;
      v17 = *(a1 + 48);
      dispatch_async(v7, block);
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to render displayable entitlements for pass %@ but unable to locate pass.", buf, 0xCu);
    }

    v11 = *(*(a1 + 32) + 96);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E900C;
    v18[3] = &unk_10083D648;
    v19 = *(a1 + 48);
    dispatch_async(v11, v18);
    v5 = v19;
  }
}

void sub_1000E9034(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v8) updateDisplayableSharedEntitlementsFromDisplayableEntitlements:v3];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = *(*(a1 + 40) + 96);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000E91BC;
  v10[3] = &unk_10083C820;
  v12 = *(a1 + 48);
  v11 = *(a1 + 32);
  dispatch_async(v9, v10);
}

void sub_1000E9294(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) passWithUniqueIdentifier:*(a1 + 40)];
  v3 = [v2 secureElementPass];

  if (v3)
  {
    sub_1005B9B24(*(a1 + 32), v3);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Tried to render displayable entitlements for pass %@ but unable to locate pass.", buf, 0xCu);
    }

    v6 = *(*(a1 + 32) + 96);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E93F4;
    block[3] = &unk_10083D648;
    v8 = *(a1 + 48);
    dispatch_async(v6, block);
  }
}

void sub_1000E9408(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  if ([v4 count])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  (*(v2 + 16))(v2, v3);
}

void sub_1000E9514(void *a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1[4] + 128);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) userNotificationActionPerformed:a1[6] notificationIdentifier:{a1[5], v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000E960C(void *a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PKSharingLoggableMailboxAddress();
    v4 = a1[5];
    *buf = 138412547;
    v20 = v3;
    v21 = 2113;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDSharingManager: Handling outstanding continuity discovery request message on %@ \n\n %{private}@", buf, 0x16u);
  }

  v5 = [PKSharingExistingChannelDescriptor existingForTransportIdentifier:a1[4]];
  v6 = [*(a1[6] + 136) handleForDescriptor:v5 queue:*(a1[6] + 88)];
  v7 = [PDProvisioningContinuityHostManager alloc];
  v8 = *(a1[6] + 64);
  v10 = *(a1[6] + 24);
  v9 = *(a1[6] + 32);
  v11 = [*(a1[6] + 16) sharedWebService];
  v12 = [(PDProvisioningContinuityHostManager *)v7 initWithHandle:v6 databaseManager:v10 remoteInterfacePresenter:v8 notificationManager:v9 webService:v11];

  objc_initWeak(buf, v12);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000E9840;
  v16 = &unk_10083C510;
  objc_copyWeak(&v18, buf);
  v17 = a1[6];
  [(PDProvisioningContinuityHostManager *)v12 setInvalidationHandler:&v13];
  [*(a1[6] + 128) addObject:{v12, v13, v14, v15, v16}];
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void sub_1000E9818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E9840(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E9900;
    block[3] = &unk_100844AB8;
    block[4] = v3;
    objc_copyWeak(&v6, &to);
    dispatch_async(v4, block);
    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&to);
}

void sub_1000E9900(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 128);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 removeObject:WeakRetained];
}