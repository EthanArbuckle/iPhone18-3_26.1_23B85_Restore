void sub_10005BDAC(id *a1)
{
  if ([*(a1[4] + 1) passesAllAccess] && (v2 = a1[4], v2[12]))
  {
    v3 = [v2[11] passesOfType:1];
    v4 = [a1[4] _entitlementFilteredPasses:v3];
    v5 = [v4 allObjects];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005BFA4;
    v16[3] = &unk_10083F710;
    v17 = a1[5];
    v6 = [v5 pk_objectsPassingTest:v16];

    v7 = PDDefaultPaymentPassUniqueIdentifier();
    v8 = *(a1[4] + 12);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10005C0E0;
    v12[3] = &unk_10083F6E8;
    v13 = v6;
    v14 = v7;
    v15 = a1[6];
    v9 = v7;
    v10 = v6;
    sub_10017F518(v8, v12);
  }

  else
  {
    v11 = *(a1[6] + 2);

    v11();
  }
}

uint64_t sub_10005BFA4(uint64_t a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [a2 paymentApplications];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 paymentType] == 1000)
        {
          v8 = [v7 appletDataFormat];
          v9 = PKEqualObjects();

          if (v9)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

void sub_10005C0E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005C22C;
  v11[3] = &unk_10083DB08;
  v4 = objc_alloc_init(NSMutableSet);
  v12 = v4;
  [v3 enumerateObjectsUsingBlock:v11];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005C2BC;
  v8[3] = &unk_10083F6C0;
  v9 = v4;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = v4;
  v7 = [v5 sortedArrayUsingComparator:v8];
  (*(*(a1 + 48) + 16))();
}

void sub_10005C22C(uint64_t a1, void *a2)
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

uint64_t sub_10005C2BC(uint64_t a1, void *a2, void *a3)
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

void sub_10005CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 224), 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10005CB0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005CC00;
  v12[3] = &unk_10083F788;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v16 = *(a1 + 48);
  v17 = *(a1 + 64);
  v10 = v6;
  v11 = v7;
  [v8 performHandlerOnSharedWebServiceQueue:v12];
}

void sub_10005CC00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PDSharingManagementRetrievePartnerEncryptionCertificateRequest);
  v5 = [v3 targetDevice];
  [(PDSharingManagementRetrievePartnerEncryptionCertificateRequest *)v4 setTargetDevice:v5];
  v6 = [*(a1 + 32) passTypeIdentifier];
  [(PDSharingManagementRequest *)v4 setRegionIdentifier:v6];
  v7 = [*(a1 + 32) serialNumber];
  [(PDSharingManagementRetrievePartnerEncryptionCertificateRequest *)v4 setPassSerialNumber:v7];

  v8 = [v3 context];
  v9 = [v8 deviceID];
  if (v9)
  {
    v10 = [v8 regionForIdentifier:v6];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v8 primaryRegion];
    }

    v16 = v12;
    v22 = v12;

    v17 = [v16 brokerURL];
    v18 = [v5 appleAccountInformation];
    v19 = [(PDSharingManagementRetrievePartnerEncryptionCertificateRequest *)v4 urlRequestWithServiceURL:v17 deviceIdentifier:v9 appleAccountInformation:v18];

    v20 = [v3 nextTaskID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10005CE7C;
    v23[3] = &unk_10083F760;
    v24 = v3;
    v27 = *(a1 + 64);
    v21 = *(a1 + 48);
    v28 = *(a1 + 56);
    v26 = v21;
    v25 = *(a1 + 40);
    [v24 performRequest:v19 taskIdentifier:v20 retries:1 authHandling:0 completionHandler:v23];
  }

  else
  {
    v13 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:0];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10005CE7C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000059C0;
  v29 = sub_10000B0EC;
  v30 = 0;
  v10 = a1[4];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10005D14C;
  v22[3] = &unk_10083F738;
  v24 = &v25;
  v11 = v7;
  v23 = v11;
  if ([v10 _resultForResponse:v8 error:v9 successHandler:v22] != 1 && !v9)
  {
    v31 = NSLocalizedDescriptionKey;
    v32 = @"Received non 2XX http status code";
    v12 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v9 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:v12];
  }

  v13 = v26[5];
  if (v13)
  {
    v14 = v13;
    v15 = [v14 certificate];
    v16 = *(a1[7] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [v14 supportedEncryptionSchemes];
    v19 = [v18 firstObject];
    v20 = *(a1[8] + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

    objc_storeStrong((*(a1[9] + 8) + 40), v9);
    (*(a1[6] + 16))();
  }

  else
  {
    (*(a1[6] + 16))();
  }

  _Block_object_dispose(&v25, 8);
}

void sub_10005D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10005D14C(uint64_t a1)
{
  v2 = [[PDSharingManagementRetrievePartnerEncryptionCertificateResponse alloc] initWithData:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) != 0;
}

void sub_10005D1A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = PKPublicKeyFromCertificate();
  v11 = *(*(*(a1 + 56) + 8) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10005D2B8;
  v14[3] = &unk_10083F7D8;
  v17 = *(a1 + 64);
  v15 = v6;
  v16 = v7;
  v12 = v6;
  v13 = v7;
  [v8 _getEncryptedServiceProviderDataForSecureElementPass:v9 publicKey:v10 scheme:v11 completion:v14];
}

void sub_10005D2B8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v15 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:a2 options:0 error:&v15];
  v7 = v15;
  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPasslibary: Error converting encrypted payload to JSON string: %@", buf, 0xCu);
    }
  }

  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  v12 = *(a1[7] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  (*(a1[5] + 16))();
}

void sub_10005D41C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDPasslibary: Failed to encrypt serviceproviderData: %@", &v10, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10005D9F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 appletWithIdentifier:a1[4]];
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v13 = 0;
    v7 = [v3 getServiceProviderDataForApplet:v4 publicKey:v5 scheme:v6 error:&v13];
    v8 = v13;
    v9 = v8;
    v10 = 0;
    if (!v7)
    {
      v10 = v8;
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to get service provider data: Couldn't get applet with identifier: %@", buf, 0xCu);
    }

    v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
    v7 = 0;
  }

  (*(a1[7] + 16))();
}

void sub_10005DCE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 appletWithIdentifier:*(a1 + 32)];
  if (v4)
  {
    v11 = 0;
    v5 = [v3 getServiceProviderDataForApplet:v4 error:&v11];
    v6 = v11;
    v7 = 0;
    if (!v5)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Couldn't get service provider data: %@", buf, 0xCu);
      }

      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
    }
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get service provider data: Couldn't get applet with identifier: %@", buf, 0xCu);
    }

    v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
    v5 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10005DF94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  [WeakRetained checkForTransitNotification];
}

void sub_10005E0E8(void *a1, void *a2)
{
  v3 = [a2 paymentPass];
  if (v3)
  {
    v4 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E240;
    block[3] = &unk_10083C4C0;
    v5 = a1[5];
    block[4] = a1[4];
    v9 = v5;
    v10 = v3;
    dispatch_async(v4, block);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TransitMessage could not find payment pass for uniqueID:%@. fail to post upgraded pass notification", buf, 0xCu);
    }
  }
}

void sub_10005E240(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 280));
  [WeakRetained postUpgradedPassNotificationForMarket:a1[5] pass:a1[6]];
}

void sub_10005E3F4(void *a1, void *a2)
{
  v3 = [a2 paymentPass];
  if (v3)
  {
    v4 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005E54C;
    block[3] = &unk_10083C4C0;
    v5 = a1[5];
    block[4] = a1[4];
    v9 = v5;
    v10 = v3;
    dispatch_async(v4, block);
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TransitMessage could not find payment pass for uniqueID:%@. fail to post upgrade selection notification", buf, 0xCu);
    }
  }
}

void sub_10005E54C(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 280));
  [WeakRetained postUpgradesAvailableNotificationForMarket:a1[5] pass:a1[6]];
}

void sub_10005F088(void *a1)
{
  v2 = [*(a1[4] + 88) passWithPassTypeID:a1[5] serialNumber:a1[6]];
  v3 = [PKPass classForPassType:PKPassTypeForPassTypeIdentifier()];
  v4 = [v3 defaultSettings];
  if (v2)
  {
    v5 = [*(a1[4] + 88) settingsForPass:v2];
  }

  else
  {
    v5 = v4;
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = a1[6];
      v9 = NSStringFromClass(v3);
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: Didn't find a db pass with with type: %@ and serial number: %@. Falling back to default %{public}@ settings.", &v12, 0x20u);
    }
  }

  v10 = a1[7];
  v11 = [v2 manifestHash];
  (*(v10 + 16))(v10, v11, v5);
}

void sub_10005F2E0(uint64_t a1)
{
  v2 = [PKPass createWithData:*(a1 + 32) warnings:0 error:0];
  [*(a1 + 40) _queue_replacePass:v2 handler:*(a1 + 48)];
}

void sub_10005F790(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  [v4 invalidate];
}

void sub_10005F8C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v4 consumeImageSet];
  (*(v2 + 16))(v2, v3);

  [v4 invalidate];
}

void sub_10005FAD0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2, v4);
  [v4 invalidate];
}

uint64_t sub_10005FD8C(void *a1)
{
  [*(a1[4] + 88) updatePassAnnotationsForPassWithUniqueIdentifier:a1[5] withSortingState:a1[7]];
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100060438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained rescheduleCommutePlanRenewalRemindersForPaymentPassWithUniqueIdentifier:*(a1 + 40)];
  }
}

id sub_1000605B4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) passesAllAccess];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 88);

    return [v4 noteObjectSharedWithUniqueID:v3];
  }

  return result;
}

void sub_1000608EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100060998;
  v6[3] = &unk_10083F940;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsWithOptions:2 usingBlock:v6];
  [*(a1 + 32) removeAllObjects];
}

void sub_100060BCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100060C78;
  v6[3] = &unk_10083F9B8;
  v7 = v3;
  v5 = v3;
  [v4 unarchivePassesWithOptions:2 usingBlock:v6];
  [*(a1 + 32) invalidate];
}

uint64_t sub_100060C8C(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100060E28(uint64_t a1, void *a2)
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

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [v9 createPass];
        if (v11)
        {
          v12 = [v9 properties];
          v3[2](v3, v11, v12);

          [v9 invalidate];
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

uint64_t sub_100061408(uint64_t a1)
{
  [*(a1 + 32) _addPassesWithEnumerator:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void sub_100061454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((*(a1 + 32) + 40));
  v6 = *(*(a1 + 32) + 48);
  v7 = [NSValue valueWithPointer:a2];
  [v6 removeObject:v7];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if (a3 == 1)
  {
    v9 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000615D8;
    block[3] = &unk_10083FA30;
    block[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 40);
    dispatch_async(v9, block);
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

uint64_t sub_1000615D8(uint64_t a1)
{
  [*(a1 + 32) _addPassesWithEnumerator:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100061624(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) _addPassesWithEnumerator:*(a1 + 40) firstPassUniqueID:&v7];
  if (v2 >= 1)
  {
    v3 = v2;
    [*(a1 + 32) remoteProcessIdentifier];
    v4 = PDLocalizedAppNameForPID();
    v5 = [PDBackgroundAddPassesUserNotification alloc];
    v6 = [(PDBackgroundAddPassesUserNotification *)v5 initWithAppName:v4 passCount:v3 passUniqueID:v7];
    [*(*(a1 + 32) + 104) insertUserNotification:v6];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000618EC(uint64_t a1)
{
  v18 = PDOSTransactionCreate("PDPassLibrary");
  v19 = a1;
  v20 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v2)
  {
    v3 = 0;
    v22 = *v37;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * i);
        *v30 = 0;
        v31 = v30;
        v32 = 0x3032000000;
        v33 = sub_1000059C0;
        v34 = sub_10000B0EC;
        v35 = 0;
        if (v3)
        {
          v3 = 1;
          goto LABEL_22;
        }

        v6 = objc_autoreleasePoolPush();
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100061DC8;
        v29[3] = &unk_10083FA80;
        v29[4] = v30;
        [v5 accessFileDescriptorWithBlock:v29];
        v7 = *(v31 + 5);
        if (v7)
        {
          v27 = 0;
          v28 = 0;
          v8 = [PKPass createWithFileDataAccessor:v7 validationOptions:2 warnings:&v28 error:&v27];
          v9 = v28;
          v10 = v27;
          if (v10)
          {
            v11 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v41 = v8;
              v42 = 2112;
              v43 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to add unsigned pass: %@ due to validation error: %@", buf, 0x16u);
            }

            goto LABEL_19;
          }

          v12 = [PKPlaceholderPassGenerator addManifestIfNecessaryToPass:v8];
          v11 = v12;
          if (!v8 || v12)
          {
            v13 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v41 = v8;
              v42 = 2112;
              v43 = v11;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to add unsigned pass: %@ error: %@", buf, 0x16u);
            }

LABEL_19:
            v3 = 1;
          }

          else
          {
            [v20 addObject:v8];
            v3 = 0;
          }

          goto LABEL_21;
        }

        v3 = 1;
LABEL_21:
        objc_autoreleasePoolPop(v6);
LABEL_22:
        [v5 invalidate];
        _Block_object_dispose(v30, 8);
      }

      v2 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v2);
  }

  v14 = [*(v19 + 32) count];
  if (v14 == [v20 count])
  {
    v15 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100061E24;
    block[3] = &unk_10083EB28;
    block[4] = *(v19 + 40);
    v24 = v20;
    v26 = *(v19 + 48);
    v25 = v18;
    dispatch_async(v15, block);
  }

  else
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Attempting to add unsigned passes, but unable to create PKPasses.", v30, 2u);
    }

    v17 = *(v19 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, 2);
    }
  }
}

uint64_t sub_100061DC8(uint64_t a1, uint64_t a2)
{
  v3 = [[PKSerializedDataAccessor alloc] initWithFileDescriptor:a2 error:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_100061E24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100061ED4;
  v4[3] = &unk_10083FAA8;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 _addPasses:v3 withCompletion:v4];
}

void sub_100062054(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDPassLibrary");
  v3 = [*(a1 + 32) count];
  v4 = objc_alloc_init(PKHMHomeManager);
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000621B4;
    v9[3] = &unk_10083FC10;
    v8 = *(a1 + 32);
    v5 = v8.i64[0];
    v10 = vextq_s8(v8, v8, 8uLL);
    v14 = v3;
    v13 = *(a1 + 48);
    v11 = v2;
    v12 = v4;
    [v12 fetchHomesWithCompletion:v9];
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

void sub_1000621B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v5 = objc_alloc_init(NSMutableArray);
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = sub_1000059C0;
  v55[4] = sub_10000B0EC;
  v56 = 0;
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100062724;
  v53[3] = &unk_10083FAF8;
  v53[4] = *(a1 + 32);
  v25 = v7;
  v54 = v25;
  [v4 addOperation:v53];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v3;
  v8 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v8)
  {
    v9 = *v50;
    do
    {
      v10 = 0;
      do
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100062898;
        v44[3] = &unk_10083FB48;
        v44[4] = v11;
        v12 = *(a1 + 40);
        v48 = v55;
        v13 = *(a1 + 32);
        v45 = v12;
        v46 = v13;
        v47 = v5;
        [v4 addOperation:v44];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v8);
  }

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100062B4C;
  v41[3] = &unk_10083FB70;
  v43 = *(a1 + 72);
  v14 = v5;
  v42 = v14;
  [v4 addOperation:v41];
  v15 = [*(*(a1 + 32) + 64) sharedWebService];
  v16 = [v15 targetDevice];
  if (PKTargetDeviceSupportsExpress())
  {
    if (*(a1 + 72))
    {
      v17 = 0;
      do
      {
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100062C64;
        v36[3] = &unk_10083FBC0;
        v37 = v14;
        v40 = v17;
        v38 = v16;
        v39 = v15;
        [v4 addOperation:v36];

        ++v17;
      }

      while (v17 < *(a1 + 72));
    }
  }

  else
  {
    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v58 = v14;
      v59 = 2112;
      v60 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping adding HomeKeys (%@) to express as target device (%@) does not support express", buf, 0x16u);
    }
  }

  v19 = +[NSNull null];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100062E3C;
  v27[3] = &unk_10083FBE8;
  v35 = v55;
  v20 = v14;
  v28 = v20;
  v21 = *(a1 + 40);
  v22 = *(a1 + 32);
  v29 = v21;
  v30 = v22;
  v34 = *(a1 + 64);
  v23 = v25;
  v31 = v23;
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  v24 = [v4 evaluateWithInput:v19 completion:v27];

  _Block_object_dispose(v55, 8);
}

