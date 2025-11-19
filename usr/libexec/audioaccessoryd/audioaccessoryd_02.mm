id sub_100083E40(uint64_t a1, void *a2)
{
  v3 = [a2 idsDevice];
  v4 = [v3 uniqueID];
  v5 = [*(a1 + 32) uniqueID];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_1000842EC(uint64_t a1)
{
  if (([*(a1 + 32) processingIDSPush] & 1) == 0)
  {
    [*(a1 + 32) setProcessingIDSPush:1];
    v2 = dispatch_time(0, 20000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100084468;
    block[3] = &unk_1002B6880;
    block[4] = *(a1 + 32);
    dispatch_after(v2, &_dispatch_main_q, block);
    v3 = +[CloudXPCService sharedInstance];
    v4 = [v3 manateeZoneUpgraded];

    v5 = sub_100005C14("CloudPairing");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS: Manatee getAccessoryKey", v9, 2u);
      }

      v7 = &off_1002B55A0;
    }

    else
    {
      if (v6)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS: getAccessoryKey", v9, 2u);
      }

      v7 = off_1002B5598;
    }

    v8 = [(__objc2_class *)*v7 sharedInstance];
    [v8 fetchAccessoryKeyBlob:0];
  }
}

void sub_100084468(uint64_t a1)
{
  [*(a1 + 32) setProcessingIDSPush:0];
  v2 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) processingIDSPush];
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDS: Reseting processingPush %d", v4, 8u);
  }
}

void sub_100084FFC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MUC - generated keys for RSA v3 - %@", &v13, 0xCu);
    }

    [*(*(*(a1 + 72) + 8) + 40) setObject:v5 forKeyedSubscript:@"RequestedKeys"];
    v7 = [*(a1 + 32) localDeviceRandomAddress];
    [*(*(*(a1 + 72) + 8) + 40) setObject:v7 forKeyedSubscript:@"RandomAddress"];

    v8 = *(*(*(a1 + 72) + 8) + 40);
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) idsDevice];
    [v9 sendCloudPairingResponseMessage:v8 toDevice:v10 version:@"Version 3"];

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) idsDevice];
    [v11 storePublicAddressMapping:v12 message:*(a1 + 48)];

    [*(a1 + 32) cloudPairingCompletedWithResponse:*(a1 + 56) localKeys:0 from:*(a1 + 40) forProtocolID:*(a1 + 64)];
  }
}

void sub_100085184(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MUC - generated keys for public address v3 - %@", &v12, 0xCu);
    }

    [*(*(*(a1 + 64) + 8) + 40) setObject:v5 forKeyedSubscript:@"RequestedKeys"];
    v7 = *(*(*(a1 + 64) + 8) + 40);
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) idsDevice];
    [v8 sendCloudPairingResponseMessage:v7 toDevice:v9 version:@"Version 3"];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) idsDevice];
    [v10 storePublicAddressMapping:v11 message:*(a1 + 48)];

    [*(a1 + 32) cloudPairingCompletedWithResponse:*(a1 + 48) localKeys:0 from:*(a1 + 40) forProtocolID:*(a1 + 56)];
  }
}

void sub_1000852DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MUC - generated keys for public address for v2 - %@", &v12, 0xCu);
    }

    [*(*(*(a1 + 72) + 8) + 40) setObject:v5 forKeyedSubscript:@"RequestedKeys"];
    v7 = *(*(*(a1 + 72) + 8) + 40);
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) idsDevice];
    [v8 sendCloudPairingResponseMessage:v7 toDevice:v9 version:@"Version 2"];

    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) idsDevice];
    [v10 storePublicAddressMapping:v11 message:*(a1 + 48)];

    [*(a1 + 32) cloudPairingCompletedWithResponse:*(a1 + 56) localKeys:0 from:*(a1 + 40) forProtocolID:*(a1 + 64)];
  }
}

void sub_100085628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reply for generate keys: %@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085794;
  block[3] = &unk_1002B6BB0;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 40);
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t sub_100085794(void *a1)
{
  if (a1[4] && !a1[5])
  {
    v5 = a1[6];
    v6 = *(a1[6] + 16);

    return v6();
  }

  else
  {
    v2 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001F008C(a1);
    }

    v3 = a1[5];
    return (*(a1[6] + 16))();
  }
}

void sub_100085A5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reply for complete pairing: %{private}@", buf, 0xCu);
  }

  if (v6)
  {
    v8 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0104();
    }
  }

  else
  {
    v9 = [*(a1 + 32) cloudPairingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100085BEC;
    block[3] = &unk_1002B6CF0;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    dispatch_async(v9, block);

    v8 = v14;
  }
}

void sub_100085BEC(id *a1)
{
  v1 = a1;
  v2 = [a1[4] objectForKeyedSubscript:@"kCloudPairingID"];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1[4] objectForKeyedSubscript:@"kCloudPairingID"];
      v4 = [[NSUUID alloc] initWithUUIDString:v3];
      if (v4)
      {
        v30 = v3;
        v31 = v2;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = v4;
        obj = [v1[5] _fetchArrayOfCloudDevicesForPeripheral:v4];
        v5 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v35;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v35 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v34 + 1) + 8 * i);
              v10 = [v9 idsDevice];
              v11 = [v10 uniqueID];
              v12 = v1;
              v13 = [v1[6] idsDevice];
              v14 = [v13 uniqueID];
              v15 = [v11 isEqualToIgnoringCase:v14];

              if ((v15 & 1) == 0)
              {
                v16 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [v9 idsDevice];
                  v18 = [v17 uniqueID];
                  *buf = 138412546;
                  v39 = v18;
                  v40 = 2112;
                  v41 = v32;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Removing Association from IDS device %@ paired to same BT-UUID %@", buf, 0x16u);
                }

                v19 = [v9 idsDevice];
                [v19 setNSUUID:0];

                [v9 setState:0];
              }

              v1 = v12;
            }

            v6 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v6);
        }

        v20 = [v1[6] idsDevice];
        v4 = v32;
        [v20 setNSUUID:v32];

        v21 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v1[6] description];
          v23 = [v22 UTF8String];
          *buf = 138412547;
          v39 = v32;
          v40 = 2081;
          v41 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Associated local device %@ with IDS device %{private}s", buf, 0x16u);
        }

        v24 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v1[6] description];
          v26 = [v25 UTF8String];
          *buf = 136380675;
          v39 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Completed cloud pairing to IDS device %{private}s", buf, 0xCu);
        }

        [v1[6] setState:6];
        v27 = [v1[5] unpairedIDSCloudIdentifiers];
        v28 = [v1[6] idsDevice];
        v29 = [v28 uniqueID];
        [v27 removeObject:v29];

        v3 = v30;
        v2 = v31;
      }

      else
      {
        v27 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1001F0178(v1);
        }
      }
    }
  }
}

void sub_100086940(id *a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v15[0] = @"PairingResponse";
    v14[0] = @"MessageType";
    v14[1] = @"DeviceName";
    v4 = a1[4];
    v5 = a2;
    v6 = [v4 localDeviceName];
    v15[1] = v6;
    v14[2] = @"PublicAddress";
    v7 = [a1[4] publicAddress];
    v15[2] = v7;
    v14[3] = @"EncryptionType";
    v8 = [a1[5] objectForKeyedSubscript:?];
    v15[3] = v8;
    v14[4] = @"RequestedKeyType";
    v9 = [a1[4] requestedKeyTypes];
    v15[4] = v9;
    v14[5] = @"RequestedKeyLength";
    v10 = [a1[5] objectForKeyedSubscript:?];
    v14[6] = @"RequestedKeys";
    v15[5] = v10;
    v15[6] = v5;
    v11 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:7];

    v12 = a1[4];
    v13 = [a1[6] idsDevice];
    [v12 sendCloudPairingResponseMessage:v11 toDevice:v13 version:@"Version 1"];
  }
}

void sub_100086DEC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    v18[0] = @"KeyDistribution";
    v17[0] = @"MessageType";
    v17[1] = @"DeviceName";
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = [v4 localDeviceName];
    v18[1] = v6;
    v17[2] = @"PublicAddress";
    v7 = [*(a1 + 32) publicAddress];
    v18[2] = v7;
    v17[3] = @"EncryptionType";
    v8 = [*(a1 + 40) objectForKeyedSubscript:?];
    v18[3] = v8;
    v17[4] = @"RequestedKeyType";
    v9 = [*(a1 + 32) requestedKeyTypes];
    v18[4] = v9;
    v17[5] = @"RequestedKeyLength";
    v10 = [*(a1 + 40) objectForKeyedSubscript:?];
    v11 = *(a1 + 48);
    v18[5] = v10;
    v18[6] = v11;
    v17[6] = @"LocalKeys";
    v17[7] = @"RequestedKeys";
    v18[7] = v5;
    v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:8];

    v13 = *(a1 + 32);
    v14 = [*(a1 + 56) idsDevice];
    [v13 sendCloudPairingResponseMessage:v12 toDevice:v14 version:@"Version 1"];

    [*(a1 + 32) cloudPairingCompletedWithResponse:*(a1 + 40) localKeys:v5 from:*(a1 + 56) forProtocolID:@"Version 1"];
    v15 = *(a1 + 32);
    v16 = [*(a1 + 56) idsDevice];
    [v15 storePublicAddressMapping:v16 message:*(a1 + 40)];
  }
}

void sub_100087784(uint64_t a1)
{
  v2 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (*(a1 + 64) == 1)
    {
      v5 = "pairing";
    }

    else
    {
      v5 = "security";
    }

    v6 = [*(a1 + 32) description];
    *buf = 134218755;
    v28 = v3;
    v29 = 2048;
    v30 = v4;
    v31 = 2080;
    v32 = v5;
    v33 = 2081;
    v34 = [v6 UTF8String];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MUC - Now attempting delayed (%lu) seconds to send (%lu) attempt '%s request' message to IDS device %{private}s", buf, 0x2Au);
  }

  v7 = [*(a1 + 40) associatedDevices];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100087B14;
  v25[3] = &unk_1002B9870;
  v26 = *(a1 + 32);
  v8 = [v7 cuFilteredArrayUsingBlock:v25];
  v9 = [v8 firstObject];

  if (!v9)
  {
    sub_1001F0770(a1, (a1 + 32));
    goto LABEL_22;
  }

  v10 = [v9 idsDevice];
  v11 = [v10 nsuuid];
  if (v11)
  {
    v12 = v11;
    v13 = [*(a1 + 40) unpairedIDSCloudIdentifiers];
    v14 = [v9 idsDevice];
    v15 = [v14 uniqueID];
    v16 = [v13 containsObject:v15];

    if ((v16 & 1) == 0)
    {
      v17 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 64) == 1)
        {
          v18 = "pairing";
        }

        else
        {
          v18 = "security";
        }

        v19 = [v9 description];
        v20 = [v19 UTF8String];
        *buf = 136315395;
        v28 = v18;
        v29 = 2081;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - Dropping sending '%s request' message to IDS device %{private}s because we got paired", buf, 0x16u);
      }

      goto LABEL_22;
    }
  }

  else
  {
  }

  v21 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 64) == 1)
    {
      v22 = "pairing";
    }

    else
    {
      v22 = "security";
    }

    v23 = [*(a1 + 32) description];
    v24 = [v23 UTF8String];
    *buf = 136315395;
    v28 = v22;
    v29 = 2081;
    v30 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MUC - Sending delayed '%s request' message to IDS device %{private}s", buf, 0x16u);
  }

  [*(a1 + 40) initiatePairing:*(a1 + 32)];
LABEL_22:
}

void *sub_100087B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 idsDevice];
  v5 = [v4 uniqueID];
  v6 = [*(a1 + 32) idsDevice];
  v7 = [v6 uniqueID];
  if ([v5 isEqualToString:v7])
  {
    v8 = v3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void sub_1000882BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1000882E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = WeakRetained;
  if (!v6 && WeakRetained)
  {
    v9 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MUC - generated keys for public address: %@", buf, 0xCu);
    }

    v10 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
    [v10 setObject:v5 forKeyedSubscript:@"RequestedKeys"];
    [*(a1 + 40) setObject:v10 forKey:@"Version 2"];
    if (!*(a1 + 88) && ([*(a1 + 48) localDeviceRandomAddress], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
    {
      v21 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MUC - generated keys with V2 RSA: %@", buf, 0xCu);
      }

      [*(a1 + 40) setObject:v10 forKey:@"Version 3"];
      [*(a1 + 40) setObject:@"CloudPairing" forKey:@"MessageType"];
      [v8 sendInitialPairingIDSMessage:*(a1 + 40) forDevice:*(a1 + 56) withRole:*(a1 + 80)];
    }

    else
    {
      v13 = [*(a1 + 48) localDeviceRandomAddress];

      if (v13)
      {
        v14 = *(a1 + 48);
        v15 = *(a1 + 64);
        v16 = [v14 keyLength];
        v17 = [*(a1 + 48) localDeviceRandomAddress];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100088614;
        v23[3] = &unk_1002B98C0;
        objc_copyWeak(v27, (a1 + 72));
        v24 = *(a1 + 32);
        v22 = *(a1 + 40);
        v18 = v22.i64[0];
        v25 = vextq_s8(v22, v22, 8uLL);
        v19 = *(a1 + 56);
        v20 = *(a1 + 80);
        v26 = v19;
        v27[1] = v20;
        [v14 generateKeyDictForTypes:v15 keyLength:v16 forAddress:v17 withCompletion:v23];

        objc_destroyWeak(v27);
      }
    }
  }
}

void sub_100088614(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v8 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MUC - generated keys for updated RSA: %@", &v11, 0xCu);
    }

    v9 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
    [v9 setObject:v5 forKeyedSubscript:@"RequestedKeys"];
    v10 = [*(a1 + 40) localDeviceRandomAddress];
    [v9 setObject:v10 forKeyedSubscript:@"RandomAddress"];

    [*(a1 + 48) setObject:v9 forKey:@"Version 3"];
    [*(a1 + 48) setObject:@"CloudPairing" forKey:@"MessageType"];
    [v7 sendInitialPairingIDSMessage:*(a1 + 48) forDevice:*(a1 + 56) withRole:*(a1 + 72)];
  }
}

void sub_10008924C(uint64_t a1)
{
  v2 = [*(a1 + 32) messageIdentifiersWaitingForAck];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000893FC;
  v8[3] = &unk_1002B9910;
  v8[4] = *(a1 + 40);
  v3 = [v2 keysOfEntriesPassingTest:v8];

  if ([v3 count])
  {
    v4 = *(a1 + 32);
    v9[0] = @"MessageType";
    v9[1] = @"DeviceName";
    v10[0] = @"RepairRequest";
    v5 = [v4 localDeviceName];
    v10[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    [v4 sendRePairCloudPairingMessage:v6 toDevice:*(a1 + 56) bundleID:*(a1 + 64)];
  }

  else
  {
    v5 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping here as message was delivered to device %@", buf, 0xCu);
    }
  }
}

void sub_10008A370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("CloudPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0C9C(a1, v6, v8);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unpaired Cloud Device", buf, 2u);
    }

    v9 = [*(a1 + 32) cloudPairingQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008A4B4;
    v10[3] = &unk_1002B6D18;
    v11 = v5;
    v12 = *(a1 + 40);
    dispatch_async(v9, v10);

    v8 = v11;
  }
}

