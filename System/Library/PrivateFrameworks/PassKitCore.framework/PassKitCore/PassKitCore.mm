const char *PDNFSecureXPCEventIsContactlessPresentationEvent(const char *result, void *a2)
{
  if (result)
  {
    v3 = strcmp(result, "com.apple.stockholm.wallet.pre-arm");
    if (a2)
    {
      if (!v3)
      {
        *a2 = 0;
      }
    }

    return (v3 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PDNFSecureXPCEventIsExpressTransactionEvent(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    if (!strcmp(result, "com.apple.stockholm.express.enter"))
    {
      if (!a2)
      {
        return 1;
      }

      result = 0;
      goto LABEL_39;
    }

    if (strcmp(v3, "com.apple.stockholm.express.exit"))
    {
      if (!strcmp(v3, "com.apple.stockholm.express.transaction.start"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 2;
      }

      else if (!strcmp(v3, "com.apple.stockholm.express.transaction.timeout"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 3;
      }

      else if (!strcmp(v3, "com.apple.stockholm.express.transaction.end"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 4;
      }

      else if (!strcmp(v3, "com.apple.stockholm.express.transaction.end.incompatible"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 5;
      }

      else if (!strcmp(v3, "com.apple.stockholm.express.transaction.end.failed"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 6;
      }

      else if (!strcmp(v3, "com.apple.stockholm.express.transaction.end.keypairingmode"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 7;
      }

      else if (!strcmp(v3, "com.apple.stockholm.express.transaction.notfound"))
      {
        if (!a2)
        {
          return 1;
        }

        result = 8;
      }

      else
      {
        if (strcmp(v3, "com.apple.stockholm.express.field.ecp2.tci"))
        {
          if (strcmp(v3, [@"com.apple.stockholm.present" UTF8String]))
          {
            if (strcmp(v3, [@"com.apple.stockholm.biometrics.enable" UTF8String]))
            {
              return 0;
            }

            if (!a2)
            {
              return 1;
            }

            result = 11;
            goto LABEL_39;
          }

          if (a2)
          {
            result = 10;
            goto LABEL_39;
          }

          return 1;
        }

        if (!a2)
        {
          return 1;
        }

        result = 9;
      }

LABEL_39:
      *a2 = result;
      return 1;
    }

    result = 1;
    if (a2)
    {
      goto LABEL_39;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PDNFSecureXPCEventIsFieldDetectEvent(uint64_t result, uint64_t *a2)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  if (!strcmp(result, "com.apple.stockholm.wallet.presentment.field-detect"))
  {
    if (!a2)
    {
      return 1;
    }

    result = 0;
LABEL_8:
    *a2 = result;
    return 1;
  }

  if (strcmp(v3, "com.apple.stockholm.wallet.presentment.field-detect.exit"))
  {
    return 0;
  }

  result = 1;
  if (a2)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t PDNFSecureXPCEventIsSecureElementEvent(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v3 = result;
    if (!strcmp(result, "com.apple.stockholm.tsm.script.executed"))
    {
      if (!a2)
      {
        return 1;
      }

      result = 0;
      goto LABEL_18;
    }

    if (strcmp(v3, "com.apple.stockholm.se.update.by.tsm"))
    {
      if (strcmp(v3, "com.apple.stockholm.express.applets.updated"))
      {
        if (strcmp(v3, "com.apple.stockholm.express.config.failure"))
        {
          if (strcmp(v3, "com.apple.stockhom.radio.stateChanged"))
          {
            return 0;
          }

          if (!a2)
          {
            return 1;
          }

          result = 4;
          goto LABEL_18;
        }

        if (a2)
        {
          result = 3;
          goto LABEL_18;
        }

        return 1;
      }

      if (!a2)
      {
        return 1;
      }

      result = 2;
LABEL_18:
      *a2 = result;
      return 1;
    }

    result = 1;
    if (a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PDNFSecureXPCEventIsAccessKeyEvent(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result)
  {
    v5 = [[NSString alloc] initWithUTF8String:result];
    if ([v5 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.disconnect"])
    {
      v6 = 0;
      v7 = 1;
    }

    else
    {
      if ([v5 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.lock"])
      {
        v6 = 0;
        v8 = 1;
        v7 = 2;
        if (!a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.unlock"])
      {
        v6 = 0;
        v8 = 1;
        v7 = 3;
        if (!a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.status.update"])
      {
        v6 = 0;
        v8 = 1;
        v7 = 5;
        if (!a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"deprecated"])
      {
        v6 = 0;
        v8 = 1;
        v7 = 6;
        if (!a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.start"])
      {
        v6 = 0;
        v8 = 1;
        v7 = 7;
        if (!a2)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ([v5 isEqualToString:@"com.apple.secureelementservice.dck.event.vehicle.did.rke.action.complete"])
      {
        v6 = 0;
        v8 = 1;
        v7 = 8;
        if (!a2)
        {
LABEL_26:

          return v8;
        }

LABEL_23:
        if (a3)
        {
          if (v8)
          {
            *a3 = v6;
            *a2 = v7;
          }
        }

        goto LABEL_26;
      }

      if ([v5 isEqualToString:@"com.apple.secureelementservice.acwg.event.did.connect"])
      {
        v7 = 0;
      }

      else
      {
        if (([v5 isEqualToString:@"com.apple.secureelementservice.acwg.event.did.disconnect"] & 1) == 0)
        {
          if ([v5 isEqualToString:@"com.apple.secureelementservice.acwg.event.did.lock"])
          {
            v6 = 1;
            v7 = 2;
          }

          else if ([v5 isEqualToString:@"com.apple.secureelementservice.acwg.event.did.unlock"])
          {
            v6 = 1;
            v7 = 3;
          }

          else
          {
            if (([v5 isEqualToString:@"com.apple.secureelementservice.acwg.event.did.jam"] & 1) == 0)
            {
              v9 = [v5 isEqualToString:@"com.apple.secureelementservice.acwg.event.did.status.update"];
              v8 = v9;
              if (v9)
              {
                v7 = 5;
              }

              else
              {
                v7 = 0;
              }

              v6 = v9;
              if (!a2)
              {
                goto LABEL_26;
              }

              goto LABEL_23;
            }

            v6 = 1;
            v7 = 4;
          }

          goto LABEL_4;
        }

        v7 = 1;
      }

      v6 = 1;
    }

LABEL_4:
    v8 = 1;
    if (!a2)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t PDNFSecureXPCEventIsAccessDeviceEvent(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = [[NSString alloc] initWithUTF8String:result];
    if ([v3 isEqualToString:@"com.apple.secureelementservice.event.did.ranging.resume"])
    {
      v4 = 0;
      v5 = 1;
      if (!a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = [v3 isEqualToString:@"com.apple.secureelementservice.event.did.ranging.suspend"];
      v4 = v5;
      if (!a2)
      {
LABEL_8:

        return v5;
      }
    }

    if (v5)
    {
      *a2 = v4;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_100003CB0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100003CC8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

BOOL sub_100003D08(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void sub_100003D3C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t sub_100003D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15)
{
  LODWORD(STACK[0x240]) = a15;
  STACK[0x244] = v15;
  return v16;
}

id sub_100003DE4()
{

  return [v1 setObject:v0 forKeyedSubscript:?];
}

void sub_100003E78(uint64_t a1)
{
  v3 = *(*(v1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

void sub_100003E98(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_100003EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  sub_1004716CC(v11, v10, a10, v12);
}

void sub_100003F08(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100003F38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_100003F78(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100003FB0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2114;
  *(a4 + 14) = v4;
  return result;
}

void sub_100003FC8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_DEFAULT, a4, &buf, 0xCu);
}

void sub_100004000(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100004020(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

PDAccountService *sub_100004068(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDAccountService alloc] initWithConnection:v3 server:v4];

  return v5;
}

void sub_1000040DC(void *a1, void *a2)
{
  v3 = a1[10];
  v6 = a2;
  v4 = a1;
  [v6 setSecureElement:v3];
  [v6 setExpressPassManager:v4[44]];
  [v6 setDatabaseManager:v4[6]];
  [v6 setPeerPaymentWebServicesCoordinator:v4[14]];
  [v6 setPaymentTransactionProcessor:v4[11]];
  [v6 setPaymentWebServiceCoordinator:v4[13]];
  [v6 setNotificationServiceCoordinator:v4[12]];
  [v6 setCloudStoreNotificationCoordinator:v4[34]];
  [v6 setUserNotificationManager:v4[7]];
  [v6 setTransitStateManager:v4[45]];
  [v6 setDefaultPassManager:v4[47]];
  [v6 setPushNotificationManager:v4[9]];
  [v6 setDevicePasscodeManager:v4[48]];
  [v6 setApplyManager:v4[16]];
  [v6 setAccountManager:v4[17]];
  [v6 setFamilyMemberManager:v4[55]];
  [v6 setTapToRadarDelegate:v4];
  [v6 setPaymentOffersManager:v4[24]];
  [v6 setSubcredentialManager:v4[25]];
  [v6 setNFCPairingManager:v4[26]];
  [v6 setCardFileManager:v4[4]];
  [v6 setPassTileManager:v4[57]];
  [v6 setMapsBrandAndMerchantUpdater:v4[53]];
  [v6 setPushProvisioningManager:v4[29]];
  [v6 setSharingManager:v4[60]];
  [v6 setPendingProvisioningManager:v4[61]];
  [v6 setProvisioningSupportDataManager:v4[62]];
  [v6 setIssuerBindingManager:v4[74]];
  [v6 setBarcodeCredentialManager:v4[30]];
  [v6 setTransactionAuthenticationManager:v4[31]];
  [v6 setAuxiliaryCapabilityManager:v4[32]];
  [v6 setIso18013Manager:v4[28]];
  [v6 setTransactionReceiptFileManager:v4[54]];
  [v6 setIdsSharingManager:v4[42]];
  [v6 setApplicationMessageManager:v4[68]];
  [v6 setFpanCardManager:v4[63]];
  [v6 setUserLegalAgreementManager:v4[84]];
  [v6 setPaymentUserCommunicationManager:v4[69]];
  [v6 setFinanceKitMessageProvider:v4[70]];
  [v6 setAuxiliaryPassInformationManager:v4[64]];
  [v6 setMerchantTokenMetadataCache:v4[83]];
  [v6 setPassKitEventPublisher:v4[67]];
  v5 = v4[85];

  [v6 setUserActivitySignalsManager:v5];
}

uint64_t sub_100004338(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_100004344(void *a1, void *a2)
{
  v3 = a1[17];
  v6 = a2;
  v4 = a1;
  [v6 setAccountManager:v3];
  v5 = v4[65];

  [v6 setStatementMetadataProcessor:v5];
}

PDPaymentService *sub_1000043B4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDPaymentService alloc] initWithConnection:v3 server:v4];

  return v5;
}

uint64_t sub_100004440(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_10000444C(uint64_t result)
{
  if (result)
  {
    return *(result + 728);
  }

  return result;
}

PDPassLibrary *sub_100004458(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDPassLibrary alloc] initWithConnection:v3 server:v4];

  [(PDPassLibrary *)v5 setDelegate:v4];

  return v5;
}

uint64_t sub_1000044D8(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_1000044E4(void *a1, void *a2)
{
  v3 = a1[10];
  v6 = a2;
  v4 = a1;
  [v6 setSecureElement:v3];
  [v6 setExpressPassManager:v4[44]];
  [v6 setCardFileManager:v4[4]];
  [v6 setDatabaseManager:v4[6]];
  [v6 setUserNotificationManager:v4[7]];
  [v6 setInternalMessageProvider:v4[8]];
  [v6 setWebServicesCoordinator:v4[38]];
  [v6 setPaymentWebServicesCoordinator:v4[13]];
  [v6 setRelevancyCoordinator:v4[43]];
  [v6 setUsageNotificationServer:v4[40]];
  [v6 setIdsManager:v4[41]];
  [v6 setSpotlightIndexer:v4[46]];
  [v6 setAccountManager:v4[17]];
  [v6 setDefaultPassManager:v4[47]];
  [v6 setExpressUpgradeController:v4[51]];
  [v6 setSubcredentialManager:v4[25]];
  [v6 setCarKeyRequirementsChecker:v4[27]];
  [v6 setIssuerBindingManager:v4[74]];
  [v6 setPassLiveRenderManager:v4[76]];
  [v6 setDynamicStateManager:v4[75]];
  [v6 setPushProvisioningManager:v4[29]];
  [v6 setIsoManager:v4[28]];
  [v6 setAuxiliaryCapabilityManager:v4[32]];
  [v6 setDeviceRegistrationServiceCoordinator:v4[35]];
  [v6 setProvisioningRequirementsChecker:v4[77]];
  [v6 setFlightManager:v4[87]];
  [v6 setPassVerificationManager:v4[79]];
  v5 = v4[63];

  [v6 setFpanCardManager:v5];
}

PDDiscoveryService *sub_1000054C8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDDiscoveryService alloc] initWithConnection:v3 server:v4];

  return v5;
}

void sub_1000055C4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100005610(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_10000565C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000056A8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_1000056F4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100005740(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_100005894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000058D0(void *a1, void *a2)
{
  v3 = a1[21];
  v6 = a2;
  v4 = a1;
  [v6 setDiscoveryManager:v3];
  v5 = v4[22];

  [v6 setRuleManager:v5];
}

uint64_t sub_100005940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005950(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005960(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005970(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005990(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000059A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000059B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000059C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000059D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000059E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000059F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005A90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005AA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005AB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005AC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005AE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005AF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005B90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005BF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005C90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005CA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005CB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005CC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005CD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005CE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005CF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005D90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005DA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005DB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005DD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005DE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005DF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005E90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005EA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005EB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005EC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005ED0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005EE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005EF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F00(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005F90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005FA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005FB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005FC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005FE0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100005FF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006010(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006020(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006030(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006040(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006050(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006060(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100006070(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000608C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000609C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000060AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000060BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000060CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000060DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000060EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000060FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000610C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000611C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000612C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000613C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000614C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000064BC(id a1, PKLocation *a2, id a3)
{
  if (a3)
  {
    v4 = a2;
    [a3 doubleValue];
    [(PKLocation *)v4 setAltitude:?];
  }
}

void sub_1000065D8(id a1, PKPassAnnotations *a2, id a3)
{
  v4 = a2;
  -[PKPassAnnotations setSortingState:](v4, "setSortingState:", [a3 integerValue]);
}

void sub_100006650(id a1, PKPass *a2, id a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:0];
    [(PKPass *)v4 setUserInfo:?];
  }

  else
  {
    v5 = a2;
    [(PKPass *)v5 setUserInfo:0];
  }
}

void sub_100006854(id a1, PKPassAnnotations *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPassAnnotations *)v3 setArchivedTimestamp:v4];
}

void sub_100007200(id a1, PKLocation *a2, id a3)
{
  v4 = a2;
  [a3 doubleValue];
  [(PKLocation *)v4 setMaxDistance:?];
}

void sub_100007254(id a1, PKLocation *a2, id a3)
{
  v4 = a2;
  [a3 doubleValue];
  [(PKLocation *)v4 setLatitude:?];
}

void sub_1000072A8(id a1, PKLocation *a2, id a3)
{
  v4 = a2;
  [a3 doubleValue];
  [(PKLocation *)v4 setLongitude:?];
}

void sub_100007554(id a1, PKNFCPayload *a2, id a3)
{
  v5 = a2;
  if (a3)
  {
    v4 = [a3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  [(PKNFCPayload *)v5 setRequiresAuthentication:v4];
}

void sub_1000075B8(id a1, PKNFCPayload *a2, id a3)
{
  v4 = a2;
  v5 = [a3 pk_decodeHexadecimal];
  [(PKNFCPayload *)v4 setEncryptionPublicKeyData:v5];
}

void sub_10000761C(id a1, PKNFCPayload *a2, id a3)
{
  v4 = a2;
  -[PKNFCPayload setPayloadState:](v4, "setPayloadState:", [a3 integerValue]);
}

void sub_100007728(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100007794(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setAccountFetchPeriod:](v4, "setAccountFetchPeriod:", [a3 integerValue]);
}

void sub_1000077EC(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setFundingSourcesFetchPeriod:](v4, "setFundingSourcesFetchPeriod:", [a3 integerValue]);
}

void sub_100007844(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setRecoveryPaymentPlansFetchPeriod:](v4, "setRecoveryPaymentPlansFetchPeriod:", [a3 integerValue]);
}

void sub_1000078B8(id a1, PKAccount *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKAccount *)v3 setPaymentServicesBaseURL:v4];
}

void sub_100007918(id a1, PKAccount *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKAccount *)v3 setAccountBaseURL:v4];
}

void sub_100007978(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setIsCloudAccount:](v4, "setIsCloudAccount:", [a3 BOOLValue]);
}

void sub_1000079D8(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setStateReason:](v4, "setStateReason:", [a3 integerValue]);
}

void sub_100007A30(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setFeature:](v4, "setFeature:", [a3 integerValue]);
}

void sub_100007A88(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setBlockNotifications:](v4, "setBlockNotifications:", [a3 BOOLValue]);
}

void sub_100007AE0(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setType:](v4, "setType:", [a3 integerValue]);
}

void sub_100007B38(id a1, PKAccount *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKAccount *)v3 setApplyServiceURL:v4];
}

void sub_100007B98(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setBlockAllAccountAccess:](v4, "setBlockAllAccountAccess:", [a3 BOOLValue]);
}

void sub_100007BF0(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setState:](v4, "setState:", [a3 integerValue]);
}

void sub_100007C48(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  v5 = [a3 componentsSeparatedByString:{@", "}];
  [(PKAccount *)v4 setCloudStoreZoneNames:v5];
}

void sub_100007CB4(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setSharedAccount:](v4, "setSharedAccount:", [a3 BOOLValue]);
}

void sub_100007D0C(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setAccessLevel:](v4, "setAccessLevel:", [a3 integerValue]);
}

void sub_100007D74(id a1, PKAccount *a2, id a3)
{
  v4 = a2;
  -[PKAccount setAccountStateDirty:](v4, "setAccountStateDirty:", [a3 BOOLValue]);
}

void sub_100007DCC(id a1, PKAccount *a2, id a3)
{
  v6 = a2;
  v4 = [a3 componentsSeparatedByString:{@", "}];
  if (v4)
  {
    v5 = [[NSSet alloc] initWithArray:v4];
    [(PKAccount *)v6 setPreviousAccountIdentifiers:v5];
  }
}

void sub_100007E58(id a1, PKAccount *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKAccount *)v3 setLastUpdated:v4];
}

void sub_100008114(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000081B0(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setPhysicalCardsFetchPeriod:](v4, "setPhysicalCardsFetchPeriod:", [a3 integerValue]);
}

void sub_100008208(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setFinancingPlansFetchPeriod:](v4, "setFinancingPlansFetchPeriod:", [a3 integerValue]);
}

void sub_100008260(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setExtendedAccountFetchPeriod:](v4, "setExtendedAccountFetchPeriod:", [a3 integerValue]);
}

void sub_100008658(id a1, PKCreditAccountDetails *a2, id a3)
{
  v4 = a2;
  v5 = [NSURL URLWithString:a3];
  [(PKCreditAccountDetails *)v4 setTermsURL:v5];
}

void sub_1000086D0(id a1, PKCreditAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountDetails setRewardsDestination:](v4, "setRewardsDestination:", [a3 integerValue]);
}

void sub_100008728(id a1, PKCreditAccountDetails *a2, id a3)
{
  v4 = a2;
  v5 = [NSURL URLWithString:a3];
  [(PKCreditAccountDetails *)v4 setAssociatedPassURL:v5];
}

void sub_1000087A0(id a1, PKCreditAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountDetails *)v3 setLastUpdatedDate:v4];
}

void sub_100008820(id a1, PKCreditAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountDetails setCardType:](v4, "setCardType:", [a3 integerValue]);
}

void sub_100008878(id a1, PKCreditAccountDetails *a2, id a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = [NSTimeZone timeZoneWithName:a3];
    [(PKCreditAccountDetails *)v4 setProductTimeZone:v5];
  }
}

void sub_1000088F8(id a1, PKCreditAccountDetails *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountDetails setTermsAcceptanceRequired:](v4, "setTermsAcceptanceRequired:", [a3 BOOLValue]);
}

void sub_100008950(id a1, PKCreditAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountDetails *)v3 setCreatedDate:v4];
}

void sub_100008B40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100008BAC(id a1, PKCreditAccountRates *a2, id a3)
{
  v4 = a2;
  [a3 integerValue];
  v5 = PKPercentageStorageIntegerToDecimal();
  [(PKCreditAccountRates *)v4 setAprForPurchases:v5];
}

void sub_100009074(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000090E0(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setPastDueAmount:v4];
}

void sub_100009144(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setAvailableCredit:v4];
}

void sub_1000091A8(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountSummary *)v3 setPaymentDueDate:v4];
}

void sub_100009208(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setCurrentBalance:v4];
}

void sub_10000926C(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setChargeOffPreventionAmount:v4];
}

void sub_1000092D0(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setRewardsBalance:v4];
}

void sub_100009334(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setInstallmentBalance:v4];
}

void sub_100009398(id a1, PKCreditAccountSummary *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountSummary setAutoPayEnabled:](v4, "setAutoPayEnabled:", [a3 BOOLValue]);
}

