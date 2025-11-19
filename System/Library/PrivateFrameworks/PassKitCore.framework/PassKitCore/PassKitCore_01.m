void sub_10002DB90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 paymentTransaction];
          v11 = [v10 transitType];
          v12 = *(a1 + 40);

          if (v11 == v12)
          {
            [v9 invalidateTransitBalance];
            [*(*(a1 + 32) + 56) insertUserNotification:v9];
          }

          else
          {
            [*(*(a1 + 32) + 56) removeUserNotification:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

void sub_10002DD58(uint64_t a1, void *a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    v6 = IXStringForAppRemovability();
    v7 = *(a1 + 40);

    v8 = 138412802;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marked Wallet removability as %@ (count: %lu) with error: %@", &v8, 0x20u);
  }
}

void sub_10002E400(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      __break(1u);
    }

    v7 = PDDefaultQueue();
    PDWakePassbookInBackground();

    v8 = sub_1005B69E4(a1);
    if ([v8 count])
    {
      v9 = [*(a1 + 48) effectiveCatalog];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1000344C4;
      v20 = &unk_10083D820;
      v21 = v5;
      v22 = v6;
      v23 = v9;
      v10 = v9;
      v11 = objc_retainBlock(&v17);
      sub_100034200(a1, v11, v8);
    }

    v12 = [NSDistributedNotificationCenter defaultCenter:v17];
    v13 = PKPassLibraryDidRecoverPassNotification;
    v24 = PKPassLibraryUniqueIDUserInfoKey;
    v14 = [v5 uniqueID];
    v25 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v12 postNotificationName:v13 object:0 userInfo:v15];

    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v16, "Name", [PKPassLibraryDidChangeNotification UTF8String]);
    [*(a1 + 536) sendEvent:v16];
  }
}

void sub_10002E730(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && PKManualArchiveEnabled())
  {
    if (!v5)
    {
      __break(1u);
    }

    v7 = PDDefaultQueue();
    PDWakePassbookInBackground();

    v8 = sub_1005B69E4(a1);
    if ([v8 count])
    {
      v9 = [*(a1 + 48) effectiveCatalog];
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_1000344D4;
      v20 = &unk_10083D820;
      v21 = v5;
      v22 = v6;
      v23 = v9;
      v10 = v9;
      v11 = objc_retainBlock(&v17);
      sub_100034200(a1, v11, v8);
    }

    v12 = [NSDistributedNotificationCenter defaultCenter:v17];
    v13 = PKPassLibraryDidArchivePassNotification;
    v24 = PKPassLibraryUniqueIDUserInfoKey;
    v14 = [v5 uniqueID];
    v25 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v12 postNotificationName:v13 object:0 userInfo:v15];

    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v16, "Name", [PKPassLibraryDidChangeNotification UTF8String]);
    [*(a1 + 536) sendEvent:v16];
  }
}

void sub_10002ECDC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 type];
    if (v7 == 1)
    {
      objc_initWeak(&location, a1);
      v8 = a1[17];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10002EF40;
      v9[3] = &unk_10083D348;
      objc_copyWeak(&v11, &location);
      v10 = v6;
      [v8 defaultAccountForFeature:4 completion:v9];

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }

    else if (!v7)
    {
      sub_1005B7708(v5, a1, v6);
    }
  }
}

void sub_10002EDE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10002EE00(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[ACAccountStore ams_sharedAccountStore];
    objc_initWeak(&location, a1);
    v8 = a1[17];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002F680;
    v10[3] = &unk_10083D440;
    objc_copyWeak(&v14, &location);
    v11 = v5;
    v9 = v7;
    v12 = v9;
    v13 = v6;
    [v8 defaultAccountForFeature:4 completion:v10];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void sub_10002EF24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_10002EF40(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v7 && WeakRetained)
  {
    v4 = WeakRetained[4];
    v5 = [v7 associatedPassUniqueID];
    [v4 deleteCardWithUniqueID:v5 forReason:6 withDiagnosticReason:@"iTunes Account Deleted"];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))();
  }
}

void sub_10002F0B4(id a1, unint64_t a2, PKPaymentWebServiceContext *a3, NSError *a4)
{
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device Registration result was: %lu", &v6, 0xCu);
  }
}

uint64_t sub_10002F164(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 deleteApplet];
  [v3 invalidateSessionWithCompletion:0];

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void sub_10002F344(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) description];
    *buf = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting backup with files: %@", buf, 0xCu);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002F4A8;
  v5[3] = &unk_10083D418;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 enumerateObjectsUsingBlock:v5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished backup of files.", buf, 2u);
  }
}

void sub_10002F4A8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v6 truncateFileAtOffset:0];
  [v6 seekToFileOffset:0];
  v7 = [[NSData alloc] initWithContentsOfURL:v5];

  v15 = 0;
  [v6 writeData:v7 error:&v15];
  v8 = v15;
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 description];
      *buf = 138543362;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unable to write to file: %{public}@", buf, 0xCu);
    }
  }

  v14 = 0;
  [v6 closeAndReturnError:&v14];
  v11 = v14;

  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 description];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to close file: %{public}@", buf, 0xCu);
    }
  }
}

void sub_10002F680(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!v3 || !WeakRetained)
  {
    goto LABEL_12;
  }

  v6 = [*(a1 + 32) accountStorefrontChanged];
  v7 = [*(a1 + 40) ams_isActiveAccountCombined];
  v8 = v7 ? @"Apple Account storefront does not match PKAccount country code" : @"iCloud and iTunes Account Mismatch";
  if (v7 && !v6)
  {
    goto LABEL_12;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: removing Apple Account pass if needed", &v15, 0xCu);
  }

  v10 = *(v5 + 4);
  v11 = [v3 associatedPassUniqueID];
  [v10 deleteCardWithUniqueID:v11 forReason:6 withDiagnosticReason:v8];

  if (v6)
  {
    v12 = [*(a1 + 40) ams_activeiTunesAccount];
    v13 = [v12 ams_storefront];

    [*(v5 + 17) resolveAccountStorefrontCountryMismatchForAccount:v3 newCountryCode:v13 completion:*(a1 + 48)];
  }

  else
  {
LABEL_12:
    v14 = *(a1 + 48);
    if (v14)
    {
      (*(v14 + 16))();
    }
  }
}

void sub_10002FA60(uint64_t a1)
{
  if (a1)
  {
    v2 = PKStoreDemoModeEnabled();
    v3 = PKUIOnlyDemoModeEnabled();
    v4 = v3;
    if ((v2 & 1) != 0 || v3)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = @"NO";
        if (v2)
        {
          v9 = @"YES";
        }

        else
        {
          v9 = @"NO";
        }

        if (v4)
        {
          v8 = @"YES";
        }

        *buf = 138412546;
        *&buf[4] = v9;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDServer: Skipping applying backup exclusions to existing passes (PKStoreDemoModeEnabled: %@, PKUIOnlyDemoModeEnabled: %@).", buf, 0x16u);
      }
    }

    else
    {
      v5 = PKCardsDirectoryURL();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v12 = 0;
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 48);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000361A8;
      v10[3] = &unk_10083DBB8;
      v10[4] = v5;
      v10[5] = buf;
      [v7 enumeratePassSyncabilityPropertiesWithHandler:v10];
      objc_autoreleasePoolPop(v6);
      sub_1005B77B8(buf);
    }
  }
}

void sub_10002FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002FC10(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_1005B533C(*(a1 + 32));
    v4 = *(a1 + 32);

    sub_1005B5504(v4);
  }
}

void sub_10002FC5C(id a1, NSError *a2)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSError *)a2 description];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Donated pass information with error: %@", &v5, 0xCu);
  }
}

id FinanceKitPlistBackupURLExists()
{
  v0 = PKLibraryDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"FinanceBackup/finance.plist"];

  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:v1];

  return v3;
}

BOOL sub_10002FF6C(id a1, PKSecureElementPass *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = ([(PKSecureElementPass *)v4 muteReadyForUseNotification]& 1) == 0 && [(PKSecureElementPass *)v4 passActivationState]== PKSecureElementPassActivationStateActivated;

  return v5;
}

void sub_10002FFB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 352);
  v5 = [*(a1 + 40) uniqueID];
  v7 = *(a1 + 40);
  v6 = v3;
  sub_1005C4A44(v4, v5);
}

void sub_100030088(uint64_t a1, void *a2)
{
  v3 = [a2 pk_setByApplyingBlock:&stru_10083D558];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v5)
  {

    v12 = *(a1 + 48);
    if (v12)
    {
      goto LABEL_12;
    }

    v7 = 0;
LABEL_14:
    v16 = v7;
    v18 = v7;
    v13 = @"CARDS_READY_TO_USE_EXPRESS";
    goto LABEL_15;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v20;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = [*(*(&v19 + 1) + 8 * i) uniqueID];
      v11 = [v3 containsObject:v10];

      v7 += v11;
    }

    v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v6);

  v12 = *(a1 + 48);
  if (v7 == v12)
  {
    goto LABEL_14;
  }

  if (v7)
  {
    v16 = *(a1 + 48);
    v18 = v7;
    v13 = @"CARDS_READY_TO_USE_SOME_EXPRESS";
LABEL_15:
    PKLocalizedPaymentString(&v13->isa, @"%lu%lu", v16, v18, v19);
    goto LABEL_16;
  }

LABEL_12:
  PKLocalizedPaymentString(@"CARDS_READY_TO_USE_NO_EXPRESS", @"%lu", v12, v17, v19);
  v14 = LABEL_16:;
  v15 = [(PDGenericUserNotification *)[PDWalletUserNotification alloc] initWithTitle:0 message:v14 forPassUniqueIdentifier:0];
  [(PDUserNotification *)v15 setSuppressionBehavior:2];
  [*(*(a1 + 40) + 56) insertUserNotification:v15];
}

void sub_1000303A4(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PKDeviceRegistrationResultToString();
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed device registration from IDS message with result %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) idsDestination];
  v7 = [v6 name];

  v8 = *(*(a1 + 40) + 336);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030504;
  v10[3] = &unk_10083D5A8;
  v11 = v7;
  v9 = v7;
  [v8 sendRemoteRegistrationRequestResult:a2 forHandle:v9 completion:v10];
}

void sub_100030504(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished sending device registration result response to handle %@, with error %@", &v6, 0x16u);
  }
}

void sub_100030A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 256), 8);
  _Block_object_dispose((v37 - 208), 8);
  _Block_object_dispose((v37 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100030A50(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 440);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100030B38;
  v12[3] = &unk_10083D5D0;
  v9 = *(a1 + 40);
  v16 = *(a1 + 48);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 familyMembersWithCachePolicy:0 completion:v12];
}

void sub_100030B38(void *a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 appleID];
        v10 = a1[4];
        v11 = v9;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          if (v11)
          {
            v14 = v12 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {

LABEL_15:
            v16 = [v8 appleIDAliases];
            v17 = [v16 containsObject:a1[4]];

            if (!v17)
            {
              goto LABEL_17;
            }

            goto LABEL_16;
          }

          v15 = [v11 isEqualToString:v12];

          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

LABEL_16:
        objc_storeStrong((*(a1[7] + 8) + 40), v8);
LABEL_17:
        if ([v8 isMe])
        {
          objc_storeStrong((*(a1[8] + 8) + 40), v8);
        }

        if (*(*(a1[8] + 8) + 40) && *(*(a1[7] + 8) + 40))
        {
          goto LABEL_23;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

LABEL_23:

  (*(a1[6] + 16))();
}

void sub_100030D38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) accountIdentifier];
  if (!v8)
  {
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v24 = 138412290;
      v25 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Error: cannot fetch account users for a nil account defined on %@", &v24, 0xCu);
    }

    goto LABEL_10;
  }

  v9 = [*(*(*(a1 + 56) + 8) + 40) altDSID];
  if (!v9)
  {
    v10 = [*(*(a1 + 40) + 48) accountUserForAccountWithIdentifier:v8 handle:*(a1 + 48)];
    v9 = [v10 altDSID];
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v24 = 138412802;
      v25 = v10;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found account user %@ for configuration %@ with altDSID %@", &v24, 0x20u);
    }

    if (!v9)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = 138412290;
        v25 = v23;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Error: cannot fetch account users for a nil altDSID defined on %@", &v24, 0xCu);
      }

LABEL_10:
      v7[2](v7, v6, 0);
      goto LABEL_11;
    }
  }

  v13 = [*(*(a1 + 40) + 48) accountUserWithAltDSID:v9 accountIdentifier:v8];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(a1 + 40) + 48);
  v17 = PKCurrentUserAltDSID();
  v18 = [v16 accountUserWithAltDSID:v17 accountIdentifier:v8];
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v7[2](v7, v6, 0);
LABEL_11:
}

void sub_100030FD8(void *a1)
{
  v2 = [[PKSharingIDSManagerHandlerDetails alloc] initWithFamilyMember:*(*(a1[5] + 8) + 40) accountUser:*(*(a1[6] + 8) + 40)];
  v3 = [[PKSharingIDSManagerHandlerDetails alloc] initWithFamilyMember:*(*(a1[7] + 8) + 40) accountUser:*(*(a1[8] + 8) + 40)];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found currentUserDetails: %@, handleUserDetails: %@", &v5, 0x16u);
  }

  (*(a1[4] + 16))();
}

void sub_1000311FC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateQuickActions];

  objc_autoreleasePoolPop(v2);
}

void sub_10003163C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 296));
  if (WeakRetained)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7874(WeakRetained, a1, v3);
    }
  }

  objc_storeWeak((*(a1 + 32) + 296), *(a1 + 40));
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, WeakRetained == 0);
  }
}

void sub_1000317AC(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 296));
  v3 = a1[5];
  if (WeakRetained == v3)
  {
    objc_storeWeak((a1[4] + 296), 0);
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1005B78F0(WeakRetained, v3, v4);
    }
  }

  v5 = a1[6];
  if (v5)
  {
    (*(v5 + 16))(v5, WeakRetained == v3);
  }
}

void sub_1000319FC(id a1, BOOL a2)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented continuity view", v3, 2u);
  }
}

void sub_100031CD8(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    if ([*(a1 + 32) isEqualToString:PDDarwinNotificationMobileKeyBagFirstUnlock])
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Keybag unlocked notification received", buf, 2u);
      }

      v3 = 0;
      atomic_compare_exchange_strong((*(a1 + 40) + 9), &v3, 1u);
      if (!v3)
      {
        sub_1005AD1BC(*(a1 + 40));
      }
    }

    else if ([*(a1 + 32) isEqualToString:off_10091D0E0()])
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "iCloud restore complete notification received", buf, 2u);
      }

      v5 = 0;
      v7 = *(a1 + 40);
      v6 = (a1 + 40);
      atomic_compare_exchange_strong((v7 + 10), &v5, 1u);
      if (!v5)
      {
        sub_1005B7A04(v6);
      }
    }

    else if ([*(a1 + 32) isEqualToString:off_10091D0E8()])
    {
      v8 = dispatch_time(0, 10000000000);
      v9 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100032278;
      block[3] = &unk_10083C470;
      block[4] = *(a1 + 40);
      dispatch_after(v8, v9, block);
    }

    else if ([*(a1 + 32) isEqualToString:PKDarwinNotificationEventLostModeStateChanged])
    {
      v10 = +[FMDFMIPManager sharedInstance];
      v11 = [v10 lostModeIsActive];

      if (v11)
      {
        v12 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Lost Mode Is Active", buf, 2u);
        }

        PKSetNeedsLostModeExitAuth();
        PKAnalyticsSendEvent();
      }

      else
      {
        PKAnalyticsSendEvent();
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Processing Lost Mode Exit", buf, 2u);
        }

        v14 = [*(*(a1 + 40) + 48) allPaymentApplications];
        if ([v14 count])
        {
          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Starting FMDFMIP lost mode exit.", buf, 2u);
          }

          v13 = +[FMDFMIPManager sharedInstance];
          v20[0] = _NSConcreteStackBlock;
          v20[1] = 3221225472;
          v20[2] = sub_100032280;
          v20[3] = &unk_10083D5A8;
          v20[4] = *(a1 + 40);
          [v13 initiateLostModeExitAuthWithCompletion:v20];
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No Cards. Skipping Lost Mode Exit", buf, 2u);
        }
      }
    }

    else if ([*(a1 + 32) isEqualToString:PKDarwinNotificationEventDeveloperImageMounted])
    {
      v19 = [*(*(a1 + 40) + 104) sharedWebServiceContext];
      [v19 setConfigurationDate:0];
      [*(*(a1 + 40) + 104) updateSharedWebServiceContext:v19];
      [*(*(a1 + 40) + 104) updateWebServiceConfigurationWithCompletion:0];
    }

    else if ([*(a1 + 32) isEqualToString:PDDarwinNotificationEventPasswordChanged])
    {
      sub_1005B799C(a1);
    }

    else if ([*(a1 + 32) isEqualToString:PDDarwinNotificationEventBluetoothPowerChanged])
    {
      v16 = *(*(a1 + 40) + 200);

      [v16 updateSubcredentialsForBluetoothPowerChange];
    }

    else if ([*(a1 + 32) isEqualToString:PDDarwinNotificationEventAppProtectionChanged])
    {
      v17 = *(*(a1 + 40) + 648);

      [v17 updateHideCardsWhileLockedEnforcement];
    }

    else if ([*(a1 + 32) isEqualToString:PDDarwinNotificationEventSEDesignatedKeySync])
    {
      v18 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received key sync event from SE. Starting consistency check.", buf, 2u);
      }

      [*(*(a1 + 40) + 104) initiateConsistencyCheck];
    }
  }
}

void sub_100032280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to un-suspend passes from Lost Mode. Asking server for latest versions. Error: %@", &v6, 0xCu);
    }

    [*(*(a1 + 32) + 104) initiateDevicePassesDownload];
  }

  else
  {
    if (v5)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Completed FMDFMIP lost mode exit.", &v6, 2u);
    }

    PKSetNeedsLostModeExitAuth();
  }
}

uint64_t sub_100032864(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v11 = v3;
    v5 = [*(a1 + 32) serialNumber];
    v6 = [v11 associatedPassSerialNumber];
    if ([v5 isEqualToString:v6])
    {
      v7 = [*(a1 + 32) passTypeIdentifier];
      v8 = [v11 associatedPassTypeIdentifier];
      v9 = [v7 isEqualToString:v8];

      v4 = v11;
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = (*(*(a1 + 40) + 16))();
    }

    else
    {
    }

    v4 = v11;
  }

LABEL_7:

  return _objc_release_x1(v3, v4);
}

void sub_100032C90(id a1, BOOL a2)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presented continuity view", v3, 2u);
  }
}

void sub_100032DB4(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
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

        [*(*(a1 + 40) + 32) deleteCardWithUniqueID:*(*(&v7 + 1) + 8 * v6) forReason:6 withDiagnosticReason:{@"Database marked for deletion", v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

id sub_100033008(uint64_t a1)
{
  [*(*(a1 + 32) + 376) updateContactlessPassesAvailability];
  [*(*(a1 + 32) + 168) expressPassConfigurationsChanged];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 56);

  return [v3 updateUserNotificationsForUpdatedExpressPassConfigurations:v2];
}

void sub_100033364(id a1, NSError *a2)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "All pass signals donated with error: %@", &v4, 0xCu);
  }
}