void sub_10008A4B4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"kSuccess"];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"kSuccess"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:@"kSuccess"];
      v7 = [v6 BOOLValue];

      if (v7)
      {
        v8 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1001F0D18(a1);
        }
      }

      else
      {
        v9 = [*(a1 + 40) idsDevice];
        [v9 setNSUUID:0];

        v10 = *(a1 + 40);

        [v10 setState:0];
      }
    }
  }
}

void sub_10008AF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10008AF60(uint64_t a1)
{
  v2 = [*(a1 + 32) _statedumpAndRecordDailyMetric];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

int64_t sub_10008BB64(id a1, CloudDevice *a2, CloudDevice *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CloudDevice *)v4 idsDevice];
  v7 = [v6 name];
  v8 = [(CloudDevice *)v5 idsDevice];
  v9 = [v8 name];
  if ([v7 compare:v9] == 1)
  {
    v10 = [(CloudDevice *)v4 idsDevice];
    v11 = [v10 nsuuid];
    if (v11)
    {
      v12 = [(CloudDevice *)v5 idsDevice];
      v13 = [v12 nsuuid];
      v14 = v13 != 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_10008BC7C(id a1, CloudDevice *a2)
{
  v2 = a2;
  v3 = [(CloudDevice *)v2 idsDevice];
  v4 = [v3 nsuuid];
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

void sub_10008BCE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003948;
  v25 = sub_100003850;
  v26 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008BEDC;
  v16[3] = &unk_1002B99E0;
  v19 = &v27;
  v20 = &v21;
  v17 = *(a1 + 32);
  v7 = v5;
  v18 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v16];
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v12 = *(v28 + 6);
  NSAppendPrintF_safe();
  objc_storeStrong((v8 + 40), obj);
  v9 = *(*(a1 + 40) + 8);
  v14 = *(v9 + 40);
  v11 = v22[5];
  NSAppendPrintF_safe();
  objc_storeStrong((v9 + 40), v14);
  v10 = *(*(a1 + 40) + 8);
  v13 = *(v10 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v10 + 40), v13);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void sub_10008BEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_10008BEDC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 48) + 8) + 24);
  v6 = a3;
  v7 = a2;
  *(*(*(a1 + 48) + 8) + 24) = [v6 intValue] + v5;
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v12 = v6;
  NSAppendPrintF_safe();

  objc_storeStrong((v8 + 40), obj);
  v9 = *(*(a1 + 56) + 8);
  v13 = *(v9 + 40);
  v10 = [*(a1 + 32) objectForKeyedSubscript:{*(a1 + 40), v7, v12}];
  v11 = [v10 objectForKeyedSubscript:v7];

  NSAppendPrintF_safe();
  objc_storeStrong((v9 + 40), v13);
}

void sub_10008BFD4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  NSAppendPrintF_safe();
  objc_storeStrong((v1 + 40), obj);
}

void sub_10008C028(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  v5 = a3;
  v6 = a2;
  v7 = [v5 idsDevice];
  v8 = [v7 uniqueID];
  v9 = [v5 idsDevice];

  v10 = [v9 name];
  NSAppendPrintF_safe();

  objc_storeStrong((v4 + 40), obj);
}

void sub_10008D8C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchCloudPairingIdentifierForPeripheral:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

void sub_10008D9E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) service];
  v2 = [v3 devices];
  (*(v1 + 16))(v1, v2);
}

void sub_10008DCFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_10008DD34(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_10008E664(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 56));
  v4 = objc_loadWeakRetained(&to);
  v5 = v4 == 0;

  if (v5)
  {
    v6 = sub_100005C14("BTXPCTimer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0F14(a1, v6, v8, v9, v10, v11, v12, v13);
    }
  }

  else if (*(a1 + 40))
  {
    if (xpc_activity_get_state(v3))
    {
      if (xpc_activity_should_defer(v3))
      {
        if (xpc_activity_set_state(v3, 3))
        {
          v6 = sub_100005C14("BTXPCTimer");
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            v7 = *(a1 + 32);
            *buf = 138412290;
            v50 = v7;
          }
        }

        else
        {
          v6 = sub_100005C14("BTXPCTimer");
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1001F0E34(a1, v6, v36, v37, v38, v39, v40, v41);
          }
        }

        goto LABEL_33;
      }

      state = xpc_activity_get_state(v3);
      v6 = xpc_activity_copy_criteria(v3);
      if (state == 2)
      {
        v26 = xpc_activity_set_state(v3, 5);
        v27 = *(a1 + 32);
        v28 = +[NSUUID UUID];
        v29 = [v28 UUIDString];
        v22 = [NSString stringWithFormat:@"%@-%@", v27, v29];

        v30 = v22;
        [v22 UTF8String];
        v31 = os_transaction_create();
        v32 = sub_100005C14("BTXPCTimer");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 32);
          *buf = 138412546;
          v50 = v33;
          v51 = 1024;
          LODWORD(v52) = v26;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "BTXPCTimer triggered. Updating to done so that it can be cleaned. success : %@ : %d", buf, 0x12u);
        }

        v34 = *(a1 + 48);
        v35 = objc_loadWeakRetained(&to);
        (*(v34 + 16))(v34, v35);
      }

      else
      {
        v22 = sub_100005C14("BTXPCTimer");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v42 = *(a1 + 32);
          *buf = 138412802;
          v50 = v42;
          v51 = 2048;
          v52 = state;
          v53 = 2048;
          v54 = v6;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "BTXPCTimer %@ changed to state %ld with criteria %p", buf, 0x20u);
        }
      }

LABEL_32:

      goto LABEL_33;
    }

    v20 = objc_loadWeakRetained(&to);
    [v20 setActivity:v3];

    v6 = xpc_activity_copy_criteria(v3);
    v21 = *(a1 + 40);
    if (v6)
    {
      if (xpc_equal(v21, v6))
      {
        v22 = sub_100005C14("BTXPCTimer");
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        v23 = *(a1 + 32);
        *buf = 138412546;
        v50 = v23;
        v51 = 2112;
        v52 = v6;
        v24 = "BTXPCTimer Check-in: %@, with existing criteria: %@";
      }

      else
      {
        xpc_activity_set_criteria(v3, *(a1 + 40));
        v22 = sub_100005C14("BTXPCTimer");
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        v46 = *(a1 + 32);
        v47 = *(a1 + 40);
        *buf = 138412546;
        v50 = v46;
        v51 = 2112;
        v52 = v47;
        v24 = "BTXPCTimer Check-in: %@, with updating criteria: %@";
      }

      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
      goto LABEL_32;
    }

    if (v21)
    {
      v43 = sub_100005C14("BTXPCTimer");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *(a1 + 32);
        v45 = *(a1 + 40);
        *buf = 138412546;
        v50 = v44;
        v51 = 2112;
        v52 = v45;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "BTXPCTimer Check-in: %@, with criteria: %@", buf, 0x16u);
      }

      xpc_activity_set_criteria(v3, *(a1 + 40));
    }
  }

  else
  {
    v6 = sub_100005C14("BTXPCTimer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0EA4(a1, v6, v14, v15, v16, v17, v18, v19);
    }
  }

LABEL_33:

  objc_destroyWeak(&to);
}

void sub_10008EE34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t start()
{
  sub_10008F29C("cloudpaird");
  v0 = objc_autoreleasePoolPush();
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v1 = os_log_create("com.apple.bluetooth", "cloudpaird");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0F84();
    }
  }

  if (!confstr(65537, v30, 0x400uLL))
  {
    v2 = os_log_create("com.apple.bluetooth", "cloudpaird");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001F1004();
    }
  }

  v3 = +[BTIdentityDaemon sharedBTIdentityDaemon];
  [v3 activate];

  v4 = +[BTServicesDaemon sharedBTServicesDaemon];
  [v4 activate];

  v5 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  [v5 activate];

  if (_os_feature_enabled_impl())
  {
    v6 = +[AASleepDetectionManager sharedSleepDetectionManager];
    [v6 activate];
  }

  if (_os_feature_enabled_impl())
  {
    v7 = +[AAAccessoryUsageSummaryManager sharedAccessoryUsageSummaryManager];
    [v7 activate];
  }

  v8 = +[AAGestureControl sharedGestureControl];
  [v8 activate];

  v9 = +[CloudXPCService sharedInstance];
  [v9 activate];

  v10 = +[BTUserCloudServicesDaemon sharedBTServicesDaemon];
  [v10 activate];

  v11 = +[AAServicesDaemon sharedAAServicesDaemon];
  [v11 activate];

  v12 = +[AAServicesDaemon sharedAAServicesDaemon];
  v13 = +[HMServiceDaemon sharedHMServiceDaemon];
  [v13 setInternalAAServicesDaemon:v12];

  v14 = +[HMServiceDaemon sharedHMServiceDaemon];
  [v14 activate];

  v15 = +[AudioDeviceManager sharedAudioDeviceManager];
  [v15 activate:0];

  v16 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
  [v16 activate];

  if (_os_feature_enabled_impl())
  {
    v17 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
    v18 = +[AALowBatteryAlertDaemon sharedAALowBatteryAlertDaemon];
    [v18 setPairedDeviceManager:v17];

    v19 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v20 = +[AALowBatteryAlertDaemon sharedAALowBatteryAlertDaemon];
    [v20 setSrBannerObserver:v19];

    v21 = +[AALowBatteryAlertDaemon sharedAALowBatteryAlertDaemon];
    [v21 activate];
  }

  if (_os_feature_enabled_impl())
  {
    v22 = +[DataRelayDaemon sharedDataRelayInstance];
    [v22 activate];
  }

  v23 = +[AAServicesDaemon sharedAAServicesDaemon];
  v24 = +[AAFeatureOnboarding sharedInstance];
  [v24 setAaServicesDaemon:v23];

  v25 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  v26 = +[AAFeatureOnboarding sharedInstance];
  [v26 setPairedDeviceManager:v25];

  v27 = +[AAFeatureOnboarding sharedInstance];
  [v27 activate];

  objc_autoreleasePoolPop(v0);
  v28 = +[NSRunLoop mainRunLoop];
  [v28 run];

  return 0;
}

void sub_10008F27C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void sub_10008F29C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008F324;
  block[3] = &unk_1002B72D0;
  block[4] = a1;
  if (qword_1002FA120 != -1)
  {
    dispatch_once(&qword_1002FA120, block);
  }
}

uint64_t sub_10008F324(uint64_t a1)
{
  v1 = os_log_create("com.apple.bluetoothcloud", *(a1 + 32));
  v2 = qword_100300AE8;
  qword_100300AE8 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10008F364(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1002FA128;
  qword_1002FA128 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008F3E8(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AASensorServiceDaemon);
    v2 = qword_1002FA138;
    qword_1002FA138 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_10008F824(id a1)
{
  if (dword_1002F6BE8 <= 30 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F1110();
  }
}

void *sub_10008F870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[1])
  {
    return [result _personalTranslationMessageReceived:a3 fromDeviceAddress:a2];
  }

  return result;
}

uint64_t sub_10008F88C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F6BE8 <= 90 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F112C();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6BE8 <= 30)
    {
      v8 = 0;
      if (dword_1002F6BE8 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001F116C();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_10008FA84(uint64_t a1)
{
  if ([*(a1 + 32) length] <= 1)
  {
    sub_1001F1228();
  }

  else if (*(a1 + 40))
  {
    v9 = 0;
    [*(a1 + 32) getBytes:&v9 length:2];
    v2 = v9;
    if (dword_1002F6BE8 <= 30)
    {
      v3 = HIBYTE(v9);
      if (dword_1002F6BE8 != -1 || _LogCategory_Initialize())
      {
        v7 = v2;
        v8 = v3;
        LogPrintF();
      }
    }

    if (v2 == 1)
    {
      v4 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:*(a1 + 40)];

      if (!v4)
      {
        v5 = [[AAOVADSensorInfo alloc] initWithBTAddress:*(a1 + 40)];
        [*(*(a1 + 48) + 24) setObject:v5 forKeyedSubscript:*(a1 + 40)];
      }

      v6 = [*(*(a1 + 48) + 24) objectForKeyedSubscript:{*(a1 + 40), v7, v8}];
      if ([v6 update:*(a1 + 32)])
      {
        [*(a1 + 48) _sensorDataUpdated:v6];
      }
    }

    else
    {
      if (dword_1002F6BE8 <= 30 && (dword_1002F6BE8 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F1188();
      }

      v6 = 0;
    }
  }

  else
  {
    sub_1001F11C8();
  }
}

void sub_100092008(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/AudioAccessoryServices.framework"];
  v1 = [NSBundle bundleWithURL:v3];
  v2 = qword_1002FA148;
  qword_1002FA148 = v1;
}

void sub_1000920C8(id a1)
{
  v1 = objc_alloc_init(MPCloudKit);
  v2 = qword_1002FA158;
  qword_1002FA158 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000923DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000923F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained buddySetupDone];
}

uint64_t sub_1000925E0(uint64_t a1)
{
  out_token = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10009266C;
  v2[3] = &unk_1002B9C10;
  v3 = 0;
  v2[4] = *(a1 + 32);
  return notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, &_dispatch_main_q, v2);
}

id sub_10009266C(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "device unlocked after boot ", v4, 2u);
  }

  notify_cancel(*(a1 + 40));
  return [*(a1 + 32) initializeCloudKit];
}

void sub_10009278C(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "non-Manatee forceAccountStatus accountStatusWithCompletionHandler accountStatus %ld error %@", &v9, 0x16u);
  }

  if (!v4)
  {
    if (a2 == 1)
    {
      v7 = +[CloudXPCService sharedInstance];
      v6 = v7;
      v8 = 1;
    }

    else
    {
      if (a2 == 4)
      {
        v6 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "non-Manatee forceAccountStatus Account Available but Not Ready, Try again in sometime...", &v9, 2u);
        }

        goto LABEL_11;
      }

      v7 = +[CloudXPCService sharedInstance];
      v6 = v7;
      v8 = 0;
    }

    [v7 accountStatusAvailable:v8 force:1];
LABEL_11:
  }
}

