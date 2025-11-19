void sub_1000BA020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA04C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = [v4 domain];
    if ([v6 isEqualToString:CKErrorDomain])
    {
      if ([v4 code] == 3 || objc_msgSend(v4, "code") == 4)
      {

LABEL_6:
        v7 = [v4 userInfo];
        v8 = [v7 objectForKeyedSubscript:CKErrorRetryAfterKey];

        if (v8)
        {
          v9 = [v4 userInfo];
          v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];
          [v10 doubleValue];
          v12 = v11;

          v13 = (v12 * 1000000000.0);
        }

        else
        {
          v13 = 60000000000;
        }

        v15 = dispatch_time(0, v13);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000BA270;
        block[3] = &unk_1002B9D10;
        block[4] = WeakRetained;
        v16 = *(a1 + 32);
        v17 = *(a1 + 48);
        v20 = v16;
        v21 = v17;
        dispatch_after(v15, &_dispatch_main_q, block);

        goto LABEL_13;
      }

      v18 = [v4 code];

      if (v18 == 9)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

LABEL_13:
    v14 = +[CloudXPCService sharedInstance];
    [v14 endTransaction:@"ManateeCheckAccountStatusWithCompletionHandler"];
    goto LABEL_14;
  }

  v14 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1001F6824();
  }

LABEL_14:
}

void sub_1000BA2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 accountStatus] == 1 && objc_msgSend(v5, "supportsDeviceToDeviceEncryption"))
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000BA3F4;
      v9[3] = &unk_1002B82D0;
      v7 = *(a1 + 40);
      v9[4] = *(a1 + 32);
      v9[5] = v7;
      dispatch_async(&_dispatch_main_q, v9);
    }

    else
    {
      v8 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6860();
      }
    }
  }
}

id sub_1000BA3F4(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob Account manateeZoneAvailable ", v4, 2u);
  }

  return [*(a1 + 32) _fetchAccessoryKeyBlob:*(a1 + 40)];
}

void sub_1000BA7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA808(uint64_t a1, void *a2, void *a3)
{
  v62 = a1;
  v63 = a2;
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v63 recordID];
    v7 = [v6 zoneID];
    *buf = 138412802;
    v73 = v4;
    v74 = 2112;
    v75 = v7;
    v76 = 2112;
    v77 = v63;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob completion error %@ recordZoneID %@, record: %@", buf, 0x20u);
  }

  p_info = &OBJC_METACLASS___BTStateWatcher.info;
  if (!v4)
  {
    v10 = [v63 recordID];
    v11 = [v10 zoneID];
    v12 = [v11 zoneName];
    v13 = [*(v62 + 32) recordZoneAccessoryDatabase];
    v14 = [v13 zoneID];
    v15 = [v14 zoneName];
    v16 = [v12 isEqualToString:v15];

    p_info = &OBJC_METACLASS___BTStateWatcher.info;
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = [v63 encryptedValues];
    WeakRetained = [v17 objectForKey:@"EncryptedAccessoryBlob"];

    v19 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v63 modifiedByDevice];
      *buf = 138412546;
      v73 = v20;
      v74 = 2112;
      v75 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Manatee: Record Modified by %@: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0x16u);
    }

    if ([WeakRetained length] >= 0x99)
    {
      v21 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Manatee: Accessory zone has been upgraded. Dont generate keys", buf, 2u);
      }

      v22 = [*(v62 + 32) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

      if (!v22)
      {
        [*(v62 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
        v23 = +[MPCloudKit sharedInstance];
        [v23 markLegacyNonManateeContainerMigrated];
      }

      v24 = +[CloudXPCService sharedInstance];
      v25 = [v24 deviceManager];
      [v25 addLegacyMagicPairingRecordsWithCloudRecord:v63 userInitiated:0 completion:&stru_1002BABC0];
    }

    goto LABEL_18;
  }

  if ([v4 code] == 26 || objc_msgSend(v4, "code") == 11)
  {
    v9 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob CKErrorZoneNotFound", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BB110;
    block[3] = &unk_1002B6D18;
    block[4] = *(v62 + 32);
    v70 = v4;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_27;
  }

  if ([v4 code] == 6 || objc_msgSend(v4, "code") == 7)
  {
    v26 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1001F68D8();
    }

    v27 = [v4 userInfo];
    v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v28)
    {
      v29 = [v4 userInfo];
      v30 = [v29 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v30 doubleValue];
      v32 = v31;

      v33 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v73 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob CKErrorServiceUnavailable/RateLimited, retry after: %lu", buf, 0xCu);
      }

      v34 = dispatch_time(0, (v32 * 1000000000.0));
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000BB1F0;
      v68[3] = &unk_1002B82D0;
      v35 = *(v62 + 48);
      v68[4] = *(v62 + 32);
      v68[5] = v35;
      dispatch_after(v34, &_dispatch_main_q, v68);
    }

    goto LABEL_27;
  }

  v37 = [v4 domain];
  v38 = CKErrorDomain;
  if ([v37 isEqualToString:CKErrorDomain])
  {
    v39 = [v4 code];

    if (v39 == 112)
    {
      v40 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob lost access to manatee data. Reset and recreate zone.", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained((v62 + 40));
      [WeakRetained resetCloudContainerManateeIdentityLost];
      goto LABEL_18;
    }
  }

  else
  {
  }

  WeakRetained = [v4 domain];
  if (([WeakRetained isEqualToString:CKErrorDomain] & 1) == 0)
  {
LABEL_18:

    goto LABEL_27;
  }

  v41 = [v4 userInfo];
  v42 = [v41 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
  if (v42)
  {
    v43 = [v4 userInfo];
    v44 = [v43 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v64 objects:v71 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v65;
      v49 = &_sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF_ptr;
      while (2)
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v65 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v51 = [v45 objectForKey:*(*(&v64 + 1) + 8 * i)];
          v52 = v49[302];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = [v51 domain];
            if ([v53 isEqualToString:v38])
            {
              v54 = v49;
              v55 = v38;
              v56 = [v51 code];

              v57 = v56 == 112;
              v38 = v55;
              v49 = v54;
              if (v57)
              {
                v58 = sub_100005C14("MagicPairing");
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v73 = v51;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                }

                v60 = sub_100005C14("MagicPairing");
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob. Reset and recreate zone DONE!", buf, 2u);
                }

                v61 = objc_loadWeakRetained((v62 + 40));
                [v61 resetCloudContainerManateeIdentityLost];

                goto LABEL_55;
              }
            }

            else
            {
            }
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v64 objects:v71 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:

    p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
  }

LABEL_27:
  [*(v62 + 32) setIsFetchInProgress:{0, v62}];
  v36 = [p_info + 21 sharedInstance];
  [v36 endTransaction:@"ManateeFetchAccessoryKeyBlob"];
}

void sub_1000BB110(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:1];
  [*(a1 + 32) setPauseErrorReason:*(a1 + 40)];
  v3 = +[CloudXPCService sharedInstance];
  v2 = [v3 deviceManager];
  [v2 deleteLegacyMagicPairingRecordsWithUserInitiated:0 completion:&stru_1002BABA0];
}

void sub_1000BB194(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001F6940();
  }
}

void sub_1000BB200(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001F69A8();
    }
  }
}

void sub_1000BB524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6A10(v6, a1);
    }

    [*(a1 + 32) handleModifyMasterKeyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 48)];
  }

  else if (v5)
  {
    v8 = [v5 encryptedValues];
    v9 = [v8 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
    [*(a1 + 32) setMasterBlob:v9];

    v10 = [*(a1 + 32) masterBlob];
    v11 = [v10 length];

    if (v11 == 33)
    {
      v12 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) masterBlob];
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Manatee: fetched existing master key record: encryptedBlob %@", buf, 0xCu);
      }

      v14 = +[CloudXPCService sharedInstance];
      v15 = [*(a1 + 32) masterBlob];
      v16 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v15, @"kMasterKeyBlob", 0];
      [v14 sendCloudKitMsg:@"MasterKeysAvailable" args:v16];

      v17 = +[CloudXPCService sharedInstance];
      v18 = [v17 deviceManager];
      [v18 addAccountMagicKeysWithCloudRecord:v5];
    }

    [*(a1 + 32) setIsWriteMasterKeysInProgress:0];
  }

  else
  {
    v19 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      *buf = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Manatee: No master key record found: write new key: %@", buf, 0xCu);
    }

    [*(a1 + 32) writeKeyBlob:*(a1 + 40) withRetryCount:0];
  }

  v21 = +[CloudXPCService sharedInstance];
  [v21 endTransaction:@"ManateeModifyKeyBlob"];
}

void sub_1000BC338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

void sub_1000BC394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v19 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v20 = [*(a1 + 32) cloudKitDatabase];
    v21 = *(a1 + 48);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000BCB00;
    v55[3] = &unk_1002BABE8;
    v22 = *(a1 + 64);
    v58 = *(a1 + 80);
    *v53 = *(a1 + 32);
    v23 = v53[1];
    *&v24 = *(a1 + 56);
    *(&v24 + 1) = v22;
    v56 = *v53;
    v57 = v24;
    [v20 saveRecord:v21 completionHandler:v55];

    v25 = *(&v56 + 1);
    goto LABEL_52;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v68 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecordZone: error %@ ", buf, 0xCu);
  }

  v8 = [v6 domain];
  if ([v8 isEqualToString:CKErrorDomain] && (objc_msgSend(v6, "code") == 3 || objc_msgSend(v6, "code") == 7 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 9 || objc_msgSend(v6, "code") == 2 || objc_msgSend(v6, "code") == 6))
  {
    v9 = *(a1 + 80);

    if (v9 <= 3)
    {
      v10 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 80);
        *buf = 138412546;
        v68 = v6;
        v69 = 2048;
        v70 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "writeKeyBlob failed with error %@, retry count = %lu", buf, 0x16u);
      }

      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v13)
      {
        v14 = [v6 userInfo];
        v15 = [v14 objectForKeyedSubscript:CKErrorRetryAfterKey];
        [v15 doubleValue];
        v17 = v16;

        v18 = (v17 * 1000000000.0);
      }

      else
      {
        v18 = 60000000000;
      }

      v48 = dispatch_time(0, v18);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BCAEC;
      block[3] = &unk_1002B86B8;
      v49 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v50 = v49;
      v51 = *(a1 + 80);
      v64 = v50;
      v65 = v51;
      dispatch_after(v48, &_dispatch_main_q, block);
      v25 = v64;
LABEL_52:

      goto LABEL_53;
    }
  }

  else
  {
  }

  v26 = [v6 domain];
  if ([v26 isEqualToString:CKErrorDomain])
  {
    v27 = [v6 code];

    if (v27 == 112)
    {
      v28 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob saveRecordZone lost access to manatee data. Reset and recreate zone.", buf, 2u);
      }

      v29 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob saveRecordZone. Reset and recreate zone DONE!", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 72));
      [WeakRetained resetCloudContainerManateeIdentityLost];

      goto LABEL_53;
    }
  }

  else
  {
  }

  v31 = [v6 domain];
  if ([v31 isEqualToString:CKErrorDomain])
  {
    v32 = [v6 userInfo];
    v33 = [v32 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    if (v33)
    {
      v52 = a1;
      v54 = v5;
      v34 = [v6 userInfo];
      v35 = [v34 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v60;
        while (2)
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v60 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = [v36 objectForKey:*(*(&v59 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = [v41 domain];
              if ([v42 isEqualToString:CKErrorDomain])
              {
                v43 = [v41 code];

                if (v43 == 112)
                {
                  v44 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v68 = v41;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                  }

                  v46 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob. Reset and recreate zone DONE!", buf, 2u);
                  }

                  v47 = objc_loadWeakRetained((v52 + 72));
                  [v47 resetCloudContainerManateeIdentityLost];

                  goto LABEL_49;
                }
              }

              else
              {
              }
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v59 objects:v66 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

LABEL_49:

      v5 = v54;
    }
  }

  else
  {
  }

LABEL_53:
}

void sub_1000BCB00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MagicCloudPairingProtectedMasterBlob, saveRecord %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecord: error %@ ", buf, 0xCu);
  }

  v8 = [v6 domain];
  if (!-[NSObject isEqualToString:](v8, "isEqualToString:", CKErrorDomain) || [v6 code] != 3 && objc_msgSend(v6, "code") != 7 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9 && objc_msgSend(v6, "code") != 2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = *(a1 + 64);

  if (v9 <= 3)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      *buf = 138412546;
      v27 = v6;
      v28 = 2048;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "writeKeyBlob:saveRecord failed with error %@, retry count = %lu", buf, 0x16u);
    }

    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v13)
    {
      v14 = [v6 userInfo];
      v15 = [v14 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v15 doubleValue];
      v17 = v16;

      v18 = (v17 * 1000000000.0);
    }

    else
    {
      v18 = 60000000000;
    }

    v19 = dispatch_time(0, v18);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BCE50;
    block[3] = &unk_1002B86B8;
    v20 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v21 = v20;
    v22 = *(a1 + 64);
    v24 = v21;
    v25 = v22;
    dispatch_after(v19, &_dispatch_main_q, block);
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000BCF4C(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 138412546;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Manatee: updateCloudKitAccessoryZone with %@, delete: %i", buf, 0x12u);
  }

  v5 = [*(a1 + 40) modifyOperationTimer];

  if (v5)
  {
    v6 = [*(a1 + 40) modifyOperationTimer];
    [v6 invalidate];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BD0D4;
  v10[3] = &unk_1002B9E20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 48);
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:3.0];
  [*(a1 + 40) setModifyOperationTimer:v9];
}

void sub_1000BD0D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee: Updating Accessory Zone Now with %@", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 40));
  v6 = [*(a1 + 40) modifyOperationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD270;
  v7[3] = &unk_1002B9DF8;
  v10 = *(a1 + 48);
  objc_copyWeak(&v9, buf);
  v8 = *(a1 + 32);
  [v6 addOperationWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void sub_1000BD244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD270(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v2 == 1)
  {
    [WeakRetained deleteCloudKitAccessoryZone];
  }

  else
  {
    [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:0];
  }
}

void sub_1000BD518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6BCC();
      }

      [WeakRetained handleAccessoryModifyError:v6 forBlob:*(a1 + 32) withRetryCount:*(a1 + 56)];
    }

    else
    {
      v9 = [v5 encryptedValues];
      v10 = [v9 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];

      if (v5)
      {
        v11 = [v10 isEqualToData:*(a1 + 32)];
        v12 = sub_100005C14("MagicPairing");
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dropping same modify record: MagicCloudPairingProtectedAccessoryBlob", buf, 2u);
          }
        }

        else
        {
          if (v13)
          {
            v16 = *(a1 + 32);
            *buf = 138412290;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Manatee: modify record: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0xCu);
          }

          v17 = *(a1 + 32);
          v18 = [v5 encryptedValues];
          [v18 setObject:v17 forKeyedSubscript:@"EncryptedAccessoryBlob"];

          objc_initWeak(buf, WeakRetained);
          v19 = [WeakRetained cloudKitDatabase];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000BD8B4;
          v23[3] = &unk_1002B9E48;
          v24 = v5;
          objc_copyWeak(v26, buf);
          v20 = *(a1 + 32);
          v21 = *(a1 + 56);
          v25 = v20;
          v26[1] = v21;
          [v19 saveRecord:v24 completionHandler:v23];

          objc_destroyWeak(v26);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        v14 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Manatee: No record found: write new data: %@", buf, 0xCu);
        }

        [WeakRetained writeAccessoryBlob:*(a1 + 32) withRetryCount:0];
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
    v22 = +[CloudXPCService sharedInstance];
    [v22 endTransaction:@"ManateeModifyAccessoryBlob"];
  }
}

