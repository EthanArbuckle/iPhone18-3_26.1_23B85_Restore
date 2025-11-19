void sub_10018CE64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!v5 && a2)
  {
    v6 = [*(a1 + 32) transportIdentifier];
    [*(*(a1 + 40) + 16) deleteSharingEndpointForTransportIdentifier:v6];
    [*(*(a1 + 40) + 16) deleteSharingMessagesForTransportIdentifier:v6];

    v5 = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
    v5 = v8;
  }
}

void sub_10018D010(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (!v5 && a2)
  {
    v6 = *(*(a1 + 32) + 16);
    v7 = [*(a1 + 40) transportIdentifier];
    [v6 deleteSharingEndpointForTransportIdentifier:v7];

    v5 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v9);
    v5 = v9;
  }
}

void sub_10018D550(uint64_t a1, void *a2)
{
  v3 = [a2 pk_arrayBySafelyApplyingBlock:&stru_10084A4C8];
  (*(*(a1 + 32) + 16))();
}

id sub_10018D5B8(id a1, IDSDevice *a2)
{
  v2 = a2;
  if ([(IDSDevice *)v2 deviceType]== 2)
  {
    v3 = IDSCopyIDForDevice();
    v4 = [PKSharingIDSChannelDescriptor createWithDeviceIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_10018DAEC(id a1, PDSharingChannel_AncillaryService *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_10018DC24(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) type];
  if (v3 == 2)
  {
    v5 = [[PDSharingChannel_NWProximityVerificationAncillaryService alloc] initDetectorWithAdvertisement:*(a1 + 32) delegate:*(a1 + 40) completion:*(a1 + 56)];
  }

  else
  {
    if (v3 != 1 || v10 == 0)
    {
      goto LABEL_14;
    }

    v5 = [[PDSharingChannel_BLEProximityVerificationAncillaryService alloc] initDetectorWithAdvertisement:*(a1 + 32) remoteDevice:v10 delegate:*(a1 + 40) completion:*(a1 + 56)];
  }

  v6 = v5;
  if (v5)
  {
    os_unfair_lock_lock((*(a1 + 40) + 80));
    v7 = *(*(a1 + 40) + 88);
    v8 = [*(a1 + 48) transportIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [*(a1 + 40) _lock_addAncillaryService:v6 forTracker:v9];
    }

    else
    {

      v6 = 0;
    }

    os_unfair_lock_unlock((*(a1 + 40) + 80));

    if (v6)
    {
      [v6 start];

      goto LABEL_15;
    }
  }

LABEL_14:
  (*(*(a1 + 56) + 16))();
LABEL_15:
}

void sub_10018EDE0(uint64_t a1, uint64_t a2)
{
  v5 = [(SQLiteEntity *)[CreditAccountStatement alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [(CreditAccountStatement *)v5 creditAccountStatement];
  [v3 addObject:v4];
}

void sub_10018EFE0(uint64_t a1, uint64_t a2)
{
  v5 = [(SQLiteEntity *)[CreditAccountStatement alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [(CreditAccountStatement *)v5 creditAccountStatement];
  [v3 addObject:v4];
}

void sub_10018F4B8(uint64_t a1, uint64_t a2)
{
  v3 = [(SQLiteEntity *)[CreditAccountStatement alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

void sub_100190364(id a1, PKTransactionReleasedDataApplication *a2, id a3)
{
  if (a3)
  {
    v4 = a2;
    -[PKTransactionReleasedDataApplication setClient:](v4, "setClient:", [a3 unsignedIntegerValue]);
  }
}

void sub_1001903C4(id a1, PKTransactionReleasedDataApplication *a2, id a3)
{
  if (a3)
  {
    [(PKTransactionReleasedDataApplication *)a2 setBundleIdentifier:?];
  }
}

void sub_1001903D4(id a1, PKTransactionReleasedDataApplication *a2, id a3)
{
  if (a3)
  {
    [(PKTransactionReleasedDataApplication *)a2 setUsageDescription:?];
  }
}

void sub_100190A38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = objc_alloc_init(PKASCAssociatedReaderID);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v7 withProperties:v6 values:a4];

  [*(a1 + 40) addObject:v7];
}

void sub_100190BB8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100190D70(id a1, PKASCAssociatedReaderID *a2, id a3)
{
  v4 = a2;
  -[PKASCAssociatedReaderID setPriority:](v4, "setPriority:", [a3 unsignedIntegerValue]);
}

void sub_1001910F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10019110C(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 56)) initWithMetadata:*(a1 + 32) inDatabase:*(a1 + 40)];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) type];
  if (v3 == 3)
  {
    v4 = TileMetadataVerticalFlowGroup;
    v5 = [*(a1 + 32) metadataTypeVerticalFlowGroup];
LABEL_8:
    v6 = v5;
    v7 = [(__objc2_class *)v4 insertMetadata:v5 forBaseMetadata:v2 inDatabase:*(a1 + 40)];

    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v4 = TileMetadataHorizontalFlowGroup;
    v5 = [*(a1 + 32) metadataTypeHorizontalFlowGroup];
    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = TileMetadataRKE;
    v5 = [*(a1 + 32) metadataTypeVehicleFunction];
    goto LABEL_8;
  }

LABEL_9:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
  v8 = 1;
LABEL_11:

  return v8;
}

void sub_10019148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001914AC(uint64_t a1, void *a2, id *a3)
{
  v10 = a2;
  v5 = *a3;
  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v6 addObject:v5];
  }
}

void sub_100191868(uint64_t a1, uint64_t a2, id *a3)
{
  v14 = +[NSNull null];
  v5 = *a3;
  if (v5 == v14)
  {

    v5 = 0;
  }

  PKPassTileTypeFromString();
  v6 = a3[1];
  if (v6)
  {
    v7 = v6 == v14;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = a3[2];

    if (v8 == v14)
    {

      v8 = 0;
    }

    v9 = [PKPassTileMetadata _createMetadataForType:*(*(*(a1 + 32) + 8) + 24) identifier:v6 context:PKPassTileContextFromString()];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v5 = a3[3];
    if (v5 == v14)
    {

      v5 = 0;
    }

    [*(*(*(a1 + 40) + 8) + 40) setPreferredStyle:PKPassTileStyleFromString()];
    v12 = a3[4];
    if (v12 == v14)
    {

      v12 = 0;
    }

    [*(*(*(a1 + 40) + 8) + 40) setSelectable:{objc_msgSend(v12, "BOOLValue")}];
    v13 = a3[5];

    if (v13 == v14)
    {

      v13 = 0;
    }

    [*(*(*(a1 + 40) + 8) + 40) setShowInPrearm:{objc_msgSend(v13, "BOOLValue")}];
  }
}

id sub_100191AB0()
{
  if (qword_100924318 != -1)
  {
    sub_1005C87A4();
  }

  v1 = qword_100924320;

  return v1;
}

void sub_100191AF4(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong((*(a1 + 32) + 8), &v2, 1u);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(*(a1 + 32) + 48) = PDFieldDetectAvailable();
    v4 = *(a1 + 32);

    sub_1005C7FE8(v4);
  }
}

void sub_100191B54(uint64_t a1)
{
  v2 = PDFieldDetectAvailable();
  v3 = *(a1 + 32);
  if (*(v3 + 48) != v2)
  {
    *(v3 + 48) = v2;
    v4 = *(a1 + 32);

    sub_1005C7FE8(v4);
  }
}

uint64_t sub_100191BAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      return _objc_release_x1(v3, v4);
    }

    v6 = v3;
    sub_1005C87B8(a1, v3);
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_100191C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      return _objc_release_x1(v3, v4);
    }

    v6 = v3;
    sub_1005C8804(a1, v3);
    v4 = v6;
  }

  return _objc_release_x1(v3, v4);
}

void sub_100191D10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 40);
  if (v7 == v5)
  {
    [v7 invalidate];
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PDFieldDetectorManager: probe %p finished looking up field properties - committing field entrance.", &v11, 0xCu);
    }

    os_unfair_lock_lock((*(a1 + 32) + 12));
    objc_storeStrong((*(a1 + 32) + 32), a3);
    os_unfair_lock_unlock((*(a1 + 32) + 12));
    sub_1005C8674(*(a1 + 32), v6);
  }
}

void sub_100191EC4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    *(v2 + 32) = 0;

    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 12));
  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    [*(*(a1 + 32) + 40) invalidate];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = PKAnalyticsSubjectFieldDetect;
  v27 = PKAnalyticsReportEventKey;
  v28 = PKAnalyticsReportEventTypeFieldExited;
  v8 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  [PKAnalyticsReporter subject:v7 sendEvent:v8];

  [PKAnalyticsReporter endSubjectReporting:v7];
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v4)
    {
      if (!v10)
      {
        goto LABEL_24;
      }

      *buf = 134217984;
      v25 = v4;
      v17 = "PDFieldDetectorManager: did exit field delayed by probe %p.";
      v18 = v9;
      v19 = 12;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_24;
      }

      *buf = 0;
      v17 = "PDFieldDetectorManager: did exit field (unbalanced).";
      v18 = v9;
      v19 = 2;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    goto LABEL_24;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDFieldDetectorManager: did exit field.", buf, 2u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 12));
  v11 = [*(*(a1 + 32) + 24) allObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v11;
  v12 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 fieldDetectorManagerDidExitField:{*(a1 + 32), v20}];
        }
      }

      v13 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v13);
  }

LABEL_24:
}

void sub_1001921F4(id a1)
{
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, -1);
  attr = dispatch_queue_attr_make_with_autorelease_frequency(v1, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v2 = dispatch_queue_create("com.apple.passd.field-detect", attr);
  v3 = qword_100924320;
  qword_100924320 = v2;
}

id sub_1001924D0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) deviceSupportsCredentials];
  if (result)
  {
    v3 = [PKBluetoothMonitorer alloc];
    v8 = CBManagerNeedsRestrictedStateOperation;
    v9 = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = [v3 initWithManagerOptions:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    return [*(*(a1 + 32) + 32) setDelegate:?];
  }

  return result;
}

void sub_100193294(uint64_t a1)
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
        if ([*(a1 + 40) isCarKeyPass])
        {
          if ([v7 state] == 1)
          {
            v8 = *(a1 + 48);
            v9 = [v7 identifier];
            LOBYTE(v8) = [v8 containsObject:v9];

            if ((v8 & 1) == 0)
            {
              [*(*(a1 + 56) + 8) credentialDidActivateWithCredential:v7 completion:0];
            }
          }
        }

        [*(a1 + 56) didUpdateCredential:v7 onPassWithIdentifier:*(a1 + 64)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100193998(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

uint64_t sub_100193A8C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

uint64_t sub_100193B80(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

uint64_t sub_100193C74(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0);
  }

  return result;
}

void sub_100193FD0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 136));
  _Unwind_Resume(a1);
}

uint64_t sub_100194004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a3)
    {
      a2 = 0;
    }

    return (*(result + 16))(result, a2);
  }

  return result;
}

void sub_100194024(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 11);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100194160;
    v7[3] = &unk_10084AA88;
    v11 = a1[6];
    v8 = v3;
    v9 = a1[4];
    v10 = a1[5];
    objc_copyWeak(&v12, a1 + 7);
    [v6 performHandlerOnSharedWebServiceQueue:v7];
    objc_destroyWeak(&v12);
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