void sub_1000093F0(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setAdjustedBalance:v4];
}

void sub_100009454(id a1, PKCreditAccountSummary *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountSummary setBalanceStatus:](v4, "setBalanceStatus:", [a3 integerValue]);
}

void sub_1000094AC(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setRemainingMinimumPaymentExcludedFromInterestCalculation:v4];
}

void sub_100009510(id a1, PKCreditAccountSummary *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountSummary setCyclesPastDue:](v4, "setCyclesPastDue:", [a3 integerValue]);
}

void sub_100009568(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountSummary *)v3 setLastPaymentDate:v4];
}

void sub_1000095C8(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setRemainingMinimumPayment:v4];
}

void sub_10000962C(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setRemainingStatementBalance:v4];
}

void sub_100009690(id a1, PKCreditAccountSummary *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountSummary setRequiresDebtCollectionNotices:](v4, "setRequiresDebtCollectionNotices:", [a3 BOOLValue]);
}

void sub_1000096E8(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setRemainingStatementBalanceForInterestCalculation:v4];
}

void sub_10000974C(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setUnpostedInterest:v4];
}

void sub_1000097B0(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountSummary *)v3 setUnpostedInterestTimestamp:v4];
}

void sub_100009810(id a1, PKCreditAccountSummary *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountSummary setRecoveryPaymentPlansSupported:](v4, "setRecoveryPaymentPlansSupported:", [a3 BOOLValue]);
}

void sub_100009868(id a1, PKCreditAccountSummary *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountSummary setInGrace:](v4, "setInGrace:", [a3 BOOLValue]);
}

void sub_1000098C0(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setCreditLimit:v4];
}

void sub_100009BA8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100009C14(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setFeesCharged:v4];
}

void sub_100009C78(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setPaymentsAndCredits:v4];
}

void sub_100009CDC(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountBalanceSummary *)v3 setOpeningDate:v4];
}

void sub_100009D3C(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setRewardsEarned:v4];
}

void sub_100009DA0(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountBalanceSummary *)v3 setClosingDate:v4];
}

void sub_100009E00(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setRewardsRedeemed:v4];
}

void sub_100009E64(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setPurchases:v4];
}

void sub_100009EC8(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setPendingPurchases:v4];
}

void sub_100009F2C(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = PKCurrencyStorageNumberToCurrencyDecimal();
    [(PKCreditAccountBalanceSummary *)v3 setPayments:v4];
  }
}

void sub_100009F98(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setBalanceTransfers:v4];
}

void sub_100009FFC(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = PKCurrencyStorageNumberToCurrencyDecimal();
    [(PKCreditAccountBalanceSummary *)v3 setCredits:v4];
  }
}

void sub_10000A068(id a1, PKCreditAccountBalanceSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountBalanceSummary *)v3 setInterestCharged:v4];
}

void sub_10000A3F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10000A45C(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setRewardsRedeemed:v4];
}

void sub_10000A4C0(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountStatement *)v3 setOpeningDate:v4];
}

void sub_10000A520(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setRewardsYTD:v4];
}

void sub_10000A584(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountStatement *)v3 setClosingDate:v4];
}

void sub_10000A5E4(id a1, PKCreditAccountStatement *a2, id a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = PKCurrencyStorageNumberToCurrencyDecimal();
    [(PKCreditAccountStatement *)v3 setTotalBalance:v4];
  }
}

void sub_10000A650(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setRewardsLifetime:v4];
}

void sub_10000A6B4(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountStatement *)v3 setPaymentDueDate:v4];
}

void sub_10000A724(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setStatementBalance:v4];
}

void sub_10000A788(id a1, PKCreditAccountStatement *a2, id a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = PKCurrencyStorageNumberToCurrencyDecimal();
    [(PKCreditAccountStatement *)v3 setPayments:v4];
  }
}

void sub_10000A7F4(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setMinimumDue:v4];
}

void sub_10000A858(id a1, PKCreditAccountStatement *a2, id a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = PKCurrencyStorageNumberToCurrencyDecimal();
    [(PKCreditAccountStatement *)v3 setCredits:v4];
  }
}

void sub_10000A8C4(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setPurchases:v4];
}

void sub_10000A928(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setFeesCharged:v4];
}

void sub_10000A98C(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setInterestCharged:v4];
}

void sub_10000A9F0(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setBalanceTransfers:v4];
}

void sub_10000AA54(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setPaymentsAndCredits:v4];
}

void sub_10000AAB8(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setRewardsBalance:v4];
}

void sub_10000AB1C(id a1, PKCreditAccountStatement *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountStatement *)v3 setRewardsEarned:v4];
}

void sub_10000ACA4(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setMaximumAccountUsers:](v4, "setMaximumAccountUsers:", [a3 unsignedIntegerValue]);
}

void sub_10000ACFC(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setPaymentFundingSourceTypes:](v4, "setPaymentFundingSourceTypes:", [a3 unsignedIntegerValue]);
}

void sub_10000AD54(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setMinimumOwnerAge:](v4, "setMinimumOwnerAge:", [a3 unsignedIntegerValue]);
}

void sub_10000ADAC(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setPaymentFrequencies:](v4, "setPaymentFrequencies:", [a3 unsignedIntegerValue]);
}

void sub_10000AE14(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  v5 = [a3 componentsSeparatedByString:{@", "}];
  [(PKCreditAccountFeatureDescriptor *)v4 setSupportedDestinations:v5];
}

void sub_10000AE80(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountFeatureDescriptor *)v3 setMaximumAmount:v4];
}

void sub_10000AEE4(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  [a3 integerValue];
  v5 = PKPercentageStorageIntegerToDecimal();
  [(PKCreditAccountFeatureDescriptor *)v4 setSavingsAPY:v5];
}

void sub_10000AF4C(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  v5 = [a3 componentsSeparatedByString:{@", "}];
  [(PKCreditAccountFeatureDescriptor *)v4 setSupportedNetworks:v5];
}

void sub_10000AFC0(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setMerchantCapabilities:](v4, "setMerchantCapabilities:", [a3 unsignedIntegerValue]);
}

void sub_10000B018(void *a1, void *a2)
{
  v3 = a1[15];
  v6 = a2;
  v4 = a1;
  [v6 setPeerPaymentAccountManager:v3];
  [v6 setPeerPaymentWebServiceCoordinator:v4[14]];
  [v6 setDatabaseManager:v4[6]];
  [v6 setUserNotificationManager:v4[7]];
  v5 = v4[42];

  [v6 setIdsSharingManager:v5];
}

id PDDefaultQueue()
{
  if (qword_1009243C0 != -1)
  {
    sub_1005D0D08();
  }

  v1 = qword_1009243B8;

  return v1;
}

void sub_10000B8A8(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setSharedCloudStoreModelFetchPeriod:](v4, "setSharedCloudStoreModelFetchPeriod:", [a3 integerValue]);
}

void sub_10000B900(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v7 = a2;
  v4 = [a3 componentsSeparatedByString:{@", "}];
  v5 = [v4 pk_arrayByApplyingBlock:&stru_100864890];

  if ([v5 count])
  {
    v6 = [[NSSet alloc] initWithArray:v5];
    [(PKAccountFetchPeriods *)v7 setBlockedEndpoints:v6];
  }
}

void sub_10000B9AC(id a1, PKAccountFetchPeriods *a2, id a3)
{
  v4 = a2;
  -[PKAccountFetchPeriods setUsersFetchPeriod:](v4, "setUsersFetchPeriod:", [a3 integerValue]);
}

void sub_10000BA10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_10000BA7C(id a1, PKCreditAccountDetails *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditAccountDetails *)v3 setMergeDate:v4];
}

void sub_10000BE60(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  [a3 integerValue];
  v5 = PKPercentageStorageIntegerToDecimal();
  [(PKCreditAccountFeatureDescriptor *)v4 setSavingsInterestRate:v5];
}

void sub_10000BEC8(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setMinimumParticipantAge:](v4, "setMinimumParticipantAge:", [a3 unsignedIntegerValue]);
}

void sub_10000BF20(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  -[PKCreditAccountFeatureDescriptor setPaymentPresets:](v4, "setPaymentPresets:", [a3 unsignedIntegerValue]);
}

void sub_10000BF78(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v3 = a2;
  v4 = _OSVersionRequirementRangeForSQLValue();
  [(PKCreditAccountFeatureDescriptor *)v3 setOsVersionRange:v4];
}

void sub_10000BFD8(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountFeatureDescriptor *)v3 setMinimumAmount:v4];
}

void sub_10000C044(id a1, PKCreditAccountFeatureDescriptor *a2, id a3)
{
  v4 = a2;
  v5 = [a3 componentsSeparatedByString:{@", "}];
  [(PKCreditAccountFeatureDescriptor *)v4 setSupportedFileFormatsForTransactionData:v5];
}

PDPeerPaymentService *sub_10000C118(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDPeerPaymentService alloc] initWithConnection:v3 server:v4];

  return v5;
}

id sub_10000C324(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  v4 = *(a1 + 32);

  return [v4 _executeNextRequestIfPossible];
}

id PDHeavyQueue()
{
  if (qword_1009243E0 != -1)
  {
    sub_1005D0D30();
  }

  v1 = qword_1009243D8;

  return v1;
}

uint64_t sub_10000C3D0(uint64_t result)
{
  if (result)
  {
    sub_100003D20(result);
    if (v2 != 3)
    {
      dispatch_sync(*(v1 + 64), &stru_10085C900);
    }

    v3 = sub_10000C434(v1);
    v4 = sub_1005D5B1C(v1, v3);

    return v4;
  }

  return result;
}

uint64_t sub_10000C434(uint64_t result)
{
  if (result)
  {
    sub_100003D20(result);
    if (!v2)
    {
      [NSException raise:NSInternalInconsistencyException format:@"PDApplicationMessageManager: cannot fetch registrations before connection attempt."];
    }

    os_unfair_lock_lock((v1 + 16));
    v3 = [*(v1 + 40) copy];
    os_unfair_lock_unlock((v1 + 16));
    return v3;
  }

  return result;
}

void sub_10000C4A0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

void sub_10000C588(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_impl(a1, v11, OS_LOG_TYPE_DEFAULT, a4, &buf, 0x12u);
}

id sub_10000C5A8(void *a1, const char *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);

  return [a1 countByEnumeratingWithState:va objects:va1 count:16];
}

void *sub_10000C5C8(void *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = result[1];
  if (!v2)
  {
    v4 = NSInternalInconsistencyException;
LABEL_6:
    [NSException raise:v4 format:@"PDApplicationMessageSink (%ld): cannot fetch sink before connection.", v2];
    goto LABEL_7;
  }

  v3 = atomic_load((v2 + 8));
  if (v3 <= 1)
  {
    v2 = result[1];
    v4 = NSInternalInconsistencyException;
    if (v2)
    {
      v2 = *(v2 + 32);
    }

    goto LABEL_6;
  }

LABEL_7:
  v5 = v1[1];

  return v5;
}

void sub_10000C6AC(os_unfair_lock_s *a1)
{
  v2 = a1 + 2;

  os_unfair_lock_lock(v2);
}

void sub_10000C6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  sub_10000C4E8();
  a41 = v42;
  a42 = v44;
  v45 = v43;
  if (v43)
  {
    v46 = sub_1005D9C4C(*(v43 + 24));
    v47 = v46;
    if (v46 && [v46 count])
    {
      v48 = objc_alloc_init(NSMutableArray);
      a9 = 0u;
      a10 = 0u;
      a11 = 0u;
      a12 = 0u;
      v49 = v47;
      v50 = [v49 countByEnumeratingWithState:&a9 objects:&a13 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *a10;
        do
        {
          for (i = 0; i != v51; i = i + 1)
          {
            sub_10000C6CC();
            if (v54 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v55 = *(*(&a9 + 1) + 8 * i);
            v56 = [*(v45 + 40) applicationMessageSink:v45 createContentForMessageWithRegistration:v55];
            if (v56)
            {
              v57 = [PKApplicationMessage createWithRegistration:v55 content:v56];
              [v48 addObject:v57];
            }
          }

          v51 = [v49 countByEnumeratingWithState:&a9 objects:&a13 count:16];
        }

        while (v51);
      }

      [v48 copy];
    }
  }

  sub_10000CB0C();
}

void sub_10000C874(uint64_t a1, sqlite3_stmt *a2)
{
  v5 = 1;
  [*(a1 + 32) bindToSelectStatement:a2 bindingIndex:&v5];
  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v4 = SQLiteCopyFoundationNumberValueForStatementColumn(a2, 0);
    *(*(*(a1 + 40) + 8) + 24) = [v4 BOOLValue];
  }
}

id SQLiteCopyFoundationNumberValueForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  if (v4 == 2)
  {
    v8 = [NSNumber alloc];
    v9 = sqlite3_column_double(a1, a2);

    return [v8 initWithDouble:v9];
  }

  else if (v4 == 1)
  {
    v5 = [NSNumber alloc];
    v6 = sqlite3_column_int64(a1, a2);

    return [v5 initWithLongLong:v6];
  }

  else
  {
    return 0;
  }
}

void sub_10000CAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CAF0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a15 = a1;

  dispatch_async(v15, &a9);
}

id sub_10000CB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

void sub_10000CF54(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if ([*(a1[4] + 192) updateAccount])
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 112));
    v9 = [WeakRetained nextPossibleFetchDateForAccountType:1 endpointType:1 accountIdentifier:a1[5]];

    if (([*(a1[4] + 192) fromPush] & 1) == 0 && v9 && (+[NSDate date](NSDate, "date"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceDate:", v9), v12 = v11, v10, v12 <= 0.0))
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not fetching peer payment account because the next possible fetch date is in the future %@", buf, 0xCu);
      }

      v7[2](v7, v6, 0);
    }

    else
    {
      v13 = a1[4];
      if ((*(v13 + 176) & 1) != 0 || (v14 = *(v13 + 56)) == 0 || [v14 needsRegistration])
      {
        v15 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1[4] + 192);
          *buf = 138412290;
          v31 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not fetching an an updated peer payment account for request because we are unregistering from peer payment %@", buf, 0xCu);
        }

        v7[2](v7, v6, 1);
      }

      else
      {
        v18 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1[4] + 192);
          *buf = 138412290;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetching an updated peer payment account for request %@.", buf, 0xCu);
        }

        v20 = a1[4];
        v21 = *(v20 + 56);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100490588;
        v25[3] = &unk_1008633D8;
        v25[4] = v20;
        v28 = v7;
        v22 = v6;
        v24 = a1[5];
        v23 = a1[6];
        v26 = v22;
        v29 = v23;
        v27 = v24;
        [v21 peerPaymentAccountWithCompletion:v25];
      }
    }
  }

  else
  {
    v7[2](v7, v6, 0);
  }
}