void sub_100062724(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(v8 + 32);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100062804;
  v13[3] = &unk_10083FAD0;
  v14 = v6;
  v15 = v7;
  v11 = v6;
  v12 = v7;
  [v10 acquireAssertionOfType:1 withIdentifier:v9 reason:@"Unsigned pass provisioning" handler:v13];
}

uint64_t sub_100062804(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Adding HomeKey unable to aquire provisioning assertion", v5, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100062898(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) walletKeyPassSerialNumber];
  if ([*(a1 + 40) containsObject:v8])
  {
    v9 = *(a1 + 32);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000629D0;
    v15[3] = &unk_10083FB20;
    v10 = v8;
    v11 = *(a1 + 64);
    v16 = v10;
    v21 = v11;
    v20 = v7;
    v12 = v6;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v17 = v12;
    v18 = v13;
    v19 = v14;
    [v9 addWalletKeyWithOptions:1 completionHandler:v15];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1000629D0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding HomeKey for home %@ returned error %@", &v12, 0x16u);
    }

    objc_storeStrong((*(a1[9] + 8) + 40), a3);
    (*(a1[8] + 16))();
  }

  else
  {
    v9 = [*(a1[6] + 88) passWithPassTypeID:@"paymentpass.com.apple.dev1" serialNumber:a1[4]];
    v10 = a1[7];
    v11 = [v9 paymentPass];
    [v10 safelyAddObject:v11];

    (*(a1[8] + 16))();
  }
}

void sub_100062B4C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a4;
  v8 = a3;
  v9 = [v5 count];
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Y";
    if (v6 != v9)
    {
      v11 = @"N";
    }

    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding HomeKey provisioned all passes: %@", &v12, 0xCu);
  }

  v7[2](v7, v8, v6 != v9);
}

void sub_100062C64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) objectAtIndex:*(a1 + 56)];
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100062D64;
  v14[3] = &unk_10083FB98;
  v16 = v6;
  v17 = v7;
  v15 = v8;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  [v10 paymentWebService:v9 handlePotentialExpressPass:v13 withCompletionHandler:v14];
}

void sub_100062D64(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding HomeKey failed to enable express for %@ pass.", &v6, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100062E3C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (*(*(*(a1 + 88) + 8) + 40) || (v8 = [*(a1 + 32) count], v8 != objc_msgSend(*(a1 + 40), "count")) || objc_msgSend(v7, "isCanceled"))
  {
    v31 = v7;
    v9 = v6;
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 88) + 8) + 40);
      v12 = [*(a1 + 32) count];
      *buf = 138412546;
      v38 = v11;
      v39 = 2048;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding HomeKey Error adding HomeKeys: %@. Removing %lu added HomeKeys.", buf, 0x16u);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = *(a1 + 32);
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(a1 + 48) + 80);
          v19 = [*(*(&v32 + 1) + 8 * i) uniqueID];
          [v18 deleteCardWithUniqueID:v19 forReason:3 withDiagnosticReason:@"Cleaning up homekey because operation failed"];
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }

    v20 = *(*(a1 + 88) + 8);
    v21 = *(v20 + 40);
    if (v21)
    {
      v22 = v21;
      v23 = *(v20 + 40);
      *(v20 + 40) = v22;
    }

    else
    {
      v24 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
      v25 = *(*(a1 + 88) + 8);
      v23 = *(v25 + 40);
      *(v25 + 40) = v24;
    }

    v6 = v9;

    v26 = *(a1 + 80);
    v7 = v31;
    if (v26)
    {
      v27 = *(v26 + 16);
LABEL_18:
      v27();
    }
  }

  else
  {
    v28 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [*(a1 + 32) count];
      *buf = 134217984;
      v38 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Adding HomeKey provisioned %lu passes", buf, 0xCu);
    }

    v30 = *(a1 + 80);
    if (v30)
    {
      v27 = *(v30 + 16);
      goto LABEL_18;
    }
  }

  [*(*(a1 + 48) + 32) invalidateAssertionOfType:1 withIdentifier:*(a1 + 56) handler:0];
}

void sub_1000632A8(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDPassLibrary");
  v3 = objc_alloc_init(PKHMHomeManager);
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000633A4;
    v5[3] = &unk_10083FC88;
    v8 = *(a1 + 32);
    v6 = v2;
    v7 = v3;
    [v7 fetchHomesWithCompletion:v5];
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, 0);
    }
  }
}

void sub_1000633A4(id *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v5 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100063600;
        v20[3] = &unk_10083FAF8;
        v20[4] = v11;
        v21 = v5;
        [v4 addOperation:v20];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v12 = +[NSNull null];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100063808;
  v15[3] = &unk_10083FC60;
  v16 = v5;
  v19 = a1[6];
  v17 = a1[4];
  v18 = a1[5];
  v13 = v5;
  v14 = [v4 evaluateWithInput:v12 completion:v15];
}

void sub_100063600(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [*(a1 + 32) walletKeyPassSerialNumber];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100063704;
  v14 = v13[3] = &unk_10083FC38;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16 = v6;
  v17 = v7;
  v15 = v9;
  v10 = v6;
  v11 = v7;
  v12 = v14;
  [v8 fetchAvailableWalletKeyEncodedPKPass:v13];
}

void sub_100063704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched available pass for home %@ returned error %@", &v9, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) addObject:v5];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100063808(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found %lu available HomeKey passes", &v11, 0xCu);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, *(a1 + 32), 0);
  }
}

void sub_100063A44(uint64_t a1)
{
  v2 = PDOSTransactionCreate("PDPassLibrary");
  v3 = objc_autoreleasePoolPush();
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000059C0;
  v17 = sub_10000B0EC;
  v18 = 0;
  v4 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100063C24;
  v12[3] = &unk_10083FA80;
  v12[4] = &v13;
  [v4 accessFileDescriptorWithBlock:v12];
  [*(a1 + 32) invalidate];
  v5 = v14[5];
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    v6 = [PKPass createWithFileDataAccessor:v5 validationOptions:2 warnings:&v11 error:&v10];
    v7 = v11;
    v8 = v10;
    v9 = [PKPlaceholderPassGenerator addManifestIfNecessaryToPass:v6];
    if (v9 | v8)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      [*(a1 + 40) _queue_replacePass:v6 handler:*(a1 + 48)];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  _Block_object_dispose(&v13, 8);

  objc_autoreleasePoolPop(v3);
}

void sub_100063C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100063C24(uint64_t a1, uint64_t a2)
{
  v3 = [[PKSerializedDataAccessor alloc] initWithFileDescriptor:a2 error:0];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

uint64_t sub_100063DF0(void *a1)
{
  [*(a1[4] + 88) passExistsWithPassTypeID:a1[5] serialNumber:a1[6]];
  v2 = *(a1[7] + 16);

  return v2();
}

void sub_100063FC4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) passWithPassTypeID:*(a1 + 40) serialNumber:*(a1 + 48)];
  v3 = [v2 paymentPass];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 64) sharedWebService];
    v5 = [v4 targetDevice];
    if (PKTargetDeviceSupportsExpress())
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100064208;
      v12[3] = &unk_10083FCB0;
      v13 = v3;
      v14 = *(a1 + 56);
      [v5 paymentWebService:v4 handlePotentialExpressPass:v13 withCompletionHandler:v12];
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting to call enableExpressForPassWithPassTypeIdentifier, but target device (%@) does not support express", buf, 0xCu);
      }

      v11 = *(a1 + 56);
      if (v11)
      {
        (*(v11 + 16))(v11, 0);
      }
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "EnableExpressForPassWithPassTypeIdentifier unable to find pass with identifier: %@ serialNumber: %@", buf, 0x16u);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, 0);
    }
  }
}

void sub_100064208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EnableExpressForPassWithPassTypeIdentifier enabled %@ expressModes for %@ pass.", &v7, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3 != 0);
  }
}

uint64_t sub_1000643EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [v2 length] && objc_msgSend(*(a1 + 40), "_entitledForUniqueID:forActions:", *(a1 + 32), 8))
  {
    v3 = [*(*(a1 + 40) + 88) passWithUniqueIdentifier:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      if ([v3 passType] == 1)
      {
        v5 = 6;
      }

      else
      {
        v5 = 3;
      }

      [*(*(a1 + 40) + 80) deleteCardWithUniqueID:*(a1 + 32) forReason:v5 withDiagnosticReason:*(a1 + 48)];
    }
  }

  v6 = *(*(a1 + 56) + 16);

  return v6();
}

uint64_t sub_100064598(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        if (v7 && [*(*(&v12 + 1) + 8 * v6) length] && objc_msgSend(*(a1 + 40), "_entitledForUniqueID:forActions:", v7, 8))
        {
          v8 = [*(*(a1 + 40) + 88) passWithUniqueIdentifier:v7];
          v9 = v8;
          if (v8)
          {
            if ([v8 passType] == 1)
            {
              v10 = 7;
            }

            else
            {
              v10 = 4;
            }

            [*(*(a1 + 40) + 80) deleteCardWithUniqueID:v7 forReason:v10 withDiagnosticReason:*(a1 + 48)];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t sub_1000647F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [*(a1 + 40) _entitledForUniqueID:v2 forActions:2])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 280));
    [WeakRetained recoverPassWithUniqueID:*(a1 + 32)];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

uint64_t sub_100064940(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && [*(a1 + 40) _entitledForUniqueID:v2 forActions:2])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 280));
    [WeakRetained archivePassWithUniqueID:*(a1 + 32)];
  }

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

uint64_t sub_100064A98(void *a1)
{
  if ([*(a1[4] + 8) passesAllAccess])
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 280));
    [WeakRetained removePassesOfType:a1[7] withDiagnosticReason:a1[5]];
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_100064BF8(void *a1)
{
  if (([*(a1[4] + 8) passesAllAccess] & 1) != 0 || objc_msgSend(*(a1[4] + 8), "paymentAllAccess"))
  {
    [*(a1[4] + 16) resetApplePayWithType:0 diagnosticReason:a1[5]];
  }

  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_100064D90(void *a1)
{
  if (*(a1[4] + 72))
  {
    return [*(a1[4] + 72) updatePassWithUniqueIdentifier:a1[5] handler:a1[6]];
  }

  else
  {
    return (*(a1[6] + 16))();
  }
}

id sub_100064F20(void *a1)
{
  if (*(a1[4] + 72))
  {
    return [*(a1[4] + 72) personalizePassWithUniqueIdentifier:a1[5] contact:a1[6] personalizationToken:a1[7] requiredPersonalizationFields:a1[9] personalizationSource:a1[10] handler:a1[8]];
  }

  else
  {
    return (*(a1[8] + 16))();
  }
}

uint64_t sub_100065154(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 88) hasCandidatePasses];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_100065284(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ((+[PKWalletVisibility isWalletVisible]& 1) != 0)
  {
    v4 = [*(*(a1 + 32) + 120) currentRelevancyInformation];
    (*(v2 + 16))(v2, v4);
  }

  else
  {
    v3 = *(v2 + 16);

    v3(v2, 0);
  }
}

void sub_10006557C(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *(a1 + 32);
    if (v2 && [v2 length] && (objc_msgSend(*(a1 + 40), "_entitledForUniqueID:forActions:", *(a1 + 32), 2) & 1) != 0)
    {
      if (![*(*(a1 + 40) + 8) paymentAllAccess] || PKForceSignDataApplicationStateForegroundRunningCheck())
      {
        v3 = [*(a1 + 40) remoteProcessApplicationInfo];
        if (![v3 isRunning]|| ![v3 isVisible])
        {
          v16 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v23 = "[PDPassLibrary signData:forPassUniqueID:completion:]_block_invoke";
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s requires the client to be running in the foreground", buf, 0xCu);
          }

          v17 = *(a1 + 56);
          v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
          (*(v17 + 16))(v17, 0, 0, v7);
          goto LABEL_24;
        }
      }

      v3 = [*(*(a1 + 40) + 88) passWithUniqueIdentifier:*(a1 + 32)];
      v4 = [v3 paymentPass];
      v5 = [v4 devicePrimaryPaymentApplication];
      v6 = [v5 subcredentials];
      v7 = [v6 anyObject];

      if (v7)
      {
        [*(a1 + 40) remoteProcessIdentifier];
        v8 = PKBundleIdentifierForPID();
        v9 = +[NSUUID UUID];
        v10 = [v9 UUIDString];
        v11 = [@"frameworkSignature-" stringByAppendingString:v10];

        v12 = *(a1 + 48);
        v13 = *(*(a1 + 40) + 168);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000659F4;
        v20[3] = &unk_10083FD28;
        v21 = *(a1 + 56);
        [v13 signData:v12 auth:0 bundleIdentifier:v8 nonce:v11 credential:v7 completion:v20];
      }

      else
      {
        v18 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v23 = "[PDPassLibrary signData:forPassUniqueID:completion:]_block_invoke";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s requires a pass with a credential", buf, 0xCu);
        }

        v19 = *(a1 + 56);
        v8 = [NSError errorWithDomain:PKPassKitErrorDomain code:1 userInfo:0];
        (*(v19 + 16))(v19, 0, 0, v8);
      }

LABEL_24:
      goto LABEL_25;
    }

    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[PDPassLibrary signData:forPassUniqueID:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v15 = *(a1 + 56);
    v3 = [NSError errorWithDomain:PKPassKitErrorDomain code:4 userInfo:0];
    (*(v15 + 16))(v15, 0, 0, v3);
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v23 = "[PDPassLibrary signData:forPassUniqueID:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s requires a completion", buf, 0xCu);
    }
  }

LABEL_25:
}

void sub_1000659F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PDDefaultQueue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100065B04;
  v15[3] = &unk_10083FD00;
  v16 = v9;
  v11 = *(a1 + 32);
  v18 = v8;
  v19 = v11;
  v17 = v7;
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v10, v15);
}

void sub_100065B04(void *a1)
{
  v1 = a1[7];
  if (a1[4])
  {
    v6 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
    (*(v1 + 16))(v1, 0, 0, v6);
  }

  else
  {
    v2 = a1[5];
    v3 = a1[6];
    v4 = *(v1 + 16);
    v5 = a1[7];

    v4(v5, v2, v3, 0);
  }
}

id sub_1000666B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 216);
  v3 = [[NSSet alloc] initWithObjects:{*(a1 + 40), 0}];
  [v2 deleteSubCredentialIdentifiers:v3 cardType:3 completion:0];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 168);

  return [v5 revokeSubcredentialForIdentifier:v4 withCompletion:0];
}

void sub_100066DF0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 232);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100066E90;
  v3[3] = &unk_10083FDC8;
  v4 = *(a1 + 48);
  [v2 registerLocalAuxiliaryCapabilities:v1 withPass:0 completion:v3];
}

void sub_100066E90(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a3;
  if (a4)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [a2 copy];
    v8 = [v13 keyEnumerator];
    v9 = [v8 nextObject];
    if (v9)
    {
      v10 = v9;
      do
      {
        v11 = [v13 objectForKey:v10];
        [v7 setObject:v11 forKey:v10];

        v12 = [v8 nextObject];

        v10 = v12;
      }

      while (v12);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100067108(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000671B0;
  v4[3] = &unk_10083FDF0;
  v3 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 signChallenge:v1 signatureEntanglementMode:v3 completion:v4];
}

uint64_t sub_1000671B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, 0);
  }

  return result;
}

void sub_100067500(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 120);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000675B0;
  v5[3] = &unk_10083E3C8;
  v6 = *(a1 + 48);
  [v2 overrideStateOfPresentmentOfType:v3 containingPassUniqueIdentifier:v1 newState:v4 completion:v5];
}

