void CoreUARPRestoreLogError(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      v12 = calloc(0x400uLL, 1uLL);
      vsnprintf(v12, 0x400uLL, a3, &a9);
      (*(a1 + 96))(*(a1 + 2160), a2, v12);
      free(v12);
    }
  }
}

void CoreUARPRestoreLogInfo(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (*(a1 + 104))
    {
      v12 = calloc(0x400uLL, 1uLL);
      vsnprintf(v12, 0x400uLL, a3, &a9);
      (*(a1 + 104))(*(a1 + 2160), a2, v12);
      free(v12);
    }
  }
}

void CoreUARPRestoreLogDebug(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      v12 = calloc(0x400uLL, 1uLL);
      vsnprintf(v12, 0x400uLL, a3, &a9);
      (*(a1 + 112))(*(a1 + 2160), a2, v12);
      free(v12);
    }
  }
}

void CoreUARPRestoreLogFault(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    if (*(a1 + 120))
    {
      v12 = calloc(0x400uLL, 1uLL);
      vsnprintf(v12, 0x400uLL, a3, &a9);
      (*(a1 + 120))(*(a1 + 2160), a2, v12);
      free(v12);
    }
  }
}

void CoreUARPRestoreQueryOutstandingInfoProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (a1 + 2172);
  v22 = *(a1 + 2172);
  v25 = *(a1 + 2184);
  CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: Query %d info properties and %d Apple properties", a4, a5, a6, a7, a8, "CoreUARPRestoreQueryOutstandingInfoProperties");
  if (*(a1 + 2172))
  {
    v10 = 0;
    do
    {
      if (!uarpPlatformEndpointRequestInfoProperty(a1 + 728, a1 + 1976, *(*(a1 + 2176) + 4 * v10)))
      {
        v23 = *(*(a1 + 2176) + 4 * v10);
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: uarpPlatformEndpointRequestInfoProperty( Info - %d)", v11, v12, v13, v14, v15, "CoreUARPRestoreQueryOutstandingInfoProperties");
      }

      ++v10;
    }

    while (v10 < *v9);
  }

  if (*(a1 + 2184))
  {
    v16 = 0;
    do
    {
      if (!CoreUARPRestoreEndpointQueryAppleProperty(a1, *(*(a1 + 2192) + 4 * v16)))
      {
        v24 = *(*(a1 + 2192) + 4 * v16);
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: uarpPlatformEndpointRequestInfoProperty( Apple - %d)", v17, v18, v19, v20, v21, "CoreUARPRestoreQueryOutstandingInfoProperties");
      }

      ++v16;
    }

    while (v16 < *(a1 + 2184));
  }

  free(*(a1 + 2192));
  free(*(a1 + 2176));
  *(a1 + 2192) = 0;
  *v9 = 0;
  v9[1] = 0;
}

uint64_t CoreUARPRestoreEndpointQueryAppleProperty(uint64_t a1, unsigned int a2)
{
  v5 = uarpHtonl(a2);
  v3 = uarpOuiAppleGenericFeatures();
  return uarpPlatformEndpointSendVendorSpecific(a1 + 728, a1 + 1976, v3, 0x20u, &v5, 4u);
}

__n128 CoreUARPRestoreEndpointInitialize(void *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  v10 = calloc(1uLL, 0x998uLL);
  if (v10)
  {
    v12 = v10;
    *(v10 + 1085) = 0;
    *(v10 + 283) = a4;
    if (a3)
    {
      v13 = *a3;
      v14 = a3[1];
      *(v10 + 20) = *(a3 + 4);
      *(v10 + 8) = v13;
      *(v10 + 9) = v14;
      v15 = *(v10 + 72) == 0;
    }

    else
    {
      v15 = 0;
      *(v10 + 16) = 0x800000008000;
      *(v10 + 34) = 0x8000;
      *(v10 + 70) = 5;
      v10[142] = 0;
      *(v10 + 36) = 264144;
      *(v10 + 74) = 1;
      *(v10 + 38) = 0;
    }

    *(v10 + 21) = 0;
    *(v10 + 22) = 0;
    *(v10 + 25) = fRestoreUARPSendMessage;
    *(v10 + 26) = fRestoreUARPDataTransferPause;
    *(v10 + 27) = fRestoreUARPDataTransferPauseAck;
    *(v10 + 28) = fRestoreUARPDataTransferResume;
    *(v10 + 29) = fRestoreUARPDataTransferResumeAck;
    *(v10 + 30) = fRestoreUARPSuperBinaryOffered;
    *(v10 + 31) = fRestoreUARPDynamicAssetOffered;
    *(v10 + 32) = fRestoreUARPApplyStagedAssets;
    *(v10 + 33) = fRestoreUARPApplyStagedAssetsResponse;
    *(v10 + 34) = fRestoreUARPManufacturerName;
    *(v10 + 35) = fRestoreUARPManufacturerNameResponse;
    *(v10 + 36) = fRestoreUARPModelName;
    *(v10 + 37) = fRestoreUARPModelNameResponse;
    *(v10 + 38) = fRestoreUARPSerialNumber;
    *(v10 + 39) = fRestoreUARPSerialNumberResponse;
    *(v10 + 40) = fRestoreUARPHardwareVersion;
    *(v10 + 41) = fRestoreUARPHardwareVersionResponse;
    *(v10 + 42) = fRestoreUARPActiveFirmwareVersion2;
    *(v10 + 43) = fRestoreUARPActiveFirmwareVersionResponse;
    *(v10 + 44) = fRestoreUARPStagedFirmwareVersion2;
    *(v10 + 45) = fRestoreUARPStagedFirmwareVersionResponse;
    *(v10 + 46) = fRestoreUARPLastError;
    *(v10 + 47) = fRestoreUARPLastErrorResponse;
    *(v10 + 48) = fRestoreUARPStatisticsResponse;
    *(v10 + 49) = fRestoreUARPAssetSolicitation;
    *(v10 + 50) = fRestoreUARPRescindAllAssets;
    *(v10 + 51) = fRestoreUARPRescindAllAssetsAck;
    if (!v15 && *(v10 + 73) && a4)
    {
      *(v10 + 52) = fRestoreUARPTxWatchdogSet;
      *(v10 + 53) = fRestoreUARPTxWatchdogCancel;
      *(v10 + 54) = fRestoreUARPMonotonicClock;
    }

    *(v10 + 55) = fRestoreUARPProtocolVersion;
    *(v10 + 56) = fRestoreUARPFriendlyName;
    *(v10 + 57) = fRestoreUARPFriendlyNameResponse;
    *(v10 + 69) = fRestoreUARPPlatformLogPacket;
    *(v10 + 70) = CoreUARPRestoreLogError;
    *(v10 + 71) = CoreUARPRestoreLogInfo;
    *(v10 + 72) = CoreUARPRestoreLogDebug;
    *(v10 + 73) = CoreUARPRestoreLogFault;
    *(v10 + 80) = fRestoreUARPVendorSpecificRecvMsg;
    *(v10 + 81) = fRestoreUARPVendorSpecificCheckExpectedResponse;
    *(v10 + 82) = fRestoreUARPVendorSpecificCheckValidToSend;
    *(v10 + 83) = fRestoreUARPVendorSpecificExceededRetries;
    *(v10 + 182) = fRestoreUARPAppleModelNumberResponse;
    *(v10 + 184) = fRestoreUARPHardwareFusingTypeResponse;
    *(v10 + 186) = fRestoreUARPManifestPrefixResponse;
    *(v10 + 188) = fRestoreUARPBoardIDResponse;
    *(v10 + 190) = fRestoreUARPChipIDResponse;
    *(v10 + 192) = fRestoreUARPChipRevisionResponse;
    *(v10 + 194) = fRestoreUARPECIDResponse;
    *(v10 + 196) = fRestoreUARPECIDDataResponse;
    *(v10 + 198) = fRestoreUARPSecurityDomainResponse;
    *(v10 + 200) = fRestoreUARPSecurityModeResponse;
    *(v10 + 202) = fRestoreUARPProductionModeResponse;
    *(v10 + 204) = fRestoreUARPChipEpochResponse;
    *(v10 + 206) = fRestoreUARPEnableMixMatchResponse;
    *(v10 + 208) = fRestoreUARPSocLiveNonceResponse;
    *(v10 + 210) = fRestoreUARPPrefixNeedsLogicalUnitNumberResponse;
    *(v10 + 212) = fRestoreUARPSuffixNeedsLogicalUnitNumberResponse;
    *(v10 + 214) = fRestoreUARPLogicalUnitNumberResponse;
    *(v10 + 216) = fRestoreUARPTicketLongNameResponse;
    *(v10 + 218) = fRestoreUARPRequiresPersonalizationResponse;
    *(v10 + 220) = fRestoreUARPApBoardIDResponse;
    *(v10 + 222) = fRestoreUARPApChipIDResponse;
    *(v10 + 224) = fRestoreUARPApProductionModeResponse;
    *(v10 + 226) = fRestoreUARPApSecurityModeResponse;
    *(v10 + 228) = fRestoreUARPHardwareSpecificResponse;
    *(v10 + 230) = fRestoreUARPNonceResponse;
    *(v10 + 232) = fRestoreUARPLifeResponse;
    *(v10 + 234) = fRestoreUARPProvisioningResponse;
    *(v10 + 236) = fRestoreUARPManifestEpochResponse;
    *(v10 + 238) = fRestoreUARPManifestSuffixResponse;
    if (!uarpPlatformEndpointInit2(v10 + 728, v10, 2u, v10 + 8, v10 + 168, (v10 + 1440)))
    {
      v16 = *a2;
      v17 = a2[1];
      v18 = a2[3];
      *(v12 + 2) = a2[2];
      *(v12 + 3) = v18;
      *v12 = v16;
      *(v12 + 1) = v17;
      result = a2[4];
      v19 = a2[5];
      v20 = a2[7];
      *(v12 + 6) = a2[6];
      *(v12 + 7) = v20;
      *(v12 + 4) = result;
      *(v12 + 5) = v19;
      *(v12 + 270) = a5;
      *a1 = v12;
    }
  }

  return result;
}

uint64_t fRestoreUARPSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 30;
  }

  v10 = (*a1)(*(a1 + 2160), a3, a4);
  if (v10)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: Failed to tx uarp message", v5, v6, v7, v8, v9, v12);
  }

  return v10;
}

uint64_t fRestoreUARPDataTransferPause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.TRANSFER.PAUSE - Not Implemented", a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t fRestoreUARPDataTransferPauseAck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.TRANSFER.PAUSE.ACK - Not Implemented", a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t fRestoreUARPDataTransferResume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.TRANSFER.RESUME - Not Implemented", a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t fRestoreUARPDataTransferResumeAck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.TRANSFER.RESUME.ACK - Not Implemented", a4, a5, a6, a7, a8, vars0);
  return 0;
}

void fRestoreUARPSuperBinaryOffered(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.OFFER.SUPERBINARY - Not Implemented", a4, a5, a6, a7, a8, a9);
  }
}

void fRestoreUARPDynamicAssetOffered(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 704);
  if (!v10)
  {
    CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: %s: Rx pRestoreAsset was NULL", a4, a5, a6, a7, a8, "fRestoreUARPDynamicAssetOffered");
    v10 = calloc(1uLL, 0x150uLL);
    v10[1] = a1;
    v10[41] = *(a1 + 2152);
    *(a1 + 2152) = v10;
  }

  *v10 = a3;
  *(v10 + 77) = *(a3 + 68);
  memset(v21, 0, sizeof(v21));
  v11 = uarpAssetTagStructPersonalization();
  v12 = uarpAssetTagCompare(v11, (a3 + 48));
  v13 = uarpAssetTagStructPersonalizedFirmware();
  v14 = uarpAssetTagCompare(v13, (a3 + 48));
  if (v12)
  {
    CoreUARPRestoreSetAssetPersonalizationCallbacks(v21);
  }

  else if (v14)
  {
    CoreUARPRestoreSetAssetPersonalizedFirmwareCallbacks(v21);
  }

  else
  {
    CoreUARPRestoreSetAssetSolicitationCallbacks(v21);
  }

  v15 = uarpPlatformEndpointAssetAccept(a1 + 728, a1 + 1976, a3, v10, v21);
  if (v15)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: Failed to accept superbinary; 0x%08x", v16, v17, v18, v19, v20, v15);
  }

  else
  {
    CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: %s: Accepted dynamic asset", v16, v17, v18, v19, v20, "fRestoreUARPDynamicAssetOffered");
  }
}

uint64_t fRestoreUARPApplyStagedAssets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.APPLY.ASSETS - Not Implemented", a4, a5, a6, a7, a8, vars0);
  return 0;
}

uint64_t fRestoreUARPApplyStagedAssetsResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: Apply Staged Assets; status <0x%04x>, flags <0x%04x>", a4, a5, a6, a7, a8, a4);
  v16 = *(a1 + 24);
  if (v16)
  {
    v16(*(a1 + 2160), a4, a3);
  }

  else
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3ApplyStatus is NULL", v11, v12, v13, v14, v15, "CoreUARPRestoreAssetApplyStatus");
  }

  return 0;
}

void fRestoreUARPManufacturerNameResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2200));
    *(a1 + 2200) = 0;
    if (a3 || a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2200) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 1);
    }
  }
}

void fRestoreUARPModelNameResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2208));
    *(a1 + 2208) = 0;
    if (a3 || a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2208) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 2);
    }
  }
}

void fRestoreUARPSerialNumberResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2216));
    *(a1 + 2216) = 0;
    if (a3 || a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2216) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 3);
    }
  }
}

void fRestoreUARPHardwareVersionResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2224));
    *(a1 + 2224) = 0;
    if (a3 || a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2224) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 4);
    }
  }
}

void *fRestoreUARPActiveFirmwareVersionResponse(void *result, uint64_t a2, _OWORD *a3)
{
  if (result)
  {
    v3 = result + 279;
    if (a3)
    {
      *v3 = *a3;
    }

    else
    {
      *v3 = 0;
      result[280] = 0;
    }

    v4 = result[9];
    if (v4)
    {
      return v4(result[270], 5);
    }
  }

  return result;
}

void *fRestoreUARPStagedFirmwareVersionResponse(void *result, uint64_t a2, _OWORD *a3)
{
  if (result)
  {
    v3 = result + 281;
    if (a3)
    {
      *v3 = *a3;
    }

    else
    {
      *v3 = 0;
      result[282] = 0;
    }

    v4 = result[9];
    if (v4)
    {
      return v4(result[270], 6);
    }
  }

  return result;
}

void fRestoreUARPLastErrorResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP.RESTORE.LAYER3.INFO.RESPONSE <Last Error> - Not Implemented", a4, a5, a6, a7, a8, a9);
  }
}

void fRestoreUARPStatisticsResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP.RESTORE.LAYER3.INFO.RESPONSE <Statistics> - Not Implemented", a4, a5, a6, a7, a8, a9);
  }
}

uint64_t fRestoreUARPTxWatchdogSet(dispatch_queue_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  v8 = a3;
  CoreUARPRestoreCancelWatchdogTimer(a1, a2, a3, a4, a5, a6, a7, a8, v13);
  a1[284] = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, a1[283]);
  if (v8)
  {
    v10 = 1000000 * v8;
  }

  else
  {
    v10 = 1;
  }

  v11 = dispatch_time(0, v10);
  dispatch_set_context(a1[284], a1);
  dispatch_source_set_timer(a1[284], v11, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
  dispatch_source_set_event_handler_f(a1[284], fRestoreUARPWatchdogExpire);
  dispatch_resume(a1[284]);
  return 0;
}

uint64_t fRestoreUARPTxWatchdogCancel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 30;
  }

  CoreUARPRestoreCancelWatchdogTimer(a1, a2, a3, a4, a5, a6, a7, a8, vars0);
  return 0;
}

__darwin_time_t fRestoreUARPMonotonicClock()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (clock_gettime(_CLOCK_MONOTONIC, &v1))
  {
    return 0;
  }

  else
  {
    return v1.tv_sec;
  }
}

void fRestoreUARPProtocolVersion(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v17 = *(a1 + 2170);
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: Protocol Version Selected %d, was previously %d", a4, a5, a6, a7, a8, "fRestoreUARPProtocolVersion");
    *(a1 + 2170) = a3;

    CoreUARPRestoreQueryOutstandingInfoProperties(a1, v10, v11, v12, v13, v14, v15, v16);
  }
}

void fRestoreUARPFriendlyNameResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2296));
    *(a1 + 2296) = 0;
    if (a3 || a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2296) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 9);
    }
  }
}

uint64_t fRestoreUARPVendorSpecificRecvMsg(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  if (a1)
  {
    return uarpApplePlatformEndpointRecvMessage(a1 + 728, a1 + 1976, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

BOOL fRestoreUARPVendorSpecificCheckExpectedResponse(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (result)
  {
    return uarpApplePlatformMessageCheckExpectedResponse(result + 728, result + 1976, a3, a4, a5, a6);
  }

  return result;
}

uint64_t fRestoreUARPVendorSpecificCheckValidToSend(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result)
  {
    return uarpApplePlatformMessageCheckValidToSend(result + 728, result + 1976, a3, a4);
  }

  return result;
}

uint64_t fRestoreUARPVendorSpecificExceededRetries(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (result)
  {
    return uarpApplePlatformMessageExceededRetries(result + 728, result + 1976, a3, a4);
  }

  return result;
}

void fRestoreUARPAppleModelNumberResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2280));
    *(a1 + 2280) = 0;
    if (a3 && a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2280) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 1);
    }
  }
}

void fRestoreUARPHardwareFusingTypeResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2288));
    *(a1 + 2288) = 0;
    if (a3 && a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2288) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 2);
    }
  }
}

void fRestoreUARPManifestPrefixResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2304));
    *(a1 + 2304) = 0;
    if (a3 && a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2304) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 3);
    }
  }
}

uint64_t fRestoreUARPBoardIDResponse(uint64_t result, uint64_t a2, _DWORD *a3, int a4)
{
  if (result)
  {
    if (a3 && a4 == 4)
    {
      *(result + 2312) = *a3;
    }

    else if (a3 && a4 == 8)
    {
      *(result + 2312) = *a3;
    }

    else
    {
      *(result + 2312) = 0;
    }

    v4 = *(result + 80);
    if (v4)
    {
      return v4(*(result + 2160), 4);
    }
  }

  return result;
}

uint64_t fRestoreUARPChipIDResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2320) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 5);
    }
  }

  return result;
}

uint64_t fRestoreUARPChipRevisionResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2324) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 6);
    }
  }

  return result;
}

void *fRestoreUARPECIDResponse(void *result, uint64_t a2, uint64_t *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 8)
    {
      v4 = *a3;
    }

    result[291] = v4;
    v5 = result[10];
    if (v5)
    {
      return v5(result[270], 7);
    }
  }

  return result;
}

void fRestoreUARPECIDDataResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2336));
    *(a1 + 2336) = 0;
    *(a1 + 2344) = 0;
    if (a3 && a4)
    {
      *(a1 + 2344) = a4;
      v7 = calloc(a4, 1uLL);
      *(a1 + 2336) = v7;
      if (!v7)
      {
        *(a1 + 2344) = 0;
        return;
      }

      memcpy(v7, a3, *(a1 + 2344));
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 29);
    }
  }
}

uint64_t fRestoreUARPSecurityDomainResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2348) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 8);
    }
  }

  return result;
}

uint64_t fRestoreUARPSecurityModeResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2352) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 9);
    }
  }

  return result;
}

uint64_t fRestoreUARPProductionModeResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2356) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 10);
    }
  }

  return result;
}

uint64_t fRestoreUARPChipEpochResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2360) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 11);
    }
  }

  return result;
}

uint64_t fRestoreUARPEnableMixMatchResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2364) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 12);
    }
  }

  return result;
}

uint64_t fRestoreUARPSocLiveNonceResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2365) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 13);
    }
  }

  return result;
}

uint64_t fRestoreUARPPrefixNeedsLogicalUnitNumberResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2366) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 14);
    }
  }

  return result;
}

uint64_t fRestoreUARPSuffixNeedsLogicalUnitNumberResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2367) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 15);
    }
  }

  return result;
}

uint64_t fRestoreUARPLogicalUnitNumberResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2368) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 16);
    }
  }

  return result;
}

void fRestoreUARPTicketLongNameResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2376));
    *(a1 + 2376) = 0;
    if (a3 && a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2376) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 17);
    }
  }
}

uint64_t fRestoreUARPRequiresPersonalizationResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2384) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 18);
    }
  }

  return result;
}

uint64_t fRestoreUARPApBoardIDResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2388) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 19);
    }
  }

  return result;
}

uint64_t fRestoreUARPApChipIDResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2392) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 20);
    }
  }

  return result;
}

uint64_t fRestoreUARPApProductionModeResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2396) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 21);
    }
  }

  return result;
}

uint64_t fRestoreUARPApSecurityModeResponse(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 4)
    {
      v4 = *a3;
    }

    *(result + 2400) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 22);
    }
  }

  return result;
}

void fRestoreUARPHardwareSpecificResponse(uint64_t a1, uint64_t a2, const void *a3, int a4)
{
  if (a1)
  {
    free(*(a1 + 2408));
    *(a1 + 2408) = 0;
    *(a1 + 2416) = 0;
    if (a3 && a4)
    {
      *(a1 + 2416) = a4;
      v7 = calloc((a4 + 1), 1uLL);
      *(a1 + 2408) = v7;
      if (!v7)
      {
        *(a1 + 2416) = 0;
        return;
      }

      memcpy(v7, a3, *(a1 + 2416));
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 23);
    }
  }
}

void fRestoreUARPNonceResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2424));
    *(a1 + 2424) = 0;
    *(a1 + 2432) = 0;
    if (a3 && a4)
    {
      *(a1 + 2432) = a4;
      v7 = calloc(a4, 1uLL);
      *(a1 + 2424) = v7;
      if (!v7)
      {
        *(a1 + 2432) = 0;
        return;
      }

      memcpy(v7, a3, *(a1 + 2432));
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 24);
    }
  }
}

uint64_t fRestoreUARPLifeResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2436) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 25);
    }
  }

  return result;
}

uint64_t fRestoreUARPProvisioningResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2438) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 26);
    }
  }

  return result;
}

uint64_t fRestoreUARPManifestEpochResponse(uint64_t result, uint64_t a2, char *a3, int a4)
{
  if (result)
  {
    v4 = 0;
    if (a3 && a4 == 1)
    {
      v4 = *a3;
    }

    *(result + 2437) = v4;
    v5 = *(result + 80);
    if (v5)
    {
      return v5(*(result + 2160), 27);
    }
  }

  return result;
}

void fRestoreUARPManifestSuffixResponse(uint64_t a1, uint64_t a2, const void *a3, unsigned int a4)
{
  if (a1)
  {
    free(*(a1 + 2440));
    *(a1 + 2440) = 0;
    if (a3 && a4)
    {
      v7 = calloc(a4 + 1, 1uLL);
      *(a1 + 2440) = v7;
      if (!v7)
      {
        return;
      }

      memcpy(v7, a3, a4);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v9 = *(a1 + 2160);

      v8(v9, 28);
    }
  }
}

uint64_t CoreUARPRestoreEndpointOfferSuperBinary(uint64_t a1, const char *a2)
{
  v4 = calloc(1uLL, 0x150uLL);
  if (!v4)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: Failed to allocate restore asset", v5, v6, v7, v8, v9, v24);
    return 11;
  }

  v10 = v4;
  v11 = fopen(a2, "r");
  *(v10 + 2) = v11;
  if (!v11)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: Failed to open file %s", v12, v13, v14, v15, v16, a2);
    free(v10);
    return 11;
  }

  fseek(v11, 0, 2);
  *(v10 + 77) = MEMORY[0x29C2B36A0](*(v10 + 2));
  fseek(*(v10 + 2), 0, 0);
  v22 = CoreUARPRestoreEndpointOfferSuperBinaryCommon(a1, v10);
  if (v22)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: Failed to offer superbinary", v17, v18, v19, v20, v21, v24);
    fclose(*(v10 + 2));
    free(v10);
  }

  return v22;
}

uint64_t CoreUARPRestoreEndpointOfferSuperBinaryCommon(uint64_t a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  CoreUARPRestoreSetAssetCallbacks(v5);
  result = uarpPlatformEndpointPrepareSuperBinary(a1 + 728, a1 + 1976, a2, v5);
  if (!result)
  {
    *a2 = uarpPlatformAssetFindByAssetContextAndList(a1 + 728, a2, 1);
    result = uarpPlatformEndpointOfferAsset(a1 + 728, a1 + 1976, a2);
    if (!result)
    {
      a2[41] = *(a1 + 2144);
      *(a1 + 2144) = a2;
    }
  }

  return result;
}

