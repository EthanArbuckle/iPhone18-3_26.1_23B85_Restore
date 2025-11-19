id getRTTSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTTSettingsClass_softClass;
  v7 = getRTTSettingsClass_softClass;
  if (!getRTTSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRTTSettingsClass_block_invoke;
    v3[3] = &unk_2783A9718;
    v3[4] = &v4;
    __getRTTSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21ED553F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL SBSpotlightIsVisible()
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v0 = [SBApp windowSceneManager];
  v1 = [v0 connectedWindowScenes];

  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v12 + 1) + 8 * i) homeScreenController];
        v7 = [v6 iconManager];
        v8 = [v7 isShowingPullDownSearch];

        if (v8)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = +[SBSpotlightMultiplexingViewController sharedRemoteSearchViewControllerIfExists];
  v1 = v9;
  if (v9)
  {
    v10 = [v9 _appearState] - 1 < 2;
  }

  else
  {
    v10 = 0;
  }

LABEL_12:

  return v10;
}

id SBLogWorkspace()
{
  if (SBLogWorkspace_onceToken != -1)
  {
    SBLogWorkspace_cold_1();
  }

  v1 = SBLogWorkspace___logObj;

  return v1;
}

uint64_t SBLayoutRoleForIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SBLayoutRolePrimary"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SBLayoutRoleSide"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SBLayoutRoleFloating"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"SBLayoutRoleCenter"])
  {
    v2 = 4;
  }

  else if ([v1 containsString:@"SBLayoutRoleAdditionalSide-"] && (v3 = objc_msgSend(v1, "length"), v3 > objc_msgSend(@"SBLayoutRoleAdditionalSide-", "length")))
  {
    v4 = [v1 substringFromIndex:{objc_msgSend(@"SBLayoutRoleAdditionalSide-", "length")}];
    v2 = [v4 integerValue] + 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL SBLayoutRoleIsValid(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  if (_MergedGlobals_0 != -1)
  {
    SBLayoutRoleMax_cold_1();
  }

  return SBLayoutRoleMax_layoutRoleMax >= a1;
}

id SBLogTransaction()
{
  if (SBLogTransaction_onceToken != -1)
  {
    SBLogTransaction_cold_1();
  }

  v1 = SBLogTransaction___logObj;

  return v1;
}

void sub_21ED57448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ED57620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBLayoutRoleIdentifierForRole(uint64_t a1)
{
  v2 = a1 - 5;
  if (a1 >= 5)
  {
    if (a1 < 5)
    {
      v3 = 0;
    }

    else
    {
      if (SBLayoutRoleAdditionalSideRangeMax_onceToken != -1)
      {
        v6 = a1;
        v5 = a1 - 5;
        __SBLayoutRoleMax_block_invoke_cold_1();
        v2 = v5;
        a1 = v6;
      }

      if (SBLayoutRoleAdditionalSideRangeMax_layoutRoleAdditionalSideRangeMax >= a1)
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", @"SBLayoutRoleAdditionalSide-", v2];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = off_2783C0A60[a1];
  }

  return v3;
}

uint64_t SBLayoutSupportsManyForegroundWindows()
{
  if (SBLayoutSupportsManyForegroundWindows_onceToken != -1)
  {
    SBLayoutSupportsManyForegroundWindows_cold_1();
  }

  return SBLayoutSupportsManyForegroundWindows_sSBLayoutSupportsManyForegroundWindows;
}

__CFString *SBStringForUnlockedEnvironmentMode(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2783BA838[a1];
  }
}

__CFString *SBMainWorkspaceTransitionSourceDescription(unint64_t a1)
{
  if (a1 > 0x4D)
  {
    return @"Invalid";
  }

  else
  {
    return off_2783C1C90[a1];
  }
}

uint64_t _SBAppLayoutContentInspectingPointerFunctionIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  if (a1 && a2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = [v5 configuration];
    if (v7 == [v6 configuration])
    {
      v8 = [v5 centerConfiguration];
      if (v8 == [v6 centerConfiguration])
      {
        v9 = [v5 environment];
        if (v9 == [v6 environment])
        {
          v10 = [v5 isHidden];
          if (v10 == [v6 isHidden])
          {
            v12 = v6[14];
            v13 = v5[14];
            v3 = [v13 isEqual:v12];

            if (!v3)
            {
              goto LABEL_11;
            }

            v14 = [v5 centerItem];
            v15 = [v6 centerItem];
            v16 = BSEqualObjects();

            if (v16)
            {
              v17 = [v5 floatingItem];
              v18 = [v6 floatingItem];
              v19 = BSEqualObjects();

              if (v19)
              {
                v20 = [v5 preferredDisplayOrdinal];
                if (v20 == [v6 preferredDisplayOrdinal])
                {
LABEL_19:
                  v3 = 1;
                  goto LABEL_11;
                }

                v21 = [v5 allItems];
                if ([v21 count])
                {
                }

                else
                {
                  v22 = [v6 allItems];
                  v23 = [v22 count];

                  if (!v23)
                  {
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = 0;
LABEL_11:
  }

  return v3;
}

void *SBSafeCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

__CFString *SBStringFromSwitcherLiveOverlayOrientationPolicy(uint64_t a1)
{
  if ((a1 - 2) > 4)
  {
    return @"None";
  }

  else
  {
    return off_2783BABE8[a1 - 2];
  }
}

void sub_21ED5D478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBLayoutRoleSetForRole(uint64_t a1)
{
  if (a1 < 1)
  {
    goto LABEL_11;
  }

  if (_MergedGlobals_0 != -1)
  {
    SBLayoutRoleMax_cold_1();
  }

  if (SBLayoutRoleMax_layoutRoleMax < a1)
  {
LABEL_11:
    SBLayoutRoleSetForRole_cold_3(a1);
  }

  if (a1 == 1)
  {
    v2 = SBLayoutRoleSetPrimary();
  }

  else
  {
    SBLayoutRoleSetForRole_cold_2(a1, &v4);
    v2 = v4;
  }

  return v2;
}

id SBLayoutRoleSetPrimary()
{
  if (SBLayoutRoleSetPrimary_onceToken != -1)
  {
    SBLayoutRoleSetPrimary_cold_1();
  }

  v1 = SBLayoutRoleSetPrimary___primaryRoles;

  return v1;
}

__CFString *SBLegacyDisplayItemTypeFromType(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_2783AE100[a1];
  }
}

uint64_t SBAppLayoutConfigurationFromMainDisplayLayoutStateSpaceConfiguration(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

uint64_t SBLayoutRoleMax()
{
  if (_MergedGlobals_0 != -1)
  {
    SBLayoutRoleMax_cold_1();
  }

  return SBLayoutRoleMax_layoutRoleMax;
}

void sub_21ED5DDA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBStringFromSwitcherOrientationPolicy(uint64_t a1)
{
  if ((a1 - 2) > 3)
  {
    return @"None";
  }

  else
  {
    return off_2783BABC8[a1 - 2];
  }
}

uint64_t SBTraitsArbiterOrientationActuationEnabledForRole(void *a1)
{
  v1 = SBTraitsArbiterOrientationActuationEnabledForRole_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    SBTraitsArbiterOrientationActuationEnabledForRole_cold_1();
  }

  v3 = [SBTraitsArbiterOrientationActuationEnabledForRole__yetToBeManagedTraitsRoles containsObject:v2];

  return v3 ^ 1u;
}

__CFString *SBLayoutRoleDescription(uint64_t a1)
{
  v2 = a1 - 5;
  if (a1 >= 5)
  {
    if (a1 < 5)
    {
      v3 = @"unknown";
    }

    else
    {
      if (SBLayoutRoleAdditionalSideRangeMax_onceToken != -1)
      {
        v6 = a1;
        v5 = a1 - 5;
        __SBLayoutRoleMax_block_invoke_cold_1();
        v2 = v5;
        a1 = v6;
      }

      if (SBLayoutRoleAdditionalSideRangeMax_layoutRoleAdditionalSideRangeMax >= a1)
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"additional side %ld", v2];
      }

      else
      {
        v3 = @"unknown";
      }
    }
  }

  else
  {
    v3 = off_2783C0A88[a1];
  }

  return v3;
}

id SBMainWorkspaceMapInternalTransitionSourceToExternalTransitionSource(uint64_t a1)
{
  v3 = 0;
  v4 = a1 - 1;
  v5 = MEMORY[0x277D66DE0];
  switch(v4)
  {
    case 0:
      goto LABEL_30;
    case 1:
      v5 = MEMORY[0x277D66E18];
      goto LABEL_30;
    case 2:
      v5 = MEMORY[0x277D66D90];
      goto LABEL_30;
    case 3:
      v5 = MEMORY[0x277D66DF8];
      goto LABEL_30;
    case 4:
      v5 = MEMORY[0x277D66DB0];
      goto LABEL_30;
    case 5:
      v5 = MEMORY[0x277D66DF0];
      goto LABEL_30;
    case 6:
      v5 = MEMORY[0x277D66DE8];
      goto LABEL_30;
    case 7:
      v5 = MEMORY[0x277D66E10];
      goto LABEL_30;
    case 10:
    case 11:
      v5 = MEMORY[0x277D66E20];
      goto LABEL_30;
    case 12:
      v5 = MEMORY[0x277D66DC0];
      goto LABEL_30;
    case 14:
      v5 = MEMORY[0x277D66DA0];
      goto LABEL_30;
    case 15:
      v5 = MEMORY[0x277D66DA8];
      goto LABEL_30;
    case 17:
      v5 = MEMORY[0x277D66D60];
      goto LABEL_30;
    case 18:
      v5 = MEMORY[0x277D66E28];
      goto LABEL_30;
    case 23:
      v5 = MEMORY[0x277D66DD0];
      goto LABEL_30;
    case 24:
      v5 = MEMORY[0x277D66DD8];
      goto LABEL_30;
    case 25:
      v5 = MEMORY[0x277D66DC8];
      goto LABEL_30;
    case 31:
      v5 = MEMORY[0x277D66D40];
      goto LABEL_30;
    case 33:
      v5 = MEMORY[0x277D66DB8];
      goto LABEL_30;
    case 34:
      v5 = MEMORY[0x277D66E08];
      goto LABEL_30;
    case 36:
      v5 = MEMORY[0x277D66D98];
      goto LABEL_30;
    case 37:
      v5 = MEMORY[0x277D66D68];
      goto LABEL_30;
    case 38:
      v5 = MEMORY[0x277D66D88];
      goto LABEL_30;
    case 39:
      v5 = MEMORY[0x277D66D70];
      goto LABEL_30;
    case 40:
      v5 = MEMORY[0x277D66D78];
      goto LABEL_30;
    case 41:
      v5 = MEMORY[0x277D66D80];
      goto LABEL_30;
    case 66:
      v5 = MEMORY[0x277D66D38];
      goto LABEL_30;
    case 69:
      v5 = MEMORY[0x277D66D48];
      goto LABEL_30;
    case 70:
      v5 = MEMORY[0x277D66D50];
LABEL_30:
      v3 = *v5;
      break;
    default:
      break;
  }

  return v3;
}

__CFString *NSStringFromSBWorkspaceSceneLayoutTransitionOptions(char a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:@"noSceneChanges"];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:@"beginImmediately"];
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v3 addObject:@"finishImmediately"];
  if ((a1 & 8) != 0)
  {
LABEL_5:
    [v3 addObject:@"noContinuation"];
  }

LABEL_6:
  if ([v3 count] < 2)
  {
    if ([v3 count] == 1)
    {
      v6 = [v3 firstObject];
    }

    else
    {
      v6 = @"default";
    }
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 componentsJoinedByString:{@", "}];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
  }

  return v6;
}

uint64_t SBLayoutRoleIsValidForSplitView(uint64_t a1)
{
  if (SBLayoutRoleIsValidForSplitView_onceToken != -1)
  {
    SBLayoutRoleIsValidForSplitView_cold_1();
  }

  v2 = SBLayoutRoleIsValidForSplitView___splitViewRoles;

  return [v2 containsRole:a1];
}

id MethodCacheDispatchDataForSelectorIndex(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);
  if (v5)
  {
LABEL_6:
    v10 = (*(a1 + 64))(a1);
    if (v10)
    {
      v11 = v10[4];
      if (v11 && (MethodImplementation = *(v11 + 8 * a2)) != 0)
      {
        v9 = v10[1];
        if (v5)
        {
          return v9;
        }
      }

      else
      {
        v9 = MethodCacheDispatchDataForSelectorIndex();
        MethodImplementation = v13;
        if (v5)
        {
          return v9;
        }
      }
    }

    else
    {
      v9 = [*(a1 + 8) delegate];
      v14 = objc_opt_class();
      MethodImplementation = class_getMethodImplementation(v14, *(*(a1 + 16) + 8 * a2));
      if (v9)
      {
        if (v5)
        {
          return v9;
        }
      }

      else
      {
        MethodCacheDispatchDataForSelectorIndex_cold_1((a1 + 16), a2);
        if (v5)
        {
          return v9;
        }
      }
    }

    v15 = (*(a1 + 56) + 16 * a2);
    *v15 = v9;
    v15[1] = MethodImplementation;
    return v9;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  if (*(v4 + 8) != v6)
  {
    bzero(v7, 16 * *(a1 + 24));
    *(a1 + 40) = *(*(a1 + 48) + 8);
    goto LABEL_6;
  }

  v8 = &v7[16 * a2];
  if (!*(v8 + 1))
  {
    goto LABEL_6;
  }

  return *v8;
}

id PreviousContextMethodCacheForMethodCache(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 64);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t __blockIMPFromContextSignature13_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t _SBDeviceApplicationSceneStatusBarStateObserverFlagsForObserver(void *a1)
{
  v1 = a1;
  v2 = objc_opt_respondsToSelector();
  if (objc_opt_respondsToSelector())
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFE | v2 & 1;
  if (objc_opt_respondsToSelector())
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  if (objc_opt_respondsToSelector())
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = 64;
  }

  else
  {
    v9 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = 128;
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 | v9;
  if (objc_opt_respondsToSelector())
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = 32;
  }

  else
  {
    v14 = 0;
  }

  return v7 | v11 | v10 | v12 | v14;
}

void SBTraitsSceneParticipantDelegateOrientationChangeInspector(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v33 = a1;
  v9 = a2;
  if (!a5)
  {
    SBTraitsSceneParticipantDelegateOrientationChangeInspector_cold_1();
  }

  v10 = v9;
  *a5 = 0;
  v11 = [v9 currentSettings];
  v12 = [v11 orientationSettings];

  v32 = v10;
  v13 = [v10 previousSettings];
  v14 = [v13 orientationSettings];

  v15 = [v33 settings];
  v29 = [v15 interfaceOrientation];

  v31 = [v14 orientation];
  v16 = [v12 orientationMapResolver];
  v17 = [v12 validatedOrientationInputs];
  v30 = [v17 currentDeviceOrientation];

  v18 = [v14 validatedOrientationInputs];
  v19 = [v18 currentDeviceOrientation];

  v20 = [v14 orientationMapResolver];
  if (v33)
  {
    v21 = [v33 uiSettings];
    [v21 interfaceOrientationMapResolver];
    v23 = v22 = a4;

    v19 = [v21 deviceOrientation];
    v20 = v23;
    a4 = v22;
  }

  if (a3)
  {
    *a3 = [v12 orientation];
    v24 = v32;
    if (a4)
    {
      v25 = v31;
      v26 = v29;
      if (!v31)
      {
        v26 = 0;
      }

      *a4 = v26;
      v27 = *a5 | (2 * (*a3 != v26));
      goto LABEL_14;
    }

LABEL_13:
    v27 = *a5;
    v25 = v31;
    goto LABEL_14;
  }

  v24 = v32;
  if (!a4)
  {
    goto LABEL_13;
  }

  v25 = v31;
  v28 = v29;
  if (!v31)
  {
    v28 = 0;
  }

  *a4 = v28;
  v27 = *a5;
LABEL_14:
  *a5 = (v25 == 0) | (8 * (v20 != v16)) | (4 * (v19 != v30)) | v27;
}

uint64_t SBMainWorkspaceTransitionSourceIsUserEventDriven(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 11:
    case 14:
    case 15:
    case 18:
    case 19:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 31:
    case 33:
    case 34:
    case 49:
    case 50:
    case 53:
    case 54:
    case 59:
    case 62:
    case 64:
    case 65:
    case 66:
    case 69:
    case 76:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

id SBLogTransactionVerbose()
{
  if (SBLogTransactionVerbose_onceToken != -1)
  {
    SBLogTransactionVerbose_cold_1();
  }

  v1 = SBLogTransactionVerbose___logObj;

  return v1;
}

void sub_21ED62B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id location)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&a47);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21ED63584(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t SBSDisplayLayoutRoleForLayoutRole(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 1) >= 2)
  {
    if (a1 < 5)
    {
      goto LABEL_9;
    }

    if (SBLayoutRoleAdditionalSideRangeMax_onceToken != -1)
    {
      __SBLayoutRoleMax_block_invoke_cold_1();
    }

    if (SBLayoutRoleAdditionalSideRangeMax_layoutRoleAdditionalSideRangeMax < v1)
    {
      goto LABEL_9;
    }

    if (_MergedGlobals_0 != -1)
    {
      SBLayoutRoleMax_cold_1();
    }

    if (SBLayoutRoleMax_layoutRoleMax >= v1)
    {
      v2 = 10;
      if (v1 != 6)
      {
        v2 = 0;
      }

      v3 = v1 == 5;
      v4 = 9;
    }

    else
    {
LABEL_9:
      v2 = 8 * (v1 == 4);
      v3 = v1 == 3;
      v4 = 7;
    }

    if (v3)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  return v1;
}

id SBLogPointer()
{
  if (SBLogPointer_onceToken != -1)
  {
    SBLogPointer_cold_1();
  }

  v1 = SBLogPointer___logObj;

  return v1;
}

uint64_t SBApplicationMightHaveTransparentBackground(void *a1)
{
  v1 = [a1 application];
  v2 = [v1 info];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v2 backgroundStyle])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 canChangeBackgroundStyle];
  }

  return v3;
}

uint64_t _SBStatusBarLegacyStyleFromStyle(uint64_t a1)
{
  if (a1 == 2)
  {
    return 3;
  }

  else
  {
    return a1 == 1;
  }
}

id SBLogAppStatusBars()
{
  if (SBLogAppStatusBars_onceToken != -1)
  {
    SBLogAppStatusBars_cold_1();
  }

  v1 = SBLogAppStatusBars___logObj;

  return v1;
}

id SBLogAppSwitcher()
{
  if (SBLogAppSwitcher_onceToken != -1)
  {
    SBLogAppSwitcher_cold_1();
  }

  v1 = SBLogAppSwitcher___logObj;

  return v1;
}

uint64_t __blockIMPFromQuerySignature51_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = MethodCacheDispatchDataForSelectorIndex(v4, v5);
  v9 = v8(v7, *(a1 + 40), v6);

  return v9;
}

uint64_t __blockIMPFromQuerySignature16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t SBWindowControlsLayoutMake@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  return result;
}