void sub_100194160(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001942BC;
    v6[3] = &unk_10084AA60;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = *(a1 + 56);
    v8 = *(a1 + 48);
    objc_copyWeak(&v10, (a1 + 64));
    [v3 passAtURL:v4 completion:v6];
    objc_destroyWeak(&v10);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to get shared web service", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1001942BC(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1 && v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019442C;
    v9[3] = &unk_10084AA38;
    v10 = a1[4];
    v13 = a1[6];
    v11 = a1[5];
    objc_copyWeak(&v14, a1 + 7);
    v12 = v6;
    [v12 downloadRemoteAssetsWithCompletion:v9];

    objc_destroyWeak(&v14);
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to download new pass", v8, 2u);
    }

    (*(a1[6] + 2))();
  }
}

void sub_10019442C(id *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to download new pass assets", buf, 2u);
      }

      (*(a1[7] + 2))();
    }

    else
    {
      v8 = PDDefaultQueue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10019459C;
      block[3] = &unk_10084AA10;
      v10 = a1[4];
      v11 = a1[5];
      objc_copyWeak(&v14, a1 + 8);
      v12 = a1[6];
      v13 = a1[7];
      dispatch_async(v8, block);

      objc_destroyWeak(&v14);
    }
  }
}

void sub_10019459C(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *v6 = 138412290;
    *&v6[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating pass for registered credential: %@", v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  *v6 = 0;
  if (WeakRetained)
  {
    [WeakRetained[9] writeCard:*(a1 + 48) source:1 error:v6];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100194698(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v5 = WeakRetained[11];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001947BC;
  v6[3] = &unk_10084AB00;
  v7 = a1[4];
  objc_copyWeak(&v11, a1 + 8);
  v9 = a1[6];
  v8 = a1[5];
  v10 = a1[7];
  [v5 registerCredentialWithRequest:v3 completion:v6];

  objc_destroyWeak(&v11);
}

void sub_1001947BC(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passURL];
  v5 = [v3 credentialAttestation];
  v6 = v5;
  if (v4 && v5)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 8);
    if (WeakRetained)
    {
      v8 = [[PKAppletSubcredential alloc] initWithIdentifier:a1[5]];
      v9 = WeakRetained[1];
      v10 = [v3 vehicleMobilizationEncryptedContainer];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100194A24;
      v15[3] = &unk_10084AAD8;
      v16 = a1[4];
      v17 = a1[5];
      v19 = a1[7];
      v18 = v4;
      v20 = a1[6];
      [v9 updateTrackingAttestation:v6 forCredential:v8 encryptedContainer:v10 completion:v15];

LABEL_12:
      goto LABEL_13;
    }

    v14 = a1[6];
    if (!v14)
    {
      goto LABEL_12;
    }

    v13 = *(v14 + 2);
LABEL_11:
    v13();
    goto LABEL_12;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1[5];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Registering credential (%@) failed", buf, 0xCu);
  }

  if (a1[6])
  {
    WeakRetained = [NSError errorWithDomain:PKSubcredentialProvisioningErrorDomain code:7 userInfo:0];
    v13 = *(a1[6] + 2);
    goto LABEL_11;
  }

LABEL_13:
}

void sub_100194A24(void *a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = a1[5];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registered credential: %@", &v9, 0xCu);
    }

    (*(a1[7] + 16))();
  }

  else
  {
    if (v5)
    {
      v7 = a1[5];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to register credential: %@", &v9, 0xCu);
    }

    if (a1[8])
    {
      v8 = [NSError errorWithDomain:PKSubcredentialProvisioningErrorDomain code:7 userInfo:0];
      (*(a1[8] + 16))();
    }
  }
}

void sub_100194C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100194C54(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[11] backgroundRegisterCredentialWithRequest:v3];
}

void sub_100194FAC(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v6 = @"No";
    if (a2)
    {
      v6 = @"Yes";
    }

    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finished restoring %ld credentials in database. Success: %@)", &v7, 0x16u);
  }
}

void sub_100195170(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v24;
    *&v5 = 138412546;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [*(a1 + 32) member:{v10, v17}];
        if (v11)
        {
          PKAppletSubcredentialMergeDeviceCredential();
          v12 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v28 = v11;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Inflated credential %@ from %@", buf, 0x16u);
          }

          ++v7;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *(*(a1 + 40) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100195390;
  block[3] = &unk_10083F918;
  v22 = v7;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v19 = v14;
  v20 = v15;
  v21 = v16;
  dispatch_async(v13, block);
}

uint64_t sub_100195390(uint64_t a1)
{
  [*(a1 + 32) count];
  [*(*(a1 + 40) + 64) updateAppletSubcredentials:*(a1 + 32)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001958B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1001958DC(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 64) passShareForCredentialShareIdentifier:{v7, v14}];
        if ([*(*(a1 + 40) + 64) deletePassCredentialShareForIdentifier:v7])
        {
          ++*(*(*(a1 + 48) + 8) + 24);
          if (v8)
          {
            v9 = [v8 credentialShares];
            v10 = [v9 count];

            if (v10 == 1)
            {
              v11 = *(*(a1 + 40) + 64);
              v12 = [v8 identifier];
              [v11 deletePassShareWithIdentifier:v12];
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  return *(*(*(a1 + 48) + 8) + 24) != 0;
}

void sub_100195D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100195DA4(void *a1)
{
  v2 = [*(a1[4] + 64) updatePassCredentialShareIdentifier:a1[5] updatedStatus:4 updatedIdentifier:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[7] + 8) + 40))
  {
    return 0;
  }

  v5 = [*(a1[4] + 64) passShareForCredentialShareIdentifier:a1[6]];
  v6 = *(a1[4] + 64);
  v7 = [v5 subcredentialIdentifier];
  v8 = [v6 appletSubcredentialWithIdentifier:v7];
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return *(*(a1[7] + 8) + 40) != 0;
}

void sub_1001963C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sessionDidChangeConnectionStatus:*(a1 + 32)];
  }
}

void sub_1001964EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 sessionDidReceiveData:*(a1 + 32)];
  }
}

void sub_1001966F8(uint64_t a1, void *a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:*(a1 + 32)];

        if (v9)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *(*(a1 + 40) + 88);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001968D4;
  v12[3] = &unk_10084ABE8;
  v13 = v4;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v11 = v4;
  [v10 performHandlerOnSharedWebServiceQueue:v12];
}

void sub_1001968D4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    v5 = [v4 credentialState];
    if (v5 == 21)
    {
      goto LABEL_9;
    }

    v6 = v5;
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      *v23 = 138412546;
      *&v23[4] = v8;
      *&v23[12] = 2048;
      *&v23[14] = v6;
      v9 = "Registering credential %@ in unexpected state: %ld";
      v10 = v7;
      v11 = 22;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, v23, v11);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[5];
      *v23 = 138412290;
      *&v23[4] = v12;
      v9 = "Unable to find matching KML credential to register with identifier: %@";
      v10 = v7;
      v11 = 12;
      goto LABEL_7;
    }
  }

LABEL_9:
  v13 = a1[4];
  if (!v13)
  {
    v13 = a1[6];
  }

  v14 = v13;
  v15 = [v14 trackingRequest];
  if (!v15)
  {
    v16 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[5];
      *v23 = 138412290;
      *&v23[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registering credential %@ without an attestation!", v23, 0xCu);
    }
  }

  v18 = [[PKCarKeyCredentialRegistrationMetadata alloc] initWithMake:0 model:0 keyType:{objc_msgSend(v14, "isSharedCredential", *v23, *&v23[16])}];
  v19 = [[PKPaymentRegisterTrackCredentialRequest alloc] initWithCredential:v14 registrationData:v15 metadata:v18];
  if (!v19)
  {
    v20 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[5];
      *v23 = 138412290;
      *&v23[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Unable to create credential registration request for credential: %@", v23, 0xCu);
    }
  }

  v22 = a1[7];
  if (v22)
  {
    (*(v22 + 16))(v22, v19);
  }
}

void sub_100196F3C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appletSubcredentialManager:a1[4] didUpdateCredential:a1[5] onPassWithIdentifier:a1[6] oldShares:a1[7]];
  }
}

void sub_10019752C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 224), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_100197580(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(a1 + 48))
  {
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = *(a1 + 40);
    v14 = *(*(a1 + 32) + 80);
    v15 = *(*(v13 + 8) + 40);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001976B4;
    v16[3] = &unk_10083FAD0;
    v18 = v8;
    v17 = v6;
    [v14 acquireAssertionOfType:1 withIdentifier:v15 reason:@"Unsigned pass provisioning" handler:v16];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t sub_1001976B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Unable to acquire provisioning assertion", v5, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100197748(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 88);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100197828;
  v13[3] = &unk_1008458E8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16 = v7;
  v17 = v10;
  v14 = v9;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [v8 performHandlerOnSharedWebServiceQueue:v13];
}

void sub_100197828(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001978E8;
  v7[3] = &unk_10084AC60;
  v6 = *(a1 + 48);
  v5 = v6;
  v9 = v6;
  v8 = *(a1 + 40);
  [a2 passAtURL:v4 completion:v7];
}

void sub_1001978E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to download pass after credential registration", v7, 2u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001979C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1[4] + 104) secureElementIdentifiers];
  v9 = [PKDownloadRemoteAssetConfiguration configurationWithSEIDs:v8];

  v10 = *(*(a1[5] + 8) + 40);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100197AD8;
  v14[3] = &unk_10084AC88;
  v11 = a1[6];
  v16 = v7;
  v17 = v11;
  v15 = v6;
  v12 = v6;
  v13 = v7;
  [v10 downloadRemoteAssetsWithConfiguration:v9 completion:v14];
}

void sub_100197AD8(void *a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = v6;
    objc_storeStrong((*(a1[6] + 8) + 40), a3);
    (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) != 0);
    v6 = v7;
  }
}

void sub_100197B68(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = PDDefaultQueue();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100197C40;
  v13[3] = &unk_100846CD8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v15 = v7;
  v16 = v10;
  v13[4] = v9;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  dispatch_async(v8, v13);
}

uint64_t sub_100197C40(void *a1)
{
  [*(a1[4] + 72) writeCard:*(*(a1[7] + 8) + 40) source:4 error:0];
  v2 = *(a1[6] + 16);

  return v2();
}

void sub_100197CA0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (*(a1 + 56))
  {
    v9 = *(*(a1 + 32) + 88);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100197D90;
    v10[3] = &unk_10084ACD8;
    v13 = *(a1 + 40);
    v12 = v7;
    v11 = v6;
    [v9 performHandlerOnSharedWebServiceQueue:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_100197D90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 targetDevice];
  if (PKTargetDeviceSupportsExpress())
  {
    v5 = [*(*(*(a1 + 48) + 8) + 40) paymentPass];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100197F54;
    v8[3] = &unk_10084ACB0;
    v11 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v4 paymentWebService:v3 handlePotentialExpressPass:v5 withCompletionHandler:v8];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(*(*(a1 + 48) + 8) + 40) uniqueID];
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping enabling express for %@. Target device (%@) does not support express", buf, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_100197F54(void *a1, void *a2)
{
  *(*(a1[6] + 8) + 24) = [a2 count] != 0;
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(*(a1[7] + 8) + 40) uniqueID];
    v5 = v4;
    if (*(*(a1[6] + 8) + 24))
    {
      v6 = @"Yes";
    }

    else
    {
      v6 = @"No";
    }

    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling express for %@. Success %@", &v8, 0x16u);
  }

  return (*(a1[5] + 16))();
}