void sub_1000682C4(uint64_t a1)
{
  v2 = [*(a1 + 32) configurationType];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100068534;
  v13[3] = &unk_10083C7F8;
  v14 = *(a1 + 48);
  v3 = objc_retainBlock(v13);
  if (v2 == 3)
  {
    if (*(a1 + 56) != 1)
    {
      [*(a1 + 40) canAddHomeKeyWithConfiguration:*(a1 + 32) completion:v3];
      goto LABEL_12;
    }

    v4 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v5 = "canAddSecureElementPassWithConfiguration: HomeKey not supported synchronously";
    goto LABEL_8;
  }

  if (!+[PKWalletVisibility isWalletRestricted])
  {
    if (v2 > 3)
    {
      if (v2 == 5)
      {
        [*(a1 + 40) canAddClassicApplePayCredentialWithConfiguration:*(a1 + 32) completion:*(a1 + 48)];
        goto LABEL_12;
      }

      if (v2 != 4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2 == 1)
      {
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_100068630;
        v10[3] = &unk_10083FE40;
        v11 = v3;
        v9 = v8;
        [v7 canAddCarKeyPassWithConfiguration:v9 completion:v10];

        goto LABEL_12;
      }

      if (v2 != 2)
      {
        goto LABEL_10;
      }
    }

    if ([*(a1 + 32) conformsToProtocol:&OBJC_PROTOCOL___PKPushablePassConfigurationProvider])
    {
      [*(a1 + 40) canAddPushablePassWithConfiguration:*(a1 + 32) completion:v3];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "canAddSecureElementPassWithConfiguration: called while Wallet is restricted";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
  }

LABEL_9:

LABEL_10:
  v6 = [NSError errorWithDomain:PKPassKitErrorDomain code:-1 userInfo:0];
  (v3[2])(v3, 0, v6);

LABEL_12:
}

void sub_100068534(uint64_t a1, int a2, void *a3)
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

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "canAddSecureElementPassWithConfiguration: returning result: %@, error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000689C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    goto LABEL_2;
  }

  if ([v5 containsNotManagedAccount])
  {
    v6 = PKPassKitErrorDomain;
    v7 = 4;
  }

  else
  {
    if ([*(a1 + 32) _isWatchIssuerAppProvisioningSupported])
    {
LABEL_2:
      (*(*(a1 + 40) + 16))();
      goto LABEL_8;
    }

    v6 = PKPassKitErrorDomain;
    v7 = 1;
  }

  v8 = [NSError errorWithDomain:v6 code:v7 userInfo:0];
  (*(*(a1 + 40) + 16))();

LABEL_8:
}

void sub_100068FF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2048;
    v16 = a2;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDPassLibrary canAddHomeKeyWithConfiguration: %@, errorCode: %lu error: %@", &v13, 0x20u);
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:v7 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v10 setObject:v8 forKeyedSubscript:NSUnderlyingErrorKey];
  v11 = *(a1 + 32);
  v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:a2 userInfo:v10];
  (*(v11 + 16))(v11, 0, v12);
}

void sub_100069168(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069244;
  v8[3] = &unk_10083FF78;
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v4 = *(&v7 + 1);
  v5 = *(a1 + 56);
  *&v6 = v3;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 validatePreconditionsWithCompletion:v8];
}

void sub_100069244(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 64) sharedWebService];
    v4 = [v3 targetDevice];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006938C;
    v8[3] = &unk_10083FF50;
    v11 = *(a1 + 48);
    v5 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v3;
    v10 = v5;
    v12 = *(a1 + 56);
    v6 = v3;
    [v4 paymentWebService:v6 setNewAuthRandomIfNecessaryReturningPairingState:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void sub_10006938C(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDPassLibrary canAddHomeKeyWithConfiguration: SE Valid", buf, 2u);
    }

    v10 = *(*(a1 + 32) + 240);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10006953C;
    v17[3] = &unk_10083FF28;
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    *&v15 = *(a1 + 32);
    *(&v15 + 1) = v11;
    v20 = v14;
    *&v16 = v12;
    *(&v16 + 1) = v13;
    v18 = v16;
    v19 = v15;
    [v10 performDeviceRegistrationForReason:@"HomeKey preflight" brokerURL:0 action:1 forceApplePayRegister:0 forcePeerPaymentRegister:0 completion:v17];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_10006953C(uint64_t a1)
{
  if (PKDisableDynamicSEAllocation())
  {
    v2 = PKMaxPaymentCards();
    if (v2 - 1 >= [*(*(a1 + 48) + 88) countActiveSecureElementPasses])
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPassLibrary canAddHomeKeyWithConfiguration: passed preflight!", v9, 2u);
      }

      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v3 = *(*(a1 + 56) + 16);

      v3();
    }
  }

  else
  {
    v4 = [[PKProvisioningSEStorageManager alloc] initWithWebService:*(a1 + 32)];
    v5 = [*(a1 + 40) appletTypes];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000696FC;
    v10[3] = &unk_10083FF00;
    v6 = *(a1 + 56);
    v11 = v4;
    v12 = v6;
    v13 = *(a1 + 64);
    v7 = v4;
    [v7 reserveStorageForAppletTypes:v5 metadata:0 completion:v10];
  }
}

void sub_1000696FC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v8 || a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v7)
    {
      [*(a1 + 32) deleteReservation:v7 completion:&stru_10083FED8];
    }

    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDPassLibrary canAddHomeKeyWithConfiguration: passed preflight!", v10, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_100069BA4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) secureElementIdentifiers];
  v3 = [v2 firstObject];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069C94;
  v8[3] = &unk_10083FFC8;
  v9 = v3;
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  v7 = v3;
  [v5 generateTransactionKeyWithReaderIdentifier:v4 readerPublicKey:v6 withCompletion:v8];
}

void sub_100069C94(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [v11 hexEncoding];
    v14 = [v13 uppercaseString];
  }

  else
  {
    v14 = 0;
  }

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v19 = 138413058;
    v20 = v16;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v9;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "GenerateTransactionKeyWithReaderIdentifier returned secureElementIdentifier: %@ appletIdentifier: %@ transactionKeyIdentifier: %@ transactionKey: %@", &v19, 0x2Au);
  }

  if (v12)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v17 = *(a1 + 40);
    if (v10 && v9 && *(a1 + 32) && v14)
    {
      (*(v17 + 16))(*(a1 + 40));
    }

    else
    {
      v18 = [NSError errorWithDomain:PKPassKitErrorDomain code:1 userInfo:0];
      (*(v17 + 16))(v17, 0, 0, 0, 0, v18);
    }
  }
}

void sub_10006A08C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 88) passWithPassTypeID:@"paymentpass.com.apple.dev1" serialNumber:*(a1 + 40)];
  v3 = [v2 secureElementPass];

  v4 = objc_alloc_init(NSMutableArray);
  if (*(a1 + 48))
  {
    v5 = [[PKPassAuxiliaryRegistrationSignatureRequirement alloc] initWithType:2];
    v6 = [PKPassAuxiliaryCapabilitySignatureUnifiedAccessHomeKeyCreationMetadata alloc];
    v7 = [*(a1 + 48) readerGroupIdentifier];
    v8 = [*(a1 + 48) readerGroupPublicKey];
    v9 = [v6 initWithReaderIdentifier:v7 readerPublicKey:v8];

    [v5 setKeyCreationMetadata:v9];
    [v4 addObject:v5];
  }

  if (*(a1 + 56))
  {
    v10 = [[PKPassAuxiliaryRegistrationSignatureRequirement alloc] initWithType:8];
    v11 = [PKPassAuxiliaryCapabilitySignatureAliroHomeKeyCreationMetadata alloc];
    v12 = [*(a1 + 56) readerGroupIdentifier];
    v13 = [*(a1 + 56) readerGroupPublicKey];
    v14 = [v11 initWithReaderIdentifier:v12 readerPublicKey:v13 homeIdentifier:*(a1 + 64)];

    [v10 setKeyCreationMetadata:v14];
    [v4 addObject:v10];
  }

  v15 = *(*(a1 + 32) + 232);
  v16 = [v4 copy];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006A2C4;
  v18[3] = &unk_100840040;
  v17 = *(a1 + 72);
  v18[5] = v3;
  v19 = v17;
  v18[4] = *(a1 + 32);
  [v15 registerLocalAuxiliaryCapabilities:v16 withPass:v3 completion:v18];
}

void sub_10006A2C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v112 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ConfigureHomeAuxiliaryCapabilitiesForSerialNumber failed with error: %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v76 = a1;
    v11 = [*(*(a1 + 32) + 56) secureElementIdentifiers];
    v12 = [v11 firstObject];

    v78 = objc_alloc_init(NSMutableArray);
    v77 = objc_alloc_init(NSMutableArray);
    v75 = objc_alloc_init(NSMutableArray);
    v110[0] = _NSConcreteStackBlock;
    v110[1] = 3221225472;
    v110[2] = sub_10006AC08;
    v110[3] = &unk_10083FFF0;
    v74 = v12;
    v110[4] = v12;
    v79 = objc_retainBlock(v110);
    v13 = [v7 keyEnumerator];
    v14 = [v13 nextObject];
    if (v14)
    {
      v15 = v14;
      do
      {
        v16 = [v7 objectForKey:v15];
        v17 = v15;
        v18 = [v16 contents];
        v19 = [v18 firstObject];

        if (v19)
        {
          v20 = (v79[2])(v79, [v17 type], v19);
          [v78 addObject:v20];
        }

        v15 = [v13 nextObject];
      }

      while (v15);
    }

    v21 = [v8 keyEnumerator];
    v22 = [v21 nextObject];
    if (v22)
    {
      v23 = v22;
      do
      {
        v24 = [v8 objectForKey:v23];
        v25 = v23;
        v26 = [v24 contents];
        v27 = [v26 firstObject];

        if (v27)
        {
          v28 = (v79[2])(v79, [v25 type], v27);
          [v78 addObject:v28];
          [v77 addObject:v28];
        }

        v23 = [v21 nextObject];
      }

      while (v23);
    }

    v29 = v76;
    if (*(v76 + 40))
    {
      v71 = 0;
      v72 = v8;
      v73 = v7;
      v30 = objc_alloc_init(NSMutableArray);
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      obj = [*(v76 + 40) devicePaymentApplications];
      v85 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
      if (v85)
      {
        v83 = *v107;
        do
        {
          for (i = 0; i != v85; i = i + 1)
          {
            if (*v107 != v83)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v106 + 1) + 8 * i);
            v33 = [v32 applicationIdentifier];
            v34 = [v33 pk_decodeHexadecimal];

            if (v34)
            {
              v87 = i;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v35 = [v32 subcredentials];
              v36 = [v35 countByEnumeratingWithState:&v102 objects:v119 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v103;
                do
                {
                  for (j = 0; j != v37; j = j + 1)
                  {
                    if (*v103 != v38)
                    {
                      objc_enumerationMutation(v35);
                    }

                    v40 = [*(*(&v102 + 1) + 8 * j) identifier];
                    v41 = [v40 pk_decodeHexadecimal];

                    if (v41)
                    {
                      v118[0] = v34;
                      v118[1] = v41;
                      v118[2] = v32;
                      v42 = [NSArray arrayWithObjects:v118 count:3];
                      [v30 addObject:v42];
                    }
                  }

                  v37 = [v35 countByEnumeratingWithState:&v102 objects:v119 count:16];
                }

                while (v37);
              }

              i = v87;
            }
          }

          v85 = [obj countByEnumeratingWithState:&v106 objects:v120 count:16];
        }

        while (v85);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v84 = v73;
      obja = [v84 countByEnumeratingWithState:&v98 objects:v117 count:16];
      if (obja)
      {
        v80 = *v99;
        do
        {
          v43 = 0;
          do
          {
            if (*v99 != v80)
            {
              objc_enumerationMutation(v84);
            }

            v88 = v43;
            v44 = [v84 objectForKey:{*(*(&v98 + 1) + 8 * v43), v71, v72}];
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v86 = v44;
            v45 = [v44 contents];
            v46 = [v45 countByEnumeratingWithState:&v94 objects:v116 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v95;
              do
              {
                for (k = 0; k != v47; k = k + 1)
                {
                  if (*v95 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v50 = *(*(&v94 + 1) + 8 * k);
                  v51 = [v50 applicationIdentifier];
                  v52 = [v50 publicKeyIdentifier];
                  v53 = [v52 pk_decodeHexadecimal];

                  if (v51)
                  {
                    v54 = v53 == 0;
                  }

                  else
                  {
                    v54 = 1;
                  }

                  if (!v54)
                  {
                    v93[0] = _NSConcreteStackBlock;
                    v93[1] = 3221225472;
                    v93[2] = sub_10006AD78;
                    v93[3] = &unk_100840018;
                    v93[4] = v51;
                    v93[5] = v53;
                    v55 = [v30 indexesOfObjectsPassingTest:v93];
                    [v30 removeObjectsAtIndexes:v55];
                  }
                }

                v47 = [v45 countByEnumeratingWithState:&v94 objects:v116 count:16];
              }

              while (v47);
            }

            v43 = v88 + 1;
          }

          while ((v88 + 1) != obja);
          obja = [v84 countByEnumeratingWithState:&v98 objects:v117 count:16];
        }

        while (obja);
      }

      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v56 = v30;
      v57 = [v56 countByEnumeratingWithState:&v89 objects:v115 count:16];
      v8 = v72;
      v7 = v73;
      v9 = v71;
      if (v57)
      {
        v58 = v57;
        v59 = *v90;
        do
        {
          for (m = 0; m != v58; m = m + 1)
          {
            if (*v90 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = [*(*(&v89 + 1) + 8 * m) objectAtIndexedSubscript:{2, v71, v72}];
            [v75 addObject:v61];
          }

          v58 = [v56 countByEnumeratingWithState:&v89 objects:v115 count:16];
        }

        while (v58);
      }

      v62 = PKLogFacilityTypeGetObject();
      v29 = v76;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v75 count];
        v64 = [*(v76 + 40) uniqueID];
        *buf = 134218242;
        v112 = v63;
        v113 = 2112;
        v114 = v64;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Identifying %lu stale credentials for pass: '%@'...", buf, 0x16u);
      }
    }

    v65 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v78 count];
      *buf = 134217984;
      v112 = v66;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "ConfigureHomeAuxiliaryCapabilitiesForSerialNumber successfully configured %ld descriptors.", buf, 0xCu);
    }

    v67 = *(v29 + 48);
    v68 = [v78 copy];
    v69 = [v77 copy];
    v70 = [v75 copy];
    (*(v67 + 16))(v67, v68, v69, v70, 0);
  }
}

id sub_10006AC08(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 == 8)
  {
    v4 = 139;
  }

  else
  {
    v4 = 133;
  }

  v5 = a3;
  v6 = [PKAppletSubcredential alloc];
  v7 = [v5 publicKeyIdentifier];
  v8 = [v6 initWithIdentifier:v7];

  [v8 setCredentialType:v4];
  v9 = [v5 publicKey];
  [v8 setTransactionKey:v9];

  v10 = objc_alloc_init(PKPaymentApplication);
  [v10 setSecureElementIdentifier:*(a1 + 32)];
  v11 = [v5 applicationIdentifier];

  v12 = [v11 hexEncoding];
  v13 = [v12 uppercaseString];
  [v10 setApplicationIdentifier:v13];

  [v10 setPaymentNetworkIdentifier:v4];
  [v10 setPaymentType:1003];
  v14 = [[NSSet alloc] initWithObjects:{v8, 0}];
  [v10 setSubcredentials:v14];

  return v10;
}

BOOL sub_10006AD78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  v6 = [*(a1 + 32) isEqualToData:v4] && (objc_msgSend(*(a1 + 40), "isEqualToData:", v5) & 1) != 0;
  return v6;
}

