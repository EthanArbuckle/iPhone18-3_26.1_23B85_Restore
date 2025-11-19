uint64_t uarpPlatformEndpointRescindAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a3)
  {
    return 30;
  }

  v3 = *(a1 + 632);
  if (!v3)
  {
    return 30;
  }

  while (*(v3 + 304) != 1 || *(v3 + 704) != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 30;
    }
  }

  return uarpAssetRescind(a1, a2, *(v3 + 44));
}

uint64_t uarpPlatformEndpointRescindAllAssets(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetRescind(a1, a2, 0xFFFFu);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v5 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xAu, 6u, 1);
    if (v5)
    {

      return uarpTransmitBuffer2(a1, a2, v5);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPauseAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationPause(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointResumeAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationResume(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a4)
  {
    return 30;
  }

  v4 = *(a1 + 632);
  if (!v4)
  {
    return 30;
  }

  while (*(v4 + 304) || *(v4 + 704) != a4)
  {
    v4 = *(v4 + 712);
    if (!v4)
    {
      return 30;
    }
  }

  return uarpSolicitDynamicAsset(a1, a2, a3);
}

uint64_t uarpPlatformEndpointSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (a1 && a2 && a3 && a5)
  {
    return uarpSendVendorSpecific(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformDownstreamEndpointAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  v6 = *(a1 + 680);
  do
  {
    if (!v6)
    {
      *(a1 + 680) = 1;
      return 11;
    }

    v7 = UARPPlatformDownstreamEndpointByID(a1, a2, v6);
    v8 = *(a1 + 680);
    v6 = v8 + 1;
    *(a1 + 680) = v8 + 1;
  }

  while (!v7 || !v8);

  return uarpPlatformDownstreamEndpointReachable(a1, a2, a3, v8);
}

uint64_t uarpPlatformDownstreamEndpointReachable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    result = UARPLayer2RequestBuffer(a1, &v10, 0x20uLL, 43690, 1499);
    if (!result)
    {
      *v10 = a2;
      v9 = v10;
      v10[4] = a4;
      v9[2] = a3;
      v9[3] = 0;
      uarpPlatformDownstreamEndpointAddToList(a1, a2, v9);
      return uarpSendDownstreamEndpointReachable(a1, a2, v10[4]);
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UARPPlatformDownstreamEndpointByDelegate(a1, a2, a3);
  if (!v5)
  {
    return 58;
  }

  v6 = *(v5 + 120);

  return uarpSendDownstreamEndpointUnreachable(a1, a2, v6);
}

uint64_t uarpPlatformDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, a4);
  if (!v6)
  {
    return 58;
  }

  v7 = v6;
  result = uarpSendDownstreamEndpointUnreachable(a1, a2, *(v6 + 8));
  if (!result)
  {
    v9 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v7 + 8));
    UARPLayer2ReturnBuffer(a1, v9, 43690, 1593);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v9 = uarpPlatformDownstreamEndpointFindOnListByDelegate(a1, a2, a3);
  if (!v9)
  {
    return 58;
  }

  v10 = *(v9 + 8);

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, v10, a4, a5);
}