double SBScreenScale()
{
  v0 = *&__screenScale;
  if (*&__screenScale < 0.0)
  {
    v1 = SBLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_INFO, "Reading screen scale static before it has been initialized", v5, 2u);
    }

    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 scale];
    v0 = v3;
  }

  return v0;
}

id SBLogSystemApertureController()
{
  if (SBLogSystemApertureController_onceToken != -1)
  {
    SBLogSystemApertureController_cold_1();
  }

  v1 = SBLogSystemApertureController___logObj;

  return v1;
}

id SBLogHomeAffordance()
{
  if (SBLogHomeAffordance_onceToken != -1)
  {
    SBLogHomeAffordance_cold_1();
  }

  v1 = SBLogHomeAffordance___logObj;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x223D6F7F0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__84(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__85(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__86(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__87(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__89(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__91(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__92(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__93(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__95(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__107(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__109(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__110(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__111(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__112(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__113(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__116(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__117(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__118(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__120(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__121(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__122(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__123(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__124(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__125(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__126(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__127(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__128(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__129(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__130(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__131(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__133(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__135(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__136(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__137(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__139(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__143(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__145(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__146(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__149(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SBSetMinimumBrightnessLevel(int a1, __n128 a2, __n128 a3)
{
  v3 = a2.n128_u32[0];
  v4 = 0.0;
  if (a1)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        v4 = 0.5;
      }

      else
      {
        v4 = 0.4;
      }
    }

    else
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      if ([v5 userInterfaceIdiom] == 1)
      {
        v4 = 0.5;
      }

      else
      {
        v4 = 0.4;
      }
    }
  }

  a2.n128_u32[0] = v3;
  a3.n128_f32[0] = v4;

  return MEMORY[0x282143510](a2, a3);
}

id SBPIPApplicationForProcessIdentifier(void *a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 pictureInPictureApplications];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 processIdentifier] == a2)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_21ED6CE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBLogAlertItems()
{
  if (SBLogAlertItems_onceToken != -1)
  {
    SBLogAlertItems_cold_1();
  }

  v1 = SBLogAlertItems___logObj;

  return v1;
}

BOOL SBApplicationClassicModeExpectsRoundedCorners(uint64_t a1)
{
  result = 1;
  v3 = a1 + 1;
  if (v3 <= 0x11)
  {
    if (((1 << v3) & 0x3803D) != 0)
    {
      return 0;
    }

    else if (v3 == 1)
    {
      return SBFEffectiveHomeButtonType() == 2;
    }
  }

  return result;
}

void SBSetShouldRasterizeLayer(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (*&__screenScale == -1.0)
  {
    SBSetShouldRasterizeLayer_cold_1(&v6);
    v3 = v4;
  }

  [v3 setRasterizationScale:v4];
  [v5 setShouldRasterize:a2];
}

uint64_t SBStatusBarIsSpeakeasy()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

id SBLogScreenTime()
{
  if (SBLogScreenTime_onceToken != -1)
  {
    SBLogScreenTime_cold_1();
  }

  v1 = SBLogScreenTime___logObj;

  return v1;
}

__CFString *NSStringFromFullScreenLiveContentOverlayType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_2783C11F8[a1 - 1];
  }
}

id NextQueryMethodCacheForMethodCache(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 72);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t SBSwitcherAsyncRenderingAttributesMake(unsigned int a1, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 | a1;
}

uint64_t __blockIMPFromQuerySignature22_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature96_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12)
{
  v23 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v25 = v24;
  v26 = *(a1 + 40);
  v27.n128_f64[0] = a8;
  v28.n128_f64[0] = a9;
  v29.n128_f64[0] = a10;
  v30.n128_f64[0] = a11;
  v31.n128_f64[0] = a12;

  return v25(v23, v26, a3, a4, a5, a6, a7, v27, v28, v29, v30, v31);
}

uint64_t __blockIMPFromContextSignature0_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

id SBLogSystemGestureDetail()
{
  if (SBLogSystemGestureDetail_onceToken != -1)
  {
    SBLogSystemGestureDetail_cold_1();
  }

  v1 = SBLogSystemGestureDetail___logObj;

  return v1;
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__124(uint64_t a1)
{
}

{
}

id SBLogAppProtection()
{
  if (SBLogAppProtection_onceToken != -1)
  {
    SBLogAppProtection_cold_1();
  }

  v1 = SBLogAppProtection___logObj;

  return v1;
}

void sub_21ED71520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ED71A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SBWhitePointAdaptationInteractiveUpdateTimingFunction()
{
  v0 = +[SBHarmonyController sharedInstance];
  v1 = [v0 harmonySettings];

  v2 = MEMORY[0x277CD9EF8];
  v3 = [v1 whitePointAdaptationInteractiveUpdateTimingFunctionName];
  v4 = [v2 functionWithName:v3];

  return v4;
}

double SBSampleValueWithWhitePointAdaptationInteractiveUpdateTimingFunction(double a1)
{
  v2 = _SBWhitePointAdaptationInteractiveUpdateTimingFunction();
  v4 = v2;
  if (v2)
  {
    *&v3 = a1;
    [v2 _solveForInput:v3];
    a1 = v5;
  }

  return a1;
}

id SBLogTelemetrySignposts()
{
  if (SBLogTelemetrySignposts_onceToken != -1)
  {
    SBLogTelemetrySignposts_cold_1();
  }

  v1 = SBLogTelemetrySignposts___logObj;

  return v1;
}

void sub_21ED746DC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2C8], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Unwind_Resume(a1);
}

uint64_t __blockIMPFromQuerySignature1_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature55_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t _SBStatusBarStyleFromLegacyStyle(uint64_t result)
{
  if (result != 1)
  {
    if (result == 3)
    {
      return 2;
    }

    else if (dyld_program_sdk_at_least())
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void sub_21ED75A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t _SB_UIEdgeInsetsRotateFromPortraitToOrientation(uint64_t result)
{
  if ((result - 2) <= 2)
  {
    return UIEdgeInsetsRotate();
  }

  return result;
}

uint64_t __blockIMPFromQuerySignature43_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

id SBLogContinuitySession()
{
  if (SBLogContinuitySession_onceToken != -1)
  {
    SBLogContinuitySession_cold_1();
  }

  v1 = SBLogContinuitySession___logObj;

  return v1;
}

uint64_t SBAnalyticsLayoutLocationForDisplayLayoutElements(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a1;
  v1 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v1)
  {
    v19 = 0;
    v17 = 0;
    v15 = 0;
    v21 = 0;
    v2 = 0;
    v3 = *v24;
    v4 = *MEMORY[0x277D67490];
    v5 = *MEMORY[0x277D67480];
    v6 = *MEMORY[0x277D66F20];
    v20 = *MEMORY[0x277D66F68];
    v18 = *MEMORY[0x277D66F58];
    v16 = *MEMORY[0x277D0ABA0];
    v14 = *MEMORY[0x277D66F10];
    do
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:v4];
        v10 = [v9 BOOLValue];

        v11 = [v8 objectForKeyedSubscript:v5];
        if ([v11 isEqualToString:v6])
        {
          v21 = 1;
        }

        else if ([v11 isEqualToString:v20])
        {
          v19 = 1;
        }

        else if ([v11 isEqualToString:v18])
        {
          LOBYTE(v17) = 1;
        }

        else if ([v11 isEqualToString:v16])
        {
          v15 = 1;
        }

        else
        {
          HIDWORD(v17) |= [v11 isEqualToString:v14];
        }

        v2 |= v10;
      }

      v1 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v1);
    if ((v15 | HIDWORD(v17)))
    {
      v12 = 6;
      if (v15)
      {
        v12 = 3;
      }
    }

    else
    {
      if ((v17 & 1) == 0)
      {
        v12 = 4;
LABEL_25:
        if (v21)
        {
          if ((v19 & 1) == 0)
          {
            v1 = 1;
            if ((v2 & 1) == 0)
            {
              goto LABEL_34;
            }

            goto LABEL_33;
          }
        }

        else if ((v19 & 1) == 0)
        {
          v1 = 0;
          if ((v2 & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

        if ((v2 & 1) == 0)
        {
          v1 = 2;
          goto LABEL_34;
        }

LABEL_33:
        v1 = v12;
        goto LABEL_34;
      }

      v12 = 5;
    }

    v2 = 1;
    goto LABEL_25;
  }

LABEL_34:

  return v1;
}

uint64_t __blockIMPFromContextSignature17_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

__CFString *SBStringForSpaceConfiguration(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_2783BA7B0[a1];
  }
}

__CFString *NSStringFromSBSwitcherModifierEventType(uint64_t a1)
{
  if ((a1 - 1) > 0x2B)
  {
    return @"InitialSetup";
  }

  else
  {
    return off_2783BFDB0[a1 - 1];
  }
}

uint64_t __blockIMPFromQuerySignature4_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

void sub_21ED7859C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3E8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Unwind_Resume(a1);
}

void sub_21ED7879C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ED789D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ED78FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __blockIMPFromQuerySignature0_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromContextSignature18_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromContextSignature3_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

id SBAppendChainableModifierResponse(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = a1;
    v6 = [objc_opt_class() responseByAppendingResponse:v5 toResponse:v4];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

void sub_21ED79FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __blockIMPFromContextSignature1_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromContextSignature16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

void sub_21ED7AE18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_21ED7B004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __blockIMPFromContextSignature5_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

void sub_21ED7B9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21ED7CBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x3Au);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x3Au);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_6()
{

  return NSRequestConcreteImplementation();
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_0_17(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_21(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_0_22(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

double OUTLINED_FUNCTION_0_28()
{
  v2 = *(v0 + 176);
  *(v1 - 96) = *(v0 + 160);
  *(v1 - 80) = v2;
  *(v1 - 64) = *(v0 + 192);
  *(v1 - 48) = *(v0 + 208);
  *(v1 - 128) = *(v0 + 96);
  *(v1 - 112) = *(v0 + 112);
  return *(v0 + 64);
}

void OUTLINED_FUNCTION_0_30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_34(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id *OUTLINED_FUNCTION_0_37(id *a1, void *a2)
{

  return [(SBKeyboardFocusLockReason *)a1 _initReasonWithName:a2 strength:2 avoidOverridingAppFocusOnOtherDisplays:0];
}

uint64_t OUTLINED_FUNCTION_0_45(uint64_t result, float a2)
{
  *(v3 - 176) = a2;
  *(v3 - 172) = v2;
  *(v3 - 168) = 2114;
  *(v3 - 166) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_49()
{

  return [v0 _applyButtonState:v1 animated:1];
}

void OUTLINED_FUNCTION_0_51(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &buf, 0x26u);
}

uint64_t OUTLINED_FUNCTION_0_58()
{

  return [v0 state];
}

void sub_21ED7D7CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SBLogSwitcherSnapshotCache()
{
  if (SBLogSwitcherSnapshotCache_onceToken != -1)
  {
    SBLogSwitcherSnapshotCache_cold_1();
  }

  v1 = SBLogSwitcherSnapshotCache___logObj;

  return v1;
}

id SBDisplayItemDescendingZOrderComparator(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __SBDisplayItemDescendingZOrderComparator_block_invoke;
  v5[3] = &unk_2783B5770;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x223D6F7F0](v5);

  return v3;
}

uint64_t __blockIMPFromQuerySignature47_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature11_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature9_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature12_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromContextSignature14_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromContextSignature8_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

double __blockIMPFromQuerySignature77_block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v11 = v10(v9, *(a1 + 40), v8, a4);

  return v11;
}

uint64_t __blockIMPFromQuerySignature61_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v15 = v14;
  v16 = *(a1 + 40);
  v17.n128_f64[0] = a4;
  v18.n128_f64[0] = a5;
  v19.n128_f64[0] = a6;
  v20.n128_f64[0] = a7;

  return v15(v13, v16, a3, v17, v18, v19, v20);
}

uint64_t __blockIMPFromQuerySignature7_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature18_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature2_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature62_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v17 = v16;
  v18 = *(a1 + 40);
  v19.n128_f64[0] = a5;
  v20.n128_f64[0] = a6;
  v21.n128_f64[0] = a7;
  v22.n128_f64[0] = a8;

  return v17(v15, v18, a3, a4, v19, v20, v21, v22);
}

uint64_t __blockIMPFromQuerySignature23_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature58_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

id SBLayoutRoleSetBuilder(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CCAB58] indexSet];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __SBLayoutRoleSetBuilder_block_invoke;
    v7[3] = &unk_2783ACA48;
    v3 = v2;
    v8 = v3;
    v1[2](v1, v7);
    if ([v3 count])
    {
      v4 = [v3 copy];

      if (v4)
      {
        v5 = [[SBLayoutRoleSet alloc] _initWithRoles:v4];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v5 = SBLayoutRoleSetNone();
LABEL_7:

  return v5;
}

id SBLayoutRoleSetNone()
{
  if (SBLayoutRoleSetNone_onceToken != -1)
  {
    SBLayoutRoleSetNone_cold_1();
  }

  v1 = SBLayoutRoleSetNone___noRoles;

  return v1;
}

uint64_t __blockIMPFromQuerySignature3_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromContextSignature22_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature98_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a2 + 16);
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = MethodCacheDispatchDataForSelectorIndex(v6, v7);
  v11 = v10(v9, *(a1 + 40), a3, v8);

  return v11;
}

uint64_t __blockIMPFromQuerySignature41_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature84_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v17 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v19 = v18;
  v20 = *(a1 + 40);
  v21.n128_f64[0] = a6;
  v22.n128_f64[0] = a7;
  v23.n128_f64[0] = a8;
  v24.n128_f64[0] = a9;

  return v19(v17, v20, a3, a4, a5, v21, v22, v23, v24);
}

uint64_t __blockIMPFromQuerySignature67_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v17 = v16;
  v18 = *(a1 + 40);
  v19.n128_f64[0] = a5;
  v20.n128_f64[0] = a6;
  v21.n128_f64[0] = a7;
  v22.n128_f64[0] = a8;

  return v17(v15, v18, a3, a4, v19, v20, v21, v22);
}

uint64_t __blockIMPFromQuerySignature68_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature35_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature57_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature34_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature78_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t SBSwitcherWallpaperGradientAttributesEqual()
{
  result = BSFloatEqualToFloat();
  if (result)
  {

    return BSFloatEqualToFloat();
  }

  return result;
}

void OUTLINED_FUNCTION_4_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x3Au);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_3_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t OUTLINED_FUNCTION_1_12()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

__n128 OUTLINED_FUNCTION_1_15()
{
  v2 = *(v0 + 176);
  *(v1 - 96) = *(v0 + 160);
  *(v1 - 80) = v2;
  result = *(v0 + 192);
  *(v1 - 64) = result;
  *(v1 - 48) = *(v0 + 208);
  return result;
}

id *OUTLINED_FUNCTION_1_19(id *a1, void *a2)
{

  return [(SBKeyboardFocusLockReason *)a1 _initReasonWithName:a2 strength:1 avoidOverridingAppFocusOnOtherDisplays:0];
}

void OUTLINED_FUNCTION_1_21(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 144), 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t result, float a2)
{
  *(v3 - 224) = a2;
  *(v3 - 220) = v2;
  *(v3 - 216) = 2114;
  *(v3 - 214) = result;
  return result;
}

void OUTLINED_FUNCTION_1_29(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x16u);
}

double OUTLINED_FUNCTION_1_30()
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;

  return CGRectGetMaxY(*&v5);
}

void OUTLINED_FUNCTION_1_36(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

double __blockIMPFromQuerySignature75_block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v12 = *(a2 + 16);
  v13 = *(a1 + 32);
  v14 = a3;
  v15 = MethodCacheDispatchDataForSelectorIndex(v12, v13);
  v17 = v16(v15, *(a1 + 40), v14, a4, a5, a6, a7);

  return v17;
}

double __blockIMPFromQuerySignature76_block_invoke(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v10 = a3;
  v11 = MethodCacheDispatchDataForSelectorIndex(v9, v8);
  v13 = v12(v11, *(a1 + 40), v10, a4, a5);

  return v13;
}

uint64_t __blockIMPFromQuerySignature83_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);
  v11.n128_f64[0] = a4;

  return v9(v7, v10, a3, v11);
}

uint64_t __blockIMPFromQuerySignature45_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v7 = v6;
  v8 = *(a1 + 40);

  return v7(v5, v8, a3);
}

uint64_t __blockIMPFromQuerySignature52_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature44_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature56_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v11 = v10;
  v12 = *(a1 + 40);

  return v11(v9, v12, a3, a4, a5);
}

uint64_t __blockIMPFromQuerySignature29_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

uint64_t __blockIMPFromQuerySignature13_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

uint64_t __blockIMPFromQuerySignature8_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

id SBLayoutRoleSetAll()
{
  if (SBLayoutRoleSetAll_onceToken != -1)
  {
    SBLayoutRoleSetAll_cold_1();
  }

  v1 = qword_281250828;

  return v1;
}

uint64_t __blockIMPFromQuerySignature5_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

id SBLogUIController()
{
  if (SBLogUIController_onceToken != -1)
  {
    SBLogUIController_cold_1();
  }

  v1 = SBLogUIController___logObj;

  return v1;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return objc_opt_class();
}

uint64_t OUTLINED_FUNCTION_3_7()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_3_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_3_9(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_3_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0x16u);
}

BOOL OUTLINED_FUNCTION_3_12(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_3_13(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1)
{
  v2 = *(*(*a1 + 8) + 40);

  return [v2 queryIteration];
}

uint64_t OUTLINED_FUNCTION_3_28(uint64_t a1)
{

  return [v2 initWithPhysicalButtonConfiguration:v3 generation:v4 identifier:a1 scene:v1];
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_2_22(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

double OUTLINED_FUNCTION_2_27@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  result = *(a1 + a2);
  *(v2 + a2) = result;
  return result;
}

void OUTLINED_FUNCTION_2_28(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

CGAffineTransform *OUTLINED_FUNCTION_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGAffineTransform *t2, CGAffineTransform *t1, CGAffineTransform *a7, __n128 a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t t2a, uint64_t t2_8, uint64_t t2_16, uint64_t t2_24, __n128 t2_32, uint64_t t1a, uint64_t t1_8, uint64_t t1_16, uint64_t t1_24, uint64_t t1_32, uint64_t t1_40, uint64_t a25)
{
  t2_32 = a8;

  return CGAffineTransformConcat(&a25, &t1a, &t2a);
}

uint64_t OUTLINED_FUNCTION_2_29(uint64_t result, float a2)
{
  *(v3 - 144) = a2;
  *(v2 + 4) = result;
  return result;
}

void OUTLINED_FUNCTION_2_39(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void OUTLINED_FUNCTION_7_3(int a1@<W0>, uint64_t a2@<X8>)
{
  v6 = *&v2[a2];
  if (!a1)
  {
    v6 = v6 * v5;
  }

  [(SBRecordingIndicatorViewController *)v2 _updateIndicatorViewSize:v6 alpha:v4];
}

void OUTLINED_FUNCTION_7_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 224), 0x12u);
}

__CFString *NSStringFromSBKeyboardFocusAdviceAcceptancePolicy(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%d)", a1];
  }

  else
  {
    v2 = off_2783C2BA0[a1];
  }

  return v2;
}

id SBLogClassicMode()
{
  if (SBLogClassicMode_onceToken != -1)
  {
    SBLogClassicMode_cold_1();
  }

  v1 = SBLogClassicMode___logObj;

  return v1;
}

uint64_t SBHomeGestureEnabled()
{
  v0 = +[SBPlatformController sharedInstance];
  v1 = [v0 isHomeGestureEnabled];

  return v1;
}

__CFString *SBHomeScreenBackdropMaterialRecipeName()
{
  if (SBHomeGestureEnabled())
  {
    v0 = @"homeScreenBackdrop-application";
  }

  else
  {
    v0 = @"homeScreenBackdrop-switcher";
  }

  return v0;
}

void sub_21ED89774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21ED89E68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t __blockIMPFromQuerySignature6_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

__CFString *SBWindowSceneStatusBarSettingsLevelDescription(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return @"invalid";
  }

  else
  {
    return off_2783C0DF0[a1];
  }
}

void sub_21ED8B45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __blockIMPFromQuerySignature80_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

id SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState()
{
  v0 = [SBApp windowSceneManager];
  v1 = [v0 activeDisplayWindowScene];

  v2 = [v1 switcherController];
  v3 = [v2 layoutStateApplicationSceneHandles];

  v4 = +[SBCoverSheetPresentationManager sharedInstanceIfExists];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 coverSheetHostedAppSceneHandle];
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB98] setWithObject:v6];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v3 count];
    v10 = [v7 count];
    if (v9 | v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x277CBEB58] set];
      v8 = v12;
      if (v9)
      {
        [v12 unionSet:v3];
      }

      if (v11)
      {
        [v8 unionSet:v7];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __blockIMPFromContextSignature6_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 24), *(a1 + 32));
  v5 = v4;
  v6 = *(a1 + 40);

  return v5(v3, v6);
}

void sub_21ED8DDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 OUTLINED_FUNCTION_5_3()
{
  *(v1 - 128) = *(v0 + 96);
  *(v1 - 112) = *(v0 + 112);
  return *(v0 + 120);
}

void OUTLINED_FUNCTION_5_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

double SBScreenDisplayCornerRadius()
{
  v0 = *&__screenDisplayCornerRadius;
  if (*&__screenDisplayCornerRadius < 0.0)
  {
    v1 = SBLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_21ED4E000, v1, OS_LOG_TYPE_INFO, "Reading screen display corner radius static before it has been initialized", v6, 2u);
    }

    v2 = [MEMORY[0x277D759A0] mainScreen];
    v3 = [v2 traitCollection];
    [v3 displayCornerRadius];
    v0 = v4;
  }

  return v0;
}

void sub_21ED903EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBDefaultBackgroundColorForAppScene(int a1)
{
  if (_UISceneLiveResizeTransparentTearingEnabled())
  {
    v2 = [MEMORY[0x277D75348] clearColor];
  }

  else if (a1)
  {
    v2 = [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_21ED90F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBLogIcon()
{
  if (SBLogIcon_onceToken != -1)
  {
    SBLogIcon_cold_1();
  }

  v1 = SBLogIcon___logObj;

  return v1;
}

void sub_21ED91874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBIdleTimerIntervalToNSString(double a1)
{
  if (BSFloatEqualToFloat())
  {
    v2 = @"<never>";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g", *&a1];
  }

  return v2;
}

uint64_t SBWorkspaceSpringBoardIsActive()
{
  v0 = [SBApp windowSceneManager];
  v1 = [v0 activeDisplayWindowScene];
  IsActive = SBWorkspaceLauncherIsActive(v1, 0);

  return IsActive;
}

uint64_t SBWorkspaceLauncherIsActive(void *a1, char a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = 1;
    }

    else
    {
      v8 = [v3 transientOverlayPresenter];
      v5 = [v8 hasActivePresentation] ^ 1;
    }

    v9 = [v4 switcherController];
    v10 = [v9 layoutStatePrimaryElement];
    v11 = [v10 workspaceEntity];
    v12 = [v11 applicationSceneEntity];
    v13 = [v12 sceneHandle];

    v14 = [v4 uiLockStateProvider];
    v15 = [v14 isUILocked];

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v5;
    }

    v7 = v16 & (v15 ^ 1u);
  }

  else
  {
    v6 = SBLogWorkspace();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      SBWorkspaceLauncherIsActive_cold_1();
    }

    v7 = 0;
  }

  return v7;
}

void sub_21ED93F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBLogSystemAperturePreferencesStack()
{
  if (SBLogSystemAperturePreferencesStack_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStack_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStack___logObj;

  return v1;
}

id SBLogSystemApertureMediation()
{
  if (SBLogSystemApertureMediation_onceToken != -1)
  {
    SBLogSystemApertureMediation_cold_1();
  }

  v1 = SBLogSystemApertureMediation___logObj;

  return v1;
}

void _SBAppendTimeIntervalToFormatter(void *a1, void *a2, double a3)
{
  v7 = a1;
  v5 = a2;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v6 = [v7 appendTimeInterval:v5 withName:0 decomposeUnits:a3];
  }
}

void sub_21ED96774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 88));
  _Unwind_Resume(a1);
}

void SBSALogDictionaryDescribableDebug(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __SBSALogDictionaryDescribableDebug_block_invoke;
    v9[3] = &unk_2783B6088;
    v10 = v5;
    v11 = v6;
    v7 = a3;
    v8 = MEMORY[0x223D6F7F0](v9);
    _SBSALogDictionaryDescribable(v7, v8, 0);
  }
}