void sub_10000D2F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004909C4;
  v11[3] = &unk_100863428;
  v12 = v3;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v15 = *(a1 + 64);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  *&v9 = v4;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v8;
  v10 = v3;
  dispatch_async(v5, v11);
}

id SQLiteCopyFoundationValueForStatementColumn(sqlite3_stmt *a1, int a2)
{
  v4 = sqlite3_column_type(a1, a2);
  if (v4 > 2)
  {
    if (v4 == 5)
    {
      return 0;
    }

    if (v4 != 3)
    {
LABEL_12:
      v10 = sqlite3_column_blob(a1, a2);
      v11 = sqlite3_column_bytes(a1, a2);
      v12 = [NSData alloc];

      return [v12 initWithBytes:v10 length:v11];
    }

    v8 = [NSString alloc];
    v9 = sqlite3_column_text(a1, a2);

    return [v8 initWithUTF8String:v9];
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = [NSNumber alloc];
        v6 = sqlite3_column_double(a1, a2);

        return [v5 initWithDouble:v6];
      }

      goto LABEL_12;
    }

    v13 = [NSNumber alloc];
    v14 = sqlite3_column_int64(a1, a2);

    return [v13 initWithLongLong:v14];
  }
}

void sub_10000E1FC(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setParkingInformationURL:v4];
}

void sub_10000E25C(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setRevoked:](v4, "setRevoked:", [a3 BOOLValue]);
}

void sub_10000E2BC(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPass *)v3 setModifiedDate:v4];
}

void sub_10000E324(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setShellPass:v5];
}

void sub_10000E39C(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setHasStoredValue:](v4, "setHasStoredValue:", [a3 BOOLValue]);
}

void sub_10000E3F4(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  [(PKPass *)v3 setLiveRenderType:PKPassLiveRenderTypeFromString()];
}

void sub_10000E44C(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setSharingURL:v4];
}

void sub_10000E4AC(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPass *)v3 setSigningDate:v4];
}

void sub_10000E838(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setVoided:](v4, "setVoided:", [a3 BOOLValue]);
}

void sub_10000E8F8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setAssociatedAccountServiceAccountIdentifier:v4];
}

void sub_10000E958(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setManagementURL:v4];
}

void sub_10000E9B8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setSupportsSerialNumberBasedProvisioning:v5];
}

void sub_10000EA28(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setShippingAddressSeed:v4];
}

void sub_10000EAB4(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setBagPolicyURL:v4];
}

void sub_10000EB14(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setTransferURL:v4];
}

void sub_10000EB74(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setLiveRenderingRequiresEnablement:](v4, "setLiveRenderingRequiresEnablement:", [a3 BOOLValue]);
}

void sub_10000EBCC(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setPassType:](v4, "setPassType:", [a3 integerValue]);
}

void sub_10000EC24(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setTrackBagsURL:v4];
}

void sub_10000EC98(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setAccessibilityURL:v4];
}

void sub_10000ECF8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setSupportsDPANNotifications:v5];
}

void sub_10000ED7C(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setSharingMethod:](v4, "setSharingMethod:", [a3 integerValue]);
}

void sub_10000EDD4(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setPartnerAccountIdentifier:v4];
}

void sub_10000EE34(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setRequiresTransferSerialNumberBasedProvisioning:v5];
}

void sub_10000EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000EF6C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) entityClass];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009E8B4;
  v4[3] = &unk_100841A60;
  v6 = v2;
  v5 = *(a1 + 32);
  [v5 enumeratePersistentIDsUsingBlock:v4];
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_10000F010(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setTransitInformationURL:v4];
}

void sub_10000F070(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 integerValue];

  [v6 setAccessType:v5];
}

void sub_10000F194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000F1B0(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setSupportsCategoryVisualization:](v4, "setSupportsCategoryVisualization:", [a3 BOOLValue]);
}

void sub_10000F208(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setCobranded:v5];
}

void sub_10000F278(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setSanitizedPrimaryAccountName:v4];
}

void sub_10000F3B8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setSanitizedPrimaryAccountNumber:v4];
}

void sub_10000F418(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 unsignedIntegerValue];

  [v6 setContactlessActivationGroupingType:v5];
}

void sub_10000F488(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPass *)v3 setExpirationDate:v4];
}

void sub_10000F4E8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setIssuerCountryCode:v4];
}

void sub_10000F548(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setIdentityAccountKeyIdentifier:v4];
}

void sub_10000F5B0(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setOrderFoodURL:v4];
}

void sub_10000F610(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  [(PKPass *)v3 setHomeKeyLiveRenderType:PKPassHomeKeyLiveRenderTypeFromString()];
}

void sub_10000F668(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setRequestWheelchairURL:v4];
}

void sub_10000F6C8(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setDirectionsInformationURL:v4];
}

void sub_10000F728(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setIssuerAdministrativeAreaCode:v4];
}

void sub_10000F788(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setIsCloudKitSecurelyArchived:](v4, "setIsCloudKitSecurelyArchived:", [a3 BOOLValue]);
}

void sub_10000F7E0(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setPrimaryAccountNumberSuffix:v4];
}

void sub_10000F840(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setSellURL:v4];
}

void sub_10000F8A0(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setShareCount:](v4, "setShareCount:", [a3 integerValue]);
}

void sub_10000F8F8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setPrimaryAccountIdentifier:v4];
}

void sub_10000F958(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setPurchaseParkingURL:v4];
}

void sub_10000F9B8(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 integerValue];

  [v6 setCardType:v5];
}

void sub_10000FA28(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setPartnerAddOnURL:v4];
}

void sub_10000FA88(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v5 = [(PKPass *)a2 paymentPass];
  [v5 setTransactionSourceIdentifier:v4];
}

void sub_10000FAE8(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setPurchaseWifiURL:v4];
}

void sub_10000FB48(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setSupportsDefaultCardSelection:v5];
}

void sub_10000FBB8(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setChangeSeatURL:v4];
}

void sub_10000FC18(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setSupportsFPANNotifications:v5];
}

void sub_10000FC88(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setEntertainmentURL:v4];
}

void sub_10000FCF0(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setPurchaseAdditionalBaggageURL:v4];
}

void sub_10000FD58(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setPurchaseLoungeAccessURL:v4];
}

void sub_10000FDC4(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setMerchandiseURL:v4];
}

void sub_10000FE24(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setUpgradeURL:v4];
}

void sub_10000FE8C(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setWebServiceURL:v4];
}

void sub_10000FEEC(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPass *)v3 setIngestedDate:v4];
}

void sub_10000FF54(id a1, PKPass *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKPass *)v3 setReportLostBagURL:v4];
}

void sub_10000FFB4(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = [v4 BOOLValue];

  [v6 setHasAssociatedPeerPaymentAccount:v5];
}

void sub_100010024(id a1, PKPass *a2, id a3)
{
  v4 = a3;
  v6 = [(PKPass *)a2 paymentPass];
  v5 = _DateForSQLValue();

  [v6 setOriginalProvisioningDate:v5];
}

void sub_1000100A0(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setIsCloudKitArchived:](v4, "setIsCloudKitArchived:", [a3 BOOLValue]);
}

void sub_100010100(id a1, PKPass *a2, id a3)
{
  v4 = a2;
  -[PKPass setMuteReadyForUseNotification:](v4, "setMuteReadyForUseNotification:", [a3 BOOLValue]);
}

void sub_100010158(id a1, PKPassDisplayProfile *a2, id a3)
{
  v3 = a2;
  v4 = _ColorForSQLValue();
  [(PKPassDisplayProfile *)v3 setBackgroundColor:v4];
}

void sub_1000101B8(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setSupportsAutomaticForegroundVibrancy:](v4, "setSupportsAutomaticForegroundVibrancy:", [a3 BOOLValue]);
}

void sub_100010210(id a1, PKPassDisplayProfile *a2, id a3)
{
  v3 = a2;
  v4 = _ColorForSQLValue();
  [(PKPassDisplayProfile *)v3 setForegroundColor:v4];
}

void sub_1000102A0(os_unfair_lock_s *a1)
{
  v2 = a1 + 2;

  os_unfair_lock_lock(v2);
}

void sub_1000102C8(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setHasStripImage:](v4, "setHasStripImage:", [a3 BOOLValue]);
}

void sub_100010320(id a1, PKPassDisplayProfile *a2, id a3)
{
  v3 = a2;
  v4 = _ColorForSQLValue();
  [(PKPassDisplayProfile *)v3 setFooterBackgroundColor:v4];
}

void sub_100010380(id a1, PKPassDisplayProfile *a2, id a3)
{
  v3 = a2;
  v4 = _ColorForSQLValue();
  [(PKPassDisplayProfile *)v3 setSecondaryBackgroundColor:v4];
}

void sub_1000103E8(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setSuppressesHeaderDarkening:](v4, "setSuppressesHeaderDarkening:", [a3 BOOLValue]);
}

void sub_100010440(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setPassStyle:](v4, "setPassStyle:", [a3 integerValue]);
}

void sub_100010498(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setSupportsAutomaticLabelVibrancy:](v4, "setSupportsAutomaticLabelVibrancy:", [a3 BOOLValue]);
}

void sub_1000104F0(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setTallCode:](v4, "setTallCode:", [a3 BOOLValue]);
}

void sub_100010548(id a1, PKPassDisplayProfile *a2, id a3)
{
  v3 = a2;
  v4 = _ColorForSQLValue();
  [(PKPassDisplayProfile *)v3 setStripColor:v4];
}

void sub_1000105AC(id a1, PKPassDisplayProfile *a2, id a3)
{
  v4 = a2;
  -[PKPassDisplayProfile setHasBackgroundImage:](v4, "setHasBackgroundImage:", [a3 BOOLValue]);
}

void sub_100010740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100010758(id a1, PKPassDisplayProfile *a2, id a3)
{
  v3 = a2;
  v4 = _ColorForSQLValue();
  [(PKPassDisplayProfile *)v3 setLabelColor:v4];
}

uint64_t sub_1000108B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [Pass _realPassInDatabase:*(*(a1 + 32) + 8) withProperties:a2 values:a3 fromPass:?];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1(v4, v6);
}

void sub_100010DD8(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsBarcodePayment:](v4, "setSupportsBarcodePayment:", [a3 BOOLValue]);
}

void sub_100010E30(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsMerchantTokens:](v4, "setSupportsMerchantTokens:", [a3 BOOLValue]);
}

void sub_100010E90(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsInAppPayment:](v4, "setSupportsInAppPayment:", [a3 BOOLValue]);
}

void sub_100010EF0(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setState:](v4, "setState:", [a3 integerValue]);
}

void sub_100010F50(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsContactlessPayment:](v4, "setSupportsContactlessPayment:", [a3 BOOLValue]);
}

void sub_100010FA8(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setHasMerchantTokens:](v4, "setHasMerchantTokens:", [a3 BOOLValue]);
}

void sub_100011010(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setRequiresConsentForDataRelease:](v4, "setRequiresConsentForDataRelease:", [a3 BOOLValue]);
}

void sub_100011068(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setContactlessPriority:](v4, "setContactlessPriority:", [a3 integerValue]);
}

void sub_1000110D8(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  v5 = [a3 stringValue];
  [(PKPaymentApplication *)v4 setVirtualCardIdentifier:v5];
}

void sub_10001113C(id a1, PKPaymentApplication *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKPaymentApplication *)v3 setInAppPINRequiredAmount:v4];
}

void sub_1000111A0(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsInstantFundsIn:](v4, "setSupportsInstantFundsIn:", [a3 BOOLValue]);
}

void sub_100011208(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsServiceMode:](v4, "setSupportsServiceMode:", [a3 BOOLValue]);
}

void sub_100011260(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setShareable:](v4, "setShareable:", [a3 BOOLValue]);
}

void sub_1000112B8(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  v5 = [a3 stringValue];
  [(PKPaymentApplication *)v4 setVirtualCardSuffix:v5];
}

void sub_10001131C(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setHadMerchantTokens:](v4, "setHadMerchantTokens:", [a3 BOOLValue]);
}

void sub_100011374(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setVirtualCardVPANOrigin:](v4, "setVirtualCardVPANOrigin:", [a3 integerValue]);
}

void sub_1000113E4(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setAuxiliaryPaymentType:](v4, "setAuxiliaryPaymentType:", [a3 integerValue]);
}

void sub_10001143C(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setAuxiliary:](v4, "setAuxiliary:", [a3 BOOLValue]);
}

void sub_100011494(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setRequiresDeferredAuthorization:](v4, "setRequiresDeferredAuthorization:", [a3 BOOLValue]);
}

void sub_1000114EC(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setPaymentNetworkIdentifier:](v4, "setPaymentNetworkIdentifier:", [a3 integerValue]);
}

void sub_10001155C(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setSupportsOptionalAuthentication:](v4, "setSupportsOptionalAuthentication:", [a3 BOOLValue]);
}

void sub_1000115B4(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setPaymentType:](v4, "setPaymentType:", [a3 integerValue]);
}

void sub_10001160C(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setInAppPriority:](v4, "setInAppPriority:", [a3 integerValue]);
}

void sub_100011664(id a1, PKPaymentApplication *a2, id a3)
{
  v4 = a2;
  -[PKPaymentApplication setFundingSourcePaymentType:](v4, "setFundingSourcePaymentType:", [a3 integerValue]);
}

void sub_1000118FC(id a1, NSMutableString *a2, id a3)
{
  if (a3)
  {
    [(NSMutableString *)a2 setString:?];
  }
}

void sub_100011CB0(id a1, PKPassAutomaticSelectionCriterion *a2, id a3)
{
  v4 = a2;
  -[PKPassAutomaticSelectionCriterion setSupportsExpress:](v4, "setSupportsExpress:", [a3 BOOLValue]);
}

void sub_100011D18(id a1, PKPassAutomaticSelectionCriterion *a2, id a3)
{
  v4 = a2;
  -[PKPassAutomaticSelectionCriterion setSupportsInSessionExpress:](v4, "setSupportsInSessionExpress:", [a3 BOOLValue]);
}

void sub_100011F04(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100490698;
  v3[3] = &unk_10083C820;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void sub_100011FAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 176) & 1) == 0)
  {
    v3 = *(v2 + 56);
    if (v3)
    {
      if (![v3 needsRegistration])
      {
        *(*(*(a1 + 80) + 8) + 24) = 1;
        v6 = [*(a1 + 48) account];
        if (!v6 || *(a1 + 56))
        {
          v7 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = *(a1 + 56);
            *buf = 138412290;
            v25 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: Failed to fetch an updated peer payment account with error: %@.", buf, 0xCu);
          }

          if (*(a1 + 64))
          {
            WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
            [WeakRetained increaseRetryBackoffLevelForAccountType:1 endpointType:1 accountIdentifier:*(a1 + 64)];
          }

          (*(*(a1 + 72) + 16))();
          goto LABEL_35;
        }

        v10 = *(*(a1 + 32) + 64);
        [*(a1 + 32) _handleUpdatedAccount:v6 withOldAccount:v10];
        [*(*(a1 + 32) + 64) setAccountStateDirty:0];
        v11 = objc_loadWeakRetained((*(a1 + 32) + 112));
        [v11 deleteRetryBackoffForAccountType:1 endpointType:1 accountIdentifier:*(a1 + 64)];

        v12 = objc_loadWeakRetained((*(a1 + 32) + 112));
        v13 = [v12 insertOrUpdatePeerPaymentAccount:v6];
        v14 = *(a1 + 32);
        v15 = *(v14 + 64);
        *(v14 + 64) = v13;

        if ([*(*(a1 + 32) + 64) stage] != 1 || !objc_msgSend(*(*(a1 + 32) + 64), "pendingPaymentCount"))
        {
          [*(*(a1 + 32) + 104) removeUserNotificationsOfType:84];
        }

        [*(*(a1 + 32) + 104) updateWalletBadgeCount];
        v16 = PDDefaultQueue();
        PDWakePassbookInBackground();

        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received an updated account %@.", buf, 0xCu);
        }

        v18 = 0;
        v19 = 0;
        if ([*(*(a1 + 32) + 64) role] == 1 && v10)
        {
          v18 = [v10 role] == 0;
          v19 = [v10 state] == 4 && objc_msgSend(*(*(a1 + 32) + 64), "state") == 1;
        }

        if ([*(*(a1 + 32) + 192) updatePass])
        {
          if (v18 | (([*(a1 + 32) _hasAssociatedPeerPaymentPass] & 1) == 0) | v19)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Downloading associated peer payment pass", buf, 2u);
            }

            v20 = *(a1 + 32);
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100011F04;
            v21[3] = &unk_10084E720;
            v21[4] = v20;
            v23 = *(a1 + 72);
            v22 = *(a1 + 40);
            [v20 _downloadAssociatedPeerPaymentPassWithCompletion:v21];

            goto LABEL_34;
          }
        }

        else
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Skipping downloading associated peer payment pass because request specifies not to update pass.", buf, 2u);
          }

          [*(a1 + 32) _downloadAssociatedPeerPaymentPassWithCompletion:0];
        }

        (*(*(a1 + 72) + 16))();
LABEL_34:

LABEL_35:
        return;
      }
    }
  }

  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 192);
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not processing the updated peer payment account for request because we are unregistering from peer payment %@", buf, 0xCu);
  }

  (*(*(a1 + 72) + 16))();
}

const __CFString *PDAccountEndpointBackOffEndpointTypeToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"account";
  }

  else
  {
    return off_10085F320[a1];
  }
}

uint64_t sub_1000126C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v2 setValue:v3 forProperty:@"backoff_level"];

  v4 = *(a1 + 32);
  v5 = _SQLValueForDate();
  [v4 setValue:v5 forProperty:@"next_fetch"];

  return 1;
}

void SQLiteBindFoundationValueToStatement(sqlite3_stmt *a1, int a2, objc_object *a3)
{
  v5 = a3;
  if (!v5 || (+[NSNull null], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v5))
  {
LABEL_18:
    sqlite3_bind_null(a1, a2);
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sqlite3_bind_text(a1, a2, [(objc_object *)v5 UTF8String], -1, 0);
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(objc_object *)v5 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(a1, a2, v7);
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v5;
    v9 = [(objc_object *)v8 length];
    v10 = [(objc_object *)v8 bytes];

    sqlite3_bind_blob64(a1, a2, v10, v9, 0);
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v18[0] = 67109634;
      v18[1] = a2;
      v19 = 2112;
      v20 = v5;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SQLiteBindFoundationValueToStatement: Parameter (index %i) with value '%@' is of unsupported bind type '%{public}@'.", v18, 0x1Cu);
    }

    goto LABEL_18;
  }

  v11 = v5;
  v12 = [(objc_object *)v11 objCType];
  v13 = *v12;
  if ((v13 == 32 || v13 == 102 || v13 == 100) && !v12[1])
  {
    [(objc_object *)v11 doubleValue];
    sqlite3_bind_double(a1, a2, v17);
  }

  else
  {
    sqlite3_bind_int64(a1, a2, [(objc_object *)v11 longLongValue]);
  }

LABEL_19:
}

void sub_1000129CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained sendDiscoveryEngagementMessagesUpdatedToDefaultDiscoveryManager:*(a1 + 32)];
}

id sub_100012A20(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock(&unk_100924148);
    if (qword_100924150 && [qword_100924150 count])
    {
      v1 = [qword_100924150 copy];
    }

    else
    {
      v1 = 0;
    }

    os_unfair_lock_unlock(&unk_100924148);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100012B44(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 264);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012C98;
  block[3] = &unk_1008440C8;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void sub_100012BD8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));

  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 272);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100012CE0;
    v7[3] = &unk_10083C420;
    v7[4] = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_100012C98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[249] = 0;
    v2 = WeakRetained;
    [WeakRetained _queue_performNextProcessingDiscoveryObjects];
    WeakRetained = v2;
  }
}

void sub_100012CE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 152));
  [WeakRetained defaultDiscoveryManager:*(a1 + 32) sendDiscoveryArticleLayoutsUpdated:*(a1 + 40)];
}

void sub_100012D34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 264);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012DF4;
  block[3] = &unk_1008407D0;
  objc_copyWeak(&v10, (a1 + 40));
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v10);
}

void sub_100012DF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _queue_processExistingDiscoveryUserNotifications:*(a1 + 32)];
    v4 = +[NSDate date];
    v5 = [*(*(a1 + 40) + 8) discoveryNotificationsToScheduleForDate:v4];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          [v10 scheduleDeliveryForCurrentDate:v4];
          v11 = [v3[1] insertOrUpdateDiscoveryNotification:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [v3 _queue_insertDiscoveryNotificationsIfNecessary];
    [v3 _queue_scheduleTaskForNextAction];
  }
}

id sub_100012F5C()
{
  v0 = [NSBundle alloc];
  v1 = sub_100012FBC();
  v2 = [v0 initWithURL:v1];

  return v2;
}

id sub_100012FBC()
{
  v0 = PKDiscoveryDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"messages"];
  v2 = [NSURL fileURLWithPath:v1];

  v3 = [v2 URLByAppendingPathExtension:@"pkmessage"];

  return v3;
}

void sub_10001347C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak((v48 + 40));
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013500(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v29 = v7;
    v30 = v6;
    sub_100012F5C();
    v33 = v32 = a1;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = *(a1 + 32);
    v10 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v35;
      v31 = a1 + 56;
      v13 = a1 + 48;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = [v15 relevantDateRange];
          v17 = [v15 scheduledDeliveryDate];
          v18 = [v16 isValidForTime:v17];

          if (v18)
          {
            v19 = [v15 passQualifier];
            v20 = v13;
            if (v19 == 1 || (v21 = [v15 passQualifier], v20 = v31, v21 == 2))
            {
              v22 = *(*(*v20 + 8) + 40);
            }

            else
            {
              v22 = 0;
            }

            [v15 localizeWithBundle:v33];
            v26 = *(WeakRetained + 8);
            v27 = [[PDDiscoveryUserNotification alloc] initWithDiscoveryNotification:v15 passUniqueIdentifier:v22];
            [v26 insertUserNotification:v27];

            [v15 setDelivered:1];
            v28 = [*(WeakRetained + 1) insertOrUpdateDiscoveryNotification:v15];
          }

          else
          {
            v23 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(v32 + 40);
              *buf = 138412546;
              v39 = v24;
              v40 = 2112;
              v41 = v15;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@: Discovery Notification had invalid schedule delivery date: %@", buf, 0x16u);
            }

            [v15 setScheduledDeliveryDate:0];
            v25 = [*(WeakRetained + 1) insertOrUpdateDiscoveryNotification:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v11);
    }

    v7 = v29;
    v6 = v30;
    v29[2](v29, v30, 0);
  }

  else
  {
    v7[2](v7, v6, 1);
  }
}

void sub_100013800(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ([a4 isCanceled])
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v7 = 138412290;
      v8 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Operation to insert notifications was cancelled.", &v7, 0xCu);
    }
  }
}

void sub_100013C68(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDTransitNotificationService: checking for market support in response to API", buf, 2u);
    }

    v4 = PDDefaultQueue();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10037DAB4;
    v7[3] = &unk_10083C420;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, v7);
  }
}

void PDGetCurrentStartAndEndDatesForDateWindow(void *a1, void *a2, double a3, double a4)
{
  v6 = -a4;
  v7 = -a3;
  v8 = [PKPassRelevantDate alloc];
  v10 = +[NSDate date];
  v9 = [v8 initWithRelevantDate:v10];
  PDGetStartAndEndDatesForWindowAroundDate(a1, a2, v9, v6, v7);
}

void PDGetStartAndEndDatesForWindowAroundDate(void *a1, void *a2, void *a3, double a4, double a5)
{
  v12 = a3;
  v9 = [v12 date];
  v10 = v9;
  if (a1)
  {
    if (!v9)
    {
      *a1 = [v12 effectiveStartDate];
      if (!a2)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    *a1 = sub_100014070(v9, a4);
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_8:
    v11 = [v12 effectiveEndDate];
    goto LABEL_9;
  }

  v11 = sub_100014070(v10, a5);
LABEL_9:
  *a2 = v11;
LABEL_10:
}

id sub_100014070(void *a1, double a2)
{
  v3 = a1;
  v4 = v3;
  if (a2 == 1000000.0)
  {
    v5 = +[NSDate distantFuture];
  }

  else
  {
    if (a2 == -1000000.0)
    {
      +[NSDate distantPast];
    }

    else
    {
      [v3 dateByAddingTimeInterval:a2 * 3600.0];
    }
    v5 = ;
  }

  v6 = v5;

  return v6;
}

void *sub_1000158D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100015968(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100015A2C()
{

  return swift_deallocObject();
}

void sub_100015A6C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100015A78()
{

  return swift_deallocObject();
}

uint64_t sub_100015AB0()
{

  return swift_deallocObject();
}

uint64_t sub_100015AEC()
{

  return swift_deallocObject();
}

uint64_t sub_100015B44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100015B84()
{

  return swift_deallocObject();
}

uint64_t sub_100015BC8()
{

  return swift_deallocObject();
}

uint64_t sub_100015C00()
{

  return swift_deallocObject();
}

uint64_t sub_100015C58()
{

  return swift_deallocObject();
}

uint64_t sub_100015C98()
{

  return swift_deallocObject();
}

uint64_t sub_100015D18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100015D50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100015D90()
{

  return swift_deallocObject();
}

uint64_t sub_100015DC8()
{

  return swift_deallocObject();
}

uint64_t sub_100015E20()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100015E70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100015EAC()
{

  return swift_deallocObject();
}

uint64_t sub_100015EFC()
{

  return swift_deallocObject();
}

uint64_t sub_100015F44()
{

  return swift_deallocObject();
}

uint64_t sub_100015FC8()
{

  return swift_deallocObject();
}

uint64_t sub_100016000()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100016064()
{

  return swift_deallocObject();
}

uint64_t sub_100016128()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100016160()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100016198()
{

  return swift_deallocObject();
}

uint64_t sub_1000161D0()
{

  return swift_deallocObject();
}

uint64_t sub_100016220()
{

  return swift_deallocObject();
}

uint64_t sub_100016258()
{

  return swift_deallocObject();
}

uint64_t sub_100016298()
{

  return swift_deallocObject();
}

uint64_t sub_1000162D8()
{

  return swift_deallocObject();
}

uint64_t sub_100016318()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100016388()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000163EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100016428()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100016460()
{

  return swift_deallocObject();
}

uint64_t sub_10001649C()
{

  return swift_deallocObject();
}

uint64_t sub_1000164FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100016564()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000165F4()
{
  v1 = sub_1004EB158(&qword_1009219F8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000166C4()
{

  return swift_deallocObject();
}

uint64_t sub_100016708()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100016740()
{

  return swift_deallocObject();
}

uint64_t sub_100016778()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000167B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000167F0()
{

  return swift_deallocObject();
}

uint64_t sub_100016838()
{

  return swift_deallocObject();
}

uint64_t sub_100016888()
{

  return swift_deallocObject();
}

uint64_t sub_1000168D0()
{

  return swift_deallocObject();
}

uint64_t sub_100016908()
{

  sub_1004F3EE4(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_100016960()
{

  return swift_deallocObject();
}

uint64_t sub_1000169A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000169F8()
{

  return swift_deallocObject();
}

uint64_t sub_100016A48()
{

  return swift_deallocObject();
}

uint64_t sub_100016A88()
{

  return swift_deallocObject();
}

uint64_t sub_100016B18()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100016B5C()
{

  return swift_deallocObject();
}

uint64_t sub_100016B94()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100016BCC()
{

  return swift_deallocObject();
}

uint64_t sub_100016C04()
{

  return swift_deallocObject();
}

uint64_t sub_100016C5C()
{

  sub_10053CFC4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_100016CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100016D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100016E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004EB158(&unk_100921DE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100016EE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004EB158(&unk_100921DE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100016F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001704C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100017104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s28UpcomingPaymentNotificationsV19NotificationContentV15UpcomingPaymentVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000171B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s28UpcomingPaymentNotificationsV19NotificationContentV15UpcomingPaymentVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100017264()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10001729C()
{

  return swift_deallocObject();
}

uint64_t sub_1000172DC()
{

  return swift_deallocObject();
}

uint64_t sub_100017314()
{

  return swift_deallocObject();
}

uint64_t sub_100017354()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v1 = type metadata accessor for ActivityContent();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1004EB158(&qword_1009219C8) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v13 = *(v5 + 64);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v10 = type metadata accessor for AlertConfiguration();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v6, 1, v10))
  {
    (*(v11 + 8))(v0 + v6, v10);
  }

  (*(v8 + 8))(v0 + ((v6 + v13 + v9) & ~v9), v7);
  return swift_deallocObject();
}

uint64_t sub_100017624()
{

  return swift_deallocObject();
}

uint64_t sub_100017660()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1000176A8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000176F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100017740()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100017778()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000177B0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000177E8()
{

  return swift_deallocObject();
}

uint64_t sub_100017840()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100017888()
{

  return swift_deallocObject();
}

uint64_t sub_1000178E8()
{

  return swift_deallocObject();
}

uint64_t sub_100017920()
{

  return swift_deallocObject();
}

uint64_t sub_100017958()
{
  v1 = type metadata accessor for ProvisioningRequirement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100017A30()
{

  return swift_deallocObject();
}

uint64_t sub_100017A78()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100017AB4()
{
  v1 = type metadata accessor for ProvisioningRequirement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100017BD4()
{
  v1 = type metadata accessor for ProvisioningRequirement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100017CF0()
{
  v1 = type metadata accessor for ProvisioningRequirement();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100017DFC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100017E34()
{

  return swift_deallocObject();
}

uint64_t sub_100017E74()
{

  return swift_deallocObject();
}

uint64_t sub_100017EAC()
{

  return swift_deallocObject();
}

uint64_t sub_100017EF4()
{

  return swift_deallocObject();
}

uint64_t sub_100017F60()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_100018010@<X0>(uint64_t *a1@<X8>)
{
  result = FullyQualifiedAccountIdentifier.accountID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000180E0@<X0>(_WORD *a1@<X8>)
{
  result = AccountOriginType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100018110()
{

  return swift_deallocObject();
}

uint64_t sub_10001814C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100018194()
{

  return swift_deallocObject();
}

uint64_t sub_1000181F4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10001822C()
{

  return swift_deallocObject();
}

uint64_t sub_10001827C()
{

  return swift_deallocObject();
}

uint64_t sub_1000182B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000182F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10001833C()
{

  return swift_deallocObject();
}

uint64_t sub_100018374()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000183B4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10001841C@<X0>(_BYTE *a1@<X8>)
{
  result = InternalAccount.isAccountEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100018474()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000184AC()
{

  return swift_deallocObject();
}

uint64_t sub_1000184EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100018524()
{

  return swift_deallocObject();
}

uint64_t sub_100018564()
{

  return swift_deallocObject();
}

uint64_t sub_1000185B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000185F0()
{

  return swift_deallocObject();
}

uint64_t sub_100018690()
{

  return swift_deallocObject();
}

uint64_t sub_1000186D0@<X0>(uint64_t *a1@<X8>)
{
  result = Institution.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018778@<X0>(uint64_t *a1@<X8>)
{
  result = InternalTransaction.transactionDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000187BC@<X0>(uint64_t *a1@<X8>)
{
  result = InternalTransaction.merchantName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000188C8@<X0>(uint64_t *a1@<X8>)
{
  result = InternalAccount.externalAccountId.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000189F8@<X0>(_BYTE *a1@<X8>)
{
  result = InternalTransaction.isVisible.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100018AB4@<X0>(uint64_t a1@<X8>)
{
  result = CurrencyAmount.amount.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_100018AE4@<X0>(uint64_t *a1@<X8>)
{
  result = CurrencyAmount.currencyCode.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100018B38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100018B70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100018BA8()
{

  return swift_deallocObject();
}

uint64_t sub_100018BE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100018C20()
{

  return swift_deallocObject();
}

uint64_t sub_100018C68()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100018CA0()
{

  return swift_deallocObject();
}

uint64_t sub_100018CD8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100018D1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100018D54()
{

  return swift_deallocObject();
}

uint64_t sub_100018D8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100018DA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100018DBC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100018DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1004F3E90(a1, a2);
  }

  return a1;
}

void sub_1000195D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_1000198E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v15 = objc_alloc_init(PKCreditInstallmentPlanPayment);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v15 withProperties:v7 values:a4];

  v8 = [NSNumber numberWithLongLong:a2];
  v9 = [*(a1 + 40) database];
  v10 = [CreditInstallmentPlanLineItem lineItemsForInstallmentPlanPaymentPID:v8 inDatabase:v9];

  [v15 setLineItems:v10];
  v11 = [v15 statementIdentifier];
  if (v11)
  {
    v12 = [*(a1 + 40) database];
    v13 = [CreditAccountStatement creditAccountStatementWithIdentifier:v11 inDatabase:v12];
    v14 = [v13 creditAccountStatement];

    [v15 setStatement:v14];
  }

  if (v15)
  {
    [*(a1 + 48) addObject:v15];
  }
}

void sub_100019DD0(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditInstallmentPlanPayment *)v3 setAmountDue:v4];
}

void sub_100019E34(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditInstallmentPlanPayment *)v3 setAmountPaid:v4];
}

void sub_100019E98(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditInstallmentPlanPayment *)v3 setDueDate:v4];
}

void sub_100019EF8(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKCreditInstallmentPlanPayment *)v3 setStatementDate:v4];
}

void sub_100019F58(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditInstallmentPlanPayment *)v3 setOriginalAmountDue:v4];
}

void sub_100019FBC(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v4 = a2;
  -[PKCreditInstallmentPlanPayment setPaymentNumber:](v4, "setPaymentNumber:", [a3 unsignedIntegerValue]);
}

void sub_10001A014(id a1, PKCreditInstallmentPlanPayment *a2, id a3)
{
  v4 = a2;
  -[PKCreditInstallmentPlanPayment setPaymentCount:](v4, "setPaymentCount:", [a3 unsignedIntegerValue]);
}

void sub_10001ADF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [a2 firstObject];
  v6 = [v5 firstObject];

  if (v6 | v8)
  {
    v7 = objc_alloc_init(PKMerchant);
    [v7 setMapsMerchant:v8];
    [v7 setMapsBrand:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001AFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001B014(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mapItems];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001B0DC;
  v6[3] = &unk_10083C090;
  v7 = *(a1 + 32);
  [WeakRetained _brandAndMerchantInformationForMapItems:v5 completion:v6];
}

void sub_10001B0DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [a2 firstObject];
  v6 = [v5 firstObject];

  if (v6 | v8)
  {
    v7 = objc_alloc_init(PKMerchant);
    [v7 setMapsMerchant:v8];
    [v7 setMapsBrand:v6];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10001B664(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = [v5 count];
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Completed maps data update with %ld items and error %@", &v8, 0x16u);
  }

  [*(a1 + 32) _brandAndMerchantInformationForMapItems:v5 completion:*(a1 + 40)];
}

id sub_10001C26C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  v4 = *(a1 + 32);

  return [v4 _executeNextRequestIfPossible];
}

Class sub_10001CC10()
{
  if (qword_100923F90 != -1)
  {
    sub_1005AC134();
  }

  result = objc_getClass("MKMapService");
  qword_100923F80 = result;
  off_10091CF90 = sub_10001CC64;
  return result;
}

Class sub_10001CC9C()
{
  if (qword_100923F90 != -1)
  {
    sub_1005AC134();
  }

  result = objc_getClass("MKLocalSearchRequest");
  qword_100923F98 = result;
  off_10091CF98 = sub_10001CCF0;
  return result;
}

Class sub_10001CCFC()
{
  if (qword_100923F90 != -1)
  {
    sub_1005AC134();
  }

  result = objc_getClass("MKLocalSearch");
  qword_100923FA0 = result;
  off_10091CFA0 = sub_10001CD50;
  return result;
}

Class sub_10001CD5C()
{
  if (qword_100923F90 != -1)
  {
    sub_1005AC134();
  }

  result = objc_getClass("MKWalletMerchantStylingInfo");
  qword_100923FA8 = result;
  off_10091CFA8 = sub_10001CDB0;
  return result;
}

Class sub_10001CDBC()
{
  if (qword_100923F90 != -1)
  {
    sub_1005AC134();
  }

  result = objc_getClass("MKMapItemIdentifier");
  qword_100923FB0 = result;
  off_10091CFB0 = sub_10001CE10;
  return result;
}

void sub_10001CFB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v10 = objc_alloc_init(PDLiveActivityState);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v10 withProperties:v7 values:a4];

  v8 = [LiveActivityStatePass passesInDatabase:*(a1 + 40) forActivityStatePersistentID:a2];
  v9 = [v8 allObjects];
  [(PDLiveActivityState *)v10 setPasses:v9];

  [*(a1 + 48) addObject:v10];
}

void sub_10001D20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D224(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D2DC;
  v7[3] = &unk_10083C170;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v3 = [v2 pk_createArrayBySafelyApplyingBlock:v7];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 1;
}

LiveActivityState *sub_10001D2DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[LiveActivityState alloc] initWithActivityState:v3 forSectionState:*(a1 + 32) inDatabase:*(a1 + 40)];
  v5 = [v3 passes];

  [LiveActivityStatePass insertPasses:v5 forActivityState:v4 inDatabase:*(a1 + 40)];

  return v4;
}

void sub_10001D5E4(id a1, PDLiveActivityState *a2, id a3)
{
  v3 = a2;
  [(PDLiveActivityState *)v3 setState:PKPassRelevancySystemPresentmentStateFromString()];
}

void sub_10001DAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001DAEC(uint64_t a1)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001DBB8;
  v10[3] = &unk_10083C268;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  *&v6 = *(a1 + 56);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v11 = v7;
  v12 = v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(*(*(a1 + 56) + 8) + 24);

  return v8;
}

void sub_10001DBB8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [TileState insertState:a3 inDatabase:*(a1 + 32)];
  if (v7)
  {
    v8 = [objc_alloc(*(a1 + 56)) initWithState:v7 identifier:v9 forDescriptor:*(a1 + 40) inDatabase:*(a1 + 32)];
    *(*(*(a1 + 48) + 8) + 24) = v8 != 0;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void sub_10001E084(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v10 = objc_alloc_init(PDLiveActivitySectionState);
  [*(a1 + 56) applyPropertySetters:*(a1 + 32) toObject:v10 withProperties:v7 values:a4];

  v8 = [LiveActivityState liveActivityStatesInDatabase:*(a1 + 40) forSectionStatePersistentID:a2];
  v9 = [v8 allObjects];
  [(PDLiveActivitySectionState *)v10 setActivityStates:v9];

  [*(a1 + 48) addObject:v10];
}

uint64_t sub_10001E384(uint64_t a1)
{
  [LiveActivityState deleteEntitiesForSectionState:*(a1 + 32) inDatabase:*(*(a1 + 32) + 8)];
  v2 = [LiveActivityState insertActivityStates:*(a1 + 40) forSectionState:*(a1 + 32) inDatabase:*(*(a1 + 32) + 8)];
  return 1;
}

void sub_10001E5C0(id a1, PDLiveActivitySectionState *a2, id a3)
{
  v3 = a2;
  [(PDLiveActivitySectionState *)v3 setAttributesType:PKLiveActivityAttributesTypeFromString()];
}

void sub_10001ECA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 copyWithoutCompletion];
  [v2 addObject:v3];
}