void sub_100092FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009300C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v24 = a2;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "non-Manatee accountStatusWithCompletionHandler accountStatus %ld error %@", buf, 0x16u);
    }

    if (!v5)
    {
      if (a2 == 1)
      {
        if (([WeakRetained isAccountActive] & 1) == 0)
        {
          [WeakRetained setupSubscriptions];
          v9 = [WeakRetained readUserPreference:@"kMagicPairingLegacyMasterKeyRemoved"];

          if (!v9)
          {
            [WeakRetained deleteLegacyMasterKey];
          }
        }

        [WeakRetained setIsAccountActive:1];
        v10 = dispatch_time(0, 5000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000934AC;
        block[3] = &unk_1002B6880;
        block[4] = WeakRetained;
        dispatch_after(v10, &_dispatch_main_q, block);
        v11 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [WeakRetained isAccountActive];
          *buf = 134218240;
          v24 = 1;
          v25 = 1024;
          LODWORD(v26) = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "non-Manatee accountStatusDidChange Accounts available accountStatus %ld self.isAccountActive %d \n", buf, 0x12u);
        }
      }

      else if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        [WeakRetained setIsAccountActive:0];
        [WeakRetained setMasterBlob:0];
        [WeakRetained setShouldPauseFetch:0];
        [WeakRetained setPauseErrorReason:0];
        [WeakRetained setIsFetchInProgress:0];
        [WeakRetained setIsFetchMasterKeyInProgress:0];
        v13 = objc_loadWeakRetained((a1 + 32));
        v14 = [v13 reinitAfterBuddy];

        v15 = sub_100005C14("MagicPairing");
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "non-Manatee Not sending accounts status, since we are still in buddy. ", buf, 2u);
          }
        }

        else
        {
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "non-Manatee Sending accounts status, as signed out. ", buf, 2u);
          }

          v17 = +[CloudXPCService sharedInstance];
          [v17 accountStatusAvailable:objc_msgSend(WeakRetained force:{"isAccountActive"), 0}];

          v18 = [WeakRetained readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

          if (v18)
          {
            [WeakRetained removeuserPreference:@"MagicCloudPairingManateeUpgradedAccount" sync:1];
            v19 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "non-Manatee delete kMagicCloudPairingManateeUpgraded key", buf, 2u);
            }
          }

          [WeakRetained removeuserPreference:@"MagicCloudPairingMasterSubscriptionID" sync:1];
          [WeakRetained removeuserPreference:@"MagicCloudPairingAccessorySubscriptionID" sync:1];
          [WeakRetained removeuserPreference:@"MagicPairingMasterKeySubscriptionDisabled" sync:1];
          [WeakRetained removeuserPreference:@"kMagicPairingLegacyMasterKeyRemoved" sync:1];
        }

        v20 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [WeakRetained isAccountActive];
          *buf = 134218240;
          v24 = a2;
          v25 = 1024;
          LODWORD(v26) = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "non-Manatee accountStatusDidChange Account unavailable accountStatus %ld self.isAccountActive %d \n", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F1EF0();
    }
  }
}

void sub_1000934AC(uint64_t a1)
{
  v2 = +[CloudXPCService sharedInstance];
  [v2 accountStatusAvailable:objc_msgSend(*(a1 + 32) force:{"isAccountActive"), 0}];
}

uint64_t sub_1000936A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_10009388C(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  [*(a1 + 32) setPauseErrorReason:0];
  v2 = *(a1 + 32);

  return [v2 fetchAccessoryKeyBlob:0];
}

void sub_100093D00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 recordID];
    v9 = [v8 zoneID];
    *buf = 138412802;
    v48 = v6;
    v49 = 2112;
    v50 = v9;
    v51 = 2112;
    v52 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fetchKeyBlob completion error %@ recordZoneID %@, record: %@", buf, 0x20u);
  }

  if (v6)
  {
    if ([v6 code] != 26 && objc_msgSend(v6, "code") != 11)
    {
      if ([v6 code] == 6 || objc_msgSend(v6, "code") == 7)
      {
        v26 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1001F1F2C();
        }

        v27 = [v6 userInfo];
        v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];

        if (v28)
        {
          v29 = [v6 userInfo];
          v30 = [v29 objectForKeyedSubscript:CKErrorRetryAfterKey];
          [v30 doubleValue];
          v32 = v31;

          v33 = sub_100005C14("MagicPairing");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v48 = v32;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "MP fetchKeyBlob CKErrorServiceUnavailable/RateLimited, retry after: %lu", buf, 0xCu);
          }

          v34 = dispatch_time(0, (v32 * 1000000000.0));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000943E4;
          block[3] = &unk_1002B82D0;
          v35 = *(a1 + 40);
          block[4] = *(a1 + 32);
          block[5] = v35;
          dispatch_after(v34, &_dispatch_main_q, block);
        }
      }

      goto LABEL_25;
    }

    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "fetchKeyBlob CKErrorZoneNotFound", buf, 2u);
    }

    v11 = +[MPCloudKit_Manatee sharedInstance];
    [v11 fetchKeyBlob:*(a1 + 40)];
    goto LABEL_9;
  }

  v12 = [v5 recordID];
  v13 = [v12 zoneID];
  v14 = [v13 zoneName];
  v15 = [*(a1 + 32) recordZoneBlob];
  v16 = [v15 zoneID];
  v17 = [v16 zoneName];
  v18 = [v14 isEqualToString:v17];

  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = [v5 encryptedValues];
  v11 = [v19 objectForKey:@"EncryptedMasterKeyBlob"];

  v20 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v48 = v11;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MP fetchKeyBlob record %@", buf, 0xCu);
  }

  v21 = [v5 valuesByKey];
  v22 = [v21 objectForKey:@"KeyBlob"];

  if (v22)
  {
    v23 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v5 valuesByKey];
      v25 = [v24 objectForKey:@"KeyBlob"];
      *buf = 138412290;
      v48 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found Legacy Key, Remove this: %@", buf, 0xCu);
    }

    [*(a1 + 32) deleteLegacyMasterKey];
  }

  else
  {
    if ([v11 length] != 2)
    {
      if ([v11 length] > 0x20)
      {
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_10009449C;
        v42[3] = &unk_1002B6CF0;
        v40 = v11;
        v41 = *(a1 + 32);
        v43 = v40;
        v44 = v41;
        v45 = v5;
        dispatch_async(&_dispatch_main_q, v42);
      }

      else
      {
        v39 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "fetchKeyBlob NO record", buf, 2u);
        }

        dispatch_async(&_dispatch_main_q, &stru_1002B9CC0);
      }

LABEL_9:

LABEL_25:
      [*(a1 + 32) setIsFetchMasterKeyInProgress:0];
      v11 = +[CloudXPCService sharedInstance];
      [v11 endTransaction:@"fetchKeyBlob"];
      goto LABEL_26;
    }

    v36 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Master zone has been upgraded. Dont generate keys", buf, 2u);
    }

    v37 = [*(a1 + 32) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (!v37)
    {
      [*(a1 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
    }

    v38 = +[MPCloudKit_Manatee sharedInstance];
    [v38 fetchKeyBlob:0];
  }

LABEL_26:
}

void sub_1000943F4(id a1)
{
  v4 = 0;
  v1 = +[CloudXPCService sharedInstance];
  v2 = [NSData dataWithBytes:&v4 length:1];
  v3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v2, @"kMasterKeyBlob", 0];
  [v1 sendCloudKitMsg:@"MasterKeysNotAvailable" args:v3];
}

void sub_10009449C(uint64_t a1)
{
  if ([*(a1 + 32) length] == 33)
  {
    v2 = [*(a1 + 40) masterBlob];

    if (!v2)
    {
      v3 = [*(a1 + 32) mutableCopy];
      [*(a1 + 40) setMasterBlob:v3];

      v4 = +[CloudXPCService sharedInstance];
      v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:*(a1 + 32), @"kMasterKeyBlob", 0];
      [v4 sendCloudKitMsg:@"MasterKeysAvailable" args:v5];

      v6 = +[CloudXPCService sharedInstance];
      v7 = [v6 deviceManager];
      [v7 addAccountMagicKeysWithCloudRecord:*(a1 + 48)];

      v8 = *(a1 + 40);

      [v8 fetchAccessoryKeyBlob:0];
    }
  }
}

void sub_100094748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100094774(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = [v4 domain];
    if ([v6 isEqualToString:CKErrorDomain])
    {
      if ([v4 code] == 3 || objc_msgSend(v4, "code") == 4)
      {
      }

      else
      {
        v19 = [v4 code];

        if (v19 != 9)
        {
          goto LABEL_14;
        }
      }

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
      block[2] = sub_10009497C;
      block[3] = &unk_1002B9D10;
      v16 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v17 = v16;
      v18 = *(a1 + 56);
      v21 = v17;
      v22 = v18;
      dispatch_after(v15, &_dispatch_main_q, block);
    }

    else
    {
    }
  }

  else
  {
    v14 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001F1F94();
    }
  }

LABEL_14:
}

void sub_100094D7C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 recordID];
    v9 = [v8 zoneID];
    *buf = 138412802;
    v42 = v6;
    v43 = 2112;
    v44 = v9;
    v45 = 2112;
    v46 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "fetchAccessoryKeyBlob completion error %@ recordZoneID %@, record: %@", buf, 0x20u);
  }

  p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
  if (!v6)
  {
    v12 = [v5 recordID];
    v13 = [v12 zoneID];
    v14 = [v13 zoneName];
    v15 = [*(a1 + 32) recordZoneAccessoryDatabase];
    v16 = [v15 zoneID];
    v17 = [v16 zoneName];
    v18 = [v14 isEqualToString:v17];

    p_info = &OBJC_METACLASS___BTStateWatcher.info;
    if (!v18)
    {
      goto LABEL_30;
    }

    v19 = [v5 encryptedValues];
    v20 = [v19 objectForKey:@"EncryptedAccessoryBlob"];

    v21 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v5 modifiedByDevice];
      *buf = 138412546;
      v42 = v22;
      v43 = 2112;
      v44 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MP: Record Modified by %@: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0x16u);
    }

    if ([v20 length] == 4)
    {
      v23 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Accessory zone has been upgraded. Dont generate keys", buf, 2u);
      }

      v24 = [*(a1 + 32) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

      if (!v24)
      {
        [*(a1 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      }

      v25 = +[MPCloudKit_Manatee sharedInstance];
      [v25 fetchAccessoryKeyBlob:0];
    }

    else
    {
      if ([v20 length] < 0x99)
      {
LABEL_29:

        goto LABEL_30;
      }

      v25 = +[CloudXPCService sharedInstance];
      v36 = [v25 deviceManager];
      [v36 addLegacyMagicPairingRecordsWithCloudRecord:v5 userInitiated:0 completion:&stru_1002B9D58];
    }

    goto LABEL_29;
  }

  if ([v6 code] == 26 || objc_msgSend(v6, "code") == 11)
  {
    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetchAccessoryKeyBlob CKErrorZoneNotFound or CKErrorUnknownItem", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009536C;
    block[3] = &unk_1002B6D18;
    block[4] = *(a1 + 32);
    v40 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if ([v6 code] == 6 || objc_msgSend(v6, "code") == 7)
  {
    v26 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1001F1FD0();
    }

    v27 = [v6 userInfo];
    v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v28)
    {
      v29 = [v6 userInfo];
      v30 = [v29 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v30 doubleValue];
      v32 = v31;

      v33 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v42 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "MP fetchAccessoryKeyBlob CKErrorServiceUnavailable/RateLimited, retry after: %lu", buf, 0xCu);
      }

      v34 = dispatch_time(0, (v32 * 1000000000.0));
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000953D8;
      v38[3] = &unk_1002B82D0;
      v35 = *(a1 + 40);
      v38[4] = *(a1 + 32);
      v38[5] = v35;
      dispatch_after(v34, &_dispatch_main_q, v38);
    }
  }

LABEL_30:
  [*(a1 + 32) setIsFetchInProgress:0];
  v37 = [p_info + 21 sharedInstance];
  [v37 endTransaction:@"fetchAccessoryKeyBlob"];
}

void sub_10009536C(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:1];
  [*(a1 + 32) setPauseErrorReason:*(a1 + 40)];
  v2 = +[MPCloudKit_Manatee sharedInstance];
  [v2 fetchAccessoryKeyBlob:0];
}

void sub_1000953E8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2038();
    }
  }
}

void sub_100095770(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F20A0(v6, a1);
    }

    [*(a1 + 32) handleModifyMasterKeyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 48)];
    goto LABEL_22;
  }

  if (v5)
  {
    v8 = [v5 encryptedValues];
    v9 = [v8 objectForKey:@"EncryptedAccessoryBlob"];

    if ([v9 length] == 2 && (objc_msgSend(v9, "isEqualToData:", *(a1 + 40)) & 1) == 0)
    {
      v21 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Manatee: Accessory zone has been upgraded. Dont modify non-manate master keys", buf, 2u);
      }

      v22 = [*(a1 + 32) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

      if (!v22)
      {
        [*(a1 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      }

      v17 = +[MPCloudKit_Manatee sharedInstance];
      [v17 modifyKeyBlob:*(a1 + 40) withRetryCount:0];
    }

    else
    {
      if ([v9 length] != 33)
      {
LABEL_21:
        [*(a1 + 32) setIsWriteMasterKeysInProgress:0];

        goto LABEL_22;
      }

      v10 = [v5 encryptedValues];
      v11 = [v10 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
      [*(a1 + 32) setMasterBlob:v11];

      v12 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) masterBlob];
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Fetched existing master key record: encryptedBlob %@", buf, 0xCu);
      }

      v14 = +[CloudXPCService sharedInstance];
      v15 = [*(a1 + 32) masterBlob];
      v16 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v15, @"kMasterKeyBlob", 0];
      [v14 sendCloudKitMsg:@"MasterKeysAvailable" args:v16];

      v17 = +[CloudXPCService sharedInstance];
      v18 = [v17 deviceManager];
      [v18 addAccountMagicKeysWithCloudRecord:v5];
    }

    goto LABEL_21;
  }

  v19 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 40);
    *buf = 138412290;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No master key record found: write new key: %@", buf, 0xCu);
  }

  [*(a1 + 32) writeKeyBlob:*(a1 + 40) withRetryCount:0];
LABEL_22:
  v23 = +[CloudXPCService sharedInstance];
  [v23 endTransaction:@"modifyKeyBlob"];
}

void sub_100096330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_10009636C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v23 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v5;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v24 = [*(a1 + 32) cloudKitDatabase];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100096790;
    v27[3] = &unk_1002B9DA8;
    v31 = *(a1 + 80);
    v30 = *(a1 + 64);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v27[4] = *(a1 + 32);
    v28 = v25;
    v29 = *(a1 + 56);
    [v24 saveRecord:v26 completionHandler:v27];

    v22 = v28;
    goto LABEL_19;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecordZone: error %@ ", buf, 0xCu);
  }

  v8 = [v6 domain];
  if (![v8 isEqualToString:CKErrorDomain] || objc_msgSend(v6, "code") != 3 && objc_msgSend(v6, "code") != 7 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9 && objc_msgSend(v6, "code") != 2 && objc_msgSend(v6, "code") != 6)
  {

    goto LABEL_21;
  }

  v9 = *(a1 + 80);

  if (v9 <= 3)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 80);
      *buf = 138412546;
      v36 = v6;
      v37 = 2048;
      v38 = v11;
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

      *(*(*(a1 + 72) + 8) + 24) = 1;
      v18 = dispatch_time(0, (v17 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10009677C;
      block[3] = &unk_1002B86B8;
      v19 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v20 = v19;
      v21 = *(a1 + 80);
      v33 = v20;
      v34 = v21;
      dispatch_after(v18, &_dispatch_main_q, block);
      v22 = v33;
LABEL_19:
    }
  }

LABEL_21:
}