uint64_t CoreUARPRestoreEndpointOfferSuperBinaryBuffer(uint64_t a1, uint64_t a2, int a3)
{
  v6 = calloc(1uLL, 0x150uLL);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  *(v6 + 35) = a2;
  *(v6 + 77) = a3;
  v8 = CoreUARPRestoreEndpointOfferSuperBinaryCommon(a1, v6);
  if (v8)
  {
    free(v7);
  }

  return v8;
}

uint64_t CoreUARPRestoreEndpointMsgRecv(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v6 = uarpNtohs(*a2);
  uarpNtohs(a2[1]);
  uarpNtohs(a2[2]);
  switch(v6)
  {
    case 5:
      v37 = uarpNtohs(a2[6]);
      CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: UARP RX: Asset Available Notification; Asset ID %u", v22, v23, v24, v25, v26, v37);
      break;
    case 15:
      v36 = uarpNtohs(a2[3]);
      CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: UARP RX: Asset Processing Notification ACK; Asset ID %u", v17, v18, v19, v20, v21, v36);
      break;
    case 9:
      v35 = uarpNtohs(a2[3]);
      CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: UARP RX: Asset Processing Notification; Asset ID %u", v12, v13, v14, v15, v16, v35);
      break;
    default:
      if ((v6 - 8) <= 0xFFFFFFFD)
      {
        CoreUARPRestoreLogDebug(a1, 1, "UARP Restore: UARP RX: Buffer = %p, Payload Length = %u, Type = 0x%04x, Total Length = %u, ID = %u", v7, v8, v9, v10, v11, a2);
      }

      break;
  }

  v32 = uarpPlatformEndpointRecvMessage(a1 + 728, (a1 + 1976), a2, a3);
  if (v32)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: Failed to process rx uarp message", v27, v28, v29, v30, v31, v34);
  }

  return v32;
}

uint64_t CoreUARPRestoreEndpointDataRecv(uint64_t a1, char *a2, int a3)
{
  v4 = uarpPlatformEndpointStreamingRecvBytes(a1 + 728, (a1 + 1976), a2, a3);
  v10 = v4;
  if (v4)
  {
    CoreUARPRestoreLogError(a1, 1, "uarpPlatformEndpointStreamingRecvBytes() failed; 0x%08x", v5, v6, v7, v8, v9, v4);
  }

  return v10;
}

uint64_t CoreUARPRestoreEndpointRemoteEndpointAssetSolicitation(uint64_t a1, _DWORD *a2, const char *a3)
{
  v6 = calloc(1uLL, 0x150uLL);
  *(v6 + 1) = a1;
  *(v6 + 41) = *(a1 + 2152);
  *(a1 + 2152) = v6;
  memset(v31, 0, sizeof(v31));
  if (strlen(a3) < 0x101)
  {
    __memcpy_chk();
    v13 = fopen(v6 + 24, "w+");
    *(v6 + 2) = v13;
    if (v13)
    {
      CoreUARPRestoreSetAssetSolicitationCallbacks(v31);
      v19 = uarpPlatformEndpointPrepareSolicitedDynamicAsset(a1 + 728, a1 + 1976, v6, a2, v31);
      if (v19)
      {
        v12 = v19;
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: uarpPlatformEndpointPrepareSolicitedDynamicAsset() failed; 0x%08x", v20, v21, v22, v23, v24, "CoreUARPRestoreEndpointRemoteEndpointAssetSolicitation");
      }

      else
      {
        v12 = uarpPlatformEndpointSolicitDynamicAsset(a1 + 728, a1 + 1976, a2, v6);
        if (v12)
        {
          CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: uarpPlatformEndpointSolicitDynamicAsset() failed; 0x%08x", v25, v26, v27, v28, v29, "CoreUARPRestoreEndpointRemoteEndpointAssetSolicitation");
        }
      }
    }

    else
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: UARPRestoreAsset->_fp is NULL", v14, v15, v16, v17, v18, "CoreUARPRestoreEndpointRemoteEndpointAssetSolicitation");
      return 11;
    }
  }

  else
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: Provided filepath is greater than max filepath length %i", v7, v8, v9, v10, v11, "CoreUARPRestoreEndpointRemoteEndpointAssetSolicitation");
    return 30;
  }

  return v12;
}

void CoreUARPRestoreAssetTransferProgress(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      if (*a2)
      {
        if (a1[1])
        {
          if (a1[4])
          {
            v12 = uarpAssetTagStructSuperBinary();
            v13 = uarpAssetTagCompare(v12, (*a2 + 48));
            v14 = a1[270];
            if (v13)
            {
              v15 = a1[1];
            }

            else
            {
              v15 = a1[4];
            }

            v15(v14, a3, a4);
          }

          else
          {
            CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3AssetSolicitationProgress is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferProgress");
          }
        }

        else
        {
          CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3FirmwareStageProgress is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferProgress");
        }
      }

      else
      {
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: pAsset->_pAsset is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferProgress");
      }
    }

    else
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: pAsset is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferProgress");
    }
  }
}

void CoreUARPRestoreAssetTransferStatus(void *a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a2)
    {
      if (a1[2])
      {
        if (a1[5])
        {
          v11 = uarpAssetTagStructSuperBinary();
          if (uarpAssetTagCompare(v11, (*a2 + 48)))
          {
            CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: Firmware Asset fully transfered", v12, v13, v14, v15, v16, "CoreUARPRestoreAssetTransferStatus");
            v17 = a1[2];
          }

          else
          {
            v21 = *(*a2 + 50);
            v22 = *(*a2 + 51);
            v19 = *(*a2 + 48);
            v20 = *(*a2 + 49);
            CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: Asset fully transfered; %c%c%c%c", v12, v13, v14, v15, v16, "CoreUARPRestoreAssetTransferStatus");
            v17 = a1[5];
          }

          v18 = a1[270];

          v17(v18, a3, a3 & 0xFF00);
        }

        else
        {
          CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3AssetSolicitationStatus is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferStatus");
        }
      }

      else
      {
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3FirmwareStageStatus is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferStatus");
      }
    }

    else
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: pAsset is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetTransferStatus");
    }
  }
}

void CoreUARPRestoreAssetApplyStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(a1 + 2160);

      v9(v10);
    }

    else
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3ApplyStatus is NULL", v9, a5, a6, a7, a8, "CoreUARPRestoreAssetApplyStatus");
    }
  }
}

void CoreUARPRestoreAssetRescindStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      v10 = *(a1 + 2160);

      v9(v10);
    }

    else
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3RescindStatus is NULL", a4, a5, a6, a7, a8, "CoreUARPRestoreAssetRescindStatus");
    }
  }
}

void CoreUARPRestoreAssetPersonalizedFirmware(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 88);
    if (v9)
    {
      v10 = *(a1 + 2160);

      v9(v10, a2, a3, 0);
    }

    else
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: %s: fLayer3PersonalizedFirmware is NULL", a4, v9, a6, a7, a8, "CoreUARPRestoreAssetPersonalizedFirmware");
    }
  }
}

void CoreUARPRestoreCancelWatchdogTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(a1 + 2272);
  if (v10)
  {
    dispatch_source_cancel(v10);
    dispatch_release(*(a1 + 2272));
    *(a1 + 2272) = 0;

    CoreUARPRestoreLogError(a1, 1, "UARP.LAYER3.WATCHDOG.CANCEL", v11, v12, v13, v14, v15, a9);
  }
}

uint64_t fRestoreUARPWatchdogExpire(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    CoreUARPRestoreLogDebug(result, 1, "UARP.RESTORE.LAYER3.WATCHDOG.EXPIRE", a4, a5, a6, a7, a8, v16);
    CoreUARPRestoreCancelWatchdogTimer(v8, v9, v10, v11, v12, v13, v14, v15, v17);

    return uarpPlatformEndpointWatchDogExpired(v8 + 728, v8 + 1976);
  }

  return result;
}

uint64_t UARPSoCUpdaterExecCommand(void *a1, void *a2, uint64_t a3, void *a4, CFErrorRef *a5)
{
  v26[2] = *MEMORY[0x29EDCA608];
  v9 = a2;
  v10 = a1;
  if (!v10)
  {
    *a4 = 0;
    if (a5)
    {
      v15 = *MEMORY[0x29EDB8ED8];
      v16 = *MEMORY[0x29EDB8F50];
      v17 = 6;
LABEL_7:
      v18 = CFErrorCreate(v15, v16, v17, 0);
      v14 = 0;
      goto LABEL_8;
    }

LABEL_30:
    v14 = 0;
    goto LABEL_31;
  }

  if ([v9 isEqualToString:@"queryTags"])
  {
    v25[0] = @"BuildIdentityTags";
    v11 = [v10 firmwareTags];
    v26[0] = v11;
    v25[1] = @"ResponseTags";
    v12 = [v10 ticketNameTags];
    v26[1] = v12;
    v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

    *a4 = v13;
LABEL_4:
    v14 = 1;
    goto LABEL_31;
  }

  if (![v9 isEqualToString:@"queryInfo"])
  {
    if ([v9 isEqualToString:@"generateMeasurements"])
    {
      if ([v10 offerFirmwareDataWithDictionary:a3])
      {
        v21 = [v10 personalizationRequests];

        if (v21)
        {
          if (a4)
          {
            *a4 = CFDictionaryCreateCopy(*MEMORY[0x29EDB8ED8], [v10 personalizationRequests]);
          }
        }

        else
        {
          *a4 = 0;
          if (a5)
          {
            *a5 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], 94, 0);
          }
        }

        goto LABEL_4;
      }

      *a4 = 0;
      if (a5)
      {
        v15 = *MEMORY[0x29EDB8ED8];
        v16 = *MEMORY[0x29EDB8F50];
        v17 = 95;
        goto LABEL_7;
      }
    }

    else if ([v9 isEqualToString:@"performNextStage"])
    {
      if ([v10 offerPersonalizationDataWithDictionary:a3])
      {
        v22 = [v10 applyStagedFirmware];
        v14 = v22;
        if (!a5 || (v22 & 1) != 0)
        {
          goto LABEL_31;
        }

        v18 = CFErrorCreate(*MEMORY[0x29EDB8ED8], *MEMORY[0x29EDB8F50], 100, 0);
LABEL_8:
        *a5 = v18;
        goto LABEL_31;
      }

      if (a5)
      {
        v15 = *MEMORY[0x29EDB8ED8];
        v16 = *MEMORY[0x29EDB8F50];
        v17 = 104;
        goto LABEL_7;
      }
    }

    else if (a5)
    {
      v15 = *MEMORY[0x29EDB8ED8];
      v16 = *MEMORY[0x29EDB8F50];
      v17 = 102;
      goto LABEL_7;
    }

    goto LABEL_30;
  }

  v19 = [v10 queryInfo];
  v20 = v19;
  if (v19)
  {
    *a4 = v19;
    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_31:
  v23 = *MEMORY[0x29EDCA608];
  return v14;
}

double CoreUARPRestoreSetAssetSolicitationCallbacks(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *a1 = fAssetReady;
  *(a1 + 8) = fAssetMetaDataTLV;
  *(a1 + 16) = fAssetMetaDataComplete;
  *(a1 + 32) = fPayloadReady;
  *(a1 + 40) = fPayloadMetaDataTLV;
  *(a1 + 48) = fPayloadMetaDataComplete;
  *(a1 + 64) = fPayloadData;
  *(a1 + 72) = fPayloadDataComplete;
  *(a1 + 88) = fAssetGetBytesAtOffset2;
  *(a1 + 96) = fAssetSetBytesAtOffset2;
  *(a1 + 184) = fAssetStore;
  *(a1 + 144) = fAssetProcessingNotification2;
  *(a1 + 152) = fAssetProcessingNotificationAck;
  return result;
}

void fAssetReady(uint64_t a1, uint64_t a2)
{
  if (uarpPlatformEndpointAssetQueryNumberOfPayloads(a1 + 728, *a2, (a2 + 288)))
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpPlatformEndpointAssetQueryNumberOfPayloads failed with status: %u", v4, v5, v6, v7, v8, "fAssetReady");
  }

  else
  {
    v9 = calloc(1uLL, 352 * *(a2 + 288));
    *(a2 + 296) = v9;
    v10 = *(a2 + 288);
    if (*(a2 + 288))
    {
      v11 = 0;
      v12 = xmmword_299E7E7A0;
      v13 = xmmword_299E7E7B0;
      v14 = xmmword_299E7E7C0;
      v15 = xmmword_299E7E7D0;
      v16 = vdupq_n_s64(v10 - 1);
      v17 = vdupq_n_s64(8uLL);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, v15));
        if (vuzp1_s8(vuzp1_s16(v18, *v12.i8), *v12.i8).u8[0])
        {
          *v9 = v11;
        }

        if (vuzp1_s8(vuzp1_s16(v18, *&v12), *&v12).i8[1])
        {
          v9[176] = v11 | 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v16, *&v14))), *&v12).i8[2])
        {
          v9[352] = v11 | 2;
          v9[528] = v11 | 3;
        }

        v19 = vmovn_s64(vcgeq_u64(v16, v13));
        if (vuzp1_s8(*&v12, vuzp1_s16(v19, *&v12)).i32[1])
        {
          v9[704] = v11 | 4;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v19, *&v12)).i8[5])
        {
          v9[880] = v11 | 5;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v16, *&v12)))).i8[6])
        {
          v9[1056] = v11 | 6;
          v9[1232] = v11 | 7;
        }

        v11 += 8;
        v13 = vaddq_s64(v13, v17);
        v14 = vaddq_s64(v14, v17);
        v15 = vaddq_s64(v15, v17);
        v12 = vaddq_s64(v12, v17);
        v9 += 1408;
      }

      while (((v10 + 7) & 0x1FFF8) != v11);
    }

    v20 = uarpPlatformEndpointAssetRequestMetaData(a1 + 728, *a2);
    if (v20)
    {
      if (v20 == 40)
      {
        CoreUARPRestoreLogDebug(a1, 1, "UARP Restore (Asset Solicitation): %s: No Asset Metadata", v21, v22, v23, v24, v25, "fAssetReady");

        fAssetMetaDataComplete(a1, a2);
      }

      else
      {
        CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpPlatformEndpointAssetRequestMetaData failed with status: %u", v21, v22, v23, v24, v25, "fAssetReady");
      }
    }
  }
}

void fAssetMetaDataComplete(uint64_t a1, uint64_t a2)
{
  *(a2 + 304) = 0;
  if (uarpPlatformEndpointAssetSetPayloadIndex((a1 + 728), *a2, 0))
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpPlatformEndpointAssetSetPayloadIndex failed with status: %u", v3, v4, v5, v6, v7, "fAssetMetaDataComplete");
  }
}

void fPayloadReady(uint64_t a1, uint64_t *a2)
{
  if (!uarpAssetQueryPayloadInfo(a1 + 728, *a2, *(a2 + 152), a2[37] + 352 * *(a2 + 152) + 4))
  {
    v4 = uarpPlatformEndpointPayloadRequestMetaData(a1 + 728, *a2);
    if (v4)
    {
      if (v4 == 40)
      {
        CoreUARPRestoreLogDebug(a1, 1, "UARP Restore (Asset Solicitation): %s: No Payload Metadata", v5, v6, v7, v8, v9, "fPayloadReady");

        fPayloadMetaDataComplete(a1, a2);
      }

      else
      {
        CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpPlatformEndpointPayloadRequestMetaData failed with status: %u", v5, v6, v7, v8, v9, "fPayloadReady");
      }
    }
  }
}

void fPayloadMetaDataComplete(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 296) + 352 * *(a2 + 304);
  sprintf((v4 + 96), "%s.%u.payload", (a2 + 24), *(a2 + 304));
  if (!*(v4 + 88))
  {
    *(v4 + 88) = fopen((v4 + 96), "w+");
  }

  if (uarpAssetQueryPayloadInfo(a1 + 728, *a2, *(a2 + 304), v4 + 4))
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpAssetQueryPayloadInfo failed with status: %u", v5, v6, v7, v8, v9, "fPayloadMetaDataComplete");
  }

  else
  {
    *(v4 + 80) = calloc(*(v4 + 28), 1uLL);
    if (uarpPlatformEndpointPayloadRequestData(a1 + 728, *a2))
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpPlatformEndpointPayloadRequestData failed with status: %u", v10, v11, v12, v13, v14, "fPayloadMetaDataComplete");
    }
  }
}

void fPayloadData(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 296) + 352 * *(a2 + 304);
  v12 = *(v9 + 88);
  v11 = (v9 + 88);
  v10 = v12;
  if (v12)
  {
    v13 = a4;
    if (fseek(v10, a5, 0) == -1)
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: fseek failed", v16, v17, v18, v19, v20, "fPayloadData");
    }

    else
    {
      *(a2 + 312) += fwrite(a3, 1uLL, v13, *v11);
      fflush(*v11);
      v32 = *(a2 + 312);
      CoreUARPRestoreLogDebug(a1, 1, "UARP Restore (Asset Solicitation): %s: %u bytes written", v21, v22, v23, v24, v25, "fPayloadData");
      v30 = *(a2 + 312);
      v31 = *(a2 + 308);

      CoreUARPRestoreAssetTransferProgress(a1, a2, v30, v31, v26, v27, v28, v29);
    }
  }

  else
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: pPayload->_fp is NULL", a4, a5, a6, a7, a8, "fPayloadData");
  }
}

void fPayloadDataComplete(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 296);
  v5 = *(a2 + 304);
  v6 = calloc(0x400uLL, 1uLL);
  if (!*(a2 + 16))
  {
    v18 = "UARP Restore (Asset Solicitation): %s: pAsset->_fp is NULL";
    goto LABEL_12;
  }

  v12 = v6;
  v13 = v4 + 352 * v5;
  v14 = *(v13 + 88);
  if (!v14)
  {
    v18 = "UARP Restore (Asset Solicitation): %s: pPayload->_fp is NULL";
    goto LABEL_12;
  }

  if (fseek(v14, 0, 0) == -1)
  {
    v18 = "UARP Restore (Asset Solicitation): %s: fseek failed";
    goto LABEL_12;
  }

  v15 = fread(v12, 1uLL, 0x400uLL, *(v13 + 88));
  if (v15)
  {
    v16 = v15;
    do
    {
      fwrite(v12, 1uLL, v16, *(a2 + 16));
      fflush(*(a2 + 16));
      v16 = fread(v12, 1uLL, 0x400uLL, *(v13 + 88));
    }

    while (v16);
  }

  free(v12);
  fclose(*(v13 + 88));
  *(v13 + 88) = 0;
  if (remove((v13 + 96), v17))
  {
    v18 = "UARP Restore (Asset Solicitation): %s: remove failed";
LABEL_12:
    CoreUARPRestoreLogError(a1, 1, v18, v7, v8, v9, v10, v11, "fPayloadWriteToAsset");
  }

  v19 = *(a2 + 304) + 1;
  *(a2 + 304) = v19;
  if (*(a2 + 288) <= v19)
  {
    uarpPlatformEndpointAssetFullyStaged(a1 + 728, *a2);
    CoreUARPRestoreLogDebug(a1, 1, "UARP Restore (Asset Solicitation): %s: Asset fully staged", v25, v26, v27, v28, v29, "fPayloadDataComplete");
  }

  else if (uarpPlatformEndpointAssetSetPayloadIndex((a1 + 728), *a2, v19))
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: uarpPlatformEndpointAssetSetPayloadIndex failed with status: %u", v20, v21, v22, v23, v24, "fPayloadDataComplete");
  }
}

uint64_t fAssetGetBytesAtOffset2(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _WORD *a7, uint64_t a8)
{
  if (!a1)
  {
    CoreUARPRestoreLogError(0, 1, "UARP Restore (Asset Solicitation): %s: pEndpoint is NULL", a4, a5, a6, a7, a8, "fAssetGetBytesAtOffset2");
    return 30;
  }

  if (!a3 || (v10 = *(a3 + 16)) == 0)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: pAsset is NULL", a4, a5, a6, a7, a8, "fAssetGetBytesAtOffset2");
    return 30;
  }

  v12 = a5;
  if (fseek(v10, a6, 0) == -1)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: fseek failed", v14, v15, v16, v17, v18, "fAssetGetBytesAtOffset2");
    return 43;
  }

  else
  {
    v19 = fread(a4, 1uLL, v12, *(a3 + 16));
    result = 0;
    *a7 = v19;
  }

  return result;
}

uint64_t fAssetSetBytesAtOffset2(uint64_t a1, int a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    CoreUARPRestoreLogError(0, 1, "UARP Restore (Asset Solicitation): %s: pEndpoint is NULL", a4, a5, a6, a7, a8, "fAssetSetBytesAtOffset2");
    return 30;
  }

  if (!a3 || (v10 = *(a3 + 16)) == 0)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: pAsset is NULL", a4, a5, a6, a7, a8, "fAssetSetBytesAtOffset2");
    return 30;
  }

  v11 = a5;
  if (fseek(v10, a6, 0) == -1)
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: fseek failed", v13, v14, v15, v16, v17, "fAssetSetBytesAtOffset2");
    return 43;
  }

  else
  {
    fwrite(a4, 1uLL, v11, *(a3 + 16));
    fflush(*(a3 + 16));
    return 0;
  }
}

void fAssetStore(void *a1, uint64_t a2, int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a5;
    if (fseek(v9, a6, 0) == -1)
    {
      CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: fseek failed", v13, v14, v15, v16, v17, "fAssetStore");
    }

    else
    {
      *(a2 + 312) += fwrite(a4, 1uLL, v10, *(a2 + 16));
      fflush(*(a2 + 16));
      v29 = *(a2 + 312);
      CoreUARPRestoreLogDebug(a1, 1, "UARP Restore (Asset Solicitation): %s: %u bytes written", v18, v19, v20, v21, v22, "fAssetStore");
      v27 = *(a2 + 312);
      v28 = *(a2 + 308);

      CoreUARPRestoreAssetTransferProgress(a1, a2, v27, v28, v23, v24, v25, v26);
    }
  }

  else
  {
    CoreUARPRestoreLogError(a1, 1, "UARP Restore (Asset Solicitation): %s: pAsset->_fp is NULL", a4, a5, a6, a7, a8, "fAssetStore");
  }
}

uint64_t CoreUARPRestorePersonalizationTssResponse(uint64_t a1, uint64_t a2, int a3, CFDictionaryRef theDict, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (theDict)
  {
    v10 = *(a2 + 296);
    Value = CFDictionaryGetValue(theDict, *(v10 + 56));
    Length = CFDataGetLength(Value);
    *(v10 + 72) = Length;
    v13 = calloc(Length, 1uLL);
    *(v10 + 64) = v13;
    BytePtr = CFDataGetBytePtr(Value);
    memcpy(v13, BytePtr, *(v10 + 72));
    v15 = *(a1 + 64);
    if (v15)
    {
      v15(*(a1 + 2160), *(v10 + 64), *(v10 + 72));
    }

    CFRelease(*(v10 + 48));
    *(v10 + 48) = 0;
    CFRelease(*(v10 + 56));
    *(v10 + 56) = 0;
    CoreUARPRestoreLogInfo(a1, 1, "CoreUARP Restore IM4M: Building Personalization Response", v16, v17, v18, v19, v20, v45);
    if (*(a1 + 2168) == 1)
    {
      v46 = time(0);
      v21 = localtime(&v46);
      tm_mon = v21->tm_mon;
      tm_year = v21->tm_year;
      tm_hour = v21->tm_hour;
      tm_mday = v21->tm_mday;
      tm_sec = v21->tm_sec;
      tm_min = v21->tm_min;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0u;
      *(a2 + 104) = 0u;
      *(a2 + 120) = 0u;
      *(a2 + 136) = 0u;
      *(a2 + 152) = 0u;
      *(a2 + 168) = 0u;
      *(a2 + 184) = 0u;
      *(a2 + 200) = 0u;
      *(a2 + 216) = 0u;
      *(a2 + 232) = 0u;
      *(a2 + 248) = 0u;
      *(a2 + 264) = 0u;
      snprintf((a2 + 24), 0x100uLL, "IM4M-CoreUARPRestore-%d-%02d-%02d-%02d-%02d-%02d.uarp", tm_year + 1900, tm_mon + 1, tm_mday, tm_hour, tm_min, tm_sec);
      v28 = fopen((a2 + 24), "w+");
      *(a2 + 16) = v28;
      if (!v28)
      {
        v34 = 11;
LABEL_21:
        CoreUARPRestoreLogError(a1, 1, "CoreUARP Restore IM4M: CoreUARPRestoreBuildPersonalizationResponse: %d ", v29, v30, v31, v32, v33, v34);
        return v34;
      }
    }

    else
    {
      *(a2 + 308) = 0x400000;
      *(a2 + 280) = calloc(0x400000uLL, 1uLL);
    }

    AssetLength = uarpPersonalizationRequestAssetInitialize(a1 + 728, a2, 1);
    if (AssetLength)
    {
      goto LABEL_20;
    }

    for (i = *(a2 + 320); i; i = *(i + 16))
    {
      AssetLength = UARPSuperBinaryAddMetaData(a1 + 728, a2, *i, *(i + 4), *(i + 8));
      if (AssetLength)
      {
        goto LABEL_20;
      }
    }

    v37 = *(a2 + 296);
    AssetLength = uarpPersonalizationRequestPreparePayload(a1 + 728, a2, *v37);
    if (AssetLength)
    {
      goto LABEL_20;
    }

    for (j = *(v37 + 5); j; j = *(j + 16))
    {
      AssetLength = UARPSuperBinaryAddPayloadMetaData(a1 + 728, a2, *v37, *j, *(j + 4), *(j + 8));
      if (AssetLength)
      {
        goto LABEL_20;
      }
    }

    AssetLength = UARPSuperBinaryAddPayloadData(a1 + 728, a2, *v37, *(v37 + 8), *(v37 + 18));
    if (AssetLength || (AssetLength = UARPSuperBinaryFinalizeHeader(a1 + 728, a2), AssetLength) || (AssetLength = UARPSuperBinaryQueryAssetLength(a1 + 728, *a2, (a2 + 308)), AssetLength))
    {
LABEL_20:
      v34 = AssetLength;
      goto LABEL_21;
    }

    v34 = uarpPlatformEndpointOfferAsset(a1 + 728, a1 + 1976, a2);
    if (v34)
    {
      CoreUARPRestoreLogError(a1, 1, "CoreUARP Restore IM4M: uarpPlatformEndpointOfferAsset: %d ", v40, v41, v42, v43, v44, 0);
    }
  }

  else
  {
    CoreUARPRestoreLogError(a1, 1, "CoreUARP Restore IM4M: Post-Layer3: TSS Response is NULL", 0, a5, a6, a7, a8, v45);
    return 56;
  }

  return v34;
}

