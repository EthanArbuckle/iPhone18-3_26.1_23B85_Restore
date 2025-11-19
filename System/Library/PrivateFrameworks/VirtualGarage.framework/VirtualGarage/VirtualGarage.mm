id VGGetVirtualGarageLog()
{
  if (VGGetVirtualGarageLog_onceToken != -1)
  {
    dispatch_once(&VGGetVirtualGarageLog_onceToken, &__block_literal_global_25);
  }

  v1 = VGGetVirtualGarageLog_log;

  return v1;
}

uint64_t __VGGetVirtualGarageLog_block_invoke()
{
  VGGetVirtualGarageLog_log = os_log_create("com.apple.navigation.VirtualGarage", "VirtualGarage");

  return MEMORY[0x2821F96F8]();
}

void sub_270EC2A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VGGetPersistingLog()
{
  if (VGGetPersistingLog_onceToken != -1)
  {
    dispatch_once(&VGGetPersistingLog_onceToken, &__block_literal_global_19);
  }

  v1 = VGGetPersistingLog_log;

  return v1;
}

id VGGetExternalAccessoryLog()
{
  if (VGGetExternalAccessoryLog_onceToken != -1)
  {
    dispatch_once(&VGGetExternalAccessoryLog_onceToken, &__block_literal_global_7);
  }

  v1 = VGGetExternalAccessoryLog_log;

  return v1;
}

NSObject *VGAllowlistPayload()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = GEOConfigGetString();
  v1 = [MEMORY[0x277D0ECC8] sharedManager];
  v2 = [v1 dataForResourceWithName:v0 fallbackBundle:0];

  if (!v2)
  {
    v7 = [MEMORY[0x277D0EC00] sharedNetworkObserver];
    v8 = [v7 isNetworkReachable];

    v9 = VGGetVirtualGarageLog();
    v4 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v18 = v0;
        v10 = "data is nil. Error parsing manifest resource: %@ while network was reachable.";
        v11 = v4;
        v12 = OS_LOG_TYPE_FAULT;
LABEL_12:
        _os_log_impl(&dword_270EC1000, v11, v12, v10, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v0;
      v10 = "data is nil. Error parsing manifest resource: %@ because network was not reachable.";
      v11 = v4;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_12;
    }

    v13 = 0;
    goto LABEL_19;
  }

  v16 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:&v16];
  v4 = v16;
  if (v4)
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v18 = v4;
      v6 = "Error parsing manifest resource. error: %@";
LABEL_16:
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_FAULT, v6, buf, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v18 = v3;
      v6 = "Unexpected class type for allowlist payload: %@";
      goto LABEL_16;
    }

LABEL_17:

    v13 = 0;
    goto LABEL_18;
  }

  v13 = v3;
LABEL_18:

LABEL_19:
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id VGGetDataCoordinatorLog()
{
  if (VGGetDataCoordinatorLog_onceToken != -1)
  {
    dispatch_once(&VGGetDataCoordinatorLog_onceToken, &__block_literal_global_13);
  }

  v1 = VGGetDataCoordinatorLog_log;

  return v1;
}

id VGGetOEMApplicationLog()
{
  if (VGGetOEMApplicationLog_onceToken != -1)
  {
    dispatch_once(&VGGetOEMApplicationLog_onceToken, &__block_literal_global_16);
  }

  v1 = VGGetOEMApplicationLog_log;

  return v1;
}

uint64_t IsEVRoutingSupported()
{
  v0 = *MEMORY[0x277D0EA90];
  v1 = *(MEMORY[0x277D0EA90] + 8);
  if (!GEOConfigGetBOOL())
  {
    return 1;
  }

  v2 = [MEMORY[0x277D0EB00] sharedConfiguration];
  v3 = [v2 currentCountrySupportsElectricVehicleRouting];

  return v3;
}

uint64_t VGChargingNetworkStorageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t IsEVRoutingAllowListingEnabled()
{
  v0 = *MEMORY[0x277D0EA90];
  v1 = *(MEMORY[0x277D0EA90] + 8);
  return GEOConfigGetBOOL();
}