uint64_t SBSAAreElementLayoutsEqualToLayouts(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v5 = [v3 count];
  v14 = v5 == [v4 count];
  if (*(v12 + 24) == 1)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __SBSAAreElementLayoutsEqualToLayouts_block_invoke;
    v8[3] = &unk_2783C04F8;
    v10 = &v11;
    v9 = v4;
    [v3 enumerateObjectsUsingBlock:v8];

    v6 = *(v12 + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v11, 8);

  return v6 & 1;
}

void sub_21ED96F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_4_5(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

void OUTLINED_FUNCTION_4_15(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_4_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t _SBXXDeactivateReachability()
{
  BSDispatchQueueAssertNotMain();
  v0 = +[SBApplicationController sharedInstanceIfExists];
  v1 = [v0 applicationWithPid:BSPIDForAuditToken()];

  v2 = [v1 processState];
  v3 = [v2 isForeground];

  if (v3)
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_188);
  }

  return 0;
}

void _WiFiDeviceLinkQualityChanged(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v4 = a3;
  if (a2)
  {
    v12 = v4;
    v5 = CFDictionaryGetValue(a2, @"SCALED_RSSI");
    v6 = 0;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v5 floatValue];
      v6 = v7;
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = CFDictionaryGetValue(a2, @"RSSI");
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [v9 intValue];
        if ((v8 & 1) == 0)
        {
          LODWORD(v11) = v6;
          [v12 _updateSignalStrengthFromRawRSSI:v10 andScaledRSSI:v11];
        }
      }
    }

    v4 = v12;
  }
}

id SBLogButtonsCamera()
{
  if (SBLogButtonsCamera_onceToken != -1)
  {
    SBLogButtonsCamera_cold_1();
  }

  v1 = SBLogButtonsCamera___logObj;

  return v1;
}

uint64_t SBSystemApertureContainerRenderingConfigurationMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  a4[1] = a2;
  a4[2] = 0;
  *a4 = result;
  *(a4 + 16) = a3;
  return result;
}

id SBSAElementContextAssociatedWithContainerViewDescription(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 associatedSystemApertureElementIdentity];
  v7 = SBSAObjectInCollectionAssociatedWithElementIdentity(v6, v5, a3);

  return v7;
}

id SBSAObjectInCollectionAssociatedWithElementIdentity(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__111;
  v17 = __Block_byref_object_dispose__111;
  v18 = 0;
  if (v5)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __SBSAObjectInCollectionAssociatedWithElementIdentity_block_invoke;
    v9[3] = &unk_2783C04D0;
    v10 = v5;
    v11 = &v19;
    v12 = &v13;
    [v6 enumerateObjectsUsingBlock:v9];
  }

  if (a3)
  {
    *a3 = v20[3];
  }

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v7;
}

void sub_21ED98F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void __SBSAAreElementLayoutsEqualToLayouts_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LOBYTE(v7) = SBSAIsElementLayoutEqualToLayout(v8, v9);

  *(*(*(a1 + 40) + 8) + 24) = v7;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

uint64_t SBSAIsElementLayoutEqualToLayout(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (SAElementIdentityEqualToIdentity() && (v5 = [v3 layoutMode], v5 == objc_msgSend(v4, "layoutMode")))
  {
    v6 = ([v3 interfaceOrientation] - 3) < 2;
    v7 = v6 ^ (([v4 interfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SBLogSystemAperturePreferencesStackElements()
{
  if (SBLogSystemAperturePreferencesStackElements_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackElements_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackElements___logObj;

  return v1;
}

id SBLogFlashlightHUD()
{
  if (SBLogFlashlightHUD_onceToken != -1)
  {
    SBLogFlashlightHUD_cold_1();
  }

  v1 = SBLogFlashlightHUD___logObj;

  return v1;
}

id SBLogSystemGestureAppSwitcher()
{
  if (SBLogSystemGestureAppSwitcher_onceToken != -1)
  {
    SBLogSystemGestureAppSwitcher_cold_1();
  }

  v1 = SBLogSystemGestureAppSwitcher___logObj;

  return v1;
}

id SBWTErrorCreateForTransaction(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    SBWTErrorCreateForTransaction_cold_1();
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([v1 isFailed])
  {
    v3 = @"Transaction failed.";
    v4 = 1;
    v5 = @"Failed";
LABEL_7:
    [v2 setObject:v5 forKey:*MEMORY[0x277CF0B20]];
    [v2 setObject:v3 forKey:*MEMORY[0x277CCA470]];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v2 setObject:v7 forKey:@"SBTransaction"];

    v8 = [v1 error];
    [v2 bs_setSafeObject:v8 forKey:*MEMORY[0x277CCA7E8]];

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBWorkspaceTransaction" code:v4 userInfo:v2];
    goto LABEL_9;
  }

  if ([v1 isInterrupted])
  {
    v3 = @"Transaction interrupted.";
    v4 = 2;
    v5 = @"Interrupted";
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

void sub_21ED9A288(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *SBStringForPIPBehaviorOverrideReason(unint64_t a1)
{
  if (a1 > 9)
  {
    return 0;
  }

  else
  {
    return off_2783BE518[a1];
  }
}

BOOL SBSAContextAndPreferencesRepresentAnyContentVisible(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 indicatorContainerViewDescription];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 elementDescriptions];
    v4 = [v5 count] != 0;
  }

  return v4;
}

__CFString *SBStatusBarItemDebugName(uint64_t a1)
{
  if (a1 < 0x2E && ((0x379FFFEFF7FFuLL >> a1) & 1) != 0)
  {
    v2 = off_2783C3820[a1];
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%i)", a1];
  }

  return v2;
}

uint64_t SBPIPStashStateOverrideReasonForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonCameraSensorActivity"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonDeviceLock"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonInterruption"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonMainSwitcherPresentation"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonSpotlightPresentation"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonTransientOverlayTransition"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonHomeScreenTransition"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonAppTransition"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"SBPIPBehaviorOverrideReasonSystemNotesPresentation"])
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SBLogSystemAperturePreferencesStackSettling()
{
  if (SBLogSystemAperturePreferencesStackSettling_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackSettling_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackSettling___logObj;

  return v1;
}

double SBSACornerRadiusForContainerBounds(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  Width = CGRectGetWidth(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  Height = CGRectGetHeight(v21);
  if (Width <= Height)
  {
    v14 = Width;
  }

  else
  {
    v14 = Height;
  }

  v15 = [v11 platformMetrics];

  v16 = v14 * 0.5;
  [v15 maximumCornerRadius];
  if (v16 > v17)
  {
    v16 = v17;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      [v15 customLayoutOvalCornerRadius];
      goto LABEL_15;
    }

    if (a1 == 4)
    {
      [v15 customLayoutTallRectCornerRadius];
      goto LABEL_15;
    }
  }

  else
  {
    if (a1 == 1)
    {
      [v15 customLayoutSquareCornerRadius];
      goto LABEL_15;
    }

    if (a1 == 2)
    {
      [v15 customLayoutSquareLargeCornerRadius];
LABEL_15:
      v16 = v18;
    }
  }

  return v16;
}

id _StackablePreferencesProvidingSimpleDescription(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v1 stringWithFormat:@"<%@: %p>", v4, v2];

  return v5;
}

uint64_t SBSAPointApproximatelyEqualToPoint()
{
  result = BSFloatApproximatelyEqualToFloat();
  if (result)
  {

    return BSFloatApproximatelyEqualToFloat();
  }

  return result;
}

CGAffineTransform *SBSAAffineTransformFromContentScale@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  if (BSFloatIsOne() && (result = BSFloatIsOne(), result))
  {
    v7 = MEMORY[0x277CBF2C0];
    v8 = *(MEMORY[0x277CBF2C0] + 16);
    *a1 = *MEMORY[0x277CBF2C0];
    *(a1 + 16) = v8;
    *(a1 + 32) = *(v7 + 32);
  }

  else
  {

    return CGAffineTransformMakeScale(a1, a2, a3);
  }

  return result;
}

uint64_t SBSARectApproximatelyEqualToRect()
{
  result = SBSAPointApproximatelyEqualToPoint();
  if (result)
  {

    return SBSASizeApproximatelyEqualToSize();
  }

  return result;
}

uint64_t SBSASizeApproximatelyEqualToSize()
{
  result = BSFloatApproximatelyEqualToFloat();
  if (result)
  {

    return BSFloatApproximatelyEqualToFloat();
  }

  return result;
}

void OUTLINED_FUNCTION_24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

uint64_t OUTLINED_FUNCTION_10()
{

  return IOHIDEventGetIntegerValue();
}

uint64_t OUTLINED_FUNCTION_10_0()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_10_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10_3(uint64_t a1)
{
  v2 = *(a1 + 48);

  return [v2 queryIteration];
}

uint64_t OUTLINED_FUNCTION_13_0@<X0>(void *a1@<X0>, double *x8_0@<X8>)
{
  v4 = *x8_0;
  v5 = x8_0[1];
  v6 = x8_0[2];
  v7 = x8_0[3];

  return [a1 initWithFrame:{v4, v5, v6, v7}];
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return objc_opt_class();
}

BOOL _SBElementContextsMatchIdentityAndLayoutState(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 | v4)
  {
    if (SAElementIdentityEqualToIdentity())
    {
      v6 = [v3 layoutMode];
      v5 = v6 == [v4 layoutMode];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

id SBSAStringFromPreferencesInvalidationReason(int a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = 1;
  while (1)
  {
    if ((v3 & a1) == 0)
    {
      goto LABEL_46;
    }

    if (v3 > 511)
    {
      break;
    }

    if (v3 <= 15)
    {
      if (v3 > 3)
      {
        if (v3 == 4)
        {
          v4 = @"LumaSampling";
          goto LABEL_45;
        }

        if (v3 == 8)
        {
          v4 = @"SystemApertureManager";
          goto LABEL_45;
        }
      }

      else
      {
        v4 = @"StackInitiated";
        if (v3 == 1)
        {
          goto LABEL_45;
        }

        if (v3 == 2)
        {
          v4 = @"InitOrDefaults";
          goto LABEL_45;
        }
      }
    }

    else if (v3 <= 63)
    {
      if (v3 == 16)
      {
        v4 = @"CloningOrRenderingStyle";
        goto LABEL_45;
      }

      if (v3 == 32)
      {
        v4 = @"TimerExpired";
        goto LABEL_45;
      }
    }

    else
    {
      switch(v3)
      {
        case 64:
          v4 = @"MilestoneReached";
          goto LABEL_45;
        case 128:
          v4 = @"Accessibility";
          goto LABEL_45;
        case 256:
          v4 = @"DynamicsAnimation";
          goto LABEL_45;
      }
    }

LABEL_46:
    v5 = v3 > 0x20000;
    v3 *= 2;
    if (v5)
    {
      goto LABEL_51;
    }
  }

  if (v3 < 0x4000)
  {
    if (v3 <= 2047)
    {
      if (v3 == 512)
      {
        v4 = @"TransitionEffectAssertion";
        goto LABEL_45;
      }

      if (v3 == 1024)
      {
        v4 = @"Gestures";
        goto LABEL_45;
      }
    }

    else
    {
      switch(v3)
      {
        case 0x800:
          v4 = @"AnimatedPropertyUpdateBegin";
          goto LABEL_45;
        case 0x1000:
          v4 = @"AnimatedPropertyUpdateEnd";
          goto LABEL_45;
        case 0x2000:
          v4 = @"ElementRequested";
LABEL_45:
          [v2 addObject:v4];
          goto LABEL_46;
      }
    }

    goto LABEL_46;
  }

  if (v3 < 0x10000)
  {
    if (v3 == 0x4000)
    {
      v4 = @"Orientation";
      goto LABEL_45;
    }

    if (v3 == 0x8000)
    {
      v4 = @"ActiveDisplayChanged";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if (v3 == 0x10000)
  {
    v4 = @"ReachabilityChanged";
    goto LABEL_45;
  }

  if (v3 == 0x20000)
  {
    v4 = @"LuminanceLevelChanged";
    goto LABEL_45;
  }

  if (v3 != 0x40000)
  {
    goto LABEL_46;
  }

  [v2 addObject:@"SecureElementCoordinator"];
LABEL_51:
  v6 = MEMORY[0x277CCACA8];
  v7 = [v2 componentsJoinedByString:@" | "];
  v8 = [v6 stringWithFormat:@"[ %@ ]", v7];

  return v8;
}

uint64_t SBSAIsElementViewControllerFixedInOrientation(void *a1)
{
  v1 = a1;
  v2 = [v1 elementViewProvider];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 elementViewProvider];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 isFixedInOrientation];
  return v4;
}

__n128 OUTLINED_FUNCTION_8_2()
{
  v2 = *(v0 + 176);
  *(v1 - 96) = *(v0 + 160);
  *(v1 - 80) = v2;
  result = *(v0 + 192);
  *(v1 - 64) = result;
  return result;
}

void sub_21ED9E658(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

id SBLogSystemAperturePreferencesStackIndicator()
{
  if (SBLogSystemAperturePreferencesStackIndicator_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackIndicator_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackIndicator___logObj;

  return v1;
}

uint64_t _SBXXGetScreenLockStatus(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  BSDispatchQueueAssertMain();
  SBGetAggregatedLockStatus(a2, a3);
  return 0;
}

void SBGetAggregatedLockStatus(_BYTE *a1, _BYTE *a2)
{
  if (a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 1;
    v4 = [SBApp windowSceneManager];
    v5 = [v4 connectedWindowScenes];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __SBGetAggregatedLockStatus_block_invoke;
    v12[3] = &unk_2783BE9A0;
    v12[4] = &v13;
    [v5 enumerateObjectsUsingBlock:v12];

    *a1 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  if (a2)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v6 = [SBApp lockOutController];
    v7 = [v6 isLockedOut];

    v16 = v7;
    v8 = *(v14 + 24);
    if (v8 == 1)
    {
      v9 = [SBApp windowSceneManager];
      v10 = [v9 connectedWindowScenes];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __SBGetAggregatedLockStatus_block_invoke_2;
      v11[3] = &unk_2783BE9A0;
      v11[4] = &v13;
      [v10 enumerateObjectsUsingBlock:v11];

      LOBYTE(v8) = *(v14 + 24);
    }

    *a2 = v8;
    _Block_object_dispose(&v13, 8);
  }
}

void sub_21ED9F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBGetAggregatedLockStatus_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 uiLockStateProvider];
  v6 = [v5 isUILocked];

  if ((v6 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

uint64_t _SBWorkspaceStartUsageTimesIfNecessary()
{
  if (__SBWGatherUsageTime == 1)
  {
    result = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (*&__SBWInitialStandbyTimeGMT == 0.0)
    {
      __SBWInitialStandbyTimeGMT = v3;
    }

    if (*&__SBWLastUsageTimeGMT == 0.0)
    {
      __SBWLastUsageTimeGMT = v3;
    }
  }

  return result;
}

uint64_t _SBXXSetWantsVolumeButtonEvents(uint64_t a1, int a2)
{
  BSDispatchQueueAssertNotMain();
  v3 = SBRunningApplicationForAuditToken();
  v4 = v3;
  if (v3)
  {
    if ([v3 isAppleApplication])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ___SBXXSetWantsVolumeButtonEvents_block_invoke;
      v8[3] = &unk_2783AC098;
      v9 = v4;
      v10 = a2;
      dispatch_async(MEMORY[0x277D85CD0], v8);
      v5 = 0;
      v6 = v9;
    }

    else
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _SBXXSetWantsVolumeButtonEvents_cold_1();
      }

      v5 = 5;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id SBRunningApplicationForAuditToken()
{
  v0 = BSPIDForAuditToken();
  v1 = +[SBApplicationController sharedInstanceIfExists];
  v2 = [v1 applicationWithPid:v0];

  return v2;
}

id SBLogProactiveAppLibrary()
{
  if (SBLogProactiveAppLibrary_onceToken != -1)
  {
    SBLogProactiveAppLibrary_cold_1();
  }

  v1 = SBLogProactiveAppLibrary___logObj;

  return v1;
}

uint64_t _SBXXSetApplicationShowsProgress(uint64_t a1, uint64_t a2, int a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v29[0] = *a4;
  v29[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v29];
  v28 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v28];
  v11 = v28;

  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:a2];
    if (v12)
    {
      v13 = BSPIDForAuditToken();
      v14 = BSBundleIDForAuditToken();
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v18 = BSProcessNameForPID();
        v19 = v18;
        v20 = @"unknown";
        if (v18)
        {
          v20 = v18;
        }

        v16 = v20;
      }

      v21 = SBWorkspaceApplicationForIdentifier(v12);
      if (v21)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = ___SBXXSetApplicationShowsProgress_block_invoke;
        v23[3] = &unk_2783AB2A8;
        v24 = v16;
        v26 = v13;
        v25 = v21;
        v27 = a3;
        dispatch_async(MEMORY[0x277D85CD0], v23);
      }
    }

    v17 = 0;
  }

  else
  {
    v12 = SBLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetApplicationShowsProgress_cold_1(v11);
    }

    v17 = 5;
  }

  return v17;
}