void sub_1000BD888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD8B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6C34(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained handleAccessoryModifyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: Successfully saved the modified record - %@", buf, 0xCu);
    }

    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BDAD4;
    v15[3] = &unk_1002B6A38;
    v16 = v5;
    [v11 addLegacyMagicPairingRecordsWithCloudRecord:v16 userInitiated:1 completion:v15];

    v12 = +[CloudXPCService sharedInstance];
    v13 = [NSNumber numberWithBool:1];
    v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, @"kUploadStatus", 0];
    [v12 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v14];

    WeakRetained = v16;
  }
}

void sub_1000BDAD4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6C9C(a1);
    }
  }
}

void sub_1000BE3D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1000BE404(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) modifyOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BE500;
  v5[3] = &unk_1002B9E70;
  objc_copyWeak(v7, &location);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7[1] = v4;
  [v2 addOperationWithBlock:v5];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void sub_1000BE4DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000BE500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:*(a1 + 48) + 1];
}

void sub_1000BE558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeAccessoryBlob:*(a1 + 32) withRetryCount:0];
}

void sub_1000BE8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BE920(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeAccessoryBlob saveRecordZone: error %@ ", buf, 0xCu);
    }

    v8 = [v6 domain];
    if ([v8 isEqualToString:CKErrorDomain])
    {
      v9 = [v6 code];

      if (v9 == 112)
      {
        v10 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob saveRecordZone lost access to manatee data. Reset and recreate zone.", buf, 2u);
        }

        v11 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob saveRecordZone. Reset and recreate zone DONE!", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 64));
        [WeakRetained resetCloudContainerManateeIdentityLost];
        goto LABEL_30;
      }
    }

    else
    {
    }

    WeakRetained = [v6 domain];
    if (([WeakRetained isEqualToString:CKErrorDomain] & 1) == 0)
    {
LABEL_30:

      goto LABEL_37;
    }

    v17 = [v6 userInfo];
    v18 = [v17 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    if (v18)
    {
      v34 = a1;
      v19 = [v6 userInfo];
      v20 = [v19 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [v21 objectForKey:*(*(&v39 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 domain];
              if ([v27 isEqualToString:CKErrorDomain])
              {
                v28 = [v26 code];

                if (v28 == 112)
                {
                  v29 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v45 = v26;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                  }

                  v31 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError. Reset and recreate zone DONE!", buf, 2u);
                  }

                  v32 = objc_loadWeakRetained((v34 + 64));
                  [v32 resetCloudContainerManateeIdentityLost];

                  goto LABEL_36;
                }
              }

              else
              {
              }
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_36:

      a1 = v34;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BEEB8;
    block[3] = &unk_1002B6880;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v13 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Manatee: saveRecordZone record %@, resume fetches", buf, 0xCu);
    }

    v14 = [*(a1 + 32) cloudKitDatabase];
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000BEEFC;
    v35[3] = &unk_1002B9D80;
    v37 = *(a1 + 72);
    v35[4] = v15;
    v36 = *(a1 + 48);
    [v14 saveRecord:v16 completionHandler:v35];
  }

LABEL_37:
  dispatch_semaphore_signal(*(a1 + 56));
  v33 = +[CloudXPCService sharedInstance];
  [v33 endTransaction:@"ManateeWriteAccessoryBlob"];
}

id sub_1000BEEB8(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  v2 = *(a1 + 32);

  return [v2 setPauseErrorReason:0];
}

void sub_1000BEEFC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob createRecordZone record  %@", buf, 0xCu);
    }

    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_1000BF538;
    v36 = &unk_1002B6A38;
    v37 = v5;
    [v11 addLegacyMagicPairingRecordsWithCloudRecord:v37 userInitiated:1 completion:&v33];

    v12 = +[CloudXPCService sharedInstance];
    v13 = [NSNumber numberWithBool:1];
    v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, @"kUploadStatus", 0, v33, v34, v35, v36];
    [v12 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v14];

    v15 = v37;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001F24C0();
  }

  if (a1[6] >= 5uLL)
  {
    v9 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6F0C();
    }

LABEL_19:

    goto LABEL_20;
  }

  v16 = [v6 domain];
  if ([v16 isEqualToString:CKErrorDomain])
  {
    if ([v6 code] == 3 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 9)
    {

LABEL_16:
      v17 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6EA4();
      }

      v9 = +[CloudXPCService sharedInstance];
      v18 = [NSNumber numberWithBool:0];
      v19 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v18, @"kUploadStatus", 0];
      [v9 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v19];

      goto LABEL_19;
    }

    v32 = [v6 code];

    if (v32 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([v6 code] == 7)
  {
    v20 = [v6 userInfo];
    v21 = [v20 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v21)
    {
      v22 = [v6 userInfo];
      v23 = [v22 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v23 doubleValue];
      v25 = v24 + 5.0;

      v26 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[6];
        *buf = 138412802;
        v42 = v6;
        v43 = 2048;
        v44 = v27;
        v45 = 2048;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob failed with error %@, retry count = %lu, retry time: %lu", buf, 0x20u);
      }

      v28 = dispatch_time(0, (v25 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BF3E4;
      block[3] = &unk_1002B86B8;
      v29 = a1[5];
      block[4] = a1[4];
      v30 = v29;
      v31 = a1[6];
      v39 = v30;
      v40 = v31;
      dispatch_after(v28, &_dispatch_main_q, block);
      v15 = v39;
LABEL_10:
    }
  }

LABEL_20:
}

void sub_1000BF3E4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) modifyOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF4E0;
  v5[3] = &unk_1002B9E70;
  objc_copyWeak(v7, &location);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7[1] = v4;
  [v2 addOperationWithBlock:v5];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void sub_1000BF4BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000BF4E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:*(a1 + 48) + 1];
}

void sub_1000BF538(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6F74(a1);
    }
  }
}

void sub_1000BF814(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v16 = v4;
      v7 = "Manatee: deleteCloudKitAccessoryZone: error %@ ";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "Manatee: Successfully deleted record";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = +[CloudXPCService sharedInstance];
  v11 = [NSNumber numberWithInt:v4 == 0, @"kUploadStatus"];
  v14 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v10 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v12];

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000BF998(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001F6FDC();
  }
}

void sub_1000BFDA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F7044();
    }

    v9 = [v6 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v11 = [v6 domain];
    if ([v11 isEqualToString:CKErrorDomain] && CKErrorIsCode() && v10)
    {
      v12 = [v10 code];

      if (v12 != 2032 || !*(a1 + 32))
      {
        goto LABEL_18;
      }

      v13 = [v6 localizedDescription];
      v14 = [v13 rangeOfString:@"'"];
      v16 = v15;

      v17 = [v6 localizedDescription];
      v18 = [v17 rangeOfString:@"'" options:4];

      v19 = &v14[v16];
      v20 = v18 - &v14[v16];
      v21 = [v6 localizedDescription];
      v11 = [v21 substringWithRange:{v19, v20}];

      v22 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1001F70AC();
      }

      v23 = *(a1 + 32);
      if (v23)
      {
        [*(a1 + 40) setuserPreference:v23 value:v11 sync:1];
      }
    }

LABEL_18:
    goto LABEL_19;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: saveSubscription record: %@", &v26, 0xCu);
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = *(a1 + 40);
    v10 = [v5 subscriptionID];
    [v25 setuserPreference:v24 value:v10 sync:1];
    goto LABEL_18;
  }

LABEL_19:
}

void sub_1000C027C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F7114(a1);
    }

    v9 = [v6 domain];
    if ([v9 isEqualToString:CKErrorDomain])
    {
      v10 = [v6 code];

      if (v10 == 11)
      {
        [*(a1 + 40) removeuserPreference:*(a1 + 48) sync:1];
        [*(a1 + 40) createSubscritionForRecordType:*(a1 + 56)];
      }

      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: Found existing subscription - %@", &v18, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [v5 subscriptionID];
  v13 = [v11 isEqualToString:v12];

  v14 = sub_100005C14("MagicPairing");
  v9 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001F717C();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: Already created this subscription - %@", &v18, 0xCu);
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = [v5 subscriptionID];
  [v15 setuserPreference:v16 value:v17 sync:1];

  [*(a1 + 40) setCloudSubscription:v5];
LABEL_16:
}

void sub_1000C05F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: Found subscription - %@", &v12, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v5 subscriptionID];
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (v7)
    {
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: Already have subscription - %@", &v12, 0xCu);
      }

      v10 = *(a1 + 40);
      v11 = [v5 subscriptionID];
      [v10 setuserPreference:@"MagicCloudPairingAccessorySubscriptionManateeID" value:v11 sync:1];

      [*(a1 + 40) setCloudSubscription:v5];
    }
  }
}

void sub_1000C0900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  objc_destroyWeak((v10 - 64));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C0940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = a3;
  val = objc_loadWeakRetained((a1 + 48));
  v6 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAllSubscriptionsWithCompletionHandler: error %@ ", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 recordType];
          v14 = [v13 isEqualToString:*(a1 + 32)];

          if (v14)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            v15 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 32);
              *buf = 138412546;
              v29 = v16;
              v30 = 2112;
              v31 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Manatee: Delete Subscription for record type: %@ and sub: %@", buf, 0x16u);
            }

            objc_initWeak(buf, val);
            v17 = [val cloudKitDatabase];
            v18 = [v12 subscriptionID];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_1000C0CB8;
            v21[3] = &unk_1002B9FD0;
            v22 = *(a1 + 32);
            objc_copyWeak(&v23, buf);
            [v17 deleteSubscriptionWithID:v18 completionHandler:v21];

            objc_destroyWeak(&v23);
            objc_destroyWeak(buf);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [val setuserPreference:@"MagicPairingMasterKeySubscriptionManateeDisabled" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_1000C0C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C0CB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Manatee: Error Deleting Subscription for record type: %@ with error: %@ ", &v11, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Manatee: Successfully deleted Subscription for record type - %@ with ID - %@", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setuserPreference:@"MagicPairingMasterKeySubscriptionManateeDisabled" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_1000C10A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C10CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting server preferred push environment %@", &v11, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C146C(uint64_t a1)
{
  v2 = +[CloudXPCService sharedInstance];
  [v2 beginTransaction:@"ManateeIdentityLost"];

  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) recordZoneBlob];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    v7 = [*(a1 + 32) recordZoneAccessoryDatabase];
    v8 = [v7 zoneID];
    v9 = [v8 zoneName];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " >>> Manatee Identity Lost Reset Both Zones %@ - %@", buf, 0x16u);
  }

  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_semaphore_create(0);
  v12 = [*(a1 + 32) cloudKitDatabase];
  v13 = [*(a1 + 32) recordZoneBlob];
  v14 = [v13 zoneID];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000C18F0;
  v42[3] = &unk_1002BACA8;
  v43 = v11;
  v15 = v11;
  [v12 deleteRecordZoneWithID:v14 completionHandler:v42];

  dispatch_semaphore_wait(v15, v10);
  v16 = dispatch_semaphore_create(0);
  v17 = [*(a1 + 32) cloudKitDatabase];
  v18 = [*(a1 + 32) recordZoneAccessoryDatabase];
  v19 = [v18 zoneID];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000C19D4;
  v40[3] = &unk_1002BACA8;
  v20 = v16;
  v41 = v20;
  [v17 deleteRecordZoneWithID:v19 completionHandler:v40];

  dispatch_semaphore_wait(v20, v10);
  v21 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v45 = 0;
  v22 = +[CloudXPCService sharedInstance];
  v23 = [v22 deviceManager];

  dispatch_group_enter(v21);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000C1AB8;
  v36[3] = &unk_1002BACD0;
  v24 = v21;
  v25 = *(a1 + 32);
  v37 = v24;
  v38 = v25;
  v39 = buf;
  [v23 fetchAccountMagicKeysBlobWithCompletion:v36];
  dispatch_group_enter(v24);
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_1000C1B10;
  v32 = &unk_1002BACF8;
  v26 = *(a1 + 32);
  v35 = buf;
  v33 = v26;
  v27 = v24;
  v34 = v27;
  [v23 fetchLegacyMagicPairingRecordsWithCompletion:&v29];
  dispatch_group_notify(v27, &_dispatch_main_q, &stru_1002BAD18);
  v28 = [CloudXPCService sharedInstance:v29];
  [v28 endTransaction:@"ManateeIdentityLost"];

  _Block_object_dispose(buf, 8);
}

void sub_1000C18F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee Identity Lost resetMasterZone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C19D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee Identity Lost Reset Accessory Zone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C1AB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) writeKeyBlob:a2 withRetryCount:0];
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_1000C1B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    [*(a1 + 32) writeAccessoryBlob:v3 withRetryCount:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000C1B8C(id a1)
{
  v1 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Manatee Identity Lost Reset Done", v2, 2u);
  }
}

void sub_1000C1FD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetMasterZone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C2388(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob saveRecordZone: error %@ ", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v9 = [*(a1 + 32) cloudKitDatabase];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C2544;
    v14[3] = &unk_1002BAD40;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    [v9 saveRecord:v10 completionHandler:v14];

    v7 = v15;
  }

  v13 = +[CloudXPCService sharedInstance];
  [v13 endTransaction:@"updateMasterZoneBlob"];
}

void sub_1000C2544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob createRecordZone: error %@ ", buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  if ([*(a1 + 32) length] < 3)
  {
    v7 = xpc_create_with_format();
    CFRetain(v7);
    v9 = [*(a1 + 40) readUserPreference:{@"MagicCloudPairingManateeUpgradedAccount", 1}];

    if (!v9)
    {
      [*(a1 + 40) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      v10 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob Master zone has been upgraded successfully", buf, 2u);
      }
    }

    v11 = +[CloudXPCService sharedInstance];
    v12 = [NSNumber numberWithBool:1];
    v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, @"kUploadStatus", 0];
    [v11 sendCloudKitMsg:@"manateeUdpateStatus" args:v13];

    goto LABEL_13;
  }

  v8 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob record  %@", buf, 0xCu);
  }

  [*(a1 + 40) resetAccessoryZone:*(a1 + 32)];