void startHostingVirtualGarageServiceWithPersister(void *a1)
{
  v1 = a1;
  v2 = +[VGVirtualGarageServer sharedServer];
  [v2 startWithPersister:v1];
}

void stopHostingVirtualGarageService()
{
  v0 = +[VGVirtualGarageServer sharedServer];
  [v0 stop];
}

__CFString *VGProcessNameForPID(int a1)
{
  v10 = *MEMORY[0x277D85DE8];
  memset(v9, 0, 512);
  v5 = 648;
  *v6 = 0xE00000001;
  v7 = 1;
  v8 = a1;
  v1 = sysctl(v6, 4u, v9, &v5, 0, 0);
  v2 = 0;
  if (!v1)
  {
    v2 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], &v9[15] + 3, 0x8000100u);
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t GEOEvChargingConnectorTypeFromVGConnectorType(uint64_t a1)
{
  if (a1 == 256)
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 128)
  {
    v2 = 8;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 64)
  {
    v3 = 10;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 32)
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 16)
  {
    v5 = 6;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 63)
  {
    v3 = v5;
  }

  if (a1 == 4)
  {
    v6 = 5;
  }

  else
  {
    v6 = a1 == 8;
  }

  if (a1 == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  if (a1 == 1)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (a1 <= 3)
  {
    v6 = v8;
  }

  if (a1 <= 15)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t VGVehiclesHaveMatchingVehicleStateProviders(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 iapIdentifier];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = v5;
  v7 = [v4 iapIdentifier];
  v8 = [v3 iapIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_4:
    v11 = [v3 siriIntentsIdentifier];
    if (v11)
    {
      v12 = [v4 siriIntentsIdentifier];
      v13 = [v3 siriIntentsIdentifier];
      v10 = [v12 isEqualToString:v13];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

id VGGetVGOEMExtensionConnectionLog()
{
  if (VGGetVGOEMExtensionConnectionLog_onceToken != -1)
  {
    dispatch_once(&VGGetVGOEMExtensionConnectionLog_onceToken, &__block_literal_global_97);
  }

  v1 = VGGetVGOEMExtensionConnectionLog_log;

  return v1;
}

uint64_t __VGGetVGOEMExtensionConnectionLog_block_invoke()
{
  VGGetVGOEMExtensionConnectionLog_log = os_log_create("com.apple.navigation.VirtualGarage", "VGOEMExtensionConnection");

  return MEMORY[0x2821F96F8]();
}

void sub_270ECA750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_270ECAFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VGGetVGOEMExtensionConnectionBrokerLog()
{
  if (VGGetVGOEMExtensionConnectionBrokerLog_onceToken != -1)
  {
    dispatch_once(&VGGetVGOEMExtensionConnectionBrokerLog_onceToken, &__block_literal_global_77);
  }

  v1 = VGGetVGOEMExtensionConnectionBrokerLog_log;

  return v1;
}

uint64_t __VGGetVGOEMExtensionConnectionBrokerLog_block_invoke()
{
  VGGetVGOEMExtensionConnectionBrokerLog_log = os_log_create("com.apple.navigation.VirtualGarage", "VGOEMExtensionConnectionBroker");

  return MEMORY[0x2821F96F8]();
}

void sub_270ECB790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VGVehicleStateStorageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
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
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_70;
        case 2u:
          *(a1 + 124) |= 8u;
          v62 = 0;
          v42 = [a2 position] + 8;
          if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 8, v43 <= objc_msgSend(a2, "length")))
          {
            v57 = [a2 data];
            [v57 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 32;
          goto LABEL_99;
        case 3u:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          *(a1 + 124) |= 0x100u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v62 & 0x7F) << v31;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              v30 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v30 = 0;
          }

          else
          {
            v30 = v33;
          }

LABEL_83:
          v51 = 96;
          goto LABEL_84;
        case 4u:
          *(a1 + 124) |= 1u;
          v62 = 0;
          v38 = [a2 position] + 8;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 8;
          goto LABEL_99;
        case 5u:
          *(a1 + 124) |= 4u;
          v62 = 0;
          v22 = [a2 position] + 8;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 24;
          goto LABEL_99;
        case 6u:
          *(a1 + 124) |= 0x20u;
          v62 = 0;
          v44 = [a2 position] + 8;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
          {
            v58 = [a2 data];
            [v58 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 48;
          goto LABEL_99;
        case 7u:
          *(a1 + 124) |= 0x40u;
          v62 = 0;
          v46 = [a2 position] + 8;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 56;
          goto LABEL_99;
        case 8u:
          *(a1 + 124) |= 2u;
          v62 = 0;
          v40 = [a2 position] + 8;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 16;
          goto LABEL_99;
        case 9u:
          *(a1 + 124) |= 0x10u;
          v62 = 0;
          v49 = [a2 position] + 8;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v62 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v53 = v62;
          v54 = 40;
LABEL_99:
          *(a1 + v54) = v53;
          goto LABEL_100;
        case 0xAu:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_70;
        case 0xBu:
          v13 = PBReaderReadString();
          v14 = 72;
          goto LABEL_70;
        case 0xCu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 124) |= 0x200u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v62 & 0x7F) << v15;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_75;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_75:
          *(a1 + 120) = v21;
          goto LABEL_100;
        case 0xDu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 124) |= 0x80u;
          break;
        case 0xEu:
          v13 = PBReaderReadData();
          v14 = 112;
          goto LABEL_70;
        case 0xFu:
          v13 = PBReaderReadString();
          v14 = 104;