void sub_10006AF38(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 88) passWithPassTypeID:@"paymentpass.com.apple.dev1" serialNumber:*(a1 + 40)];
  v4 = [v3 secureElementPass];

  if (!v4)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7FDC();
    }

    v10 = *(a1 + 48);
    v19 = NSDebugDescriptionErrorKey;
    v20 = @"unable to find pass";
    v5 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v6 = [NSError errorWithDomain:PKPassKitErrorDomain code:1 userInfo:v5];
    (*(v10 + 16))(v10, 0, v6);
    goto LABEL_7;
  }

  v5 = [v4 devicePaymentApplications];
  if ([v5 count])
  {
    v6 = [v5 pk_setByApplyingBlock:&stru_100840080];
    v7 = *(*(a1 + 32) + 56);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006B1DC;
    v13[3] = &unk_1008400A8;
    v14 = *(a1 + 40);
    v8 = *(a1 + 48);
    v15 = v5;
    v16 = v8;
    [v7 appletCredentialsForAIDs:v6 completion:v13];

LABEL_7:
    goto LABEL_11;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = *v2;
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "fetchHomePaymentApplicationsForSerialNumber no credentials found for pass:  %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_11:
}

void sub_10006B1DC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1005B8054();
    }

    v7 = *(a1 + 48);
    v84 = NSUnderlyingErrorKey;
    v85 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:0 userInfo:v8];
    (*(v7 + 16))(v7, 0, v9);

    goto LABEL_58;
  }

  v54 = objc_alloc_init(NSMutableSet);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v44 = v4;
  obj = v4;
  v46 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (!v46)
  {
    goto LABEL_53;
  }

  v45 = *v73;
  do
  {
    v10 = 0;
    do
    {
      if (*v73 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v48 = v10;
      v11 = *(*(&v72 + 1) + 8 * v10);
      v12 = [obj objectForKeyedSubscript:v11];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v52 = v12;
      v13 = [v12 countByEnumeratingWithState:&v68 objects:v82 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v69;
        v55 = v11;
        v50 = *v69;
        do
        {
          v16 = 0;
          v51 = v14;
          do
          {
            if (*v69 != v15)
            {
              objc_enumerationMutation(v52);
            }

            v17 = *(*(&v68 + 1) + 8 * v16);
            if ([v17 credentialType] == 133)
            {
              v53 = v16;
              v66 = 0u;
              v67 = 0u;
              v64 = 0u;
              v65 = 0u;
              v58 = *(a1 + 40);
              v18 = [v58 countByEnumeratingWithState:&v64 objects:v81 count:16];
              if (!v18)
              {
                goto LABEL_48;
              }

              v19 = v18;
              v20 = *v65;
              v56 = *v65;
              while (1)
              {
                v21 = 0;
                v57 = v19;
                do
                {
                  if (*v65 != v20)
                  {
                    objc_enumerationMutation(v58);
                  }

                  v22 = *(*(&v64 + 1) + 8 * v21);
                  v23 = [v22 applicationIdentifier];
                  v24 = v11;
                  v25 = v23;
                  v26 = v25;
                  if (v24 == v25)
                  {

LABEL_27:
                    v62 = 0u;
                    v63 = 0u;
                    v60 = 0u;
                    v61 = 0u;
                    v26 = [v22 subcredentials];
                    v28 = [v26 countByEnumeratingWithState:&v60 objects:v80 count:16];
                    if (v28)
                    {
                      v29 = v28;
                      v59 = v22;
                      v30 = *v61;
                      while (2)
                      {
                        for (i = 0; i != v29; i = i + 1)
                        {
                          if (*v61 != v30)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v32 = *(*(&v60 + 1) + 8 * i);
                          v33 = [v17 identifier];
                          v34 = [v32 identifier];
                          v35 = v33;
                          v36 = v34;
                          v37 = v36;
                          if (v35 == v36)
                          {

LABEL_43:
                            PKAppletSubcredentialMergeDeviceCredential();
                            [v54 addObject:v59];
                            goto LABEL_44;
                          }

                          if (v35 && v36)
                          {
                            v38 = [v35 isEqualToString:v36];

                            if (v38)
                            {
                              goto LABEL_43;
                            }
                          }

                          else
                          {
                          }
                        }

                        v29 = [v26 countByEnumeratingWithState:&v60 objects:v80 count:16];
                        if (v29)
                        {
                          continue;
                        }

                        break;
                      }

LABEL_44:
                      v11 = v55;
                      v20 = v56;
                      v19 = v57;
                    }

LABEL_45:

                    goto LABEL_46;
                  }

                  if (!v11 || !v25)
                  {

                    goto LABEL_45;
                  }

                  v27 = [v24 isEqualToString:v25];

                  if (v27)
                  {
                    goto LABEL_27;
                  }

LABEL_46:
                  v21 = v21 + 1;
                }

                while (v21 != v19);
                v19 = [v58 countByEnumeratingWithState:&v64 objects:v81 count:16];
                if (!v19)
                {
LABEL_48:

                  v15 = v50;
                  v14 = v51;
                  v16 = v53;
                  break;
                }
              }
            }

            v16 = v16 + 1;
          }

          while (v16 != v14);
          v14 = [v52 countByEnumeratingWithState:&v68 objects:v82 count:16];
        }

        while (v14);
      }

      v10 = v48 + 1;
    }

    while ((v48 + 1) != v46);
    v46 = [obj countByEnumeratingWithState:&v72 objects:v83 count:16];
  }

  while (v46);
LABEL_53:

  v8 = v54;
  v39 = [v54 count];
  v40 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = *(a1 + 32);
    *buf = 134218242;
    v77 = v39;
    v78 = 2112;
    v79 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "fetchHomePaymentApplicationsForSerialNumber found %lu applications for: %@", buf, 0x16u);
  }

  v42 = *(a1 + 48);
  v5 = 0;
  v4 = v44;
  if (v39)
  {
    v43 = [v54 pk_arrayCopy];
    (*(v42 + 16))(v42, v43, 0);
  }

  else
  {
    (*(v42 + 16))(*(a1 + 48), 0, 0);
  }

LABEL_58:
}

void sub_10006B9A4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PDPassLibrary pushProvisioningNoncesWithCredentialCount failied registration with error: %@", &v9, 0xCu);
    }

    (*(a1[5] + 16))();
  }

  else
  {
    [*(a1[4] + 184) pushProvisioningNoncesWithCredentialCount:a1[6] completion:a1[5]];
  }
}

void sub_10006BB54(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 shareablePassConfiguration];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_10006C208(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 32);
    v8 = [[NSOrderedSet alloc] initWithArray:v5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006C32C;
    v9[3] = &unk_100840120;
    v12 = *(a1 + 40);
    v10 = v5;
    v11 = v6;
    [v7 addPassesWithData:v8 handler:v9];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_10006C478(uint64_t a1)
{
  v1 = [[_TtC5passd13PDRateLimiter alloc] initWithDatabaseManager:*(*(a1 + 32) + 88)];
  v2 = qword_1009241D8;
  qword_1009241D8 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10006C9A8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _sanitizePassIfNeeded:a2];
  v4 = [*(a1 + 32) _entitledForObject:v3 forActions:2];

  return v4;
}

void sub_10006CE00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006CE98;
  v6[3] = &unk_10083F940;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_10006D010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006D038(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 uniqueID];
    if ([v5 passType] == 1)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    v19 = 0;
    v8 = [*(*(a1 + 32) + 88) passExistsWithUniqueID:v7];
    if (v6)
    {
      v9 = [v5 secureElementPass];
      v10 = [v6 provisioningMetadata];
      [v9 setProvisioningMetadata:v10];

      v11 = [v6 hasCustomizedSettings];
      if (v11 & 1) != 0 || ((v8 ^ 1))
      {
        if (v11)
        {
          v14 = v6;
        }

        else
        {
          v14 = v5;
        }

        v12 = [v14 settings];
        goto LABEL_18;
      }

      v12 = 0;
    }

    else
    {
      v12 = [v5 settings];
      if (v12 != [objc_opt_class() defaultSettings])
      {
        goto LABEL_18;
      }
    }

    if (((v8 ^ 1) & 1) == 0)
    {
      if (![*(a1 + 32) _writePass:v5 error:&v19])
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    if (([*(a1 + 32) _writePass:v5 withSettings:v12 | (16 * (PKValueAddedServicesAutomaticSelectionDefaultForPass() != 0)) error:&v19] & 1) == 0)
    {
LABEL_11:
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1005B80DC(v7, &v19, v13);
      }

      goto LABEL_13;
    }

LABEL_19:
    v15 = *(a1 + 56);
    ++*(*(*(a1 + 48) + 8) + 24);
    if (!v15 || *v15)
    {
      goto LABEL_21;
    }

    v13 = [v5 uniqueID];
    v16 = [v13 copy];
    v17 = *(a1 + 56);
    v18 = *v17;
    *v17 = v16;

LABEL_13:
LABEL_21:
  }
}

void sub_10006D244(id a1, NSError *a2)
{
  v2 = a2;
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 138412290;
      v9 = v2;
      v5 = "TPSDiscoverabilitySignal - Failed to donate discoverability signal - pass added: %@";
      v6 = v3;
      v7 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    LOWORD(v8) = 0;
    v5 = "TPSDiscoverabilitySignal - Successfully donated discoverability signal - pass added";
    v6 = v3;
    v7 = 2;
    goto LABEL_6;
  }
}

void sub_10006D4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006D4E4(void *a1)
{
  result = [*(a1[4] + 80) writeCard:a1[5] source:4 error:a1[7]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_10006D6D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 primaryPassDiff];
  (*(v2 + 16))(v2, v3);
}

void sub_10006D7B8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
    [WeakRetained introduceDatabaseIntegrityProblem];
  }
}

void sub_10006D90C(void *a1)
{
  if ([*(a1[4] + 8) passesAllAccess])
  {
    [*(a1[4] + 88) updateIngestedDate:a1[5] forUniqueID:a1[6]];
    v2 = [*(a1[4] + 88) passWithUniqueIdentifier:a1[6]];
    [*(a1[4] + 144) passAddedOrUpdated:v2];
  }
}

void sub_10006DAE8(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) paymentAllAccess] || !objc_msgSend(*(*(a1 + 32) + 8), "peerPaymentAllAccess") || !objc_msgSend(*(*(a1 + 32) + 8), "passesAllAccess"))
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1005B81C4();
    }

    goto LABEL_12;
  }

  v2 = [*(a1 + 40) type];
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v3 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account addition.", buf, 2u);
        }

        v4 = PDDefaultQueue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10006DE58;
        block[3] = &unk_10083DCB8;
        block[4] = *(a1 + 32);
        v19 = *(a1 + 48);
        dispatch_async(v4, block);

        v5 = v19;
LABEL_25:

        return;
      }

      return;
    }

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account change that is unsupported.", buf, 2u);
    }

LABEL_12:

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))();
    }

    return;
  }

  if (v2 == 2)
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account update.", buf, 2u);
    }

    v11 = PDDefaultQueue();
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006DEB4;
    v15[3] = &unk_10083D320;
    v12 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v12;
    v17 = *(a1 + 48);
    dispatch_async(v11, v15);

    v5 = v16;
    goto LABEL_25;
  }

  if (v2 == 3)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "passd was asked to respond to account deletetion.", buf, 2u);
    }

    v9 = PDDefaultQueue();
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10006DF10;
    v13[3] = &unk_10083DCB8;
    v13[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    dispatch_async(v9, v13);

    v5 = v14;
    goto LABEL_25;
  }
}

void sub_10006DE58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  [WeakRetained primaryAppleAccountWasAdded:*(a1 + 40)];
}

void sub_10006DEB4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 280));
  [WeakRetained primaryAppleAccountWasUpdated:a1[5] handler:a1[6]];
}

void sub_10006DF10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 280));
  [WeakRetained primaryAppleAccountWasDeleted:*(a1 + 40)];
}

void sub_10006E09C(void *a1)
{
  if ([*(a1[4] + 8) paymentAllAccess] && objc_msgSend(*(a1[4] + 8), "peerPaymentAllAccess") && objc_msgSend(*(a1[4] + 8), "passesAllAccess"))
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 280));
    [WeakRetained noteACAccountChanged:a1[5] handler:a1[6]];
  }

  else
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1005B81C4();
    }

    v3 = a1[6];
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

void sub_10006E218(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) catalogOfRecord];
  [v2 shuffle:*(a1 + 40)];
  [*(*(a1 + 32) + 80) writeCatalogOfRecord:v2 source:4];
}

void sub_10006E3B4(void *a1)
{
  v2 = [(PDGenericUserNotification *)[PDWalletUserNotification alloc] initWithTitle:a1[4] message:a1[5] forPassUniqueIdentifier:a1[6]];
  v3 = v2;
  v4 = v2;
  if (a1[7])
  {
    [(PDUserNotification *)v2 setCustomActionRoute:?];
    v3 = v4;
  }

  [*(a1[8] + 104) insertUserNotification:v3];
}

uint64_t sub_10006E520(void *a1)
{
  v2 = [*(a1[4] + 104) pendingNotificationDescriptionsWithIdentifier:a1[5]];
  v3 = a1[6];
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return _objc_release_x1(v3, v2);
}

uint64_t sub_10006E784(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) insertMessageWithContent:*(a1 + 40) badged:*(a1 + 56)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = v2;
    v3 = (*(v3 + 16))();
    v2 = v5;
  }

  return _objc_release_x1(v3, v2);
}

uint64_t sub_10006ED90(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess])
  {
    [*(*(a1 + 32) + 144) reindexAllContent];
    result = *(a1 + 40);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1005B81F8();
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t sub_10006EF1C(void *a1)
{
  if ([*(a1[4] + 8) passesAllAccess])
  {
    [*(a1[4] + 144) reindexContentForIdentifiers:a1[5] triggerIndexing:1];
    result = a1[6];
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  else
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1005B81F8();
    }

    result = a1[6];
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_10006F088(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 144);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10006F180;
    v7[3] = &unk_10083DCB8;
    v7[4] = v3;
    v8 = v2;
    [v4 resetWithCompletion:v7];
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1005B822C();
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }
}

void sub_10006F180(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 144);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006F218;
  v2[3] = &unk_10083D648;
  v3 = *(a1 + 40);
  [v1 deleteAllFinHealthDataWithCompletion:v2];
}

uint64_t sub_10006F218(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006F2E0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesAllAccess])
  {
    v2 = *(*(a1 + 32) + 144);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006F3DC;
    v5[3] = &unk_100840258;
    v6 = *(a1 + 40);
    [v2 statusWithCompletion:v5];
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1005B8260();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

uint64_t sub_10006F3DC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10006F4A4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesExternalMigrationAccess])
  {
    if (PKPassbookIsCurrentlyDeletedByUser())
    {
      v2 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1005B82C8();
      }

      v3 = *(a1 + 40);
      v4 = [[PKExternalDeviceMigrationManifest alloc] initWithEntries:&__NSArray0__struct];
      (*(v3 + 16))(v3, v4, 0);
    }

    else
    {
      v4 = PDOSTransactionCreate("PDPassLibrary");
      v7 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v8 = objc_alloc_init(NSMutableArray);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10006F75C;
      v19[3] = &unk_10083FAF8;
      v19[4] = *(a1 + 32);
      v9 = v8;
      v20 = v9;
      [v7 addOperation:v19];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10006FB20;
      v17[3] = &unk_10083FAF8;
      v17[4] = *(a1 + 32);
      v10 = v9;
      v18 = v10;
      [v7 addOperation:v17];
      v11 = +[NSNull null];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10006FDC0;
      v14[3] = &unk_1008402A8;
      v15 = v10;
      v16 = *(a1 + 40);
      v12 = v10;
      v13 = [v7 evaluateWithInput:v11 completion:v14];
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1005B8294();
    }

    v6 = *(a1 + 40);
    v4 = PDBasicError();
    (*(v6 + 16))(v6, 0, v4);
  }
}