void sub_100198080(void *a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v6 = a4;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v7 = PKLocalizedShareableCredentialString(@"EXPRESS_NOTIFICATION_TITLE");
    v8 = [*(*(a1[6] + 8) + 40) localizedDescription];
    v9 = PKLocalizedShareableCredentialString(@"EXPRESS_NOTIFICATION_MESSAGE", @"%@", v8);

    v10 = [PDPassExpressModeEnabledUserNotification alloc];
    v11 = [*(*(a1[6] + 8) + 40) uniqueID];
    v12 = [(PDPassExpressModeEnabledUserNotification *)v10 initWithTitle:v7 message:v9 forPassUniqueIdentifier:v11 hideDisableAction:2 promoteDuration:604800.0];

    [*(a1[4] + 96) insertUserNotification:v12];
  }

  v6[2](v6, v13, 0);
}

void sub_1001981CC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  [*(a1[5] + 80) invalidateAssertionOfType:1 withIdentifier:*(*(a1[6] + 8) + 40) handler:0];
  v6 = @"No";
  if (!*(*(a1[7] + 8) + 40) && ![v5 isCanceled])
  {
    v6 = @"Yes";
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(*(a1[7] + 8) + 40);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finished downloading car key after credential registration with success: %@. %@", &v9, 0x16u);
  }
}

void sub_100198760(uint64_t a1, int a2)
{
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "failed";
    v6 = *(a1 + 40);
    if (a2)
    {
      v5 = "succeeded";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Tracking credential (%@) %s", &v7, 0x16u);
  }
}

unint64_t sub_100198904(uint64_t a1, uint64_t a2)
{
  v2 = 64;
  if (*(a1 + 32))
  {
    v2 = 0;
  }

  return v2 | a2 & 0xFFFFFFFFFFFFFFBFLL;
}

void sub_100198A0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100198AD4;
  v12[3] = &unk_10084AD98;
  v9 = *(a1 + 32);
  v12[4] = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  [v9 enumerateObjectsUsingBlock:v12];
}

void sub_100198AD4(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appletSubcredentialManager:a1[4] didUpdateRangingSuspensionReasons:a1[7] forCredential:a1[5] forPaymentApplication:a1[6]];
  }
}

void sub_100199224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(PDPassAuxiliaryRegistrationRequirementStatus);
  [(PDPassAuxiliaryRegistrationRequirementStatus *)v5 setIsRegistered:0];
  [(PDPassAuxiliaryRegistrationRequirementStatus *)v5 setRequirementIdentifier:*a3];
  -[PDPassAuxiliaryRegistrationRequirementStatus setRegistrationBackoffCounter:](v5, "setRegistrationBackoffCounter:", [*(a3 + 8) integerValue]);
  [*(a1 + 32) addObject:v5];
}

void sub_10019968C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(PDPassAuxiliaryRegistrationRequirementStatus);
  [(PDPassAuxiliaryRegistrationRequirementStatus *)v5 setRequirementIdentifier:*a3];
  -[PDPassAuxiliaryRegistrationRequirementStatus setIsRegistered:](v5, "setIsRegistered:", [*(a3 + 8) BOOLValue]);
  -[PDPassAuxiliaryRegistrationRequirementStatus setRegistrationBackoffCounter:](v5, "setRegistrationBackoffCounter:", [*(a3 + 16) integerValue]);
  [*(a1 + 32) addObject:v5];
}

void sub_100199DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100199E0C(uint64_t a1, uint64_t a2)
{
  v3 = [(SQLiteEntity *)[PassAuxiliaryRegistrationRequirement alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    v6 = v3;
    v5 = [NSNumber numberWithBool:*(a1 + 48)];
    *(*(*(a1 + 40) + 8) + 24) = [(SQLiteEntity *)v6 setValue:v5 forProperty:@"e"];

    v3 = v6;
  }

  else
  {
    *(v4 + 24) = 0;
  }
}

void sub_100199FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10019A000(uint64_t a1, uint64_t a2)
{
  v3 = [(SQLiteEntity *)[PassAuxiliaryRegistrationRequirement alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    v6 = v3;
    v5 = [NSNumber numberWithBool:*(a1 + 48)];
    *(*(*(a1 + 40) + 8) + 24) = [(SQLiteEntity *)v6 setValue:v5 forProperty:@"e"];

    v3 = v6;
  }

  else
  {
    *(v4 + 24) = 0;
  }
}

void sub_10019A6F8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019A7CC;
  v9[3] = &unk_100844958;
  v7 = *(a1 + 48);
  v13 = a2;
  v12 = v7;
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_10019A914(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019A9E8;
  v9[3] = &unk_100844958;
  v7 = *(a1 + 48);
  v13 = a2;
  v12 = v7;
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, v9);
}

void sub_10019AB48(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019AC1C;
  v9[3] = &unk_100844958;
  v7 = *(a1 + 48);
  v13 = a2;
  v12 = v7;
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_10019AC1C(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void sub_10019AD70(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019AE44;
  v9[3] = &unk_100844958;
  v7 = *(a1 + 48);
  v13 = a2;
  v12 = v7;
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_10019AE44(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void sub_10019AF98(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10019B06C;
  v9[3] = &unk_100844958;
  v7 = *(a1 + 48);
  v13 = a2;
  v12 = v7;
  v10 = v5;
  v11 = *(a1 + 40);
  v8 = v5;
  dispatch_async(v6, v9);
}

uint64_t sub_10019B06C(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32));
  }

  return result;
}

void sub_10019B2D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10019B3BC;
  v10[3] = &unk_10083FD50;
  v14 = *(a1 + 48);
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

uint64_t sub_10019B3BC(void *a1)
{
  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t sub_10019BB6C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10019BB84(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10019BE7C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10019BE94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_10019C36C(uint64_t a1)
{
  v24 = [*(a1 + 32) persistentID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = *(a1 + 40);
  v27 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v27)
  {
    obj = v2;
    v26 = *v29;
    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        v5 = *(a1 + 64);
        v6 = *(a1 + 48);
        v7 = [v5 _predicateForScheme:{objc_msgSend(v4, "scheme", v24)}];
        v33[0] = v7;
        v8 = *(a1 + 64);
        v9 = [v4 publicKey];
        v10 = [v8 _predicateForPublicKey:v9];
        v33[1] = v10;
        v11 = [NSArray arrayWithObjects:v33 count:2];
        v12 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v11];
        v13 = [v5 anyInDatabase:v6 predicate:v12];

        if (v13)
        {
          [*(a1 + 56) addObject:v13];
        }

        else
        {
          v14 = [[PaymentApplicationAssociatedReaderCA alloc] initWithReaderCA:v4 forAssociatedReaderPID:v24 inDatabase:*(a1 + 48)];
          if (!v14)
          {
            v22 = 0;
            v17 = obj;
            goto LABEL_14;
          }

          v15 = v14;
          [*(a1 + 56) addObject:v14];
        }
      }

      v2 = obj;
      v27 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  v16 = [*(a1 + 56) pk_setByApplyingBlock:&stru_10084AEF0];
  v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"pid" values:v16];

  v32[0] = v17;
  v18 = [*(a1 + 64) _predicateForAssociatedReaderPID:v24];
  v32[1] = v18;
  v19 = [NSArray arrayWithObjects:v32 count:2];
  v20 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v19];

  v21 = [*(a1 + 64) queryWithDatabase:*(a1 + 48) predicate:v20];
  [v21 deleteAllEntities];

  v22 = 1;
LABEL_14:

  return v22;
}

NSNumber *__cdecl sub_10019C660(id a1, PaymentApplicationAssociatedReaderCA *a2)
{
  v2 = [(SQLiteEntity *)a2 persistentID];

  return [NSNumber numberWithLongLong:v2];
}

void sub_10019C808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_alloc_init(PKPaymentApplicationAssociatedReaderCA);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v6 values:a4];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:?];
    v7 = v8;
  }
}

void sub_10019C98C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10019CC30(id a1, PKPaymentApplicationAssociatedReaderCA *a2, id a3)
{
  v3 = a2;
  [(PKPaymentApplicationAssociatedReaderCA *)v3 setScheme:PKTerminalPublicKeySchemeFromString()];
}

uint64_t sub_10019CDD8(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 56)) initWithPropertyValues:*(a1 + 32) inDatabase:*(a1 + 40)];
  v3 = [v2 persistentID];
  v4 = [*(a1 + 48) minimumAmounts];
  [PaymentOfferCurrencyAmount insertOrUpdateCurrencyAmounts:v4 forRewardsCriteriaPID:v3 type:1 inDatabase:*(a1 + 40)];

  v5 = [*(a1 + 48) maximumAmounts];
  [PaymentOfferCurrencyAmount insertOrUpdateCurrencyAmounts:v5 forRewardsCriteriaPID:v3 type:2 inDatabase:*(a1 + 40)];

  v6 = [*(a1 + 48) userEnteredMinimumAmounts];
  [PaymentOfferCurrencyAmount insertOrUpdateCurrencyAmounts:v6 forRewardsCriteriaPID:v3 type:3 inDatabase:*(a1 + 40)];

  v7 = [*(a1 + 48) userEnteredMaximumAmounts];
  [PaymentOfferCurrencyAmount insertOrUpdateCurrencyAmounts:v7 forRewardsCriteriaPID:v3 type:4 inDatabase:*(a1 + 40)];

  v8 = [*(a1 + 48) dynamicContent];
  [PaymentOfferDynamicContent insertOrUpdateDynamicContent:v8 forTablePID:v3 type:3 inDatabase:*(a1 + 40)];

  return 1;
}

void sub_10019D3E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v13 = objc_alloc_init(PKPaymentOfferRewardsCriteria);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v13 withProperties:v7 values:a4];

  v8 = [PaymentOfferCurrencyAmount currencyAmountForRewardsCriteriaPID:a2 type:1 inDatabase:*(a1 + 40)];
  [v13 setMinimumAmounts:v8];

  v9 = [PaymentOfferCurrencyAmount currencyAmountForRewardsCriteriaPID:a2 type:2 inDatabase:*(a1 + 40)];
  [v13 setMaximumAmounts:v9];

  v10 = [PaymentOfferCurrencyAmount currencyAmountForRewardsCriteriaPID:a2 type:3 inDatabase:*(a1 + 40)];
  [v13 setUserEnteredMinimumAmounts:v10];

  v11 = [PaymentOfferCurrencyAmount currencyAmountForRewardsCriteriaPID:a2 type:4 inDatabase:*(a1 + 40)];
  [v13 setUserEnteredMaximumAmounts:v11];

  v12 = [PaymentOfferDynamicContent dynamicContentForTablePID:a2 type:3 inDatabase:*(a1 + 40)];
  [v13 setDynamicContent:v12];

  [*(a1 + 48) safelyAddObject:v13];
}

void sub_10019DBF8(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  -[PKPaymentOfferRewardsCriteria setEligibility:](v4, "setEligibility:", [a3 integerValue]);
}

void sub_10019DC50(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  -[PKPaymentOfferRewardsCriteria setType:](v4, "setType:", [a3 integerValue]);
}

void sub_10019DCC0(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPaymentOfferRewardsCriteria *)v3 setRedemptionTermsURL:v4];
}

void sub_10019DD20(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  v6 = [a3 componentsSeparatedByString:{@", "}];
  v5 = [NSSet setWithArray:v6];
  [(PKPaymentOfferRewardsCriteria *)v4 setSupportedCurrencyCodes:v5];
}

void sub_10019DDB4(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  -[PKPaymentOfferRewardsCriteria setSupportedDeferredPayments:](v4, "setSupportedDeferredPayments:", [a3 BOOLValue]);
}

void sub_10019DE0C(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  -[PKPaymentOfferRewardsCriteria setSupportedRecurringPayments:](v4, "setSupportedRecurringPayments:", [a3 BOOLValue]);
}

