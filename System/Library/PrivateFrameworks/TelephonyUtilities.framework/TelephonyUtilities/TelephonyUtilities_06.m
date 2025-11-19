id sub_10014863C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setWiFiCallingEnabled: %d senderIdentityUUID: %@", v6, 0x12u);
  }

  return [*(a1 + 40) _setWiFiCallingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 32)];
}

id sub_1001487F0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setWiFiCallingRoamingEnabled: %d senderIdentityUUID: %@", v6, 0x12u);
  }

  return [*(a1 + 40) _setWiFiCallingRoamingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 32)];
}

id sub_1001489A4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setVoLTECallingEnabled: %d senderIdentityUUID: %@", v6, 0x12u);
  }

  return [*(a1 + 40) _setVoLTECallingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 32)];
}

id sub_100148B58(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setThumperCallingEnabled: %d senderIdentityUUID: %@", v6, 0x12u);
  }

  return [*(a1 + 40) _setThumperCallingEnabled:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 32)];
}

id sub_100148D30(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = 67109634;
    v7[1] = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setThumperCallingAllowed: %d secondaryDeviceID: %@ senderIdentityUUID: %@", v7, 0x1Cu);
  }

  return [*(a1 + 48) _setThumperCallingAllowed:*(a1 + 56) onSecondaryDeviceWithID:*(a1 + 32) forSenderIdentityWithUUID:*(a1 + 40)];
}

id sub_100148EF0(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - setThumperCallingAllowedOnDefaultPairedDevice: %d senderIdentityUUID: %@", v6, 0x12u);
  }

  return [*(a1 + 40) _setThumperCallingAllowedOnDefaultPairedDevice:*(a1 + 48) forSenderIdentityWithUUID:*(a1 + 32)];
}

void sub_100149088(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - endEmergencyCallbackMode", v4, 2u);
  }

  v3 = [*(a1 + 32) telephonyCallCapabilities];
  [v3 endEmergencyCallbackMode];
}

void sub_1001491EC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - invalidateAndRefreshWiFiCallingProvisioningURLForSenderIdentityUUID: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) telephonyCallCapabilities];
  [v4 invalidateAndRefreshWiFiCallingCapabilitiesForSenderIdentityWithUUID:*(a1 + 32)];
}

void sub_100149390(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - invalidateAndRefreshThumperCallingProvisioningURLForSenderIdentityUUID: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) telephonyCallCapabilities];
  [v4 invalidateAndRefreshThumperCallingCapabilitiesForSenderIdentityWithUUID:*(a1 + 32)];
}

void sub_100149510(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - requestPinFromPrimaryDevice", &v14, 2u);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 _primaryThumperAccountRequiringAvailableDeviceSlots];
  v6 = sub_100004778();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using the following account for the PIN request: %@", &v14, 0xCu);
    }

    v8 = [*v3 thumperService];
    v9 = [v5 primaryDeviceID];
    v10 = [v8 deviceWithUniqueID:v9];

    if (v10)
    {
      v11 = [*v3 thumperPinExchangeController];
      [v11 requestPinFromDevice:v10];
    }

    else
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1004762EC(v5, v3, v11);
      }
    }
  }

  else
  {
    if (v7)
    {
      v12 = [*v3 telephonyCallCapabilities];
      v13 = [v12 secondaryThumperAccounts];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] No primary Thumper account found for PIN request. This should only happen because an account exists but has no empty device slots. All accounts: %@", &v14, 0xCu);
    }

    v10 = [*v3 thumperPinExchangeController];
    [v10 displaySlotsFullNotification];
  }
}

void sub_1001497E4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TUCallCapabilitiesXPCServer - cancelPinRequestFromPrimaryDevice", v4, 2u);
  }

  v3 = [*(a1 + 32) thumperPinExchangeController];
  [v3 cancelPinRequests];
}

void sub_10014991C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 addLocalClientObject:*(a1 + 40)];
}

void sub_100149A24(uint64_t a1)
{
  v2 = [*(a1 + 32) clientManager];
  [v2 removeLocalClientObject:*(a1 + 40)];
}

id sub_100149CB8(uint64_t a1)
{
  [*(a1 + 32) _updateHostingAndDisplayingSupport];
  v2 = *(a1 + 32);

  return [v2 _updateClientsWithState];
}

void sub_100149F74(uint64_t a1)
{
  v2 = [*(a1 + 32) _outgoingCallerID];
  if ([v2 length])
  {
    v18 = v2;
    v3 = [*(a1 + 32) state];
    v4 = [v3 senderIdentityCapabilitiesStateByUUID];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = v4;
    v5 = [v4 allValues];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 thumperCallingCapabilitiesState];
          v12 = [v11 accountID];

          if (v12)
          {
            v13 = [*(a1 + 32) telephonyCallCapabilities];
            v14 = [v13 secondaryThumperAccountForAccountID:v12];

            if (v14)
            {
              v15 = [v10 senderIdentityUUID];
              v16 = sub_100004778();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v24 = v15;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disabling Thumper for subscription with UUID %@", buf, 0xCu);
              }

              [*(a1 + 32) _setThumperCallingEnabled:0 forSenderIdentityWithUUID:v15];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

    v2 = v18;
  }

  [*(a1 + 32) _updateDynamicCapabilitiesAndUpdateClients];
}

void sub_10014A93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014A954(uint64_t a1)
{
  v5 = [*(a1 + 32) telephonyCallCapabilities];
  v2 = [v5 localThumperAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014AAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014AAD8(uint64_t a1)
{
  v5 = [*(a1 + 32) telephonyCallCapabilities];
  v2 = [v5 secondaryThumperAccounts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014AC84(uint64_t a1)
{
  v5 = [*(a1 + 32) telephonyCallCapabilities];
  v2 = [v5 secondaryThumperAccountForAccountID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10014AFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10014AFDC(uint64_t a1)
{
  v2 = [*(a1 + 32) telephonyCallCapabilities];
  v3 = [v2 senderIdentityCapabilitiesStateByUUID];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        v11 = [v10 thumperCallingCapabilitiesState];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_10014B1C8(uint64_t a1)
{
  [*(a1 + 32) _updateState];
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) state];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "updateState: capability state: %@", &v4, 0xCu);
  }
}

id sub_10014B650(uint64_t a1)
{
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableSupportsPrimaryCalling" forceDefault:@"forceSupportsPrimaryCalling"];
  byte_1006ACD68 = result;
  return result;
}

id sub_10014B744(uint64_t a1)
{
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableSupportsBasebandCalling" forceDefault:@"forceSupportsBasebandCalling"];
  byte_1006ACD78 = result;
  return result;
}

id sub_10014B858(uint64_t a1)
{
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableSupportsCellularData" forceDefault:@"forceSupportsCellularData"];
  byte_1006ACD88 = result;
  return result;
}

id sub_10014B924(uint64_t a1)
{
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableDisplayingTelephonyCallSupport" forceDefault:@"forceDisplayingTelephonyCallSupport"];
  byte_1006ACD98 = result;
  return result;
}

id sub_10014BA38(uint64_t a1)
{
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableDisplayingFaceTimeAudioCallSupport" forceDefault:@"forceDisplayingFaceTimeAudioCallSupport"];
  byte_1006ACDA8 = result;
  return result;
}

id sub_10014BB4C(uint64_t a1)
{
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableDisplayingFaceTimeVideoCallSupport" forceDefault:@"forceDisplayingFaceTimeVideoCallSupport"];
  byte_1006ACDB8 = result;
  return result;
}

id sub_10014C274(uint64_t a1)
{
  byte_1006ACDC8 = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableCanEnableWiFiCalling" forceDefault:@"forceCanEnableWiFiCalling"];
  byte_1006ACDC9 = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableCanEnableVoLTECalling" forceDefault:@"forceCanEnableVoLTECalling"];
  result = [*(a1 + 32) _defaultOverrideForDisableDefault:@"disableCanEnableThumperCalling" forceDefault:@"forceCanEnableThumperCalling"];
  byte_1006ACDCA = result;
  return result;
}

int64_t sub_10014DD10(id a1, TUCloudCallingDevice *a2, TUCloudCallingDevice *a3)
{
  v4 = a3;
  v5 = [(TUCloudCallingDevice *)a2 uniqueID];
  v6 = [(TUCloudCallingDevice *)v4 uniqueID];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10014EFAC(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004763B0(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Successfully set no handler for Default Calling category", v6, 2u);
  }
}

void sub_10014F040(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100004778();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100476428(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully set Default Calling app to %@", &v8, 0xCu);
  }
}

void sub_100150188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001501B4(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained queue];

    if (v11)
    {
      v12 = [v10 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001502D4;
      block[3] = &unk_10061C7D8;
      v18 = a3;
      v14 = v8;
      v15 = v7;
      v16 = v10;
      v17 = *(a1 + 32);
      dispatch_async(v12, block);
    }
  }
}

id sub_1001502D4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = 67109634;
    v7[1] = v3;
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Coordinated alert request came back with bestIsMe: %d info: %@ error: %@", v7, 0x1Cu);
  }

  if (*(a1 + 64) == 1)
  {
    [*(a1 + 48) setShouldSuppressRingtone:0];
  }

  [*(a1 + 56) invalidate];
  return [*(a1 + 56) setCompletionHandler:0];
}

id sub_100150904(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setTransitionStatus:", v1);
}

id sub_1001509DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setWantsHoldMusic:", v1);
}

id sub_100150AB4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setWasDialAssisted:", v1);
}

id sub_100150B8C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setScreeningAnnouncementHasFinished:", v1);
}

id sub_100150C64(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setDisconnectedReason:", v1);
}

id sub_100150D3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setFaceTimeIDStatus:", v1);
}

id sub_100150E10(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setSoundRegion:", v1);
}

id sub_100150F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setModel:", v1);
}

id sub_100150FDC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setAnsweringMachineStreamToken:", v1);
}

id sub_1001510B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setSupportsDTMFUpdates:", v1);
}

id sub_100151188(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = CSDCall;
  result = objc_msgSendSuper2(&v5, "setShouldSuppressRingtone:", v2);
  if ((*(a1 + 40) & 1) == 0)
  {
    result = [*(a1 + 32) hasEverUnsuppressedRingtone];
    if ((result & 1) == 0)
    {
      v4.receiver = *(a1 + 32);
      v4.super_class = CSDCall;
      return objc_msgSendSuper2(&v4, "setHasEverUnsuppressedRingtone:", 1);
    }
  }

  return result;
}

id sub_1001512A0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setEndpointOnCurrentDevice:", v1);
}

id sub_1001513E0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setScreening:", v1);
}

id sub_1001514B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setReceptionistState:", v1);
}

id sub_1001515C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CSDCall;
  return objc_msgSendSuper2(&v3, "setLastReceptionistMessage:", v1);
}

void sub_100152148(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 216);
  *(v2 + 216) = 0;

  v4 = *(a1 + 40);
  v5 = (*(a1 + 32) + 192);

  objc_storeStrong(v5, v4);
}

void sub_100152C90(uint64_t a1)
{
  v2 = [TUDynamicCallDisplayContext alloc];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = [v4 queue];
  v6 = [v2 initWithDisplayContext:v3 call:v4 serialQueue:v5];
  [*(a1 + 32) setDynamicDisplayContext:v6];

  v7 = *(a1 + 40);
  v8 = (*(a1 + 32) + 64);

  objc_storeStrong(v8, v7);
}

void sub_100154400(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1006ACDD8;
  qword_1006ACDD8 = v1;
}

void sub_1001545CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1001545F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained aaDevicesDidChange];
}

void sub_100154634(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004765FC(v2, v3);
    }
  }
}

void sub_10015468C(uint64_t a1)
{
  [*(a1 + 32) _initializeAudioRouteCollections];
  [*(a1 + 32) _initializeAutomaticCarDNDStatusIfNecessary];
  [*(a1 + 32) _updatePickableRoutes];
  [*(a1 + 32) _updateCarPlayDeviceConnected];
  v11[0] = AVSystemController_PickableRoutesDidChangeNotification;
  v11[1] = AVSystemController_PreferredExternalRouteDidChangeNotification;
  v11[2] = AVSystemController_CarPlayIsConnectedDidChangeNotification;
  v2 = [NSArray arrayWithObjects:v11 count:3];
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 setAttribute:v2 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"pickableRoutesDidChangeNotification:" name:AVSystemController_PickableRoutesDidChangeNotification object:0];
  [v4 addObserver:*(a1 + 32) selector:"preferredExternalRouteDidChangeNotification:" name:AVSystemController_PreferredExternalRouteDidChangeNotification object:0];
  [v4 addObserver:*(a1 + 32) selector:"carPlayIsConnectedChanged:" name:AVSystemController_CarPlayIsConnectedDidChangeNotification object:0];
  if (qword_1006ACDF0 != -1)
  {
    sub_100476688();
  }

  if (qword_1006ACDE8)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    v6 = *(a1 + 32);
    v7 = qword_1006ACDE8;
    v8 = +[AVAudioSession sharedInstance];
    [v5 addObserver:v6 selector:"mediaServicesWereResetNotification:" name:v7 object:v8];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"AVAudioSessionMediaServicesWereResetNotification";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v9, 0xCu);
    }
  }
}

void sub_1001548CC(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACDE8, v2);
}

void sub_100154A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154AA8(uint64_t a1)
{
  v2 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = [v2 isAnyRouteAvailableWithUniqueIdentifier:*(a1 + 48)];
}

void sub_100154C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154C70(uint64_t a1)
{
  v5 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  v2 = [v5 preferredRoute];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100154D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154DB4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) isCarPlayDeviceConnected];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(a1 + 32) audioRouteCollections];
    v3 = [v2 allValues];

    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) isInEarAudioRouteAvailable])
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

void sub_100154FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100154FD0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001551D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001551F0(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24))
  {
    goto LABEL_4;
  }

  if ([*(a1 + 32) isCarPlayDeviceConnected])
  {
    v2 = *(*(a1 + 48) + 8);
LABEL_4:
    *(v2 + 24) = 1;
    goto LABEL_6;
  }

  v3 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v3 isInEarAudioRouteAvailable];

LABEL_6:
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    v5 = [*(a1 + 40) provider];
    *(*(*(a1 + 48) + 8) + 24) = [v5 isTinCanProvider] ^ 1;
  }

  else
  {
    *(v4 + 24) = 0;
  }
}