void sub_100096790(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MagicCloudPairingProtectedMasterBlob, saveRecord %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecord: error %@ ", buf, 0xCu);
  }

  v8 = [v6 domain];
  if (!-[NSObject isEqualToString:](v8, "isEqualToString:", CKErrorDomain) || [v6 code] != 3 && objc_msgSend(v6, "code") != 7 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9 && objc_msgSend(v6, "code") != 2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = *(a1 + 72);

  if (v9 <= 3)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      *buf = 138412546;
      v26 = v6;
      v27 = 2048;
      v28 = v11;
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

      *(*(*(a1 + 64) + 8) + 24) = 1;
      v18 = dispatch_time(0, (v17 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100096AE0;
      block[3] = &unk_1002B86B8;
      v19 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v20 = v19;
      v21 = *(a1 + 72);
      v23 = v20;
      v24 = v21;
      dispatch_after(v18, &_dispatch_main_q, block);
    }
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100096C58(uint64_t a1)
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
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updateCloudKitAccessoryZone with %@, delete: %i", buf, 0x12u);
  }

  v5 = [*(a1 + 40) modifyOperationTimer];

  if (v5)
  {
    v6 = [*(a1 + 40) modifyOperationTimer];
    [v6 invalidate];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100096DE0;
  v10[3] = &unk_1002B9E20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 48);
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:3.0];
  [*(a1 + 40) setModifyOperationTimer:v9];
}

void sub_100096DE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating Accessory Zone Now with %@", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 40));
  v6 = [*(a1 + 40) modifyOperationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100096F7C;
  v7[3] = &unk_1002B9DF8;
  v10 = *(a1 + 48);
  objc_copyWeak(&v9, buf);
  v8 = *(a1 + 32);
  [v6 addOperationWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void sub_100096F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100096F7C(uint64_t a1)
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

void sub_1000971F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100097220(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  dispatch_semaphore_signal(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v6)
  {
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F21E8();
    }

    [WeakRetained handleAccessoryKeyModifyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 56)];
  }

  else if (v5)
  {
    v9 = [v5 encryptedValues];
    v10 = [v9 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];

    if ([v10 length] == 4 && (objc_msgSend(v10, "isEqualToData:", *(a1 + 40)) & 1) == 0)
    {
      v22 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Master zone has been upgraded. Dont non-manatee accessory keys", buf, 2u);
      }

      v23 = [WeakRetained readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];
      v24 = v23 == 0;

      if (v24)
      {
        [WeakRetained setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      }

      v25 = +[MPCloudKit_Manatee sharedInstance];
      [v25 modifyAccessoryBlob:*(a1 + 40) withRetryCount:0];
    }

    else
    {
      v11 = [v10 isEqualToData:*(a1 + 40)];
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
          v16 = *(a1 + 40);
          *buf = 138412290;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "modify record: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0xCu);
        }

        v17 = *(a1 + 40);
        v18 = [v5 encryptedValues];
        [v18 setObject:v17 forKeyedSubscript:@"EncryptedAccessoryBlob"];

        objc_initWeak(buf, WeakRetained);
        v19 = [WeakRetained cloudKitDatabase];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10009763C;
        v26[3] = &unk_1002B9E48;
        v27 = v5;
        objc_copyWeak(v29, buf);
        v20 = *(a1 + 40);
        v21 = *(a1 + 56);
        v28 = v20;
        v29[1] = v21;
        [v19 saveRecord:v27 completionHandler:v26];

        objc_destroyWeak(v29);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v14 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138412290;
      v31 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No record found: write new data: %@", buf, 0xCu);
    }

    [WeakRetained writeAccessoryBlob:*(a1 + 40) withRetryCount:0];
  }
}

void sub_100097610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009763C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2250(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained handleAccessoryKeyModifyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully saved the modified record - %@", buf, 0xCu);
    }

    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009785C;
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

void sub_10009785C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001F22B8(a1);
    }
  }
}

void sub_100097E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100097E70(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) modifyOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100097F6C;
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

void sub_100097F48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100097F6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:*(a1 + 48) + 1];
}

void sub_100097FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeAccessoryBlob:*(a1 + 32) withRetryCount:0];
}

void sub_100098370(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeAccessoryBlob saveRecordZone: error %@ ", buf, 0xCu);
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000985C0;
    block[3] = &unk_1002B6880;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "saveRecordZone record %@, resume fetches", buf, 0xCu);
    }

    v9 = [*(a1 + 32) modifyOperationQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100098604;
    v14[3] = &unk_1002B9EC0;
    v10 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v11 = v10;
    v12 = *(a1 + 64);
    v15 = v11;
    v17 = v12;
    v16 = *(a1 + 48);
    [v9 addOperationWithBlock:v14];
  }

  dispatch_semaphore_signal(*(a1 + 56));
  v13 = +[CloudXPCService sharedInstance];
  [v13 endTransaction:@"WriteAccessoryBlob"];
}

id sub_1000985C0(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  v2 = *(a1 + 32);

  return [v2 setPauseErrorReason:0];
}

void sub_100098604(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitDatabase];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000986BC;
  v6[3] = &unk_1002B9D80;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = *(a1 + 56);
  v6[4] = v3;
  v7 = v5;
  [v2 saveRecord:v4 completionHandler:v6];
}

void sub_1000986BC(void *a1, void *a2, void *a3)
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
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "writeAccessoryBlob createRecordZone record  %@", buf, 0xCu);
    }

    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_100098C60;
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
      sub_1001F259C();
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
        sub_1001F2534();
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
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "writeAccessoryBlob failed with error %@, retry count = %lu, retry time: %lu", buf, 0x20u);
      }

      v28 = dispatch_time(0, (v25 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100098BA4;
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

void sub_100098BA4(uint64_t a1)
{
  v2 = [*(a1 + 32) modifyOperationQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100098C4C;
  v6[3] = &unk_1002B86B8;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v4 = v3;
  v5 = *(a1 + 48);
  v7 = v4;
  v8 = v5;
  [v2 addOperationWithBlock:v6];
}

void sub_100098C60(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2604(a1);
    }
  }
}

void sub_100098EF4(uint64_t a1, uint64_t a2, void *a3)
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
      v7 = "deleteCloudKitAccessoryZone: error %@ ";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "Successfully deleted record";
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

void sub_100099078(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001F266C();
  }
}

void sub_1000994FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F26D4();
    }

    v9 = [v6 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v11 = [v6 domain];
    if (![v11 isEqualToString:CKErrorDomain] || !CKErrorIsCode() || !v10)
    {
      goto LABEL_12;
    }

    v12 = [v10 code];

    if (v12 == 2032 && *(a1 + 32))
    {
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
        sub_1001F273C();
      }

      [*(a1 + 40) verifyAndCacheSubscriptionID:v11];
LABEL_12:
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "saveSubscription record  %@", &v26, 0xCu);
    }

    v25 = a1 + 32;
    v23 = *(a1 + 32);
    v24 = *(v25 + 8);
    v10 = [v5 subscriptionID];
    [v24 setuserPreference:v23 value:v10 sync:1];
  }
}

void sub_1000999C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F27A4(a1);
    }

    v9 = [v6 domain];
    if ([v9 isEqualToString:CKErrorDomain])
    {
      v10 = [v6 code];

      if (v10 == 26)
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
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found existing subscription - %@", &v18, 0xCu);
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
      sub_1001F280C();
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

void sub_100099D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100099D88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!a3)
    {
      v7 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found subscription - %@", &v13, 0xCu);
      }

      v8 = *(a1 + 32);
      v9 = [v5 subscriptionID];
      LODWORD(v8) = [v8 isEqualToString:v9];

      if (v8)
      {
        v10 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = v5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Already have subscription - %@", &v13, 0xCu);
        }

        v11 = [v5 subscriptionID];
        [WeakRetained setuserPreference:@"MagicCloudPairingAccessorySubscriptionID" value:v11 sync:1];

        [WeakRetained setCloudSubscription:v5];
      }
    }
  }

  else
  {
    v12 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2874();
    }
  }
}

void sub_10009A0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 48));
  objc_destroyWeak((v10 - 64));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009A11C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = a3;
  val = objc_loadWeakRetained((a1 + 48));
  v6 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetchAllSubscriptionsWithCompletionHandler: error %@ ", buf, 0xCu);
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
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Delete Subscription for record type: %@ and sub: %@", buf, 0x16u);
            }

            objc_initWeak(buf, val);
            v17 = [val cloudKitDatabase];
            v18 = [v12 subscriptionID];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_10009A494;
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
    [val setuserPreference:@"MagicPairingMasterKeySubscriptionDisabled" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_10009A464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10009A494(uint64_t a1, void *a2, void *a3)
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
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Error Deleting Subscription for record type: %@ with error: %@ ", &v11, 0x16u);
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
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Successfully deleted Subscription for record type - %@ with ID - %@", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setuserPreference:@"MagicPairingMasterKeySubscriptionDisabled" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_10009A87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009A8A8(uint64_t a1, void *a2, void *a3)
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

void sub_10009B150(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v9 recordName];
  v12 = [*(a1 + 32) recordName];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = 48;
  }

  else
  {
    v15 = [v9 recordName];
    v12 = [*(a1 + 40) recordName];
    v16 = [v15 isEqual:v12];

    if (!v16)
    {
      goto LABEL_6;
    }

    v14 = 56;
  }

  objc_storeStrong((*(*(a1 + v14) + 8) + 40), a2);
LABEL_6:
  if (v10)
  {
    v17 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001F28B0();
    }
  }

  else
  {
    v18 = IsAppleInternalBuild();
    v17 = sub_100005C14("MagicPairing");
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        v20 = [v8 encryptedValues];
        v21 = [v20 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
        v22 = v21;
        if (!v21)
        {
          v12 = [v8 encryptedValues];
          v22 = [v12 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
        }

        v23 = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " >>> Successfully fetched LegacyNonManateeContainer Record %@, %@", &v23, 0x16u);
        if (!v21)
        {
        }
      }
    }

    else if (v19)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " >>> Successfully fetched LegacyNonManateeContainer Record", &v23, 2u);
    }
  }
}

void sub_10009B3C0(uint64_t a1)
{
  v29 = -1;
  v2 = [NSData dataWithBytes:&v29 length:2];
  v28 = -1;
  v3 = [NSData dataWithBytes:&v28 length:4];
  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (!v4)
  {
    v8 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:*(a1 + 40)];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

LABEL_5:
    v11 = *(*(*(a1 + 72) + 8) + 40);
    if (v11)
    {
      v12 = [v11 encryptedValues];
      v13 = [v12 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
      v14 = [v3 isEqualToData:v13];

      if (v14)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v15 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:*(a1 + 48)];
      v16 = *(*(a1 + 72) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    v18 = [*(*(*(a1 + 64) + 8) + 40) encryptedValues];
    [v18 setObject:v2 forKeyedSubscript:@"EncryptedMasterKeyBlob"];

    v19 = [*(*(*(a1 + 72) + 8) + 40) encryptedValues];
    [v19 setObject:v3 forKeyedSubscript:@"EncryptedAccessoryBlob"];

    v20 = [CKModifyRecordZonesOperation alloc];
    v21 = [*(a1 + 32) recordZoneBlob];
    v30[0] = v21;
    v22 = [*(a1 + 32) recordZoneAccessoryDatabase];
    v30[1] = v22;
    v23 = [NSArray arrayWithObjects:v30 count:2];
    v24 = [v20 initWithRecordZonesToSave:v23 recordZoneIDsToDelete:0];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009B6CC;
    v25[3] = &unk_1002BA098;
    v27 = *(a1 + 72);
    v25[4] = *(a1 + 32);
    v26 = *(a1 + 56);
    [v24 setModifyRecordZonesCompletionBlock:v25];
    [*(a1 + 56) addOperation:v24];

    goto LABEL_10;
  }

  v5 = [v4 encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
  v7 = [v2 isEqualToData:v6];

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1001F2918(a1);
LABEL_10:
}

void sub_10009B6CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = sub_100005C14("MagicPairing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      sub_1001F294C();
    }
  }

  else
  {
    if (v7)
    {
      sub_1001F29B4(v6, v8, v9, v10, v11, v12, v13, v14);
    }

    v15 = [CKModifyRecordsOperation alloc];
    v16 = *(*(*(a1 + 56) + 8) + 40);
    v19[0] = *(*(*(a1 + 48) + 8) + 40);
    v19[1] = v16;
    v17 = [NSArray arrayWithObjects:v19 count:2];
    v6 = [v15 initWithRecordsToSave:v17 recordIDsToDelete:0];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009B840;
    v18[3] = &unk_1002BA070;
    v18[4] = *(a1 + 32);
    [v6 setModifyRecordsCompletionBlock:v18];
    [*(a1 + 40) addOperation:v6];
  }
}

void sub_10009B840(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100005C14("MagicPairing");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2A24();
    }

LABEL_4:

    goto LABEL_23;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " >>> Successfully Marked LegacyNonManateeContainer Migrated %@", buf, 0xCu);
  }

  if (IsAppleInternalBuild())
  {
    v22 = a1;
    v23 = 0;
    v24 = v8;
    v25 = v7;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v7;
    v12 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = sub_100005C14("MagicPairing");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v16 encryptedValues];
            v19 = [v18 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
            v20 = v19;
            if (!v19)
            {
              a3 = [v16 encryptedValues];
              v11 = [a3 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
              v20 = v11;
            }

            *buf = 138412546;
            v32 = v16;
            v33 = 2112;
            v34 = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " >>> Successfully Marked LegacyNonManateeContainer Record %@, %@", buf, 0x16u);
            if (!v19)
            {
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v13);
    }

    v8 = v24;
    v7 = v25;
    v9 = 0;
  }

  v21 = [*(a1 + 32) readUserPreference:{@"MagicCloudPairingManateeUpgradedAccount", v22, v23, v24, v25}];

  if (!v21)
  {
    [*(a1 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, ">>> Successfully Marked Defaults for Legacy Container zone upgraded successfully", buf, 2u);
    }

    goto LABEL_4;
  }

LABEL_23:
}

void sub_10009C010(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v9 recordName];
  v12 = [*(a1 + 32) recordName];
  v13 = [v11 isEqual:v12];

  if (v13)
  {
    v14 = 48;
  }

  else
  {
    v15 = [v9 recordName];
    v12 = [*(a1 + 40) recordName];
    v16 = [v15 isEqual:v12];

    if (!v16)
    {
      goto LABEL_6;
    }

    v14 = 56;
  }

  objc_storeStrong((*(*(a1 + v14) + 8) + 40), a2);
LABEL_6:
  if (v10)
  {
    v17 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1001F28B0();
    }
  }

  else
  {
    v18 = IsAppleInternalBuild();
    v17 = sub_100005C14("MagicPairing");
    v19 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v19)
      {
        v20 = [v8 encryptedValues];
        v21 = [v20 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
        v22 = v21;
        if (!v21)
        {
          v12 = [v8 encryptedValues];
          v22 = [v12 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
        }

        v23 = 138412546;
        v24 = v8;
        v25 = 2112;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " >>> Successfully fetched LegacyNonManateeContainer Record %@, %@", &v23, 0x16u);
        if (!v21)
        {
        }
      }
    }

    else if (v19)
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " >>> Successfully fetched LegacyNonManateeContainer Record", &v23, 2u);
    }
  }
}