LABEL_14:
}

void sub_1000C2978(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetAccessoryZone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C2D28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v20 = [*(a1 + 32) cloudKitDatabase];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_1000C3104;
    v33 = &unk_1002B9D80;
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v36 = *(a1 + 56);
    v34 = v22;
    v35 = v23;
    [v20 saveRecord:v21 completionHandler:&v30];

    v24 = v35;
    goto LABEL_21;
  }

  if (v8)
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "upgradeAccessoryBlob upgradeRecordZone: error %@ ", buf, 0xCu);
  }

  v9 = [v6 domain];
  if ([v9 isEqualToString:CKErrorDomain] && (objc_msgSend(v6, "code") == 3 || objc_msgSend(v6, "code") == 7 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 9 || objc_msgSend(v6, "code") == 6))
  {
    v10 = *(a1 + 56);

    if (v10 <= 3)
    {
      v11 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 56);
        *buf = 138412546;
        v41 = v6;
        v42 = 2048;
        v43 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob failed with error %@, retry count = %lu", buf, 0x16u);
      }

      v13 = [v6 userInfo];
      v14 = [v13 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v14)
      {
        v15 = [v6 userInfo];
        v16 = [v15 objectForKeyedSubscript:CKErrorRetryAfterKey];
        [v16 doubleValue];
        v18 = v17;

        v19 = (v18 * 1000000000.0);
      }

      else
      {
        v19 = 60000000000;
      }

      v25 = dispatch_time(0, v19);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C30F0;
      block[3] = &unk_1002B86B8;
      v26 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v27 = v26;
      v28 = *(a1 + 56);
      v38 = v27;
      v39 = v28;
      dispatch_after(v25, &_dispatch_main_q, block);
      v24 = v38;
LABEL_21:
    }
  }

  else
  {
  }

  v29 = [CloudXPCService sharedInstance:v30];
  [v29 endTransaction:@"upgradeAccessoryBlob"];
}

void sub_1000C3104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob record  %@", buf, 0xCu);
    }

    v9 = xpc_create_with_format();
    CFRetain(v9);
    v20 = [*(a1 + 32) readUserPreference:{@"MagicCloudPairingManateeUpgradedAccount", 1}];

    if (!v20)
    {
      [*(a1 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      v21 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob Master zone has been upgraded successfully", buf, 2u);
      }
    }

    v22 = +[CloudXPCService sharedInstance];
    v23 = [NSNumber numberWithBool:1];
    v24 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v23, @"kUploadStatus", 0];
    [v22 sendCloudKitMsg:@"manateeUdpateStatus" args:v24];

    goto LABEL_22;
  }

  if (v8)
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob: error %@ ", buf, 0xCu);
  }

  v9 = [v6 domain];
  if (![v9 isEqualToString:CKErrorDomain] || objc_msgSend(v6, "code") != 3 && objc_msgSend(v6, "code") != 7 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9 && objc_msgSend(v6, "code") != 6)
  {
LABEL_22:

    goto LABEL_23;
  }

  v10 = *(a1 + 48);

  if (v10 <= 3)
  {
    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      *buf = 138412546;
      v33 = v6;
      v34 = 2048;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob failed with error %@, retry count = %lu", buf, 0x16u);
    }

    v13 = [v6 userInfo];
    v14 = [v13 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v14)
    {
      v15 = [v6 userInfo];
      v16 = [v15 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v16 doubleValue];
      v18 = v17;

      v19 = (v18 * 1000000000.0);
    }

    else
    {
      v19 = 60000000000;
    }

    v25 = dispatch_time(0, v19);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C3538;
    block[3] = &unk_1002B86B8;
    v26 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v27 = v26;
    v28 = *(a1 + 48);
    v30 = v27;
    v31 = v28;
    dispatch_after(v25, &_dispatch_main_q, block);
  }

LABEL_23:
}

void sub_1000C3784(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v3 recordZoneID];
    v5 = [v4 zoneName];
    v6 = [v5 isEqualToString:@"MagicCloudPairingCustomKeyBlobZone"];

    if (v6)
    {
      v7 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*****>>>> Manatee: Master Key Updated", buf, 2u);
      }

      if ([*(a1 + 40) isWriteMasterKeysInProgress])
      {
        v8 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "*****>>>> Manatee: Master Key Updated but we are in process to push new key. Dont fetch", buf, 2u);
        }
      }

      else
      {
        [*(a1 + 40) setMasterBlob:0];
        [*(a1 + 40) fetchKeyBlob:0];
      }
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3940;
  block[3] = &unk_1002B6880;
  block[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000C3940(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  [*(a1 + 32) setPauseErrorReason:0];
  v2 = *(a1 + 32);

  return [v2 fetchAccessoryKeyBlob:0];
}

void sub_1000C48BC(id a1)
{
  v1 = objc_alloc_init(BTIdentityDaemon);
  v2 = qword_1002FA1D0;
  qword_1002FA1D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000C4A64(uint64_t a1)
{
  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7310();
  }

  v2 = *(a1 + 32);
  if (*(v2 + 8) == -1)
  {
    v3 = *(v2 + 16);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000C4C10;
    handler[3] = &unk_1002B6DF0;
    handler[4] = v2;
    notify_register_dispatch("com.apple.bluetooth.daemonStarted", (v2 + 8), v3, handler);
    v2 = *(a1 + 32);
  }

  if ((*(v2 + 40) & 1) == 0)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:"_idsDevicesChanged:" name:@"BTTotalIDSDeviceCountChanged" object:0];
    *(*(a1 + 32) + 40) = 1;
  }

  v5 = +[CBIDSManager sharedInstance];
  v6 = [v5 isReady];

  if (v6)
  {
    v7 = +[CBIDSManager sharedInstance];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C4CEC;
    v8[3] = &unk_1002B7B68;
    v8[4] = *(a1 + 32);
    [v7 fetchIDSDevicesWithCompletion:v8];
  }
}

void sub_1000C4C10(uint64_t a1)
{
  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F732C();
  }

  v2 = +[CBIDSManager sharedInstance];
  v3 = [v2 isReady];

  if (v3)
  {
    *(*(a1 + 32) + 12) = 0;
    v4 = *(a1 + 32);

    [v4 _idsScheduleUpdateIdentities];
  }

  else if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7348();
  }
}

void sub_1000C4CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C4D88;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

id sub_1000C4D88(uint64_t a1)
{
  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7364(a1);
  }

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v2 = *(a1 + 40);

  return [v2 _idsScheduleUpdateIdentities];
}

void sub_1000C4E74(uint64_t a1)
{
  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F73AC();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3 != -1)
  {
    notify_cancel(v3);
    *(*(a1 + 32) + 8) = -1;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 40) == 1)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 32) name:@"BTTotalIDSDeviceCountChanged" object:0];

    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 32);
  *(v2 + 32) = 0;

  [*(*(a1 + 32) + 24) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;
}

uint64_t sub_1000C4F64(uint64_t a1)
{
  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F73C8();
  }

  if (![*(a1 + 32) caseInsensitiveCompare:@"idsUpForce"])
  {
    *(*(a1 + 40) + 12) = 0;
  }

  [*(a1 + 40) _idsScheduleUpdateIdentities];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1000C509C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  CFArrayGetTypeID();
  v3 = CFDictionaryGetTypedValue();

  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F73E4(v3);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
  v6 = v3;

  [*(a1 + 40) _idsScheduleUpdateIdentities];
}

void *sub_1000C525C(void *result)
{
  if (result[4] == *(result[5] + 24))
  {
    v2 = result;
    if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7428();
    }

    v3 = v2[5];

    return [v3 _idsUpdateIdentities];
  }

  return result;
}

uint64_t sub_1000C5954(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) invalidate];
  v4 = v6;
  if (v6)
  {
    if (dword_1002F7148 <= 90)
    {
      if (dword_1002F7148 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001F7544();
        v4 = v6;
      }
    }
  }

  else
  {
    *(*(a1 + 40) + 12) = 1;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000C5A90(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAFeatureOnboarding);
    v2 = qword_1002FA1E0;
    qword_1002FA1E0 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000C5FF4(id a1)
{
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F79D8();
  }
}

void sub_1000C6040(id a1)
{
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F79F4();
  }
}

void sub_1000C60B0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7A10();
    }

    v3 = [*(a1 + 32) deviceManager];
    [v3 invalidate];

    [*(a1 + 32) setDeviceManager:0];
  }

  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7A50(a1);
  }
}

void sub_1000C66B4(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) deocOnboardedDeviceIdentifiers];
  [v2 removeObject:v3];
}

void sub_1000C67DC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1002F71B8 <= 30)
    {
      v4 = v2;
      if (dword_1002F71B8 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = sub_1001F7ACC();
        v3 = v4;
      }
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000C6998(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7B4C();
  }

  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6A74;
  block[3] = &unk_1002B6880;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_1000C6A80(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F71B8 <= 30)
  {
    v4 = v2;
    if (dword_1002F71B8 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      v2 = sub_1001F7B8C();
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000C6BC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C6CB8;
  v10[3] = &unk_1002B7B18;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1000C6CB8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 > 90 || dword_1002F71B8 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1001F7BCC(a1, v2, &v6);
    v4 = v6;
  }

  else
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7C5C(a1);
    }

    v3 = *(a1 + 56);
    v5 = [*(a1 + 40) bluetoothAddress];
    [v3 _deocNotificationShownForDeviceWithBluetoothAddress:v5];
    v4 = v5;
  }
}

uint64_t sub_1000C71A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 > 90)
    {
      goto LABEL_11;
    }

    v8 = v3;
    if (dword_1002F71B8 != -1)
    {
      goto LABEL_4;
    }

    v3 = _LogCategory_Initialize();
    v4 = v8;
    if (v3)
    {
      v5 = *(a1 + 32);
LABEL_4:
      v7 = *(a1 + 40);
      v3 = LogPrintF();
LABEL_5:
      v4 = v8;
    }
  }

  else if (dword_1002F71B8 <= 30)
  {
    v8 = v3;
    if (dword_1002F71B8 != -1 || (v3 = _LogCategory_Initialize(), v4 = v8, v3))
    {
      v3 = sub_1001F7D50();
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

void sub_1000C7364(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100003998;
  v41 = sub_100003878;
  v42 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000C7938;
  v34[3] = &unk_1002B74D0;
  v36 = &v37;
  v35 = *(a1 + 48);
  v2 = objc_retainBlock(v34);
  if (*(a1 + 32))
  {
    v3 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
    v4 = [v3 deviceWithIdentifier:*(a1 + 32)];
    v5 = [*(a1 + 40) devicesMap];
    v6 = [v5 objectForKey:*(a1 + 32)];
    v7 = v6 == 0;

    if (v7)
    {
      if (dword_1002F71B8 > 90 || dword_1002F71B8 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_36;
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [v4 bluetoothAddress];
      v10 = [v8 _fitEducationNotificationsShownForDevice:v9];

      if (v10 > [*(a1 + 40) fitEducationNotificationThreshold])
      {
        if (dword_1002F71B8 > 90 || dword_1002F71B8 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v4)
        {
          v11 = [*(a1 + 40) fitEducationNotificationIdsForDeviceIds];
          v12 = [v11 count] == 0;

          if (!v12)
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v13 = [*(a1 + 40) fitEducationNotificationIdsForDeviceIds];
            v14 = [v13 allValues];

            v15 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
            if (v15)
            {
              v16 = *v31;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v31 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v30 + 1) + 8 * i);
                  v19 = [*(a1 + 40) unCenter];
                  [v19 dismissUserNotificationWithIdentifier:v18];
                }

                v15 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
              }

              while (v15);
            }

            v20 = [*(a1 + 40) fitEducationNotificationIdsForDeviceIds];
            [v20 removeAllObjects];
          }

          v21 = [*(a1 + 40) _notificationContentForFitEducationNotificationForDevice:v4];
          v22 = [*(a1 + 40) unCenter];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000C7960;
          v25[3] = &unk_1002BAF08;
          v25[4] = *(a1 + 40);
          v29 = &v37;
          v26 = v4;
          v27 = v21;
          v28 = *(a1 + 48);
          [v22 deliverNotificationWithContent:v21 completion:v25];

          goto LABEL_15;
        }

        if (dword_1002F71B8 > 90 || dword_1002F71B8 == -1 && !_LogCategory_Initialize())
        {
LABEL_36:
          v24 = NSErrorF();
          v21 = v38[5];
          v38[5] = v24;
LABEL_15:

          goto LABEL_16;
        }
      }
    }

    LogPrintF();
    goto LABEL_36;
  }

  if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v23 = NSErrorF();
  v3 = v38[5];
  v38[5] = v23;
LABEL_16:

  (v2[2])(v2);
  _Block_object_dispose(&v37, 8);
}

void sub_1000C78D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  (*(v33 + 16))(v33);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7938(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000C7960(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7A68;
  block[3] = &unk_1002BAEE0;
  v15 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 48);
  v19 = v6;
  v13 = *(a1 + 56);
  v10 = v13;
  v20 = v13;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_1000C7A68(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7D6C(a1);
    }

    v2 = *(*(a1 + 80) + 8);
    v3 = *(a1 + 32);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
  }

  else
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7DE8(a1);
    }

    v5 = [*(a1 + 48) unCenter];
    [v5 requestSiriAnnounceWithNotificationContent:*(a1 + 56)];

    v6 = *(a1 + 64);
    v7 = [*(a1 + 48) fitEducationNotificationIdsForDeviceIds];
    v8 = [*(a1 + 40) identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];

    v9 = *(a1 + 48);
    v4 = [*(a1 + 40) bluetoothAddress];
    [v9 _incrementFitEducationNotificationsShownForIdentifier:v4];
  }

  result = *(a1 + 72);
  if (result)
  {
    v11 = *(*(*(a1 + 80) + 8) + 40);
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

void sub_1000C800C(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003998;
  v19 = sub_100003878;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C8284;
  v12[3] = &unk_1002B74D0;
  v14 = &v15;
  v13 = *(a1 + 48);
  v2 = objc_retainBlock(v12);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) _notificationContentForAssetManagerDownload:?];
    v4 = [*(a1 + 40) unCenter];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C82AC;
    v8[3] = &unk_1002BAF80;
    v7 = *(a1 + 32);
    v5 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v11 = &v15;
    v10 = *(a1 + 48);
    [v4 deliverNotificationWithContent:v3 completion:v8];
  }

  else
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v6 = NSErrorF();
    v3 = v16[5];
    v16[5] = v6;
  }

  (v2[2])(v2);
  _Block_object_dispose(&v15, 8);
}

void sub_1000C824C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8284(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000C82AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8388;
  block[3] = &unk_1002BAF58;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_1000C8388(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7EA8(a1);
    }

    v2 = *(*(a1 + 56) + 8);
    v3 = *(a1 + 32);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
    goto LABEL_6;
  }

  if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7F24(a1);
    v4 = v8;