void sub_100155414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10015542C(uint64_t a1)
{
  v5 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  v2 = [v5 preferredAndActiveRoute];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100155580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100155598(uint64_t a1)
{
  v3 = [*(a1 + 32) _audioRouteCollectionForCall:*(a1 + 40)];
  if ([*(a1 + 32) isCarPlayDeviceConnected])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v3 isAnyRouteAvailableWithBluetoothEndpointType:2];
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
}

void sub_1001556D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001556EC(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAnyRouteAvailableWithBluetoothEndpointType:1])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001558D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1001558E8(uint64_t a1)
{
  result = [*(a1 + 32) isCarPlayDeviceConnected];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1001559DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001559F4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) audioRouteCollections];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isAnyRouteAvailableWithBluetoothEndpointType:2])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_100155BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100155BF0(uint64_t a1)
{
  result = [*(a1 + 32) _initializeAutomaticCarDNDStatusIfNecessary];
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 9);
  return result;
}

id sub_100155F38(uint64_t a1)
{
  [*(a1 + 32) _updatePickableRoutes];
  v2 = *(a1 + 32);

  return [v2 _postNotificationName:@"CSDRouteManagerPreferredRouteChangedNotification"];
}

id sub_1001560B8(uint64_t a1)
{
  [*(a1 + 32) _updateCarPlayDeviceConnected];
  v2 = *(a1 + 32);

  return [v2 _postNotificationName:@"CSDRouteManagerPreferredRouteChangedNotification"];
}

id sub_100156238(uint64_t a1)
{
  [*(a1 + 32) _updatePickableRoutes];
  [*(a1 + 32) _updateCarPlayDeviceConnected];
  v2 = *(a1 + 32);

  return [v2 _postNotificationName:@"CSDRouteManagerPreferredRouteChangedNotification"];
}

void sub_100156954(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACDF8, v2);
}

void sub_1001569A4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACE08, v2);
}

void sub_1001569F4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACE18, v2);
}

void sub_100156A44(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1006ACE28, v2);
}

void sub_100156D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100156D40(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100004778();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100476700(v5, v7);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received initial CarKit DND assertion: %d", v8, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100156E38(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100156EE4;
    v6[3] = &unk_100619EA8;
    v7 = a2;
    v6[4] = v4;
    dispatch_async(v5, v6);
  }
}

id sub_100156EE4(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating isCarModeActive to %d", v5, 8u);
  }

  return [*(a1 + 32) setCarModeActive:*(a1 + 40)];
}

id sub_1001576E8(CSDMessagingConversationMember *self, SEL a2)
{
  v7.receiver = self;
  v7.super_class = CSDMessagingConversationMember;
  v3 = [(CSDMessagingConversationMember *)&v7 description];
  v4 = [(CSDMessagingConversationMember *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

uint64_t sub_1001579E4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        LOBYTE(v42) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v29 = PBReaderReadString();
            v30 = 40;
LABEL_69:
            v38 = *(a1 + v30);
            *(a1 + v30) = v29;

            goto LABEL_85;
          }

          if (v13 == 4)
          {
            v14 = objc_alloc_init(CSDMessagingHandle);
            v15 = 32;
LABEL_32:
            objc_storeStrong((a1 + v15), v14);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_1000D1450(v14, a2))
            {
LABEL_87:

              return 0;
            }

LABEL_58:
            PBReaderRecallMark();

            goto LABEL_85;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 72) |= 4u;
            while (1)
            {
              LOBYTE(v42) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v42 & 0x7F) << v23;
              if ((v42 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_79:
            v39 = 68;
            goto LABEL_80;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(CSDMessagingHandle);
            v15 = 24;
            goto LABEL_32;
          }
        }
      }

      else if (v13 <= 6)
      {
        if (v13 == 5)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v42) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v42 & 0x7F) << v31;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v37 = 0;
              goto LABEL_84;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_84:
          *(a1 + 8) = v37;
          goto LABEL_85;
        }

        if (v13 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          *(a1 + 72) |= 2u;
          while (1)
          {
            LOBYTE(v42) = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v42 & 0x7F) << v16;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v11 = v17++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_75:
          v39 = 64;
LABEL_80:
          *(a1 + v39) = v22;
          goto LABEL_85;
        }
      }

      else
      {
        switch(v13)
        {
          case 7:
            v14 = objc_alloc_init(CSDMessagingVoucher);
            objc_storeStrong((a1 + 16), v14);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_1001A34C0(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_58;
          case 8:
            v29 = PBReaderReadString();
            v30 = 56;
            goto LABEL_69;
          case 9:
            v14 = objc_alloc_init(CSDMessagingConversationParticipantCluster);
            objc_storeStrong((a1 + 48), v14);
            v42 = 0;
            v43 = 0;
            if (!PBReaderPlaceMark() || !sub_10022A638(v14, a2))
            {
              goto LABEL_87;
            }

            goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_85:
      v40 = [a2 position];
    }

    while (v40 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100159BA8(uint64_t a1, void *a2)
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
      LOBYTE(v40) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v40 & 0x7F) << v5;
      if ((v40 & 0x80) == 0)
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
        *(a1 + 152) |= 2u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v40 & 0x7F) << v13;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_89:
            v37 = 144;
            goto LABEL_90;
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

        goto LABEL_89;
      case 2u:
        v34 = PBReaderReadString();
        v35 = 136;
        goto LABEL_77;
      case 3u:
        v34 = PBReaderReadString();
        v35 = 48;
        goto LABEL_77;
      case 4u:
        v34 = PBReaderReadString();
        v35 = 96;
        goto LABEL_77;
      case 5u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 152) |= 4u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v40 & 0x7F) << v27;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            LOBYTE(v33) = 0;
            goto LABEL_85;
          }
        }

        v33 = (v29 != 0) & ~[a2 hasError];
LABEL_85:
        *(a1 + 148) = v33;
        goto LABEL_91;
      case 6u:
        v26 = objc_alloc_init(CSDMessagingHandle);
        objc_storeStrong((a1 + 64), v26);
        goto LABEL_52;
      case 7u:
        v26 = objc_alloc_init(CSDMessagingConversationMember);
        objc_storeStrong((a1 + 88), v26);
        goto LABEL_63;
      case 8u:
        v26 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addRemoteMembers:v26];
        goto LABEL_63;
      case 9u:
        v26 = objc_alloc_init(CSDMessagingConversationParticipant);
        [a1 addActiveRemoteParticipants:v26];
        goto LABEL_69;
      case 0xAu:
        v26 = objc_alloc_init(CSDMessagingConversationActivitySession);
        [a1 addActivitySessions:v26];
        goto LABEL_73;
      case 0xBu:
        v26 = objc_alloc_init(CSDMessagingConversationLink);
        objc_storeStrong((a1 + 80), v26);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_100064394(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0xCu:
        v26 = objc_alloc_init(CSDMessagingConversationReport);
        objc_storeStrong((a1 + 120), v26);
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_10015C41C(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0xEu:
        v34 = PBReaderReadString();
        v35 = 40;
        goto LABEL_77;
      case 0xFu:
        v26 = objc_alloc_init(CSDMessagingHandle);
        [a1 addOtherInvitedHandles:v26];
LABEL_52:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_1000D1450(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0x10u:
        v26 = objc_alloc_init(CSDMessagingConversationMember);
        [a1 addLightweightMembers:v26];
LABEL_63:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_1001579E4(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0x11u:
        v26 = objc_alloc_init(CSDMessagingConversationParticipant);
        [a1 addActiveLightweightParticipants:v26];
LABEL_69:
        v40 = 0;
        v41 = 0;
        if (!PBReaderPlaceMark() || !sub_100072604(v26, a2))
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      case 0x12u:
        v34 = PBReaderReadString();
        v35 = 56;
LABEL_77:
        v36 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_91;
      case 0x13u:
        v26 = objc_alloc_init(CSDMessagingConversationActivitySession);
        objc_storeStrong((a1 + 128), v26);
LABEL_73:
        v40 = 0;
        v41 = 0;
        if (PBReaderPlaceMark() && sub_100138158(v26, a2))
        {
LABEL_75:
          PBReaderRecallMark();

LABEL_91:
          v38 = [a2 position];
          if (v38 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_93:

        return 0;
      case 0x14u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        *(a1 + 152) |= 1u;
        while (1)
        {
          LOBYTE(v40) = 0;
          v23 = [a2 position] + 1;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v22 |= (v40 & 0x7F) << v20;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v11 = v21++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v22;
        }

LABEL_83:
        v37 = 32;
LABEL_90:
        *(a1 + v37) = v19;
        goto LABEL_91;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_91;
    }
  }
}

uint64_t sub_10015C41C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
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
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = 24;
      }

      else
      {
        if (v13 == 2)
        {
          *(a1 + 32) |= 1u;
          v22 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v22;
          goto LABEL_30;
        }

        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_30;
        }

        v14 = PBReaderReadString();
        v15 = 16;
      }

      v18 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10015DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, id a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, id a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, id a63)
{
  objc_destroyWeak((v68 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak((v64 + 32));
  objc_destroyWeak((v63 + 32));
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a58);
  objc_destroyWeak(&a63);
  objc_destroyWeak((v69 - 200));
  objc_destroyWeak((v69 - 152));
  objc_destroyWeak((v69 - 128));
  _Unwind_Resume(a1);
}

BOOL sub_10015DB80(id a1)
{
  v1 = +[CSDCallCapabilities sharedInstance];
  v2 = [v1 callCapabilitiesState];
  v3 = [v2 relayCallingAvailability] == 2;

  return v3;
}

NSDate *__cdecl sub_10015DBDC(id a1)
{
  v1 = +[IDSCurrentServerTime sharedInstance];
  v2 = [v1 currentServerTimeDate];

  return v2;
}

void sub_10015DC30(uint64_t a1)
{
  v2 = [[CSDDeviceLockStateObserver alloc] initWithQueue:*(*(a1 + 32) + 264)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 160);
  *(v3 + 160) = v2;

  v5 = *(*(a1 + 32) + 160);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10015DD08;
  v6[3] = &unk_10061A740;
  objc_copyWeak(&v7, (a1 + 40));
  [v5 performBlockAfterFirstUnlock:v6];
  objc_destroyWeak(&v7);
}

void sub_10015DD08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device first unlock block invoked, attempting to retrieve active conversations", buf, 2u);
    }

    [WeakRetained retreiveActiveConversations];
    [WeakRetained removeNonIndefiniteLinks];
    v3 = WeakRetained[33];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015DE0C;
    block[3] = &unk_100619D38;
    v4 = WeakRetained;
    v6 = v4;
    dispatch_async(v3, block);
    [v4 setupPendingConversationCleanupTimer];
  }
}

void sub_10015DE0C(uint64_t a1)
{
  v1 = [*(a1 + 32) linkManager];
  [v1 validateAllLinks];
}

id sub_10015DE50(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, void *a8, __int16 a9, void *a10, char a11)
{
  v18 = a10;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v26 = [WeakRetained service];
  LOBYTE(v30) = a11;
  LOWORD(v29) = a9;
  v27 = [v26 createGroupSessionProviderWithGroupID:v24 participantDestinationIDs:v23 callerID:v22 account:v21 queue:v20 isOneToOneModeEnabled:a7 localMember:v19 avLess:v29 isScreenSharingRequest:v18 ABTestConfiguration:v30 isInitiator:?];

  return v27;
}

IMNickname *__cdecl sub_10015DF90(id a1)
{
  v1 = +[IMNicknameController sharedInstance];
  v2 = [v1 personalNickname];

  return v2;
}

CSDConversation *sub_10015DFE4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unsigned int a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, char a19, uint64_t a20, uint64_t a21, void *a22)
{
  v39 = a22;
  v41 = a18;
  v38 = a17;
  v22 = a16;
  v37 = a15;
  v34 = a14;
  v31 = a13;
  v30 = a12;
  v28 = a11;
  v55 = a10;
  v54 = a9;
  v53 = a8;
  v27 = a6;
  v51 = a5;
  v49 = a4;
  v47 = a3;
  v45 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v36 = [WeakRetained cpApplicationController];
  v33 = [WeakRetained sharePlaySystemStateObserver];
  v32 = +[CPApplicationPolicyManager sharedInstance];
  v24 = [CSDConversation alloc];
  v29 = [WeakRetained featureFlags];
  LOBYTE(v26) = a19;
  v43 = [(CSDConversation *)v24 initWithQueue:v45 UUID:v47 groupUUID:v49 groupSession:v51 messagesGroupUUID:v27 locallyCreated:a7 localMember:v53 initiator:v54 remoteMembers:v55 pendingMembers:v28 otherInvitedHandles:v30 lightweightMembers:v31 remotePushTokens:v34 activity:v37 link:v22 report:v41 fromStorage:v26 avMode:a20 presentationMode:a21 applicationController:v36 featureFlags:v29 systemStateObserver:v33 applicationPolicyManager:v32 screenSharingRequest:v38 testConfiguration:v39];

  return v43;
}