void sub_10009C280(uint64_t a1)
{
  v2 = [*(*(*(a1 + 64) + 8) + 40) encryptedValues];
  v3 = [v2 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
  v4 = [v3 length];

  if (v4 != 33)
  {
    sub_1001F2B9C(&v24);
LABEL_7:
    v14 = v24;
    goto LABEL_4;
  }

  v5 = [*(*(*(a1 + 72) + 8) + 40) encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
  v7 = [v6 length];

  if (v7 <= 0x99)
  {
    sub_1001F2BFC(&v24);
    goto LABEL_7;
  }

  v8 = [CKModifyRecordZonesOperation alloc];
  v9 = +[MPCloudKit_Manatee sharedInstance];
  v10 = [v9 recordZoneBlob];
  v25[0] = v10;
  v11 = +[MPCloudKit_Manatee sharedInstance];
  v12 = [v11 recordZoneAccessoryDatabase];
  v25[1] = v12;
  v13 = [NSArray arrayWithObjects:v25 count:2];
  v14 = [v8 initWithRecordZonesToSave:v13 recordZoneIDsToDelete:0];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_10009C4B8;
  v19 = &unk_1002BA110;
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v15 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v15;
  [v14 setModifyRecordZonesCompletionBlock:&v16];
  [*(a1 + 56) addOperation:{v14, v16, v17, v18, v19}];

LABEL_4:
}

void sub_10009C4B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100005C14("MagicPairing");
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    if (v11)
    {
      sub_1001F2C5C();
    }
  }

  else
  {
    if (v11)
    {
      sub_1001F2CC4();
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_100003958;
    v40 = sub_100003858;
    v41 = [[CKRecord alloc] initWithRecordType:@"MasterKey" recordID:*(a1 + 32)];
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_100003958;
    v34 = sub_100003858;
    v35 = [[CKRecord alloc] initWithRecordType:@"AccessoryDatabase" recordID:*(a1 + 40)];
    v12 = [CKFetchRecordsOperation alloc];
    v13 = [v37[5] recordID];
    v42[0] = v13;
    v14 = [v31[5] recordID];
    v42[1] = v14;
    v15 = [NSArray arrayWithObjects:v42 count:2];
    v16 = [v12 initWithRecordIDs:v15];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10009C824;
    v25[3] = &unk_1002BA048;
    v26 = *(a1 + 32);
    v28 = &v36;
    v27 = *(a1 + 40);
    v29 = &v30;
    [v16 setPerRecordCompletionBlock:v25];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009CA94;
    v19[3] = &unk_1002BA0E8;
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v21 = &v36;
    v22 = v17;
    v23 = &v30;
    v24 = v18;
    v20 = *(a1 + 48);
    [v16 setCompletionBlock:v19];
    [*(a1 + 56) addOperation:v16];

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
  }
}

void sub_10009C824(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001F28B0();
    }

    goto LABEL_18;
  }

  v12 = IsAppleInternalBuild();
  v13 = sub_100005C14("MagicPairing");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = [v8 encryptedValues];
      v16 = [v15 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
      v17 = v16;
      if (!v16)
      {
        v4 = [v8 encryptedValues];
        v17 = [v4 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
      }

      v27 = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " >>> Successfully fetched LegacyNonManateeContainer Record %@, %@", &v27, 0x16u);
      if (!v16)
      {
      }
    }
  }

  else if (v14)
  {
    LOWORD(v27) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " >>> Successfully fetched LegacyNonManateeContainer Record", &v27, 2u);
  }

  v18 = [v9 recordName];
  v19 = [*(a1 + 32) recordName];
  v20 = [v18 isEqual:v19];

  if (v20)
  {
    v21 = *(a1 + 48);
LABEL_17:
    v25 = *(v21 + 8);
    v26 = v8;
    v11 = *(v25 + 40);
    *(v25 + 40) = v26;
LABEL_18:

    goto LABEL_19;
  }

  v22 = [v9 recordName];
  v23 = [*(a1 + 40) recordName];
  v24 = [v22 isEqual:v23];

  if (v24)
  {
    v21 = *(a1 + 56);
    goto LABEL_17;
  }

LABEL_19:
}

void sub_10009CA94(uint64_t a1)
{
  v2 = [*(*(*(a1 + 56) + 8) + 40) encryptedValues];
  v3 = [v2 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
  v4 = [*(*(*(a1 + 48) + 8) + 40) encryptedValues];
  [v4 setObject:v3 forKeyedSubscript:@"EncryptedMasterKeyBlob"];

  v5 = [*(*(*(a1 + 72) + 8) + 40) encryptedValues];
  v6 = [v5 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
  v7 = [*(*(*(a1 + 64) + 8) + 40) encryptedValues];
  [v7 setObject:v6 forKeyedSubscript:@"EncryptedAccessoryBlob"];

  v8 = [CKModifyRecordsOperation alloc];
  v9 = *(*(*(a1 + 64) + 8) + 40);
  v13[0] = *(*(*(a1 + 48) + 8) + 40);
  v13[1] = v9;
  v10 = [NSArray arrayWithObjects:v13 count:2];
  v11 = [v8 initWithRecordsToSave:v10 recordIDsToDelete:0];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009CC80;
  v12[3] = &unk_1002BA070;
  v12[4] = *(a1 + 32);
  [v11 setModifyRecordsCompletionBlock:v12];
  [*(a1 + 40) addOperation:v11];
}

void sub_10009CC80(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100005C14("MagicPairing");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001F2D00();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " >>> Successfully Upgraded to Legacy ManateeContainer Migrated %@", buf, 0xCu);
    }

    if (IsAppleInternalBuild())
    {
      v21 = a1;
      v22 = 0;
      v23 = v8;
      v24 = v7;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v7;
      v12 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v27;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v27 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v26 + 1) + 8 * i);
            v17 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v16 encryptedValues];
              v19 = [v18 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
              v20 = v19;
              if (!v19)
              {
                v8 = [v16 encryptedValues];
                v11 = [v8 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];
                v20 = v11;
              }

              *buf = 138412546;
              v31 = v16;
              v32 = 2112;
              v33 = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " >>> Successfully Upgraded to Legacy ManateeContainer Record %@, %@", buf, 0x16u);
              if (!v19)
              {
              }
            }
          }

          v13 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v13);
      }

      v8 = v23;
      v7 = v24;
      a1 = v21;
      v9 = 0;
    }

    [*(a1 + 32) markLegacyNonManateeContainerMigrated];
  }
}

void sub_10009D104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "deleteLegacyMasterKey deleteRecordWithID: error %@ ", &v9, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "deleteLegacyMasterKey deleteRecordWithID record:  %@", &v9, 0xCu);
    }

    [*(a1 + 32) setuserPreference:@"kMagicPairingLegacyMasterKeyRemoved" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_10009D234(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, ">>> resetOldZones recordZoneBlob: error %@ ", &v5, 0xCu);
  }
}

void sub_10009D2E8(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, ">>> resetOldZones recordZoneAccessoryDatabase: error %@ ", &v5, 0xCu);
  }
}

void sub_10009D39C(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, ">>> Manatee: resetOldZones recordZoneBlob: error %@ ", &v5, 0xCu);
  }
}

void sub_10009D450(id a1, CKRecordZoneID *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, ">>> Manatee:  resetOldZones recordZoneAccessoryDatabase: error %@ ", &v5, 0xCu);
  }
}

void sub_10009D7A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 32);
  v4 = [v3 recordZoneID];
  v5 = [v4 zoneName];
  v6 = [v5 isEqualToString:@"MagicCloudPairingCustomKeyBlobZone"];

  if (!v6)
  {
LABEL_10:

LABEL_11:
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009D960;
    block[3] = &unk_1002B6880;
    block[4] = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
    return;
  }

  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*****>>>> Master Key Updated", buf, 2u);
  }

  if (([*(a1 + 40) isWriteMasterKeysInProgress] & 1) == 0)
  {
    [*(a1 + 40) setMasterBlob:0];
    [*(a1 + 40) fetchKeyBlob:0];
    goto LABEL_10;
  }

  v8 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "*****>>>> Master Key Updated but we are in process to push new key. Dont fetch", buf, 2u);
  }
}

id sub_10009D960(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  [*(a1 + 32) setPauseErrorReason:0];
  v2 = *(a1 + 32);

  return [v2 fetchAccessoryKeyBlob:0];
}

void sub_10009DC18(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_10009DC38(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

BOOL sub_10009DC58(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t sub_10009DC70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_10009DC7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_10009E7A8(id a1)
{
  v1 = objc_alloc_init(SRConnectionManager);
  v2 = qword_1002FA170;
  qword_1002FA170 = v1;

  _objc_release_x1(v1, v2);
}

const char *sub_10009E97C(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "?";
  }

  else
  {
    return off_1002BA2E8[a1];
  }
}

uint64_t sub_10009EF68(uint64_t result)
{
  if (*(*(*(result + 32) + 8) + 40) && dword_1002F6E08 <= 30)
  {
    if (dword_1002F6E08 != -1)
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

void sub_10009F004(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if (![v10 isNearby] || (objc_msgSend(*(a1 + 32), "_isHeadphoneConnected:", v10) & 1) != 0)
  {
    if ([v10 isNearby])
    {
      if ([*(a1 + 32) _isHeadphoneConnected:v10])
      {
        v4 = @"already connected";
      }

      else
      {
        v4 = @"NA";
      }
    }

    else
    {
      v4 = @"not nearby";
    }

    v5 = *(*(a1 + 32) + 16);
    v6 = [v10 btAddress];
    [v5 logConnectionBackoffReason:v4 wxAddress:v6];

    goto LABEL_26;
  }

  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F37D8(a1);
  }

  if ([*(a1 + 32) _isHeadphonePrerequisiteMet:v10])
  {
    if (![*(a1 + 32) _isSRConnectEligible:v10])
    {
      if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v9 = [v10 btAddress];
      LogPrintF();
      goto LABEL_24;
    }

    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3824(v10);
    }

    v7 = *(*(a1 + 48) + 8);
    if (!*(v7 + 40))
    {
LABEL_20:
      v8 = v10;
      v9 = *(v7 + 40);
      *(v7 + 40) = v8;
LABEL_24:

      goto LABEL_25;
    }

    if ([v10 nearbyInEar] == 1)
    {
      v7 = *(*(a1 + 48) + 8);
      goto LABEL_20;
    }
  }

LABEL_25:
  ++*(*(*(a1 + 40) + 8) + 24);
LABEL_26:
}

const char *sub_10009F210(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "?";
  }

  else
  {
    return off_1002BA368[a1];
  }
}

void sub_10009F528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009F560(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F38A4(a1);
  }
}

void sub_10009F92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009F964(void *a1)
{
  if (*(*(a1[6] + 8) + 40))
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F390C(a1);
    }

    v2 = a1[4];
    v3 = *(a1[5] + 16);
    v4 = *(*(a1[6] + 8) + 40);
    v5 = [v2 btAddress];
    [v3 logConnectionBackoffReason:v4 wxAddress:v5];
  }
}

void sub_10009FAC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 connectionState] == 2)
  {
    ++*(*(a1 + 32) + 100);
  }

  v5 = [v4 isNearby];

  if (v5)
  {
    ++*(*(a1 + 32) + 104);
  }
}

void sub_10009FBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009FBFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 audioRoutingScore];
  v6 = [v4 model];

  if ((([v6 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v6, "hasPrefix:", @"iPod") & 1) != 0 || (objc_msgSend(v6, "containsString:", @"Mac") & 1) != 0 || objc_msgSend(v6, "hasPrefix:", @"Watch")) && v5 >= *(*(a1 + 32) + 44))
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_10009FF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009FF84(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = a3;
  v7 = [v22 bleDevice];
  v8 = [v7 advertisementFields];

  v9 = CFDictionaryGetCFDataOfLength();
  v10 = [v22 model];
  v11 = [v10 containsString:@"Mac"];

  if (v11)
  {
    v12 = *(*(a1 + 32) + 16);
    v13 = [v22 idsIdentifier];
    v14 = [v12 _nearbyMacAddressTranslate:v13];

    v9 = v14;
  }

  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F39E8(a1);
  }

  v15 = [v9 bytes];
  if (v9)
  {
    v16 = v15;
    v17 = [*(a1 + 40) nearbyLastRouteHost];
    if ([v17 bytes] && v16)
    {
      v18 = [*(a1 + 40) nearbyLastRouteHost];
      v19 = [v18 bytes];
      v21 = *v19 != *(v16 + 3) || *(v19 + 2) != v16[5];

      if (!v21)
      {
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
        *a4 = 1;
      }
    }

    else
    {
    }
  }
}

void sub_1000A0218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A0230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 connectionState] == 2 && (objc_msgSend(v4, "aacpDeviceFlags") & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_1000A04C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A0504(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3A78(a1);
  }
}

const __CFString *sub_1000A0708(int a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1002BA3C0 + (a1 - 1));
  }
}

void sub_1000A0B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A0BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 connectionState] == 2 && objc_msgSend(v4, "isSRCapable"))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void sub_1000A10B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A145C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(v7 + 16))(v7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A14B8(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40) && dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3C54(a1);
  }
}

void sub_1000A18DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A193C(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3CBC(a1);
    }

    **(a1 + 48) = *(*(*(a1 + 40) + 8) + 24);
  }
}

void sub_1000A1BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000A24CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A2500(uint64_t a1)
{
  v2 = a1 + 32;
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    result = result;
    **(a1 + 40) = result;
    if (dword_1002F6E08 <= 30)
    {
      if (dword_1002F6E08 != -1)
      {
        return sub_1001F3E54(v2);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1001F3E54(v2);
      }
    }
  }

  return result;
}

void sub_1000A2734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000A2768(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    result = result;
    **(a1 + 40) = result;
  }

  return result;
}

void sub_1000A2B5C(uint64_t a1)
{
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F401C();
  }

  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 80) = 0;
  v2 = *(*(a1 + 32) + 88);
  if (v2)
  {
    v5 = v2;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

void sub_1000A427C(uint64_t a1)
{
  if ([*(a1 + 32) isWatchingBuddy] && +[BTSystemConfiguration isBuddyComplete](BTSystemConfiguration, "isBuddyComplete"))
  {
    v2 = [*(a1 + 32) block];
    v2[2]();
  }
}

void sub_1000A4300(uint64_t a1)
{
  v2 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F41C0(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained directoryChanged];
}

void sub_1000A4360(uint64_t a1)
{
  v2 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F4268(a1, v2);
  }

  v3 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F4268(a1, v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];
}

void sub_1000A45D8(uint64_t a1)
{
  notify_cancel(*(a1 + 40));
  v2 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Buddy complete notification callback", v5, 2u);
  }

  v3 = [*(a1 + 32) block];

  if (v3)
  {
    v4 = [*(a1 + 32) block];
    v4[2]();
  }
}

void sub_1000A4780(uint64_t a1)
{
  notify_cancel(*(a1 + 40));
  v2 = qword_100300AE8;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "device unlocked after boot callback", v5, 2u);
  }

  v3 = [*(a1 + 32) block];

  if (v3)
  {
    v4 = [*(a1 + 32) block];
    v4[2]();
  }
}

void sub_1000A4AB4(uint64_t a1)
{
  v1 = [*(a1 + 32) block];
  v1[2]();
}

void sub_1000A4BC0(uint64_t a1)
{
  v1 = [*(a1 + 32) block];
  v1[2]();
}

void sub_1000A4E0C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000A4E70(id a1)
{
  v1 = objc_alloc_init(BTUserCloudServicesDaemon);
  v2 = qword_1002FA180;
  qword_1002FA180 = v1;

  _objc_release_x1(v1, v2);
}

id sub_1000A5208(uint64_t a1)
{
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4644();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

id sub_1000A53D4(uint64_t a1)
{
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4660();
  }

  v2 = *(a1 + 32);

  return [v2 _invalidate];
}

