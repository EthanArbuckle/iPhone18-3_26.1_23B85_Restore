uint64_t _XSetIdleText(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 1065) >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      v8 = v7 <= 0x400 && v6 - 40 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0xFFC) + 40)
      {
        if (memchr(a1 + 10, 0, v6 - 40))
        {
          v9 = a1 + ((v6 + 3) & 0xFFC);
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = a1[3];
            v11 = *(v9 + 36);
            v12[0] = *(v9 + 20);
            v12[1] = v11;
            result = _SBMigSetIdleText(v10, (a1 + 10), v12);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XTagTouchForTypingMenu(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigTagTouchForTypingMenu(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XAcquireFocusPreventingFullScreenPresentationAssertion(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 1)
  {
    v6 = *(a1 + 4);
    if ((v6 - 1081) >= 0xFFFFFBFF)
    {
      if (*(a1 + 38) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_3;
      }

      v7 = *(a1 + 52);
      if (v7 <= 0x400 && v6 - 56 >= v7 && v6 == ((v7 + 3) & 0xFFC) + 56)
      {
        if (!memchr((a1 + 56), 0, v6 - 56))
        {
LABEL_2:
          result = 4294966992;
          goto LABEL_3;
        }

        v8 = ((v6 + 3) & 0xFFC) + a1;
        if (*v8 || *(v8 + 4) < 0x20u)
        {
          result = 4294966987;
        }

        else
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 28);
          v11 = *(v8 + 36);
          v12[0] = *(v8 + 20);
          v12[1] = v11;
          result = _SBMigAcquireFocusPreventingFullScreenPresentationAssertion(v9, a1 + 56, v10, v12);
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetShowsProgress(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetShowsProgress(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetAllApplicationsShowSyncIndicator(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetAllApplicationsShowSyncIndicator(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetShowsOverridesForRecording(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetShowsOverridesForRecording(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XGetWallpaperPreviewSurface(uint64_t result, _DWORD *a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 64)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 64) || *(result + 68) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    a2[8] = v3;
    goto LABEL_10;
  }

  *(a2 + 4) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 48);
  v6 = *(result + 52);
  v7 = *(result + 60);
  v8 = *(result + 28);
  v9 = *(result + 100);
  v10[0] = *(result + 84);
  v10[1] = v9;
  result = _SBMigGetWallpaperPreviewSurface(v4, v5, v7, v8, a2 + 7, v10, v6);
  if (!result)
  {
    *a2 |= 0x80000000;
    a2[1] = 40;
    a2[6] = 1;
    return result;
  }

  a2[8] = result;
LABEL_10:
  *(a2 + 3) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XGetWallpaperPreview(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 1 || *(a1 + 4) != 72)
  {
    v4 = -304;
    goto LABEL_10;
  }

  if (*(a1 + 39) != 1 || *(a1 + 40) != *(a1 + 68))
  {
    v4 = -300;
    goto LABEL_10;
  }

  if (*(a1 + 72) || *(a1 + 76) <= 0x1Fu)
  {
    v4 = -309;
LABEL_10:
    *(a2 + 32) = v4;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  v5 = (a2 + 52);
  *(a2 + 36) = 16777472;
  v6 = a2 + 28;
  v7 = *(a1 + 12);
  v8 = *(a1 + 52);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 28);
  v12 = *(a1 + 40);
  v13 = *(a1 + 108);
  v15[0] = *(a1 + 92);
  v15[1] = v13;
  WallpaperPreview = _SBMigGetWallpaperPreview(v7, v8, v10, v11, v12, v6, v5, v15, v9);
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  if (!WallpaperPreview)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return;
  }

  *(a2 + 32) = WallpaperPreview;
LABEL_11:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

_DWORD *_XSetWallpaperOptionsForLocations(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], v4 - 1113 < 0xFFFFFBFF) || (v5 = result[20], v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 88 >= v5) ? (v7 = v4 == v6 + 88) : (v7 = 0), !v7 || (v4 >= 0x454 ? (v8 = 1108) : (v8 = v4), (result = memchr(result + 21, 0, v8 - 84)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = v3 + ((v4 + 3) & 0xFFC);
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v11 = v3[3];
  v12 = *(v3 + 8);
  v13 = *(v3 + 9);
  v14 = *(v3 + 10);
  v15 = *(v3 + 11);
  v16 = *(v3 + 12);
  v17 = *(v3 + 13);
  v18 = *(v3 + 56);
  v19 = *(v3 + 60);
  v20 = *(v3 + 64);
  v21 = *(v3 + 17);
  v22 = *(v3 + v6 + 84);
  v23 = *(v9 + 36);
  v24[0] = *(v9 + 20);
  v24[1] = v23;
  result = _SBMigSetWallpaperOptionsForLocations(v11, v18, v19, v20, (v3 + 21), v22, (a2 + 36), v24, v12, v13, v14, v15, v16, v17, v21);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XGetBatteryAwakeTime(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v8[0] = *(v3 + 5);
  v8[1] = v6;
  result = _SBMigGetBatteryAwakeTime(v5, a2 + 44, v8);
  *(a2 + 32) = result;
  v7 = *MEMORY[0x1E69E99E0];
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    result = strlen((a2 + 44));
    if ((result + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v7;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = result + 1;
      *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
    }
  }

  return result;
}

_DWORD *_XGetRecentSleepsWakes(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetRecentSleepsWakes(v5, (a2 + 28), (a2 + 52), v7);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetScheduledPowerEvents(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetScheduledPowerEvents(v5, (a2 + 28), (a2 + 52), v7);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetBatteryUsageTimesInSeconds(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetBatteryUsageTimesInSeconds(v5, (a2 + 36), (a2 + 40), (a2 + 44), (a2 + 48), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 52;
  }

  return result;
}

uint64_t SpringBoardUser_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 100068) >= 0xFFFFFFBC && (v5 = _SBMigSpringBoardUser_subsystem[5 * (v4 - 100000) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void SBSOpenDataActivationURL_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "Error opening data activation URL: %d", v3, 8u);
}

void SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SBExternalDisplayLayoutServiceInstanceIdentifierForDisplay(FBSDisplayIdentity *__strong _Nonnull)"];
  [v1 handleFailureInFunction:v0 file:@"SBSExternalDisplayLayout.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"[displayIdentity isExternal]"}];
}

void SBSCreateLayoutServiceEndpointForExternalDisplay_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BSServiceConnectionEndpoint * _Nullable SBSCreateLayoutServiceEndpointForExternalDisplay(FBSDisplayIdentity *__strong _Nonnull)"];
  [v1 handleFailureInFunction:v0 file:@"SBSExternalDisplayLayout.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"[identity isExternal]"}];
}

void __getATXHomeScreenPageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getATXHomeScreenPageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBSFocusModesHomeScreenSettingsRequest.m" lineNumber:18 description:{@"Unable to find class %s", "ATXHomeScreenPage"}];

  __break(1u);
}

void __getATXHomeScreenPageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppPredictionClientLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBSFocusModesHomeScreenSettingsRequest.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void getBYSetupAssistantFinishedDarwinNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBYSetupAssistantFinishedDarwinNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBSBuddyMultitaskingFlow.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getBYSetupAssistantFinishedDarwinNotificationSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SetupAssistantLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBSBuddyMultitaskingFlow.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getDDRResetOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRResetOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SpringBoardLegacyServerUser.m" lineNumber:23 description:{@"Unable to find class %s", "DDRResetOptions"}];

  __break(1u);
}

void EmbeddedDataResetLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmbeddedDataResetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SpringBoardLegacyServerUser.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getDDRResetRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRResetRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SpringBoardLegacyServerUser.m" lineNumber:22 description:{@"Unable to find class %s", "DDRResetRequest"}];

  __break(1u);
}

void __getDDRResetServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDDRResetServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SpringBoardLegacyServerUser.m" lineNumber:21 description:{@"Unable to find class %s", "DDRResetService"}];

  __break(1u);
}

void __SBSDisplayScaleMaskDescription_block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"SBSDisplayScale _SBSDisplayScaleFromSingleBitMask(SBSDisplayScaleMask)"];
  [v1 handleFailureInFunction:v0 file:@"SBSDisplayModeSettings.m" lineNumber:39 description:@"invalid mask"];
}

void ____sb__mainDisplayConfiguration_block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"FBSDisplayConfiguration *__sb__mainDisplayConfiguration(void)_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"_SBSPrefixHelper.m" lineNumber:45 description:@"Must be running in SpringBoard to compute the reference bounds for SpringBoard."];
}

void __getFBDisplayManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBDisplayManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_SBSPrefixHelper.m" lineNumber:19 description:{@"Unable to find class %s", "FBDisplayManager"}];

  __break(1u);
}

void __getFBDisplayManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_SBSPrefixHelper.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void _SBMigAddAlertItemsSuppressionAssertion_cold_1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "_SBXXAddAlertItemsSuppressionAssertion";
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "[SBMig] invalid assertion port sent to %s", &v1, 0xCu);
}