LABEL_6:
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_1000C8560(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100003998;
  v13[4] = sub_100003878;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C8740;
  v10[3] = &unk_1002B74D0;
  v12 = v13;
  v11 = *(a1 + 48);
  v2 = objc_retainBlock(v10);
  v3 = [*(a1 + 32) _notificationContentForPTAppDownload:*(a1 + 40)];
  v4 = [*(a1 + 32) unCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C8768;
  v6[3] = &unk_1002BAF80;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v9 = v13;
  v8 = *(a1 + 48);
  [v4 deliverNotificationWithContent:v3 completion:v6];

  (v2[2])(v2);
  _Block_object_dispose(v13, 8);
}

uint64_t sub_1000C8740(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000C8768(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8844;
  block[3] = &unk_1002BAF58;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_1000C8844(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7F7C(a1);
    }

    v2 = *(*(a1 + 56) + 8);
    v3 = *(a1 + 32);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
    goto LABEL_6;
  }

  if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7FF8(a1);
    v4 = v8;
LABEL_6:
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_1000C8F54(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [NSURL URLWithString:v4];
  v6 = v3[1];
  v8 = 0;
  [v2 openSensitiveURL:v5 withOptions:v6 error:&v8];
  v7 = v8;

  if (v7 && dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F80EC(v3);
  }
}

void sub_1000C9BE0(id *a1)
{
  v42 = [a1[4] actionIdentifier];
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    v40 = a1[4];
    v41 = a1[5];
    v39 = v42;
    LogPrintF();
  }

  v2 = a1 + 5;
  v3 = [a1[5] content];
  v4 = [v3 categoryIdentifier];

  v5 = v4;
  v6 = v5;
  if (v5 == @"AADynamicEndOfChargeTrainingUserNotifications")
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = [(__CFString *)v5 isEqual:@"AADynamicEndOfChargeTrainingUserNotifications"];

  if (v7)
  {
LABEL_8:
    v8 = [*v2 content];
    v9 = [v8 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"btAddress"];

    if (!v10)
    {
      sub_1001F8130();
      goto LABEL_32;
    }

    [a1[6] _receivedDEOCNotificationAction:v42 forDeviceWithAddress:v10];
  }

  v11 = v6;
  v12 = v11;
  if (v11 != @"AAFitEducationNotificationUserNotifications")
  {
    if (v11)
    {
      v13 = [(__CFString *)v11 isEqual:@"AAFitEducationNotificationUserNotifications"];

      if (!v13)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_29:

    v37 = v6;
    goto LABEL_30;
  }

LABEL_13:
  v14 = [*v2 content];
  v15 = [v14 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"identifier"];

  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = [*v2 content];
  v18 = [v17 userInfo];
  v19 = [v18 objectForKeyedSubscript:@"btAddress"];

  if (!v19)
  {
    goto LABEL_37;
  }

  [a1[6] _receivedFitEducationNotificationAction:v42 forDevice:v16 withAddress:v19];

LABEL_16:
  v20 = v12;
  v21 = v20;
  if (v20 == @"AAAssetManagerNotificationUserNotifications")
  {
    goto LABEL_19;
  }

  if (!v20)
  {
LABEL_30:

    v38 = v6;
    goto LABEL_31;
  }

  v22 = [(__CFString *)v20 isEqual:@"AAAssetManagerNotificationUserNotifications"];

  if (!v22)
  {
LABEL_22:
    v28 = v21;
    if (v28 == @"AAAssetManagerMissingTranslateAppNotifications")
    {
LABEL_25:
      v31 = [*v2 content];
      v32 = [v31 userInfo];
      v33 = [v32 objectForKeyedSubscript:@"identifier"];

      if (v33)
      {
        v34 = [*v2 content];
        v35 = [v34 userInfo];
        v36 = [v35 objectForKeyedSubscript:@"btAddress"];

        if (v36)
        {
          [a1[6] _receivedAssetManagerPTAppDownloadNotificationAction:v42 forDevice:v33 withAddress:v36];
        }

        else
        {
          sub_1001F8130();
        }

        goto LABEL_32;
      }

      goto LABEL_40;
    }

    v29 = v28;
    if (v28)
    {
      v30 = [(__CFString *)v28 isEqual:@"AAAssetManagerMissingTranslateAppNotifications"];

      if (!v30)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

LABEL_31:

    goto LABEL_32;
  }

LABEL_19:
  v23 = [*v2 content];
  v24 = [v23 userInfo];
  v16 = [v24 objectForKeyedSubscript:@"identifier"];

  if (v16)
  {
    v25 = [*v2 content];
    v26 = [v25 userInfo];
    v27 = [v26 objectForKeyedSubscript:@"btAddress"];

    if (v27)
    {
      [a1[6] _receivedAssetManagerNotificationAction:v42 forDevice:v16 withAddress:v27];

      goto LABEL_22;
    }

LABEL_37:
    sub_1001F8298(v16, a1 + 5);
    goto LABEL_32;
  }

LABEL_40:
  sub_1001F81E4();
LABEL_32:
}

id sub_1000CA3FC(uint64_t a1)
{
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F83CC();
  }

  v2 = *(a1 + 32);

  return [v2 _loadPreferences];
}

void sub_1000CB17C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8480();
    }

    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v3 = v6;
  }
}

void sub_1000CBB54(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = a2;
    v3 = NSErrorF();
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    [*(a1 + 32) pipeConnectionComplete:v6 andWxHeadset:*(a1 + 40) isSender:{1, v6}];
  }
}

void sub_1000CBBE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      v21 = *(a1 + 32);
      LogPrintF();
    }

    objc_storeStrong((*(a1 + 40) + 32), a4);
    v9 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v9 _setOtherTipiDeviceBTAddress:0 andName:0 sourceVersion:0 withResult:*(*(a1 + 40) + 32)];

    [*(a1 + 40) pipeConnectionComplete:*(*(a1 + 40) + 32) andWxHeadset:*(a1 + 48) isSender:1];
  }

  else
  {
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      v20 = *(a1 + 32);
      v22 = v23;
      LogPrintF();
    }

    mach_absolute_time();
    v10 = *(*(*(a1 + 56) + 8) + 24);
    v11 = UpTicksToMilliseconds();
    v12 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v12 _setPipeMessageStats:v11];

    LODWORD(v11) = *(*(*(a1 + 64) + 8) + 24);
    CFStringGetTypeID();
    if (v11 == 1)
    {
      v13 = CFDictionaryGetTypedValue();
      CFStringGetTypeID();
      v14 = CFDictionaryGetTypedValue();
      v15 = [v23 objectForKey:@"version"];
      if (v13 && v14)
      {
        v16 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
        v17 = [v16 _isOnDemandConnectInProgress];

        if (v17)
        {
          if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F851C();
          }
        }

        else
        {
          v18 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
          [v18 _setOtherTipiDeviceBTAddress:v13 andName:v14 sourceVersion:v15 withResult:0];

          [v15 doubleValue];
          if (v19 < 1.2 || !v15)
          {
            if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001F84DC();
            }

            [*(a1 + 40) pipeConnectionComplete:0 andWxHeadset:*(a1 + 48) isSender:{1, v20, v22}];
          }
        }
      }
    }

    else
    {
      v13 = CFDictionaryGetTypedValue();
      v14 = [v23 objectForKey:@"version"];
      if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
      {
        v20 = v14;
        v22 = v13;
        LogPrintF();
      }

      [*(a1 + 40) pipeConnectionComplete:0 andWxHeadset:*(a1 + 48) isSender:{1, v20, v22}];
      v15 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
      [v15 _sendAudioCategoryViaWx:*(a1 + 48)];
    }
  }
}

void sub_1000CCC28(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(a1);
}

void *sub_1000CCC9C(void *result)
{
  v1 = result[8];
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F7228 <= 90)
  {
    if (dword_1002F7228 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[8];
      if (!v3)
      {
        goto LABEL_7;
      }

      v7 = *(*(v1 + 8) + 40);
    }

    v9 = v2[5];
    v8 = v2[4];
    LogPrintF();
    v1 = v2[8];
  }

LABEL_7:
  v4 = v2[6];
  v5 = v2[7];
  v6 = *(*(v1 + 8) + 40);

  return [v4 pipeRequestResponse:v5 error:v6];
}

void sub_1000CCD64(uint64_t a1)
{
  if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F85B4(a1);
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = NSErrorF();
  [v2 pipeRequestResponse:v3 error:v4];

  v5 = *(a1 + 64);
  v8 = [*(a1 + 72) btAddressData];
  v6 = CUPrintNSDataAddress();
  v7 = NSErrorF();
  [v5 _updateOtherTipiDevice:v6 otherAddress:0 otherName:0 otherVersion:0 withResult:v7];
}

void sub_1000CCE84(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F85F8(a1);
    }

    v3 = *(a1 + 48);
    v4 = [*(a1 + 56) btAddressData];
    v5 = CUPrintNSDataAddress();
    v6 = NSErrorF();
    [v3 _updateOtherTipiDevice:v5 otherAddress:0 otherName:0 otherVersion:0 withResult:v6];

    [*(a1 + 64) pipeRequestResponse:*(a1 + 72) error:v7];
  }

  else if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8640();
  }
}

void sub_1000CD658(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAUSBSupportedDeviceManagerDaemon);
    v2 = qword_1002FA1F0;
    qword_1002FA1F0 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_1000CD7A4(uint64_t a1)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8900();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

void sub_1000CDA3C(id a1)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F895C();
  }
}

void sub_1000CDA88(id a1)
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8978();
  }
}

void sub_1000CDAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1002F72A0 <= 30)
  {
    if (dword_1002F72A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1001F8994();
      v3 = v5;
    }
  }

  [*(a1 + 32) _bluetoothDeviceLost:v3];
}

void sub_1000CDB70(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F89D4();
    }

    [*(a1 + 32) invalidate];
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8A14(a1);
  }
}

void sub_1000CDE28(uint64_t a1, void *a2)
{
  v5 = a2;
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    v3 = *(a1 + 32);
    v4 = v5;
    LogPrintF();
  }

  [*(a1 + 40) invalidate];
}

id sub_1000CE5E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[6] bluetoothState];

  return [v1 _bluetoothStateChanged:v2];
}

uint64_t sub_1000CE624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 48) == *(a1 + 40) && dword_1002F72A0 <= 30)
  {
    v6 = v3;
    if (dword_1002F72A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = sub_1001F8E40();
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000CE6B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 48) == *(a1 + 40) && dword_1002F72A0 <= 30)
  {
    v6 = v3;
    if (dword_1002F72A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = sub_1001F8E80();
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000CE74C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  if (v4 == *(a1 + 40))
  {
    v8 = v3;
    if (v3)
    {
      if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F8EC0();
      }

      [*(a1 + 40) invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 48);
      *(v5 + 48) = 0;

      v3 = v8;
    }

    else
    {
      v4 = [v4 bluetoothState];
      v3 = 0;
      *(*(a1 + 32) + 24) = v4;
    }
  }

  return _objc_release_x1(v4, v3);
}

id sub_1000CE9B8(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if (result == *(v3 + 56))
  {
    if ((*(v3 + 32) & 1) == 0)
    {
      if ([result firstUnlocked])
      {
        v4 = *(a1 + 40);
        if (!v4[5])
        {
          [v4 _startEffectiveUnlockedAfterBootTimer:2];
        }
      }
    }

    result = [*(a1 + 32) screenActive];
    if (*(*(a1 + 40) + 88) != result)
    {
      result = [*(a1 + 32) screenActive];
      *(*(a1 + 40) + 88) = result;
    }
  }

  return result;
}

void sub_1000CEBC4(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 1;
  v1 = *(*(a1 + 32) + 40);
  if (v1)
  {
    v3 = v1;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8F94();
  }
}

void sub_1000CECE8(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8FB0(a1);
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1000039B8;
    v24 = sub_100003888;
    v25 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000CF03C;
    v19[3] = &unk_1002B6C00;
    v19[4] = &v20;
    v2 = objc_retainBlock(v19);
    v3 = *(a1 + 40);
    if (!v3)
    {
      v5 = v21[5];
      v21[5] = @"USBDevice is null";
      goto LABEL_14;
    }

    v4 = [v3 btAddress];
    v5 = v4;
    if (v4)
    {
      if (sub_1001F8818(v4))
      {
        if (![*(a1 + 32) _isWxPaired:v5])
        {
          v6 = *(*(a1 + 32) + 96);
          if (!v6)
          {
            v7 = objc_alloc_init(NSMutableDictionary);
            v8 = *(a1 + 32);
            v9 = *(v8 + 96);
            *(v8 + 96) = v7;

            v6 = *(*(a1 + 32) + 96);
          }

          v10 = [v6 objectForKeyedSubscript:v5];
          if (v10)
          {
            v18 = v21[5];
            v21[5] = @"Skip, already found the USB device";
          }

          else
          {
            v10 = objc_alloc_init(AAUSBDeivce);
            [(AAUSBDeivce *)v10 setBtAddress:v5];
            v11 = [*(a1 + 40) color];
            [(AAUSBDeivce *)v10 setColor:v11];

            [(AAUSBDeivce *)v10 setIsUSBPluggedIn:1];
            v12 = [*(a1 + 40) usbModel];
            [(AAUSBDeivce *)v10 setModel:v12];

            v13 = [*(a1 + 40) usbName];
            [(AAUSBDeivce *)v10 setName:v13];

            v14 = [*(a1 + 40) fwVersion];
            [(AAUSBDeivce *)v10 setFwVersion:v14];

            v15 = [*(a1 + 40) pid];
            [(AAUSBDeivce *)v10 setPid:v15];

            [*(*(a1 + 32) + 96) setObject:v10 forKeyedSubscript:v5];
            [*(a1 + 32) _logCurrentListOfUSBDevice];
            [*(a1 + 32) _startPairingUI:v10 repairMode:0];
          }

          goto LABEL_13;
        }

        v16 = v21;
        v10 = v21[5];
        v17 = @"Wx paired already";
      }

      else
      {
        v16 = v21;
        v10 = v21[5];
        v17 = @"Wx address is invalid";
      }
    }

    else
    {
      v16 = v21;
      v10 = v21[5];
      v17 = @"Wx address is null";
    }

    v16[5] = v17;
LABEL_13:

LABEL_14:
    (v2[2])(v2);

    _Block_object_dispose(&v20, 8);
  }
}

void sub_1000CF004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF03C(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000CF43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CF45C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invokeAnyProxCardUserActionCompletion:0 result:3];

  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;
}