uint64_t uarpPlatformDelegateForDownstreamID(uint64_t a1, uint64_t a2, int a3)
{
  result = UARPPlatformDownstreamEndpointByID(a1, a2, a3);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t uarpPlatformNoFirmwareUpdateAvailable(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Du, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformEndpointDiscoverEndpointIDs(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Fu, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformQueryEndpointComponentDiscovery(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x21u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpPlatformEndpointBulkInfoQuery(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, unsigned int *a6)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        LODWORD(v10) = a5;
        if (a5)
        {
          v11 = a6;
          if (a6)
          {
            v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x23u, (4 * a5 + 16) & 0xFFFC, 1);
            if (v13)
            {
              v14 = v13;
              v15 = v13[3];
              *(v15 + 6) = uarpHtons(a3);
              *(v15 + 8) = *a4;
              *(v15 + 12) = uarpHtonl(v10);
              v16 = (v15 + 16);
              v10 = v10;
              do
              {
                v17 = *v11++;
                *v16++ = uarpHtonl(v17);
                --v10;
              }

              while (v10);

              return uarpTransmitBuffer2(a1, a2, v14);
            }

            else
            {
              return 11;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointBulkInfoResponseAddTLV(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  v8 = *a5;
  v9 = a7 + 8;
  if (a7 + 8 > a4 - v8)
  {
    return 65;
  }

  v15 = (a3 + v8);
  *v15 = uarpHtonl(a6);
  v15[1] = uarpHtonl(a7);
  v16 = a6 + 2001563387;
  if (v16 <= 0x34)
  {
    if (((1 << (a6 - 5)) & 0x10000000000071) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << (a6 - 5)) & 0x4000000080104) != 0)
    {
      goto LABEL_11;
    }

    if (v16 == 1)
    {
      if (a7 != 8)
      {
        return 39;
      }

      goto LABEL_19;
    }
  }

  if (a6 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << a6) & 0x2E1E) != 0)
  {
LABEL_11:
    memcpy(v15 + 2, a8, a7);
    v17 = v9 + v8;
    goto LABEL_12;
  }

  if (((1 << a6) & 0x60) != 0)
  {
    if (a7 == 16)
    {
      v18 = 0uLL;
      uarpVersionEndianSwap(a8, &v18);
      *(v15 + 2) = v18;
      v17 = v8 + 24;
LABEL_12:
      result = 0;
      *a5 = v17;
      return result;
    }

    return 39;
  }

LABEL_13:
  if (a6 == -2001563388)
  {
    if (a7 != 8)
    {
LABEL_15:
      if (a7 == 4)
      {
        v15[2] = uarpHtonl(*a8);
        v17 = v8 + 12;
        goto LABEL_12;
      }

      return 39;
    }

LABEL_19:
    *(v15 + 1) = uarpHtonll(*a8);
    v17 = v8 + 16;
    goto LABEL_12;
  }

  return 10;
}

uint64_t uarpPlatformEndpointBulkInfoResponse(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, const void *a5, unsigned int a6)
{
  result = 30;
  if (a1 && a2 && a4 && a5 && a6)
  {
    v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x25u, (a6 + 12), 1);
    if (v13)
    {
      v14 = v13;
      v15 = v13[3];
      *(v15 + 6) = uarpHtons(a3);
      *(v15 + 8) = *a4;
      memcpy((v15 + 12), a5, a6);

      return uarpTransmitBuffer2(a1, a2, v14);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpRemoteEndpointIDForAsset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 696)) != 0)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpPlatformRemoteDelegateForAssetDelegate(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 696);
    if (v1)
    {
      return *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointForAsset(uint64_t result)
{
  if (result)
  {
    return *(result + 696);
  }

  return result;
}

__n128 uarpPlatformAssetSelectedPayloadInfo(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 452) != -1 && *(a1 + 460) != 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = *(a1 + 468);
    result = *(a1 + 472);
    *(a2 + 4) = result;
    v3 = *(a1 + 500);
    *(a2 + 20) = *(a1 + 492);
    *(a2 + 24) = v3;
  }

  return result;
}