LABEL_70:
          v48 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_100;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_100;
      }

      while (1)
      {
        LOBYTE(v62) = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v62 & 0x7F) << v24;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v30 = 0;
          goto LABEL_79;
        }
      }

      v30 = [a2 hasError] ? 0 : v26;
LABEL_79:
      v51 = 64;
LABEL_84:
      *(a1 + v51) = v30;
LABEL_100:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_270ED3A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGColor *VGHexRepresentationFromCGColor(CGColor *a1)
{
  if (a1)
  {
    v2 = a1;
    Components = CGColorGetComponents(a1);
    if (CGColorGetNumberOfComponents(v2) && CGColorGetNumberOfComponents(v2) <= 3)
    {
      v4 = VGGetUIHelperLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "Color does not have 4 components", buf, 2u);
      }

      ColorSpace = CGColorGetColorSpace(v2);
      if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
      {
        v6 = VGGetUIHelperLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *v9 = 0;
          _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "Color is not in RGB colorspace", v9, 2u);
        }
      }

      v8 = llround(*Components * 255.0);
      [MEMORY[0x277CCACA8] stringWithFormat:@"%02lX%02lX%02lX%02lX", v8, v8, v8, llround(255.0)];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%02lX%02lX%02lX%02lX", llround(*Components * 255.0), llround(Components[1] * 255.0), llround(Components[2] * 255.0), llround(Components[3] * 255.0)];
    }
    a1 = ;
    v1 = vars8;
  }

  return a1;
}

NSObject *VGDictionaryFromVGVehicleArguments(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 dataUsingEncoding:4];
  if (v2)
  {
    v20 = 0;
    v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:&v20];
    v4 = v20;
    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v3 == 0;
    }

    if (v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v6 = VGGetPersistingLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v23 = v1;
        v24 = 2112;
        v25 = v4;
        v26 = 2112;
        v27 = v3;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_FAULT, "Failed to recreate a dictionary from serialized arguments: %@, with error: %@, dictionary: dictionary: %@", buf, 0x20u);
      }