void sub_1000CF598(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F906C(a1);
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1000039B8;
    v20 = sub_100003888;
    v21 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000CF7C0;
    v15[3] = &unk_1002B6C00;
    v15[4] = &v16;
    v2 = objc_retainBlock(v15);
    v3 = *(a1 + 40);
    if (v3)
    {
      if (sub_1001F8818(v3))
      {
        v4 = *(*(a1 + 32) + 96);
        if (v4)
        {
          [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];
          v5 = *(*(a1 + 32) + 104);
          if (v5)
          {
            v6 = v5;
            dispatch_source_cancel(v6);
            v7 = *(a1 + 32);
            v8 = *(v7 + 104);
            *(v7 + 104) = 0;
          }

          v9 = *(*(a1 + 32) + 112);
          if (v9)
          {
            v10 = v9;
            dispatch_source_cancel(v10);
            v11 = *(a1 + 32);
            v12 = *(v11 + 112);
            *(v11 + 112) = 0;
          }

          [*(a1 + 32) _dismissAnyPairingProxCard];
          [*(a1 + 32) _logCurrentListOfUSBDevice];
          goto LABEL_13;
        }

        v13 = @"Nothing is pairing at this moment";
      }

      else
      {
        v13 = @"Wx address is invalid";
      }
    }

    else
    {
      v13 = @"Wx address is null";
    }

    v14 = v17[5];
    v17[5] = v13;

LABEL_13:
    (v2[2])(v2);

    _Block_object_dispose(&v16, 8);
  }
}

void sub_1000CF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF7C0(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000CF904(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F90B0(a1);
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1000039B8;
    v17 = sub_100003888;
    v18 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CFB88;
    v12[3] = &unk_1002B6C00;
    v12[4] = &v13;
    v2 = objc_retainBlock(v12);
    if (*(a1 + 40))
    {
      v3 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:?];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 airplaneMode];
        v6 = *(a1 + 48);
        if (v6 != v5 && (v6 & 1) == 0)
        {
          if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
          {
            v7 = [v4 isPairingInProgress];
            v8 = "no";
            if (v7)
            {
              v8 = "yes";
            }

            v11 = v8;
            LogPrintF();
          }

          if ([v4 isPairingInProgress])
          {
            v9 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v9 sendMsg:31 forUID:*(a1 + 40) withArgs:0];
          }
        }

        [v4 setAirplaneMode:*(a1 + 48)];
      }

      else
      {
        v10 = v14[5];
        v14[5] = @"no USB device found";
      }
    }

    else
    {
      v4 = v14[5];
      v14[5] = @"wx address is null";
    }

    (v2[2])(v2);
    _Block_object_dispose(&v13, 8);
  }
}

void sub_1000CFB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFB88(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000CFCCC(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9104(a1);
    }

    if (*(a1 + 48) == 1)
    {
      v2 = *(*(a1 + 32) + 104);
      if (v2)
      {
        v3 = v2;
        dispatch_source_cancel(v3);
        v4 = *(a1 + 32);
        v5 = *(v4 + 104);
        *(v4 + 104) = 0;
      }
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1000039B8;
    v16 = sub_100003888;
    v17 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CFEEC;
    v11[3] = &unk_1002B6C00;
    v11[4] = &v12;
    v6 = objc_retainBlock(v11);
    if (*(a1 + 40))
    {
      if (*(a1 + 48) != 1)
      {
LABEL_15:
        (v6[2])(v6);

        _Block_object_dispose(&v12, 8);
        return;
      }

      v7 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:?];
      v8 = v7;
      if (v7)
      {
        if ([v7 isPairingInProgress])
        {
          v9 = *(a1 + 32);
          if (!v9[14])
          {
            [v9 _startPairingCompletionTimer:v8];
          }
        }
      }

      else
      {
        v10 = v13[5];
        v13[5] = @"No USB device found";
      }
    }

    else
    {
      v8 = v13[5];
      v13[5] = @"Wx address is null";
    }

    goto LABEL_15;
  }
}

void sub_1000CFEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFEEC(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF();
    }

    v1 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 32) + 8) + 40);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000D01A8(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9158(a1);
    }

    v32 = 0;
    v33[0] = &v32;
    v33[1] = 0x3032000000;
    v33[2] = sub_1000039B8;
    v33[3] = sub_100003888;
    v34 = 0;
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000D05E0;
    v29 = &unk_1002B74D0;
    v31 = &v32;
    v30 = *(a1 + 48);
    v3 = objc_retainBlock(&v26);
    if (!*(a1 + 40))
    {
      v4 = *(v33[0] + 40);
      *(v33[0] + 40) = @"Wx address is null";
      goto LABEL_33;
    }

    v4 = [*(*v1 + 12) objectForKeyedSubscript:?];
    if (v4)
    {
      v5 = *(a1 + 56);
      if (v5 == 4)
      {
        if (([*(a1 + 32) _isWxPaired:*(a1 + 40)] & 1) == 0)
        {
          if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v21 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v21 usbDeviceEnableAirPlaneMode:*(a1 + 40)];

          v22 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v22 usbDeviceUnHideDevice:*(a1 + 40)];
        }
      }

      else if (v5 == 1)
      {
        if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
        {
          v6 = *(a1 + 40);
          v7 = [v4 airplaneMode];
          v8 = "no";
          if (v7)
          {
            v8 = "yes";
          }

          v24 = v6;
          v25 = v8;
          LogPrintF();
        }

        if ([v4 airplaneMode])
        {
          v9 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v9 usbDeviceDisableAirPlaneMode:*(a1 + 40)];
        }

        else
        {
          v9 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v9 sendMsg:31 forUID:*(a1 + 40) withArgs:0];
        }

        v10 = +[AudioDeviceManager sharedAudioDeviceManager];
        [v10 usbDeviceHideDevice:*(a1 + 40)];

        [v4 setIsPairingInProgress:1];
        [v4 setPairinUIClickTick:mach_absolute_time()];
        v11 = *(*v1 + 13);
        if (v11)
        {
          v12 = v11;
          dispatch_source_cancel(v12);
          v13 = *(*v1 + 13);
          *(*v1 + 13) = 0;
        }

        v14 = *(*v1 + 14);
        if (v14)
        {
          v15 = v14;
          dispatch_source_cancel(v15);
          v16 = *(*v1 + 14);
          *(*v1 + 14) = 0;
        }

        [*v1 _invokeAnyProxCardUserActionCompletion:0 result:3];
        [*v1 _startPairingModeTimer:v4];
        v17 = *(a1 + 48);
        if (!v17)
        {
          goto LABEL_33;
        }

        v18 = objc_retainBlock(v17);
        v19 = 72;
        goto LABEL_28;
      }

      [v4 setIsPairingInProgress:0];
      v23 = *(a1 + 48);
      if (v23)
      {
        (*(v23 + 16))(v23, 0, 0);
      }

      goto LABEL_33;
    }

    v1 = v33;
    v18 = @"No AAUSBDevice found";
    v19 = 40;
LABEL_28:
    v20 = *(*v1 + v19);
    *(*v1 + v19) = v18;

LABEL_33:
    (v3[2])(v3);

    _Block_object_dispose(&v32, 8);
  }
}

void sub_1000D05AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D05E0(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    return;
  }

  if (dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v8 = *(*(*(a1 + 40) + 8) + 40);
    }

    LogPrintF();
  }

LABEL_6:
  v2 = [NSError alloc];
  v3 = off_1002F7298;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v9 = @"Error reason";
  v10 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v6 = [v2 initWithDomain:v3 code:1 userInfo:v5];

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v6);
  }
}

id sub_1000D088C(uint64_t a1)
{
  if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9204(a1);
  }

  [*(a1 + 40) setIsPairingInProgress:0];
  v2 = *(*(a1 + 48) + 104);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 48);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  v6 = [*(a1 + 48) _isWxPaired:*(a1 + 32)];
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = *(a1 + 48);

  return [v10 _invokeAnyProxCardUserActionCompletion:v8 result:v9];
}

id sub_1000D0AA0(uint64_t a1)
{
  if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F928C(a1);
  }

  [*(a1 + 40) setIsPairingInProgress:0];
  v2 = *(*(a1 + 48) + 112);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 48);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }

  v6 = [*(a1 + 48) _isWxPaired:*(a1 + 32)];
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = *(a1 + 48);

  return [v10 _invokeAnyProxCardUserActionCompletion:v8 result:v9];
}

void sub_1000D0C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D0C1C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F92D0(a1);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

void sub_1000D14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1518(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F7310 <= 10)
  {
    v1 = result;
    if (dword_1002F7310 != -1)
    {
LABEL_4:
      v3 = *(v1 + 32);
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1000D175C(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = *(a1 + 32);
    v6 = [NSString stringWithUTF8String:string_ptr];
    v7 = [v5 compare:v6 options:1];

    if (!v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

void sub_1000D1834(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAXPCEventPublisherDaemon);
    v2 = qword_1002FA200;
    qword_1002FA200 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000D1C14(id a1, int a2)
{
  if (dword_1002F7310 <= 90 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F99EC();
  }
}

void sub_1000D1FE8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F7310 <= 90 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9B00();
    }

    [*(*(a1 + 32) + 16) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9B5C(a1);
  }
}

void sub_1000D216C(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AANearbyDeviceManagerDaemon);
    v2 = qword_1002FA210;
    qword_1002FA210 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000D2430(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
}

void sub_1000D2750(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F7380 <= 5)
  {
    v4 = v2;
    if (dword_1002F7380 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      sub_1001FA038();
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000D2B80(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cbDiscovery];

  if (v2 == v3 && dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA108(v1);
  }
}

void sub_1000D2C00(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cbDiscovery];

  if (v2 == v3)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA168(v1);
    }

    v4 = *v1;

    [v4 setCbDiscovery:0];
  }
}

uint64_t sub_1000D2CA8(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = *(v3 - 1);
  v6 = [v4 cbDiscovery];

  v8 = v11;
  if (v5 == v6)
  {
    if (v11)
    {
      if (dword_1002F7380 <= 90 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA1C8();
      }

      v9 = [*v3 cbDiscovery];
      [v9 invalidate];

      v7 = [*v3 setCbDiscovery:0];
      goto LABEL_7;
    }

    if (dword_1002F7380 <= 30)
    {
      if (dword_1002F7380 != -1 || (v7 = _LogCategory_Initialize(), v8 = 0, v7))
      {
        sub_1001FA208(v3);
LABEL_7:
        v8 = v11;
      }
    }
  }

  return _objc_release_x1(v7, v8);
}

void sub_1000D3D90(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_1002F7380 <= 90 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA440(a1);
    }

LABEL_20:
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 40) _nearbyDeviceUpdated:*(a1 + 32)];
    }

    goto LABEL_22;
  }

  if (!v10 || (v6 = [v10 count], v7 = v10, !v6))
  {
    if (dword_1002F7380 <= 90 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA598(a1);
    }

    goto LABEL_20;
  }

  if (dword_1002F7380 <= 10)
  {
    if (dword_1002F7380 != -1 || (v8 = _LogCategory_Initialize(), v7 = v10, v8))
    {
      sub_1001FA4B0(v7, a1);
      v7 = v10;
    }
  }

  v9 = [v7 firstObject];
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA528(a1);
  }

  if ([*(a1 + 32) updateWithPrimaryDevice:v9])
  {
    [*(a1 + 40) _nearbyDeviceUpdated:*(a1 + 32)];
  }

LABEL_22:
}

void sub_1000D4164(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setSubscribers:v3];
  }

  v4 = [*(a1 + 32) subscribers];
  v5 = (a1 + 40);
  v6 = [v4 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) subscribers];
    [v7 addObject:*(a1 + 40)];

    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA650((a1 + 40));
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(a1 + 32) nearbyDevices];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*v5 nearbyDeviceUpdated:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000D43C4(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (v2)
  {
    v3 = [*(a1 + 32) subscribers];
    v4 = [v3 containsObject:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) subscribers];
      [v5 removeObject:*(a1 + 40)];

      if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA6B0((a1 + 40));
      }
    }
  }
}

void sub_1000D45B8(uint64_t a1)
{
  v2 = a1 + 32;
  v5 = [*(a1 + 32) identifier];
  v3 = [*(v2 + 8) deviceWithIdentifier:?];
  v4 = v3;
  if (v3)
  {
    if ([v3 updateWithPairedDevice:*v2])
    {
      if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA778();
      }

      [*(a1 + 40) _nearbyDeviceUpdated:v4];
    }

    else
    {
      sub_1001FA710(dword_1002F7380);
    }
  }

  else
  {
    sub_1001FA7B8(v2);
  }
}

void sub_1000D4870(id a1)
{
  v1 = objc_alloc_init(AASettingsTelemetry);
  v2 = qword_1002FA220;
  qword_1002FA220 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D4F80(id a1)
{
  v1 = objc_alloc_init(AAUserNotificationCenter);
  v2 = qword_1002FA230;
  qword_1002FA230 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D5284(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    v6 = [*(a1 + 32) dispatchQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

    v8 = [*(a1 + 32) notificationTimeoutMap];
    [v8 setObject:v7 forKeyedSubscript:v5];

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D53D0;
    v11[3] = &unk_1002B7B18;
    v9 = *(a1 + 32);
    v11[4] = v7;
    v11[5] = v9;
    v12 = v5;
    v13 = *(a1 + 40);
    dispatch_source_set_event_handler(v7, v11);
    v10 = *(a1 + 56);
    CUDispatchTimerSet();
    dispatch_activate(v7);
  }
}

void sub_1000D53D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) notificationTimeoutMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  if (v2 == v4)
  {
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA9B0((a1 + 48));
    }

    v5 = [*(a1 + 40) notificationTimeoutMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

    v7 = [*(a1 + 40) notificationTimeoutMap];
    [v7 setObject:0 forKeyedSubscript:*(a1 + 48)];

    v8 = v6;
    v9 = v8;
    if (v8)
    {
      dispatch_source_cancel(v8);
    }

    [*(a1 + 40) dismissUserNotificationWithIdentifier:*(a1 + 48)];
    v12 = [*(a1 + 56) categoryIdentifier];
    v10 = [*(a1 + 40) categoryDelegates];
    v11 = [v10 objectForKeyedSubscript:v12];

    if (v11)
    {
      if (dword_1002F7460 <= 10 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA9F4((a1 + 48));
      }

      if (objc_opt_respondsToSelector())
      {
        [v11 timeoutForNotificationWithContent:*(a1 + 56)];
      }
    }
  }
}

void sub_1000D5670(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = [UNNotificationRequest requestWithIdentifier:v3 content:*(a1 + 32) trigger:0];
  v5 = [*(a1 + 40) unCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5770;
  v7[3] = &unk_1002B95C8;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v7[5] = v5;
  v7[6] = v3;
  v8 = v6;
  [v5 addNotificationRequest:v4 withCompletionHandler:v7];
}

void sub_1000D5770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5844;
  block[3] = &unk_1002BB428;
  v8 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v5 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1000D5844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unCenter];

  if (v2 == v3)
  {
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAA38(a1);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v6 = *(a1 + 48);
      v5 = *(a1 + 56);
      v7 = *(v4 + 16);

      v7();
    }
  }
}