void sub_1000A5AC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1000A5AE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _xpcConnectionInvalidated:*(a1 + 32)];
}

void sub_1000A5F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A5F60(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000A6420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A645C(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000A652C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F473C();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000A67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A680C(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000A6AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6B1C(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000A6E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A6EAC(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A6F4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A7004;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A733C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7378(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A7418(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A74D0;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A776C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A77A8(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A7848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A7904;
  v6[3] = &unk_1002B6948;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_1000A7904(uint64_t a1)
{
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F487C(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000A7BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A7C20(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A7CC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A7D7C;
  v6[3] = &unk_1002B6948;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000A7D7C(uint64_t a1)
{
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F48DC(a1);
  }

  v2 = *(a1 + 40);
  v3 = [NSArray arrayWithArray:*(a1 + 32)];
  (*(v2 + 16))(v2, v3, 0);
}

void sub_1000A80A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A80E0(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A8180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8238;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A84D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8510(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A85B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8668;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A8904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8940(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A89E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F49BC();
  }

  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8AD0;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A8D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A8D8C(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A8E2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4A18();
  }

  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A8F1C;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A91BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A91F8(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A9298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9350;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A95EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A9628(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A96C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9780;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A9A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A9A58(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A9AF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A9BB0;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000A9E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A9E88(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000A9F28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4B58();
  }

  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA018;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000AA298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA2D4(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000AA374(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4BB4();
  }

  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA464;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000AA704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AA740(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000AA7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AA898;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1000AAB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AAB68(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40) && dword_1002F6ED8 <= 90)
  {
    v1 = result;
    if (dword_1002F6ED8 != -1)
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

void sub_1000AAED8(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AAF14(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AAFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000AB0C8;
  v8[3] = &unk_1002BA510;
  v9 = v3;
  v11 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v10 = v5;
  v12 = v6;
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t sub_1000AB0C8(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    if (dword_1002F6ED8 <= 30)
    {
      if (dword_1002F6ED8 != -1 || (v10 = _LogCategory_Initialize(), v2 = a1[4], v10))
      {
        LogPrintF();
        v2 = a1[4];
      }
    }

    v8 = a1[6];
    v7 = *(v8 + 16);
    v9 = 0;
  }

  else
  {
    if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F4C90(a1);
    }

    v3 = a1[6];
    v12 = a1[5];
    v4 = BTErrorF();
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(v3 + 16);
    v8 = v3;
    v2 = 0;
    v9 = v4;
  }

  return v7(v8, v2, v9);
}

void sub_1000AB488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  (*(v9 + 16))(v9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AB4C4(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AB7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AB834(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AB904(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000AB9C0;
  v6[3] = &unk_1002B6948;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t sub_1000AB9C0(uint64_t a1)
{
  if (dword_1002F6ED8 <= 30 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F4D38(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_1000ABC40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ABC7C(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000ABF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  (*(v11 + 16))(v11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ABF8C(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AC318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC358(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AC7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC800(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AC8C8(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AC97C;
  v5[3] = &unk_1002B6948;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  dispatch_async(v3, v5);
}

void sub_1000AC97C(uint64_t a1)
{
  v1 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v2 = +[CloudXPCService sharedInstance];
  [v2 endTransaction:@"createSoundProfileRecordURL"];
}

void sub_1000ACC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ACC94(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000ACD60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ACE34;
  block[3] = &unk_1002BA588;
  v11 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v11;
  dispatch_async(v6, block);
}

void sub_1000ACE34(void *a1)
{
  if (a1[4])
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v1 = a1[5];
    v2 = a1[6];
    if (v1)
    {
      (*(v2 + 16))(a1[6], v1, 0);
    }

    else
    {
      v3 = BTErrorF();
      (*(v2 + 16))(v2, 0, v3);
    }
  }

  v4 = +[CloudXPCService sharedInstance];
  [v4 endTransaction:@"fetchSoundProfileRecord"];
}

void sub_1000AD160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AD19C(uint64_t result)
{
  v1 = *(result + 40);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6ED8 <= 90)
  {
    if (dword_1002F6ED8 == -1)
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

void sub_1000AD264(uint64_t a1, void *a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000AD318;
  v5[3] = &unk_1002B6948;
  v6 = a2;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = v6;
  dispatch_async(v3, v5);
}

void sub_1000AD414(id a1)
{
  v1 = objc_alloc_init(CloudXPCService);
  v2 = qword_1002FA190;
  qword_1002FA190 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000ADA6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void sub_1000ADAC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained axHeadTrackingSettingChanged];
}

void sub_1000ADB04(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEvent:v3];
}

void sub_1000ADB60(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = @"kOnlineStatus";
  v4 = [NSNumber numberWithBool:a2];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  [WeakRetained sendCloudKitMsg:@"OnlineStatusChanged" argsObject:v5];
}

void sub_1000ADD0C(uint64_t a1)
{
  v1 = [*(a1 + 32) activeTransactions];
  [v1 removeAllObjects];
}

void sub_1000ADDD8(uint64_t a1)
{
  v2 = sub_100005C14("CloudXPCService");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " handleAXSAccessibilityHTNotification", buf, 2u);
  }

  v3 = _AXSSpatialAudioHeadTracking();
  v4 = sub_100005C14("CloudXPCService");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v10 = v3;
    v11 = 1024;
    v12 = v3 != 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AccessibilityHeadtracking: headTrackStatus:%lu, newHT:%u", buf, 0x12u);
  }

  v5 = [NSNumber numberWithBool:v3 != 0, @"kAccessHeadTracking"];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  [*(a1 + 32) sendCloudKitMsg:@"kBTAccessHeadTrackUpdate" args:v6];
}

void sub_1000AE398(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitConnection];

  if (v2)
  {
    v3 = sub_100005C14("XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Already established connection to bluetoothd", v14, 2u);
    }

LABEL_8:

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0);
    }

    return;
  }

  v4 = [*(a1 + 32) xpcQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.cloudkit.xpc", v4, 2uLL);
  [*(a1 + 32) setCloudKitConnection:mach_service];

  v6 = [*(a1 + 32) cloudKitConnection];

  v7 = sub_100005C14("XPC");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Established connection to bluetoothd", v14, 2u);
    }

    v9 = [*(a1 + 32) cloudKitConnection];
    xpc_connection_set_event_handler(v9, &stru_1002BA698);

    v3 = [*(a1 + 32) cloudKitConnection];
    xpc_connection_resume(v3);
    goto LABEL_8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001F4E84();
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v15 = NSLocalizedFailureReasonErrorKey;
    v16 = @"Failed to establish connection to bluetoothd";
    v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v13 = [NSError errorWithDomain:@"BTUserErrorDomain" code:0 userInfo:v12];
    (*(v11 + 16))(v11, v13);
  }
}

void sub_1000AE6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000AE700(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F4EC0(a1);
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    v5 = sub_100005C14("XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v11 = 138412547;
      v12 = v6;
      v13 = 2113;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending CK XPC object: (%@)%{private}@", &v11, 0x16u);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "kMsgId", [*(a1 + 32) UTF8String]);
    if (*(a1 + 40))
    {
      v9 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v8, "kMsgArgs", v9);
    }

    v10 = [WeakRetained cloudKitConnection];
    xpc_connection_send_message(v10, v8);

LABEL_10:
  }
}

void sub_1000AE984(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000AE9A0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F4F28(a1);
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    v5 = sub_100005C14("XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v18 = 138412547;
      v19 = v6;
      v20 = 2113;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending CK XPC message: (%@)%{private}@", &v18, 0x16u);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "kMsgId", [*(a1 + 32) UTF8String]);
    if (*(a1 + 40))
    {
      v9 = [*(a1 + 48) deviceManager];
      v10 = [v9 cloudAccountInfo];

      v11 = [v10 loginID];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 40)];
        v14 = [v10 loginID];
        [v13 setObject:v14 forKey:@"loginID"];

        v15 = _CFXPCCreateXPCMessageWithCFObject();
        xpc_dictionary_set_value(v8, "kMsgArgs", v15);
      }

      else
      {
        v16 = *(a1 + 40);
        v13 = _CFXPCCreateXPCMessageWithCFObject();
        xpc_dictionary_set_value(v8, "kMsgArgs", v13);
      }
    }

    v17 = [WeakRetained cloudKitConnection];
    xpc_connection_send_message(v17, v8);

LABEL_13:
  }
}

void sub_1000AECFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000AED18(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5008(a1);
    }

    goto LABEL_14;
  }

  v5 = sub_100005C14("XPC");
  v6 = v5;
  if (!v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138412547;
      v18 = v9;
      v19 = 2113;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reply: Sending CK XPC message: (%@)%{private}@", buf, 0x16u);
    }

    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v8, "kMsgId", [*(a1 + 32) UTF8String]);
    if (*(a1 + 40))
    {
      v11 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v8, "kMsgArgs", v11);
    }

    v12 = [WeakRetained cloudKitConnection];
    v13 = [WeakRetained xpcQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000AEF88;
    v14[3] = &unk_1002BA710;
    v16 = *(a1 + 48);
    v15 = *(a1 + 32);
    xpc_connection_send_message_with_reply(v12, v8, v13, v14);

LABEL_14:
    goto LABEL_15;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001F4F90(a1);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, &__NSDictionary0__struct, v3);
  }

LABEL_15:
}

void sub_1000AEF88(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  v5 = +[NSDictionary dictionary];
  if (type == &_xpc_type_dictionary)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
    v14 = sub_100005C14("XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "received reply msg: %@", buf, 0xCu);
    }

    v12 = [v7 objectForKey:@"kMsgArgs"];
    v15 = *(a1 + 40);
    if (v12 && v15)
    {
      (*(v15 + 16))(v15, v12, 0);
    }

    else
    {
      v20 = NSLocalizedFailureErrorKey;
      v21 = @"Reply Key Not Found";
      v16 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v17 = [NSError errorWithDomain:@"BTUserErrorDomain" code:0 userInfo:v16];
      (*(v15 + 16))(v15, v5, v17);
    }

    goto LABEL_16;
  }

  v6 = sub_100005C14("XPC");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1001F5070(a1);
  }

  v7 = [NSString stringWithFormat:@"Unexpected object type from reply: %@", v3];
  if (type == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
    v9 = sub_100005C14("XPC");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001F50E8(a1);
    }

    v10 = [NSString stringWithUTF8String:string];

    v7 = v10;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v18 = NSLocalizedFailureErrorKey;
    v19 = v7;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NSError errorWithDomain:@"BTUserErrorDomain" code:0 userInfo:v12];
    (*(v11 + 16))(v11, v5, v13);

LABEL_16:
  }
}

void sub_1000AF3C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000AF3DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v7 = sub_100005C14("XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5008(a1);
    }

    goto LABEL_30;
  }

  if (!v3)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138412547;
      v33 = v9;
      v34 = 2113;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sync reply: Sending CK XPC message: (%@)%{private}@", buf, 0x16u);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "kMsgId", [*(a1 + 32) UTF8String]);
    if (*(a1 + 40))
    {
      v11 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(v7, "kMsgArgs", v11);
    }

    v12 = [WeakRetained cloudKitConnection];
    v13 = xpc_connection_send_message_with_reply_sync(v12, v7);

    type = xpc_get_type(v13);
    v15 = +[NSDictionary dictionary];
    if (type == &_xpc_type_dictionary)
    {
      v17 = _CFXPCCreateCFObjectFromXPCObject();
      v24 = sub_100005C14("XPC");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "received sync reply msg: %@", buf, 0xCu);
      }

      v22 = [v17 objectForKey:@"kMsgArgs"];
      v25 = *(a1 + 48);
      if (v22 && v25)
      {
        (*(v25 + 16))(v25, v22, 0);
      }

      else
      {
        v30 = NSLocalizedFailureErrorKey;
        v31 = @"Reply Key Not Found";
        v26 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v27 = [NSError errorWithDomain:@"BTUserErrorDomain" code:0 userInfo:v26];
        (*(v25 + 16))(v25, v15, v27);
      }
    }

    else
    {
      v16 = sub_100005C14("XPC");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1001F51D8((a1 + 32));
      }

      v17 = [NSString stringWithFormat:@"Unexpected object type from reply: %@", v13];
      if (type == &_xpc_type_error)
      {
        string = xpc_dictionary_get_string(v13, _xpc_error_key_description);
        v19 = sub_100005C14("XPC");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1001F5254((a1 + 32));
        }

        v20 = [NSString stringWithUTF8String:string];

        v17 = v20;
      }

      v21 = *(a1 + 48);
      if (!v21)
      {
        goto LABEL_29;
      }

      v28 = NSLocalizedFailureErrorKey;
      v29 = v17;
      v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v23 = [NSError errorWithDomain:@"BTUserErrorDomain" code:0 userInfo:v22];
      (*(v21 + 16))(v21, v15, v23);
    }

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  v5 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1001F5160(a1);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, &__NSDictionary0__struct, v3);
  }

LABEL_31:
}

void sub_1000AFC84(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "devicesRemovedWithDevices: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v10 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F53A0();
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v11 = @"devices";
    v12 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v9 sendCloudKitMsg:@"DevicesRemovedWithRecords" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000AFEA0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "devicesUpdatedWithDevices: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v10 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5408();
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v11 = @"devices";
    v12 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v9 sendCloudKitMsg:@"DevicesUpdatedWithRecords" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B00BC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "allDevicesRemoved: %@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v10 = 0;
  v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = sub_100005C14("XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5470();
    }
  }

  else
  {
    v9 = *(a1 + 40);
    v11 = @"devices";
    v12 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v9 sendCloudKitMsg:@"AllDevicesRemovedWithRecords" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

id sub_1000B02BC(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 41);
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Force(%d) Account status changed: %d", v6, 0xEu);
  }

  return [*(a1 + 32) accountStatusAvailable:*(a1 + 41) force:*(a1 + 40)];
}