double CoreUARPRestoreSetAssetPersonalizationCallbacks(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = fPersonalizationAssetReady;
  *(a1 + 88) = fPersonalizationAssetGetBytesAtOffset2;
  *(a1 + 96) = fPersonalizationAssetSetBytesAtOffset2;
  *(a1 + 120) = fPersonalizationAssetCorrupt;
  *(a1 + 128) = fPersonalizationAssetOrphaned;
  *(a1 + 136) = fPersonalizationAssetReleased2;
  *(a1 + 144) = fPersonalizationAssetProcessingNotification2;
  *(a1 + 152) = fPersonalizationAssetProcessingNotificationAck;
  *(a1 + 160) = fPersonalizationAssetPreProcessingNotification;
  *(a1 + 168) = fPersonalizationAssetPreProcessingNotificationAck;
  *(a1 + 176) = fPersonalizationAssetAllHeadersAndMetaDataComplete;
  return result;
}

uint64_t fPersonalizationAssetReady(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    if (a2)
    {
      return uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(result + 728, *a2);
    }
  }

  return result;
}

uint64_t fPersonalizationAssetGetBytesAtOffset2(uint64_t a1, int a2, uint64_t a3, void *__dst, unsigned int a5, uint64_t a6, _WORD *a7)
{
  if (*(a1 + 2168) == 1)
  {
    fseek(*(a3 + 16), a6, 0);
    v17 = fread(__dst, 1uLL, a5, *(a3 + 16));
    if (v17 < a5)
    {
      v18 = *(a3 + 16);
      v19 = ferror(v18);
      if (v19)
      {
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: Read error %d, Read %zu bytes", v20, v21, v22, v23, v24, v19);
        return 54;
      }

      v28 = feof(v18);
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: EOF %d, Read %zu bytes", v29, v30, v31, v32, v33, v28);
      if (!v28)
      {
        return 54;
      }
    }
  }

  else
  {
    v26 = *(a3 + 308);
    if (a5 + a6 <= v26)
    {
      v17 = a5;
    }

    else
    {
      v17 = (v26 - a6);
    }

    memcpy(__dst, (*(a3 + 280) + a6), v17);
  }

  *a7 = v17;
  v27 = *(a3 + 308);
  if (v27)
  {
    CoreUARPRestoreAssetTransferProgress(a1, a3, a6, v27, v13, v14, v15, v16);
  }

  return 0;
}

uint64_t fPersonalizationAssetSetBytesAtOffset2(uint64_t a1, int a2, uint64_t a3, void *__src, size_t __n, unsigned int a6)
{
  v6 = __n;
  if (*(a1 + 2168) == 1)
  {
    if (fseek(*(a3 + 16), a6, 0) == -1 || fwrite(__src, 1uLL, v6, *(a3 + 16)) != v6)
    {
      return 54;
    }

    fflush(*(a3 + 16));
  }

  else
  {
    if (__n + a6 > *(a3 + 308))
    {
      return 43;
    }

    memcpy((*(a3 + 280) + a6), __src, __n);
  }

  return 0;
}

void fPersonalizationAssetAllHeadersAndMetaDataComplete(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  if (!a3)
  {
    return;
  }

  v5 = calloc(1uLL, 0x150uLL);
  v5[41] = a1[268];
  a1[268] = v5;
  v139 = 0u;
  v153 = 0;
  v152 = 0u;
  v151 = 0u;
  v142 = 0u;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v134 = fPersonalizationAssetReady;
  v140 = fPersonalizationAssetGetBytesAtOffset2;
  v141 = fPersonalizationAssetSetBytesAtOffset2;
  v143 = fPersonalizationAssetCorrupt;
  v144 = fPersonalizationAssetOrphaned;
  v145 = fPersonalizationAssetReleased2;
  v146 = fPersonalizationAssetProcessingNotification2;
  v147 = fPersonalizationAssetProcessingNotificationAck;
  v148 = fPersonalizationAssetPreProcessingNotification;
  v149 = fPersonalizationAssetPreProcessingNotificationAck;
  v150 = fPersonalizationAssetAllHeadersAndMetaDataComplete;
  v6 = uarpAssetTagStructPersonalization();
  if (uarpPlatformEndpointPrepareDynamicAsset((a1 + 91), (a1 + 247), v5, v6, &v134))
  {
    return;
  }

  *v5 = uarpPlatformAssetFindByAssetContext((a1 + 91), v5);
  v5[1] = a1;
  SuperBinaryMetaData = uarpAssetQuerySuperBinaryMetaData((a1 + 91), *a3);
  if (SuperBinaryMetaData)
  {
    v13 = SuperBinaryMetaData;
    do
    {
      CoreUARPRestoreLogInfo(a1, 3, "Payload Metadata <0x%08x>", v8, v9, v10, v11, v12, *v13);
      v14 = calloc(1uLL, 0x18uLL);
      *v14 = *v13;
      v15 = *(v13 + 4);
      v14[1] = v15;
      v16 = calloc(v15, 1uLL);
      *(v14 + 1) = v16;
      memcpy(v16, *(v13 + 8), v14[1]);
      *(v14 + 2) = v5[40];
      v5[40] = v14;
      v13 = *(v13 + 16);
    }

    while (v13);
  }

  *(a3 + 288) = 0;
  if (uarpPlatformEndpointAssetQueryNumberOfPayloads((a1 + 91), *a3, (a3 + 288)))
  {
    return;
  }

  *(a3 + 296) = calloc(*(a3 + 288), 0x160uLL);
  v17 = *(a3 + 288);
  *(v5 + 144) = v17;
  v5[37] = calloc(v17, 0x160uLL);
  if (!*(a3 + 288))
  {
LABEL_16:
    uarpPlatformEndpointAssetFullyStaged((a1 + 91), *a3);
    if (!*(v5 + 144))
    {
      return;
    }

    v57 = v5[37];
    v58 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v128 = v57;
    v65 = v57[5];
    theDict = Mutable;
    if (!v65)
    {
      v71 = Mutable;
      v66 = 0;
      goto LABEL_55;
    }

    v66 = 0;
    v132 = 0;
    v67 = 0;
    v130 = 0;
    do
    {
      CoreUARPRestoreLogDebug(a1, 1, "CoreUARP Restore IM4M: First Pass on TLV <0x%08x>", v60, v61, v62, v63, v64, *v65);
      v68 = *v65;
      if (*v65 > -2001563359)
      {
        if (v68 == -2001563358)
        {
          if (v65[1] == 1 && **(v65 + 1))
          {
            v67 = 1;
          }
        }

        else if (v68 == -2001563355 && v65[1] == 4)
        {
          v130 = uarpHtonl(**(v65 + 1));
        }
      }

      else if (v68 == -2001563389)
      {
        v66 = CFStringCreateWithBytes(v58, *(v65 + 1), v65[1], 0x8000100u, 0);
      }

      else if (v68 == -2001563359 && v65[1] == 1)
      {
        v69 = v132;
        if (**(v65 + 1))
        {
          v69 = 1;
        }

        v132 = v69;
      }

      v65 = *(v65 + 2);
    }

    while (v65);
    v70 = v67;
    if (v132 != 1 && v67 != 1)
    {
      v71 = theDict;
      goto LABEL_55;
    }

    v71 = theDict;
    v72 = v130;
    if (!v130)
    {
      v73 = CoreUARPRestoreNextLUNForPrefix_lunDictRef;
      if (!CoreUARPRestoreNextLUNForPrefix_lunDictRef)
      {
        v73 = CFDictionaryCreateMutable(v58, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        CoreUARPRestoreNextLUNForPrefix_lunDictRef = v73;
      }

      value[0] = 0;
      if (CFDictionaryGetValueIfPresent(v73, v66, value))
      {
        v74 = CFGetTypeID(value[0]);
        if (v74 == CFNumberGetTypeID() && CFNumberGetType(value[0]) == kCFNumberSInt32Type && (valuePtr = 0, CFNumberGetValue(value[0], kCFNumberSInt32Type, &valuePtr)))
        {
          ++valuePtr;
          v72 = CFNumberCreate(v58, kCFNumberSInt32Type, &valuePtr);
          if (v72)
          {
            CFDictionaryReplaceValue(CoreUARPRestoreNextLUNForPrefix_lunDictRef, v66, v72);
LABEL_51:
            v75 = v72;
            v72 = valuePtr;
            CFRelease(v75);
          }
        }

        else
        {
          v72 = 0;
        }
      }

      else
      {
        valuePtr = 1;
        v72 = CFNumberCreate(v58, kCFNumberSInt32Type, &valuePtr);
        if (v72)
        {
          CFDictionarySetValue(CoreUARPRestoreNextLUNForPrefix_lunDictRef, v66, v72);
          goto LABEL_51;
        }
      }
    }

    v76 = CFStringCreateWithFormat(v58, 0, @"%@%d", v66, v72, v114, v116);
    CFRelease(v66);
    if (v70 == 1)
    {
      v77 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"BoardID", v72);
      cf = CFStringCreateWithFormat(v58, 0, @"%@%d", @"ChipID", v72);
      v124 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"ECID", v72);
      v123 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"Nonce", v72);
      v122 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"ProductionMode", v72);
      v121 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"SecurityDomain", v72);
      v120 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"SecurityMode", v72);
      v119 = CFStringCreateWithFormat(v58, 0, @"%@%d", @"SocLiveNonce", v72);
LABEL_56:
      v78 = v128[5];
      v133 = *MEMORY[0x29EDB8F00];
      if (v78)
      {
        v129 = 0;
        v131 = *MEMORY[0x29EDB8EF8];
        v125 = v77;
        v118 = v76;
        while (1)
        {
          v79 = *v78;
          if (*v78 <= -2001563383)
          {
            if (v79 > -2001563386)
            {
              if (v79 == -2001563385 || v79 == -2001563384)
              {
                v101 = CFDataCreate(v58, *(v78 + 8), *(v78 + 4));
                v103 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v76, @"Nonce");
                goto LABEL_146;
              }

              if (v79 == -2001563383 && *(v78 + 4) == 4)
              {
                LODWORD(value[0]) = uarpHtonl(**(v78 + 8));
                v101 = CFNumberCreate(v58, kCFNumberSInt32Type, value);
                v102 = @"SecurityDomain";
LABEL_145:
                v103 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v76, v102);
                goto LABEL_146;
              }
            }

            else
            {
              if (v79 == -2001563388)
              {
                if (*(v78 + 4) != 4)
                {
                  goto LABEL_147;
                }

                LODWORD(value[0]) = uarpHtonl(**(v78 + 8));
                v80 = v58;
                v81 = kCFNumberSInt32Type;
LABEL_142:
                v101 = CFNumberCreate(v80, v81, value);
                v103 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v76, v77);
                goto LABEL_146;
              }

              if (v79 == -2001563387)
              {
                if (*(v78 + 4) != 4)
                {
                  goto LABEL_147;
                }

                LODWORD(value[0]) = uarpHtonl(**(v78 + 8));
                v101 = CFNumberCreate(v58, kCFNumberSInt32Type, value);
                v102 = cf;
                goto LABEL_145;
              }

              if (v79 == -2001563386 && *(v78 + 4) == 8)
              {
                value[0] = uarpHtonll(**(v78 + 8));
                v82 = CFNumberCreate(v58, kCFNumberSInt64Type, value);
LABEL_118:
                v101 = v82;
                v103 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v76, @"ECID");
LABEL_146:
                CFDictionaryAddValue(v71, v103, v101);
                CFRelease(v101);
              }
            }
          }

          else
          {
            if (v79 <= -2001563369)
            {
              if (v79 == -2001563382)
              {
                if (*(v78 + 4) != 4)
                {
                  goto LABEL_147;
                }

                if (uarpHtonl(**(v78 + 8)))
                {
                  v104 = v133;
                }

                else
                {
                  v104 = v131;
                }

                v105 = @"SecurityMode";
                goto LABEL_139;
              }

              if (v79 == -2001563381)
              {
                if (*(v78 + 4) != 4)
                {
                  goto LABEL_147;
                }

                if (uarpHtonl(**(v78 + 8)))
                {
                  v104 = v133;
                }

                else
                {
                  v104 = v131;
                }

                v105 = @"ProductionMode";
                goto LABEL_139;
              }

              if (v79 != -2001563376)
              {
                goto LABEL_147;
              }

              v83 = CFDictionaryCreateMutable(v58, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
              v84 = *(v78 + 4);
              if (!v84)
              {
                v77 = v125;
                goto LABEL_147;
              }

              v85 = v83;
              v86 = 0;
              v87 = *(v78 + 8);
              while (2)
              {
                v88 = uarpNtohl(*v87);
                v89 = uarpNtohl(v87[1]);
                v90 = v89;
                v91 = v87 + 2;
                if (v88 > -2001563372)
                {
                  switch(v88)
                  {
                    case -2001563371:
                      if (v89 != 2)
                      {
                        goto LABEL_107;
                      }

                      if (uarpHtons(*v91))
                      {
                        v92 = v133;
                      }

                      else
                      {
                        v92 = v131;
                      }

                      v93 = v85;
                      v94 = @"ESEC";
                      break;
                    case -2001563370:
                      if (v89 != 2)
                      {
                        goto LABEL_107;
                      }

                      if (uarpHtons(*v91))
                      {
                        v92 = v133;
                      }

                      else
                      {
                        v92 = v131;
                      }

                      v93 = v85;
                      v94 = @"EPRO";
                      break;
                    case -2001563369:
                      if (v89 == 2)
                      {
                        if (uarpHtons(*v91))
                        {
                          v92 = v133;
                        }

                        else
                        {
                          v92 = v131;
                        }

                        v93 = v85;
                        v94 = @"Trusted";
                        break;
                      }

LABEL_107:
                      v87 = (v91 + v90);
                      v99 = v84 - v90;
                      v84 = v84 - v90 - 8;
                      if (v99 == 8)
                      {
                        v77 = v125;
                        if (v86)
                        {
                          v113 = v86;
                          v76 = v118;
                          v100 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v118, v113);
                          v71 = theDict;
                          CFDictionaryAddValue(theDict, v100, v85);
                          CFRelease(v100);
                        }

                        else
                        {
                          v71 = theDict;
                          v76 = v118;
                        }

                        goto LABEL_147;
                      }

                      continue;
                    default:
LABEL_100:
                      if (v88 != -2001563360 || v89 != 4)
                      {
                        goto LABEL_107;
                      }

                      LODWORD(value[0]) = uarpHtonl(*v91);
                      v95 = CFNumberCreate(v58, kCFNumberSInt32Type, value);
                      v96 = v85;
                      v97 = @"DigestListSize";
                      goto LABEL_106;
                  }

                  CFDictionaryAddValue(v93, v94, v92);
                  goto LABEL_107;
                }

                break;
              }

              if (v88 == -2001563374)
              {
                v86 = CFStringCreateWithBytes(v58, v91, v89, 0x8000100u, 0);
                goto LABEL_107;
              }

              if (v88 != -2001563373)
              {
                goto LABEL_100;
              }

              v95 = CFDataCreate(v58, v91, v89);
              v96 = v85;
              v97 = @"Digest";
LABEL_106:
              CFDictionaryAddValue(v96, v97, v95);
              CFRelease(v95);
              goto LABEL_107;
            }

            if (v79 <= -2001563354)
            {
              if (v79 != -2001563368)
              {
                if (v79 != -2001563365 || *(v78 + 4) != 8)
                {
                  goto LABEL_147;
                }

                value[0] = uarpHtonll(**(v78 + 8));
                v80 = v58;
                v81 = kCFNumberSInt64Type;
                goto LABEL_142;
              }

              if (*(v78 + 4) != 1)
              {
                goto LABEL_147;
              }

              if (**(v78 + 8))
              {
                v104 = v133;
              }

              else
              {
                v104 = v131;
              }

              v105 = @"SocLiveNonce";
LABEL_139:
              v107 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v76, v105);
              CFDictionaryAddValue(v71, v107, v104);
              goto LABEL_147;
            }

            if (v79 != -2001563353)
            {
              if (v79 != -2001563339)
              {
                goto LABEL_147;
              }

              v82 = CFDataCreate(v58, *(v78 + 8), *(v78 + 4));
              goto LABEL_118;
            }

            if (*(v78 + 4) == 1)
            {
              v106 = v129;
              if (**(v78 + 8))
              {
                v106 = 1;
              }

              v129 = v106;
            }
          }

LABEL_147:
          v78 = *(v78 + 16);
          if (!v78)
          {
            goto LABEL_152;
          }
        }
      }

      LOBYTE(v129) = 0;
LABEL_152:
      v108 = CFStringCreateWithFormat(v58, 0, @"%@,%@", v76, @"Ticket");
      v128[7] = v108;
      v109 = CFStringCreateWithFormat(v58, 0, @"@%@", v108);
      CFDictionaryAddValue(v71, v109, v133);
      CFRelease(v109);
      CFRelease(v76);
      CFRelease(v77);
      CFRelease(cf);
      CFRelease(v124);
      CFRelease(v123);
      CFRelease(v122);
      CFRelease(v121);
      CFRelease(v120);
      CFRelease(v119);
      v128[6] = v71;
      v110 = a1[7];
      if (v110)
      {
        v110(a1[270], v5, *(v5[37] + 48), "https://gs.apple.com:443", v129);
      }

      return;
    }

    v66 = v76;
LABEL_55:
    v77 = CFStringCreateWithFormat(v58, 0, @"%@", @"BoardID", v111);
    cf = CFStringCreateWithFormat(v58, 0, @"%@", @"ChipID");
    v124 = CFStringCreateWithFormat(v58, 0, @"%@", @"ECID");
    v123 = CFStringCreateWithFormat(v58, 0, @"%@", @"Nonce");
    v122 = CFStringCreateWithFormat(v58, 0, @"%@", @"ProductionMode");
    v121 = CFStringCreateWithFormat(v58, 0, @"%@", @"SecurityDomain");
    v120 = CFStringCreateWithFormat(v58, 0, @"%@", @"SecurityMode");
    v119 = CFStringCreateWithFormat(v58, 0, @"%@", @"SocLiveNonce");
    v76 = v66;
    goto LABEL_56;
  }

  v18 = 0;
  while (1)
  {
    v19 = *(a3 + 296) + 352 * v18;
    v20 = v5[37];
    *v19 = v18;
    if (uarpAssetQueryPayloadInfo((a1 + 91), *a3, v18, v19 + 4))
    {
      break;
    }

    v26 = v20 + 352 * v18;
    CoreUARPRestoreLogInfo(a1, 3, "Payload Index %u", v21, v22, v23, v24, v25, v18);
    v115 = *(v19 + 6);
    v117 = *(v19 + 7);
    v112 = *(v19 + 5);
    CoreUARPRestoreLogInfo(a1, 3, "- Tag is %c%c%c%c", v27, v28, v29, v30, v31, *(v19 + 4));
    v114 = *(v19 + 16);
    v116 = *(v19 + 20);
    v111 = *(v19 + 12);
    CoreUARPRestoreLogInfo(a1, 3, "- Version is %u.%u.%u.%u", v32, v33, v34, v35, v36, *(v19 + 8));
    CoreUARPRestoreLogInfo(a1, 3, "- Data length is %u", v37, v38, v39, v40, v41, *(v19 + 28));
    CoreUARPRestoreLogInfo(a1, 3, "- MetaData length is %u", v42, v43, v44, v45, v46, *(v19 + 24));
    *(v26 + 4) = *(v19 + 4);
    *(v26 + 8) = *(v19 + 8);
    *(v19 + 80) = calloc(*(v19 + 28), 1uLL);
    PayloadMetaData = uarpAssetQueryPayloadMetaData((a1 + 91), *a3, v18);
    *(v19 + 40) = PayloadMetaData;
    if (PayloadMetaData)
    {
      v53 = PayloadMetaData;
      do
      {
        CoreUARPRestoreLogInfo(a1, 3, "Payload Metadata <0x%08x>", v48, v49, v50, v51, v52, *v53);
        v54 = calloc(1uLL, 0x18uLL);
        *v54 = *v53;
        v55 = *(v53 + 4);
        v54[1] = v55;
        v56 = calloc(v55, 1uLL);
        *(v54 + 1) = v56;
        memcpy(v56, *(v53 + 8), v54[1]);
        *(v54 + 2) = *(v26 + 40);
        *(v26 + 40) = v54;
        v53 = *(v53 + 16);
      }

      while (v53);
    }

    if (++v18 >= *(a3 + 288))
    {
      goto LABEL_16;
    }
  }
}

uint64_t CoreUARPRestoreEndpointPropertyHardwareSpecific(uint64_t result, void *a2, _DWORD *a3)
{
  *a2 = *(result + 2408);
  *a3 = *(result + 2416);
  return result;
}

uint64_t CoreUARPRestoreEndpointPropertyNonce(uint64_t result, void *a2, _DWORD *a3)
{
  *a2 = *(result + 2424);
  *a3 = *(result + 2432);
  return result;
}

uint64_t CoreUARPRestoreEndpointPropertyECIDData(uint64_t result, void *a2, _DWORD *a3)
{
  *a2 = *(result + 2336);
  *a3 = *(result + 2344);
  return result;
}

void *UarpRestoreInitializeEndpoint2(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char *label)
{
  if (!label)
  {
    return 0;
  }

  v9 = dispatch_queue_create(label, 0);

  return UarpRestoreInitializeCommon(a1, a2, a3, a4, v9);
}

void *UarpRestoreInitializeCommon(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v39[0] = UarpRestoreEndpointMsgRecv;
  v39[1] = UarpRestoreEndpointDataRecv;
  v10 = calloc(1uLL, 0x128uLL);
  if (v10)
  {
    v11 = calloc(0xAuLL, 8uLL);
    v12 = 0;
    v10[36] = v11;
    do
    {
      v13 = uarpLoggingCategoryToString(v12);
      v11[v12++] = os_log_create("com.apple.uarp.layer3.restore", v13);
    }

    while (v12 != 9);
    v10[7] = a1;
    *v10 = a5;
    v10[1] = a2;
    v14 = *(a3 + 16);
    *(v10 + 4) = *a3;
    *(v10 + 5) = v14;
    v15 = *(a3 + 32);
    v16 = *(a3 + 48);
    v17 = *(a3 + 80);
    *(v10 + 8) = *(a3 + 64);
    *(v10 + 9) = v17;
    *(v10 + 6) = v15;
    *(v10 + 7) = v16;
    v18 = *(a3 + 96);
    v19 = *(a3 + 112);
    v20 = *(a3 + 128);
    v10[26] = *(a3 + 144);
    *(v10 + 11) = v19;
    *(v10 + 12) = v20;
    *(v10 + 10) = v18;
    v21 = (v10[8])(a2, v10, v39, v10 + 3);
    v10[6] = v21;
    if (!v21)
    {
      goto LABEL_6;
    }

    *&v24 = UarpRestoreLayer3MsgSend;
    *(&v24 + 1) = UarpRestoreLayer3FirmwareStageProgress;
    v25 = UarpRestoreLayer3FirmwareStageStatus;
    v26 = UarpRestoreLayer3ApplyStatus;
    v27 = UarpRestoreLayer3AssetSolicitationProgress;
    v28 = UarpRestoreLayer3AssetSolicitationStatus;
    v29 = UarpRestoreLayer3AssetsRescinded;
    v30 = UarpRestoreLayer3TssRequest;
    v31 = UarpRestoreLayer3TssResponse;
    v32 = UarpRestoreLayer3UarpPropertyUpdate;
    v33 = UarpRestoreLayer3ApplePropertyUpdate;
    v34 = UarpRestoreLayer3PersonalizedFirmware;
    v35 = UarpRestoreLayer3LogError;
    v36 = UarpRestoreLayer3LogInfo;
    v37 = UarpRestoreLayer3LogDebug;
    v38 = UarpRestoreLayer3LogFault;
    CoreUARPRestoreEndpointInitialize(v10 + 5, &v24, a4, *v10, v10);
    if (!v22)
    {
      dispatch_async_f(*v10, v10, UarpRestoreRemoteEndpointAddHandler);
    }

    else
    {
LABEL_6:
      free(v10);
      return 0;
    }
  }

  return v10;
}