void sub_1000D5B9C(uint64_t a1)
{
  v2 = [*(a1 + 32) unCenter];
  if (!v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D5C70;
  v4[3] = &unk_1002BB450;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 getDeliveredNotificationsWithCompletionHandler:v4];
}

void sub_1000D5C70(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5D4C;
  block[3] = &unk_1002B6BB0;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1000D5D4C(uint64_t a1)
{
  v16 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v17 + 1) + 8 * i) request];
        v8 = [v7 identifier];
        if (v8)
        {
          v9 = [v7 content];
          v10 = [v9 categoryIdentifier];

          v11 = *(a1 + 40);
          v12 = v10;
          v13 = v11;
          v14 = v13;
          if (v12 != v13)
          {
            if ((v12 != 0) != (v13 == 0))
            {
              v15 = [v12 isEqual:v13];

              if (!v15)
              {
                goto LABEL_14;
              }

LABEL_12:
              [v16 addObject:v8];
            }

            else
            {
            }

LABEL_14:

            goto LABEL_15;
          }

          goto LABEL_12;
        }

LABEL_15:
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000D65B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000D65FC(void *result)
{
  if (!*(*(result[5] + 8) + 40))
  {
    return result;
  }

  v1 = result;
  if (dword_1002F7460 <= 90)
  {
    if (dword_1002F7460 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v3 = *(*(v1[5] + 8) + 40);
    }

    LogPrintF();
  }

LABEL_7:
  v2 = v1[4];

  return [v2 _deactivateAudioSession];
}

id sub_1000D66B0(uint64_t a1)
{
  if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FABA4();
  }

  v2 = *(a1 + 32);

  return [v2 _deactivateAudioSession];
}

void sub_1000D67F8(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 identifier];
        if (dword_1002F7460 <= 10 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
        {
          v14 = v8;
          v15 = *(a1 + 40);
          LogPrintF();
        }

        v9 = [*(a1 + 48) categoryMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {

          return;
        }

        v11 = [*(a1 + 48) categoryMap];
        [v11 setObject:v7 forKeyedSubscript:v8];

        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = [*(a1 + 48) categoryDelegates];
          [v13 setObject:v12 forKeyedSubscript:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 48) _userNotificationCenterSetCategories];
}

id sub_1000D6A9C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) categoryMap];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (v9)
        {
          v10 = [*(a1 + 40) categoryMap];
          [v10 setObject:0 forKeyedSubscript:v7];

          v11 = [*(a1 + 40) categoryDelegates];
          [v11 setObject:0 forKeyedSubscript:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _userNotificationCenterSetCategories];
}

void sub_1000D6F80(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = (a1 + 40);
  v5 = [*(a1 + 40) unCenter];

  if (v3 == v5)
  {
    v7 = [*(a1 + 48) notification];
    v13 = [v7 request];

    v8 = [v13 content];
    v9 = [v8 categoryIdentifier];

    v10 = [*(a1 + 40) categoryDelegates];
    v11 = [v10 objectForKeyedSubscript:v9];

    if (v11)
    {
      [v11 receivedNotificationResponse:*(a1 + 48) forRequest:v13];
      v12 = *(a1 + 56);
      if (v12)
      {
        (*(v12 + 16))();
      }
    }

    else
    {
      sub_1001FAD40();
    }
  }

  else
  {
    if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FACD0(v2, v4);
    }

    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

uint64_t sub_1000D71E4()
{
  ccaes_ecb_decrypt_mode();

  return ccecb_one_shot();
}

uint64_t sub_1000D723C()
{
  ccaes_ecb_encrypt_mode();

  return ccecb_one_shot();
}

uint64_t sub_1000DACB8()
{

  return CUXPCDecodeUInt64RangedEx();
}

void sub_1000DAE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DAEA0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEvent:v3];
}

void sub_1000DB760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DB818;
  v6[3] = &unk_1002B6D18;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000DB940(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    v5 = v1;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

void sub_1000DC21C(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AABatteryMonitorDaemon);
    v2 = qword_1002FA240;
    qword_1002FA240 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000DC92C(id a1)
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC010();
  }
}

void sub_1000DC978(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) aaController];

  if (v6 == v7)
  {
    [*(a1 + 40) _accessoryBatteryInfoMessageReceivedWithData:v5 identifier:v8];
  }
}

uint64_t sub_1000DCA00(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) aaController];

  v6 = v8;
  if (v3 == v4)
  {
    if (v8)
    {
      if (dword_1002F7670 <= 90 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FC02C();
      }

      [*(a1 + 32) invalidate];
      v5 = [*(a1 + 40) setAaController:0];
      goto LABEL_7;
    }

    if (dword_1002F7670 <= 30)
    {
      if (dword_1002F7670 != -1 || (v5 = _LogCategory_Initialize(), v6 = 0, v5))
      {
        v5 = sub_1001FC06C();
LABEL_7:
        v6 = v8;
      }
    }
  }

  return _objc_release_x1(v5, v6);
}

void sub_1000DD5C0(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setSubscribers:v3];
  }

  v4 = [*(a1 + 32) subscribers];
  v5 = (a1 + 40);
  v6 = [v4 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) subscribers];
    [v7 addObject:*(a1 + 40)];

    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC3C8((a1 + 40));
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(a1 + 32) _devices];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*v5 deviceBatteryInfoUpdated:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000DD820(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (v2)
  {
    v3 = [*(a1 + 32) subscribers];
    v4 = [v3 containsObject:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) subscribers];
      [v5 removeObject:*(a1 + 40)];

      if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FC428((a1 + 40));
      }
    }
  }
}

void sub_1000DDAE4(id a1)
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC4A4();
  }
}

void sub_1000DDB30(id a1)
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC4C0();
  }
}

void sub_1000DDB88(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1001FC4DC();
      v3 = v5;
    }
  }

  [*(a1 + 32) _connectedDeviceLost:v3];
}

void sub_1000DDC18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC51C();
    }

    v3 = [*(a1 + 32) connectedDiscovery];
    [v3 invalidate];

    [*(a1 + 32) setConnectedDiscovery:0];
  }

  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC55C(a1);
  }
}

void *sub_1000DE590(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 64);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 64);
      *(v6 + 64) = 0;
    }

    v8 = v4[5];

    return [v8 _checkForExpiredBatteries];
  }

  return result;
}

void sub_1000DEF58(uint64_t a1)
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC8C8();
  }

  [*(a1 + 32) _loadPreferences];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) _devices];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [*(a1 + 32) _applyPrefsOverrideToDevice:v7];
        [*(a1 + 32) _aaDeviceBatteryInfoUpdated:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1000DF2C8(id a1)
{
  v1 = objc_alloc_init(BTServicesDaemon);
  v2 = qword_1002FA250;
  qword_1002FA250 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DFA6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [a3 bleDevice];
  NSAppendPrintF();
  objc_storeStrong((v3 + 40), obj);
}

void sub_1000DFEBC(uint64_t a1, signed int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    v8 = v5;
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FCE24(a2);
    }

    if (a2 > 3)
    {
      if (a2 == 4)
      {
        if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FCE84(a1);
        }
      }

      else if (a2 == 6 && dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FCEC8();
      }
    }

    else if (a2 == 1)
    {
      if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FCF00();
      }

      [*(a1 + 40) openRadarforAudioQuality];
    }

    else if (a2 == 2 && dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FCEE4();
    }

    [*(*(a1 + 40) + 16) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    v5 = v8;
  }
}

id sub_1000E00E0(uint64_t a1)
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FCF1C();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_1000E04F8(uint64_t a1)
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FCFD4();
  }

  v2 = *(a1 + 32);

  return [v2 _prefsChanged];
}

uint64_t sub_1000E0560(uint64_t result)
{
  v1 = result;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001FCFF0();
    }
  }

  *(*(v1 + 32) + 192) = 1;
  return result;
}

id sub_1000E05C0(uint64_t a1)
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD00C();
  }

  v2 = *(a1 + 32);

  return [v2 _audioQualityShowBanner:1 title:@"AirPods Audio Experience" deviceAddressString:@"deviceAddressString" messageKey:@"Click here to report audio quality related feedback" messageArgs:0 timeoutSeconds:10.0];
}

_BYTE *sub_1000E0668(uint64_t a1)
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD028();
  }

  result = *(a1 + 32);
  if ((result[192] & 1) == 0)
  {
    [result showCrashBannerIfNeeded:&off_1002CC0F8];
    result = *(a1 + 32);
  }

  result[192] = 0;
  return result;
}

void sub_1000E06DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD044();
    }

    [*(*(a1 + 32) + 40) invalidate];
    v3 = v4;
  }
}

id sub_1000E07DC(uint64_t a1)
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD084();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3 != -1)
  {
    notify_cancel(v3);
    *(*(a1 + 32) + 64) = -1;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 60);
  if (v4 != -1)
  {
    notify_cancel(v4);
    *(*(a1 + 32) + 60) = -1;
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 8);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(*(a1 + 32) + 8) = -1;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 144))
  {
    os_state_remove_handler();
    *(*(a1 + 32) + 144) = 0;
    v2 = *(a1 + 32);
  }

  [*(v2 + 184) invalidate];
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = 0;

  [*(*(a1 + 32) + 40) invalidate];
  [*(a1 + 32) _cbConnectedDiscoveryEnsureStopped];
  [*(a1 + 32) _shareAudioActionScannerEnsureStopped];
  v8 = *(a1 + 32);

  return [v8 _shareAudioConnectedDiscoveryEnsureStopped];
}

void sub_1000E1050(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD2AC(a2);
  }

  [*(a1 + 32) invalidate];
}

id sub_1000E10DC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _fileRadarForFWCrash:v3];
}

void sub_1000E18FC(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD388(a2);
  }

  [*(a1 + 32) invalidate];
}

void sub_1000E1C4C(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD43C(a2);
  }

  [*(a1 + 32) invalidate];
}

id sub_1000E1CD8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _fileRadarForHIDLag:v3];
}

void sub_1000E20A0(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    v8 = v5;
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD4F8(a2);
    }

    [*(*(a1 + 40) + 24) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v5 = v8;
  }
}

void sub_1000E22AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD574();
    }

    [*(*(a1 + 32) + 32) invalidate];
  }

  else
  {
    [*(a1 + 32) _update];
  }
}

void *sub_1000E2A34(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _shareAudioActionScannerDeviceFound:a2];
  }

  return result;
}

void sub_1000E2A58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(*(a1 + 32) + 72) == *(a1 + 40))
  {
    v6 = v3;
    if (dword_1002F7810 <= 90 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD6AC();
    }

    [*(a1 + 40) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;

    v3 = v6;
  }
}

void *sub_1000E2D34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[11])
  {
    return [result _shareAudioConnectedDeviceFound:a2];
  }

  return result;
}

void *sub_1000E2D50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[11])
  {
    return [result _shareAudioConnectedDeviceLost:a2];
  }

  return result;
}

void sub_1000E2D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1002F7810 <= 90 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD724();
    }

    [*(*(a1 + 32) + 88) invalidate];
  }

  else
  {
    [*(a1 + 32) _update];
  }
}

void sub_1000E3310(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 104))
  {
    v8 = v5;
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD860(a2);
    }

    [*(*(a1 + 40) + 104) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 104);
    *(v6 + 104) = 0;

    v5 = v8;
  }
}

void *sub_1000E33C0(void *result)
{
  if (result[4] == *(result[5] + 104))
  {
    v11 = v1;
    v5 = result;
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD8C0();
    }

    [v5[4] invalidate];
    v6 = v5[5];
    v7 = *(v6 + 104);
    *(v6 + 104) = 0;

    v8 = v5[5];
    v9 = v5[6];
    v10 = v5[7];

    return [v8 _shareAudioSessionStartWithDarwinDevice:v9 cbDevice:v10];
  }

  return result;
}

void *sub_1000E35F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[14])
  {
    return [result _shareAudioSessionProgressEvent:a2 info:a3];
  }

  return result;
}

void sub_1000E4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E40C4(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_1000E4328(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDBF4(a2);
  }

  [*(a1 + 32) invalidate];
}

id sub_1000E43B4(uint64_t a1)
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDC54();
  }

  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void sub_1000E467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  (*(v10 + 16))(v10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E46C8(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_1000E4964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E499C(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_1000E4D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E4D78(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    v7 = v2[4];
    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(v2[5] + 16);

  return v5();
}

void sub_1000E4E44(int8x16_t *a1, int a2, void *a3)
{
  v5 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v6 = vextq_s8(a1[2], a1[2], 8uLL);
  v7 = a1[2].i64[0];
  v10[2] = sub_1000E4EF4;
  v10[3] = &unk_1002BB7E0;
  v8 = *(v7 + 32);
  v11 = v6;
  v13 = a2;
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v10);
}

void sub_1000E4EF4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 40))
  {
    v4 = [*(v2 + 56) remoteObjectProxy];
    [v4 shareAudioProgressEvent:*(a1 + 56) info:*(a1 + 48)];
  }
}

void sub_1000E5140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E5178(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F76E0 <= 90)
  {
    v1 = result;
    if (dword_1002F76E0 != -1)
    {
LABEL_4:
      v3 = *(v1 + 32);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v2 = *(*(*(v1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

  return result;
}

id sub_1000E53EC(uint64_t a1)
{
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDFCC(a1);
  }

  [*(a1 + 32) _reportProgress:10];
  v2 = *(a1 + 32);

  return [v2 _run];
}

void *sub_1000E54D8(void *result)
{
  if ((*(result[4] + 181) & 1) == 0)
  {
    v2 = result;
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE034();
    }

    *(v2[4] + 181) = 1;
    v3 = v2[4];

    return [v3 _invalidate];
  }

  return result;
}

void *sub_1000E59F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bleScannerProxPairingDeviceFound:a2];
  }

  return result;
}

void *sub_1000E5A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bleScannerProxPairingDeviceFound:a2];
  }

  return result;
}

uint64_t sub_1000E5A30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE0E8();
      }

      [*(*(a1 + 40) + 24) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 24);
      *(v5 + 24) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7880 <= 30)
    {
      v8 = 0;
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001FE128();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void *sub_1000E5D54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bleScannerNearbyInfoDeviceFound:a2];
  }

  return result;
}

void *sub_1000E5D70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bleScannerNearbyInfoDeviceFound:a2];
  }

  return result;
}

uint64_t sub_1000E5D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE17C();
      }

      [*(*(a1 + 40) + 16) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7880 <= 30)
    {
      v8 = 0;
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001FE1BC();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000E5FD8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  v5 = *(a1 + 40);
  if (*(a1 + 32) == v5[24])
  {
    v8 = a4;
    [v5 _runShareAudioServiceConfigRequest:a3 responseHandler:?];
  }

  else
  {
    v6 = a4;
    v8 = BTErrorF();
    a4[2](v6);
  }
}