void sub_100033540(id a1, NSError *a2)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "All pass signals removed with error: %@", &v4, 0xCu);
  }
}

void sub_100033E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User declined to file a radar.", buf, 2u);
    }
  }

  else
  {
    if ([*(a1 + 32) isServerGenerated])
    {
      v5 = @"Server Generated Wallet Bug: %@";
    }

    else
    {
      v5 = @"Generated Wallet Bug: %@";
    }

    v12 = [NSString stringWithFormat:v5, *(a1 + 40)];
    if ([*(a1 + 32) isServerGenerated])
    {
      v6 = @"[Please enter a brief description of what you were doing]\n\nServer Generation Reason: %@";
    }

    else
    {
      v6 = @"[Please enter a brief description of what you were doing]\n\nGeneration Reason: %@";
    }

    v7 = [NSMutableString stringWithFormat:v6, *(a1 + 40)];
    v8 = [*(a1 + 32) relatedRadar];

    if (v8)
    {
      v9 = [*(a1 + 32) relatedRadar];
      [v7 appendFormat:@"\nRelated Radar: %@\n", v9];
    }

    v10 = PKCreateTapToRadarURL();
    v11 = +[LSApplicationWorkspace defaultWorkspace];
    [v11 openURL:v10 configuration:0 completionHandler:0];
  }
}

void sub_10003410C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);

    sub_100034158(v2, v3);
  }
}

void sub_100034158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    sub_1005B7A68(a1, &v5, v3);
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_100034200(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 && v5 && [v6 count])
  {
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          if ([v15 willSanitizePasses])
          {
            v16 = v9;
          }

          else
          {
            v16 = v8;
          }

          [v16 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v12);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = v8;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v5[2](v5, *(*(&v31 + 1) + 8 * j));
        }

        v19 = [v17 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v19);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v9;
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        for (k = 0; k != v24; k = k + 1)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v5[2](v5, *(*(&v27 + 1) + 8 * k));
        }

        v24 = [v22 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v24);
    }
  }
}

void sub_1000344E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    sub_1005B7B64(v5, a1, v6, v3);
  }
}

void sub_100034560(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to update upgrade passcode policy after remove all secure element passes", v3, 2u);
    }
  }
}

void sub_1000345D4(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  sub_100034624(WeakRetained, a1[5], a1[6]);
}

void sub_100034624(id *a1, void *a2, void *a3)
{
  v29 = a2;
  v27 = a3;
  val = a1;
  if (a1)
  {
    v5 = [v29 creditDetails];
    v28 = [v5 installmentPlans];

    if ([v28 count])
    {
      v31 = [v29 accountIdentifier];
      v25 = [v29 associatedPassUniqueID];
      v26 = [a1[6] transactionSourceIdentifiersForPassUniqueIdentifier:v25];
      v32 = [v26 anyObject];
      if (v32)
      {
        v6 = [v27 creditDetails];
        v24 = [v6 installmentPlans];

        v7 = [v24 allObjects];
        v35 = [v7 pk_indexDictionaryByApplyingBlock:&stru_10083D8D0];

        objc_initWeak(&location, a1);
        v44 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        obj = v28;
        v8 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v8)
        {
          v34 = *v42;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v42 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v41 + 1) + 8 * i);
              v11 = [v10 identifier];
              v12 = [v35 objectForKey:v11];
              v13 = [v10 payments];
              v14 = [v12 payments];
              if ([v14 count])
              {
                v15 = [v14 pk_indexDictionaryByApplyingBlock:&stru_10083D910];
                v39[0] = _NSConcreteStackBlock;
                v39[1] = 3221225472;
                v39[2] = sub_100034BB0;
                v39[3] = &unk_10083D938;
                v16 = v15;
                v40 = v16;
                v17 = [v13 pk_objectsPassingTest:v39];
              }

              else
              {
                v18 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v47 = v11;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating all payment transactions for installment plan %@", buf, 0xCu);
                }

                v17 = v13;
              }

              v19 = [v17 count];
              v20 = PKLogFacilityTypeGetObject();
              v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
              if (v19)
              {
                if (v21)
                {
                  *buf = 134218242;
                  v47 = v19;
                  v48 = 2112;
                  v49 = v11;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Creating or updating %ld payment transactions for installment plan %@", buf, 0x16u);
                }

                v22 = val[6];
                v36[0] = _NSConcreteStackBlock;
                v36[1] = 3221225472;
                v36[2] = sub_100034C88;
                v36[3] = &unk_10083D960;
                objc_copyWeak(&v38, &location);
                v37 = v32;
                [v22 insertOrUpdateTransactionsForInstallmentPayments:v17 installmentPlan:v10 accountIdentifier:v31 transactionSourceIdentifier:v37 transactionProcessingBlock:v36];

                objc_destroyWeak(&v38);
              }

              else
              {
                if (v21)
                {
                  *buf = 138412290;
                  v47 = v11;
                  _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No changes to payment transactions for installment plan %@", buf, 0xCu);
                }
              }
            }

            v8 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
          }

          while (v8);
        }

        v23 = [val[6] installmentPlanTransactionsForTransactionSourceIdentifiers:v26];
        [val[6] updateSuppressBehavior:1 forPaymentTransactions:v23 sourceIdentifier:v32];

        objc_destroyWeak(&location);
      }
    }
  }
}

uint64_t sub_100034BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = [v6 copy];
    v8 = [v3 copy];
    [v7 setLineItems:0];
    [v7 setStatement:0];
    [v8 setLineItems:0];
    [v8 setStatement:0];
    v9 = PKEqualObjects() ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void sub_100034C88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained[11] processPaymentTransaction:v3 forTransactionSourceIdentifier:*(a1 + 32)];
}

uint64_t sub_10003515C(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    v1 = 1;
    atomic_compare_exchange_strong((*(result + 32) + 11), &v1, 2u);
    *(*(*(result + 40) + 8) + 24) = v1 != 1 && v1 != 2;
  }

  return result;
}

uint64_t sub_1000351B4(uint64_t result)
{
  v2 = *(result + 32);
  if (!*(v2 + 312))
  {
    v3 = result;
    v4 = [*(v2 + 32) catalogOfRecord];
    v5 = *(v3 + 32);
    v6 = *(v5 + 312);
    *(v5 + 312) = v4;

    return _objc_release_x1(v4, v6);
  }

  return result;
}

void sub_10003520C(id a1, NSSet *a2, NSError *a3)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a2;
  v3 = [(NSSet *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v19 = *v21;
    v5 = PKPassdBundleIdentifier;
    v6 = PKAccountWebServicePaymentsRequest_ptr;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = objc_alloc(v6[197]);
        v10 = [v8 ownershipTokenIdentifier];
        v11 = [v9 initWithIdentifier:v10 accessGroup:v5 serviceName:@"com.apple.passd.pass-ownership-token" type:1 invisible:0];

        v12 = [v11 objectForKey:kSecValueData];
        if (v12)
        {
          [v11 resetKeychainItem];
          v13 = v6;
          v14 = objc_alloc(v6[197]);
          v15 = [v8 ownershipTokenIdentifier];
          v16 = [v14 initWithIdentifier:v15 accessGroup:v5 serviceName:@"com.apple.passd.pass-ownership-token" type:1 invisible:1];

          v17 = [v16 objectForKey:kSecValueData];
          if (!v17)
          {
            [v16 setObject:v12 forKey:kSecValueData];
          }

          v6 = v13;
        }
      }

      v4 = [(NSSet *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }
}

void sub_100035410(uint64_t a1, char a2)
{
  v4 = PDDefaultQueue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000354D4;
  v8[3] = &unk_10083DA18;
  v12 = a2;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v5;
  v11 = v6;
  v10 = v7;
  dispatch_async(v4, v8);
}

uint64_t sub_1000354D4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(*(a1 + 32) + 16);

    return v2();
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Secure Element access is unknown!", v5, 2u);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  return result;
}

void sub_10003559C(uint64_t a1, uint64_t a2)
{
  v4 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035664;
  block[3] = &unk_10083DA68;
  v8 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t sub_100035664(void *a1)
{
  v2 = a1[6];
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      LOWORD(v10) = 0;
      v5 = "Secure Element is paired.";
      v6 = v3;
      v7 = 2;
    }

    else
    {
      if (!v4)
      {
        goto LABEL_15;
      }

      v9 = @"unknown";
      if (v2 == 3)
      {
        v9 = @"PKSecureElementPairingStateRestricted";
      }

      if (!v2)
      {
        v9 = @"PKSecureElementPairingStateUnknown";
      }

      v10 = 138543362;
      v11 = v9;
      v5 = "Secure Element is %{public}@ - assuming paired.";
      v6 = v3;
      v7 = 12;
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v10, v7);
LABEL_15:

    result = a1[4];
    if (result)
    {
      return (*(result + 16))(result, 1);
    }

    return result;
  }

  if (v4)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Secure Element is unpaired.", &v10, 2u);
  }

  return (*(a1[5] + 16))();
}

uint64_t sub_1000357DC(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Secure Element is not owned by current user - aborting validation of access policies.", v4, 2u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100035864(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PDDefaultQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100035918;
  v7[3] = &unk_10083C420;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100035918(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
LABEL_13:

    return;
  }

  v4 = v3;
  v5 = *v17;
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (*v17 != v5)
    {
      objc_enumerationMutation(v2);
    }

    v7 = *(*(&v16 + 1) + 8 * v6);
    v8 = [v7 lifecycleState];
    v9 = [v7 isLocked];
    if (v9)
    {

LABEL_21:
      v12 = *(a1 + 40);
      v13 = *(v12 + 80);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100035AB4;
      v14[3] = &unk_10083DAB8;
      v14[4] = v12;
      v15 = v9 & 1;
      [v13 pairingStateWithCompletion:v14];
      return;
    }

    if (v8 == 15 || v8 == 23)
    {
      break;
    }

    if (v4 == ++v6)
    {
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  if (v9)
  {
    goto LABEL_21;
  }

  if (v8 == 15 || v8 == 23)
  {
    goto LABEL_21;
  }
}

void sub_100035AB4(uint64_t a1, uint64_t a2)
{
  v4 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100035B54;
  block[3] = &unk_10083C3A8;
  block[4] = *(a1 + 32);
  block[5] = a2;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

void *sub_100035B54(void *result)
{
  v1 = result;
  v2 = result[5];
  if (v2 == 2)
  {
    if (*(result + 48) != 1)
    {
      return result;
    }

    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WARNING: orphaned locked applets detected in unpaired SE...performing temporary workaround.", v5, 2u);
    }

    v4 = 1;
  }

  else
  {
    if (v2 != 1)
    {
      return result;
    }

    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7C78(v3);
    }

    v4 = 0;
  }

  return [*(v1[4] + 80) markAllAppletsForDeletionWithExternalAuthorization:0 obliterate:v4 completion:0];
}

void sub_100035C38(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100035CE4;
  v5[3] = &unk_10083C4C0;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  sub_100028874(v5);
}

id sub_100035CE4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100035D58;
  v3[3] = &unk_10083DB08;
  v1 = *(a1 + 40);
  v3[4] = *(a1 + 48);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void sub_100035D58(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 passInformation];
  v4 = [v3 cardType];

  if ((v4 - 1) <= 1)
  {
    v5 = [v7 passUniqueIdentifier];
    v6 = [*(*(a1 + 32) + 48) notificationServiceOfType:0 forPassWithUniqueIdentifier:v5];
    [*(*(a1 + 32) + 96) requestUpdatesFromNotificationService:v6 passUniqueIdenitifer:v5 forceUpdate:1];
  }
}

void sub_100035E14(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  [v1 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationDontDismissOnUnlock];
  [v1 setObject:&__kCFBooleanTrue forKeyedSubscript:PKUserNotificationAllowMenuButtonDismissal];
  v2 = PDDeviceSpecificLocalizedStringKeyForKey();
  v3 = PKLocalizedPaymentString(v2);
  [v1 setObject:v3 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];

  v4 = PDDeviceSpecificLocalizedStringKeyForKey();
  v5 = PKLocalizedPaymentString(v4);
  [v1 setObject:v5 forKeyedSubscript:kCFUserNotificationAlertMessageKey];

  v6 = PKLocalizedPaymentString(@"FAIL_FORWARD_LEARN_MORE_BUTTON");
  [v1 setObject:v6 forKeyedSubscript:kCFUserNotificationOtherButtonTitleKey];

  v7 = PKLocalizedPaymentString(@"FAIL_FORWARD_DONE_BUTTON");
  [v1 setObject:v7 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notifying user of fail-forward", v9, 2u);
  }

  [PKUserNotificationAgent presentNotificationWithParameters:v1 responseHandler:&stru_10083DB90];
}

void sub_100035FCC(id a1, __CFUserNotification *a2, unint64_t a3)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notified user of fail-forward with response: %lu", &v7, 0xCu);
  }

  if (a3 == 2)
  {
    v5 = [NSURL URLWithString:PKFailForwardKnowledgeBaseURL];
    v6 = +[LSApplicationWorkspace defaultWorkspace];
    [v6 openURL:v5 configuration:0 completionHandler:0];
  }
}

void sub_1000360C8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67240450;
    v7[1] = a2;
    v8 = 2114;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SystemHealthManager notified of fail-forward with success:%{public}d error:%{public}@", v7, 0x12u);
  }

  if ((a2 & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000361A8(uint64_t a1, void *a2)
{
  v6 = a2;
  if ((PKPassSupportsSyncing() & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v6 stringByAppendingPathExtension:PKRawPassExtension];
    v5 = [v3 URLByAppendingPathComponent:v4 isDirectory:1];

    PKExcludeFileURLFromBackup();
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

BOOL sub_100036270(uint64_t a1, void *a2)
{
  v3 = [a2 secureElementIdentifier];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5 && [v4 indexOfObject:v3] != 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

uint64_t sub_1000362D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) applicationIdentifier];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v6 == v5)
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

void sub_100036364(id a1, NSString *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = PKHomeDirectoryPath();
  v7 = [v5 stringByAppendingPathComponent:v4];

  v6 = +[NSFileManager defaultManager];
  [v6 removeItemAtPath:v7 error:0];
}

uint64_t sub_1000363EC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v10 = v5;
    v5 = [*(a1 + 32) indexOfObject:v5];
    v6 = v10;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL && v5 != a2)
    {
      v8 = v5;
      v5 = [*(a1 + 32) count];
      v6 = v10;
      if ((a2 & 0x8000000000000000) == 0 && v5 > a2)
      {
        [*(a1 + 32) removeObjectAtIndex:v8];
        v5 = [*(a1 + 32) insertObject:v10 atIndex:a2];
        v6 = v10;
      }
    }
  }

  return _objc_release_x1(v5, v6);
}

Class sub_100036B20()
{
  if (qword_100924190 != -1)
  {
    sub_1005B7CBC();
  }

  result = objc_getClass("BFFSettingsManager");
  qword_100924180 = result;
  off_10091D0D8 = sub_100036B74;
  return result;
}

uint64_t sub_100036BBC()
{
  if (qword_100924190 != -1)
  {
    sub_1005B7CBC();
  }

  result = *dlsym(qword_100924188, "BFFBuddyDidRestoreSafeHavenNotification");
  qword_100924198 = result;
  off_10091D0E0 = sub_10000B538;
  return result;
}

uint64_t sub_100036C1C()
{
  if (qword_100924190 != -1)
  {
    sub_1005B7CBC();
  }

  result = *dlsym(qword_100924188, "BYSetupAssistantExitedDarwinNotification");
  qword_1009241A0 = result;
  off_10091D0E8 = sub_10000CBE0;
  return result;
}

uint64_t sub_100036C7C()
{
  if (qword_100924190 != -1)
  {
    sub_1005B7CBC();
  }

  v0 = dlsym(qword_100924188, "BYSetupAssistantHasCompletedInitialRun");
  off_10091D0F0 = v0;

  return v0();
}

uint64_t sub_100036D48(uint64_t result, float a2)
{
  *(v2 - 224) = a2;
  *(v2 - 220) = result;
  return result;
}

id sub_100036D78(void *a1, const char *a2)
{

  return [a1 transactionSourceIdentifier:v4 didReceiveTransaction:v2 oldTransaction:v3];
}

BOOL sub_100036DAC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100036DF4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100036E0C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100036E54(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100036E6C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

id sub_100036E84(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 initWithIdentifier:a3 accessGroup:a4 serviceName:a5 type:1 invisible:0];
}

id sub_100036F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;

  return [v14 enumerateObjectsUsingBlock:&a9];
}

BOOL sub_100036F28(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

BOOL sub_100036F40(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100037808(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = PKSharedWebServiceContextPath();
  [v2 archiveAtPath:v3];

  [*(*(a1 + 40) + 16) noteWebServiceDidChange];
  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 postNotificationName:PDSharedPaymentWebServiceDidChangeNotification object:0];
}

void sub_100037938(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = PKBackgroundWebServiceContextPath();
  [v1 archiveAtPath:v2];
}

void sub_10003828C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithUTF8String:kNSURLSessionLaunchOnDemandNotificationName];
  PDXPCEventStreamRegisterObserver(v2, v3, *(*(a1 + 32) + 128));

  v4 = PDDefaultQueue();
  PDScheduledActivityClientRegister();
}

void sub_10003859C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Configure payment session complete with error: %@", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_100038760(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 localizedDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Configure payment session complete with error: %@", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void sub_100038BC0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) sharedWebService];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100038D04(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v32 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Deleting shared webservice… (reason: '%@')", buf, 0xCu);
  }

  v4 = [*(a1 + 40) sharedWebService];
  v5 = [v4 sessionConfiguration];
  v6 = [v5 URLCache];
  [v6 removeAllCachedResponses];

  [*(*(a1 + 40) + 112) clearPaymentSetupFeatures];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = *(*(a1 + 40) + 168);
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v26 + 1) + 8 * v11) setCancelled:1];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) unscheduleDeviceCheckIn];
  [*(a1 + 40) unscheduleDeviceUpgradeTaskActivity];
  [v4 invalidateBackgroundSession];
  v12 = [v4 context];
  v13 = [v12 isRegistered];

  if (v13)
  {
    [v4 diagnosticSessionWithReason:*(a1 + 32) sessionHandler:&stru_10083DD20];
  }

  else
  {
    [v4 invalidate];
  }

  v14 = +[NSFileManager defaultManager];
  v15 = PKSharedWebServiceContextPath();
  [v14 removeItemAtPath:v15 error:0];

  v16 = +[NSFileManager defaultManager];
  v17 = PKBackgroundWebServiceContextPath();
  [v16 removeItemAtPath:v17 error:0];

  v18 = [*(a1 + 40) sharedWebService];

  if (v18)
  {
    [*(*(a1 + 40) + 8) unregisterConsumer:?];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Recreating shared webservice…", buf, 2u);
    }

    v19 = [[PDPaymentWebServiceTargetDevice alloc] initWithDataSource:*(a1 + 40)];
    v20 = PKSharedWebServiceContextPath();
    v21 = [PKPaymentWebServiceContext contextWithArchive:v20];

    v22 = [[PKPaymentWebService alloc] initWithContext:v21 targetDevice:v19 archiver:*(*(a1 + 40) + 48) tapToRadarDelegate:*(*(a1 + 40) + 184)];
    [v22 configurePaymentServiceWithCompletion:0];
    [*(a1 + 40) setSharedWebService:v22];
    v23 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000391BC;
    block[3] = &unk_10083C470;
    block[4] = *(a1 + 40);
    dispatch_async(v23, block);
  }

  +[PKAccountAttestationRequest removeLocalAccountAttesationData];
  [*(a1 + 40) noteWebServiceDidChange];
  v24 = +[NSDistributedNotificationCenter defaultCenter];
  [v24 postNotificationName:PDSharedPaymentWebServiceDidChangeNotification object:0];
}