void sub_10006F75C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v7 = [*(*(a1 + 32) + 88) passUniqueIDs];
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v37 = [v7 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Generating manifest entries for %lu pass entries", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v30 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v30)
  {
    v10 = *v32;
    v29 = *v32;
    v26 = v8;
    v27 = a1;
    v25 = v9;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [*(*(a1 + 32) + 80) dataAccessorForObjectWithUniqueID:v12];
        if (v14)
        {
          v15 = [*(*(a1 + 32) + 88) passWithUniqueIdentifier:v12];
          v16 = v15;
          if (v15)
          {
            if (([v15 supportsIssuerBinding]& 1) != 0)
            {
              goto LABEL_22;
            }

            v17 = [v16 secureElementPass];
            v18 = v17;
            if (v17 && (([v17 isAppleBalancePass]& 1) != 0 || [v18 passActivationState]== 4))
            {
              a1 = v27;
            }

            else
            {
              v28 = [v16 organizationName];
              v19 = [v16 localizedDescription];
              v20 = [v14 archiveData];
              v21 = [[PKExternalDeviceMigrationManifestEntry alloc] initWithIdentifier:v12 passUniqueIdentifier:v12 title:v28 subtitle:v19 transferSize:objc_msgSend(v20 estimatedOnDiskSize:{"length"), objc_msgSend(v14, "fileSizeOnDisk")}];
              a1 = v27;
              [*(v27 + 40) addObject:v21];

              v9 = v25;
            }

            v8 = v26;
          }

          else
          {
            v18 = v8;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v37 = v12;
              _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to fetch pass for %@", buf, 0xCu);
              v18 = v8;
            }
          }

          v10 = v29;
        }

        else
        {
          v16 = v8;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v37 = v12;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to create data accessor for %@", buf, 0xCu);
            v16 = v8;
          }
        }

LABEL_22:

        objc_autoreleasePoolPop(v13);
      }

      v30 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v30);
  }

  v22[2](v22, v23, 0);
}

void sub_10006FB20(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 272);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006FC08;
  v12[3] = &unk_100840280;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v13 = v9;
  v10 = v6;
  v11 = v7;
  [v8 activeFPANCardsWithOptions:0 completion:v12];
}

void sub_10006FC08(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 passUniqueIdentifier];

        if (!v9)
        {
          v10 = [PKExternalDeviceMigrationManifestEntry alloc];
          v11 = [v8 identifier];
          v12 = [v8 identifier];
          v13 = [v8 cardNickname];
          v14 = [v8 displayableShortDescription];
          v15 = [v10 initWithIdentifier:v11 fpanDescriptorIdentifier:v12 title:v13 subtitle:v14 transferSize:0 estimatedOnDiskSize:0];

          [*(a1 + 32) addObject:v15];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10006FDC0(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Generated %lu manifest entries", &v5, 0xCu);
  }

  v4 = [[PKExternalDeviceMigrationManifest alloc] initWithEntries:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
}

void sub_10006FF78(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) passesExternalMigrationAccess])
  {
    v2 = PDOSTransactionCreate("PDPassLibrary");
    v3 = [*(a1 + 40) passUniqueIdentifier];
    v4 = [*(a1 + 40) fpanDescriptorIdentifier];
    if (v3)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1005B82FC();
      }

      v6 = [*(*(a1 + 32) + 88) passWithUniqueIdentifier:v3];
      if (v6)
      {
        v7 = v6;
        v28 = [v6 organizationName];
        v27 = [v7 localizedDescription];
        v8 = [v7 secureElementPass];
        v9 = [v8 primaryAccountIdentifier];

        v26 = PKExternalDeviceMigrationCardEntryTypeFromPass();
        v10 = [v7 passType] == 1;
        if ([v7 passType])
        {
          v11 = 0;
LABEL_29:
          v43[0] = 0;
          v43[1] = v43;
          v43[2] = 0x3032000000;
          v43[3] = sub_1000059C0;
          v43[4] = sub_10000B0EC;
          v44 = 0;
          v34[0] = _NSConcreteStackBlock;
          v34[1] = 3221225472;
          v34[2] = sub_1000704CC;
          v34[3] = &unk_1008402D0;
          v19 = v28;
          v35 = v19;
          v20 = v27;
          v36 = v20;
          v21 = v9;
          v40 = v43;
          v41 = v26;
          v37 = v21;
          v42 = v10;
          v22 = v11;
          v38 = v22;
          v39 = *(a1 + 48);
          v23 = objc_retainBlock(v34);
          v24 = v23;
          if (v21)
          {
            v25 = *(*(a1 + 32) + 272);
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100070550;
            v31[3] = &unk_1008402F8;
            v33 = v43;
            v32 = v23;
            [v25 externalMigrationFpanCardAndCredentialForPrimaryAccountIdentifier:v21 passUniqueID:v3 completion:v31];
          }

          else
          {
            (v23[2])(v23);
          }

          _Block_object_dispose(v43, 8);
          goto LABEL_33;
        }

        v16 = [*(*(a1 + 32) + 80) dataAccessorForObjectWithUniqueID:v3];
        v17 = v16;
        if (v16)
        {
          v11 = [v16 archiveData];
          if (v11)
          {
LABEL_28:

            goto LABEL_29;
          }

          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_1005B836C();
          }
        }

        else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1005B83DC();
        }

        v11 = 0;
        goto LABEL_28;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1005B844C();
      }
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      v14 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v14)
        {
          sub_1005B84BC();
        }

        v15 = *(*(a1 + 32) + 272);
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100070648;
        v29[3] = &unk_100840320;
        v30 = *(a1 + 48);
        [v15 externalMigrationFpanCardAndCredentialForDescriptorIdentifier:v4 completion:v29];
        v7 = v30;
        goto LABEL_33;
      }

      if (v14)
      {
        sub_1005B852C((a1 + 40), v5);
      }
    }

    v18 = *(a1 + 48);
    v7 = PDBasicError();
    (*(v18 + 16))(v18, 0, v7);
LABEL_33:

    goto LABEL_34;
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1005B8294();
  }

  v13 = *(a1 + 48);
  v2 = PDBasicError();
  (*(v13 + 16))(v13, 0, v2);
LABEL_34:
}

void sub_1000704CC(uint64_t a1)
{
  v2 = [[PKExternalDeviceMigrationCardEntry alloc] initWithLocalizedOrganization:*(a1 + 32) localizedDescription:*(a1 + 40) accountNumberSuffix:*(a1 + 48) type:*(a1 + 80) paymentDetails:*(*(*(a1 + 72) + 8) + 40) credentialInSecureElement:*(a1 + 88) sanitizedPKPassArchive:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

uint64_t sub_100070550(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2 && a3)
  {
    v4 = a3;
    v5 = [PKExternalDeviceMigrationPaymentDetails alloc];
    v6 = [v4 primaryAccountNumber];
    v7 = [v4 expiration];
    v8 = [v4 securityCode];
    v9 = [v4 cardholderName];

    v10 = [v5 initWithFPAN:v6 expiration:v7 cvv:v8 cardholder:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *(*(a1 + 32) + 16);

  return v13();
}

void sub_100070648(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v7 && v8 && !v9)
  {
    v11 = [PKExternalDeviceMigrationPaymentDetails alloc];
    v12 = [v8 primaryAccountNumber];
    v13 = [v8 expiration];
    v14 = [v8 securityCode];
    v15 = [v8 cardholderName];
    v16 = [v11 initWithFPAN:v12 expiration:v13 cvv:v14 cardholder:v15];

    [v7 credentialType];
    v17 = PKAutoFillCredentialTypeToLocalizedString();
    v18 = [v7 displayableShortDescription];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = [v7 cardNickname];
    }

    v22 = v20;

    v23 = [PKExternalDeviceMigrationCardEntry alloc];
    v24 = [v7 displayableLastFour];
    v25 = [v23 initWithLocalizedOrganization:v17 localizedDescription:v22 accountNumberSuffix:v24 type:6 paymentDetails:v16 credentialInSecureElement:0 sanitizedPKPassArchive:0];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v21 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1005B85C8();
    }

    (*(*(a1 + 32) + 16))();
  }
}

Class sub_100070F14()
{
  if (qword_1009241F8 != -1)
  {
    sub_1005B8638();
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  qword_1009241E8 = result;
  off_10091E2A0 = sub_100070F68;
  return result;
}

uint64_t sub_10007111C(uint64_t a1)
{
  v2 = [*(a1 + 32) _confirmationRecordForTransaction:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) _processConfirmationRecord:v2 withTransaction:*(a1 + 40)];
    v3 = v5;
  }

  return _objc_release_x1(v2, v3);
}

uint64_t sub_100071218(uint64_t a1)
{
  v2 = [*(a1 + 32) _transactionForConfirmationRecord:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) _processConfirmationRecord:*(a1 + 40) withTransaction:v2];
    v3 = v5;
  }

  return _objc_release_x1(v2, v3);
}

void sub_100071818(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 context];
  v5 = [v4 primaryRegion];
  v6 = [v5 paymentOffersServiceURL];

  if (v6)
  {
LABEL_12:
    [*(a1 + 32) setBaseURL:v6];
    v14 = *(a1 + 32);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100071A64;
    v21[3] = &unk_100840390;
    v20 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    *&v18 = v16;
    *(&v18 + 1) = v17;
    *&v19 = v20;
    *(&v19 + 1) = v15;
    v22 = v19;
    v23 = v18;
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    [v3 confirmOffersWithRequest:v14 completion:v21];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [v4 regions];
    v6 = [v7 allValues];

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) paymentOffersServiceURL];
          if (v12)
          {
            v13 = v12;

            v6 = v13;
            goto LABEL_12;
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }
}

void sub_100071A64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071BAC;
  block[3] = &unk_100840368;
  v16 = v6;
  v14 = *(a1 + 32);
  v8 = *(&v14 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v17 = v14;
  v18 = v11;
  v19 = *(a1 + 64);
  v20 = v5;
  v21 = *(a1 + 72);
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, block);
}

id sub_100071BAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error confirming payment offer: %@", &v6, 0xCu);
    }

    [*(a1 + 40) _processFailedConfirmResponseWithError:*(a1 + 32) record:*(a1 + 48) eventType:objc_msgSend(*(a1 + 56) paymentPass:"eventType") transaction:{*(a1 + 64), *(a1 + 72)}];
  }

  else
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      [*(a1 + 40) _processConfirmResponse:v4 record:*(a1 + 48) eventType:objc_msgSend(*(a1 + 56) paymentPass:"eventType") transaction:{*(a1 + 64), *(a1 + 72)}];
    }
  }

  return [*(*(a1 + 40) + 32) removeObject:*(a1 + 88)];
}

void sub_100072B94(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PDMissingRemoteAssetsPersistentStoreItem);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_100072F9C(id a1, PDMissingRemoteAssetsPersistentStoreItem *a2, id a3)
{
  v4 = a2;
  -[PDMissingRemoteAssetsPersistentStoreItem setDownloadRetriesCount:](v4, "setDownloadRetriesCount:", [a3 unsignedIntegerValue]);
}

void sub_1000737C4(id a1, PKFeatureApplicationOfferDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKFeatureApplicationOfferDetails *)v3 setExpiryDate:v4];
}

void sub_100073824(id a1, PKFeatureApplicationOfferDetails *a2, id a3)
{
  v4 = a2;
  v5 = [NSDecimalNumber decimalNumberWithString:a3];
  [(PKFeatureApplicationOfferDetails *)v4 setCreditLimit:v5];
}

void sub_10007389C(id a1, PKFeatureApplicationOfferDetails *a2, id a3)
{
  v4 = a2;
  v5 = [NSDecimalNumber decimalNumberWithString:a3];
  [(PKFeatureApplicationOfferDetails *)v4 setAnnualFee:v5];
}

void sub_100073914(id a1, PKFeatureApplicationOfferDetails *a2, id a3)
{
  v4 = a2;
  v5 = [NSDecimalNumber decimalNumberWithString:a3];
  [(PKFeatureApplicationOfferDetails *)v4 setAprForPurchase:v5];
}

void sub_100073994(id a1, PKFeatureApplicationOfferDetails *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKFeatureApplicationOfferDetails *)v3 setBalance:v4];
}

void sub_100073AEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100073D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100073D68(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100073E10;
  v7[3] = &unk_100840548;
  v10 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 48) + 8) + 24);

  return v5;
}

void sub_100073E10(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  v10 = sub_100073ECC(SQLiteEntity, v7);
  v9 = sub_100073FF4(SQLiteEntity, v7, v10, *(a1 + 48), v8, *(a1 + 32));

  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

id sub_100073ECC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(NSMutableArray);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v10 + 1) + 8 * v8), v10}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [v3 sortUsingComparator:&stru_100840708];
  return v3;
}

uint64_t sub_100073FF4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v27 = a2;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_self();
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  v13 = [[NSMutableString alloc] initWithString:@"INSERT OR REPLACE INTO "];
  [v13 appendString:v10];
  objc_msgSend(v13, "appendString:", @" (");
  v14 = [v12 foreignKeyColumnForTable:v10];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"ROWID";
  }

  [v13 appendString:{v16, v27}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v18)
  {
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        [v13 appendString:{@", "}];
        [v13 appendString:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v18);
  }

  [v13 appendString:@") VALUES (?"];
  for (j = [v17 count]; j; --j)
  {
    [v13 appendString:{@", ?"}];
  }

  [v13 appendString:@";"]);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100075728;
  v30[3] = &unk_100840730;
  v34 = a4;
  v23 = v17;
  v31 = v23;
  v24 = v28;
  v32 = v24;
  v33 = &v39;
  sub_1005D44BC(v11, v13, 1, v30);
  v25 = *(v40 + 24);

  _Block_object_dispose(&v39, 8);
  return v25 & 1;
}

void sub_1000743C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 40) databasePropertyToSetClientProperty:v5];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) databaseValueForProperty:v7 clientValue:v6];
    [v8 setObject:v9 forKey:v7];
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = objc_opt_class();
      v14 = 2112;
      v15 = v5;
      v11 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Unrecognized client key: %@", &v12, 0x16u);
    }
  }
}

void sub_100074704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007471C(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = [v2 databaseTable];
  *(*(*(a1 + 40) + 8) + 24) = sub_1000748E8(v3, v4, @"ROWID");

  [v2 foreignDatabaseTablesToDelete];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v2 foreignKeyColumnForTable:{v10, v14}];
        if (v11)
        {
          *(*(*(a1 + 40) + 8) + 24) = sub_1000748E8(*(a1 + 32), v10, v11);
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {

            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 8) = 0;
    v12 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1000748E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v5, v6];
    v8 = *(a1 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000759A4;
    v10[3] = &unk_1008405E8;
    v10[4] = a1;
    v10[5] = &v11;
    sub_1005D44BC(v8, v7, 1, v10);
    LOBYTE(a1) = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  return a1 & 1;
}