void sub_1000E6088(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  v5 = *(a1 + 40);
  if (*(a1 + 32) == v5[24])
  {
    v8 = a4;
    [v5 _runShareAudioServiceConnectRequest:a3 responseHandler:?];
  }

  else
  {
    v6 = a4;
    v8 = BTErrorF();
    a4[2](v6);
  }
}

void sub_1000E63B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E63E8(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

void sub_1000E668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E66C4(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 == -1)
    {
      v3 = _LogCategory_Initialize();
      v1 = *(v2 + 40);
      if (!v3)
      {
        goto LABEL_7;
      }

      v6 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = *(v2 + 40);
  }

LABEL_7:
  v4 = *(*(v1 + 8) + 40);
  v5 = *(*(v2 + 32) + 16);

  return v5();
}

uint64_t sub_1000E69F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE26C();
      }

      [*(*(a1 + 40) + 8) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7880 <= 30)
    {
      v8 = 0;
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001FE2AC();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000E6F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 160))
  {
    v8 = v3;
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE328();
    }

    [*(*(a1 + 40) + 160) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 160);
    *(v4 + 160) = 0;

    *(*(a1 + 40) + 132) = 3;
    v6 = *(a1 + 40);
    if (v8)
    {
      [v6 _reportError:v8];
    }

    else
    {
      v7 = NSErrorF();
      [v6 _reportError:v7];
    }

    v3 = v8;
  }
}

uint64_t sub_1000E7030(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 160) && dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1)
    {
      return sub_1001FE368();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001FE368();
    }
  }

  return result;
}

uint64_t sub_1000E7088(uint64_t result)
{
  if (*(result + 32) == *(*(result + 40) + 160) && dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1)
    {
      return sub_1001FE384();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001FE384();
    }
  }

  return result;
}

void *sub_1000E70E0(void *result)
{
  v2 = result[5];
  if (result[4] == *(v2 + 160) && *(v2 + 132) == 1)
  {
    v3 = result;
    *(v2 + 132) = 4;
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE3A0();
    }

    v4 = v3[5];

    return [v4 _run];
  }

  return result;
}

void sub_1000E7170(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 160))
  {
    v7 = v3;
    v4 = v3;
    if (v4)
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE3BC();
      }

      [*(*(a1 + 40) + 160) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 160);
      *(v5 + 160) = 0;

      *(*(a1 + 40) + 132) = 3;
      [*(a1 + 40) _reportError:v4];
    }

    else if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE3FC();
    }

    v3 = v7;
  }
}

void sub_1000E73C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 160))
  {
    v5 = v3;
    v4 = v3;
    if (v4)
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE434();
      }

      *(*(a1 + 40) + 152) = 3;
      [*(a1 + 40) _reportError:v4];
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE474();
      }

      [*(a1 + 40) _reportProgressTriggeredDevice:210];
      *(*(a1 + 40) + 152) = 4;
      [*(a1 + 40) _run];
    }

    v3 = v5;
  }
}

void sub_1000E77A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != *(*(a1 + 40) + 160))
  {
    goto LABEL_13;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1 || _LogCategory_Initialize())
    {
      sub_1001FE4C8();
    }

LABEL_6:
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE508(a1);
    }
  }

  [*(a1 + 40) _reportProgressTriggeredDevice:220];
  v5 = *(a1 + 48);
  if (*(*(a1 + 40) + 236) == 1)
  {
    v6 = @"_shCf";
  }

  else
  {
    v6 = @"_shAu";
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E78E8;
  v7[3] = &unk_1002BB898;
  v8 = *(a1 + 32);
  [v8 sendRequestID:v6 options:0 request:v5 responseHandler:v7];
LABEL_13:
}

void *sub_1000E78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[20])
  {
    return [result _runGuestiOSShareAudioProcessResponse:a4 error:a2];
  }

  return result;
}

void sub_1000E7AF8(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = (a1 + 5);
  if (a1[4] == *(a1[5] + 160))
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE5E8(v6);
    }

    objc_storeStrong((a1[5] + 136), a2);
    v21 = 0;
    v9 = a1[6];
    CFStringGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    v11 = v10;
    if (v10)
    {
      v12 = *v8;
      v13 = *(*v8 + 59);
      v14 = v10;
      if (v13 == 1)
      {
        v15 = v12[9];
        v12[9] = v14;
      }

      else
      {
        v18 = v12[10];
        v12[10] = v14;

        v19 = a1[6];
        *(a1[5] + 88) = CFDictionaryGetInt64Ranged();
        v20 = a1[6];
        *(a1[5] + 112) = CFDictionaryGetInt64Ranged();
      }

      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE654((a1 + 5));
      }

      *(*v8 + 42) = 4;
      [*v8 _run];
    }

    else
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE6A4(&v21);
      }

      *(*v8 + 42) = 3;
      v16 = *v8;
      v17 = NSErrorF();
      [v16 _reportError:v17];
    }
  }
}

void *sub_1000E7EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[20])
  {
    return [result _runGuestiOSShareAudioConnectProcessResponse:a4 error:a2];
  }

  return result;
}

void sub_1000E82C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 104))
  {
    v5 = v3;
    v4 = v3;
    if (v4)
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE7C8();
      }

      *(*(a1 + 40) + 92) = 3;
      [*(a1 + 40) _reportError:v4];
    }

    else
    {
      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE808();
      }

      *(*(a1 + 40) + 92) = 4;
      [*(a1 + 40) _reportProgressTriggeredDevice:310];
      [*(a1 + 40) _run];
    }

    v3 = v5;
  }
}

id sub_1000E8FEC(uint64_t a1)
{
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FEE58();
  }

  v2 = *(a1 + 32);

  return [v2 _pickableRoutesChanged];
}

id sub_1000E97EC(id result)
{
  v1 = result;
  if (dword_1002F7880 <= 30)
  {
    if (dword_1002F7880 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001FF050(v1);
    }
  }

  v2 = *(v1 + 32);
  if (*(v2 + 68) == 1)
  {
    *(v2 + 64) = *(v1 + 40);
    *(*(v1 + 32) + 68) = 4;
    v3 = *(v1 + 32);

    return [v3 _run];
  }

  return result;
}

void sub_1000E9C00(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9CB4;
  block[3] = &unk_1002BB940;
  v8 = a2;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

void sub_1000E9CB4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v9 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v2 = [*(a1 + 32) userInfo];
    [v9 setUserInfo:v2];

    v3 = [*(a1 + 32) proxCardDefinition];
    v4 = [SBSRemoteAlertHandle newHandleWithDefinition:v3 configurationContext:v9];
    [*(a1 + 32) setProxCardHandle:v4];

    v5 = [*(a1 + 32) proxCardHandle];

    if (v5)
    {
      v6 = [*(a1 + 32) proxCardHandle];
      [v6 registerObserver:*(a1 + 32)];

      v7 = [*(a1 + 32) proxCardHandle];
      [v7 activateWithContext:0];

      if (dword_1002F78F0 <= 30 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FF124();
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v8 = NSErrorF();
      if (dword_1002F78F0 <= 90 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FF140();
      }

      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) _dismissProxCardWithError:v8];
    }
  }

  else
  {
    v9 = NSErrorF();
    if (dword_1002F78F0 <= 90 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FF0E4();
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _dismissProxCardWithError:v9];
  }
}

uint64_t sub_1000EA4F0()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300AF0);
  sub_1000EE91C(v4, qword_100300AF0);
  URL.init(string:)();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_1000EAE74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = *(*(sub_1000EE870(&qword_1002F7EF0, &unk_100226C90) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v93 = &v89 - v7;
  __chkstk_darwin(v6);
  v96 = &v89 - v8;
  v9 = type metadata accessor for Date();
  v97 = *(v9 - 8);
  v98 = v9;
  v10 = *(v97 + 64);
  v11 = __chkstk_darwin(v9);
  v92 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v89 - v13;
  v14 = type metadata accessor for UUID();
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  __chkstk_darwin(v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000EE870(&qword_1002F7D70, &qword_100226B18);
  v100 = *(v18 - 8);
  v19 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v21 = &v89 - v20;
  v22 = type metadata accessor for DeviceRecord();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v26 = a1[4];
  v102 = a1;
  sub_1000EF78C(a1, v27);
  sub_1000EF7D0();
  v28 = v101;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return sub_1000EF824(v102);
  }

  v89 = v22;
  v90 = v14;
  v29 = v100;
  v101 = v25;
  v104 = 0;
  sub_1000EF8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v101;
  *v101 = v103;
  LOBYTE(v103) = 1;
  sub_1000EE76C(&unk_1002F8750, &type metadata accessor for UUID);
  v32 = v17;
  v33 = v90;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v32;
  v35 = v89;
  (*(v99 + 32))(v31 + v89[5], v34, v33);
  LOBYTE(v103) = 2;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v37 = (v31 + v35[6]);
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v103) = 3;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v40 = (v31 + v35[7]);
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v103) = 4;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = (v31 + v35[8]);
  *v46 = v44;
  v46[1] = v45;
  LOBYTE(v103) = 5;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  v51 = (v31 + v35[9]);
  *v51 = v49;
  v51[1] = v50;
  LOBYTE(v103) = 6;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0;
  }

  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  v56 = (v31 + v35[10]);
  *v56 = v54;
  v56[1] = v55;
  LOBYTE(v103) = 7;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v58)
  {
    v59 = v57;
  }

  else
  {
    v59 = 0;
  }

  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  v61 = v89;
  v62 = (v31 + v89[11]);
  *v62 = v59;
  v62[1] = v60;
  v63 = v61[12];
  static Date.now.getter();
  LOBYTE(v103) = 8;
  sub_1000EE76C(&qword_1002F7D90, &type metadata accessor for Date);
  v64 = v96;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v65 = v21;
  v66 = *(v97 + 48);
  v99 = v97 + 48;
  v90 = v66;
  if (v66(v64, 1, v98) == 1)
  {
    v67 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v101, *(v101 + 1));
    if (!isa)
    {
      isa = sub_1000F8490(v101).super.isa;
    }

    v69 = isa;
    *&v103 = isa;
    sub_1000EC524(&v103);
    objc_autoreleasePoolPop(v67);
    v70 = [v69 modificationDate];

    if (v70)
    {
      v71 = v92;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v29 + 8))(v65, v18);
      v72 = v97;
      v73 = *(v97 + 32);
      v74 = v93;
      v75 = v71;
      v76 = v98;
      v73(v93, v75, v98);
      (*(v72 + 56))(v74, 0, 1, v76);
      v73(v95, v74, v76);
    }

    else
    {
      v89 = *(v97 + 56);
      (v89)(v93, 1, 1, v98);
      v77 = objc_autoreleasePoolPush();
      v78 = sub_100169D38(*v101, *(v101 + 1));
      if (!v78)
      {
        v78 = sub_1000F8490(v101).super.isa;
      }

      v79 = v78;
      *&v103 = v78;
      sub_1000EC524(&v103);
      objc_autoreleasePoolPop(v77);
      v80 = [v79 creationDate];

      if (v80)
      {
        v81 = v92;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v29 + 8))(v65, v18);
        v82 = *(v97 + 32);
        v83 = v91;
        v84 = v81;
        v85 = v98;
        v82(v91, v84, v98);
        (v89)(v83, 0, 1, v85);
        v82(v95, v83, v85);
      }

      else
      {
        v86 = v91;
        v87 = v98;
        (v89)(v91, 1, 1, v98);
        static Date.now.getter();
        (*(v29 + 8))(v65, v18);
        if (v90(v86, 1, v87) != 1)
        {
          sub_1000EEE6C(v91, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if (v90(v93, 1, v98) != 1)
      {
        sub_1000EEE6C(v93, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    if (v90(v96, 1, v98) != 1)
    {
      sub_1000EEE6C(v96, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  else
  {
    (*(v29 + 8))(v21, v18);
    (*(v97 + 32))(v95, v96, v98);
  }

  v88 = v101;
  (*(v97 + 40))(&v101[v63], v95, v98);
  sub_1000EF918(v88, v94);
  sub_1000EF824(v102);
  return sub_1000EF97C(v88);
}

void sub_1000EBA44(id a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v91 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v94 = &v84 - v9;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v92 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v93 = &v84 - v15;
  v16 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v84 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v96 = v20;
  v97 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v95 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x6552656369766544 && v24 == 0xEC00000064726F63)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_1000EEDCC();
      swift_allocError();
      *v34 = 0;
      swift_willThrow();
LABEL_28:

      return;
    }
  }

  v90 = v11;
  v26 = [a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v26 objectForKeyedSubscript:v27];

  if (!v28 || (v100 = v28, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_25:
    static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100226100;
    *(v72 + 56) = sub_1000EEE20();
    *(v72 + 64) = sub_1000EE76C(&qword_1002F7BE0, sub_1000EEE20);
    *(v72 + 32) = a1;
    a1 = a1;
    os_log(_:dso:log:_:_:)();

    sub_1000EEDCC();
    swift_allocError();
    *v73 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v86 = v2;
  v87 = a2;
  v88 = v10;
  v29 = v99;
  v85 = v98;
  v30 = [a1 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v32 = v96;
  v33 = v97;
  if ((*(v97 + 48))(v19, 1, v96) == 1)
  {

    sub_1000EEE6C(v19, &qword_1002F8000, &unk_1002262C0);
    goto LABEL_25;
  }

  v84 = v29;
  v35 = v95;
  (*(v33 + 32))(v95, v19, v32);
  v36 = v32;
  v37 = String._bridgeToObjectiveC()();
  v38 = [v26 objectForKeyedSubscript:v37];

  if (!v38)
  {
    (*(v33 + 8))(v35, v36);
LABEL_24:

    goto LABEL_25;
  }

  v100 = v38;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v33 + 8))(v95, v36);
    goto LABEL_24;
  }

  v39 = v98;
  v40 = v99;
  v41 = type metadata accessor for DeviceRecord();
  v42 = *(v33 + 16);
  v43 = v87;
  v42(v87 + v41[5], v95, v36);
  v44 = (v43 + v41[6]);
  v45 = v84;
  *v44 = v85;
  v44[1] = v45;
  v46 = (v43 + v41[7]);
  *v46 = v39;
  v46[1] = v40;
  CKRecordKeyValueSetting.subscript.getter();
  v48 = v98;
  v47 = v99;
  if (!v99)
  {
    v48 = 0;
    v47 = 0xE000000000000000;
  }

  v49 = (v43 + v41[8]);
  *v49 = v48;
  v49[1] = v47;
  CKRecordKeyValueSetting.subscript.getter();
  v51 = v98;
  v50 = v99;
  if (!v99)
  {
    v51 = 0;
    v50 = 0xE000000000000000;
  }

  v52 = (v43 + v41[9]);
  *v52 = v51;
  v52[1] = v50;
  CKRecordKeyValueSetting.subscript.getter();
  v54 = v98;
  v53 = v99;
  if (!v99)
  {
    v54 = 0;
    v53 = 0xE000000000000000;
  }

  v55 = (v43 + v41[10]);
  *v55 = v54;
  v55[1] = v53;
  CKRecordKeyValueSetting.subscript.getter();
  v57 = v98;
  v56 = v99;
  if (!v99)
  {
    v57 = 0;
    v56 = 0xE000000000000000;
  }

  ObjectType = v41;
  v58 = (v43 + v41[11]);
  *v58 = v57;
  v58[1] = v56;
  v59 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v59];
  [v59 finishEncoding];
  v60 = [v59 encodedData];
  v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;

  *v43 = v61;
  v43[1] = v63;
  v64 = [a1 modificationDate];
  if (v64)
  {
    v65 = v92;
    v66 = v64;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v97 + 8))(v95, v36);
    v67 = v90;
    v68 = *(v90 + 32);
    v69 = v94;
    v70 = v88;
    v68(v94, v65, v88);
    (*(v67 + 56))(v69, 0, 1, v70);
    v71 = v93;
    v68(v93, v69, v70);
  }

  else
  {
    v74 = v90;
    v75 = *(v90 + 56);
    v70 = v88;
    v75(v94, 1, 1, v88);
    v76 = [a1 creationDate];
    if (v76)
    {
      v85 = v75;
      v77 = v92;
      v78 = v76;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v97 + 8))(v95, v96);
      v79 = *(v74 + 32);
      v80 = v91;
      v79(v91, v77, v70);
      v85(v80, 0, 1, v70);
      v71 = v93;
      v79(v93, v80, v70);
      v81 = (*(v74 + 48))(v94, 1, v70);
    }

    else
    {
      v82 = v91;
      v75(v91, 1, 1, v70);
      v71 = v93;
      static Date.now.getter();

      swift_unknownObjectRelease();
      (*(v97 + 8))(v95, v96);
      v83 = *(v74 + 48);
      if (v83(v82, 1, v70) != 1)
      {
        sub_1000EEE6C(v82, &qword_1002F7EF0, &unk_100226C90);
      }

      v70 = v88;
      v81 = v83(v94, 1, v88);
    }

    v67 = v90;
    if (v81 != 1)
    {
      sub_1000EEE6C(v94, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v67 + 32))(v43 + *(ObjectType + 48), v71, v70);
}