id sub_10015E2A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v68 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v22 = WeakRetained;
  if (WeakRetained)
  {
    v66 = v19;
    v23 = [WeakRetained featureFlags];
    v24 = [v23 groupFacetimeAsAServiceEnabled];

    if (v20 && v24)
    {
      v25 = +[CSDConversationProviderManager sharedInstance];
      v26 = [v25 serviceForProvider:v20];
    }

    else
    {
      v26 = [v22 service];
    }

    v62 = v18;
    v29 = [v18 mutableCopy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = objc_alloc_init(NSMutableDictionary);
    }

    v32 = v31;

    v33 = [v17 idsFromID];
    [v32 setObject:v33 forKeyedSubscript:IDSSendMessageOptionFromIDKey];

    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v74 = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "sendDataBlock options: %@", buf, 0xCu);
    }

    v35 = [v32 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];

    if (v35)
    {
      v67 = [v32 objectForKeyedSubscript:@"kCSDConversationGroupUUID"];
      [v32 removeObjectForKey:@"kCSDConversationGroupUUID"];
    }

    else
    {
      v36 = sub_100004778();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "invalid conversationGroupUUID", buf, 2u);
      }

      v67 = 0;
    }

    v63 = v17;
    v64 = v15;
    v69 = 0;
    v70 = 0;
    v61 = v26;
    v37 = v26;
    v28 = v68;
    v27 = [v37 sendData:v68 fromAccount:v15 toDestinations:v16 priority:300 options:v32 identifier:&v70 error:&v69];
    v38 = v70;
    v39 = v69;
    v40 = v39;
    v19 = v66;
    if (v27)
    {
      v59 = v39;
      v60 = v16;
      if (v66)
      {
        v41 = [v22 mutableSendDataCallbacksByRequestIdentifiers];
        v42 = [v66 copy];
        v43 = objc_retainBlock(v42);
        [v41 setObject:v43 forKey:v38];
      }

      v44 = sub_100004778();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v60 allObjects];
        v46 = TULoggableStringForHandles();
        *buf = 138412546;
        *v74 = v38;
        *&v74[8] = 2112;
        *&v74[10] = v46;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Sent message with identifier %@ to %@", buf, 0x16u);
      }

      v47 = [[CSDMessagingConversationMessage alloc] initWithData:v68];
      v48 = [v32 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];

      if (v48)
      {
        v49 = [v32 objectForKeyedSubscript:@"kCSDConversationIsLetMeInApproved"];
        v48 = [v49 BOOLValue];

        [v32 removeObjectForKey:@"kCSDConversationIsLetMeInApproved"];
      }

      if ([(CSDMessagingConversationMessage *)v47 enclosedEncryptedType]== 16 && v67)
      {
        v71[1] = @"kCSDConversationIsLetMeInApproved";
        v72[0] = v67;
        v71[0] = @"kCSDConversationGroupUUID";
        v50 = [NSNumber numberWithBool:v48];
        v72[1] = v50;
        v51 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];
        v52 = [v22 outIdentifierToConversationInfo];
        [v52 setObject:v51 forKeyedSubscript:v38];

        v53 = sub_100004778();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = [v22 outIdentifierToConversationInfo];
          *buf = 138412290;
          *v74 = v54;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "outIdentifierToConversationInfo: %@", buf, 0xCu);
        }

        v28 = v68;
        v55 = a7;
        v19 = v66;
      }

      else
      {
        v53 = sub_100004778();
        v28 = v68;
        v55 = a7;
        v19 = v66;
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [(CSDMessagingConversationMessage *)v47 enclosedEncryptedType];
          *buf = 67109378;
          *v74 = v56;
          *&v74[4] = 2112;
          *&v74[6] = v67;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "message type: %d, groupUUID: %@", buf, 0x12u);
        }
      }

      if (v55)
      {
        v57 = v38;
        *v55 = v38;
      }

      v40 = v59;
      v16 = v60;
    }

    else
    {
      v47 = sub_100004778();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_100476778();
      }
    }

    v17 = v63;
    v15 = v64;
    v18 = v62;
  }

  else
  {
    v27 = 0;
    v28 = v68;
  }

  return v27;
}

void sub_10015E8B4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained pendingMembershipTracker];
    [v17 handleDelegatedPendingMember:v18 forConversation:v11 withGroupUUID:v12 from:v13 transactionUUID:v14];
  }
}

id sub_10015E988(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = +[NSMutableSet set];
  if (WeakRetained)
  {
    v6 = [WeakRetained pushTokenForSelf];
    v7 = [WeakRetained featureFlags];
    v8 = [v7 groupFacetimeAsAServiceEnabled];

    v23 = v3;
    if (v3 && v8)
    {
      v9 = +[CSDConversationProviderManager sharedInstance];
      v10 = [v9 serviceForProvider:v3];
    }

    else
    {
      v10 = [WeakRetained service];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v10 aliases];
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = TUHandleForIDSCanonicalAddress();
          if (v17)
          {
            [v5 addObject:v17];
          }

          v18 = TUCopyIDSCanonicalAddressForHandle();
          v19 = IDSCopyIDForTokenWithID();

          v20 = TUHandleForIDSCanonicalAddress();
          if (v20)
          {
            [v5 addObject:v20];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    v3 = v23;
  }

  return v5;
}

id sub_10015EBC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained activeLocalHandlesForProvider];
    v4 = v3[2](v3, 0);
  }

  else
  {
    v4 = +[NSMutableSet set];
  }

  return v4;
}

id sub_10015EC54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained localCallerIDForProvider];
    v4 = v3[2](v3, 0);
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Using local callerID: nil, could not get strong self", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

id sub_10015ED20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained callProviderManager];
  v3 = [v2 faceTimeProvider];
  v4 = [v3 prioritizedSenderIdentities];

  return v4;
}

id sub_10015ED94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained featureFlags];
    v7 = [v6 groupFacetimeAsAServiceEnabled];

    if (v3 && v7)
    {
      v8 = +[CSDConversationProviderManager sharedInstance];
      v9 = [v8 serviceForProvider:v3];
    }

    else
    {
      v9 = [v5 service];
    }

    v11 = [v9 callerID];
    v12 = [TUHandle normalizedHandleWithDestinationID:v11];
    v13 = [v5 isValidLocalHandle:v12 forProvider:v3];

    if (v11 && v13)
    {
      v10 = [TUHandle normalizedHandleWithDestinationID:v11];
    }

    else
    {
      v14 = [v5 activeLocalHandlesForProvider];
      v15 = (v14)[2](v14, v3);
      v16 = [v15 anyObject];

      v17 = [v16 value];
      v18 = IDSCopyAddressDestinationForDestination();
      v19 = IDSCopyRawAddressForDestination();
      v10 = [TUHandle normalizedHandleWithDestinationID:v19];
    }
  }

  else
  {
    v10 = 0;
  }

  v20 = sub_100004778();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Using local callerID: %@", &v22, 0xCu);
  }

  return v10;
}

uint64_t sub_10015EFE0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = TUNormalizedHandleForTUHandle();
    if (v5 && ([WeakRetained activeLocalHandles], v6 = objc_claimAutoreleasedReturnValue(), v6[2](), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v5), v7, v6, v8))
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ is eligible for screen sharing because it's a local handle", &v17, 0xCu);
      }

      v10 = 1;
    }

    else
    {
      v11 = [TUContactsDataProvider alloc];
      v12 = +[TUCallCenter sharedInstance];
      v13 = [v12 contactStore];
      v9 = [v11 initWithContactsDataSource:v13];

      v10 = [v9 isHandleEligibleForScreenSharingRequests:v3];
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v10)
        {
          v15 = @"YES";
        }

        v17 = 138412546;
        v18 = v3;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ is eligible for screen sharing: %@", &v17, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10016038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001603B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = [WeakRetained mutableConversationsByUUID];
  v5 = [*(a1 + 40) UUID];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = +[TUConversationInvitationPreference letMeInResponseInvitationPreferences];
  v10 = IDSSendMessageOptionRequireAllRegistrationPropertiesKey;
  v8 = [NSSet setWithObject:IDSRegistrationPropertySupportsModernGFT];
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [WeakRetained sendInvitationMessageToMember:v3 destinationID:0 invitationContext:0 forConversation:v6 includeAllAttributes:1 invitationPreferences:v7 additionalOptions:v9];
}

void sub_100162440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100162458(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        v9 = [v8 link];
        v10 = [v9 pseudonym];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          v12 = [v8 temporaryGroupUUID];
          v13 = *(*(a1 + 48) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1001626F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100162708(uint64_t a1)
{
  v2 = [*(a1 + 32) _removePendingConversationWithPseudonym:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100162A4C(uint64_t a1)
{
  v1 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  [v1 removeAllObjects];
}

void sub_1001632D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001632EC(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 isRepresentedByRemoteMembers:*(a1 + 40) andLink:*(a1 + 48)])
        {
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v8);
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_10016354C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100163564(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 link];
        if (v9 && [v8 letMeInRequestState] == 3)
        {
          v10 = [v8 link];
          v11 = [v10 isEquivalentToConversationLink:*(a1 + 40)];

          if (v11)
          {
            v12 = [v8 tuConversation];
            v13 = *(*(a1 + 48) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v12;

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

LABEL_13:
}

void sub_100163B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100163B2C(uint64_t a1)
{
  v2 = [*(a1 + 32) findConversationLinkMatchingPseudonym:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100164660(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) receivedMessage:*(a1 + 56) fromHandle:*(a1 + 64) withUpdate:*(a1 + 72) shouldRing:*(a1 + 80)];
}

void sub_1001649CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) reportedNewIncomingConversation:*(a1 + 40) fromHandle:*(a1 + 56)];
}

void sub_100164D08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) createdNewConversation:*(a1 + 40)];
}

void sub_100165050(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) avModeChanged:*(a1 + 56) toAVMode:*(a1 + 64) forConversation:*(a1 + 40)];
}

void sub_100165AEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100165BD8;
  v10[3] = &unk_10061A450;
  v11 = *(a1 + 40);
  v12 = v5;
  v13 = *(a1 + 32);
  v14 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_100165BD8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 tuConversation];
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 40))
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [*(a1 + 48) delegateToQueue];
    v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          v9 = [*(a1 + 48) delegateToQueue];
          v10 = [v9 objectForKey:v8];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100165DF0;
          block[3] = &unk_10061A450;
          v17 = v3;
          v18 = v8;
          v15 = *(a1 + 40);
          v11 = v15.i64[0];
          v19 = vextq_s8(v15, v15, 8uLL);
          dispatch_async(v10, block);
        }

        v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v5);
    }

LABEL_16:

    goto LABEL_17;
  }

  v13 = *(a1 + 56);
  v12 = (a1 + 56);
  if (v13)
  {
    obj = sub_100004778();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_100476964(v12);
    }

    goto LABEL_16;
  }

LABEL_17:
}

uint64_t sub_100165DF0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_13;
  }

  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v16 = 138412290;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "activatedLinksWithCompleted: tuconversation: %@", &v16, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = objc_opt_respondsToSelector();
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [*(a1 + 32) provider];
    if ([v6 shouldHandleUpdateForProvider:v7])
    {
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (objc_opt_respondsToSelector())
    {
      goto LABEL_13;
    }
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) provider];
    v16 = 138412546;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v16, 0x16u);
  }

  [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
LABEL_13:
  v14 = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 40) conversationManager:*(a1 + 48) activatedConversationLinksChanged:*(a1 + 56)];
  }

  return result;
}

uint64_t sub_10016619C(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);

    return [v4 conversationManager:v5 remoteScreenShareAttributesChanged:v6 isLocallySharing:v7];
  }

  return result;
}

uint64_t sub_1001663D8(void *a1)
{
  v2 = a1[4];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];

    return [v4 conversationManager:v5 remoteScreenShareEndedWithReason:v6];
  }

  return result;
}

void sub_10016660C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_respondsToSelector();
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [*(a1 + 40) provider];
      if ([v5 shouldHandleUpdateForProvider:v6])
      {
      }

      else
      {
        v8 = *(a1 + 32);
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          return;
        }
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (objc_opt_respondsToSelector())
      {
        return;
      }
    }

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) provider];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v13, 0x16u);
    }

    [*(a1 + 32) conversationManager:*(a1 + 48) reportedLetMeInRejectedForPendingConversation:*(a1 + 40)];
  }
}

void sub_100166944(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = objc_opt_respondsToSelector();
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = [*(a1 + 40) provider];
      if ([v5 shouldHandleUpdateForProvider:v6])
      {
      }

      else
      {
        v8 = *(a1 + 32);
        v9 = objc_opt_respondsToSelector();

        if (v9)
        {
          return;
        }
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (objc_opt_respondsToSelector())
      {
        return;
      }
    }

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) provider];
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v13, 0x16u);
    }

    [*(a1 + 32) conversationManager:*(a1 + 48) reportedInvalidLinkForPendingConversation:*(a1 + 40)];
  }
}

void sub_100166D18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) removedScreenShareRequest:*(a1 + 56)];
}

void sub_100167AAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100167CE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) object];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v4 = [WeakRetained mutableConversationsByUUID];
    v5 = [v4 allValues];

    v6 = [v5 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v66;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v66 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v65 + 1) + 8 * i);
          if ([v11 state] == 3)
          {
            v12 = v11;

            v8 = v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v65 objects:v74 count:16];
      }

      while (v7);

      if (v8)
      {
        v13 = sub_100004778();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v3)
        {
          if (!v14)
          {
            goto LABEL_21;
          }

          v15 = [v8 UUID];
          *buf = 138412546;
          v71 = v3;
          v72 = 2112;
          v73 = v15;
          v16 = "Conversation manager alerted to new selected audio route ID %@, letting my other devices know for conversation UUID %@";
          v17 = v13;
          v18 = 22;
        }

        else
        {
          if (!v14)
          {
            goto LABEL_21;
          }

          v15 = [v8 UUID];
          *buf = 138412290;
          v71 = v15;
          v16 = "Conversation manager alerted to unselected audio route, letting my other devices know for conversation UUID %@";
          v17 = v13;
          v18 = 12;
        }

        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);

LABEL_21:
        v19 = [CSDMessagingConversationMessage alloc];
        v20 = [v8 groupUUID];
        v21 = [(CSDMessagingConversationMessage *)v19 initWithType:32 groupUUID:v20 link:0];

        v22 = objc_alloc_init(CSDMessagingConversationJoinedMetadata);
        v60 = v3;
        [(CSDMessagingConversationJoinedMetadata *)v22 setAudioRouteUniqueIdentifier:v3];
        v23 = [CSDConversationParticipant alloc];
        v24 = [v8 localParticipantIdentifier];
        v25 = [v8 localMember];
        v26 = [v25 handle];
        v27 = +[NSData data];
        v28 = [(CSDConversationParticipant *)v23 initWithIdentifier:v24 handle:v26 avcData:v27];

        v58 = v28;
        v29 = [CSDMessagingConversationParticipant participantWithCSDConversationParticipant:v28];
        [(CSDMessagingConversationJoinedMetadata *)v22 setSender:v29];

        v30 = v21;
        v59 = v22;
        [(CSDMessagingConversationMessage *)v21 setJoinedMetadata:v22];
        v31 = +[NSMutableSet set];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v32 = [WeakRetained service];
        v33 = [v32 devices];

        v34 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v62;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v62 != v36)
              {
                objc_enumerationMutation(v33);
              }

              v38 = [*(*(&v61 + 1) + 8 * j) destination];
              v39 = [v38 destinationURIs];
              [(CSDMessagingConversationMessage *)v31 unionSet:v39];
            }

            v35 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
          }

          while (v35);
        }

        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v71 = v30;
          v72 = 2112;
          v73 = v31;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Sending UpdateJoinedMetadata message %@ to my other devices: %@", buf, 0x16u);
        }

        v41 = [WeakRetained featureFlags];
        if ([v41 groupFacetimeAsAServiceEnabled])
        {
          v42 = [v8 provider];

          if (v42)
          {
            v43 = +[CSDConversationProviderManager sharedInstance];
            v44 = [v8 provider];
            v45 = [v43 serviceForProvider:v44];

LABEL_35:
            v46 = [v8 localMember];
            v47 = [v46 handle];
            v48 = [v47 value];
            v49 = [v45 accountWithCallerID:v48];

            v50 = [WeakRetained sendDataBlock];
            v51 = v30;
            v52 = [(CSDMessagingConversationMessage *)v30 data];
            v53 = [v8 localMember];
            v54 = [v8 capabilitySendMessageOptions];
            [v8 provider];
            v57 = WeakRetained;
            v56 = v55 = v45;
            (v50)[2](v50, v52, v49, v31, v53, v54, 0, 0, v56);

            WeakRetained = v57;
            v3 = v60;
LABEL_36:

            goto LABEL_37;
          }
        }

        else
        {
        }

        v45 = [WeakRetained service];
        goto LABEL_35;
      }
    }

    else
    {
    }

    v8 = sub_100004778();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ignoring route identifier change for handoff as no conversations are currently joined.", buf, 2u);
    }

    goto LABEL_36;
  }