void sub_1000749EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100074B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100074B28(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  result = sub_10035E090(SQLiteDatabase, a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100074B8C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v4 = [[NSMutableDictionary alloc] initWithCapacity:*(a1 + 72)];
    v5 = [*(a1 + 40) count];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [*(a1 + 40) objectAtIndexedSubscript:i];
        v9 = SQLiteCopyFoundationValueForStatementColumn(a2, i);
        if (v9)
        {
          [v4 setObject:v9 forKeyedSubscript:v8];
        }
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = *(a1 + 48);
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (j = 0; j != v12; j = j + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          v16 = [*(a1 + 56) objectForKeyedSubscript:{v15, v18}];
          v17 = [v4 objectForKeyedSubscript:v16];
          [*(a1 + 64) setObject:v17 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

void sub_100074F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100074F70(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = sub_100073ECC(SQLiteEntity, v8);
  v10 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = @"ROWID";
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v12 = [[NSMutableString alloc] initWithString:@"SELECT 1 FROM "];
    [v12 appendString:v7];
    [v12 appendString:@" WHERE "];
    [v12 appendString:v11];
    [v12 appendString:@" =  ? LIMIT 1;"];
    v13 = *(a1 + 40);
    v14 = *(v13 + 8);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100075398;
    v35[3] = &unk_1008405E8;
    v35[4] = v13;
    v35[5] = &v36;
    sub_1005D44BC(v14, v12, 1, v35);
  }

  if (v37[3])
  {
    v15 = [[NSMutableString alloc] initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v23 = v9;
    v24 = a4;
    v25 = v8;
    v26 = v7;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v17)
    {
      v18 = 0;
      v19 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          if (v18)
          {
            [v15 appendString:{@", "}];
          }

          [v15 appendString:v21];
          [v15 appendString:@" = ?"];
          v18 = 1;
        }

        v17 = [v16 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v17);
    }

    v8 = v25;
    v7 = v26;
    v9 = v23;
    a4 = v24;
    [v15 appendString:@" WHERE "];
    [v15 appendString:v26];
    [v15 appendString:@"."];
    [v15 appendString:v11];
    [v15 appendString:@" = ?;"];
    v22 = *(*(a1 + 40) + 8);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000753EC;
    v27[3] = &unk_100840698;
    v28 = v16;
    v29 = v25;
    v30 = *(a1 + 40);
    sub_1005D44BC(v22, v15, 1, v27);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = sub_100073FF4(SQLiteEntity, v8, v9, *(*(a1 + 40) + 16), v7, *(*(a1 + 40) + 8));
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v36, 8);
}

uint64_t sub_100075398(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  result = sub_10035E090(SQLiteDatabase, a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000753EC(uint64_t a1, sqlite3_stmt *a2)
{
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
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        v11 = [*(a1 + 40) objectForKeyedSubscript:{*(*(&v13 + 1) + 8 * v9), v13}];
        SQLiteBindFoundationValueToStatement(a2, v10, v11);

        v9 = v9 + 1;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  sqlite3_bind_int64(a2, v8, *(*(a1 + 48) + 16));
  result = sub_10035DF04(SQLiteDatabase, a2);
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

uint64_t sub_100075728(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 56));
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
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = v10 + 1;
        v11 = [*(a1 + 40) objectForKey:{*(*(&v13 + 1) + 8 * v9), v13}];
        SQLiteBindFoundationValueToStatement(a2, v10, v11);

        v9 = v9 + 1;
        ++v10;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  result = sub_10035DF04(SQLiteDatabase, a2);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100075888(id *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (([v12 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v12];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v9 = [a1[6] foreignDatabaseColumnForProperty:v12];
    }

    else
    {
      v8 = a1[4];
      v9 = v12;
    }

    v10 = v9;
    v11 = [a1[5] objectForKeyedSubscript:v8];
    if (!v11)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [a1[5] setObject:v11 forKeyedSubscript:v8];
    }

    [v11 setObject:v5 forKeyedSubscript:v10];
  }
}

uint64_t sub_1000759A4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  result = sub_10035DF04(SQLiteDatabase, a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100075CF4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 32);
  v3 = objc_opt_new();
  [v3 setCredentials:*(a1 + 40)];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100075EC8;
  v11[3] = &unk_100840780;
  objc_copyWeak(&v13, &location);
  v12 = *(a1 + 48);
  [v3 setCompletion:v11];
  v4 = *(*(a1 + 32) + 32);
  if (v4)
  {
    [v4 addObject:v3];
  }

  else
  {
    v5 = [NSMutableArray arrayWithObject:v3];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;
  }

  v8 = PKLogFacilityTypeGetObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Safari Import: Queue already exists, will wait for next item to pop queue", v10, 2u);
    }
  }

  else
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Safari Import: Immediately popping the queue to start the process", v10, 2u);
    }

    [*(a1 + 32) _popEligibilityQueue];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void sub_100075EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100075EC8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v14 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v14, v9, v10, v11);
  }

  [WeakRetained _popEligibilityQueue];
}

void sub_100076010(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) count];
  v3 = PKLogFacilityTypeGetObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = [*(*(a1 + 32) + 32) count];
      v7 = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Safari Import: Popping item from the queue (count: %ld)", &v7, 0xCu);
    }

    v6 = [*(*(a1 + 32) + 32) firstObject];
    [*(*(a1 + 32) + 32) removeObjectAtIndex:0];
    [*(a1 + 32) _processEligibilityItem:v6];
  }

  else
  {
    if (v4)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Safari Import: Queue empty, so tearing down resources", &v7, 2u);
    }

    [*(a1 + 32) _cleanupQueueResources];
  }
}

void sub_1000762F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000763C0;
  v4[3] = &unk_1008407F8;
  v4[4] = v2;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [v3 diagnosticSessionWithReason:@"CheckSafariCredentialProvisioningEligibility" sessionHandler:v4];

  objc_destroyWeak(&v6);
}

void sub_1000763C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076490;
  block[3] = &unk_1008407D0;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v9);
}

void sub_100076490(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [[PKPaymentProvisioningController alloc] initWithWebService:*(a1 + 32) localPaymentService:0];
    v4 = WeakRetained[5];
    WeakRetained[5] = v3;

    [WeakRetained[5] setIgnoreFPANCardOnFileState:1];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Safari Import: Preflighting provisioning controller", buf, 2u);
    }

    v6 = WeakRetained[5];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000765E4;
    v7[3] = &unk_1008407A8;
    objc_copyWeak(&v9, (a1 + 48));
    v8 = *(a1 + 40);
    [v6 preflightWithRequirements:5 completionRequirements:5 completion:v7];

    objc_destroyWeak(&v9);
  }
}

void sub_1000765E4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (a2)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Safari Import: Preflight success!", buf, 2u);
      }

      [WeakRetained _associateCredentialsForItem:*(a1 + 32)];
    }

    else
    {
      v8 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100076718;
      block[3] = &unk_10083C4C0;
      v10 = v5;
      v11 = *(a1 + 32);
      v12 = WeakRetained;
      dispatch_async(v8, block);
    }
  }
}

void sub_100076718(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Safari Import: Preflight failed: %@", &v8, 0xCu);
  }

  v4 = [*(a1 + 40) completion];

  if (v4)
  {
    v5 = [*(a1 + 40) completion];
    (v5)[2](v5, &__NSArray0__struct, &__NSArray0__struct, &__NSArray0__struct, *(a1 + 32));
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void sub_1000768B8(uint64_t a1)
{
  if (*(*(a1 + 32) + 40))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Safari Import: Associating credentials with provisioning controller", &buf, 2u);
    }

    objc_initWeak(&buf, *(a1 + 32));
    v3 = *(*(a1 + 32) + 40);
    v4 = [*(a1 + 40) credentials];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100076B44;
    v6[3] = &unk_100840870;
    v6[4] = *(a1 + 32);
    objc_copyWeak(&v8, &buf);
    v7 = *(a1 + 40);
    [v3 associateCredentials:v4 withCompletionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&buf);
  }

  else
  {
    v5 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100076A88;
    block[3] = &unk_10083C470;
    v11 = *(a1 + 40);
    dispatch_async(v5, block);
  }
}

void sub_100076A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100076A88(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Safari Import: Provisioning controller already destroyed, can't associate", v5, 2u);
  }

  v3 = [*(a1 + 32) completion];

  if (v3)
  {
    v4 = [*(a1 + 32) completion];
    (v4)[2](v4, &__NSArray0__struct, &__NSArray0__struct, &__NSArray0__struct, 0);
  }
}

void sub_100076B44(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100076C28;
  block[3] = &unk_100840848;
  objc_copyWeak(&v14, (a1 + 48));
  v15 = a2;
  v11 = v5;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v12 = v7;
  v13 = v8;
  v9 = v5;
  dispatch_async(v6, block);

  objc_destroyWeak(&v14);
}

void sub_100076C28(uint64_t a1)
{
  v1 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v41 = objc_alloc_init(NSMutableArray);
    v4 = *(v1 + 64);
    v5 = PKLogFacilityTypeGetObject();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v40 = WeakRetained;
    v42 = v3;
    if (v4 == 1)
    {
      v7 = v1;
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Safari Import: Association succeeded", buf, 2u);
      }

      v8 = [WeakRetained[5] associatedCredentials];
      v9 = [v8 copy];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v5 = v9;
      v10 = [v5 countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v56;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v56 != v12)
            {
              objc_enumerationMutation(v5);
            }

            v14 = *(*(&v55 + 1) + 8 * i);
            v15 = [v14 fpanCredential];
            [v3 safelyAddObject:v15];

            [WeakRetained[5] resolveProvisioningForCredential:v14];
          }

          v11 = [v5 countByEnumeratingWithState:&v55 objects:v62 count:16];
        }

        while (v11);
      }

      v1 = v7;
    }

    else if (v6)
    {
      v16 = *(v1 + 32);
      *buf = 138412290;
      v61 = v16;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Safari Import: Association failed: %@", buf, 0xCu);
    }

    v43 = objc_alloc_init(NSMutableArray);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [*(v1 + 40) credentials];
    v17 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v17)
    {
      v18 = v17;
      v45 = *v52;
      do
      {
        v19 = 0;
        do
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v51 + 1) + 8 * v19);
          v21 = [v20 state];
          v22 = [v21 eligibilityResponse];

          if (v22)
          {
            if ([v22 eligibilityStatus] == 3 || (objc_msgSend(v22, "fpanIdentifiers"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "count"), v23, v24))
            {
              v25 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Safari Import: Credential is already provisioned", buf, 2u);
              }

              v26 = v1;
              v27 = *(*(v1 + 48) + 24);
              v28 = [v22 fpanIdentifiers];
              v29 = [v28 firstObject];
              v30 = [v27 passWithPrimaryAccountIdentifier:v29];
              v31 = [v30 paymentPass];

              if (v31)
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Safari Import: Found pass for already provisioned credential", buf, 2u);
                }

                v32 = [[PDFPANEligibilityCredentialPassPair alloc] initWithCredential:v20 paymentPass:v31];
                [v43 safelyAddObject:v32];
              }

              v1 = v26;
            }

            else
            {
              if ([v22 eligibilityStatus] == 1 && objc_msgSend(v22, "supersededBy"))
              {
                if ([v42 containsObject:v20])
                {
                  goto LABEL_30;
                }

                v33 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Safari Import: Credential was a card on file, but not provisioned", buf, 2u);
                }

                v34 = v42;
              }

              else
              {
                if ([v22 eligibilityStatus])
                {
                  goto LABEL_30;
                }

                v34 = v41;
              }

              [v34 safelyAddObject:v20];
            }
          }

LABEL_30:

          v19 = v19 + 1;
        }

        while (v18 != v19);
        v35 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        v18 = v35;
      }

      while (v35);
    }

    WeakRetained = v40;
    [v40[5] reset];
    v36 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000771B0;
    block[3] = &unk_10083E088;
    v47 = v42;
    v48 = v43;
    v49 = *(v1 + 40);
    v50 = v41;
    v37 = v41;
    v38 = v43;
    v39 = v42;
    dispatch_async(v36, block);
  }
}

void sub_1000771B0(id *a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] count];
    v4 = [a1[5] count];
    v10 = 134218240;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Safari Import: Safari count: %ld, Provisioned count: %ld", &v10, 0x16u);
  }

  v5 = [a1[6] completion];

  if (v5)
  {
    v6 = [a1[6] completion];
    v7 = [a1[4] copy];
    v8 = [a1[7] copy];
    v9 = [a1[5] copy];
    (v6)[2](v6, v7, v8, v9, 0);
  }
}

void sub_100077998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000779B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [(SQLiteEntity *)[PaymentOfferEndpointMetadata alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v7 = [(PaymentOfferEndpointMetadata *)v6 endpointMetadata];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a4 = 1;
}

void sub_100077DD0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000780A8(id a1, PDPaymentOfferEndpointMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDPaymentOfferEndpointMetadata *)v3 setLastUpdated:v4];
}

void sub_100078108(id a1, PDPaymentOfferEndpointMetadata *a2, id a3)
{
  v4 = a2;
  -[PDPaymentOfferEndpointMetadata setDirty:](v4, "setDirty:", [a3 BOOLValue]);
}

void sub_100078160(id a1, PDPaymentOfferEndpointMetadata *a2, id a3)
{
  v4 = a2;
  -[PDPaymentOfferEndpointMetadata setType:](v4, "setType:", [a3 integerValue]);
}

void sub_1000781B8(id a1, PDPaymentOfferEndpointMetadata *a2, id a3)
{
  v4 = a2;
  -[PDPaymentOfferEndpointMetadata setRetryBackoffLevel:](v4, "setRetryBackoffLevel:", [a3 integerValue]);
}

void sub_100078210(id a1, PDPaymentOfferEndpointMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDPaymentOfferEndpointMetadata *)v3 setRetryNextAttempt:v4];
}

void sub_100078270(id a1, PDPaymentOfferEndpointMetadata *a2, id a3)
{
  v4 = a2;
  -[PDPaymentOfferEndpointMetadata setRetryReason:](v4, "setRetryReason:", [a3 integerValue]);
}

void sub_10007882C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100078844(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(a1 + 32) withUniqueID:*(a1 + 40)];
  if (v2)
  {
    v3 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"participant_identifier" values:*(a1 + 48)];
    v4 = [*(a1 + 64) queryWithDatabase:*(a1 + 32) predicate:v3];
    *(*(*(a1 + 56) + 8) + 24) = [v4 deleteAllEntities];

    v5 = [[NSMutableSet alloc] initWithSet:*(a1 + 48)];
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = [v6 _predicateForPassUniqueID:*(a1 + 40)];
    v9 = [v6 queryWithDatabase:v7 predicate:v8];

    v30 = @"participant_identifier";
    v10 = [NSArray arrayWithObjects:&v30 count:1];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100078B00;
    v27[3] = &unk_1008409E0;
    v11 = v5;
    v28 = v11;
    [v9 enumerateProperties:v10 usingBlock:v27];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(a1 + 56) + 8);
          if (*(v17 + 24))
          {
            v18 = *(*(&v23 + 1) + 8 * i);
            v19 = [TileDescriptorStateParticipant alloc];
            v20 = [(TileDescriptorStateParticipant *)v19 _initWitParticipantID:v18 forPass:v2 inDatabase:*(a1 + 32), v23];
            *(*(*(a1 + 56) + 8) + 24) = v20 != 0;
          }

          else
          {
            *(v17 + 24) = 0;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v14);
    }

    v21 = *(*(*(a1 + 56) + 8) + 24);
  }

  else
  {
    [*(a1 + 64) removeParticipantsForPassUniqueID:*(a1 + 40) inDatabase:*(a1 + 32)];
    v21 = 0;
  }

  return v21 & 1;
}

void sub_100078F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100078F18(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 64)) initWithPendingProvisioning:*(a1 + 32) forBasePendingProvisioning:*(a1 + 40) inDatabase:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

void sub_1000790CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000790E4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v9 = a1[6];
  v10 = a3;
  v11 = [v9 _propertySetters];
  [v9 applyPropertySetters:v11 toObject:a1[4] withProperties:v10 values:a4];

  *a6 = 1;
  *(*(a1[5] + 8) + 24) = 1;
}

void sub_100079434(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  [v5 setManufacturerIdentifier:v4];
}

void sub_100079494(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  [v5 setIssuerIdentifier:v4];
}

void sub_1000794F4(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  [v5 setProvisioningTemplateIdentifier:v4];
}

void sub_100079554(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  LODWORD(a2) = [v4 unsignedIntValue];

  [v5 setSupportedRadioTechnologies:a2];
}

void sub_1000795C4(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  [v5 setProductPlanIdentifier:v4];
}

void sub_100079624(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  [v5 setVehicleName:v4];
}

void sub_100079684(id a1, PKPendingCarKeyProvisioning *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPendingCarKeyProvisioning *)a2 configuration];
  [v5 setPairedReaderIdentifier:v4];
}

void sub_10007996C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100079984(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 64)) initWithMetadata:*(a1 + 32) forBaseMetadata:*(a1 + 40) inDatabase:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 56) + 8) + 40) != 0;
}

void sub_100079B40(uint64_t a1, uint64_t a2, uint64_t a3, id *a4, uint64_t a5, _BYTE *a6)
{
  if (*a4)
  {
    v8 = *a4;
    v9 = [NSSet alloc];
    v10 = objc_opt_class();
    v11 = [v9 initWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v8 error:0];

    [*(a1 + 32) setVehicleFunctions:v12];
  }

  *a6 = 1;
}