void *UarpRestoreInitializeEndpoint3(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if (a5)
  {
    return UarpRestoreInitializeCommon(a1, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

void UarpRestoreFinalizeEndpoint(uint64_t *a1)
{
  v2 = CoreUARPRestoreEndpointRemoteEndpointRemove(a1[5]);
  if (v2)
  {
    UarpRestoreLayer3LogErrorInternal(a1, v3, "UARP Restore: Failed to remove endpoint, status 0x%08x", v4, v5, v6, v7, v8, v2);
  }

  CoreUARPRestoreEndpointFinalize(a1[5]);
  v9 = a1[34];
  if (v9)
  {
    free(v9);
    a1[34] = 0;
    a1[35] = 0;
  }

  v10 = a1[36];
  if (v10)
  {
    free(v10);
  }

  free(a1);
}

uint64_t UarpRestoreStageFirmwareFilename(uint64_t a1, char *__s1)
{
  result = 30;
  if (a1)
  {
    if (__s1)
    {
      *(a1 + 224) = strdup(__s1);
      dispatch_async_f(*a1, a1, UarpRestoreStageFirmwareFilenameQueueHandler);
      return 0;
    }
  }

  return result;
}

void UarpRestoreStageFirmwareFilenameQueueHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 40);
    *(v9 + 2168) = 1;
    v10 = CoreUARPRestoreEndpointOfferSuperBinary(v9, *(a1 + 224));
    if (v10)
    {
      UarpRestoreLayer3LogErrorInternal(a1, v11, "UARP Restore: Failed to offer superbinary, status 0x%08x", v12, v13, v14, v15, v16, v10);

      UarpRestoreLayer3FirmwareStageStatus(a1, 5, 2560, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreStageFirmwareFilenameQueueHandler");
  }
}

uint64_t UarpRestoreStageFirmwareDataBuffer(uint64_t a1, const void *a2, size_t __count, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a1 + 272))
    {
      UarpRestoreLayer3LogErrorInternal(a1, a2, "UARP Restore: Offered Firmware with outstanding offer", a4, a5, a6, a7, a8, v13);
      return 54;
    }

    else
    {
      v12 = calloc(__count, 1uLL);
      *(a1 + 272) = v12;
      *(a1 + 280) = __count;
      memcpy(v12, a2, __count);
      dispatch_async_f(*a1, a1, UarpRestoreStageFirmwareDataBufferQueueHandler);
      return 0;
    }
  }

  return result;
}

void UarpRestoreStageFirmwareDataBufferQueueHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 272);
    if (v9)
    {
      v10 = *(a1 + 40);
      *(v10 + 2168) = 0;
      v11 = CoreUARPRestoreEndpointOfferSuperBinaryBuffer(v10, v9, *(a1 + 280));
      if (v11)
      {
        UarpRestoreLayer3LogErrorInternal(a1, v12, "UARP Restore: Failed to offer superbinary, status 0x%08x", v13, v14, v15, v16, v17, v11);

        UarpRestoreLayer3FirmwareStageStatus(a1, 5, 2560, v18, v19, v20, v21, v22);
      }
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(a1, 0, "%s: NULL pBuffer", a4, a5, a6, a7, a8, "UarpRestoreStageFirmwareDataBufferQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreStageFirmwareDataBufferQueueHandler");
  }
}

void UarpRestoreApplyStagedAssetsHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 40);

    CoreUARPRestoreEndpointRemoteEndpointApplyStagedAssets(v9);
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(a1, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreApplyStagedAssetsHandler");
  }
}

uint64_t UarpRestoreAssetSolicitation(uint64_t a1, _DWORD *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    *(a1 + 256) = *a2;
    *(a1 + 264) = calloc(1uLL, 8uLL);
    *(a1 + 264) = strdup(a3);
    dispatch_async_f(*a1, a1, UarpRestoreAssetSolicitationHandler);
    return 0;
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreAssetSolicitation");
    return 30;
  }
}

void UarpRestoreAssetSolicitationHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *(a1 + 264);
    v10 = (a1 + 256);
    v11 = *(a1 + 40);

    CoreUARPRestoreEndpointRemoteEndpointAssetSolicitation(v11, v10, v9);
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(a1, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreAssetSolicitationHandler");
  }
}

uint64_t UarpRestoreInfoQueries(dispatch_queue_t *a1, const void *a2, int a3, const void *a4, int a5)
{
  if (!a1)
  {
    return 30;
  }

  if (a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 <= 0;
  }

  v9 = !v8;
  result = 30;
  if ((a3 & 0x80000000) == 0 && (v9 & 1) == 0)
  {
    v13 = a4 || a5 <= 0;
    v14 = !v13;
    if ((a5 & 0x80000000) == 0 && !v14)
    {
      v15 = calloc(1uLL, 0x28uLL);
      *v15 = a1;
      v15[2] = a3;
      if (a3 >= 1)
      {
        v16 = calloc(a3, 4uLL);
        *(v15 + 2) = v16;
        memcpy(v16, a2, 4 * v15[2]);
      }

      v15[6] = a5;
      if (a5 >= 1)
      {
        v17 = calloc(a5, 4uLL);
        *(v15 + 4) = v17;
        memcpy(v17, a4, 4 * v15[6]);
      }

      dispatch_async_f(*a1, v15, UarpRestoreInfoQueriesQueueHandler);
      return 0;
    }
  }

  return result;
}

void UarpRestoreInfoQueriesQueueHandler(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 + 40);
      v10 = a1[2];
      *(v9 + 2172) = v10;
      *(v9 + 2176) = *(a1 + 2);
      v11 = a1[6];
      *(v9 + 2184) = v11;
      *(v9 + 2192) = *(a1 + 4);
      *(v8 + 216) = v11 + v10;
      free(a1);
      if (*(v9 + 2170))
      {

        CoreUARPRestoreQueryOutstandingInfoProperties(v9, v12, v13, v14, v15, v16, v17, v18);
      }

      else
      {
        CoreUARPRestoreLogError(v9, 1, "UARP Restore: %s: Protocol Version Not Selected; defer info queries", v14, v15, v16, v17, v18, "UarpRestoreInfoQueriesQueueHandler");
      }
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreInfoQueriesQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreInfoQueriesQueueHandler");
  }
}