LABEL_37:
}

void sub_100168D78(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [a1[4] queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100168EC4;
  block[3] = &unk_10061CD68;
  v20 = v9;
  v21 = v7;
  v22 = v8;
  v18 = *(a1 + 2);
  v11 = *(&v18 + 1);
  v12 = a1[6];
  v13 = a1[7];
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v23 = v18;
  v24 = v14;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  dispatch_async(v10, block);
}

void sub_100168EC4(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32) && (v4 = *(a1 + 40)) != 0 && *(a1 + 48))
  {
    if ([v4 type] == 10)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 72);
      v12 = [*(a1 + 80) serverReceivedTime];
      [v5 handleReceivedLetMeInRequest:v7 toPseudonym:v6 fromHandle:v9 responseKeyData:v8 dateInitiated:?];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 40) type];
        *buf = 67109120;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Decrypted conversation message but was not a let me in request: messageType: %d", buf, 8u);
      }
    }
  }

  else
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1004769D4(v1);
    }
  }
}

void sub_1001696A8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001697E8;
  v10[3] = &unk_10061CDB8;
  v11 = v5;
  v12 = a1[5];
  v13 = v6;
  v14 = a1[4];
  v15 = a1[6];
  v16 = a1[7];
  v17 = a1[8];
  v18 = a1[9];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1001697E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 originator];
    v4 = [v3 handle];
    v5 = [v4 value];
    v6 = [TUHandle normalizedHandleWithDestinationID:v5];

    v7 = [*(a1 + 56) activeLocalHandles];
    v8 = v7[2]();

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v40 + 1) + 8 * v13) isEquivalentToHandle:{v6, v40}])
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [v9 countByEnumeratingWithState:&v40 objects:v44 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = *(a1 + 56);
      v16 = [*(a1 + 32) groupUUID];
      v14 = [v15 conversationWithGroupUUID:v16];

      [v14 setHasReceivedLetMeInRequest:1];
      v17 = [*(a1 + 56) featureFlags];
      if (TUGreenTeaLagunaEnabled())
      {
        v18 = [v14 tuConversation];
        v19 = [v18 mergedRemoteMembers];
        v20 = [v19 count];
      }

      else
      {
        v18 = [v14 remoteMembers];
        v20 = [v18 count];
      }

      v23 = [*(a1 + 56) deviceSupport];
      v24 = [v23 isGreenTea];

      if (v24 && v20 >= 1)
      {
        v25 = sub_100004778();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v14 remoteMembers];
          *buf = 138412290;
          v46 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[WARN] GreenTea device does not support multiple remote members. remoteMembers = %@", buf, 0xCu);
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v14)
      {
        v27 = [*(a1 + 56) reportingController];
        v28 = [v14 tuConversation];
        [v27 receivedLetMeInRequestForConversation:v28];

        if ([*(a1 + 56) _shouldSkipManualApprovalForHandle:*(a1 + 64) conversation:v14 responseKeyData:*(a1 + 72)])
        {
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 64);
            *buf = 138412290;
            v46 = v29;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "skip manual approval for handle: %@", buf, 0xCu);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *(a1 + 32);
          *buf = 138412290;
          v46 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Couldn't find existing conversation: %@", buf, 0xCu);
        }
      }

      v25 = [*(a1 + 80) nickname];
      v32 = [v25 length];
      if (v32)
      {
        v33 = v32;
        v34 = [*(a1 + 56) serverBag];
        v35 = [v34 webNicknameLengthLimit];

        if (v33 > v35)
        {
          v36 = [v25 substringToIndex:v35];

          v25 = v36;
        }
      }

      v37 = [[TUConversationMember alloc] initWithHandle:*(a1 + 64) nickname:v25 joinedFromLetMeIn:1];
      v38 = [[TUConversationLink alloc] initWithDescriptor:*(a1 + 32)];
      v39 = [*(a1 + 56) pendingMembershipTracker];
      [v39 handleNewPendingMember:v37 responseKey:*(a1 + 72) forConversation:v14 withLink:v38 dateInitiatedLMI:*(a1 + 88)];

      goto LABEL_32;
    }

LABEL_10:

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v46 = v6;
      v47 = 2112;
      v48 = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dismissing let me in because link has originator handle of %@, which is not one of our active local handles %@", buf, 0x16u);
    }

LABEL_33:
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a1 + 40);
      v22 = *(a1 + 48);
      *buf = 138412546;
      v46 = v21;
      v47 = 2112;
      v48 = v22;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Could not find link for pseudonym %@, dropping let me in request. Error: %@", buf, 0x16u);
    }
  }
}

void sub_10016A2C4(id *a1)
{
  if ([a1[4] type] == 11 || objc_msgSend(a1[4], "type") == 26)
  {
    if ([a1[4] hasLink])
    {
      v2 = [a1[4] conversationGroupUUID];
      v3 = [a1[4] link];
      v4 = [v3 groupUUID];
      v5 = [v2 isEqual:v4];

      if (v5)
      {
        v6 = [a1[4] type];
        v7 = v6 == 26;
        v8 = [a1[4] link];
        v9 = [v8 tuConversationLink];

        if (!v9)
        {
          v14 = sub_100004778();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TUConversationLink for link created/changed message (it was nil)", buf, 2u);
          }

          goto LABEL_46;
        }

        v10 = a1[5];
        v11 = [v9 originatorHandle];
        LOBYTE(v10) = [v10 isEquivalentToHandle:v11];

        if ((v10 & 1) == 0)
        {
          v14 = sub_100004778();
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
LABEL_46:

            goto LABEL_47;
          }

          v24 = a1[5];
          v16 = [v9 originatorHandle];
          v25 = a1[4];
          *buf = 138412802;
          *v69 = v24;
          *&v69[8] = 2112;
          *v70 = v16;
          *&v70[8] = 2112;
          v71[0] = v25;
          v26 = "[WARN] Sender %@ did not match link's originator handle %@ for link created/changed message %@";
          v27 = v14;
          v28 = 32;
          goto LABEL_32;
        }

        v12 = a1[6];
        v13 = [a1[4] conversationGroupUUID];
        v14 = [v12 conversationWithGroupUUID:v13];

        if (v14)
        {
          if (v6 != 26)
          {
            v15 = [v14 link];

            if (v15)
            {
              v16 = sub_100004778();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = [v14 UUID];
                v18 = a1[4];
                *buf = 138412546;
                *v69 = v17;
                *&v69[8] = 2112;
                *v70 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Link already exists on conversation %@ for link created message %@", buf, 0x16u);
              }

              goto LABEL_33;
            }
          }

          v29 = [a1[6] featureFlags];
          v57 = v6 == 26;
          if (TUGreenTeaLagunaEnabled())
          {
            v30 = [v14 tuConversation];
            v31 = [v30 mergedRemoteMembers];
            v32 = [v31 count];
          }

          else
          {
            v30 = [v14 remoteMembers];
            v32 = [v30 count];
          }

          v39 = [a1[6] deviceSupport];
          v40 = [v39 isGreenTea];

          if (v40 && v32 >= 1)
          {
            v16 = sub_100004778();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v41 = a1[4];
              *buf = 138412290;
              *v69 = v41;
              v26 = "[WARN] GreenTea device does not support link created/changed message because invitedMemberHandles > 1, message: %@";
              goto LABEL_31;
            }

            goto LABEL_33;
          }

          v55 = v6;
          v65 = 0u;
          v66 = 0u;
          v63 = 0u;
          v64 = 0u;
          v56 = v14;
          v42 = [v14 remoteMembers];
          v43 = [v42 countByEnumeratingWithState:&v63 objects:v67 count:16];
          if (!v43)
          {
LABEL_42:

            v14 = v56;
LABEL_48:
            v16 = sub_100004778();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v53 = a1[5];
              v54 = [v14 UUID];
              *buf = 138412546;
              *v69 = v53;
              *&v69[8] = 2112;
              *v70 = v54;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Sender %@ is not part of conversation UUID %@.", buf, 0x16u);
            }

            goto LABEL_33;
          }

          v44 = v43;
          v45 = *v64;
LABEL_36:
          v46 = 0;
          while (1)
          {
            if (*v64 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v63 + 1) + 8 * v46);
            v48 = [v47 handle];
            v49 = [v48 isEqualToHandle:a1[5]];

            if (v49)
            {
              break;
            }

            if (v44 == ++v46)
            {
              v44 = [v42 countByEnumeratingWithState:&v63 objects:v67 count:16];
              if (v44)
              {
                goto LABEL_36;
              }

              goto LABEL_42;
            }
          }

          v35 = v47;

          v14 = v56;
          v7 = v57;
          v6 = v55;
          if (!v35)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v33 = sub_100004778();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = a1[5];
            *buf = 138412546;
            *v69 = v34;
            *&v69[8] = 2112;
            *v70 = v9;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[In-Advance] Received link created/changed message from %@ with link %@", buf, 0x16u);
          }

          v35 = [a1[6] deviceSupport];
          if ([v35 isGreenTea])
          {
            v36 = [v9 invitedMemberHandles];
            v37 = [v36 count];

            if (v37 >= 2)
            {
              v16 = sub_100004778();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v38 = a1[4];
                *buf = 138412290;
                *v69 = v38;
                v26 = "[WARN] GreenTea device does not support link creation message %@ because invitedMemberHandles > 1";
LABEL_31:
                v27 = v16;
                v28 = 12;
LABEL_32:
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
              }

LABEL_33:

              goto LABEL_46;
            }

LABEL_45:
            v50 = v6 == 26;
            v51 = [a1[6] linkManager];
            v58[0] = _NSConcreteStackBlock;
            v58[1] = 3221225472;
            v58[2] = sub_10016AA38;
            v58[3] = &unk_10061CE08;
            v52 = a1[5];
            v58[4] = a1[6];
            v14 = v14;
            v59 = v14;
            v62 = v7;
            v60 = a1[5];
            v61 = v9;
            [v51 storeReceivedLink:v61 fromHandle:v52 isUpdate:v50 completionHandler:v58];

            goto LABEL_46;
          }
        }

        goto LABEL_45;
      }
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [a1[4] type];
    v20 = [a1[4] hasLink];
    v21 = [a1[4] link];
    v22 = [v21 groupUUID];
    v23 = [a1[4] conversationGroupUUID];
    *buf = 67109890;
    *v69 = v19;
    *&v69[4] = 1024;
    *&v69[6] = v20;
    *v70 = 2112;
    *&v70[2] = v22;
    LOWORD(v71[0]) = 2112;
    *(v71 + 2) = v23;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not sufficiently formed link created/changed message, type: %d hasLink: %d linkGroupUUID: %@ conversationGroupUUID: %@", buf, 0x22u);
  }

LABEL_47:
}

void sub_10016AA38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016AB54;
  block[3] = &unk_10061BCB0;
  v13 = v6;
  v14 = *(a1 + 40);
  v15 = v5;
  v19 = *(a1 + 64);
  v16 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v17 = v8;
  v18 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, block);
}

void sub_10016AB54(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    v2 = sub_100004778();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100476A44(v1);
    }

    return;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 80))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[In-Advance] Link successfully stored (update: %{public}@) from %@ with linkDescriptor %@", &v18, 0x20u);
    }

    goto LABEL_17;
  }

  v5 = [NSSet setWithObject:IDSRegistrationPropertySupportsGondola];
  [v4 addRequiredCapabilities:v5 requiredLackOfCapabilities:0];

  LODWORD(v5) = [*(a1 + 40) setConversationLink:*(a1 + 48) allowUpdate:*(a1 + 80)];
  v6 = sub_100004778();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      if (*(a1 + 80))
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = [*(a1 + 40) UUID];
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v18 = 138544130;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Ongoing] Received link created/changed (update: %{public}@) message for conversation UUID %@ from %@ with linkDescriptor %@", &v18, 0x2Au);
    }

LABEL_17:

    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "store received link", &v18, 2u);
    }

    [*(a1 + 72) notifyDelegatesOfChangedLink:*(a1 + 48) conversation:*(a1 + 40)];
    return;
  }

  if (v7)
  {
    v16 = *(a1 + 48);
    v17 = [*(a1 + 40) UUID];
    v18 = 138412546;
    v19 = v16;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Did not set conversation link %@ to conversation UUID %@", &v18, 0x16u);
  }
}

void sub_10016AEE8(uint64_t a1)
{
  if ([*(a1 + 32) type] == 24 && (objc_msgSend(*(a1 + 32), "hasLink") & 1) != 0)
  {
    v2 = [*(a1 + 32) link];
    v3 = [v2 tuConversationLink];

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = [v3 originatorHandle];
      LOBYTE(v4) = [v4 isEquivalentToHandle:v5];

      if (v4)
      {
        v6 = *(a1 + 48);
        v7 = [*(a1 + 32) conversationGroupUUID];
        v8 = [v6 conversationWithGroupUUID:v7];

        v9 = [*(a1 + 48) linkManager];
        v31 = 0;
        v10 = [v9 fetchActivatedLinksWithError:&v31];
        v11 = v31;

        if (v11)
        {
          v12 = sub_100004778();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
          {
            sub_100476AB4();
          }
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v26 = v10;
          v18 = v10;
          v19 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v28;
LABEL_16:
            v22 = 0;
            while (1)
            {
              if (*v28 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v27 + 1) + 8 * v22);
              if ([v23 isEquivalentToConversationLink:v3])
              {
                break;
              }

              if (v20 == ++v22)
              {
                v20 = [v18 countByEnumeratingWithState:&v27 objects:v32 count:16];
                if (v20)
                {
                  goto LABEL_16;
                }

                goto LABEL_22;
              }
            }

            v12 = v23;

            if (!v12)
            {
              goto LABEL_27;
            }

            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v12;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "handleReceivedLinkInvalidatedMessage: remove link: %@", buf, 0xCu);
            }

            [*(a1 + 48) removeLink:v12 reason:8 withConversation:v8];
          }

          else
          {
LABEL_22:

LABEL_27:
            v12 = sub_100004778();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(a1 + 32);
              *buf = 138412290;
              v34 = v25;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "We are not tracking any stored link for link invalidation message %@", buf, 0xCu);
            }
          }

          v10 = v26;
        }
      }

      else
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 40);
          v16 = [v3 originatorHandle];
          v17 = *(a1 + 32);
          *buf = 138412802;
          v34 = v15;
          v35 = 2112;
          v36 = v16;
          v37 = 2112;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Sender %@ did not match link's originator handle %@ for link invalidation message %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        *buf = 138412290;
        v34 = v14;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Invalid TUConversationLink for link invalidation message %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v34 = v13;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Not sufficiently formed link invalidation message %@", buf, 0xCu);
    }
  }
}