uint64_t sub_1000EC524(id *a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100226100;
  v4 = *a1;
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_1000EE954();
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  v9 = [v4 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v10 = type metadata accessor for DeviceRecord();
  v11 = (v1 + v10[6]);
  v13 = *v11;
  v12 = v11[1];
  if (!v47)
  {
    goto LABEL_8;
  }

  if (v46 != v13 || v47 != v12)
  {
    v14 = *v11;
    v15 = v11[1];
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v46 = v13;
    v47 = v12;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_9;
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = (v1 + v10[7]);
  v19 = *v17;
  v18 = v17[1];
  if (!v47)
  {
    goto LABEL_14;
  }

  if (v46 == v19 && v47 == v18)
  {

    goto LABEL_15;
  }

  v20 = *v17;
  v21 = v17[1];
  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v22 & 1) == 0)
  {
LABEL_14:
    v46 = v19;
    v47 = v18;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_15:
  CKRecordKeyValueSetting.subscript.getter();
  v23 = (v1 + v10[8]);
  v25 = *v23;
  v24 = v23[1];
  if (!v47)
  {
    goto LABEL_20;
  }

  if (v46 != v25 || v47 != v24)
  {
    v26 = *v23;
    v27 = v23[1];
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      goto LABEL_21;
    }

LABEL_20:
    v46 = v25;
    v47 = v24;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v28 = (v1 + v10[9]);
  v30 = *v28;
  v29 = v28[1];
  if (!v47)
  {
    goto LABEL_26;
  }

  if (v46 == v30 && v47 == v29)
  {

    goto LABEL_27;
  }

  v31 = *v28;
  v32 = v28[1];
  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v45 & 1) == 0)
  {
LABEL_26:
    v46 = v30;
    v47 = v29;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_27:
  CKRecordKeyValueSetting.subscript.getter();
  v33 = (v1 + v10[10]);
  v35 = *v33;
  v34 = v33[1];
  if (!v47)
  {
    goto LABEL_32;
  }

  if (v46 != v35 || v47 != v34)
  {
    v36 = *v33;
    v37 = v33[1];
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_33;
    }

LABEL_32:
    v46 = v35;
    v47 = v34;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_33;
  }

LABEL_33:
  CKRecordKeyValueSetting.subscript.getter();
  v39 = (v1 + v10[11]);
  if (!v47)
  {
    goto LABEL_38;
  }

  if (v46 == *v39 && v47 == v39[1])
  {
    swift_unknownObjectRelease();
  }

  v41 = *v39;
  v42 = v39[1];
  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0)
  {
LABEL_38:

    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000ECB0C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000ECFA8(a1))
  {
    v8 = [a1 nickname];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = *(type metadata accessor for DeviceRecord() + 28);
      v14 = (v1 + v13);
      v15 = *(v1 + v13) == v10 && *(v1 + v13 + 8) == v12;
      if (v15 || (v16 = *(v1 + v13 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v14 = v10;
        v14[1] = v12;
      }
    }

    v24 = [a1 modelNumber];
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = *(type metadata accessor for DeviceRecord() + 32);
      v30 = (v1 + v29);
      v31 = *(v1 + v29) == v26 && *(v1 + v29 + 8) == v28;
      if (v31 || (v32 = *(v1 + v29 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v30 = v26;
        v30[1] = v28;
      }
    }

    v33 = [a1 manufacturer];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = *(type metadata accessor for DeviceRecord() + 36);
      v39 = (v1 + v38);
      if (*(v1 + v38) == v35 && *(v1 + v38 + 8) == v37 || (v40 = *(v1 + v38 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v39 = v35;
        v39[1] = v37;
      }
    }

    v41 = [a1 productID];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = *(type metadata accessor for DeviceRecord() + 40);
      v47 = (v1 + v46);
      if (*(v1 + v46) == v43 && *(v1 + v46 + 8) == v45 || (v48 = *(v1 + v46 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v47 = v43;
        v47[1] = v45;
      }
    }

    v49 = [a1 vendorID];
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = *(type metadata accessor for DeviceRecord() + 44);
      v55 = (v1 + v54);
      if (*(v1 + v54) == v51 && *(v1 + v54 + 8) == v53 || (v56 = *(v1 + v54 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
      }

      else
      {

        *v55 = v51;
        v55[1] = v53;
      }
    }

    static Date.now.getter();
    v57 = type metadata accessor for DeviceRecord();
    return (*(v4 + 40))(v1 + *(v57 + 48), v7, v3);
  }

  else
  {
    static os_log_type_t.info.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100226100;
    v18 = a1;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000EE954();
    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1000ECFA8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 nickname];
    if (v3)
    {

      v4 = [v2 nickname];
      if (!v4)
      {
        goto LABEL_36;
      }

      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = (v1 + *(type metadata accessor for DeviceRecord() + 28));
      if (v6 == *v9 && v8 == v9[1])
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v13 = [v2 manufacturer];
    if (v13)
    {

      v14 = [v2 manufacturer];
      if (!v14)
      {
        goto LABEL_36;
      }

      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = (v1 + *(type metadata accessor for DeviceRecord() + 36));
      if (v16 == *v19 && v18 == v19[1])
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v21 = [v2 modelNumber];
    if (v21)
    {

      v22 = [v2 modelNumber];
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = (v1 + *(type metadata accessor for DeviceRecord() + 32));
      if (v24 == *v27 && v26 == v27[1])
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v29 = [v2 productID];
    if (v29)
    {

      v30 = [v2 productID];
      if (!v30)
      {
        goto LABEL_36;
      }

      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = (v1 + *(type metadata accessor for DeviceRecord() + 40));
      if (v32 == *v35 && v34 == v35[1])
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v37 = [v2 vendorID];
    if (!v37)
    {
LABEL_35:

      v12 = 0;
      return v12 & 1;
    }

    v38 = [v2 vendorID];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = (v1 + *(type metadata accessor for DeviceRecord() + 44));
      if (v40 != *v43 || v42 != v43[1])
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v45 ^ 1;
        return v12 & 1;
      }

      goto LABEL_35;
    }

LABEL_36:

    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t sub_1000ED308(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74654D64756F6C63;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x656D616E6B63696ELL;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49746375646F7270;
    v2 = 0x4449726F646E6576;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D754E6C65646F6DLL;
    if (a1 != 4)
    {
      v3 = 0x74636166756E616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1000ED450()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000ED498()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000ED4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EFE28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000ED524(uint64_t a1)
{
  v2 = sub_1000EF7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ED560(uint64_t a1)
{
  v2 = sub_1000EF7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ED59C(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F7D98, &qword_100226B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v34[-v8];
  v10 = a1[4];
  sub_1000EF78C(a1, a1[3]);
  sub_1000EF7D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v35 = *v3;
  v36 = v11;
  v34[15] = 0;
  sub_1000EE9F4(v35, v11);
  sub_1000EF9D8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_1000EF870(v35, v36);
  }

  else
  {
    sub_1000EF870(v35, v36);
    v12 = type metadata accessor for DeviceRecord();
    v13 = v12[5];
    LOBYTE(v35) = 1;
    type metadata accessor for UUID();
    sub_1000EE76C(&qword_1002F8340, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v35) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = (v3 + v12[7]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v35) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = (v3 + v12[8]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v35) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = (v3 + v12[9]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v35) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = (v3 + v12[10]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v35) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = (v3 + v12[11]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v35) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = v12[12];
    LOBYTE(v35) = 8;
    type metadata accessor for Date();
    sub_1000EE76C(&qword_1002F7DB0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000ED91C()
{
  v1 = v0;
  Hasher.init(_seed:)();
  v2 = *v0;
  v3 = v0[1];
  Data.hash(into:)();
  v4 = type metadata accessor for DeviceRecord();
  v5 = v4[5];
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = (v1 + v4[6]);
  v7 = *v6;
  v8 = v6[1];
  String.hash(into:)();
  v9 = (v1 + v4[7]);
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = (v1 + v4[8]);
  v13 = *v12;
  v14 = v12[1];
  String.hash(into:)();
  v15 = (v1 + v4[9]);
  v16 = *v15;
  v17 = v15[1];
  String.hash(into:)();
  v18 = (v1 + v4[10]);
  v19 = *v18;
  v20 = v18[1];
  String.hash(into:)();
  v21 = (v1 + v4[11]);
  v22 = *v21;
  v23 = v21[1];
  String.hash(into:)();
  v24 = v4[12];
  type metadata accessor for Date();
  sub_1000EE76C(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EDADC()
{
  v1 = *v0;
  sub_1000EE9F4(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1000EDB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000EDB8C(uint64_t a1, int *a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = (v4 + a2[6]);
  v9 = *v8;
  v10 = v8[1];
  String.hash(into:)();
  v11 = (v4 + a2[7]);
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = (v4 + a2[8]);
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v17 = (v4 + a2[9]);
  v18 = *v17;
  v19 = v17[1];
  String.hash(into:)();
  v20 = (v4 + a2[10]);
  v21 = *v20;
  v22 = v20[1];
  String.hash(into:)();
  v23 = (v4 + a2[11]);
  v24 = *v23;
  v25 = v23[1];
  String.hash(into:)();
  v26 = a2[12];
  type metadata accessor for Date();
  sub_1000EE76C(&qword_1002F7DE0, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000EDCF4(uint64_t a1, int *a2)
{
  v4 = v2;
  Hasher.init(_seed:)();
  v5 = *v2;
  v6 = v2[1];
  Data.hash(into:)();
  v7 = a2[5];
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F8350, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v8 = (v4 + a2[6]);
  v9 = *v8;
  v10 = v8[1];
  String.hash(into:)();
  v11 = (v4 + a2[7]);
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = (v4 + a2[8]);
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v17 = (v4 + a2[9]);
  v18 = *v17;
  v19 = v17[1];
  String.hash(into:)();
  v20 = (v4 + a2[10]);
  v21 = *v20;
  v22 = v20[1];
  String.hash(into:)();
  v23 = (v4 + a2[11]);
  v24 = *v23;
  v25 = v23[1];
  String.hash(into:)();
  v26 = a2[12];
  type metadata accessor for Date();
  sub_1000EE76C(&qword_1002F7DE0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EDE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000EDF54@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

__n128 sub_1000EDFF8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000EE008(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000EE028(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000EE064(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000EE0DC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000EE15C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000EE1A0(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7D20, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000EE20C(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7D20, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000EE278(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000EE2EC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_1000EE338()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_1000EE390()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EE408()
{
  sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter();
}

uint64_t sub_1000EE474(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000EE4E0(void *a1, uint64_t a2)
{
  v4 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000EE594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000EE610()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EE670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1000EE76C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EE7B4(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7DC8, type metadata accessor for FileAttributeKey);
  v3 = sub_1000EE76C(&unk_1002F7DD0, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000EE870(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_1000EE8B8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000EE91C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000EE954()
{
  result = qword_1002F7BB0;
  if (!qword_1002F7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7BB0);
  }

  return result;
}

uint64_t type metadata accessor for DeviceRecord()
{
  result = qword_1002F7C70;
  if (!qword_1002F7C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EE9F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000EEA48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000EEA90(uint64_t a1)
{
  v2 = sub_1000EE76C(&qword_1002F7DB8, type metadata accessor for FileProtectionType);
  v3 = sub_1000EE76C(&qword_1002F7DC0, type metadata accessor for FileProtectionType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000EEB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EE76C(&qword_1002F9330, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000EEBD0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000EEC0C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000EEC60()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000EECD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1000EED5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000EEDCC()
{
  result = qword_1002F7BD0;
  if (!qword_1002F7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7BD0);
  }

  return result;
}

unint64_t sub_1000EEE20()
{
  result = qword_1002F85A0;
  if (!qword_1002F85A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F85A0);
  }

  return result;
}

uint64_t sub_1000EEE6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000EE870(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for DeviceRecord.DeviceRecordError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceRecord.DeviceRecordError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000EF0B8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000EF168(uint64_t a1)
{
  *(a1 + 8) = sub_1000EE76C(&qword_1002F9C20, type metadata accessor for DeviceRecord);
  result = sub_1000EE76C(&qword_1002F7CD0, type metadata accessor for DeviceRecord);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000EF3E8()
{
  result = qword_1002F7D18;
  if (!qword_1002F7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7D18);
  }

  return result;
}

void sub_1000EF570(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000EF608()
{
  result = qword_1002F7D48;
  if (!qword_1002F7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F7D48);
  }

  return result;
}

uint64_t sub_1000EF734(uint64_t a1)
{
  result = sub_1000EE76C(&qword_1002F7D68, type metadata accessor for DeviceRecord);
  *(a1 + 8) = result;
  return result;
}

void *sub_1000EF78C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}