BOOL sub_10001ED4C(id a1, PKPassShare *a2, unint64_t a3, BOOL *a4)
{
  [(PKPassShare *)a2 status:a3];

  return PKShareStatusIsPendingVerification();
}

void sub_10001EE40(uint64_t a1)
{
  [*(a1 + 32) setStatus:5];
  [*(*(a1 + 40) + 8) addPassShare:*(a1 + 32) forPassUniqueIdentifier:0];
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 56) == 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001EF6C;
  v11[3] = &unk_10083C3D0;
  v12 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v13 = v5;
  v15 = v6;
  v16 = v3;
  v10 = *(a1 + 32);
  v7 = v10.i64[0];
  v14 = vextq_s8(v10, v10, 8uLL);
  v8 = v2;
  [v4 _enumerateOperations:v11];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  [WeakRetained provisioningOperationsDidUpdate];
}

void sub_10001EF6C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 shareIdentifier];
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

      goto LABEL_20;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  v12 = [v5 transportIdentifier];
  v13 = *(a1 + 40);
  v14 = v12;
  v15 = v13;
  v16 = v15;
  if (v14 != v15)
  {
    if (v14 && v15)
    {
      v17 = [v14 isEqualToString:v15];

      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

LABEL_20:
    goto LABEL_21;
  }

LABEL_14:
  v18 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 32);
    v20 = PKSharingLoggableMailboxAddress();
    *buf = 138412546;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Notifying operation of activation code failure for share: '%@' transportIdentifier: '%@'", buf, 0x16u);
  }

  v21 = *(*(a1 + 48) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F200;
  block[3] = &unk_10083C3A8;
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v22 = v5;
  v26 = v22;
  dispatch_async(v21, block);
  if (*(a1 + 72) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
    v24 = [v22 copyWithoutCompletion];
    [WeakRetained finishedStatefulProvisioningAttemptWithSuccess:0 operation:v24 share:*(a1 + 56)];
  }

  *a3 = 1;

LABEL_21:
}

void sub_10001F200(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = 3;
  }

  else if (*(a1 + 48) == 1)
  {
    v2 = 5;
  }

  else
  {
    v2 = 2;
  }

  v4 = [NSError pkSharingError:v2];
  v3 = [*(a1 + 32) completion];
  (v3)[2](v3, 0, v4);
}

void sub_10001F344(uint64_t a1)
{
  v2 = [*(a1 + 32) devicePrimaryPaymentApplication];
  v3 = [v2 subcredentials];
  v4 = [v3 anyObject];

  v5 = [v4 identifier];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v6 = *(a1 + 40);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10001F4A4;
  v12 = &unk_10083C448;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  v15 = *(a1 + 32);
  v16 = &v17;
  [v6 _enumerateOperations:&v9];
  if (*(v18 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
    [WeakRetained provisioningOperationsDidUpdate];
  }

  _Block_object_dispose(&v17, 8);
}

void sub_10001F48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001F4A4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v7 = [v5 transportIdentifier];
  v8 = [v6 passShareForTransportIdentifier:v7];

  v9 = [v8 subcredentialIdentifier];
  v10 = *(a1 + 40);
  v11 = v9;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_10;
  }

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

LABEL_14:
    goto LABEL_15;
  }

  v15 = [v11 isEqualToString:v12];

  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_10:
  v16 = [*(a1 + 32) _isPassProvisioningComplete:*(a1 + 48)];

  if (v16)
  {
    v17 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 identifier];
      v19 = [v5 transportIdentifier];
      v20 = PKSharingLoggableMailboxAddress();
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Notifying operation of activation code success for share: '%@' transportIdentifier: '%@'", buf, 0x16u);
    }

    v21 = *(*(a1 + 32) + 32);
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_10001F73C;
    v28 = &unk_10083C420;
    v22 = v5;
    v29 = v22;
    v30 = *(a1 + 48);
    dispatch_async(v21, &v25);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v24 = [v22 copyWithoutCompletion];
    [WeakRetained finishedStatefulProvisioningAttemptWithSuccess:1 operation:v24 share:v8];
  }

LABEL_15:
}

void sub_10001F73C(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  (*(v2 + 2))(v2, *(a1 + 40), 0);
}

void sub_10001F9C8(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Terminated stateful provisioning for share: '%@'", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001FB18;
  v8[3] = &unk_10083C498;
  v9 = v2;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v10 = vextq_s8(v7, v7, 8uLL);
  v6 = v2;
  [v4 _enumerateOperations:v8];
}

void sub_10001FB18(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 shareIdentifier];
  v7 = a1[4];
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

      goto LABEL_9;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v12 = *(a1[5] + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FC64;
  block[3] = &unk_10083C470;
  v13 = v5;
  v16 = v13;
  dispatch_async(v12, block);
  WeakRetained = objc_loadWeakRetained((a1[5] + 16));
  [WeakRetained finishedStatefulProvisioningAttemptWithSuccess:0 operation:v13 share:a1[6]];

  *a3 = 1;
LABEL_9:
}

void sub_10001FC64(uint64_t a1)
{
  v3 = [NSError pkSharingError:5];
  v2 = [*(a1 + 32) completion];
  (v2)[2](v2, 0, v3);
}

void sub_10001FDA8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [[PKPassShareActivationOption alloc] initWithDefaultIdentifierForType:1];
    [v2 setValue:*(a1 + 32)];
    v3 = *(a1 + 40);
    v4 = [PKPassShareActivationOptions alloc];
    v12 = v2;
    v5 = [NSArray arrayWithObjects:&v12 count:1];
    v6 = [v4 initWithOptions:v5];
    [v3 setActivationOptions:v6];
  }

  else
  {
    [*(a1 + 40) setActivationOptions:0];
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) identifier];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Marking share '%@' as pending activation while waiting for verification.", &v10, 0xCu);
  }

  [*(a1 + 40) setStatus:4];
  [*(*(a1 + 48) + 8) addPassShare:*(a1 + 40) forPassUniqueIdentifier:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
  [WeakRetained provisioningOperationsDidUpdate];
}

void sub_10001FFD4(uint64_t a1)
{
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10002007C;
  v9 = &unk_10083C4E8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  [v2 _enumerateOperations:&v6];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained provisioningOperationsDidUpdate];
}

void sub_10002007C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 transportIdentifier];
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

LABEL_11:
      *a3 = 0;
      goto LABEL_12;
    }

    v11 = [v8 isEqualToString:v9];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PKSharingLoggableMailboxAddress();
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Terminated stateful provisioning for transportIdentifier: '%@'", buf, 0xCu);
  }

  v14 = *(*(a1 + 40) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000202A8;
  block[3] = &unk_10083C470;
  v15 = v5;
  v22 = v15;
  dispatch_async(v14, block);
  v16 = *(*(a1 + 40) + 8);
  v17 = [v15 shareIdentifier];
  v18 = [v16 passShareForIdentifier:v17];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v20 = [v15 copyWithoutCompletion];
  [WeakRetained finishedStatefulProvisioningAttemptWithSuccess:0 operation:v20 share:v18];

  *a3 = 1;
LABEL_12:
}

void sub_1000202A8(uint64_t a1)
{
  v3 = [NSError pkSharingError:5];
  v2 = [*(a1 + 32) completion];
  (v2)[2](v2, 0, v3);
}

void sub_1000203BC(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "StatefulProvisioningManager: Adding new operation %@", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  [*(v5 + 40) addObject:*(v4 - 1)];
  objc_initWeak(buf, *v4);
  v6 = dispatch_time(0, 30000000000);
  v7 = *(*v4 + 3);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100020578;
  v12 = &unk_10083C510;
  objc_copyWeak(&v14, buf);
  v13 = *(v4 - 1);
  dispatch_after(v6, v7, &v9);
  WeakRetained = objc_loadWeakRetained(*v4 + 2);
  [WeakRetained provisioningOperationsDidUpdate];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void sub_100020554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100020578(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _operationDidTimeout:*(a1 + 32)];
}

void sub_100020E54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:*(a1 + 40) toObject:*(a1 + 48) withProperties:v5 values:a3];
}

void sub_100021040(id a1, PKTransactionReleasedData *a2, id a3)
{
  v3 = a2;
  v4 = _URLForSQLValue();
  [(PKTransactionReleasedData *)v3 setPrivacyPolicyURL:v4];
}

void sub_10002173C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != 1)
  {
    if (!v2)
    {
      sub_1005ACDDC();
    }

    goto LABEL_14;
  }

  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registration requested with coalescing action", v7, 2u);
  }

  v4 = [*(*(a1 + 32) + 16) lastObject];
  if (!v4)
  {
LABEL_14:
    sub_1005ACE38(a1);
    v5 = 0;
    goto LABEL_15;
  }

  v5 = v4;
  if (*(v4 + 24) || ![*(v4 + 40) isEqual:*(a1 + 40)] || *(a1 + 72) == ((v5[16] & 1) == 0) || *(a1 + 73) == ((v5[17] & 1) == 0))
  {
    sub_1005ACD80(v3, v5);
    goto LABEL_14;
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    sub_1005AC358(v5, v6);
  }

LABEL_15:
}

void sub_100021860(id *a1, char a2)
{
  if (a2)
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100021AD4;
    v21 = &unk_10083C7A8;
    v3 = a1[4];
    v4 = a1[5];
    v5 = (a1 + 6);
    *&v6 = a1[6];
    *(&v6 + 1) = a1[7];
    *&v7 = v3;
    *(&v7 + 1) = v4;
    v22 = v7;
    v23 = v6;
    v24 = a1[8];
    v25 = a1[9];
    v8 = objc_retainBlock(&v18);
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RegistrationService: Attempting to register for Apple Pay.", buf, 2u);
    }

    v10 = [a1[7] paymentWebServiceCoordinator];
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = *v5;
    if (*v5)
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        if (v12 == 1)
        {
          sub_1005ACED0(v11, a1 + 6, v10, v8);
        }

        else
        {
          if (v12 != 2)
          {
LABEL_9:
            v13 = a1[9];
            if (v13)
            {
              (*(v13 + 2))(v13, 2, 0, 0);
            }

            goto LABEL_19;
          }

          sub_1005ACE98(v11, a1 + 6, v10, v8);
        }

LABEL_19:

        return;
      }

      v16 = *(v11 + 40);
    }

    else
    {
      v16 = 0;
    }

    v17 = *v5;
    if (*v5)
    {
      LOBYTE(v17) = *(v17 + 16);
    }

    [v10 performRegistrationForBrokerURL:v16 force:v17 & 1 completion:v8];
    goto LABEL_19;
  }

  [a1[4] removeDiagnosticReason:a1[5]];
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "RegistrationService: Cannot automatically register because the pre-conditions failed.", buf, 2u);
  }

  v15 = a1[9];
  if (v15)
  {
    (*(v15 + 2))(v15, 2, 0, 0);
  }
}

void sub_100021AD4(uint64_t a1, int a2)
{
  [*(a1 + 32) removeDiagnosticReason:*(a1 + 40)];
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RegistrationService: Successfully registered for Apple Pay.", buf, 2u);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = v7[17];
    }

    else
    {
      v8 = 0;
    }

    if (sub_1005ACAC0(*(a1 + 56), v7))
    {
      v9 = *(a1 + 32);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100021D60;
      v18[3] = &unk_10083C718;
      v19 = v9;
      v20 = *(a1 + 64);
      v10 = *(a1 + 40);
      v11 = *(a1 + 56);
      v21 = v10;
      v22 = v11;
      v24 = v8 & 1;
      v23 = *(a1 + 72);
      [v19 _canRegisterForPeerPaymentWithCompletion:v18];

      v12 = v19;
    }

    else
    {
      v13 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Peer payment registration not attempted", buf, 2u);
      }

      v14 = *(a1 + 72);
      if (!v14)
      {
        goto LABEL_18;
      }

      v12 = [*(a1 + 32) context];
      (*(v14 + 16))(v14, 16, v12, 0);
    }

LABEL_18:
    v15 = *(a1 + 32);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100022008;
    v16[3] = &unk_10083C780;
    v17 = v15;
    [v17 _shouldPerformApplePayTrustRegistrationWithCompletion:v16];

    return;
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "RegistrationService: Failed to register for Apple Pay.", buf, 2u);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    (*(v6 + 16))(v6, 4, 0, 0);
  }
}

void sub_100021D60(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) context];
  v5 = [v4 peerPaymentServiceURL];
  v6 = PKPeerPaymentServiceOverrideURL();
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Using overridden peer payment service url '%@'", buf, 0xCu);
    }

    v8 = v6;
    v5 = v8;
  }

  if (a2 && v5)
  {
    [*(a1 + 40) addDiagnosticReason:*(a1 + 48)];
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100021F98;
    v14[3] = &unk_10083C6F0;
    v13 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v18 = *(a1 + 64);
    v17 = v4;
    sub_1005ACC64(v11, v5, v13, v12, v14);
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peer payment registration not available for current device registration data.", buf, 2u);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      (*(v10 + 16))(v10, 16, v4, 0);
    }
  }
}

void sub_100021F98(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) removeDiagnosticReason:*(a1 + 40)];
  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, a2 | 0x10, *(a1 + 48), v6);
  }
}