id getRecentsCategoryIdentifier(void *a1)
{
  v1 = [a1 bs_firstObjectPassingTest:&__block_literal_global_3_1];
  if (!v1)
  {
    v1 = [objc_alloc(MEMORY[0x277D66220]) initWithPredictionCategoryID:4 localizedDisplayNameKey:@"PROACTIVE_RECENT_APPS_LOCALIZED_CATEGORY_NAME"];
  }

  return v1;
}

id SBWorkspaceApplicationForIdentifier(void *a1)
{
  v1 = a1;
  v2 = +[SBMainWorkspace sharedInstance];
  v3 = [v2 _applicationForIdentifier:v1];

  return v3;
}

void SetDisplayShowsProgress(void *a1, uint64_t a2, void *a3, int a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = v8;
  v10 = MEMORY[0x277CCACA8];
  if (v8)
  {
    v11 = [v8 bundleIdentifier];
    v12 = [v10 stringWithFormat:@"ShowProgress-%@", v11];

    if (a4)
    {
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __SetDisplayShowsProgress_block_invoke;
      v39[3] = &unk_2783AAA70;
      v25 = &v40;
      v13 = v12;
      v40 = v13;
      v43 = a2;
      v14 = &v41;
      v15 = v7;
      v41 = v15;
      v16 = &v42;
      v17 = v9;
      v42 = v17;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __SetDisplayShowsProgress_block_invoke_99;
      v34[3] = &unk_2783AAA70;
      v18 = &v35;
      v12 = v13;
      v35 = v12;
      v38 = a2;
      v36 = v15;
      v37 = v17;
      v19 = [SBDaemonRequest requestWithEnabler:v39 disabler:v34];

LABEL_6:
      v23 = SBLogStatusBarish();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v45 = v12;
        v46 = 1024;
        v47 = a2;
        v48 = 2114;
        v49 = v7;
        _os_log_impl(&dword_21ED4E000, v23, OS_LOG_TYPE_INFO, "SBDaemonRequest: adding %{public}@ for pid: %i (%{public}@)", buf, 0x1Cu);
      }

      [SBDaemonHandler addRequest:v19 forKey:v12 forDaemonPid:a2];
      goto LABEL_12;
    }
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ShowProgress-%@", @"all"];
    v12 = v20;
    if (a4)
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __SetDisplayShowsProgress_block_invoke_100;
      v30[3] = &unk_2783ACEE8;
      v25 = &v31;
      v21 = v20;
      v31 = v21;
      v33 = a2;
      v14 = &v32;
      v22 = v7;
      v32 = v22;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __SetDisplayShowsProgress_block_invoke_101;
      v26[3] = &unk_2783ACEE8;
      v16 = &v27;
      v12 = v21;
      v27 = v12;
      v29 = a2;
      v18 = &v28;
      v28 = v22;
      v19 = [SBDaemonRequest requestWithEnabler:v30 disabler:v26];
      goto LABEL_6;
    }
  }

  v24 = SBLogStatusBarish();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 138543874;
    v45 = v12;
    v46 = 1024;
    v47 = a2;
    v48 = 2114;
    v49 = v7;
    _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_INFO, "SBDaemonRequest: removing %{public}@ for pid: %i (%{public}@)", buf, 0x1Cu);
  }

  [SBDaemonHandler removeRequestForKey:v12 forDaemonPid:a2];
LABEL_12:
}

id getSuggestedCategoryIdentifier(void *a1)
{
  v1 = [a1 bs_firstObjectPassingTest:&__block_literal_global_331];
  if (!v1)
  {
    v1 = [objc_alloc(MEMORY[0x277D66220]) initWithPredictionCategoryID:3 localizedDisplayNameKey:@"PROACTIVE_SUGGESTED_APPS_LOCALIZED_CATEGORY_NAME"];
  }

  return v1;
}

uint64_t _SBXXSetAlertSuppressionContexts(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 5;
  if (a2 && a3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = SBRunningApplicationForAuditToken();
    v11 = [v10 bundleIdentifier];

    if (v11 && v9)
    {
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v9 forKey:v11];
      if (_SBValidateAlertSuppressionContextInput(v12))
      {
        v15 = v12;
        BSDispatchMain();
        v3 = 0;
        v13 = v15;
      }

      else
      {
        v13 = SBLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          _SBXXSetAlertSuppressionContexts_cold_1();
        }
      }
    }
  }

  return v3;
}

id getHiddenAppsCategoryIdentifier(void *a1)
{
  v1 = [a1 bs_firstObjectPassingTest:&__block_literal_global_8_4];
  if (!v1)
  {
    v1 = [objc_alloc(MEMORY[0x277D66220]) initWithPredictionCategoryID:7 localizedDisplayNameKey:@"PROACTIVE_HIDDEN_APPS_LOCALIZED_CATEGORY_NAME"];
  }

  return v1;
}

BOOL _SBValidateAlertSuppressionContextInput(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___SBValidateAlertSuppressionContextInput_block_invoke;
    v4[3] = &unk_2783AD0C0;
    v4[4] = &v5;
    [v1 enumerateKeysAndObjectsUsingBlock:v4];
    v2 = *(v6 + 24) == 0;
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void sub_21EDA0134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary(void *a1, _OWORD *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = SBRunningApplicationForAuditToken();
  if (v4)
  {
    v5 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
    v6 = [v5 layoutStatePrimaryElement];
    v7 = [v6 workspaceEntity];
    v8 = [v7 applicationSceneEntity];
    v9 = [v8 sceneHandle];
    v10 = [v9 application];
    v11 = [v10 isSameExecutableAsApplication:v4];

    if (v11)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x2020000000;
      v35 = 0;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = ___SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary_block_invoke;
      v29[3] = &unk_2783AD0E8;
      v12 = v4;
      v30 = v12;
      v31 = &v32;
      [v3 enumerateKeysAndObjectsUsingBlock:v29];
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = +[SBSceneManagerCoordinator sharedInstance];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ___SBSetAlertSuppressionContextArraysBySectionIdentifierDictionary_block_invoke_2;
      v26[3] = &unk_2783AD110;
      v27 = v12;
      v15 = v13;
      v28 = v15;
      [v14 enumerateSceneManagersWithBlock:v26];

      if (*(v33 + 24) == 1)
      {
        v16 = objc_alloc(MEMORY[0x277CF0B98]);
        v17 = a2[1];
        *buf = *a2;
        *&buf[16] = v17;
        v18 = [v16 initWithAuditToken:buf];
        v19 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
        v25 = 0;
        v20 = [v19 authenticateAuditToken:v18 forEntitlement:@"com.apple.springboard.alertSuppressionSectionIdentifier" error:&v25];
        v21 = v25;

        if (v20)
        {
          _SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles(v3, v15);
        }

        else
        {
          v22 = SBLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [v18 pid];
            v23 = BSProcessDescriptionForPID();
            v24 = BSPrettyFunctionName();
            *buf = 138543874;
            *&buf[4] = v23;
            *&buf[12] = 2114;
            *&buf[14] = v24;
            *&buf[22] = 2114;
            *&buf[24] = v21;
            _os_log_error_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_ERROR, "Authentication failure: %{public}@ is not permitted to call %{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        _SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles(v3, v15);
      }

      _Block_object_dispose(&v32, 8);
    }
  }
}

void sub_21EDA071C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SetDisplayShowsProgress_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138543874;
    v8 = v4;
    v9 = 1024;
    v10 = v3;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBDaemonRequest: enabling %{public}@ for pid: %i (%{public}@)", &v7, 0x1Cu);
  }

  return [*(a1 + 48) setShowsProgress:1];
}

void _SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___SBSetAlertSuppressionContextsArrayBySectionIdentifierDictionaryForApplicationSceneHandles_block_invoke;
  v16[3] = &unk_2783AD138;
  v6 = v5;
  v17 = v6;
  [v3 enumerateKeysAndObjectsUsingBlock:v16];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setAlertSuppressionContextsBySectionIdentifier:{v6, v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v9);
  }
}

uint64_t _SBXXSetApplicationNetworkFlags(uint64_t a1, char a2, char a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = SBRunningApplicationForAuditToken();
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___SBXXSetApplicationNetworkFlags_block_invoke;
    v8[3] = &unk_2783AC158;
    v9 = v5;
    v10 = a2;
    v11 = a3;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }

  return 0;
}

uint64_t SBSceneWindowControlsPlacementFromSceneWindowingControlStyleType(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 1;
  }

  else
  {
    return a1 + 2;
  }
}

void sub_21EDA4F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBLogButtonsInteraction()
{
  if (SBLogButtonsInteraction_onceToken != -1)
  {
    SBLogButtonsInteraction_cold_1();
  }

  v1 = SBLogButtonsInteraction___logObj;

  return v1;
}

void sub_21EDA591C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBXXAddBiometricAssertion(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int128 *a5)
{
  BSDispatchQueueAssertNotMain();
  v9 = *MEMORY[0x277D66EE8];
  v32 = 0;
  v10 = a5[1];
  v28 = *a5;
  v29 = v10;
  v11 = [MEMORY[0x277D0AAF8] authenticateAuditToken:&v28 forEntitlement:v9 error:&v32];
  v12 = v32;
  if (v11)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v14 = [objc_alloc(MEMORY[0x277CF0C60]) initWithPort:a3];
    *&v28 = 0;
    *(&v28 + 1) = &v28;
    *&v29 = 0x3032000000;
    *(&v29 + 1) = __Block_byref_object_copy__9;
    v30 = __Block_byref_object_dispose__9;
    v31 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXAddBiometricAssertion_block_invoke;
    block[3] = &unk_2783AD078;
    v27 = a4;
    v15 = v13;
    v25 = v15;
    v26 = &v28;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v16 = MEMORY[0x277CF0CB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = ___SBXXAddBiometricAssertion_block_invoke_2;
    v20[3] = &unk_2783AD078;
    v23 = a4;
    v17 = v15;
    v21 = v17;
    v22 = &v28;
    [v16 monitorSendRight:v14 withHandler:v20];

    _Block_object_dispose(&v28, 8);
    v18 = 0;
  }

  else
  {
    v17 = SBLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _SBXXAddBiometricAssertion_cold_1(v12);
    }

    v18 = 5;
  }

  return v18;
}

void sub_21EDA6060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EDA62AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *SBWalletPreArmSuppressionAssertionTypeDescription(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"unspecified";
  }

  else if (a1 == 2)
  {
    v2 = @"external";
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"unknown (%ld)", a1];
  }

  return v2;
}

double SBSAMicroIndicatorFrameNearContainer(uint64_t a1, int a2, _OWORD *a3, void *a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a4;
  v18 = a5;
  [v18 inertContainerFrame];
  CGRectGetMidY(v36);
  v37.origin.x = a6;
  v37.origin.y = a7;
  v37.size.width = a8;
  v37.size.height = a9;
  if (CGRectIsNull(v37) || (v38.origin.x = a6, v38.origin.y = a7, v38.size.width = a8, v38.size.height = a9, CGRectIsEmpty(v38)) || !a2)
  {
    v19 = [v18 layoutDirection];
    v20 = a6;
    v21 = a7;
    v22 = a8;
    v23 = a9;
    if (v19 == 1)
    {
      MinX = CGRectGetMinX(*&v20);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v20);
    }

    v31 = MinX;
    if (a3)
    {
      v32 = MEMORY[0x277CBF2C0];
      v33 = *(MEMORY[0x277CBF2C0] + 16);
      *a3 = *MEMORY[0x277CBF2C0];
      a3[1] = v33;
      a3[2] = *(v32 + 32);
    }
  }

  else
  {
    BSRectWithSize();
    v29 = SBSACornerRadiusForContainerBounds(a1, v18, v25, v26, v27, v28);
    v35 = 0;
    _SBSAMicroIndicatorCenterXAlongsideContainer(&v35, a3, v17, v18, a6, a7, a8, a9, v29);
    BSRectWithSize();
    SBUnintegralizedRectCenteredAboutPoint();
    v31 = v30;
  }

  return v31;
}

uint64_t _SBXXAddWallpaperAnimationSuspensionAssertion(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = a4[1];
  v20 = *a4;
  v21 = v7;
  v8 = 0;
  if ([MEMORY[0x277D0AAF8] authenticateAuditToken:&v20 forEntitlement:@"com.apple.springboard.wallpaper-access" error:0] & 1) != 0 || (v19 = 0, v9 = a4[1], v20 = *a4, v21 = v9, v10 = objc_msgSend(MEMORY[0x277D0AAF8], "authenticateAuditToken:forEntitlement:error:", &v20, @"com.apple.springboard.wallpaperAnimationSuspension", &v19), v8 = v19, (v10))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v12 = [MEMORY[0x277D75128] _systemAnimationFenceExemptQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___SBXXAddWallpaperAnimationSuspensionAssertion_block_invoke;
    v16[3] = &unk_2783AC098;
    v17 = v11;
    v18 = a3;
    v13 = v11;
    [v12 performAsync:v16];

    v14 = 0;
  }

  else
  {
    v13 = SBLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      _SBXXAddWallpaperAnimationSuspensionAssertion_cold_1(v8);
    }

    v14 = 5;
  }

  return v14;
}

void _SBWorkspaceLogUsageForAppleCare(int a1)
{
  _SBWorkspaceUpdateBatteryUsageTime(0);
  v2 = __SBWCurrentUsageTimeInSeconds;
  if (a1 == 3 || *&__SBWCurrentUsageTimeInSeconds >= 60.0)
  {
    v3 = *&__SBWInitialStandbyTimeGMT;
    v4 = 0.0;
    if (*&__SBWInitialStandbyTimeGMT != 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v3 = v5 - *&__SBWInitialStandbyTimeGMT;
      v4 = *&__SBWSavedStandbyTime + v3;
    }

    v6 = +[SBUIController sharedInstance];
    [v6 batteryCapacity];
    v8 = (v7 * 100.0);

    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBWorkspaceLogUsageForAppleCare_block_invoke;
    block[3] = &__block_descriptor_56_e5_v8__0l;
    block[4] = v2;
    *&block[5] = v4;
    v11 = a1;
    v12 = v8;
    dispatch_async(v9, block);
  }
}

void _SBWorkspaceResetBatteryUsageTimes()
{
  _SBWorkspaceLogUsageForAppleCare(1);
  __SBWCurrentUsageTimeInSeconds = 0;
  __SBWLastUsageTimeGMT = 0;
  __SBWInitialStandbyTimeGMT = 0;
  __SBWSavedStandbyTime = 0;
  __SBWTrustUsageTimes = 1;
  __SBWGatherUsageTime = 1;
  __SBWHaveChargedPartially = 0;
}

uint64_t _SBWorkspaceUpdateBatteryUsageTime(uint64_t result)
{
  if (__SBWGatherUsageTime == 1 && *&__SBWLastUsageTimeGMT != 0.0)
  {
    v1 = result;
    result = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if ((v1 & 1) == 0)
    {
      if (__SBWIsSleeping)
      {
        return result;
      }

      *&__SBWCurrentUsageTimeInSeconds = *&__SBWCurrentUsageTimeInSeconds + v2 - *&__SBWLastUsageTimeGMT;
    }

    __SBWLastUsageTimeGMT = *&v2;
  }

  return result;
}

id SBLogSystemAperturePreferencesStackRenderingCloning()
{
  if (SBLogSystemAperturePreferencesStackRenderingCloning_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackRenderingCloning_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackRenderingCloning___logObj;

  return v1;
}

__CFString *SBStringFromSystemApertureContainerRenderingStyle(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unspecified";
  }

  else
  {
    return off_2783BF700[a1];
  }
}

__CFString *SBStringFromSystemApertureContainerCloningStyle(uint64_t a1)
{
  v1 = @"Visible";
  if (a1 == 1)
  {
    v1 = @"Alpha Transition";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Hidden";
  }
}