void sub_10016B3F0(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1[4] queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10016B4D0;
  v9[3] = &unk_10061A450;
  v10 = v4;
  v6 = a1[5];
  v7 = a1[4];
  v11 = v6;
  v12 = v7;
  v13 = a1[6];
  v8 = v4;
  dispatch_async(v5, v9);
}

void sub_10016B4D0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = sub_100004778();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100476B28(v2);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "removeLink completed for %@ ", &v7, 0xCu);
    }

    [*(a1 + 48) notifyDelegatesOfChangedLink:*(a1 + 40) conversation:*(a1 + 56)];
  }
}

id sub_10016CFD0(uint64_t a1, void *a2)
{
  v3 = [a2 handle];
  v4 = [v3 isEquivalentToHandle:*(a1 + 32)];

  return v4;
}

void sub_100171074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017108C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [*(a1 + 32) mutableConversationsByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if (([v12 isFromStorage] & 1) == 0)
        {
          v13 = [v12 tuConversation];
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v12 groupUUID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v23 = [v22 tuConversation];
        v24 = *(*(*(a1 + 40) + 8) + 40);
        v25 = [v22 temporaryGroupUUID];
        [v24 setObject:v23 forKeyedSubscript:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }
}

void sub_10017141C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171434(uint64_t a1)
{
  v2 = [*(a1 + 32) advertisementsBySessionUUID];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) advertisementsBySessionUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [v12 sessionUUID];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_1001716C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001716D8(uint64_t a1)
{
  v2 = [*(a1 + 32) _incomingPendingConversationsByGroupUUID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100171BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171BF0(uint64_t a1)
{
  v5 = [*(a1 + 32) mutablePseudonymsByCallUUID];
  v2 = [NSDictionary dictionaryWithDictionary:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100171D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100171D8C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [*(a1 + 32) mutableConversationsByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        if ((*(a1 + 48) & 1) != 0 || ([*(*(&v30 + 1) + 8 * i) isFromStorage] & 1) == 0)
        {
          v13 = [v12 tuConversation];
          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [v12 UUID];
          [v14 setObject:v13 forKeyedSubscript:v15];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v17 = [v16 allValues];

  v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v26 + 1) + 8 * j);
        v23 = [v22 tuConversation];
        v24 = *(*(*(a1 + 40) + 8) + 40);
        v25 = [v22 temporaryGroupUUID];
        [v24 setObject:v23 forKeyedSubscript:v25];
      }

      v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v19);
  }
}

void sub_1001722A8(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

void sub_1001723B0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegateToQueue];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_100172534(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) service];
    v4 = [v3 description];
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Beginning to listen on service:%@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) name];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [*(a1 + 40) listeningOnIDSServiceIdentifiers];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v9 = [*(a1 + 40) listeningOnIDSServiceIdentifiers];
    [v9 addObject:v5];

    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Adding self as a delegate for IDSService with identifier: %@", buf, 0xCu);
    }

LABEL_10:
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v8 = [v12 queue];
    [v11 addServiceDelegate:v12 queue:v8];
    goto LABEL_11;
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[CSDConversationManager] Skipping adding self as a delegate for IDSService with identifier: %@", buf, 0xCu);
  }

LABEL_11:

  v13 = [*(a1 + 40) lockStateObserver];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100172794;
  v14[3] = &unk_100619D38;
  v14[4] = *(a1 + 40);
  [v13 performBlockAfterFirstUnlock:v14];
}

void sub_1001728F0(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18)
{
  v84 = a2;
  v24 = a3;
  v82 = a4;
  v25 = a6;
  v81 = a7;
  v26 = a8;
  v27 = v24;
  v83 = a9;
  v80 = a10;
  v28 = v26;
  v79 = a11;
  v29 = a12;
  v30 = a13;
  v78 = a14;
  v77 = a15;
  v76 = a16;
  v31 = *(a1 + 32);
  v32 = [NSSet setWithArray:v28];
  v33 = [v31 conversationWithGroupUUID:v27 orRepresentedByRemoteMembers:v32 andLink:v29];

  if (v33)
  {
    v34 = sub_100004778();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      [v33 UUID];
      v36 = v35 = v33;
      *buf = 138412546;
      v96 = v84;
      v97 = 2112;
      v98 = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[WARN] Not adding cached conversation with UUID %@ because we already added equivalent conversation with UUID %@", buf, 0x16u);

      v33 = v35;
    }

    v37 = v76;
  }

  else
  {
    v38 = a5;
    v72 = v30;
    v73 = v29;
    if (v29)
    {
      v39 = [*(a1 + 32) pendingMembershipTracker];
      v71 = [v39 retrievePendingMembersFor:v27];
    }

    else
    {
      v71 = +[NSSet set];
    }

    v75 = v25;
    v40 = [*(a1 + 32) conversationProviderManager];
    v70 = [v40 tuConversationProviderForIdentifier:v77];

    v41 = sub_100004778();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v96 = v27;
      v97 = 2112;
      v98 = v28;
      v99 = 2112;
      v100 = v83;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Reviving cached conversation with groupUUID: %@ remoteMembers: %@ lightweightMembers: %@", buf, 0x20u);
    }

    v42 = *(a1 + 32);
    v43 = [NSSet setWithArray:v28];
    v44 = [NSSet setWithArray:v80];
    v45 = [NSSet setWithArray:v83];
    LOWORD(v67) = 1;
    LOBYTE(v66) = 1;
    v69 = v27;
    v46 = [v42 createConversationWithUUID:v84 groupUUID:v27 messagesGroupUUID:v82 locallyCreated:v38 localMember:v75 initiator:v81 remoteMembers:v43 pendingMembers:v71 otherInvitedHandles:v44 remotePushTokens:0 lightweightMembers:v45 activity:0 link:v29 report:v30 fromStorage:v66 avMode:a17 presentationMode:a18 provider:v70 screenSharingRequest:0 isInitiator:v67 isOldMessage:?];

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v47 = v79;
    v48 = [v47 countByEnumeratingWithState:&v89 objects:v94 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v90;
      do
      {
        for (i = 0; i != v49; i = i + 1)
        {
          if (*v90 != v50)
          {
            objc_enumerationMutation(v47);
          }

          [v46 addActiveParticipant:*(*(&v89 + 1) + 8 * i)];
        }

        v49 = [v47 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v49);
    }

    v68 = v28;

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v52 = v78;
    v53 = [v52 countByEnumeratingWithState:&v85 objects:v93 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v86;
      do
      {
        for (j = 0; j != v54; j = j + 1)
        {
          if (*v86 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v85 + 1) + 8 * j);
          v58 = [v57 activity];
          v59 = [v58 fromHandle];
          v60 = [v59 tuHandle];

          if (v60 || ([v57 locallyPersistedMetadata], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_msgSend(v61, "locallyInitiated"), v61, v62))
          {
            v63 = [*(a1 + 32) createActivitySession:v57 onConversation:v46 fromHandle:v60];
            if (!v63)
            {
              v64 = sub_100004778();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v96 = v57;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[WARN] Failed to create newActivitySession for activitySession %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v63 = sub_100004778();
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v96 = v57;
              _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Failed to create activitySession from persistence since we couldn't find the trusted fromHandle on activitySession: %@", buf, 0xCu);
            }
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v54);
    }

    v37 = v76;
    if (v76)
    {
      v65 = [v76 tuConversationActivitySession];
      [v46 setStagedActivitySessionForActivitySession:v65];
    }

    v28 = v68;
    v27 = v69;
    v29 = v73;
    v25 = v75;
    v34 = v71;
    v30 = v72;
    v33 = 0;
  }
}

void sub_100173278(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 138412802;
    *v76 = v3;
    *&v76[8] = 2112;
    v77 = v4;
    v78 = 2112;
    v79 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "groupUUID: %@ remoteMembers: %@, conversationProvider: %@", buf, 0x20u);
  }

  v6 = [*(a1 + 56) conversationWithGroupUUID:*(a1 + 32) orRepresentedByRemoteMembers:*(a1 + 40) andLink:*(a1 + 64)];
  if ([v6 state] == 4 && objc_msgSend(*(a1 + 40), "count") == 1 && !*(a1 + 64))
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 UUID];
      *buf = 138412290;
      *v76 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Found existing conversation %@ but not reusing it since it's leaving and we're trying to join a U+1 call", buf, 0xCu);
    }

    v6 = 0;
  }

  v9 = [v6 provider];
  v10 = [v9 isTelephonyWithSharePlayProvider];

  if (v10)
  {

    v6 = 0;
  }

  if ([v6 state] == 3)
  {
    v11 = [v6 remoteMembers];
    if ([v11 count] == 1 && objc_msgSend(*(a1 + 40), "count") == 1 && *(a1 + 128) == 2)
    {
      v12 = [v6 isVideo] ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100004778();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v6 || v12)
  {
    if (v14)
    {
      *buf = 67109376;
      *v76 = v6 == 0;
      *&v76[4] = 1024;
      *&v76[6] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No conversation currently exists to join: %d, so creating a new one isConversationVideoUpgrade: %d", buf, 0xEu);
    }

    v21 = [*(a1 + 56) activeLocalHandlesForProvider];
    v22 = v21[2](v21, *(a1 + 48));

    v23 = [*(a1 + 56) localCallerIDForProvider];
    v24 = v23[2](v23, *(a1 + 48));

    v25 = *(a1 + 72);
    v26 = v25;
    if (v25 || !v24)
    {
      if (!v25)
      {
        goto LABEL_51;
      }

      v27 = *(a1 + 56);
      v28 = [v25 handle];
      LOBYTE(v27) = [v27 isValidLocalHandle:v28 forProvider:*(a1 + 48)];

      if ((v27 & 1) == 0)
      {
        v36 = sub_100004778();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v76 = v26;
          *&v76[8] = 2112;
          v77 = v22;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[WARN] The request specified that local member %@ should be used, but the useable handles for FaceTime are %@. We cannot proceed with a handle that's not registered for FaceTime on this device.", buf, 0x16u);
        }

        goto LABEL_51;
      }
    }

    else
    {
      v26 = [[TUConversationMember alloc] initWithHandle:v24 nickname:0];
      if (!v26)
      {
LABEL_51:
        v26 = sub_100004778();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100477770();
        }

LABEL_77:

        goto LABEL_78;
      }
    }

    v29 = [*(a1 + 56) featureFlags];
    v67 = v6;
    if (![v29 nameAndPhotoEnabled])
    {
      goto LABEL_56;
    }

    v30 = [*(a1 + 56) featureFlags];
    if ([v30 nameAndPhotoBackwardsCompatibilityEnabled])
    {
      v31 = [v26 nickname];

      if (v31)
      {
LABEL_57:
        v41 = [*(a1 + 40) mutableCopy];
        v68 = a1;
        v65 = v24;
        v66 = v22;
        if (_TUIsInternalInstall())
        {
          v42 = +[NSUserDefaults tu_defaults];
          v69 = [v42 stringForKey:@"DefaultsRemovedURI"];
        }

        else
        {
          v69 = 0;
        }

        v43 = objc_alloc_init(NSMutableSet);
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v44 = v41;
        v45 = [v44 countByEnumeratingWithState:&v70 objects:v74 count:16];
        if (v45)
        {
          v46 = v45;
          v47 = *v71;
          do
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v71 != v47)
              {
                objc_enumerationMutation(v44);
              }

              v49 = *(*(&v70 + 1) + 8 * i);
              v50 = [v49 handle];
              v51 = [v26 handle];
              v52 = [v50 isEqualToHandle:v51];

              if ((v52 & 1) == 0)
              {
                if (!_TUIsInternalInstall())
                {
                  continue;
                }

                v53 = [v49 handle];
                v54 = [v53 value];
                v55 = [v69 isEqualToString:v54];

                if (!v55)
                {
                  continue;
                }
              }

              [v43 addObject:v49];
            }

            v46 = [v44 countByEnumeratingWithState:&v70 objects:v74 count:16];
          }

          while (v46);
        }

        if ([v43 count])
        {
          [v44 minusSet:v43];
        }

        a1 = v68;
        v22 = v66;
        if (*(v68 + 64))
        {
          v56 = [*(v68 + 56) pendingMembershipTracker];
          v57 = [v56 retrievePendingMembersFor:*(v68 + 32)];
        }

        else
        {
          v57 = +[NSSet set];
        }

        v58 = *(v68 + 56);
        v59 = +[NSUUID UUID];
        v60 = *(v68 + 48);
        v61 = [v58 createConversationIfNecessaryWithUUID:v59 groupUUID:*(v68 + 32) messagesGroupUUID:*(v68 + 80) locallyCreated:1 localMember:v26 remoteMembers:v44 pendingMembers:v57 otherInvitedHandles:*(v68 + 88) remotePushTokens:*(v68 + 96) lightweightMembers:0 link:*(v68 + 64) activity:*(v68 + 104) avMode:*(v68 + 128) presentationMode:*(v68 + 136) provider:v60 screenSharingRequest:*(v68 + 112)];

        v6 = v61;
        v24 = v65;
        goto LABEL_77;
      }

      v32 = [*(a1 + 56) getPersonalNicknameBlock];
      v29 = v32[2]();

      v33 = sub_100004778();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *v76 = v26;
        *&v76[8] = 2112;
        v77 = v29;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Attempting to update localMember: %@ with nickname: %@", buf, 0x16u);
      }

      v34 = [v29 firstName];
      if ([v34 length])
      {
      }

      else
      {
        v37 = [v29 lastName];
        v38 = [v37 length];

        if (!v38)
        {
LABEL_56:

          goto LABEL_57;
        }
      }

      v30 = [v29 firstName];
      v39 = [v29 lastName];
      v40 = [NSString stringWithFormat:@"%@ %@", v30, v39];
      [v26 setNickname:v40];
    }

    goto LABEL_56;
  }

  if (v14)
  {
    v15 = [v6 UUID];
    v16 = [v6 groupUUID];
    *buf = 138412546;
    *v76 = v15;
    *&v76[8] = 2112;
    v77 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Found existing conversation with UUID: %@, groupUUID: %@", buf, 0x16u);
  }

  if ([v6 isFromStorage])
  {
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v6 UUID];
      *buf = 138412290;
      *v76 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Activating cached conversation from storage with UUID: %@ as someone seems to be interested in it.", buf, 0xCu);
    }

    [v6 setFromStorage:0];
  }

  v19 = [*(a1 + 56) featureFlags];
  if ([v19 groupFacetimeAsAServiceEnabled])
  {
    v20 = [*(a1 + 48) supportsSharePlay] ^ 1;
  }

  else
  {
    v20 = 0;
  }

  if (*(a1 + 104) && (v20 & 1) == 0)
  {
    v35 = [v6 createStagedActivitySessionForActivity:?];
  }