id *sub_100022008(id *result, int a2)
{
  if (a2)
  {
    return [result[4] performApplePayTrustRegistrationWithCompletion:&stru_10083C758];
  }

  return result;
}

void sub_100022020(id a1, PKApplePayTrustKey *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v4;
      v8 = "Apple Pay Trust registration succeeded with key: %@.";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, &v9, 0xCu);
    }
  }

  else if (v7)
  {
    v9 = 138543362;
    v10 = v5;
    v8 = "Apple Pay Trust registration failed with error: %{public}@";
    goto LABEL_6;
  }
}

void sub_100022114(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100022834;
    v29[3] = &unk_10083C848;
    v29[4] = a1;
    [v10 addOperation:v29];
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_100005950;
    v27[4] = sub_10000B0B4;
    v28 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100022914;
    v24[3] = &unk_10083C898;
    v26 = v27;
    v11 = v8;
    v25 = v11;
    [v10 addOperation:v24];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v23 = 0;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100022BE8;
    v17[3] = &unk_10083C8C0;
    v18 = v7;
    v19 = v11;
    v20 = v27;
    v21 = v22;
    [v10 addOperation:v17];
    v12 = +[NSNull null];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002307C;
    v14[3] = &unk_10083C8E8;
    v15 = v9;
    v16 = v22;
    v13 = [v10 evaluateWithInput:v12 completion:v14];

    _Block_object_dispose(v22, 8);
    _Block_object_dispose(v27, 8);
  }
}

void sub_1000223DC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) firstObject];
  if (v2)
  {
    v3 = v2;
    [*(*(a1 + 32) + 16) removeObjectAtIndex:0];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = sub_1005AC3E0(v3);
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v14 + 1) + 8 * v8) + 16))(*(*(&v14 + 1) + 8 * v8));
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v6);
    }

    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v3[4].isa;
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed processing registration attempt with reason :%{public}@", buf, 0xCu);
    }

    v11 = [*(*(a1 + 32) + 16) count];
    v12 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Processing next registration attempt", buf, 2u);
      }

      v13 = [*(*(a1 + 32) + 16) firstObject];

      sub_1005AC708(*(a1 + 32), v13);
      v3 = v13;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Completed processing all registration attempts", buf, 2u);
      }
    }
  }

  else
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Error: no registration task found for completion", buf, 2u);
    }
  }
}

void sub_100022664(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully registered with the peer payment service.", &v15, 2u);
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 16);
LABEL_16:
      v9();
    }
  }

  else
  {
    if (v7)
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to register with the peer payment service: %@.", &v15, 0xCu);
    }

    v10 = [v5 domain];
    v11 = [v10 isEqualToString:PKPeerPaymentWebServiceErrorDomain];

    if (v11)
    {
      v12 = [v5 code];
      v13 = v12;
      if (v12 == 40319 || v12 == 40308)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 134217984;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Including PKDeviceRegistrationResultPeerPaymentDoNotRetry in result due to terminal server response %li", &v15, 0xCu);
        }
      }
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v9 = *(v14 + 16);
      goto LABEL_16;
    }
  }
}

void sub_100022834(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 24);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000228FC;
  v11[3] = &unk_10083C820;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 updateWebServiceConfigurationWithCompletion:v11];
}

void sub_100022914(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) _appleAccountInformation];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = *(*(*(a1 + 40) + 8) + 40);
  if (!v11 || ([v11 aidaAccountAvailable] & 1) != 0 || (objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "aidaAccountRequiresAuthentication") & 1) == 0)
  {
LABEL_11:
    v7[2](v7, v6, 0);
    goto LABEL_12;
  }

  v12 = +[PDSetupAssistantCompleteMonitor hasCompletedSetupAssistant];
  v13 = PKLogFacilityTypeGetObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if ((v12 & 1) == 0)
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RegistrationService: account requires token renewal, but setup assistant not complete", buf, 2u);
    }

    goto LABEL_11;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RegistrationService: renewing apple account auth", buf, 2u);
  }

  v15 = +[PKAppleAccountManager sharedInstance];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100022AEC;
  v16[3] = &unk_10083C870;
  v19 = *(a1 + 40);
  v18 = v7;
  v17 = v6;
  [v15 renewAppleAccountWithCompletionHandler:v16];

LABEL_12:
}

void sub_100022AEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RegistrationService: Failed to renewed applet account auth", v12, 2u);
    }

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RegistrationService: Successfully renewed applet account auth", buf, 2u);
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v5;
    v9 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100022BE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_4;
  }

  v11 = *(v10 + 24);
  if ((v11 - 1) >= 2)
  {
    if (v11)
    {
      goto LABEL_43;
    }

LABEL_4:
    if (![*(a1 + 40) registrationSetupSupportedInRegion])
    {
      goto LABEL_43;
    }
  }

  v12 = PKPasscodeEnabled();
  IsAvailable = PKSecureElementIsAvailable();
  v14 = *(*(*(a1 + 48) + 8) + 40);
  if (v14)
  {
    v33 = [v14 aidaAccountAvailable];
  }

  else
  {
    v33 = 0;
  }

  v15 = PKIsSRD();
  v16 = [*(*(*(a1 + 48) + 8) + 40) aaAlternateDSID];
  v32 = PKIsBeneficiaryAccountWithAltDsid();

  v17 = [*(a1 + 40) targetDevice];
  v18 = [v17 secureElementOwnershipStateForCurrentUser];

  v19 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"YES";
    if (!IsAvailable)
    {
      v20 = @"NO";
    }

    *buf = 138543362;
    v35 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RegistrationService: Secure Element Available: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"YES";
    if (!v12)
    {
      v21 = @"NO";
    }

    *buf = 138543362;
    v35 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RegistrationService: Passcode is enabled: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"NO";
    if (v33)
    {
      v22 = @"YES";
    }

    *buf = 138543362;
    v35 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RegistrationService: AppleIDAuth account for primary Apple Account: %{public}@", buf, 0xCu);
  }

  v23 = v18 - 1;

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v24 = @"NO";
    if (v23 < 3)
    {
      v24 = @"YES";
    }

    if (v18 > 7)
    {
      v25 = @"unknown";
    }

    else
    {
      v25 = *(&off_10083C908 + v18);
    }

    *buf = 138543618;
    v35 = v24;
    v36 = 2112;
    v37 = v25;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RegistrationService: Secure element ownership state valid: %{public}@ - %@", buf, 0x16u);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v26 = @"NO";
    if (v15)
    {
      v26 = @"YES";
    }

    *buf = 138543362;
    v35 = v26;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RegistrationService: Is SRD: %{public}@", buf, 0xCu);
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v27 = @"NO";
    if (v32)
    {
      v27 = @"YES";
    }

    *buf = 138543362;
    v35 = v27;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "RegistrationService: Is Beneficiary Account: %{public}@", buf, 0xCu);
  }

  v28 = 0;
  if (v12)
  {
    v29 = v15;
  }

  else
  {
    v29 = 1;
  }

  if ((v29 & 1) == 0 && IsAvailable && ((v33 ^ 1) & 1) == 0)
  {
    v28 = (v23 < 3) & (v32 ^ 1);
  }

  *(*(*(a1 + 56) + 8) + 24) = v28;
LABEL_43:
  v30 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v31 = @"YES";
    }

    else
    {
      v31 = @"NO";
    }

    *buf = 138543362;
    v35 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "RegistrationService: Can automatically register %{public}@", buf, 0xCu);
  }

  v9[2](v9, v8, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_autoreleasePoolPush();
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10002384C, PKDarwinNotificationEventLanguageChanged, 0, 0);
  v6 = PDDefaultQueue();
  dispatch_sync(v6, &stru_10083C948);

  v7 = +[NSRunLoop currentRunLoop];
  objc_autoreleasePoolPop(v4);
  [v7 run];

  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_10002384C()
{
  PDSetPaymentSetupFeaturesAreDirty();
  PDSetSpotlightIndexNeedsIndexing();
  exit(0);
}

void sub_100023A60(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 setOrder:a3];
  v6 = [PaymentTransactionAward insertPaymentTransactionAward:v5 forPaymentTransactionPID:*(a1 + 48) inDatabase:*(a1 + 32)];

  [*(a1 + 40) safelyAddObject:v6];
}

void sub_100023DE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v12 = objc_alloc_init(PKPaymentTransactionAward);
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v12 withProperties:v6 values:a4];
  v7 = *(a1 + 48);
  v8 = *(a4 + 8 * [v6 indexOfObject:@"amount"]);
  v9 = *(a4 + 8 * [v6 indexOfObject:@"currency"]);
  v10 = [v6 indexOfObject:@"exponent"];

  v11 = [v7 _postProcessedAmountForDecimalAmount:v8 currency:v9 exponent:{objc_msgSend(*(a4 + 8 * v10), "integerValue")}];
  [v12 setAmount:v11];

  [*(a1 + 40) safelyAddObject:v12];
}

void sub_1000241DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v11 = objc_alloc_init(PKPaymentTransactionAward);
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

void sub_100024A10(id a1, PKPaymentTransactionAward *a2, id a3)
{
  v4 = a2;
  -[PKPaymentTransactionAward setOrder:](v4, "setOrder:", [a3 integerValue]);
}

void sub_100024A88(id a1, PKPaymentTransactionAward *a2, id a3)
{
  v4 = a2;
  -[PKPaymentTransactionAward setHasDeepLink:](v4, "setHasDeepLink:", [a3 BOOLValue]);
}

void sub_100024AE0(id a1, PKPaymentTransactionAward *a2, id a3)
{
  v4 = a2;
  -[PKPaymentTransactionAward setClaimExpired:](v4, "setClaimExpired:", [a3 BOOLValue]);
}

void sub_100024B38(id a1, PKPaymentTransactionAward *a2, id a3)
{
  v4 = a2;
  -[PKPaymentTransactionAward setRedeemExpired:](v4, "setRedeemExpired:", [a3 BOOLValue]);
}

void sub_100024B90(id a1, PKPaymentTransactionAward *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPaymentTransactionAward *)v3 setClaimExpiryDate:v4];
}

void sub_100024BF0(id a1, PKPaymentTransactionAward *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PKPaymentTransactionAward *)v3 setRedeemExpiryDate:v4];
}

void sub_100025250(uint64_t a1, uint64_t a2)
{
  v4 = [AccountHold alloc];
  v5 = [*(a1 + 32) database];
  v8 = [(SQLiteEntity *)v4 initWithPersistentID:a2 inDatabase:v5];

  v6 = *(a1 + 40);
  v7 = [(AccountHold *)v8 hold];
  [v6 addObject:v7];
}

void sub_1000255B8(id a1, PKAccountHold *a2, id a3)
{
  v4 = a2;
  -[PKAccountHold setType:](v4, "setType:", [a3 integerValue]);
}

void sub_100025610(id a1, PKAccountHold *a2, id a3)
{
  v4 = a2;
  -[PKAccountHold setState:](v4, "setState:", [a3 integerValue]);
}

void sub_1000257AC(void *a1, uint64_t a2, uint64_t a3)
{
  [(SQLiteEntity *)AccountHold applyPropertySetters:a1[4] toObject:a1[5] withProperties:a2 values:a3];
  v10 = *(a3 + 8 * a1[6]);
  v5 = PKCurrencyStorageNumberToCurrencyDecimal();
  if (v5)
  {
    v6 = +[NSDecimalNumber notANumber];
    v7 = [v5 isEqualToNumber:v6];

    if ((v7 & 1) == 0)
    {
      if (v10)
      {
        v8 = a1[5];
        v9 = PKCurrencyAmountMake();
        [v8 setCurrencyAmount:v9];
      }
    }
  }
}

id _ActionURLsForSQLValue(void *a1)
{
  v1 = a1;
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 initWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v1 error:0];

  return v6;
}

id _SQLValueForActionInfo(void *a1)
{
  v1 = a1;
  if (!v1 || ([NSKeyedArchiver archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = +[NSNull null];
  }

  return v2;
}

id _SQLValueForActionIconURLs(void *a1)
{
  v1 = a1;
  if (!v1 || ([NSKeyedArchiver archivedDataWithRootObject:v1 requiringSecureCoding:1 error:0], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = +[NSNull null];
  }

  return v2;
}

id _ActionIconURLsForSQLValue(void *a1)
{
  v1 = a1;
  v2 = [NSSet alloc];
  v3 = objc_opt_class();
  v4 = [v2 initWithObjects:{v3, objc_opt_class(), 0}];
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v1 error:0];

  return v5;
}

void sub_100026370(uint64_t a1, uint64_t a2)
{
  v5 = [(SQLiteEntity *)[DiscoveryEngagementMessage alloc] initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = [(DiscoveryEngagementMessage *)v5 engagementMessage];
  [v3 addObject:v4];
}

void sub_10002669C(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a2;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v19 = 0;
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = *(a3 + 8 * v7);
        v13 = +[NSNull null];
        if (v12 == v13)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(a3 + 8 * v7);
        }

        v15 = v14;

        if ([v11 isEqualToString:@"n"])
        {
          v16 = v8;
          v8 = _DateForSQLValue();
        }

        else if ([v11 isEqualToString:@"o"])
        {
          v16 = v19;
          v19 = _DateForSQLValue();
        }

        else
        {
          v17 = [*(a1 + 32) objectForKey:v11];
          v16 = v17;
          if (v17)
          {
            (*(v17 + 16))(v17, *(a1 + 40), v15);
          }
        }

        ++v7;
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  else
  {
    v19 = 0;
    v8 = 0;
  }

  if (v8 | v19)
  {
    v18 = [[PKDiscoveryRelevantDateRange alloc] initWithStartDate:v8 endDate:v19];
    [*(a1 + 40) setRelevantDateRange:v18];
  }
}

void sub_100027118(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setVersion:](v4, "setVersion:", [a3 integerValue]);
}

void sub_100027178(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v3 = a2;
  v4 = _OSVersionRequirementRangeForSQLValue();
  [(PKDiscoveryEngagementMessage *)v3 setOsVersionRange:v4];
}

void sub_1000271D8(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setPassQualifier:](v4, "setPassQualifier:", [a3 integerValue]);
}

void sub_100027240(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a3;
  v5 = [(PKDiscoveryEngagementMessage *)a2 action];
  [v5 setTitleKey:v4];
}

void sub_1000272A0(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a3;
  v6 = [(PKDiscoveryEngagementMessage *)a2 action];
  v5 = [v4 integerValue];

  [v6 setType:v5];
}

void sub_100027310(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  v5 = _ActionIconURLsForSQLValue(a3);
  [(PKDiscoveryEngagementMessage *)v4 setIconURLs:v5];
}

void sub_100027374(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a3;
  v6 = [(PKDiscoveryEngagementMessage *)a2 action];
  v5 = _ActionURLsForSQLValue(v4);

  [v6 setActionInfo:v5];
}

void sub_1000273EC(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setStatus:](v4, "setStatus:", [a3 integerValue]);
}

void sub_100027444(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setViewCount:](v4, "setViewCount:", [a3 integerValue]);
}

void sub_10002749C(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setReportIdentifierToAggd:](v4, "setReportIdentifierToAggd:", [a3 BOOLValue]);
}

void sub_1000274F4(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setMaxViewCount:](v4, "setMaxViewCount:", [a3 integerValue]);
}

void sub_10002754C(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[PKDiscoveryEngagementMessage setType:](v4, "setType:", [a3 integerValue]);
}

void sub_1000275A4(id a1, PKDiscoveryEngagementMessage *a2, id a3)
{
  v3 = a2;
  v4 = _HardwareVersionRangeForSQLValue();
  [(PKDiscoveryEngagementMessage *)v3 setHardwareVersionRange:v4];
}

void sub_100027AD4(id a1, DiscoveryEngagementMessage *a2, id a3)
{
  v4 = a2;
  -[DiscoveryEngagementMessage setMessageOrder:](v4, "setMessageOrder:", [a3 integerValue]);
}