void sub_10019DE64(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  v5 = [a3 componentsSeparatedByString:{@", "}];
  if ([v5 count])
  {
    v6 = objc_alloc_init(NSMutableSet);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = PKPaymentOfferInstoreCapabilityFromString();
          if (v12)
          {
            v13 = [NSNumber numberWithUnsignedInteger:v12, v15];
            [v6 addObject:v13];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v14 = [v6 copy];
    [(PKPaymentOfferRewardsCriteria *)v4 setInstoreCapabilities:v14];
  }
}

void sub_10019DFEC(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  -[PKPaymentOfferRewardsCriteria setSelectedOfferStickyDuration:](v4, "setSelectedOfferStickyDuration:", [a3 integerValue]);
}

void sub_10019E044(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  -[PKPaymentOfferRewardsCriteria setSelectedOfferActiveDuration:](v4, "setSelectedOfferActiveDuration:", [a3 integerValue]);
}

void sub_10019E09C(id a1, PKPaymentOfferRewardsCriteria *a2, id a3)
{
  v4 = a2;
  v6 = [a3 componentsSeparatedByString:{@", "}];
  v5 = [NSSet setWithArray:v6];
  [(PKPaymentOfferRewardsCriteria *)v4 setSupportedMerchantCountryCodes:v5];
}

void PDNFSecureXPCEventHandleSecureElementEvent(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || (v7 = v6) == 0)
  {
    __break(1u);
  }

  v8 = PKGetConstantStringNF_SECURE_XPC_EVENT_KEY_EVENT_SIMPLE_STRING();
  if (a1 <= 1)
  {
    if (!a1)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      string_ptr = v7;
      v29 = [string_ptr countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v59;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v59 != v31)
            {
              objc_enumerationMutation(string_ptr);
            }

            v33 = *(*(&v58 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v33 secureElementDidRunScriptsFromTSM];
            }
          }

          v30 = [string_ptr countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v30);
      }

      goto LABEL_68;
    }

    if (a1 != 1)
    {
      goto LABEL_69;
    }

    v15 = xpc_dictionary_get_value(v5, v8);
    string_ptr = xpc_string_get_string_ptr(v15);
    if (string_ptr)
    {
      v16 = [[NSString alloc] initWithUTF8String:string_ptr];
      v17 = [v16 componentsSeparatedByString:@":"];
      if ([v17 count] == 2)
      {
        v18 = [v17 objectAtIndexedSubscript:0];
        string_ptr = [v17 objectAtIndexedSubscript:1];
      }

      else
      {
        v18 = v16;
        string_ptr = 0;
      }

      if (v18)
      {
        v40 = v5;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v34 = v7;
        v35 = [v34 countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v55;
          do
          {
            for (j = 0; j != v36; j = j + 1)
            {
              if (*v55 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v54 + 1) + 8 * j);
              if (objc_opt_respondsToSelector())
              {
                [v39 secureElementDidUpdateAppletStateForApplicationIdentifier:v18 keyIdentifier:string_ptr];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v54 objects:v65 count:16];
          }

          while (v36);
        }

        v5 = v40;
LABEL_67:

LABEL_68:
        goto LABEL_69;
      }
    }

    else
    {
    }

    v18 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "PDNFSecureXPCEventStreamManager: applet state update event missing identifiers.", buf, 2u);
    }

    goto LABEL_67;
  }

  switch(a1)
  {
    case 2:
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      string_ptr = v7;
      v19 = [string_ptr countByEnumeratingWithState:&v49 objects:v64 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v50;
        do
        {
          for (k = 0; k != v20; k = k + 1)
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(string_ptr);
            }

            v23 = *(*(&v49 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              [v23 secureElementExpressConfigurationNeedsUpdate];
            }
          }

          v20 = [string_ptr countByEnumeratingWithState:&v49 objects:v64 count:16];
        }

        while (v20);
      }

      goto LABEL_68;
    case 3:
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      string_ptr = v7;
      v24 = [string_ptr countByEnumeratingWithState:&v45 objects:v63 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v46;
        do
        {
          for (m = 0; m != v25; m = m + 1)
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(string_ptr);
            }

            v28 = *(*(&v45 + 1) + 8 * m);
            if (objc_opt_respondsToSelector())
            {
              [v28 secureElementExpressConfigurationDidFail];
            }
          }

          v25 = [string_ptr countByEnumeratingWithState:&v45 objects:v63 count:16];
        }

        while (v25);
      }

      goto LABEL_68;
    case 4:
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      string_ptr = v7;
      v10 = [string_ptr countByEnumeratingWithState:&v41 objects:v62 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v42;
        do
        {
          for (n = 0; n != v11; n = n + 1)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(string_ptr);
            }

            v14 = *(*(&v41 + 1) + 8 * n);
            if (objc_opt_respondsToSelector())
            {
              [v14 secureElementRadioStateChanged];
            }
          }

          v11 = [string_ptr countByEnumeratingWithState:&v41 objects:v62 count:16];
        }

        while (v11);
      }

      goto LABEL_68;
  }

LABEL_69:
}

id PDPreferredDocTypeOrder()
{
  if (qword_100924330 != -1)
  {
    sub_1005C8850();
  }

  v1 = qword_100924328;

  return v1;
}

void sub_10019E9A4(id a1)
{
  v3[0] = PKISO18013CredentialUnderlyingDocTypeDriversLicense;
  v3[1] = PKISO18013CredentialUnderlyingDocTypePhotoID;
  v3[2] = PKISO18013CredentialUnderlyingDocTypeJapanIndividualNumberCard;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_100924328;
  qword_100924328 = v1;
}

void sub_10019FA64(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x420], 8);
  _Block_object_dispose(&STACK[0x440], 8);
  _Unwind_Resume(a1);
}

void sub_10019FB78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10019FC70;
  v14[3] = &unk_10084B208;
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v14[4] = *(a1 + 40);
  v19 = v8;
  v15 = v10;
  v11 = *(a1 + 56);
  v17 = v6;
  v18 = v7;
  v16 = v11;
  v12 = v6;
  v13 = v7;
  sub_10017F518(v9, v14);
}

void sub_10019FC70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableSet);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v33 + 1) + 8 * i) passUniqueIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  v11 = [NSMutableArray alloc];
  v12 = *(a1 + 32);
  v13 = [*(*(*(a1 + 72) + 8) + 40) firstObject];
  v14 = [v12 sortedPassUniqueIdentifiersForGroupContainingPassWithUniqueIdentifier:v13];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &__NSArray0__struct;
  }

  v17 = [v11 initWithArray:v16];

  v18 = [[NSSet alloc] initWithArray:v17];
  v19 = [[NSMutableArray alloc] initWithArray:*(*(*(a1 + 72) + 8) + 40)];
  [*(a1 + 32) _readerIDPriorityForPasses:*(a1 + 40) readerID:*(a1 + 48)];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10019FF28;
  v29 = v28[3] = &unk_10084B1E0;
  v30 = v4;
  v31 = v18;
  v32 = v17;
  v20 = v17;
  v21 = v18;
  v22 = v4;
  v23 = v29;
  [v19 sortUsingComparator:v28];
  v24 = *(*(a1 + 72) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v19;
  v26 = v19;

  (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 56), 0, v27);
}

uint64_t sub_10019FF28(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKeyedSubscript:v5];
  v8 = [v7 unsignedIntegerValue];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = -1;
  }

  v10 = [a1[4] objectForKeyedSubscript:v6];
  v11 = [v10 unsignedIntegerValue];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = -1;
  }

  if (v9 == v12)
  {
    v13 = [a1[5] containsObject:v5];
    v14 = [a1[5] containsObject:v6];
    if (v13 == v14 && (v13 = [a1[6] containsObject:v5], v14 = objc_msgSend(a1[6], "containsObject:", v6), v13 == v14))
    {
      v17 = [a1[7] indexOfObject:v5];
      v18 = [a1[7] indexOfObject:v6];
      v19 = -1;
      if (v17 >= v18)
      {
        v19 = 1;
      }

      if (v17 == v18)
      {
        v15 = 0;
      }

      else
      {
        v15 = v19;
      }
    }

    else if ((v13 & (v14 ^ 1)) != 0)
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }
  }

  else if (v9 < v12)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t sub_1001A005C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 docType];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 docType];

  if (!v8)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    v14 = v11 != 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  v11 = [*(a1 + 40) indexOfObject:v8];
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  v12 = [*(a1 + 40) indexOfObject:v10];
  v13 = v12 != 0x7FFFFFFFFFFFFFFFLL;
  v14 = v11 != 0x7FFFFFFFFFFFFFFFLL;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v11 < v12)
    {
      v15 = -1;
      goto LABEL_17;
    }

    if (v12 < v11)
    {
      v15 = 1;
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_9:
  if (v14)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (!v14 && !v13)
  {
LABEL_14:
    v16 = [*(*(*(a1 + 48) + 8) + 40) indexOfObject:v5];
    if (v16 < [*(*(*(a1 + 48) + 8) + 40) indexOfObject:v6])
    {
      v15 = -1;
    }

    else
    {
      v15 = 1;
    }
  }

LABEL_17:

  return v15;
}

void sub_1001A01C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = ((*(a1 + 72) & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) == 1) && [*(*(*(a1 + 48) + 8) + 40) count] == 0;
  if (![*(*(*(a1 + 48) + 8) + 40) count] && *(a1 + 32))
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:?];
  }

  v10 = [[PKFieldMetadata alloc] initWithAssociatedPassIdentifiers:*(*(*(a1 + 48) + 8) + 40) shouldIgnoreField:v9 foundExplicitlyRequestedPass:*(*(*(a1 + 64) + 8) + 24)];
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v8[2](v8, v7, 0);
}

void sub_1001A13EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = a3;
  v13 = [v6 _sharingMessageForProperties:v7 values:a4];
  v8 = [v7 indexOfObject:@"a"];

  v9 = v13;
  if (v13)
  {
    v10 = v8 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(a4 + 8 * v8);
    v12 = [*(a1 + 32) objectForKeyedSubscript:v11];
    if (!v12)
    {
      v12 = objc_alloc_init(NSMutableArray);
      [*(a1 + 32) setObject:v12 forKeyedSubscript:v11];
    }

    [v12 addObject:v13];

    v9 = v13;
  }
}

void sub_1001A15E4(uint64_t a1)
{
  v2 = [*(a1 + 40) _sharingMessageForProperties:? values:?];
  [*(a1 + 32) safelyAddObject:v2];
}

void sub_1001A1748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A1760(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [objc_opt_class() _sharingMessageForProperties:v5 values:a3];

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_1001A1B5C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) indexOfObject:a2];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(*(a1 + 40) + 8 * v3);
  }

  return v4;
}

void sub_1001A245C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1001A25E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = objc_alloc_init(PKPeerPaymentAssociatedAccountRemovalRecord);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v8 withProperties:v6 values:a4];

  v7 = v8;
  if (v8)
  {
    [*(a1 + 40) addObject:?];
    v7 = v8;
  }
}

void sub_1001A2740(id a1, PKPeerPaymentAssociatedAccountRemovalRecord *a2, id a3)
{
  v4 = a2;
  -[PKPeerPaymentAssociatedAccountRemovalRecord setReason:](v4, "setReason:", [a3 integerValue]);
}

void sub_1001A2798(id a1, PKPeerPaymentAssociatedAccountRemovalRecord *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPeerPaymentAssociatedAccountRemovalRecord *)v3 setDate:v4];
}

void sub_1001A27F8(id a1, PKPeerPaymentAssociatedAccountRemovalRecord *a2, id a3)
{
  v4 = a2;
  -[PKPeerPaymentAssociatedAccountRemovalRecord setHasPresentedNotification:](v4, "setHasPresentedNotification:", [a3 BOOLValue]);
}