LABEL_78:
  [v6 setProvider:*(a1 + 48)];
  v62 = [v6 tuConversation];
  v63 = *(*(a1 + 120) + 8);
  v64 = *(v63 + 40);
  *(v63 + 40) = v62;
}

void sub_100173C8C(id *a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    *buf = 138412546;
    v55 = v3;
    v56 = 2112;
    v57 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "joinExistingConversationWithUUID: %@ context: %@", buf, 0x16u);
  }

  v5 = [a1[6] mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:a1[4]];

  if (!v6)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a1[4];
      *buf = 138412290;
      v55 = v15;
      v14 = "[WARN] Could not find conversation with UUID: %@";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if ([v6 state] == 2 || objc_msgSend(v6, "state") == 3)
  {
    v7 = [a1[6] featureFlags];
    v8 = [v7 avLessSharePlayEnabled];

    if ((v8 & 1) == 0)
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = a1[4];
        *buf = 138412290;
        v55 = v16;
        v14 = "Ignoring request to join conversation with UUID: %@ since conversation is already joined";
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    v9 = [a1[5] avMode];
    v10 = [v6 avMode];
    v11 = sub_100004778();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9 == v10)
    {
      if (v12)
      {
        v13 = a1[4];
        *buf = 138412290;
        v55 = v13;
        v14 = "Ignoring request to join conversation with UUID: %@ since conversation is already joined";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (v12)
    {
      v40 = a1[4];
      *buf = 138412290;
      v55 = v40;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request to join conversation is trying to change avMode on conversation UUID: %@", buf, 0xCu);
    }

    [v6 setVideoEnabled:{objc_msgSend(a1[5], "isVideoEnabled")}];
    [v6 setLocalParticipantAudioVideoMode:objc_msgSend(a1[5] presentationMode:{"avMode"), objc_msgSend(a1[5], "presentationMode")}];
  }

  else
  {
    v17 = [a1[5] collaborationIdentifier];

    if (v17)
    {
      v18 = [a1[5] collaborationIdentifier];
      v19 = [NSMutableSet setWithObjects:v18, 0];

      [v6 setHighlightIdentifiers:v19];
    }

    v20 = [a1[6] mutableConversationsByUUID];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100174318;
    v50[3] = &unk_10061CEA8;
    v21 = v6;
    v51 = v21;
    v52 = a1[4];
    [v20 enumerateKeysAndObjectsUsingBlock:v50];

    [a1[5] setOneToOneModeEnabled:{objc_msgSend(v21, "isOneToOneModeEnabled")}];
    v22 = [v21 provider];
    [a1[5] setProvider:v22];

    if ([a1[5] isOneToOneModeEnabled])
    {
      v23 = sub_100004778();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = a1[5];
        *buf = 138412290;
        v55 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating context to use isOneToOneModeEnabled=true %@", buf, 0xCu);
      }
    }

    [a1[5] setVideoPaused:{objc_msgSend(v21, "isVideoPaused")}];
    v25 = [a1[6] featureFlags];
    [a1[5] setGftDowngradeToOneToOneAvailable:{objc_msgSend(v25, "gftDowngradeToOneToOne")}];

    v26 = [a1[6] featureFlags];
    [a1[5] setUPlusNDowngradeAvailable:{objc_msgSend(v26, "uPlusNDowngrade")}];

    v27 = [a1[6] featureFlags];
    [a1[5] setUPlusOneScreenShareAvailable:{objc_msgSend(v27, "uPlusOneScreenSharing")}];

    v28 = [a1[6] featureFlags];
    [v21 isRelaying];
    [a1[6] isScreenSharingInitiationAvailable];
    [a1[5] setSupportsRequestToScreenShare:TUIsRequestToScreenShareAvailable()];

    [v21 joinUsingContext:a1[5]];
    v29 = [a1[5] activity];

    if (v29)
    {
      v43 = v21;
      v44 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = [v21 tuActivitySessions];
      v30 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v47;
        while (2)
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v47 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v46 + 1) + 8 * i);
            v35 = [v34 activity];
            v36 = [v35 UUID];
            v37 = [a1[5] activity];
            v38 = [v37 UUID];
            v39 = [v36 isEqual:v38];

            if (v39)
            {
              v41 = sub_100004778();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [a1[5] activity];
                *buf = 138412290;
                v55 = v42;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Conversation join is for a new activity: %@, broadcasting image.", buf, 0xCu);
              }

              [a1[6] broadcastImageForSession:v34 onConversation:v43];
              goto LABEL_39;
            }
          }

          v31 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
          if (v31)
          {
            continue;
          }

          break;
        }
      }

LABEL_39:

      v6 = v44;
    }
  }

LABEL_16:
}

void sub_100174318(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 state] == 2 || objc_msgSend(v6, "state") == 3)
  {
    v7 = [*(a1 + 32) activitySessions];
    if ([v7 count])
    {
      v8 = 1;
    }

    else
    {
      v9 = [v6 activitySessions];
      v8 = [v9 count] != 0;
    }

    if ([v6 state] == 3 && objc_msgSend(v6, "isOneToOneModeEnabled") && (v10 = objc_msgSend(*(a1 + 32), "isOneToOneModeEnabled"), !v8 && (v10 & 1) != 0))
    {
      v13 = v10;
      v14 = sub_100004778();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"YES";
        if ((v13 & 1) == 0)
        {
          v15 = @"NO";
        }

        v16 = 138412546;
        v17 = @"NO";
        v18 = 2112;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not leaving converastion because hasAnyActivitySessions: %@, isOneToOneEnabled: %@", &v16, 0x16u);
      }
    }

    else
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Leaving existing conversation with UUID: %@ in favor of new conversation with UUID: %@", &v16, 0x16u);
      }

      [v6 leave];
    }
  }
}

void sub_100174664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017467C(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v44 = v3;
    v45 = 2112;
    v46 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LMI: Creating pending conversation for link: %@, localMember: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 40);
  if (!v6 || ([v6 handle], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "value"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, !v9))
  {
    v10 = [TUConversationMember alloc];
    v11 = [*(a1 + 48) localCallerID];
    v12 = v11[2]();
    v13 = [v10 initWithHandle:v12 nickname:0];

    v5 = v13;
  }

  v14 = [v5 handle];

  if (v14)
  {
    v15 = [CSDPendingConversation alloc];
    v16 = *(a1 + 32);
    v17 = [*(a1 + 48) queue];
    v33 = v5;
    v18 = [(CSDPendingConversation *)v15 initWithConversationLink:v16 localMember:v5 queue:v17];

    [(CSDPendingConversation *)v18 setVideoEnabled:*(a1 + 64)];
    [(CSDPendingConversation *)v18 setLetMeInRequestState:1];
    v19 = [*(a1 + 48) mutablePendingConversationsByPseudonym];
    v20 = [*(a1 + 32) pseudonym];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [*(a1 + 48) delegateToQueue];
    v21 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        v24 = 0;
        do
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v38 + 1) + 8 * v24);
          v26 = [(CSDPendingConversation *)v18 tuConversation];
          v27 = [*(a1 + 48) delegateToQueue];
          v28 = [v27 objectForKey:v25];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100174A08;
          block[3] = &unk_100619E58;
          block[4] = v25;
          v36 = v26;
          v37 = *(a1 + 48);
          v29 = v26;
          dispatch_async(v28, block);

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    v30 = [(CSDPendingConversation *)v18 tuConversation];
    v31 = *(*(a1 + 56) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v5 = v33;
  }
}

void sub_100174A08(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100174C04(uint64_t a1)
{
  if ([*(a1 + 32) _linksEnabled])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
    v3 = [v2 allValues];

    v4 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        v9 = [v8 link];
        v10 = [v9 pseudonym];
        v11 = [v10 isEqualToString:*(a1 + 40)];

        if (v11)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [v3 countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v12 = v8;

      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = sub_100004778();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v12 link];
        *buf = 138412290;
        v28 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "LMI: Requesting membership in pending conversation for link %@", buf, 0xCu);
      }

      v15 = [CSDMessagingConversationMessage alloc];
      v16 = [v12 link];
      v17 = [(CSDMessagingConversationMessage *)v15 initWithType:10 groupUUID:0 link:v16];

      v18 = [*(a1 + 32) linkManager];
      v19 = [v12 link];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100174ED8;
      v21[3] = &unk_10061CEF8;
      v21[4] = *(a1 + 32);
      v22 = v12;
      v20 = v12;
      [v18 encryptLetMeInRequest:v17 link:v19 completionHandler:v21];
    }

    else
    {
LABEL_10:

LABEL_15:
      v20 = sub_100004778();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1004777E0(a1);
      }
    }
  }
}

void sub_100174ED8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100174FF0;
  block[3] = &unk_10061A428;
  v17 = v9;
  v18 = v7;
  v19 = v8;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v13 = v8;
  v14 = v7;
  v15 = v9;
  dispatch_async(v10, block);
}

void sub_100174FF0(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(a1 + 32) && *(a1 + 40) && *(a1 + 48))
  {
    [*(a1 + 56) setLetMeInKeyAgreement:?];
    v4 = [CSDMessagingConversationMessage alloc];
    v5 = *(a1 + 40);
    v6 = [*(a1 + 56) link];
    v2 = [(CSDMessagingConversationMessage *)v4 initWithEncryptedMessage:v5 enclosedType:10 link:v6];

    v7 = [v2 data];
    v8 = [*(a1 + 56) localMember];
    v9 = [*(a1 + 64) service];
    v10 = [v8 handle];
    v11 = [v10 value];
    v12 = [v9 accountWithCallerID:v11];

    v13 = [*(a1 + 56) link];
    v14 = [v13 pseudonym];
    v15 = v8;
    v16 = [TUHandle normalizedGenericHandleForValue:v14];

    v17 = v12;
    v18 = [NSDictionary alloc];
    v19 = [v18 initWithObjectsAndKeys:{&off_10063ECF0, IDSSendMessageOptionForceQuery, 0}];
    v20 = [*(a1 + 64) sendDataBlock];
    v45 = v16;
    v21 = TUCopyIDSCanonicalAddressForHandle();
    v22 = v19;
    v23 = [NSSet setWithObject:v21];
    v54 = 0;
    LOBYTE(v19) = (v20)[2](v20, v7, v17, v23, v15, v19, &v54, 0, 0);
    v46 = v54;

    v24 = sub_100004778();
    v25 = v24;
    if (v19)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [*(a1 + 56) link];
        *buf = 138412290;
        v57 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Sent let me in request for link %@", buf, 0xCu);
      }

      [*(a1 + 56) setLetMeInRequestState:2];
      if (v46)
      {
        v27 = [*(a1 + 56) link];
        v28 = [v27 pseudonym];
        v29 = [*(a1 + 64) mutablePseudonymsByRequestIdentifiers];
        [v29 setObject:v28 forKeyedSubscript:v46];
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v25 = [*(a1 + 64) delegateToQueue];
      v30 = [v25 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v41 = v22;
        v42 = v17;
        v43 = v15;
        v44 = v7;
        v32 = *v51;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v51 != v32)
            {
              objc_enumerationMutation(v25);
            }

            v34 = *(*(&v50 + 1) + 8 * i);
            v35 = [*(a1 + 56) tuConversation];
            v36 = [*(a1 + 64) delegateToQueue];
            v37 = [v36 objectForKey:v34];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1001754C8;
            block[3] = &unk_100619E58;
            block[4] = v34;
            v48 = v35;
            v49 = *(a1 + 64);
            v38 = v35;
            dispatch_async(v37, block);
          }

          v31 = [v25 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v31);
        v7 = v44;
        v17 = v42;
        v15 = v43;
        v39 = v45;
        v40 = v46;
        v22 = v41;
        goto LABEL_23;
      }
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100477854();
    }

    v39 = v45;
    v40 = v46;
LABEL_23:

    goto LABEL_4;
  }

  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100477890(v1);
  }

LABEL_4:
}

void sub_1001754C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_100175C28(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UUID: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    [v5 setLetMeInRequestState:*(a1 + 56)];
    [v5 setLink:*(a1 + 48)];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [*(a1 + 40) delegateToQueue];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      obj = v6;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          v12 = [v5 tuConversation];
          v13 = [*(a1 + 40) delegateToQueue];
          v14 = [v13 objectForKey:v11];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100175F04;
          block[3] = &unk_100619E58;
          block[4] = v11;
          v22 = v12;
          v23 = *(a1 + 40);
          v15 = v12;
          dispatch_async(v14, block);
        }

        v6 = obj;
        v8 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v6;
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) mutableConversationsByUUID];
      v19 = [v18 allKeys];
      *buf = 138412546;
      v29 = v17;
      v6 = v16;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with UUID %@. All conversation UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_100175F04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_1001766B8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v10 = 138412290;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "UUID: %@", &v10, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    [v5 startAudio];
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) mutableConversationsByUUID];
      v9 = [v8 allKeys];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with UUID %@. All conversations UUIDs: %@", &v10, 0x16u);
    }
  }
}