id SBLogCaptureViewfinderMonitor()
{
  if (SBLogCaptureViewfinderMonitor_onceToken != -1)
  {
    SBLogCaptureViewfinderMonitor_cold_1();
  }

  v1 = SBLogCaptureViewfinderMonitor___logObj;

  return v1;
}

uint64_t _appIconVisibilityPreferencesChanged(uint64_t a1, void *a2)
{
  v3 = SBLogAppLibrary();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "visibility update: pref change", v5, 2u);
  }

  return [a2 _updateVisibilityOverridesInBackground];
}

id SBLogAppLibrary()
{
  if (SBLogAppLibrary_onceToken != -1)
  {
    SBLogAppLibrary_cold_1();
  }

  v1 = SBLogAppLibrary___logObj;

  return v1;
}

id CAPrivacyIndicatorTypeForIndicatorType(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&unk_2783C5130 + a1);
  }

  return a1;
}

id SBLogSystemApertureContainer()
{
  if (SBLogSystemApertureContainer_onceToken != -1)
  {
    SBLogSystemApertureContainer_cold_1();
  }

  v1 = SBLogSystemApertureContainer___logObj;

  return v1;
}

void SBKeyValueLog(void *a1, void *a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = SBLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%*s%@:%*s%@", (2 * a3) | 1u, " ", v5, 33 - (objc_msgSend(v5, "length") + 2 * a3), " ", v6];
    *buf = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "SBWPA%@", buf, 0xCu);
  }
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return [v18 countByEnumeratingWithState:&a9 objects:&a18 count:16];
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

BOOL OUTLINED_FUNCTION_6_9(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_6_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 176), 0x12u);
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1, void *a2)
{

  return [a2 queryIteration];
}

id SBLogButtonsVolume()
{
  if (SBLogButtonsVolume_onceToken != -1)
  {
    SBLogButtonsVolume_cold_1();
  }

  v1 = SBLogButtonsVolume___logObj;

  return v1;
}

id SBLogButtonsCapture()
{
  if (SBLogButtonsCapture_onceToken != -1)
  {
    SBLogButtonsCapture_cold_1();
  }

  v1 = SBLogButtonsCapture___logObj;

  return v1;
}

__CFString *SBStringForActiveDisplayTrackingMethodology(uint64_t a1)
{
  if (a1)
  {
    return @"touch + pointer";
  }

  else
  {
    return @"keyboard";
  }
}

id SBLogWidgetIntent()
{
  if (SBLogWidgetIntent_onceToken != -1)
  {
    SBLogWidgetIntent_cold_1();
  }

  v1 = SBLogWidgetIntent___logObj;

  return v1;
}

BOOL _SBStatusBarLegibilityStyleFromStyle(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

id SBLogProactiveHome()
{
  if (SBLogProactiveHome_onceToken != -1)
  {
    SBLogProactiveHome_cold_1();
  }

  v1 = SBLogProactiveHome___logObj;

  return v1;
}

uint64_t serializePropertyListObject(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  if (v5)
  {
    v11 = 0;
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:v5 format:200 options:0 error:&v11];
    v7 = v11;
    if (v6)
    {
      *a2 = [v6 bytes];
      *a3 = [v6 length];

      v8 = 0;
    }

    else
    {
      v9 = SBLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        serializePropertyListObject_cold_1();
      }

      v8 = 5;
    }
  }

  else
  {
    v8 = 0;
    *a2 = 0;
    *a3 = 0;
  }

  return v8;
}

uint64_t _SBXXGetDisplayIdentifiers(uint64_t a1, void *a2, _DWORD *a3, _OWORD *a4)
{
  BSDispatchQueueAssertNotMain();
  v7 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v8 = a4[1];
  v18[0] = *a4;
  v18[1] = v8;
  v9 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v18];
  v17 = 0;
  v10 = [v7 authenticateAuditToken:v9 error:&v17];
  v11 = v17;

  if (v10)
  {
    if (([SBApp hasFinishedLaunching] & 1) == 0)
    {
      dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_138);
    }

    if ([SBApp hasFinishedLaunching])
    {
      v12 = serverIconController();
      v13 = [v12 visibleIconStateDisplayIdentifiers];
      v14 = [v13 allObjects];
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v15 = serializePropertyListObject(v14, a2, a3);
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _SBXXGetDisplayIdentifiers_cold_1(v11);
    }

    v15 = 5;
  }

  return v15;
}

id serverIconController()
{
  v0 = [SBApp windowSceneManager];
  v1 = [v0 embeddedDisplayWindowScene];
  v2 = [v1 iconController];

  return v2;
}

id SBLogHIDKeyboardEvents()
{
  if (SBLogHIDKeyboardEvents_onceToken != -1)
  {
    SBLogHIDKeyboardEvents_cold_1();
  }

  v1 = SBLogHIDKeyboardEvents___logObj;

  return v1;
}

void __SBLogHIDKeyboardEvents_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "HIDKeyboardEvents");
  v1 = SBLogHIDKeyboardEvents___logObj;
  SBLogHIDKeyboardEvents___logObj = v0;
}

__CFString *SBSystemGestureRecognizerStateDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_2783B83E0[a1];
  }
}

uint64_t SBGuidedAccessIsActive()
{
  v0 = +[SBGuidedAccessListener sharedGuidedAccessListener];
  v1 = [v0 isGuidedAccessActive];

  return v1;
}

id SBLogAVSystemControllerCache()
{
  if (SBLogAVSystemControllerCache_onceToken != -1)
  {
    SBLogAVSystemControllerCache_cold_1();
  }

  v1 = SBLogAVSystemControllerCache___logObj;

  return v1;
}

id SBLogButtonsHome()
{
  if (SBLogButtonsHome_onceToken != -1)
  {
    SBLogButtonsHome_cold_1();
  }

  v1 = SBLogButtonsHome___logObj;

  return v1;
}

void sub_21EDAFEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBCoverSheetTransitionTypeForCurrentState()
{
  v0 = _os_feature_enabled_impl();
  v1 = +[SBWallpaperController sharedInstance];
  v2 = v1;
  if (v0)
  {
    v32 = [v1 homeScreenPosterMirrorsLock];
  }

  else
  {
    v3 = [v1 wallpaperConfigurationManager];
    v32 = [v3 variantsShareWallpaperConfigurationForTypes:54];
  }

  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  v5 = [v4 coverSheetWindow];
  v6 = [v5 _sbWindowScene];
  v7 = [v6 switcherController];

  v8 = +[SBLockScreenManager sharedInstance];
  v9 = [v8 coverSheetViewController];

  v33 = v7;
  v10 = [v7 layoutStatePrimaryElement];
  v11 = [v10 workspaceEntity];
  v12 = [v11 applicationSceneEntity];
  v13 = [v12 sceneHandle];

  v14 = +[SBSecureAppManager sharedInstance];
  if ([v14 hasSecureApp])
  {
    v15 = [SBApp authenticationController];
    v16 = [v15 isAuthenticatedCached] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 isInSecureApp];
  v18 = +[SBBacklightController sharedInstance];
  v19 = [v18 backlightState];

  v20 = [v9 _sbWindowScene];
  v21 = [v20 iconController];
  v22 = [v21 iconManager];

  if ([v22 isTodayViewEffectivelyVisible] & 1) != 0 || (objc_msgSend(v22, "isOverlayTodayViewVisible"))
  {
    v23 = 1;
  }

  else
  {
    v23 = [v22 isOverlayTodayViewVisibilityTransitioning];
  }

  if ([v22 isMainDisplayLibraryViewVisible])
  {
    v24 = 1;
  }

  else
  {
    v24 = [v22 isMainDisplayLibraryViewVisibilityTransitioning];
  }

  v25 = [v22 openedFolderController];

  if (v23)
  {
    v26 = 1;
  }

  else if (v25)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  if (v19 == 3)
  {
    if ((v13 != 0) | (v16 | v17) & 1)
    {
      v27 = 7;
    }

    else
    {
      v27 = 8;
    }
  }

  else if ((v13 != 0) | (v16 | v17) & 1 | v26 & 1)
  {
    v27 = 5;
  }

  else
  {
    v28 = [v4 hasBeenDismissedSinceKeybagLock];
    v29 = 3;
    if (!v28)
    {
      v29 = 1;
    }

    v30 = 2;
    if (v28)
    {
      v30 = 4;
    }

    if (v32)
    {
      v27 = v29;
    }

    else
    {
      v27 = v30;
    }
  }

  return v27;
}

id CSCoverSheetTransitionSettingsForTransitionType(uint64_t a1)
{
  v2 = [MEMORY[0x277D02C20] rootSettings];
  v3 = [v2 coverSheetTransitionsSettings];

  v4 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      switch(a1)
      {
        case 7:
          v5 = [v3 inactiveOverAppTransitionSettings];
          break;
        case 8:
          v5 = [v3 inactiveOverHomescreenTransitionSettings];
          break;
        case 9:
          v5 = [v3 captureExtensionToAppTransitionSettings];
          break;
        default:
          goto LABEL_22;
      }

      goto LABEL_21;
    }

    if (a1 == 5)
    {
      [v3 overAppTransitionSettings];
    }

    else
    {
      [v3 overLandscapeTransitionSettings];
    }

    goto LABEL_13;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      [v3 sameWallpaperSubsequentTransitionSettings];
    }

    else
    {
      [v3 differentWallpaperSubsequentTransitionSettings];
    }

    v5 = LABEL_13:;
    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v5 = [v3 sameWallpaperInitialTransitionSettings];
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_22;
    }

    v5 = [v3 differentWallpaperInitialTransitionSettings];
  }

LABEL_21:
  v4 = v5;
LABEL_22:

  return v4;
}

id SBLogSystemGestureCoverSheet()
{
  if (SBLogSystemGestureCoverSheet_onceToken != -1)
  {
    SBLogSystemGestureCoverSheet_cold_1();
  }

  v1 = SBLogSystemGestureCoverSheet___logObj;

  return v1;
}

__CFString *NSStringFromSBKeyboardFocusLockReasonStrength(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<invalid:%X>", a1];
  }

  else
  {
    v2 = off_2783BA548[a1];
  }

  return v2;
}

void _SBUpdateTouchHistoryWithCoalescedTouches(void *a1, void *a2, void *a3, void *a4, int a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v23 + 1) + 8 * v16);
        if (a5)
        {
          _UISystemGestureLocationForTouchInView();
        }

        else
        {
          [*(*(&v23 + 1) + 8 * v16) locationInView:v12];
        }

        v20 = v18;
        v21 = v19;
        [v17 timestamp];
        [v9 updateWithLocation:v20 timestamp:{v21, v22}];
        ++v16;
      }

      while (v14 != v16);
      v14 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }
}

void _SBLogCoalescedTouchesForGestureAndView(void *a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v37 = a2;
  v4 = [MEMORY[0x277D6A798] sharedInstance];
  v5 = [v4 isEnabled];

  if (v5)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = v3;
    obj = v3;
    v38 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v38)
    {
      v36 = *v48;
      do
      {
        v6 = 0;
        do
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v47 + 1) + 8 * v6);
          v8 = _SBLocationForTouch(v7);
          v10 = v9;
          v45 = [MEMORY[0x277CBEB18] array];
          v46 = v6;
          v55[0] = @"timestamp";
          v11 = MEMORY[0x277CCABB0];
          [v7 timestamp];
          v44 = [v11 numberWithDouble:?];
          v56[0] = v44;
          v55[1] = @"phase";
          v43 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "phase")}];
          v56[1] = v43;
          v55[2] = @"tapCount";
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "tapCount")}];
          v56[2] = v42;
          v55[3] = @"type";
          v41 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "type")}];
          v56[3] = v41;
          v55[4] = @"majorRadius";
          v12 = MEMORY[0x277CCABB0];
          [v7 majorRadius];
          v40 = [v12 numberWithDouble:?];
          v56[4] = v40;
          v55[5] = @"majorRadiusToTolerance";
          v13 = MEMORY[0x277CCABB0];
          [v7 majorRadiusTolerance];
          v39 = [v13 numberWithDouble:?];
          v56[5] = v39;
          v55[6] = @"force";
          v14 = MEMORY[0x277CCABB0];
          [v7 force];
          v15 = [v14 numberWithDouble:?];
          v56[6] = v15;
          v55[7] = @"maximumPossibleForce";
          v16 = MEMORY[0x277CCABB0];
          [v7 maximumPossibleForce];
          v17 = [v16 numberWithDouble:?];
          v56[7] = v17;
          v55[8] = @"altitudeAngle";
          v18 = MEMORY[0x277CCABB0];
          [v7 altitudeAngle];
          v19 = [v18 numberWithDouble:?];
          v56[8] = v19;
          v55[9] = @"estimationUpdateIndex";
          v20 = [v7 estimationUpdateIndex];
          v21 = v20;
          v22 = &unk_283371000;
          if (v20)
          {
            v22 = v20;
          }

          v56[9] = v22;
          v55[10] = @"estimatedProperties";
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "estimatedProperties")}];
          v56[10] = v23;
          v55[11] = @"estimatedPropertiesExpectingUpdates";
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "estimatedPropertiesExpectingUpdates")}];
          v56[11] = v24;
          v55[12] = @"location";
          v53[0] = @"x";
          v25 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
          v53[1] = @"y";
          v54[0] = v25;
          v26 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
          v54[1] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
          v56[12] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:13];

          [v45 addObject:v28];
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ %@]", v30, @"_SBLogCoalescedTouches"];
          v32 = [MEMORY[0x277D6A798] sharedInstance];
          v51 = v31;
          v52 = v45;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          [v32 log:v33];

          v6 = v46 + 1;
        }

        while (v38 != v46 + 1);
        v38 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v38);
    }

    v3 = v34;
  }
}

void _SBLogCoalescedTouchesForGestureAndView_0(void *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v41 = a2;
  v4 = [MEMORY[0x277D6A798] sharedInstance];
  v5 = [v4 isEnabled];

  if (v5)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v38 = v3;
    obj = v3;
    v42 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v42)
    {
      v40 = *v52;
      do
      {
        v6 = 0;
        do
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v51 + 1) + 8 * v6);
          v8 = _SBLocationForTouch(v7);
          v10 = v9;
          v49 = [MEMORY[0x277CBEB18] array];
          v50 = v6;
          v59[0] = @"timestamp";
          v11 = MEMORY[0x277CCABB0];
          [v7 timestamp];
          v48 = [v11 numberWithDouble:?];
          v60[0] = v48;
          v59[1] = @"phase";
          v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "phase")}];
          v60[1] = v47;
          v59[2] = @"tapCount";
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "tapCount")}];
          v60[2] = v46;
          v59[3] = @"type";
          v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "type")}];
          v60[3] = v45;
          v59[4] = @"majorRadius";
          v12 = MEMORY[0x277CCABB0];
          [v7 majorRadius];
          v44 = [v12 numberWithDouble:?];
          v60[4] = v44;
          v59[5] = @"majorRadiusToTolerance";
          v13 = MEMORY[0x277CCABB0];
          [v7 majorRadiusTolerance];
          v43 = [v13 numberWithDouble:?];
          v60[5] = v43;
          v59[6] = @"force";
          v14 = MEMORY[0x277CCABB0];
          [v7 force];
          v15 = [v14 numberWithDouble:?];
          v60[6] = v15;
          v59[7] = @"maximumPossibleForce";
          v16 = MEMORY[0x277CCABB0];
          [v7 maximumPossibleForce];
          v17 = [v16 numberWithDouble:?];
          v60[7] = v17;
          v59[8] = @"altitudeAngle";
          v18 = MEMORY[0x277CCABB0];
          [v7 altitudeAngle];
          v19 = [v18 numberWithDouble:?];
          v60[8] = v19;
          v59[9] = @"estimationUpdateIndex";
          v20 = [v7 estimationUpdateIndex];
          v21 = v20;
          v22 = &unk_283371060;
          if (v20)
          {
            v22 = v20;
          }

          v60[9] = v22;
          v59[10] = @"estimatedProperties";
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "estimatedProperties")}];
          v60[10] = v23;
          v59[11] = @"estimatedPropertiesExpectingUpdates";
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "estimatedPropertiesExpectingUpdates")}];
          v60[11] = v24;
          v59[12] = @"location";
          v57[0] = @"x";
          v25 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
          v57[1] = @"y";
          v58[0] = v25;
          v26 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
          v58[1] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
          v60[12] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:13];

          [v49 addObject:v28];
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ %@]", v30, @"_SBLogCoalescedTouches"];
          v32 = [MEMORY[0x277D6A798] sharedInstance];
          v56[0] = v49;
          v55[0] = v31;
          v55[1] = @"address";
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
          v56[1] = v33;
          v55[2] = @"name";
          v34 = [v41 name];
          v35 = v34;
          v36 = &stru_283094718;
          if (v34)
          {
            v36 = v34;
          }

          v56[2] = v36;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
          [v32 log:v37];

          v6 = v50 + 1;
        }

        while (v42 != v50 + 1);
        v42 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v42);
    }

    v3 = v38;
  }
}

void _SBLogCoalescedTouchesForGestureAndView_1(void *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v41 = a2;
  v4 = [MEMORY[0x277D6A798] sharedInstance];
  v5 = [v4 isEnabled];

  if (v5)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v38 = v3;
    obj = v3;
    v42 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v42)
    {
      v40 = *v52;
      do
      {
        v6 = 0;
        do
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v51 + 1) + 8 * v6);
          v8 = _SBLocationForTouch(v7);
          v10 = v9;
          v49 = [MEMORY[0x277CBEB18] array];
          v50 = v6;
          v59[0] = @"timestamp";
          v11 = MEMORY[0x277CCABB0];
          [v7 timestamp];
          v48 = [v11 numberWithDouble:?];
          v60[0] = v48;
          v59[1] = @"phase";
          v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "phase")}];
          v60[1] = v47;
          v59[2] = @"tapCount";
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "tapCount")}];
          v60[2] = v46;
          v59[3] = @"type";
          v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "type")}];
          v60[3] = v45;
          v59[4] = @"majorRadius";
          v12 = MEMORY[0x277CCABB0];
          [v7 majorRadius];
          v44 = [v12 numberWithDouble:?];
          v60[4] = v44;
          v59[5] = @"majorRadiusToTolerance";
          v13 = MEMORY[0x277CCABB0];
          [v7 majorRadiusTolerance];
          v43 = [v13 numberWithDouble:?];
          v60[5] = v43;
          v59[6] = @"force";
          v14 = MEMORY[0x277CCABB0];
          [v7 force];
          v15 = [v14 numberWithDouble:?];
          v60[6] = v15;
          v59[7] = @"maximumPossibleForce";
          v16 = MEMORY[0x277CCABB0];
          [v7 maximumPossibleForce];
          v17 = [v16 numberWithDouble:?];
          v60[7] = v17;
          v59[8] = @"altitudeAngle";
          v18 = MEMORY[0x277CCABB0];
          [v7 altitudeAngle];
          v19 = [v18 numberWithDouble:?];
          v60[8] = v19;
          v59[9] = @"estimationUpdateIndex";
          v20 = [v7 estimationUpdateIndex];
          v21 = v20;
          v22 = &unk_283372560;
          if (v20)
          {
            v22 = v20;
          }

          v60[9] = v22;
          v59[10] = @"estimatedProperties";
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "estimatedProperties")}];
          v60[10] = v23;
          v59[11] = @"estimatedPropertiesExpectingUpdates";
          v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "estimatedPropertiesExpectingUpdates")}];
          v60[11] = v24;
          v59[12] = @"location";
          v57[0] = @"x";
          v25 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
          v57[1] = @"y";
          v58[0] = v25;
          v26 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
          v58[1] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
          v60[12] = v27;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:13];

          [v49 addObject:v28];
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@ %@]", v30, @"_SBLogCoalescedTouches"];
          v32 = [MEMORY[0x277D6A798] sharedInstance];
          v56[0] = v49;
          v55[0] = v31;
          v55[1] = @"address";
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
          v56[1] = v33;
          v55[2] = @"name";
          v34 = [v41 name];
          v35 = v34;
          v36 = &stru_283094718;
          if (v34)
          {
            v36 = v34;
          }

          v56[2] = v36;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
          [v32 log:v37];

          v6 = v50 + 1;
        }

        while (v42 != v50 + 1);
        v42 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v42);
    }

    v3 = v38;
  }
}