uint64_t uarpAssetQuerySuperBinaryMetaData(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460))
    {
      return *(a2 + 720);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadMetaData(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460) && (v5 = *(a2 + 632)) != 0)
    {
      while (*(v5 + 124) != a3)
      {
        v5 = *(v5 + 176);
        if (!v5)
        {
          return 0;
        }
      }

      return *(v5 + 168);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 30;
  if (a1 && a2)
  {
    if (!a4)
    {
      return 26;
    }

    if (*(a2 + 460))
    {
      v6 = *(a2 + 632);
      if (!v6)
      {
        return 54;
      }

      while (*(v6 + 124) != a3)
      {
        v6 = *(v6 + 176);
        if (!v6)
        {
          return 54;
        }
      }

      *a4 = *(v6 + 4);
      *(a4 + 4) = *(v6 + 8);
      v9 = *(v6 + 36);
      *(a4 + 20) = *(v6 + 28);
      *(a4 + 24) = v9;
      v8 = (v6 + 128);
    }

    else
    {
      if (*(a2 + 452) != a3)
      {
        return 44;
      }

      *a4 = *(a2 + 468);
      *(a4 + 4) = *(a2 + 472);
      v7 = *(a2 + 500);
      *(a4 + 20) = *(a2 + 492);
      *(a4 + 24) = v7;
      v8 = (a2 + 592);
    }

    result = 0;
    *(a4 + 28) = *v8;
  }

  return result;
}

uint64_t uarpPlatformAssetQueryAssetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 44);
    }
  }

  return result;
}

__n128 uarpPlatformAssetQueryAssetVersion(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 52);
      *a2 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxRxPayloadLength(uint64_t a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 4) = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxRxPayloadLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 4);
    }
  }

  return result;
}

uint64_t uarpPlatformGetSupportsBulkInfoQueries(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 50);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformGetUseHostPushModel(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 52);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformConfigureEndpointIDs(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = a4;
        if (a4)
        {
          if (*(a1 + 672))
          {
            uarpPlatformReleaseEndpointIDs(a1);
          }

          v11 = 0;
          result = UARPLayer2RequestBuffer(a1, &v11, 16 * a3, 43690, 2424);
          if (!result)
          {
            v8 = v11;
            *(a1 + 672) = v11;
            *(a1 + 664) = a3;
            v9 = a3;
            do
            {
              v10 = *v7++;
              *v8 = v10;
              v8 += 8;
              --v9;
            }

            while (v9);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformConfigureEndpointTags(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          v9 = *(a1 + 664);
          if (*(a1 + 664))
          {
            for (i = *(a1 + 672); *i != a3; i += 8)
            {
              if (!--v9)
              {
                return 30;
              }
            }

            if (*(i + 1))
            {
              uarpPlatformReleaseEndpointTags(a1, a2, i);
            }

            v12 = 0;
            result = UARPLayer2RequestBuffer(a1, &v12, (4 * a4), 43690, 2486);
            if (!result)
            {
              v11 = 0;
              *(i + 1) = v12;
              i[1] = a4;
              do
              {
                *(*(i + 1) + 4 * v11) = *(a5 + 4 * v11);
                ++v11;
              }

              while (a4 != v11);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void uarpFilepathForRemotePath_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void uarpFilepathForRemotePath_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void uarpFilepathForRemotePath_cold_3(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void mobileAssetCacheFileURLForRemoteURL_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void mobileAssetCacheFileURLForRemoteURL_cold_2(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

void latestMobileAssetCacheFileURL_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_2701F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Checking mobileasset cache file %@", buf, 0xCu);
}

void getSuperBinaryVersionForAsset_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1026;
  v7 = a2;
  _os_log_error_impl(&dword_2701F5000, log, OS_LOG_TYPE_ERROR, "SuperBinary file %{public}@ has invalid length %{public}u", &v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void getSuperBinaryVersionForAsset_cold_2(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_2701F5000, log, OS_LOG_TYPE_ERROR, "Failed to open file %{public}@ with error %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void UARPArrayOfExpiredFiles_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_2701F5000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Checking age of temp file %@", buf, 0xCu);
}

void uarpLogError_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_2701F5000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void uarpLogDebug_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = &uarpLogDebug_logBuffer;
  _os_log_debug_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEBUG, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void uarpLogFault_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_2701F5000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogError_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3(&dword_2701F5000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogDebug_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = &uarpPlatformDarwinLogDebug_logBuffer;
  _os_log_debug_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEBUG, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogFault_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = &uarpPlatformDarwinLogFault_logBuffer;
  _os_log_fault_impl(&dword_2701F5000, log, OS_LOG_TYPE_FAULT, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}