void sub_100176AF4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v5 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v3 = *(a1 + 32);
  if (v5)
  {
    [v3 _leaveConversation:v5 withContext:*(a1 + 48)];
  }

  else
  {
    v4 = [v3 _removePendingConversationsWithTemporaryGroupUUIDIfNecessary:*(a1 + 40)];
  }
}

void sub_100176C08(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 allValues];

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

        [*(a1 + 32) _leaveConversation:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_100176DEC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) mutablePseudonymsByCallUUID];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_100176EFC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutablePseudonymsByCallUUID];
  [v2 removeObjectForKey:*(a1 + 40)];
}

void sub_10017700C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setUplinkMuted:*(a1 + 48)];
}

void sub_100177134(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setVideo:*(a1 + 48)];
}

void sub_100177254(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  v4 = [v3 remoteMembers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v6 = [TUConversationMember alloc];
    v7 = [v3 activeRemoteParticipants];
    v8 = [v7 allObjects];
    v9 = [v8 firstObject];
    v10 = [v9 tuConversationParticipant];
    v11 = [v10 handle];
    v12 = [v6 initWithHandle:v11];

    v13 = [CSDMessagingConversationMessage alloc];
    v14 = [v3 groupUUID];
    v15 = [(CSDMessagingConversationMessage *)v13 initWithType:22 groupUUID:v14 link:0];

    v16 = *(a1 + 32);
    v17 = [(CSDMessagingConversationMessage *)v15 data];
    [v16 sendData:v17 onConversation:v3 toMember:v12];
  }

  else
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10047793C();
    }
  }
}

void sub_1001774A4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setVideoEnabled:*(a1 + 48)];
}

void sub_1001775CC(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 temporaryGroupUUID];
        v11 = [v10 isEqual:*(a1 + 40)];

        if (v11)
        {
          v12 = v9;

          [v12 setUplinkMuted:*(a1 + 48)];
          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [v6 link];
  v14 = [v13 pseudonym];

  if (v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 link];
      v17 = [v16 pseudonym];
      v18 = [v6 conversationGroupUUID];
      *buf = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating pending conversation with pseudonym: %@, conversation group UUID: %@", buf, 0x16u);
    }

    v19 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
    v20 = [v6 link];
    v21 = [v20 pseudonym];
    [v19 setObject:v6 forKeyedSubscript:v21];
  }
}

void sub_1001778F0(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 temporaryGroupUUID];
        v11 = [v10 isEqual:*(a1 + 40)];

        if (v11)
        {
          v12 = v9;

          [v12 setVideoEnabled:*(a1 + 48)];
          v6 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = [v6 link];
  v14 = [v13 pseudonym];

  if (v14)
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 link];
      v17 = [v16 pseudonym];
      v18 = [v6 conversationGroupUUID];
      *buf = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Updating pending conversation with pseudonym: %@, conversation group UUID: %@", buf, 0x16u);
    }

    v19 = [*(a1 + 32) mutablePendingConversationsByPseudonym];
    v20 = [v6 link];
    v21 = [v20 pseudonym];
    [v19 setObject:v6 forKeyedSubscript:v21];
  }
}

void sub_100177C78(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked for participant to share their screen: %@", &v15, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];

  if (v5)
  {
    v6 = [*(a1 + 32) handle];
    v7 = TUNormalizedHandleForTUHandle();

    v8 = [v5 remoteParticipantForHandle:v7];
    if (v8)
    {
      if ([*(a1 + 40) conversationContainsScreenShareRequest:v5 localRequest:1 requestHandle:v7])
      {
        v9 = sub_100004778();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1004779B4();
        }
      }

      else
      {
        [*(a1 + 40) cancelPreviouslySentScreenShareRequests:v5];
        v13 = [TUScreenSharingRequest alloc];
        v14 = +[NSUUID UUID];
        v9 = [v13 initWithHandle:v7 type:1 originType:2 UUID:v14 participantIdentifier:objc_msgSend(*(a1 + 32) metadata:{"identifier"), 0}];

        [v5 addScreenSharingRequest:v9];
        [*(a1 + 40) requestParticipant:*(a1 + 32) toScreenShareWithRequest:v9 conversation:v5];
      }
    }

    else
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100477A24();
      }
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v11 = [*(a1 + 40) mutableConversationsByUUID];
      v12 = [v11 allKeys];
      v15 = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v15, 0x16u);
    }
  }
}

void sub_100177FDC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = sub_100004778();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) mutableConversationsByUUID];
    v12 = [v11 allKeys];
    v18 = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v18, 0x16u);

    goto LABEL_17;
  }

  v4 = [*(a1 + 48) handle];
  v5 = [v3 remoteParticipantForHandle:v4];

  if (!v5)
  {
    v13 = [*(a1 + 32) featureFlags];
    if ([v13 sharePlayInCallsEnabled])
    {
      v14 = [v3 provider];
      v15 = [v14 isTelephonyWithSharePlayProvider];

      if (v15)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100477A94();
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_3:
  v6 = [*(a1 + 48) isLocallyOriginated];
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = v5 == 0;
  if (v6)
  {
    [v7 requestParticipant:v5 toCancelScreenShareRequest:v8 conversation:v3 allowMemberFallbackForMessage:v9];
  }

  else
  {
    [v7 denyScreenShareRequestFrom:v5 screenShareRequest:v8 conversation:v3 allowMemberFallbackForMessage:v9];
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 48);
    v18 = 138412546;
    v19 = v17;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cancel screen share request: %@ from conversation: %@", &v18, 0x16u);
  }

  [v3 removeScreenSharingRequest:*(a1 + 48)];
LABEL_18:
}

void sub_100178394(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!v3)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to find conversation with UUID: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = *(a1 + 56);
  if (v4 == [v3 isScreenEnabled])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 56))
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = [v3 UUID];
      *buf = 138412546;
      v42 = v6;
      v43 = 2112;
      v44 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not setting screenEnabled to %@ because conversation %@ is already in that state", buf, 0x16u);
    }

LABEL_8:

    goto LABEL_22;
  }

  objc_initWeak(&location, *(a1 + 32));
  v31 = _NSConcreteStackBlock;
  v32 = 3221225472;
  v33 = sub_1001788D4;
  v34 = &unk_10061CF20;
  objc_copyWeak(&v38, &location);
  v9 = v3;
  v35 = v9;
  v39 = *(a1 + 56);
  v36 = *(a1 + 48);
  v37 = *(a1 + 40);
  v10 = objc_retainBlock(&v31);
  if (*(a1 + 56) != 1)
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Removing all pending screenEnabled blocks since screenEnabled=NO", buf, 2u);
    }

    v19 = [*(a1 + 32) screenCaptureQueue];
    [v19 setObject:0 forKeyedSubscript:*(a1 + 40)];

    goto LABEL_20;
  }

  v11 = [*(a1 + 32) screenCaptureQueue];
  v12 = [v11 objectForKeyedSubscript:*(a1 + 40)];
  v13 = v12 == 0;

  if (v13)
  {
    v20 = [v9 localParticipant];
    v21 = [v20 audioVideoMode] == 0;

    if (v21)
    {
      v22 = sub_100004778();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Upgrading to Audio mode since screenEnabled is YES", buf, 2u);
      }

      v23 = *(a1 + 32);
      v24 = [v9 UUID];
      [v23 setLocalParticipantAudioVideoMode:1 forConversationUUID:v24];

      v25 = objc_retainBlock(v10);
      v26 = [*(a1 + 32) screenCaptureQueue];
      [v26 setObject:v25 forKeyedSubscript:*(a1 + 40)];

      v27 = sub_100004778();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = [*(a1 + 32) screenCaptureQueue];
        v29 = [v28 objectForKeyedSubscript:*(a1 + 40)];
        v30 = objc_retainBlock(v29);
        *buf = 138412290;
        v42 = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Queued up screenEnable request: %@", buf, 0xCu);
      }

      goto LABEL_21;
    }

LABEL_20:
    (v10[2])(v10);
LABEL_21:

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [*(a1 + 32) screenCaptureQueue];
    v16 = [v15 objectForKeyedSubscript:*(a1 + 40)];
    v17 = objc_retainBlock(v16);
    *buf = 138412290;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not enabling ScreenSharing because we already have a queued up request %@", buf, 0xCu);
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
LABEL_22:
}

void sub_100178898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001788D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 32) setScreenEnabled:*(a1 + 64) attributes:*(a1 + 40)];
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 64))
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      v13 = 138412802;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting screen enabled %@ with attributes %@ for conversation UUID: %@", &v13, 0x20u);
    }

    v7 = *(a1 + 64);
    v8 = [WeakRetained screenSharingActivityManager];
    v9 = v8;
    if (v7 == 1)
    {
      v10 = [*(a1 + 32) UUID];
      v11 = [*(a1 + 32) localMember];
      v12 = [v11 handle];
      [v9 startActivitySessionOnConversationWithUUID:v10 for:v12 with:*(a1 + 40)];
    }

    else
    {
      [v8 stopActivitySession];
    }

    [WeakRetained conversationChanged:*(a1 + 32)];
  }
}

void sub_100178B1C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setVideoPaused:*(a1 + 48)];
}

void sub_100178C44(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setAudioPaused:*(a1 + 48)];
}

void sub_100178D6C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setRelaying:*(a1 + 48)];
}

void sub_100178E94(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setScreening:*(a1 + 48)];
}

void sub_100178FBC(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setAudioInjectionAllowed:*(a1 + 48)];
}

void sub_100179168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100179180(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 isRelaying];
}

void sub_1001792DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001792F4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 isScreening];
}

void sub_100179454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017946C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 presentationState];
}

void sub_10017959C(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setPresentationState:*(a1 + 48)];
}

void sub_1001796E4(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setPresentationRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

void sub_100179810(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v3 setConversationGridDisplayMode:*(a1 + 48)];
}

void sub_100179954(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  [v4 setScreenShareAttributes:*(a1 + 48)];
  v3 = [*(a1 + 32) screenSharingActivityManager];
  [v3 broadcastAttributes:*(a1 + 48)];
}

void sub_100179B20(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableConversationsByUUID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setIsNearbySharePlay:*(a1 + 48)];
    v15 = v3;
    v4 = [v3 tuConversation];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = [*(a1 + 32) delegateToQueue];
    v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      do
      {
        v8 = 0;
        do
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * v8);
          v10 = [*(a1 + 32) delegateToQueue];
          v11 = [v10 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100179D94;
          block[3] = &unk_100619E58;
          v18 = v4;
          v19 = v9;
          v20 = *(a1 + 32);
          dispatch_async(v11, block);

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v6);
    }

    v3 = v15;
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = [*(a1 + 32) mutableConversationsByUUID];
      v14 = [v13 allKeys];
      *buf = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot set isNearbySharePlay. Could not find conversation with conversationUUID %@. All conversation UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_100179D94(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    v3 = objc_opt_respondsToSelector();
    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = [*(a1 + 32) provider];
      if ([v4 shouldHandleUpdateForProvider:v5])
      {
      }

      else
      {
        v7 = *(a1 + 40);
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          return;
        }
      }
    }

    else
    {
      v6 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        return;
      }
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) provider];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
    }

    [*(a1 + 40) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 32)];
  }
}

void sub_100179FBC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ remoteMembers: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 removeRemoteMembers:*(a1 + 40) triggeredLocally:0];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 48) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10017A4B8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v28 = v3;
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ remoteMembers: %@", buf, 0x16u);
  }

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 48);
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ otherInvitedHandles: %@", buf, 0x16u);
  }

  v8 = [*(a1 + 56) mutableConversationsByUUID];
  v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];

  if (v9)
  {
    v10 = [*(a1 + 56) deviceSupport];
    if ([v10 isGreenTea])
    {
      v11 = [*(a1 + 56) _conversationIsOverGreenTeaCapacity:v9 addingMembers:*(a1 + 40)];

      if (v11)
      {
        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100477B04(v9);
        }

        v13 = +[CSDConversationLeaveContext greenTeaLeaveContext];
        [v9 leaveUsingContext:v13];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v17 = *(a1 + 56);
    v18 = *(a1 + 40);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10017A7E4;
    v23[3] = &unk_10061A428;
    v24 = v9;
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    *&v21 = *(a1 + 64);
    *(&v21 + 1) = *(a1 + 56);
    *&v22 = v19;
    *(&v22 + 1) = v20;
    v25 = v22;
    v26 = v21;
    [v17 maybeAddComplementaryAssociationVoucherFor:v18 toLocalMemberOf:v24 completion:v23];

    v13 = v24;
    goto LABEL_15;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = [*(a1 + 56) mutableConversationsByUUID];
    v16 = [v15 allKeys];
    *buf = 138412546;
    v28 = v14;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
  }

LABEL_15:
}

void sub_10017A7E4(uint64_t a1)
{
  [*(a1 + 32) addRemoteMembers:*(a1 + 40) otherInvitedHandles:*(a1 + 48) invitationPreferences:*(a1 + 56) triggeredLocally:1];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) link];
  [v2 addInvitedMemberHandlesFromAddedRemoteMembers:v3 toConversationLink:v4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 64) delegateToQueue];
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [*(a1 + 32) tuConversation];
          v11 = [*(a1 + 64) delegateToQueue];
          v12 = [v11 objectForKey:v9];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017AA04;
          block[3] = &unk_10061A450;
          block[4] = v9;
          v16 = v10;
          v17 = *(a1 + 64);
          v18 = *(a1 + 40);
          v13 = v10;
          dispatch_async(v12, block);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

void sub_10017AA04(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversation:*(a1 + 40) addedMembersLocally:*(a1 + 56)];
}