id SBLogChrono()
{
  if (SBLogChrono_onceToken != -1)
  {
    SBLogChrono_cold_1();
  }

  v1 = SBLogChrono___logObj;

  return v1;
}

__CFString *NSStringFromSBSystemActionSuppressionViewObstructionEligibility(uint64_t a1)
{
  v1 = @"Always";
  if (a1 == 1)
  {
    v1 = @"Restricted";
  }

  if (a1 == 2)
  {
    return @"None";
  }

  else
  {
    return v1;
  }
}

id SBLogButtonsAction()
{
  if (SBLogButtonsAction_onceToken != -1)
  {
    SBLogButtonsAction_cold_1();
  }

  v1 = SBLogButtonsAction___logObj;

  return v1;
}

id SBLogBacklight()
{
  if (SBLogBacklight_onceToken != -1)
  {
    SBLogBacklight_cold_1();
  }

  v1 = SBLogBacklight___logObj;

  return v1;
}

void sub_21EDB834C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBLogAppStatusBars_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AppStatusBars");
  v1 = SBLogAppStatusBars___logObj;
  SBLogAppStatusBars___logObj = v0;
}

uint64_t SBSACustomLayoutForBehaviorOverrider()
{
  v0 = SATargetElementFromBehaviorOverrider();
  v1 = [v0 viewProvider];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 systemApertureCustomLayout];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SBLogSystemAperturePreferencesStackPruning()
{
  if (SBLogSystemAperturePreferencesStackPruning_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackPruning_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackPruning___logObj;

  return v1;
}

id SBLogSiri()
{
  if (SBLogSiri_onceToken != -1)
  {
    SBLogSiri_cold_1();
  }

  v1 = SBLogSiri___logObj;

  return v1;
}

void sub_21EDBD2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __SBSAObjectInCollectionAssociatedWithElementIdentity_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if ((SAElementIdentityEqualToIdentity() & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = a3;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
    goto LABEL_8;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [v10 associatedSystemApertureElementIdentity];
    v9 = SAElementIdentityEqualToIdentity();

    if (v9)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
}

BOOL SBSALayoutModeAndCustomLayoutOptionBehavesLikeTargetLayoutMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 3 && a2 == 5)
  {
    return (a3 - 1) < 2;
  }

  else
  {
    return a3 == a1;
  }
}

CGFloat SBSAFrameForElementInCollection(unint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 count] <= a1)
  {
    SBSAFrameForElementInCollection_cold_1();
  }

  if ([v5 count] <= a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:a1];
  }

  v8 = [v7 layoutMode];
  v9 = [v7 interfaceOrientation];
  if (v8 <= 0)
  {
    v14 = SBSAInitialFrameForElementAtIndex(a1, v9, v6);
LABEL_30:
    v16 = v14;
    goto LABEL_31;
  }

  v10 = v9 - 5;
  if (v8 != 3 || (v11 = [v7 systemApertureCustomLayout] - 1, v11 >= 6))
  {
    if (v10 < 0xFFFFFFFFFFFFFFFELL)
    {
      LOBYTE(v12) = 0;
      goto LABEL_15;
    }

LABEL_18:
    [v6 inertContainerFrame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    LOBYTE(v12) = 0;
    goto LABEL_24;
  }

  v12 = 0x27u >> v11;
  if (((0x27u >> v11) & 1) == 0 && v10 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ([v5 count])
  {
    v13 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v13 = 0;
  }

  [v13 preferredEdgeOutsets];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  if ((v12 & 1) == 0 && [v5 count] > 1)
  {
    v30 = 0.0;
  }

  SBSAPortraitFrameForPrimaryContainerView(v6, v24, v26, v28, v30);
  v16 = v31;
  v18 = v32;
  v20 = v33;
  v22 = v34;

LABEL_24:
  v35 = v10 < 0xFFFFFFFFFFFFFFFELL && a1 == 0;
  if (!v35 && (v12 & 1) == 0)
  {
    v14 = SBSAAdjunctFrameForElementInCollection(a1, v5, v6, v16, v18, v20, v22);
    goto LABEL_30;
  }

LABEL_31:

  return v16;
}

uint64_t SBSAPortraitFrameForPrimaryContainerView(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  [v9 inertContainerFrame];
  SBSARectApplyDirectionEdgeInsets([v9 layoutDirection], v10, v11, v12, v13, a2, a3, a4, a5);
  [v9 displayScale];

  return UIRectRoundToScale();
}

double SBSARectApplyDirectionEdgeInsets(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1 != 1)
  {
    a9 = a7;
  }

  return a2 + a9;
}

id SBSAElementIdentityOfSensorAttachedElementInCollection(void *a1)
{
  v1 = a1;
  v2 = SBSAIndexOfSensorAttachedElementInCollection(v1);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v1 objectAtIndexedSubscript:v2];
  }

  return v3;
}

uint64_t SBSAIndexOfSensorAttachedElementInCollection(void *a1)
{
  v1 = [a1 firstObject];
  v2 = v1;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (v1)
  {
    v4 = ([v1 interfaceOrientation] - 5) < 0xFFFFFFFFFFFFFFFELL;
    if ((v4 | SBSABehavesLikeCustom([v2 layoutMode], objc_msgSend(v2, "systemApertureCustomLayout"))))
    {
      v3 = 0;
    }
  }

  return v3;
}

CGAffineTransform *SBSASquishedTransform@<X0>(_OWORD *a1@<X0>, int a2@<W1>, int a3@<W2>, CGAffineTransform *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v10 = -1.0;
  if (a2)
  {
    v10 = 1.0;
  }

  if (a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = -v10;
  }

  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&t1, 1.0 - a5, 1.0);
  CGAffineTransformMakeTranslation(&v14, v11 * a5 * a6 * 0.5, 0.0);
  CGAffineTransformConcat(&v16, &t1, &v14);
  v12 = a1[1];
  *&t1.a = *a1;
  *&t1.c = v12;
  *&t1.tx = a1[2];
  v14 = v16;
  return CGAffineTransformConcat(a4, &t1, &v14);
}

uint64_t SBWorkspaceEntitiesAreAnalagous(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isAnalogousToEntity:a2];
  }
}

id SBLogSystemAperturePreferencesStackMutation()
{
  if (SBLogSystemAperturePreferencesStackMutation_onceToken != -1)
  {
    SBLogSystemAperturePreferencesStackMutation_cold_1();
  }

  v1 = SBLogSystemAperturePreferencesStackMutation___logObj;

  return v1;
}

void SBSystemAperturePowerLogEvent(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v14 = a1;
  v9 = a2;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v12 setObject:v13 forKeyedSubscript:@"Layout"];

  if (v14 && v9)
  {
    [v12 setObject:v14 forKeyedSubscript:@"PrimaryClient"];
    [v12 setObject:v9 forKeyedSubscript:@"PrimaryElement"];
  }

  if (v10 && v11)
  {
    [v12 setObject:v10 forKeyedSubscript:@"SecondaryClient"];
    [v12 setObject:v11 forKeyedSubscript:@"SecondaryElement"];
  }

  PLLogTimeSensitiveRegisteredEvent();
}

uint64_t _SBXXSetTypingActive(uint64_t a1, char a2, __int128 *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = SBRunningApplicationForAuditToken();
  if (v5 || (v6 = a3[1], v14[0] = *a3, v14[1] = v6, ![MEMORY[0x277D0AAF8] authenticateAuditToken:v14 forEntitlement:@"com.apple.springboard.setTypingActive" error:0]))
  {
    v8 = 5;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXSetTypingActive_block_invoke;
    block[3] = &__block_descriptor_65_e5_v8__0l;
    v13 = a2;
    v7 = a3[1];
    v11 = *a3;
    v12 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v8 = 0;
  }

  return v8;
}

void sub_21EDC0A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBLogAudioControl()
{
  if (SBLogAudioControl_onceToken != -1)
  {
    SBLogAudioControl_cold_1();
  }

  v1 = SBLogAudioControl___logObj;

  return v1;
}

void __SBLogAudioControl_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "AudioControl");
  v1 = SBLogAudioControl___logObj;
  SBLogAudioControl___logObj = v0;
}

uint64_t SBEqualObjects(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

void sub_21EDC15BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SBLogSystemApertureLockElement()
{
  if (SBLogSystemApertureLockElement_onceToken != -1)
  {
    SBLogSystemApertureLockElement_cold_1();
  }

  v1 = SBLogSystemApertureLockElement___logObj;

  return v1;
}

id SBLogAmbientPresentation()
{
  if (SBLogAmbientPresentation_onceToken != -1)
  {
    SBLogAmbientPresentation_cold_1();
  }

  v1 = SBLogAmbientPresentation___logObj;

  return v1;
}

void sub_21EDC299C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21EDC3780(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id SBLogIconStyle()
{
  if (SBLogIconStyle_onceToken != -1)
  {
    SBLogIconStyle_cold_1();
  }

  v1 = SBLogIconStyle___logObj;

  return v1;
}

void sub_21EDC4804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PUIHomeScreenStyleTypeForTypeDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"auto"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"light") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"dark") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"color"))
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"clear"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"accent"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 5;
  }

  return v2;
}

uint64_t __PUIHomeScreenStyleVariantFromSBSHomeScreenIconStyleConfigurationVariantDescription(void *a1)
{
  v1 = a1;
  v2 = 1;
  v3 = SBSStringForHomeScreenIconStyleConfigurationVariant();
  v4 = [v1 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v5 = SBSStringForHomeScreenIconStyleConfigurationVariant();
    v6 = [v1 isEqualToString:v5];

    if (v6)
    {
      v2 = 2;
    }

    else
    {
      v7 = SBSStringForHomeScreenIconStyleConfigurationVariant();
      [v1 isEqualToString:v7];

      v2 = 0;
    }
  }

  return v2;
}

uint64_t _PUIHomeScreenIconTintSourceFromDescription(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"custom"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"wallpaperSuggestion"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"caseColor"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"enclosureColor"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SBLogProximitySensor()
{
  if (SBLogProximitySensor_onceToken != -1)
  {
    SBLogProximitySensor_cold_1();
  }

  v1 = SBLogProximitySensor___logObj;

  return v1;
}

__CFString *NSStringFromSBDisabledDigitizerMode(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown:%X>", a1];
  }

  else
  {
    v2 = off_2783C1150[a1];
  }

  return v2;
}

__CFString *SBSBacklightChangeSourceDescription(uint64_t a1)
{
  if ((a1 - 1) > 0x30)
  {
    return @"invalid";
  }

  else
  {
    return off_2783AB7A0[a1 - 1];
  }
}

__CFString *NSStringFromSBUIControllerRequireContentOptions(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __NSStringFromSBUIControllerRequireContentOptions_block_invoke;
    v15 = &unk_2783A95A0;
    v3 = v2;
    v16 = v3;
    v4 = &v12;
    v5 = 0;
    v17 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v14)(v4);
        if (v17)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);

    v8 = MEMORY[0x277CCACA8];
    v9 = [v3 componentsJoinedByString:@" "];
    v10 = [v8 stringWithFormat:@"( %lu / %@)", a1, v9, v12, v13];
  }

  else
  {
    v10 = @"(SBUIControllerRequireContentOptions none)";
  }

  return v10;
}

id SBLogContinuity()
{
  if (SBLogContinuity_onceToken != -1)
  {
    SBLogContinuity_cold_1();
  }

  v1 = SBLogContinuity___logObj;

  return v1;
}

void __SBLogContinuity_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x277D66E38], "Continuity");
  v1 = SBLogContinuity___logObj;
  SBLogContinuity___logObj = v0;
}

uint64_t __blockIMPFromQuerySignature24_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MethodCacheDispatchDataForSelectorIndex(*(a2 + 16), *(a1 + 32));
  v9 = v8;
  v10 = *(a1 + 40);

  return v9(v7, v10, a3, a4);
}

void sub_21EDC8170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EDC8414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21EDC8D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _SBShortElementDescription(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v2 elementIdentifier];
  v4 = [v2 clientIdentifier];

  v5 = [v1 stringWithFormat:@"<%@, %@>", v3, v4];

  return v5;
}

void __SBLayoutRoleIsValidForSplitView_block_invoke()
{
  v2 = SBLayoutRoleSetAppLayout();
  v0 = [v2 setByRemovingRole:4];
  v1 = SBLayoutRoleIsValidForSplitView___splitViewRoles;
  SBLayoutRoleIsValidForSplitView___splitViewRoles = v0;
}

id SBLayoutRoleSetAppLayout()
{
  if (SBLayoutRoleSetAppLayout_onceToken != -1)
  {
    SBLayoutRoleSetAppLayout_cold_1();
  }

  v1 = SBLayoutRoleSetAppLayout___appRoles;

  return v1;
}

void __SBLayoutRoleSetAppLayout_block_invoke()
{
  v2 = SBLayoutRoleSetAll();
  v0 = [v2 setByRemovingRole:3];
  v1 = SBLayoutRoleSetAppLayout___appRoles;
  SBLayoutRoleSetAppLayout___appRoles = v0;
}

void __SBLayoutRoleSetAll_block_invoke()
{
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_373);
  }

  v0 = SBLayoutRoleMax_layoutRoleMax;
  v1 = [SBLayoutRoleSet alloc];
  [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{1, v0}];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_35();
  v3 = [(SBLayoutRoleSet *)v1 _initWithRoles:v2];
  v4 = qword_281250828;
  qword_281250828 = v3;
}

BOOL SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutState()
{
  v0 = SBWorkspaceApplicationSceneHandlesInLockedOrUnlockedEnvironmentLayoutState();
  v1 = [v0 count] != 0;

  return v1;
}

void sub_21EDCCC20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v5 - 136));
  _Unwind_Resume(a1);
}

uint64_t __NSStringFromSBUIControllerRequireContentOptions_block_invoke(uint64_t result, uint64_t a2)
{
  switch(a2)
  {
    case 1:
      v2 = @"SBUIControllerRequireContentOptionWithoutUpdatingStatusBar";
      break;
    case 4:
      v2 = @"SBUIControllerRequireContentOptionReactivateSpotlight";
      break;
    case 2:
      v2 = @"SBUIControllerRequireContentOptionWithoutCheckingAuthenticationState";
      break;
    default:
      return result;
  }

  return [*(result + 32) addObject:v2];
}

id SBLogLiftToWake()
{
  if (SBLogLiftToWake_onceToken != -1)
  {
    SBLogLiftToWake_cold_1();
  }

  v1 = SBLogLiftToWake___logObj;

  return v1;
}

__CFString *NSStringFromSBLiftToWakeTransition(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_2783B69A8[a1 - 1];
  }
}

id _SBLazyMutableSetAddString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB58] set];
  }

  [v3 addObject:v4];

  return v3;
}

id _SBIdleTimeoutsDescriptionForLogging(void *a1)
{
  v1 = MEMORY[0x277CF0C08];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___SBIdleTimeoutsDescriptionForLogging_block_invoke;
  v7[3] = &unk_2783B6D78;
  v8 = v3;
  v4 = v3;
  [v4 appendCollection:v2 withName:0 itemBlock:v7];

  v5 = [v4 description];

  return v5;
}

uint64_t BLSBacklightChangeSourceEventForSBSBacklightChangeSource(uint64_t a1)
{
  if ((a1 - 2) > 0x2C)
  {
    return 0;
  }

  else
  {
    return qword_21F8A88D8[a1 - 2];
  }
}

void SBWorkspaceSetPreventIdleSleepForReason(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D0AB08];
  v4 = a2;
  v5 = [v3 sharedInstance];
  [v5 setSystemIdleSleepDisabled:a1 forReason:v4];
}

void sub_21EDD426C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

__CFString *SBStringFromSystemApertureBackgroundLuminanceLevel(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Light";
  }

  if (a1 == 2)
  {
    return @"Dark";
  }

  else
  {
    return v1;
  }
}

void _SBWorkspaceNoteSleepOrWake(int a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (__SBWTrackPowerEvents == 1)
  {
    v2 = __SBWRecentSleepsAndWakes;
    if (!__SBWRecentSleepsAndWakes)
    {
      v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v4 = __SBWRecentSleepsAndWakes;
      __SBWRecentSleepsAndWakes = v3;

      v2 = __SBWRecentSleepsAndWakes;
    }

    if ([v2 count] == 400)
    {
      [__SBWRecentSleepsAndWakes removeObjectAtIndex:0];
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [MEMORY[0x277CF0BF0] sharedInstance];
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = [v6 formatDateAsLongYMDHMSZWithDate:v7];

    [v5 setObject:v8 forKey:@"time"];
    if (a1)
    {
      memset(v18, 0, sizeof(v18));
      v17 = 256;
      sysctlbyname("kern.wakereason", v18, &v17, 0, 0);
      if (LOBYTE(v18[0]))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
        [v5 setObject:v9 forKey:@"reason"];
      }

      v10 = @"Wake";
    }

    else
    {
      v10 = @"Sleep";
    }

    [v5 setObject:v10 forKey:@"type"];
    v11 = objc_alloc(MEMORY[0x277CCABB0]);
    _SBWorkspaceUpdateBatteryUsageTime(0);
    v12 = [v11 initWithDouble:*&__SBWCurrentUsageTimeInSeconds];
    v13 = objc_alloc(MEMORY[0x277CCABB0]);
    v14 = 0.0;
    if (*&__SBWInitialStandbyTimeGMT != 0.0)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v14 = *&__SBWSavedStandbyTime + v15 - *&__SBWInitialStandbyTimeGMT;
    }

    v16 = [v13 initWithDouble:v14];
    [v5 setObject:v12 forKey:@"usage"];
    [v5 setObject:v16 forKey:@"standby"];
    [__SBWRecentSleepsAndWakes addObject:v5];
  }
}