uint64_t UarpRestoreInfoPropertyManufacturerName(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyManufacturerName(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyModelName(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyModelName(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertySerialNumber(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertySerialNumber(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyHardwareVersion(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyHadwareVersion(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyFirmwareVersion(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyActiveFirmwareVersion(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyStagedFirmwareVersion(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyStagedFirmwareVersion(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyFriendlyName(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyFriendlyName(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyAppleModelNumber(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyAppleModelNumber(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyHardwareFusing(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyHardwareFusing(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyManifestPrefix(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyManifestPrefix(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyBoardID(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyBoardID(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyBoardID64(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyBoardID64(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyChipID(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyChipID(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyChipRevision(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyChipRevision(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyECID(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyECID(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertySecurityDomain(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertySecurityDomain(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertySecurityMode(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertySecurityMode(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyProductionMode(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyProductionMode(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyChipEpoch(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyChipEpoch(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyEnableMixMatch(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyEnableMixMatch(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyLiveNonce(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyLiveNonce(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyPrefixNeedsLUN(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyPrefixNeedsLUN(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertySuffixNeedsLUN(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertySuffixNeedsLUN(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyLogicalUnitNumber(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyLogicalUnitNumber(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyTicketLongName(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyTicketLongName(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyRequiresPersonalization(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyRequiresPersonalization(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyApBoardID(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyApBoardID(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyApChipID(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyApChipID(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyApProductionMode(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyApProductionMode(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyApSecurityMode(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyApSecurityMode(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyHardwareSpecific(uint64_t result, void *a2, _DWORD *a3)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyHardwareSpecific(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyNonce(uint64_t result, void *a2, _DWORD *a3)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyNonce(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyLife(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyLife(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyProvisioning(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyProvisioning(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyManifestEpoch(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyManifestEpoch(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyManifestSuffix(uint64_t result)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyManifestSuffix(*(result + 40));
  }

  return result;
}

uint64_t UarpRestoreInfoPropertyEcidData(uint64_t result, void *a2, _DWORD *a3)
{
  if (result)
  {
    return CoreUARPRestoreEndpointPropertyECIDData(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t UarpRestoreEndpointMsgRecv(dispatch_queue_t *a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v7 = calloc(1uLL, 0x18uLL);
  *v7 = a1;
  v8 = calloc(a4, 1uLL);
  v7[1] = v8;
  *(v7 + 4) = a4;
  memcpy(v8, a3, a4);
  dispatch_async_f(*a1, v7, UarpRestoreEndpointMsgRecvQueueHandler);
  return 0;
}

uint64_t UarpRestoreEndpointDataRecv(dispatch_queue_t *a1, uint64_t a2, const void *a3, unsigned int a4)
{
  v7 = calloc(1uLL, 0x18uLL);
  *v7 = a1;
  v8 = calloc(a4, 1uLL);
  v7[1] = v8;
  *(v7 + 4) = a4;
  memcpy(v8, a3, a4);
  dispatch_async_f(*a1, v7, UarpRestoreEndpointDataRecvQueueHandler);
  return 0;
}

uint64_t UarpRestoreLayer3MsgSend(dispatch_queue_t *a1, const void *a2, unsigned int a3)
{
  v6 = calloc(1uLL, 0x18uLL);
  *v6 = a1;
  v7 = calloc(a3, 1uLL);
  v6[1] = v7;
  memcpy(v7, a2, a3);
  *(v6 + 4) = a3;
  dispatch_async_f(*a1, v6, UarpRestoreLayer3MsgSendQueueHandler);
  return 0;
}

uint64_t UarpRestoreLayer3FirmwareStageProgress(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    return v1();
  }

  return result;
}

void UarpRestoreLayer3FirmwareStageStatus(NSObject **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[14])
  {
    v9 = a2;
    UarpRestoreLayer3LogInfoInternal(a1, a2, "UARP Restore Layer 3: Stage Status; status <0x%04x>, reason <0x%04x>", a4, a5, a6, a7, a8, a2);
    v11 = calloc(1uLL, 0x10uLL);
    *v11 = a1;
    v11[2] = v9;
    v11[3] = a3;
    v12 = *a1;

    dispatch_async_f(v12, v11, UarpRestoreLayer3FirmwareStageStatusQueueHandler);
  }
}

void UarpRestoreLayer3ApplyStatus(NSObject **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[15])
  {
    v9 = a2;
    UarpRestoreLayer3LogInfoInternal(a1, a2, "UARP Restore Layer 3: Apply Staged Assets; status <0x%04x>, flags <0x%04x>", a4, a5, a6, a7, a8, a2);
    v11 = calloc(1uLL, 0x10uLL);
    *v11 = a1;
    v11[2] = v9;
    v11[3] = a3;
    v12 = *a1;

    dispatch_async_f(v12, v11, UarpRestoreLayer3FirmwareApplyStatusQueueHandler);
  }
}

uint64_t UarpRestoreLayer3AssetSolicitationProgress(uint64_t result)
{
  v1 = *(result + 128);
  if (v1)
  {
    return v1();
  }

  return result;
}

void UarpRestoreLayer3AssetSolicitationStatus(NSObject **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[17])
  {
    v9 = a2;
    UarpRestoreLayer3LogInfoInternal(a1, a2, "UARP Restore Layer 3: Solicit Status; status <0x%04x>, reason <0x%04x>", a4, a5, a6, a7, a8, a2);
    v11 = calloc(1uLL, 0x10uLL);
    *v11 = a1;
    v11[2] = v9;
    v11[3] = a3;
    v12 = *a1;

    dispatch_async_f(v12, v11, UarpRestoreLayer3AssetSolicitationStatusQueueHandler);
  }
}

void UarpRestoreLayer3TssRequest(NSObject **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = calloc(1uLL, 0x20uLL);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a4;
  *(v9 + 24) = a5;
  v10 = *a1;

  dispatch_async_f(v10, v9, UarpRestoreLayer3TssRequestQueueHandler);
}

void UarpRestoreLayer3TssResponse(uint64_t a1, const void *a2, size_t a3)
{
  v4 = *(a1 + 232);
  if (v4)
  {
    v7 = fopen(v4, "w+");
    if (v7)
    {
      v14 = v7;
      if (fwrite(a2, 1uLL, a3, v7) != a3)
      {
        UarpRestoreLayer3LogErrorInternal(a1, v15, "UARP Restore: Mismatch in writing to manifest file %s.Expected to write %d bytes, actually wrote %d bytes", v16, v17, v18, v19, v20, *(a1 + 232));
      }

      fclose(v14);
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(a1, v8, "UARP Restore: Could not open manifest file %s", v9, v10, v11, v12, v13, *(a1 + 232));
    }
  }
}

void UarpRestoreLayer3UarpPropertyUpdate(NSObject **a1, int a2)
{
  v4 = calloc(1uLL, 0x10uLL);
  *v4 = a1;
  v4[2] = a2;
  v5 = *a1;

  dispatch_async_f(v5, v4, UarpRestoreLayer3UarpPropertyUpdateQueueHandler);
}

void UarpRestoreLayer3ApplePropertyUpdate(NSObject **a1, int a2)
{
  v4 = calloc(1uLL, 0x10uLL);
  *v4 = a1;
  v4[2] = a2;
  v5 = *a1;

  dispatch_async_f(v5, v4, UarpRestoreLayer3ApplePropertyUpdateQueueHandler);
}

void UarpRestoreLayer3PersonalizedFirmware(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a2)
    {
      v8 = *(a1 + 248);
      if (v8)
      {
        v9 = fopen(v8, "w+");
        if (!v9)
        {
          UarpRestoreLayer3LogErrorInternal(a1, v10, "UARP Restore: Could not open personalized firmware file %s", v11, v12, v13, v14, v15, *(a1 + 248));
          return;
        }

        v16 = v9;
        if (fwrite(a2, 1uLL, a3, v9) != a3)
        {
          UarpRestoreLayer3LogErrorInternal(a1, v17, "UARP Restore: Mismatch in writing to personalized firmware file %s.Expected to write %d bytes, actually wrote %d bytes", v18, v19, v20, v21, v22, *(a1 + 248));
        }

        fflush(v16);
        fclose(v16);
      }
    }
  }

  v23 = *(a1 + 176);
  if (v23)
  {

    v23(a1, a2, a3, a4);
  }
}

void UarpRestoreLayer3LogError(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && (v4 = *(a1 + 184)) != 0)
  {

    v4();
  }

  else
  {
    v5 = UarpRestoreLayer3LogTokenForCategory(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      UarpRestoreLayer3LogError_cold_1(a3, v5);
    }
  }
}

void UarpRestoreLayer3LogInfo(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1 && (v4 = *(a1 + 192)) != 0)
  {
    v5 = *MEMORY[0x29EDCA608];

    v4();
  }

  else
  {
    v6 = UarpRestoreLayer3LogTokenForCategory(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = a3;
      _os_log_impl(&dword_299E58000, v6, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
    }

    v7 = *MEMORY[0x29EDCA608];
  }
}

void UarpRestoreLayer3LogDebug(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && (v4 = *(a1 + 200)) != 0)
  {

    v4();
  }

  else
  {
    v5 = UarpRestoreLayer3LogTokenForCategory(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      UarpRestoreLayer3LogDebug_cold_1(a3, v5);
    }
  }
}

void UarpRestoreLayer3LogFault(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1 && (v4 = *(a1 + 208)) != 0)
  {

    v4();
  }

  else
  {
    v5 = UarpRestoreLayer3LogTokenForCategory(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      UarpRestoreLayer3LogFault_cold_1(a3, v5);
    }
  }
}

void UarpRestoreRemoteEndpointAddHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (CoreUARPRestoreEndpointRemoteEndpointAdd(*(a1 + 40)))
    {
      UarpRestoreLayer3LogErrorInternal(0, v8, "%s: ERROR adding remote endpoint, status = 0x%08x", v9, v10, v11, v12, v13, "UarpRestoreRemoteEndpointAddHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreRemoteEndpointAddHandler");
  }
}

void UarpRestoreEndpointMsgRecvQueueHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      v10 = *(a1 + 1);
      if (v10)
      {
        CoreUARPRestoreEndpointMsgRecv(*(v9 + 40), v10, *(a1 + 4));
        free(*(a1 + 1));

        free(a1);
      }

      else
      {
        UarpRestoreLayer3LogErrorInternal(v9, 0, "%s: NULL pBuffer", a4, a5, a6, a7, a8, "UarpRestoreEndpointMsgRecvQueueHandler");
      }
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreEndpointMsgRecvQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreEndpointMsgRecvQueueHandler");
  }
}

void UarpRestoreEndpointDataRecvQueueHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      v10 = *(a1 + 1);
      if (v10)
      {
        CoreUARPRestoreEndpointDataRecv(*(v9 + 40), v10, *(a1 + 4));
        free(*(a1 + 1));

        free(a1);
      }

      else
      {
        UarpRestoreLayer3LogErrorInternal(v9, 0, "%s: NULL pBuffer", a4, a5, a6, a7, a8, "UarpRestoreEndpointDataRecvQueueHandler");
      }
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreEndpointDataRecvQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreEndpointDataRecvQueueHandler");
  }
}

void UarpRestoreLayer3MsgSendQueueHandler(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = *(a1 + 1);
      if (v10)
      {
        v11 = (*(v9 + 24))(*a1, *(v9 + 48), v10, a1[4]);
        if (v11)
        {
          v12 = v11;
          uarpStatusCodeToString(v11);
          UarpRestoreLayer3LogErrorInternal(v9, v13, "UARP Restore: Failed to tx uarp message to uarp silicon updater;status <0x%08x>, %s", v14, v15, v16, v17, v18, v12);
        }

        free(*(a1 + 1));

        free(a1);
      }

      else
      {
        UarpRestoreLayer3LogErrorInternal(v9, a2, "%s: NULL pBuffer", a4, a5, a6, a7, a8, "UarpRestoreLayer3MsgSendQueueHandler");
      }
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreLayer3MsgSendQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3MsgSendQueueHandler");
  }
}

void UarpRestoreLayer3FirmwareStageStatusQueueHandler(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      (*(v9 + 112))(v9, a1[2], a1[3]);

      free(a1);
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreLayer3FirmwareStageStatusQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3FirmwareStageStatusQueueHandler");
  }
}

void UarpRestoreLayer3FirmwareApplyStatusQueueHandler(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      (*(v9 + 120))(v9, a1[2], a1[3]);

      free(a1);
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreLayer3FirmwareApplyStatusQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3FirmwareApplyStatusQueueHandler");
  }
}

void UarpRestoreLayer3AssetSolicitationStatusQueueHandler(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (v9)
    {
      (*(v9 + 136))(v9, a1[2], a1[3]);

      free(a1);
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreLayer3AssetSolicitationStatusQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3AssetSolicitationStatusQueueHandler");
  }
}

void UarpRestoreLayer3TssRequestQueueHandler(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3TssRequestQueueHandler");
    return;
  }

  v9 = *a1;
  if (!*a1)
  {
    v15 = "%s: NULL pUarpCtx";
LABEL_14:
    UarpRestoreLayer3LogErrorInternal(0, a2, v15, a4, a5, a6, a7, a8, "UarpRestoreLayer3TssRequestQueueHandler");
    return;
  }

  v10 = a1[1];
  if (!v10)
  {
    v15 = "%s: NULL pIM4M";
    goto LABEL_14;
  }

  v11 = *(v10 + 296);
  if (!v11)
  {
    v15 = "%s: NULL pIM4M->payloads";
    goto LABEL_14;
  }

  v12 = *(v11 + 48);
  if (!v12)
  {
    v15 = "%s: NULL tssOptions";
    goto LABEL_14;
  }

  v13 = *(a1 + 24);
  v14 = a1[2];
  UarpRestoreLayer3LogInfoInternal(v9, a2, "UARP Restore: Tatsu Server set to %s", a4, a5, a6, a7, a8, v14);
  (*(v9 + 144))(v9, v10, v12, v14, v13);

  free(a1);
}

void UarpRestoreLayer3UarpPropertyUpdateQueueHandler(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = *(v9 + 216) - 1;
      *(v9 + 216) = v10;
      v11 = *(v9 + 152);
      if (v11)
      {
        v11(v9, a1[2]);
        v10 = *(v9 + 216);
      }

      if (!v10)
      {
        v12 = *(v9 + 168);
        if (v12)
        {
          v12(v9);
        }
      }

      free(a1);
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreLayer3UarpPropertyUpdateQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3UarpPropertyUpdateQueueHandler");
  }
}

void UarpRestoreLayer3ApplePropertyUpdateQueueHandler(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = *(v9 + 216) - 1;
      *(v9 + 216) = v10;
      v11 = *(v9 + 160);
      if (v11)
      {
        v11(v9, a1[2]);
        v10 = *(v9 + 216);
      }

      if (!v10)
      {
        v12 = *(v9 + 168);
        if (v12)
        {
          v12(v9);
        }
      }

      free(a1);
    }

    else
    {
      UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pUarpCtx", a4, a5, a6, a7, a8, "UarpRestoreLayer3ApplePropertyUpdateQueueHandler");
    }
  }

  else
  {
    UarpRestoreLayer3LogErrorInternal(0, a2, "%s: NULL pBlock", a4, a5, a6, a7, a8, "UarpRestoreLayer3ApplePropertyUpdateQueueHandler");
  }
}

os_log_t UarpRestoreLayer3LogTokenForCategory(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return MEMORY[0x29EDCA988];
  }

  if (a1)
  {
    v4 = *(a1 + 288);
    if (v4)
    {
      return *(v4 + 8 * a2);
    }
  }

  v5 = uarpLoggingCategoryToString(a2);

  return os_log_create("com.apple.uarp.layer3.restore", v5);
}

double CoreUARPRestoreSetAssetCallbacks(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *a1 = fAssetReady_0;
  *(a1 + 8) = fAssetMetaDataTLV_0;
  *(a1 + 16) = fAssetMetaDataComplete_0;
  *(a1 + 24) = fAssetMetaDataProcessingError;
  *(a1 + 32) = fPayloadReady_0;
  *(a1 + 40) = fPayloadMetaDataTLV_0;
  *(a1 + 48) = fPayloadMetaDataComplete_0;
  *(a1 + 56) = fPayloadMetaDataProcessingError;
  *(a1 + 64) = fPayloadData_0;
  *(a1 + 72) = fPayloadDataComplete_0;
  *(a1 + 80) = fPayloadDataComplete2;
  *(a1 + 88) = fAssetGetBytesAtOffset2_0;
  *(a1 + 96) = fAssetSetBytesAtOffset2_0;
  *(a1 + 104) = fAssetRescinded;
  *(a1 + 112) = fAssetRescindedAck;
  *(a1 + 120) = fAssetCorrupt;
  *(a1 + 128) = fAssetOrphaned;
  *(a1 + 136) = fAssetReleased2;
  *(a1 + 144) = fAssetProcessingNotification2_0;
  *(a1 + 152) = fAssetProcessingNotificationAck_0;
  *(a1 + 160) = fAssetPreProcessingNotification;
  *(a1 + 168) = fAssetPreProcessingNotificationAck;
  *(a1 + 176) = fAssetAllHeadersAndMetaDataComplete;
  return result;
}

uint64_t fAssetGetBytesAtOffset2_0(void *a1, int a2, uint64_t a3, void *__dst, unsigned int a5, uint64_t a6, _WORD *a7)
{
  v13 = *(a3 + 16);
  if (v13)
  {
    fseek(v13, a6, 0);
    v18 = fread(__dst, 1uLL, a5, *(a3 + 16));
    if (v18 < a5)
    {
      v19 = *(a3 + 16);
      v20 = ferror(v19);
      if (v20)
      {
        CoreUARPRestoreLogError(a1, 1, "UARP Restore: Read error %d, Read %zu bytes", v21, v22, v23, v24, v25, v20);
        return 54;
      }

      v28 = feof(v19);
      CoreUARPRestoreLogError(a1, 1, "UARP Restore: EOF %d, Read %zu bytes", v29, v30, v31, v32, v33, v28);
      if (!v28)
      {
        return 54;
      }
    }
  }

  else
  {
    v27 = *(a3 + 308);
    if (v27 < a6)
    {
      return 65;
    }

    if (a5 + a6 <= v27)
    {
      v18 = a5;
    }

    else
    {
      v18 = (v27 - a6);
    }

    memcpy(__dst, (*(a3 + 280) + a6), v18);
  }

  *a7 = v18;
  v34 = *(a3 + 308);
  if (v34)
  {
    CoreUARPRestoreAssetTransferProgress(a1, a3, a6, v34, v14, v15, v16, v17);
  }

  return 0;
}

double CoreUARPRestoreSetAssetPersonalizedFirmwareCallbacks(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = fPersonalizedFirmwareAssetReady;
  *(a1 + 64) = fPersonalizedFirmwarePayloadData;
  *(a1 + 80) = fPersonalizedFirmwarePayloadDataComplete;
  *(a1 + 120) = fPersonalizedFirmwareAssetCorrupt;
  *(a1 + 128) = fPersonalizedFirmwareAssetOrphaned;
  *(a1 + 136) = fPersonalizedFirmwareAssetReleased2;
  *(a1 + 144) = fPersonalizedFirmwareAssetProcessingNotification2;
  *(a1 + 152) = fPersonalizedFirmwareAssetProcessingNotificationAck;
  *(a1 + 160) = fPersonalizedFirmwareAssetPreProcessingNotification;
  *(a1 + 168) = fPersonalizedFirmwareAssetPreProcessingNotificationAck;
  *(a1 + 176) = fPersonalizedFirmwareAssetAllHeadersAndMetaDataComplete;
  return result;
}

uint64_t fPersonalizedFirmwareAssetReady(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    if (a2)
    {
      return uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(result + 728, *a2);
    }
  }

  return result;
}

void *fPersonalizedFirmwarePayloadData(void *result, uint64_t a2, void *__src, size_t __n, unsigned int a5)
{
  if (result)
  {
    if (a2)
    {
      return memcpy((*(*(a2 + 296) + 352 * *(a2 + 304) + 80) + a5), __src, __n);
    }
  }

  return result;
}

uint64_t fPersonalizedFirmwarePayloadDataComplete(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    if (a2)
    {
      return uarpPlatformEndpointAssetFullyStaged(result + 728, *a2);
    }
  }

  return result;
}

uint64_t fPersonalizedFirmwareAssetProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 30;
  if (a1 && a3)
  {
    CoreUARPRestoreAssetPersonalizedFirmware(a1, *(*(a3 + 296) + 80), *(*(a3 + 296) + 28), a4, a5, a6, a7, a8);
    return 0;
  }

  return v8;
}

void fPersonalizedFirmwareAssetAllHeadersAndMetaDataComplete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && !uarpPlatformEndpointAssetQueryNumberOfPayloads(a1 + 728, *a3, (a3 + 288)))
  {
    *(a3 + 296) = calloc(*(a3 + 288), 0x160uLL);
    if (*(a3 + 288))
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v7 = *(a3 + 296) + v5;
        *v7 = v6;
        if (uarpAssetQueryPayloadInfo(a1 + 728, *a3, v6, v7 + 4))
        {
          break;
        }

        *(v7 + 80) = calloc(*(v7 + 28), 1uLL);
        ++v6;
        v5 += 352;
        if (v6 >= *(a3 + 288))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v8 = uarpPlatformEndpointAssetSetPayloadIndex((a1 + 728), *a3, 0);
      if (v8)
      {
        CoreUARPRestoreLogError(a1, 1, "Failed to set FIRM payload index; %u", v9, v10, v11, v12, v13, v8);
      }
    }
  }
}

uint64_t SoCUpdaterShouldSkipSameVersion(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"Options"];
  v2 = [v1 objectForKeyedSubscript:@"RestoreInternal"];
  v3 = [v2 BOOLValue];
  v4 = [v1 objectForKeyedSubscript:@"SkipSameVersion"];
  v5 = [v4 BOOLValue];
  if ((v5 & 1) != 0 || !v3)
  {
    if (v4)
    {
      v7 = v3;
    }

    else
    {
      v7 = 1;
    }

    v6 = v7 | v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t SoCUpdaterRunningInTetheredMode(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"Options"];
  v2 = [v1 objectForKeyedSubscript:@"PreflightRequired"];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

uint64_t SoCUpdaterDeferredCommitEnabled(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"Options"];
  v2 = [v1 objectForKeyedSubscript:@"DeferredCommit"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t SoCUpdaterGetMode(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"Options"];
  v3 = [v2 objectForKeyedSubscript:@"PreflightContext"];
  v4 = SoCUpdaterDeferredCommitEnabled(v1);

  if ([v3 isEqual:@"Limited"])
  {
    v5 = [v2 objectForKeyedSubscript:@"PreflightTickets"];
    v6 = (v5 != 0) | v4;

    if (v6)
    {
      if (os_variant_is_recovery())
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else if ([v3 isEqual:@"BootedOS"])
  {
    v8 = [v2 objectForKeyedSubscript:@"PreflightTickets"];

    if (v8)
    {
      v7 = 3;
    }

    else
    {
      v9 = [v2 objectForKeyedSubscript:@"PreflightRequired"];
      if ([v9 BOOLValue])
      {
        v7 = 2;
      }

      else
      {
        v7 = 3;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

const char *StringForSoCRestoreUpdateMode(unsigned int a1)
{
  if (a1 > 8)
  {
    return "Unrecognized";
  }

  else
  {
    return off_29F28FAB0[a1];
  }
}

void UARPSoCUpdaterLayer4UARPPropertyUpdate(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) log];
  [v3 log:{@"%s (%d)", "UARPSoCUpdaterLayer4UARPPropertyUpdate", a2}];
}

void UARPSoCUpdaterLayer4ApplePropertyUpdate(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 56);
  v4 = [v5 log];
  [v4 log:{@"%s (%d)", "UARPSoCUpdaterLayer4ApplePropertyUpdate", a2}];

  [v5 updateAppleProperty:a2 siliconCtx:a1];
}

void UARPSoCUpdaterLayer4PropertiesComplete(uint64_t a1)
{
  v2 = *(a1 + 56);
  v1 = [v2 log];
  [v1 log:{@"%s", "UARPSoCUpdaterLayer4PropertiesComplete"}];

  [v2 initUARPComplete];
}

void UARPSoCUpdaterStagingComplete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  [v6 setStagingStatus:a2];
  [v6 setStagingStatusReason:a3];
  v5 = [v6 log];
  [v5 log:{@"%s", "UARPSoCUpdaterStagingComplete"}];

  [v6 stagingCompleteWithStatus:a2 reason:a3];
}

void UARPSoCUpdaterApplyComplete(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  [v5 setApplyFlags:a3];
  v4 = [v5 log];
  [v4 log:{@"%s Update Finished For Unit (LUN:%d, RouterID:%hhu)", "UARPSoCUpdaterApplyComplete", objc_msgSend(v5, "logicUnitNumber"), objc_msgSend(v5, "routerID")}];

  [v5 applyAssetComplete];
}

void UARPSoCUpdaterFirmwareTssRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v13 = *(a1 + 56);
  v10 = [v13 log];
  [v10 log:{@"%s", "UARPSoCUpdaterFirmwareTssRequest"}];

  v11 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a4];
  [v13 tssRequestWithOptions:a3 serverURL:v11 assetCtx:a2 siliconCtx:a1];

  if (a5)
  {
    v12 = [v13 log];
    [v12 log:{@"%s: More tss request for next round.", "UARPSoCUpdaterFirmwareTssRequest"}];
  }
}

void UARPSoCUpdaterFirmwareLogCommon(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = [*(a1 + 56) log];
  [v5 log:{@"[%s:%s] %s", "com.apple.uarp.layer3.soc", uarpLoggingCategoryToString(a2), a3}];
}

uint64_t Ace3UpdaterCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [Ace3UpdateController alloc];

  return [(UARPSoCUpdaterController *)v6 initWithOptions:a1 logFunction:a2 logContext:a3];
}

uint64_t Ace3UpdaterIsDone(void *a1)
{
  if (a1)
  {
    return [a1 isDone];
  }

  else
  {
    return USBCUpdateEndpointQueryNumberOfAccessories() == 0;
  }
}

uint64_t uarpPlatformEndpointStreamingRecvInit(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    UARPLayer2RequestBuffer(a1, &v7, 0x18uLL, 0xFFFF, 37);
    if (v7)
    {
      v5 = *(a2 + 4) + 36;
      UARPLayer2RequestBuffer(a1, v7, v5, 0xFFFF, 49);
      v6 = v7;
      if (*v7)
      {
        result = 0;
        *(v7 + 2) = v5;
        *(a2 + 96) = v6;
        return result;
      }

      UARPLayer2ReturnBuffer(a1, v7, 0xFFFF, 56);
    }

    return 11;
  }

  return result;
}

void uarpPlatformEndpointStreamingRecvDeinit(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a2 + 96);
      if (v3)
      {
        if (*v3)
        {
          UARPLayer2ReturnBuffer(a1, *v3, 0xFFFF, 86);
          v3 = *(a2 + 96);
          *v3 = 0;
        }

        UARPLayer2ReturnBuffer(a1, v3, 0xFFFF, 94);
        *(a2 + 96) = 0;
      }
    }
  }
}

uint64_t uarpPlatformEndpointStreamingRecvBytes(uint64_t a1, void *a2, char *a3, int a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      v7 = a3;
      if (a3)
      {
        LODWORD(v8) = a4;
        if (a4)
        {
          v9 = a2[12];
          if (v9)
          {
            goto LABEL_6;
          }

          result = uarpPlatformEndpointStreamingRecvInit(a1, a2);
          if (result)
          {
            return result;
          }

          v9 = a2[12];
          if (v9)
          {
LABEL_6:
            if (v9[2] >= v8)
            {
              v8 = v8;
              v10 = v9[4];
              do
              {
                v11 = *v7++;
                *(*v9 + v10) = v11;
                v10 = v9[4] + 1;
                v9[4] = v10;
                if (v10 == 6)
                {
                  v12 = uarpNtohs(*(*v9 + 2)) + 6;
                  v9[3] = v12;
                  v10 = v9[4];
                }

                else
                {
                  v12 = v9[3];
                }

                if (v10 == v12)
                {
                  result = uarpPlatformEndpointRecvMessage(a1, a2, *v9, v12);
                  if (result)
                  {
                    return result;
                  }

                  bzero(*v9, v9[2]);
                  v10 = 0;
                  v9[3] = 0;
                  v9[4] = 0;
                }

                --v8;
              }

              while (v8);
              return 0;
            }

            else
            {
              return 30;
            }
          }

          else
          {
            return 27;
          }
        }
      }
    }
  }

  return result;
}

char *uarpAssetTagPersonalization4cc()
{
  result = uarpAssetTagPersonalization4cc_assetTag;
  uarpAssetTagPersonalization4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructPersonalization()
{
  uarpAssetTagPersonalization4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructPersonalization_myTag;
  uarpAssetTagStructPersonalization_myTag = *uarpAssetTagPersonalization4cc_assetTag;
  return result;
}

char *uarpAssetTagPersonalizedFirmware4cc()
{
  result = uarpAssetTagPersonalizedFirmware4cc_assetTag;
  uarpAssetTagPersonalizedFirmware4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructPersonalizedFirmware()
{
  uarpAssetTagPersonalizedFirmware4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructPersonalizedFirmware_myTag;
  uarpAssetTagStructPersonalizedFirmware_myTag = *uarpAssetTagPersonalizedFirmware4cc_assetTag;
  return result;
}

__int16 *uarpOuiPersonalization()
{
  result = &uarpOuiPersonalization_myOui;
  uarpOuiPersonalization_myOui = -19832;
  byte_2A14F0F02 = -111;
  return result;
}

uint64_t uarpPersonalizationRequestPreparePayload(uint64_t a1, uint64_t a2, int a3)
{
  v4 = 0uLL;
  uarpAssetTagPersonalization4cc_assetTag[4] = 0;
  uarpAssetTagStructPersonalization_myTag = *uarpAssetTagPersonalization4cc_assetTag;
  return UARPSuperBinaryPreparePayload(a1, a2, a3, &uarpAssetTagStructPersonalization_myTag, &v4);
}

uint64_t uarpPersonalizationRequestAddMeasurementWithOverrides(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  v10 = uarpHtons(a6);
  v11 = uarpHtons(a7);
  if (a5)
  {
    v12 = v11;
    v13 = a4;
    v14 = a5;
    while (1)
    {
      v15 = v14 - 8;
      if (v14 < 8)
      {
        return 30;
      }

      v16 = uarpHtonl(*v13);
      v17 = uarpHtonl(v13[1]);
      if (v15 < v17)
      {
        return 30;
      }

      v18 = v17;
      v19 = v13 + 2;
      v20 = v10;
      if (v16 == -2001563371)
      {
        goto LABEL_8;
      }

      if (v16 == -2001563370)
      {
        break;
      }

LABEL_9:
      v13 = (v19 + v18);
      v14 = v15 - v18;
      if (v15 == v18)
      {
        goto LABEL_10;
      }
    }

    v20 = v12;
LABEL_8:
    *v19 = uarpHtons(v20);
    goto LABEL_9;
  }

LABEL_10:

  return UARPSuperBinaryAddPayloadMetaData(a1, a2, a3, 0x88B29110, a5, a4);
}

uint64_t uarpPlatformAssetProcessingCompleteInternal(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  result = 30;
  if (a1 && a3)
  {
    if (uarpPlatformAssetIsKnown(a1, a2, a3))
    {
      *(a3 + 72) = 1;
      *(a3 + 696) = 0;
      if (!a2 || (result = uarpAssetProcessingComplete(a1, a2, a3, a5 | a4), !result))
      {
        result = 0;
        if (a4 == 4 && !a6)
        {
          UARPLayer2AssetCorrupt(a1, a3);
          return 0;
        }
      }
    }

    else
    {
      return 23;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetRequestData(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!a2)
  {
    return 30;
  }

  v3 = *(a2 + 696);
  if (!v3)
  {
    return 30;
  }

  if (*(a2 + 73) == 1 || !*(v3 + 60))
  {
    return 31;
  }

  v4 = a3[2];
  v5 = a3[20];
  v6 = v5 + v4 + *a3;
  v7 = a3[1] - (v5 + v4);
  if (v7 >= a3[6] - v5)
  {
    v7 = a3[6] - v5;
  }

  a3[22] = v6;
  a3[23] = v7;
  if (v7 >= *(*(a2 + 696) + 4))
  {
    v8 = *(*(a2 + 696) + 4);
  }

  else
  {
    v8 = v7;
  }

  a3[23] = v8;
  return uarpSendAssetRequestData(a1, *(a2 + 696), *(a2 + 44), v6, v8);
}

uint64_t uarpPlatformAssetResponseData(uint64_t a1, uint64_t a2, uint64_t a3, void *__src, int a5, int a6, size_t __n)
{
  if (a3)
  {
    v9 = a3;
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
    return v9;
  }

  if (*(a2 + 400) != a5)
  {
    return 29;
  }

  v10 = *(a2 + 404);
  if (v10 != a6 || v10 < __n)
  {
    return 29;
  }

  v12 = *(a2 + 392);
  if ((v12 + __n) > *(a2 + 336))
  {
    return 29;
  }

  *(a2 + 408) = __n;
  memcpy((*(a2 + 328) + v12), __src, __n);
  v14 = *(a2 + 392) + *(a2 + 408);
  *(a2 + 392) = v14;
  v15 = *(a2 + 320) + v14;
  v16 = *(a2 + 316);
  if (v15 > v16)
  {
    return 65;
  }

  if (v15 == v16 || v14 == *(a2 + 336))
  {
    v9 = (*(a2 + 376))(a1, a2, a2 + 312);
    if (v9)
    {
      return v9;
    }

    v17 = *(a2 + 392);
    v18 = *(a2 + 396);
    v19 = v17 - v18;
    if (v17 != v18)
    {
      if (v17 > *(a2 + 336))
      {
        return 65;
      }

      memcpy(*(a2 + 328), (*(a2 + 328) + v18), v17 - v18);
      v17 = *(a2 + 396);
    }

    *(a2 + 392) = v19;
    *(a2 + 320) += v17;
    *(a2 + 396) = 0;
  }

  if (v15 == v16)
  {
    v20 = *(a2 + 384);

    return v20(a1, a2, a2 + 312);
  }

  else
  {

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }
}

uint64_t uarpPlatformAssetUpdateMetaData(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, unsigned int *))
{
  v4 = *(a3 + 80);
  if (v4 < 8)
  {
    return 0;
  }

  v9 = *(a3 + 16);
  while (1)
  {
    v10 = uarpNtohl(*v9);
    v11 = uarpNtohl(v9[1]);
    if (v11 > *(a3 + 24) - 8)
    {
      break;
    }

    v12 = v11;
    v13 = v4 - 8;
    v4 = v4 - 8 - v11;
    if (v13 >= v11)
    {
      v14 = v9 + 2;
      v15 = *(a3 + 84) + 8;
      *(a3 + 84) = v15;
      if (a4)
      {
        a4(a1, a2, v10, v11, v14);
        v15 = *(a3 + 84);
      }

      v9 = (v14 + v12);
      *(a3 + 84) = v15 + v12;
      if (v4 > 7)
      {
        continue;
      }
    }

    return 0;
  }

  return 53;
}

uint64_t uarpPlatformAssetSuperBinaryPullHeader(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0x2C00000000;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = uarpPlatformAssetSuperBinaryRequestWindowFilled;
  *(a2 + 384) = uarpPlatformAssetSuperBinaryRequestCompleted;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t uarpPlatformAssetSuperBinaryRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = *(a3 + 2);
  *a2 = uarpNtohl(*v9);
  *(a2 + 4) = uarpNtohl(v9[1]);
  *(a2 + 8) = uarpNtohl(v9[2]);
  uarpVersionEndianSwap(v9 + 3, (a2 + 12));
  *(a2 + 28) = uarpNtohl(v9[7]);
  *(a2 + 32) = uarpNtohl(v9[8]);
  *(a2 + 36) = uarpNtohl(v9[9]);
  v10 = uarpNtohl(v9[10]);
  *(a2 + 40) = v10;
  a3[21] = a3[20];
  v12 = *(a2 + 28);
  v11 = *(a2 + 32);
  if (__CFADD__(v11, v12))
  {
    return 8;
  }

  v15 = *(a2 + 68);
  v13 = 8;
  if (v15 >= v11 && v15 >= v12)
  {
    v16 = *(a2 + 36);
    if (!__CFADD__(v10, v16) && v15 >= v10 && v15 >= v16)
    {
      if (v12 + v11 <= v15 && v16 + v10 <= v15 && *(a2 + 4) == 44 && *a2 < 5u)
      {
        return 0;
      }

      else
      {
        uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
        return 47;
      }
    }
  }

  return v13;
}

uint64_t uarpPlatformAssetSuperBinaryPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    v3 = *(a2 + 32);
    if (v3)
    {
      *(a2 + 688) = 0;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 440) = 0;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 312) = *(a2 + 28);
      *(a2 + 316) = v3;
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = uarpPlatformAssetSuperBinaryMetaDataRequestWindowFilled;
      *(a2 + 384) = uarpPlatformAssetSuperBinaryMetaDataRequestCompleted;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    return 40;
  }

  return v2;
}

uint64_t uarpPlatformAssetSuperBinaryMetaDataRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2AssetMetaDataTLV);
  if (updated)
  {
    UARPLayer2AssetMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 688) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  v2 = *(a2 + 456);
  if (v2 > *(a2 + 448))
  {
    return 30;
  }

  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 40 * v2 + 44;
  *(a2 + 316) = 40;
  *(a2 + 328) = *(a2 + 640);
  *(a2 + 336) = *(a2 + 648);
  *(a2 + 376) = uarpPlatformAssetPayloadHeaderRequestWindowFilled;
  *(a2 + 384) = uarpPlatformAssetPayloadHeaderRequestCompleted;
  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t uarpPlatformAssetPayloadHeaderRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  v9 = uarpPlatformAssetPayloadHeaderProcess(*(a3 + 2), a2 + 464, *(a2 + 68));
  if (v9)
  {
    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    a3[21] = a3[20];
  }

  return v9;
}

uint64_t uarpPlatformAssetPayloadHeaderRequestCompleted(uint64_t a1, uint64_t a2)
{
  *(a2 + 452) = *(a2 + 456);
  UARPLayer2PayloadReady(a1, a2);
  return 0;
}

uint64_t uarpPlatformAssetPayloadHeaderProcess(unsigned int *a1, uint64_t a2, unsigned int a3)
{
  *a2 = uarpNtohl(*a1);
  *(a2 + 4) = a1[1];
  uarpVersionEndianSwap(a1 + 2, (a2 + 8));
  *(a2 + 24) = uarpNtohl(a1[6]);
  *(a2 + 28) = uarpNtohl(a1[7]);
  *(a2 + 32) = uarpNtohl(a1[8]);
  v6 = uarpNtohl(a1[9]);
  *(a2 + 36) = v6;
  *(a2 + 52) = 0;
  *(a2 + 56) = 0;
  *(a2 + 76) = 0;
  *(a2 + 128) = v6;
  v8 = *(a2 + 24);
  v7 = *(a2 + 28);
  v9 = __CFADD__(v7, v8);
  result = 8;
  if (v8 <= a3 && v7 <= a3 && !v9)
  {
    if (v8 + v7 <= a3)
    {
      v11 = *(a2 + 32);
      v12 = __CFADD__(v6, v11);
      if (v11 <= a3 && v6 <= a3)
      {
        if (v11 + v6 <= a3)
        {
          v13 = 0;
        }

        else
        {
          v13 = 48;
        }

        if (v12)
        {
          return 8;
        }

        else
        {
          return v13;
        }
      }
    }

    else
    {
      return 48;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetPayloadPullMetaData(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    else
    {
      v3 = *(a2 + 492);
      if (v3)
      {
        *(a2 + 512) = 0;
        *(a2 + 312) = 0u;
        *(a2 + 328) = 0u;
        *(a2 + 440) = 0;
        *(a2 + 344) = 0u;
        *(a2 + 360) = 0u;
        *(a2 + 376) = 0u;
        *(a2 + 392) = 0u;
        *(a2 + 408) = 0u;
        *(a2 + 424) = 0u;
        *(a2 + 312) = *(a2 + 488);
        *(a2 + 316) = v3;
        *(a2 + 328) = *(a2 + 640);
        *(a2 + 336) = *(a2 + 648);
        *(a2 + 376) = uarpPlatformAssetPayloadMetaDataRequestWindowFilled;
        *(a2 + 384) = uarpPlatformAssetPayloadMetaDataRequestCompleted;
        return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
      }

      return 40;
    }
  }

  return v2;
}

uint64_t uarpPlatformAssetPayloadMetaDataRequestWindowFilled(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(a3 + 2);
  v8 = *a3;
  v7 = a3[1];
  UARPLayer2AssetStore(a1, a2);
  updated = uarpPlatformAssetUpdateMetaData(a1, a2, a3, UARPLayer2PayloadMetaDataTLV);
  if (updated)
  {
    UARPLayer2PayloadMetaDataProcessingError(a1, a2);
  }

  else
  {
    *(a2 + 512) += a3[21];
  }

  return updated;
}

uint64_t uarpPlatformAssetPayloadPullData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 452) == -1)
    {
      return 44;
    }

    v5 = *(a2 + 508);
    v6 = *(a2 + 500);
    v7 = v6 >= v5;
    v8 = v6 - v5;
    if (!v7)
    {
      return 43;
    }

    v9 = *(a2 + 496) + v5;
    if (v9 > *(a2 + 8))
    {
      return 43;
    }

    *(a2 + 312) = 0u;
    *(a2 + 328) = 0u;
    *(a2 + 440) = 0;
    *(a2 + 408) = 0u;
    *(a2 + 424) = 0u;
    *(a2 + 376) = 0u;
    *(a2 + 392) = 0u;
    *(a2 + 344) = 0u;
    *(a2 + 360) = 0u;
    *(a2 + 312) = v9;
    *(a2 + 316) = v8;
    *(a2 + 328) = *(a2 + 640);
    v10 = *(a2 + 648);
    *(a2 + 336) = v10;
    *(a2 + 368) = v10;
    *(a2 + 376) = uarpPlatformAssetPayloadDataRequestWindowFilled;
    *(a2 + 384) = uarpPlatformAssetPayloadDataRequestCompleted;
    if (*(a2 + 516) == 1)
    {
      *(a2 + 356) = 1;
      *(a2 + 336) = 10;
      *(a2 + 344) = *(a2 + 656);
      *(a2 + 352) = *(a2 + 664);
      *(a2 + 376) = uarpPlatformAssetPayloadDataRequestCompressionHeader;
    }

    v11 = *(a2 + 520);
    *(a2 + 412) = v11;
    UARPLayer2HashInfo(a1, v11, (a2 + 416), (a2 + 432));
    v12 = *(a2 + 416);
    if (v12)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 424), v12, 48059, 900);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 424))
      {
        return 11;
      }
    }

    v13 = *(a2 + 432);
    if (v13)
    {
      result = UARPLayer2RequestBuffer(a1, (a2 + 440), v13, 48059, 917);
      if (result)
      {
        return result;
      }

      if (!*(a2 + 440))
      {
        return 11;
      }
    }

    UARPLayer2HashInit(a1, *(a2 + 412), *(a2 + 424));

    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  return result;
}

uint64_t uarpPlatformAssetPayloadDataRequestWindowFilled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 16), *(a3 + 80));
  v6 = (*(a3 + 8) + *a3);
  v7 = *(a2 + 496);
  v8 = *(a3 + 16);
  v9 = *(a3 + 80);
  UARPLayer2PayloadData(a1, a2);
  v10 = *(a3 + 80);
  *(a3 + 84) = v10;
  *(a2 + 508) += v10;
  return 0;
}

uint64_t uarpPlatformAssetPayloadDataRequestCompleted(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 520);
  if (!v5)
  {
    goto LABEL_7;
  }

  UARPLayer2HashFinal(a1, v5, *(a3 + 112), *(a3 + 128), *(a3 + 120));
  v7 = uarpPlatformCompareHash(a1, *(a3 + 128), *(a3 + 120), *(a2 + 528), *(a2 + 536));
  v8 = *(a3 + 112);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 48059, 1073);
    *(a3 + 112) = 0;
    *(a3 + 104) = 0;
  }

  v9 = *(a3 + 128);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 48059, 1084);
    *(a3 + 128) = 0;
    *(a3 + 120) = 0;
  }

  *(a3 + 100) = 0;
  if (!v7)
  {
    UARPLayer2AssetCorrupt(a1, a2);
  }

  else
  {
LABEL_7:
    UARPLayer2PayloadDataComplete2(a1, a2);
  }

  return 0;
}

uint64_t uarpPlatformAssetPayloadDataRequestCompressionHeader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  uarpCompressionHeaderEndianSwap(*(a3 + 16), a3 + 45);
  v5 = *(a3 + 80);
  *(a3 + 84) = v5;
  *(a2 + 508) += v5;
  *(a3 + 44) = 0;
  v6 = *(a3 + 51);
  *(a3 + 24) = v6;
  if (*(a3 + 56) < v6 || *(a3 + 40) < *(a3 + 53))
  {
    return 51;
  }

  result = 0;
  *(a3 + 64) = uarpPlatformAssetPayloadDataRequestCompressedBlock;
  return result;
}

uint64_t uarpPlatformAssetPullAllPayloadHeaders(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = 0;
    if (*(a2 + 448) < 1)
    {
LABEL_7:
      *(a2 + 440) = 0;
      *(a2 + 408) = 0u;
      *(a2 + 424) = 0u;
      *(a2 + 376) = 0u;
      *(a2 + 392) = 0u;
      *(a2 + 344) = 0u;
      *(a2 + 360) = 0u;
      *(a2 + 312) = 0u;
      *(a2 + 328) = 0u;
      *(a2 + 312) = *(a2 + 36);
      *(a2 + 328) = *(a2 + 640);
      *(a2 + 336) = *(a2 + 648);
      *(a2 + 376) = uarpPlatformAssetAllPayloadHeadersRequestWindowFilled;
      *(a2 + 384) = uarpPlatformAssetAllPayloadHeadersRequestCompleted;
      return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
    }

    else
    {
      v5 = 0;
      while (1)
      {
        result = UARPLayer2RequestBuffer(a1, &v7, 0xB8uLL, 48059, 1138);
        if (result)
        {
          break;
        }

        v6 = v7;
        v7[22] = *(a2 + 632);
        *(a2 + 632) = v6;
        if (++v5 >= *(a2 + 448))
        {
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetAllPayloadHeadersRequestWindowFilled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 448) < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a3 + 16);
  v9 = *(a2 + 632);
  while (1)
  {
    if (!v9)
    {
      return 11;
    }

    if (v6 > *(a3 + 24))
    {
      return 48;
    }

    v10 = uarpPlatformAssetPayloadHeaderProcess(v8, v9, *(a2 + 68));
    if (v10)
    {
      break;
    }

    *(v9 + 124) = v7;
    v9 = *(v9 + 176);
    *(a3 + 84) += 40;
    ++v7;
    v6 += 40;
    v8 += 10;
    if (v7 >= *(a2 + 448))
    {
      return 0;
    }
  }

  v11 = v10;
  uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  return v11;
}

_DWORD *uarpProcessTLV(uint64_t a1, unsigned int *a2, unsigned int a3)
{
  if (a3 < 8)
  {
    return 0;
  }

  v5 = a3;
  v6 = uarpNtohl(*a2);
  v7 = uarpNtohl(a2[1]);
  v8 = v7;
  if (v7 > 0xFFFFFFE7 || v7 + 8 > v5)
  {
    return 0;
  }

  v12 = v7;
  v14 = 0;
  v13 = UARPLayer2RequestBuffer(a1, &v14, v7 + 24, 48059, 1252);
  v10 = 0;
  if (!v13)
  {
    v10 = v14;
    *v14 = v6;
    v10[1] = v12;
    memcpy(v10 + 6, a2 + 2, v8);
    *(v10 + 1) = v10 + 6;
  }

  return v10;
}

uint64_t uarpPlatformAssetPullAllMetaData(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (!a1 || !a2)
  {
    return result;
  }

  *(a2 + 440) = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  v6 = *(a2 + 28);
  v5 = *(a2 + 32);
  *(a2 + 312) = v6;
  *(a2 + 316) = v5;
  for (i = *(a2 + 632); i; i = *(i + 176))
  {
    v8 = *(i + 24);
    if (v8)
    {
      if (v8 != v5 + v6)
      {
        return 43;
      }

      v5 = (*(i + 28) + v5);
      *(a2 + 316) = v5;
    }
  }

  *(a2 + 680) = v5;
  *(a2 + 672) = 0;
  if (!v5)
  {
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 376) = uarpPlatformAssetAllMetaDataWindowFilled;
    *(a2 + 384) = uarpPlatformAssetAllMetaDataRequestCompleted;
LABEL_15:
    UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
    return 0;
  }

  result = UARPLayer2RequestBuffer(a1, (a2 + 672), v5, 48059, 1328);
  if (result)
  {
    return result;
  }

  v9 = *(a2 + 680);
  v10 = *(a2 + 316);
  *(a2 + 328) = *(a2 + 672);
  *(a2 + 336) = v9;
  *(a2 + 376) = uarpPlatformAssetAllMetaDataWindowFilled;
  *(a2 + 384) = uarpPlatformAssetAllMetaDataRequestCompleted;
  if (!v10)
  {
    goto LABEL_15;
  }

  return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
}

uint64_t uarpPlatformAssetAllMetaDataWindowFilled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  v4 = *(a3 + 84);
  if (*(a3 + 80) - v4 < v3)
  {
    return 18;
  }

  if (v3)
  {
    v9 = *(a3 + 16);
    while (1)
    {
      v10 = uarpProcessTLV(a1, v9, v3);
      if (!v10)
      {
        return 10;
      }

      v11 = (v10[1] + 8);
      v9 = (v9 + v11);
      *(v10 + 2) = *(a2 + 720);
      *(a2 + 720) = v10;
      v3 -= v11;
      if (!v3)
      {
        v12 = *(a2 + 32);
        v4 = *(a3 + 84);
        goto LABEL_9;
      }
    }
  }

  else
  {
    v12 = 0;
LABEL_9:
    v13 = v4 + v12;
    *(a3 + 84) = v13;
    v14 = *(a2 + 632);
    if (v14)
    {
      while (1)
      {
        v15 = *(v14 + 28);
        if (*(a3 + 80) - v13 < v15)
        {
          return 18;
        }

        if (v15)
        {
          v16 = (*(a3 + 16) + v13);
          while (1)
          {
            v17 = uarpProcessTLV(a1, v16, v15);
            if (!v17)
            {
              return 10;
            }

            v18 = (v17[1] + 8);
            v16 = (v16 + v18);
            *(v17 + 2) = *(v14 + 168);
            *(v14 + 168) = v17;
            v15 -= v18;
            if (!v15)
            {
              v19 = *(v14 + 28);
              v13 = *(a3 + 84);
              goto LABEL_17;
            }
          }
        }

        v19 = 0;
LABEL_17:
        result = 0;
        v13 += v19;
        *(a3 + 84) = v13;
        v14 = *(v14 + 176);
        if (!v14)
        {
          return result;
        }
      }
    }

    return 0;
  }
}

uint64_t uarpPlatformAssetPayloadDataRequestCompressedBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = UARPLayer2DecompressBuffer(a1, *(a3 + 45), *(a3 + 16), *(a3 + 51), *(a3 + 32), *(a3 + 53));
  if (v6)
  {
    v7 = *(a1 + 440);
    if (v7)
    {
      v7(*(a1 + 608), 2, "Error decompressing buffer for payload");
    }

    else
    {
      uarpLogError(2u, "Error decompressing buffer for payload");
    }

    uarpPlatformAssetProcessingCompleteInternal(a1, *(a2 + 696), a2, 4u, 0, 0);
  }

  else
  {
    UARPLayer2HashUpdate(a1, *(a3 + 100), *(a3 + 112), *(a3 + 32), *(a3 + 53));
    v8 = *(a3 + 32);
    v9 = *(a3 + 53);
    v10 = *(a3 + 47);
    UARPLayer2PayloadData(a1, a2);
    v11 = *(a3 + 24);
    *(a3 + 84) = v11;
    *(a2 + 508) += v11;
    *(a3 + 44) = 1;
    *(a3 + 24) = 10;
    *(a3 + 64) = uarpPlatformAssetPayloadDataRequestCompressionHeader;
  }

  return v6;
}

uint64_t UARPLayer2RequestBuffer(uint64_t a1, void **a2, size_t __size, __int16 a4, int a5)
{
  v7 = __size;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v10(*(a1 + 608), a2, __size);
    if (v11)
    {
      return v11;
    }

    v12 = *a2;
    if (!*a2)
    {
      return 11;
    }
  }

  else
  {
    v12 = calloc(1uLL, __size);
    *a2 = v12;
    if (!v12)
    {
      return 11;
    }
  }

  v11 = *(a1 + 696);
  if (v11)
  {
    for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
    {
      if (!--v11)
      {
        return v11;
      }
    }

    v11 = 0;
    *(i - 2) = v12;
    *(i - 2) = v7;
    *(i - 2) = a4;
    *i = a5;
  }

  return v11;
}

void UARPLayer2ReturnBuffer(uint64_t a1, void *a2, __int16 a3, int a4)
{
  if (a2)
  {
    v4 = *(a1 + 696);
    if (v4)
    {
      v5 = (*(a1 + 704) + 24);
      while (*(v5 - 3) != a2 || *v5)
      {
        v5 += 8;
        if (!--v4)
        {
          goto LABEL_10;
        }
      }

      *(v5 - 2) = a3;
      *v5 = a4;
    }

LABEL_10:
    v6 = *(a1 + 56);
    if (v6)
    {
      v6(*(a1 + 608));
    }

    else
    {
      free(a2);
    }
  }
}

uint64_t UARPLayer2RequestTransmitMsgBuffer(uint64_t a1, uint64_t a2, void **a3, int *a4, __int16 a5, int a6)
{
  v11 = *(a1 + 64);
  if (v11)
  {
    result = v11(*(a1 + 608), *(a2 + 40), a3, a4);
    if (!result)
    {
      if (*a3)
      {
        v13 = *(a1 + 696);
        if (v13)
        {
          for (i = (*(a1 + 704) + 16); *(i - 2) || *(i - 2); i += 8)
          {
            if (!--v13)
            {
              return 0;
            }
          }

          result = 0;
          *(i - 2) = *a3;
          *(i - 2) = *a4;
          *(i - 2) = a5;
          *i = a6;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 11;
      }
    }
  }

  else
  {
    v15 = *a4;

    return UARPLayer2RequestBuffer(a1, a3, v15, a5, a6);
  }

  return result;
}

void UARPLayer2ReturnTransmitMsgBuffer(uint64_t a1, uint64_t a2, void *a3, __int16 a4, int a5)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(a1 + 696);
    if (v6)
    {
      v7 = (*(a1 + 704) + 24);
      while (*(v7 - 3) != a3 || *v7)
      {
        v7 += 8;
        if (!--v6)
        {
          goto LABEL_10;
        }
      }

      *(v7 - 2) = a4;
      *v7 = a5;
    }

LABEL_10:
    v5(*(a1 + 608), *(a2 + 40), a3);
  }

  else
  {
    UARPLayer2ReturnBuffer(a1, a3, a4, a5);
  }
}

uint64_t UARPLayer2SendMessage(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  if (!v5)
  {
    return 14;
  }

  if (*(a2 + 120))
  {
    uarpPlatformDownstreamEndpointSendMessageInternal(a1, *(a2 + 160), a2, a3, a4);
    return 0;
  }

  else
  {
    v7 = *(a1 + 608);
    v8 = *(a2 + 40);

    return v5(v7, v8, a3, a4);
  }
}

uint64_t UARPLayer2DataTransferPause(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferPauseAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResume(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2DataTransferResumeAck(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2SuperBinaryOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 120);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DynamicAssetOffered(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ApplyStagedAssetsResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2ManufacturerName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ManufacturerNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 160);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ModelName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 168);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2ModelNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 176);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2SerialNumber(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 184);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2SerialNumberResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2HardwareVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 200);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2HardwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2ActiveFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[27];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[69];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpTagStructPack32(a2);
        v8 = a1[69];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2ActiveFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 224);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StagedFirmwareVersion2(void *a1, unsigned int *a2, void *a3)
{
  v5 = a1[29];
  if (v5)
  {
    v6 = a1[76];

    return v5(v6);
  }

  else
  {
    v8 = a1[70];
    if (v8)
    {
      if (a2)
      {
        a2 = uarpTagStructPack32(a2);
        v8 = a1[70];
      }

      v9 = a1[76];

      return v8(v9, a2, a3);
    }

    else
    {
      *a3 = -1;
      a3[1] = -1;
      return 0;
    }
  }
}

uint64_t UARPLayer2StagedFirmwareVersionResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 240);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2LastError(uint64_t a1, void *a2)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    return v2(*(a1 + 608));
  }

  *a2 = -1;
  return 0;
}

uint64_t UARPLayer2LastErrorResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 256);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2StatisticsResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetSolicitation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 272);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2RescindAllAssets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 280);
  if (v3)
  {
    if (a2)
    {
      a2 = *(a2 + 40);
    }

    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), a2, a3);
  }

  return result;
}

uint64_t UARPLayer2RescindAllAssetsAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 288);
  if (v3)
  {
    if (a3)
    {
      a3 = *(a3 + 704);
    }

    return v3(*(result + 608), *(a2 + 40), a3);
  }

  return result;
}

uint64_t UARPLayer2WatchdogSet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 296);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 1;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2WatchdogCancel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 304);
  if (!v2)
  {
    return 14;
  }

  *(a2 + 54) = 0;
  return v2(*(a1 + 608), *(a2 + 40));
}