void sub_10017AC24(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v37 = v3;
    v38 = 2112;
    v39 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ context: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 40) presentationContext];
    v8 = v7;
    if (v7)
    {
      [v6 setPresentationMode:{-[NSObject mode](v7, "mode")}];
    }

    [v6 setHandoffContext:*(a1 + 40)];
    v9 = [*(a1 + 48) mutableConversationsRequestingUpgradeWithPreferences];
    v10 = [*(a1 + 40) invitationPreferences];
    [v9 setObject:v10 forKey:*(a1 + 32)];

    v11 = [*(a1 + 40) invitationPreferences];
    [v6 setInvitationPreferences:v11];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [*(a1 + 48) delegateToQueue];
    v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          [v6 tuConversation];
          v18 = v17 = v6;
          v19 = [*(a1 + 48) delegateToQueue];
          v20 = [v19 objectForKey:v16];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017AF90;
          block[3] = &unk_100619E58;
          block[4] = v16;
          v29 = v18;
          v30 = *(a1 + 48);
          v21 = v18;
          v6 = v17;
          v22 = v21;
          dispatch_async(v20, block);
        }

        v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    v23 = v8;
  }

  else
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = [*(a1 + 48) mutableConversationsByUUID];
      v26 = [v25 allKeys];
      *buf = 138412546;
      v37 = v24;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10017AF90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_10017B194(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v11 = 67109378;
    *v12 = v3;
    *&v12[4] = 2112;
    *&v12[6] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setSharePlayHandedOff: %d onConversationWithUUID: %@", &v11, 0x12u);
  }

  v5 = [*(a1 + 40) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 setSharePlayHandedOff:*(a1 + 48)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      *v12 = v8;
      *&v12[8] = 2112;
      *&v12[10] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10017B75C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100004778();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) handle];
      v10 = [v9 value];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Signed complementary association voucher for member %@: %@", &v17, 0x16u);
    }

    v11 = [*(a1 + 40) localMember];
    [v11 setValidationSource:2];

    v12 = [*(a1 + 40) localMember];
    [v12 setAssociationVoucher:v5];

    v13 = *(a1 + 48);
    v8 = [*(a1 + 40) localMember];
    v14 = [v8 handle];
    v15 = [v13 tuAssociationForHandle:v14];
    v16 = [*(a1 + 40) localMember];
    [v16 setAssociation:v15];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_100477BD0();
  }

  dispatch_group_leave(*(a1 + 56));
}

void sub_10017BF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017BF28(uint64_t a1)
{
  v2 = [*(a1 + 32) activeConversation];
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) = [v2 allParticipantsSupportSharePlay];
    v2 = v3;
  }
}

void sub_10017C33C(uint64_t a1)
{
  [*(a1 + 32) setUsesNotificationCenter:0];
  [*(a1 + 32) setRepresentedApplicationBundle:TUBundleIdentifierTelephonyUtilitiesFramework];
  v2 = +[IMUserNotificationCenter sharedInstance];
  [v2 addUserNotification:*(a1 + 32) listener:0 completionHandler:0];
}

void sub_10017C494(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v31 = v3;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ update messagesGroupName: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 updateMessagesGroupName:*(a1 + 40)];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [*(a1 + 48) delegateToQueue];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      obj = v7;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v6 tuConversation];
          [*(a1 + 48) delegateToQueue];
          v15 = v14 = v6;
          v16 = [v15 objectForKey:v12];

          v6 = v14;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017C778;
          block[3] = &unk_100619E58;
          block[4] = v12;
          v23 = v13;
          v24 = *(a1 + 48);
          v17 = v13;
          dispatch_async(v16, block);
        }

        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = [*(a1 + 48) mutableConversationsByUUID];
      v20 = [v19 allKeys];
      *buf = 138412546;
      v31 = v18;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10017C778(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationChanged:*(a1 + 40)];
}

void sub_10017C974(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v30 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ update group photo", buf, 0xCu);
  }

  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  v21 = v5;
  if (v5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [*(a1 + 40) delegateToQueue];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v21 tuConversation];
            v13 = v12 = v6;
            v14 = [*(a1 + 40) delegateToQueue];
            v15 = [v14 objectForKey:v11];

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10017CC58;
            block[3] = &unk_100619E58;
            block[4] = v11;
            v23 = v13;
            v24 = *(a1 + 40);
            v16 = v13;
            v6 = v12;
            v17 = v16;
            dispatch_async(v15, block);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = [*(a1 + 40) mutableConversationsByUUID];
      v20 = [v19 allKeys];
      *buf = 138412546;
      v30 = v18;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", buf, 0x16u);
    }
  }
}

void sub_10017CC58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) conversationUpdateMessagesGroupPhoto:*(a1 + 40)];
}

void sub_10017CE78(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "conversationUUID: %@ localParticipantCluster: %@", &v7, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    [v6 updateLocalParticipantCluster:*(a1 + 40)];
  }
}

uint64_t sub_10017D4B8(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbySessionManager];
  [v2 advertiseGroupActivityWithAdvertisementID:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t sub_10017D654(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbySessionManager];
  [v2 stopAdvertisingGroupActivity];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10017D8A8(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "leave conversationUUID: %@ activitySession: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 40) UUID];
    [v6 leaveActivitySessionWithUUID:v7];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 48) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10017DB14(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "end conversationUUID: %@ activitySession: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 40) UUID];
    [v6 removeActivitySessionWithUUID:v7 usingTerminatingHandle:0];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(a1 + 48) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10017DD84(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138412546;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Asked to present dismissal alert for activitySessionUUID: %@ conversationUUID: %@", &v11, 0x16u);
  }

  v5 = [*(a1 + 48) mutableConversationsByUUID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 40)];

  if (v6)
  {
    [v6 presentDismissalAlertForActivitySessionWithUUID:*(a1 + 32)];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 48) mutableConversationsByUUID];
      v10 = [v9 allKeys];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v11, 0x16u);
    }
  }
}

void sub_10017E184(uint64_t a1)
{
  v2 = [*(a1 + 32) featureFlags];
  v3 = [v2 sharePlayWithAirplayEnabled];

  v4 = sub_100004778();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      if (*(a1 + 56))
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting using airplay: %{public}@ on activity session: %@", &v14, 0x16u);
    }

    v8 = [*(a1 + 32) mutableConversationsByUUID];
    v4 = [v8 objectForKeyedSubscript:*(a1 + 48)];

    if (v4)
    {
      v9 = *(a1 + 56);
      v10 = [*(a1 + 40) UUID];
      [v4 setUsingAirplay:v9 forActivitySessionUUID:v10];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v12 = [*(a1 + 32) mutableConversationsByUUID];
        v13 = [v12 allKeys];
        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation with conversationUUID %@. All conversations UUIDs: %@", &v14, 0x16u);
      }
    }
  }

  else if (v5)
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SharePlayWithAirplay ff is turned off, not changing activity session airplay state", &v14, 2u);
  }
}

void sub_10017E880(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10017EA34;
          block[3] = &unk_100619E58;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v13 = v11;
          dispatch_async(v9, block);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10017EB34(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412546;
    v85 = v3;
    v86 = 2112;
    v87 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received launchApplication request for UUID: %@ forceBackground: %@", buf, 0x16u);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [*(a1 + 40) mutableConversationsByUUID];
  v62 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
  v6 = 0;
  if (!v62)
  {
LABEL_36:

    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_100477CEC(a1);
    }

    v40 = *(a1 + 48);
    if (v40)
    {
      v41 = TUErrorDomain;
      v80 = NSLocalizedDescriptionKey;
      v81 = @"Failed to find conversation with activitySession";
      v42 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v43 = [NSError errorWithDomain:v41 code:1 userInfo:v42];
      (*(v40 + 16))(v40, v43);

      v20 = 0;
      v44 = 0;
LABEL_49:
    }

    else
    {
      v20 = 0;
      v44 = 0;
    }

    goto LABEL_50;
  }

  v60 = *v75;
  *&v5 = 138412546;
  v58 = v5;
LABEL_8:
  v7 = 0;
  while (1)
  {
    if (*v75 != v60)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v74 + 1) + 8 * v7);
    v9 = [*(a1 + 40) mutableConversationsByUUID];
    v61 = v8;
    v10 = [v9 objectForKeyedSubscript:v8];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v63 = v10;
    v11 = [v10 activitySessions];
    v12 = [v11 countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v71;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v71 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v70 + 1) + 8 * i);
          v17 = [v16 identifier];
          v18 = [v17 isEqual:*(a1 + 32)];

          if (v18)
          {
            v19 = v16;

            v6 = v19;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v70 objects:v82 count:16];
      }

      while (v13);
    }

    v20 = v63;
    if (!v6)
    {
      v21 = [*(a1 + 40) featureFlags];
      v22 = [v21 mochiEnabled];

      if (!v22)
      {
        goto LABEL_30;
      }

      v23 = *(a1 + 32);
      v24 = [v63 stagedActivitySession];
      v25 = [v24 UUID];
      LODWORD(v23) = [v23 isEqual:v25];

      if (!v23)
      {
LABEL_30:
        v6 = 0;
        goto LABEL_31;
      }

      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 32);
        v28 = [v63 stagedActivitySession];
        *buf = v58;
        v85 = v27;
        v86 = 2112;
        v87 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Launch request for UUID: %@ is trying to activate a staged activitySession. %@", buf, 0x16u);
      }

      v29 = [v63 stagedActivitySession];
      v30 = [v29 activity];
      v31 = [v30 isPlaceholderActivity];

      if (!v31)
      {
        v34 = [v63 stagedActivitySession];
        v35 = [v34 mutableCopy];

        [v35 setIsLocallyInitiated:1];
        [v35 setIsStageInitiated:1];
        v36 = *(a1 + 40);
        v37 = [v35 copy];
        v6 = [v36 createCPActivitySessionForActivitySession:v37 onConversationWithUUID:v61];

        goto LABEL_31;
      }

      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Tried to launch placeholder activity.", buf, 2u);
      }

      v33 = [v63 stagedActivitySession];
      v6 = 0;
      if (v33)
      {
        break;
      }
    }

LABEL_31:
    v33 = [v6 tuConversationActivitySession];
    if (v33)
    {
      break;
    }

    if (++v7 == v62)
    {
      v38 = [obj countByEnumeratingWithState:&v74 objects:v83 count:16];
      v62 = v38;
      if (v38)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }
  }

  v44 = v33;

  v45 = [*(a1 + 40) sharePlaySystemStateObserver];
  v46 = [v45 allowSharePlay];

  if (v46)
  {
    [CSDAnalyticsReporter sendManualLaunchAttemptEventWithActivitySession:v44];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10017F280;
    v64[3] = &unk_10061CFC0;
    v47 = *(a1 + 48);
    v48 = *(a1 + 40);
    v68 = v47;
    v64[4] = v48;
    v6 = v6;
    v65 = v6;
    v44 = v44;
    v66 = v44;
    v69 = *(a1 + 57);
    v67 = *(a1 + 32);
    v49 = objc_retainBlock(v64);
    [v6 updateApplicationState:0];
    v50 = [v63 activitySessionManager];
    v51 = [v50 applicationLauncher];
    v52 = v51;
    if (v6)
    {
      v53 = v6;
    }

    else
    {
      v53 = v44;
    }

    [v51 launchAppForActivitySession:v53 options:0 completion:v49];

    v42 = v68;
    goto LABEL_49;
  }

  v54 = sub_100004778();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Not launching application because SharePlay is not allowed", buf, 2u);
  }

  v55 = *(a1 + 48);
  if (v55)
  {
    v56 = TUErrorDomain;
    v78 = NSLocalizedDescriptionKey;
    v79 = @"SharePlay not allowed";
    v42 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v57 = [NSError errorWithDomain:v56 code:1 userInfo:v42];
    (*(v55 + 16))(v55, v57);

    goto LABEL_49;
  }

LABEL_50:
}

void sub_10017F280(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 64);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }

  if ((a2 & 1) == 0)
  {
    v14 = [*(a1 + 32) queue];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10017F5A0;
    v24[3] = &unk_100619D38;
    v25 = *(a1 + 40);
    dispatch_sync(v14, v24);

    v13 = v25;
LABEL_14:

    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
    if (*(a1 + 72) == 1)
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 56);
        *buf = 138412290;
        v27 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authorizing session UUID due to external authorization: %@", buf, 0xCu);
      }

      v9 = +[CPApplicationPolicyManager sharedInstance];
      v10 = [*(a1 + 40) activity];
      v11 = [v10 bundleIdentifier];
      [v9 setAuthorization:1 forBundleID:v11];

      v12 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10017F5AC;
      block[3] = &unk_100619D38;
      v23 = *(a1 + 40);
      dispatch_sync(v12, block);

      v13 = v23;
    }

    else
    {
      v17 = [*(a1 + 32) queue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10017F5B4;
      v19[3] = &unk_100619E58;
      v18 = *(a1 + 40);
      v19[4] = *(a1 + 32);
      v20 = v18;
      v21 = *(a1 + 56);
      dispatch_sync(v17, v19);

      v13 = v20;
    }

    goto LABEL_14;
  }

  v15 = sub_100004778();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 48);
    *buf = 138412290;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not requesting authorization since we don't have a CPActivitySession for: %@", buf, 0xCu);
  }

LABEL_15:
}

void sub_10017F5B4(id *a1)
{
  v2 = [a1[4] activityAuthorizationManager];
  v3 = [a1[5] activity];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017F688;
  v7[3] = &unk_10061AC68;
  v4 = a1[6];
  v5 = a1[4];
  v6 = a1[5];
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [v2 requestAuthorizationForApplicationLaunchWithActivity:v3 completionHandler:v7];
}

void sub_10017F688(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100477D60();
    }
  }

  else if (a2)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Authorizing session UUID: %@", &v10, 0xCu);
    }

    v9 = [*(a1 + 40) queue];
    dispatch_assert_queue_V2(v9);

    [*(a1 + 48) permitJoin];
  }
}

void sub_10017F91C(uint64_t a1)
{
  v6 = [*(a1 + 32) activityAuthorizationManager];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) screenSharingActivityManager];
  v5 = [v4 localScreenShareAttributes];
  [v6 requestAuthorizationForApplicationWithBundleIdentifier:v3 preparing:1 overrides:v2 currentScreenShareAttributes:v5 completionHandler:*(a1 + 56)];
}

void sub_10017FA70(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Revoking background authorization for bundle ID for %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 40) mutableConversationsByUUID];
  v5 = [v4 allValues];

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

        v10 = [*(*(&v12 + 1) + 8 * v9) activitySessionManager];
        v11 = [v10 applicationLauncher];
        [v11 revokeBackgroundAuthorizationForBundleID:*(a1 + 32)];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_10017FCAC(uint64_t a1)
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting activity session scene associations for bundle ID for %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) activeConversation];
  v5 = v4;
  if (v4)
  {
    [v4 resetActivitySessionSceneAssociationsForBundleID:*(a1 + 32)];
  }
}

void sub_100180CC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 40) provider];
    if ([v4 shouldHandleUpdateForProvider:v5])
    {
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        return;
      }
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      return;
    }
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) provider];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Delegate should handle conversation update: %@ for provider: %@", &v12, 0x16u);
  }

  [*(a1 + 32) conversationManager:*(a1 + 48) avModeChanged:*(a1 + 64) toAVMode:*(a1 + 72) forParticipantWithHandle:*(a1 + 56) forConversation:*(a1 + 40)];
}