void sub_21EDD47E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t _SBXXSetAllApplicationsShowProgress(uint64_t a1, int a2, _OWORD *a3)
{
  BSDispatchQueueAssertNotMain();
  v5 = [MEMORY[0x277D0AAF8] sharedSystemClientAuthenticator];
  v6 = a3[1];
  v25[0] = *a3;
  v25[1] = v6;
  v7 = [MEMORY[0x277CF0B98] tokenFromAuditToken:v25];
  v24 = 0;
  v8 = [v5 authenticateAuditToken:v7 error:&v24];
  v9 = v24;

  if (v8)
  {
    v10 = BSPIDForAuditToken();
    v11 = BSBundleIDForAuditToken();
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v16 = BSProcessNameForPID();
      v17 = v16;
      v18 = @"unknown";
      if (v16)
      {
        v18 = v16;
      }

      v13 = v18;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___SBXXSetAllApplicationsShowProgress_block_invoke;
    block[3] = &unk_2783A8BC8;
    v21 = v13;
    v22 = v10;
    v23 = a2;
    v14 = v13;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v15 = 0;
  }

  else
  {
    v14 = SBLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _SBXXSetAllApplicationsShowProgress_cold_1(v9);
    }

    v15 = 5;
  }

  return v15;
}

__CFString *NSStringFromSBVolumeMode(unint64_t a1)
{
  if (a1 < 5)
  {
    return off_2783AC0E0[a1];
  }

  v2 = SBLogCommon();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    NSLog(&cfstr_UnhandledSbvol.isa);
  }

  return @"UNKNOWN SBVolumeMode";
}

uint64_t SBCallStateInCall()
{
  v0 = +[SBConferenceManager sharedInstance];
  v1 = [v0 inFaceTime];
  v2 = v1 | sInTelephonyCall;

  return v2 & 1;
}

void SBUpdateCallState()
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v0 = *MEMORY[0x277D679E0];
  v1 = [MEMORY[0x277CCABB0] numberWithBool:SBCallStateInCall()];
  [v2 postNotificationName:v0 object:v1 userInfo:0];
}

id SBLogSystemApertureNotice()
{
  if (SBLogSystemApertureNotice_onceToken != -1)
  {
    SBLogSystemApertureNotice_cold_1();
  }

  v1 = SBLogSystemApertureNotice___logObj;

  return v1;
}

__CFString *SBSystemGestureTypeDebugName(uint64_t a1)
{
  v4 = @"None";
  switch(a1)
  {
    case 0:
      goto LABEL_168;
    case 1:
      v4 = @"Show Cover Sheet";

      break;
    case 2:
      v4 = @"Dismiss Cover Sheet";

      break;
    case 3:
      v4 = @"Dismiss Cover Sheet More";

      break;
    case 4:
      v4 = @"Dismiss Secure App";

      break;
    case 5:
      v4 = @"Dismiss Long Look";

      break;
    case 7:
      v4 = @"Dismiss Cover Sheet from Pointer";

      break;
    case 8:
      v4 = @"Dismiss Cover Sheet Scrunch";

      break;
    case 9:
      v4 = @"Dismiss Secure App from Pointer";

      break;
    case 10:
      v4 = @"Dismiss Secure App Scrunch";

      break;
    case 11:
      v4 = @"Dismiss SystemUI Scene";

      break;
    case 12:
      v4 = @"Scrunch";

      break;
    case 13:
      v4 = @"Floating Application Scrunch";

      break;
    case 14:
      v4 = @"Bring Occluded Item Container Forward";

      break;
    case 15:
      v4 = @"Click Down To Bring Occluded Item Container Forward";

      break;
    case 16:
      v4 = @"Scene Resize";

      break;
    case 17:
      v4 = @"Legacy Scene Resize";

      break;
    case 18:
      v4 = @"Unpin Side Application";

      break;
    case 19:
      v4 = @"Present Right Floating Application";

      break;
    case 20:
      v4 = @"Present Left Floating Application";

      break;
    case 23:
      v4 = @"Move Floating Application";

      break;
    case 24:
      v4 = @"Pin Floating Application";

      break;
    case 25:
      v4 = @"Move Floating Application (Client Relationship)";

      break;
    case 26:
      v4 = @"Floating Application Bottom Edge";

      break;
    case 27:
      v4 = @"Dismiss Transient UI";

      break;
    case 28:
      v4 = @"Dismiss Transient UI Indirect Pan";

      break;
    case 29:
      v4 = @"Unhide Transient UI";

      break;
    case 30:
      v4 = @"Unhide Transient UI Double Tap";

      break;
    case 32:
      v4 = @"Dismiss Dock";

      break;
    case 36:
      v4 = @"Present Right Floating Application From Pointer";

      break;
    case 37:
      v4 = @"Present Left Floating Application From Pointer";

      break;
    case 38:
      v4 = @"Dismiss Floating Application From Pointer";

      break;
    case 39:
      v4 = @"Switcher Bottom Edge";

      break;
    case 40:
      v4 = @"Dismiss Modal UI";

      break;
    case 41:
      v4 = @"Dismiss Alert Item";

      break;
    case 42:
      v4 = @"Click and Drag Home Gesture";

      break;
    case 43:
      v4 = @"Dismiss Modal UI From Pointer";

      break;
    case 44:
      v4 = @"Dismiss Modal UI Scrunch";

      break;
    case 45:
      v4 = @"Dismiss Alert Item From Pointer";

      break;
    case 46:
      v4 = @"Dismiss Alert Item Scrunch";

      break;
    case 48:
      v4 = @"Reveal Continuous Expose Strips Pointer";

      break;
    case 49:
      v4 = @"Reveal Continuous Expose Strip Overflow Pointer";

      break;
    case 50:
      v4 = @"Reveal Continuous Expose Strip Overflow Drag";

      break;
    case 51:
      v4 = @"Reveal Continuous Expose Strip Grabber Tongue";

      break;
    case 52:
      v4 = @"User Click In App Interaction";

      break;
    case 56:
      v4 = @"Show ControlCenter";

      break;
    case 57:
      v4 = @"Show Control Center from Status Bar";

      break;
    case 58:
      v4 = @"Show Control Center from Status Bar from Pointer";

      break;
    case 59:
      v4 = @"Dismiss Control Center";

      break;
    case 60:
      v4 = @"Dismiss Control Center Outside Content Interaction (Tap)";

      break;
    case 61:
      v4 = @"Dismiss Control Center Outside Content Interaction (Pan)";

      break;
    case 62:
      v4 = @"Dismiss Control Center From Pointer";

      break;
    case 63:
      v4 = @"Dismiss Control Center Scrunch";

      break;
    case 68:
      v4 = @"CarPlay Banner Dismiss";

      break;
    case 95:
      v4 = @"Dismiss Camera UI DashBoard";

      break;
    case 96:
      v4 = @"Dismiss Modal UI DashBoard";

      break;
    case 97:
      v4 = @"Dismiss Camera UI DashBoard From Pointer";

      break;
    case 98:
      v4 = @"Dismiss Camera UI DashBoard Scrunch";

      break;
    case 99:
      v4 = @"Home Affordance Bounce Tap";

      break;
    case 100:
      v4 = @"Home Affordance Bounce Double Tap";

      break;
    case 101:
      v4 = @"Home Affordance Bounce Double Tap Failure";

      break;
    case 102:
      v4 = @"Home Affordance Reveal Tap";

      break;
    case 103:
      v4 = @"Home Affordance Reveal Double Tap";

      break;
    case 104:
      v4 = @"Home Affordance Reveal Edge Pan";

      break;
    case 110:
      v4 = @"Dismiss Cover Sheet Home Screen Overlay From Pointer";

      break;
    case 111:
      v4 = @"Dismiss Cover Sheet Home Screen Overlay Scrunch";

      break;
    case 113:
      v4 = @"Pan Banner";

      break;
    case 114:
      v4 = @"Dismiss Banner That Owns Home Affordance";

      break;
    case 115:
      v4 = @"Dismiss Banner That Owns Home Affordance From Pointer";

      break;
    case 116:
      v4 = @"Dismiss Banner That Owns Home Affordance Scrunch";

      break;
    case 117:
      v4 = @"Dismiss Siri";

      break;
    case 118:
      v4 = @"Dismiss Siri by Bottom Edge Pan";

      break;
    case 119:
      v4 = @"Dismiss Siri by Pan";

      break;
    case 120:
      v4 = @"Present Notes PIP from Left Corner by Pencil";

      break;
    case 121:
      v4 = @"Present Notes PIP from Right Corner by Pencil";

      break;
    case 122:
      v4 = @"Present Notes PIP from Left Corner by Finger";

      break;
    case 123:
      v4 = @"Present Notes PIP from Right Corner by Finger";

      break;
    case 124:
      v4 = @"Notes PIP Pan While Pinching";

      break;
    case 125:
      v4 = @"Notes PIP Pinch";

      break;
    case 126:
      v4 = @"Notes PIP Rotate";

      break;
    case 135:
      v4 = @"System Aperture Resize";

      break;
    case 136:
      v4 = @"System Aperture Interaction";

      break;
    case 141:
      v4 = @"Show Menu Bar";

      break;
    case 142:
      v4 = @"Show Menu Bar From Pointer";

      break;
    case 143:
      v4 = @"Dismiss Menu Bar From Pointer";

      break;
    default:
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", a1];
LABEL_168:

      break;
  }

  return v4;
}

id SBAddBackgroundActivityAssertionDataByIdentifier(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v3 backgroundActivityIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v4 objectForKey:v11];
        if (!v12)
        {
          v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
          [v4 setObject:v12 forKey:v11];
          [v5 addObject:v11];
        }

        [v12 addObject:v3];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

void sub_21EDD7B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v5 - 88));
  _Unwind_Resume(a1);
}

id SBRemoveBackgroundActivityAssertionDataByIdentifier(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v3 backgroundActivityIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v4 objectForKey:v11];
        [v12 removeObject:v3];
        if (![v12 count])
        {
          [v4 removeObjectForKey:v11];
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

BOOL SBAddBackgroundActivityAttributionByIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 backgroundActivityIdentifier];
  v6 = [v4 objectForKey:v5];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [v4 setObject:v7 forKey:v5];
  }

  [v7 addObject:v3];

  return v6 == 0;
}

BOOL SBRemoveBackgroundActivityAttributionByIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 backgroundActivityIdentifier];
  v6 = [v3 objectForKey:v5];
  [v6 removeObject:v4];

  v7 = [v6 count];
  if (!v7)
  {
    [v3 removeObjectForKey:v5];
  }

  return v7 == 0;
}

id SBLogActivity()
{
  if (SBLogActivity_onceToken != -1)
  {
    SBLogActivity_cold_1();
  }

  v1 = SBLogActivity___logObj;

  return v1;
}