void PDServerRun()
{
  v0 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "passd launch: starting...", buf, 2u);
  }

  v1 = xmmword_10068DFB0;
  v2 = xmmword_10068DFC0;
  v3 = &dword_100924030;
  v4 = 12;
  v5 = vdupq_n_s64(0xBuLL);
  v6 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v5, v2)), *v1.i8).u8[0])
    {
      *(v3 - 20) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v2)), *&v1).i8[2])
    {
      *(v3 - 10) = 0;
    }

    if (vuzp1_s16(*&v1, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v1))).i32[1])
    {
      *v3 = 0;
      v3[10] = 0;
    }

    v1 = vaddq_s64(v1, v6);
    v2 = vaddq_s64(v2, v6);
    v3 += 40;
    v4 -= 4;
  }

  while (v4);
  PDXPCEventStreamRegisterForLaunchEvents();
  PDNFSecureXPCEventListenerCreate();
  v7 = PKPassLibraryMachServiceName;
  if (qword_100923FC8[0]
    || (v8 = v7, v9 = [[NSXPCListener alloc] initWithMachServiceName:v7], v10 = qword_100923FC8[0], qword_100923FC8[0] = v9, v10, qword_100923FD0 = sub_100004458, qword_100923FD8 = sub_1000044E4, v8, v11 = PKPaymentServiceMachServiceName, qword_100923FF0)
    || (v12 = v11, v13 = [[NSXPCListener alloc] initWithMachServiceName:v11], v14 = qword_100923FF0, qword_100923FF0 = v13, v14, qword_100923FF8 = sub_1000043B4, qword_100924000 = sub_1000040DC, v12, v15 = PKInAppPaymentServiceMachServiceName, qword_100924018)
    || (v16 = v15, v17 = [[NSXPCListener alloc] initWithMachServiceName:v15], v18 = qword_100924018, qword_100924018 = v17, v18, qword_100924020 = sub_100028244, qword_100924028 = sub_1005ACF08, v16, v19 = PKContinuityPaymentServiceMachName, qword_100924040)
    || (v20 = v19, v21 = [[NSXPCListener alloc] initWithMachServiceName:v19], v22 = qword_100924040, qword_100924040 = v21, v22, qword_100924048 = sub_1000282C4, qword_100924050 = sub_100028338, v20, v23 = PKTrustedDeviceEnrollmentInfoProviderServiceName, qword_100924068)
    || (v24 = v23, v25 = [[NSXPCListener alloc] initWithMachServiceName:v23], v26 = qword_100924068, qword_100924068 = v25, v26, qword_100924070 = sub_100028344, qword_100924078 = sub_1000283B8, v24, v27 = PKPeerPaymentServiceMachServiceName, qword_100924090)
    || (v28 = v27, v29 = [[NSXPCListener alloc] initWithMachServiceName:v27], v30 = qword_100924090, qword_100924090 = v29, v30, qword_100924098 = sub_10000C118, qword_1009240A0 = sub_10000B018, v28, v31 = PKCloudStoreServiceMachServiceName, qword_1009240B8)
    || (v32 = v31, v33 = [[NSXPCListener alloc] initWithMachServiceName:v31], v34 = qword_1009240B8, qword_1009240B8 = v33, v34, qword_1009240C0 = sub_1000283C4, qword_1009240C8 = sub_100028438, v32, v35 = PKDeviceRegistrationServiceMachServiceName, qword_1009240E0)
    || (v36 = v35, v37 = [[NSXPCListener alloc] initWithMachServiceName:v35], v38 = qword_1009240E0, qword_1009240E0 = v37, v38, qword_1009240E8 = sub_1000284A8, qword_1009240F0 = sub_10002851C, v36, v39 = PKAccountServiceMachServiceName, qword_100924108)
    || (v40 = v39, v41 = [[NSXPCListener alloc] initWithMachServiceName:v39], v42 = qword_100924108, qword_100924108 = v41, v42, qword_100924110 = sub_100004068, qword_100924118 = sub_100004344, v40, v43 = PKDiscoveryServiceMachServiceName, qword_100924130)
    || (v44 = v43, v45 = [[NSXPCListener alloc] initWithMachServiceName:v43], v46 = qword_100924130, qword_100924130 = v45, v46, qword_100924138 = sub_1000054C8, qword_100924140 = sub_1000058D0, v44, v47 = PKSearchServiceMachServiceName, qword_100924158))
  {
    __break(1u);
  }

  else
  {
    v48 = v47;
    v49 = [[NSXPCListener alloc] initWithMachServiceName:v47];
    v50 = qword_100924158;
    qword_100924158 = v49;

    qword_100924160 = sub_100028528;
    qword_100924168 = sub_10002859C;

    sub_10009C038();
    v51 = sub_1005ACFA8([PDServer alloc]);
    v52 = qword_100923FB8;
    qword_100923FB8 = v51;

    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "passd launch: created PDServer.", v59, 2u);
    }

    for (i = 0; i != 55; i += 5)
    {
      v54 = qword_100923FC8[i];
      if (v54)
      {
        v55 = qword_100923FB8;
        v56 = v54;
        [v56 setDelegate:v55];
        [v56 activate];
      }
    }

    sub_10009C0D8(PDXPCListener_ApplicationAuthorization, qword_100923FB8);
    PDNFSecureXPCRegisterSecureElementEventObserver(qword_100923FB8);
    PDXPCEventStreamBeginEventDelivery();
    PDNFSecureXPCEventListenerActivate();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, qword_100923FB8, sub_100028648, FMDLostModeExitAuthCompleteNotification, 0, CFNotificationSuspensionBehaviorCoalesce);
    CFNotificationCenterPostNotification(DarwinNotifyCenter, PKServiceListenerResumedNotification, 0, 0, 0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "passd launch: finished.", v58, 2u);
    }
  }
}

PDInAppPaymentService *sub_100028244(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDInAppPaymentService alloc] initWithConnection:v3 server:v4];

  [(PDInAppPaymentService *)v5 setDelegate:v4];

  return v5;
}

PDContinuityPaymentService *sub_1000282C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDContinuityPaymentService alloc] initWithConnection:v3 server:v4];

  return v5;
}

PDTrustedDeviceEnrollmentInfoProvider *sub_100028344(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDTrustedDeviceEnrollmentInfoProvider alloc] initWithConnection:v3 server:v4];

  return v5;
}

PDCloudStoreService *sub_1000283C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDCloudStoreService alloc] initWithConnection:v3 server:v4];

  return v5;
}

void sub_100028438(void *a1, void *a2)
{
  v3 = a1[34];
  v6 = a2;
  v4 = a1;
  [v6 setCloudStoreNotificationCoordinator:v3];
  v5 = v4[33];

  [v6 setTransactionSourceController:v5];
}

PDDeviceRegistrationService *sub_1000284A8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDDeviceRegistrationService alloc] initWithConnection:v3 server:v4];

  return v5;
}

PDSearchService *sub_100028528(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [[PDSearchService alloc] initWithConnection:v3 server:v4];

  return v5;
}

void sub_10002859C(void *a1, void *a2)
{
  v3 = a1[6];
  v6 = a2;
  v4 = a1;
  [v6 setDatabaseManager:v3];
  [v6 setAccountManager:v4[17]];
  [v6 setPeerPaymentWebServiceCoordinator:v4[14]];
  [v6 setFamilyCircleManager:v4[55]];
  [v6 setIndexer:v4[46]];
  [v6 setRelevancyCoordinator:v4[43]];
  v5 = v4[15];

  [v6 setPeerPaymentAccountManager:v5];
}

void _VerifyOrCreateDirectoryStructure()
{
  v1 = +[NSFileManager defaultManager];
  v0 = PKHomeDirectoryPath();
  [v1 createDirectoryAtPath:v0 withIntermediateDirectories:1 attributes:0 error:0];
}

void _VerifyOrUpdateDirectoryFileProtection(void *a1, int a2)
{
  v3 = a1;
  if (PDProtectedDataAvailable())
  {
    PKVerifyOrUpdateDirectoryFileProtection();
  }

  else if (a2)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1005B7288(v3, v4);
    }
  }
}

void sub_1000287DC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  if (([v5 BOOLForKey:v4] & 1) == 0)
  {
    _VerifyOrUpdateDirectoryFileProtection(v6, 1);
    [v5 setBool:1 forKey:v4];
  }
}

void sub_100028874(void *a1)
{
  v1 = a1;
  v2 = PDOSTransactionCreate("PDServer.utility");
  v3 = PDUtilityQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100036BAC;
  v6[3] = &unk_10083DCB8;
  v7 = v2;
  v8 = v1;
  v4 = v1;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t sub_100028944(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    sub_1005AEF84(*(a1 + 32));
  }

  if (PKSecureElementIsAvailable() || PKIsHandoffClient())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 104);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000289F4;
    v5[3] = &unk_10083C470;
    v5[4] = v2;
    [v3 updateWebServiceConfigurationWithCompletion:v5];
  }

  sub_1005AF49C(*(a1 + 32));
  return PDEnableAutomaticInternalLogging();
}

id sub_1000289F4(uint64_t a1)
{
  [*(*(a1 + 32) + 104) startTasksIfNecessary];
  [*(*(a1 + 32) + 416) start];
  [*(*(a1 + 32) + 392) start];
  [*(*(a1 + 32) + 192) startTasks];
  [*(*(a1 + 32) + 192) recomputePassTileStates];
  sub_1005AF118(*(a1 + 32));
  sub_1005AF1FC(*(a1 + 32));
  if (PKIsPhone() && PKPassbookIsCurrentlyAvailable())
  {
    sub_1005AF2D4(*(a1 + 32));
  }

  if (PKAppleCashStickerPackIsEligibleForDownload())
  {
    sub_1005AF3B8(*(a1 + 32));
  }

  v2 = *(*(a1 + 32) + 504);

  return [v2 performInitialSyncIfNecessary];
}

void sub_100028AA8(uint64_t a1)
{
  if ((PKStoreDemoModeEnabled() & 1) != 0 || PKUIOnlyDemoModeEnabled())
  {
    sub_1005AF554(*(a1 + 32));
    if (PKGenerateStoreDemoTransactionsDaily())
    {
      v2 = PKLastGeneratedStoreDemoTransactionsDate();
      v3 = v2;
      if (!v2 || ([v2 timeIntervalSinceNow], v5 = v4, +[NSDate date](NSDate, "date"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "compare:", v3), v6, v7 == -1) || fabs(v5 / 3600.0) >= 18.0)
      {
        v8 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138412290;
          v11 = v3;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Regenerating demo transactions. Last generation date: %@", &v10, 0xCu);
        }

        [*(*(a1 + 32) + 48) generateDemoTransactionsForAllPaymentPasses];
        v9 = +[NSDate date];
        PKSetLastGeneratedStoreDemoTransactionsDate();
      }
    }
  }
}

void sub_100028C24(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_1005AF9A4;
  v1[3] = &unk_10083C470;
  v1[4] = *(a1 + 32);
  sub_100028874(v1);
}

void sub_100028E2C(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  if (a1)
  {
    if (a3 <= 0xA && (v6 = &qword_100923FC8[5 * a3], (v7 = v6[1]) != 0) && (v7(a1, v5), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      os_unfair_lock_lock(v6 + 6);
      v10 = v6[4];
      if (!v10)
      {
        v11 = objc_alloc_init(NSMutableSet);
        v12 = v6[4];
        v6[4] = v11;

        v10 = v6[4];
      }

      [v10 addObject:v9];
      objc_initWeak(&location, v5);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100029054;
      v21[3] = &unk_10083CF38;
      objc_copyWeak(v24, &location);
      v25 = a3;
      v13 = v9;
      v24[1] = &qword_100923FC8[5 * a3];
      v22 = v13;
      v23 = a1;
      [v5 setInvalidationHandler:v21];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100029268;
      v18 = &unk_10083CF60;
      objc_copyWeak(&v19, &location);
      v20 = a3;
      [v5 setInterruptionHandler:&v15];
      v14 = v6[2];
      if (v14)
      {
        v14(a1, v13);
      }

      [v5 activate];
      os_unfair_lock_unlock(v6 + 6);
      [v13 activated];
      objc_destroyWeak(&v19);

      objc_destroyWeak(v24);
      objc_destroyWeak(&location);
    }

    else
    {
      [v5 invalidate];
    }
  }
}

void sub_100029024(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_100029054(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained processIdentifier];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 64);
    *buf = 67109632;
    v19 = v5;
    v20 = 2048;
    v21 = WeakRetained;
    v22 = 1024;
    v23 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "PDXPCServiceListener %u (%p:%d): connection invalidated", buf, 0x18u);
  }

  [*(a1 + 32) clearConnectionReference];
  os_unfair_lock_lock((*(a1 + 56) + 24));
  [*(*(a1 + 56) + 32) removeObject:*(a1 + 32)];
  if (*(a1 + 64) == 2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = *(*(a1 + 56) + 32);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * v10) connection];
          v12 = [v11 processIdentifier];

          if (v12 == v3)
          {

            goto LABEL_14;
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock((*(a1 + 56) + 24));
    [*(*(a1 + 40) + 288) removeListenerEndpointsForProcessIdentifier:{objc_msgSend(WeakRetained, "processIdentifier")}];
  }

  else
  {
LABEL_14:
    os_unfair_lock_unlock((*(a1 + 56) + 24));
  }
}

void sub_100029268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109632;
    v5[1] = v4;
    v6 = 2048;
    v7 = WeakRetained;
    v8 = 1024;
    v9 = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "PDXPCServiceListener %u (%p:%d): connection interrupted", v5, 0x18u);
  }

  [NSException raise:NSInternalInconsistencyException format:@"Unexpected interruption on connection"];
}

void sub_10002A05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
    }

    v5 = PDDefaultQueue();
    PDWakePassbookInBackground();

    v6 = sub_1005B69E4(a1);
    if ([v6 count])
    {
      v7 = [*(a1 + 48) effectiveCatalog];
      v8 = *(a1 + 600);
      v9 = [v4 uniqueID];
      v10 = [v8 passDynamicStateForUniqueIdentifier:v9];

      v19 = _NSConcreteStackBlock;
      v20 = 3221225472;
      v21 = sub_10003449C;
      v22 = &unk_10083D820;
      v23 = v4;
      v24 = v10;
      v25 = v7;
      v11 = v7;
      v12 = v10;
      v13 = objc_retainBlock(&v19);
      sub_100034200(a1, v13, v6);
    }

    v14 = [NSDistributedNotificationCenter defaultCenter:v19];
    v15 = PKPassLibraryDidUpdatePassNotification;
    v26 = PKPassLibraryUniqueIDUserInfoKey;
    v16 = [v4 uniqueID];
    v27 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v14 postNotificationName:v15 object:0 userInfo:v17];

    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v18, "Name", [PKPassLibraryDidChangeNotification UTF8String]);
    [*(a1 + 536) sendEvent:v18];
  }
}

void sub_10002A2B8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (!v7)
    {
      __break(1u);
    }

    v9 = PDDefaultQueue();
    PDWakePassbookInBackground();

    v10 = sub_1005B69E4(a1);
    if ([v10 count])
    {
      v11 = [*(a1 + 48) effectiveCatalog];
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10003448C;
      v24 = &unk_10083D820;
      v25 = v7;
      v26 = v8;
      v27 = v11;
      v12 = v11;
      v13 = objc_retainBlock(&v21);
      sub_100034200(a1, v13, v10);
    }

    v14 = *(a1 + 112);
    v15 = [v7 uniqueID];
    [v14 handlePassLibraryChangedWithPassUniqueIdentifier:v15];

    v16 = +[NSDistributedNotificationCenter defaultCenter];
    v28[0] = PKPassLibraryUniqueIDUserInfoKey;
    v17 = [v7 uniqueID];
    v29[0] = v17;
    v28[1] = PKPassLibraryPassSourceUserInfoKey;
    v18 = [NSNumber numberWithInteger:a4];
    v29[1] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];

    [v16 postNotificationName:PKPassLibraryDidAddPassNotification object:0 userInfo:v19];
    v20 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v20, "Name", [PKPassLibraryDidChangeNotification UTF8String]);
    [*(a1 + 536) sendEvent:v20];
  }
}

void sub_10002A544(id a1, NSError *a2)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDServer: Finished pass signal donation with error: %@", &v4, 0xCu);
  }
}

void sub_10002A5EC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    sub_1005B7378(a1, (a1 + 32));
  }

  else
  {
    v2 = *(a1 + 72);
    v3 = v2 == 5 || v2 == 3;
    if (v3 && *(a1 + 80) == 2 && [*(a1 + 48) hasValidNFCPayload] && objc_msgSend(*(a1 + 48), "isValid"))
    {
      v4 = [*(a1 + 48) uniqueID];
      v5 = [*(*(a1 + 40) + 48) objectSettingsManager];
      v6 = sub_10047165C(v5, v4);

      if (!v6)
      {
        v7 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "A new NFC pass was added with no pass settings. Adding default settings.", v8, 2u);
        }

        [*(*(a1 + 40) + 48) updateSettings:19 forPassWithUniqueIdentifier:v4];
      }
    }
  }
}

void sub_10002A9FC(id a1, NSError *a2)
{
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PDServer: Finished pass signal donation with error: %@", &v4, 0xCu);
  }
}

void sub_10002AAC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
    }

    v5 = PDDefaultQueue();
    PDWakePassbookInBackground();

    v6 = sub_1005B69E4(a1);
    if ([v6 count])
    {
      v7 = [*(a1 + 48) effectiveCatalog];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000344B8;
      v17[3] = &unk_10083D848;
      v18 = v4;
      v19 = v7;
      v8 = v7;
      v9 = objc_retainBlock(v17);
      sub_100034200(a1, v9, v6);
    }

    v10 = *(a1 + 112);
    v11 = [v4 uniqueID];
    [v10 handlePassLibraryChangedWithPassUniqueIdentifier:v11];

    v12 = +[NSDistributedNotificationCenter defaultCenter];
    v13 = PKPassLibraryDidRemovePassNotification;
    v20 = PKPassLibraryUniqueIDUserInfoKey;
    v14 = [v4 uniqueID];
    v21 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v12 postNotificationName:v13 object:0 userInfo:v15];

    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v16, "Name", [PKPassLibraryDidChangeNotification UTF8String]);
    [*(a1 + 536) sendEvent:v16];
  }
}

void sub_10002AD04(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Failed to update upgrade passcode policy for pass deletation", v3, 2u);
    }
  }
}