void sub_1001A2CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 32) + 24) identityPassCacheCredentialWithIdentityPassCredentialProperty:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1001A2F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A2F20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  [*(*(a1 + 32) + 24) identityPassCredentialPropertiesForPassUniqueIdentifier:*(a1 + 40)];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
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
        v10 = [v9 subCredentialIdentifier];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001A3188;
        v20[3] = &unk_100842148;
        v21 = v3;
        v22 = v10;
        v23 = *(a1 + 40);
        v24 = v9;
        v25 = *(a1 + 56);
        v11 = v10;
        [v4 addOperation:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  v12 = +[NSNull null];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A3348;
  v17[3] = &unk_10083C8E8;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v18 = v13;
  v19 = v14;
  v15 = [v4 evaluateWithInput:v12 completion:v17];
}

void sub_1001A3188(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001A3288;
  v16[3] = &unk_10084B370;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v17 = v10;
  v18 = v11;
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  v21 = v7;
  v22 = v13;
  v19 = v12;
  v20 = v6;
  v14 = v6;
  v15 = v7;
  [v8 propertiesOfCredential:v9 completion:v16];
}

void sub_1001A3288(uint64_t a1, void *a2)
{
  v7 = [a2 docType];
  v3 = [PKIdentityPassCredentialProperty alloc];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) applicationIdentifier];
  v6 = [v3 initWithPassUniqueIdentifier:v4 applicationIdentifier:v5 subCredentialIdentifier:*(a1 + 48) docType:v7];

  [*(*(*(a1 + 72) + 8) + 40) addObject:v6];
  (*(*(a1 + 64) + 16))();
}

void sub_1001A3348(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_1001A344C(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 passUniqueIdentifier];
        v10 = [v8 subCredentialIdentifier];
        v11 = [v8 applicationIdentifier];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001A3630;
        v17[3] = &unk_10084B3C0;
        v18 = v9;
        v19 = v11;
        v12 = *(a1 + 40);
        v20 = v10;
        v21 = v12;
        v13 = v10;
        v14 = v11;
        v15 = v9;
        [v3 propertiesOfCredential:v13 completion:v17];
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }
}

void sub_1001A3630(void *a1, void *a2)
{
  v4 = [a2 docType];
  v3 = [[PKIdentityPassCredentialProperty alloc] initWithPassUniqueIdentifier:a1[4] applicationIdentifier:a1[5] subCredentialIdentifier:a1[6] docType:v4];
  [*(a1[7] + 24) identityPassCacheCredentialWithIdentityPassCredentialProperty:v3];
}

void sub_1001A3E74(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v27 = a3;
  v31 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = sub_100005BC0;
  v58[4] = sub_10000B1EC;
  v59 = 0;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1001A44B8;
  v57[3] = &unk_10084B410;
  v57[4] = v58;
  v5 = objc_retainBlock(v57);
  v28 = objc_alloc_init(NSMutableSet);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(a1 + 32);
  v6 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v6)
  {
    v32 = *v54;
    do
    {
      v33 = v6;
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        v9 = [v8 objectAtIndexedSubscript:{0, v27}];
        v10 = [v8 objectAtIndexedSubscript:1];
        v11 = [v9 applicationIdentifier];
        v12 = [v10 identifier];
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v62 = v11;
          v63 = 2112;
          v64 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating iso blob with sub credential identifier %@:%@", buf, 0x16u);
        }

        v14 = *(a1 + 40);
        v60[0] = v11;
        v60[1] = v12;
        v15 = [NSArray arrayWithObjects:v60 count:2];
        v16 = [v14 objectForKey:v15];

        if (v16)
        {
          v17 = [*(a1 + 56) objectForKey:v12];
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_1001A44D0;
          v43[3] = &unk_10084B460;
          v43[4] = *(a1 + 64);
          v44 = v16;
          v18 = v17;
          v45 = v18;
          v46 = v9;
          v47 = v10;
          v48 = *(a1 + 72);
          v49 = v30;
          v19 = *(a1 + 48);
          v20 = *(a1 + 88);
          v50 = v19;
          v52 = v20;
          v51 = v5;
          [v31 addOperation:v43];
        }

        else
        {
          if (*(a1 + 88) == 3 && [*(a1 + 48) containsObject:v12])
          {
            [v28 addObject:v12];
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = v11;
            v63 = 2112;
            v64 = v12;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to find corresponding iso blob for identifier %@:%@", buf, 0x16u);
          }

          v18 = [NSError errorWithDomain:PKPassKitErrorDomain code:3 userInfo:0];
          (v5[2])(v5, v18);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v6);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1001A4640;
  v38[3] = &unk_10084B488;
  v21 = v28;
  v22 = *(a1 + 64);
  v39 = v21;
  v40 = v22;
  v42 = *(a1 + 88);
  v23 = v5;
  v41 = v23;
  [v31 addOperation:v38];
  v24 = +[NSNull null];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001A47AC;
  v34[3] = &unk_10084B4B0;
  v25 = v27;
  v35 = v25;
  v36 = *(a1 + 80);
  v37 = v58;
  v26 = [v31 evaluateWithInput:v24 completion:v34];

  _Block_object_dispose(v58, 8);
}

void sub_1001A44B8(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v5 = *(v2 + 40);
  v3 = (v2 + 40);
  v4 = v5;
  if (v5)
  {
    a2 = v4;
  }

  objc_storeStrong(v3, a2);
}

void sub_1001A44D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v17 = *(a1 + 40);
  v18 = *(a1 + 32);
  v8 = *(a1 + 56);
  v16 = *(a1 + 48);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001A45EC;
  v19[3] = &unk_10084B438;
  v13 = *(a1 + 104);
  v21 = *(a1 + 96);
  v22 = v7;
  v20 = v6;
  v14 = v6;
  v15 = v7;
  [v18 _updateISO18013Blob:v17 metadata:v16 paymentApplication:v8 subcredential:v9 paymentPass:v10 store:v12 priorSubcredentialIdentifiers:v11 cardType:v13 completion:v19];
}

uint64_t sub_1001A45EC(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1001A4640(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) count])
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) copy];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A4758;
    v11[3] = &unk_10084B438;
    v10 = *(a1 + 56);
    v13 = *(a1 + 48);
    v14 = v7;
    v12 = v6;
    [v8 deleteSubCredentialIdentifiers:v9 cardType:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

uint64_t sub_1001A4758(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t sub_1001A47AC(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001A497C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A4A4C;
  v11[3] = &unk_10084B500;
  v9 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v7;
  v10 = v7;
  [v9 _isoCredentialIdentifierForSubCredentialId:a3 cardType:v8 store:a2 completion:v11];
}

uint64_t sub_1001A4A4C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) safelyAddObject:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1001A4D4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v21 = v5;
  if (v5)
  {
    v19 = v6;
    v8 = dispatch_group_create();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = *(a1 + 40);
    v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          dispatch_group_enter(v8);
          v14 = *(a1 + 48);
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_1001A5014;
          v24[3] = &unk_10084B578;
          v15 = v14;
          v25 = v15;
          v26 = v13;
          v27 = *(a1 + 32);
          v28 = v8;
          [v21 deletePIITokenFromSyncableKeyStoreForIdentifier:v15 credentialIdentifier:v13 completion:v24];
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }

    v16 = PDDefaultQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A517C;
    block[3] = &unk_10083D648;
    v7 = v19;
    v23 = v19;
    dispatch_group_notify(v8, v16, block);
  }

  else
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 138412290;
      v35 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No cleanup of PII token for pass id %@ because credentialStore is nil", buf, 0xCu);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

void sub_1001A5014(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = [v3 localizedDescription];
      v13 = 138413058;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unable to clean up identity PII token with identifier %@ and credentialIdentifier %@ for pass id %@ due to error %@", &v13, 0x2Au);
    }
  }

  else if (v5)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up PII token with identifier %@ and credentialIdentifier %@ for pass id %@", &v13, 0x20u);
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_1001A517C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1001A53A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v11 = PKLogFacilityTypeGetObject();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v12 = *(a1 + 32);
    *buf = 138412290;
    v21 = v12;
    v13 = "No cleanup of PII token for pass id %@ because credentialStore is nil";
    goto LABEL_8;
  }

  v7 = NSSelectorFromString(@"deletePIITokenFromSyncableKeyStoreForIdentifier:credentialIdentifier:completion:");
  if (objc_opt_respondsToSelector())
  {
    v8 = [v5 methodForSelector:v7];
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1001A55C4;
    v15[3] = &unk_10084B5C8;
    v16 = v9;
    v17 = *(a1 + 48);
    v18 = *(a1 + 32);
    v19 = v6;
    v8(v5, v7, v16, v10, v15);

    goto LABEL_11;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v21 = v14;
    v13 = "No cleanup of PII token for pass id %@ because credentialStore does not support new SPI yet";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
  }

LABEL_9:

  if (v6)
  {
    v6[2](v6);
  }

LABEL_11:
}

void sub_1001A55C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[6];
      v9 = [v3 localizedDescription];
      v14 = 138413058;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unable to clean up identity PII token with identifier %@ and credentialIdentifier %@ for pass id %@ due to error %@", &v14, 0x2Au);
    }
  }

  else if (v5)
  {
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up PII token with identifier %@ and credentialIdentifier %@ for pass id %@", &v14, 0x20u);
  }

  v13 = a1[7];
  if (v13)
  {
    (*(v13 + 16))();
  }
}

void sub_1001A5A34(uint64_t a1, void *a2, void *a3)
{
  v27 = a2;
  v5 = a3;
  v6 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = sub_100005BC0;
  v47[4] = sub_10000B1EC;
  v48 = 0;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = *(a1 + 32);
  v7 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  v22 = v5;
  if (v7)
  {
    v24 = *v44;
    do
    {
      v8 = 0;
      v25 = v7;
      do
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        v10 = [*(a1 + 32) objectForKey:{v9, v22}];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v39 objects:v49 count:16];
        v26 = v8;
        if (v12)
        {
          v13 = *v40;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v40 != v13)
              {
                objc_enumerationMutation(v11);
              }

              v15 = *(*(&v39 + 1) + 8 * i);
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_1001A5DE4;
              v32[3] = &unk_10084B5F0;
              v32[4] = *(a1 + 40);
              v16 = v11;
              v33 = v16;
              v34 = v15;
              v35 = v9;
              v17 = v27;
              v18 = *(a1 + 56);
              v36 = v17;
              v37 = v47;
              v38 = v18;
              [v6 addOperation:v32];
            }

            v12 = [v16 countByEnumeratingWithState:&v39 objects:v49 count:16];
          }

          while (v12);
        }

        v8 = v26 + 1;
      }

      while ((v26 + 1) != v25);
      v7 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v7);
  }

  v19 = +[NSNull null];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1001A5F7C;
  v28[3] = &unk_10084B4B0;
  v20 = v22;
  v29 = v20;
  v30 = *(a1 + 48);
  v31 = v47;
  v21 = [v6 evaluateWithInput:v19 completion:v28];

  _Block_object_dispose(v47, 8);
}

void sub_1001A5DE4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) objectForKey:*(a1 + 48)];
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *(a1 + 80);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1001A5F00;
  v17[3] = &unk_10083E6B0;
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v19 = v7;
  v20 = v13;
  v18 = v6;
  v15 = v6;
  v16 = v7;
  [v8 _updateISO18013Blob:v9 metadata:0 paymentApplication:v10 subcredential:v11 paymentPass:0 store:v14 priorSubcredentialIdentifiers:0 cardType:v12 completion:v17];
}