void sub_1000B0424(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "allDeviceSupportInformationRecordsRemovedWithRecords: %{private}@", buf, 0xCu);
  }

  v5 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v9 = @"records";
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendCloudKitMsg:@"AllDeviceSupportInformationRecordsRemoved" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B05F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "allMagicPairingRecordsRemovedWithRecords: %{private}@", buf, 0xCu);
  }

  v5 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v9 = @"records";
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendCloudKitMsg:@"AllMagicPairingRecordsRemoved" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B07C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deviceSupportInformationRecordsRemovedWithRecords: %{private}@", buf, 0xCu);
  }

  v5 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v9 = @"records";
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendCloudKitMsg:@"DeviceSupportInformationRecordsRemoved" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B0994(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deviceSupportInformationRecordsUpdatedWithRecords: %{private}@", buf, 0xCu);
  }

  v5 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v9 = @"records";
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendCloudKitMsg:@"DeviceSupportInformationRecordsUpdated" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B0B64(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138477827;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "magicPairingRecordsRemovedWithRecords: %{private}@", buf, 0xCu);
  }

  v5 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 32) requiringSecureCoding:1 error:0];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 40);
    v9 = @"records";
    v10 = v5;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [v7 sendCloudKitMsg:@"MagicPairingRecordsRemoved" args:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1000B0D34(uint64_t a1)
{
  v51 = objc_autoreleasePoolPush();
  v7 = [*(a1 + 32) manateeZoneUpgraded];
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v1 = &OBJC_IVAR___SRDiscoveredDevice__isSRCapable;
    v45 = +[MPCloudKit sharedInstance];
    v46 = [v45 pauseErrorReason];
    v3 = [v46 domain];
    if ([v3 isEqualToString:CKErrorDomain])
    {
      v4 = +[MPCloudKit sharedInstance];
      v2 = [v4 pauseErrorReason];
      if ([v2 code] == 26)
      {

        v9 = 1;
LABEL_43:

        goto LABEL_44;
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v50 = [*(a1 + 32) manateeZoneUpgraded];
  v48 = v2;
  if (v50)
  {
    v49 = v8;
    LODWORD(v10) = 0;
  }

  else
  {
    v1 = &OBJC_IVAR___SRDiscoveredDevice__isSRCapable;
    v47 = +[MPCloudKit sharedInstance];
    v42 = [v47 pauseErrorReason];
    v41 = [v42 domain];
    if ([v41 isEqualToString:CKErrorDomain])
    {
      v1 = +[MPCloudKit sharedInstance];
      v5 = [v1 pauseErrorReason];
      if ([v5 code] == 11)
      {

        v9 = 1;
        if ((v8 & 1) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      v49 = v8;
      LODWORD(v10) = 1;
    }

    else
    {
      v49 = v8;
      LODWORD(v10) = 0;
    }
  }

  v11 = [*(a1 + 32) manateeZoneUpgraded];
  if (v11)
  {
    v12 = v10;
    v10 = v5;
    v13 = v1;
    v40 = +[MPCloudKit_Manatee sharedInstance];
    v39 = [v40 pauseErrorReason];
    v38 = [v39 domain];
    if ([v38 isEqualToString:CKErrorDomain])
    {
      v43 = v4;
      v14 = +[MPCloudKit_Manatee sharedInstance];
      v15 = [v14 pauseErrorReason];
      if ([v15 code] == 11)
      {

        v9 = 1;
        v1 = v13;
        v5 = v10;
        v4 = v43;
        if ((v12 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_36:

        goto LABEL_37;
      }

      v32 = v15;
      v33 = v14;
      v1 = v13;
      if (([*(a1 + 32) manateeZoneUpgraded] & 1) == 0)
      {

        v9 = 0;
        v5 = v10;
        LOBYTE(v10) = v12;
        v4 = v43;
        goto LABEL_35;
      }

      v5 = v10;
      LODWORD(v10) = v12;
      v16 = 1;
      v4 = v43;
      goto LABEL_22;
    }

    v5 = v10;
    LODWORD(v10) = v12;
  }

  v16 = 0;
  v9 = 0;
  if (([*(a1 + 32) manateeZoneUpgraded] & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  v35 = v1;
  v36 = v3;
  v44 = v4;
  v37 = v7;
  v17 = +[MPCloudKit_Manatee sharedInstance];
  v18 = [v17 pauseErrorReason];
  v19 = [v18 domain];
  if (![v19 isEqualToString:CKErrorDomain])
  {

    v9 = 0;
    if (!v16)
    {
      goto LABEL_24;
    }

LABEL_28:

    v1 = v35;
    v3 = v36;
    v4 = v44;
    if (v11)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  +[MPCloudKit_Manatee sharedInstance];
  v34 = v16;
  v21 = v20 = v5;
  v22 = [v21 pauseErrorReason];
  v9 = [v22 code] == 26;

  v5 = v20;
  v7 = v37;
  if (v34)
  {
    goto LABEL_28;
  }

LABEL_24:
  v1 = v35;
  v3 = v36;
  v4 = v44;
LABEL_25:
  if (v11)
  {
LABEL_35:

    if ((v10 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_29:
  if (v10)
  {
    goto LABEL_36;
  }

LABEL_37:
  if ((v50 & 1) == 0)
  {

    if ((v49 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (v49)
  {
LABEL_41:
  }

LABEL_42:
  if ((v7 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_44:
  v23 = [*(a1 + 40) count];
  v24 = sub_100005C14("MagicPairing");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (!v23 && v9)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Inform bluetoothd again no data on cloud", buf, 2u);
    }

    *buf = 0;
    v26 = +[CloudXPCService sharedInstance];
    v27 = [NSData dataWithBytes:buf length:2];
    v28 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v27, @"kDeviceInfoBlob", 0];
    [v26 sendCloudKitMsg:@"DeviceInfoAvailable" args:v28];

    goto LABEL_53;
  }

  if (v25)
  {
    v29 = *(a1 + 40);
    *buf = 138477827;
    v55 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "magicPairingRecordsUpdatedWithRecords: %{private}@", buf, 0xCu);
  }

  v30 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:1 error:0];
  v26 = v30;
  if (v30)
  {
    v31 = *(a1 + 32);
    v52 = @"records";
    v53 = v30;
    v27 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    [v31 sendCloudKitMsg:@"MagicPairingRecordsUpdated" args:v27];
LABEL_53:
  }

  objc_autoreleasePoolPop(v51);
}

void sub_1000B13C8(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Inform bluetoothd with cloud data: %@", buf, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = +[CloudXPCService sharedInstance];
    v5 = [NSMutableDictionary dictionaryWithObjectsAndKeys:*(a1 + 32), @"kDeviceInfoBlob", 0];
    [v4 sendCloudKitMsg:@"DeviceInfoAvailable" args:v5];
  }
}

void sub_1000B1550(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 41);
    *buf = 67109376;
    LODWORD(v27[0]) = v3;
    WORD2(v27[0]) = 1024;
    *(v27 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Account status changed: %d, Forced: %d", buf, 0xEu);
  }

  v5 = [*(a1 + 32) deviceManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000B1888;
  v20[3] = &unk_1002BA7A0;
  v21 = *(a1 + 40);
  [v5 fetchAccountMagicKeysBlobWithCompletion:v20];

  v6 = [*(a1 + 32) accountAvailable];
  v7 = v6;
  v8 = *(a1 + 40);
  if ((*(a1 + 41) & 1) != 0 || v8 != v6)
  {
    [*(a1 + 32) setAccountAvailable:v8 & 1];
    v9 = [*(a1 + 32) deviceManager];
    v10 = [v9 cloudAccountInfo];

    if (v10)
    {
      v11 = sub_100005C14("XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v27[0] = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cloud Account Info: %{private}@", buf, 0xCu);
      }

      v12 = *(a1 + 32);
      v24[0] = @"kSignInStatus";
      v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 accountAvailable]);
      v24[1] = @"kSignInAppleID";
      v25[0] = v13;
      v14 = [v10 loginID];
      v15 = v14;
      v16 = &stru_1002C1358;
      if (v14)
      {
        v16 = v14;
      }

      v25[1] = v16;
      v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      [v12 sendCloudKitMsg:@"SignInStatusChanged" args:v17];
    }

    else
    {
      v18 = *(a1 + 32);
      v22 = @"kSignInStatus";
      v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 accountAvailable]);
      v23 = v13;
      v15 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v18 sendCloudKitMsg:@"SignInStatusChanged" args:v15];
    }

    if (*(a1 + 40) != v7 && *(a1 + 40))
    {
      if ([*(a1 + 32) manateeZoneUpgraded])
      {
        v19 = +[MPCloudKit sharedInstance];
        [v19 markLegacyNonManateeContainerMigrated];
      }
    }
  }
}

void sub_1000B1888(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3 && *(a1 + 32) == 1)
  {
    dispatch_async(&_dispatch_main_q, &stru_1002BA780);
    v3 = 0;
  }
}

void sub_1000B18F0(id a1)
{
  v1 = +[MPCloudKit sharedInstance];
  [v1 fetchKeyBlob:0];
}

void sub_1000B19D4(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "hmDeviceCloudRecordsRemovedWithRecords: %@", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) hmDeviceCloudRecordInfo];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = +[BTUserCloudServicesDaemon sharedBTServicesDaemon];
  [v11 reportHMDeviceCloudRecordInfosRemoved:v4];
}

void sub_1000B1C0C(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "hmDeviceCloudRecordsUpdatedWithRecords: %@", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) hmDeviceCloudRecordInfo];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = +[BTUserCloudServicesDaemon sharedBTServicesDaemon];
  [v11 reportHMDeviceCloudRecordInfosUpdated:v4];
}

void sub_1000B3950(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v9;
  if (v9 && (v7 = [v9 accountStatus] == 1, v6 = v9, v7))
  {
    v8 = 1;
  }

  else
  {
    if ([v6 accountStatus] == 4)
    {
      goto LABEL_8;
    }

    v8 = 0;
  }

  [*(a1 + 32) accountStatusAvailable:v8 force:1];
LABEL_8:
  [*(a1 + 32) endTransaction:@"SignInStatusChanged"];
}

void sub_1000B39F4(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v12;
  if (v12 && (v7 = [v12 accountStatus] == 1, v6 = v12, v7))
  {
    v8 = *(a1 + 32);
    v9 = [v12 supportsDeviceToDeviceEncryption];
    v10 = v8;
    v11 = 1;
  }

  else
  {
    if ([v6 accountStatus] == 4)
    {
      goto LABEL_8;
    }

    v10 = *(a1 + 32);
    v11 = 0;
    v9 = 1;
  }

  [v10 accountStatusAvailable:v11 force:v9];
LABEL_8:
  [*(a1 + 32) endTransaction:@"SignInStatusChanged"];
}

void sub_1000B3AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3B4C;
  v6[3] = &unk_1002B6D18;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1000B3B4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 length] == 33)
    {
      v3 = *(a1 + 40);
      v4 = [NSMutableDictionary dictionaryWithObjectsAndKeys:*(a1 + 32), @"kMasterKeyBlob", 0];
      [v3 sendCloudKitMsg:@"MasterKeysAvailable" args:v4];
    }
  }

  else
  {
    v5 = [*(a1 + 40) manateeZoneUpgraded];
    v6 = sub_100005C14("XPC");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee getMasterKey", buf, 2u);
      }

      v8 = MPCloudKit_Manatee;
    }

    else
    {
      if (v7)
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "getMasterKey", v12, 2u);
      }

      v8 = MPCloudKit;
    }

    v9 = [(__objc2_class *)v8 sharedInstance];
    [v9 fetchKeyBlob:0];
  }

  v10 = [*(a1 + 40) deviceManager];
  [v10 fetchCached];
}

void sub_1000B3CA0(void *a1, void *a2)
{
  original = a1;
  v3 = a2;
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    if (v3)
    {
      v5 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(reply, "kMsgArgs", v5);
    }

    v6 = xpc_dictionary_get_remote_connection(original);
    xpc_connection_send_message(v6, reply);
  }
}

void sub_1000B3D50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = sub_100005C14("XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001F5728();
    }

    v5 = *(a1 + 32);
    v8 = @"error";
    v6 = [v3 localizedDescription];
    v9 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    sub_1000B3CA0(v5, v7);
  }

  else
  {
    sub_1000B3CA0(*(a1 + 32), &off_1002CBEC8);
  }
}

void sub_1000B3E5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B3F18;
  v6[3] = &unk_1002B6D18;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000B3F18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v5[0] = @"status";
    v5[1] = @"devices";
    v6[0] = &off_1002CB8A0;
    v6[1] = v1;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
    sub_1000B3CA0(v2, v3);
  }

  else
  {
    v4 = *(a1 + 40);

    sub_1000B3CA0(v4, &off_1002CBEF0);
  }
}

void sub_1000B4004(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B40C0;
  v6[3] = &unk_1002B6D18;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000B40C0(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Add nickname Error? - %@", &v5, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = &off_1002CBF18;
  }

  else
  {
    v4 = &off_1002CBF40;
  }

  sub_1000B3CA0(*(a1 + 40), v4);
}

void sub_1000B4190(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B424C;
  v6[3] = &unk_1002B6D18;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000B424C(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Add nickname Error? - %@", &v5, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = &off_1002CBFB8;
  }

  else
  {
    v4 = &off_1002CBFE0;
  }

  sub_1000B3CA0(*(a1 + 40), v4);
}

void sub_1000B431C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B43D8;
  v6[3] = &unk_1002B6D18;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000B43D8(uint64_t a1)
{
  v2 = sub_100005C14("XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Reset Cached Data, error? - %@", &v5, 0xCu);
  }

  if (*(a1 + 32))
  {
    v4 = &off_1002CC058;
  }

  else
  {
    v4 = &off_1002CC080;
  }

  sub_1000B3CA0(*(a1 + 40), v4);
}

void sub_1000B44A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B4564;
  v6[3] = &unk_1002B6D18;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000B4564(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v15[0] = @"bluetoothAddress";
    v3 = [v2 bluetoothAddress];
    v15[1] = @"nickname";
    v16[0] = v3;
    v4 = [*(a1 + 32) nickname];
    v16[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = 0;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:0 error:&v12];
    v7 = v12;

    v8 = *(a1 + 40);
    if (!v6 || v7)
    {
      sub_1000B3CA0(v8, &__NSDictionary0__struct);
    }

    else
    {
      v9 = +[_TtC15audioaccessoryd12XPCArguments CloudDevice];
      v13 = v9;
      v14 = v6;
      v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      sub_1000B3CA0(v8, v10);
    }
  }

  else
  {
    v11 = *(a1 + 40);

    sub_1000B3CA0(v11, &__NSDictionary0__struct);
  }
}

void sub_1000B4820(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionIdentifierForActionIdentifier:*(a1 + 40)];
  v3 = [*(a1 + 32) activeTransactions];
  v4 = [v3 objectForKey:v2];

  v5 = sub_100005C14("TXN");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Already holding xpc transaction: %@", &v10, 0xCu);
    }
  }

  else
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Beginning xpc transaction: %@", &v10, 0xCu);
    }

    v7 = [*(a1 + 32) activeTransactions];
    [v2 UTF8String];
    v8 = os_transaction_create();
    [v7 setObject:v8 forKey:v2];

    v5 = sub_100005C14("TXN");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) activeTransactions];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Active transactions: %@", &v10, 0xCu);
    }
  }
}

void sub_1000B4AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionIdentifierForActionIdentifier:*(a1 + 40)];
  v3 = sub_100005C14("TXN");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending xpc transaction: %@", &v9, 0xCu);
  }

  v4 = [*(a1 + 32) activeTransactions];
  v5 = [v4 objectForKey:v2];

  v6 = [*(a1 + 32) activeTransactions];
  [v6 removeObjectForKey:v2];

  v7 = sub_100005C14("TXN");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) activeTransactions];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Active transactions: %@", &v9, 0xCu);
  }
}

void sub_1000B4E60(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAGestureControl);
    v2 = qword_1002FA1A0;
    qword_1002FA1A0 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_1000B503C(uint64_t a1)
{
  [*(a1 + 32) _aaControllerEnsureStopped];
  result = _os_feature_enabled_impl();
  if (result)
  {
    [*(a1 + 32) _cancelCameraControlHIDService];
    v3 = *(a1 + 32);

    return [v3 _connectedDeviceDiscoveryEnsureStopped];
  }

  return result;
}

void sub_1000B5218(id a1)
{
  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F5A64();
  }
}

void sub_1000B5264(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    v6 = v8;
    if (v8)
    {
      if (dword_1002F7008 <= 30)
      {
        if (dword_1002F7008 != -1 || (v7 = _LogCategory_Initialize(), v6 = v8, v7))
        {
          sub_1001F5A80();
          v6 = v8;
        }
      }

      [*(a1 + 40) _rawGestureMessageReceived:v5 fromDeviceIdentifier:v6];
    }

    else
    {
      sub_1001F5AC0(dword_1002F7008 < 31, dword_1002F7008);
    }
  }
}