void sub_1000390F4(id a1, PKWebService *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100039180;
  v3[3] = &unk_10083DD48;
  v4 = a2;
  v2 = v4;
  [(PKWebService *)v2 unregisterDeviceWithCompletion:v3];
}

id sub_100039180(uint64_t a1)
{
  PKSetUserHasDisabledPeerPayment();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_1000393C4(uint64_t a1)
{
  v2 = [*(a1 + 40) sharedWebService];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000394B0;
  v9[3] = &unk_10083DD70;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v2;
  v13 = *(a1 + 72);
  v8 = v2;
  [v8 submitVerificationCode:v3 verificationData:v4 forPass:v5 completion:v9];
}

void sub_1000394B0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a2 == 1)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verification code accepted", buf, 2u);
    }

    if (v7)
    {
      v12 = a1[5];
      v11 = a1[6];
      v13 = *(v12 + 128);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003963C;
      block[3] = &unk_10083C4C0;
      block[4] = v12;
      v18 = v11;
      v19 = v7;
      dispatch_async(v13, block);
    }

    v14 = a1[7];
    if (v14)
    {
      v15 = *(v14 + 16);
LABEL_12:
      v15();
    }
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verification code FAILED", buf, 2u);
    }

    v16 = a1[7];
    if (v16)
    {
      v15 = *(v16 + 16);
      goto LABEL_12;
    }
  }
}

void sub_10003963C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000396E4;
  v3[3] = &unk_10083C4C0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _queue_setupBackgroundWebServiceWithCompletion:v3];
}

void sub_1000396E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039790;
  block[3] = &unk_10083C4C0;
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  dispatch_async(v2, block);
}

void sub_10003981C(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebService];
  v3 = v2;
  if (*(*(a1 + 32) + 120) || ([v2 context], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "secureElementID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = +[PKSecureElementConsistencyChecker isCheckingConsistencyForSecureElementID:](PKSecureElementConsistencyChecker, "isCheckingConsistencyForSecureElementID:", v5), v5, v4, (v6 & 1) != 0))
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Consistency check already in progress...", v14, 2u);
    }
  }

  else
  {
    v8 = [[PKSecureElementConsistencyChecker alloc] initWithPaymentWebService:v3 delegate:*(a1 + 32) cloudStoreCoordinatorDelegate:*(*(a1 + 32) + 88)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 120);
    *(v9 + 120) = v8;

    v11 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.consistency_check");
    v12 = *(a1 + 32);
    v13 = *(v12 + 120);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000399A0;
    v15[3] = &unk_10083C420;
    v15[4] = v12;
    v16 = v11;
    v7 = v11;
    [v13 startWithCompletion:v15];
  }
}

void sub_1000399A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;
}

id sub_100039A24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100039A94;
  v3[3] = &unk_10083C470;
  v3[4] = v1;
  return [v1 _queue_setupBackgroundWebServiceWithCompletion:v3];
}

void sub_100039A94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100039B08;
  block[3] = &unk_10083C470;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_100039B08(uint64_t a1)
{
  v1 = [*(a1 + 32) sharedWebService];
  [v1 backgroundDownloadPassesSinceLastUpdatedTag:0];
}

void sub_100039C00(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) merchant];
    v4 = [v3 identifier];
    v5 = [v4 hexEncoding];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Processing VAS Transaction for Merchant ID: %@", &v11, 0xCu);
  }

  [*(a1 + 40) connect];
  if (PKNetworkConnectivityAvailable())
  {
    [*(a1 + 40) _processValueAddedServiceTransaction:*(a1 + 32)];
  }

  else
  {
    v6 = [*(a1 + 32) identifier];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_10086D930;
    }

    v9 = [@"VASTransactionProcessor." stringByAppendingString:v8];

    v10 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:0];
    [v10 setRequireNetworkConnectivity:1];
    PDScheduledActivityRegister();
  }
}

void sub_100039F7C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 192) containsObject:*(a1 + 40)])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Ignoring receipt download because download is already in progress", v10, 2u);
    }
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [PKTransactionReceiptAuthorizationRequest alloc];
    v5 = [*(a1 + 56) receiptProviderIdentifier];
    v6 = [*(a1 + 56) receiptIdentifier];
    if (v3)
    {
      v2 = [v4 initWithReceiptServiceIdentifier:v5 receiptIdentifier:v6 cardNumberSuffix:*(a1 + 48) featureIdentifier:{objc_msgSend(*(a1 + 56), "featureIdentifier")}];
    }

    else
    {
      v7 = PKCurrentUserAltDSID();
      v2 = [v4 initWithReceiptServiceIdentifier:v5 receiptIdentifier:v6 altDSID:v7 featureIdentifier:{objc_msgSend(*(a1 + 56), "featureIdentifier")}];
    }

    if (v2)
    {
      [*(*(a1 + 32) + 192) addObject:*(a1 + 40)];
      v8 = [*(a1 + 32) sharedWebService];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10003A174;
      v11[3] = &unk_10083DEB0;
      v11[4] = *(a1 + 32);
      v12 = *(a1 + 64);
      v13 = *(a1 + 56);
      v14 = v8;
      v15 = *(a1 + 40);
      v9 = v8;
      [v9 transactionReceiptAuthorizationWithRequest:v2 completion:v11];
    }
  }
}

void sub_10003A174(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A2B0;
  block[3] = &unk_10083DE88;
  v15 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  *&v10 = *(a1 + 56);
  *(&v10 + 1) = *(a1 + 32);
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v16 = v11;
  v17 = v10;
  v18 = *(a1 + 64);
  v19 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void sub_10003A2B0(uint64_t a1)
{
  v2 = [*(a1 + 32) authorizationToken];
  v3 = [*(a1 + 32) signature];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 80);
      *buf = 138412290;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Receipt authorization token error: %@", buf, 0xCu);
    }

    [*(*(a1 + 64) + 192) removeObject:*(a1 + 72)];
  }

  else
  {
    v8 = [PKTransactionReceiptRequest alloc];
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) receiptIdentifier];
    v11 = [v8 initWithReceiptProviderURL:v9 authorizationToken:v2 signature:v4 receiptIdentifier:v10];

    v12 = [*(a1 + 32) conversationIdentifier];
    [v11 setConversationIdentifier:v12];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003A498;
    v15[3] = &unk_10083DE60;
    v13 = *(a1 + 56);
    v14 = *(a1 + 72);
    v15[4] = *(a1 + 64);
    v16 = v14;
    v17 = *(a1 + 48);
    [v13 transactionReceiptWithRequest:v11 completion:v15];
  }
}

void sub_10003A498(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A58C;
  block[3] = &unk_10083DE38;
  v13 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 48);
  v17 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

void sub_10003A58C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 uniqueID];

    if (!v3)
    {
      [*(a1 + 32) setUniqueID:*(a1 + 40)];
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003A724;
    v14[3] = &unk_10083DE10;
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *(v4 + 96);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v4;
    *(&v11 + 1) = v7;
    v15 = v11;
    v16 = v10;
    [v6 writeTransactionReceipt:v5 completion:v14];
  }

  else
  {
    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 64);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error downloading receipt: %@", buf, 0xCu);
    }

    [*(*(a1 + 48) + 192) removeObject:*(a1 + 40)];
  }
}

void sub_10003A724(uint64_t a1, char a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003A804;
  block[3] = &unk_10083DDE8;
  v9 = *(a1 + 32);
  v4 = *(v9 + 128);
  v5 = *(&v9 + 1);
  v13 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  dispatch_async(v4, block);
}

void sub_10003A804(uint64_t a1)
{
  [*(*(a1 + 32) + 192) removeObject:*(a1 + 40)];
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10003A8C4;
    v3[3] = &unk_10083DDC0;
    v3[4] = v2;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    [v2 _accessObserversWithHandler:v3];
  }
}

void sub_10003A8C4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) identifier];
    [v6 paymentWebServiceCoordinator:v3 didDownloadTransactionReceipt:v4 forTransactionWithIdentifier:v5];
  }
}

void sub_10003AD80(uint64_t a1)
{
  v4 = 0;
  v2 = [PKAccountAttestationRequest defaultAnonymizationSaltWithError:&v4];
  v3 = v4;
  (*(*(a1 + 32) + 16))();
}

uint64_t sub_10003AEB8(uint64_t a1)
{
  v2 = [PKAccountAttestationRequest setDefaultAnonymizationSalt:*(a1 + 32)];
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return _objc_release_x1(v3, v2);
}

void sub_10003AFE8(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebService];
  [v2 registerCredentialWithRequest:*(a1 + 40) withCompletion:*(a1 + 48)];
}

void sub_10003B0D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003B164;
  v2[3] = &unk_10083C420;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _queue_setupBackgroundWebServiceWithCompletion:v2];
}

void sub_10003B164(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 128);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003B1F4;
  v4[3] = &unk_10083C420;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_10003B1F4(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebService];
  [v2 backgroundRegisterCredentialWithRequest:*(a1 + 40)];
}

void sub_10003B388(id *a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = [a1[5] description];
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received push for push topic: %@ userInfo:%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v16 = 1;
  v5 = [a1[6] sharedWebServiceContext];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 regions];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10003B588;
    v10[3] = &unk_10083DFC0;
    v11 = a1[4];
    v14 = buf;
    v9 = *(a1 + 5);
    v8 = v9.i64[0];
    v12 = vextq_s8(v9, v9, 8uLL);
    v13 = v6;
    [v7 enumerateKeysAndObjectsUsingBlock:v10];
  }

  if (*(*&buf[8] + 24) == 1)
  {
    [a1[6] _fetchPassesIfNecessaryForPushTopic:a1[4]];
  }

  _Block_object_dispose(buf, 8);
}

void sub_10003B588(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 userNotificationPushTopic];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    [*(a1 + 40) _performNotificationActionWithUserInfo:*(a1 + 48)];
    goto LABEL_12;
  }

  v11 = [v8 deviceCheckInPushTopic];
  v12 = [v11 isEqualToString:*(a1 + 32)];

  if (v12)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "passd requesting device check in from push", buf, 2u);
    }

    [*(a1 + 40) _queue_cancelAllDeviceCheckInTasks];
    [*(a1 + 56) atomicallyUpdateRegionWithIdentifier:v7 updateBlock:&stru_10083DF18];
    [*(*(a1 + 40) + 48) archiveContext:*(a1 + 56)];
    v14 = objc_alloc_init(PDDeviceCheckInTask);
    [*(a1 + 40) _queue_enqueueDeviceCheckInTask:v14];
LABEL_11:

    goto LABEL_12;
  }

  v15 = [v8 productsPushTopic];
  v16 = [v15 isEqualToString:*(a1 + 32)];

  if (v16)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Product update push received", v30, 2u);
    }

    [*(*(a1 + 40) + 112) markProductsDirty];
    v14 = objc_alloc_init(PKPaymentAvailableProductsRequest);
    [(PDDeviceCheckInTask *)v14 addDiagnosticReason:@"passd - push"];
    [*(*(a1 + 40) + 112) handleWebServiceRequest:v14 completion:&stru_10083DF58];
    goto LABEL_11;
  }

  v18 = [v8 transactionZonePushTopic];
  v19 = [v18 isEqualToString:*(a1 + 32)];

  if (v19)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Transaction zone recreate push received", v29, 2u);
    }

    [*(a1 + 40) _queue_recreateCloudStoreTransactionZoneWithCompletion:&stru_10083DF98];
    goto LABEL_12;
  }

  v21 = [v8 provisioningTargetsPushTopic];
  if ([v21 isEqualToString:*(a1 + 32)])
  {

LABEL_20:
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v23 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Provisioning sharing identifiers push recieved, will attempt to provision.", v28, 2u);
    }

    [*(a1 + 40) _queue_provisionPushProvisioningSharingIdentifiers];
    goto LABEL_12;
  }

  v22 = [*(a1 + 32) isEqualToString:@"com.apple.pay.provision"];

  if (v22)
  {
    goto LABEL_20;
  }

  v24 = [v8 ownershipTokensPushTopic];
  v25 = [v24 isEqualToString:*(a1 + 32)];

  if (v25)
  {
    *a4 = 1;
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v26 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Ownership tokens push recieved.", v27, 2u);
    }

    [*(a1 + 40) _queue_performOwnershipTokensRequestWithUserInfo:*(a1 + 48)];
  }

LABEL_12:
}

void sub_10003B988(id a1, PKPaymentAvailableProductsResponse *a2, NSError *a3)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished updating products for push", v4, 2u);
  }
}

void sub_10003B9F4(id a1, BOOL a2, NSError *a3)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Finished recreating transaction zone from push", v4, 2u);
  }
}

void sub_10003BAF8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Applying push notification token: %@…", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = [*(a1 + 40) sharedWebService];
    v5 = [v4 context];
    v6 = [v5 pushToken];
    v7 = [v6 isEqualToString:*(a1 + 32)];

    if ((v7 & 1) == 0)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v5 pushToken];
        *buf = 138412290;
        v17 = v8;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "New push token is different than current push token: %@", buf, 0xCu);
      }

      v9 = [v4 context];
      v10 = [v9 isRegistered];

      if (v10)
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reregistering with a new push token…", buf, 2u);
        }

        [v5 setNextPushToken:*(a1 + 32)];
        v11 = *(a1 + 40);
        v12 = [v4 primaryBrokerURL];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10003BDC0;
        v14[3] = &unk_10083DFE8;
        v15 = *(a1 + 32);
        [v11 _queue_registerDeviceAtBrokerURL:v12 completion:v14];
      }

      else
      {
        [v5 setPushToken:*(a1 + 32)];
        [*(*(a1 + 40) + 48) archiveContext:v5];
      }
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 pushToken];
      *buf = 138412290;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Applied token: %@", buf, 0xCu);
    }
  }
}

void sub_10003BDC0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    *v11 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    *&v11[4] = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Broker reregister with push token %@ succeeded %@ with error %@", v11, 0x20u);
  }

  v9 = objc_alloc_init(NSMutableDictionary);
  [v9 setObject:PKAnalyticsReportEventTypePushTokenUpdate forKeyedSubscript:PKAnalyticsReportEventKey];
  if (a2)
  {
    v10 = @"success";
  }

  else
  {
    v10 = @"failure";
  }

  [v9 setObject:v10 forKeyedSubscript:{PKAnalyticsReportPushTokenUpdateStatus, *v11}];
  [PKAnalyticsReporter sendSingularEvent:v9];
}

void sub_10003BFE0(uint64_t a1)
{
  v2 = [[PKPaymentDeprovisionRequest alloc] initWithPaymentPass:*(a1 + 32)];
  v3 = [*(a1 + 40) sharedWebService];
  v4 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C0F0;
  v8[3] = &unk_10083E010;
  v9 = v2;
  v5 = v2;
  [v3 diagnosticSessionWithReason:v4 sessionHandler:v8];

  v6 = [*(a1 + 40) sharedWebServiceContext];
  v7 = [*(a1 + 32) uniqueID];
  [v6 removeVerificationRequestRecordForUniqueID:v7];

  [*(*(a1 + 40) + 48) archiveContext:v6];
}

void sub_10003C20C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Payment pass added. Checking if SE is already personalized", buf, 2u);
  }

  v3 = [*(a1 + 32) uniqueID];
  v4 = [*(*(a1 + 40) + 16) primaryPaymentApplicationForPassUniqueIdentifier:v3];
  v5 = [v4 applicationIdentifier];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(v7 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003C354;
  v11[3] = &unk_10083E038;
  v11[4] = v7;
  v12 = v3;
  v13 = v6;
  v14 = v5;
  v9 = v5;
  v10 = v3;
  [v8 appletWithIdentifier:v9 completion:v11];
}

void sub_10003C354(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) primaryPaymentApplicationForPassUniqueIdentifier:*(a1 + 40)];
  if (v3 && ((v5 = [v3 lifecycleState], v5 == 23) || v5 == 15) && (objc_msgSend(v4, "state") == 2 || objc_msgSend(v4, "state") == 3))
  {
    v6 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003C51C;
    v11[3] = &unk_10083C4C0;
    v12 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);
    v13 = v7;
    v14 = v8;
    v9 = v11;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000055C4;
    block[3] = &unk_10083D648;
    v16 = v9;
    dispatch_async(v6, block);

    v10 = v12;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SE is not personalized yet.", block, 2u);
    }
  }
}

void sub_10003C51C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) passTypeIdentifier];
    v4 = [*(a1 + 32) serialNumber];
    v5 = *(a1 + 40);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SE is already perso'd for %@:%@ aid: %@, fetching passes…", &v8, 0x20u);
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) passTypeIdentifier];
  [v6 _fetchPassesIfNecessaryForPushTopic:v7];
}

void sub_10003C6F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentWebServiceCoordinator:*(a1 + 32) didDownloadPass:*(a1 + 40)];
  }
}

void sub_10003C834(uint64_t a1)
{
  [*(a1 + 32) _handleDownloadedPass:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003C8E8;
  v4[3] = &unk_10083E060;
  v4[4] = v3;
  v5 = *(a1 + 40);
  [v3 _accessObserversWithHandler:v4];
}

void sub_10003C8E8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentWebServiceCoordinator:*(a1 + 32) didDownloadPassRemoteAssets:*(a1 + 40)];
  }
}

void sub_10003CBCC(id *a1)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 passTypeIdentifier];
          v10 = [v7 serialNumber];
          v11 = a1[5];
          *buf = 138412802;
          v26 = v9;
          v27 = 2112;
          v28 = v10;
          v29 = 2112;
          v30 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ not found in list of passes server expects to be on device for region %@. Redownloading…", buf, 0x20u);
        }

        v12 = [a1[6] sharedWebService];
        v13 = [v7 passTypeIdentifier];
        v14 = [v7 serialNumber];
        [v12 backgroundDownloadWithPassTypeIdentifier:v13 serialNumber:v14];
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v4);
  }

  v15 = PDPaymentWebServicePushTopicsNeedingUpdate();
  v16 = v15;
  if (a1[5] && [v15 containsObject:?])
  {
    [a1[6] _fetchPassesIfNecessaryForPushTopic:a1[5]];
  }

  v17 = a1[6];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10003CE5C;
  v18[3] = &unk_10083DDC0;
  v18[4] = v17;
  v19 = a1[7];
  v20 = a1[5];
  [v17 _accessObserversWithHandler:v18];
}