void sub_1001A5F00(void *a1, void *a2)
{
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v4 = a2;
  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) != 0);
}

uint64_t sub_1001A5F7C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1001A6094(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v16 = a3;
  v18 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100005BC0;
  v34[4] = sub_10000B1EC;
  v35 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = *v31;
    do
    {
      v8 = 0;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v30 + 1) + 8 * v8);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_1001A638C;
        v24[3] = &unk_10084B640;
        v19 = *(a1 + 32);
        v10 = v19.i64[0];
        v25 = vextq_s8(v19, v19, 8uLL);
        v26 = v9;
        v11 = v17;
        v12 = *(a1 + 56);
        v28 = v34;
        v29 = v12;
        v27 = v11;
        [v18 addOperation:v24];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v6);
  }

  v13 = +[NSNull null];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001A6520;
  v20[3] = &unk_10084B4B0;
  v14 = v16;
  v21 = v14;
  v22 = *(a1 + 48);
  v23 = v34;
  v15 = [v18 evaluateWithInput:v13 completion:v20];

  _Block_object_dispose(v34, 8);
}

void sub_1001A638C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) objectForKey:*(a1 + 48)];
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001A64A4;
  v16[3] = &unk_10083E6B0;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v18 = v7;
  v19 = v12;
  v17 = v6;
  v14 = v6;
  v15 = v7;
  [v8 _updateISO18013Blob:v9 metadata:0 paymentApplication:0 subcredential:v10 paymentPass:0 store:v11 priorSubcredentialIdentifiers:0 cardType:v13 completion:v16];
}

void sub_1001A64A4(void *a1, void *a2)
{
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  v4 = a2;
  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) != 0);
}

uint64_t sub_1001A6520(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1001A66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A6700(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24) == 1)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    if (v4)
    {
      *(v3 + 40) = v4 - 1;
    }

    else
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempted over-decrement access counter", v8, 2u);
      }
    }

    v6 = *(a1 + 32);
    if (!*(v6 + 40))
    {
      v7 = *(v6 + 48);
      *(v6 + 48) = 0;

      v6 = *(a1 + 32);
    }

    os_unfair_lock_unlock((v6 + 32));
  }
}

void sub_1001A6994(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ISO credential identifier %@ found for access subCredentialId %@", buf, 0x16u);
    }

    (*(a1[7] + 2))();
  }

  else
  {
    v9 = PKISO18013CredentialStoragePartitionUnifiedAccess;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001A6B60;
    v16[3] = &unk_10084B668;
    v10 = a1[5];
    v11 = a1[6];
    v12 = a1[4];
    v13 = a1[7];
    *&v14 = v12;
    *(&v14 + 1) = v13;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    v17 = v15;
    v18 = v14;
    [v10 createCredentialInPartition:v9 options:0 completion:v16];
  }
}

void sub_1001A6B60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error creating ISO credential for subCredentialId: %@ error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001A6CF8;
    v11[3] = &unk_10084B550;
    v12 = v5;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v9 associateExternalPresentmentKeyWithCredential:v12 publicKeyIdentifier:v10 completion:v11];
  }
}

void sub_1001A6CF8(void *a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = a1[5];
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error associating ISO credential for subCredentialId: %@ error: %@", &v9, 0x16u);
    }
  }

  else if (v5)
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ISO credential identifier %@ create for access, and linked to subCredentialId %@", &v9, 0x16u);
  }

  (*(a1[6] + 16))();
}

void sub_1001A6ED0(uint64_t a1, void *a2)
{
  v4 = PKISO18013CredentialStoragePartitionIdentity;
  v5 = a2;
  v6 = objc_alloc_init(DCCredentialOptions);
  [v6 setReaderAuthenticationPolicy:1];
  [v6 setPresentmentAuthPolicy:2];
  [v6 setPayloadProtectionPolicy:1];
  [v6 setDeleteInactiveKeysAfterDays:60];
  [v6 setDeleteIncompleteCredentialAfterDays:60];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A6FF4;
  v7[3] = &unk_10084B6B8;
  v8 = v4;
  v9 = *(a1 + 32);
  [v5 createCredentialInPartition:v4 options:v6 completion:v7];
}

void sub_1001A6FF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error creating ISO credential for partition: %@ error: %@", &v11, 0x16u);
    }
  }

  else if (v8)
  {
    v10 = *(a1 + 32);
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ISO credential identifier partition: %@ create for %@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1001A7428(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A74F4;
  v11[3] = &unk_10084B708;
  v14 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 getGlobalThirdPartyProgenitorKeyAttestation:v11];
}

void sub_1001A74F4(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v14 = v5;
  if (v5)
  {
    v6 = *(a1[6] + 8);
    v7 = v5;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
LABEL_3:

    goto LABEL_5;
  }

  v9 = [a2 attestationData];
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  if (!a2)
  {
    v12 = [[NSError alloc] initWithDomain:PKIdentityErrorDomain code:0 userInfo:0];
    v13 = *(a1[6] + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
    goto LABEL_3;
  }

LABEL_5:
  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) != 0);
}

void sub_1001A75DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001A76A8;
  v11[3] = &unk_10083F7D8;
  v14 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 boundAppletPresentmentACL:v11];
}

void sub_1001A76A8(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1[6] + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
LABEL_3:

    goto LABEL_5;
  }

  objc_storeStrong((*(a1[7] + 8) + 40), a2);
  if (!*(*(a1[7] + 8) + 40))
  {
    v11 = [[NSError alloc] initWithDomain:PKIdentityErrorDomain code:0 userInfo:0];
    v12 = *(a1[6] + 8);
    v10 = *(v12 + 40);
    *(v12 + 40) = v11;
    goto LABEL_3;
  }

LABEL_5:
  (*(a1[5] + 16))(a1[5], a1[4], *(*(a1[6] + 8) + 40) != 0);
}

uint64_t sub_1001A77A8(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (*(*(v3[1] + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));
  }
}

void sub_1001A7DB4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1001A7E00(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 72);
  v11 = *(a1 + 48);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001A7EF0;
  v14[3] = &unk_10084B758;
  v17 = *(a1 + 56);
  v15 = v6;
  v16 = v7;
  v12 = v6;
  v13 = v7;
  [v8 _isoCredentialIdentifierForSubCredentialId:v9 cardType:v10 store:v11 completion:v14];
}

void sub_1001A7EF0(void *a1, void *a2)
{
  v7 = a2;
  objc_storeStrong((*(a1[6] + 8) + 40), a2);
  if (!*(*(a1[6] + 8) + 40))
  {
    v4 = PDBasicError();
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  (*(a1[5] + 16))();
}

void sub_1001A7F98(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1[4];
  v9 = *(*(a1[5] + 8) + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001A8078;
  v13[3] = &unk_10084B7A8;
  v10 = a1[6];
  v15 = v7;
  v16 = v10;
  v14 = v6;
  v11 = v6;
  v12 = v7;
  [v8 propertiesOfCredential:v9 completion:v13];
}

uint64_t sub_1001A8078(uint64_t a1, void *a2)
{
  v3 = [a2 payloadIngestionHash];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_1001A80D8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 64) + 8) + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = [*(a1 + 48) isoFormat];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    if (v13 != @"unencrypted")
    {
      v14 = v13;
      v15 = [(__CFString *)v13 isEqualToString:@"unencrypted"];

      if ((v15 & 1) == 0)
      {
        v21 = v14;
        if (v21 == @"ecv3sh_encrypted" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"ecv3sh_encrypted"], v22, (v23 & 1) != 0))
        {
          v16 = 1;
          goto LABEL_5;
        }

        v24 = v22;
        if (v24 == @"hpke_encrypted" || (v25 = v24, v26 = [(__CFString *)v24 isEqualToString:@"hpke_encrypted"], v25, (v26 & 1) != 0))
        {
          v16 = 2;
          goto LABEL_5;
        }

        v27 = v25;
        if (v27 == @"aliro" || (v28 = v27, v29 = [(__CFString *)v27 isEqualToString:@"aliro"], v28, (v29 & 1) != 0))
        {
          v16 = 4;
          goto LABEL_5;
        }

        v30 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v28;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Unknown ISO format %@", buf, 0xCu);
        }
      }
    }
  }

  v16 = 0;
LABEL_5:

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001A8350;
  v31[3] = &unk_10084B7D0;
  v17 = *(a1 + 72);
  v18 = *(a1 + 56);
  v33 = v7;
  v34 = v17;
  v31[4] = v18;
  v32 = v6;
  v19 = v6;
  v20 = v7;
  [v9 replacePayloadOfCredential:v8 withPayload:v10 format:v16 completion:v31];
}

void sub_1001A8350(void *a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v6;
      v7 = "Could not replace ISO blob with error %@ for subcredential %@";
      v8 = v5;
      v9 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = 138412290;
      v12 = v10;
      v7 = "Replaced ISO blob for subcredential %@";
      v8 = v5;
      v9 = 12;
      goto LABEL_6;
    }
  }

  (*(a1[6] + 16))(a1[6], a1[5], v4 != 0);
}

void sub_1001A84A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) state];
  if (v10 > 0xF)
  {
    v11 = 2;
  }

  else
  {
    v11 = qword_10068E5F8[v10];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A85B0;
  v15[3] = &unk_10083E6B0;
  v12 = *(a1 + 48);
  v17 = v7;
  v18 = v12;
  v16 = v6;
  v13 = v6;
  v14 = v7;
  [v9 setStateOfCredential:v8 to:v11 completion:v15];
}

void sub_1001A85B0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(*(*(a1 + 48) + 8) + 40);
      v6 = 138412546;
      v7 = v3;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Could not update state of ISO blob with error %@ for credential %@.", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A869C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  if ((*(*(v9 + 8) + 24) & 1) != 0 || v10 == 139 || *(a1 + 88) == 1004)
  {
    v11 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v12 = *(a1 + 88);
    v13 = *(a1 + 40);
    v14 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v16[1] = 3221225472;
    v16[2] = sub_1001A87D0;
    v16[3] = &unk_10084B820;
    v20 = v9;
    v22 = v10;
    v23 = v12;
    v17 = v13;
    v21 = v14;
    v19 = v7;
    v18 = v6;
    [v11 propertiesOfCredential:v15 completion:v16];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1001A87D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v7 = [v5 payloadIngestionHash];
    *(*(*(a1 + 64) + 8) + 24) = PKEqualObjects() ^ 1;
  }

  if (*(a1 + 88) == 139 || (v8 = *(a1 + 96), v8 == 1004))
  {
    v9 = [PDISO18013Manager_TemporaryAliroDocumentEventForwarder alloc];
    v10 = *(*(a1 + 32) + 8);
    v11 = [v5 docType];
    v12 = [v5 payloadSignedAt];
    v13 = [(PDISO18013Manager_TemporaryAliroDocumentEventForwarder *)v9 initWithSecureElement:v10 documentType:v11 documentSignatureDate:v12 subcredentialIdentifier:*(a1 + 40)];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001A8A38;
    v18[3] = &unk_10084B7D0;
    v14 = *(a1 + 40);
    v21 = *(a1 + 80);
    v18[4] = v14;
    v20 = *(a1 + 56);
    v19 = *(a1 + 48);
    [(PDISO18013Manager_TemporaryAliroDocumentEventForwarder *)v13 updateDocumentStatus:1 completion:v18];
  }

  else
  {
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v17 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 134218498;
      v23 = v8;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skipping document signalling with payment method type %lu for subcredential (%@) and iso credential id (%@)", buf, 0x20u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1001A8A38(void *a1, void *a2)
{
  v3 = a2;
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed to signal";
    if (!v3)
    {
      v5 = @"Successfully signalled";
    }

    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = 138413058;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ ISO18013 credential %@ update for subcredential (%@) with error: %@", &v8, 0x2Au);
  }

  (*(a1[6] + 16))();
}