void sub_10007A28C(uint64_t a1, uint64_t a2, void *a3, id *a4)
{
  v7 = a3;
  v6 = *a4;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void sub_10007A484(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v6 = *a4;
  v7 = [NSNumber numberWithLongLong:a2];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [*(a1 + 32) objectForKey:v7];
  v8 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 setTransactionSourceIdentifier:v6];
        v13 = +[PaymentApplication anyInDatabase:withTransactionSourcePID:](PaymentApplication, "anyInDatabase:withTransactionSourcePID:", *(a1 + 40), [v7 longLongValue]);
        [v12 setHasAssociatedPaymentApplication:v13 != 0];
      }

      v9 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_10007B3BC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v7 = [v6 valueForProperty:@"b"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) addObject:v7];
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10007B710(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(SQLiteEntity *)[AccountRewards alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v7 = *(a1 + 40);
  v8 = [(AccountRewards *)v6 rewards];
  [v7 addObject:v8];

  objc_autoreleasePoolPop(v5);
}

void sub_10007BBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(SQLiteEntity *)AccountRewards applyPropertySetters:*(a1 + 32) toObject:*(a1 + 40) withProperties:a2 values:a3];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) currencyAmount];
  [v4 setCurrencyAmount:v5];
}

void sub_10007BFD4(id a1, PKAccountRewards *a2, id a3)
{
  v4 = a2;
  -[PKAccountRewards setType:](v4, "setType:", [a3 integerValue]);
}

void sub_10007C034(id a1, PKAccountRewards *a2, id a3)
{
  v4 = a2;
  -[PKAccountRewards setStatusCode:](v4, "setStatusCode:", [a3 integerValue]);
}

void sub_10007C830(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 updateCloudStoreWithLocalItemsWithConfigurations:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService updateCloudStoreWithLocalItemsWithConfigurations:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService updateCloudStoreWithLocalItemsWithConfigurations:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService updateCloudStoreWithLocalItemsWithConfigurations:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007CC88(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 removeAllItems:*(a1 + 64) inZoneName:*(a1 + 40) containerName:*(a1 + 48) storeLocally:*(a1 + 72) completion:*(a1 + 56)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService removeAllItems:inZoneName:containerName:storeLocally:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService removeAllItems:inZoneName:containerName:storeLocally:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService removeAllItems:inZoneName:containerName:storeLocally:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007D0F8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 removeRecordWithRecordName:*(a1 + 40) zoneName:*(a1 + 48) containerName:*(a1 + 56) completion:*(a1 + 64)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService removeRecordWithRecordName:zoneName:containerName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService removeRecordWithRecordName:zoneName:containerName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService removeRecordWithRecordName:zoneName:containerName:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, v7);

LABEL_14:
    }
  }
}

void sub_10007D504(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 allItemsOfItemType:*(a1 + 48) storeLocally:*(a1 + 56) completion:*(a1 + 40)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService allItemsOfItemType:storeLocally:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService allItemsOfItemType:storeLocally:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService allItemsOfItemType:storeLocally:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007D948(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService applePayContainerItemsFromDate:toDate:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 56);
    v12 = NSLocalizedDescriptionKey;
    v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService applePayContainerItemsFromDate:toDate:completion:]_block_invoke"];
    v13 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
    (*(v4 + 16))(v4, 0, v7);

    goto LABEL_12;
  }

  v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

  if (!v2)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService applePayContainerItemsFromDate:toDate:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    v14 = NSLocalizedDescriptionKey;
    v15 = @"Cloud store not initialized";
    v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
    (*(v9 + 16))(v9, 0, v10);

LABEL_12:
    return;
  }

  v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
  [v11 applePayContainerItemsFromDate:*(a1 + 40) toDate:*(a1 + 48) completion:*(a1 + 56)];
}

void sub_10007DD7C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 itemOfItemType:*(a1 + 56) recordName:*(a1 + 40) qualityOfService:*(a1 + 64) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService itemOfItemType:recordName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService itemOfItemType:recordName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService itemOfItemType:recordName:qualityOfService:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007E1B8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 itemOfItemTypeFromAllZones:*(a1 + 56) recordName:*(a1 + 40) qualityOfService:*(a1 + 64) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService itemOfItemTypeFromAllZones:recordName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService itemOfItemTypeFromAllZones:recordName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService itemOfItemTypeFromAllZones:recordName:qualityOfService:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007E5DC(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 cloudStoreRecordArrayWithConfiguration:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService cloudStoreRecordArrayWithConfiguration:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService cloudStoreRecordArrayWithConfiguration:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService cloudStoreRecordArrayWithConfiguration:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007EA1C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 resetContainerWithIdentifier:*(a1 + 40) zoneNames:*(a1 + 48) completion:*(a1 + 56)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService resetContainerWithIdentifier:zoneNames:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService resetContainerWithIdentifier:zoneNames:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService resetContainerWithIdentifier:zoneNames:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007EE38(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 simulateCloudStorePushForContainerIdentifier:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService simulateCloudStorePushForContainerIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService simulateCloudStorePushForContainerIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService simulateCloudStorePushForContainerIdentifier:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, 0, v7);

LABEL_14:
    }
  }
}

void sub_10007F258(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) transactionSourceController];

    if (v2)
    {
      v11 = [*(a1 + 32) transactionSourceController];
      [v11 simulatePassProvisioningForPassUniqueIdentifier:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService simulatePassProvisioningForPassUniqueIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService simulatePassProvisioningForPassUniqueIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService simulatePassProvisioningForPassUniqueIdentifier:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, v7);

LABEL_14:
    }
  }
}

void sub_10007F668(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
    v3 = [v2 applePayContainer];

    if (v3)
    {
      v13 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      v4 = [v13 applePayContainer];
      [v4 generateRandomTransactionForTransactionSourceIdentifier:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService generateRandomTransactionForTransactionSourceIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Cloud store not initialized";
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v7];
      (*(v11 + 16))(v11, 0, v12);

      goto LABEL_14;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService generateRandomTransactionForTransactionSourceIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService generateRandomTransactionForTransactionSourceIdentifier:completion:]_block_invoke"];
      v15 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v8];
      (*(v6 + 16))(v6, 0, v9);

LABEL_14:
    }
  }
}

void sub_10007FAD0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
    v3 = [v2 applePayContainer];

    if (v3)
    {
      v13 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      v4 = [v13 applePayContainer];
      [v4 uploadTransaction:*(a1 + 40) forTransactionSourceIdentifier:*(a1 + 48) includeServerData:*(a1 + 64) completion:*(a1 + 56)];

      return;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService uploadTransaction:forTransactionSourceIdentifier:includeServerData:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Cloud store not initialized";
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v7];
      (*(v11 + 16))(v11, 0, v12);

      goto LABEL_14;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService uploadTransaction:forTransactionSourceIdentifier:includeServerData:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService uploadTransaction:forTransactionSourceIdentifier:includeServerData:completion:]_block_invoke"];
      v15 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v8];
      (*(v6 + 16))(v6, 0, v9);

LABEL_14:
    }
  }
}

void sub_10007FF38(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 deleteZone:*(a1 + 40) containerName:*(a1 + 48) completion:*(a1 + 56)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService deleteZone:containerName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService deleteZone:containerName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService deleteZone:containerName:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10008037C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 createZone:*(a1 + 40) containerName:*(a1 + 48) completion:*(a1 + 56)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService createZone:containerName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService createZone:containerName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService createZone:containerName:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_1000807C0(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
    v3 = [v2 applePayContainer];

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100080A9C;
      v13[3] = &unk_100840C20;
      v14 = *(a1 + 56);
      [v3 populateEvents:v4 forAccountIdentifier:v5 completion:v13];
      v6 = v14;
LABEL_13:

LABEL_14:
      return;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[PDCloudStoreService populateEvents:forAccountIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v8 = *(a1 + 56);
    if (!v8)
    {
      goto LABEL_14;
    }

    v17 = NSLocalizedDescriptionKey;
    v18 = @"Cloud store not initialized";
    v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = PKPassKitErrorDomain;
    v10 = -5000;
LABEL_12:
    v12 = [NSError errorWithDomain:v9 code:v10 userInfo:v6];
    (*(v8 + 16))(v8, 0, v12);

    goto LABEL_13;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "[PDCloudStoreService populateEvents:forAccountIdentifier:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v15 = NSLocalizedDescriptionKey;
    v3 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService populateEvents:forAccountIdentifier:completion:]_block_invoke"];
    v16 = v3;
    v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = PKPassKitErrorDomain;
    v10 = -5002;
    goto LABEL_12;
  }
}

uint64_t sub_100080A9C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100080C3C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 declineInvitationForRecipientHandle:*(a1 + 40) zoneName:*(a1 + 48) containerName:*(a1 + 56) qualityOfService:*(a1 + 72) completion:*(a1 + 64)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService declineInvitationForRecipientHandle:zoneName:containerName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService declineInvitationForRecipientHandle:zoneName:containerName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService declineInvitationForRecipientHandle:zoneName:containerName:qualityOfService:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_1000810B4(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 createInvitationForRecipientHandle:*(a1 + 40) zoneName:*(a1 + 48) containerName:*(a1 + 56) qualityOfService:*(a1 + 72) completion:*(a1 + 64)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService createInvitationForRecipientHandle:zoneName:containerName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 64);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService createInvitationForRecipientHandle:zoneName:containerName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService createInvitationForRecipientHandle:zoneName:containerName:qualityOfService:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_100081504(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 shareForZoneName:*(a1 + 40) containerName:*(a1 + 48) qualityOfService:*(a1 + 64) completion:*(a1 + 56)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService shareForZoneName:containerName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService shareForZoneName:containerName:qualityOfService:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService shareForZoneName:containerName:qualityOfService:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_100081920(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 diagnosticInfoForContainerWithName:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService diagnosticInfoForContainerWithName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService diagnosticInfoForContainerWithName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService diagnosticInfoForContainerWithName:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_100081D38(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 diagnosticSnapshotForContainerWithName:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService diagnosticSnapshotForContainerWithName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService diagnosticSnapshotForContainerWithName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService diagnosticSnapshotForContainerWithName:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_10008215C(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      [v11 performAction:*(a1 + 56) inContainerWithName:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService performAction:inContainerWithName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService performAction:inContainerWithName:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService performAction:inContainerWithName:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, v7);

LABEL_14:
    }
  }
}

void sub_100082570(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) transactionSourceController];
      [v11 performBackgroundTransactionSyncFromDate:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService performBackgroundTransactionSyncFromDate:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 48);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, 0, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService performBackgroundTransactionSyncFromDate:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService performBackgroundTransactionSyncFromDate:completion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, 0, v7);

LABEL_14:
    }
  }
}

void sub_100082964(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v11 = [*(a1 + 32) transactionSourceController];
      [v11 performBackgroundRecordChangesSyncWithCompletion:*(a1 + 40)];

      return;
    }

    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService performBackgroundRecordChangesSyncWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v14 = NSLocalizedDescriptionKey;
      v15 = @"Cloud store not initialized";
      v5 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v10 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v5];
      (*(v9 + 16))(v9, v10);

      goto LABEL_14;
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[PDCloudStoreService performBackgroundRecordChangesSyncWithCompletion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v12 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService performBackgroundRecordChangesSyncWithCompletion:]_block_invoke"];
      v13 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v7 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v6];
      (*(v4 + 16))(v4, v7);

LABEL_14:
    }
  }
}

void sub_100082D74(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];

    if (v2)
    {
      v3 = *(a1 + 48);
      if (v3)
      {
        v13 = [*(a1 + 32) cloudStoreNotificationCoordinator];
        v4 = [v13 changeHistoryForContainerIdentifier:*(a1 + 40)];
        (*(v3 + 16))(v3, v4, 0);
      }

      return;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService changeHistoryForContainerIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Cloud store not initialized";
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v7];
      (*(v11 + 16))(v11, 0, v12);

      goto LABEL_15;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService changeHistoryForContainerIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService changeHistoryForContainerIdentifier:completion:]_block_invoke"];
      v15 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v8];
      (*(v6 + 16))(v6, 0, v9);

LABEL_15:
    }
  }
}

void sub_1000831B8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
    v3 = [v2 applePayContainer];

    if (v3)
    {
      v13 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      v4 = [v13 applePayContainer];
      [v4 uploadIssuerMessagingFlag:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService uploadIssuerMessagingFlag:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Cloud store not initialized";
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v7];
      (*(v11 + 16))(v11, v12);

      goto LABEL_14;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService uploadIssuerMessagingFlag:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService uploadIssuerMessagingFlag:completion:]_block_invoke"];
      v15 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v8];
      (*(v6 + 16))(v6, v9);

LABEL_14:
    }
  }
}

void sub_1000835E8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) paymentAllAccess])
  {
    v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
    v3 = [v2 applePayContainer];

    if (v3)
    {
      v13 = [*(a1 + 32) cloudStoreNotificationCoordinator];
      v4 = [v13 applePayContainer];
      [v4 deleteIssuerMessagingFlagWithIdentifier:*(a1 + 40) completion:*(a1 + 48)];

      return;
    }

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService deleteIssuerMessagingFlagWithIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cloud store not initialized. Cannot call method: %s", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v16 = NSLocalizedDescriptionKey;
      v17 = @"Cloud store not initialized";
      v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v12 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5000 userInfo:v7];
      (*(v11 + 16))(v11, v12);

      goto LABEL_14;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[PDCloudStoreService deleteIssuerMessagingFlagWithIdentifier:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Client is not entitled for method: %s", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      v14 = NSLocalizedDescriptionKey;
      v7 = [NSString stringWithFormat:@"Client is not entitled for method: %s", "[PDCloudStoreService deleteIssuerMessagingFlagWithIdentifier:completion:]_block_invoke"];
      v15 = v7;
      v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v9 = [NSError errorWithDomain:PKPassKitErrorDomain code:-5002 userInfo:v8];
      (*(v6 + 16))(v6, v9);

LABEL_14:
    }
  }
}

void sub_100083A50(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100083AFC;
  v4[3] = &unk_10083C7F8;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 setupCloudDatabaseForContainerName:v3 completion:v4];
}

uint64_t sub_100083AFC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100083C80(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100083D2C;
  v4[3] = &unk_100840C70;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 cloudStoreStatusForContainer:v3 completion:v4];
}

uint64_t sub_100083D2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100083E84(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100083F24;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 checkTLKsMissingWithCompletion:v3];
}

uint64_t sub_100083F24(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10008407C(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudStoreNotificationCoordinator];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10008411C;
  v3[3] = &unk_10083C7F8;
  v4 = *(a1 + 40);
  [v2 resetApplePayManateeViewWithCompletion:v3];
}

uint64_t sub_10008411C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000843A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 > 4)
  {
    v3 = @"unkown reason";
  }

  else
  {
    v3 = off_100840FA8[v2];
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 200);
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      v8 = [*(v4 + 184) logDescription];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v3;
      v9 = "[PDPassCloudStore(%{public}@)] won't synchronize container is readonly: %{public}@";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, &v13, 0x16u);
    }
  }

  else
  {
    if (v7)
    {
      v10 = [*(v4 + 184) logDescription];
      v13 = 138543618;
      v14 = v10;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] synchronization data requested: %{public}@", &v13, 0x16u);
    }

    v11 = [*(a1 + 32) ensureSyncPreconditionsAreMet];
    v12 = *(a1 + 32);
    if (v11)
    {
      [(os_unfair_lock_s *)v12 downloadCloudDataWithReason:*(a1 + 40)];
      return;
    }

    os_unfair_lock_lock(v12 + 54);
    *(*(a1 + 32) + 203) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 216));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(*(a1 + 32) + 184) logDescription];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v3;
      v9 = "[PDPassCloudStore(%{public}@)] won't synchronize container now: %{public}@ (precondition)";
      goto LABEL_13;
    }
  }
}