void sub_10003CE5C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentWebServiceCoordinator:a1[4] didDownloadSerialNumbersForInstalledPasses:a1[5] inRegion:a1[6]];
  }
}

void sub_10003CFA0(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentWebServiceCoordinator:a1[4] didRegisterCredentialWithIdentifier:a1[5] response:a1[6] error:a1[7]];
  }
}

id sub_10003D09C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) sharedWebService];

  if (v2 != v3)
  {
    [*(a1 + 40) _queue_setupBackgroundWebServiceWithCompletion:0];
  }

  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003D148;
  v6[3] = &unk_10083E0D8;
  v6[4] = v4;
  return [v4 _accessObserversWithHandler:v6];
}

void sub_10003D148(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentWebServiceCoordinatorBackgroundSessionDidBecomeInvalid:*(a1 + 32)];
  }
}

void sub_10003D26C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  if (v2)
  {
    [v2 setDelegate:0];
    [*(*(a1 + 32) + 80) stop];
  }

  v3 = [*(a1 + 40) uniqueID];
  v7 = [NSString stringWithFormat:@"%@-%@", @"passd", v3];

  v4 = [[PKPaymentVerificationObserver alloc] initWithPaymentPass:*(a1 + 40) verificationChannel:*(a1 + 48) identifier:v7];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  *(v5 + 80) = v4;

  [*(*(a1 + 32) + 80) setSkipSourceCheck:PKShowFakeVerificationChannels()];
  [*(*(a1 + 32) + 80) setDelegate:?];
  [*(*(a1 + 32) + 80) startObservingVerificationSourceWithTimeout:120.0];
}

void sub_10003D524(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebService];
  v30 = [v2 context];
  v3 = [v30 configuration];
  v29 = objc_alloc_init(NSMutableArray);
  v27 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableDictionary);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v26 = a1;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v42 + 1) + 8 * i);
        v11 = [v3 brokerURLForRegion:v10];
        if (v11 && PKRegistrationSupportedInRegionForWebService())
        {
          v12 = [v4 objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = v12;
          }

          else
          {
            v13 = objc_alloc_init(NSMutableArray);
            [v4 setObject:v13 forKeyedSubscript:v11];
            [v29 addObject:v11];
            if ([v30 isRegisteredForBrokerURL:v11])
            {
              [v27 addObject:v11];
            }
          }

          [v13 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  [v2 primaryBrokerURL];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10003D99C;
  v14 = v37[3] = &unk_10083E100;
  v38 = v14;
  v28 = v27;
  v39 = v28;
  v15 = v4;
  v40 = v15;
  v41 = *(v26 + 40);
  [v29 sortUsingComparator:v37];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = v29;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    while (2)
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v15 objectForKeyedSubscript:*(*(&v33 + 1) + 8 * j)];
        v22 = [v21 firstObject];

        if (v22)
        {

          [*(v26 + 32) _queue_performRegistrationForRegion:v22 force:*(v26 + 56) completion:*(v26 + 48)];
          goto LABEL_28;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v48 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v23 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v26 + 40);
    *buf = 138412290;
    v47 = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: could not register for member of %@ - either not supported or no broker URLs.", buf, 0xCu);
  }

  if (*(v26 + 48))
  {
    v25 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003DB34;
    block[3] = &unk_10083D648;
    v32 = *(v26 + 48);
    dispatch_async(v25, block);

    v22 = v32;
LABEL_28:
  }
}

uint64_t sub_10003D99C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (PKEqualObjects())
  {
    v7 = 0;
    goto LABEL_7;
  }

  if (PKEqualObjects())
  {
LABEL_4:
    v7 = -1;
    goto LABEL_7;
  }

  if (PKEqualObjects())
  {
    goto LABEL_6;
  }

  v9 = [a1[5] containsObject:v5];
  v10 = [a1[5] containsObject:v6];
  if (v9 && !v10)
  {
    goto LABEL_4;
  }

  if (!(v9 & 1 | ((v10 & 1) == 0)))
  {
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v11 = [a1[6] objectForKeyedSubscript:v5];
  v12 = [v11 firstObject];

  v13 = [a1[6] objectForKeyedSubscript:v6];
  v14 = [v13 firstObject];

  if (v12)
  {
    v15 = [a1[7] indexOfObject:v12];
  }

  else
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v16 = [a1[7] indexOfObject:v14];
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v15 == v16)
  {
    v7 = 0;
  }

  else if (v15 == 0x7FFFFFFFFFFFFFFFLL || v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15 != 0x7FFFFFFFFFFFFFFFLL || v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v15 < v16)
      {
        v7 = -1;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

LABEL_7:
  return v7;
}

void sub_10003E098(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registering for region %{public}@.", buf, 0xCu);
    }

    [*(a1 + 40) performRegistrationForBrokerURL:*(a1 + 48) force:*(a1 + 64) completion:*(a1 + 56)];
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: failed initial registration with device region - skipping registration for region %{public}@.", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v8 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003E224;
      block[3] = &unk_10083D648;
      v10 = *(a1 + 56);
      dispatch_async(v8, block);
    }
  }
}

uint64_t sub_10003E63C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10003E7DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E8B0;
  block[3] = &unk_10083E178;
  v15 = a2;
  block[4] = v8;
  v12 = v6;
  v13 = v7;
  v14 = *(a1 + 48);
  v10 = v6;
  dispatch_async(v9, block);
}

void sub_10003E8B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[6];
  v4 = [v2 sharedWebServiceContext];
  [v3 archiveContext:v4];

  [*(*(a1 + 32) + 112) clearPaymentSetupFeatures];
  v5 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E9C8;
  block[3] = &unk_10083E178;
  v14 = *(a1 + 64);
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

uint64_t sub_10003E9C8(void *a1)
{
  [*(a1[4] + 8) recalculatePushTopics];
  if (a1[8] == 1 && !a1[5])
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[6];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: registered with broker at %@.", &v7, 0xCu);
    }

    v4 = 1;
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[6];
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PDPaymentWebServiceCoordinator: failed to register with broker at %@.", &v7, 0xCu);
    }

    v4 = 0;
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, v4, a1[5]);
  }

  return result;
}

void sub_10003EB8C(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebService];
  v3 = [v2 context];
  v4 = [v3 isRegistered];

  if (v4)
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 0;
    v5 = [*(a1 + 32) sharedWebServiceContext];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 regions];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10003ED80;
      v13[3] = &unk_10083E1C8;
      v13[4] = *(a1 + 32);
      v13[5] = buf;
      [v7 enumerateKeysAndObjectsUsingBlock:v13];
    }

    [*(a1 + 32) _queue_deviceCheckInRepeatInterval];
    v9 = v8;
    v10 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003EE78;
    block[3] = &unk_10083E1F0;
    block[4] = *(a1 + 32);
    block[5] = buf;
    block[6] = v9;
    dispatch_async(v10, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "passd cannot start device check in as we are not registered yet", buf, 2u);
    }

    [*(a1 + 32) unscheduleDeviceCheckIn];
  }
}

void sub_10003ED80(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _queue_automaticDeviceCheckInRequiredForRegion:a3];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Region: %@ requires device check in", &v9, 0xCu);
    }

    *a4 = 1;
  }
}

id sub_10003EE78(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);

    return [v2 _queue_scheduleDeviceCheckInWithStartTimeOffset:1 repeatInterval:v3 randomizeTimes:v3];
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No regions require device check in", v6, 2u);
    }

    return [*(a1 + 32) _queue_unscheduleDeviceCheckIn];
  }
}

void sub_10003EFAC(uint64_t a1)
{
  [*(a1 + 32) _queue_deviceCheckInRepeatInterval];
  v3 = v2;
  v4 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F054;
  block[3] = &unk_10083E218;
  block[4] = *(a1 + 32);
  block[5] = *(a1 + 40);
  block[6] = v3;
  dispatch_async(v4, block);
}

void sub_10003F6E8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "passd - perform device check in called", buf, 2u);
  }

  v3 = [*(a1 + 32) sharedWebService];
  v4 = [v3 context];
  v5 = [v4 isRegistered];

  if (v5)
  {
    v6 = objc_alloc_init(PDDeviceCheckInTask);
    [(PDDeviceCheckInTask *)v6 setCanPromptForAuth:1];
    if (*(a1 + 40))
    {
      v7 = [(PDDeviceCheckInTask *)v6 completionHandlers];
      v8 = objc_retainBlock(*(a1 + 40));
      [v7 addObject:v8];
    }

    [*(a1 + 32) _queue_enqueueDeviceCheckInTask:v6];
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "passd cannot start device check in as we are not registered yet", v10, 2u);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, 0);
    }
  }
}

void sub_10003FC00(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(v2 + 128);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003FC90;
  v4[3] = &unk_10083C420;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void sub_10003FC90(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebServiceContext];
  if (v2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10003FDB4;
    v6[3] = &unk_10083E300;
    v6[4] = v4;
    v7 = v3;
    v8 = v2;
    [v4 _queue_checkContextForDeviceCheckInAuthRequirement:v7 completion:v6];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "passd cannot start device check in as there is no context", buf, 2u);
    }

    [*(a1 + 32) _queue_completeDeviceCheckInTask:*(a1 + 40) success:0 error:0];
  }
}

void sub_10003FDB4(id *a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    [a1[4] _queue_completeDeviceCheckInTask:a1[5] success:0 error:v5];
  }

  else
  {
    v6 = [a1[6] configuration];
    v7 = PKCurrentRegion();
    if ([v6 deviceCheckInDisabledForRegion:v7])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Check in is disabled for device region: %@ - wait for next scheduled task run and check again", &buf, 0xCu);
      }

      [a1[4] _queue_completeDeviceCheckInTask:a1[5] success:0 error:0];
    }

    else
    {
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v30 = 1;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v32 = 0x3032000000;
      v33 = sub_100005970;
      v34 = sub_10000B0C4;
      v35 = 0;
      v9 = dispatch_group_create();
      v10 = [a1[6] regions];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000400D8;
      v21[3] = &unk_10083E2B0;
      v11 = v6;
      v27 = v29;
      v12 = a1[4];
      v22 = v11;
      v23 = v12;
      v13 = v9;
      v24 = v13;
      p_buf = &buf;
      v25 = a1[5];
      v26 = a1[6];
      [v10 enumerateKeysAndObjectsUsingBlock:v21];

      v15 = a1[4];
      v14 = a1[5];
      v16 = *(v15 + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004061C;
      block[3] = &unk_10083E2D8;
      block[4] = v15;
      v18 = v14;
      v19 = v29;
      v20 = &buf;
      dispatch_group_notify(v13, v16, block);

      _Block_object_dispose(&buf, 8);
      _Block_object_dispose(v29, 8);
    }
  }
}

void sub_1000400AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1000400D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 regionCode];
  if ([*(a1 + 32) deviceCheckInDisabledForRegion:v7])
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Check in is disabled for region: %@ - wait for next scheduled task run and check again", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  else if ([*(a1 + 40) _queue_automaticDeviceCheckInRequiredForRegion:v6])
  {
    dispatch_group_enter(*(a1 + 48));
    v9 = [v6 outstandingCheckInAction];
    v10 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004031C;
    v12[3] = &unk_10083E288;
    v12[4] = v10;
    v17 = *(a1 + 72);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v15 = v5;
    v18 = v9;
    v16 = *(a1 + 48);
    [v10 _queue_handleCheckInForRegion:v15 action:v9 completion:v12];
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Region: %@ does not require device check in", buf, 0xCu);
    }
  }
}

void sub_10004031C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 128);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004044C;
  v13[3] = &unk_10083E260;
  v20 = a2;
  v18 = *(a1 + 72);
  v14 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v19 = *(a1 + 88);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 32);
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v15 = v11;
  v16 = v10;
  v17 = *(a1 + 64);
  v12 = v5;
  dispatch_async(v6, v13);
}

void sub_10004044C(uint64_t a1)
{
  v2 = *(*(a1 + 80) + 8);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = *(a1 + 104);
  }

  v3 = *(*(a1 + 88) + 8);
  v5 = *(v3 + 40);
  v4 = (v3 + 40);
  if (!v5)
  {
    objc_storeStrong(v4, *(a1 + 32));
  }

  if ([*(a1 + 40) cancelled])
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device check in task was cancelled - skipping context update", buf, 2u);
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  else
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100040584;
    v9[3] = &unk_10083E238;
    v10 = *(a1 + 104);
    v9[4] = *(a1 + 96);
    [v7 atomicallyUpdateRegionWithIdentifier:v8 updateBlock:v9];
    [*(*(a1 + 64) + 48) archiveContext:*(a1 + 48)];
  }

  dispatch_group_leave(*(a1 + 72));
}

id sub_100040584(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v2 = a2;
    v3 = PKDeviceBuildVersion();
    v4 = [v2 regionBySettingOutstandingCheckInAction:0 lastDeviceCheckInBuildVersion:v3];
  }

  else
  {
    v5 = *(a1 + 32);
    v3 = a2;
    v4 = [v3 regionBySettingOutstandingCheckInAction:v5 lastDeviceCheckInBuildVersion:0];
  }

  return v4;
}

void sub_100040840(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) completionHandlers];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))();
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_100040944(uint64_t a1)
{
  result = [*(a1 + 32) _queue_unscheduleDeviceCheckIn];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _queue_scheduleDeviceCheckInWithStartTimeOffset:1 repeatInterval:v4 randomizeTimes:v4];
  }

  return result;
}

void sub_100040BA0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ([a3 outstandingCheckInAction] == 4)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Region: %@ requires user initalited device check in as it was waiting for auth", &v9, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100040C88(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 128);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100040D1C;
  v3[3] = &unk_10083E378;
  v5 = a2;
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_100040D1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Grand slam token renew for device check in failed", v8, 2u);
    }

    v9 = NSLocalizedDescriptionKey;
    v5 = PKLocalizedPaymentString(@"AUTH_ERROR");
    v10 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

    v7 = [NSError errorWithDomain:PKWebServiceErrorDomain code:1 userInfo:v6];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v4)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Grand slam token renew for device check in success", v8, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1000410C8(uint64_t a1, uint64_t a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 134218242;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "passd found outstanding action to perform: %ld for region: %@", buf, 0x16u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000411FC;
  v8[3] = &unk_10083E3C8;
  v9 = *(a1 + 48);
  [v6 _handleDeviceCheckInAction:a2 region:v7 completion:v8];
}

uint64_t sub_1000411FC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_100041218(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7 || v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v7 action]);
  }
}

void sub_1000416B8(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device check in requested reregister for: %@", buf, 0xCu);
  }

  v4 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in.re_register");
  v5 = [*(a1 + 40) sharedWebServiceContext];
  v6 = [v5 regions];
  v7 = [v6 objectForKey:*(a1 + 32)];

  v8 = [v7 brokerURL];
  [*(a1 + 48) addDiagnosticReason:@"Registering for device check in"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100041880;
  v11[3] = &unk_10083E440;
  v12 = v4;
  v9 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = @"Registering for device check in";
  v15 = *(a1 + 56);
  v10 = v4;
  [v9 _queue_registerDeviceAtBrokerURL:v8 completion:v11];
}

void sub_100041880(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  [*(a1 + 40) removeDiagnosticReason:*(a1 + 48)];
  v5 = *(a1 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = 1;
    }

    else if (v8)
    {
      v7 = [v8 domain];
      if ([v7 isEqualToString:PKPaymentWebServiceErrorDomain])
      {
        v6 = [v8 code] == 40308;
      }

      else
      {
        v6 = 0;
      }

      v5 = *(a1 + 56);
    }

    else
    {
      v6 = 0;
    }

    (*(v5 + 16))(v5, v6);
  }
}

uint64_t sub_100041954(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10004196C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device check in requested registration update for: %@", buf, 0xCu);
  }

  v4 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in.register");
  v5 = [*(a1 + 40) sharedWebServiceContext];
  v6 = [v5 regions];
  v7 = [v6 objectForKey:*(a1 + 32)];

  v8 = [v7 brokerURL];
  [*(a1 + 48) addDiagnosticReason:@"Updating registration for device check in"];
  v9 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100041B34;
  v11[3] = &unk_10083E4B8;
  v12 = v4;
  v13 = v9;
  v14 = @"Updating registration for device check in";
  v15 = *(a1 + 56);
  v10 = v4;
  [v9 updateRegistrationDataAtBrokerURL:v8 completion:v11];
}

void sub_100041B34(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [*(a1 + 40) removeDiagnosticReason:*(a1 + 48)];
  v5 = *(a1 + 56);
  if (v5)
  {
    if (a2 == 1)
    {
      v6 = 1;
    }

    else if (v8)
    {
      v7 = [v8 domain];
      if ([v7 isEqualToString:PKPaymentWebServiceErrorDomain])
      {
        v6 = [v8 code] == 40308;
      }

      else
      {
        v6 = 0;
      }

      v5 = *(a1 + 56);
    }

    else
    {
      v6 = 0;
    }

    (*(v5 + 16))(v5, v6);
  }
}

void sub_100041C0C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device check in requested configuration update for: %@", buf, 0xCu);
  }

  v4 = PDOSTransactionCreate("PDPaymentWebServiceCoordinator.check_in.configure");
  [*(a1 + 40) addDiagnosticReason:@"Configuring web service for device check in"];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041D7C;
  v7[3] = &unk_10083E4B8;
  v8 = v4;
  v9 = v5;
  v10 = @"Configuring web service for device check in";
  v11 = *(a1 + 48);
  v6 = v4;
  [v5 configurePaymentServiceWithCompletion:v7];
}

uint64_t sub_100041D7C(uint64_t a1)
{
  [*(a1 + 40) removeDiagnosticReason:*(a1 + 48)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100041EB4(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebServiceContext];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100041F74;
  v9 = &unk_10083E4E0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = v4;
  v11 = v5;
  [v2 atomicallyUpdateRegionWithIdentifier:v3 updateBlock:&v6];
  [*(*(a1 + 32) + 48) archiveContext:{v2, v6, v7, v8, v9}];
}

id sub_100041F74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = [v4 regionBySettingOutstandingCheckInAction:v2 lastDeviceCheckInBuildVersion:v3];
  }

  else
  {
    v7 = [v4 lastDeviceCheckInBuildVersion];
    v6 = [v5 regionBySettingOutstandingCheckInAction:v2 lastDeviceCheckInBuildVersion:v7];

    v5 = v7;
  }

  return v6;
}