void sub_1001A8B4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v11 = *(a1 + 32);
    if (v11)
    {
      v16 = 0;
      v12 = [NSJSONSerialization JSONObjectWithData:v11 options:0 error:&v16];
      v13 = v16;
      if (!v13 && v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 objectForKey:PKPassBundleISO18013BlobMetadataElementsChanged];
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [*(a1 + 40) _elementsChanged:v14 forPass:*(a1 + 48)];
          }

          else
          {
            v15 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not find elements changed in metadata", buf, 2u);
            }
          }

          v13 = 0;
LABEL_18:

          (v10)[2](v10, v8, 0);
          goto LABEL_19;
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not read ISOBlob metadata with error %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  (*(v9 + 2))(v9, v8, 0);
LABEL_19:
}

void sub_1001A8E64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001A8FB8;
  v15[3] = &unk_10084B898;
  v16 = a3;
  v17 = *(a1 + 48);
  v6 = v16;
  v7 = objc_retainBlock(v15);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A90FC;
  v12[3] = &unk_10084B8E8;
  v13 = v5;
  v14 = v7;
  v10 = v5;
  v11 = v7;
  [v9 _isoCredentialIdentifierForSubCredentialId:v8 cardType:3 store:v10 completion:v12];
}

void sub_1001A8FB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = a3;
  v11 = a2;
  v9(v8);
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = @"N";
    if (!v13)
    {
      v14 = @"Y";
    }

    v15 = 138412546;
    v16 = v14;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Generated ISO encryption certificate - generated keys: %@ error: %@", &v15, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A90FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001A91FC;
    v6[3] = &unk_10084B8C0;
    v3 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v3 generateDeviceEncryptionKeyForCredential:a2 completion:v6];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [NSError errorWithDomain:PKPaymentErrorDomain code:0 userInfo:0];
    (*(v4 + 16))(v4, 0, 0, v5);
  }
}

void sub_1001A91FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 attestation];
  v7 = [v6 publicKeyCOSEKey];

  if (!v5 && v8 && v7)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (!v5)
    {
      v5 = [NSError errorWithDomain:PKPaymentErrorDomain code:0 userInfo:0];
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001A93C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A94B8;
  v12[3] = &unk_10084B960;
  v9 = *(a1 + 56);
  v16 = *(a1 + 64);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  [v7 _isoCredentialIdentifierForSubCredentialId:v8 cardType:v9 store:v11 completion:v12];
}

void sub_1001A94B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56) > 1uLL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A9578;
  v6[3] = &unk_10084B938;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v5 generateDeviceEncryptionKeyForCredential:a2 keyType:v4 completion:v6];
}

void sub_1001A9578(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated encryption key: %@ error: %@", &v9, 0x16u);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v6);
}

void sub_1001A9740(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A982C;
  v12[3] = &unk_10084B9B0;
  v13 = v5;
  v14 = v6;
  v9 = *(a1 + 56);
  v15 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  [v7 _isoCredentialIdentifierForSubCredentialId:v8 cardType:v9 store:v11 completion:v12];
}

void sub_1001A982C(uint64_t a1, uint64_t a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001A98DC;
  v5[3] = &unk_10084B938;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 generateKeySigningKeyForCredential:a2 completion:v5];
}

void sub_1001A98DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated key signing key: %@ error: %@", &v9, 0x16u);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v6);
}

void sub_1001A9AB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001A9BA8;
  v12[3] = &unk_10084B960;
  v9 = *(a1 + 56);
  v16 = *(a1 + 64);
  v13 = v5;
  v14 = v6;
  v15 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  [v7 _isoCredentialIdentifierForSubCredentialId:v8 cardType:v9 store:v11 completion:v12];
}

void sub_1001A9BA8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A9C60;
  v6[3] = &unk_10084B9D8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v5 generatePresentmentKeysForCredential:a2 numKeys:v4 completion:v6];
}

void sub_1001A9C60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Generated presentment key: %@ error: %@", &v9, 0x16u);
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v8, v6);
}

void sub_1001A9EA8(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A9F78;
  v7[3] = &unk_10084BA00;
  v9 = a3;
  v5 = *(a1 + 32);
  v8 = v5;
  v10 = *(a1 + 40);
  v6 = v9;
  [a2 propertiesOfCredential:v5 completion:v7];
}

void sub_1001A9F78(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a1[5];
  v7 = *(v6 + 16);
  v8 = a2;
  v7(v6);
  v9 = [v8 needsPresentmentKeyRefresh];

  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = 138412802;
    v13 = v11;
    v14 = 1024;
    v15 = v9;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Needs presentment key refresh for credential %@: %d, error: %@", &v12, 0x1Cu);
  }

  (*(a1[6] + 16))();
}

void sub_1001AA190(id *a1, void *a2, void *a3)
{
  v21 = a2;
  v16 = a3;
  v22 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_100005BC0;
  v42[4] = sub_10000B1EC;
  v43 = 0;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a1[4];
  v19 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v19)
  {
    v18 = *v39;
    do
    {
      v20 = 0;
      do
      {
        if (*v39 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v38 + 1) + 8 * v20);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v6 = [v5 paymentApplications];
        v7 = [v6 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v7)
        {
          v8 = *v35;
          do
          {
            v9 = 0;
            do
            {
              if (*v35 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = [*(*(&v34 + 1) + 8 * v9) subcredentials];
              v11 = [v10 anyObject];
              v12 = [v11 identifier];

              if (v12)
              {
                v28[0] = _NSConcreteStackBlock;
                v28[1] = 3221225472;
                v28[2] = sub_1001AA588;
                v28[3] = &unk_100842148;
                v29 = v21;
                v30 = v12;
                v31 = a1[5];
                v32 = v5;
                v33 = v42;
                [v22 addOperation:v28];
              }

              v9 = v9 + 1;
            }

            while (v7 != v9);
            v7 = [v6 countByEnumeratingWithState:&v34 objects:v44 count:16];
          }

          while (v7);
        }

        v20 = v20 + 1;
      }

      while (v20 != v19);
      v19 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v19);
  }

  v13 = +[NSNull null];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1001AA718;
  v23[3] = &unk_10084BA78;
  v14 = v16;
  v25 = v14;
  v26 = a1[6];
  v24 = a1[5];
  v27 = v42;
  v15 = [v22 evaluateWithInput:v13 completion:v23];

  _Block_object_dispose(v42, 8);
}

void sub_1001AA588(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AA674;
  v15[3] = &unk_10084BA50;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v16 = v10;
  v17 = v11;
  v19 = v7;
  v20 = v12;
  v18 = v6;
  v13 = v6;
  v14 = v7;
  [v8 propertiesOfCredential:v9 completion:v15];
}

void sub_1001AA674(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 hasUsablePresentmentAuthPolicy] & 1) == 0)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v6 = *(*(a1 + 64) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(*(a1 + 56) + 16))(*(a1 + 56), *(a1 + 48), *(*(*(a1 + 64) + 8) + 40) != 0);
}

void sub_1001AA718(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 32) allObjects];
    (*(v2 + 16))(v2, v3, *(*(*(a1 + 56) + 8) + 40));
  }
}

void sub_1001AAD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_1001AAD98(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    if (v4 != a2 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Multiple element categories changed", &v7, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Category changed: %lu", &v7, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

void sub_1001AAF78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableArray);
  v5 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001AB0A4;
  v10[3] = &unk_10084BB18;
  v11 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AB484;
  v7[3] = &unk_10084BB40;
  v8 = v11;
  v9 = *(a1 + 40);
  v6 = v11;
  [v5 _performOperationOnCredentials:v3 operation:v10 completion:v7];
}

void sub_1001AB0A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AB1A0;
  v12[3] = &unk_10084BAF0;
  v16 = a4;
  v13 = v8;
  v14 = v7;
  v15 = *(a1 + 32);
  v9 = v7;
  v10 = v16;
  v11 = v8;
  [v9 propertiesOfCredential:v11 completion:v12];
}

void sub_1001AB1A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to fetch properties for %@, received error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001AB348;
    v11[3] = &unk_10083E4B8;
    v12 = v9;
    v13 = v5;
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    [v10 checkCompletenessOfCredential:v12 completion:v11];
  }
}

void sub_1001AB348(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to fetch completeness for %@, received error: %@", &v9, 0x16u);
    }
  }

  else
  {
    v8 = __ROR8__(a2 - 2, 1);
    v6 = [PKSEConsistencyCheckDeviceCredential deviceCredentialWithISOCredentialProperties:*(a1 + 40) hasKeyMeterial:(v8 > 7) | (0x74u >> v8) & 1 requireKeySync:a2 == 32];
    [*(a1 + 48) addObject:v6];
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t sub_1001AB484(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "allCredentialsWithCompletion found %lu credentials", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001AB554(id a1, DCCredentialStore *a2, NSString *a3, id a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting ISO18013 credential with identifier: %@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AB6A4;
  v12[3] = &unk_10084BB40;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(DCCredentialStore *)v6 deleteCredential:v11 completion:v12];
}

void sub_1001AB6A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to delete ISO18013 credential %@ with error: %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001AB810(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412546;
    v19 = v8;
    v20 = 2048;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating ISO18013 credential with identifier: %@ to state: %lu", buf, 0x16u);
  }

  v12 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AB984;
  v15[3] = &unk_10084BB40;
  v16 = v8;
  v17 = v9;
  v13 = v9;
  v14 = v8;
  [v7 setStateOfCredential:v14 to:v12 completion:v15];
}

void sub_1001AB984(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Failed to update ISO18013 credential %@ with error: %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001ABB4C(id *a1, void *a2, void *a3)
{
  v14 = a2;
  v13 = a3;
  v15 = objc_alloc_init(PKAsyncUnaryOperationComposer);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100005BC0;
  v29[4] = sub_10000B1EC;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001ABE30;
        v20[3] = &unk_10084BBF0;
        v23 = a1[5];
        v21 = v14;
        v22 = v9;
        v24 = v29;
        [v15 addOperation:{v20, v13}];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }

  v10 = +[NSNull null];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001ABFA0;
  v16[3] = &unk_10084B4B0;
  v11 = v13;
  v17 = v11;
  v18 = a1[6];
  v19 = v29;
  v12 = [v15 evaluateWithInput:v10 completion:v16];

  _Block_object_dispose(v29, 8);
}

void sub_1001ABE30(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001ABF20;
  v15[3] = &unk_10084BBC8;
  v11 = a1[7];
  v17 = v7;
  v18 = v11;
  v16 = v6;
  v12 = *(v8 + 16);
  v13 = v6;
  v14 = v7;
  v12(v8, v10, v9, v15);
}

void sub_1001ABF20(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(*(a1 + 48) + 8);
  v7 = *(v4 + 40);
  v5 = (v4 + 40);
  v6 = v7;
  if (v7)
  {
    a2 = v6;
  }

  objc_storeStrong(v5, a2);
  v8 = v2;
  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1001ABFA0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001AC09C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = PKISO18013CredentialStoragePartitionIdentity;
  v7 = a2;
  v8 = [&__NSArray0__struct arrayByAddingObject:v6];
  v9 = [v8 arrayByAddingObject:PKISO18013CredentialStoragePartitionUnifiedAccess];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001AC1B0;
  v11[3] = &unk_10084BC40;
  v12 = v5;
  v13 = *(a1 + 32);
  v10 = v5;
  [v7 credentialIdentifiersInPartitions:v9 completion:v11];
}