void sub_21EDD8D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21EDDA41C(mach_port_t a1, int a2, int *a3, uint64_t a4, int a5, _OWORD *a6, void *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v52 = *MEMORY[0x277D85DE8];
  v31 = 1;
  v32 = a4;
  v33 = 16777472;
  v34 = a5;
  v35 = *MEMORY[0x277D85EF8];
  v17 = *a3;
  v36 = a2;
  v37 = v17;
  v38 = a5;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v20 = mach_msg(&msg, 3, 0x40u, 0xDCu, msgh_local_port, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) <= 0xE && ((1 << (v20 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v20)
    {
      if (msg.msgh_id == 71)
      {
        v21 = 4294966988;
      }

      else if (msg.msgh_id == 1300)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v21 = 4294966996;
          if (v31 == 2 && msg.msgh_size == 212 && !msg.msgh_remote_port && HIBYTE(v33) == 1 && HIWORD(v36) << 16 == 1114112)
          {
            v22 = v34;
            if (v34 == v48)
            {
              v21 = 0;
              v23 = v35;
              *a3 = v39;
              v24 = v47;
              a6[6] = v46;
              a6[7] = v24;
              v25 = v45;
              a6[4] = v44;
              a6[5] = v25;
              v26 = v41;
              *a6 = v40;
              a6[1] = v26;
              v27 = v43;
              a6[2] = v42;
              a6[3] = v27;
              *a7 = v32;
              *a8 = v22;
              v28 = v50;
              *a9 = v49;
              *a10 = v28;
              *a11 = v51;
              *a12 = v23;
              return v21;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v21 = 4294966996;
          if (HIDWORD(v32))
          {
            if (msg.msgh_remote_port)
            {
              v21 = 4294966996;
            }

            else
            {
              v21 = HIDWORD(v32);
            }
          }
        }

        else
        {
          v21 = 4294966996;
        }
      }

      else
      {
        v21 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v21;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v21;
}

uint64_t sub_21EDDA67C(mach_port_t a1, unsigned int a2, __int128 *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3[5];
  v20 = a3[4];
  v21 = v4;
  v5 = a3[7];
  v22 = a3[6];
  v23 = v5;
  v6 = a3[1];
  v16 = *a3;
  v17 = v6;
  v7 = a3[3];
  v18 = a3[2];
  v14 = *MEMORY[0x277D85EF8];
  v15 = a2;
  v19 = v7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v10 = mach_msg(&msg, 3, 0xA4u, 0x2Cu, msgh_local_port, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) <= 0xE && ((1 << (v10 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (v10)
  {
    mig_dealloc_reply_port(msg.msgh_local_port);
    return v11;
  }

  if (msg.msgh_id == 71)
  {
    v11 = 4294966988;
LABEL_18:
    mach_msg_destroy(&msg);
    return v11;
  }

  if (msg.msgh_id != 1301)
  {
    v11 = 4294966995;
    goto LABEL_18;
  }

  v11 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_18;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_18;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_18;
  }

  v11 = v15;
  if (v15)
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_21EDDA810(mach_port_t a1, int a2, int a3, int a4, _OWORD *a5, uint64_t a6, int a7, _OWORD *a8, void *a9, _DWORD *a10)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = a6;
  v21 = 16777472;
  v22 = a7;
  v23 = *MEMORY[0x277D85EF8];
  *v24 = a2;
  *&v24[4] = a3;
  *&v24[8] = a4;
  *&v24[12] = *a5;
  v25 = a7;
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = -2147478253;
  *&msg.msgh_voucher_port = 0x4B200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v14 = mach_msg(&msg, 3, 0x54u, 0x50u, msgh_local_port, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v14)
    {
      if (msg.msgh_id == 71)
      {
        v15 = 4294966988;
      }

      else if (msg.msgh_id == 1302)
      {
        if ((msg.msgh_bits & 0x80000000) != 0)
        {
          v15 = 4294966996;
          if (v19 == 1 && msg.msgh_size == 72 && !msg.msgh_remote_port && HIBYTE(v21) == 1)
          {
            v16 = v22;
            if (v22 == *&v24[16])
            {
              v15 = 0;
              *a8 = *v24;
              *a9 = v20;
              *a10 = v16;
              return v15;
            }
          }
        }

        else if (msg.msgh_size == 36)
        {
          v15 = 4294966996;
          if (HIDWORD(v20))
          {
            if (msg.msgh_remote_port)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = HIDWORD(v20);
            }
          }
        }

        else
        {
          v15 = 4294966996;
        }
      }

      else
      {
        v15 = 4294966995;
      }

      mach_msg_destroy(&msg);
      return v15;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  return v15;
}

uint64_t sub_21EDDAA04(mach_port_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  reply_port = mig_get_reply_port();
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  msg.msgh_bits = 5395;
  *&msg.msgh_voucher_port = 0x4B300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v12 = mach_msg(&msg, 3, 0x18u, 0x3Cu, msgh_local_port, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (v12)
    {
      mig_dealloc_reply_port(msg.msgh_local_port);
      return v13;
    }

    if (msg.msgh_id == 71)
    {
      v13 = 4294966988;
    }

    else if (msg.msgh_id == 1303)
    {
      if ((msg.msgh_bits & 0x80000000) == 0)
      {
        if (msg.msgh_size == 52)
        {
          if (!msg.msgh_remote_port)
          {
            v13 = v19;
            if (!v19)
            {
              v16 = v21;
              *a2 = v20;
              *a3 = v16;
              v17 = v23;
              *a4 = v22;
              *a5 = v17;
              return v13;
            }

            goto LABEL_24;
          }
        }

        else if (msg.msgh_size == 36)
        {
          if (msg.msgh_remote_port)
          {
            v14 = 1;
          }

          else
          {
            v14 = v19 == 0;
          }

          if (v14)
          {
            v13 = 4294966996;
          }

          else
          {
            v13 = v19;
          }

          goto LABEL_24;
        }
      }

      v13 = 4294966996;
    }

    else
    {
      v13 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v13;
  }

  mig_put_reply_port(msg.msgh_local_port);
  return v13;
}

uint64_t sub_21EDDAB84(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(&off_283092A30 + ((105 * ((qword_27CF15920 - dword_27CF158C0) ^ 2)) ^ byte_21F8B5550[byte_21F8B2290[(105 * ((qword_27CF15920 - dword_27CF158C0) ^ 2))] ^ 0xBE]) - 102);
  v2 = *(v1 - 4);
  v3 = off_283092BE0;
  v4 = off_283092EE8 - 8;
  v5 = *(&off_283092A30 + (*(off_283092EE8 + (*(off_283092BE0 + (105 * (v2 ^ qword_27CF15920 ^ 2))) ^ 0xB0u) - 8) ^ (105 * (v2 ^ qword_27CF15920 ^ 2))) - 85);
  v6 = 898597993 * (((*(v5 - 4) ^ v2) - &v8) ^ 0x7EEF7CEF64A51302);
  *(v1 - 4) = v6;
  *(v5 - 4) = v6;
  v10 = 977 - 1388665877 * (&v9 ^ 0x8DAD62EC);
  v9 = a1;
  LOBYTE(v5) = 105 * ((*(v5 - 4) - *(v1 - 4)) ^ 2);
  return (*(*(&off_283092A30 + ((105 * ((qword_27CF15920 - dword_27CF158C0) ^ 2)) ^ byte_21F8AD2E0[byte_21F8B8050[(105 * ((qword_27CF15920 - dword_27CF158C0) ^ 2))] ^ 0x11]) - 104) + (v5 ^ v4[v3[v5] ^ 0x33]) + 2109))(&v9);
}

uint64_t sub_21EDDAECC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(&off_283092A30 + ((105 * ((qword_27CF15920 + dword_27CF158E0) ^ 2)) ^ byte_21F8B5550[byte_21F8B2290[(105 * ((qword_27CF15920 + dword_27CF158E0) ^ 2))] ^ 0xBE]) - 201);
  v2 = 105 * ((qword_27CF15920 - *v1) ^ 2);
  v3 = *(&off_283092A30 + (*(off_283092C18 + (*(off_283092B80 + v2 - 12) ^ 0xA9u) - 4) ^ v2) - 18);
  v4 = *(v3 - 4) - *v1 - &v6;
  *v1 = (898597993 * v4) ^ 0x7EEF7CEF64A51302;
  *(v3 - 4) = 898597993 * (v4 ^ 0x7EEF7CEF64A51302);
  v7 = a1;
  v8 = 607 - 1037613739 * ((((2 * &v7) | 0xFA233E62) - &v7 + 49176783) ^ 0x2C13B24E);
  LOBYTE(v3) = 105 * ((*(v3 - 4) - *v1) ^ 2);
  return (*(*(&off_283092A30 + ((105 * ((qword_27CF15920 - dword_27CF158E0) ^ 2)) ^ byte_21F8B7D50[byte_21F8B5450[(105 * ((qword_27CF15920 - dword_27CF158E0) ^ 2))] ^ 0x33]) - 33) + (*(off_283092CA0 + (*(off_283092DD8 + v3 - 4) ^ 0x70u) - 12) ^ v3) + 1959))(&v7);
}

uint64_t sub_21EDDB210(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(&off_283092A30 + ((105 * ((qword_27CF15920 + dword_27CF15938) ^ 2)) ^ byte_21F8B7D50[byte_21F8B5450[(105 * ((qword_27CF15920 + dword_27CF15938) ^ 2))] ^ 0x9C]) - 60);
  v2 = off_283092BE0;
  v3 = off_283092EE8 - 8;
  v4 = *(&off_283092A30 + (*(off_283092EE8 + (*(off_283092BE0 + (105 * ((qword_27CF15920 - *v1) ^ 2))) ^ 0x9Cu) - 8) ^ (105 * ((qword_27CF15920 - *v1) ^ 2))) - 148);
  v5 = *(v4 - 4) - *v1 - &v7;
  *v1 = 898597993 * v5 - 0x7EEF7CEF64A51302;
  *(v4 - 4) = 898597993 * (v5 ^ 0x7EEF7CEF64A51302);
  v8 = 814 - 1388665877 * (((&v8 | 0x9815A9CD) + (~&v8 | 0x67EA5632)) ^ 0x15B8CB20);
  v9 = a1;
  LOBYTE(v4) = 105 * ((*(v4 - 4) - *v1) ^ 2);
  (*(*(&off_283092A30 + ((105 * ((qword_27CF15920 + dword_27CF15938) ^ 2)) ^ byte_21F8AD1E0[byte_21F8B7F50[(105 * ((qword_27CF15920 + dword_27CF15938) ^ 2))] ^ 0x70]) - 163) + (v4 ^ v3[v2[v4] ^ 0xB0]) + 2029))(&v8);
  return v10;
}

void sub_21EDDB574(uint64_t a1)
{
  v1 = *a1 + 1388665877 * ((2 * (a1 & 0x7CCC2CF2) - a1 + 53728013) ^ 0x8E9EB1E1);
  v2 = v1 ^ 0x541;
  v3 = (v1 ^ 0xA83F464F) + *(*(a1 + 8) + 4);
  if (v3 < 0)
  {
    v3 = -v3;
  }

  v4 = v3 > ((3 * (v2 ^ 0x15F)) ^ 0x6DE);
  __asm { BRAA            X13, X17 }
}

uint64_t sub_21EDDB7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = v12 + 1317592879 < a12 - 631243217;
  if (a12 - 631243217 < ((v14 - 393) | 0x40u) + 1317592797 != v12 > 0xB17720D0)
  {
    v15 = a12 - 631243217 < ((v14 - 393) | 0x40u) + 1317592797;
  }

  return (*(v13 + 8 * ((73 * !v15) ^ v14)))();
}

void sub_21EDDB820(uint64_t a1)
{
  v1 = *(a1 + 8) - 742307843 * ((2 * (a1 & 0xF82C26B9) - a1 + 131324230) ^ 0x19F15413);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_21EDDB928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v24 = v18 ^ 0x1F8;
  v25 = v23 - 144;
  *(v23 - 128) = &a18;
  *(v23 - 120) = v21;
  *(v23 - 144) = &a18;
  *(v23 - 136) = v20;
  *(v23 - 112) = v24 + 155 + 1388665877 * ((-1073758192 - ((v23 - 144) | 0xBFFFC010) + ((v23 - 144) | 0x40003FEF)) ^ 0xCDAD5D03);
  (*(v19 + 8 * (v24 ^ 0xCFC)))(v23 - 144);
  *(v23 - 112) = v24 + 155 + 1388665877 * ((v23 + 2078565491 - 2 * ((v23 - 144) & 0x7BE46503)) ^ 0xF64907EF);
  *(v23 - 128) = &a18;
  *(v23 - 120) = v21;
  *(v23 - 144) = &a18;
  *(v23 - 136) = v20;
  (*(v19 + 8 * (v24 + 964)))(v23 - 144);
  *(v23 - 112) = v24 + 155 + 1388665877 * ((v23 - 437773954 - 2 * ((v23 - 144) & 0xE5E81A0E)) ^ 0x684578E2);
  *(v23 - 128) = &a18;
  *(v23 - 120) = v21;
  *(v23 - 144) = &a18;
  *(v23 - 136) = v20;
  (*(v19 + 8 * (v24 + 964)))(v23 - 144);
  v26 = 1082434553 * ((2 * (v25 & 0x54E3E620) - v25 + 723261913) ^ 0xB05BEF53);
  *(v23 - 140) = (v24 + 552) ^ v26;
  *(v23 - 136) = 1548402275 * v22 + 307133055 + ((v24 + 47648766) & 0xFD28EFEF) + v26 - 1162;
  *(v23 - 128) = a15;
  (*(v19 + 8 * (v24 ^ 0xCE0)))(v23 - 144);
  v27 = *(v23 - 144) == v24 - 819106355;
  v28 = 1082434553 * (((v25 | 0xC7635285) - (v25 & 0xC7635285)) ^ 0x5C24A40F);
  *(v23 - 140) = (v24 + 552) ^ v28;
  *(v23 - 136) = v28 + 1548402275 * v22 - 1241269220;
  *(v23 - 128) = a15;
  v29 = (*(v19 + 8 * (v24 + 992)))(v23 - 144);
  return (*(v19 + 8 * ((57 * v27) ^ v24)))(v29);
}

uint64_t sub_21EDDBB7C@<X0>(char a1@<W8>)
{
  v6 = (v3 + (v1 & 0x3F) + 9);
  *(v6 - 1) = v5;
  *v6 = v5;
  return (*(v4 + 8 * ((((a1 & 0x30) == 16) * (((v2 - 1802688383) & 0x6B72D77E) - 1235)) ^ (v2 - 652))))();
}

uint64_t sub_21EDDBBD8()
{
  v4 = v1 + (v0 ^ 0x209u) - 505 - 299;
  v5 = v1 + 2237363566 < v2;
  if (v2 < 0x855B756D != v4 > 0xFFFFFFFF7AA48A92)
  {
    v5 = v2 < 0x855B756D;
  }

  return (*(v3 + 8 * ((31 * !v5) ^ v0 ^ 0x209)))();
}

uint64_t sub_21EDDBC60@<X0>(unsigned int a1@<W8>)
{
  v4 = v2 - 851;
  v5 = a1 + 178768217 < v1 - 877446383;
  if (a1 > (v4 ^ 0xDEu) - 178769306 != (v1 - 877446383) < 0xAA7C959)
  {
    v5 = (v1 - 877446383) < 0xAA7C959;
  }

  return (*(v3 + 8 * ((v5 * ((104 * (v4 ^ 0x48C)) ^ 0x68B)) ^ v4)))();
}

uint64_t sub_21EDDBC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = (((a3 ^ 0x2A1u) + 878) ^ 0x3FFFFFFFA83F47DFLL) + a5;
  v11 = *(*(v5 + 8) + 4 * v10);
  v12 = *(*(v6 + 8) + 4 * v10);
  LODWORD(v10) = (((v11 ^ 0xDE24686F) + 568039313) ^ ((v11 ^ 0x8E0E4C28) + 1911665624) ^ ((v11 ^ 0x1D37B141) - 490189121)) + v8;
  v13 = (((v12 ^ 0xC1F9B196) + 1040600682) ^ ((v12 ^ 0x68FA9D6B) - 1761254763) ^ ((v12 ^ 0xE41EB9FB) + 467748357)) + v8;
  v14 = v10 < v9;
  v15 = v10 > v13;
  if (v14 != v13 < v9)
  {
    v15 = v14;
  }

  return (*(v7 + 8 * ((495 * !v15) ^ a3)))();
}

uint64_t sub_21EDDBD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, int a16, uint64_t (*a17)(__n128, __n128, __n128, __n128, __n128), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v28 = a7 + v22 - 1431;
  a16 = a13 - 162299514;
  v29 = (v27 - 220);
  v30 = vdupq_n_s32(0x3DE1777Au);
  v31 = vdupq_n_s32(0x9EF0BBBD);
  a18 = v26 - 16;
  v32.n128_u64[0] = 0x1A1A1A1A1A1A1A1ALL;
  v32.n128_u64[1] = 0x1A1A1A1A1A1A1A1ALL;
  v33.n128_u64[0] = 0x3434343434343434;
  v33.n128_u64[1] = 0x3434343434343434;
  v34.n128_u64[0] = 0x1B1B1B1B1B1B1B1BLL;
  v34.n128_u64[1] = 0x1B1B1B1B1B1B1B1BLL;
  v35 = *(v24 + 8 * v28);
  v36 = (&a22 + a6);
  a19 = a6 + 320;
  v37 = *(v27 - 144);
  v39 = *(v27 - 140);
  v38 = *(v27 - 136);
  v40 = *(v27 - 124);
  if (v40 == 2)
  {
    a17 = v35;
    v95 = vld4q_s8(v29);
    v66 = veorq_s8(v95.val[0], v32);
    v67 = vmovl_high_u8(v66);
    v68 = vmovl_u8(*v66.i8);
    v69 = veorq_s8(v95.val[1], v32);
    _Q22 = vmovl_high_u8(v69);
    _Q21 = vmovl_u8(*v69.i8);
    v72 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v73 = vshll_n_s16(*_Q22.i8, 0x10uLL);
    __asm { SHLL2           V22.4S, V22.8H, #0x10 }

    v74 = veorq_s8(v95.val[2], v32);
    v75 = vmovl_u8(*v74.i8);
    v76 = vmovl_high_u8(v74);
    v95.val[0] = veorq_s8(v95.val[3], v32);
    v95.val[1] = vmovl_u8(*v95.val[0].i8);
    v95.val[0] = vmovl_high_u8(v95.val[0]);
    v77 = vorrq_s8(vorrq_s8(vorrq_s8(_Q22, vshll_high_n_u16(v76, 8uLL)), vshlq_n_s32(vmovl_high_u16(v67), 0x18uLL)), vmovl_high_u16(v95.val[0]));
    v78 = vorrq_s8(vorrq_s8(vorrq_s8(v73, vshll_n_u16(*v76.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v67.i8), 0x18uLL)), vmovl_u16(*v95.val[0].i8));
    v95.val[0] = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v75, 8uLL)), vshlq_n_s32(vmovl_high_u16(v68), 0x18uLL)), vmovl_high_u16(v95.val[1]));
    v79 = vorrq_s8(vorrq_s8(vorrq_s8(v72, vshll_n_u16(*v75.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v68.i8), 0x18uLL)), vmovl_u16(*v95.val[1].i8));
    *v36 = vaddq_s32(vsubq_s32(v79, vandq_s8(vaddq_s32(v79, v79), v30)), v31);
    v36[1] = vaddq_s32(vsubq_s32(v95.val[0], vandq_s8(vaddq_s32(v95.val[0], v95.val[0]), v30)), v31);
    v36[2] = vaddq_s32(vsubq_s32(v78, vandq_s8(vaddq_s32(v78, v78), v30)), v31);
    v36[3] = vaddq_s32(vsubq_s32(v77, vandq_s8(vaddq_s32(v77, v77), v30)), v31);
    v80 = &v36[81040130].i32[v25 + 3];
    v81 = *(v80 - 16);
    *v80 = v23 ^ __ROR4__(*(v80 - 8) ^ *(v80 - 3) ^ *(v80 - 14) ^ v81, 31);
    return (*(v24 + 8 * ((1068 * (((a7 + a3 - 1943558739) & 0x73D857BF ^ (v26 + 835)) == 324160524)) ^ (a7 + a3 - 911))))(v35, v36, a3, v38, v81, v37, a7, a8, a9, a10);
  }

  else if (v40 == 1)
  {
    a17 = v35;
    v94 = vld4q_s8(v29);
    v41 = veorq_s8(v94.val[0], v32);
    v42 = vmovl_u8(*v41.i8);
    v43 = vmovl_u16(*v42.i8);
    v44 = vmovl_high_u8(v41);
    v45 = vmovl_u16(*v44.i8);
    v46 = veorq_s8(v94.val[1], v32);
    v47 = vmovl_high_u8(v46);
    v48 = vmovl_u8(*v46.i8);
    v49 = vorrq_s8(vshll_high_n_u16(v47, 8uLL), vmovl_high_u16(v44));
    v50 = vorrq_s8(vshll_n_u16(*v47.i8, 8uLL), v45);
    v51 = vorrq_s8(vshll_high_n_u16(v48, 8uLL), vmovl_high_u16(v42));
    v52 = vorrq_s8(vshll_n_u16(*v48.i8, 8uLL), v43);
    v53 = veorq_s8(v94.val[2], v32);
    _Q22 = vmovl_u8(*v53.i8);
    _Q21 = vmovl_high_u8(v53);
    __asm
    {
      SHLL2           V23.4S, V21.8H, #0x10
      SHLL2           V24.4S, V22.8H, #0x10
    }

    v94.val[0] = veorq_s8(v94.val[3], v32);
    v94.val[1] = vmovl_high_u8(v94.val[0]);
    v94.val[0] = vmovl_u8(*v94.val[0].i8);
    v62 = vorrq_s8(vorrq_s8(v49, _Q23), vshlq_n_s32(vmovl_high_u16(v94.val[1]), 0x18uLL));
    v94.val[1] = vorrq_s8(vorrq_s8(v50, vshll_n_s16(*_Q21.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v94.val[1].i8), 0x18uLL));
    v63 = vorrq_s8(vorrq_s8(v51, _Q24), vshlq_n_s32(vmovl_high_u16(v94.val[0]), 0x18uLL));
    v64 = vorrq_s8(vorrq_s8(v52, vshll_n_s16(*_Q22.i8, 0x10uLL)), vshlq_n_s32(vmovl_u16(*v94.val[0].i8), 0x18uLL));
    *v36 = vaddq_s32(vsubq_s32(v64, vandq_s8(vaddq_s32(v64, v64), v30)), v31);
    v36[1] = vaddq_s32(vsubq_s32(v63, vandq_s8(vaddq_s32(v63, v63), v30)), v31);
    v36[2] = vaddq_s32(vsubq_s32(v94.val[1], vandq_s8(vaddq_s32(v94.val[1], v94.val[1]), v30)), v31);
    v36[3] = vaddq_s32(vsubq_s32(v62, vandq_s8(vaddq_s32(v62, v62), v30)), v31);
    return (*(v24 + 8 * ((23 * (a18 + 1 != v26)) | (a7 + a3 - 1008))))(1636499456, v36, 2090467328, v38, v39, v37, (a7 + a3 - 1008), 324160523, a9, a10);
  }

  else
  {
    v82 = (((*(v27 - 148) ^ 0x52BE418C) - 1388200332) ^ ((*(v27 - 148) ^ 0xAF86F0B7) + 1350111049) ^ ((*(v27 - 148) ^ 0xCBF3BA3A) + 873219526)) + (((*(v27 - 148) ^ 0xBC1298B3) + 1139631949) ^ ((*(v27 - 148) ^ 0x5447825A) - 1413972570) ^ ((*(v27 - 148) ^ 0xDE9E11E8) + 560066072)) - 332336592;
    v83 = (((v37 ^ 0x8350E41D) + 2091850723) ^ ((v37 ^ 0x81B18EEA) + 2119069974) ^ ((v37 ^ 0x342A61F6) - 875192822)) + (((*(v27 - 144) ^ 0x6839473E) - 1748584254) ^ ((*(v27 - 144) ^ 0x36A0042A) - 916456490) ^ ((*(v27 - 144) ^ 0x68524815) - 1750222869)) - 451446419;
    v84 = (v83 ^ 0x807C5E45) & (2 * (v83 & 0x887E9C95)) ^ v83 & 0x887E9C95;
    v85 = ((2 * (v83 ^ 0x80187E6F)) ^ 0x10CDC5F4) & (v83 ^ 0x80187E6F) ^ (2 * (v83 ^ 0x80187E6F)) & 0x866E2FA;
    v86 = v85 ^ 0x822220A;
    v87 = (v85 ^ 0x44C0F0) & (4 * v84) ^ v84;
    v88 = ((4 * v86) ^ 0x219B8BE8) & v86 ^ (4 * v86) & 0x866E2F8;
    v89 = (v88 ^ 0x282E0) & (16 * v87) ^ v87;
    v90 = ((16 * (v88 ^ 0x8646012)) ^ 0x866E2FA0) & (v88 ^ 0x8646012) ^ (16 * (v88 ^ 0x8646012)) & 0x866E2F0;
    v91 = v89 ^ 0x866E2FA ^ (v90 ^ 0x662200) & (v89 << 8);
    *(v27 - 148) = v82 ^ ((v82 ^ 0x48701C36) - 921354264) ^ ((v82 ^ 0x49B21DAF) - 925417857) ^ ((v82 ^ 0x8862208) - 1981611558) ^ ((v82 ^ 0x77DEFFBF) - 155460497) ^ 0x4851D72F;
    *(v27 - 144) = v83 ^ (2 * ((v91 << 16) & 0x8660000 ^ v91 ^ ((v91 << 16) ^ 0x62FA0000) & (((v90 ^ 0x800C05A) << 8) & 0x8660000 ^ 0x8040000 ^ (((v90 ^ 0x800C05A) << 8) ^ 0x66E20000) & (v90 ^ 0x800C05A)))) ^ 0xAEBC5260;
    v92 = (((v39 ^ 0xB0D24DD1) + 1328394799) ^ ((v39 ^ 0xB1216A6B) + 1323210133) ^ ((v39 ^ 0x37382CBB) - 926428347)) + (((*(v27 - 140) ^ 0x4654742B) - 1179939883) ^ ((*(v27 - 140) ^ 0x4840FE3A) - 1212218938) ^ ((*(v27 - 140) ^ 0x38DF8110) - 954171664)) - 815250737;
    v93 = (((v38 ^ 0x7923FA15) - 2032400917) ^ ((v38 ^ 0x1A641EEF) - 442769135) ^ ((v38 ^ 0x558CEFFB) - 1435299835)) + (((*(v27 - 136) ^ 0x5E687232) - 1583903282) ^ ((*(v27 - 136) ^ 0x11AD8E9) - 18536681) ^ ((*(v27 - 136) ^ 0x69B9A1DA) - 1773773274)) - 1099822299;
    *(v27 - 140) = v92 ^ ((v92 ^ 0x5C1F734E) - 1036869507) ^ ((v92 ^ 0x4929754B) - 687561094) ^ ((v92 ^ 0x953D137) - 1753349626) ^ ((v92 ^ 0x7DB7FBFF) - 476436274) ^ 0x571927CC;
    *(v27 - 136) = v93 ^ ((v93 ^ 0x54F6259B) - 70111416) ^ ((v93 ^ 0x8F22CAC8) + 537313301) ^ ((v93 ^ 0x76F0658F) - 640389292) ^ ((v93 ^ 0xFDFF7FFF) + 1390114084) ^ 0x6610FE22;
    a19 -= 320;
    return v35(v30, v31, v32, v33, v34);
  }
}