uint64_t sub_1000B532C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v8 = v3;
      if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F5B14();
      }

      [*(a1 + 32) invalidate];
      v5 = *(a1 + 40);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7008 <= 30)
    {
      v8 = 0;
      if (dword_1002F7008 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
      {
        v3 = sub_1001F5B54();
LABEL_7:
        v4 = v8;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000B5A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001F5840;
  v4[3] = &unk_1002B82D0;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

void sub_1000B5D38(id a1)
{
  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F5ECC();
  }
}

void sub_1000B5D84(id a1)
{
  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F5EE8();
  }
}

void sub_1000B5DDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1002F7008 <= 30)
  {
    if (dword_1002F7008 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1001F5F04();
      v3 = v5;
    }
  }

  [*(a1 + 32) _connectedDeviceLost:v3];
}

void sub_1000B5E6C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5F44();
    }

    [*(*(a1 + 32) + 40) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F5F84(a1);
  }
}

uint64_t sub_1000B6334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F7008 <= 90)
    {
      v6 = v3;
      if (dword_1002F7008 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001F6138(a1);
        v4 = v6;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

id sub_1000B66C4(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) setDispatchQueue:*(*(a1 + 40) + 56)];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B67C4;
  v5[3] = &unk_1002B6880;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  [v2 setCancelHandler:v5];
  [*(a1 + 32) activate];
  result = [*(a1 + 32) serviceID];
  if (dword_1002F7008 <= 30)
  {
    if (dword_1002F7008 != -1 || (result = _LogCategory_Initialize(), result))
    {
      v4 = *(a1 + 32);
      return LogPrintF();
    }
  }

  return result;
}

void sub_1000B67C4(uint64_t a1)
{
  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F61C0();
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

void sub_1000B6B08(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1002F7008 <= 90)
    {
      v4 = v2;
      if (dword_1002F7008 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = sub_1001F62C8();
LABEL_13:
        v3 = v4;
      }
    }
  }

  else if (dword_1002F7008 <= 30)
  {
    v4 = 0;
    if (dword_1002F7008 != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = sub_1001F6308();
      goto LABEL_13;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000B6BB8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    if (dword_1002F7008 <= 90)
    {
      if (dword_1002F7008 != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        sub_1001F6324();
        v3 = v8;
      }
    }

    v5 = [(NSError *)v3 domain];
    v6 = v5;
    if (v5 == _LTTranslationErrorDomain)
    {
      v7 = [(NSError *)v8 code];

      if (v7 == 30)
      {
        v2 = AudioServicesPlaySystemSoundWithOptions();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v3 = v8;
    if (dword_1002F7008 > 90)
    {
      goto LABEL_13;
    }

    if (dword_1002F7008 == -1)
    {
      v2 = _LogCategory_Initialize();
      v3 = v8;
      if (!v2)
      {
        goto LABEL_13;
      }
    }

    v2 = sub_1001F6364();
LABEL_9:
    v3 = v8;
  }

LABEL_13:

  _objc_release_x1(v2, v3);
}

void sub_1000B7144(id a1)
{
  v1 = objc_alloc_init(MPCloudKit_Manatee);
  v2 = qword_1002FA1B8;
  qword_1002FA1B8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000B7458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B7474(uint64_t a1)
{
  v2 = +[BTSystemConfiguration isBuddyComplete];
  WeakRetained = sub_100005C14("MagicPairing");
  v4 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Manatee: Buddy State Done", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained buddySetupDone];
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Manatee: Buddy State Update, Not Done", v5, 2u);
  }
}

uint64_t sub_1000B76F0(uint64_t a1)
{
  out_token = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B777C;
  v2[3] = &unk_1002B9C10;
  v3 = 0;
  v2[4] = *(a1 + 32);
  return notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, &_dispatch_main_q, v2);
}

id sub_1000B777C(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Manatee: device unlocked after boot ", v4, 2u);
  }

  notify_cancel(*(a1 + 40));
  return [*(a1 + 32) initializeCloudKit];
}

void sub_1000B789C(id a1, int64_t a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134218242;
    v10 = a2;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: forceAccountStatus accountStatusWithCompletionHandler accountStatus %ld error %@", &v9, 0x16u);
  }

  if (!v4)
  {
    if (a2 == 1)
    {
      v7 = +[CloudXPCService sharedInstance];
      v6 = v7;
      v8 = 1;
    }

    else
    {
      if (a2 == 4)
      {
        v6 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v9) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: forceAccountStatus Account Available but Not Ready, Try again in sometime...", &v9, 2u);
        }

        goto LABEL_11;
      }

      v7 = +[CloudXPCService sharedInstance];
      v6 = v7;
      v8 = 0;
    }

    [v7 accountStatusAvailable:v8 force:1];
LABEL_11:
  }
}

uint64_t sub_1000B7E10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000B7F30(id a1, CKAccountInfo *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 && [(CKAccountInfo *)v4 accountStatus]== 1 && [(CKAccountInfo *)v4 supportsDeviceToDeviceEncryption])
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: Account manateeZoneAvailable, wait for cloud activity to settle", v8, 2u);
    }

    v7 = dispatch_time(0, 15000000000);
    dispatch_after(v7, &_dispatch_main_q, &stru_1002BAAC0);
  }
}

void sub_1000B800C(id a1)
{
  v1 = +[CBIDSManager sharedInstance];
  v2 = [v1 shouldUpgradeToManatee];

  if (v2)
  {
    v3 = +[MPCloudKit sharedInstance];
    [v3 upgradeLegacyNonManateeContainerToManatee];
  }
}

void sub_1000B843C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B8460(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v23 = a2;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee accountStatusWithCompletionHandler accountStatus %ld error %@", buf, 0x16u);
    }

    if (!v5)
    {
      if (a2 == 1)
      {
        if (([WeakRetained isAccountActive] & 1) == 0)
        {
          [WeakRetained setupSubscriptions];
        }

        [WeakRetained setIsAccountActive:1];
        v9 = dispatch_time(0, 5000000000);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000B88C0;
        block[3] = &unk_1002B6880;
        block[4] = WeakRetained;
        dispatch_after(v9, &_dispatch_main_q, block);
        v10 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [WeakRetained isAccountActive];
          *buf = 134218240;
          v23 = 1;
          v24 = 1024;
          LODWORD(v25) = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee accountStatusDidChange Accounts available accountStatus %ld self.isAccountActive %d \n", buf, 0x12u);
        }
      }

      else if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        [WeakRetained setIsAccountActive:0];
        [WeakRetained setMasterBlob:0];
        [WeakRetained setShouldPauseFetch:0];
        [WeakRetained setPauseErrorReason:0];
        [WeakRetained setIsFetchInProgress:0];
        [WeakRetained setIsFetchMasterKeyInProgress:0];
        v12 = objc_loadWeakRetained((a1 + 40));
        v13 = [v12 reinitAfterBuddy];

        v14 = sub_100005C14("MagicPairing");
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not sending accounts status, since we are still in buddy. ", buf, 2u);
          }
        }

        else
        {
          if (v15)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Manatee Sending accounts status, as signed out. ", buf, 2u);
          }

          v16 = +[CloudXPCService sharedInstance];
          [v16 accountStatusAvailable:objc_msgSend(*(a1 + 32) force:{"isAccountActive"), 0}];

          v17 = [WeakRetained readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

          if (v17)
          {
            [WeakRetained removeuserPreference:@"MagicCloudPairingManateeUpgradedAccount" sync:1];
            v18 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Manatee delete kMagicCloudPairingManateeUpgraded key", buf, 2u);
            }
          }

          [*(a1 + 32) removeuserPreference:@"MagicCloudPairingMasterSubscriptionManateeID" sync:1];
          [*(a1 + 32) removeuserPreference:@"MagicCloudPairingAccessorySubscriptionManateeID" sync:1];
          [*(a1 + 32) removeuserPreference:@"MagicPairingMasterKeySubscriptionManateeDisabled" sync:1];
        }

        v19 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [WeakRetained isAccountActive];
          *buf = 134218240;
          v23 = a2;
          v24 = 1024;
          LODWORD(v25) = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "accountStatusDidChange Account unavailable accountStatus %ld self.isAccountActive %d \n", buf, 0x12u);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6770();
    }
  }
}

void sub_1000B88C0(uint64_t a1)
{
  v2 = +[CloudXPCService sharedInstance];
  [v2 accountStatusAvailable:objc_msgSend(*(a1 + 32) force:{"isAccountActive"), 0}];
}

id sub_1000B8BC0(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  [*(a1 + 32) setPauseErrorReason:0];
  v2 = *(a1 + 32);

  return [v2 fetchAccessoryKeyBlob:0];
}

void sub_1000B8C84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 accountStatus] == 1 && objc_msgSend(v5, "supportsDeviceToDeviceEncryption"))
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000B8D80;
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
        sub_1001F67AC();
      }
    }
  }
}

id sub_1000B8D80(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob Account manateeZoneAvailable ", v4, 2u);
  }

  return [*(a1 + 32) _fetchKeyBlob:*(a1 + 40)];
}

void sub_1000B9294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B92C0(uint64_t a1, void *a2, void *a3)
{
  v64 = a2;
  v5 = a3;
  v6 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v64 recordID];
    v8 = [v7 zoneID];
    *buf = 138412802;
    v76 = v5;
    v77 = 2112;
    v78 = v8;
    v79 = 2112;
    v80 = v64;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob completion error %@ recordZoneID %@, record: %@", buf, 0x20u);
  }

  p_info = &OBJC_METACLASS___BTStateWatcher.info;
  if (!v5)
  {
    v14 = [v64 recordID];
    v15 = [v14 zoneID];
    v16 = [v15 zoneName];
    v17 = [*(a1 + 32) recordZoneBlob];
    v18 = [v17 zoneID];
    v19 = [v18 zoneName];
    v20 = [v16 isEqualToString:v19];

    p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = [v64 encryptedValues];
    WeakRetained = [v21 objectForKey:@"EncryptedMasterKeyBlob"];

    v22 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob record %@", buf, 0xCu);
    }

    if ([WeakRetained length] > 0x20)
    {
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1000B9CC4;
      v65[3] = &unk_1002B6CF0;
      v35 = WeakRetained;
      v36 = *(a1 + 32);
      v66 = v35;
      v67 = v36;
      v68 = v64;
      dispatch_async(&_dispatch_main_q, v65);
    }

    else
    {
      v23 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob NO record", buf, 2u);
      }

      dispatch_async(&_dispatch_main_q, &stru_1002BAB30);
    }

    goto LABEL_9;
  }

  if ([v5 code] == 26 || objc_msgSend(v5, "code") == 11)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob CKErrorZoneNotFound or Record does not exist", buf, 2u);
    }

    buf[0] = 0;
    WeakRetained = +[CloudXPCService sharedInstance];
    v12 = [NSData dataWithBytes:buf length:1];
    v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, @"kMasterKeyBlob", 0];
    [WeakRetained sendCloudKitMsg:@"MasterKeysNotAvailable" args:v13];

    goto LABEL_9;
  }

  if ([v5 code] == 6 || objc_msgSend(v5, "code") == 7)
  {
    v24 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v76 = v5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob unavailable service: %@", buf, 0xCu);
    }

    v25 = [v5 userInfo];
    v26 = [v25 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v26)
    {
      v27 = [v5 userInfo];
      v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v28 doubleValue];
      v30 = v29;

      v31 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v76 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob retry after %lu", buf, 0xCu);
      }

      v32 = dispatch_time(0, (v30 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B9C0C;
      block[3] = &unk_1002B82D0;
      v33 = *(a1 + 48);
      block[4] = *(a1 + 32);
      block[5] = v33;
      dispatch_after(v32, &_dispatch_main_q, block);
    }
  }

  else
  {
    v37 = [v5 domain];
    v38 = CKErrorDomain;
    if ([v37 isEqualToString:CKErrorDomain])
    {
      v39 = [v5 code];

      if (v39 == 112)
      {
        v40 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob lost access to manatee data. Reset and recreate zone.", buf, 2u);
        }

        v41 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob. Reset and recreate zone DONE!", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained resetCloudContainerManateeIdentityLost];
        goto LABEL_9;
      }
    }

    else
    {
    }

    WeakRetained = [v5 domain];
    if (([WeakRetained isEqualToString:CKErrorDomain] & 1) == 0)
    {
LABEL_9:

      goto LABEL_25;
    }

    v42 = [v5 userInfo];
    v43 = [v42 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
    if (v43)
    {
      v63 = a1;
      v44 = [v5 userInfo];
      v45 = [v44 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v69 objects:v74 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v70;
        v50 = &_sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF_ptr;
        while (2)
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v70 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v52 = [v46 objectForKey:*(*(&v69 + 1) + 8 * i)];
            v53 = v50[302];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = [v52 domain];
              if ([v54 isEqualToString:v38])
              {
                v55 = v50;
                v56 = v38;
                v57 = [v52 code];

                v58 = v57 == 112;
                v38 = v56;
                v50 = v55;
                if (v58)
                {
                  v59 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v76 = v52;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                  }

                  v61 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob. Reset and recreate zone DONE!", buf, 2u);
                  }

                  v62 = objc_loadWeakRetained((v63 + 40));
                  [v62 resetCloudContainerManateeIdentityLost];

                  goto LABEL_56;
                }
              }

              else
              {
              }
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v69 objects:v74 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }
      }

LABEL_56:

      a1 = v63;
      p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
    }
  }

LABEL_25:
  [*(a1 + 32) setIsFetchMasterKeyInProgress:0];
  v34 = [p_info + 21 sharedInstance];
  [v34 endTransaction:@"ManateefetchKeyBlob"];
}

void sub_1000B9C1C(id a1)
{
  v4 = 0;
  v1 = +[CloudXPCService sharedInstance];
  v2 = [NSData dataWithBytes:&v4 length:1];
  v3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v2, @"kMasterKeyBlob", 0];
  [v1 sendCloudKitMsg:@"MasterKeysNotAvailable" args:v3];
}

void sub_1000B9CC4(uint64_t a1)
{
  if ([*(a1 + 32) length] == 33)
  {
    v2 = [*(a1 + 40) masterBlob];

    if (!v2)
    {
      v3 = [*(a1 + 40) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

      if (!v3)
      {
        [*(a1 + 40) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
        v4 = +[MPCloudKit sharedInstance];
        [v4 markLegacyNonManateeContainerMigrated];
      }

      v5 = [*(a1 + 32) mutableCopy];
      [*(a1 + 40) setMasterBlob:v5];

      v6 = +[CloudXPCService sharedInstance];
      v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:*(a1 + 32), @"kMasterKeyBlob", 0];
      [v6 sendCloudKitMsg:@"MasterKeysAvailable" args:v7];

      v8 = +[CloudXPCService sharedInstance];
      v9 = [v8 deviceManager];
      [v9 addAccountMagicKeysWithCloudRecord:*(a1 + 48)];

      v10 = *(a1 + 40);

      [v10 fetchAccessoryKeyBlob:0];
    }
  }
}