void sub_1001AC1B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001AC288;
  v5[3] = &unk_100846C88;
  v6 = objc_alloc_init(NSMutableArray);
  v4 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void sub_1001AC380(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AC49C;
  v12[3] = &unk_10084BC90;
  v13 = v5;
  v14 = *(a1 + 48);
  v16 = v6;
  v15 = *(a1 + 40);
  v17 = *(a1 + 56);
  v10 = v6;
  v11 = v5;
  [v7 _isoCredentialIdentifierForSubCredentialId:v8 cardType:v9 store:v11 completion:v12];
}

void sub_1001AC49C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001AC59C;
  v12[3] = &unk_10084BC68;
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  *&v10 = v6;
  *(&v10 + 1) = v9;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  v13 = v11;
  v14 = v10;
  [v4 generateAccountKeyAuthorizationForCredential:a2 accountKeyIdentifier:v5 completion:v12];
}

void sub_1001AC59C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  (*(a1[6] + 16))();
  v10 = PKLogFacilityTypeGetObject();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8 && v7 && !v9)
  {
    if (v11)
    {
      v12 = a1[4];
      v13 = a1[5];
      v18 = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Generate accountKAK for ISO18013 credential %@ with identifier: %@", &v18, 0x16u);
    }

    v14 = a1[7];
    v24 = v8;
    v15 = [NSArray arrayWithObjects:&v24 count:1];
    (*(v14 + 16))(v14, v7, v15, 0);
  }

  else
  {
    if (v11)
    {
      v16 = a1[4];
      v17 = a1[5];
      v18 = 138412802;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to generate accountKAK for ISO18013 credential %@ with identifier %@. Error: %@", &v18, 0x20u);
    }

    (*(a1[7] + 16))();
  }
}

void sub_1001AC820(uint64_t a1, void *a2, void *a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001AC8F0;
  v7[3] = &unk_10084BCE0;
  v9 = a3;
  v5 = *(a1 + 32);
  v8 = v5;
  v10 = *(a1 + 40);
  v6 = v9;
  [a2 isAccountKeySigningKeyAvailableForAccountKeyIdentifier:v5 completion:v7];
}

void sub_1001AC8F0(void *a1, unsigned int a2, void *a3)
{
  v5 = a3;
  (*(a1[5] + 16))();
  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to check accountKAK existence for identifier: %@", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  (*(a1[6] + 16))(a1[6], v8, v5);
}

id _SQLValueForIdentifiers(void *a1)
{
  v1 = a1;
  if (!v1 || ([NSKeyedArchiver archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = +[NSNull null];
  }

  return v2;
}

id _IdentifiersForSQLValue(void *a1)
{
  v1 = a1;
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v1 error:0];

  return v5;
}

void sub_1001ACE18(uint64_t a1, uint64_t a2)
{
  v5 = [(SQLiteEntity *)[PaymentSetupFeature alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [(PaymentSetupFeature *)v5 paymentSetupFeature];
  [v3 addObject:v4];
}

void sub_1001ADA84(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  v5 = _IdentifiersForSQLValue(a3);
  [(PKPaymentSetupFeature *)v4 setIdentifiers:v5];
}

void sub_1001ADAF0(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setType:](v4, "setType:", [a3 integerValue]);
}

void sub_1001ADB48(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setState:](v4, "setState:", [a3 integerValue]);
}

void sub_1001ADBA0(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setSupportedOptions:](v4, "setSupportedOptions:", [a3 integerValue]);
}

void sub_1001ADBF8(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setSupportedDevices:](v4, "setSupportedDevices:", [a3 integerValue]);
}

void sub_1001ADC60(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setFeatureIdentifier:](v4, "setFeatureIdentifier:", [a3 integerValue]);
}

void sub_1001ADCC0(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPaymentSetupFeature *)v3 setLastUpdated:v4];
}

void sub_1001ADD20(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPaymentSetupFeature *)v3 setExpiry:v4];
}

void sub_1001ADD80(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setProductType:](v4, "setProductType:", [a3 integerValue]);
}

void sub_1001ADDD8(id a1, PKPaymentSetupFeature *a2, id a3)
{
  v4 = a2;
  -[PKPaymentSetupFeature setProductState:](v4, "setProductState:", [a3 integerValue]);
}

void sub_1001AE3C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) transportIdentifier];
    v7 = PKSharingLoggableMailboxAddress();
    v8 = 138543619;
    v9 = v7;
    v10 = 2113;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "RelayServer: pinged remote mailbox %{public}@ with result: %{private}@", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4 == 0, v4);
}

void sub_1001AE574(PDSharingMailboxPayload *a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = PKLogFacilityTypeGetObject();
    v13 = v12;
    if (a4 >= 4)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v9 transportIdentifier];
        v15 = PKSharingLoggableMailboxAddress();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RelayServer: Unable to creating remote mailbox %{public}@, max attempts reached", &buf, 0xCu);
      }

      v65 = NSLocalizedDescriptionKey;
      v66 = @"max attempts";
      v16 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v17 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:v16];
      v11[2](v11, 0, v17);
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RelayServer: Creating remote mailbox \n\n %{private}@", &buf, 0xCu);
    }

    v18 = [v9 transportIdentifier];
    v19 = [PDSharingRelayServerCreateMailboxRequest alloc];
    v20 = [v9 relayServerHost];
    v21 = [(PDSharingRelayServerRequest *)v19 initWithMailboxIdentifier:v18 relayServerHost:v20];

    v22 = sub_1005C8F84(a1, v9, 1);
    v23 = [v10 payload];
    v24 = sub_1005C9124(a1, v23, v22);
    [(PDSharingRelayServerCreateMailboxRequest *)v21 setPayload:v24];

    v25 = [v10 displayInformation];
    [(PDSharingRelayServerCreateMailboxRequest *)v21 setDisplayInformation:v25];

    v26 = sub_1005C9244(a1, v9);
    [(PDSharingRelayServerRequest *)v21 setDeviceClaim:v26];

    -[PDSharingRelayServerCreateMailboxRequest setTimeToLive:](v21, "setTimeToLive:", [v9 timeToLive]);
    v27 = [v10 identifier];
    [(PDSharingRelayServerRequest *)v21 setCorrelationIdentifier:v27];

    v28 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v36 = a4;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0x3032000000;
    v62 = sub_100005BD0;
    v63 = sub_10000B1F4;
    v64 = 0;
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1001AEB94;
    v55[3] = &unk_100846BE8;
    v29 = v9;
    v56 = v29;
    v30 = v21;
    v57 = v30;
    v58 = a1;
    p_buf = &buf;
    [v28 addOperation:v55];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1001AEDAC;
    v52[3] = &unk_10083E620;
    v52[4] = a1;
    v31 = v30;
    v53 = v31;
    v54 = &buf;
    [v28 addOperation:v52];
    v50[0] = 0;
    v50[1] = v50;
    v50[2] = 0x3032000000;
    v50[3] = sub_100005BD0;
    v50[4] = sub_10000B1F4;
    v51 = 0;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_1005C95A0;
    v46[3] = &unk_10083C8C0;
    v46[4] = a1;
    v32 = v31;
    v47 = v32;
    v48 = v50;
    v49 = &buf;
    [v28 addOperation:v46];
    v33 = +[NSNull null];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1001AEFF4;
    v37[3] = &unk_10084BFE8;
    v43 = &buf;
    v34 = v18;
    v38 = v34;
    v39 = v29;
    v40 = a1;
    v41 = v10;
    v45 = v36;
    v42 = v11;
    v44 = v50;
    v35 = [v28 evaluateWithInput:v33 completion:v37];

    _Block_object_dispose(v50, 8);
    _Block_object_dispose(&buf, 8);
  }
}

void sub_1001AEB94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1 + 32) provisioningType] == 2)
  {
    [*(a1 + 40) setAccessRights:@"RWD"];
    v8 = *(a1 + 48);
    v9 = [*(a1 + 32) transportIdentifier];
    v10 = [*(a1 + 32) relayServerHost];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001AECE8;
    v13[3] = &unk_10084BF70;
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    v14 = v11;
    v17 = v12;
    v16 = v7;
    v15 = v6;
    sub_1005C92E8(v8, v9, v10, 0, v13);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void sub_1001AECE8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a2 && !v7)
  {
    v9 = *(a1 + 32);
    v10 = a3;
    [v9 setNotificationToken:a2];
    [*(a1 + 32) setNotificationTopic:v10];
  }

  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v13 != 0);
}

void sub_1001AEDAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) payload];
  v10 = [v9 data];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001AEEB4;
  v15[3] = &unk_10084BF98;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v18 = v7;
  v19 = v12;
  v16 = v11;
  v17 = v6;
  v13 = v6;
  v14 = v7;
  sub_1005C94FC(v8, v10, v15);
}

void sub_1001AEEB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) setDeviceAttestation:a2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 40), v8 != 0);
}

void sub_1001AEF48(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  (*(a1[5] + 16))(a1[5], a1[4], v11 != 0);
}

void sub_1001AEFF4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 72) + 8) + 40);
  if (v8)
  {
    if ([v8 code] != 401)
    {
LABEL_7:
      sub_1005CA46C(a1);
      goto LABEL_8;
    }
  }

  else
  {
    v9 = [v7 isCanceled];
    if ([*(*(*(a1 + 72) + 8) + 40) code] != 401)
    {
      if ((v9 & 1) == 0)
      {
        sub_1005CA39C(a1, &v10);
      }

      goto LABEL_7;
    }
  }

  sub_1005CA56C(a1);
LABEL_8:
}

void sub_1001AF9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001AFA14(uint64_t a1, int a2, int a3, id obj)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v6 = obj;
  (*(*(a1 + 40) + 16))();
}

void sub_1001AFA84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RelayServer: Failed to prewarm endpoint creation with error: %{public}@", &v10, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001AFB98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RelayServer: Failed to generate push notification token with result: %{public}@", &v10, 0xCu);
    }
  }

  v8 = [v5 hexEncoding];
  if (v8 && *(a1 + 56) == 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 48));
    v9 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableArray);
      [*(*(a1 + 32) + 56) setObject:v9 forKeyedSubscript:*(a1 + 40)];
    }

    [v9 addObject:v8];
    os_unfair_lock_unlock((*(a1 + 32) + 48));
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001AFD0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RelayServer: Failed to generate app attestation. %{public}@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001AFDF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) relayServerHost];

  if (v4)
  {
    v5 = [*(a1 + 32) _urlRequest];
    v6 = [v3 nextTaskID];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001AFFB8;
    v12[3] = &unk_10084C128;
    v11 = *(a1 + 40);
    v7 = v11;
    v13 = v11;
    [v3 performRequest:v5 taskIdentifier:v6 retries:1 authHandling:0 completionHandler:v12];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = objc_opt_class();
      v9 = v15;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RelayServer: Request missing host, unable to perform request: %{public}@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v5 = [NSError pkSharingError:1];
    (*(v10 + 16))(v10, 0, v5);
  }
}

void sub_1001AFFB8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
LABEL_3:
    v11 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v8 statusCode];
    if (v12 >= 300)
    {
      v13 = v12;
      v15 = NSLocalizedDescriptionKey;
      v16 = @"Received non 2XX http status code";
      v14 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v10 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:v13 userInfo:v14];

      if (v10)
      {
        goto LABEL_3;
      }
    }
  }

  v11 = [objc_alloc(*(a1 + 40)) initWithData:v7];
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSError errorWithDomain:PKAddSecureElementPassErrorDomain code:0 userInfo:0];
  }

LABEL_10:
  (*(*(a1 + 32) + 16))();
}