void sub_1000420C8(uint64_t a1)
{
  [*(a1 + 32) stop];
  v2 = [*(*(a1 + 40) + 56) assertionsOfType:2];
  v3 = [v2 count];

  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Foreground application is observing for verification code", v8, 2u);
    }
  }

  else
  {
    v5 = [*(a1 + 40) sharedWebService];
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) pass];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100042204;
    v9[3] = &unk_10083E530;
    v9[4] = *(a1 + 40);
    [v5 submitVerificationCode:v6 verificationData:0 forPass:v7 completion:v9];
  }
}

void sub_100042204(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1 && v5)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 80);
    *(v7 + 80) = 0;

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000422C4;
    v9[3] = &unk_10083E508;
    v9[4] = *(a1 + 32);
    v10 = v6;
    [v10 downloadRemoteAssetsWithCompletion:v9];
  }
}

void sub_1000422C4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _handleDownloadedPass:*(a1 + 40)];
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    v4 = PKPaymentVerificationObserverPassVerifiedNotification;
    v7 = @"uniqueID";
    v5 = [*(a1 + 40) uniqueID];
    v8 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    [v3 postNotificationName:v4 object:0 userInfo:v6 deliverImmediately:1];
  }
}

void sub_100042428(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 80) identifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Background verification observer '%@' timed out", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 80) stop];
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;
}

void sub_100042698(uint64_t a1)
{
  if ([*(a1 + 32) type] == 1)
  {
    v2 = *(*(a1 + 40) + 120);
    if (v2)
    {
      [v2 invalidate];
      v3 = *(a1 + 40);
      v4 = *(v3 + 120);
      *(v3 + 120) = 0;

      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Provisioning starting, rescheduling consistency check…", v8, 2u);
      }

      v6 = *(a1 + 40);
      v7 = [NSDate dateWithTimeIntervalSinceNow:120.0];
      [v6 scheduleConsistencyCheck:v7 pluggedIn:0 backoffLevel:0];
    }
  }
}

void sub_100042DEC(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 48) + 8) + 40) setPassCredentials:a2];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100042EA4;
  v7[3] = &unk_10083E580;
  v7[4] = v3;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [v4 consistencyCheckDeviceCredentialsWithCompletion:v7];
}

void sub_100042EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 48) + 8) + 40) setDeviceCredentials:v3];
  v4 = *(*(a1 + 32) + 296);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100042F80;
  v8[3] = &unk_10083E558;
  v9 = v3;
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  [v4 allCredentialsWithCompletion:v8];
}

void sub_100042F80(void *a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = a1[4];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    if (v3)
    {
      v6 = [v3 arrayByAddingObjectsFromArray:v7];
      [v5 setDeviceCredentials:v6];
    }

    else
    {
      [*(v4 + 40) setDeviceCredentials:v7];
    }
  }

  (*(a1[5] + 16))();
}

void sub_100043114(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldStartConsistencyCheck];
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      if (*(a1 + 56))
      {
        v5 = @"Y";
      }

      else
      {
        v5 = @"N";
      }

      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      *buf = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Scheduling consistency check for %@. pluggedIn: %@ backoff: %@ ", buf, 0x20u);
    }

    [*(a1 + 32) connect];
    if (*(a1 + 48))
    {
      v8 = [*(a1 + 32) sharedWebServiceContext];
      v9 = *(*(a1 + 32) + 128);
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_100043344;
      v15 = &unk_10083C420;
      v16 = v8;
      v17 = *(a1 + 48);
      v10 = v8;
      dispatch_sync(v9, &v12);
      [*(*(a1 + 32) + 48) archiveContext:{v10, v12, v13, v14, v15}];
    }

    v3 = [PDScheduledActivityCriteria priorityActivityCriteriaWithStartDate:*(a1 + 40)];
    [v3 setRequireNetworkConnectivity:1];
    [v3 setRequireMainsPower:*(a1 + 56)];
    PDScheduledActivityRegister();
  }

  else if (v4)
  {
    v11 = *(a1 + 40);
    *buf = 138412290;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ignoring request to schedule consistency check for %@", buf, 0xCu);
  }
}

void sub_100043344(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000433CC;
  v2[3] = &unk_10083E5A8;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 atomicallyUpdatePrimaryRegion:v2];
}

id sub_1000433CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 regionBySettingConsistencyCheckBackoffLevel:{objc_msgSend(v2, "integerValue")}];

  return v4;
}

void sub_100043CCC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100043DA8;
  v13[3] = &unk_10083E5F8;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 markAppletsWithIdentifiersForDeletion:v8 completion:v13];
}

void sub_100043DD4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1[4] + 232));
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100043EBC;
  v13[3] = &unk_10083E648;
  v10 = a1[5];
  v9 = a1[6];
  v15 = v7;
  v16 = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [WeakRetained requestRegistrationForCredentialWithIdentifier:v10 completion:v13];
}

void sub_100043EF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 232));
  v9 = [*(a1 + 40) pk_setByApplyingBlock:&stru_10083E688];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004404C;
  v13[3] = &unk_10083E5F8;
  v10 = *(a1 + 48);
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [WeakRetained revokeSubcredentials:v9 withCompletion:v13];
}

id sub_100043FF4(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[PKAppletSubcredential alloc] initWithIdentifier:v2];

  return v3;
}

void sub_100044078(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 296);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100044154;
  v13[3] = &unk_10083E6B0;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 deleteCredentialsForCredentialIds:v8 completion:v13];
}

void sub_100044188(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 296);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100044264;
  v13[3] = &unk_10083E6B0;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 activateCredentialsForCredentialIds:v8 completion:v13];
}

void sub_100044298(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[5];
  v9 = *(a1[4] + 296);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100044374;
  v13[3] = &unk_10083E6B0;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 suspendCredentialsForCredentialIds:v8 completion:v13];
}

void sub_1000443A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 16);
  v9 = [*(a1 + 40) appletIdentifier];
  v10 = [*(a1 + 40) subcredentialIdentifier];
  v11 = [v8 passUniqueIdentifierWithPaymentApplicationIdentifier:v9 subcredentialIdentifier:v10];

  if (v11)
  {
    v12 = [*(*(a1 + 32) + 16) passWithUniqueIdentifier:v11];
    v13 = [v12 secureElementPass];

    v14 = *(*(a1 + 32) + 296);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004459C;
    v17[3] = &unk_10083E6B0;
    v20 = *(a1 + 48);
    v19 = v7;
    v18 = v6;
    [v14 handlePaymentPassUpdateFrom:v13 priorPaymentApplications:0 completion:v17];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "uploadISOCredentialsForPaymentApplicationAndSubcredentialIds unable to find pass for %@", buf, 0xCu);
    }

    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1000445D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Performing progenitor key designation if required...", buf, 2u);
  }

  v9 = objc_alloc_init(DCBiometricStore);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000446FC;
  v13[3] = &unk_10083E6B0;
  v10 = *(a1 + 32);
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v9 refreshProgenitorKeyDesignationsWithSessionHandoffToken:0 onlyIfNeeded:1 completion:v13];
}

void sub_1000446FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failure";
    if (!v3)
    {
      v5 = @"Success";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Progenitor key designation finished with result %@", &v6, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) &= v3 == 0;
  (*(*(a1 + 40) + 16))();
}

void sub_100044C24(uint64_t a1, int a2)
{
  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100044CBC;
    v6[3] = &unk_10083E700;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = v4;
    v8 = v5;
    [v3 downloadPassWithCompletion:v6];
  }
}

void sub_100044CBC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5 && a2)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = PKVASPassCacheDirectoryPath();
    v8 = [NSURL fileURLWithPath:v7];

    [v6 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:0];
    v9 = [v5 uniqueID];
    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:0];

    v11 = [v10 URLByAppendingPathExtension:PKRawPassExtension];

    v12 = [v5 dataAccessor];
    v13 = [v12 fileURL];
    [v6 removeItemAtURL:v11 error:0];
    if ([v6 copyItemAtURL:v13 toURL:v11 error:0])
    {
      v14 = [*(a1 + 32) merchant];
      v15 = [v14 identifier];
      v16 = [v15 hexEncoding];

      v17 = [PDWalletValueAddedServiceTransactionUserNotification alloc];
      v18 = [v5 localizedDescription];
      v19 = [(PDWalletValueAddedServiceTransactionUserNotification *)v17 initWithMerchantIdentifier:v16 localizedPassDescription:v18 passUniqueIdentifier:v9];

      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 248));
      [WeakRetained insertUserNotification:v19];

      v21 = *(a1 + 32);
      v22 = *(*(a1 + 40) + 16);
      v23 = [v21 merchant];
      [v22 valueAddedMerchantWasPresented:v23];
    }

    else
    {
      v24 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Couldn't copy the VAS pass to our cache", v25, 2u);
      }
    }
  }
}

void sub_100044FB0(uint64_t a1)
{
  v2 = objc_alloc_init(PKPaymentNotificationActionRequest);
  v3 = [*(a1 + 32) PKStringForKey:@"action"];
  [v2 setAction:v3];

  v4 = [*(a1 + 32) PKStringForKey:@"requestId"];
  [v2 setRequestID:v4];
  v5 = [*(a1 + 40) sharedWebService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000450B0;
  v6[3] = &unk_10083E750;
  v6[4] = *(a1 + 40);
  [v5 performNotificationActionRequest:v2 completion:v6];
}

void sub_1000450B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1 && a3 && !a4)
  {
    v6 = [*(a1 + 32) _userNotificationFromResponse:?];
    if (v6)
    {
      v8 = v6;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 248));
      [WeakRetained insertUserNotification:v8];

      v6 = v8;
    }
  }
}

void sub_100045540(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000455D0;
  v2[3] = &unk_10083C420;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _queue_setupBackgroundWebServiceWithCompletion:v2];
}

void sub_1000455D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100045668;
  v5[3] = &unk_10083C420;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void sub_100045668(uint64_t a1)
{
  v2 = PDPaymentWebServicePushTopicsNeedingUpdate();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSSet set];
  }

  v5 = v4;

  v6 = [v5 setByAddingObject:*(a1 + 32)];
  PDSetPaymentWebServicePushTopicsNeedingUpdate();

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching passes if necessary for push topic %@.", buf, 0xCu);
  }

  v9 = [*(a1 + 40) sharedWebService];
  v10 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000457F8;
  v12[3] = &unk_10083E778;
  v13 = v10;
  v14 = v9;
  v11 = v9;
  [v11 getHasBackgroundDownloadTaskPassesForPushTopic:v13 completion:v12];
}

void sub_1000457F8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PDPaymentWebServicePushTopicsNeedingUpdate();
  v7 = [v6 containsObject:*(a1 + 32)];
  v8 = [v6 containsObject:*(a1 + 32)];
  if (v8)
  {
    v9 = a2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    [v5 timeIntervalSinceNow];
    if (fabs(v12) <= 60.0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v10 = PDPaymentWebServicePushTopicsNeedingUpdate();
    v11 = [v10 pk_setByRemovingObject:*(a1 + 32)];
    PDSetPaymentWebServicePushTopicsNeedingUpdate();

    [*(a1 + 40) backgroundDownloadPassesForPushTopic:*(a1 + 32) sinceLastUpdatedTag:1];
    goto LABEL_14;
  }

  if (v8)
  {
    goto LABEL_7;
  }

LABEL_9:
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = @"NO";
    v16 = 138412802;
    if (v7)
    {
      v15 = @"YES";
    }

    v17 = v14;
    v18 = 2112;
    v19 = v15;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not background downloading passes for push topic %@. Needs update: %@, last request date %@", &v16, 0x20u);
  }

LABEL_14:
}

void sub_100045CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 paymentWebServiceCoordinatorWebServiceDidChange:*(a1 + 32)];
  }
}

void sub_100045E60(id a1, BOOL a2, NSError *a3)
{
  v4 = a2;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Completed sending ownership tokens with success: %@, error %@", &v7, 0x16u);
  }
}

void sub_1000460A0(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebService];
  v3 = [v2 context];
  v4 = [v3 isRegistered];

  if (v4)
  {
    v5 = [*(a1 + 32) sharedWebServiceContext];
    v6 = [v5 primaryRegion];
    v7 = PKDeviceBuildVersion();
    v8 = [v6 lastDeviceUpgradeTaskBuildVersion];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [v7 compare:v8 options:1];
      v11 = PDUpgradeTasksVersion();
      if (!v10 || v11 >= 2)
      {
        if (!v10)
        {
          [*(a1 + 32) unscheduleDeviceUpgradeTaskActivity];
LABEL_18:

          return;
        }

LABEL_15:
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v6 regionCode];
          v17 = 138412802;
          v18 = v16;
          v19 = 2112;
          v20 = v7;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Device is upgraded but not pending device upgrade tasks for primary region: %@ from %@ to %@", &v17, 0x20u);
        }

        [*(a1 + 32) _queue_completeDeviceUpgradeTasks];
        goto LABEL_18;
      }
    }

    else if (PDUpgradeTasksVersion() > 1)
    {
      goto LABEL_15;
    }

    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 regionCode];
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Device upgrade tasks for primary region: %@ are required with upgrade from %@ to %@", &v17, 0x20u);
    }

    [*(a1 + 32) _scheduleDeviceUpgradeTaskActivityWithRandomizeStartDate:*(a1 + 40)];
    goto LABEL_18;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "passd cannot start device upgrade tasks as we are not registered yet", &v17, 2u);
  }

  [*(a1 + 32) unscheduleDeviceUpgradeTaskActivity];
}

void sub_1000463C8(uint64_t a1)
{
  [*(a1 + 32) connect];
  v2 = PDScheduledActivityGetCriteria();
  if (!v2)
  {
    v5 = 0.0;
    if (*(a1 + 40) == 1)
    {
      v5 = arc4random_uniform(0x15180u);
    }

    v6 = arc4random_uniform(0xE10u) + 82800.0;
    v3 = [NSDate dateWithTimeIntervalSinceNow:v5];
    v4 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v3];
    [v4 setRequireNetworkConnectivity:1];
    [v4 setRepeating:1];
    [v4 setRepeatInterval:v6];
    [v4 setReason:@"Device Upgrade Tasks"];
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 debugDescription];
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "passd scheduling device upgrade tasks: %@", &v9, 0xCu);
    }

    PDScheduledActivityRegister();
    goto LABEL_9;
  }

  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 debugDescription];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device upgrade tasks already scheduled: %@", &v9, 0xCu);
LABEL_9:
  }
}

uint64_t sub_10004666C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unscheduling device upgrade tasks", v4, 2u);
  }

  [*(a1 + 32) connect];
  return PDScheduledActivityRemove();
}

PKPaymentWebServiceRegion *__cdecl sub_10004676C(id a1, PKPaymentWebServiceRegion *a2)
{
  v2 = a2;
  v3 = PKDeviceBuildVersion();
  v4 = [(PKPaymentWebServiceRegion *)v2 regionBySettingLastDeviceUpgradeTaskBuildVersion:v3];

  return v4;
}

void sub_100046848(uint64_t a1)
{
  v2 = [*(a1 + 32) sharedWebServiceContext];
  v3 = [v2 primaryRegion];
  v4 = [v3 regionCode];

  if ([v2 contextMeetsDeviceUpgradeTasksEnablementThresholdForRegion:v4])
  {
    v5 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    objc_initWeak(location, *(a1 + 32));
    v6 = PDUpgradeTasksVersion();
    if (v6 <= 0)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100046B08;
      v13[3] = &unk_10083E858;
      objc_copyWeak(v14, location);
      v14[1] = 1;
      [v5 addOperation:v13];
      objc_destroyWeak(v14);
    }

    if (PDUpgradeTasksVersion() > 1)
    {
      if (v6 >= 1)
      {
        [*(a1 + 32) _queue_completeDeviceUpgradeTasks];
LABEL_11:
        objc_destroyWeak(location);
        goto LABEL_12;
      }
    }

    else
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100046E60;
      v11[3] = &unk_10083E858;
      objc_copyWeak(v12, location);
      v12[1] = 2;
      [v5 addOperation:v11];
      objc_destroyWeak(v12);
    }

    v7 = +[NSNull null];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000471C0;
    v9[3] = &unk_10083E8A8;
    objc_copyWeak(&v10, location);
    v8 = [v5 evaluateWithInput:v7 completion:v9];

    objc_destroyWeak(&v10);
    goto LABEL_11;
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(location[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping Device Upgrade Tasks because the threshold has been exceeded", location, 2u);
  }

LABEL_12:
}

void sub_100046AC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_100046B08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[16];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100046C04;
    block[3] = &unk_10083E830;
    block[4] = WeakRetained;
    objc_copyWeak(v14, (a1 + 32));
    v14[1] = *(a1 + 40);
    v13 = v7;
    v12 = v6;
    dispatch_async(v10, block);

    objc_destroyWeak(v14);
  }
}

void sub_100046C04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100046CE0;
  v3[3] = &unk_10083E808;
  objc_copyWeak(v6, (a1 + 56));
  v6[1] = *(a1 + 64);
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _queue_performContactInformationFetchTaskWithCompletion:v3];

  objc_destroyWeak(v6);
}

void sub_100046CE0(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[16];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100046DB0;
    v7[3] = &unk_10083E7E0;
    v11 = a2;
    v10 = *(a1 + 56);
    v9 = *(a1 + 40);
    v8 = *(a1 + 32);
    dispatch_async(v6, v7);
  }
}

uint64_t sub_100046DB0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully fetched contact information in device upgrade task", v4, 2u);
    }

    PDSetUpgradeTasksVersion();
    PDSetUpgradeTasksRetryCount();
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100046E60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    if ([*(WeakRetained + 2) hasAccountServicingEventsWithStatus:0])
    {
      v12 = v11[11];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100047008;
      v14[3] = &unk_10083E808;
      objc_copyWeak(v17, (a1 + 32));
      v17[1] = *(a1 + 40);
      v16 = v9;
      v15 = v8;
      [v12 refetchAccountEventsWithUnknownServicingStatusWithCompletion:v14];

      objc_destroyWeak(v17);
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No account servicing events with unknown status to re-fetch, completing device upgrade task successfully", buf, 2u);
      }

      PDSetUpgradeTasksVersion();
      PDSetUpgradeTasksRetryCount();
      (*(v9 + 2))(v9, v8, 0);
    }
  }
}

void sub_100047008(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[16];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000470F4;
    block[3] = &unk_10083E880;
    objc_copyWeak(v10, a1 + 6);
    v11 = a2;
    v10[1] = a1[7];
    v9 = a1[5];
    v8 = a1[4];
    dispatch_async(v6, block);

    objc_destroyWeak(v10);
  }
}

void sub_1000470F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 64) == 1)
    {
      v3 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Successfully re-fetched account servicing events with unknown status in device upgrade task", v4, 2u);
      }

      PDSetUpgradeTasksVersion();
      PDSetUpgradeTasksRetryCount();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000471C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[16];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100047274;
    v9[3] = &unk_10083C420;
    v10 = v5;
    v11 = v7;
    dispatch_async(v8, v9);
  }
}