uint64_t UARPLayer2MonotonicClockTime(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 312);
  if (!v2)
  {
    return 14;
  }

  v4 = v2(*(a1 + 608));
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t UARPLayer2ProtocolVersion(uint64_t result, uint64_t a2)
{
  v2 = *(result + 320);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2FriendlyName(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 328);
  if (v3)
  {
    v4 = *(a1 + 608);

    return v3(v4);
  }

  else
  {
    *a3 = uarpCopyDefaultInfoString(a2, *a3);
    return 0;
  }
}

uint64_t UARPLayer2FriendlyNameResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 336);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 480);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointUnreachable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3DownstreamEndpointReleased(uint64_t result, uint64_t a2)
{
  v2 = *(result + 496);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t fUarpLayer3DownstreamEndpointRecvMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 504);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 16));
  }

  else
  {
    return 14;
  }
}

uint64_t fUarpLayer3NoFirmwareUpdateAvailable(uint64_t result, uint64_t a2)
{
  v2 = *(result + 512);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDs(uint64_t result, uint64_t a2)
{
  v2 = *(result + 344);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointIDComponents(uint64_t result, uint64_t a2)
{
  v2 = *(result + 352);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationQuery(uint64_t result, uint64_t a2)
{
  v2 = *(result + 360);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2EndpointBulkInformationResponse(uint64_t result, uint64_t a2)
{
  v2 = *(result + 368);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2DecompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 376);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2CompressBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 384);
  if (v6)
  {
    return v6(a2, a3, a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2HashInfo(uint64_t result, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(result + 392);
  if (v4)
  {
    return v4(a2, a3, a4);
  }

  *a3 = 0;
  *a4 = 0;
  return result;
}

uint64_t UARPLayer2HashInit(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 400);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2HashUpdate(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 408);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashFinal(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 416);
  if (v5)
  {
    return v5(a2, a3, a4, a5);
  }

  return result;
}

uint64_t UARPLayer2HashLog(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 424);
  if (v3)
  {
    return v3(a2, a3);
  }

  return result;
}

uint64_t UARPLayer2LogPacket(uint64_t result, uint64_t a2)
{
  v2 = *(result + 432);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2VendorSpecificRecvMessage(void *a1, uint64_t a2)
{
  v2 = a1[65];
  if (v2)
  {
    return v2(a1[76], *(a2 + 40));
  }

  v4 = a1[82];
  if (v4)
  {
    return v4();
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2VendorSpecificCheckExpectedResponse(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 528);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificCheckValidToSend(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 536);
  if (v2)
  {
    return v2(*(a1 + 608), *(a2 + 40));
  }

  else
  {
    return 1;
  }
}

uint64_t UARPLayer2VendorSpecificExceededRetries(uint64_t result, uint64_t a2)
{
  v2 = *(result + 544);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 40));
  }

  return result;
}

uint64_t UARPLayer2AssetReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataTLV(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadReady(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

void *UARPLayer2PayloadMetaDataTLV(void *a1, uint64_t a2, uint64_t a3, size_t __size, unsigned int *a5)
{
  result = uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, a3, __size, a5);
  v11 = *(a2 + 120);
  if (v11)
  {
    v12 = a1[76];
    v13 = *(a2 + 704);

    return v11(v12, v13, a3, __size, a5);
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataComplete(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 540);
  if (!result)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 416);
  if (v5)
  {
    v6 = *(a2 + 568);
    v7 = *(a2 + 560);
    v8 = *(a2 + 544);
    v5();
  }

  result = uarpPlatformCompareHash(a1, *(a2 + 560), *(a2 + 568), *(a2 + 576), *(a2 + 584));
  if (!result)
  {
    v9 = *(a2 + 200);
    if (!v9)
    {
      return result;
    }
  }

  else
  {
LABEL_5:
    v9 = *(a2 + 128);
    if (!v9)
    {
      return result;
    }
  }

  v10 = *(a1 + 608);
  v11 = *(a2 + 704);

  return v9(v10, v11);
}

uint64_t UARPLayer2AssetCorrupt(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 200);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadMetaDataProcessingError(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadData(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2PayloadDataComplete2(uint64_t result, void *a2)
{
  v2 = a2[20];
  if (v2)
  {
    return v2(*(result + 608), a2[88]);
  }

  v3 = a2[19];
  if (v3)
  {
    return v3(*(result + 608), a2[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetGetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v7 = a3[21];
  if (v7)
  {
    return v7(*(a1 + 608), a2, a3[88]);
  }

  v9 = a3[34];
  if (v9)
  {
    return v9(*(a1 + 608), a3[88], a4, a5, a6, a7);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetSetBytesAtOffset2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v6 = a3[22];
  if (v6)
  {
    return v6(*(a1 + 608), a2, a3[88]);
  }

  v8 = a3[35];
  if (v8)
  {
    return v8(*(a1 + 608), a3[88], a4, a5, a6);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetRescinded(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 184);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetRescindedAck(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = *(a3 + 192);
  if (v3)
  {
    return v3(*(result + 608), a2, *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetOrphaned(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 208);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetReleased2(uint64_t result, uint64_t a2, void *a3)
{
  if (a2)
  {
    a2 = *(a2 + 40);
  }

  v3 = a3[27];
  if (v3)
  {
    return v3(*(result + 608), a2, a3[88]);
  }

  v4 = a3[36];
  if (v4)
  {
    return v4(*(result + 608), a3[88]);
  }

  return result;
}

uint64_t UARPLayer2AssetProcessingNotification2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[28];
  if (v4)
  {
    return v4(*(a1 + 608), *(a2 + 40), a3[88]);
  }

  v6 = a3[37];
  if (v6)
  {
    return v6(*(a1 + 608), a3[88], a4);
  }

  else
  {
    return 14;
  }
}

uint64_t UARPLayer2AssetProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 232);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 240);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetPreProcessingNotificationAck(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 248);
  if (v3)
  {
    return v3(*(a1 + 608), *(a2 + 40), *(a3 + 704));
  }

  else
  {
    return 0;
  }
}

uint64_t UARPLayer2AssetAllHeadersAndMetaDataComplete(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 256);
  if (v3)
  {
    return v3(*(result + 608), *(a2 + 40), *(a3 + 704));
  }

  return result;
}

uint64_t UARPLayer2AssetStore(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 264);
  if (v2)
  {
    return v2(*(result + 608), *(a2 + 704));
  }

  return result;
}

uint64_t uarpPlatformEndpointQueryActiveFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2ActiveFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformEndpointQueryStagedFirmwareVersion(void *a1, uint64_t a2, void *a3)
{
  v4 = 0;
  if (a2)
  {
    v4 = *(a2 + 48);
  }

  return UARPLayer2StagedFirmwareVersion2(a1, &v4, a3);
}

uint64_t uarpPlatformAssetFindFirmware(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 46) == 1)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetID(uint64_t a1, uint64_t a2, int a3, int a4)
{
  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (*(result + 304) == a3 && *(result + 696) == a2 && *(result + 44) == a4)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByTag(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  for (i = *(a1 + 632); i; i = *(i + 712))
  {
    if (*(i + 304) == a3 && *(i + 696) == a2 && uarpAssetTagCompare((i + 48), a4))
    {
      break;
    }
  }

  return i;
}

void uarpPlatformCleanupAssetsForRemoteEndpoint(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 644) != 1)
  {
    v4 = *(a1 + 632);
    for (*(a1 + 632) = 0; v4; *(a1 + 632) = v7)
    {
      while (1)
      {
        v7 = v4;
        v4 = *(v4 + 712);
        *(v7 + 712) = 0;
        v8 = *(v7 + 696);
        v9 = v8 == a2 || a2 == 0;
        if (!v9 && v8 != 0)
        {
          break;
        }

        if (a3 == 1)
        {
          if (*(v7 + 46))
          {
            UARPLayer2AssetOrphaned(a1, v7);
            *(v7 + 696) = 0;
            *(v7 + 704) = 0;
          }

          else
          {
            *(v7 + 72) = 1;
          }
        }

        if (*(v7 + 72) != 1)
        {
          break;
        }

        UARPLayer2AssetReleased2(a1, a2, v7);
        *(v7 + 704) = 0;
        uarpPlatformAssetCleanup(a1, v7);
        if (!v4)
        {
          return;
        }
      }

      *(v7 + 712) = *(a1 + 632);
    }
  }
}

double uarpPlatformAssetOrphan(uint64_t a1, uint64_t a2)
{
  UARPLayer2AssetOrphaned(a1, a2);
  result = 0.0;
  *(a2 + 696) = 0u;
  return result;
}

uint64_t uarpPlatformAssetRelease(uint64_t a1, uint64_t a2, void *a3)
{
  result = UARPLayer2AssetReleased2(a1, a2, a3);
  a3[88] = 0;
  return result;
}

void uarpPlatformAssetCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 640);
  if (v4 && !*(a2 + 652))
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 412);
  }

  *(a2 + 640) = 0;
  *(a2 + 648) = 0;
  v5 = *(a2 + 656);
  if (v5 && !*(a2 + 668))
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 432);
  }

  *(a2 + 656) = 0;
  *(a2 + 664) = 0;
  v6 = *(a2 + 672);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 451);
    *(a2 + 672) = 0;
  }

  *(a2 + 680) = 0;
  v7 = *(a2 + 720);
  if (v7)
  {
    do
    {
      v8 = v7[2];
      v7[2] = 0;
      UARPLayer2ReturnBuffer(a1, v7, 52428, 388);
      v7 = v8;
    }

    while (v8);
  }

  *(a2 + 720) = 0;
  v9 = *(a2 + 632);
  if (v9)
  {
    do
    {
      v10 = v9[21];
      v11 = v9[22];
      if (v10)
      {
        do
        {
          v12 = v10[2];
          v10[2] = 0;
          UARPLayer2ReturnBuffer(a1, v10, 52428, 388);
          v10 = v12;
        }

        while (v12);
      }

      v9[21] = 0;
      uarpPlatformPayloadCleanup(a1, v9);
      UARPLayer2ReturnBuffer(a1, v9, 52428, 487);
      v9 = v11;
    }

    while (v11);
  }

  uarpPlatformPayloadCleanup(a1, a2 + 464);

  UARPLayer2ReturnBuffer(a1, a2, 52428, 511);
}