void sub_100084658(uint64_t a1)
{
  v2 = @"unkown reason";
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 1)
  {
    v2 = @"perodic check-in";
  }

  if (v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = @"reachability change";
  }

  v6 = *(v4 + 200);
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (v8)
    {
      v9 = [*(v4 + 184) logDescription];
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      v10 = "[PDPassCloudStore(%{public}@)] won't process pending changes because container is readonly: %{public}@";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v11 = [*(v4 + 184) logDescription];
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] processing pending changes requested: %{public}@", buf, 0x16u);
    }

    if ([*(a1 + 32) ensureSyncPreconditionsAreMet])
    {
      v12 = *(a1 + 32);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000848A4;
      v13[3] = &unk_100840C98;
      v13[4] = v12;
      v14 = v5;
      [v12 processPendingChanges:v13];

      return;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(*(a1 + 32) + 184) logDescription];
      *buf = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      v10 = "[PDPassCloudStore(%{public}@)] won't process pending changes now:%{public}@ (precondition)";
      goto LABEL_15;
    }
  }
}

void sub_1000848A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 184);
    v8 = a3;
    v9 = [v7 logDescription];
    v10 = *(a1 + 40);
    v11 = [NSNumber numberWithBool:a2];

    v12 = 138544130;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] because:%{public}@ did process pending changes:%{public}@ %{public}@", &v12, 0x2Au);
  }
}

void sub_100084A3C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 216));
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  *(v2 + 208) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 216));
  v4 = [*(*(a1 + 32) + 184) stringPrefixedWithContainerName:@"PDPassSyncCloudStoreContainerLastDownloadDateKey"];
  PKSharedCacheRemoveObjectForKey();

  v5 = [*(a1 + 32) delegate];
  [v5 cloudStoreContainer:*(a1 + 32) reinitializeContainerAndInvalidateFirst:1];
}

id sub_1000850C8()
{
  v0 = +[ACAccountStore defaultStore];
  v1 = [v0 aa_primaryAppleAccount];

  v2 = [v1 isEnabledForDataclass:ACAccountDataclassShoebox];
  return v2;
}

void sub_100085850(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100085914;
  v7[3] = &unk_10083C4C0;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  [v10 onWorkQueue:v7];
}

void sub_100085914(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStatus];
  if (*(a1 + 40))
  {
    [*(a1 + 48) setOperationError:?];
    v3 = *(a1 + 48);
    v4 = 3;
LABEL_3:

    [v3 advanceToNextState:v4];
    return;
  }

  v5 = v2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v5 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([v6 hasValidCredentials] & 1) != 0)
  {
    v8 = [*(*(a1 + 48) + 184) isEndToEndEncrypted];
    v9 = [*(a1 + 32) deviceToDeviceEncryptionAvailability];
    v10 = *(a1 + 48);
    if (!v8)
    {
      *(v10 + 200) = v9 & 1;
      v3 = *(a1 + 48);
      v4 = 5;
      goto LABEL_3;
    }

    *(v10 + 200) = !(v9 & 1);
    v11 = [*(a1 + 32) deviceToDeviceEncryptionAvailability];
    v12 = PKLogFacilityTypeGetObject();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if ((v11 & 2) != 0)
    {
      if (v13)
      {
        v18 = [*(*(a1 + 48) + 184) logDescription];
        *buf = 138543362;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] secure sync is possible now", buf, 0xCu);
      }

      [*(a1 + 48) advanceToNextState:5];
    }

    else
    {
      if (v13)
      {
        v14 = [*(*(a1 + 48) + 184) logDescription];
        v15 = [NSNumber numberWithInt:*(*(a1 + 48) + 200) ^ 1u];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] secure sync is not possible now (supported by account:%{public}@)", buf, 0x16u);
      }

      v16 = *(a1 + 48);
      v17 = [v16 errorWithCode:-4005 description:@"Manatee not available now"];
      [v16 advanceToNextState:3 withError:v17];
    }
  }

  else
  {
    v19 = [*(a1 + 48) errorWithCode:-4008 description:@"User has an invalid account state"];
    [*(a1 + 48) setOperationError:?];
    [*(a1 + 48) advanceToNextState:3];
  }
}

id sub_100086410(uint64_t a1)
{
  [*(a1 + 32) markEndOfDownload:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 finishDownloadOfCloudDataWithContents:v3 forReason:v4];
}

id sub_100086454(uint64_t a1)
{
  [*(a1 + 32) markEndOfDownload:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 finishDownloadOfCloudDataWithContents:v3 forReason:v4];
}

void sub_100086B44(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 184);
    v8 = a3;
    v9 = [v7 logDescription];
    v10 = [NSNumber numberWithBool:a2];

    v11 = 138543874;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did process pending changes:%{public}@ after graceful abort %{public}@", &v11, 0x20u);
  }
}

void sub_100086E00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![*(a1 + 32) didEncounterChangeTokenExpiredError:v6])
  {
    [*(a1 + 32) moveItemsFromResponse:v5 duringDeltaSync:1 orError:v6 toContents:*(a1 + 48)];
    v9 = PKLogFacilityTypeGetObject();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v10)
      {
        v11 = [*(*(a1 + 32) + 184) logDescription];
        v14 = 138543362;
        v15 = v11;
        v12 = "[PDPassCloudStore(%{public}@)] error downloading records (delta-sync)";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, &v14, 0xCu);
      }
    }

    else if (v10)
    {
      v11 = [*(*(a1 + 32) + 184) logDescription];
      v14 = 138543362;
      v15 = v11;
      v12 = "[PDPassCloudStore(%{public}@)] did download records (delta-sync)";
      goto LABEL_10;
    }

    (*(*(a1 + 56) + 16))(*(a1 + 56), v13);
    goto LABEL_12;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(*(a1 + 32) + 184) logDescription];
    v14 = 138543362;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] can't download records with expired token (delta-sync)", &v14, 0xCu);
  }

  [*(a1 + 32) doFullSyncOfZone:*(a1 + 40) andFill:*(a1 + 48) completion:*(a1 + 56)];
LABEL_12:
}

void sub_100087238(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(*(a1 + 32) + 184) logDescription];
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did download record batch (full-sync)", buf, 0xCu);
  }

  v9 = objc_alloc_init(PDPassCloudStoreContainerContent);
  [*(a1 + 32) moveItemsFromResponse:v5 duringDeltaSync:0 orError:0 toContents:v9];
  [*(a1 + 32) moveItemsFromBatchContents:v9 toFinalContents:*(a1 + 40)];
  v10 = [*(a1 + 32) localStore];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000873E0;
  v12[3] = &unk_10083C7F8;
  v13 = v6;
  v11 = v6;
  [v10 saveRemoteDataFromContainer:v9 completion:v12];
}

uint64_t sub_1000873F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) moveItemsFromResponse:a2 duringDeltaSync:0 orError:a3 toContents:*(a1 + 40)];
  v5 = PKLogFacilityTypeGetObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v6)
    {
      v7 = [*(*(a1 + 32) + 184) logDescription];
      v11 = 138543362;
      v12 = v7;
      v8 = "[PDPassCloudStore(%{public}@)] error downloading records (full-sync)";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    }
  }

  else if (v6)
  {
    v7 = [*(*(a1 + 32) + 184) logDescription];
    v11 = 138543362;
    v12 = v7;
    v8 = "[PDPassCloudStore(%{public}@)] did download all records (full-sync)";
    goto LABEL_6;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), v9);
}

void sub_1000879B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 184) logDescription];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did upload local data after download (full-sync)", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100087AF8;
  v9[3] = &unk_10083C420;
  v9[4] = v7;
  v10 = v4;
  v8 = v4;
  [v7 onWorkQueue:v9];
}

id sub_100087AF8(uint64_t a1)
{
  v2 = [*(a1 + 32) localStore];
  [v2 didFinishSync:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 retryExecutingAnyDroppedDownload];
}

void sub_100087B48(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 184) logDescription];
    v8 = [NSNumber numberWithBool:a2];
    *buf = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did process pending changes:%{public}@ after download (delta-sync) %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100087CC8;
  v11[3] = &unk_10083C420;
  v11[4] = v9;
  v12 = v5;
  v10 = v5;
  [v9 onWorkQueue:v11];
}

id sub_100087CC8(uint64_t a1)
{
  v2 = [*(a1 + 32) localStore];
  [v2 didFinishSync:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 retryExecutingAnyDroppedDownload];
}

void sub_100087FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(*(a1 + 32) + 184) logDescription];
    *buf = 138543362;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did upload local data after download (full-sync)", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100088104;
  v9[3] = &unk_10083C420;
  v9[4] = v7;
  v10 = v4;
  v8 = v4;
  [v7 onWorkQueue:v9];
}

id sub_100088104(uint64_t a1)
{
  [*(a1 + 32) advanceToNextState:15 withError:*(a1 + 40)];
  v2 = [*(a1 + 32) localStore];
  [v2 didFinishSync:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 retryExecutingAnyDroppedDownload];
}

void sub_100088164(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(*(a1 + 32) + 184) logDescription];
    v8 = [NSNumber numberWithBool:a2];
    *buf = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] did process pending changes: %{public}@ after download (delta-sync) %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000882E4;
  v11[3] = &unk_10083C420;
  v11[4] = v9;
  v12 = v5;
  v10 = v5;
  [v9 onWorkQueue:v11];
}

id sub_1000882E4(uint64_t a1)
{
  [*(a1 + 32) advanceToNextState:15 withError:*(a1 + 40)];
  v2 = [*(a1 + 32) localStore];
  [v2 didFinishSync:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 retryExecutingAnyDroppedDownload];
}

void sub_100088AFC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 216));
  v2 = *(a1 + 32);
  v3 = *(v2 + 203);
  *(v2 + 203) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 216));
  if (v3 == 1)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*(a1 + 32) + 184) logDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] will retry a dropped download", &v6, 0xCu);
    }

    [*(a1 + 32) synchronizeWithReason:3];
  }
}

void sub_100088FAC(id *a1)
{
  v2 = a1[4];
  if (*(v2 + 200) == 1)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2[23] logDescription];
      *buf = 138543362;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] won't upload passes because container is readonly", buf, 0xCu);
    }

    v5 = a1[6];
    if (v5)
    {
      v6 = 206;
LABEL_17:
      v7 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:v6 userInfo:0];
      (*(v5 + 2))(v5, 0, 0, v7);
      goto LABEL_18;
    }
  }

  else if ([a1[5] count])
  {
    if ([a1[4] ensureSyncPreconditionsAreMet])
    {
      v7 = [a1[5] pk_arrayByApplyingBlock:&stru_100840D78];
      v8 = a1[4];
      v9 = [NSSet setWithArray:v7];
      v10 = PKCloudStoreOperationGroupUserActionExplicit;
      v11 = PKCloudStoreOperationGroupSuffixCopyRecords;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10008933C;
      v16[3] = &unk_100840DA0;
      v17 = a1[6];
      [v8 updateCloudStoreWithLocalItemsWithConfigurations:v9 groupName:v10 groupNameSuffix:v11 qualityOfService:17 completion:v16];

LABEL_18:
      return;
    }

    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1[4] + 23) logDescription];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] not ready for passes update (precondition)", buf, 0xCu);
    }

    v5 = a1[6];
    if (v5)
    {
      v6 = 205;
      goto LABEL_17;
    }
  }

  else
  {
    v12 = a1[6];
    if (v12)
    {
      v15 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:201 userInfo:0];
      (*(v12 + 2))(v12, 0, 0);
    }
  }
}

PKCloudStoreUploadItemConfiguration *__cdecl sub_1000892E4(id a1, PKPass *a2)
{
  v2 = a2;
  v3 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:v2];

  return v3;
}

uint64_t sub_10008933C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100089418(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 200) != 1)
  {
    v7 = [*(a1 + 32) containerManager];
    v6 = [v7 databaseForScope:2];

    if (!v6)
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:204 userInfo:0];
        (*(v14 + 16))(v14, 0, v15);
      }

      goto LABEL_20;
    }

    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000897E0;
    v24 = &unk_100840DC8;
    v8 = *(a1 + 40);
    v25 = *(a1 + 32);
    v6 = v6;
    v26 = v6;
    v9 = [v8 pk_arrayByApplyingBlock:&v21];
    v10 = [v9 pk_objectsPassingTest:{&stru_100840E08, v21, v22, v23, v24, v25}];

    if ([v10 count])
    {
      v11 = [v6 identifier];
      v27 = v11;
      v12 = [NSSet setWithArray:v10];
      v28 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];

      if ([*(a1 + 32) ensureSyncPreconditionsAreMet])
      {
        [*(a1 + 32) performDeletes:v13 completion:*(a1 + 48)];
      }

      else
      {
        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [*(*(a1 + 32) + 184) logDescription];
          *buf = 138543362;
          v30 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] not ready for pass removal (preconditon)", buf, 0xCu);
        }

        v19 = *(a1 + 48);
        if (v19)
        {
          v20 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:205 userInfo:0];
          (*(v19 + 16))(v19, 0, v20);
        }
      }
    }

    else
    {
      v16 = *(a1 + 48);
      if (!v16)
      {
LABEL_19:

        goto LABEL_20;
      }

      v13 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:202 userInfo:0];
      (*(v16 + 16))(v16, 0, v13);
    }

    goto LABEL_19;
  }

  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(v2 + 184) logDescription];
    *buf = 138543362;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] won't delete passes because container is readonly", buf, 0xCu);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:206 userInfo:0];
    (*(v5 + 16))(v5, 0, v6);
LABEL_20:
  }
}

id sub_1000897E0(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) cloudPassIDForLocalUniqueID:a2 inDatabase:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSNull null];
  }

  v5 = v4;

  return v5;
}

BOOL sub_10008984C(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = +[NSNull null];

  return v5 != v4;
}

void sub_100089BB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100089CB0;
  v12[3] = &unk_10083D238;
  v9 = objc_alloc_init(NSMutableArray);
  v13 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  v10 = [v9 count];
  if (v7 && !v10)
  {

    v9 = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v9, v7);
  }
}

void sub_100089CB0(uint64_t a1, uint64_t a2, void *a3)
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
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) recordName];
        v10 = [PKPass uniqueIDFromRecordName:v9];

        if (v10)
        {
          [*(a1 + 32) addObject:v10];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_100089EAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 200) == 1)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(v2 + 184) logDescription];
      *buf = 138543362;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] won't update cloud catalog because container is readonly", buf, 0xCu);
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:206 userInfo:0];
      (*(v5 + 16))(v5, 0, v6);
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      v6 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:*(a1 + 40)];
      if ([*(a1 + 32) ensureSyncPreconditionsAreMet])
      {
        v7 = *(a1 + 32);
        v8 = [NSSet setWithObject:v6];
        v9 = PKCloudStoreOperationGroupUserActionExplicit;
        v10 = PKCloudStoreOperationGroupSuffixCatalogUpdated;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10008A200;
        v17[3] = &unk_100840DA0;
        v18 = *(a1 + 48);
        [v7 updateCloudStoreWithLocalItemsWithConfigurations:v8 groupName:v9 groupNameSuffix:v10 qualityOfService:17 completion:v17];

        v11 = v18;
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(*(a1 + 32) + 184) logDescription];
          *buf = 138543362;
          v20 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PDPassCloudStore(%{public}@)] not ready for cataog update (preconditon)", buf, 0xCu);
        }

        v15 = *(a1 + 48);
        if (!v15)
        {
          goto LABEL_18;
        }

        v11 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:205 userInfo:0];
        (*(v15 + 16))(v15, 0, v11);
      }

LABEL_18:
      return;
    }

    v12 = *(a1 + 48);
    if (v12)
    {
      v16 = [NSError errorWithDomain:@"PDPassContainerErrorDomain" code:203 userInfo:0];
      (*(v12 + 16))(v12, 0);
    }
  }
}

void sub_10008A200(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6 = a4;
    v7 = [a2 firstObject];
    (*(v4 + 16))(v4, v7, v6);
  }
}

void sub_10008A300(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 216));
  v2 = *(a1 + 32);
  v3 = *(v2 + 208);
  *(v2 + 208) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 216));
  v4 = [*(*(a1 + 32) + 184) stringPrefixedWithContainerName:@"PDPassSyncCloudStoreContainerLastDownloadDateKey"];
  PKSharedCacheRemoveObjectForKey();
}

void sub_10008A628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008A6EC;
  v10[3] = &unk_10083C4C0;
  v10[4] = v7;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 onWorkQueue:v10];
}