id sub_100047274(uint64_t a1)
{
  if (([*(a1 + 32) isCanceled] & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "Successfully completed all device upgrade tasks.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, &v9, 2u);
    }

LABEL_14:

    return [*(a1 + 40) _queue_completeDeviceUpgradeTasks];
  }

  v2 = PDUpgradeTasksRetryCount();
  if (v2 > 2)
  {
    v7 = PDUpgradeTasksVersion();
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device upgrade tasks failed and have exceeded retry, marking upgrade task version: %ld as completed and resetting retries to 0", &v9, 0xCu);
    }

    PDSetUpgradeTasksVersion();
    if (v7 < 1)
    {
      return PDSetUpgradeTasksRetryCount();
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      v6 = "Device upgrade tasks completed after exceeding retries";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v3 = v2 + 1;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218240;
    v10 = v3;
    v11 = 2048;
    v12 = PDUpgradeTasksVersion();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device upgrade tasks failed and will retry at next scheduled activity with upgrade task version: %ld and retryCount: %ld", &v9, 0x16u);
  }

  return PDSetUpgradeTasksRetryCount();
}

void sub_1000474F4(uint64_t a1)
{
  PDSetUpgradeTasksVersion();
  PDSetUpgradeTasksRetryCount();
  v2 = [*(*(a1 + 32) + 40) context];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000475B8;
  v3[3] = &unk_10083E5A8;
  v4 = *(a1 + 40);
  [v2 atomicallyUpdatePrimaryRegion:v3];
  [*(*(a1 + 32) + 48) archiveContext:v2];
}

void sub_100047760(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PDDefaultQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100047844;
  block[3] = &unk_10083D320;
  v11 = v6;
  v12 = v5;
  v13 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_100047844(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Contact Information Fetch task failed with error: %@", &v5, 0xCu);
    }
  }

  else
  {
    v3 = +[PKPaymentOptionsRecents defaultInstance];
    [v3 updateRecentsAndKeychainWithContactInformation:a1[5]];
  }

  return (*(a1[6] + 16))(a1[6], a1[4] == 0);
}

void sub_10004828C(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedAccountServiceAccountIdentifier];

  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDAccountStatementMetadataProcessor passAdded", v4, 2u);
    }

    [*(a1 + 40) _queue_updateScheduledActivityIfNeccessary];
  }
}

void sub_1000483B4(uint64_t a1)
{
  v2 = [*(a1 + 32) associatedAccountServiceAccountIdentifier];

  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDAccountStatementMetadataProcessor passRemoved", v4, 2u);
    }

    [*(a1 + 40) _queue_updateScheduledActivityIfNeccessary];
  }
}

void sub_100048508(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Statement metadata process request starting %@", &buf, 0xCu);
  }

  v4 = [*(a1 + 32) accountIdentifier];
  v5 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v51 = 0x3032000000;
  v52 = sub_100005980;
  v53 = sub_10000B0CC;
  v54 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100005980;
  v48[4] = sub_10000B0CC;
  v49 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = sub_100005980;
  v46[4] = sub_10000B0CC;
  v47 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_100005980;
  v44[4] = sub_10000B0CC;
  v45 = 0;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100048A68;
  v41[3] = &unk_10083E620;
  v41[4] = *(a1 + 40);
  v6 = v4;
  v42 = v6;
  p_buf = &buf;
  [v5 addOperation:v41];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100048C8C;
  v36[3] = &unk_10083E9C0;
  v39 = &buf;
  v15 = *(a1 + 32);
  v7 = v15.i64[0];
  v37 = vextq_s8(v15, v15, 8uLL);
  v8 = v6;
  v38 = v8;
  v40 = v46;
  [v5 addOperation:v36];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000492D8;
  v31[3] = &unk_10083E9E8;
  v31[4] = *(a1 + 40);
  v33 = v46;
  v9 = v8;
  v32 = v9;
  v34 = v44;
  v35 = &buf;
  [v5 addOperation:v31];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000495AC;
  v26[3] = &unk_10083EA60;
  v26[4] = *(a1 + 40);
  v28 = &buf;
  v29 = v46;
  v30 = v44;
  v10 = v9;
  v27 = v10;
  [v5 addOperation:v26];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100049FB0;
  v23[3] = &unk_10083EAD8;
  v25 = v46;
  v16 = *(a1 + 32);
  v11 = v16.i64[0];
  v24 = vextq_s8(v16, v16, 8uLL);
  [v5 addOperation:v23];
  v12 = +[NSNull null];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004A424;
  v17[3] = &unk_10083EB00;
  v13 = v10;
  v18 = v13;
  v20 = v46;
  v21 = &buf;
  v19 = *(a1 + 48);
  v22 = v48;
  v14 = [v5 evaluateWithInput:v12 completion:v17];

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(&buf, 8);
}

void sub_100048A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose((v61 - 240), 8);
  _Block_object_dispose((v61 - 192), 8);
  _Block_object_dispose((v61 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100048A68(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(v8 + 16);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100048B44;
  v14[3] = &unk_10083E948;
  v11 = a1[6];
  v16 = v7;
  v17 = v11;
  v14[4] = v8;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v10 accountWithIdentifier:v9 completion:v14];
}

void sub_100048B44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100048C20;
  block[3] = &unk_10083E920;
  v10 = v3;
  v11 = v4;
  v8 = *(a1 + 48);
  v6 = v8;
  v13 = v8;
  v12 = *(a1 + 40);
  v7 = v3;
  dispatch_async(v5, block);
}

uint64_t sub_100048C20(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  v2 = [*(a1 + 40) _queue_isAccountEligible:*(*(*(a1 + 64) + 8) + 40)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 56) + 16);
  v5 = v2 ^ 1;
  v6 = *(a1 + 56);

  return v4(v6, v3, v5);
}

void sub_100048C8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [*(*(*(a1 + 56) + 8) + 40) type];
  v8 = PKAccountTypeToString();
  v9 = [*(a1 + 40) statementIdentifier];

  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) statementIdentifier];
      *buf = 138412290;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Using statement metadata from request to process %@", buf, 0xCu);
    }

    v12 = [*(a1 + 40) statementIdentifier];
  }

  else
  {
    v12 = [*(*(a1 + 32) + 8) latestStatementIdentifierThatNeedsMetadataProcessingForAccountIdentifier:*(a1 + 48) accountType:objc_msgSend(*(*(*(a1 + 56) + 8) + 40) maxProcessedAttemptCount:{"type"), 3}];
  }

  v13 = v12;
  v14 = PKLogFacilityTypeGetObject();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = *(a1 + 48);
      *buf = 138412802;
      v36 = v13;
      v37 = 2112;
      v38 = v16;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Statement identifier that needs processing: %@, for account: %@, type: %@", buf, 0x20u);
    }

    v17 = [*(*(a1 + 32) + 8) accountStatementMetadataForStatementIdentifier:v13 accountIdentifier:*(a1 + 48)];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v7[2](v7, v6, 0);
    }

    else
    {
      v21 = *(*(a1 + 32) + 16);
      v22 = *(a1 + 48);
      v23 = [*(a1 + 40) reason];
      v24 = 1;
      if (v23 != 1)
      {
        v24 = 2;
      }

      if (v23 == 2)
      {
        v25 = 3;
      }

      else
      {
        v25 = v24;
      }

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100049010;
      v28[3] = &unk_10083E998;
      v28[4] = *(a1 + 32);
      v29 = v13;
      v30 = *(a1 + 48);
      v31 = v8;
      v33 = v7;
      v26 = v6;
      v27 = *(a1 + 64);
      v32 = v26;
      v34 = v27;
      [v21 updateAccountStatementMetadataForStatementIdentifier:v29 accountIdentifier:v22 trigger:v25 completion:v28];
    }
  }

  else
  {
    if (v15)
    {
      v20 = *(a1 + 48);
      *buf = 138412290;
      v36 = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not processing statement metadata for account %@ since there are no statement identifiers to process", buf, 0xCu);
    }

    v7[2](v7, v6, 1);
  }
}

void sub_100049010(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004916C;
  v16[3] = &unk_10083E970;
  v17 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v21 = *(a1 + 72);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v18 = v13;
  v19 = v12;
  v22 = *(a1 + 80);
  v20 = v5;
  v14 = v5;
  v15 = v6;
  dispatch_async(v7, v16);
}

uint64_t sub_10004916C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v15 = 138413058;
      v16 = v4;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v2;
      v7 = "Error getting statement metadata for statement identifier %@, account identifier %@, account type %@. Error %@";
      v8 = v3;
      v9 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v15, v9);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 88) + 8) + 40), *(a1 + 72));
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(*(a1 + 88) + 8) + 40);
      v15 = 138412290;
      v16 = v10;
      v7 = "Recieved statement metadata %@";
      v8 = v3;
      v9 = 12;
      goto LABEL_6;
    }
  }

  return (*(*(a1 + 80) + 16))(*(a1 + 80), *(a1 + 64), v2 != 0, v11, v12, v13);
}

void sub_1000492D8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1[6] + 8) + 40);
  if (!v10)
  {
LABEL_6:
    v9[2](v9, v8, 1);
    goto LABEL_9;
  }

  if ([v10 hasBeenProcessed])
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[5];
      v13 = *(*(a1[6] + 8) + 40);
      v25 = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not processing statement metadata for account %@ since it has already been processed %@", &v25, 0x16u);
    }

    goto LABEL_6;
  }

  v14 = [*(*(a1[6] + 8) + 40) itemsMissingFromDevice];
  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  if ([*(*(a1[7] + 8) + 40) count])
  {
    v9[2](v9, v8, 0);
  }

  else
  {
    v17 = [*(*(a1[6] + 8) + 40) statementIdentifier];
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a1[5];
      [*(*(a1[8] + 8) + 40) type];
      v20 = PKAccountTypeToString();
      v25 = 138412802;
      v26 = v17;
      v27 = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "There are no items missing for statement %@, account identifier %@, account type %@. Marking the statement metadata items as processed.", &v25, 0x20u);
    }

    v21 = [*(a1[4] + 8) markStatementMetadataItems:0 asProcessed:1 error:0 statementIdentifier:v17 accountIdentifier:a1[5]];
    v22 = *(a1[6] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1[6] + 8) + 40);
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updated statement metadata after processing: %@", &v25, 0xCu);
    }

    v9[2](v9, v8, 1);
  }

LABEL_9:
}

void sub_1000495AC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v40 = a3;
  v39 = a4;
  [*(*(a1[6] + 8) + 40) type];
  v41 = PKPaymentTransactionAccountTypeFromAccountType();
  v43 = objc_alloc_init(NSMutableArray);
  v42 = [*(*(a1[7] + 8) + 40) statementIdentifier];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = *(*(a1[8] + 8) + 40);
  v6 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v53 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v10 zoneName];
        v13 = [v10 originatorAltDSID];
        if (v11)
        {
          v14 = v12 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          v15 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v10;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "The zoneName or identifier wasnt defined on the item %@", buf, 0xCu);
          }
        }

        else
        {
          v16 = *(a1[4] + 24);
          v66 = v12;
          v17 = [NSArray arrayWithObjects:&v66 count:1];
          v18 = [v16 hasCachedCloudStoreZoneInApplePayContainerForZoneNames:v17];

          if (v18)
          {
            v19 = [v10 type];
            if (v19 == 2)
            {
              v20 = [[PKCloudStoreZoneQueryConfiguration alloc] initWithTransactionSourceIdentifier:0 accountIdentifier:a1[5] accountType:v41 accountEventIdentifier:v11 altDSID:v13 zoneName:v12];
LABEL_21:
              v15 = v20;
            }

            else
            {
              if (v19 == 1)
              {
                v20 = [[PKCloudStoreZoneQueryConfiguration alloc] initWithTransactionSourceIdentifier:0 accountIdentifier:a1[5] accountType:v41 serviceIdentifier:v11 altDSID:v13 zoneName:v12];
                goto LABEL_21;
              }

              v15 = 0;
            }

            [v43 safelyAddObject:v15];
            goto LABEL_24;
          }

          v21 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            [v10 type];
            v22 = PKAccountStatementMetadataItemTypeToString();
            v23 = a1[5];
            *buf = 138413058;
            v59 = v12;
            v60 = 2112;
            v61 = v11;
            v62 = 2112;
            v63 = v22;
            v64 = 2112;
            v65 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "The zone %@ is not cached on device for identifier %@, type %@, and accountIdentifier %@", buf, 0x2Au);
          }

          v24 = *(a1[4] + 8);
          v57 = v10;
          v15 = [NSArray arrayWithObjects:&v57 count:1];
          v25 = [v24 markStatementMetadataItems:v15 asProcessed:0 error:2 statementIdentifier:v42 accountIdentifier:a1[5]];
        }

LABEL_24:
      }

      v7 = [obj countByEnumeratingWithState:&v53 objects:v67 count:16];
    }

    while (v7);
  }

  if ([v43 count])
  {
    v26 = PKLogFacilityTypeGetObject();
    v27 = v42;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v59 = v43;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Fetching missing transactions with query configurations %@", buf, 0xCu);
    }

    v28 = [*(a1[4] + 24) applePayContainer];
    v29 = PKCloudStoreOperationGroupStatementMetadataProcessing;
    v30 = PKCloudStoreOperationGroupSuffixStatementMetadataProcessing;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100049AFC;
    v45[3] = &unk_10083EA38;
    v31 = a1[7];
    v32 = a1[5];
    v45[4] = a1[4];
    v50 = v31;
    v33 = v32;
    v34 = a1[8];
    v46 = v33;
    v51 = v34;
    v35 = v42;
    v36 = a1[6];
    v47 = v35;
    v52 = v36;
    v37 = v39;
    v49 = v39;
    v38 = v40;
    v48 = v40;
    [v28 fetchItemsWithQueryConfigurations:v43 returnRecords:0 storeRecords:1 groupName:v29 groupSuffix:v30 completion:v45];
  }

  else
  {
    v37 = v39;
    v38 = v40;
    (*(v39 + 2))(v39, v40, 0);
    v27 = v42;
  }
}

void sub_100049AFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049C34;
  block[3] = &unk_10083EA10;
  v18 = v4;
  v14 = *(a1 + 32);
  v6 = *(a1 + 72);
  v7 = *(&v14 + 1);
  v15 = *(a1 + 80);
  v8 = *(a1 + 48);
  *&v9 = v15;
  *(&v9 + 1) = *(a1 + 88);
  v16 = v9;
  *&v10 = *(a1 + 64);
  *(&v10 + 1) = v6;
  v21 = v10;
  v22 = v16;
  v11 = *(a1 + 56);
  *&v12 = v8;
  *(&v12 + 1) = v11;
  v19 = v14;
  v20 = v12;
  v13 = v4;
  dispatch_async(v5, block);
}

uint64_t sub_100049C34(void *a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v29 = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed fetching missing transactions from CloudKit with error: %@", &v29, 0xCu);
  }

  v4 = *(a1[5] + 8);
  v5 = [*(*(a1[10] + 8) + 40) statementIdentifier];
  v6 = [v4 accountStatementMetadataForStatementIdentifier:v5 accountIdentifier:a1[6]];
  v7 = *(a1[10] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1[10] + 8) + 40);
    v29 = 138412290;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Statement metadata after CloudKit fetching: %@", &v29, 0xCu);
  }

  v10 = [*(*(a1[10] + 8) + 40) itemsMissingFromDevice];
  v11 = *(a1[11] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(*(a1[11] + 8) + 40) count];
  v14 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v14)
    {
      v15 = *(*(a1[11] + 8) + 40);
      v29 = 138412290;
      v30 = v15;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Missing items after attempting CloudKit fetch and store: %@", &v29, 0xCu);
    }

    v16 = [*(a1[5] + 8) markStatementMetadataItems:*(*(a1[11] + 8) + 40) asProcessed:0 error:1 statementIdentifier:a1[7] accountIdentifier:a1[6]];
    v17 = *(a1[10] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*(a1[10] + 8) + 40);
      v29 = 138412290;
      v30 = v19;
      v20 = "Marking statement metadata as not processed: %@";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v20, &v29, 0xCu);
    }
  }

  else
  {
    if (v14)
    {
      v22 = a1[6];
      v21 = a1[7];
      [*(*(a1[12] + 8) + 40) type];
      v23 = PKAccountTypeToString();
      v29 = 138412802;
      v30 = v21;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully fetched all missing items from the statement metadata. Account identifier: %@, statement identifier %@, account type %@. Marking the statement metadata as processed.", &v29, 0x20u);
    }

    v24 = [*(a1[5] + 8) markStatementMetadataItems:0 asProcessed:1 error:0 statementIdentifier:a1[7] accountIdentifier:a1[6]];
    v25 = *(a1[10] + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(a1[10] + 8) + 40);
      v29 = 138412290;
      v30 = v27;
      v20 = "Updated statement metadata after processing: %@";
      goto LABEL_14;
    }
  }

  return (*(a1[9] + 16))();
}

void sub_100049FB0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(*(*(a1 + 48) + 8) + 40) reportForMissingItems];
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending statement metadata report to server: %@", buf, 0xCu);
    }

    v11 = *(*(a1 + 32) + 16);
    v12 = [*(a1 + 40) reason];
    v13 = 1;
    if (v12 != 1)
    {
      v13 = 2;
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10004A1B0;
    v17[3] = &unk_10083EAB0;
    v14 = *(a1 + 32);
    v15 = *(a1 + 48);
    if (v12 == 2)
    {
      v16 = 3;
    }

    else
    {
      v16 = v13;
    }

    v17[4] = v14;
    v21 = v15;
    v18 = v8;
    v20 = v7;
    v19 = v6;
    [v11 sendAccountReport:v18 trigger:v16 completion:v17];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "There is no statement metadata report that needs to be sent to server", buf, 2u);
    }

    (*(v7 + 2))(v7, v6, 1);
  }
}

void sub_10004A1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A2B0;
  block[3] = &unk_10083EA88;
  v5 = *(a1 + 64);
  v12 = v3;
  v15 = v5;
  v10 = *(a1 + 32);
  v6 = *(&v10 + 1);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v7;
  v13 = v10;
  v14 = v8;
  v9 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_10004A2B0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error sending statement metadata report to server: %@", &v13, 0xCu);
    }
  }

  v4 = a1[6];
  v5 = *(a1[5] + 8);
  v6 = +[NSDate date];
  v7 = [v5 updateStatementMetadataWithReport:v4 reportDate:v6];
  v8 = *(a1[9] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1[9] + 8) + 40);
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updated statement metadata after report sent to server: %@", &v13, 0xCu);
  }

  return (*(a1[8] + 16))();
}

void sub_10004A424(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = [*(*(a1[6] + 8) + 40) statementIdentifier];
    [*(*(a1[7] + 8) + 40) type];
    v11 = PKAccountTypeToString();
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Completed statement metadata processing: Account identifier: %@, statement identifier %@, account type %@.", &v13, 0x20u);
  }

  v12 = a1[5];
  if (v12)
  {
    (*(v12 + 16))(v12, *(*(a1[6] + 8) + 40), *(*(a1[8] + 8) + 40));
  }
}