void uarpPlatformCleanupAssets(uint64_t a1)
{
  v1 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v1)
  {
    do
    {
      v3 = *(v1 + 712);
      *(v1 + 712) = 0;
      uarpPlatformAssetCleanup(a1, v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t uarpPlatformAssetIsKnown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 632);
  if (!v3)
  {
    return 0;
  }

  while (v3 != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t uarpPlatformPrepareAsset(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  v6 = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v18 = 0;
        v6 = UARPLayer2RequestBuffer(a1, &v18, 0x2D8uLL, 52428, 245);
        if (!v6)
        {
          v14 = v18;
          if (v18)
          {
            *(v18 + 88) = a3;
            v14[87] = a2;
            uarpPlatformEndpointAssetSetCallbacks(a1, v14, a5);
            if (v15)
            {
              v6 = v15;
              UARPLayer2ReturnBuffer(a1, v18, 52428, 265);
            }

            else
            {
              v16 = v18;
              if (a4)
              {
                *(v18 + 23) = 2;
                *(v16 + 12) = *a4;
              }

              else
              {
                *(v18 + 23) = 1;
              }

              if (a6 == 1)
              {
                *(v16 + 76) = 1;
                v17 = *(a1 + 640);
                if (v17 == 65534)
                {
                  v17 = 1;
                }

                *(a1 + 640) = v17 + 1;
              }

              else
              {
                LOWORD(v17) = 0;
                *(v16 + 76) = 0;
              }

              *(v16 + 22) = v17;
              if (a4 && a6 == 1)
              {
                uarpPlatformAssetFindByTag(a1, a2, 1, v16 + 48);
                v16 = v18;
              }

              v6 = 0;
              *(v16 + 89) = *(a1 + 632);
              *(a1 + 632) = v16;
            }
          }

          else
          {
            return 11;
          }
        }
      }
    }
  }

  return v6;
}

void uarpPlatformPayloadCleanup(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  if (v4)
  {
    UARPLayer2ReturnBuffer(a1, v4, 52428, 529);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
  }

  v5 = *(a2 + 96);
  if (v5)
  {
    UARPLayer2ReturnBuffer(a1, v5, 52428, 546);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
  }

  v6 = *(a2 + 112);
  if (v6)
  {
    UARPLayer2ReturnBuffer(a1, v6, 52428, 563);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  v7 = *(a2 + 64);
  if (v7)
  {
    UARPLayer2ReturnBuffer(a1, v7, 52428, 580);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
  }

  v8 = *(a2 + 152);
  if (v8)
  {
    UARPLayer2ReturnBuffer(a1, v8, 52428, 592);
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    UARPLayer2ReturnBuffer(a1, v9, 52428, 602);
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
  }
}

uint64_t uarpPlatformEndpointAssetStore(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 <= 4)
  {
    return UARPLayer2AssetStore(result, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescind(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (a3)
    {
      uarpTransmitQueueAssetRescinded(result, a2, a3);
      *(a3 + 72) = 1;

      return UARPLayer2AssetRescinded(v5, a2, a3);
    }

    else
    {

      return UARPLayer2RescindAllAssets(result, a2, 0);
    }
  }

  return result;
}

uint64_t uarpPlatformReOfferFirmware(uint64_t result, uint64_t a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v4 = result;
    do
    {
      if (*(v2 + 304) == 1 && *(v2 + 696) == a2 && (*(v2 + 46) & 2) == 0)
      {
        result = uarpPlatformEndpointOfferAsset(v4, a2, *(v2 + 704));
      }

      v2 = *(v2 + 712);
    }

    while (v2);
  }

  return result;
}

uint64_t uarpCallbackUpdateInformationTLV(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v9 = v6;
  if (v5 != 7)
  {
    result = uarpPlatformQueryAccessoryInfo(a1, v5, a3 + 2, v6, &v9);
    if (result)
    {
      return result;
    }

    v7 = v9;
    goto LABEL_6;
  }

  if (v6 >= 0x10)
  {
    a3[2] = uarpHtonl(*(a2 + 66));
    a3[3] = uarpHtonl(*(a2 + 70));
    a3[4] = uarpHtonl(*(a2 + 74));
    a3[5] = uarpHtonl(*(a2 + 78));
    v7 = 16;
LABEL_6:
    result = 0;
    a3[1] = v7;
    return result;
  }

  return 39;
}

uint64_t uarpPlatformQueryAccessoryInfo(void *a1, int a2, unsigned int *a3, unsigned int a4, unsigned int *a5)
{
  *a5 = a4;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {

      return UARPLayer2ManufacturerName(a1, a3, a5);
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_22;
      }

      return UARPLayer2ModelName(a1, a3, a5);
    }
  }

  else
  {
    switch(a2)
    {
      case 3:

        return UARPLayer2SerialNumber(a1, a3, a5);
      case 4:

        return UARPLayer2HardwareVersion(a1, a3, a5);
      case 9:

        return UARPLayer2FriendlyName(a1, a3, a5);
      default:
LABEL_22:
        if ((a2 - 5) > 1)
        {
          if (a2 != 8)
          {
            *a5 = 0;
            return 28;
          }

          *a5 = 8;
          if (a4 >= 8)
          {
            Error = UARPLayer2LastError(a1, a3);
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            return Error;
          }
        }

        else
        {
          *a5 = 16;
          if (a4 >= 0x10)
          {
            if (a2 == 5)
            {
              v9 = 0;
              active = UARPLayer2ActiveFirmwareVersion2(a1, &v9, a3);
            }

            else
            {
              v10 = 0;
              active = UARPLayer2StagedFirmwareVersion2(a1, &v10, a3);
            }

            Error = active;
            *a3 = uarpHtonl(*a3);
            a3[1] = uarpHtonl(a3[1]);
            a3[2] = uarpHtonl(a3[2]);
            a3[3] = uarpHtonl(a3[3]);
            return Error;
          }
        }

        return 39;
    }
  }
}

uint64_t uarpPlatformResponseAccessoryInfo(uint64_t result, uint64_t a2, uint64_t a3, int a4, unsigned int a5, unsigned int *a6)
{
  v8 = result;
  if (a4 <= 4)
  {
    if (a4 > 2)
    {
      if (a4 == 3)
      {

        return UARPLayer2SerialNumberResponse(result, a2);
      }

      else
      {

        return UARPLayer2HardwareVersionResponse(result, a2);
      }
    }

    else if (a4 == 1)
    {

      return UARPLayer2ManufacturerNameResponse(result, a2);
    }

    else if (a4 == 2)
    {

      return UARPLayer2ModelNameResponse(result, a2);
    }
  }

  else if (a4 <= 6)
  {
    if (a4 == 5)
    {
      if (a5 >= 0x10)
      {
        uarpVersionEndianSwap(a6, a6);
        result = UARPLayer2ActiveFirmwareVersionResponse(v8, a2);
        *(a2 + 122) = *a6;
      }
    }

    else if (a5 >= 0x10)
    {
      uarpVersionEndianSwap(a6, a6);
      result = UARPLayer2StagedFirmwareVersionResponse(v8, a2);
      *(a2 + 138) = *a6;
    }
  }

  else
  {
    switch(a4)
    {
      case 7:
        if (a5 >= 0x10)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);
          a6[2] = uarpNtohl(a6[2]);
          a6[3] = uarpNtohl(a6[3]);

          return UARPLayer2StatisticsResponse(v8, a2);
        }

        break;
      case 8:
        if (a5 >= 8)
        {
          *a6 = uarpNtohl(*a6);
          a6[1] = uarpNtohl(a6[1]);

          return UARPLayer2LastErrorResponse(v8, a2);
        }

        break;
      case 9:

        return UARPLayer2FriendlyNameResponse(result, a2);
    }
  }

  return result;
}

uint64_t uarpPlatformAssetDataRequest(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *__dst, unsigned __int16 *a7)
{
  v8 = *(a1 + 632);
  if (!v8)
  {
    return 17;
  }

  while (*(v8 + 304) != 1 || *(v8 + 696) != a2 || *(v8 + 44) != a3)
  {
    v8 = *(v8 + 712);
    if (!v8)
    {
      return 17;
    }
  }

  v10 = *(v8 + 68);
  if (v10 < a5)
  {
    return 17;
  }

  if (v10 >= a4 + a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10 - a5;
  }

  return uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v8, __dst, v11, a5, a7);
}

uint64_t uarpPlatformDataTransferResume(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 632);
  if (v4)
  {
    while (1)
    {
      if (!*(v4 + 304) && *(v4 + 696) == a2)
      {
        result = uarpPlatformAssetRequestData(a1, v4, (v4 + 312));
        if (result)
        {
          break;
        }
      }

      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    return UARPLayer2DataTransferResume(a1, a2);
  }

  return result;
}

uint64_t uarpPlatformAssetRescinded(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(result + 632);
  if (a3 == 0xFFFF)
  {
    if (!v4)
    {
      return uarpPlatformAssetRescind(result, a2, v4);
    }

    v5 = *(result + 632);
    do
    {
      if (!*(v5 + 304) && *(v5 + 696) == a2)
      {
        *(v5 + 72) = 1;
      }

      v5 = *(v5 + 712);
    }

    while (v5);
  }

  if (v4)
  {
    while (*(v4 + 304) || *(v4 + 696) != a2 || *(v4 + 44) != a3)
    {
      v4 = *(v4 + 712);
      if (!v4)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (a3 != 0xFFFF)
    {
      return result;
    }

    v4 = 0;
  }

  return uarpPlatformAssetRescind(result, a2, v4);
}

uint64_t uarpAssetProcessingComplete(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    v8 = uarpAllocPrepareTransmitBuffer2(a1, a2, 9u, 0xAu, 1);
    if (v8)
    {
      v9 = v8;
      v10 = v8[3];
      *(v10 + 6) = uarpHtons(*(a3 + 44));
      *(v10 + 8) = uarpHtons(a4);

      return uarpTransmitBuffer2(a1, a2, v9);
    }

    else
    {
      return 11;
    }
  }

  else if (a4 == 3)
  {
    return 0;
  }

  else
  {
    return 13;
  }
}

uint64_t uarpOfferAssetToRemoteEP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 5u, 0x24u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpTagStructPack32((a3 + 48));
  *(v8 + 10) = uarpHtons(*(a3 + 46));
  *(v8 + 12) = uarpHtons(*(a3 + 44));
  uarpVersionEndianSwap((a3 + 52), (v8 + 14));
  *(v8 + 30) = uarpHtonl(*(a3 + 68));
  *(v8 + 34) = uarpHtons(*(a3 + 448));

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpAssetRescind(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xCu, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x11u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  *(v6[3] + 6) = *a3;

  return uarpTransmitBuffer2(a1, a2, v6);
}

uint64_t uarpPlatformFindPreparedAsset(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 *a5)
{
  if ((a4 & 2) == 0)
  {
    return 0;
  }

  for (result = *(a1 + 632); result; result = *(result + 712))
  {
    if (!*(result + 304) && *(result + 696) == a2 && !*(result + 44) && *(result + 48) == *a5 && *(result + 49) == a5[1] && *(result + 50) == a5[2] && *(result + 51) == a5[3])
    {
      break;
    }
  }

  return result;
}

void *uarpPlatformCreateRxAsset(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (UARPLayer2RequestBuffer(a1, &v5, 0x2D8uLL, 52428, 1213))
  {
    return 0;
  }

  result = v5;
  if (v5)
  {
    v5[87] = a2;
    *(result + 76) = 0;
    result[89] = *(a1 + 632);
    *(a1 + 632) = result;
  }

  return result;
}

BOOL uarpPlatformCompareHash(uint64_t a1, void *__s1, size_t __n, void *__s2, int a5)
{
  if (!*(a1 + 416))
  {
    return 1;
  }

  if (__n == a5)
  {
    return memcmp(__s1, __s2, __n) == 0;
  }

  return 0;
}

uint64_t UARPPlatformDownstreamEndpointByID(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*i)
        {
          if (*(result + 160) == a2 && *(result + 120) == a3)
          {
            break;
          }
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UARPPlatformDownstreamEndpointByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*(*i + 160) == a2 && *(result + 40) == a3)
        {
          break;
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointAddEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 620);
  if (v4)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 620);
    while (*v5)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *v5 = a2;
  }

  else
  {
LABEL_5:
    v7 = v4 + 1;
    v11 = 0;
    result = UARPLayer2RequestBuffer(a1, &v11, (8 * (v4 + 1)), 52428, 1360);
    if (!result)
    {
      v9 = *(a1 + 620);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11[i] = *(*(a1 + 624) + i * 8);
        }
      }

      else
      {
        v9 = 0;
      }

      v11[v9] = a2;
      UARPLayer2ReturnBuffer(a1, *(a1 + 624), 52428, 1377);
      result = 0;
      *(a1 + 620) = v7;
      *(a1 + 624) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointAddToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  v3 = *(result + 688);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    v5 = (v4 + 24);
  }

  else
  {
    v5 = (result + 688);
  }

  *v5 = a3;
  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnList(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 8) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 16) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointIDFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 16) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 8);
}

uint64_t uarpPlatformDownstreamEndpointDelegateFindOnListByID(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 8) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 16);
}

uint64_t uarpPlatformDownstreamEndpointRemoveFromList(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 688);
  if (result)
  {
    if (*(result + 8) == a3)
    {
      v5 = (a1 + 688);
LABEL_7:
      *v5 = *(result + 24);
    }

    else
    {
      while (1)
      {
        v6 = result;
        result = *(result + 24);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == a3)
        {
          v5 = (v6 + 24);
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformSendDownstreamMessageWithDownstreamID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    return 58;
  }

  while (*(v5 + 8) != a3)
  {
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 58;
    }
  }

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, a3, a4, a5);
}

void uarpPlatformReleaseEndpointIDs(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 672) + v2;
      UARPLayer2ReturnBuffer(a1, *(v4 + 8), 52428, 1605);
      *(v4 + 2) = 0;
      *(v4 + 8) = 0;
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 664));
  }

  UARPLayer2ReturnBuffer(a1, *(a1 + 672), 52428, 1592);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
}

uint64_t uarpPlatformReleaseEndpointTags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2ReturnBuffer(a1, *(a3 + 8), 52428, 1605);
  *(a3 + 2) = 0;
  *(a3 + 8) = 0;
  return 0;
}

uint64_t uarpPlatformEndpointSendSyncMsg(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a1 + 616))
    {
      v5 = 1;
    }

    else
    {
      uarpTransmitQueuePurge(a1, a2);
      v5 = 0;
    }

    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0, 6u, v5);
    if (v6)
    {

      return uarpTransmitBuffer2(a1, a2, v6);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 1u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (a3 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = a3;
      }

      *(a2 + 48) = v10;
      *(v9 + 6) = uarpHtons(v10);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryResponse(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 30;
  if (a1 && a2)
  {
    *(a2 + 48) = a3;
    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 2u, 0xCu, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[3];
      v8[3] = uarpHtons(0);
      v8[4] = uarpHtons(*(a2 + 48));
      v8[5] = *(a2 + 36);
      v9 = UARPProtocolVersionResponseAdjustByProtocolVersion(*(a2 + 48));
      v10 = uarpNtohs(v8[1]);
      v8[1] = v10 - v9;
      v8[1] = uarpHtons((v10 - v9));
      *(v7 + 18) -= v9;

      return uarpTransmitBuffer2(a1, a2, v7);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendInformationRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 3u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtonl(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDataTransferNotification(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 8u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      *(v9 + 6) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendDynamicAssetPreProcessingStatus(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x13u, 0xCu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = *a3;
  *(v12 + 10) = uarpHtons(a5 | a4);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendAssetRequestData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 6u, 0xEu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = uarpHtons(a3);
  *(v12 + 8) = uarpHtonl(a4);
  if (a5 >= 0xFFFF)
  {
    v13 = 0xFFFF;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 12) = uarpHtons(v13);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (!a2)
  {
    return 13;
  }

  v12 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, (a6 + 11), a4 == 32);
  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  v14 = v12[3];
  v15 = *a3;
  *(v14 + 8) = *(a3 + 2);
  *(v14 + 6) = v15;
  *(v14 + 9) = uarpHtons(a4);
  if (a5 && a6)
  {
    memcpy((v14 + 11), a5, a6);
  }

  return uarpTransmitBuffer2(a1, a2, v13);
}

uint64_t uarpSendDownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x15u, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpSendDownstreamEndpointReachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x17u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x19u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpTransmitMessageToDownstreamEndpointID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v10 = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  v11 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Bu, (a5 + 8), v10);
  if (!v11)
  {
    return 11;
  }

  v12 = v11;
  v13 = v11[3];
  *(v13 + 6) = uarpHtons(a3);
  memcpy((v13 + 8), a4, a5);

  return uarpTransmitBuffer2(a1, a2, v12);
}

uint64_t uarpPlatformEndpointRecvMessage(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = 30;
  if (a1 && a2 && a3)
  {
    UARPLayer2LogPacket(a1, a2);
    if (a4 <= 5)
    {
      v9 = *(a1 + 440);
      if (v9)
      {
        v10 = *(a1 + 608);
        v11 = uarpEndpointRoleToString(*(a1 + 616));
        v9(v10, 0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>", v11, a4);
      }

      else
      {
        uarpEndpointRoleToString(*(a1 + 616));
        uarpLogError(0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>");
      }

      return 8;
    }

    v12 = uarpNtohs(*a3);
    v13 = uarpNtohs(a3[1]);
    v14 = uarpNtohs(a3[2]);
    *(a2 + 32) = v14;
    v15 = v13 + 6;
    if (a4 < v15)
    {
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>";
LABEL_10:
      v16(v17, 0, v18);
      return 8;
    }

    if (a4 > v15)
    {
      v19 = *(a1 + 440);
      if (v19)
      {
        v19(*(a1 + 608), 0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      else
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      if (a4 - v15 < 6)
      {
        return 8;
      }

      v22 = (a3 + v15);
      uarpNtohs(*v22);
      uarpNtohs(v22[1]);
      uarpNtohs(v22[2]);
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>";
      goto LABEL_10;
    }

    v4 = 1;
    *(a1 + 644) = 1;
    switch(v12)
    {
      case 0:
        if (!*(a1 + 616))
        {
          uarpTransmitQueuePurge(a1, a2);
          uarpPlatformEndpointSendSyncMsg(a1, a2);
          goto LABEL_371;
        }

        v20 = a2[14];
        if (!v20)
        {
          goto LABEL_284;
        }

        while (!*(v20 + 40) || uarpNtohs(*v20[3]))
        {
          v20 = *v20;
          if (!v20)
          {
            goto LABEL_284;
          }
        }

        *(v20 + 40) = 0;
        *(v20 + 39) = *(v20 + 38);
LABEL_284:
        *(a2 + 130) = 0;
        *(a2 + 122) = 0;
        *(a2 + 146) = 0;
        *(a2 + 138) = 0;
        *(a2 + 24) = 0;
        if ((*(a1 + 616) - 1) <= 1)
        {
          uarpSendVersionDiscoveryRequest(a1, a2, *(a2 + 6));
        }

        goto LABEL_371;
      case 1:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v90 = uarpNtohs(a3[3]);
        v91 = *(a1 + 12);
        if (v90 < v91)
        {
          v91 = v90;
        }

        if (v91 <= 1)
        {
          v92 = 1;
        }

        else
        {
          v92 = v91;
        }

        *(a2 + 24) = v92;
        uarpSendVersionDiscoveryResponse(a1, a2, v92);
        v93 = *(a2 + 24);
        UARPLayer2ProtocolVersion(a1, a2);
        goto LABEL_371;
      case 2:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v77 = a2[14];
        if (!v77)
        {
          goto LABEL_213;
        }

        while (!*(v77 + 40) || uarpNtohs(*v77[3]) != 1)
        {
          v77 = *v77;
          v4 = 9;
          if (!v77)
          {
            goto LABEL_372;
          }
        }

        *(v77 + 40) = 0;
        *(v77 + 39) = *(v77 + 38);
        v4 = uarpNtohs(a3[3]);
        v161 = uarpHtons(a3[4]);
        v162 = 0;
        v163 = 0;
        if (a4 >= 0xC)
        {
          v162 = *(a3 + 10);
          v163 = *(a3 + 11);
        }

        *(a2 + 25) = v162;
        *(a2 + 26) = v163;
        if (v4)
        {
          v4 = 2;
        }

        else
        {
          if (v161 <= 1)
          {
            v181 = 1;
          }

          else
          {
            v181 = v161;
          }

          if (v181 >= 7)
          {
            v182 = 7;
          }

          else
          {
            v182 = v181;
          }

          *(a2 + 24) = v182;
          UARPLayer2ProtocolVersion(a1, a2);
        }

        goto LABEL_372;
      case 3:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v79 = uarpAllocPrepareTransmitBuffer2(a1, a2, 4u, 0x10u, 0);
        if (!v79)
        {
          goto LABEL_282;
        }

        v80 = v79;
        v81 = v79[3];
        *(v81 + 8) = uarpNtohl(*(a3 + 3));
        *(v81 + 12) = *(v80 + 8) - 16;
        updated = uarpCallbackUpdateInformationTLV(a1, a2, (v81 + 8));
        v83 = updated;
        if (updated)
        {
          v84 = 16;
        }

        else
        {
          v174 = *(v81 + 12);
          *(v81 + 2) = uarpHtons((v174 + 10));
          *(v81 + 8) = uarpHtonl(*(v81 + 8));
          *(v81 + 12) = uarpHtonl(*(v81 + 12));
          v84 = v174 + 16;
        }

        *(v81 + 6) = uarpHtons(v83);
        *(v80 + 18) = v84;
        goto LABEL_317;
      case 4:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v56 = uarpNtohs(a3[3]);
        if (a4 < 0x10)
        {
          goto LABEL_213;
        }

        v57 = v56;
        v58 = uarpNtohl(*(a3 + 2));
        v59 = uarpNtohl(*(a3 + 3));
        if (v59 > 0xFFFFFFEF)
        {
          goto LABEL_303;
        }

        if (v59 + 16 > a4)
        {
          goto LABEL_213;
        }

        v60 = v59;
        v61 = a2[14];
        if (!v61)
        {
          goto LABEL_370;
        }

        while (!*(v61 + 40) || uarpNtohs(*v61[3]) != 3 || v58 != uarpNtohl(*(v61[3] + 6)))
        {
          v61 = *v61;
          if (!v61)
          {
            goto LABEL_370;
          }
        }

        *(v61 + 40) = 0;
        *(v61 + 39) = *(v61 + 38);
LABEL_370:
        uarpPlatformResponseAccessoryInfo(a1, a2, v57, v58, v60, a3 + 4);
        goto LABEL_371;
      case 5:
        if (a4 < 0x24)
        {
          goto LABEL_213;
        }

        v200 = 0;
        uarpTagStructUnpack32(*(a3 + 3), &v200);
        v104 = uarpNtohs(a3[5]);
        v105 = uarpNtohs(a3[6]);
        v199[0] = 0;
        v199[1] = 0;
        uarpVersionEndianSwap((a3 + 7), v199);
        v106 = uarpNtohl(*(a3 + 15));
        v107 = uarpNtohs(a3[17]);
        v108 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xDu, 0x24u, 0);
        if (!v108)
        {
          goto LABEL_282;
        }

        v109 = v108;
        v110 = v108[3];
        *(v110 + 6) = uarpTagStructPack32(&v200);
        *(v110 + 10) = uarpHtons(v104);
        *(v110 + 12) = uarpHtons(v105);
        uarpVersionEndianSwap(v199, (v110 + 14));
        *(v110 + 30) = uarpHtonl(v106);
        *(v110 + 34) = uarpHtons(v107);
        v4 = uarpTransmitBuffer2(a1, a2, v109);
        if (v4)
        {
          goto LABEL_372;
        }

        v111 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v105);
        if (v111 && !*(v111 + 8))
        {
          goto LABEL_371;
        }

        PreparedAsset = uarpPlatformFindPreparedAsset(a1, a2, v105, v104, &v200);
        if (!PreparedAsset)
        {
          PreparedAsset = uarpPlatformCreateRxAsset(a1, a2);
          if (!PreparedAsset)
          {
            goto LABEL_282;
          }
        }

        v113 = PreparedAsset;
        *(PreparedAsset + 452) = -1;
        *(PreparedAsset + 448) = uarpNtohs(a3[17]);
        *(v113 + 44) = v105;
        *(v113 + 46) = v104;
        *(v113 + 48) = v200;
        *(v113 + 52) = *v199;
        *(v113 + 68) = uarpNtohl(*(a3 + 15));
        v114 = *(v113 + 46);
        if (v114)
        {
          UARPLayer2SuperBinaryOffered(a1, a2);
        }

        else
        {
          if ((v114 & 2) == 0)
          {
            v4 = 22;
            goto LABEL_372;
          }

          UARPLayer2DynamicAssetOffered(a1, a2);
        }

        goto LABEL_371;
      case 6:
        if (a4 < 0xE)
        {
          goto LABEL_213;
        }

        v118 = uarpNtohs(a3[6]);
        if (*a2 >= v118)
        {
          v119 = v118;
        }

        else
        {
          v119 = *a2;
        }

        LOWORD(v199[0]) = v119;
        v120 = uarpNtohl(*(a3 + 2));
        v121 = uarpNtohs(a3[3]);
        v122 = uarpAllocPrepareTransmitBuffer2(a1, a2, 7u, (v119 + 18), 0);
        if (!v122)
        {
          goto LABEL_282;
        }

        v80 = v122;
        v123 = v122[3];
        v124 = uarpPlatformAssetDataRequest(a1, a2, v121, v119, v120, (v123 + 18), v199);
        *(v123 + 6) = uarpHtons(v124);
        *(v123 + 8) = a3[3];
        *(v123 + 10) = *(a3 + 2);
        *(v123 + 14) = a3[6];
        *(v123 + 16) = uarpHtons(LOWORD(v199[0]));
        v125 = LOWORD(v199[0]) + 18;
        *(v123 + 2) = uarpHtons((LOWORD(v199[0]) + 12));
        *(v80 + 18) = v125;
LABEL_317:
        v129 = a1;
        v130 = a2;
        v131 = v80;
        goto LABEL_318;
      case 7:
        if (a4 < 0x12)
        {
          goto LABEL_213;
        }

        v85 = uarpNtohs(a3[4]);
        v86 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v85);
        if (!v86)
        {
          goto LABEL_327;
        }

        v87 = a2[14];
        if (!v87)
        {
          goto LABEL_213;
        }

        v88 = v86;
        while (1)
        {
          if (*(v87 + 40))
          {
            if (uarpNtohs(*v87[3]) == 6)
            {
              v89 = v87[3];
              if (v85 == uarpNtohs(*(v89 + 6)) && *(a3 + 5) == *(v89 + 8) && a3[7] == *(v89 + 12))
              {
                break;
              }
            }
          }

          v87 = *v87;
          v4 = 9;
          if (!v87)
          {
            goto LABEL_372;
          }
        }

        *(v87 + 40) = 0;
        *(v87 + 39) = *(v87 + 38);
        v194 = uarpNtohs(a3[3]);
        v195 = uarpNtohl(*(a3 + 5));
        v196 = uarpNtohs(a3[7]);
        v197 = uarpNtohs(a3[8]);
        if (v197 + 18 > a4)
        {
LABEL_213:
          v4 = 9;
        }

        else
        {
          v198 = uarpPlatformAssetResponseData(a1, v88, v194, a3 + 9, v195, v196, v197);
          if (v198 == 29)
          {
            v4 = 0;
          }

          else
          {
            v4 = v198;
          }
        }

        goto LABEL_372;
      case 8:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v153 = uarpNtohs(a3[3]);
        v154 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xEu, 8u, 0);
        if (!v154)
        {
          goto LABEL_282;
        }

        *(v154[3] + 6) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v154);
        if (v26)
        {
          goto LABEL_319;
        }

        if ((v153 & 1) != 0 && *(a2 + 60) == 1)
        {
          *(a2 + 60) = 0;
          v26 = UARPLayer2DataTransferPause(a1, a2);
          goto LABEL_319;
        }

        if ((v153 & 2) == 0 || *(a2 + 60))
        {
          v4 = 33;
          goto LABEL_372;
        }

        *(a2 + 60) = 1;
        v26 = uarpPlatformDataTransferResume(a1, a2);
        goto LABEL_319;
      case 9:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v64 = uarpNtohs(a3[3]);
        v65 = uarpNtohs(a3[4]);
        v66 = uarpPlatformAssetFindByAssetID(a1, a2, 1, v64);
        if (!v66)
        {
          goto LABEL_371;
        }

        v67 = v66;
        v68 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFu, 0xAu, 0);
        if (!v68)
        {
          goto LABEL_282;
        }

        v69 = v68;
        v70 = v68[3];
        *(v70 + 6) = uarpHtons(v64);
        *(v70 + 8) = uarpHtons(v65);
        v26 = uarpTransmitBuffer2(a1, a2, v69);
        if (!v26)
        {
          v26 = UARPLayer2AssetProcessingNotification2(a1, a2, v67, v65);
        }

        goto LABEL_319;
      case 10:
        LOWORD(v199[0]) = 0;
        v126 = UARPLayer2ApplyStagedAssets(a1, a2);
        v4 = 11;
        v127 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xBu, 0xAu, 0);
        if (!v127)
        {
          goto LABEL_372;
        }

        v95 = v127;
        v128 = v127[3];
        *(v128 + 6) = uarpHtons(v126);
        *(v128 + 8) = uarpHtons(LOWORD(v199[0]));
        goto LABEL_211;
      case 11:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v55 = a2[14];
        if (!v55)
        {
          goto LABEL_296;
        }

        while (!*(v55 + 40) || uarpNtohs(*v55[3]) != 10)
        {
          v55 = *v55;
          if (!v55)
          {
            goto LABEL_296;
          }
        }

        *(v55 + 40) = 0;
        *(v55 + 39) = *(v55 + 38);
LABEL_296:
        uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v26 = UARPLayer2ApplyStagedAssetsResponse(a1, a2);
        goto LABEL_319;
      case 12:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v62 = uarpNtohs(a3[3]);
        v63 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x10u, 8u, 0);
        if (!v63)
        {
          goto LABEL_282;
        }

        *(v63[3] + 6) = a3[3];
        v4 = uarpTransmitBuffer2(a1, a2, v63);
        if (!v4)
        {
          uarpPlatformAssetRescinded(a1, a2, v62);
        }

        goto LABEL_372;
      case 13:
        if (a4 < 0x24)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpNtohs(*v39[3]) != 5 || a3[6] != *(v39[3] + 12))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 14:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v48 = a2[14];
        if (!v48)
        {
          goto LABEL_290;
        }

        while (!*(v48 + 40) || uarpNtohs(*v48[3]) != 8)
        {
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_290;
          }
        }

        *(v48 + 40) = 0;
        *(v48 + 39) = *(v48 + 38);