uint64_t sub_10002B2B0(uint64_t a1)
{
  if (a1)
  {
    v51 = PDOSTransactionCreate("PDServer");
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 1;
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_10003515C;
    v85[3] = &unk_10083D988;
    v85[5] = &v86;
    v56 = a1;
    v85[4] = a1;
    v57 = objc_retainBlock(v85);
    v83 = 0;
    v84 = 0;
    [*(a1 + 48) computeExtraneousUniqueIDs:&v84 missingUniqueIDs:&v83];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v2 = v84;
    v3 = [v2 countByEnumeratingWithState:&v79 objects:v97 count:16];
    if (v3)
    {
      v4 = *v80;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v80 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v79 + 1) + 8 * i);
          v7 = objc_autoreleasePoolPush();
          (v57[2])();
          v8 = *(v87 + 24);
          if (v8)
          {
            v9 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v6;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Database contained extraneous (or duplicate) Unique Identifier: %@", buf, 0xCu);
            }

            [*(v56 + 48) prepareToDeletePassWithUniqueIdentifier:v6];
            [*(v56 + 48) deletePassWithUniqueIdentifier:v6];
          }

          objc_autoreleasePoolPop(v7);
          if (!v8)
          {

            v30 = 0;
            goto LABEL_97;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v79 objects:v97 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }

      v90 = 0;
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = v83;
    v10 = [obj countByEnumeratingWithState:&v75 objects:v95 count:16];
    if (v10)
    {
      v53 = *v76;
      while (2)
      {
        v11 = 0;
        v54 = v10;
        do
        {
          if (*v76 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v75 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          (v57[2])();
          if (v87[3])
          {
            v14 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v12;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Database was missing uniqueID: %@", buf, 0xCu);
            }

            v15 = [*(v56 + 32) objectWithUniqueID:v12];
            if ([v15 passType] == 1)
            {
              v16 = v15;
            }

            else
            {
              v16 = 0;
            }

            v55 = v16;
            v17 = [*(v56 + 32) passDaemonDataForUniqueID:v12];
            if ([*(v56 + 48) insertPass:v15 withDaemonData:v17 source:0])
            {
              if (v55)
              {
                v18 = [*(v56 + 80) secureElementIdentifiers];
                [v55 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v18];

                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v19 = [v55 devicePaymentApplications];
                v20 = [v19 countByEnumeratingWithState:&v71 objects:v94 count:16];
                if (v20)
                {
                  v21 = 0;
                  v22 = *v72;
                  do
                  {
                    for (j = 0; j != v20; j = j + 1)
                    {
                      if (*v72 != v22)
                      {
                        objc_enumerationMutation(v19);
                      }

                      v24 = [*(*(&v71 + 1) + 8 * j) subcredentials];
                      v25 = v24;
                      if (v24)
                      {
                        if (v21)
                        {
                          [v21 unionSet:v24];
                        }

                        else
                        {
                          v21 = [v24 mutableCopy];
                        }
                      }
                    }

                    v20 = [v19 countByEnumeratingWithState:&v71 objects:v94 count:16];
                  }

                  while (v20);

                  if (v21)
                  {
                    [*(v56 + 200) restoreSubcredentialsInDatabase:v21 withCompletion:0];
                  }
                }

                else
                {

                  v21 = 0;
                }
              }

              v26 = 0;
            }

            else
            {
              v26 = 7;
            }
          }

          else
          {
            v90 = 0;
            v26 = 1;
          }

          objc_autoreleasePoolPop(v13);
          if (v26 != 7 && v26)
          {

            v30 = v90;
            goto LABEL_97;
          }

          v11 = v11 + 1;
        }

        while (v11 != v54);
        v10 = [obj countByEnumeratingWithState:&v75 objects:v95 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    *buf = 0;
    v70 = 0;
    [*(v56 + 48) computeTransactionReceiptExtraneousUniqueIDs:buf missingUniqueIDs:buf removedUniqueIDs:&v70];
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v27 = v70;
    v28 = [v27 countByEnumeratingWithState:&v66 objects:v93 count:16];
    if (v28)
    {
      v29 = *v67;
      v30 = v90;
      while (2)
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v67 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v66 + 1) + 8 * k);
          v33 = objc_autoreleasePoolPush();
          (v57[2])();
          v34 = *(v87 + 24);
          if (v34)
          {
            [*(v56 + 432) deleteTransactionReceiptWithUniqueID:v32];
          }

          else
          {
            v30 = 0;
          }

          objc_autoreleasePoolPop(v33);
          if (!v34)
          {

            goto LABEL_96;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v66 objects:v93 count:16];
        if (v28)
        {
          continue;
        }

        break;
      }

      v90 = v30 & 1;
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v35 = *buf;
    v36 = [v35 countByEnumeratingWithState:&v62 objects:v92 count:16];
    if (v36)
    {
      v37 = *v63;
      v30 = v90;
      while (2)
      {
        for (m = 0; m != v36; m = m + 1)
        {
          if (*v63 != v37)
          {
            objc_enumerationMutation(v35);
          }

          v39 = *(*(&v62 + 1) + 8 * m);
          v40 = objc_autoreleasePoolPush();
          (v57[2])();
          v41 = *(v87 + 24);
          if (v41)
          {
            [*(v56 + 48) deleteTransactionReceiptWithUniqueID:v39];
          }

          else
          {
            v30 = 0;
          }

          objc_autoreleasePoolPop(v40);
          if (!v41)
          {

            goto LABEL_96;
          }
        }

        v36 = [v35 countByEnumeratingWithState:&v62 objects:v92 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }

      v90 = v30 & 1;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v42 = [0 countByEnumeratingWithState:&v58 objects:v91 count:16];
    if (v42)
    {
      v43 = *v59;
      v30 = v90;
LABEL_77:
      v44 = 0;
      while (1)
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(0);
        }

        v45 = *(*(&v58 + 1) + 8 * v44);
        v46 = objc_autoreleasePoolPush();
        (v57[2])();
        v47 = *(v87 + 24);
        if (v47)
        {
          v48 = [*(v56 + 432) transactionReceiptWithUniqueID:v45];
          if (v48)
          {
            v49 = [*(v56 + 48) insertOrUpdateTransactionReceipt:v48];
          }
        }

        else
        {
          v30 = 0;
        }

        objc_autoreleasePoolPop(v46);
        if (!v47)
        {
          break;
        }

        if (v42 == ++v44)
        {
          v42 = [0 countByEnumeratingWithState:&v58 objects:v91 count:16];
          if (v42)
          {
            goto LABEL_77;
          }

          goto LABEL_88;
        }
      }
    }

    else
    {
LABEL_88:
      (v57[2])();
      if (*(v87 + 24) == 1)
      {
        sub_10002FA60(v56);
        [*(v56 + 32) scheduleImmediateRevocationCheck];
        if (*(v56 + 12) == 1)
        {
          *(v56 + 12) = 0;
          sub_1005C30A4(*(v56 + 352));
          [*(v56 + 136) databaseRestored];
          [*(v56 + 128) databaseRestored];
          [*(v56 + 368) databaseRestored];
        }
      }

      v30 = *(v87 + 24);
    }

LABEL_96:

LABEL_97:
    _Block_object_dispose(&v86, 8);
  }

  else
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_10002BCC8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) passWithUniqueIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    sub_10002A05C(*(a1 + 32), v2);
    v3 = v5;
  }

  return _objc_release_x1(v2, v3);
}

void sub_10002BE80(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = PDOSTransactionCreate("PDServer.installmentUpdates");
    objc_initWeak(&location, a1);
    v8 = PDHeavyQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000345D4;
    block[3] = &unk_10083D890;
    v11 = v7;
    v9 = v7;
    objc_copyWeak(&v14, &location);
    v12 = v5;
    v13 = v6;
    dispatch_async(v8, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

BOOL sub_10002C3D4(uint64_t a1, void *a2)
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

void sub_10002C438(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10002BE80(*(a1 + 32), a2, 0);
  }
}

void sub_10002C468(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  [*(*(a1 + 32) + 528) removeObject:*(a1 + 40)];
  if (a2)
  {
    [*(a1 + 48) setDeviceScoreIdentifiersSubmitted:1];
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating local database after device submitted the device score identifiers.", &v9, 2u);
    }

    v7 = [*(*(a1 + 32) + 48) insertOrUpdatePaymentTransaction:*(a1 + 48) withTransactionSourceIdentifier:*(a1 + 56) insertionMode:0 performTruncation:0 insertedTransaction:0];
  }

  else
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device score identifier submission failed with error: %@", &v9, 0xCu);
    }
  }
}

void sub_10002C5B4(id a1, NSArray *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      v8 = "Error updating account promotions in response to transaction update: %@";
      v9 = v6;
      v10 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &v11, v10);
    }
  }

  else if (v7)
  {
    LOWORD(v11) = 0;
    v8 = "Did update account promotions in response to transaction update";
    v9 = v6;
    v10 = 2;
    goto LABEL_6;
  }
}

void sub_10002C6AC(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 type]== 1)
    {
      v5 = [v4 items];
      v6 = [v5 anyObject];

      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v6 transactionIdentifiers];
          if ([v7 count])
          {

LABEL_10:
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v13 = [v6 transactionIdentifiers];
            v14 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v40;
              while (2)
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v40 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v39 + 1) + 8 * i);
                  v19 = [*(a1[4] + 48) ambiguousTransactionWithServiceIdentifier:v18];

                  if (!v19)
                  {
                    v20 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v45 = v18;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No card transaction for identifier: %@", buf, 0xCu);
                    }

                    v34 = 1;
                    goto LABEL_28;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v39 objects:v46 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            v34 = 0;
LABEL_28:

            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v21 = [v6 rewardsAddedIdentifiers];
            v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v36;
              while (2)
              {
                for (j = 0; j != v23; j = j + 1)
                {
                  if (*v36 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = *(*(&v35 + 1) + 8 * j);
                  v27 = [*(a1[4] + 48) accountEventWithIdentifier:v26];

                  if (!v27)
                  {
                    v31 = PKLogFacilityTypeGetObject();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v45 = v26;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No rewards added event for identifier: %@", buf, 0xCu);
                    }

                    goto LABEL_43;
                  }
                }

                v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            if (v34)
            {
LABEL_43:
              v32 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = a1[5];
                *buf = 138412290;
                v45 = v33;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Not suppressing transaction from UI: %@, waiting for more events", buf, 0xCu);
              }
            }

            else
            {
              v28 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = a1[5];
                *buf = 138412290;
                v45 = v29;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Suppressing transaction from UI: %@", buf, 0xCu);
              }

              v30 = [*(a1[4] + 48) updateSuppressBehavior:1 forPaymentTransaction:a1[6] sourceIdentifier:a1[7]];
            }

            goto LABEL_23;
          }

          v11 = [v6 rewardsAddedIdentifiers];
          v12 = [v11 count];

          if (v12)
          {
            goto LABEL_10;
          }
        }
      }

      v8 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      *buf = 138412290;
      v45 = v4;
      v9 = "Transaction not suppressed with event: %@";
      v10 = v8;
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_23:

        goto LABEL_24;
      }

      [v4 type];
      v8 = PKAccountEventTypeToString();
      *buf = 138412290;
      v45 = v8;
      v9 = "Redemption event is of incorrect type: %@";
      v10 = v6;
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
LABEL_22:

    goto LABEL_23;
  }

LABEL_24:
}

void sub_10002CCBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PDDefaultQueue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002CD70;
  v6[3] = &unk_10083C420;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_10002CF0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) transactionSourceIdentifier:v5 willRemoveTransaction:*(*(&v11 + 1) + 8 * v10)];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

void sub_10002D030(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        sub_1005B2F78();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void sub_10002D148(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSSet setWithArray:v3];
  [v4 sendPaymentPassWithUniqueIdentifier:v2 didReceiveBalanceUpdate:v5];
}

void sub_10002D1E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) identifiers];
  v5 = [v4 anyObject];

  v6 = [*(*(a1 + 40) + 48) balanceReminderThresholdForBalanceIdentifier:v5 withPassUniqueIdentifier:*(a1 + 48)];
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = [*(*(a1 + 40) + 48) passWithUniqueIdentifier:*(a1 + 48)];
  v8 = [v7 paymentPass];

  if (![v8 isAutoTopUpBalance:*(a1 + 32)])
  {
LABEL_14:

LABEL_15:
    if ([v6 isEnabled])
    {
      v8 = [v6 threshold];
    }

    else
    {
      v8 = 0;
    }

    obj = [*(a1 + 32) currencyCode];
    v17 = [*(a1 + 32) value];
    v47 = [*(a1 + 56) value];
    if (!v8 || !v17 || !v47)
    {
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(&v26->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 48);
        *buf = 138413058;
        v69 = v27;
        v70 = 2112;
        v71 = v8;
        v72 = 2112;
        v73 = v17;
        v74 = 2112;
        v75 = v47;
        _os_log_impl(&_mh_execute_header, &v26->super.super.super, OS_LOG_TYPE_DEFAULT, "Ignoring lowBalance evaluation for pass %@. (threshold %@, newBalance: %@, oldBalance: %@)", buf, 0x2Au);
      }

      goto LABEL_70;
    }

    v45 = v5;
    v46 = v3;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = v3;
    v19 = [v18 countByEnumeratingWithState:&v58 objects:v78 count:16];
    v44 = v6;
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v59;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v59 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v58 + 1) + 8 * i);
          if (![(PDUserNotification *)v24 isActive])
          {
            v25 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v69 = v24;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Removing an existing lowBalance reminder notification because it is inactive: %@", buf, 0xCu);
            }

            [*(*(a1 + 40) + 56) removeUserNotification:v24];
            v21 |= [v17 compare:v8]== -1;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v58 objects:v78 count:16];
      }

      while (v20);

      v6 = v44;
      if (v21)
      {
        goto LABEL_50;
      }
    }

    else
    {
    }

    if ([v17 compare:v8]== -1 && [v47 compare:v8]!= -1)
    {
LABEL_50:
      v5 = v45;
      v26 = -[PDPassLowBalanceReminderUserNotification initWithCurrentBalance:balanceCurrency:exponent:reminderAmount:reminderCurrency:passUniqueIdentifier:balanceIdentifier:]([PDPassLowBalanceReminderUserNotification alloc], "initWithCurrentBalance:balanceCurrency:exponent:reminderAmount:reminderCurrency:passUniqueIdentifier:balanceIdentifier:", v17, obj, [*(a1 + 32) exponent], v8, obj, *(a1 + 48), v45);
      [*(*(a1 + 40) + 56) insertUserNotification:v26];
      v35 = PKLogFacilityTypeGetObject();
      v3 = v46;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = *(a1 + 48);
        *buf = 138413314;
        v69 = v26;
        v70 = 2112;
        v71 = v36;
        v72 = 2112;
        v73 = v8;
        v74 = 2112;
        v75 = v17;
        v76 = 2112;
        v77 = v47;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Inserting new lowBalance notification %@ for pass %@ because new balance dropped below threshold. (threshold %@, newBalance: %@, oldBalance: %@)", buf, 0x34u);
      }

      goto LABEL_70;
    }

    v5 = v45;
    v3 = v46;
    if ([v17 compare:v8]== -1)
    {
      if (!v18)
      {
        goto LABEL_71;
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v26 = v18;
      v37 = [(PDPassLowBalanceReminderUserNotification *)v26 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (!v37)
      {
        v5 = v45;
        v3 = v46;
        goto LABEL_70;
      }

      v38 = v37;
      v39 = *v51;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(v26);
          }

          v41 = *(*(&v50 + 1) + 8 * j);
          -[PDPassLowBalanceReminderUserNotification updateBalanceAmount:currency:exponent:](v41, "updateBalanceAmount:currency:exponent:", v17, obj, [*(a1 + 32) exponent]);
          [(PDPassLowBalanceReminderUserNotification *)v41 updateReminderAmount:v8 currency:obj];
          [(PDUserNotification *)v41 setReissueBannerOnUpdate:0];
          [*(*(a1 + 40) + 56) insertUserNotification:v41];
          v42 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 48);
            *buf = 138413314;
            v69 = v41;
            v70 = 2112;
            v71 = v43;
            v72 = 2112;
            v73 = v8;
            v74 = 2112;
            v75 = v17;
            v76 = 2112;
            v77 = v47;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Updating existing lowBalance notification %@ for pass %@ (threshold %@, newBalance: %@, oldBalance: %@)", buf, 0x34u);
          }
        }

        v38 = [(PDPassLowBalanceReminderUserNotification *)v26 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v38);
      v5 = v45;
      v3 = v46;
    }

    else
    {
      if (!v18)
      {
        goto LABEL_71;
      }

      v28 = v8;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v29 = v18;
      v30 = [v29 countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v55;
        do
        {
          for (k = 0; k != v31; k = k + 1)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [*(*(a1 + 40) + 56) removeUserNotification:*(*(&v54 + 1) + 8 * k)];
          }

          v31 = [v29 countByEnumeratingWithState:&v54 objects:v67 count:16];
        }

        while (v31);
      }

      v26 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(&v26->super.super.super, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v44;
        v8 = v28;
        goto LABEL_70;
      }

      v34 = *(a1 + 48);
      *buf = 138412802;
      v69 = v34;
      v70 = 2112;
      v8 = v28;
      v71 = v28;
      v72 = 2112;
      v73 = v17;
      _os_log_impl(&_mh_execute_header, &v26->super.super.super, OS_LOG_TYPE_DEFAULT, "Dropping current lowBalance notifications for pass %@ because new balance became above threshold. (threshold %@, newBalance: %@)", buf, 0x20u);
    }

    v6 = v44;
LABEL_70:

LABEL_71:
LABEL_72:

    goto LABEL_73;
  }

  if (![v8 isAutoTopEnabled])
  {
    [v6 setEnabled:1];
    [*(*(a1 + 40) + 48) setBalanceReminder:v6 forBalanceIdentifier:v5 withPassUniqueIdentifier:*(a1 + 48)];
    goto LABEL_14;
  }

  [v6 setEnabled:0];
  [*(*(a1 + 40) + 48) setBalanceReminder:v6 forBalanceIdentifier:v5 withPassUniqueIdentifier:*(a1 + 48)];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v3;
  v9 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
  if (v9)
  {
    v10 = v9;
    v49 = v8;
    v11 = v6;
    v12 = *v63;
    while (2)
    {
      for (m = 0; m != v10; m = m + 1)
      {
        if (*v63 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v62 + 1) + 8 * m);
        v15 = [(PDPassLowBalanceReminderUserNotification *)v14 balanceIdentifier];
        v16 = PKEqualObjects();

        if (v16)
        {
          [*(*(a1 + 40) + 56) removeUserNotification:v14];
          v17 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v69 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing an existing lowBalance reminder notification because auto top up is enabled: %@", buf, 0xCu);
          }

          v6 = v11;
          v8 = v49;
          goto LABEL_72;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v62 objects:v79 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v6 = v11;
    v8 = v49;
  }

LABEL_73:
}