void sub_10004A934(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [PDAccountStatementMetadataProcessorRequest alloc];
  v9 = [*(a1 + 32) accountIdentifier];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004AA6C;
  v15[3] = &unk_10083EB50;
  v10 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v10;
  v11 = *(a1 + 56);
  v18 = v6;
  v19 = v7;
  v17 = v11;
  v12 = v6;
  v13 = v7;
  v14 = [(PDAccountStatementMetadataProcessorRequest *)v8 initWithAccountIdentifier:v9 statementIdentifier:0 reason:2 completion:v15];

  [*(a1 + 40) _addRequestToProcessQueue:v14];
}

void sub_10004AA6C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004AB5C;
  v8[3] = &unk_10083EB28;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v9 = v7;
  v10 = v6;
  dispatch_async(v2, v8);
}

uint64_t sub_10004AB5C(void *a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed scheduled activity AccountStatementMetadataActivity for account identifier %@, type %@", &v6, 0x16u);
  }

  return (*(a1[7] + 16))();
}

void sub_10004AF70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004B050;
  v11[3] = &unk_10083E088;
  v12 = *(a1 + 40);
  v13 = v5;
  v8 = *(a1 + 32);
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

id sub_10004B050(uint64_t a1)
{
  [*(a1 + 32) callCompletionsWithStatementMetadata:*(a1 + 40) error:*(a1 + 48)];
  os_unfair_lock_lock((*(a1 + 56) + 48));
  v2 = *(a1 + 56);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  os_unfair_lock_unlock((*(a1 + 56) + 48));
  v4 = *(a1 + 56);

  return [v4 _executeNextRequestIfPossible];
}

void sub_10004BFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004C000(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    v3 = [*(a1 + 32) setValue:0 forProperty:@"processed_auth_mechanisms"];
    v2 = *(*(a1 + 40) + 8);
  }

  else
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = [*(a1 + 32) setValue:0 forProperty:@"data_collected_auth_mechanisms"];
    v4 = *(*(a1 + 40) + 8);
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [*(a1 + 32) setValue:0 forProperty:@"complete"];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == 1)
  {
    v9 = [*(a1 + 32) setValue:0 forProperty:@"auth_data_payment_pin"];
    v8 = *(*(a1 + 40) + 8);
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 24) = v9;
  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 24) == 1)
  {
    v11 = [*(a1 + 32) setValue:0 forProperty:@"auth_data_transaction_signature"];
    v10 = *(*(a1 + 40) + 8);
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 24) = v11;
  v12 = *(*(a1 + 40) + 8);
  if (*(v12 + 24) == 1)
  {
    v13 = [*(a1 + 32) setValue:0 forProperty:@"auth_data_user_confirmation"];
    v12 = *(*(a1 + 40) + 8);
  }

  else
  {
    v13 = 0;
  }

  *(v12 + 24) = v13;
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_10004C67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_10004C6D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004C7A0;
  v12[3] = &unk_10083EC40;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v13 = v6;
  v10 = v6;
  v11 = v7;
  [v9 fetchHomesWithCompletion:v12];
}

uint64_t sub_10004C7A0(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_10004C810(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v16 = *(a1 + 32);
  v9 = [NSArray arrayWithObjects:&v16 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004C940;
  v12[3] = &unk_10083EC90;
  v15 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v8 inviteUsersWithInviteInformation:v9 completionHandler:v12];
}

void sub_10004C940(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v12 = v5;

  if (*(*(a1[7] + 8) + 40))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(*(a1[6] + 8) + 40) == 0;
  }

  (*(a1[5] + 16))(a1[5], a1[4], v11);
}

void sub_10004CA08(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v13 = a3;
  v7 = [PKSharingHomeInvitation alloc];
  v8 = [*(a1 + 32) displayInformation];
  v9 = [*(*(*(a1 + 48) + 8) + 40) appleSharingDict];
  v10 = [v7 initWithDisplayInformation:v8 appleSharingDict:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v6[2](v6, v13, *(*(*(a1 + 40) + 8) + 40) == 0);
}

void sub_10004CAFC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (([a4 isCanceled] & 1) != 0 || *(*(a1[6] + 8) + 40) || (v7 = *(*(a1[7] + 8) + 40)) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1[6] + 8) + 40);
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SharingManagementService: Unable to created home share message, error: %@", &v10, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SharingManagementService: successfully created home share message. \n %@", &v10, 0xCu);
    }

    v9 = objc_alloc_init(PDCreateShareContext);
    [(PDCreateShareContext *)v9 addInvite:*(*(a1[7] + 8) + 40) primary:1];
    (*(a1[5] + 16))();
  }
}

Class sub_10004CCE8()
{
  if (qword_1009241C0 != -1)
  {
    sub_1005B7CD0();
  }

  result = objc_getClass("HMUserInviteInformation");
  qword_1009241B0 = result;
  off_10091E238 = sub_10004CD3C;
  return result;
}

void sub_10004D1A0(uint64_t a1, uint64_t a2)
{
  v4 = [CloudStoreContainerChangeEvent alloc];
  v5 = [*(a1 + 32) database];
  v8 = [(SQLiteEntity *)v4 initWithPersistentID:a2 inDatabase:v5];

  v6 = *(a1 + 40);
  v7 = [(CloudStoreContainerChangeEvent *)v8 event];
  [v6 safelyAddObject:v7];
}

void sub_10004D720(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10004DCE0(id a1, PKCloudStoreContainerChangeEvent *a2, id a3)
{
  v4 = a2;
  -[PKCloudStoreContainerChangeEvent setEventType:](v4, "setEventType:", [a3 integerValue]);
}

void sub_10004DD38(id a1, PKCloudStoreContainerChangeEvent *a2, id a3)
{
  v4 = a2;
  -[PKCloudStoreContainerChangeEvent setChangeType:](v4, "setChangeType:", [a3 integerValue]);
}

void sub_10004DD90(id a1, PKCloudStoreContainerChangeEvent *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCloudStoreContainerChangeEvent *)v3 setTimestamp:v4];
}

void sub_10004DE20(id a1, PKCloudStoreContainerChangeEvent *a2, id a3)
{
  v4 = a2;
  v5 = [a3 componentsSeparatedByString:{@", "}];
  [(PKCloudStoreContainerChangeEvent *)v4 setObjectNames:v5];
}

void sub_10004DE94(id a1, PKCloudStoreContainerChangeEvent *a2, id a3)
{
  v4 = a2;
  -[PKCloudStoreContainerChangeEvent setTimeInterval:](v4, "setTimeInterval:", [a3 integerValue]);
}

void sub_10004E184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_10004E334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = objc_alloc_init(PKAccountPromotion);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v7 values:a4];

  [*(a1 + 56) populateAssociatedCompletionStepsForPromotion:v8 promotionPID:a2 inDatabase:*(a1 + 40)];
  [*(a1 + 48) addObject:v8];
}

void sub_10004EF0C(id a1, PKAccountPromotion *a2, id a3)
{
  v4 = a2;
  -[PKAccountPromotion setType:](v4, "setType:", [a3 integerValue]);
}

void sub_10004EF64(id a1, PKAccountPromotion *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPromotion *)v3 setStartDate:v4];
}

void sub_10004EFC4(id a1, PKAccountPromotion *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccountPromotion *)v3 setEndDate:v4];
}

void sub_10004F034(id a1, PKAccountPromotion *a2, id a3)
{
  v4 = a2;
  -[PKAccountPromotion setImpressionCount:](v4, "setImpressionCount:", [a3 integerValue]);
}

void sub_10004F1C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10004FAE8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10004FC70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_alloc_init(PKPeerPaymentAccountInvitation);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v6 values:a4];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:?];
    v7 = v8;
  }
}

void sub_10004FDCC(id a1, PKPeerPaymentAccountInvitation *a2, id a3)
{
  v4 = a2;
  -[PKPeerPaymentAccountInvitation setStatus:](v4, "setStatus:", [a3 integerValue]);
}

void sub_10004FE24(id a1, PKPeerPaymentAccountInvitation *a2, id a3)
{
  v4 = a2;
  -[PKPeerPaymentAccountInvitation setRegistrationResult:](v4, "setRegistrationResult:", [a3 integerValue]);
}

void sub_10004FE7C(id a1, PKPeerPaymentAccountInvitation *a2, id a3)
{
  v4 = a2;
  -[PKPeerPaymentAccountInvitation setRemoteRegistrationRequestLevel:](v4, "setRemoteRegistrationRequestLevel:", [a3 integerValue]);
}

void sub_10004FF18(id a1)
{
  v1 = [[PDXPCEventStreamsManager alloc] _init];
  v2 = qword_1009241C8;
  qword_1009241C8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100050070(uint64_t a1)
{
  v2 = [*(a1 + 32) _managerForEventStream:@"com.apple.nsurlsessiond-events"];
}

void sub_10005014C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 + 1;
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(a1 + 32) + 8);
      v6 = 134349056;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PDXPCEventStreamsManager: deferral count %{public}lu.", &v6, 0xCu);
    }
  }
}

void sub_100050284(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    *(v1 + 8) = v2 - 1;
    v4 = *(*(a1 + 32) + 8);
    v5 = PKLogFacilityTypeGetObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 134349056;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDXPCEventStreamsManager: deferral count %{public}lu.", buf, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PDXPCEventStreamsManager: delivering deferred events for all streams.", buf, 2u);
      }

      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v5 = [*(*(a1 + 32) + 16) objectEnumerator];
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v12;
        do
        {
          v10 = 0;
          do
          {
            if (*v12 != v9)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v11 + 1) + 8 * v10) beginEventDelivery];
            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
        }

        while (v8);
      }
    }
  }
}

void sub_100050568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100050580(uint64_t a1)
{
  v2 = [*(a1 + 32) _managerForEventStream:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000506EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100050704(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void PDXPCEventStreamRegisterObserver(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = +[PDXPCEventStreamsManager eventStreamManager];
  [v8 registerObserver:v7 forEventStream:v6 withReplyQueue:v5];
}

void PDXPCEventStreamUnregisterObserver(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[PDXPCEventStreamsManager eventStreamManager];
  [v5 unregisterObserver:v4 forEventStream:v3];
}

void PDXPCEventStreamRegisterForLaunchEvents()
{
  v0 = +[PDXPCEventStreamsManager eventStreamManager];
  [v0 registerForLaunchEvents];
}

void PDXPCEventStreamPauseEventDelivery()
{
  v0 = +[PDXPCEventStreamsManager eventStreamManager];
  [v0 pauseEventDelivery];
}

void PDXPCEventStreamBeginEventDelivery()
{
  v0 = +[PDXPCEventStreamsManager eventStreamManager];
  [v0 beginEventDelivery];
}

void sub_100050C78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  kdebug_trace();
  v5 = *(a1 + 32);
  v7 = v3;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 _deliverEvents:v6 eventsWerePreviouslyDeferred:0];

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_100051818(uint64_t a1)
{
  [*(a1 + 48) deleteMerchantDetailsForInstallmentAssessmentOfferPID:*(a1 + 56) inDatabase:*(a1 + 32)];
  if (*(a1 + 40))
  {
    v2 = [objc_opt_class() _commonDictionary:*(a1 + 40)];
    v3 = [NSNumber numberWithLongLong:*(a1 + 56)];
    [v2 safelySetObject:v3 forKey:@"installment_assessment_offer_pid"];

    v4 = [objc_alloc(*(a1 + 48)) initWithPropertyValues:v2 inDatabase:*(a1 + 32)];
    v5 = [v4 persistentID];
    v6 = [*(a1 + 40) icon];
    [PaymentOfferDynamicContentIcon insertOrUpdateIcon:v6 forTablePID:v5 type:3 inDatabase:*(a1 + 32)];
  }

  return 1;
}

void sub_100051BE4(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:a1[5] toObject:a1[6] withProperties:v5 values:a3];

  v6 = a1[6];
  v7 = [PaymentOfferDynamicContentIcon iconForTablePID:a1[8] type:3 inDatabase:a1[7]];
  [v6 setIcon:v7];
}

void sub_100052078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100052090(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 64)) initWithPendingProvisioning:*(a1 + 32) forBasePendingProvisioning:*(a1 + 40) inDatabase:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

void sub_100052244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005225C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = a1[6];
  v10 = a3;
  v11 = [v9 _propertySetters];
  [v9 applyPropertySetters:v11 toObject:a1[4] withProperties:v10 values:a4];

  *a6 = 1;
  *(*(a1[5] + 8) + 24) = 1;
}

void sub_10005253C(id a1, PKPendingAccountCredential *a2, id a3)
{
  v3 = a2;
  [(PKPendingAccountCredential *)v3 setFeature:PKFeatureIdentifierFromString()];
}

void sub_100052A54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100052BDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKCategoryVisualizationMagnitude);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_100052EF8(id a1, PKCategoryVisualizationMagnitude *a2, id a3)
{
  v4 = a2;
  -[PKCategoryVisualizationMagnitude setBucket:](v4, "setBucket:", [a3 integerValue]);
}

void sub_100052F50(id a1, PKCategoryVisualizationMagnitude *a2, id a3)
{
  v4 = a2;
  [a3 doubleValue];
  [(PKCategoryVisualizationMagnitude *)v4 setMagnitude:?];
}

void sub_1000540B0(uint64_t a1)
{
  v6 = PDOSTransactionCreate("PDPassLibrary");
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 88) passesOfStyles:*(a1 + 48)];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) _entitlementFilteredPasses:v3];
  (*(v4 + 16))(v4, v5);

  objc_autoreleasePoolPop(v2);
}

void sub_1000542BC(uint64_t a1)
{
  v6 = PDOSTransactionCreate("PDPassLibrary");
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 88) passWithProvisioningCredentialHash:*(a1 + 40)];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _sanitizePassIfNeeded:v3];
  (*(v4 + 16))(v4, v5);

  objc_autoreleasePoolPop(v2);
}

void sub_100054A00(uint64_t a1)
{
  if (PKIsMac())
  {

    _PDOpenPaymentSetupUI(0, 0);
  }

  else if (PKPassbookIsCurrentlyDeletedByUser())
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Prompting user to install Wallet", buf, 2u);
    }

    v6 = *(a1 + 40);
    PKShowAlertForWalletUninstalled();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = v3[3];
    v5 = [v3 connection];
    sub_1005CC7F8(v4, 0, v5, 0, 0);
  }
}

void sub_100055464(void *a1)
{
  if ([*(a1[4] + 8) passesAllAccess])
  {
    v2 = [*(a1[4] + 88) passUniqueIdentifierWithAssociatedAccountIdentifier:a1[5]];
    v3 = a1[6];
    v7 = v2;
    v4 = [*(a1[4] + 88) passWithUniqueIdentifier:?];
    v5 = [v4 paymentPass];
    (*(v3 + 16))(v3, v5);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[PDPassLibrary paymentPassWithAssociatedAccountIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    (*(a1[6] + 16))();
  }
}

uint64_t sub_100055818(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100055968(uint64_t a1)
{
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_100055F3C;
  v42[3] = &unk_10083F378;
  v42[4] = *(a1 + 32);
  v43 = *(a1 + 48);
  v2 = objc_retainBlock(v42);
  if (([*(*(a1 + 32) + 8) paymentAllAccess] & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Must have payment all access entitlement";
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
    }

LABEL_9:

    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  if (PKPassbookIsCurrentlyDeletedByUser())
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wallet must not be deleted", buf, 2u);
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 40);
  if (!v5 || (v6 = [v5 isPeerPaymentRequest], v5 = *(a1 + 40), (v6 & 1) != 0))
  {
LABEL_13:
    if ([v5 requestType] == 3 || objc_msgSend(*(a1 + 40), "isVirtualCardRequest"))
    {
      v7 = *(*(a1 + 32) + 88);
      v8 = [*(a1 + 40) passTypeIdentifier];
      v9 = [*(a1 + 40) passSerialNumber];
      v10 = [v7 passWithPassTypeID:v8 serialNumber:v9];
      v11 = [v10 paymentPass];
      (v2[2])(v2, v11);

      goto LABEL_10;
    }

    v22 = [*(a1 + 40) requestType];
    v23 = *(a1 + 40);
    if (v22 == 5)
    {
      v24 = [v23 installmentConfiguration];
      [v24 feature];
      v25 = PKFeatureIdentifierFromPaymentSetupFeatureType();

      v26 = *(a1 + 32);
      v27 = *(v26 + 160);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000562CC;
      v37[3] = &unk_10083F3F0;
      v37[4] = v26;
      v38 = *(a1 + 48);
      [v27 defaultAccountForFeature:v25 completion:v37];
      v28 = v38;
LABEL_29:

      goto LABEL_10;
    }

    if ([v23 requestType] == 4)
    {
      v30 = *(a1 + 32);
      v31 = *(v30 + 160);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000563F4;
      v35[3] = &unk_10083F3F0;
      v35[4] = v30;
      v36 = *(a1 + 48);
      [v31 defaultAccountForFeature:2 completion:v35];
      v28 = v36;
      goto LABEL_29;
    }

    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "Error: Unsupported payment request type being checked";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if ([v5 requestType] && objc_msgSend(*(a1 + 40), "requestType") != 8 && objc_msgSend(*(a1 + 40), "requestType") != 10)
  {
    v5 = *(a1 + 40);
    goto LABEL_13;
  }

  v12 = [NSSet setWithObjects:&off_1008A28A0, &off_1008A28B8, &off_1008A28D0, &off_1008A28E8, &off_1008A2900, &off_1008A2918, 0];
  v13 = [*(a1 + 40) supportedNetworks];
  v14 = [v13 count];

  if (v14)
  {
    v34 = *(a1 + 32);
    v15 = [*(a1 + 40) supportedNetworks];
    v16 = [NSSet setWithArray:v15];
    v33 = [*(a1 + 40) merchantCapabilities];
    v17 = [*(a1 + 40) originatingURL];
    v18 = [v17 host];
    v19 = [*(a1 + 40) supportedCountries];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 40) requestType]);
    v21 = [*(a1 + 40) isMultiTokenRequest];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000560AC;
    v39[3] = &unk_10083F3C8;
    v40 = v2;
    LOBYTE(v32) = v21;
    [v34 _passesWithSupportedNetworks:v16 merchantCapabilities:v33 webDomain:v18 issuerCountryCodes:v19 paymentApplicationStates:v12 paymentRequestType:v20 isMultiTokensRequest:v32 handler:v39];
  }

  else
  {
    v29 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Error: No supported networks provided, payment request not possible to complete.", buf, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_10:
}

void sub_100055F3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uniqueID];
    v6 = [v4 activationState];
    if (v6 <= 1)
    {
      if (v6 <= 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      switch(v6)
      {
        case 4:
          goto LABEL_15;
        case 3:
          v7 = [v4 devicePrimaryPaymentApplication];
          [v7 state];

          goto LABEL_15;
        case 2:
          goto LABEL_15;
      }
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unexpected state found, returning invalid", v9, 2u);
    }
  }

  else
  {
    v5 = 0;
    [*(*(a1 + 32) + 88) passExistsWithPassType:1];
  }

LABEL_15:
  (*(*(a1 + 40) + 16))();
}