LABEL_290:
        v160 = uarpNtohs(a3[3]);
        if (v160)
        {
          v26 = UARPLayer2DataTransferPauseAck(a1, a2);
        }

        else
        {
          if ((v160 & 2) == 0)
          {
            v4 = 26;
            goto LABEL_372;
          }

          v26 = UARPLayer2DataTransferResumeAck(a1, a2);
        }

        goto LABEL_319;
      case 15:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v78 = a2[14];
        if (!v78)
        {
          goto LABEL_330;
        }

        while (!*(v78 + 40) || uarpNtohs(*v78[3]) != 9 || a3[3] != *(v78[3] + 6))
        {
          v78 = *v78;
          if (!v78)
          {
            goto LABEL_330;
          }
        }

        *(v78 + 40) = 0;
        *(v78 + 39) = *(v78 + 38);
LABEL_330:
        v177 = uarpNtohs(a3[3]);
        uarpNtohs(a3[4]);
        v178 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v177);
        if (!v178)
        {
          goto LABEL_371;
        }

        v179 = v178;
        v4 = UARPLayer2AssetProcessingNotificationAck(a1, a2, v178);
        *(v179 + 72) = 1;
        goto LABEL_372;
      case 16:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v47 = a2[14];
        if (!v47)
        {
          goto LABEL_324;
        }

        while (!*(v47 + 40) || uarpNtohs(*v47[3]) != 12 || a3[3] != *(v47[3] + 6))
        {
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_324;
          }
        }

        *(v47 + 40) = 0;
        *(v47 + 39) = *(v47 + 38);
LABEL_324:
        v175 = uarpNtohs(a3[3]);
        if (v175 == 0xFFFF)
        {
          UARPLayer2RescindAllAssetsAck(a1, a2, 0);
          goto LABEL_371;
        }

        v176 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v175);
        if (v176)
        {
          UARPLayer2AssetRescindedAck(a1, a2, v176);
          goto LABEL_371;
        }

LABEL_327:
        v4 = 17;
        goto LABEL_372;
      case 17:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v100 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x12u, 0xEu, 0);
        if (!v100)
        {
          goto LABEL_282;
        }

        v101 = v100;
        v102 = v100[3];
        *(v102 + 6) = uarpHtonl(0);
        *(v102 + 10) = *(a3 + 3);
        v26 = uarpTransmitBuffer2(a1, a2, v101);
        if (!v26)
        {
          v26 = UARPLayer2AssetSolicitation(a1, a2);
        }

        goto LABEL_319;
      case 18:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpNtohs(*v39[3]) != 17 || !uarpAssetTagCompare(a3 + 10, (v39[3] + 6)))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 19:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v134 = uarpNtohs(a3[5]);
        v135 = *(a3 + 3);
        LODWORD(v199[0]) = v135;
        v136 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x14u, 0xCu, 0);
        if (!v136)
        {
          goto LABEL_282;
        }

        v137 = v136;
        v138 = v136[3];
        *(v138 + 6) = v135;
        *(v138 + 10) = uarpHtons(v134);
        v4 = uarpTransmitBuffer2(a1, a2, v137);
        if (v4)
        {
          goto LABEL_372;
        }

        v139 = uarpPlatformAssetFindByTag(a1, a2, 0, v199);
        if (v139)
        {
          *(v139 + 72) = 1;
          v26 = UARPLayer2AssetPreProcessingNotification(a1, a2, v139);
          goto LABEL_319;
        }

        v4 = 3;
        goto LABEL_372;
      case 20:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v103 = a2[14];
        if (!v103)
        {
          goto LABEL_333;
        }

        while (!*(v103 + 40) || uarpNtohs(*v103[3]) != 19 || !uarpAssetTagCompare(a3 + 6, (v103[3] + 6)))
        {
          v103 = *v103;
          if (!v103)
          {
            goto LABEL_333;
          }
        }

        *(v103 + 40) = 0;
        *(v103 + 39) = *(v103 + 38);
LABEL_333:
        uarpNtohs(a3[5]);
        LODWORD(v199[0]) = *(a3 + 3);
        v180 = uarpPlatformAssetFindByTag(a1, a2, 1, v199);
        if (!v180)
        {
          goto LABEL_371;
        }

        *(v180 + 72) = 1;
        v26 = UARPLayer2AssetPreProcessingNotificationAck(a1, a2, v180);
        if (v26 == 3)
        {
          goto LABEL_371;
        }

        goto LABEL_319;
      case 21:
        v115 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x16u, 8u, 0);
        if (!v115)
        {
          goto LABEL_282;
        }

        v116 = v115;
        v117 = v115[3];
        *(v117 + 6) = uarpHtons(0);
        v26 = uarpTransmitBuffer2(a1, a2, v116);
        if (!v26)
        {
          v26 = fUarpLayer3DownstreamEndpointDiscovery(a1, a2);
        }

        goto LABEL_319;
      case 22:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 21)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 23:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v140 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x18u, 0xAu, 0);
        if (!v140)
        {
          goto LABEL_282;
        }

        v141 = v140;
        v142 = v140[3];
        *(v142 + 6) = uarpHtons(0);
        *(v142 + 8) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v141);
        if (v26)
        {
          goto LABEL_319;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, 0x20uLL, 56797, 1483);
        if (!v4)
        {
          v143 = uarpNtohs(a3[3]);
          v144 = v199[0];
          *(v199[0] + 4) = v143;
          v144[2] = 0;
          v144[3] = 0;
          uarpPlatformDownstreamEndpointAddToList(a1, a2, v144);
          v145 = *(a1 + 448);
          if (v145)
          {
            v146 = *(a1 + 608);
            v147 = uarpEndpointRoleToString(*(a1 + 616));
            v145(v146, 6, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v147, a1, a2, *(v199[0] + 4));
          }

          else
          {
            v192 = uarpEndpointRoleToString(*(a1 + 616));
            uarpLogInfo(6u, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v192, a1, a2, *(v199[0] + 4));
          }

          v193 = *(v199[0] + 4);
          v4 = fUarpLayer3DownstreamEndpointReachable(a1, a2);
          if (v4)
          {
            UARPLayer2ReturnBuffer(a1, v199[0], 56797, 1512);
          }
        }

        goto LABEL_372;
      case 24:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 23)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 25:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v71 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Au, 0xAu, 0);
        if (!v71)
        {
          goto LABEL_282;
        }

        v72 = v71;
        v73 = uarpNtohs(a3[3]);
        v74 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v73);
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v173 = *(a1 + 440);
          if (v173)
          {
            v173(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          else
          {
            uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          v75 = 58;
        }

        v183 = v72[3];
        *(v183 + 6) = uarpHtons(v75);
        *(v183 + 8) = a3[3];
        v184 = uarpTransmitBuffer2(a1, a2, v72);
        v4 = v184;
        if (!v74 || v184)
        {
          goto LABEL_372;
        }

        v185 = *(a1 + 448);
        if (v185)
        {
          v186 = *(a1 + 608);
          v187 = uarpEndpointRoleToString(*(a1 + 616));
          v185(v186, 6, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v187, a1, a2, v73);
        }

        else
        {
          v188 = uarpEndpointRoleToString(*(a1 + 616));
          uarpLogInfo(6u, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v188, a1, a2, v73);
        }

        if (fUarpLayer3DownstreamEndpointUnreachable(a1, a2))
        {
          goto LABEL_371;
        }

        v189 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v74 + 8));
        v190 = a1;
        v191 = 1655;
        goto LABEL_357;
      case 26:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v152 = a2[14];
        if (!v152)
        {
          goto LABEL_309;
        }

        while (!*(v152 + 40) || uarpNtohs(*v152[3]) != 25)
        {
          v152 = *v152;
          if (!v152)
          {
            goto LABEL_309;
          }
        }

        *(v152 + 40) = 0;
        *(v152 + 39) = *(v152 + 38);
LABEL_309:
        v168 = uarpHtons(a3[4]);
        v169 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v168);
        if (v169)
        {
          v170 = v169;
          uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v169 + 8));
          v171 = *(v170 + 8);
          fUarpLayer3DownstreamEndpointReleased(a1, a2);
          goto LABEL_371;
        }

        v172 = *(a1 + 440);
        if (v172)
        {
          v172(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        v4 = 58;
        goto LABEL_372;
      case 27:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v41 = uarpNtohs(a3[3]);
        v42 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v41);
        if (v42)
        {
          v43 = v42;
          uarpMsgRecvDownstreamEndpointMessageSendAck(a1, a2, v41, 0);
          v26 = fUarpLayer3DownstreamEndpointRecvMessage(a1, a2, v43);
          goto LABEL_319;
        }

        v155 = *(a1 + 440);
        if (v155)
        {
          v155(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        v4 = 58;
        uarpMsgRecvDownstreamEndpointMessageSendAck(a1, a2, v41, 0x3Au);
        goto LABEL_372;
      case 28:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 27)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 29:
        v148 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Eu, 8u, 0);
        if (!v148)
        {
          goto LABEL_282;
        }

        v149 = v148;
        v150 = v148[3];
        *(v150 + 6) = uarpHtons(0);
        v4 = uarpTransmitBuffer2(a1, a2, v149);
        if (!v4)
        {
          fUarpLayer3NoFirmwareUpdateAvailable(a1, a2);
        }

        goto LABEL_372;
      case 30:
        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpNtohs(*v76[3]) != 29)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

LABEL_266:
        v4 = 0;
        *(v76 + 40) = 0;
        *(v76 + 39) = *(v76 + 38);
        goto LABEL_372;
      case 31:
        v94 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x20u, (2 * *(a1 + 664) + 10) & 0xFFFE, 0);
        if (!v94)
        {
          goto LABEL_282;
        }

        v95 = v94;
        v96 = v94[3];
        *(v96 + 6) = uarpHtons(0);
        *(v96 + 8) = uarpHtons(*(a1 + 664));
        if (*(a1 + 664))
        {
          v97 = 0;
          v98 = 0;
          v99 = v96 + 10;
          do
          {
            *(v99 + 2 * v98++) = uarpHtons(*(*(a1 + 672) + v97));
            v97 += 16;
          }

          while (v98 < *(a1 + 664));
        }

LABEL_211:
        v129 = a1;
        v130 = a2;
        v131 = v95;
        goto LABEL_318;
      case 32:
        v44 = a4 >= 0xA;
        v132 = a4 - 10;
        if (!v44)
        {
          goto LABEL_303;
        }

        v133 = a2[14];
        if (!v133)
        {
          goto LABEL_302;
        }

        while (!*(v133 + 40) || uarpNtohs(*v133[3]) != 31)
        {
          v133 = *v133;
          if (!v133)
          {
            goto LABEL_302;
          }
        }

        *(v133 + 40) = 0;
        *(v133 + 39) = *(v133 + 38);
LABEL_302:
        v164 = uarpNtohs(a3[4]);
        if (v132 < 2 * v164)
        {
          goto LABEL_303;
        }

        v165 = a3 + 5;
        if (v164)
        {
          v166 = v164;
          v167 = v165;
          do
          {
            *v167 = uarpHtons(*v167);
            ++v167;
            --v166;
          }

          while (v166);
        }

        UARPLayer2EndpointIDs(a1, a2);
        goto LABEL_371;
      case 33:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v49 = uarpHtons(a3[3]);
        v50 = v49;
        v51 = *(a1 + 672);
        v52 = *(a1 + 664);
        if (!*(a1 + 664))
        {
          goto LABEL_89;
        }

        v53 = *(a1 + 672);
        while (*v53 != v49)
        {
          v53 += 8;
          if (!--v52)
          {
LABEL_89:
            v54 = 0;
            goto LABEL_277;
          }
        }

        v54 = v53[1];
        v51 = v53;
LABEL_277:
        v156 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x22u, (4 * v54 + 12) & 0xFFFC, 0);
        if (!v156)
        {
LABEL_282:
          v4 = 11;
          goto LABEL_372;
        }

        v157 = v156;
        v158 = v156[3];
        v158[3] = uarpHtons(0);
        v158[4] = uarpHtons(v50);
        v158[5] = uarpHtons(v54);
        if (v54)
        {
          v159 = 0;
          do
          {
            *&v158[v159 + 6] = *(*(v51 + 1) + v159 * 2);
            v159 += 2;
          }

          while (2 * v54 != v159);
        }

        v129 = a1;
        v130 = a2;
        v131 = v157;
LABEL_318:
        v26 = uarpTransmitBuffer2(v129, v130, v131);
        goto LABEL_319;
      case 34:
        v44 = a4 >= 0xC;
        v45 = a4 - 12;
        if (!v44)
        {
          goto LABEL_303;
        }

        v46 = a2[14];
        if (!v46)
        {
          goto LABEL_287;
        }

        while (!*(v46 + 40) || uarpNtohs(*v46[3]) != 33)
        {
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_287;
          }
        }

        *(v46 + 40) = 0;
        *(v46 + 39) = *(v46 + 38);
LABEL_287:
        uarpNtohs(a3[4]);
        if (v45 < 2 * uarpNtohs(a3[5]))
        {
LABEL_303:
          v4 = 8;
        }

        else
        {
          UARPLayer2EndpointIDComponents(a1, a2);
LABEL_371:
          v4 = 0;
        }

        goto LABEL_372;
      case 35:
        if (a4 < 0x10)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        v30 = *(a3 + 3);
        v200 = *(a3 + 2);
        v31 = uarpHtonl(v30);
        if (v31 >> 30)
        {
          goto LABEL_303;
        }

        v32 = v31;
        v33 = 4 * v31;
        if (v33 > a4 - 16)
        {
          goto LABEL_303;
        }

        v34 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x24u, (4 * v31 + 18), 0);
        if (!v34)
        {
          goto LABEL_282;
        }

        v35 = v34;
        v36 = v34[3];
        *(v36 + 6) = uarpHtons(0);
        *(v36 + 8) = a3[3];
        *(v36 + 10) = *(a3 + 2);
        *(v36 + 14) = *(a3 + 3);
        memcpy((v36 + 18), a3 + 8, v33);
        v4 = uarpTransmitBuffer2(a1, a2, v35);
        if (v4)
        {
          goto LABEL_372;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, v33, 56797, 2292);
        if (v4)
        {
          goto LABEL_372;
        }

        if (v32)
        {
          v37 = 0;
          do
          {
            v38 = uarpNtohl(*&a3[v37 + 8]);
            *(v199[0] + v37 * 2) = v38;
            v37 += 2;
          }

          while (2 * v32 != v37);
        }

        UARPLayer2EndpointBulkInformationQuery(a1, a2);
        v189 = v199[0];
        v190 = a1;
        v191 = 2313;
LABEL_357:
        UARPLayer2ReturnBuffer(v190, v189, 56797, v191);
        goto LABEL_371;
      case 36:
        if (a4 < 0x12)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpNtohs(*v39[3]) == 35)
            {
              v40 = v39[3];
              if (*(v40 + 6) == a3[4] && uarp4ccCompare((v40 + 8), a3 + 10))
              {
                goto LABEL_273;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

      case 37:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        LODWORD(v199[0]) = *(a3 + 2);
        uarpNtohs(a3[1]);
        v27 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x26u, 0xEu, 0);
        if (!v27)
        {
          goto LABEL_282;
        }

        v28 = v27;
        v29 = v27[3];
        *(v29 + 6) = uarpHtons(0);
        *(v29 + 8) = a3[3];
        *(v29 + 10) = *(a3 + 2);
        v4 = uarpTransmitBuffer2(a1, a2, v28);
        if (!v4)
        {
          UARPLayer2EndpointBulkInformationResponse(a1, a2);
        }

        goto LABEL_372;
      case 38:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpNtohs(*v39[3]) == 37)
            {
              v151 = v39[3];
              if (*(v151 + 6) == a3[4] && uarp4ccCompare((v151 + 8), a3 + 10))
              {
                break;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

LABEL_273:
        v4 = 0;
        *(v39 + 40) = 0;
        *(v39 + 39) = *(v39 + 38);
        goto LABEL_372;
      default:
        if (v12 != 0xFFFF)
        {
          goto LABEL_372;
        }

        if (a4 < 0xB)
        {
          goto LABEL_303;
        }

        v23 = a2[14];
        if (!v23)
        {
          goto LABEL_38;
        }

        break;
    }

    while (1)
    {
      if (*(v23 + 40))
      {
        if (uarpNtohs(*v23[3]) == 0xFFFF)
        {
          v24 = v23[3];
          v25 = *(v23 + 18);
          if (UARPLayer2VendorSpecificCheckExpectedResponse(a1, a2))
          {
            break;
          }
        }
      }

      v23 = *v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    *(v23 + 40) = 0;
    *(v23 + 39) = *(v23 + 38);
LABEL_38:
    uarpNtohs(*(a3 + 9));
    v26 = UARPLayer2VendorSpecificRecvMessage(a1, a2);
LABEL_319:
    v4 = v26;
LABEL_372:
    *(a1 + 644) = 0;
    uarpTransmitQueueReclaimEntries(a1, a2);
    uarpTransmitQueueService(a1, a2);
    uarpPlatformGarbageCollection(a1, a2);
  }

  return v4;
}