void SBSSystemNotesConnectionSourceDescription_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SBSSystemNotesConnectionSourceDescription(SBSSystemNotesSceneConnectionSource)"];
  [v1 handleFailureInFunction:v0 file:@"SBSSystemNotesSceneConnectionSource.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"source < SBSSystemNotesSceneConnectionSourceCount"}];
}

void SBSSystemNotesCreateReasonDescription_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString * _Nonnull SBSSystemNotesCreateReasonDescription(SBSSystemNotesCreateReason)"];
  [v1 handleFailureInFunction:v0 file:@"SBSSystemNotesCreateReason.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"reason >= SBSSystemNotesCreateReasonInvalid && reason <= SBSSystemNotesCreateReasonCount"}];
}

void SystemStatusLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_SBSSystemStatusSoftLinking.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}

void getSTBackgroundActivityIdentifierBackgroundLocation_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (STBackgroundActivityIdentifierBackgroundLocation) (*)(void))0)()) getSTBackgroundActivityIdentifierBackgroundLocation(void)"];
  [v0 handleFailureInFunction:v1 file:@"_SBSSystemStatusSoftLinking.m" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_STBackgroundActivityIdentifiersDescription_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFStringRef soft_STBackgroundActivityIdentifiersDescription(CFSetRef)"];
  [v0 handleFailureInFunction:v1 file:@"_SBSSystemStatusSoftLinking.m" lineNumber:14 description:{@"%s", dlerror()}];

  __break(1u);
}

void SystemStatusUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SystemStatusUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_SBSSystemStatusSoftLinking.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void soft_STUIBackgroundActivityIdentifiersForStyleOverrides_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFSetRef soft_STUIBackgroundActivityIdentifiersForStyleOverrides(uint64_t)"];
  [v0 handleFailureInFunction:v1 file:@"_SBSSystemStatusSoftLinking.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_STUIStyleOverridesForBackgroundActivityIdentifiers_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t soft_STUIStyleOverridesForBackgroundActivityIdentifiers(CFSetRef)"];
  [v0 handleFailureInFunction:v1 file:@"_SBSSystemStatusSoftLinking.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void SBSAppSwitcherServiceRegister_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "SBSAppSwitcherServiceRegistrationRef SBSAppSwitcherServiceRegister(CFAllocatorRef, CFStringRef, CFStringRef)";
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "%s Required serviceViewControllerClassName", &v1, 0xCu);
}

void SBSAppSwitcherServiceRegister_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "SBSAppSwitcherServiceRegistrationRef SBSAppSwitcherServiceRegister(CFAllocatorRef, CFStringRef, CFStringRef)";
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "%s Required serviceBundleID", &v1, 0xCu);
}

void SBMachChannelHandleEvent_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL SBMachChannelMessageReceived(SBMigService *, __strong dispatch_mach_msg_t, BSAuditToken *__strong)"}];
  [v0 handleFailureInFunction:v1 file:@"SBLegacyServices.m" lineNumber:108 description:@"message must not be nil"];
}

void SBMachChannelHandleEvent_cold_5(int *a1, int a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = BSProcessNameForPID();
  v7[0] = 67109634;
  v7[1] = v5;
  v8 = 2114;
  v9 = v6;
  v10 = 1024;
  v11 = a2;
  _os_log_error_impl(&dword_19169D000, a3, OS_LOG_TYPE_ERROR, "[SBMig] ERROR: No service found for message id %d from caller %{public}@:%d", v7, 0x18u);
}