void sub_1000560AC(uint64_t a1, void *a2)
{
  v3 = [a2 allObjects];
  v4 = [v3 mutableCopy];

  v5 = PDDefaultPaymentPassUniqueIdentifier();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005618C;
  v8[3] = &unk_10083F3A0;
  v8[4] = v5;
  [v4 sortUsingComparator:v8];
  v6 = *(a1 + 32);
  v7 = [v4 firstObject];
  (*(v6 + 16))(v6, v7);
}

uint64_t sub_10005618C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 activationState];
  v8 = [v6 activationState];
  if (v7 != v8)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    if (!v8)
    {
      goto LABEL_13;
    }

    if (v7 == 2)
    {
      goto LABEL_11;
    }

    if (v8 == 2)
    {
      goto LABEL_13;
    }

    if (v7 == 1)
    {
      goto LABEL_11;
    }

    if (v8 == 1)
    {
      goto LABEL_13;
    }

    if (v7 == 3)
    {
LABEL_11:
      v15 = -1;
      goto LABEL_14;
    }

    if (v8 == 3)
    {
      goto LABEL_13;
    }
  }

  v9 = [v5 uniqueID];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    goto LABEL_11;
  }

  v11 = [v6 uniqueID];
  v12 = [v11 isEqualToString:*(a1 + 32)];

  if (v12)
  {
LABEL_13:
    v15 = 1;
    goto LABEL_14;
  }

  v13 = [v5 ingestedDate];
  v14 = [v6 ingestedDate];
  if ([v13 compare:v14] == -1)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

LABEL_14:
  return v15;
}

void sub_1000562CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    v4 = [v3 associatedPassUniqueID];
    if ([v7 state] == 1)
    {
      v5 = [*(*(a1 + 32) + 88) passWithUniqueIdentifier:v4];
      v6 = [v5 paymentPass];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [v7 state];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000563F4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = [a2 associatedPassUniqueID];
    v3 = [*(*(a1 + 32) + 88) passWithUniqueIdentifier:v6];
    v4 = [v3 paymentPass];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void sub_100056758(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDPassLibrary");
  v3 = objc_autoreleasePoolPush();
  v4 = 0;
  v5 = 0;
  [*(*(a1 + 32) + 88) getCatalog:&v4 passes:&v5 dbStates:0 ofPassTypes:*(a1 + 48) limitResults:*(a1 + 56)];
  [*(a1 + 32) _sanitizePasses:v5];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v3);
}

void sub_100056A30(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDPassLibrary");
  v3 = objc_autoreleasePoolPush();
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [*(*(a1 + 32) + 88) getCatalog:&v10 passes:&v11 dbStates:&v9 ofPassTypes:objc_msgSend(*(a1 + 40) limitResults:{"allowedPassType"), objc_msgSend(*(a1 + 40), "limitResults")}];
  [*(a1 + 32) _sanitizePasses:v11];
  v4 = [*(*(a1 + 32) + 200) passDynamicStatesFromStates:v9];
  v5 = 0;
  if ([*(a1 + 40) includeAnnotations])
  {
    v5 = [*(*(a1 + 32) + 88) updatedPassAnnotationsForPasses:v11];
  }

  v6 = [PKGroupsControllerSnapshot alloc];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v8 = [v6 initWithPasses:v11 states:v7 annotations:v5 catalog:v10];
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v3);
}

void sub_100056D60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = [v2[11] paymentPassesPendingActivation];
  v3 = [v2 _entitlementFilteredPasses:v4];
  (*(v1 + 16))(v1, v3);
}

id sub_100056EB8(uint64_t a1)
{
  result = [*(*(a1 + 40) + 8) passesAllAccess];
  if (result)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 40) + 80);

    return [v4 writeCatalogOfRecord:v3 source:4];
  }

  return result;
}

void *sub_100056F8C(void *result, uint64_t a2)
{
  if (a2)
  {
    return [*(result[4] + 128) notifyPassUsed:a2 fromSource:result[5]];
  }

  return result;
}

uint64_t sub_100057284(void *a1)
{
  v1 = a1[6];
  v2 = [*(a1[4] + 88) passExistsWithUniqueID:a1[5]];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

id sub_1000573DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _entitledForObject:v3 forActions:2])
  {
    v4 = [*(a1 + 32) _sanitizePassIfNeeded:v3];
    v5 = [v4 secureElementPass];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000577CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 80);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005789C;
  v10[3] = &unk_10083F4E0;
  v7 = *(a1 + 72);
  v8 = *(a1 + 64);
  v10[4] = *(a1 + 32);
  v11 = v8;
  LOBYTE(v9) = v6;
  [v2 _paymentPassesForNetworks:v3 capabilities:v7 issuerCountryCodes:v4 webPayment:0 paymentApplicationStates:0 paymentRequestType:v5 isMultiTokensRequest:v9 withHandler:v10];
}

void sub_10005789C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _entitlementFilteredPasses:a2];
  (*(v2 + 16))(v2, v3);
}

void sub_100057A30(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 80);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100057B30;
  v11[3] = &unk_10083F530;
  v8 = v2;
  v9 = *(a1 + 72);
  v12 = v8;
  v15 = v9;
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  LOBYTE(v10) = v7;
  [v3 _paymentPassesForNetworks:v8 capabilities:v4 issuerCountryCodes:v5 webPayment:0 paymentApplicationStates:0 paymentRequestType:v6 isMultiTokensRequest:v10 withHandler:v11];
}

uint64_t sub_100057B30(void *a1, void *a2)
{
  v3 = [a2 count];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[7];
    v6 = a1[4];
    v7 = a1[5];
    v9 = 138544130;
    v10 = v6;
    v11 = 1026;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    v15 = 1026;
    v16 = v3 != 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-hasInAppPaymentPassesForNetworks:%{public}@ capabilities:%{public}x issuerCountryCodes:%{public}@ returns %{public}d", &v9, 0x22u);
  }

  return (*(a1[6] + 16))();
}

void sub_100057DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (!v5)
  {
    if (*(a1 + 40))
    {
      v5 = 0;
    }

    else
    {
      if (![v3 count])
      {
        (*(*(a1 + 80) + 16))(*(a1 + 80), [*(a1 + 48) _hasPaymentPassesForNetworks:*(a1 + 56) capabilities:*(a1 + 88) paymentApplicationStates:*(a1 + 64)]);
        goto LABEL_7;
      }

      v5 = *(a1 + 32);
    }
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v10 = *(a1 + 96);
  v13 = *(a1 + 88);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100057F24;
  v14[3] = &unk_10083F3C8;
  v11 = *(a1 + 72);
  v15 = *(a1 + 80);
  LOBYTE(v12) = v10;
  [v6 _passesWithSupportedNetworks:v8 merchantCapabilities:v13 webDomain:v5 issuerCountryCodes:v7 paymentApplicationStates:v9 paymentRequestType:v11 isMultiTokensRequest:v12 handler:v14];

LABEL_7:
}

uint64_t sub_100057F24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 count] != 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_1000581BC(uint64_t a1, void *a2)
{
  v9 = [a2 mutableCopy];
  if ([*(a1 + 32) containsObject:PKPaymentNetworkPrivateLabel])
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 80);
    if (v4)
    {
      [v3 _inAppPrivateLabelPaymentPassesForWebDomain:v4 issuerCountryCodes:v5 paymentApplicationStates:v6 isMultiTokensRequest:v7];
    }

    else
    {
      [v3 _inAppPrivateLabelPaymentPassesForApplicationIdentifier:0 issuerCountryCodes:v5 paymentApplicationStates:v6 isMultiTokensRequest:v7];
    }
    v8 = ;
    [v9 unionSet:v8];
  }

  (*(*(a1 + 72) + 16))();
}

void sub_1000584C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000584E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 state] != 1)
        {
          v9 = *(*(*(a1 + 40) + 8) + 40);
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_1000586A8;
          v17[3] = &unk_10083F5A8;
          v17[4] = v8;
          v10 = [v9 objectsPassingTest:v17];
          v11 = *(*(a1 + 40) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = *(a1 + 32);
  v14 = *(*(*(a1 + 40) + 8) + 40);
  if (v14)
  {
    v15 = [v14 copy];
  }

  else
  {
    v15 = +[NSSet set];
  }

  v16 = v15;
  (*(v13 + 16))(v13, v15);
}

uint64_t sub_1000586A8(uint64_t a1, void *a2)
{
  v3 = [a2 associatedAccountServiceAccountIdentifier];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5 ^ 1;
}

void sub_100058E74(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _inAppPrivateLabelPaymentPassesForApplicationIdentifier:*(a1 + 40) issuerCountryCodes:*(a1 + 48) paymentApplicationStates:0 isMultiTokensRequest:*(a1 + 64)];
  (*(v1 + 16))(v1, v2);
}

void sub_100059040(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _inAppPrivateLabelPaymentPassesForWebDomain:*(a1 + 40) issuerCountryCodes:*(a1 + 48) paymentApplicationStates:0 isMultiTokensRequest:*(a1 + 64)];
  (*(v1 + 16))(v1, v2);
}

void sub_100059214(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _inAppPrivateLabelPaymentPassesForApplicationIdentifier:*(a1 + 40) issuerCountryCodes:*(a1 + 48) paymentApplicationStates:0 isMultiTokensRequest:*(a1 + 64)];
  (*(v1 + 16))(v1, [v2 count] != 0);
}

void sub_1000593F0(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = [*(a1 + 32) _inAppPrivateLabelPaymentPassesForWebDomain:*(a1 + 40) issuerCountryCodes:*(a1 + 48) paymentApplicationStates:0 isMultiTokensRequest:*(a1 + 64)];
  (*(v1 + 16))(v1, [v2 count] != 0);
}

void sub_100059598(uint64_t a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100059674;
  v8 = &unk_10083F620;
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v2;
  v4 = v2;
  [v3 enumerateObjectsUsingBlock:&v5];
  [*(a1 + 40) _sanitizePasses:{v4, v5, v6, v7, v8, v9}];
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_100059674(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 88) passWithUniqueIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) _entitledForObject:v3 forActions:2];
    v4 = v6;
    if (v3)
    {
      v3 = [*(a1 + 40) addObject:v6];
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000598F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (PKSupportsSearchForPass())
        {
          [*(a1 + 32) addObject:v8];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_100059BE8(uint64_t a1)
{
  v28 = objc_alloc_init(NSMutableSet);
  v2 = [*(*(a1 + 32) + 88) passes];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    v30 = v2;
    v31 = a1;
    v29 = *v35;
    do
    {
      v6 = 0;
      v32 = v4;
      do
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        if ([v7 passType] == 1)
        {
          v8 = [v7 associatedApplicationIdentifiers];
          v9 = *(a1 + 40);
          v10 = v8;
          v11 = v10;
          if (v9 && [v10 count])
          {
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v33 = v11;
            v12 = v11;
            v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v39;
              while (2)
              {
                for (i = 0; i != v14; i = i + 1)
                {
                  if (*v39 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v38 + 1) + 8 * i);
                  if ([v17 hasSuffix:@".*"])
                  {
                    v18 = [v17 substringToIndex:{objc_msgSend(v17, "length") - 1}];
                    if (v18)
                    {
                      v19 = v18;
                      v20 = [v9 hasPrefix:v18];

                      if (v20)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  else
                  {
                    v21 = v9;
                    v22 = v17;
                    v23 = v22;
                    if (v22 == v21)
                    {

LABEL_28:
                      v25 = [v7 uniqueID];
                      [v28 addObject:v25];

                      goto LABEL_29;
                    }

                    if (v22)
                    {
                      v24 = [v21 isEqualToString:v22];

                      if (v24)
                      {
                        goto LABEL_28;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }

LABEL_29:
            v2 = v30;
            a1 = v31;
            v5 = v29;
            v4 = v32;
            v11 = v33;
          }

          else
          {
          }
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [v2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v4);
  }

  v26 = *(a1 + 48);
  v27 = [v28 copy];
  (*(v26 + 16))(v26, v27);
}

void sub_10005A030(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005A0E4;
  v5[3] = &unk_10083F670;
  v6 = *(a1 + 48);
  [v3 fieldMetadataForFieldWithProperties:v2 withExpressPassManager:v4 completion:v5];
}

void sub_10005A2F4(void *a1)
{
  v1 = a1[6];
  v4 = [*(a1[4] + 80) objectWithUniqueID:a1[5]];
  v2 = [v4 dataAccessor];
  v3 = [v2 manifestHash];
  (*(v1 + 16))(v1, v3);
}

void sub_10005A498(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess])
  {
    v3 = [*(*(a1 + 32) + 88) passesEnabledForValuedAddedServicesWithAutomaticSelection:1];
    [*(a1 + 32) _sanitizePasses:v3];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

id sub_10005A610(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sanitizePassIfNeeded:a2];
  if ([v3 passType] == 1)
  {
    if (*(a1 + 40))
    {
      v4 = [v3 associatedWebDomains];
      v5 = [v4 containsObject:*(a1 + 40)];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [*(a1 + 32) _entitledForObject:v3 forActions:2];
  }

  return v5;
}

id sub_10005A75C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sanitizePassIfNeeded:a2];
  if ([v3 passType] == 1)
  {
    if (*(a1 + 40))
    {
      v4 = [v3 associatedApplicationIdentifiers];
      v5 = [v4 containsObject:*(a1 + 40)];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = [*(a1 + 32) _entitledForObject:v3 forActions:2];
  }

  return v5;
}

void sub_10005ADC0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess])
  {
    v6 = PDDefaultPaymentPassUniqueIdentifier();
    v2 = [*(*(a1 + 32) + 88) passWithUniqueIdentifier:v6];
    v3 = *(a1 + 40);
    v4 = [v2 paymentPass];
    (*(v3 + 16))(v3, v4);
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

void sub_10005B088(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess] && *(*(a1 + 32) + 96))
  {
    v3 = *(a1 + 40);
    sub_1005C4AE0();
  }

  else
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }
}

void sub_10005B178(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 88);
  v6 = [a2 anyObject];
  v4 = [v6 passUniqueIdentifier];
  v5 = [v3 passWithUniqueIdentifier:v4];
  (*(v2 + 16))(v2, v5);
}

void sub_10005B324(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess] && (v2 = *(a1 + 32), *(v2 + 96)))
  {
    v3 = [*(v2 + 88) passesOfType:1];
    v4 = objc_alloc_init(NSMutableDictionary);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v27 = a1;
    v28 = v3;
    v5 = [*(a1 + 32) _entitlementFilteredPasses:v3];
    v6 = [v5 allObjects];

    obj = v6;
    v31 = [v6 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v31)
    {
      v30 = *v50;
      do
      {
        v7 = 0;
        do
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v7;
          v8 = *(*(&v49 + 1) + 8 * v7);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v35 = [v8 paymentApplications];
          v9 = [v35 countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v46;
            v33 = *v46;
            do
            {
              v12 = 0;
              v34 = v10;
              do
              {
                if (*v46 != v11)
                {
                  objc_enumerationMutation(v35);
                }

                v13 = *(*(&v45 + 1) + 8 * v12);
                if ([v13 paymentType] == 1000)
                {
                  v36 = v12;
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  v14 = [v13 supportedTransitNetworkIdentifiers];
                  v15 = [v14 countByEnumeratingWithState:&v41 objects:v54 count:16];
                  if (v15)
                  {
                    v16 = v15;
                    v17 = *v42;
                    do
                    {
                      for (i = 0; i != v16; i = i + 1)
                      {
                        if (*v42 != v17)
                        {
                          objc_enumerationMutation(v14);
                        }

                        v19 = *(*(&v41 + 1) + 8 * i);
                        v20 = [v4 objectForKey:v19];
                        if (v20)
                        {
                          v21 = [[NSMutableArray alloc] initWithArray:v20];
                          [v21 addObject:v8];
                        }

                        else
                        {
                          v53 = v8;
                          v21 = [NSArray arrayWithObjects:&v53 count:1];
                        }

                        [v4 setObject:v21 forKey:v19];
                      }

                      v16 = [v14 countByEnumeratingWithState:&v41 objects:v54 count:16];
                    }

                    while (v16);
                  }

                  v11 = v33;
                  v10 = v34;
                  v12 = v36;
                }

                v12 = v12 + 1;
              }

              while (v12 != v10);
              v10 = [v35 countByEnumeratingWithState:&v45 objects:v55 count:16];
            }

            while (v10);
          }

          v7 = v32 + 1;
        }

        while ((v32 + 1) != v31);
        v31 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v31);
    }

    v22 = PDDefaultPaymentPassUniqueIdentifier();
    v23 = *(*(v27 + 32) + 96);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10005B77C;
    v37[3] = &unk_10083F6E8;
    v38 = v4;
    v39 = v22;
    v40 = *(v27 + 40);
    v24 = v22;
    v25 = v4;
    sub_10017F518(v23, v37);
  }

  else
  {
    v26 = *(*(a1 + 40) + 16);

    v26();
  }
}

void sub_10005B77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10005B9E8;
  v23[3] = &unk_10083DB08;
  v4 = objc_alloc_init(NSMutableSet);
  v24 = v4;
  [v3 enumerateObjectsUsingBlock:v23];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) allKeys];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKey:v9];
        v11 = [v10 copy];

        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_10005BA78;
        v16[3] = &unk_10083F6C0;
        v17 = v4;
        v18 = *(a1 + 40);
        v12 = [v11 sortedArrayUsingComparator:v16];
        [*(a1 + 32) setObject:v12 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v6);
  }

  v13 = *(a1 + 48);
  v14 = [*(a1 + 32) copy];
  (*(v13 + 16))(v13, v14);
}

void sub_10005B9E8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 passInformation];
  v4 = [v3 cardType];

  if (v4 == 2)
  {
    v5 = *(a1 + 32);
    v6 = [v7 passUniqueIdentifier];
    [v5 addObject:v6];
  }
}

uint64_t sub_10005BA78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [PKTransitPassProperties passPropertiesForPass:v5];
  v8 = [PKTransitPassProperties passPropertiesForPass:v6];
  v9 = [v7 isEnRoute];
  v10 = [v8 isEnRoute];
  if (v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    v12 = [v7 balance];
    v13 = [v8 balance];
    v14 = v13;
    v27 = v12;
    if (v12 && v13)
    {
      v11 = [v13 compare:v12];
    }

    else if (v12)
    {
      v11 = -1;
    }

    else
    {
      v11 = v13 != 0;
    }

    v15 = *(a1 + 32);
    v16 = [v5 uniqueID];
    v17 = [v15 containsObject:v16];

    v18 = *(a1 + 32);
    v19 = [v6 uniqueID];
    LODWORD(v18) = [v18 containsObject:v19];

    if (v17 == v18)
    {
      if (v11)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      if ((v20 & 1) == 0)
      {
        v21 = [v5 uniqueID];
        v22 = PKEqualObjects();

        v23 = [v6 uniqueID];
        v24 = PKEqualObjects();

        v25 = -1;
        if (!v22)
        {
          v25 = 1;
        }

        if (v22 != v24)
        {
          v11 = v25;
        }
      }
    }

    else if (v17)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }
  }

  return v11;
}