LABEL_24:

      v12 = 0;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v6 = [v3 allKeys];
      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v17;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v17 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v16 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v13 = VGGetPersistingLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v23 = v1;
                v24 = 2112;
                v25 = v3;
                _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_FAULT, "Failed to recreate a dictionary from serialized arguments (wrong keys): %@, dictioanary: %@", buf, 0x16u);
              }

              goto LABEL_24;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v12 = v3;
    }
  }

  else
  {
    v4 = VGGetPersistingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v23 = v1;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_FAULT, "Failed to recreate data from serialized arguments: %@", buf, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

id VGFilter(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v18;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v16 = 0;
        if (v4[2](v4, v12, v9, &v16))
        {
          [v5 addObject:v12];
        }

        if (v16)
        {
          break;
        }

        ++v9;
        if (v8 == ++v11)
        {
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v13 = [v5 copy];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id NSStringFromVGChargingConnectorTypeOptions(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__675;
  v15 = __Block_byref_object_dispose__676;
  v16 = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __NSStringFromVGChargingConnectorTypeOptions_block_invoke;
  v10[3] = &__block_descriptor_40_e18___NSString_16__0Q8l;
  v10[4] = a1;
  v2 = MEMORY[0x2743B8310](v10);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NSStringFromVGChargingConnectorTypeOptions_block_invoke_49;
  v7[3] = &unk_279E26900;
  v9 = &v11;
  v3 = v2;
  v8 = v3;
  v4 = MEMORY[0x2743B8310](v7);
  v4[2](v4, 1, a1);
  v4[2](v4, 2, a1);
  v4[2](v4, 4, a1);
  v4[2](v4, 8, a1);
  v4[2](v4, 16, a1);
  v4[2](v4, 32, a1);
  v4[2](v4, 64, a1);
  v4[2](v4, 128, a1);
  v4[2](v4, 256, a1);
  v5 = [v12[5] componentsJoinedByString:@" | "];

  _Block_object_dispose(&v11, 8);

  return v5;
}

void sub_270ED9DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__675(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NSStringFromVGChargingConnectorTypeOptions_block_invoke_49(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & ~a3) == 0)
  {
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = (*(*(a1 + 32) + 16))();
    [v4 addObject:v5];
  }
}

id VGChargingConnectorTypeOptionsList()
{
  if (VGChargingConnectorTypeOptionsList_onceToken != -1)
  {
    dispatch_once(&VGChargingConnectorTypeOptionsList_onceToken, &__block_literal_global_769);
  }

  v1 = VGChargingConnectorTypeOptionsList_connectorTypes;

  return v1;
}

void __VGChargingConnectorTypeOptionsList_block_invoke()
{
  v0 = VGChargingConnectorTypeOptionsList_connectorTypes;
  VGChargingConnectorTypeOptionsList_connectorTypes = &unk_2880E5ED8;
}

id VGChargingConnectorTypeOptionsUnpacked(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = VGChargingConnectorTypeOptionsList();
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (([v8 unsignedIntegerValue] & a1) != 0)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t VGChargingConnectorTypeOptionsPacked(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v4 |= [*(*(&v9 + 1) + 8 * i) unsignedIntegerValue];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __Block_byref_object_copy__837(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _vg_isInternalInstall()
{
  v0 = [MEMORY[0x277D0EC70] sharedPlatform];
  v1 = [v0 isInternalInstall];

  return v1;
}

VGChargingNetworkStorage *VGChargingNetworkStorageFromVGChargingNetwork(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(VGChargingNetworkStorage);
  -[VGChargingNetworkStorage setIdentifier:](v2, "setIdentifier:", [v1 globalBrandID]);
  v3 = [v1 name];

  v4 = [v3 copy];
  [(VGChargingNetworkStorage *)v2 setName:v4];

  return v2;
}

id VGGetAssertLog()
{
  if (VGGetAssertLog_onceToken != -1)
  {
    dispatch_once(&VGGetAssertLog_onceToken, &__block_literal_global_947);
  }

  v1 = VGGetAssertLog_log;

  return v1;
}

uint64_t __VGGetAssertLog_block_invoke()
{
  VGGetAssertLog_log = os_log_create("com.apple.navigation.VirtualGarage", "Assert");

  return MEMORY[0x2821F96F8]();
}

id VGGetChargingNetworksLog()
{
  if (VGGetChargingNetworksLog_onceToken != -1)
  {
    dispatch_once(&VGGetChargingNetworksLog_onceToken, &__block_literal_global_4);
  }

  v1 = VGGetChargingNetworksLog_log;

  return v1;
}

uint64_t __VGGetChargingNetworksLog_block_invoke()
{
  VGGetChargingNetworksLog_log = os_log_create("com.apple.navigation.VirtualGarage", "ChargingNetworks");

  return MEMORY[0x2821F96F8]();
}

uint64_t __VGGetExternalAccessoryLog_block_invoke()
{
  VGGetExternalAccessoryLog_log = os_log_create("com.apple.navigation.VirtualGarage", "ExternalAccessory");

  return MEMORY[0x2821F96F8]();
}

id VGGetExternalAccessoryModelFilterLog()
{
  if (VGGetExternalAccessoryModelFilterLog_onceToken != -1)
  {
    dispatch_once(&VGGetExternalAccessoryModelFilterLog_onceToken, &__block_literal_global_10);
  }

  v1 = VGGetExternalAccessoryModelFilterLog_log;

  return v1;
}

uint64_t __VGGetExternalAccessoryModelFilterLog_block_invoke()
{
  VGGetExternalAccessoryModelFilterLog_log = os_log_create("com.apple.navigation.VirtualGarage", "ExternalAccessoryModelFilter");

  return MEMORY[0x2821F96F8]();
}

uint64_t __VGGetDataCoordinatorLog_block_invoke()
{
  VGGetDataCoordinatorLog_log = os_log_create("com.apple.navigation.VirtualGarage", "DataCoordinator");

  return MEMORY[0x2821F96F8]();
}

uint64_t __VGGetOEMApplicationLog_block_invoke()
{
  VGGetOEMApplicationLog_log = os_log_create("com.apple.navigation.VirtualGarage", "OEMApplication");

  return MEMORY[0x2821F96F8]();
}

uint64_t __VGGetPersistingLog_block_invoke()
{
  VGGetPersistingLog_log = os_log_create("com.apple.navigation.VirtualGarage", "Persisting");

  return MEMORY[0x2821F96F8]();
}

id VGGetUIHelperLog()
{
  if (VGGetUIHelperLog_onceToken != -1)
  {
    dispatch_once(&VGGetUIHelperLog_onceToken, &__block_literal_global_22_966);
  }

  v1 = VGGetUIHelperLog_log;

  return v1;
}

uint64_t __VGGetUIHelperLog_block_invoke()
{
  VGGetUIHelperLog_log = os_log_create("com.apple.navigation.VirtualGarage", "UIHelper");

  return MEMORY[0x2821F96F8]();
}

void sub_270EDEB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 248), 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_270EDF584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v25);
  _Unwind_Resume(a1);
}

void sub_270EE0E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id obj)
{
  _Block_object_dispose((v18 - 240), 8);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_270EE381C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VGChargingNetworksStorageReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        a1[20] |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_34;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_34:
        a1[16] = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VGChargingNetworkStorage);
        [a1 addNetworks:v13];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !VGChargingNetworkStorageReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_270EE7B04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_270EE8C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void ___connectorMapping_block_invoke()
{
  v8[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD37A8];
  v7[0] = *MEMORY[0x277CD37D0];
  v7[1] = v0;
  v8[0] = &unk_2880E5E00;
  v8[1] = &unk_2880E5E18;
  v1 = *MEMORY[0x277CD37B8];
  v7[2] = *MEMORY[0x277CD37B0];
  v7[3] = v1;
  v8[2] = &unk_2880E5E30;
  v8[3] = &unk_2880E5E48;
  v2 = *MEMORY[0x277CD37C8];
  v7[4] = *MEMORY[0x277CD37C0];
  v7[5] = v2;
  v8[4] = &unk_2880E5E60;
  v8[5] = &unk_2880E5E78;
  v3 = *MEMORY[0x277CD37E0];
  v7[6] = *MEMORY[0x277CD37E8];
  v7[7] = v3;
  v8[6] = &unk_2880E5E90;
  v8[7] = &unk_2880E5EA8;
  v7[8] = *MEMORY[0x277CD37D8];
  v8[8] = &unk_2880E5EC0;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:9];
  v5 = _connectorMapping_s_connectorMapping;
  _connectorMapping_s_connectorMapping = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void sub_270EEC448(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_270EEF798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}